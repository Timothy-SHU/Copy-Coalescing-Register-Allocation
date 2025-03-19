; ModuleID = 'mm/mmu_gather.c'
source_filename = "mm/mmu_gather.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.static_call_key = type { ptr, %union.anon.13 }
%union.anon.13 = type { i64 }
%struct.pcpu_hot = type { %union.anon.17 }
%union.anon.17 = type { %struct.anon.18, [16 x i8] }
%struct.anon.18 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.mmu_gather = type { ptr, ptr, i64, i64, i16, i32, ptr, %struct.mmu_gather_batch, [8 x ptr] }
%struct.mmu_gather_batch = type { ptr, i32, i32, [0 x ptr] }
%struct.mmu_table_batch = type { %struct.callback_head, i32, [0 x ptr] }
%struct.callback_head = type { ptr, ptr }
%struct.mm_struct = type { %struct.anon.14, [0 x i64] }
%struct.anon.14 = type { %struct.anon.15, %struct.maple_tree, ptr, i64, i64, i64, i64, i64, ptr, %struct.atomic_t, %struct.atomic_t, ptr, i64, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [52 x i64], [4 x %struct.percpu_counter], ptr, %struct.mm_context_t, i64, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, %struct.uprobes_state, %struct.atomic64_t, %struct.work_struct, [48 x i8] }
%struct.anon.15 = type { %struct.atomic_t, [60 x i8] }
%struct.maple_tree = type { %union.anon.16, i32, ptr }
%union.anon.16 = type { %struct.spinlock }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.seqcount = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.mm_context_t = type { i64, %struct.atomic64_t, i64, %struct.rw_semaphore, ptr, i64, %struct.mutex, ptr, ptr, %struct.atomic_t, i16, i16 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type { ptr }
%struct.atomic64_t = type { i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
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
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i64] }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%struct.page_frag = type { ptr, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.llist_head = type { ptr }
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

@.str = private unnamed_addr constant [16 x i8] c"mm/mmu_gather.c\00", align 1, !dbg !0
@_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched181 = internal global ptr @__SCK__cond_resched, section ".discard.addressable", align 8, !dbg !7
@__SCK__cond_resched = external dso_local global %struct.static_call_key, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@llvm.compiler.used = appending global [1 x ptr] [ptr @_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched181], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tlb_flush_rmaps(ptr noundef %tlb, ptr noundef %vma) #0 align 16 !dbg !5198 {
entry:
  %tlb.addr = alloca ptr, align 8
  %vma.addr = alloca ptr, align 8
  store ptr %tlb, ptr %tlb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tlb.addr, metadata !5235, metadata !DIExpression()), !dbg !5237
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !5236, metadata !DIExpression()), !dbg !5238
  %0 = load ptr, ptr %tlb.addr, align 8, !dbg !5239
  %delayed_rmap = getelementptr inbounds %struct.mmu_gather, ptr %0, i32 0, i32 4, !dbg !5241
  %bf.load = load i16, ptr %delayed_rmap, align 8, !dbg !5241
  %bf.lshr = lshr i16 %bf.load, 3, !dbg !5241
  %bf.clear = and i16 %bf.lshr, 1, !dbg !5241
  %bf.cast = zext i16 %bf.clear to i32, !dbg !5241
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5239
  br i1 %tobool, label %if.end, label %if.then, !dbg !5242

if.then:                                          ; preds = %entry
  br label %return, !dbg !5243

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %tlb.addr, align 8, !dbg !5244
  %local = getelementptr inbounds %struct.mmu_gather, ptr %1, i32 0, i32 7, !dbg !5245
  %2 = load ptr, ptr %vma.addr, align 8, !dbg !5246
  call void @tlb_flush_rmap_batch(ptr noundef %local, ptr noundef %2) #8, !dbg !5247
  %3 = load ptr, ptr %tlb.addr, align 8, !dbg !5248
  %active = getelementptr inbounds %struct.mmu_gather, ptr %3, i32 0, i32 6, !dbg !5250
  %4 = load ptr, ptr %active, align 8, !dbg !5250
  %5 = load ptr, ptr %tlb.addr, align 8, !dbg !5251
  %local1 = getelementptr inbounds %struct.mmu_gather, ptr %5, i32 0, i32 7, !dbg !5252
  %cmp = icmp ne ptr %4, %local1, !dbg !5253
  br i1 %cmp, label %if.then2, label %if.end4, !dbg !5254

if.then2:                                         ; preds = %if.end
  %6 = load ptr, ptr %tlb.addr, align 8, !dbg !5255
  %active3 = getelementptr inbounds %struct.mmu_gather, ptr %6, i32 0, i32 6, !dbg !5256
  %7 = load ptr, ptr %active3, align 8, !dbg !5256
  %8 = load ptr, ptr %vma.addr, align 8, !dbg !5257
  call void @tlb_flush_rmap_batch(ptr noundef %7, ptr noundef %8) #8, !dbg !5258
  br label %if.end4, !dbg !5258

if.end4:                                          ; preds = %if.then2, %if.end
  %9 = load ptr, ptr %tlb.addr, align 8, !dbg !5259
  %delayed_rmap5 = getelementptr inbounds %struct.mmu_gather, ptr %9, i32 0, i32 4, !dbg !5260
  %bf.load6 = load i16, ptr %delayed_rmap5, align 8, !dbg !5261
  %bf.clear7 = and i16 %bf.load6, -9, !dbg !5261
  %bf.set = or i16 %bf.clear7, 0, !dbg !5261
  store i16 %bf.set, ptr %delayed_rmap5, align 8, !dbg !5261
  br label %return, !dbg !5262

return:                                           ; preds = %if.end4, %if.then
  ret void, !dbg !5262
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tlb_flush_rmap_batch(ptr noundef %batch, ptr noundef %vma) #0 align 16 !dbg !5263 {
entry:
  %batch.addr = alloca ptr, align 8
  %vma.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %enc = alloca ptr, align 8
  %page = alloca ptr, align 8
  store ptr %batch, ptr %batch.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %batch.addr, metadata !5267, metadata !DIExpression()), !dbg !5277
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !5268, metadata !DIExpression()), !dbg !5278
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !5279
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5269, metadata !DIExpression()), !dbg !5280
  store i32 0, ptr %i, align 4, !dbg !5280
  br label %for.cond, !dbg !5279

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !5281
  %1 = load ptr, ptr %batch.addr, align 8, !dbg !5282
  %nr = getelementptr inbounds %struct.mmu_gather_batch, ptr %1, i32 0, i32 1, !dbg !5283
  %2 = load i32, ptr %nr, align 8, !dbg !5283
  %cmp = icmp ult i32 %0, %2, !dbg !5284
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !5285

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !5286
  br label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %enc) #9, !dbg !5287
  call void @llvm.dbg.declare(metadata ptr %enc, metadata !5271, metadata !DIExpression()), !dbg !5288
  %3 = load ptr, ptr %batch.addr, align 8, !dbg !5289
  %encoded_pages = getelementptr inbounds %struct.mmu_gather_batch, ptr %3, i32 0, i32 3, !dbg !5290
  %4 = load i32, ptr %i, align 4, !dbg !5291
  %idxprom = sext i32 %4 to i64, !dbg !5289
  %arrayidx = getelementptr [0 x ptr], ptr %encoded_pages, i64 0, i64 %idxprom, !dbg !5289
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !5289
  store ptr %5, ptr %enc, align 8, !dbg !5288
  %6 = load ptr, ptr %enc, align 8, !dbg !5292
  %call = call i64 @encoded_page_flags(ptr noundef %6) #8, !dbg !5293
  %tobool = icmp ne i64 %call, 0, !dbg !5293
  br i1 %tobool, label %if.then, label %if.end, !dbg !5294

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #9, !dbg !5295
  call void @llvm.dbg.declare(metadata ptr %page, metadata !5274, metadata !DIExpression()), !dbg !5296
  %7 = load ptr, ptr %enc, align 8, !dbg !5297
  %call1 = call ptr @encoded_page_ptr(ptr noundef %7) #8, !dbg !5298
  store ptr %call1, ptr %page, align 8, !dbg !5296
  %8 = load ptr, ptr %page, align 8, !dbg !5299
  %9 = load ptr, ptr %vma.addr, align 8, !dbg !5300
  call void @page_remove_rmap(ptr noundef %8, ptr noundef %9, i1 noundef zeroext false) #8, !dbg !5301
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #9, !dbg !5302
  br label %if.end, !dbg !5303

if.end:                                           ; preds = %if.then, %for.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %enc) #9, !dbg !5304
  br label %for.inc, !dbg !5305

for.inc:                                          ; preds = %if.end
  %10 = load i32, ptr %i, align 4, !dbg !5306
  %inc = add i32 %10, 1, !dbg !5306
  store i32 %inc, ptr %i, align 4, !dbg !5306
  br label %for.cond, !dbg !5286, !llvm.loop !5307

for.end:                                          ; preds = %for.cond.cleanup
  ret void, !dbg !5311
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @__tlb_remove_page_size(ptr noundef %tlb, ptr noundef %page, i32 noundef %page_size) #0 align 16 !dbg !5312 {
entry:
  %retval = alloca i1, align 1
  %tlb.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  %page_size.addr = alloca i32, align 4
  %batch = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tlb, ptr %tlb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tlb.addr, metadata !5316, metadata !DIExpression()), !dbg !5320
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5317, metadata !DIExpression()), !dbg !5321
  store i32 %page_size, ptr %page_size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %page_size.addr, metadata !5318, metadata !DIExpression()), !dbg !5322
  call void @llvm.lifetime.start.p0(i64 8, ptr %batch) #9, !dbg !5323
  call void @llvm.dbg.declare(metadata ptr %batch, metadata !5319, metadata !DIExpression()), !dbg !5324
  %0 = load ptr, ptr %tlb.addr, align 8, !dbg !5325
  %active = getelementptr inbounds %struct.mmu_gather, ptr %0, i32 0, i32 6, !dbg !5326
  %1 = load ptr, ptr %active, align 8, !dbg !5326
  store ptr %1, ptr %batch, align 8, !dbg !5327
  %2 = load ptr, ptr %page.addr, align 8, !dbg !5328
  %3 = load ptr, ptr %batch, align 8, !dbg !5329
  %encoded_pages = getelementptr inbounds %struct.mmu_gather_batch, ptr %3, i32 0, i32 3, !dbg !5330
  %4 = load ptr, ptr %batch, align 8, !dbg !5331
  %nr = getelementptr inbounds %struct.mmu_gather_batch, ptr %4, i32 0, i32 1, !dbg !5332
  %5 = load i32, ptr %nr, align 8, !dbg !5333
  %inc = add i32 %5, 1, !dbg !5333
  store i32 %inc, ptr %nr, align 8, !dbg !5333
  %idxprom = zext i32 %5 to i64, !dbg !5329
  %arrayidx = getelementptr [0 x ptr], ptr %encoded_pages, i64 0, i64 %idxprom, !dbg !5329
  store ptr %2, ptr %arrayidx, align 8, !dbg !5334
  %6 = load ptr, ptr %batch, align 8, !dbg !5335
  %nr1 = getelementptr inbounds %struct.mmu_gather_batch, ptr %6, i32 0, i32 1, !dbg !5337
  %7 = load i32, ptr %nr1, align 8, !dbg !5337
  %8 = load ptr, ptr %batch, align 8, !dbg !5338
  %max = getelementptr inbounds %struct.mmu_gather_batch, ptr %8, i32 0, i32 2, !dbg !5339
  %9 = load i32, ptr %max, align 4, !dbg !5339
  %cmp = icmp eq i32 %7, %9, !dbg !5340
  br i1 %cmp, label %if.then, label %if.end4, !dbg !5341

if.then:                                          ; preds = %entry
  %10 = load ptr, ptr %tlb.addr, align 8, !dbg !5342
  %call = call zeroext i1 @tlb_next_batch(ptr noundef %10) #8, !dbg !5345
  br i1 %call, label %if.end, label %if.then2, !dbg !5346

if.then2:                                         ; preds = %if.then
  store i1 true, ptr %retval, align 1, !dbg !5347
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5347

if.end:                                           ; preds = %if.then
  %11 = load ptr, ptr %tlb.addr, align 8, !dbg !5348
  %active3 = getelementptr inbounds %struct.mmu_gather, ptr %11, i32 0, i32 6, !dbg !5349
  %12 = load ptr, ptr %active3, align 8, !dbg !5349
  store ptr %12, ptr %batch, align 8, !dbg !5350
  br label %if.end4, !dbg !5351

if.end4:                                          ; preds = %if.end, %entry
  store i1 false, ptr %retval, align 1, !dbg !5352
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5352

cleanup:                                          ; preds = %if.end4, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %batch) #9, !dbg !5353
  %13 = load i1, ptr %retval, align 1, !dbg !5353
  ret i1 %13, !dbg !5353
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @tlb_next_batch(ptr noundef %tlb) #0 align 16 !dbg !5354 {
entry:
  %retval = alloca i1, align 1
  %tlb.addr = alloca ptr, align 8
  %batch = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tlb, ptr %tlb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tlb.addr, metadata !5358, metadata !DIExpression()), !dbg !5360
  call void @llvm.lifetime.start.p0(i64 8, ptr %batch) #9, !dbg !5361
  call void @llvm.dbg.declare(metadata ptr %batch, metadata !5359, metadata !DIExpression()), !dbg !5362
  %0 = load ptr, ptr %tlb.addr, align 8, !dbg !5363
  %delayed_rmap = getelementptr inbounds %struct.mmu_gather, ptr %0, i32 0, i32 4, !dbg !5365
  %bf.load = load i16, ptr %delayed_rmap, align 8, !dbg !5365
  %bf.lshr = lshr i16 %bf.load, 3, !dbg !5365
  %bf.clear = and i16 %bf.lshr, 1, !dbg !5365
  %bf.cast = zext i16 %bf.clear to i32, !dbg !5365
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5363
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5366

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %tlb.addr, align 8, !dbg !5367
  %active = getelementptr inbounds %struct.mmu_gather, ptr %1, i32 0, i32 6, !dbg !5368
  %2 = load ptr, ptr %active, align 8, !dbg !5368
  %3 = load ptr, ptr %tlb.addr, align 8, !dbg !5369
  %local = getelementptr inbounds %struct.mmu_gather, ptr %3, i32 0, i32 7, !dbg !5370
  %cmp = icmp ne ptr %2, %local, !dbg !5371
  br i1 %cmp, label %if.then, label %if.end, !dbg !5372

if.then:                                          ; preds = %land.lhs.true
  store i1 false, ptr %retval, align 1, !dbg !5373
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5373

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load ptr, ptr %tlb.addr, align 8, !dbg !5374
  %active1 = getelementptr inbounds %struct.mmu_gather, ptr %4, i32 0, i32 6, !dbg !5375
  %5 = load ptr, ptr %active1, align 8, !dbg !5375
  store ptr %5, ptr %batch, align 8, !dbg !5376
  %6 = load ptr, ptr %batch, align 8, !dbg !5377
  %next = getelementptr inbounds %struct.mmu_gather_batch, ptr %6, i32 0, i32 0, !dbg !5379
  %7 = load ptr, ptr %next, align 8, !dbg !5379
  %tobool2 = icmp ne ptr %7, null, !dbg !5377
  br i1 %tobool2, label %if.then3, label %if.end6, !dbg !5380

if.then3:                                         ; preds = %if.end
  %8 = load ptr, ptr %batch, align 8, !dbg !5381
  %next4 = getelementptr inbounds %struct.mmu_gather_batch, ptr %8, i32 0, i32 0, !dbg !5383
  %9 = load ptr, ptr %next4, align 8, !dbg !5383
  %10 = load ptr, ptr %tlb.addr, align 8, !dbg !5384
  %active5 = getelementptr inbounds %struct.mmu_gather, ptr %10, i32 0, i32 6, !dbg !5385
  store ptr %9, ptr %active5, align 8, !dbg !5386
  store i1 true, ptr %retval, align 1, !dbg !5387
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5387

if.end6:                                          ; preds = %if.end
  %11 = load ptr, ptr %tlb.addr, align 8, !dbg !5388
  %batch_count = getelementptr inbounds %struct.mmu_gather, ptr %11, i32 0, i32 5, !dbg !5390
  %12 = load i32, ptr %batch_count, align 4, !dbg !5390
  %conv = zext i32 %12 to i64, !dbg !5388
  %cmp7 = icmp eq i64 %conv, 19, !dbg !5391
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !5392

if.then9:                                         ; preds = %if.end6
  store i1 false, ptr %retval, align 1, !dbg !5393
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5393

if.end10:                                         ; preds = %if.end6
  %call = call i64 @__get_free_pages(i32 noundef 10240, i32 noundef 0) #8, !dbg !5394
  %13 = inttoptr i64 %call to ptr, !dbg !5395
  store ptr %13, ptr %batch, align 8, !dbg !5396
  %14 = load ptr, ptr %batch, align 8, !dbg !5397
  %tobool11 = icmp ne ptr %14, null, !dbg !5397
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !5399

if.then12:                                        ; preds = %if.end10
  store i1 false, ptr %retval, align 1, !dbg !5400
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5400

if.end13:                                         ; preds = %if.end10
  %15 = load ptr, ptr %tlb.addr, align 8, !dbg !5401
  %batch_count14 = getelementptr inbounds %struct.mmu_gather, ptr %15, i32 0, i32 5, !dbg !5402
  %16 = load i32, ptr %batch_count14, align 4, !dbg !5403
  %inc = add i32 %16, 1, !dbg !5403
  store i32 %inc, ptr %batch_count14, align 4, !dbg !5403
  %17 = load ptr, ptr %batch, align 8, !dbg !5404
  %next15 = getelementptr inbounds %struct.mmu_gather_batch, ptr %17, i32 0, i32 0, !dbg !5405
  store ptr null, ptr %next15, align 8, !dbg !5406
  %18 = load ptr, ptr %batch, align 8, !dbg !5407
  %nr = getelementptr inbounds %struct.mmu_gather_batch, ptr %18, i32 0, i32 1, !dbg !5408
  store i32 0, ptr %nr, align 8, !dbg !5409
  %19 = load ptr, ptr %batch, align 8, !dbg !5410
  %max = getelementptr inbounds %struct.mmu_gather_batch, ptr %19, i32 0, i32 2, !dbg !5411
  store i32 510, ptr %max, align 4, !dbg !5412
  %20 = load ptr, ptr %batch, align 8, !dbg !5413
  %21 = load ptr, ptr %tlb.addr, align 8, !dbg !5414
  %active16 = getelementptr inbounds %struct.mmu_gather, ptr %21, i32 0, i32 6, !dbg !5415
  %22 = load ptr, ptr %active16, align 8, !dbg !5415
  %next17 = getelementptr inbounds %struct.mmu_gather_batch, ptr %22, i32 0, i32 0, !dbg !5416
  store ptr %20, ptr %next17, align 8, !dbg !5417
  %23 = load ptr, ptr %batch, align 8, !dbg !5418
  %24 = load ptr, ptr %tlb.addr, align 8, !dbg !5419
  %active18 = getelementptr inbounds %struct.mmu_gather, ptr %24, i32 0, i32 6, !dbg !5420
  store ptr %23, ptr %active18, align 8, !dbg !5421
  store i1 true, ptr %retval, align 1, !dbg !5422
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5422

cleanup:                                          ; preds = %if.end13, %if.then12, %if.then9, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %batch) #9, !dbg !5423
  %25 = load i1, ptr %retval, align 1, !dbg !5423
  ret i1 %25, !dbg !5423
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tlb_remove_table_sync_one() #0 align 16 !dbg !5424 {
entry:
  call void @smp_call_function(ptr noundef @tlb_remove_table_smp_sync, ptr noundef null, i32 noundef 1) #8, !dbg !5425
  ret void, !dbg !5426
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5427 dso_local void @smp_call_function(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tlb_remove_table_smp_sync(ptr noundef %arg) #0 align 16 !dbg !5432 {
entry:
  %arg.addr = alloca ptr, align 8
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !5434, metadata !DIExpression()), !dbg !5435
  ret void, !dbg !5436
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tlb_remove_table(ptr noundef %tlb, ptr noundef %table) #0 align 16 !dbg !5437 {
entry:
  %tlb.addr = alloca ptr, align 8
  %table.addr = alloca ptr, align 8
  %batch = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tlb, ptr %tlb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tlb.addr, metadata !5441, metadata !DIExpression()), !dbg !5445
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !5442, metadata !DIExpression()), !dbg !5446
  call void @llvm.lifetime.start.p0(i64 8, ptr %batch) #9, !dbg !5447
  call void @llvm.dbg.declare(metadata ptr %batch, metadata !5443, metadata !DIExpression()), !dbg !5448
  %0 = load ptr, ptr %tlb.addr, align 8, !dbg !5449
  %batch1 = getelementptr inbounds %struct.mmu_gather, ptr %0, i32 0, i32 1, !dbg !5450
  store ptr %batch1, ptr %batch, align 8, !dbg !5448
  %1 = load ptr, ptr %batch, align 8, !dbg !5451
  %2 = load ptr, ptr %1, align 8, !dbg !5453
  %cmp = icmp eq ptr %2, null, !dbg !5454
  br i1 %cmp, label %if.then, label %if.end4, !dbg !5455

if.then:                                          ; preds = %entry
  %call = call i64 @__get_free_pages(i32 noundef 10240, i32 noundef 0) #8, !dbg !5456
  %3 = inttoptr i64 %call to ptr, !dbg !5458
  %4 = load ptr, ptr %batch, align 8, !dbg !5459
  store ptr %3, ptr %4, align 8, !dbg !5460
  %5 = load ptr, ptr %batch, align 8, !dbg !5461
  %6 = load ptr, ptr %5, align 8, !dbg !5463
  %cmp2 = icmp eq ptr %6, null, !dbg !5464
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !5465

if.then3:                                         ; preds = %if.then
  %7 = load ptr, ptr %tlb.addr, align 8, !dbg !5466
  call void @tlb_table_invalidate(ptr noundef %7) #8, !dbg !5468
  %8 = load ptr, ptr %table.addr, align 8, !dbg !5469
  call void @tlb_remove_table_one(ptr noundef %8) #8, !dbg !5470
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5471

if.end:                                           ; preds = %if.then
  %9 = load ptr, ptr %batch, align 8, !dbg !5472
  %10 = load ptr, ptr %9, align 8, !dbg !5473
  %nr = getelementptr inbounds %struct.mmu_table_batch, ptr %10, i32 0, i32 1, !dbg !5474
  store i32 0, ptr %nr, align 8, !dbg !5475
  br label %if.end4, !dbg !5476

if.end4:                                          ; preds = %if.end, %entry
  %11 = load ptr, ptr %table.addr, align 8, !dbg !5477
  %12 = load ptr, ptr %batch, align 8, !dbg !5478
  %13 = load ptr, ptr %12, align 8, !dbg !5479
  %tables = getelementptr inbounds %struct.mmu_table_batch, ptr %13, i32 0, i32 2, !dbg !5480
  %14 = load ptr, ptr %batch, align 8, !dbg !5481
  %15 = load ptr, ptr %14, align 8, !dbg !5482
  %nr5 = getelementptr inbounds %struct.mmu_table_batch, ptr %15, i32 0, i32 1, !dbg !5483
  %16 = load i32, ptr %nr5, align 8, !dbg !5484
  %inc = add i32 %16, 1, !dbg !5484
  store i32 %inc, ptr %nr5, align 8, !dbg !5484
  %idxprom = zext i32 %16 to i64, !dbg !5485
  %arrayidx = getelementptr [0 x ptr], ptr %tables, i64 0, i64 %idxprom, !dbg !5485
  store ptr %11, ptr %arrayidx, align 8, !dbg !5486
  %17 = load ptr, ptr %batch, align 8, !dbg !5487
  %18 = load ptr, ptr %17, align 8, !dbg !5489
  %nr6 = getelementptr inbounds %struct.mmu_table_batch, ptr %18, i32 0, i32 1, !dbg !5490
  %19 = load i32, ptr %nr6, align 8, !dbg !5490
  %conv = zext i32 %19 to i64, !dbg !5491
  %cmp7 = icmp eq i64 %conv, 509, !dbg !5492
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !5493

if.then9:                                         ; preds = %if.end4
  %20 = load ptr, ptr %tlb.addr, align 8, !dbg !5494
  call void @tlb_table_flush(ptr noundef %20) #8, !dbg !5495
  br label %if.end10, !dbg !5495

if.end10:                                         ; preds = %if.then9, %if.end4
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5496
  br label %cleanup, !dbg !5496

cleanup:                                          ; preds = %if.end10, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %batch) #9, !dbg !5496
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5496

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5497 dso_local i64 @__get_free_pages(i32 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tlb_table_invalidate(ptr noundef %tlb) #4 align 16 !dbg !5501 {
entry:
  %tlb.addr = alloca ptr, align 8
  store ptr %tlb, ptr %tlb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tlb.addr, metadata !5505, metadata !DIExpression()), !dbg !5506
  %0 = load ptr, ptr %tlb.addr, align 8, !dbg !5507
  call void @tlb_flush_mmu_tlbonly(ptr noundef %0) #8, !dbg !5510
  ret void, !dbg !5511
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tlb_remove_table_one(ptr noundef %table) #0 align 16 !dbg !5512 {
entry:
  %table.addr = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !5514, metadata !DIExpression()), !dbg !5515
  call void @tlb_remove_table_sync_one() #8, !dbg !5516
  %0 = load ptr, ptr %table.addr, align 8, !dbg !5517
  call void @__tlb_remove_table(ptr noundef %0) #8, !dbg !5518
  ret void, !dbg !5519
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tlb_table_flush(ptr noundef %tlb) #0 align 16 !dbg !5520 {
entry:
  %tlb.addr = alloca ptr, align 8
  %batch = alloca ptr, align 8
  store ptr %tlb, ptr %tlb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tlb.addr, metadata !5522, metadata !DIExpression()), !dbg !5524
  call void @llvm.lifetime.start.p0(i64 8, ptr %batch) #9, !dbg !5525
  call void @llvm.dbg.declare(metadata ptr %batch, metadata !5523, metadata !DIExpression()), !dbg !5526
  %0 = load ptr, ptr %tlb.addr, align 8, !dbg !5527
  %batch1 = getelementptr inbounds %struct.mmu_gather, ptr %0, i32 0, i32 1, !dbg !5528
  store ptr %batch1, ptr %batch, align 8, !dbg !5526
  %1 = load ptr, ptr %batch, align 8, !dbg !5529
  %2 = load ptr, ptr %1, align 8, !dbg !5531
  %tobool = icmp ne ptr %2, null, !dbg !5531
  br i1 %tobool, label %if.then, label %if.end, !dbg !5532

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %tlb.addr, align 8, !dbg !5533
  call void @tlb_table_invalidate(ptr noundef %3) #8, !dbg !5535
  %4 = load ptr, ptr %batch, align 8, !dbg !5536
  %5 = load ptr, ptr %4, align 8, !dbg !5537
  call void @tlb_remove_table_free(ptr noundef %5) #8, !dbg !5538
  %6 = load ptr, ptr %batch, align 8, !dbg !5539
  store ptr null, ptr %6, align 8, !dbg !5540
  br label %if.end, !dbg !5541

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %batch) #9, !dbg !5542
  ret void, !dbg !5542
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tlb_flush_mmu(ptr noundef %tlb) #0 align 16 !dbg !5543 {
entry:
  %tlb.addr = alloca ptr, align 8
  store ptr %tlb, ptr %tlb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tlb.addr, metadata !5545, metadata !DIExpression()), !dbg !5546
  %0 = load ptr, ptr %tlb.addr, align 8, !dbg !5547
  call void @tlb_flush_mmu_tlbonly(ptr noundef %0) #8, !dbg !5548
  %1 = load ptr, ptr %tlb.addr, align 8, !dbg !5549
  call void @tlb_flush_mmu_free(ptr noundef %1) #8, !dbg !5550
  ret void, !dbg !5551
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tlb_flush_mmu_tlbonly(ptr noundef %tlb) #4 align 16 !dbg !5552 {
entry:
  %tlb.addr = alloca ptr, align 8
  store ptr %tlb, ptr %tlb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tlb.addr, metadata !5554, metadata !DIExpression()), !dbg !5555
  %0 = load ptr, ptr %tlb.addr, align 8, !dbg !5556
  %freed_tables = getelementptr inbounds %struct.mmu_gather, ptr %0, i32 0, i32 4, !dbg !5558
  %bf.load = load i16, ptr %freed_tables, align 8, !dbg !5558
  %bf.lshr = lshr i16 %bf.load, 2, !dbg !5558
  %bf.clear = and i16 %bf.lshr, 1, !dbg !5558
  %bf.cast = zext i16 %bf.clear to i32, !dbg !5558
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5556
  br i1 %tobool, label %if.end, label %lor.lhs.false, !dbg !5559

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %tlb.addr, align 8, !dbg !5560
  %cleared_ptes = getelementptr inbounds %struct.mmu_gather, ptr %1, i32 0, i32 4, !dbg !5561
  %bf.load1 = load i16, ptr %cleared_ptes, align 8, !dbg !5561
  %bf.lshr2 = lshr i16 %bf.load1, 4, !dbg !5561
  %bf.clear3 = and i16 %bf.lshr2, 1, !dbg !5561
  %bf.cast4 = zext i16 %bf.clear3 to i32, !dbg !5561
  %tobool5 = icmp ne i32 %bf.cast4, 0, !dbg !5560
  br i1 %tobool5, label %if.end, label %lor.lhs.false6, !dbg !5562

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %tlb.addr, align 8, !dbg !5563
  %cleared_pmds = getelementptr inbounds %struct.mmu_gather, ptr %2, i32 0, i32 4, !dbg !5564
  %bf.load7 = load i16, ptr %cleared_pmds, align 8, !dbg !5564
  %bf.lshr8 = lshr i16 %bf.load7, 5, !dbg !5564
  %bf.clear9 = and i16 %bf.lshr8, 1, !dbg !5564
  %bf.cast10 = zext i16 %bf.clear9 to i32, !dbg !5564
  %tobool11 = icmp ne i32 %bf.cast10, 0, !dbg !5563
  br i1 %tobool11, label %if.end, label %lor.lhs.false12, !dbg !5565

lor.lhs.false12:                                  ; preds = %lor.lhs.false6
  %3 = load ptr, ptr %tlb.addr, align 8, !dbg !5566
  %cleared_puds = getelementptr inbounds %struct.mmu_gather, ptr %3, i32 0, i32 4, !dbg !5567
  %bf.load13 = load i16, ptr %cleared_puds, align 8, !dbg !5567
  %bf.lshr14 = lshr i16 %bf.load13, 6, !dbg !5567
  %bf.clear15 = and i16 %bf.lshr14, 1, !dbg !5567
  %bf.cast16 = zext i16 %bf.clear15 to i32, !dbg !5567
  %tobool17 = icmp ne i32 %bf.cast16, 0, !dbg !5566
  br i1 %tobool17, label %if.end, label %lor.lhs.false18, !dbg !5568

lor.lhs.false18:                                  ; preds = %lor.lhs.false12
  %4 = load ptr, ptr %tlb.addr, align 8, !dbg !5569
  %cleared_p4ds = getelementptr inbounds %struct.mmu_gather, ptr %4, i32 0, i32 4, !dbg !5570
  %bf.load19 = load i16, ptr %cleared_p4ds, align 8, !dbg !5570
  %bf.lshr20 = lshr i16 %bf.load19, 7, !dbg !5570
  %bf.clear21 = and i16 %bf.lshr20, 1, !dbg !5570
  %bf.cast22 = zext i16 %bf.clear21 to i32, !dbg !5570
  %tobool23 = icmp ne i32 %bf.cast22, 0, !dbg !5569
  br i1 %tobool23, label %if.end, label %if.then, !dbg !5571

if.then:                                          ; preds = %lor.lhs.false18
  br label %return, !dbg !5572

if.end:                                           ; preds = %lor.lhs.false18, %lor.lhs.false12, %lor.lhs.false6, %lor.lhs.false, %entry
  %5 = load ptr, ptr %tlb.addr, align 8, !dbg !5573
  call void @tlb_flush(ptr noundef %5) #8, !dbg !5574
  %6 = load ptr, ptr %tlb.addr, align 8, !dbg !5575
  call void @__tlb_reset_range(ptr noundef %6) #8, !dbg !5576
  br label %return, !dbg !5577

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5577
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tlb_flush_mmu_free(ptr noundef %tlb) #0 align 16 !dbg !5578 {
entry:
  %tlb.addr = alloca ptr, align 8
  store ptr %tlb, ptr %tlb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tlb.addr, metadata !5580, metadata !DIExpression()), !dbg !5581
  %0 = load ptr, ptr %tlb.addr, align 8, !dbg !5582
  call void @tlb_table_flush(ptr noundef %0) #8, !dbg !5583
  %1 = load ptr, ptr %tlb.addr, align 8, !dbg !5584
  call void @tlb_batch_pages_flush(ptr noundef %1) #8, !dbg !5585
  ret void, !dbg !5586
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tlb_gather_mmu(ptr noundef %tlb, ptr noundef %mm) #0 align 16 !dbg !5587 {
entry:
  %tlb.addr = alloca ptr, align 8
  %mm.addr = alloca ptr, align 8
  store ptr %tlb, ptr %tlb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tlb.addr, metadata !5591, metadata !DIExpression()), !dbg !5593
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !5592, metadata !DIExpression()), !dbg !5594
  %0 = load ptr, ptr %tlb.addr, align 8, !dbg !5595
  %1 = load ptr, ptr %mm.addr, align 8, !dbg !5596
  call void @__tlb_gather_mmu(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false) #8, !dbg !5597
  ret void, !dbg !5598
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__tlb_gather_mmu(ptr noundef %tlb, ptr noundef %mm, i1 noundef zeroext %fullmm) #0 align 16 !dbg !5599 {
entry:
  %tlb.addr = alloca ptr, align 8
  %mm.addr = alloca ptr, align 8
  %fullmm.addr = alloca i8, align 1
  store ptr %tlb, ptr %tlb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tlb.addr, metadata !5603, metadata !DIExpression()), !dbg !5606
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !5604, metadata !DIExpression()), !dbg !5607
  %frombool = zext i1 %fullmm to i8
  store i8 %frombool, ptr %fullmm.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %fullmm.addr, metadata !5605, metadata !DIExpression()), !dbg !5608
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !5609
  %1 = load ptr, ptr %tlb.addr, align 8, !dbg !5610
  %mm1 = getelementptr inbounds %struct.mmu_gather, ptr %1, i32 0, i32 0, !dbg !5611
  store ptr %0, ptr %mm1, align 8, !dbg !5612
  %2 = load i8, ptr %fullmm.addr, align 1, !dbg !5613, !range !5614, !noundef !1321
  %tobool = trunc i8 %2 to i1, !dbg !5613
  %conv = zext i1 %tobool to i32, !dbg !5613
  %3 = load ptr, ptr %tlb.addr, align 8, !dbg !5615
  %fullmm2 = getelementptr inbounds %struct.mmu_gather, ptr %3, i32 0, i32 4, !dbg !5616
  %4 = trunc i32 %conv to i16, !dbg !5617
  %bf.load = load i16, ptr %fullmm2, align 8, !dbg !5617
  %bf.value = and i16 %4, 1, !dbg !5617
  %bf.clear = and i16 %bf.load, -2, !dbg !5617
  %bf.set = or i16 %bf.clear, %bf.value, !dbg !5617
  store i16 %bf.set, ptr %fullmm2, align 8, !dbg !5617
  %bf.result.cast = zext i16 %bf.value to i32, !dbg !5617
  %5 = load ptr, ptr %tlb.addr, align 8, !dbg !5618
  %need_flush_all = getelementptr inbounds %struct.mmu_gather, ptr %5, i32 0, i32 4, !dbg !5619
  %bf.load3 = load i16, ptr %need_flush_all, align 8, !dbg !5620
  %bf.clear4 = and i16 %bf.load3, -3, !dbg !5620
  %bf.set5 = or i16 %bf.clear4, 0, !dbg !5620
  store i16 %bf.set5, ptr %need_flush_all, align 8, !dbg !5620
  %6 = load ptr, ptr %tlb.addr, align 8, !dbg !5621
  %local = getelementptr inbounds %struct.mmu_gather, ptr %6, i32 0, i32 7, !dbg !5622
  %next = getelementptr inbounds %struct.mmu_gather_batch, ptr %local, i32 0, i32 0, !dbg !5623
  store ptr null, ptr %next, align 8, !dbg !5624
  %7 = load ptr, ptr %tlb.addr, align 8, !dbg !5625
  %local6 = getelementptr inbounds %struct.mmu_gather, ptr %7, i32 0, i32 7, !dbg !5626
  %nr = getelementptr inbounds %struct.mmu_gather_batch, ptr %local6, i32 0, i32 1, !dbg !5627
  store i32 0, ptr %nr, align 8, !dbg !5628
  %8 = load ptr, ptr %tlb.addr, align 8, !dbg !5629
  %local7 = getelementptr inbounds %struct.mmu_gather, ptr %8, i32 0, i32 7, !dbg !5630
  %max = getelementptr inbounds %struct.mmu_gather_batch, ptr %local7, i32 0, i32 2, !dbg !5631
  store i32 8, ptr %max, align 4, !dbg !5632
  %9 = load ptr, ptr %tlb.addr, align 8, !dbg !5633
  %local8 = getelementptr inbounds %struct.mmu_gather, ptr %9, i32 0, i32 7, !dbg !5634
  %10 = load ptr, ptr %tlb.addr, align 8, !dbg !5635
  %active = getelementptr inbounds %struct.mmu_gather, ptr %10, i32 0, i32 6, !dbg !5636
  store ptr %local8, ptr %active, align 8, !dbg !5637
  %11 = load ptr, ptr %tlb.addr, align 8, !dbg !5638
  %batch_count = getelementptr inbounds %struct.mmu_gather, ptr %11, i32 0, i32 5, !dbg !5639
  store i32 0, ptr %batch_count, align 4, !dbg !5640
  %12 = load ptr, ptr %tlb.addr, align 8, !dbg !5641
  %delayed_rmap = getelementptr inbounds %struct.mmu_gather, ptr %12, i32 0, i32 4, !dbg !5642
  %bf.load9 = load i16, ptr %delayed_rmap, align 8, !dbg !5643
  %bf.clear10 = and i16 %bf.load9, -9, !dbg !5643
  %bf.set11 = or i16 %bf.clear10, 0, !dbg !5643
  store i16 %bf.set11, ptr %delayed_rmap, align 8, !dbg !5643
  %13 = load ptr, ptr %tlb.addr, align 8, !dbg !5644
  call void @tlb_table_init(ptr noundef %13) #8, !dbg !5645
  %14 = load ptr, ptr %tlb.addr, align 8, !dbg !5646
  call void @__tlb_reset_range(ptr noundef %14) #8, !dbg !5647
  %15 = load ptr, ptr %tlb.addr, align 8, !dbg !5648
  %mm12 = getelementptr inbounds %struct.mmu_gather, ptr %15, i32 0, i32 0, !dbg !5649
  %16 = load ptr, ptr %mm12, align 8, !dbg !5649
  call void @inc_tlb_flush_pending(ptr noundef %16) #8, !dbg !5650
  ret void, !dbg !5651
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tlb_gather_mmu_fullmm(ptr noundef %tlb, ptr noundef %mm) #0 align 16 !dbg !5652 {
entry:
  %tlb.addr = alloca ptr, align 8
  %mm.addr = alloca ptr, align 8
  store ptr %tlb, ptr %tlb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tlb.addr, metadata !5654, metadata !DIExpression()), !dbg !5656
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !5655, metadata !DIExpression()), !dbg !5657
  %0 = load ptr, ptr %tlb.addr, align 8, !dbg !5658
  %1 = load ptr, ptr %mm.addr, align 8, !dbg !5659
  call void @__tlb_gather_mmu(ptr noundef %0, ptr noundef %1, i1 noundef zeroext true) #8, !dbg !5660
  ret void, !dbg !5661
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tlb_finish_mmu(ptr noundef %tlb) #0 align 16 !dbg !5662 {
entry:
  %tlb.addr = alloca ptr, align 8
  store ptr %tlb, ptr %tlb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tlb.addr, metadata !5664, metadata !DIExpression()), !dbg !5665
  %0 = load ptr, ptr %tlb.addr, align 8, !dbg !5666
  %mm = getelementptr inbounds %struct.mmu_gather, ptr %0, i32 0, i32 0, !dbg !5668
  %1 = load ptr, ptr %mm, align 8, !dbg !5668
  %call = call zeroext i1 @mm_tlb_flush_nested(ptr noundef %1) #8, !dbg !5669
  br i1 %call, label %if.then, label %if.end, !dbg !5670

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %tlb.addr, align 8, !dbg !5671
  %fullmm = getelementptr inbounds %struct.mmu_gather, ptr %2, i32 0, i32 4, !dbg !5673
  %bf.load = load i16, ptr %fullmm, align 8, !dbg !5674
  %bf.clear = and i16 %bf.load, -2, !dbg !5674
  %bf.set = or i16 %bf.clear, 1, !dbg !5674
  store i16 %bf.set, ptr %fullmm, align 8, !dbg !5674
  %3 = load ptr, ptr %tlb.addr, align 8, !dbg !5675
  call void @__tlb_reset_range(ptr noundef %3) #8, !dbg !5676
  %4 = load ptr, ptr %tlb.addr, align 8, !dbg !5677
  %freed_tables = getelementptr inbounds %struct.mmu_gather, ptr %4, i32 0, i32 4, !dbg !5678
  %bf.load1 = load i16, ptr %freed_tables, align 8, !dbg !5679
  %bf.clear2 = and i16 %bf.load1, -5, !dbg !5679
  %bf.set3 = or i16 %bf.clear2, 4, !dbg !5679
  store i16 %bf.set3, ptr %freed_tables, align 8, !dbg !5679
  br label %if.end, !dbg !5680

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %tlb.addr, align 8, !dbg !5681
  call void @tlb_flush_mmu(ptr noundef %5) #8, !dbg !5682
  %6 = load ptr, ptr %tlb.addr, align 8, !dbg !5683
  call void @tlb_batch_list_free(ptr noundef %6) #8, !dbg !5684
  %7 = load ptr, ptr %tlb.addr, align 8, !dbg !5685
  %mm4 = getelementptr inbounds %struct.mmu_gather, ptr %7, i32 0, i32 0, !dbg !5686
  %8 = load ptr, ptr %mm4, align 8, !dbg !5686
  call void @dec_tlb_flush_pending(ptr noundef %8) #8, !dbg !5687
  ret void, !dbg !5688
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @mm_tlb_flush_nested(ptr noundef %mm) #4 align 16 !dbg !5689 {
entry:
  %mm.addr = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !5694, metadata !DIExpression()), !dbg !5695
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !5696
  %1 = getelementptr inbounds %struct.mm_struct, ptr %0, i32 0, i32 0, !dbg !5697
  %tlb_flush_pending = getelementptr inbounds %struct.anon.14, ptr %1, i32 0, i32 51, !dbg !5697
  %call = call i32 @atomic_read(ptr noundef %tlb_flush_pending) #8, !dbg !5698
  %cmp = icmp sgt i32 %call, 1, !dbg !5699
  ret i1 %cmp, !dbg !5700
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__tlb_reset_range(ptr noundef %tlb) #4 align 16 !dbg !5701 {
entry:
  %tlb.addr = alloca ptr, align 8
  store ptr %tlb, ptr %tlb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tlb.addr, metadata !5703, metadata !DIExpression()), !dbg !5704
  %0 = load ptr, ptr %tlb.addr, align 8, !dbg !5705
  %fullmm = getelementptr inbounds %struct.mmu_gather, ptr %0, i32 0, i32 4, !dbg !5707
  %bf.load = load i16, ptr %fullmm, align 8, !dbg !5707
  %bf.clear = and i16 %bf.load, 1, !dbg !5707
  %bf.cast = zext i16 %bf.clear to i32, !dbg !5707
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5705
  br i1 %tobool, label %if.then, label %if.else, !dbg !5708

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tlb.addr, align 8, !dbg !5709
  %end = getelementptr inbounds %struct.mmu_gather, ptr %1, i32 0, i32 3, !dbg !5711
  store i64 -1, ptr %end, align 8, !dbg !5712
  %2 = load ptr, ptr %tlb.addr, align 8, !dbg !5713
  %start = getelementptr inbounds %struct.mmu_gather, ptr %2, i32 0, i32 2, !dbg !5714
  store i64 -1, ptr %start, align 8, !dbg !5715
  br label %if.end, !dbg !5716

if.else:                                          ; preds = %entry
  %call = call ptr @get_current() #8, !dbg !5717
  %call1 = call i32 @test_ti_thread_flag(ptr noundef %call, i32 noundef 29) #8, !dbg !5717
  %tobool2 = icmp ne i32 %call1, 0, !dbg !5717
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !5717

cond.true:                                        ; preds = %if.else
  %call3 = call ptr @get_current() #8, !dbg !5717
  %personality = getelementptr inbounds %struct.task_struct, ptr %call3, i32 0, i32 56, !dbg !5717
  %3 = load i32, ptr %personality, align 8, !dbg !5717
  %and = and i32 %3, 134217728, !dbg !5717
  %tobool4 = icmp ne i32 %and, 0, !dbg !5717
  %4 = zext i1 %tobool4 to i64, !dbg !5717
  %cond = select i1 %tobool4, i32 -1073741824, i32 -8192, !dbg !5717
  %conv = zext i32 %cond to i64, !dbg !5717
  br label %cond.end, !dbg !5717

cond.false:                                       ; preds = %if.else
  %call5 = call i64 @task_size_max() #8, !dbg !5717
  br label %cond.end, !dbg !5717

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond6 = phi i64 [ %conv, %cond.true ], [ %call5, %cond.false ], !dbg !5717
  %5 = load ptr, ptr %tlb.addr, align 8, !dbg !5719
  %start7 = getelementptr inbounds %struct.mmu_gather, ptr %5, i32 0, i32 2, !dbg !5720
  store i64 %cond6, ptr %start7, align 8, !dbg !5721
  %6 = load ptr, ptr %tlb.addr, align 8, !dbg !5722
  %end8 = getelementptr inbounds %struct.mmu_gather, ptr %6, i32 0, i32 3, !dbg !5723
  store i64 0, ptr %end8, align 8, !dbg !5724
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  %7 = load ptr, ptr %tlb.addr, align 8, !dbg !5725
  %freed_tables = getelementptr inbounds %struct.mmu_gather, ptr %7, i32 0, i32 4, !dbg !5726
  %bf.load9 = load i16, ptr %freed_tables, align 8, !dbg !5727
  %bf.clear10 = and i16 %bf.load9, -5, !dbg !5727
  %bf.set = or i16 %bf.clear10, 0, !dbg !5727
  store i16 %bf.set, ptr %freed_tables, align 8, !dbg !5727
  %8 = load ptr, ptr %tlb.addr, align 8, !dbg !5728
  %cleared_ptes = getelementptr inbounds %struct.mmu_gather, ptr %8, i32 0, i32 4, !dbg !5729
  %bf.load11 = load i16, ptr %cleared_ptes, align 8, !dbg !5730
  %bf.clear12 = and i16 %bf.load11, -17, !dbg !5730
  %bf.set13 = or i16 %bf.clear12, 0, !dbg !5730
  store i16 %bf.set13, ptr %cleared_ptes, align 8, !dbg !5730
  %9 = load ptr, ptr %tlb.addr, align 8, !dbg !5731
  %cleared_pmds = getelementptr inbounds %struct.mmu_gather, ptr %9, i32 0, i32 4, !dbg !5732
  %bf.load14 = load i16, ptr %cleared_pmds, align 8, !dbg !5733
  %bf.clear15 = and i16 %bf.load14, -33, !dbg !5733
  %bf.set16 = or i16 %bf.clear15, 0, !dbg !5733
  store i16 %bf.set16, ptr %cleared_pmds, align 8, !dbg !5733
  %10 = load ptr, ptr %tlb.addr, align 8, !dbg !5734
  %cleared_puds = getelementptr inbounds %struct.mmu_gather, ptr %10, i32 0, i32 4, !dbg !5735
  %bf.load17 = load i16, ptr %cleared_puds, align 8, !dbg !5736
  %bf.clear18 = and i16 %bf.load17, -65, !dbg !5736
  %bf.set19 = or i16 %bf.clear18, 0, !dbg !5736
  store i16 %bf.set19, ptr %cleared_puds, align 8, !dbg !5736
  %11 = load ptr, ptr %tlb.addr, align 8, !dbg !5737
  %cleared_p4ds = getelementptr inbounds %struct.mmu_gather, ptr %11, i32 0, i32 4, !dbg !5738
  %bf.load20 = load i16, ptr %cleared_p4ds, align 8, !dbg !5739
  %bf.clear21 = and i16 %bf.load20, -129, !dbg !5739
  %bf.set22 = or i16 %bf.clear21, 0, !dbg !5739
  store i16 %bf.set22, ptr %cleared_p4ds, align 8, !dbg !5739
  ret void, !dbg !5740
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tlb_batch_list_free(ptr noundef %tlb) #0 align 16 !dbg !5741 {
entry:
  %tlb.addr = alloca ptr, align 8
  %batch = alloca ptr, align 8
  %next = alloca ptr, align 8
  store ptr %tlb, ptr %tlb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tlb.addr, metadata !5743, metadata !DIExpression()), !dbg !5746
  call void @llvm.lifetime.start.p0(i64 8, ptr %batch) #9, !dbg !5747
  call void @llvm.dbg.declare(metadata ptr %batch, metadata !5744, metadata !DIExpression()), !dbg !5748
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #9, !dbg !5747
  call void @llvm.dbg.declare(metadata ptr %next, metadata !5745, metadata !DIExpression()), !dbg !5749
  %0 = load ptr, ptr %tlb.addr, align 8, !dbg !5750
  %local = getelementptr inbounds %struct.mmu_gather, ptr %0, i32 0, i32 7, !dbg !5752
  %next1 = getelementptr inbounds %struct.mmu_gather_batch, ptr %local, i32 0, i32 0, !dbg !5753
  %1 = load ptr, ptr %next1, align 8, !dbg !5753
  store ptr %1, ptr %batch, align 8, !dbg !5754
  br label %for.cond, !dbg !5755

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %batch, align 8, !dbg !5756
  %tobool = icmp ne ptr %2, null, !dbg !5758
  br i1 %tobool, label %for.body, label %for.end, !dbg !5758

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %batch, align 8, !dbg !5759
  %next2 = getelementptr inbounds %struct.mmu_gather_batch, ptr %3, i32 0, i32 0, !dbg !5761
  %4 = load ptr, ptr %next2, align 8, !dbg !5761
  store ptr %4, ptr %next, align 8, !dbg !5762
  %5 = load ptr, ptr %batch, align 8, !dbg !5763
  %6 = ptrtoint ptr %5 to i64, !dbg !5764
  call void @free_pages(i64 noundef %6, i32 noundef 0) #8, !dbg !5765
  br label %for.inc, !dbg !5766

for.inc:                                          ; preds = %for.body
  %7 = load ptr, ptr %next, align 8, !dbg !5767
  store ptr %7, ptr %batch, align 8, !dbg !5768
  br label %for.cond, !dbg !5769, !llvm.loop !5770

for.end:                                          ; preds = %for.cond
  %8 = load ptr, ptr %tlb.addr, align 8, !dbg !5772
  %local3 = getelementptr inbounds %struct.mmu_gather, ptr %8, i32 0, i32 7, !dbg !5773
  %next4 = getelementptr inbounds %struct.mmu_gather_batch, ptr %local3, i32 0, i32 0, !dbg !5774
  store ptr null, ptr %next4, align 8, !dbg !5775
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #9, !dbg !5776
  call void @llvm.lifetime.end.p0(i64 8, ptr %batch) #9, !dbg !5776
  ret void, !dbg !5776
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dec_tlb_flush_pending(ptr noundef %mm) #4 align 16 !dbg !5777 {
entry:
  %mm.addr = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !5781, metadata !DIExpression()), !dbg !5782
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !5783
  %1 = getelementptr inbounds %struct.mm_struct, ptr %0, i32 0, i32 0, !dbg !5784
  %tlb_flush_pending = getelementptr inbounds %struct.anon.14, ptr %1, i32 0, i32 51, !dbg !5784
  call void @atomic_dec(ptr noundef %tlb_flush_pending) #8, !dbg !5785
  ret void, !dbg !5786
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @encoded_page_flags(ptr noundef %page) #4 align 16 !dbg !5787 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5791, metadata !DIExpression()), !dbg !5792
  %0 = load ptr, ptr %page.addr, align 8, !dbg !5793
  %1 = ptrtoint ptr %0 to i64, !dbg !5794
  %and = and i64 3, %1, !dbg !5795
  ret i64 %and, !dbg !5796
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @encoded_page_ptr(ptr noundef %page) #4 align 16 !dbg !5797 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5801, metadata !DIExpression()), !dbg !5802
  %0 = load ptr, ptr %page.addr, align 8, !dbg !5803
  %1 = ptrtoint ptr %0 to i64, !dbg !5804
  %and = and i64 -4, %1, !dbg !5805
  %2 = inttoptr i64 %and to ptr, !dbg !5806
  ret ptr %2, !dbg !5807
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5808 dso_local void @page_remove_rmap(ptr noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__tlb_remove_table(ptr noundef %table) #4 align 16 !dbg !5811 {
entry:
  %table.addr = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !5814, metadata !DIExpression()), !dbg !5815
  %0 = load ptr, ptr %table.addr, align 8, !dbg !5816
  call void @free_page_and_swap_cache(ptr noundef %0) #8, !dbg !5817
  ret void, !dbg !5818
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5819 dso_local void @free_page_and_swap_cache(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tlb_remove_table_free(ptr noundef %batch) #0 align 16 !dbg !5820 {
entry:
  %batch.addr = alloca ptr, align 8
  store ptr %batch, ptr %batch.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %batch.addr, metadata !5824, metadata !DIExpression()), !dbg !5825
  %0 = load ptr, ptr %batch.addr, align 8, !dbg !5826
  %rcu = getelementptr inbounds %struct.mmu_table_batch, ptr %0, i32 0, i32 0, !dbg !5827
  call void @call_rcu(ptr noundef %rcu, ptr noundef @tlb_remove_table_rcu) #8, !dbg !5828
  ret void, !dbg !5829
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5830 dso_local void @call_rcu(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tlb_remove_table_rcu(ptr noundef %head) #0 align 16 !dbg !5835 {
entry:
  %head.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5837, metadata !DIExpression()), !dbg !5840
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #9, !dbg !5841
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5838, metadata !DIExpression()), !dbg !5841
  %0 = load ptr, ptr %head.addr, align 8, !dbg !5841
  store ptr %0, ptr %__mptr, align 8, !dbg !5841
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5841
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5841
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5841
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #9, !dbg !5842
  %2 = load ptr, ptr %tmp, align 8, !dbg !5841
  call void @__tlb_remove_table_free(ptr noundef %2) #8, !dbg !5843
  ret void, !dbg !5844
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__tlb_remove_table_free(ptr noundef %batch) #0 align 16 !dbg !5845 {
entry:
  %batch.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %batch, ptr %batch.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %batch.addr, metadata !5847, metadata !DIExpression()), !dbg !5849
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !5850
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5848, metadata !DIExpression()), !dbg !5851
  store i32 0, ptr %i, align 4, !dbg !5852
  br label %for.cond, !dbg !5854

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !5855
  %1 = load ptr, ptr %batch.addr, align 8, !dbg !5857
  %nr = getelementptr inbounds %struct.mmu_table_batch, ptr %1, i32 0, i32 1, !dbg !5858
  %2 = load i32, ptr %nr, align 8, !dbg !5858
  %cmp = icmp ult i32 %0, %2, !dbg !5859
  br i1 %cmp, label %for.body, label %for.end, !dbg !5860

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %batch.addr, align 8, !dbg !5861
  %tables = getelementptr inbounds %struct.mmu_table_batch, ptr %3, i32 0, i32 2, !dbg !5862
  %4 = load i32, ptr %i, align 4, !dbg !5863
  %idxprom = sext i32 %4 to i64, !dbg !5861
  %arrayidx = getelementptr [0 x ptr], ptr %tables, i64 0, i64 %idxprom, !dbg !5861
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !5861
  call void @__tlb_remove_table(ptr noundef %5) #8, !dbg !5864
  br label %for.inc, !dbg !5864

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4, !dbg !5865
  %inc = add i32 %6, 1, !dbg !5865
  store i32 %inc, ptr %i, align 4, !dbg !5865
  br label %for.cond, !dbg !5866, !llvm.loop !5867

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %batch.addr, align 8, !dbg !5869
  %8 = ptrtoint ptr %7 to i64, !dbg !5869
  call void @free_pages(i64 noundef %8, i32 noundef 0) #8, !dbg !5869
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !5870
  ret void, !dbg !5870
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5871 dso_local void @free_pages(i64 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tlb_flush(ptr noundef %tlb) #4 align 16 !dbg !5874 {
entry:
  %tlb.addr = alloca ptr, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %stride_shift = alloca i32, align 4
  store ptr %tlb, ptr %tlb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tlb.addr, metadata !5876, metadata !DIExpression()), !dbg !5880
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #9, !dbg !5881
  call void @llvm.dbg.declare(metadata ptr %start, metadata !5877, metadata !DIExpression()), !dbg !5882
  store i64 0, ptr %start, align 8, !dbg !5882
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #9, !dbg !5881
  call void @llvm.dbg.declare(metadata ptr %end, metadata !5878, metadata !DIExpression()), !dbg !5883
  store i64 -1, ptr %end, align 8, !dbg !5883
  call void @llvm.lifetime.start.p0(i64 4, ptr %stride_shift) #9, !dbg !5884
  call void @llvm.dbg.declare(metadata ptr %stride_shift, metadata !5879, metadata !DIExpression()), !dbg !5885
  %0 = load ptr, ptr %tlb.addr, align 8, !dbg !5886
  %call = call i64 @tlb_get_unmap_shift(ptr noundef %0) #8, !dbg !5887
  %conv = trunc i64 %call to i32, !dbg !5887
  store i32 %conv, ptr %stride_shift, align 4, !dbg !5885
  %1 = load ptr, ptr %tlb.addr, align 8, !dbg !5888
  %fullmm = getelementptr inbounds %struct.mmu_gather, ptr %1, i32 0, i32 4, !dbg !5890
  %bf.load = load i16, ptr %fullmm, align 8, !dbg !5890
  %bf.clear = and i16 %bf.load, 1, !dbg !5890
  %bf.cast = zext i16 %bf.clear to i32, !dbg !5890
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5888
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !5891

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %tlb.addr, align 8, !dbg !5892
  %need_flush_all = getelementptr inbounds %struct.mmu_gather, ptr %2, i32 0, i32 4, !dbg !5893
  %bf.load1 = load i16, ptr %need_flush_all, align 8, !dbg !5893
  %bf.lshr = lshr i16 %bf.load1, 1, !dbg !5893
  %bf.clear2 = and i16 %bf.lshr, 1, !dbg !5893
  %bf.cast3 = zext i16 %bf.clear2 to i32, !dbg !5893
  %tobool4 = icmp ne i32 %bf.cast3, 0, !dbg !5892
  br i1 %tobool4, label %if.end, label %if.then, !dbg !5894

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %tlb.addr, align 8, !dbg !5895
  %start5 = getelementptr inbounds %struct.mmu_gather, ptr %3, i32 0, i32 2, !dbg !5897
  %4 = load i64, ptr %start5, align 8, !dbg !5897
  store i64 %4, ptr %start, align 8, !dbg !5898
  %5 = load ptr, ptr %tlb.addr, align 8, !dbg !5899
  %end6 = getelementptr inbounds %struct.mmu_gather, ptr %5, i32 0, i32 3, !dbg !5900
  %6 = load i64, ptr %end6, align 8, !dbg !5900
  store i64 %6, ptr %end, align 8, !dbg !5901
  br label %if.end, !dbg !5902

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load ptr, ptr %tlb.addr, align 8, !dbg !5903
  %mm = getelementptr inbounds %struct.mmu_gather, ptr %7, i32 0, i32 0, !dbg !5904
  %8 = load ptr, ptr %mm, align 8, !dbg !5904
  %9 = load i64, ptr %start, align 8, !dbg !5905
  %10 = load i64, ptr %end, align 8, !dbg !5906
  %11 = load i32, ptr %stride_shift, align 4, !dbg !5907
  %12 = load ptr, ptr %tlb.addr, align 8, !dbg !5908
  %freed_tables = getelementptr inbounds %struct.mmu_gather, ptr %12, i32 0, i32 4, !dbg !5909
  %bf.load7 = load i16, ptr %freed_tables, align 8, !dbg !5909
  %bf.lshr8 = lshr i16 %bf.load7, 2, !dbg !5909
  %bf.clear9 = and i16 %bf.lshr8, 1, !dbg !5909
  %bf.cast10 = zext i16 %bf.clear9 to i32, !dbg !5909
  %tobool11 = icmp ne i32 %bf.cast10, 0, !dbg !5908
  call void @flush_tlb_mm_range(ptr noundef %8, i64 noundef %9, i64 noundef %10, i32 noundef %11, i1 noundef zeroext %tobool11) #8, !dbg !5910
  call void @llvm.lifetime.end.p0(i64 4, ptr %stride_shift) #9, !dbg !5911
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #9, !dbg !5911
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #9, !dbg !5911
  ret void, !dbg !5911
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @tlb_get_unmap_shift(ptr noundef %tlb) #4 align 16 !dbg !5912 {
entry:
  %retval = alloca i64, align 8
  %tlb.addr = alloca ptr, align 8
  store ptr %tlb, ptr %tlb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tlb.addr, metadata !5916, metadata !DIExpression()), !dbg !5917
  %0 = load ptr, ptr %tlb.addr, align 8, !dbg !5918
  %cleared_ptes = getelementptr inbounds %struct.mmu_gather, ptr %0, i32 0, i32 4, !dbg !5920
  %bf.load = load i16, ptr %cleared_ptes, align 8, !dbg !5920
  %bf.lshr = lshr i16 %bf.load, 4, !dbg !5920
  %bf.clear = and i16 %bf.lshr, 1, !dbg !5920
  %bf.cast = zext i16 %bf.clear to i32, !dbg !5920
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5918
  br i1 %tobool, label %if.then, label %if.end, !dbg !5921

if.then:                                          ; preds = %entry
  store i64 12, ptr %retval, align 8, !dbg !5922
  br label %return, !dbg !5922

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %tlb.addr, align 8, !dbg !5923
  %cleared_pmds = getelementptr inbounds %struct.mmu_gather, ptr %1, i32 0, i32 4, !dbg !5925
  %bf.load1 = load i16, ptr %cleared_pmds, align 8, !dbg !5925
  %bf.lshr2 = lshr i16 %bf.load1, 5, !dbg !5925
  %bf.clear3 = and i16 %bf.lshr2, 1, !dbg !5925
  %bf.cast4 = zext i16 %bf.clear3 to i32, !dbg !5925
  %tobool5 = icmp ne i32 %bf.cast4, 0, !dbg !5923
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !5926

if.then6:                                         ; preds = %if.end
  store i64 21, ptr %retval, align 8, !dbg !5927
  br label %return, !dbg !5927

if.end7:                                          ; preds = %if.end
  %2 = load ptr, ptr %tlb.addr, align 8, !dbg !5928
  %cleared_puds = getelementptr inbounds %struct.mmu_gather, ptr %2, i32 0, i32 4, !dbg !5930
  %bf.load8 = load i16, ptr %cleared_puds, align 8, !dbg !5930
  %bf.lshr9 = lshr i16 %bf.load8, 6, !dbg !5930
  %bf.clear10 = and i16 %bf.lshr9, 1, !dbg !5930
  %bf.cast11 = zext i16 %bf.clear10 to i32, !dbg !5930
  %tobool12 = icmp ne i32 %bf.cast11, 0, !dbg !5928
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !5931

if.then13:                                        ; preds = %if.end7
  store i64 30, ptr %retval, align 8, !dbg !5932
  br label %return, !dbg !5932

if.end14:                                         ; preds = %if.end7
  %3 = load ptr, ptr %tlb.addr, align 8, !dbg !5933
  %cleared_p4ds = getelementptr inbounds %struct.mmu_gather, ptr %3, i32 0, i32 4, !dbg !5935
  %bf.load15 = load i16, ptr %cleared_p4ds, align 8, !dbg !5935
  %bf.lshr16 = lshr i16 %bf.load15, 7, !dbg !5935
  %bf.clear17 = and i16 %bf.lshr16, 1, !dbg !5935
  %bf.cast18 = zext i16 %bf.clear17 to i32, !dbg !5935
  %tobool19 = icmp ne i32 %bf.cast18, 0, !dbg !5933
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !5936

if.then20:                                        ; preds = %if.end14
  store i64 39, ptr %retval, align 8, !dbg !5937
  br label %return, !dbg !5937

if.end21:                                         ; preds = %if.end14
  store i64 12, ptr %retval, align 8, !dbg !5938
  br label %return, !dbg !5938

return:                                           ; preds = %if.end21, %if.then20, %if.then13, %if.then6, %if.then
  %4 = load i64, ptr %retval, align 8, !dbg !5939
  ret i64 %4, !dbg !5939
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5940 dso_local void @flush_tlb_mm_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tlb_batch_pages_flush(ptr noundef %tlb) #0 align 16 !dbg !5944 {
entry:
  %tlb.addr = alloca ptr, align 8
  %batch = alloca ptr, align 8
  %pages = alloca ptr, align 8
  %nr2 = alloca i32, align 4
  %__UNIQUE_ID___x340 = alloca i32, align 4
  %__UNIQUE_ID___y341 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp5 = alloca i32, align 4
  store ptr %tlb, ptr %tlb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tlb.addr, metadata !5946, metadata !DIExpression()), !dbg !5958
  call void @llvm.lifetime.start.p0(i64 8, ptr %batch) #9, !dbg !5959
  call void @llvm.dbg.declare(metadata ptr %batch, metadata !5947, metadata !DIExpression()), !dbg !5960
  %0 = load ptr, ptr %tlb.addr, align 8, !dbg !5961
  %local = getelementptr inbounds %struct.mmu_gather, ptr %0, i32 0, i32 7, !dbg !5962
  store ptr %local, ptr %batch, align 8, !dbg !5963
  br label %for.cond, !dbg !5964

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %batch, align 8, !dbg !5965
  %tobool = icmp ne ptr %1, null, !dbg !5965
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !5966

land.rhs:                                         ; preds = %for.cond
  %2 = load ptr, ptr %batch, align 8, !dbg !5967
  %nr = getelementptr inbounds %struct.mmu_gather_batch, ptr %2, i32 0, i32 1, !dbg !5968
  %3 = load i32, ptr %nr, align 8, !dbg !5968
  %tobool1 = icmp ne i32 %3, 0, !dbg !5966
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %tobool1, %land.rhs ], !dbg !5969
  br i1 %4, label %for.body, label %for.end, !dbg !5970

for.body:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %pages) #9, !dbg !5971
  call void @llvm.dbg.declare(metadata ptr %pages, metadata !5948, metadata !DIExpression()), !dbg !5972
  %5 = load ptr, ptr %batch, align 8, !dbg !5973
  %encoded_pages = getelementptr inbounds %struct.mmu_gather_batch, ptr %5, i32 0, i32 3, !dbg !5974
  %arraydecay = getelementptr inbounds [0 x ptr], ptr %encoded_pages, i64 0, i64 0, !dbg !5973
  store ptr %arraydecay, ptr %pages, align 8, !dbg !5972
  br label %do.body, !dbg !5975

do.body:                                          ; preds = %do.cond, %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr2) #9, !dbg !5976
  call void @llvm.dbg.declare(metadata ptr %nr2, metadata !5953, metadata !DIExpression()), !dbg !5977
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x340) #9, !dbg !5978
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x340, metadata !5955, metadata !DIExpression()), !dbg !5978
  store i32 512, ptr %__UNIQUE_ID___x340, align 4, !dbg !5978
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y341) #9, !dbg !5978
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y341, metadata !5957, metadata !DIExpression()), !dbg !5978
  %6 = load ptr, ptr %batch, align 8, !dbg !5978
  %nr3 = getelementptr inbounds %struct.mmu_gather_batch, ptr %6, i32 0, i32 1, !dbg !5978
  %7 = load i32, ptr %nr3, align 8, !dbg !5978
  store i32 %7, ptr %__UNIQUE_ID___y341, align 4, !dbg !5978
  %8 = load i32, ptr %__UNIQUE_ID___x340, align 4, !dbg !5978
  %9 = load i32, ptr %__UNIQUE_ID___y341, align 4, !dbg !5978
  %cmp = icmp ult i32 %8, %9, !dbg !5978
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5978

cond.true:                                        ; preds = %do.body
  %10 = load i32, ptr %__UNIQUE_ID___x340, align 4, !dbg !5978
  br label %cond.end, !dbg !5978

cond.false:                                       ; preds = %do.body
  %11 = load i32, ptr %__UNIQUE_ID___y341, align 4, !dbg !5978
  br label %cond.end, !dbg !5978

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %10, %cond.true ], [ %11, %cond.false ], !dbg !5978
  store i32 %cond, ptr %tmp, align 4, !dbg !5978
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y341) #9, !dbg !5979
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x340) #9, !dbg !5979
  %12 = load i32, ptr %tmp, align 4, !dbg !5978
  store i32 %12, ptr %nr2, align 4, !dbg !5977
  %13 = load ptr, ptr %pages, align 8, !dbg !5980
  %14 = load i32, ptr %nr2, align 4, !dbg !5981
  call void @free_pages_and_swap_cache(ptr noundef %13, i32 noundef %14) #8, !dbg !5982
  %15 = load i32, ptr %nr2, align 4, !dbg !5983
  %16 = load ptr, ptr %pages, align 8, !dbg !5984
  %idx.ext = zext i32 %15 to i64, !dbg !5984
  %add.ptr = getelementptr ptr, ptr %16, i64 %idx.ext, !dbg !5984
  store ptr %add.ptr, ptr %pages, align 8, !dbg !5984
  %17 = load i32, ptr %nr2, align 4, !dbg !5985
  %18 = load ptr, ptr %batch, align 8, !dbg !5986
  %nr4 = getelementptr inbounds %struct.mmu_gather_batch, ptr %18, i32 0, i32 1, !dbg !5987
  %19 = load i32, ptr %nr4, align 8, !dbg !5988
  %sub = sub i32 %19, %17, !dbg !5988
  store i32 %sub, ptr %nr4, align 8, !dbg !5988
  call void @__might_resched(ptr noundef @.str, i32 noundef 102, i32 noundef 0) #8, !dbg !5989
  %call = call i32 @_cond_resched() #8, !dbg !5989
  store i32 %call, ptr %tmp5, align 4, !dbg !5989
  %20 = load i32, ptr %tmp5, align 4, !dbg !5989
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr2) #9, !dbg !5991
  br label %do.cond, !dbg !5992

do.cond:                                          ; preds = %cond.end
  %21 = load ptr, ptr %batch, align 8, !dbg !5993
  %nr6 = getelementptr inbounds %struct.mmu_gather_batch, ptr %21, i32 0, i32 1, !dbg !5994
  %22 = load i32, ptr %nr6, align 8, !dbg !5994
  %tobool7 = icmp ne i32 %22, 0, !dbg !5992
  br i1 %tobool7, label %do.body, label %do.end, !dbg !5992, !llvm.loop !5995

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %pages) #9, !dbg !5997
  br label %for.inc, !dbg !5998

for.inc:                                          ; preds = %do.end
  %23 = load ptr, ptr %batch, align 8, !dbg !5999
  %next = getelementptr inbounds %struct.mmu_gather_batch, ptr %23, i32 0, i32 0, !dbg !6000
  %24 = load ptr, ptr %next, align 8, !dbg !6000
  store ptr %24, ptr %batch, align 8, !dbg !6001
  br label %for.cond, !dbg !6002, !llvm.loop !6003

for.end:                                          ; preds = %land.end
  %25 = load ptr, ptr %tlb.addr, align 8, !dbg !6005
  %local8 = getelementptr inbounds %struct.mmu_gather, ptr %25, i32 0, i32 7, !dbg !6006
  %26 = load ptr, ptr %tlb.addr, align 8, !dbg !6007
  %active = getelementptr inbounds %struct.mmu_gather, ptr %26, i32 0, i32 6, !dbg !6008
  store ptr %local8, ptr %active, align 8, !dbg !6009
  call void @llvm.lifetime.end.p0(i64 8, ptr %batch) #9, !dbg !6010
  ret void, !dbg !6010
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6011 dso_local void @free_pages_and_swap_cache(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__might_resched(ptr noundef %file, i32 noundef %line, i32 noundef %offsets) #4 align 16 !dbg !6014 {
entry:
  %file.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %offsets.addr = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6019, metadata !DIExpression()), !dbg !6022
  store i32 %line, ptr %line.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !6020, metadata !DIExpression()), !dbg !6023
  store i32 %offsets, ptr %offsets.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offsets.addr, metadata !6021, metadata !DIExpression()), !dbg !6024
  ret void, !dbg !6025
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @_cond_resched() #5 align 16 !dbg !9 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__cond_resched, ptr %tmp, align 8, !dbg !6026
  %0 = load ptr, ptr %tmp, align 8, !dbg !6026
  %call = call i32 %0() #8, !dbg !6028
  ret i32 %call, !dbg !6029
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__cond_resched() #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tlb_table_init(ptr noundef %tlb) #4 align 16 !dbg !6030 {
entry:
  %tlb.addr = alloca ptr, align 8
  store ptr %tlb, ptr %tlb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tlb.addr, metadata !6032, metadata !DIExpression()), !dbg !6033
  %0 = load ptr, ptr %tlb.addr, align 8, !dbg !6034
  %batch = getelementptr inbounds %struct.mmu_gather, ptr %0, i32 0, i32 1, !dbg !6035
  store ptr null, ptr %batch, align 8, !dbg !6036
  ret void, !dbg !6037
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @inc_tlb_flush_pending(ptr noundef %mm) #4 align 16 !dbg !6038 {
entry:
  %mm.addr = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6040, metadata !DIExpression()), !dbg !6041
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !6042
  %1 = getelementptr inbounds %struct.mm_struct, ptr %0, i32 0, i32 0, !dbg !6043
  %tlb_flush_pending = getelementptr inbounds %struct.anon.14, ptr %1, i32 0, i32 51, !dbg !6043
  call void @atomic_inc(ptr noundef %tlb_flush_pending) #8, !dbg !6044
  ret void, !dbg !6045
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_inc(ptr noundef %v) #5 align 16 !dbg !6046 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6052, metadata !DIExpression()), !dbg !6053
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6054
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #8, !dbg !6055
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6056
  call void @raw_atomic_inc(ptr noundef %1) #8, !dbg !6057
  ret void, !dbg !6058
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !6059 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6067, metadata !DIExpression()), !dbg !6069
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6068, metadata !DIExpression()), !dbg !6070
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6071
  %1 = load i64, ptr %size.addr, align 8, !dbg !6072
  %conv = trunc i64 %1 to i32, !dbg !6072
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #8, !dbg !6073
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6074
  %3 = load i64, ptr %size.addr, align 8, !dbg !6074
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #8, !dbg !6074
  ret void, !dbg !6075
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_inc(ptr noundef %v) #5 align 16 !dbg !6076 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6079, metadata !DIExpression()), !dbg !6080
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6081
  call void @arch_atomic_inc(ptr noundef %0) #8, !dbg !6082
  ret void, !dbg !6083
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !6084 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6089, metadata !DIExpression()), !dbg !6091
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6090, metadata !DIExpression()), !dbg !6092
  ret i1 true, !dbg !6093
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !6094 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6099, metadata !DIExpression()), !dbg !6102
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6100, metadata !DIExpression()), !dbg !6103
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6101, metadata !DIExpression()), !dbg !6104
  ret void, !dbg !6105
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_inc(ptr noundef %v) #5 align 16 !dbg !6106 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6109, metadata !DIExpression()), !dbg !6110
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6111
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6112
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #9, !dbg !6113, !srcloc !6114
  ret void, !dbg !6115
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #5 align 16 !dbg !6116 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6122, metadata !DIExpression()), !dbg !6123
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6124
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #8, !dbg !6125
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6126
  %call = call i32 @raw_atomic_read(ptr noundef %1) #8, !dbg !6127
  ret i32 %call, !dbg !6128
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !6129 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6131, metadata !DIExpression()), !dbg !6133
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6132, metadata !DIExpression()), !dbg !6134
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6135
  %1 = load i64, ptr %size.addr, align 8, !dbg !6136
  %conv = trunc i64 %1 to i32, !dbg !6136
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #8, !dbg !6137
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6138
  %3 = load i64, ptr %size.addr, align 8, !dbg !6138
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #8, !dbg !6138
  ret void, !dbg !6139
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #5 align 16 !dbg !6140 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6142, metadata !DIExpression()), !dbg !6143
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6144
  %call = call i32 @arch_atomic_read(ptr noundef %0) #8, !dbg !6145
  ret i32 %call, !dbg !6146
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !6147 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6149, metadata !DIExpression()), !dbg !6151
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6150, metadata !DIExpression()), !dbg !6152
  ret i1 true, !dbg !6153
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #5 align 16 !dbg !6154 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6156, metadata !DIExpression()), !dbg !6157
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6158
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6158
  %1 = load volatile i32, ptr %counter, align 4, !dbg !6158
  ret i32 %1, !dbg !6159
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_ti_thread_flag(ptr noundef %ti, i32 noundef %flag) #4 align 16 !dbg !6160 {
entry:
  %ti.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %ti, ptr %ti.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ti.addr, metadata !6165, metadata !DIExpression()), !dbg !6167
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !6166, metadata !DIExpression()), !dbg !6168
  %0 = load i32, ptr %flag.addr, align 4, !dbg !6169
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6169
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !6169

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ti.addr, align 8, !dbg !6169
  %flags = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 0, !dbg !6169
  %3 = ptrtoint ptr %flags to i64, !dbg !6169
  %cmp = icmp ne i64 %3, 0, !dbg !6169
  %conv = zext i1 %cmp to i32, !dbg !6169
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !6169
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !6169

land.lhs.true1:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %ti.addr, align 8, !dbg !6169
  %flags2 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 0, !dbg !6169
  %6 = ptrtoint ptr %flags2 to i64, !dbg !6169
  %cmp3 = icmp ne i64 %6, 0, !dbg !6169
  br i1 %cmp3, label %land.lhs.true5, label %cond.false, !dbg !6169

land.lhs.true5:                                   ; preds = %land.lhs.true1
  %7 = load ptr, ptr %ti.addr, align 8, !dbg !6169
  %flags6 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 0, !dbg !6169
  %8 = load i64, ptr %flags6, align 8, !dbg !6169
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !6169
  br i1 %9, label %cond.true, label %cond.false, !dbg !6169

cond.true:                                        ; preds = %land.lhs.true5
  %10 = load i32, ptr %flag.addr, align 4, !dbg !6169
  %conv7 = sext i32 %10 to i64, !dbg !6169
  %11 = load ptr, ptr %ti.addr, align 8, !dbg !6169
  %flags8 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 0, !dbg !6169
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv7, ptr noundef %flags8) #8, !dbg !6169
  %conv9 = zext i1 %call to i32, !dbg !6169
  br label %cond.end, !dbg !6169

cond.false:                                       ; preds = %land.lhs.true5, %land.lhs.true1, %land.lhs.true, %entry
  %12 = load i32, ptr %flag.addr, align 4, !dbg !6169
  %conv10 = sext i32 %12 to i64, !dbg !6169
  %13 = load ptr, ptr %ti.addr, align 8, !dbg !6169
  %flags11 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 0, !dbg !6169
  %call12 = call zeroext i1 @_test_bit(i64 noundef %conv10, ptr noundef %flags11) #8, !dbg !6169
  %conv13 = zext i1 %call12 to i32, !dbg !6169
  br label %cond.end, !dbg !6169

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv9, %cond.true ], [ %conv13, %cond.false ], !dbg !6169
  ret i32 %cond, !dbg !6170
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #5 align 16 !dbg !6171 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #9, !dbg !6182
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6176, metadata !DIExpression()), !dbg !6182
  br label %do.body, !dbg !6182

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #9, !dbg !6183
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6178, metadata !DIExpression()), !dbg !6183
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6183
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6183
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #9, !dbg !6182
  br label %do.cond, !dbg !6183

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6183

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #9, !dbg !6184
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6180, metadata !DIExpression()), !dbg !6184
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #10, !dbg !6184, !srcloc !6185
  store i64 %1, ptr %pfo_val__, align 8, !dbg !6184
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !6184
  %3 = inttoptr i64 %2 to ptr, !dbg !6184
  store ptr %3, ptr %tmp, align 8, !dbg !6184
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #9, !dbg !6182
  %4 = load ptr, ptr %tmp, align 8, !dbg !6184
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !6182
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !6182
  store ptr %5, ptr %tmp1, align 8, !dbg !6182
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #9, !dbg !6186
  %6 = load ptr, ptr %tmp1, align 8, !dbg !6182
  ret ptr %6, !dbg !6187
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @task_size_max() #5 align 16 !dbg !6188 {
entry:
  %ret = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #9, !dbg !6194
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6193, metadata !DIExpression()), !dbg !6195
  %0 = call i64 asm sideeffect "# ALT: oldnstr\0A661:\0A\09movq $2,$0\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte (16*32+16)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09movq $3,$0\0A6651:\0A.popsection\0A", "=r,i,i,i,~{dirflag},~{fpsr},~{flags}"(i32 0, i64 140737488351232, i64 72057594037923840) #9, !dbg !6196, !srcloc !6197
  store i64 %0, ptr %ret, align 8, !dbg !6196
  %1 = load i64, ptr %ret, align 8, !dbg !6198
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #9, !dbg !6199
  ret i64 %1, !dbg !6200
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #6

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6201 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6209, metadata !DIExpression()), !dbg !6214
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6210, metadata !DIExpression()), !dbg !6215
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #9, !dbg !6216
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6211, metadata !DIExpression()), !dbg !6217
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6218
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6219
  %div = udiv i64 %1, 64, !dbg !6219
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6220
  store ptr %add.ptr, ptr %p, align 8, !dbg !6217
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #9, !dbg !6221
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6212, metadata !DIExpression()), !dbg !6222
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6223
  %rem = urem i64 %2, 64, !dbg !6223
  %shl = shl i64 1, %rem, !dbg !6223
  store i64 %shl, ptr %mask, align 8, !dbg !6222
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #9, !dbg !6224
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6213, metadata !DIExpression()), !dbg !6225
  %3 = load ptr, ptr %p, align 8, !dbg !6226
  %4 = load i64, ptr %3, align 8, !dbg !6227
  store i64 %4, ptr %val, align 8, !dbg !6225
  %5 = load i64, ptr %val, align 8, !dbg !6228
  %6 = load i64, ptr %mask, align 8, !dbg !6229
  %and = and i64 %5, %6, !dbg !6230
  %tobool = icmp ne i64 %and, 0, !dbg !6231
  %lnot = xor i1 %tobool, true, !dbg !6231
  %lnot1 = xor i1 %lnot, true, !dbg !6232
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #9, !dbg !6233
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #9, !dbg !6233
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #9, !dbg !6233
  ret i1 %lnot1, !dbg !6234
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6235 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6238, metadata !DIExpression()), !dbg !6240
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6239, metadata !DIExpression()), !dbg !6241
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6242
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6243
  %div = udiv i64 %1, 64, !dbg !6243
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6244
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #8, !dbg !6245
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6246
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6247
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #8, !dbg !6248
  ret i1 %call, !dbg !6249
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6250 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6253, metadata !DIExpression()), !dbg !6255
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6254, metadata !DIExpression()), !dbg !6256
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6257
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6258
  br i1 %1, label %cond.true, label %cond.false, !dbg !6258

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6259
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6260
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #8, !dbg !6261
  %conv = zext i1 %call to i32, !dbg !6261
  br label %cond.end, !dbg !6258

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6262
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6263
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #8, !dbg !6264
  %conv2 = zext i1 %call1 to i32, !dbg !6264
  br label %cond.end, !dbg !6258

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6258
  %tobool = icmp ne i32 %cond, 0, !dbg !6258
  ret i1 %tobool, !dbg !6265
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6266 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6270, metadata !DIExpression()), !dbg !6272
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6271, metadata !DIExpression()), !dbg !6273
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6274
  %and = and i64 %0, 63, !dbg !6275
  %shl = shl i64 1, %and, !dbg !6276
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6277
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6278
  %shr = ashr i64 %2, 6, !dbg !6279
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6277
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6277
  %and1 = and i64 %shl, %3, !dbg !6280
  %cmp = icmp ne i64 %and1, 0, !dbg !6281
  ret i1 %cmp, !dbg !6282
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6283 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6285, metadata !DIExpression()), !dbg !6288
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6286, metadata !DIExpression()), !dbg !6289
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #9, !dbg !6290
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6287, metadata !DIExpression()), !dbg !6291
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6292
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6293
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #9, !dbg !6294, !srcloc !6295
  %3 = icmp ult i8 %2, 2, !dbg !6294
  call void @llvm.assume(i1 %3), !dbg !6294
  store i8 %2, ptr %oldbit, align 1, !dbg !6294
  %4 = load i8, ptr %oldbit, align 1, !dbg !6296, !range !5614, !noundef !1321
  %tobool = trunc i8 %4 to i1, !dbg !6296
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #9, !dbg !6297
  ret i1 %tobool, !dbg !6298
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_dec(ptr noundef %v) #5 align 16 !dbg !6299 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6301, metadata !DIExpression()), !dbg !6302
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6303
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #8, !dbg !6304
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6305
  call void @raw_atomic_dec(ptr noundef %1) #8, !dbg !6306
  ret void, !dbg !6307
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_dec(ptr noundef %v) #5 align 16 !dbg !6308 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6310, metadata !DIExpression()), !dbg !6311
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6312
  call void @arch_atomic_dec(ptr noundef %0) #8, !dbg !6313
  ret void, !dbg !6314
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_dec(ptr noundef %v) #5 align 16 !dbg !6315 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6317, metadata !DIExpression()), !dbg !6318
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6319
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6320
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #9, !dbg !6321, !srcloc !6322
  ret void, !dbg !6323
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { noredzone }
attributes #9 = { nounwind }
attributes #10 = { nounwind memory(none) }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!5189, !5190, !5191, !5192, !5193, !5194, !5195, !5196}
!llvm.ident = !{!5197}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 102, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "mm/mmu_gather.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6cea9539975af66279baab37e1ed586e")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 16)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__cond_resched181", scope: !9, file: !10, line: 2104, type: !33, isLocal: true, isDefinition: true)
!9 = distinct !DISubprogram(name: "_cond_resched", scope: !10, file: !10, line: 2102, type: !11, scopeLine: 2103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14)
!10 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!11 = !DISubroutineType(types: !12)
!12 = !{!13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF mm/.mmu_gather.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22mm/mmu_gather\22 -D KBUILD_BASENAME=\22mmu_gather\22 -D KBUILD_MODNAME=\22mmu_gather\22 -D __KBUILD_MODNAME=kmod_mmu_gather -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o mm/mmu_gather.ll mm/mmu_gather.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !15, retainedTypes: !281, globals: !5188, splitDebugInlining: false, nameTableKind: None)
!15 = !{!16, !25, !119, !126, !134, !150, !155, !162, !168, !175, !180, !188, !195, !201, !210, !215, !220, !226, !231, !237, !249, !255, !262, !267}
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !17, line: 9, baseType: !18, size: 32, elements: !19)
!17 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !{!20, !21, !22, !23, !24}
!20 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!21 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!22 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!23 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!24 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !27, file: !26, line: 147, baseType: !18, size: 32, elements: !116)
!26 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !26, line: 135, size: 512, elements: !28)
!28 = !{!29, !32, !34, !35, !39, !40, !56, !114, !115}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !27, file: !26, line: 136, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !27, file: !26, line: 137, baseType: !33, size: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !27, file: !26, line: 138, baseType: !13, size: 32, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !27, file: !26, line: 139, baseType: !36, size: 16, offset: 160)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !37, line: 24, baseType: !38)
!37 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!38 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !27, file: !26, line: 150, baseType: !25, size: 32, offset: 192)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !27, file: !26, line: 151, baseType: !41, size: 64, offset: 256)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !26, line: 64, baseType: !43)
!43 = !DISubroutineType(types: !44)
!44 = !{!13, !45, !13, !33, !46, !52}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !37, line: 61, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !49, line: 72, baseType: !50)
!49 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !49, line: 16, baseType: !51)
!51 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !37, line: 52, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !49, line: 88, baseType: !55)
!55 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !27, file: !26, line: 152, baseType: !57, size: 64, offset: 320)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !26, line: 117, size: 256, elements: !59)
!59 = !{!60, !65}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !58, file: !26, line: 118, baseType: !61, size: 32)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !37, line: 174, baseType: !62)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 172, size: 32, elements: !63)
!63 = !{!64}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !62, file: !37, line: 173, baseType: !13, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !58, file: !26, line: 119, baseType: !66, size: 192, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !67, line: 41, baseType: !68)
!67 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !67, line: 37, size: 192, elements: !69)
!69 = !{!70, !108}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !68, file: !67, line: 38, baseType: !71, size: 32)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !72, line: 29, baseType: !73)
!72 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !72, line: 17, size: 32, elements: !74)
!74 = !{!75}
!75 = !DIDerivedType(tag: DW_TAG_member, scope: !73, file: !72, line: 18, baseType: !76, size: 32)
!76 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !73, file: !72, line: 18, size: 32, elements: !77)
!77 = !{!78}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !76, file: !72, line: 19, baseType: !79, size: 32)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !80, line: 14, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!81 = !{!82}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !79, file: !80, line: 15, baseType: !83, size: 32)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !84, line: 44, baseType: !85)
!84 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !84, line: 14, size: 32, elements: !86)
!86 = !{!87}
!87 = !DIDerivedType(tag: DW_TAG_member, scope: !85, file: !84, line: 15, baseType: !88, size: 32)
!88 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !85, file: !84, line: 15, size: 32, elements: !89)
!89 = !{!90, !91, !101}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !88, file: !84, line: 16, baseType: !61, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, scope: !88, file: !84, line: 24, baseType: !92, size: 16)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !88, file: !84, line: 24, size: 16, elements: !93)
!93 = !{!94, !100}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !92, file: !84, line: 25, baseType: !95, size: 8)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !96, line: 17, baseType: !97)
!96 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !98, line: 21, baseType: !99)
!98 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!99 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !92, file: !84, line: 26, baseType: !95, size: 8, offset: 8)
!101 = !DIDerivedType(tag: DW_TAG_member, scope: !88, file: !84, line: 28, baseType: !102, size: 32)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !88, file: !84, line: 28, size: 32, elements: !103)
!103 = !{!104, !107}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !102, file: !84, line: 29, baseType: !105, size: 16)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !96, line: 19, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !98, line: 24, baseType: !38)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !102, file: !84, line: 30, baseType: !105, size: 16, offset: 16)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !68, file: !67, line: 39, baseType: !109, size: 128, offset: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !37, line: 190, size: 128, elements: !110)
!110 = !{!111, !113}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !109, file: !37, line: 191, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !109, file: !37, line: 191, baseType: !112, size: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !27, file: !26, line: 153, baseType: !33, size: 64, offset: 384)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !27, file: !26, line: 154, baseType: !33, size: 64, offset: 448)
!116 = !{!117, !118}
!117 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!118 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !120, line: 312, baseType: !18, size: 32, elements: !121)
!120 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!121 = !{!122, !123, !124, !125}
!122 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!123 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!124 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!125 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !127, line: 68, baseType: !18, size: 32, elements: !128)
!127 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!128 = !{!129, !130, !131, !132, !133}
!129 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!130 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!131 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!132 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!133 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !135, line: 1325, baseType: !18, size: 32, elements: !136)
!135 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!136 = !{!137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149}
!137 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!138 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!139 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!140 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!141 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!142 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!143 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!144 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!145 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!146 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!147 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!148 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!149 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!150 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !151, line: 32, baseType: !18, size: 32, elements: !152)
!151 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!152 = !{!153, !154}
!153 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!154 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!155 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !156, line: 15, baseType: !18, size: 32, elements: !157)
!156 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!157 = !{!158, !159, !160, !161}
!158 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!159 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!160 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!161 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!162 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !163, line: 45, baseType: !18, size: 32, elements: !164)
!163 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!164 = !{!165, !166, !167}
!165 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!166 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!167 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !169, line: 487, baseType: !18, size: 32, elements: !170)
!169 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!170 = !{!171, !172, !173, !174}
!171 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!172 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!173 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!174 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!175 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !176, line: 65, baseType: !18, size: 32, elements: !177)
!176 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!177 = !{!178, !179}
!178 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!179 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!180 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !181, line: 620, baseType: !18, size: 32, elements: !182)
!181 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!182 = !{!183, !184, !185, !186, !187}
!183 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!184 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!185 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!186 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!187 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!188 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !181, line: 597, baseType: !13, size: 32, elements: !189)
!189 = !{!190, !191, !192, !193, !194}
!190 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!191 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!192 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!193 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!194 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!195 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !196, line: 26, baseType: !18, size: 32, elements: !197)
!196 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!197 = !{!198, !199, !200}
!198 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!199 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!200 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!201 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !169, line: 547, baseType: !18, size: 32, elements: !202)
!202 = !{!203, !204, !205, !206, !207, !208, !209}
!203 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!204 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!205 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!206 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!207 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!208 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!209 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!210 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !169, line: 564, baseType: !18, size: 32, elements: !211)
!211 = !{!212, !213, !214}
!212 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!213 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!214 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!215 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !169, line: 577, baseType: !18, size: 32, elements: !216)
!216 = !{!217, !218, !219}
!217 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!218 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!219 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!220 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !169, line: 503, baseType: !18, size: 32, elements: !221)
!221 = !{!222, !223, !224, !225}
!222 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!223 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!224 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!225 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!226 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !227, line: 2052, baseType: !18, size: 32, elements: !228)
!227 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!228 = !{!229, !230}
!229 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!230 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!231 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !232, line: 54, baseType: !18, size: 32, elements: !233)
!232 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!233 = !{!234, !235, !236}
!234 = !DIEnumerator(name: "USRQUOTA", value: 0)
!235 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!236 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!237 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !238, line: 44, baseType: !18, size: 32, elements: !239)
!238 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!239 = !{!240, !241, !242, !243, !244, !245, !246, !247, !248}
!240 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!241 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!242 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!243 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!244 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!245 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!246 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!247 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!248 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!249 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !250, line: 16, baseType: !18, size: 32, elements: !251)
!250 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!251 = !{!252, !253, !254}
!252 = !DIEnumerator(name: "TT_NONE", value: 0)
!253 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!254 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!255 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !256, line: 51, baseType: !18, size: 32, elements: !257)
!256 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!257 = !{!258, !259, !260, !261}
!258 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!259 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!260 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!261 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!262 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !263, line: 10, baseType: !18, size: 32, elements: !264)
!263 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!264 = !{!265, !266}
!265 = !DIEnumerator(name: "false", value: 0)
!266 = !DIEnumerator(name: "true", value: 1)
!267 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !268, line: 11, baseType: !18, size: 32, elements: !269)
!268 = !DIFile(filename: "./include/uapi/linux/personality.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7c91ab3d8e54e6839beaeedd575ef767")
!269 = !{!270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280}
!270 = !DIEnumerator(name: "UNAME26", value: 131072)
!271 = !DIEnumerator(name: "ADDR_NO_RANDOMIZE", value: 262144)
!272 = !DIEnumerator(name: "FDPIC_FUNCPTRS", value: 524288)
!273 = !DIEnumerator(name: "MMAP_PAGE_ZERO", value: 1048576)
!274 = !DIEnumerator(name: "ADDR_COMPAT_LAYOUT", value: 2097152)
!275 = !DIEnumerator(name: "READ_IMPLIES_EXEC", value: 4194304)
!276 = !DIEnumerator(name: "ADDR_LIMIT_32BIT", value: 8388608)
!277 = !DIEnumerator(name: "SHORT_INODE", value: 16777216)
!278 = !DIEnumerator(name: "WHOLE_SECONDS", value: 33554432)
!279 = !DIEnumerator(name: "STICKY_TIMEOUTS", value: 67108864)
!280 = !DIEnumerator(name: "ADDR_LIMIT_3GB", value: 134217728)
!281 = !{!33, !282, !300, !51, !301, !13, !5181, !5184, !5185, !2220, !5186, !5187, !3140}
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_table_batch", file: !284, line: 193, size: 192, elements: !285)
!284 = !DIFile(filename: "./include/asm-generic/tlb.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc167992e5f7b628664762b814376b97")
!285 = !{!286, !295, !296}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !283, file: !284, line: 195, baseType: !287, size: 128, align: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !37, line: 232, size: 128, align: 64, elements: !288)
!288 = !{!289, !291}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !287, file: !37, line: 233, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !287, file: !37, line: 234, baseType: !292, size: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{null, !290}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !283, file: !284, line: 197, baseType: !18, size: 32, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "tables", scope: !283, file: !284, line: 198, baseType: !297, offset: 192)
!297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, elements: !298)
!298 = !{!299}
!299 = !DISubrange(count: -1)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !37, line: 154, baseType: !18)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !135, line: 74, size: 512, align: 128, elements: !303)
!303 = !{!304, !305, !5175, !5180}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !302, file: !135, line: 75, baseType: !51, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, scope: !302, file: !135, line: 83, baseType: !306, size: 320, offset: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !302, file: !135, line: 83, size: 320, elements: !307)
!307 = !{!308, !5101, !5115, !5119, !5174}
!308 = !DIDerivedType(tag: DW_TAG_member, scope: !306, file: !135, line: 84, baseType: !309, size: 320)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !306, file: !135, line: 84, size: 320, elements: !310)
!310 = !{!311, !322, !5095, !5100}
!311 = !DIDerivedType(tag: DW_TAG_member, scope: !309, file: !135, line: 90, baseType: !312, size: 128)
!312 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !309, file: !135, line: 90, size: 128, elements: !313)
!313 = !{!314, !315, !320, !321}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !312, file: !135, line: 91, baseType: !109, size: 128)
!315 = !DIDerivedType(tag: DW_TAG_member, scope: !312, file: !135, line: 94, baseType: !316, size: 128)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !312, file: !135, line: 94, size: 128, elements: !317)
!317 = !{!318, !319}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !316, file: !135, line: 96, baseType: !33, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !316, file: !135, line: 98, baseType: !18, size: 32, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !312, file: !135, line: 102, baseType: !109, size: 128)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !312, file: !135, line: 103, baseType: !109, size: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !309, file: !135, line: 106, baseType: !323, size: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !227, line: 472, size: 1536, align: 64, elements: !325)
!325 = !{!326, !4941, !4942, !4943, !4944, !4945, !4946, !4947, !4948, !5089, !5090, !5091, !5092, !5093, !5094}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !324, file: !227, line: 473, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !227, line: 641, size: 4800, elements: !329)
!329 = !{!330, !331, !332, !340, !341, !348, !349, !352, !353, !4879, !4880, !4881, !4882, !4883, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4898, !4899, !4900, !4901, !4902, !4903, !4904, !4905, !4906, !4907, !4912, !4913, !4914, !4915, !4916, !4917, !4918, !4923, !4926, !4927, !4928, !4937, !4938, !4939, !4940}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !328, file: !227, line: 642, baseType: !36, size: 16)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !328, file: !227, line: 643, baseType: !38, size: 16, offset: 16)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !328, file: !227, line: 644, baseType: !333, size: 32, offset: 32)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !334, line: 23, baseType: !335)
!334 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !334, line: 21, size: 32, elements: !336)
!336 = !{!337}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !335, file: !334, line: 22, baseType: !338, size: 32)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !37, line: 37, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !49, line: 49, baseType: !18)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !328, file: !227, line: 645, baseType: !109, size: 128, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !328, file: !227, line: 646, baseType: !342, size: 32, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !334, line: 28, baseType: !343)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !334, line: 26, size: 32, elements: !344)
!344 = !{!345}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !343, file: !334, line: 27, baseType: !346, size: 32)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !37, line: 38, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !49, line: 50, baseType: !18)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !328, file: !227, line: 647, baseType: !18, size: 32, offset: 224)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !328, file: !227, line: 650, baseType: !350, size: 64, offset: 256)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !227, line: 607, flags: DIFlagFwdDecl)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !328, file: !227, line: 651, baseType: !350, size: 64, offset: 320)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !328, file: !227, line: 654, baseType: !354, size: 64, offset: 384)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !356)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !227, line: 1966, size: 2048, align: 512, elements: !357)
!357 = !{!358, !4713, !4723, !4727, !4731, !4735, !4739, !4743, !4747, !4751, !4755, !4756, !4760, !4764, !4801, !4830, !4834, !4840, !4844, !4848, !4852, !4856, !4860, !4866, !4870}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !356, file: !227, line: 1967, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{!362, !327, !362, !18}
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !364, line: 82, size: 1536, elements: !365)
!364 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!365 = !{!366, !367, !377, !385, !386, !406, !407, !411, !424, !4696, !4697, !4698, !4699, !4705, !4706, !4707}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !363, file: !364, line: 84, baseType: !18, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !363, file: !364, line: 85, baseType: !368, size: 32, offset: 32)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !369, line: 275, baseType: !370)
!369 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !369, line: 275, size: 32, elements: !371)
!371 = !{!372}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !370, file: !369, line: 275, baseType: !373, size: 32)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !369, line: 69, baseType: !374)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !369, line: 64, size: 32, elements: !375)
!375 = !{!376}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !374, file: !369, line: 65, baseType: !18, size: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !363, file: !364, line: 86, baseType: !378, size: 128, offset: 64)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !379, line: 38, size: 128, elements: !380)
!379 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!380 = !{!381, !383}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !378, file: !379, line: 39, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !378, file: !379, line: 39, baseType: !384, size: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !363, file: !364, line: 87, baseType: !362, size: 64, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !363, file: !364, line: 88, baseType: !387, size: 128, offset: 256)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !364, line: 49, size: 128, elements: !388)
!388 = !{!389, !403}
!389 = !DIDerivedType(tag: DW_TAG_member, scope: !387, file: !364, line: 50, baseType: !390, size: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !387, file: !364, line: 50, size: 64, elements: !391)
!391 = !{!392, !399}
!392 = !DIDerivedType(tag: DW_TAG_member, scope: !390, file: !364, line: 51, baseType: !393, size: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !390, file: !364, line: 51, size: 64, elements: !394)
!394 = !{!395, !398}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !393, file: !364, line: 52, baseType: !396, size: 32)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !96, line: 21, baseType: !397)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !98, line: 27, baseType: !18)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !393, file: !364, line: 52, baseType: !396, size: 32, offset: 32)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !390, file: !364, line: 54, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !96, line: 23, baseType: !401)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !98, line: 31, baseType: !402)
!402 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !387, file: !364, line: 56, baseType: !404, size: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !363, file: !364, line: 89, baseType: !327, size: 64, offset: 384)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !363, file: !364, line: 91, baseType: !408, size: 256, offset: 448)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 256, elements: !409)
!409 = !{!410}
!410 = !DISubrange(count: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !363, file: !364, line: 94, baseType: !412, size: 64, offset: 704)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !413, line: 25, size: 64, elements: !414)
!413 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!414 = !{!415}
!415 = !DIDerivedType(tag: DW_TAG_member, scope: !412, file: !413, line: 26, baseType: !416, size: 64)
!416 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !412, file: !413, line: 26, size: 64, elements: !417)
!417 = !{!418, !419}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !416, file: !413, line: 28, baseType: !401, size: 64, align: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, scope: !416, file: !413, line: 30, baseType: !420, size: 64)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !416, file: !413, line: 30, size: 64, elements: !421)
!421 = !{!422, !423}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !420, file: !413, line: 31, baseType: !71, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !420, file: !413, line: 32, baseType: !13, size: 32, offset: 32)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !363, file: !364, line: 95, baseType: !425, size: 64, offset: 768)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !427)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !364, line: 128, size: 1024, align: 512, elements: !428)
!428 = !{!429, !433, !434, !441, !447, !451, !455, !459, !460, !464, !469, !4686, !4690}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !427, file: !364, line: 129, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{!13, !362, !18}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !427, file: !364, line: 130, baseType: !430, size: 64, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !427, file: !364, line: 131, baseType: !435, size: 64, offset: 128)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!13, !438, !440}
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !363)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !427, file: !364, line: 132, baseType: !442, size: 64, offset: 192)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!13, !438, !18, !30, !445}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !387)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !427, file: !364, line: 134, baseType: !448, size: 64, offset: 256)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!13, !438}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !427, file: !364, line: 135, baseType: !452, size: 64, offset: 320)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!13, !362}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !427, file: !364, line: 136, baseType: !456, size: 64, offset: 384)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{null, !362}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !427, file: !364, line: 137, baseType: !456, size: 64, offset: 448)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !427, file: !364, line: 138, baseType: !461, size: 64, offset: 512)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{null, !362, !327}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !427, file: !364, line: 139, baseType: !465, size: 64, offset: 576)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{!468, !362, !468, !13}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !427, file: !364, line: 140, baseType: !470, size: 64, offset: 640)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!473, !4685}
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !475, line: 70, size: 256, elements: !476)
!475 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!476 = !{!477, !478, !4681, !4682}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !474, file: !475, line: 71, baseType: !362, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !474, file: !475, line: 72, baseType: !479, size: 64, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !227, line: 1190, size: 10752, elements: !481)
!481 = !{!482, !483, !486, !487, !488, !489, !2249, !2401, !2441, !2526, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2543, !2547, !2548, !3009, !3012, !3070, !3073, !3074, !3075, !3116, !4615, !4616, !4617, !4618, !4619, !4620, !4623, !4624, !4631, !4632, !4633, !4634, !4635, !4650, !4651, !4652, !4653, !4654, !4655, !4656, !4657, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4679, !4680}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !480, file: !227, line: 1191, baseType: !109, size: 128)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !480, file: !227, line: 1192, baseType: !484, size: 32, offset: 128)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !37, line: 21, baseType: !485)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !37, line: 18, baseType: !396)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !480, file: !227, line: 1193, baseType: !99, size: 8, offset: 160)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !480, file: !227, line: 1194, baseType: !51, size: 64, offset: 192)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !480, file: !227, line: 1195, baseType: !53, size: 64, offset: 256)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !480, file: !227, line: 1196, baseType: !490, size: 64, offset: 320)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !227, line: 2366, size: 576, elements: !492)
!492 = !{!493, !494, !495, !501, !505, !509, !513, !2237, !2238, !2239, !2241, !2242, !2243, !2245, !2246, !2247, !2248}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !491, file: !227, line: 2367, baseType: !30, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !491, file: !227, line: 2368, baseType: !13, size: 32, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !491, file: !227, line: 2376, baseType: !496, size: 64, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!13, !499}
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !475, line: 21, flags: DIFlagFwdDecl)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !491, file: !227, line: 2377, baseType: !502, size: 64, offset: 192)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !504)
!504 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !227, line: 75, flags: DIFlagFwdDecl)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !491, file: !227, line: 2378, baseType: !506, size: 64, offset: 256)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{!362, !490, !13, !30, !33}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !491, file: !227, line: 2380, baseType: !510, size: 64, offset: 320)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{null, !479}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !491, file: !227, line: 2381, baseType: !514, size: 64, offset: 384)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !120, line: 402, size: 9216, align: 512, elements: !516)
!516 = !{!517, !518, !519, !523, !1896, !1922, !1923, !1924, !1925, !1929, !1932, !1933, !1934, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !2002, !2004, !2024, !2042, !2043, !2044, !2045, !2054, !2077, !2078, !2081, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2095, !2096, !2195, !2203, !2204, !2205, !2207, !2211, !2212, !2216, !2217, !2218, !2219, !2221, !2222, !2223, !2230, !2231, !2232, !2236}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !515, file: !120, line: 403, baseType: !119, size: 32)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !515, file: !120, line: 406, baseType: !109, size: 128, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !515, file: !120, line: 409, baseType: !520, size: 448, offset: 192)
!520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !521)
!521 = !{!522}
!522 = !DISubrange(count: 56)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !515, file: !120, line: 417, baseType: !524, size: 768, offset: 640)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !120, line: 45, size: 768, elements: !525)
!525 = !{!526, !1890, !1891, !1892, !1895}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !524, file: !120, line: 46, baseType: !527, size: 512)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !528, line: 64, size: 512, elements: !529)
!528 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!529 = !{!530, !531, !532, !534, !580, !1788, !1880, !1885, !1886, !1887, !1888, !1889}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !527, file: !528, line: 65, baseType: !30, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !527, file: !528, line: 66, baseType: !109, size: 128, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !527, file: !528, line: 67, baseType: !533, size: 64, offset: 192)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !527, file: !528, line: 68, baseType: !535, size: 64, offset: 256)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !528, line: 168, size: 768, elements: !537)
!537 = !{!538, !539, !540, !541}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !536, file: !528, line: 169, baseType: !109, size: 128)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !536, file: !528, line: 170, baseType: !71, size: 32, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !536, file: !528, line: 171, baseType: !527, size: 512, offset: 192)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !536, file: !528, line: 172, baseType: !542, size: 64, offset: 704)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !544)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !528, line: 133, size: 192, elements: !545)
!545 = !{!546, !553, !558}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !544, file: !528, line: 134, baseType: !547, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !548)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{!13, !551}
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !527)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !544, file: !528, line: 135, baseType: !554, size: 64, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !555)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{!30, !551}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !544, file: !528, line: 136, baseType: !559, size: 64, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !560)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{!13, !551, !563}
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !528, line: 125, size: 20736, elements: !565)
!565 = !{!566, !570, !574, !575, !579}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !564, file: !528, line: 126, baseType: !567, size: 192)
!567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !468, size: 192, elements: !568)
!568 = !{!569}
!569 = !DISubrange(count: 3)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !564, file: !528, line: 127, baseType: !571, size: 4096, offset: 192)
!571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !468, size: 4096, elements: !572)
!572 = !{!573}
!573 = !DISubrange(count: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !564, file: !528, line: 128, baseType: !13, size: 32, offset: 4288)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !564, file: !528, line: 129, baseType: !576, size: 16384, offset: 4320)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !577)
!577 = !{!578}
!578 = !DISubrange(count: 2048)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !564, file: !528, line: 130, baseType: !13, size: 32, offset: 20704)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !527, file: !528, line: 69, baseType: !581, size: 64, offset: 320)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !583)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !528, line: 116, size: 384, elements: !584)
!584 = !{!585, !589, !612, !1749, !1780, !1784}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !583, file: !528, line: 117, baseType: !586, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{null, !533}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !583, file: !528, line: 118, baseType: !590, size: 64, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !592)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !593, line: 254, size: 128, elements: !594)
!593 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!594 = !{!595, !608}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !592, file: !593, line: 255, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{!599, !533, !603, !468}
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !37, line: 66, baseType: !600)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !49, line: 73, baseType: !601)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !49, line: 15, baseType: !602)
!602 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !593, line: 30, size: 128, elements: !605)
!605 = !{!606, !607}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !604, file: !593, line: 31, baseType: !30, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !604, file: !593, line: 32, baseType: !36, size: 16, offset: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !592, file: !593, line: 256, baseType: !609, size: 64, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{!599, !533, !603, !30, !47}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !583, file: !528, line: 119, baseType: !613, size: 64, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !616)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !593, line: 84, size: 320, elements: !617)
!617 = !{!618, !619, !623, !1745, !1747}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !616, file: !593, line: 85, baseType: !30, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !616, file: !593, line: 86, baseType: !620, size: 64, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!36, !533, !603, !13}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !616, file: !593, line: 88, baseType: !624, size: 64, offset: 128)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!36, !533, !627, !13}
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !593, line: 175, size: 512, elements: !629)
!629 = !{!630, !631, !632, !633, !637, !1740, !1741}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !628, file: !593, line: 176, baseType: !604, size: 128)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !628, file: !593, line: 177, baseType: !47, size: 64, offset: 128)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !628, file: !593, line: 178, baseType: !33, size: 64, offset: 192)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !628, file: !593, line: 179, baseType: !634, size: 64, offset: 256)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!323}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !628, file: !593, line: 180, baseType: !638, size: 64, offset: 320)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{!599, !641, !533, !627, !468, !53, !47}
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !227, line: 994, size: 1856, align: 64, elements: !643)
!643 = !{!644, !655, !656, !658, !667, !680, !681, !682, !746, !1105, !1114, !1120, !1121, !1730, !1731, !1732, !1733, !1735, !1736, !1739}
!644 = !DIDerivedType(tag: DW_TAG_member, scope: !642, file: !227, line: 995, baseType: !645, size: 128)
!645 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !642, file: !227, line: 995, size: 128, elements: !646)
!646 = !{!647, !653, !654}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !645, file: !227, line: 996, baseType: !648, size: 64)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !649, line: 60, size: 64, elements: !650)
!649 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!650 = !{!651}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !648, file: !649, line: 61, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !645, file: !227, line: 997, baseType: !287, size: 128, align: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !645, file: !227, line: 998, baseType: !18, size: 32)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !642, file: !227, line: 1005, baseType: !71, size: 32, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !642, file: !227, line: 1006, baseType: !657, size: 32, offset: 160)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !37, line: 156, baseType: !18)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !642, file: !227, line: 1007, baseType: !659, size: 64, offset: 192)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !660, line: 13, baseType: !661)
!660 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !37, line: 181, baseType: !662)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 179, size: 64, elements: !663)
!663 = !{!664}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !662, file: !37, line: 180, baseType: !665, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !96, line: 22, baseType: !666)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !98, line: 30, baseType: !55)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !642, file: !227, line: 1008, baseType: !668, size: 256, offset: 256)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !669, line: 66, size: 256, elements: !670)
!669 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!670 = !{!671, !672, !674, !679}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !668, file: !669, line: 67, baseType: !659, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !668, file: !669, line: 68, baseType: !673, size: 32, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !80, line: 23, baseType: !79)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !668, file: !669, line: 70, baseType: !675, size: 32, offset: 96)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !676, line: 15, size: 32, elements: !677)
!676 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!677 = !{!678}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !675, file: !676, line: 20, baseType: !61, size: 32)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !668, file: !669, line: 72, baseType: !109, size: 128, offset: 128)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !642, file: !227, line: 1009, baseType: !53, size: 64, offset: 512)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !642, file: !227, line: 1010, baseType: !18, size: 32, offset: 576)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !642, file: !227, line: 1011, baseType: !683, size: 256, offset: 640)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !227, line: 948, size: 256, elements: !684)
!684 = !{!685, !706, !742, !743, !744, !745}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !683, file: !227, line: 949, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !687, line: 34, baseType: !688)
!687 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !687, line: 25, size: 64, elements: !689)
!689 = !{!690}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !688, file: !687, line: 26, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !692, line: 27, baseType: !693)
!692 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !692, line: 13, size: 64, elements: !694)
!694 = !{!695, !705}
!695 = !DIDerivedType(tag: DW_TAG_member, scope: !693, file: !692, line: 14, baseType: !696, size: 32)
!696 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !693, file: !692, line: 14, size: 32, elements: !697)
!697 = !{!698, !699}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !696, file: !692, line: 15, baseType: !61, size: 32)
!699 = !DIDerivedType(tag: DW_TAG_member, scope: !696, file: !692, line: 16, baseType: !700, size: 32)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !696, file: !692, line: 16, size: 32, elements: !701)
!701 = !{!702, !703}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !700, file: !692, line: 18, baseType: !95, size: 8)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !700, file: !692, line: 19, baseType: !704, size: 24, offset: 8)
!704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 24, elements: !568)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !693, file: !692, line: 26, baseType: !83, size: 32, offset: 32)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !683, file: !227, line: 950, baseType: !707, size: 64, offset: 64)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !17, line: 59, size: 768, elements: !709)
!709 = !{!710, !716, !717, !718, !731, !732, !733, !734}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !708, file: !17, line: 61, baseType: !711, size: 32)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !712, line: 113, baseType: !713)
!712 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !712, line: 111, size: 32, elements: !714)
!714 = !{!715}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !713, file: !712, line: 112, baseType: !61, size: 32)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !708, file: !17, line: 62, baseType: !18, size: 32, offset: 32)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !708, file: !17, line: 63, baseType: !71, size: 32, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !708, file: !17, line: 65, baseType: !719, size: 256, offset: 128)
!719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !720, size: 256, elements: !729)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !37, line: 194, size: 64, elements: !721)
!721 = !{!722}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !720, file: !37, line: 195, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !37, line: 198, size: 128, elements: !725)
!725 = !{!726, !727}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !724, file: !37, line: 199, baseType: !723, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !724, file: !37, line: 199, baseType: !728, size: 64, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!729 = !{!730}
!730 = !DISubrange(count: 4)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !708, file: !17, line: 66, baseType: !720, size: 64, offset: 384)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !708, file: !17, line: 68, baseType: !66, size: 192, offset: 448)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !708, file: !17, line: 69, baseType: !287, size: 128, align: 64, offset: 640)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !708, file: !17, line: 70, baseType: !735, offset: 768)
!735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !736, elements: !298)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !17, line: 54, size: 128, elements: !737)
!737 = !{!738, !739}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !736, file: !17, line: 55, baseType: !13, size: 32)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !736, file: !17, line: 56, baseType: !740, size: 64, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !17, line: 56, flags: DIFlagFwdDecl)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !683, file: !227, line: 951, baseType: !16, size: 32, offset: 128)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !683, file: !227, line: 952, baseType: !333, size: 32, offset: 160)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !683, file: !227, line: 952, baseType: !333, size: 32, offset: 192)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !683, file: !227, line: 953, baseType: !13, size: 32, offset: 224)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !642, file: !227, line: 1012, baseType: !747, size: 64, offset: 896)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !749)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !750, line: 110, size: 1472, elements: !751)
!750 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!751 = !{!752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !768, !769, !770, !771, !772, !773, !903, !904, !905, !906, !907, !938, !1091, !1092, !1100}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !749, file: !750, line: 111, baseType: !659, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !749, file: !750, line: 112, baseType: !333, size: 32, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !749, file: !750, line: 113, baseType: !342, size: 32, offset: 96)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !749, file: !750, line: 114, baseType: !333, size: 32, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !749, file: !750, line: 115, baseType: !342, size: 32, offset: 160)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !749, file: !750, line: 116, baseType: !333, size: 32, offset: 192)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !749, file: !750, line: 117, baseType: !342, size: 32, offset: 224)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !749, file: !750, line: 118, baseType: !333, size: 32, offset: 256)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !749, file: !750, line: 119, baseType: !342, size: 32, offset: 288)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !749, file: !750, line: 120, baseType: !18, size: 32, offset: 320)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !749, file: !750, line: 121, baseType: !763, size: 64, offset: 384)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !764, line: 24, baseType: !765)
!764 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !764, line: 24, size: 64, elements: !766)
!766 = !{!767}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !765, file: !764, line: 24, baseType: !400, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !749, file: !750, line: 122, baseType: !763, size: 64, offset: 448)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !749, file: !750, line: 123, baseType: !763, size: 64, offset: 512)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !749, file: !750, line: 124, baseType: !763, size: 64, offset: 576)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !749, file: !750, line: 125, baseType: !763, size: 64, offset: 640)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !749, file: !750, line: 127, baseType: !99, size: 8, offset: 704)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !749, file: !750, line: 129, baseType: !774, size: 64, offset: 768)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !776, line: 195, size: 1728, elements: !777)
!776 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!777 = !{!778, !779, !784, !796, !805, !808, !809, !816, !817, !818, !819, !822, !823, !824, !826, !827, !867, !888}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !775, file: !776, line: 196, baseType: !711, size: 32)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !775, file: !776, line: 197, baseType: !780, size: 32, offset: 32)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !776, line: 28, baseType: !781)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !37, line: 104, baseType: !782)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !96, line: 20, baseType: !783)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !98, line: 26, baseType: !13)
!784 = !DIDerivedType(tag: DW_TAG_member, scope: !775, file: !776, line: 198, baseType: !785, size: 192, offset: 64)
!785 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !775, file: !776, line: 198, size: 192, elements: !786)
!786 = !{!787, !788}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !785, file: !776, line: 199, baseType: !109, size: 128)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !785, file: !776, line: 200, baseType: !789, size: 192, align: 64)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !790, line: 5, size: 192, align: 64, elements: !791)
!790 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!791 = !{!792, !793, !795}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !789, file: !790, line: 6, baseType: !51, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !789, file: !790, line: 7, baseType: !794, size: 64, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !789, file: !790, line: 8, baseType: !794, size: 64, offset: 128)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !775, file: !776, line: 205, baseType: !797, size: 320, offset: 256)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !798, line: 48, size: 320, elements: !799)
!798 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!799 = !{!800, !801, !802, !803, !804}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !797, file: !798, line: 49, baseType: !659, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !797, file: !798, line: 55, baseType: !659, size: 64, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !797, file: !798, line: 57, baseType: !675, size: 32, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !797, file: !798, line: 59, baseType: !673, size: 32, offset: 160)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !797, file: !798, line: 60, baseType: !109, size: 128, offset: 192)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !775, file: !776, line: 206, baseType: !806, size: 64, offset: 576)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !776, line: 206, flags: DIFlagFwdDecl)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !775, file: !776, line: 207, baseType: !33, size: 64, offset: 640)
!809 = !DIDerivedType(tag: DW_TAG_member, scope: !775, file: !776, line: 208, baseType: !810, size: 64, offset: 704)
!810 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !775, file: !776, line: 208, size: 64, elements: !811)
!811 = !{!812, !815}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !810, file: !776, line: 209, baseType: !813, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !814, line: 8, baseType: !666)
!814 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!815 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !810, file: !776, line: 210, baseType: !813, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !775, file: !776, line: 212, baseType: !813, size: 64, offset: 768)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !775, file: !776, line: 213, baseType: !333, size: 32, offset: 832)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !775, file: !776, line: 214, baseType: !342, size: 32, offset: 864)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !775, file: !776, line: 215, baseType: !820, size: 32, offset: 896)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !776, line: 31, baseType: !821)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !37, line: 110, baseType: !396)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !775, file: !776, line: 216, baseType: !38, size: 16, offset: 928)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !775, file: !776, line: 217, baseType: !38, size: 16, offset: 944)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !775, file: !776, line: 221, baseType: !825, size: 16, offset: 960)
!825 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !775, file: !776, line: 228, baseType: !51, size: 64, offset: 1024)
!827 = !DIDerivedType(tag: DW_TAG_member, scope: !775, file: !776, line: 245, baseType: !828, size: 320, offset: 1088)
!828 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !775, file: !776, line: 245, size: 320, elements: !829)
!829 = !{!830, !859}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !828, file: !776, line: 246, baseType: !831, size: 320)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !776, line: 114, size: 320, elements: !832)
!832 = !{!833, !834, !846, !849, !858}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !831, file: !776, line: 116, baseType: !51, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, scope: !831, file: !776, line: 117, baseType: !835, size: 64, offset: 64)
!835 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !831, file: !776, line: 117, size: 64, elements: !836)
!836 = !{!837, !845}
!837 = !DIDerivedType(tag: DW_TAG_member, scope: !835, file: !776, line: 118, baseType: !838, size: 64)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !835, file: !776, line: 118, size: 64, elements: !839)
!839 = !{!840, !841}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !838, file: !776, line: 120, baseType: !105, size: 16)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !838, file: !776, line: 121, baseType: !842, size: 48, offset: 16)
!842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !843)
!843 = !{!844}
!844 = !DISubrange(count: 6)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !835, file: !776, line: 127, baseType: !51, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !831, file: !776, line: 129, baseType: !847, size: 64, offset: 128)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !776, line: 102, flags: DIFlagFwdDecl)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !831, file: !776, line: 130, baseType: !850, size: 64, offset: 192)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !776, line: 108, size: 192, elements: !852)
!852 = !{!853, !854, !855}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !851, file: !776, line: 109, baseType: !287, size: 128, align: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !851, file: !776, line: 110, baseType: !711, size: 32, offset: 128)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !851, file: !776, line: 111, baseType: !856, size: 8, offset: 160)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !37, line: 35, baseType: !857)
!857 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !831, file: !776, line: 131, baseType: !30, size: 64, offset: 256)
!859 = !DIDerivedType(tag: DW_TAG_member, scope: !828, file: !776, line: 247, baseType: !860, size: 320)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !828, file: !776, line: 247, size: 320, elements: !861)
!861 = !{!862, !863, !864, !865, !866}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !860, file: !776, line: 248, baseType: !51, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !860, file: !776, line: 249, baseType: !51, size: 64, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !860, file: !776, line: 250, baseType: !847, size: 64, offset: 128)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !860, file: !776, line: 251, baseType: !850, size: 64, offset: 192)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !860, file: !776, line: 252, baseType: !468, size: 64, offset: 256)
!867 = !DIDerivedType(tag: DW_TAG_member, scope: !775, file: !776, line: 260, baseType: !868, size: 256, offset: 1408)
!868 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !775, file: !776, line: 260, size: 256, elements: !869)
!869 = !{!870, !876}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !868, file: !776, line: 261, baseType: !871, size: 256)
!871 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !776, line: 134, size: 256, elements: !872)
!872 = !{!873, !874}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !871, file: !776, line: 135, baseType: !33, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !871, file: !776, line: 136, baseType: !875, size: 256)
!875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 256, elements: !729)
!876 = !DIDerivedType(tag: DW_TAG_member, scope: !868, file: !776, line: 262, baseType: !877, size: 256)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !868, file: !776, line: 262, size: 256, elements: !878)
!878 = !{!879, !880}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !877, file: !776, line: 264, baseType: !109, size: 128)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !877, file: !776, line: 265, baseType: !881, size: 128, offset: 128)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !882, line: 22, size: 128, elements: !883)
!882 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!883 = !{!884, !887}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !881, file: !882, line: 23, baseType: !885, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !882, line: 23, flags: DIFlagFwdDecl)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !881, file: !882, line: 24, baseType: !51, size: 64, offset: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !775, file: !776, line: 280, baseType: !889, size: 64, offset: 1664)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !776, line: 176, size: 192, elements: !891)
!891 = !{!892, !901, !902}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !890, file: !776, line: 177, baseType: !893, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !776, line: 171, baseType: !894)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DISubroutineType(types: !896)
!896 = !{!13, !774, !897, !899, !774}
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !848)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !871)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !890, file: !776, line: 178, baseType: !774, size: 64, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !890, file: !776, line: 179, baseType: !847, size: 64, offset: 128)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !749, file: !750, line: 130, baseType: !774, size: 64, offset: 832)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !749, file: !750, line: 131, baseType: !774, size: 64, offset: 896)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !749, file: !750, line: 132, baseType: !774, size: 64, offset: 960)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !749, file: !750, line: 135, baseType: !33, size: 64, offset: 1024)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !749, file: !750, line: 137, baseType: !908, size: 64, offset: 1088)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !910, line: 14, size: 1088, elements: !911)
!910 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!911 = !{!912, !913, !922, !923, !924, !925, !926, !927}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !909, file: !910, line: 15, baseType: !711, size: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !909, file: !910, line: 17, baseType: !914, size: 320, offset: 64)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !915, line: 22, size: 320, elements: !916)
!915 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!916 = !{!917, !918, !919, !920}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !914, file: !915, line: 23, baseType: !673, size: 32)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !914, file: !915, line: 24, baseType: !665, size: 64, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !914, file: !915, line: 26, baseType: !109, size: 128, offset: 128)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !914, file: !915, line: 28, baseType: !921, size: 64, offset: 256)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !909, file: !910, line: 19, baseType: !51, size: 64, offset: 384)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !909, file: !910, line: 20, baseType: !659, size: 64, offset: 448)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !909, file: !910, line: 23, baseType: !724, size: 128, offset: 512)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !909, file: !910, line: 24, baseType: !333, size: 32, offset: 640)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !909, file: !910, line: 29, baseType: !659, size: 64, offset: 704)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !909, file: !910, line: 36, baseType: !928, size: 320, offset: 768)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !929, line: 15, size: 320, elements: !930)
!929 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!930 = !{!931, !932, !933, !934, !935, !936, !937}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !928, file: !929, line: 16, baseType: !673, size: 32)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !928, file: !929, line: 18, baseType: !13, size: 32, offset: 32)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !928, file: !929, line: 19, baseType: !13, size: 32, offset: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !928, file: !929, line: 20, baseType: !13, size: 32, offset: 96)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !928, file: !929, line: 21, baseType: !13, size: 32, offset: 128)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !928, file: !929, line: 22, baseType: !51, size: 64, offset: 192)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !928, file: !929, line: 23, baseType: !51, size: 64, offset: 256)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !749, file: !750, line: 138, baseType: !939, size: 64, offset: 1152)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !941, line: 68, size: 4800, elements: !942)
!941 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!942 = !{!943, !965, !966, !967, !968, !969, !970, !971, !982, !983, !984, !985, !986, !987, !999, !1072, !1073, !1087, !1089}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !940, file: !941, line: 69, baseType: !944, size: 576)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !941, line: 23, size: 576, elements: !945)
!945 = !{!946, !947}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !944, file: !941, line: 24, baseType: !396, size: 32)
!947 = !DIDerivedType(tag: DW_TAG_member, scope: !944, file: !941, line: 25, baseType: !948, size: 512, offset: 64)
!948 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !944, file: !941, line: 25, size: 512, elements: !949)
!949 = !{!950, !959}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !948, file: !941, line: 26, baseType: !951, size: 480)
!951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !952, size: 480, elements: !957)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !941, line: 17, size: 96, elements: !953)
!953 = !{!954, !955, !956}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !952, file: !941, line: 18, baseType: !396, size: 32)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !952, file: !941, line: 19, baseType: !396, size: 32, offset: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !952, file: !941, line: 20, baseType: !396, size: 32, offset: 64)
!957 = !{!958}
!958 = !DISubrange(count: 5)
!959 = !DIDerivedType(tag: DW_TAG_member, scope: !948, file: !941, line: 27, baseType: !960, size: 128)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !948, file: !941, line: 27, size: 128, elements: !961)
!961 = !{!962, !964}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !960, file: !941, line: 28, baseType: !963, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !960, file: !941, line: 29, baseType: !963, size: 64, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !940, file: !941, line: 70, baseType: !944, size: 576, offset: 576)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !940, file: !941, line: 71, baseType: !944, size: 576, offset: 1152)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !940, file: !941, line: 72, baseType: !939, size: 64, offset: 1728)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !940, file: !941, line: 73, baseType: !13, size: 32, offset: 1792)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !940, file: !941, line: 74, baseType: !333, size: 32, offset: 1824)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !940, file: !941, line: 75, baseType: !342, size: 32, offset: 1856)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !940, file: !941, line: 76, baseType: !972, size: 192, offset: 1920)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !973, line: 9, size: 192, elements: !974)
!973 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!974 = !{!975, !976, !980, !981}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !972, file: !973, line: 10, baseType: !659, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !972, file: !973, line: 11, baseType: !977, size: 64, offset: 64)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !979)
!979 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !973, line: 7, flags: DIFlagFwdDecl)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !972, file: !973, line: 12, baseType: !18, size: 32, offset: 128)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !972, file: !973, line: 13, baseType: !711, size: 32, offset: 160)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !940, file: !941, line: 77, baseType: !51, size: 64, offset: 2112)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !940, file: !941, line: 80, baseType: !856, size: 8, offset: 2176)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !940, file: !941, line: 88, baseType: !109, size: 128, offset: 2240)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !940, file: !941, line: 89, baseType: !774, size: 64, offset: 2368)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !940, file: !941, line: 90, baseType: !797, size: 320, offset: 2432)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !940, file: !941, line: 97, baseType: !988, size: 256, offset: 2752)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !989, line: 98, size: 256, elements: !990)
!989 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!990 = !{!991, !992, !993}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !988, file: !989, line: 99, baseType: !659, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !988, file: !989, line: 100, baseType: !109, size: 128, offset: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !988, file: !989, line: 101, baseType: !994, size: 64, offset: 192)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !989, line: 21, baseType: !995)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DISubroutineType(types: !997)
!997 = !{null, !998}
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !940, file: !941, line: 99, baseType: !1000, size: 768, offset: 3008)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !26, line: 199, size: 768, elements: !1001)
!1001 = !{!1002, !1007}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1000, file: !26, line: 200, baseType: !1003, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!13, !1006}
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1000, file: !26, line: 201, baseType: !1008, size: 704, offset: 64)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !26, line: 193, size: 704, elements: !1009)
!1009 = !{!1010, !1068}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1008, file: !26, line: 195, baseType: !1011, size: 640)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !26, line: 173, size: 640, elements: !1012)
!1012 = !{!1013, !1025, !1037, !1038, !1058, !1059, !1061, !1067}
!1013 = !DIDerivedType(tag: DW_TAG_member, scope: !1011, file: !26, line: 174, baseType: !1014, size: 192)
!1014 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1011, file: !26, line: 174, size: 192, elements: !1015)
!1015 = !{!1016, !1024}
!1016 = !DIDerivedType(tag: DW_TAG_member, scope: !1014, file: !26, line: 175, baseType: !1017, size: 192)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1014, file: !26, line: 175, size: 192, elements: !1018)
!1018 = !{!1019, !1020, !1021, !1022, !1023}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1017, file: !26, line: 176, baseType: !45, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1017, file: !26, line: 177, baseType: !13, size: 32, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1017, file: !26, line: 178, baseType: !13, size: 32, offset: 96)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1017, file: !26, line: 179, baseType: !13, size: 32, offset: 128)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1017, file: !26, line: 180, baseType: !13, size: 32, offset: 160)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1014, file: !26, line: 182, baseType: !287, size: 128, align: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1011, file: !26, line: 184, baseType: !1026, size: 64, offset: 192)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1028, line: 26, size: 256, elements: !1029)
!1028 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1029 = !{!1030, !1031}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1027, file: !1028, line: 27, baseType: !18, size: 32)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1027, file: !1028, line: 28, baseType: !1032, size: 192, offset: 64)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1033, line: 43, size: 192, elements: !1034)
!1033 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1034 = !{!1035, !1036}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1032, file: !1033, line: 44, baseType: !673, size: 32)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1032, file: !1033, line: 45, baseType: !109, size: 128, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1011, file: !26, line: 185, baseType: !45, size: 64, offset: 256)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1011, file: !26, line: 186, baseType: !1039, size: 64, offset: 320)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !26, line: 204, size: 960, elements: !1041)
!1041 = !{!1042, !1043, !1047, !1054}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1040, file: !26, line: 205, baseType: !1000, size: 768)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1040, file: !26, line: 206, baseType: !1044, size: 64, offset: 768)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!1006, !1039}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1040, file: !26, line: 207, baseType: !1048, size: 64, offset: 832)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{null, !1051, !1052, !1053}
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1040, file: !26, line: 209, baseType: !1055, size: 64, offset: 896)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!13, !1051, !45}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1011, file: !26, line: 187, baseType: !1006, size: 64, offset: 384)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1011, file: !26, line: 188, baseType: !1060, size: 64, offset: 448)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1011, file: !26, line: 189, baseType: !1062, size: 64, offset: 512)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !26, line: 157, size: 256, elements: !1064)
!1064 = !{!1065, !1066}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1063, file: !26, line: 158, baseType: !789, size: 192, align: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1063, file: !26, line: 159, baseType: !1051, size: 64, offset: 192)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1011, file: !26, line: 190, baseType: !720, size: 64, offset: 576)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1008, file: !26, line: 196, baseType: !1069, size: 64, offset: 640)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !790, line: 12, size: 64, elements: !1070)
!1070 = !{!1071}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1069, file: !790, line: 13, baseType: !794, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !940, file: !941, line: 100, baseType: !1051, size: 64, offset: 3776)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !940, file: !941, line: 102, baseType: !1074, size: 64, offset: 3840)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !941, line: 107, size: 1152, elements: !1076)
!1076 = !{!1077, !1078, !1079, !1080, !1081, !1085}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1075, file: !941, line: 108, baseType: !724, size: 128)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1075, file: !941, line: 109, baseType: !939, size: 64, offset: 128)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1075, file: !941, line: 110, baseType: !333, size: 32, offset: 192)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1075, file: !941, line: 111, baseType: !61, size: 32, offset: 224)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1075, file: !941, line: 112, baseType: !1082, size: 640, offset: 256)
!1082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !659, size: 640, elements: !1083)
!1083 = !{!1084}
!1084 = !DISubrange(count: 10)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1075, file: !941, line: 113, baseType: !1086, size: 256, offset: 896)
!1086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !659, size: 256, elements: !729)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !940, file: !941, line: 103, baseType: !1088, size: 640, offset: 3904)
!1088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !602, size: 640, elements: !1083)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !940, file: !941, line: 104, baseType: !1090, size: 256, offset: 4544)
!1090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !602, size: 256, elements: !729)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !749, file: !750, line: 139, baseType: !1074, size: 64, offset: 1216)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !749, file: !750, line: 140, baseType: !1093, size: 64, offset: 1280)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !750, line: 25, size: 64, elements: !1095)
!1095 = !{!1096, !1097, !1098}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1094, file: !750, line: 26, baseType: !61, size: 32)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1094, file: !750, line: 27, baseType: !13, size: 32, offset: 32)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1094, file: !750, line: 28, baseType: !1099, offset: 64)
!1099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, elements: !298)
!1100 = !DIDerivedType(tag: DW_TAG_member, scope: !749, file: !750, line: 142, baseType: !1101, size: 128, offset: 1344)
!1101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !749, file: !750, line: 142, size: 128, elements: !1102)
!1102 = !{!1103, !1104}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1101, file: !750, line: 143, baseType: !13, size: 32)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1101, file: !750, line: 144, baseType: !287, size: 128, align: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !642, file: !227, line: 1013, baseType: !1106, size: 256, offset: 960)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !227, line: 970, size: 256, elements: !1107)
!1107 = !{!1108, !1109, !1110, !1111, !1112, !1113}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1106, file: !227, line: 971, baseType: !51, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1106, file: !227, line: 972, baseType: !18, size: 32, offset: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1106, file: !227, line: 973, baseType: !18, size: 32, offset: 96)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1106, file: !227, line: 974, baseType: !18, size: 32, offset: 128)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1106, file: !227, line: 975, baseType: !18, size: 32, offset: 160)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1106, file: !227, line: 976, baseType: !53, size: 64, offset: 192)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !642, file: !227, line: 1014, baseType: !1115, size: 128, offset: 1216)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1116, line: 8, size: 128, elements: !1117)
!1116 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1117 = !{!1118, !1119}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1115, file: !1116, line: 9, baseType: !473, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1115, file: !1116, line: 10, baseType: !362, size: 64, offset: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !642, file: !227, line: 1015, baseType: !327, size: 64, offset: 1344)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !642, file: !227, line: 1016, baseType: !1122, size: 64, offset: 1408)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1124)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !227, line: 1914, size: 2112, elements: !1125)
!1125 = !{!1126, !1127, !1131, !1135, !1139, !1250, !1251, !1257, !1270, !1278, !1282, !1283, !1614, !1615, !1619, !1624, !1625, !1629, !1633, !1639, !1640, !1644, !1645, !1651, !1655, !1659, !1665, !1669, !1711, !1715, !1719, !1720, !1726}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1124, file: !227, line: 1915, baseType: !514, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1124, file: !227, line: 1916, baseType: !1128, size: 64, offset: 64)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!53, !641, !53, !13}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1124, file: !227, line: 1917, baseType: !1132, size: 64, offset: 128)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!599, !641, !468, !47, !52}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1124, file: !227, line: 1918, baseType: !1136, size: 64, offset: 192)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!599, !641, !30, !47, !52}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1124, file: !227, line: 1919, baseType: !1140, size: 64, offset: 256)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!599, !1143, !1248}
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !227, line: 373, size: 384, elements: !1145)
!1145 = !{!1146, !1147, !1148, !1152, !1153, !1154, !1155}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1144, file: !227, line: 374, baseType: !641, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1144, file: !227, line: 375, baseType: !53, size: 64, offset: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1144, file: !227, line: 376, baseType: !1149, size: 64, offset: 128)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{null, !1143, !602}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1144, file: !227, line: 377, baseType: !33, size: 64, offset: 192)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1144, file: !227, line: 378, baseType: !13, size: 32, offset: 256)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1144, file: !227, line: 379, baseType: !105, size: 16, offset: 288)
!1155 = !DIDerivedType(tag: DW_TAG_member, scope: !1144, file: !227, line: 380, baseType: !1156, size: 64, offset: 320)
!1156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1144, file: !227, line: 380, size: 64, elements: !1157)
!1157 = !{!1158, !1244}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1156, file: !227, line: 386, baseType: !1159, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1161, line: 998, size: 448, elements: !1162)
!1161 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1162 = !{!1163, !1230, !1231}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !1160, file: !1161, line: 999, baseType: !1164, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !135, line: 293, size: 1536, elements: !1166)
!1166 = !{!1167, !1197, !1211}
!1167 = !DIDerivedType(tag: DW_TAG_member, scope: !1165, file: !135, line: 295, baseType: !1168, size: 512)
!1168 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1165, file: !135, line: 295, size: 512, elements: !1169)
!1169 = !{!1170, !1196}
!1170 = !DIDerivedType(tag: DW_TAG_member, scope: !1168, file: !135, line: 296, baseType: !1171, size: 448)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1168, file: !135, line: 296, size: 448, elements: !1172)
!1172 = !{!1173, !1174, !1183, !1184, !1185, !1194, !1195}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1171, file: !135, line: 298, baseType: !51, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, scope: !1171, file: !135, line: 299, baseType: !1175, size: 128, offset: 64)
!1175 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1171, file: !135, line: 299, size: 128, elements: !1176)
!1176 = !{!1177, !1178}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1175, file: !135, line: 300, baseType: !109, size: 128)
!1178 = !DIDerivedType(tag: DW_TAG_member, scope: !1175, file: !135, line: 302, baseType: !1179, size: 128)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1175, file: !135, line: 302, size: 128, elements: !1180)
!1180 = !{!1181, !1182}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1179, file: !135, line: 303, baseType: !33, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1179, file: !135, line: 305, baseType: !18, size: 32, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1171, file: !135, line: 310, baseType: !323, size: 64, offset: 192)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1171, file: !135, line: 311, baseType: !51, size: 64, offset: 256)
!1185 = !DIDerivedType(tag: DW_TAG_member, scope: !1171, file: !135, line: 312, baseType: !1186, size: 64, offset: 320)
!1186 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1171, file: !135, line: 312, size: 64, elements: !1187)
!1187 = !{!1188, !1189}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1186, file: !135, line: 313, baseType: !33, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1186, file: !135, line: 314, baseType: !1190, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !135, line: 257, baseType: !1191)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 255, size: 64, elements: !1192)
!1192 = !{!1193}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1191, file: !135, line: 256, baseType: !51, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1171, file: !135, line: 316, baseType: !61, size: 32, offset: 384)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1171, file: !135, line: 317, baseType: !61, size: 32, offset: 416)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1168, file: !135, line: 323, baseType: !302, size: 512, align: 128)
!1197 = !DIDerivedType(tag: DW_TAG_member, scope: !1165, file: !135, line: 325, baseType: !1198, size: 512, offset: 512)
!1198 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1165, file: !135, line: 325, size: 512, elements: !1199)
!1199 = !{!1200, !1210}
!1200 = !DIDerivedType(tag: DW_TAG_member, scope: !1198, file: !135, line: 326, baseType: !1201, size: 320)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1198, file: !135, line: 326, size: 320, elements: !1202)
!1202 = !{!1203, !1204, !1205, !1206, !1207, !1208, !1209}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1201, file: !135, line: 327, baseType: !51, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1201, file: !135, line: 328, baseType: !51, size: 64, offset: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1201, file: !135, line: 329, baseType: !51, size: 64, offset: 128)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1201, file: !135, line: 331, baseType: !61, size: 32, offset: 192)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1201, file: !135, line: 332, baseType: !61, size: 32, offset: 224)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1201, file: !135, line: 333, baseType: !61, size: 32, offset: 256)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1201, file: !135, line: 335, baseType: !18, size: 32, offset: 288)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1198, file: !135, line: 339, baseType: !302, size: 512, align: 128)
!1211 = !DIDerivedType(tag: DW_TAG_member, scope: !1165, file: !135, line: 341, baseType: !1212, size: 512, offset: 1024)
!1212 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1165, file: !135, line: 341, size: 512, elements: !1213)
!1213 = !{!1214, !1223, !1229}
!1214 = !DIDerivedType(tag: DW_TAG_member, scope: !1212, file: !135, line: 342, baseType: !1215, size: 384)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1212, file: !135, line: 342, size: 384, elements: !1216)
!1216 = !{!1217, !1218, !1219, !1220, !1221, !1222}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1215, file: !135, line: 343, baseType: !51, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1215, file: !135, line: 344, baseType: !51, size: 64, offset: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1215, file: !135, line: 346, baseType: !33, size: 64, offset: 128)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1215, file: !135, line: 347, baseType: !33, size: 64, offset: 192)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1215, file: !135, line: 348, baseType: !33, size: 64, offset: 256)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1215, file: !135, line: 349, baseType: !33, size: 64, offset: 320)
!1223 = !DIDerivedType(tag: DW_TAG_member, scope: !1212, file: !135, line: 352, baseType: !1224, size: 256)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1212, file: !135, line: 352, size: 256, elements: !1225)
!1225 = !{!1226, !1227, !1228}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1224, file: !135, line: 353, baseType: !51, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1224, file: !135, line: 354, baseType: !51, size: 64, offset: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1224, file: !135, line: 356, baseType: !109, size: 128, offset: 128)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1212, file: !135, line: 359, baseType: !302, size: 512, align: 128)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1160, file: !1161, line: 1000, baseType: !13, size: 32, offset: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1160, file: !1161, line: 1001, baseType: !1232, size: 320, offset: 128)
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !67, line: 14, baseType: !1233)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !67, line: 30, size: 320, elements: !1234)
!1234 = !{!1235, !1236, !1237, !1243}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1233, file: !67, line: 31, baseType: !18, size: 32)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1233, file: !67, line: 32, baseType: !33, size: 64, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1233, file: !67, line: 33, baseType: !1238, size: 64, offset: 128)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !67, line: 16, baseType: !1239)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!13, !1242, !18, !13, !33}
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1233, file: !67, line: 34, baseType: !109, size: 128, offset: 192)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1156, file: !227, line: 395, baseType: !1245, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!599, !33}
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !227, line: 69, flags: DIFlagFwdDecl)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1124, file: !227, line: 1920, baseType: !1140, size: 64, offset: 320)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1124, file: !227, line: 1921, baseType: !1252, size: 64, offset: 384)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!13, !1143, !1255, !18}
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !227, line: 53, flags: DIFlagFwdDecl)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1124, file: !227, line: 1923, baseType: !1258, size: 64, offset: 448)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!13, !641, !1261}
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !227, line: 1858, size: 128, elements: !1263)
!1263 = !{!1264, !1269}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1262, file: !227, line: 1859, baseType: !1265, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !227, line: 1855, baseType: !1266)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!856, !1261, !30, !13, !53, !400, !18}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1262, file: !227, line: 1860, baseType: !53, size: 64, offset: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1124, file: !227, line: 1924, baseType: !1271, size: 64, offset: 512)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!1274, !641, !1276}
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1275, line: 59, baseType: !18)
!1275 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !227, line: 61, flags: DIFlagFwdDecl)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1124, file: !227, line: 1925, baseType: !1279, size: 64, offset: 576)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!602, !641, !18, !51}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1124, file: !227, line: 1926, baseType: !1279, size: 64, offset: 640)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1124, file: !227, line: 1927, baseType: !1284, size: 64, offset: 704)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!13, !641, !1287}
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !135, line: 625, size: 1344, elements: !1289)
!1289 = !{!1290, !1299, !1457, !1463, !1470, !1471, !1476, !1477, !1482, !1483, !1499, !1607, !1608, !1609, !1610, !1611, !1612}
!1290 = !DIDerivedType(tag: DW_TAG_member, scope: !1288, file: !135, line: 628, baseType: !1291, size: 128)
!1291 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1288, file: !135, line: 628, size: 128, elements: !1292)
!1292 = !{!1293, !1298}
!1293 = !DIDerivedType(tag: DW_TAG_member, scope: !1291, file: !135, line: 629, baseType: !1294, size: 128)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1291, file: !135, line: 629, size: 128, elements: !1295)
!1295 = !{!1296, !1297}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1294, file: !135, line: 631, baseType: !51, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1294, file: !135, line: 632, baseType: !51, size: 64, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1291, file: !135, line: 635, baseType: !287, size: 128, align: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1288, file: !135, line: 639, baseType: !1300, size: 64, offset: 128)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !135, line: 733, size: 10240, elements: !1302)
!1302 = !{!1303, !1455}
!1303 = !DIDerivedType(tag: DW_TAG_member, scope: !1301, file: !135, line: 734, baseType: !1304, size: 10240)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1301, file: !135, line: 734, size: 10240, elements: !1305)
!1305 = !{!1306, !1310, !1324, !1328, !1329, !1330, !1331, !1332, !1333, !1342, !1343, !1344, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1383, !1385, !1388, !1435, !1436, !1437, !1440, !1441, !1442, !1445, !1446, !1447, !1453, !1454}
!1306 = !DIDerivedType(tag: DW_TAG_member, scope: !1304, file: !135, line: 739, baseType: !1307, size: 512, align: 512)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1304, file: !135, line: 739, size: 512, align: 512, elements: !1308)
!1308 = !{!1309}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1307, file: !135, line: 747, baseType: !61, size: 32)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1304, file: !135, line: 750, baseType: !1311, size: 128, offset: 512)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1312, line: 218, size: 128, elements: !1313)
!1312 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1313 = !{!1314, !1322, !1323}
!1314 = !DIDerivedType(tag: DW_TAG_member, scope: !1311, file: !1312, line: 219, baseType: !1315, size: 32)
!1315 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1311, file: !1312, line: 219, size: 32, elements: !1316)
!1316 = !{!1317, !1318}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1315, file: !1312, line: 220, baseType: !71, size: 32)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1315, file: !1312, line: 221, baseType: !1319)
!1319 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1312, line: 197, baseType: !1320)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1312, line: 197, elements: !1321)
!1321 = !{}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1311, file: !1312, line: 223, baseType: !18, size: 32, offset: 32)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1311, file: !1312, line: 224, baseType: !33, size: 64, offset: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1304, file: !135, line: 752, baseType: !1325, size: 64, offset: 640)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!51, !641, !51, !51, !51, !51}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1304, file: !135, line: 756, baseType: !51, size: 64, offset: 704)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1304, file: !135, line: 757, baseType: !51, size: 64, offset: 768)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1304, file: !135, line: 760, baseType: !51, size: 64, offset: 832)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1304, file: !135, line: 761, baseType: !51, size: 64, offset: 896)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1304, file: !135, line: 763, baseType: !51, size: 64, offset: 960)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1304, file: !135, line: 764, baseType: !1334, size: 64, offset: 1024)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1336, line: 299, baseType: !1337)
!1336 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1336, line: 299, size: 64, elements: !1338)
!1338 = !{!1339}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1337, file: !1336, line: 299, baseType: !1340, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1341, line: 18, baseType: !51)
!1341 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1304, file: !135, line: 773, baseType: !61, size: 32, offset: 1088)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1304, file: !135, line: 785, baseType: !61, size: 32, offset: 1120)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1304, file: !135, line: 795, baseType: !1345, size: 64, offset: 1152)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !135, line: 726, size: 128, elements: !1347)
!1347 = !{!1348, !1349}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1346, file: !135, line: 727, baseType: !400, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1346, file: !135, line: 728, baseType: !13, size: 32, offset: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1304, file: !135, line: 801, baseType: !51, size: 64, offset: 1216)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1304, file: !135, line: 804, baseType: !659, size: 64, offset: 1280)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1304, file: !135, line: 806, baseType: !13, size: 32, offset: 1344)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1304, file: !135, line: 808, baseType: !71, size: 32, offset: 1376)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1304, file: !135, line: 823, baseType: !797, size: 320, offset: 1408)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1304, file: !135, line: 825, baseType: !109, size: 128, offset: 1728)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1304, file: !135, line: 845, baseType: !13, size: 32, offset: 1856)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1304, file: !135, line: 849, baseType: !51, size: 64, offset: 1920)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1304, file: !135, line: 850, baseType: !51, size: 64, offset: 1984)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1304, file: !135, line: 852, baseType: !51, size: 64, offset: 2048)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1304, file: !135, line: 853, baseType: !51, size: 64, offset: 2112)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1304, file: !135, line: 854, baseType: !661, size: 64, offset: 2176)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1304, file: !135, line: 855, baseType: !51, size: 64, offset: 2240)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1304, file: !135, line: 856, baseType: !51, size: 64, offset: 2304)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1304, file: !135, line: 857, baseType: !51, size: 64, offset: 2368)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1304, file: !135, line: 858, baseType: !51, size: 64, offset: 2432)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1304, file: !135, line: 865, baseType: !373, size: 32, offset: 2496)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1304, file: !135, line: 867, baseType: !71, size: 32, offset: 2528)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1304, file: !135, line: 869, baseType: !51, size: 64, offset: 2560)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1304, file: !135, line: 869, baseType: !51, size: 64, offset: 2624)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1304, file: !135, line: 869, baseType: !51, size: 64, offset: 2688)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1304, file: !135, line: 869, baseType: !51, size: 64, offset: 2752)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1304, file: !135, line: 870, baseType: !51, size: 64, offset: 2816)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1304, file: !135, line: 870, baseType: !51, size: 64, offset: 2880)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1304, file: !135, line: 870, baseType: !51, size: 64, offset: 2944)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1304, file: !135, line: 871, baseType: !51, size: 64, offset: 3008)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1304, file: !135, line: 871, baseType: !51, size: 64, offset: 3072)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1304, file: !135, line: 871, baseType: !51, size: 64, offset: 3136)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1304, file: !135, line: 871, baseType: !51, size: 64, offset: 3200)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1304, file: !135, line: 873, baseType: !1380, size: 3328, offset: 3264)
!1380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 3328, elements: !1381)
!1381 = !{!1382}
!1382 = !DISubrange(count: 52)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1304, file: !135, line: 875, baseType: !1384, size: 1280, offset: 6592)
!1384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !914, size: 1280, elements: !729)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1304, file: !135, line: 877, baseType: !1386, size: 64, offset: 7872)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !135, line: 877, flags: DIFlagFwdDecl)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1304, file: !135, line: 880, baseType: !1389, size: 1088, offset: 7936)
!1389 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1390, line: 72, baseType: !1391)
!1390 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1390, line: 23, size: 1088, elements: !1392)
!1392 = !{!1393, !1394, !1395, !1396, !1397, !1400, !1401, !1402, !1403, !1430, !1431, !1432}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1391, file: !1390, line: 28, baseType: !400, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1391, file: !1390, line: 38, baseType: !661, size: 64, offset: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1391, file: !1390, line: 40, baseType: !51, size: 64, offset: 128)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1391, file: !1390, line: 43, baseType: !797, size: 320, offset: 192)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1391, file: !1390, line: 44, baseType: !1398, size: 64, offset: 512)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1390, line: 44, flags: DIFlagFwdDecl)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1391, file: !1390, line: 48, baseType: !51, size: 64, offset: 576)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1391, file: !1390, line: 59, baseType: !668, size: 256, offset: 640)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1391, file: !1390, line: 60, baseType: !33, size: 64, offset: 896)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1391, file: !1390, line: 61, baseType: !1404, size: 64, offset: 960)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1406)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1407, line: 13, size: 1216, elements: !1408)
!1407 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1408 = !{!1409, !1410, !1411, !1412, !1413, !1414, !1415, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1406, file: !1407, line: 14, baseType: !33, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1406, file: !1407, line: 15, baseType: !51, size: 64, offset: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1406, file: !1407, line: 17, baseType: !51, size: 64, offset: 128)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1406, file: !1407, line: 17, baseType: !51, size: 64, offset: 192)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1406, file: !1407, line: 18, baseType: !51, size: 64, offset: 256)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1406, file: !1407, line: 18, baseType: !51, size: 64, offset: 320)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1406, file: !1407, line: 19, baseType: !1416, size: 64, offset: 384)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1406, file: !1407, line: 21, baseType: !602, size: 64, offset: 448)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1406, file: !1407, line: 23, baseType: !602, size: 64, offset: 512)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1406, file: !1407, line: 24, baseType: !602, size: 64, offset: 576)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1406, file: !1407, line: 25, baseType: !602, size: 64, offset: 640)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1406, file: !1407, line: 26, baseType: !602, size: 64, offset: 704)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1406, file: !1407, line: 27, baseType: !602, size: 64, offset: 768)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1406, file: !1407, line: 28, baseType: !602, size: 64, offset: 832)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1406, file: !1407, line: 29, baseType: !602, size: 64, offset: 896)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1406, file: !1407, line: 30, baseType: !602, size: 64, offset: 960)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1406, file: !1407, line: 31, baseType: !602, size: 64, offset: 1024)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1406, file: !1407, line: 32, baseType: !602, size: 64, offset: 1088)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1406, file: !1407, line: 33, baseType: !602, size: 64, offset: 1152)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1391, file: !1390, line: 63, baseType: !61, size: 32, offset: 1024)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1391, file: !1390, line: 69, baseType: !105, size: 16, offset: 1056)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1391, file: !1390, line: 70, baseType: !1433, size: 16, offset: 1072)
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !96, line: 18, baseType: !1434)
!1434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !98, line: 23, baseType: !825)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1304, file: !135, line: 882, baseType: !51, size: 64, offset: 9024)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1304, file: !135, line: 885, baseType: !71, size: 32, offset: 9088)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1304, file: !135, line: 886, baseType: !1438, size: 64, offset: 9152)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !135, line: 732, flags: DIFlagFwdDecl)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1304, file: !135, line: 901, baseType: !939, size: 64, offset: 9216)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1304, file: !135, line: 904, baseType: !641, size: 64, offset: 9280)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1304, file: !135, line: 906, baseType: !1443, size: 64, offset: 9344)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !135, line: 906, flags: DIFlagFwdDecl)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1304, file: !135, line: 930, baseType: !61, size: 32, offset: 9408)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1304, file: !135, line: 933, baseType: !61, size: 32, offset: 9440)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1304, file: !135, line: 935, baseType: !1448, size: 64, offset: 9472)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !256, line: 103, size: 64, elements: !1449)
!1449 = !{!1450}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1448, file: !256, line: 104, baseType: !1451, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !256, line: 101, flags: DIFlagFwdDecl)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1304, file: !135, line: 940, baseType: !659, size: 64, offset: 9536)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1304, file: !135, line: 942, baseType: !988, size: 256, offset: 9600)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1301, file: !135, line: 986, baseType: !1456, offset: 10240)
!1456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, elements: !298)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1288, file: !135, line: 640, baseType: !1458, size: 64, offset: 192)
!1458 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1336, line: 297, baseType: !1459)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1336, line: 297, size: 64, elements: !1460)
!1460 = !{!1461}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1459, file: !1336, line: 297, baseType: !1462, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1341, line: 19, baseType: !51)
!1463 = !DIDerivedType(tag: DW_TAG_member, scope: !1288, file: !135, line: 646, baseType: !1464, size: 64, offset: 256)
!1464 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1288, file: !135, line: 646, size: 64, elements: !1465)
!1465 = !{!1466, !1469}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1464, file: !135, line: 647, baseType: !1467, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1468)
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !135, line: 542, baseType: !51)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1464, file: !135, line: 648, baseType: !1468, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1288, file: !135, line: 666, baseType: !13, size: 32, offset: 320)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1288, file: !135, line: 667, baseType: !1472, size: 64, offset: 384)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !135, line: 579, size: 320, elements: !1474)
!1474 = !{!1475}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1473, file: !135, line: 580, baseType: !797, size: 320)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1288, file: !135, line: 670, baseType: !856, size: 8, offset: 448)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1288, file: !135, line: 681, baseType: !1478, size: 256, offset: 512)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1288, file: !135, line: 678, size: 256, elements: !1479)
!1479 = !{!1480, !1481}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1478, file: !135, line: 679, baseType: !789, size: 192, align: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1478, file: !135, line: 680, baseType: !51, size: 64, offset: 192)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1288, file: !135, line: 689, baseType: !109, size: 128, offset: 768)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1288, file: !135, line: 691, baseType: !1484, size: 64, offset: 896)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1486, line: 31, size: 768, elements: !1487)
!1486 = !DIFile(filename: "./include/linux/rmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "424c17c81581cd4481af59c84df2437d")
!1487 = !{!1488, !1489, !1490, !1491, !1492, !1493, !1494}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1485, file: !1486, line: 32, baseType: !1484, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !1485, file: !1486, line: 33, baseType: !797, size: 320, offset: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1485, file: !1486, line: 41, baseType: !61, size: 32, offset: 384)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "num_children", scope: !1485, file: !1486, line: 50, baseType: !51, size: 64, offset: 448)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "num_active_vmas", scope: !1485, file: !1486, line: 52, baseType: !51, size: 64, offset: 512)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1485, file: !1486, line: 54, baseType: !1484, size: 64, offset: 576)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1485, file: !1486, line: 66, baseType: !1495, size: 128, offset: 640)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !790, line: 26, size: 128, elements: !1496)
!1496 = !{!1497, !1498}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1495, file: !790, line: 27, baseType: !1069, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1495, file: !790, line: 28, baseType: !794, size: 64, offset: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1288, file: !135, line: 694, baseType: !1500, size: 64, offset: 960)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1502)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1503, line: 563, size: 1024, elements: !1504)
!1503 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1504 = !{!1505, !1509, !1510, !1514, !1518, !1522, !1571, !1575, !1579, !1583, !1584, !1585, !1589, !1593, !1599, !1603}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1502, file: !1503, line: 564, baseType: !1506, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{null, !1287}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1502, file: !1503, line: 569, baseType: !1506, size: 64, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1502, file: !1503, line: 571, baseType: !1511, size: 64, offset: 128)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!13, !1287, !51}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1502, file: !1503, line: 572, baseType: !1515, size: 64, offset: 192)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!13, !1287}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1502, file: !1503, line: 578, baseType: !1519, size: 64, offset: 256)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!13, !1287, !51, !51, !51}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1502, file: !1503, line: 580, baseType: !1523, size: 64, offset: 320)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!1526, !1527}
!1526 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !135, line: 1184, baseType: !18)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1503, line: 512, size: 896, elements: !1529)
!1529 = !{!1530, !1538, !1539, !1546, !1553, !1563, !1564, !1565, !1567, !1569}
!1530 = !DIDerivedType(tag: DW_TAG_member, scope: !1528, file: !1503, line: 513, baseType: !1531, size: 320)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1528, file: !1503, line: 513, size: 320, elements: !1532)
!1532 = !{!1533, !1534, !1535, !1536, !1537}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1531, file: !1503, line: 514, baseType: !1287, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1531, file: !1503, line: 515, baseType: !300, size: 32, offset: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1531, file: !1503, line: 516, baseType: !51, size: 64, offset: 128)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1531, file: !1503, line: 517, baseType: !51, size: 64, offset: 192)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1531, file: !1503, line: 518, baseType: !51, size: 64, offset: 256)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1528, file: !1503, line: 520, baseType: !134, size: 32, offset: 320)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1528, file: !1503, line: 522, baseType: !1540, size: 64, offset: 384)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1341, line: 22, baseType: !1542)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1341, line: 22, size: 64, elements: !1543)
!1543 = !{!1544}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1542, file: !1341, line: 22, baseType: !1545, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1341, line: 15, baseType: !51)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1528, file: !1503, line: 524, baseType: !1547, size: 64, offset: 448)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1336, line: 372, baseType: !1549)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1336, line: 372, size: 64, elements: !1550)
!1550 = !{!1551}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1549, file: !1336, line: 372, baseType: !1552, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1341, line: 16, baseType: !51)
!1553 = !DIDerivedType(tag: DW_TAG_member, scope: !1528, file: !1503, line: 527, baseType: !1554, size: 64, offset: 512)
!1554 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1528, file: !1503, line: 527, size: 64, elements: !1555)
!1555 = !{!1556, !1562}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1554, file: !1503, line: 528, baseType: !1557, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1341, line: 21, baseType: !1558)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1341, line: 21, size: 64, elements: !1559)
!1559 = !{!1560}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1558, file: !1341, line: 21, baseType: !1561, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1341, line: 14, baseType: !51)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1554, file: !1503, line: 529, baseType: !1541, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1528, file: !1503, line: 534, baseType: !301, size: 64, offset: 576)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1528, file: !1503, line: 535, baseType: !301, size: 64, offset: 640)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1528, file: !1503, line: 541, baseType: !1566, size: 64, offset: 704)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1528, file: !1503, line: 545, baseType: !1568, size: 64, offset: 768)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1528, file: !1503, line: 549, baseType: !1570, size: 64, offset: 832)
!1570 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1336, line: 520, baseType: !301)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1502, file: !1503, line: 581, baseType: !1572, size: 64, offset: 384)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!1526, !1527, !18}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1502, file: !1503, line: 582, baseType: !1576, size: 64, offset: 448)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!1526, !1527, !51, !51}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1502, file: !1503, line: 584, baseType: !1580, size: 64, offset: 512)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!51, !1287}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1502, file: !1503, line: 588, baseType: !1523, size: 64, offset: 576)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1502, file: !1503, line: 591, baseType: !1523, size: 64, offset: 640)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1502, file: !1503, line: 597, baseType: !1586, size: 64, offset: 704)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!13, !1287, !51, !33, !13, !13}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1502, file: !1503, line: 603, baseType: !1590, size: 64, offset: 768)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!30, !1287}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1502, file: !1503, line: 613, baseType: !1594, size: 64, offset: 832)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!13, !1287, !1597}
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !135, line: 717, flags: DIFlagFwdDecl)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1502, file: !1503, line: 625, baseType: !1600, size: 64, offset: 896)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{!1597, !1287, !51}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1502, file: !1503, line: 633, baseType: !1604, size: 64, offset: 960)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!301, !1287, !51}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1288, file: !135, line: 697, baseType: !51, size: 64, offset: 1024)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1288, file: !135, line: 699, baseType: !641, size: 64, offset: 1088)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1288, file: !135, line: 700, baseType: !33, size: 64, offset: 1152)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1288, file: !135, line: 711, baseType: !659, size: 64, offset: 1216)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1288, file: !135, line: 717, baseType: !1597, size: 64, offset: 1280)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1288, file: !135, line: 722, baseType: !1613, offset: 1344)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !135, line: 570, elements: !1321)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1124, file: !227, line: 1928, baseType: !51, size: 64, offset: 768)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1124, file: !227, line: 1929, baseType: !1616, size: 64, offset: 832)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!13, !327, !641}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1124, file: !227, line: 1930, baseType: !1620, size: 64, offset: 896)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!13, !641, !1623}
!1623 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !227, line: 1061, baseType: !33)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1124, file: !227, line: 1931, baseType: !1616, size: 64, offset: 960)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1124, file: !227, line: 1932, baseType: !1626, size: 64, offset: 1024)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!13, !641, !53, !53, !13}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1124, file: !227, line: 1933, baseType: !1630, size: 64, offset: 1088)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!13, !13, !641, !13}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1124, file: !227, line: 1934, baseType: !1634, size: 64, offset: 1152)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!13, !641, !13, !1637}
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !227, line: 1063, flags: DIFlagFwdDecl)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1124, file: !227, line: 1935, baseType: !1325, size: 64, offset: 1216)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1124, file: !227, line: 1936, baseType: !1641, size: 64, offset: 1280)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!13, !13}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1124, file: !227, line: 1937, baseType: !1634, size: 64, offset: 1344)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1124, file: !227, line: 1938, baseType: !1646, size: 64, offset: 1408)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{!599, !1649, !641, !52, !47, !18}
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !10, line: 59, flags: DIFlagFwdDecl)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1124, file: !227, line: 1939, baseType: !1652, size: 64, offset: 1472)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!599, !641, !52, !1649, !47, !18}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1124, file: !227, line: 1940, baseType: !1656, size: 64, offset: 1536)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{null, !641}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1124, file: !227, line: 1941, baseType: !1660, size: 64, offset: 1600)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!13, !641, !13, !1663, !1664}
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1124, file: !227, line: 1942, baseType: !1666, size: 64, offset: 1664)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!602, !641, !13, !53, !53}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1124, file: !227, line: 1944, baseType: !1670, size: 64, offset: 1728)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{null, !1673, !641}
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1675, line: 17, size: 960, elements: !1676)
!1675 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1676 = !{!1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1706, !1707, !1710}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1674, file: !1675, line: 18, baseType: !468, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1674, file: !1675, line: 19, baseType: !47, size: 64, offset: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1674, file: !1675, line: 20, baseType: !47, size: 64, offset: 128)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1674, file: !1675, line: 21, baseType: !47, size: 64, offset: 192)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1674, file: !1675, line: 22, baseType: !47, size: 64, offset: 256)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1674, file: !1675, line: 23, baseType: !53, size: 64, offset: 320)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1674, file: !1675, line: 24, baseType: !53, size: 64, offset: 384)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1674, file: !1675, line: 25, baseType: !668, size: 256, offset: 448)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1674, file: !1675, line: 26, baseType: !1686, size: 64, offset: 704)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1688)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1675, line: 32, size: 256, elements: !1689)
!1689 = !{!1690, !1694, !1698, !1702}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1688, file: !1675, line: 33, baseType: !1691, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{!33, !1673, !52}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1688, file: !1675, line: 34, baseType: !1695, size: 64, offset: 64)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{null, !1673, !33}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1688, file: !1675, line: 35, baseType: !1699, size: 64, offset: 128)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!33, !1673, !33, !52}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1688, file: !1675, line: 36, baseType: !1703, size: 64, offset: 192)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!13, !1673, !33}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1674, file: !1675, line: 27, baseType: !13, size: 32, offset: 768)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1674, file: !1675, line: 28, baseType: !1708, size: 64, offset: 832)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !642)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1674, file: !1675, line: 29, baseType: !33, size: 64, offset: 896)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1124, file: !227, line: 1948, baseType: !1712, size: 64, offset: 1792)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!599, !641, !53, !641, !53, !47, !18}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1124, file: !227, line: 1950, baseType: !1716, size: 64, offset: 1856)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!53, !641, !53, !641, !53, !53, !18}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1124, file: !227, line: 1953, baseType: !1626, size: 64, offset: 1920)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1124, file: !227, line: 1954, baseType: !1721, size: 64, offset: 1984)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!13, !1724, !18}
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !227, line: 1911, flags: DIFlagFwdDecl)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1124, file: !227, line: 1955, baseType: !1727, size: 64, offset: 2048)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!13, !1724, !1255, !18}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !642, file: !227, line: 1018, baseType: !400, size: 64, offset: 1472)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !642, file: !227, line: 1020, baseType: !33, size: 64, offset: 1536)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !642, file: !227, line: 1023, baseType: !33, size: 64, offset: 1600)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !642, file: !227, line: 1027, baseType: !1734, size: 64, offset: 1664)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !642, file: !227, line: 1029, baseType: !323, size: 64, offset: 1728)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !642, file: !227, line: 1030, baseType: !1737, size: 32, offset: 1792)
!1737 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1738, line: 8, baseType: !396)
!1738 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !642, file: !227, line: 1031, baseType: !1737, size: 32, offset: 1824)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !628, file: !593, line: 182, baseType: !638, size: 64, offset: 384)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !628, file: !593, line: 184, baseType: !1742, size: 64, offset: 448)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!13, !641, !533, !627, !1287}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !616, file: !593, line: 90, baseType: !1746, size: 64, offset: 192)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !616, file: !593, line: 91, baseType: !1748, size: 64, offset: 256)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !583, file: !528, line: 120, baseType: !1750, size: 64, offset: 192)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!1753, !551}
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1755)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !196, line: 39, size: 384, elements: !1756)
!1756 = !{!1757, !1758, !1762, !1766, !1772, !1776}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1755, file: !196, line: 40, baseType: !195, size: 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1755, file: !196, line: 41, baseType: !1759, size: 64, offset: 64)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!856}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1755, file: !196, line: 42, baseType: !1763, size: 64, offset: 128)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!33}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1755, file: !196, line: 43, baseType: !1767, size: 64, offset: 192)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!1416, !1770}
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !196, line: 19, flags: DIFlagFwdDecl)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1755, file: !196, line: 44, baseType: !1773, size: 64, offset: 256)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!1416}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1755, file: !196, line: 45, baseType: !1777, size: 64, offset: 320)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{null, !33}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !583, file: !528, line: 121, baseType: !1781, size: 64, offset: 256)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{!1416, !551}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !583, file: !528, line: 122, baseType: !1785, size: 64, offset: 320)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{null, !551, !1052, !1053}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !527, file: !528, line: 70, baseType: !1789, size: 64, offset: 384)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1791, line: 190, size: 1152, elements: !1792)
!1791 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1792 = !{!1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1872, !1873, !1874, !1875, !1876, !1879}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1790, file: !1791, line: 191, baseType: !61, size: 32)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1790, file: !1791, line: 192, baseType: !61, size: 32, offset: 32)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1790, file: !1791, line: 202, baseType: !1789, size: 64, offset: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1790, file: !1791, line: 203, baseType: !30, size: 64, offset: 128)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1790, file: !1791, line: 205, baseType: !789, size: 192, align: 64, offset: 192)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1790, file: !1791, line: 207, baseType: !1416, size: 64, offset: 384)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1790, file: !1791, line: 208, baseType: !18, size: 32, offset: 448)
!1800 = !DIDerivedType(tag: DW_TAG_member, scope: !1790, file: !1791, line: 209, baseType: !1801, size: 256, offset: 512)
!1801 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1790, file: !1791, line: 209, size: 256, elements: !1802)
!1802 = !{!1803, !1812, !1816}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1801, file: !1791, line: 210, baseType: !1804, size: 256)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1791, line: 153, size: 256, elements: !1805)
!1805 = !{!1806, !1807, !1808, !1811}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1804, file: !1791, line: 154, baseType: !51, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1804, file: !1791, line: 156, baseType: !1069, size: 64, offset: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1804, file: !1791, line: 162, baseType: !1809, size: 64, offset: 128)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1791, line: 162, flags: DIFlagFwdDecl)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1804, file: !1791, line: 167, baseType: !51, size: 64, offset: 192)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1801, file: !1791, line: 211, baseType: !1813, size: 64)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1791, line: 170, size: 64, elements: !1814)
!1814 = !{!1815}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1813, file: !1791, line: 171, baseType: !1789, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1801, file: !1791, line: 212, baseType: !1817, size: 256)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1791, line: 174, size: 256, elements: !1818)
!1818 = !{!1819, !1867, !1870, !1871}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1817, file: !1791, line: 175, baseType: !1820, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1822)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1791, line: 271, size: 768, elements: !1823)
!1823 = !{!1824, !1844, !1848, !1849, !1850, !1851, !1852, !1856, !1857, !1858, !1859, !1863}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1822, file: !1791, line: 276, baseType: !1825, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{!13, !1828}
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1791, line: 251, size: 1216, elements: !1830)
!1830 = !{!1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1829, file: !1791, line: 253, baseType: !1789, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1829, file: !1791, line: 254, baseType: !641, size: 64, offset: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1829, file: !1791, line: 255, baseType: !1673, size: 64, offset: 128)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1829, file: !1791, line: 256, baseType: !33, size: 64, offset: 192)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1829, file: !1791, line: 259, baseType: !668, size: 256, offset: 256)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1829, file: !1791, line: 260, baseType: !668, size: 256, offset: 512)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1829, file: !1791, line: 261, baseType: !13, size: 32, offset: 768)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1829, file: !1791, line: 262, baseType: !109, size: 128, offset: 832)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1829, file: !1791, line: 263, baseType: !468, size: 64, offset: 960)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1829, file: !1791, line: 265, baseType: !47, size: 64, offset: 1024)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1829, file: !1791, line: 266, baseType: !856, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1829, file: !1791, line: 267, baseType: !856, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1829, file: !1791, line: 268, baseType: !1500, size: 64, offset: 1152)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1822, file: !1791, line: 277, baseType: !1845, size: 64, offset: 64)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{null, !1828}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1822, file: !1791, line: 290, baseType: !1703, size: 64, offset: 128)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1822, file: !1791, line: 292, baseType: !1691, size: 64, offset: 192)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1822, file: !1791, line: 293, baseType: !1699, size: 64, offset: 256)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1822, file: !1791, line: 294, baseType: !1695, size: 64, offset: 320)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1822, file: !1791, line: 296, baseType: !1853, size: 64, offset: 384)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{!599, !1828, !468, !47, !53}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1822, file: !1791, line: 306, baseType: !47, size: 64, offset: 448)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1822, file: !1791, line: 313, baseType: !856, size: 8, offset: 512)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1822, file: !1791, line: 314, baseType: !1853, size: 64, offset: 576)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1822, file: !1791, line: 317, baseType: !1860, size: 64, offset: 640)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!1274, !1828, !1276}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1822, file: !1791, line: 320, baseType: !1864, size: 64, offset: 704)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!13, !1828, !1287}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1817, file: !1791, line: 176, baseType: !1868, size: 64, offset: 64)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1791, line: 35, flags: DIFlagFwdDecl)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1817, file: !1791, line: 177, baseType: !53, size: 64, offset: 128)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1817, file: !1791, line: 178, baseType: !1789, size: 64, offset: 192)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1790, file: !1791, line: 215, baseType: !33, size: 64, offset: 768)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1790, file: !1791, line: 221, baseType: !400, size: 64, offset: 832)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1790, file: !1791, line: 223, baseType: !38, size: 16, offset: 896)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1790, file: !1791, line: 224, baseType: !36, size: 16, offset: 912)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1790, file: !1791, line: 225, baseType: !1877, size: 64, offset: 960)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1791, line: 36, flags: DIFlagFwdDecl)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1790, file: !1791, line: 227, baseType: !287, size: 128, align: 64, offset: 1024)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !527, file: !528, line: 71, baseType: !1881, size: 32, offset: 448)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1882, line: 19, size: 32, elements: !1883)
!1882 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1883 = !{!1884}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1881, file: !1882, line: 20, baseType: !711, size: 32)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !527, file: !528, line: 73, baseType: !18, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !527, file: !528, line: 74, baseType: !18, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !527, file: !528, line: 75, baseType: !18, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !527, file: !528, line: 76, baseType: !18, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !527, file: !528, line: 77, baseType: !18, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !524, file: !120, line: 47, baseType: !514, size: 64, offset: 512)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !524, file: !120, line: 48, baseType: !533, size: 64, offset: 576)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !524, file: !120, line: 49, baseType: !1893, size: 64, offset: 640)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !120, line: 49, flags: DIFlagFwdDecl)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !524, file: !120, line: 50, baseType: !1026, size: 64, offset: 704)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !515, file: !120, line: 418, baseType: !1897, size: 64, offset: 1408)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !120, line: 53, size: 448, elements: !1899)
!1899 = !{!1900, !1901, !1906, !1910, !1914, !1918}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1898, file: !120, line: 54, baseType: !604, size: 128)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1898, file: !120, line: 55, baseType: !1902, size: 64, offset: 128)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DISubroutineType(types: !1904)
!1904 = !{!599, !1897, !1905, !468}
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1898, file: !120, line: 57, baseType: !1907, size: 64, offset: 192)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!599, !1897, !1905, !30, !47}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1898, file: !120, line: 59, baseType: !1911, size: 64, offset: 256)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{null, !514, !30}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1898, file: !120, line: 60, baseType: !1915, size: 64, offset: 320)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!13, !514}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1898, file: !120, line: 61, baseType: !1919, size: 64, offset: 384)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{null, !514}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !515, file: !120, line: 419, baseType: !30, size: 64, offset: 1472)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !515, file: !120, line: 420, baseType: !30, size: 64, offset: 1536)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !515, file: !120, line: 421, baseType: !533, size: 64, offset: 1600)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !515, file: !120, line: 424, baseType: !1926, size: 64, offset: 1664)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1928)
!1928 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !120, line: 424, flags: DIFlagFwdDecl)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !515, file: !120, line: 425, baseType: !1930, size: 64, offset: 1728)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !782)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !515, file: !120, line: 426, baseType: !18, size: 32, offset: 1792)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !515, file: !120, line: 435, baseType: !668, size: 256, offset: 1856)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !515, file: !120, line: 437, baseType: !1935, size: 64, offset: 2112)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1937, line: 69, size: 320, elements: !1938)
!1937 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1938 = !{!1939, !1940, !1941, !1958, !1960, !1964, !1965}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1936, file: !1937, line: 70, baseType: !30, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1936, file: !1937, line: 71, baseType: !514, size: 64, offset: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1936, file: !1937, line: 72, baseType: !1942, size: 64, offset: 128)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1944)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1937, line: 47, size: 256, elements: !1945)
!1945 = !{!1946, !1947, !1953, !1957}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1944, file: !1937, line: 49, baseType: !18, size: 32)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1944, file: !1937, line: 51, baseType: !1948, size: 64, offset: 64)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!13, !30, !1951}
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1936)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1944, file: !1937, line: 53, baseType: !1954, size: 64, offset: 128)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!13, !468, !1951}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1944, file: !1937, line: 55, baseType: !1777, size: 64, offset: 192)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1936, file: !1937, line: 73, baseType: !1959, size: 16, offset: 192)
!1959 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1936, file: !1937, line: 74, baseType: !1961, size: 8, offset: 208)
!1961 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !96, line: 16, baseType: !1962)
!1962 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !98, line: 20, baseType: !1963)
!1963 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1936, file: !1937, line: 75, baseType: !95, size: 8, offset: 216)
!1965 = !DIDerivedType(tag: DW_TAG_member, scope: !1936, file: !1937, line: 76, baseType: !1966, size: 64, offset: 256)
!1966 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1936, file: !1937, line: 76, size: 64, elements: !1967)
!1967 = !{!1968, !1969, !1976}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1966, file: !1937, line: 77, baseType: !33, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1966, file: !1937, line: 78, baseType: !1970, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1972)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1937, line: 86, size: 128, elements: !1973)
!1973 = !{!1974, !1975}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1972, file: !1937, line: 87, baseType: !18, size: 32)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1972, file: !1937, line: 88, baseType: !468, size: 64, offset: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1966, file: !1937, line: 79, baseType: !1977, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1979)
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1937, line: 92, size: 256, elements: !1980)
!1980 = !{!1981, !1982, !1983, !1985, !1986}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1979, file: !1937, line: 94, baseType: !18, size: 32)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1979, file: !1937, line: 95, baseType: !18, size: 32, offset: 32)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1979, file: !1937, line: 96, baseType: !1984, size: 64, offset: 64)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1979, file: !1937, line: 97, baseType: !1942, size: 64, offset: 128)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1979, file: !1937, line: 98, baseType: !33, size: 64, offset: 192)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !515, file: !120, line: 438, baseType: !18, size: 32, offset: 2176)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !515, file: !120, line: 441, baseType: !18, size: 32, offset: 2208)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !515, file: !120, line: 442, baseType: !1926, size: 64, offset: 2240)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !515, file: !120, line: 443, baseType: !1930, size: 64, offset: 2304)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !515, file: !120, line: 444, baseType: !856, size: 8, offset: 2368)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !515, file: !120, line: 451, baseType: !856, size: 8, offset: 2376)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !515, file: !120, line: 454, baseType: !18, size: 32, offset: 2400)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !515, file: !120, line: 455, baseType: !1995, size: 64, offset: 2432)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1997, line: 23, size: 96, elements: !1998)
!1997 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1998 = !{!1999, !2000, !2001}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1996, file: !1997, line: 24, baseType: !13, size: 32)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1996, file: !1997, line: 24, baseType: !13, size: 32, offset: 32)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1996, file: !1997, line: 24, baseType: !13, size: 32, offset: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !515, file: !120, line: 458, baseType: !2003, size: 64, offset: 2496)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !515, file: !120, line: 460, baseType: !2005, size: 4032, align: 512, offset: 2560)
!2005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2006, size: 4032, elements: !2022)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !120, line: 362, size: 576, elements: !2007)
!2007 = !{!2008, !2009, !2010}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2006, file: !120, line: 363, baseType: !33, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2006, file: !120, line: 364, baseType: !18, size: 32, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2006, file: !120, line: 367, baseType: !2011, size: 448, offset: 128)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !120, line: 319, size: 448, elements: !2012)
!2012 = !{!2013, !2014}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2011, file: !120, line: 320, baseType: !514, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2011, file: !120, line: 321, baseType: !2015, size: 384, offset: 64)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2016, line: 40, size: 384, elements: !2017)
!2016 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2017 = !{!2018}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2015, file: !2016, line: 41, baseType: !2019, size: 384, align: 64)
!2019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !789, size: 384, align: 64, elements: !2020)
!2020 = !{!2021}
!2021 = !DISubrange(count: 2)
!2022 = !{!2023}
!2023 = !DISubrange(count: 7)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !515, file: !120, line: 463, baseType: !2025, size: 192, offset: 6592)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2026, line: 8, size: 192, elements: !2027)
!2026 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2027 = !{!2028, !2029, !2031}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2025, file: !2026, line: 10, baseType: !18, size: 32)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2025, file: !2026, line: 11, baseType: !2030, size: 64, offset: 64)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2025, file: !2026, line: 12, baseType: !2032, size: 64, offset: 128)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2034, line: 59, size: 48, elements: !2035)
!2034 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2035 = !{!2036, !2037, !2038, !2039, !2040, !2041}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2033, file: !2034, line: 60, baseType: !1433, size: 16)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2033, file: !2034, line: 61, baseType: !1433, size: 16, offset: 16)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2033, file: !2034, line: 63, baseType: !18, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2033, file: !2034, line: 64, baseType: !18, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2033, file: !2034, line: 65, baseType: !18, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2033, file: !2034, line: 66, baseType: !18, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !515, file: !120, line: 465, baseType: !51, size: 64, offset: 6784)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !515, file: !120, line: 469, baseType: !18, size: 32, offset: 6848)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !515, file: !120, line: 470, baseType: !109, size: 128, offset: 6912)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !515, file: !120, line: 471, baseType: !2046, size: 64, offset: 7040)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2048, line: 33, size: 96, elements: !2049)
!2048 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2049 = !{!2050, !2051, !2052, !2053}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2047, file: !2048, line: 37, baseType: !13, size: 32)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2047, file: !2048, line: 43, baseType: !13, size: 32, offset: 32)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2047, file: !2048, line: 45, baseType: !38, size: 16, offset: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2047, file: !2048, line: 47, baseType: !38, size: 16, offset: 80)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !515, file: !120, line: 476, baseType: !2055, size: 64, offset: 7104)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !120, line: 378, size: 256, elements: !2057)
!2057 = !{!2058, !2074, !2075, !2076}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2056, file: !120, line: 379, baseType: !2059, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2061, line: 204, baseType: !2062)
!2061 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2061, line: 197, size: 192, elements: !2063)
!2063 = !{!2064, !2066, !2067, !2068, !2070, !2072}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2062, file: !2061, line: 198, baseType: !2065, size: 32)
!2065 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2061, line: 21, baseType: !397)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2062, file: !2061, line: 199, baseType: !99, size: 8, offset: 32)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2062, file: !2061, line: 200, baseType: !99, size: 8, offset: 40)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2062, file: !2061, line: 201, baseType: !2069, size: 16, offset: 48)
!2069 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2061, line: 17, baseType: !106)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2062, file: !2061, line: 202, baseType: !2071, size: 64, offset: 64)
!2071 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2061, line: 16, baseType: !401)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2062, file: !2061, line: 203, baseType: !2073, size: 64, offset: 128)
!2073 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2061, line: 22, baseType: !401)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2056, file: !120, line: 380, baseType: !18, size: 32, offset: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2056, file: !120, line: 381, baseType: !468, size: 64, offset: 128)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2056, file: !120, line: 382, baseType: !468, size: 64, offset: 192)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !515, file: !120, line: 477, baseType: !2056, size: 256, offset: 7168)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !515, file: !120, line: 480, baseType: !2079, size: 64, offset: 7424)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !120, line: 480, flags: DIFlagFwdDecl)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !515, file: !120, line: 483, baseType: !2082, size: 64, offset: 7488)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !120, line: 483, flags: DIFlagFwdDecl)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !515, file: !120, line: 488, baseType: !468, size: 64, offset: 7552)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !515, file: !120, line: 492, baseType: !33, size: 64, offset: 7616)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !515, file: !120, line: 493, baseType: !18, size: 32, offset: 7680)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !515, file: !120, line: 495, baseType: !33, size: 64, offset: 7744)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !515, file: !120, line: 496, baseType: !18, size: 32, offset: 7808)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !515, file: !120, line: 499, baseType: !18, size: 32, offset: 7840)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !515, file: !120, line: 500, baseType: !2091, size: 64, offset: 7872)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2093, line: 45, baseType: !2094)
!2093 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2094 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !515, file: !120, line: 503, baseType: !18, size: 32, offset: 7936)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !515, file: !120, line: 504, baseType: !2097, size: 64, offset: 8000)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2100, line: 96, size: 192, elements: !2101)
!2100 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2101 = !{!2102, !2103, !2156, !2159}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2099, file: !2100, line: 97, baseType: !18, size: 32)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2099, file: !2100, line: 98, baseType: !2104, size: 64, offset: 64)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2100, line: 24, size: 3072, elements: !2106)
!2106 = !{!2107, !2109, !2110, !2111, !2112, !2125, !2126, !2127, !2128, !2140, !2141, !2142, !2153, !2154, !2155}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2105, file: !2100, line: 26, baseType: !2108, size: 128)
!2108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !659, size: 128, elements: !2020)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2105, file: !2100, line: 27, baseType: !2108, size: 128, offset: 128)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2105, file: !2100, line: 28, baseType: !13, size: 32, offset: 256)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2105, file: !2100, line: 31, baseType: !71, size: 32, align: 512, offset: 512)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2105, file: !2100, line: 32, baseType: !2113, size: 960, offset: 576)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2114, line: 206, size: 960, elements: !2115)
!2114 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2115 = !{!2116, !2117, !2120, !2122, !2123, !2124}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2113, file: !2114, line: 207, baseType: !290, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2113, file: !2114, line: 208, baseType: !2118, size: 256, offset: 64)
!2118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2119, size: 256, elements: !729)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2113, file: !2114, line: 209, baseType: !2121, size: 256, offset: 320)
!2121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 256, elements: !729)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2113, file: !2114, line: 213, baseType: !602, size: 64, offset: 576)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2113, file: !2114, line: 215, baseType: !1090, size: 256, offset: 640)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2113, file: !2114, line: 216, baseType: !95, size: 8, offset: 896)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2105, file: !2100, line: 33, baseType: !51, size: 64, offset: 1536)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2105, file: !2100, line: 34, baseType: !51, size: 64, offset: 1600)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2105, file: !2100, line: 35, baseType: !856, size: 8, offset: 1664)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2105, file: !2100, line: 36, baseType: !2129, size: 320, offset: 1728)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2130, line: 11, size: 320, elements: !2131)
!2130 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2131 = !{!2132, !2133, !2134, !2139}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2129, file: !2130, line: 16, baseType: !724, size: 128)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2129, file: !2130, line: 17, baseType: !51, size: 64, offset: 128)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2129, file: !2130, line: 18, baseType: !2135, size: 64, offset: 192)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{null, !2138}
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2129, file: !2130, line: 19, baseType: !396, size: 32, offset: 256)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2105, file: !2100, line: 37, baseType: !988, size: 256, offset: 2048)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2105, file: !2100, line: 38, baseType: !287, size: 128, align: 64, offset: 2304)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2105, file: !2100, line: 39, baseType: !2143, size: 64, offset: 2432)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2100, line: 49, size: 768, elements: !2145)
!2145 = !{!2146, !2147, !2148, !2149, !2150, !2151, !2152}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2144, file: !2100, line: 50, baseType: !71, size: 32)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2144, file: !2100, line: 51, baseType: !2121, size: 256, offset: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2144, file: !2100, line: 53, baseType: !2121, size: 256, offset: 320)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2144, file: !2100, line: 54, baseType: !51, size: 64, offset: 576)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2144, file: !2100, line: 55, baseType: !2143, size: 64, offset: 640)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2144, file: !2100, line: 56, baseType: !13, size: 32, offset: 704)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2144, file: !2100, line: 57, baseType: !13, size: 32, offset: 736)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2105, file: !2100, line: 40, baseType: !51, size: 64, offset: 2496)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2105, file: !2100, line: 42, baseType: !13, size: 32, offset: 2560)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2105, file: !2100, line: 43, baseType: !2098, size: 64, offset: 2624)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2099, file: !2100, line: 99, baseType: !2157, offset: 128)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2158, line: 211, elements: !1321)
!2158 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2099, file: !2100, line: 100, baseType: !2160, size: 64, offset: 128)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2100, line: 63, size: 3008, elements: !2162)
!2162 = !{!2163, !2164, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2194}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2161, file: !2100, line: 64, baseType: !2143, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2161, file: !2100, line: 65, baseType: !2165, size: 192, offset: 64)
!2165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2143, size: 192, elements: !568)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2161, file: !2100, line: 67, baseType: !13, size: 32, offset: 256)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2161, file: !2100, line: 68, baseType: !668, size: 256, offset: 320)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2161, file: !2100, line: 69, baseType: !71, size: 32, offset: 576)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2161, file: !2100, line: 70, baseType: !668, size: 256, offset: 640)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2161, file: !2100, line: 71, baseType: !51, size: 64, offset: 896)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2161, file: !2100, line: 72, baseType: !51, size: 64, offset: 960)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2161, file: !2100, line: 73, baseType: !51, size: 64, offset: 1024)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2161, file: !2100, line: 74, baseType: !51, size: 64, offset: 1088)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2161, file: !2100, line: 75, baseType: !51, size: 64, offset: 1152)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2161, file: !2100, line: 76, baseType: !51, size: 64, offset: 1216)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2161, file: !2100, line: 77, baseType: !51, size: 64, offset: 1280)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2161, file: !2100, line: 78, baseType: !51, size: 64, offset: 1344)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2161, file: !2100, line: 79, baseType: !856, size: 8, offset: 1408)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2161, file: !2100, line: 80, baseType: !51, size: 64, offset: 1472)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2161, file: !2100, line: 81, baseType: !668, size: 256, offset: 1536)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2161, file: !2100, line: 82, baseType: !1027, size: 256, offset: 1792)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2161, file: !2100, line: 84, baseType: !61, size: 32, offset: 2048)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2161, file: !2100, line: 87, baseType: !51, size: 64, offset: 2112)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2161, file: !2100, line: 88, baseType: !51, size: 64, offset: 2176)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2161, file: !2100, line: 89, baseType: !2186, size: 704, offset: 2240)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !989, line: 111, size: 704, elements: !2187)
!2187 = !{!2188, !2189, !2190, !2193}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2186, file: !989, line: 112, baseType: !988, size: 256)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2186, file: !989, line: 113, baseType: !2129, size: 320, offset: 256)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2186, file: !989, line: 116, baseType: !2191, size: 64, offset: 576)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !989, line: 18, flags: DIFlagFwdDecl)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2186, file: !989, line: 117, baseType: !13, size: 32, offset: 640)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2161, file: !2100, line: 90, baseType: !2098, size: 64, offset: 2944)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !515, file: !120, line: 515, baseType: !2196, size: 64, offset: 8064)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2198, line: 117, size: 128, elements: !2199)
!2198 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2199 = !{!2200, !2201, !2202}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2197, file: !2198, line: 118, baseType: !782, size: 32)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2197, file: !2198, line: 119, baseType: !782, size: 32, offset: 32)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2197, file: !2198, line: 120, baseType: !602, size: 64, offset: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !515, file: !120, line: 516, baseType: !18, size: 32, offset: 8128)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !515, file: !120, line: 519, baseType: !18, size: 32, offset: 8160)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !515, file: !120, line: 520, baseType: !2206, size: 64, offset: 8192)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !515, file: !120, line: 523, baseType: !2208, size: 64, offset: 8256)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !120, line: 523, flags: DIFlagFwdDecl)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !515, file: !120, line: 524, baseType: !18, size: 32, offset: 8320)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !515, file: !120, line: 525, baseType: !2213, size: 64, offset: 8384)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !120, line: 525, flags: DIFlagFwdDecl)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !515, file: !120, line: 526, baseType: !18, size: 32, offset: 8448)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !515, file: !120, line: 533, baseType: !33, size: 64, offset: 8512)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !515, file: !120, line: 534, baseType: !18, size: 32, offset: 8576)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !515, file: !120, line: 535, baseType: !2220, size: 64, offset: 8640)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !515, file: !120, line: 536, baseType: !18, size: 32, offset: 8704)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !515, file: !120, line: 539, baseType: !13, size: 32, offset: 8736)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !515, file: !120, line: 540, baseType: !2224, size: 64, offset: 8768)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2226, line: 32, size: 64, elements: !2227)
!2226 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2227 = !{!2228, !2229}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2225, file: !2226, line: 33, baseType: !782, size: 32)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2225, file: !2226, line: 34, baseType: !782, size: 32, offset: 32)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !515, file: !120, line: 563, baseType: !109, size: 128, offset: 8832)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !515, file: !120, line: 565, baseType: !109, size: 128, offset: 8960)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !515, file: !120, line: 568, baseType: !2233, size: 64, offset: 9088)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{null}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !515, file: !120, line: 570, baseType: !61, size: 32, offset: 9152)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !491, file: !227, line: 2382, baseType: !490, size: 64, offset: 448)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !491, file: !227, line: 2383, baseType: !720, size: 64, offset: 512)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !491, file: !227, line: 2385, baseType: !2240, offset: 576)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2158, line: 206, elements: !1321)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !491, file: !227, line: 2386, baseType: !2240, offset: 576)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !491, file: !227, line: 2387, baseType: !2240, offset: 576)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !491, file: !227, line: 2388, baseType: !2244, offset: 576)
!2244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2240, elements: !568)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !491, file: !227, line: 2390, baseType: !2240, offset: 576)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !491, file: !227, line: 2391, baseType: !2240, offset: 576)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !491, file: !227, line: 2392, baseType: !2240, offset: 576)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !491, file: !227, line: 2393, baseType: !2240, offset: 576)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !480, file: !227, line: 1197, baseType: !2250, size: 64, offset: 384)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2252)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !227, line: 2057, size: 1664, elements: !2253)
!2253 = !{!2254, !2258, !2262, !2263, !2267, !2291, !2295, !2296, !2297, !2301, !2305, !2309, !2310, !2311, !2317, !2321, !2322, !2326, !2327, !2328, !2329, !2333, !2337, !2384, !2399, !2400}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2252, file: !227, line: 2058, baseType: !2255, size: 64)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!327, !479}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2252, file: !227, line: 2059, baseType: !2259, size: 64, offset: 64)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{null, !327}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2252, file: !227, line: 2060, baseType: !2259, size: 64, offset: 128)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2252, file: !227, line: 2062, baseType: !2264, size: 64, offset: 192)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{null, !327, !13}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2252, file: !227, line: 2063, baseType: !2268, size: 64, offset: 256)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!13, !327, !2271}
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !151, line: 42, size: 384, elements: !2273)
!2273 = !{!2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !2272, file: !151, line: 43, baseType: !602, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !2272, file: !151, line: 45, baseType: !602, size: 64, offset: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !2272, file: !151, line: 52, baseType: !53, size: 64, offset: 128)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !2272, file: !151, line: 53, baseType: !53, size: 64, offset: 192)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !2272, file: !151, line: 55, baseType: !150, size: 32, offset: 256)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !2272, file: !151, line: 57, baseType: !18, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !2272, file: !151, line: 58, baseType: !18, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !2272, file: !151, line: 59, baseType: !18, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !2272, file: !151, line: 60, baseType: !18, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !2272, file: !151, line: 61, baseType: !18, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !2272, file: !151, line: 62, baseType: !18, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !2272, file: !151, line: 63, baseType: !18, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !2272, file: !151, line: 71, baseType: !18, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !2272, file: !151, line: 78, baseType: !2288, size: 64, offset: 320)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !151, line: 78, flags: DIFlagFwdDecl)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2252, file: !227, line: 2064, baseType: !2292, size: 64, offset: 320)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!13, !327}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2252, file: !227, line: 2065, baseType: !2259, size: 64, offset: 384)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2252, file: !227, line: 2066, baseType: !510, size: 64, offset: 448)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2252, file: !227, line: 2067, baseType: !2298, size: 64, offset: 512)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!13, !479, !13}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2252, file: !227, line: 2068, baseType: !2302, size: 64, offset: 576)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{!13, !479, !226}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2252, file: !227, line: 2069, baseType: !2306, size: 64, offset: 640)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!13, !479}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2252, file: !227, line: 2070, baseType: !2302, size: 64, offset: 704)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2252, file: !227, line: 2071, baseType: !2306, size: 64, offset: 768)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2252, file: !227, line: 2072, baseType: !2312, size: 64, offset: 832)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!13, !362, !2315}
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !227, line: 62, flags: DIFlagFwdDecl)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2252, file: !227, line: 2073, baseType: !2318, size: 64, offset: 896)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!13, !479, !2030, !468}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2252, file: !227, line: 2074, baseType: !510, size: 64, offset: 960)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2252, file: !227, line: 2076, baseType: !2323, size: 64, offset: 1024)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!13, !1673, !362}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2252, file: !227, line: 2077, baseType: !2323, size: 64, offset: 1088)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2252, file: !227, line: 2078, baseType: !2323, size: 64, offset: 1152)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2252, file: !227, line: 2079, baseType: !2323, size: 64, offset: 1216)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2252, file: !227, line: 2081, baseType: !2330, size: 64, offset: 1280)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!599, !479, !13, !468, !47, !53}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2252, file: !227, line: 2082, baseType: !2334, size: 64, offset: 1344)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{!599, !479, !13, !30, !47, !53}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2252, file: !227, line: 2083, baseType: !2338, size: 64, offset: 1408)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{!2341, !327}
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !232, line: 296, size: 1664, elements: !2344)
!2344 = !{!2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2369, !2370, !2371}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2343, file: !232, line: 297, baseType: !724, size: 128)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2343, file: !232, line: 298, baseType: !109, size: 128, offset: 128)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2343, file: !232, line: 299, baseType: !109, size: 128, offset: 256)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2343, file: !232, line: 300, baseType: !109, size: 128, offset: 384)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2343, file: !232, line: 301, baseType: !668, size: 256, offset: 512)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2343, file: !232, line: 302, baseType: !71, size: 32, offset: 768)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2343, file: !232, line: 303, baseType: !61, size: 32, offset: 800)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2343, file: !232, line: 304, baseType: !479, size: 64, offset: 832)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2343, file: !232, line: 305, baseType: !2354, size: 64, offset: 896)
!2354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !232, line: 68, size: 64, elements: !2355)
!2355 = !{!2356, !2368}
!2356 = !DIDerivedType(tag: DW_TAG_member, scope: !2354, file: !232, line: 69, baseType: !2357, size: 32)
!2357 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2354, file: !232, line: 69, size: 32, elements: !2358)
!2358 = !{!2359, !2360, !2361}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2357, file: !232, line: 70, baseType: !333, size: 32)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2357, file: !232, line: 71, baseType: !342, size: 32)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2357, file: !232, line: 72, baseType: !2362, size: 32)
!2362 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2363, line: 24, baseType: !2364)
!2363 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2363, line: 22, size: 32, elements: !2365)
!2365 = !{!2366}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2364, file: !2363, line: 23, baseType: !2367, size: 32)
!2367 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2363, line: 20, baseType: !339)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2354, file: !232, line: 74, baseType: !231, size: 32, offset: 32)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2343, file: !232, line: 306, baseType: !53, size: 64, offset: 960)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2343, file: !232, line: 307, baseType: !51, size: 64, offset: 1024)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2343, file: !232, line: 308, baseType: !2372, size: 576, offset: 1088)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !232, line: 205, size: 576, elements: !2373)
!2373 = !{!2374, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2372, file: !232, line: 206, baseType: !2375, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !232, line: 66, baseType: !55)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2372, file: !232, line: 207, baseType: !2375, size: 64, offset: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2372, file: !232, line: 208, baseType: !2375, size: 64, offset: 128)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2372, file: !232, line: 209, baseType: !2375, size: 64, offset: 192)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2372, file: !232, line: 210, baseType: !2375, size: 64, offset: 256)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2372, file: !232, line: 211, baseType: !2375, size: 64, offset: 320)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2372, file: !232, line: 212, baseType: !2375, size: 64, offset: 384)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2372, file: !232, line: 213, baseType: !813, size: 64, offset: 448)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2372, file: !232, line: 214, baseType: !813, size: 64, offset: 512)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2252, file: !227, line: 2085, baseType: !2385, size: 64, offset: 1472)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!602, !479, !2388}
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2390, line: 15, size: 256, elements: !2391)
!2390 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2391 = !{!2392, !2393, !2394, !2395, !2396}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2389, file: !2390, line: 16, baseType: !300, size: 32)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2389, file: !2390, line: 19, baseType: !13, size: 32, offset: 32)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2389, file: !2390, line: 26, baseType: !51, size: 64, offset: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2389, file: !2390, line: 33, baseType: !51, size: 64, offset: 128)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2389, file: !2390, line: 36, baseType: !2397, size: 64, offset: 192)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !135, line: 33, flags: DIFlagFwdDecl)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2252, file: !227, line: 2087, baseType: !2385, size: 64, offset: 1536)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2252, file: !227, line: 2089, baseType: !510, size: 64, offset: 1600)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !480, file: !227, line: 1198, baseType: !2402, size: 64, offset: 448)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2404)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !232, line: 324, size: 704, elements: !2405)
!2405 = !{!2406, !2410, !2414, !2418, !2419, !2420, !2421, !2422, !2427, !2432, !2436}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2404, file: !232, line: 325, baseType: !2407, size: 64)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!13, !2342}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2404, file: !232, line: 326, baseType: !2411, size: 64, offset: 64)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!2342, !479, !13}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2404, file: !232, line: 327, baseType: !2415, size: 64, offset: 128)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{null, !2342}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2404, file: !232, line: 328, baseType: !2407, size: 64, offset: 192)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2404, file: !232, line: 329, baseType: !2407, size: 64, offset: 256)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2404, file: !232, line: 330, baseType: !2407, size: 64, offset: 320)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2404, file: !232, line: 331, baseType: !2298, size: 64, offset: 384)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2404, file: !232, line: 334, baseType: !2423, size: 64, offset: 448)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!2426, !327}
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2404, file: !232, line: 335, baseType: !2428, size: 64, offset: 512)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!13, !327, !2431}
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2404, file: !232, line: 337, baseType: !2433, size: 64, offset: 576)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!13, !327, !2426}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2404, file: !232, line: 339, baseType: !2437, size: 64, offset: 640)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{!13, !479, !2440}
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !480, file: !227, line: 1199, baseType: !2442, size: 64, offset: 512)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2444)
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !232, line: 430, size: 704, elements: !2445)
!2445 = !{!2446, !2452, !2453, !2457, !2458, !2459, !2474, !2497, !2501, !2502, !2525}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2444, file: !232, line: 431, baseType: !2447, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{!13, !479, !13, !13, !2450}
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1115)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2444, file: !232, line: 432, baseType: !2298, size: 64, offset: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2444, file: !232, line: 433, baseType: !2454, size: 64, offset: 128)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!13, !479, !18}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2444, file: !232, line: 434, baseType: !2454, size: 64, offset: 192)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2444, file: !232, line: 435, baseType: !2298, size: 64, offset: 256)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2444, file: !232, line: 436, baseType: !2460, size: 64, offset: 320)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{!13, !479, !13, !2463}
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !232, line: 417, size: 256, elements: !2465)
!2465 = !{!2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2464, file: !232, line: 418, baseType: !13, size: 32)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2464, file: !232, line: 419, baseType: !18, size: 32, offset: 32)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2464, file: !232, line: 420, baseType: !18, size: 32, offset: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2464, file: !232, line: 422, baseType: !18, size: 32, offset: 96)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2464, file: !232, line: 423, baseType: !18, size: 32, offset: 128)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2464, file: !232, line: 424, baseType: !18, size: 32, offset: 160)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2464, file: !232, line: 425, baseType: !18, size: 32, offset: 192)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2464, file: !232, line: 426, baseType: !18, size: 32, offset: 224)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2444, file: !232, line: 437, baseType: !2475, size: 64, offset: 384)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!13, !479, !2354, !2478}
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !232, line: 345, size: 960, elements: !2480)
!2480 = !{!2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2479, file: !232, line: 346, baseType: !13, size: 32)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2479, file: !232, line: 347, baseType: !400, size: 64, offset: 64)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2479, file: !232, line: 348, baseType: !400, size: 64, offset: 128)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2479, file: !232, line: 349, baseType: !400, size: 64, offset: 192)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2479, file: !232, line: 350, baseType: !400, size: 64, offset: 256)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2479, file: !232, line: 351, baseType: !400, size: 64, offset: 320)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2479, file: !232, line: 352, baseType: !400, size: 64, offset: 384)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2479, file: !232, line: 353, baseType: !665, size: 64, offset: 448)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2479, file: !232, line: 355, baseType: !665, size: 64, offset: 512)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2479, file: !232, line: 356, baseType: !13, size: 32, offset: 576)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2479, file: !232, line: 357, baseType: !13, size: 32, offset: 608)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2479, file: !232, line: 358, baseType: !400, size: 64, offset: 640)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2479, file: !232, line: 359, baseType: !400, size: 64, offset: 704)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2479, file: !232, line: 360, baseType: !400, size: 64, offset: 768)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2479, file: !232, line: 361, baseType: !665, size: 64, offset: 832)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2479, file: !232, line: 362, baseType: !13, size: 32, offset: 896)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2444, file: !232, line: 438, baseType: !2498, size: 64, offset: 448)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!13, !479, !2440, !2478}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2444, file: !232, line: 440, baseType: !2475, size: 64, offset: 512)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2444, file: !232, line: 441, baseType: !2503, size: 64, offset: 576)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!13, !479, !2506}
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !232, line: 411, size: 1408, elements: !2508)
!2508 = !{!2509, !2510}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2507, file: !232, line: 412, baseType: !18, size: 32)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2507, file: !232, line: 413, baseType: !2511, size: 1344, offset: 64)
!2511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2512, size: 1344, elements: !568)
!2512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !232, line: 397, size: 448, elements: !2513)
!2513 = !{!2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2524}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2512, file: !232, line: 398, baseType: !18, size: 32)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2512, file: !232, line: 399, baseType: !18, size: 32, offset: 32)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2512, file: !232, line: 401, baseType: !18, size: 32, offset: 64)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2512, file: !232, line: 402, baseType: !18, size: 32, offset: 96)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2512, file: !232, line: 403, baseType: !18, size: 32, offset: 128)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2512, file: !232, line: 404, baseType: !18, size: 32, offset: 160)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2512, file: !232, line: 405, baseType: !18, size: 32, offset: 192)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2512, file: !232, line: 406, baseType: !402, size: 64, offset: 256)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2512, file: !232, line: 407, baseType: !2523, size: 64, offset: 320)
!2523 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !37, line: 132, baseType: !400)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2512, file: !232, line: 408, baseType: !2523, size: 64, offset: 384)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2444, file: !232, line: 442, baseType: !2454, size: 64, offset: 640)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !480, file: !227, line: 1200, baseType: !2527, size: 64, offset: 576)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2529)
!2529 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !227, line: 54, flags: DIFlagFwdDecl)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !480, file: !227, line: 1201, baseType: !51, size: 64, offset: 640)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !480, file: !227, line: 1202, baseType: !51, size: 64, offset: 704)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !480, file: !227, line: 1203, baseType: !51, size: 64, offset: 768)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !480, file: !227, line: 1204, baseType: !362, size: 64, offset: 832)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !480, file: !227, line: 1205, baseType: !797, size: 320, offset: 896)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !480, file: !227, line: 1206, baseType: !13, size: 32, offset: 1216)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !480, file: !227, line: 1207, baseType: !61, size: 32, offset: 1248)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !480, file: !227, line: 1209, baseType: !33, size: 64, offset: 1280)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !480, file: !227, line: 1211, baseType: !2539, size: 64, offset: 1344)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2542)
!2542 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !227, line: 1211, flags: DIFlagFwdDecl)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !480, file: !227, line: 1223, baseType: !2544, size: 64, offset: 1408)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !379, line: 34, size: 64, elements: !2545)
!2545 = !{!2546}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2544, file: !379, line: 35, baseType: !382, size: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !480, file: !227, line: 1224, baseType: !109, size: 128, offset: 1472)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !480, file: !227, line: 1225, baseType: !2549, size: 64, offset: 1600)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2551, line: 40, size: 7424, elements: !2552)
!2551 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2552 = !{!2553, !2555, !2556, !2559, !2563, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2590, !2591}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2550, file: !2551, line: 41, baseType: !2554, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !37, line: 131, baseType: !400)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2550, file: !2551, line: 42, baseType: !2554, size: 64, offset: 64)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2550, file: !2551, line: 43, baseType: !2557, size: 64, offset: 128)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !10, line: 1453, flags: DIFlagFwdDecl)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2550, file: !2551, line: 44, baseType: !2560, size: 64, offset: 192)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2562, line: 74, flags: DIFlagFwdDecl)
!2562 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2550, file: !2551, line: 45, baseType: !2564, size: 64, offset: 256)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2551, line: 45, flags: DIFlagFwdDecl)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2550, file: !2551, line: 46, baseType: !51, size: 64, offset: 320)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2550, file: !2551, line: 47, baseType: !856, size: 8, offset: 384)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2550, file: !2551, line: 48, baseType: !95, size: 8, offset: 392)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2550, file: !2551, line: 49, baseType: !856, size: 8, offset: 400)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2550, file: !2551, line: 50, baseType: !856, size: 8, offset: 408)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2550, file: !2551, line: 51, baseType: !484, size: 32, offset: 416)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2550, file: !2551, line: 52, baseType: !61, size: 32, offset: 448)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2550, file: !2551, line: 53, baseType: !71, size: 32, offset: 480)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2550, file: !2551, line: 54, baseType: !327, size: 64, offset: 512)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2550, file: !2551, line: 55, baseType: !33, size: 64, offset: 576)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2550, file: !2551, line: 56, baseType: !33, size: 64, offset: 640)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2550, file: !2551, line: 57, baseType: !2578, size: 64, offset: 704)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2580)
!2580 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !2551, line: 57, flags: DIFlagFwdDecl)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2550, file: !2551, line: 58, baseType: !668, size: 256, offset: 768)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2550, file: !2551, line: 60, baseType: !13, size: 32, offset: 1024)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2550, file: !2551, line: 61, baseType: !13, size: 32, offset: 1056)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2550, file: !2551, line: 62, baseType: !533, size: 64, offset: 1088)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2550, file: !2551, line: 65, baseType: !668, size: 256, offset: 1152)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2550, file: !2551, line: 66, baseType: !479, size: 64, offset: 1408)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2550, file: !2551, line: 68, baseType: !2588, size: 64, offset: 1472)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !2551, line: 68, flags: DIFlagFwdDecl)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2550, file: !2551, line: 72, baseType: !856, size: 8, offset: 1536)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2550, file: !2551, line: 77, baseType: !2592, size: 5824, offset: 1600)
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !169, line: 705, size: 5824, elements: !2593)
!2593 = !{!2594, !2595, !2597, !2600, !2601, !2654, !2724, !2725, !2726, !2727, !2728, !2735, !2895, !2908, !2918, !2922, !2924, !2925, !2926, !2930, !2937, !2938, !2941, !2944, !2948, !2951, !2952, !2953, !2954, !2955, !2956, !2986, !2987, !2988, !2991, !2994, !3003, !3004, !3005, !3006, !3007, !3008}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2592, file: !169, line: 706, baseType: !527, size: 512)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2592, file: !169, line: 707, baseType: !2596, size: 64, offset: 512)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2592, file: !169, line: 709, baseType: !2598, size: 64, offset: 576)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !169, line: 37, flags: DIFlagFwdDecl)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2592, file: !169, line: 711, baseType: !30, size: 64, offset: 640)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2592, file: !169, line: 712, baseType: !2602, size: 64, offset: 704)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2604)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !169, line: 89, size: 384, elements: !2605)
!2605 = !{!2606, !2607, !2608, !2614, !2619, !2623}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2604, file: !169, line: 90, baseType: !30, size: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2604, file: !169, line: 91, baseType: !613, size: 64, offset: 64)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2604, file: !169, line: 92, baseType: !2609, size: 64, offset: 128)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{!13, !2612, !563}
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2592)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2604, file: !169, line: 93, baseType: !2615, size: 64, offset: 192)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!468, !2612, !2618, !1052, !1053}
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2604, file: !169, line: 95, baseType: !2620, size: 64, offset: 256)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DISubroutineType(types: !2622)
!2622 = !{null, !2596}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2604, file: !169, line: 97, baseType: !2624, size: 64, offset: 320)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2626)
!2626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !181, line: 286, size: 1472, elements: !2627)
!2627 = !{!2628, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2626, file: !181, line: 287, baseType: !2629, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = !DISubroutineType(types: !2631)
!2631 = !{!13, !2596}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2626, file: !181, line: 288, baseType: !2620, size: 64, offset: 64)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2626, file: !181, line: 289, baseType: !2629, size: 64, offset: 128)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2626, file: !181, line: 290, baseType: !2629, size: 64, offset: 192)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2626, file: !181, line: 291, baseType: !2629, size: 64, offset: 256)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2626, file: !181, line: 292, baseType: !2629, size: 64, offset: 320)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2626, file: !181, line: 293, baseType: !2629, size: 64, offset: 384)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2626, file: !181, line: 294, baseType: !2629, size: 64, offset: 448)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2626, file: !181, line: 295, baseType: !2629, size: 64, offset: 512)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2626, file: !181, line: 296, baseType: !2629, size: 64, offset: 576)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2626, file: !181, line: 297, baseType: !2629, size: 64, offset: 640)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2626, file: !181, line: 298, baseType: !2629, size: 64, offset: 704)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2626, file: !181, line: 299, baseType: !2629, size: 64, offset: 768)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2626, file: !181, line: 300, baseType: !2629, size: 64, offset: 832)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2626, file: !181, line: 301, baseType: !2629, size: 64, offset: 896)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2626, file: !181, line: 302, baseType: !2629, size: 64, offset: 960)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2626, file: !181, line: 303, baseType: !2629, size: 64, offset: 1024)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2626, file: !181, line: 304, baseType: !2629, size: 64, offset: 1088)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2626, file: !181, line: 305, baseType: !2629, size: 64, offset: 1152)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2626, file: !181, line: 306, baseType: !2629, size: 64, offset: 1216)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2626, file: !181, line: 307, baseType: !2629, size: 64, offset: 1280)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2626, file: !181, line: 308, baseType: !2629, size: 64, offset: 1344)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2626, file: !181, line: 309, baseType: !2629, size: 64, offset: 1408)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2592, file: !169, line: 714, baseType: !2655, size: 64, offset: 768)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2657)
!2657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2658, line: 80, size: 1344, elements: !2659)
!2658 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2659 = !{!2660, !2661, !2662, !2663, !2664, !2665, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2723}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2657, file: !2658, line: 81, baseType: !30, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2657, file: !2658, line: 82, baseType: !30, size: 64, offset: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2657, file: !2658, line: 83, baseType: !613, size: 64, offset: 128)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2657, file: !2658, line: 84, baseType: !613, size: 64, offset: 192)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2657, file: !2658, line: 85, baseType: !613, size: 64, offset: 256)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2657, file: !2658, line: 87, baseType: !2666, size: 64, offset: 320)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!13, !2596, !2669}
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !163, line: 96, size: 1152, elements: !2671)
!2671 = !{!2672, !2673, !2674, !2675, !2676, !2677, !2678, !2682, !2686, !2687, !2688, !2689, !2690, !2698, !2699, !2700, !2701, !2702, !2703}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2670, file: !163, line: 97, baseType: !30, size: 64)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2670, file: !163, line: 98, baseType: !2655, size: 64, offset: 64)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2670, file: !163, line: 100, baseType: !514, size: 64, offset: 128)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2670, file: !163, line: 101, baseType: !30, size: 64, offset: 192)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2670, file: !163, line: 103, baseType: !856, size: 8, offset: 256)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2670, file: !163, line: 104, baseType: !162, size: 32, offset: 288)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2670, file: !163, line: 106, baseType: !2679, size: 64, offset: 320)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2681)
!2681 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !163, line: 106, flags: DIFlagFwdDecl)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2670, file: !163, line: 107, baseType: !2683, size: 64, offset: 384)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2685)
!2685 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !163, line: 107, flags: DIFlagFwdDecl)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2670, file: !163, line: 109, baseType: !2629, size: 64, offset: 448)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2670, file: !163, line: 110, baseType: !2620, size: 64, offset: 512)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2670, file: !163, line: 111, baseType: !2629, size: 64, offset: 576)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2670, file: !163, line: 112, baseType: !2620, size: 64, offset: 640)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2670, file: !163, line: 113, baseType: !2691, size: 64, offset: 704)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!13, !2596, !2694}
!2694 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !181, line: 60, baseType: !2695)
!2695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !181, line: 58, size: 32, elements: !2696)
!2696 = !{!2697}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2695, file: !181, line: 59, baseType: !13, size: 32)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2670, file: !163, line: 114, baseType: !2629, size: 64, offset: 768)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2670, file: !163, line: 115, baseType: !613, size: 64, offset: 832)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2670, file: !163, line: 116, baseType: !613, size: 64, offset: 896)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2670, file: !163, line: 118, baseType: !2624, size: 64, offset: 960)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2670, file: !163, line: 119, baseType: !2620, size: 64, offset: 1024)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2670, file: !163, line: 121, baseType: !2704, size: 64, offset: 1088)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !163, line: 121, flags: DIFlagFwdDecl)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2657, file: !2658, line: 88, baseType: !2609, size: 64, offset: 384)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2657, file: !2658, line: 89, baseType: !2629, size: 64, offset: 448)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2657, file: !2658, line: 90, baseType: !2620, size: 64, offset: 512)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2657, file: !2658, line: 91, baseType: !2620, size: 64, offset: 576)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2657, file: !2658, line: 92, baseType: !2620, size: 64, offset: 640)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2657, file: !2658, line: 94, baseType: !2629, size: 64, offset: 704)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2657, file: !2658, line: 95, baseType: !2629, size: 64, offset: 768)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2657, file: !2658, line: 97, baseType: !2691, size: 64, offset: 832)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2657, file: !2658, line: 98, baseType: !2629, size: 64, offset: 896)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2657, file: !2658, line: 100, baseType: !2629, size: 64, offset: 960)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2657, file: !2658, line: 102, baseType: !2629, size: 64, offset: 1024)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2657, file: !2658, line: 103, baseType: !2620, size: 64, offset: 1088)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2657, file: !2658, line: 105, baseType: !2624, size: 64, offset: 1152)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2657, file: !2658, line: 107, baseType: !2720, size: 64, offset: 1216)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2722)
!2722 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2658, line: 107, flags: DIFlagFwdDecl)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2657, file: !2658, line: 109, baseType: !856, size: 8, offset: 1280)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2592, file: !169, line: 715, baseType: !2669, size: 64, offset: 832)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2592, file: !169, line: 717, baseType: !33, size: 64, offset: 896)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2592, file: !169, line: 719, baseType: !33, size: 64, offset: 960)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2592, file: !169, line: 721, baseType: !668, size: 256, offset: 1024)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2592, file: !169, line: 725, baseType: !2729, size: 448, offset: 1280)
!2729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !169, line: 517, size: 448, elements: !2730)
!2730 = !{!2731, !2732, !2733, !2734}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2729, file: !169, line: 518, baseType: !109, size: 128)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2729, file: !169, line: 519, baseType: !109, size: 128, offset: 128)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2729, file: !169, line: 520, baseType: !109, size: 128, offset: 256)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2729, file: !169, line: 521, baseType: !168, size: 32, offset: 384)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2592, file: !169, line: 726, baseType: !2736, size: 2496, offset: 1728)
!2736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !181, line: 663, size: 2496, elements: !2737)
!2737 = !{!2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2782, !2783, !2784, !2785, !2786, !2787, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2888, !2892}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2736, file: !181, line: 664, baseType: !2694, size: 32)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2736, file: !181, line: 665, baseType: !18, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2736, file: !181, line: 666, baseType: !18, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2736, file: !181, line: 667, baseType: !856, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2736, file: !181, line: 668, baseType: !856, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2736, file: !181, line: 669, baseType: !856, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2736, file: !181, line: 670, baseType: !856, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2736, file: !181, line: 671, baseType: !856, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2736, file: !181, line: 672, baseType: !856, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2736, file: !181, line: 673, baseType: !856, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2736, file: !181, line: 674, baseType: !856, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2736, file: !181, line: 675, baseType: !396, size: 32, offset: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2736, file: !181, line: 676, baseType: !71, size: 32, offset: 96)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2736, file: !181, line: 678, baseType: !109, size: 128, offset: 128)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2736, file: !181, line: 679, baseType: !1027, size: 256, offset: 256)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2736, file: !181, line: 680, baseType: !2754, size: 64, offset: 512)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2756, line: 43, size: 1536, elements: !2757)
!2756 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2757 = !{!2758, !2759, !2760, !2761, !2762, !2765, !2766, !2767, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2755, file: !2756, line: 44, baseType: !30, size: 64)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2755, file: !2756, line: 45, baseType: !13, size: 32, offset: 64)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2755, file: !2756, line: 46, baseType: !109, size: 128, offset: 128)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2755, file: !2756, line: 47, baseType: !71, size: 32, offset: 256)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2755, file: !2756, line: 48, baseType: !2763, size: 64, offset: 320)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !181, line: 629, flags: DIFlagFwdDecl)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2755, file: !2756, line: 49, baseType: !2129, size: 320, offset: 384)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2755, file: !2756, line: 50, baseType: !51, size: 64, offset: 704)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2755, file: !2756, line: 51, baseType: !2768, size: 64, offset: 768)
!2768 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2769, line: 29, baseType: !665)
!2769 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2755, file: !2756, line: 52, baseType: !2768, size: 64, offset: 832)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2755, file: !2756, line: 53, baseType: !2768, size: 64, offset: 896)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2755, file: !2756, line: 54, baseType: !2768, size: 64, offset: 960)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2755, file: !2756, line: 55, baseType: !2768, size: 64, offset: 1024)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2755, file: !2756, line: 56, baseType: !51, size: 64, offset: 1088)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2755, file: !2756, line: 57, baseType: !51, size: 64, offset: 1152)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2755, file: !2756, line: 58, baseType: !51, size: 64, offset: 1216)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2755, file: !2756, line: 59, baseType: !51, size: 64, offset: 1280)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2755, file: !2756, line: 60, baseType: !51, size: 64, offset: 1344)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2755, file: !2756, line: 61, baseType: !2596, size: 64, offset: 1408)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2755, file: !2756, line: 62, baseType: !856, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2755, file: !2756, line: 63, baseType: !856, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2736, file: !181, line: 681, baseType: !856, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2736, file: !181, line: 682, baseType: !856, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2736, file: !181, line: 683, baseType: !856, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2736, file: !181, line: 684, baseType: !18, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2736, file: !181, line: 685, baseType: !18, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2736, file: !181, line: 690, baseType: !2788, size: 512, offset: 640)
!2788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !176, line: 118, size: 512, elements: !2789)
!2789 = !{!2790, !2796, !2797, !2802, !2850, !2851, !2852, !2853}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2788, file: !176, line: 119, baseType: !2791, size: 256)
!2791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2792, line: 9, size: 256, elements: !2793)
!2792 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2793 = !{!2794, !2795}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2791, file: !2792, line: 10, baseType: !789, size: 192, align: 64)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2791, file: !2792, line: 11, baseType: !2768, size: 64, offset: 192)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2788, file: !176, line: 120, baseType: !2768, size: 64, offset: 256)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2788, file: !176, line: 121, baseType: !2798, size: 64, offset: 320)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!175, !2801}
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2788, file: !176, line: 122, baseType: !2803, size: 64, offset: 384)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !176, line: 159, size: 512, align: 512, elements: !2805)
!2805 = !{!2806, !2831, !2832, !2835, !2840, !2841, !2845, !2849}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2804, file: !176, line: 160, baseType: !2807, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !176, line: 215, size: 4608, align: 512, elements: !2809)
!2809 = !{!2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2808, file: !176, line: 216, baseType: !673, size: 32)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2808, file: !176, line: 217, baseType: !18, size: 32, offset: 32)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2808, file: !176, line: 218, baseType: !18, size: 32, offset: 64)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2808, file: !176, line: 219, baseType: !18, size: 32, offset: 96)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2808, file: !176, line: 220, baseType: !18, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2808, file: !176, line: 221, baseType: !18, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2808, file: !176, line: 222, baseType: !18, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2808, file: !176, line: 223, baseType: !18, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2808, file: !176, line: 224, baseType: !18, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2808, file: !176, line: 226, baseType: !18, size: 32, offset: 160)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2808, file: !176, line: 227, baseType: !38, size: 16, offset: 192)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2808, file: !176, line: 228, baseType: !38, size: 16, offset: 208)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2808, file: !176, line: 229, baseType: !18, size: 32, offset: 224)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2808, file: !176, line: 235, baseType: !2768, size: 64, offset: 256)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2808, file: !176, line: 236, baseType: !2801, size: 64, offset: 320)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2808, file: !176, line: 237, baseType: !2768, size: 64, offset: 384)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2808, file: !176, line: 238, baseType: !2801, size: 64, offset: 448)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2808, file: !176, line: 239, baseType: !2828, size: 4096, align: 512, offset: 512)
!2828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2804, size: 4096, align: 512, elements: !2829)
!2829 = !{!2830}
!2830 = !DISubrange(count: 8)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2804, file: !176, line: 161, baseType: !18, size: 32, offset: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2804, file: !176, line: 162, baseType: !2833, size: 32, offset: 96)
!2833 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !37, line: 32, baseType: !2834)
!2834 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !49, line: 96, baseType: !13)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2804, file: !176, line: 163, baseType: !2836, size: 32, offset: 128)
!2836 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !369, line: 274, baseType: !2837)
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !369, line: 274, size: 32, elements: !2838)
!2838 = !{!2839}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2837, file: !369, line: 274, baseType: !373, size: 32)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2804, file: !176, line: 164, baseType: !2801, size: 64, offset: 192)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2804, file: !176, line: 165, baseType: !2842, size: 128, offset: 256)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2792, line: 14, size: 128, elements: !2843)
!2843 = !{!2844}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2842, file: !2792, line: 15, baseType: !1495, size: 128)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2804, file: !176, line: 166, baseType: !2846, size: 64, offset: 384)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{!2768}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2804, file: !176, line: 167, baseType: !2768, size: 64, offset: 448)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2788, file: !176, line: 123, baseType: !95, size: 8, offset: 448)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2788, file: !176, line: 124, baseType: !95, size: 8, offset: 456)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2788, file: !176, line: 125, baseType: !95, size: 8, offset: 464)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2788, file: !176, line: 126, baseType: !95, size: 8, offset: 472)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2736, file: !181, line: 691, baseType: !400, size: 64, offset: 1152)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2736, file: !181, line: 692, baseType: !988, size: 256, offset: 1216)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2736, file: !181, line: 693, baseType: !66, size: 192, offset: 1472)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2736, file: !181, line: 694, baseType: !2763, size: 64, offset: 1664)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2736, file: !181, line: 695, baseType: !61, size: 32, offset: 1728)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2736, file: !181, line: 696, baseType: !61, size: 32, offset: 1760)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2736, file: !181, line: 697, baseType: !18, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2736, file: !181, line: 698, baseType: !18, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2736, file: !181, line: 699, baseType: !18, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2736, file: !181, line: 700, baseType: !18, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2736, file: !181, line: 701, baseType: !18, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2736, file: !181, line: 702, baseType: !18, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2736, file: !181, line: 703, baseType: !856, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2736, file: !181, line: 704, baseType: !18, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2736, file: !181, line: 705, baseType: !18, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2736, file: !181, line: 706, baseType: !18, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2736, file: !181, line: 707, baseType: !18, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2736, file: !181, line: 708, baseType: !18, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2736, file: !181, line: 709, baseType: !18, size: 32, offset: 1824)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2736, file: !181, line: 710, baseType: !180, size: 32, offset: 1856)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2736, file: !181, line: 711, baseType: !188, size: 32, offset: 1888)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2736, file: !181, line: 712, baseType: !188, size: 32, offset: 1920)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2736, file: !181, line: 713, baseType: !13, size: 32, offset: 1952)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2736, file: !181, line: 714, baseType: !13, size: 32, offset: 1984)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2736, file: !181, line: 715, baseType: !400, size: 64, offset: 2048)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2736, file: !181, line: 716, baseType: !400, size: 64, offset: 2112)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2736, file: !181, line: 717, baseType: !400, size: 64, offset: 2176)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2736, file: !181, line: 718, baseType: !400, size: 64, offset: 2240)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2736, file: !181, line: 720, baseType: !2883, size: 64, offset: 2304)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !181, line: 632, size: 64, elements: !2885)
!2885 = !{!2886, !2887}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2884, file: !181, line: 633, baseType: !71, size: 32)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2884, file: !181, line: 634, baseType: !18, size: 32, offset: 32)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2736, file: !181, line: 721, baseType: !2889, size: 64, offset: 2368)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{null, !2596, !782}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2736, file: !181, line: 722, baseType: !2893, size: 64, offset: 2432)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !181, line: 722, flags: DIFlagFwdDecl)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2592, file: !169, line: 727, baseType: !2896, size: 64, offset: 4224)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !181, line: 742, size: 1792, elements: !2898)
!2898 = !{!2899, !2900, !2901, !2905, !2906, !2907}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2897, file: !181, line: 743, baseType: !2626, size: 1472)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2897, file: !181, line: 744, baseType: !2629, size: 64, offset: 1472)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2897, file: !181, line: 745, baseType: !2902, size: 64, offset: 1536)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{null, !2596, !856}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2897, file: !181, line: 746, baseType: !2629, size: 64, offset: 1600)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2897, file: !181, line: 747, baseType: !2620, size: 64, offset: 1664)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2897, file: !181, line: 748, baseType: !2620, size: 64, offset: 1728)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2592, file: !169, line: 736, baseType: !2909, size: 128, offset: 4288)
!2909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !169, line: 529, size: 128, elements: !2910)
!2910 = !{!2911, !2915}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2909, file: !169, line: 531, baseType: !2912, size: 64)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !2914, line: 13, flags: DIFlagFwdDecl)
!2914 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2909, file: !169, line: 532, baseType: !2916, size: 64, offset: 64)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !169, line: 49, flags: DIFlagFwdDecl)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2592, file: !169, line: 738, baseType: !2919, size: 64, offset: 4416)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2921)
!2921 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !169, line: 738, flags: DIFlagFwdDecl)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2592, file: !169, line: 740, baseType: !2923, size: 64, offset: 4480)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2592, file: !169, line: 741, baseType: !400, size: 64, offset: 4544)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2592, file: !169, line: 746, baseType: !400, size: 64, offset: 4608)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2592, file: !169, line: 747, baseType: !2927, size: 64, offset: 4672)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2929)
!2929 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !169, line: 747, flags: DIFlagFwdDecl)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2592, file: !169, line: 749, baseType: !2931, size: 64, offset: 4736)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !169, line: 428, size: 128, elements: !2933)
!2933 = !{!2934, !2935, !2936}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2932, file: !169, line: 433, baseType: !18, size: 32)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !2932, file: !169, line: 434, baseType: !18, size: 32, offset: 32)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2932, file: !169, line: 435, baseType: !51, size: 64, offset: 64)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2592, file: !169, line: 751, baseType: !109, size: 128, offset: 4800)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2592, file: !169, line: 762, baseType: !2939, size: 64, offset: 4928)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !169, line: 762, flags: DIFlagFwdDecl)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2592, file: !169, line: 770, baseType: !2942, offset: 4992)
!2942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2943, line: 5, elements: !1321)
!2943 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2592, file: !169, line: 772, baseType: !2945, size: 64, offset: 4992)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2947, line: 18, flags: DIFlagFwdDecl)
!2947 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2592, file: !169, line: 773, baseType: !2949, size: 64, offset: 5056)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2658, line: 22, flags: DIFlagFwdDecl)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2592, file: !169, line: 776, baseType: !13, size: 32, offset: 5120)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2592, file: !169, line: 778, baseType: !484, size: 32, offset: 5152)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2592, file: !169, line: 779, baseType: !396, size: 32, offset: 5184)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2592, file: !169, line: 781, baseType: !71, size: 32, offset: 5216)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2592, file: !169, line: 782, baseType: !109, size: 128, offset: 5248)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2592, file: !169, line: 784, baseType: !2957, size: 64, offset: 5376)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2959)
!2959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2960, line: 52, size: 768, elements: !2961)
!2960 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!2961 = !{!2962, !2963, !2964, !2965, !2966, !2970, !2974, !2975, !2976, !2977, !2981, !2985}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2959, file: !2960, line: 53, baseType: !30, size: 64)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2959, file: !2960, line: 55, baseType: !613, size: 64, offset: 64)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2959, file: !2960, line: 56, baseType: !613, size: 64, offset: 128)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2959, file: !2960, line: 58, baseType: !2609, size: 64, offset: 192)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2959, file: !2960, line: 59, baseType: !2967, size: 64, offset: 256)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!468, !2612, !2618}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2959, file: !2960, line: 61, baseType: !2971, size: 64, offset: 320)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{null, !2957}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2959, file: !2960, line: 62, baseType: !2620, size: 64, offset: 384)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2959, file: !2960, line: 64, baseType: !2629, size: 64, offset: 448)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2959, file: !2960, line: 66, baseType: !1753, size: 64, offset: 512)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2959, file: !2960, line: 67, baseType: !2978, size: 64, offset: 576)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{!1416, !2612}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2959, file: !2960, line: 69, baseType: !2982, size: 64, offset: 640)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{null, !2612, !1052, !1053}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2959, file: !2960, line: 71, baseType: !2624, size: 64, offset: 704)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2592, file: !169, line: 785, baseType: !613, size: 64, offset: 5440)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2592, file: !169, line: 787, baseType: !2620, size: 64, offset: 5504)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2592, file: !169, line: 788, baseType: !2989, size: 64, offset: 5568)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !169, line: 46, flags: DIFlagFwdDecl)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2592, file: !169, line: 789, baseType: !2992, size: 64, offset: 5632)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !169, line: 48, flags: DIFlagFwdDecl)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2592, file: !169, line: 791, baseType: !2995, size: 64, offset: 5696)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !169, line: 597, size: 128, elements: !2997)
!2997 = !{!2998, !2999, !3000, !3001, !3002}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !2996, file: !169, line: 598, baseType: !201, size: 32)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !2996, file: !169, line: 599, baseType: !210, size: 32, offset: 32)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !2996, file: !169, line: 600, baseType: !215, size: 32, offset: 64)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !2996, file: !169, line: 601, baseType: !856, size: 8, offset: 96)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !2996, file: !169, line: 602, baseType: !856, size: 8, offset: 104)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2592, file: !169, line: 793, baseType: !220, size: 32, offset: 5760)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2592, file: !169, line: 795, baseType: !856, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2592, file: !169, line: 796, baseType: !856, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2592, file: !169, line: 797, baseType: !856, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2592, file: !169, line: 798, baseType: !856, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2592, file: !169, line: 799, baseType: !856, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !480, file: !227, line: 1226, baseType: !3010, size: 64, offset: 1664)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !227, line: 1226, flags: DIFlagFwdDecl)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !480, file: !227, line: 1227, baseType: !3013, size: 64, offset: 1728)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !238, line: 163, size: 6848, elements: !3015)
!3015 = !{!3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3062, !3063, !3064, !3065, !3067, !3068, !3069}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3014, file: !238, line: 164, baseType: !400, size: 64)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3014, file: !238, line: 165, baseType: !789, size: 192, align: 64, offset: 64)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !3014, file: !238, line: 166, baseType: !109, size: 128, offset: 256)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3014, file: !238, line: 167, baseType: !51, size: 64, offset: 384)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !3014, file: !238, line: 168, baseType: !51, size: 64, offset: 448)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3014, file: !238, line: 170, baseType: !1881, size: 32, offset: 512)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3014, file: !238, line: 171, baseType: !18, size: 32, offset: 544)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !3014, file: !238, line: 172, baseType: !18, size: 32, offset: 576)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !3014, file: !238, line: 173, baseType: !18, size: 32, offset: 608)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !3014, file: !238, line: 173, baseType: !18, size: 32, offset: 640)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !3014, file: !238, line: 179, baseType: !659, size: 64, offset: 704)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !3014, file: !238, line: 184, baseType: !51, size: 64, offset: 768)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !3014, file: !238, line: 186, baseType: !3029, size: 4672, offset: 832)
!3029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !238, line: 105, size: 4672, elements: !3030)
!3030 = !{!3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3055, !3056, !3057, !3058, !3059, !3060, !3061}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !3029, file: !238, line: 106, baseType: !3013, size: 64)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3029, file: !238, line: 108, baseType: !51, size: 64, offset: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !3029, file: !238, line: 109, baseType: !51, size: 64, offset: 128)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !3029, file: !238, line: 111, baseType: !109, size: 128, offset: 192)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !3029, file: !238, line: 112, baseType: !109, size: 128, offset: 320)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !3029, file: !238, line: 113, baseType: !109, size: 128, offset: 448)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !3029, file: !238, line: 114, baseType: !109, size: 128, offset: 576)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3029, file: !238, line: 115, baseType: !71, size: 32, offset: 704)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !3029, file: !238, line: 117, baseType: !61, size: 32, offset: 736)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !3029, file: !238, line: 118, baseType: !1384, size: 1280, offset: 768)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !3029, file: !238, line: 120, baseType: !51, size: 64, offset: 2048)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !3029, file: !238, line: 121, baseType: !51, size: 64, offset: 2112)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !3029, file: !238, line: 122, baseType: !51, size: 64, offset: 2176)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !3029, file: !238, line: 123, baseType: !51, size: 64, offset: 2240)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !3029, file: !238, line: 124, baseType: !51, size: 64, offset: 2304)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !3029, file: !238, line: 132, baseType: !51, size: 64, offset: 2368)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !3029, file: !238, line: 133, baseType: !51, size: 64, offset: 2432)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !3029, file: !238, line: 135, baseType: !3049, size: 384, offset: 2496)
!3049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !3050, line: 76, size: 384, elements: !3051)
!3050 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!3051 = !{!3052, !3053, !3054}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3049, file: !3050, line: 78, baseType: !914, size: 320)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3049, file: !3050, line: 80, baseType: !18, size: 32, offset: 320)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3049, file: !3050, line: 81, baseType: !673, size: 32, offset: 352)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !3029, file: !238, line: 136, baseType: !13, size: 32, offset: 2880)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !3029, file: !238, line: 137, baseType: !237, size: 32, offset: 2912)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !3029, file: !238, line: 139, baseType: !71, size: 32, offset: 2944)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !3029, file: !238, line: 140, baseType: !109, size: 128, offset: 3008)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !3029, file: !238, line: 141, baseType: !2186, size: 704, offset: 3136)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !3029, file: !238, line: 142, baseType: !2186, size: 704, offset: 3840)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !3029, file: !238, line: 144, baseType: !109, size: 128, offset: 4544)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !3014, file: !238, line: 187, baseType: !109, size: 128, offset: 5504)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !3014, file: !238, line: 193, baseType: !66, size: 192, offset: 5632)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3014, file: !238, line: 195, baseType: !2596, size: 64, offset: 5824)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3014, file: !238, line: 196, baseType: !3066, size: 512, offset: 5888)
!3066 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !572)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3014, file: !238, line: 197, baseType: !2596, size: 64, offset: 6400)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !3014, file: !238, line: 199, baseType: !2129, size: 320, offset: 6464)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !3014, file: !238, line: 202, baseType: !362, size: 64, offset: 6784)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !480, file: !227, line: 1228, baseType: !3071, size: 64, offset: 1792)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !227, line: 1228, flags: DIFlagFwdDecl)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !480, file: !227, line: 1229, baseType: !724, size: 128, offset: 1856)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !480, file: !227, line: 1230, baseType: !18, size: 32, offset: 1984)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !480, file: !227, line: 1231, baseType: !3076, size: 2496, offset: 2048)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !232, line: 521, size: 2496, elements: !3077)
!3077 = !{!3078, !3079, !3080, !3082, !3114}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3076, file: !232, line: 522, baseType: !18, size: 32)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3076, file: !232, line: 523, baseType: !797, size: 320, offset: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3076, file: !232, line: 524, baseType: !3081, size: 192, offset: 384)
!3081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 192, elements: !568)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3076, file: !232, line: 525, baseType: !3083, size: 1728, offset: 576)
!3083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3084, size: 1728, elements: !568)
!3084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !232, line: 222, size: 576, elements: !3085)
!3085 = !{!3086, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3084, file: !232, line: 223, baseType: !3087, size: 64)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !232, line: 445, size: 256, elements: !3089)
!3089 = !{!3090, !3091, !3104, !3105}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3088, file: !232, line: 446, baseType: !13, size: 32)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3088, file: !232, line: 447, baseType: !3092, size: 64, offset: 64)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3094)
!3094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !232, line: 312, size: 512, elements: !3095)
!3095 = !{!3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3094, file: !232, line: 313, baseType: !2298, size: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3094, file: !232, line: 314, baseType: !2298, size: 64, offset: 64)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3094, file: !232, line: 315, baseType: !2298, size: 64, offset: 128)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3094, file: !232, line: 316, baseType: !2298, size: 64, offset: 192)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3094, file: !232, line: 317, baseType: !2407, size: 64, offset: 256)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3094, file: !232, line: 318, baseType: !2407, size: 64, offset: 320)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3094, file: !232, line: 319, baseType: !2407, size: 64, offset: 384)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3094, file: !232, line: 320, baseType: !2437, size: 64, offset: 448)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3088, file: !232, line: 448, baseType: !514, size: 64, offset: 128)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3088, file: !232, line: 449, baseType: !3087, size: 64, offset: 192)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3084, file: !232, line: 224, baseType: !13, size: 32, offset: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3084, file: !232, line: 226, baseType: !109, size: 128, offset: 128)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3084, file: !232, line: 227, baseType: !51, size: 64, offset: 256)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3084, file: !232, line: 228, baseType: !18, size: 32, offset: 320)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3084, file: !232, line: 229, baseType: !18, size: 32, offset: 352)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3084, file: !232, line: 230, baseType: !2375, size: 64, offset: 384)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3084, file: !232, line: 231, baseType: !2375, size: 64, offset: 448)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3084, file: !232, line: 232, baseType: !33, size: 64, offset: 512)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3076, file: !232, line: 526, baseType: !3115, size: 192, offset: 2304)
!3115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3092, size: 192, elements: !568)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !480, file: !227, line: 1233, baseType: !3117, size: 2368, offset: 4544)
!3117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !227, line: 1184, size: 2368, elements: !3118)
!3118 = !{!3119, !3120, !3121}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3117, file: !227, line: 1185, baseType: !38, size: 16)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3117, file: !227, line: 1186, baseType: !38, size: 16, offset: 16)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3117, file: !227, line: 1187, baseType: !3122, size: 2304, offset: 64)
!3122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3123, size: 2304, elements: !568)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3124, line: 12, size: 768, elements: !3125)
!3124 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3125 = !{!3126, !3134, !3135, !4613, !4614}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3123, file: !3124, line: 13, baseType: !3127, size: 384)
!3127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3128, line: 17, size: 384, elements: !3129)
!3128 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3129 = !{!3130, !3131, !3132, !3133}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3127, file: !3128, line: 18, baseType: !13, size: 32)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3127, file: !3128, line: 19, baseType: !13, size: 32, offset: 32)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3127, file: !3128, line: 20, baseType: !66, size: 192, offset: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3127, file: !3128, line: 22, baseType: !287, size: 128, align: 64, offset: 256)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3123, file: !3124, line: 14, baseType: !1984, size: 64, offset: 384)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3123, file: !3124, line: 15, baseType: !3136, size: 64, offset: 448)
!3136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3137, line: 16, size: 64, elements: !3138)
!3137 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3138 = !{!3139}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3136, file: !3137, line: 17, baseType: !3140, size: 64)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !10, line: 746, size: 58368, elements: !3142)
!3142 = !{!3143, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3223, !3234, !3254, !3258, !3261, !3292, !3293, !3294, !3295, !3306, !3308, !3309, !3310, !3311, !3312, !3313, !3324, !3325, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3342, !3343, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3431, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3479, !3485, !3486, !3487, !3488, !3489, !3490, !3493, !3500, !3505, !3508, !3511, !3514, !3832, !4031, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4069, !4070, !4071, !4080, !4088, !4089, !4090, !4091, !4092, !4097, !4098, !4099, !4102, !4103, !4106, !4109, !4115, !4122, !4125, !4126, !4212, !4213, !4214, !4215, !4216, !4222, !4223, !4224, !4225, !4226, !4227, !4230, !4233, !4234, !4237, !4238, !4239, !4242, !4243, !4244, !4245, !4246, !4247, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4279, !4280, !4286, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4368, !4370, !4371, !4372, !4373, !4374, !4375, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4392, !4393, !4394}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !3141, file: !10, line: 752, baseType: !3144, size: 192)
!3144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !3145, line: 56, size: 192, elements: !3146)
!3145 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!3146 = !{!3147, !3148, !3149, !3150}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3144, file: !3145, line: 57, baseType: !51, size: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !3144, file: !3145, line: 58, baseType: !51, size: 64, offset: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3144, file: !3145, line: 59, baseType: !396, size: 32, offset: 128)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3144, file: !3145, line: 61, baseType: !396, size: 32, offset: 160)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !3141, file: !10, line: 754, baseType: !18, size: 32, offset: 192)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3141, file: !10, line: 767, baseType: !33, size: 64, offset: 256)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3141, file: !10, line: 768, baseType: !711, size: 32, offset: 320)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3141, file: !10, line: 770, baseType: !18, size: 32, offset: 352)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !3141, file: !10, line: 771, baseType: !18, size: 32, offset: 384)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !3141, file: !10, line: 774, baseType: !13, size: 32, offset: 416)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !3141, file: !10, line: 775, baseType: !3158, size: 128, offset: 448)
!3158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !3159, line: 58, size: 128, elements: !3160)
!3159 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!3160 = !{!3161, !3162, !3167, !3168}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !3158, file: !3159, line: 59, baseType: !648, size: 64)
!3162 = !DIDerivedType(tag: DW_TAG_member, scope: !3158, file: !3159, line: 60, baseType: !3163, size: 32, offset: 64)
!3163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3158, file: !3159, line: 60, size: 32, elements: !3164)
!3164 = !{!3165, !3166}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !3163, file: !3159, line: 61, baseType: !18, size: 32)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !3163, file: !3159, line: 62, baseType: !61, size: 32)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !3158, file: !3159, line: 65, baseType: !105, size: 16, offset: 96)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !3158, file: !3159, line: 65, baseType: !105, size: 16, offset: 112)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !3141, file: !10, line: 776, baseType: !18, size: 32, offset: 576)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !3141, file: !10, line: 777, baseType: !51, size: 64, offset: 640)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !3141, file: !10, line: 778, baseType: !3140, size: 64, offset: 704)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !3141, file: !10, line: 787, baseType: !13, size: 32, offset: 768)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !3141, file: !10, line: 788, baseType: !13, size: 32, offset: 800)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3141, file: !10, line: 790, baseType: !13, size: 32, offset: 832)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3141, file: !10, line: 792, baseType: !13, size: 32, offset: 864)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !3141, file: !10, line: 793, baseType: !13, size: 32, offset: 896)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !3141, file: !10, line: 794, baseType: !13, size: 32, offset: 928)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !3141, file: !10, line: 795, baseType: !18, size: 32, offset: 960)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !3141, file: !10, line: 797, baseType: !3180, size: 2048, offset: 1024)
!3180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !10, line: 551, size: 2048, elements: !3181)
!3181 = !{!3182, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3202, !3205, !3206, !3207}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !3180, file: !10, line: 553, baseType: !3183, size: 128)
!3183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !10, line: 411, size: 128, elements: !3184)
!3184 = !{!3185, !3186}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3183, file: !10, line: 412, baseType: !51, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !3183, file: !10, line: 413, baseType: !396, size: 32, offset: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !3180, file: !10, line: 554, baseType: !789, size: 192, align: 64, offset: 128)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3180, file: !10, line: 555, baseType: !400, size: 64, offset: 320)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !3180, file: !10, line: 556, baseType: !400, size: 64, offset: 384)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3180, file: !10, line: 558, baseType: !109, size: 128, offset: 448)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3180, file: !10, line: 559, baseType: !18, size: 32, offset: 576)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !3180, file: !10, line: 561, baseType: !400, size: 64, offset: 640)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3180, file: !10, line: 562, baseType: !400, size: 64, offset: 704)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !3180, file: !10, line: 563, baseType: !400, size: 64, offset: 768)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !3180, file: !10, line: 564, baseType: !400, size: 64, offset: 832)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !3180, file: !10, line: 565, baseType: !665, size: 64, offset: 896)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3180, file: !10, line: 566, baseType: !400, size: 64, offset: 960)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !3180, file: !10, line: 568, baseType: !400, size: 64, offset: 1024)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3180, file: !10, line: 571, baseType: !13, size: 32, offset: 1088)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3180, file: !10, line: 572, baseType: !3201, size: 64, offset: 1152)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !3180, file: !10, line: 574, baseType: !3203, size: 64, offset: 1216)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !10, line: 49, flags: DIFlagFwdDecl)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !3180, file: !10, line: 576, baseType: !3203, size: 64, offset: 1280)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !3180, file: !10, line: 578, baseType: !51, size: 64, offset: 1344)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !3180, file: !10, line: 588, baseType: !3208, size: 512, align: 512, offset: 1536)
!3208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !10, line: 497, size: 512, align: 512, elements: !3209)
!3209 = !{!3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !3208, file: !10, line: 498, baseType: !400, size: 64)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !3208, file: !10, line: 499, baseType: !400, size: 64, offset: 64)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !3208, file: !10, line: 500, baseType: !400, size: 64, offset: 128)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !3208, file: !10, line: 501, baseType: !396, size: 32, offset: 192)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !3208, file: !10, line: 502, baseType: !396, size: 32, offset: 224)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !3208, file: !10, line: 503, baseType: !51, size: 64, offset: 256)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !3208, file: !10, line: 504, baseType: !51, size: 64, offset: 320)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !3208, file: !10, line: 505, baseType: !51, size: 64, offset: 384)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !3208, file: !10, line: 506, baseType: !3219, size: 64, align: 64, offset: 448)
!3219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !10, line: 445, size: 64, align: 64, elements: !3220)
!3220 = !{!3221, !3222}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !3219, file: !10, line: 446, baseType: !18, size: 32)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !3219, file: !10, line: 447, baseType: !18, size: 32, offset: 32)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3141, file: !10, line: 798, baseType: !3224, size: 384, offset: 3072)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !10, line: 592, size: 384, elements: !3225)
!3225 = !{!3226, !3227, !3228, !3229, !3230, !3231, !3232}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !3224, file: !10, line: 593, baseType: !109, size: 128)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3224, file: !10, line: 594, baseType: !51, size: 64, offset: 128)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !3224, file: !10, line: 595, baseType: !51, size: 64, offset: 192)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !3224, file: !10, line: 596, baseType: !18, size: 32, offset: 256)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3224, file: !10, line: 597, baseType: !38, size: 16, offset: 288)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !3224, file: !10, line: 598, baseType: !38, size: 16, offset: 304)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !3224, file: !10, line: 600, baseType: !3233, size: 64, offset: 320)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !3141, file: !10, line: 799, baseType: !3235, size: 1792, offset: 3456)
!3235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !10, line: 610, size: 1792, elements: !3236)
!3236 = !{!3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3235, file: !10, line: 611, baseType: !789, size: 192, align: 64)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !3235, file: !10, line: 618, baseType: !400, size: 64, offset: 192)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !3235, file: !10, line: 619, baseType: !400, size: 64, offset: 256)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !3235, file: !10, line: 620, baseType: !400, size: 64, offset: 320)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !3235, file: !10, line: 621, baseType: !400, size: 64, offset: 384)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !3235, file: !10, line: 622, baseType: !400, size: 64, offset: 448)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !3235, file: !10, line: 629, baseType: !665, size: 64, offset: 512)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3235, file: !10, line: 630, baseType: !400, size: 64, offset: 576)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3235, file: !10, line: 631, baseType: !18, size: 32, offset: 640)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !3235, file: !10, line: 653, baseType: !18, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !3235, file: !10, line: 654, baseType: !18, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !3235, file: !10, line: 655, baseType: !18, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !3235, file: !10, line: 656, baseType: !18, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !3235, file: !10, line: 662, baseType: !2788, size: 512, offset: 704)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !3235, file: !10, line: 671, baseType: !2788, size: 512, offset: 1216)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !3235, file: !10, line: 679, baseType: !3253, size: 64, offset: 1728)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !3141, file: !10, line: 800, baseType: !3255, size: 64, offset: 5248)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3257)
!3257 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !10, line: 800, flags: DIFlagFwdDecl)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !3141, file: !10, line: 809, baseType: !3259, size: 64, offset: 5312)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !10, line: 70, flags: DIFlagFwdDecl)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3141, file: !10, line: 825, baseType: !3262, size: 2048, align: 512, offset: 5632)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !10, line: 509, size: 2048, align: 512, elements: !3263)
!3263 = !{!3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3262, file: !10, line: 511, baseType: !400, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3262, file: !10, line: 512, baseType: !400, size: 64, offset: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3262, file: !10, line: 513, baseType: !400, size: 64, offset: 128)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3262, file: !10, line: 514, baseType: !400, size: 64, offset: 192)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3262, file: !10, line: 515, baseType: !400, size: 64, offset: 256)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3262, file: !10, line: 516, baseType: !400, size: 64, offset: 320)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3262, file: !10, line: 518, baseType: !400, size: 64, offset: 384)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3262, file: !10, line: 519, baseType: !400, size: 64, offset: 448)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3262, file: !10, line: 520, baseType: !665, size: 64, offset: 512)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3262, file: !10, line: 522, baseType: !400, size: 64, offset: 576)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3262, file: !10, line: 523, baseType: !400, size: 64, offset: 640)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3262, file: !10, line: 524, baseType: !665, size: 64, offset: 704)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3262, file: !10, line: 526, baseType: !665, size: 64, offset: 768)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3262, file: !10, line: 527, baseType: !400, size: 64, offset: 832)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3262, file: !10, line: 529, baseType: !400, size: 64, offset: 896)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3262, file: !10, line: 530, baseType: !400, size: 64, offset: 960)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3262, file: !10, line: 531, baseType: !400, size: 64, offset: 1024)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3262, file: !10, line: 532, baseType: !400, size: 64, offset: 1088)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3262, file: !10, line: 533, baseType: !400, size: 64, offset: 1152)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3262, file: !10, line: 535, baseType: !400, size: 64, offset: 1216)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3262, file: !10, line: 536, baseType: !400, size: 64, offset: 1280)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3262, file: !10, line: 537, baseType: !400, size: 64, offset: 1344)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3262, file: !10, line: 538, baseType: !400, size: 64, offset: 1408)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3262, file: !10, line: 539, baseType: !400, size: 64, offset: 1472)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3262, file: !10, line: 540, baseType: !400, size: 64, offset: 1536)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3262, file: !10, line: 541, baseType: !400, size: 64, offset: 1600)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3262, file: !10, line: 542, baseType: !400, size: 64, offset: 1664)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3262, file: !10, line: 543, baseType: !400, size: 64, offset: 1728)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !3141, file: !10, line: 833, baseType: !18, size: 32, offset: 7680)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !3141, file: !10, line: 836, baseType: !18, size: 32, offset: 7712)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !3141, file: !10, line: 837, baseType: !13, size: 32, offset: 7744)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !3141, file: !10, line: 838, baseType: !3296, size: 64, offset: 7808)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3298)
!3298 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !3299, line: 19, baseType: !3300)
!3299 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!3300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !3299, line: 19, size: 64, elements: !3301)
!3301 = !{!3302}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3300, file: !3299, line: 19, baseType: !3303, size: 64)
!3303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 64, elements: !3304)
!3304 = !{!3305}
!3305 = !DISubrange(count: 1)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !3141, file: !10, line: 839, baseType: !3307, size: 64, offset: 7872)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !3141, file: !10, line: 840, baseType: !3298, size: 64, offset: 7936)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !3141, file: !10, line: 841, baseType: !33, size: 64, offset: 8000)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !3141, file: !10, line: 843, baseType: !38, size: 16, offset: 8064)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !3141, file: !10, line: 845, baseType: !38, size: 16, offset: 8080)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !3141, file: !10, line: 848, baseType: !13, size: 32, offset: 8096)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !3141, file: !10, line: 849, baseType: !3314, size: 32, offset: 8128)
!3314 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !10, line: 718, size: 32, elements: !3315)
!3315 = !{!3316, !3323}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3314, file: !10, line: 724, baseType: !3317, size: 32)
!3317 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3314, file: !10, line: 719, size: 32, elements: !3318)
!3318 = !{!3319, !3320, !3321, !3322}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3317, file: !10, line: 720, baseType: !95, size: 8)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3317, file: !10, line: 721, baseType: !95, size: 8, offset: 8)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3317, file: !10, line: 722, baseType: !95, size: 8, offset: 16)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3317, file: !10, line: 723, baseType: !95, size: 8, offset: 24)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3314, file: !10, line: 725, baseType: !396, size: 32)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !3141, file: !10, line: 850, baseType: !109, size: 128, offset: 8192)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !3141, file: !10, line: 851, baseType: !3326, size: 64, offset: 8320)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !10, line: 60, flags: DIFlagFwdDecl)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !3141, file: !10, line: 855, baseType: !51, size: 64, offset: 8384)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !3141, file: !10, line: 856, baseType: !95, size: 8, offset: 8448)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !3141, file: !10, line: 857, baseType: !95, size: 8, offset: 8456)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !3141, file: !10, line: 858, baseType: !13, size: 32, offset: 8480)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !3141, file: !10, line: 859, baseType: !109, size: 128, offset: 8512)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !3141, file: !10, line: 860, baseType: !13, size: 32, offset: 8640)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !3141, file: !10, line: 861, baseType: !109, size: 128, offset: 8704)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !3141, file: !10, line: 873, baseType: !3336, size: 256, offset: 8832)
!3336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !10, line: 376, size: 256, elements: !3337)
!3337 = !{!3338, !3339, !3340, !3341}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3336, file: !10, line: 381, baseType: !51, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3336, file: !10, line: 384, baseType: !402, size: 64, offset: 64)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3336, file: !10, line: 389, baseType: !402, size: 64, offset: 128)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3336, file: !10, line: 392, baseType: !402, size: 64, offset: 192)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3141, file: !10, line: 875, baseType: !109, size: 128, offset: 9088)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !3141, file: !10, line: 877, baseType: !3344, size: 320, offset: 9216)
!3344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3345, line: 86, size: 320, elements: !3346)
!3345 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3346 = !{!3347, !3348, !3349}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3344, file: !3345, line: 87, baseType: !13, size: 32)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3344, file: !3345, line: 88, baseType: !109, size: 128, offset: 64)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3344, file: !3345, line: 89, baseType: !109, size: 128, offset: 192)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !3141, file: !10, line: 878, baseType: !789, size: 192, align: 64, offset: 9536)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3141, file: !10, line: 881, baseType: !1300, size: 64, offset: 9728)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !3141, file: !10, line: 882, baseType: !1300, size: 64, offset: 9792)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !3141, file: !10, line: 884, baseType: !13, size: 32, offset: 9856)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !3141, file: !10, line: 885, baseType: !13, size: 32, offset: 9888)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !3141, file: !10, line: 886, baseType: !13, size: 32, offset: 9920)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !3141, file: !10, line: 888, baseType: !13, size: 32, offset: 9952)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !3141, file: !10, line: 890, baseType: !51, size: 64, offset: 9984)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !3141, file: !10, line: 893, baseType: !18, size: 32, offset: 10048)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !3141, file: !10, line: 896, baseType: !18, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !3141, file: !10, line: 897, baseType: !18, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !3141, file: !10, line: 898, baseType: !18, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !3141, file: !10, line: 899, baseType: !18, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !3141, file: !10, line: 919, baseType: !18, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !3141, file: !10, line: 922, baseType: !18, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !3141, file: !10, line: 923, baseType: !18, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !3141, file: !10, line: 925, baseType: !18, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !3141, file: !10, line: 939, baseType: !18, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3141, file: !10, line: 941, baseType: !18, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !3141, file: !10, line: 944, baseType: !18, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !3141, file: !10, line: 956, baseType: !18, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !3141, file: !10, line: 962, baseType: !18, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !3141, file: !10, line: 966, baseType: !18, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !3141, file: !10, line: 969, baseType: !51, size: 64, offset: 10176)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !3141, file: !10, line: 971, baseType: !3375, size: 448, offset: 10240)
!3375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !250, line: 25, size: 448, elements: !3376)
!3376 = !{!3377, !3378, !3383}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3375, file: !250, line: 26, baseType: !51, size: 64)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3375, file: !250, line: 27, baseType: !3379, size: 64, offset: 64)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!602, !3382}
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3383 = !DIDerivedType(tag: DW_TAG_member, scope: !3375, file: !250, line: 28, baseType: !3384, size: 320, offset: 128)
!3384 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3375, file: !250, line: 28, size: 320, elements: !3385)
!3385 = !{!3386, !3396, !3421}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3384, file: !250, line: 37, baseType: !3387, size: 320)
!3387 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3384, file: !250, line: 30, size: 320, elements: !3388)
!3388 = !{!3389, !3391, !3392, !3393, !3394, !3395}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3387, file: !250, line: 31, baseType: !3390, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3387, file: !250, line: 32, baseType: !396, size: 32, offset: 64)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3387, file: !250, line: 33, baseType: !396, size: 32, offset: 96)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3387, file: !250, line: 34, baseType: !396, size: 32, offset: 128)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3387, file: !250, line: 35, baseType: !400, size: 64, offset: 192)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3387, file: !250, line: 36, baseType: !3390, size: 64, offset: 256)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3384, file: !250, line: 47, baseType: !3397, size: 192)
!3397 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3384, file: !250, line: 39, size: 192, elements: !3398)
!3398 = !{!3399, !3400, !3401, !3420}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3397, file: !250, line: 40, baseType: !2833, size: 32)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3397, file: !250, line: 41, baseType: !249, size: 32, offset: 32)
!3401 = !DIDerivedType(tag: DW_TAG_member, scope: !3397, file: !250, line: 42, baseType: !3402, size: 64, offset: 64)
!3402 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3397, file: !250, line: 42, size: 64, elements: !3403)
!3403 = !{!3404, !3412}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3402, file: !250, line: 43, baseType: !3405, size: 64)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3407, line: 7, size: 128, elements: !3408)
!3407 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3408 = !{!3409, !3411}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3406, file: !3407, line: 8, baseType: !3410, size: 64)
!3410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !49, line: 93, baseType: !55)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3406, file: !3407, line: 9, baseType: !55, size: 64, offset: 64)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3402, file: !250, line: 44, baseType: !3413, size: 64)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3415, line: 7, size: 64, elements: !3416)
!3415 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3416 = !{!3417, !3419}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3414, file: !3415, line: 8, baseType: !3418, size: 32)
!3418 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3415, line: 5, baseType: !782)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3414, file: !3415, line: 9, baseType: !782, size: 32, offset: 32)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3397, file: !250, line: 46, baseType: !400, size: 64, offset: 128)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3384, file: !250, line: 55, baseType: !3422, size: 256)
!3422 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3384, file: !250, line: 49, size: 256, elements: !3423)
!3423 = !{!3424, !3427, !3428, !3429, !3430}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3422, file: !250, line: 50, baseType: !3425, size: 64)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !250, line: 14, flags: DIFlagFwdDecl)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3422, file: !250, line: 51, baseType: !13, size: 32, offset: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3422, file: !250, line: 52, baseType: !13, size: 32, offset: 96)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3422, file: !250, line: 53, baseType: !51, size: 64, offset: 128)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3422, file: !250, line: 54, baseType: !51, size: 64, offset: 192)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3141, file: !10, line: 973, baseType: !3432, size: 32, offset: 10688)
!3432 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !37, line: 27, baseType: !3433)
!3433 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !49, line: 28, baseType: !13)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !3141, file: !10, line: 974, baseType: !3432, size: 32, offset: 10720)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !3141, file: !10, line: 978, baseType: !51, size: 64, offset: 10752)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !3141, file: !10, line: 987, baseType: !3140, size: 64, offset: 10816)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3141, file: !10, line: 990, baseType: !3140, size: 64, offset: 10880)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3141, file: !10, line: 995, baseType: !109, size: 128, offset: 10944)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3141, file: !10, line: 996, baseType: !109, size: 128, offset: 11072)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3141, file: !10, line: 997, baseType: !3140, size: 64, offset: 11200)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !3141, file: !10, line: 1005, baseType: !109, size: 128, offset: 11264)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !3141, file: !10, line: 1006, baseType: !109, size: 128, offset: 11392)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !3141, file: !10, line: 1009, baseType: !707, size: 64, offset: 11520)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !3141, file: !10, line: 1010, baseType: !3445, size: 512, offset: 11584)
!3445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !724, size: 512, elements: !729)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !3141, file: !10, line: 1011, baseType: !109, size: 128, offset: 12096)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !3141, file: !10, line: 1012, baseType: !109, size: 128, offset: 12224)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !3141, file: !10, line: 1014, baseType: !1026, size: 64, offset: 12352)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !3141, file: !10, line: 1017, baseType: !2030, size: 64, offset: 12416)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !3141, file: !10, line: 1020, baseType: !2030, size: 64, offset: 12480)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !3141, file: !10, line: 1023, baseType: !33, size: 64, offset: 12544)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3141, file: !10, line: 1025, baseType: !400, size: 64, offset: 12608)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3141, file: !10, line: 1026, baseType: !400, size: 64, offset: 12672)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3141, file: !10, line: 1031, baseType: !400, size: 64, offset: 12736)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3141, file: !10, line: 1032, baseType: !3456, size: 192, offset: 12800)
!3456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !10, line: 324, size: 192, elements: !3457)
!3457 = !{!3458, !3459, !3460}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3456, file: !10, line: 326, baseType: !400, size: 64)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3456, file: !10, line: 327, baseType: !400, size: 64, offset: 64)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3456, file: !10, line: 328, baseType: !673, size: 32, offset: 128)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3141, file: !10, line: 1041, baseType: !51, size: 64, offset: 12992)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3141, file: !10, line: 1042, baseType: !51, size: 64, offset: 13056)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !3141, file: !10, line: 1045, baseType: !400, size: 64, offset: 13120)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !3141, file: !10, line: 1048, baseType: !400, size: 64, offset: 13184)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3141, file: !10, line: 1051, baseType: !51, size: 64, offset: 13248)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3141, file: !10, line: 1052, baseType: !51, size: 64, offset: 13312)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3141, file: !10, line: 1055, baseType: !3468, size: 640, offset: 13376)
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3469, line: 132, size: 640, elements: !3470)
!3469 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3470 = !{!3471, !3477, !3478}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3468, file: !3469, line: 133, baseType: !3472, size: 576)
!3472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3473, size: 576, elements: !568)
!3473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3469, line: 117, size: 192, elements: !3474)
!3474 = !{!3475, !3476}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3473, file: !3469, line: 118, baseType: !400, size: 64)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3473, file: !3469, line: 119, baseType: !2842, size: 128, offset: 64)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3468, file: !3469, line: 134, baseType: !18, size: 32, offset: 576)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3468, file: !3469, line: 135, baseType: !18, size: 32, offset: 608)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !3141, file: !10, line: 1058, baseType: !3480, size: 448, offset: 14016)
!3480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3469, line: 144, size: 448, elements: !3481)
!3481 = !{!3482, !3483, !3484}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3480, file: !3469, line: 145, baseType: !287, size: 128, align: 64)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3480, file: !3469, line: 146, baseType: !668, size: 256, offset: 128)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3480, file: !3469, line: 147, baseType: !18, size: 32, offset: 384)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !3141, file: !10, line: 1064, baseType: !747, size: 64, offset: 14464)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !3141, file: !10, line: 1067, baseType: !747, size: 64, offset: 14528)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3141, file: !10, line: 1070, baseType: !747, size: 64, offset: 14592)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !3141, file: !10, line: 1074, baseType: !774, size: 64, offset: 14656)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3141, file: !10, line: 1084, baseType: !3, size: 128, offset: 14720)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !3141, file: !10, line: 1086, baseType: !3491, size: 64, offset: 14848)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !10, line: 55, flags: DIFlagFwdDecl)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !3141, file: !10, line: 1089, baseType: !3494, size: 64, offset: 14912)
!3494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3495, line: 12, size: 64, elements: !3496)
!3495 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3496 = !{!3497}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3494, file: !3495, line: 13, baseType: !3498, size: 64)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3495, line: 8, flags: DIFlagFwdDecl)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !3141, file: !10, line: 1090, baseType: !3501, size: 128, offset: 14976)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3502, line: 13, size: 128, elements: !3503)
!3502 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3503 = !{!3504}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3501, file: !3502, line: 14, baseType: !109, size: 128)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3141, file: !10, line: 1097, baseType: !3506, size: 64, offset: 15104)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !10, line: 50, flags: DIFlagFwdDecl)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3141, file: !10, line: 1100, baseType: !3509, size: 64, offset: 15168)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !10, line: 1100, flags: DIFlagFwdDecl)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !3141, file: !10, line: 1103, baseType: !3512, size: 64, offset: 15232)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !10, line: 53, flags: DIFlagFwdDecl)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3141, file: !10, line: 1107, baseType: !3515, size: 64, offset: 15296)
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3517, line: 31, size: 576, elements: !3518)
!3517 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!3518 = !{!3519, !3520, !3523, !3526, !3529, !3530, !3533, !3536, !3537}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3516, file: !3517, line: 32, baseType: !711, size: 32)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !3516, file: !3517, line: 33, baseType: !3521, size: 64, offset: 64)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !3517, line: 9, flags: DIFlagFwdDecl)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !3516, file: !3517, line: 34, baseType: !3524, size: 64, offset: 128)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !3517, line: 10, flags: DIFlagFwdDecl)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3516, file: !3517, line: 35, baseType: !3527, size: 64, offset: 192)
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3528, size: 64)
!3528 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !3517, line: 8, flags: DIFlagFwdDecl)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !3516, file: !3517, line: 36, baseType: !740, size: 64, offset: 256)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !3516, file: !3517, line: 37, baseType: !3531, size: 64, offset: 320)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !776, line: 34, flags: DIFlagFwdDecl)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !3516, file: !3517, line: 38, baseType: !3534, size: 64, offset: 384)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !3517, line: 38, flags: DIFlagFwdDecl)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !3516, file: !3517, line: 39, baseType: !3534, size: 64, offset: 448)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !3516, file: !3517, line: 40, baseType: !3538, size: 64, offset: 512)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3540, line: 771, size: 384, elements: !3541)
!3540 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!3541 = !{!3542, !3543, !3544, !3545}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3539, file: !3540, line: 772, baseType: !972, size: 192)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !3539, file: !3540, line: 773, baseType: !939, size: 64, offset: 192)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !3539, file: !3540, line: 774, baseType: !1074, size: 64, offset: 256)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !3539, file: !3540, line: 775, baseType: !3546, size: 64, offset: 320)
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !3548, line: 209, size: 4736, elements: !3549)
!3548 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!3549 = !{!3550, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3547, file: !3548, line: 215, baseType: !3551, size: 896)
!3551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3552, size: 896, elements: !3609)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !3548, line: 152, size: 1600, elements: !3554)
!3554 = !{!3555, !3660, !3775, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3810}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3553, file: !3548, line: 154, baseType: !3556, size: 64)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !3548, line: 389, size: 7872, elements: !3558)
!3558 = !{!3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3578, !3579, !3583, !3584, !3585, !3586, !3587, !3588, !3606, !3607, !3611, !3612, !3613, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3647, !3650, !3651, !3658}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3557, file: !3548, line: 391, baseType: !3553, size: 1600)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3557, file: !3548, line: 393, baseType: !51, size: 64, offset: 1600)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3557, file: !3548, line: 401, baseType: !13, size: 32, offset: 1664)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !3557, file: !3548, line: 404, baseType: !13, size: 32, offset: 1696)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !3557, file: !3548, line: 417, baseType: !13, size: 32, offset: 1728)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !3557, file: !3548, line: 418, baseType: !13, size: 32, offset: 1760)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !3557, file: !3548, line: 419, baseType: !13, size: 32, offset: 1792)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !3557, file: !3548, line: 432, baseType: !13, size: 32, offset: 1824)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !3557, file: !3548, line: 433, baseType: !13, size: 32, offset: 1856)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !3557, file: !3548, line: 434, baseType: !13, size: 32, offset: 1888)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !3557, file: !3548, line: 436, baseType: !13, size: 32, offset: 1920)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !3557, file: !3548, line: 439, baseType: !18, size: 32, offset: 1952)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3557, file: !3548, line: 441, baseType: !1789, size: 64, offset: 1984)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !3557, file: !3548, line: 442, baseType: !3573, size: 448, offset: 2048)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !3548, line: 138, size: 448, elements: !3574)
!3574 = !{!3575, !3576, !3577}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3573, file: !3548, line: 140, baseType: !1789, size: 64)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !3573, file: !3548, line: 141, baseType: !51, size: 64, offset: 64)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !3573, file: !3548, line: 142, baseType: !2129, size: 320, offset: 128)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !3557, file: !3548, line: 443, baseType: !3573, size: 448, offset: 2496)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !3557, file: !3548, line: 446, baseType: !3580, offset: 2944)
!3580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3573, elements: !3581)
!3581 = !{!3582}
!3582 = !DISubrange(count: 0)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !3557, file: !3548, line: 455, baseType: !105, size: 16, offset: 2944)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !3557, file: !3548, line: 456, baseType: !105, size: 16, offset: 2960)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !3557, file: !3548, line: 457, baseType: !105, size: 16, offset: 2976)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !3557, file: !3548, line: 458, baseType: !105, size: 16, offset: 2992)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3557, file: !3548, line: 461, baseType: !3551, size: 896, offset: 3008)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3557, file: !3548, line: 463, baseType: !3589, size: 64, offset: 3904)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !3548, line: 537, size: 41664, elements: !3591)
!3591 = !{!3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3605}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !3590, file: !3548, line: 538, baseType: !1809, size: 64)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !3590, file: !3548, line: 541, baseType: !18, size: 32, offset: 64)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !3590, file: !3548, line: 544, baseType: !13, size: 32, offset: 96)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !3590, file: !3548, line: 547, baseType: !109, size: 128, offset: 128)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3590, file: !3548, line: 548, baseType: !287, size: 128, align: 64, offset: 256)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3590, file: !3548, line: 555, baseType: !3557, size: 7872, offset: 384)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !3590, file: !3548, line: 558, baseType: !3556, size: 64, offset: 8256)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !3590, file: !3548, line: 561, baseType: !61, size: 32, offset: 8320)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3590, file: !3548, line: 564, baseType: !18, size: 32, offset: 8352)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !3590, file: !3548, line: 567, baseType: !3602, size: 32768, offset: 8384)
!3602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !3603)
!3603 = !{!3604}
!3604 = !DISubrange(count: 4096)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3590, file: !3548, line: 570, baseType: !3066, size: 512, offset: 41152)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !3557, file: !3548, line: 469, baseType: !109, size: 128, offset: 3968)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !3557, file: !3548, line: 478, baseType: !3608, size: 1792, offset: 4096)
!3608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 1792, elements: !3609)
!3609 = !{!3610}
!3610 = !DISubrange(count: 14)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !3557, file: !3548, line: 487, baseType: !3556, size: 64, offset: 5888)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !3557, file: !3548, line: 488, baseType: !3556, size: 64, offset: 5952)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !3557, file: !3548, line: 491, baseType: !3614, size: 64, offset: 6016)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !3548, line: 327, size: 896, elements: !3616)
!3616 = !{!3617, !3620, !3630, !3631, !3632, !3633, !3634}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !3615, file: !3548, line: 332, baseType: !3618)
!3618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !3619, line: 64, elements: !1321)
!3619 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3615, file: !3548, line: 333, baseType: !3621, size: 192)
!3621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !3548, line: 299, size: 192, elements: !3622)
!3622 = !{!3623}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !3621, file: !3548, line: 300, baseType: !3624, size: 192)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !3625, line: 17, size: 192, elements: !3626)
!3625 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!3626 = !{!3627, !3628, !3629}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3624, file: !3625, line: 18, baseType: !400, size: 64)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3624, file: !3625, line: 19, baseType: !400, size: 64, offset: 64)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3624, file: !3625, line: 20, baseType: !402, size: 64, offset: 128)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3615, file: !3548, line: 339, baseType: !3621, size: 192, offset: 192)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !3615, file: !3548, line: 347, baseType: !3621, size: 192, offset: 384)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !3615, file: !3548, line: 353, baseType: !3621, size: 192, offset: 576)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !3615, file: !3548, line: 366, baseType: !3556, size: 64, offset: 768)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !3615, file: !3548, line: 367, baseType: !3556, size: 64, offset: 832)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !3557, file: !3548, line: 492, baseType: !109, size: 128, offset: 6080)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3557, file: !3548, line: 495, baseType: !3621, size: 192, offset: 6208)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3557, file: !3548, line: 496, baseType: !3621, size: 192, offset: 6400)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3557, file: !3548, line: 497, baseType: !3456, size: 192, offset: 6592)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !3557, file: !3548, line: 503, baseType: !109, size: 128, offset: 6784)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !3557, file: !3548, line: 504, baseType: !668, size: 256, offset: 6912)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !3557, file: !3548, line: 507, baseType: !66, size: 192, offset: 7168)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !3557, file: !3548, line: 510, baseType: !988, size: 256, offset: 7360)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !3557, file: !3548, line: 513, baseType: !3644, size: 64, offset: 7616)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !3646, line: 214, elements: !1321)
!3646 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !3557, file: !3548, line: 516, baseType: !3648, offset: 7680)
!3648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !3649, line: 76, elements: !1321)
!3649 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !3557, file: !3548, line: 519, baseType: !61, size: 32, offset: 7680)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !3557, file: !3548, line: 522, baseType: !3652, size: 128, offset: 7712)
!3652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !3548, line: 370, size: 128, elements: !3653)
!3653 = !{!3654, !3655, !3656, !3657}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3652, file: !3548, line: 372, baseType: !856, size: 8)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !3652, file: !3548, line: 375, baseType: !13, size: 32, offset: 32)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !3652, file: !3548, line: 380, baseType: !13, size: 32, offset: 64)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !3652, file: !3548, line: 386, baseType: !13, size: 32, offset: 96)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !3557, file: !3548, line: 529, baseType: !3659, offset: 7872)
!3659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3556, elements: !298)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3553, file: !3548, line: 157, baseType: !3661, size: 64, offset: 64)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !3548, line: 669, size: 1984, elements: !3663)
!3663 = !{!3664, !3668, !3672, !3676, !3677, !3678, !3679, !3683, !3687, !3688, !3694, !3698, !3699, !3700, !3704, !3708, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3735, !3736, !3773, !3774}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !3662, file: !3548, line: 670, baseType: !3665, size: 64)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = !DISubroutineType(types: !3667)
!3667 = !{!3552, !3552}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !3662, file: !3548, line: 671, baseType: !3669, size: 64, offset: 64)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!13, !3552}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !3662, file: !3548, line: 672, baseType: !3673, size: 64, offset: 128)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{null, !3552}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !3662, file: !3548, line: 673, baseType: !3673, size: 64, offset: 192)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !3662, file: !3548, line: 674, baseType: !3673, size: 64, offset: 256)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !3662, file: !3548, line: 675, baseType: !3673, size: 64, offset: 320)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !3662, file: !3548, line: 676, baseType: !3680, size: 64, offset: 384)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{null, !3552, !13}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !3662, file: !3548, line: 677, baseType: !3684, size: 64, offset: 448)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!13, !1673, !3552}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !3662, file: !3548, line: 679, baseType: !3684, size: 64, offset: 512)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !3662, file: !3548, line: 682, baseType: !3689, size: 64, offset: 576)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{!13, !3692}
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !3548, line: 30, flags: DIFlagFwdDecl)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !3662, file: !3548, line: 683, baseType: !3695, size: 64, offset: 640)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{null, !3692}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !3662, file: !3548, line: 684, baseType: !3695, size: 64, offset: 704)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !3662, file: !3548, line: 685, baseType: !2233, size: 64, offset: 768)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !3662, file: !3548, line: 686, baseType: !3701, size: 64, offset: 832)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!13, !3140, !3546}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !3662, file: !3548, line: 688, baseType: !3705, size: 64, offset: 896)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{null, !3140, !3546}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !3662, file: !3548, line: 689, baseType: !3709, size: 64, offset: 960)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{null, !3140}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !3662, file: !3548, line: 690, baseType: !3709, size: 64, offset: 1024)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3662, file: !3548, line: 691, baseType: !3709, size: 64, offset: 1088)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !3662, file: !3548, line: 692, baseType: !3673, size: 64, offset: 1152)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3662, file: !3548, line: 694, baseType: !856, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !3662, file: !3548, line: 707, baseType: !856, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !3662, file: !3548, line: 719, baseType: !856, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3662, file: !3548, line: 722, baseType: !13, size: 32, offset: 1248)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3662, file: !3548, line: 723, baseType: !30, size: 64, offset: 1280)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !3662, file: !3548, line: 726, baseType: !30, size: 64, offset: 1344)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3662, file: !3548, line: 729, baseType: !3589, size: 64, offset: 1408)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !3662, file: !3548, line: 732, baseType: !3723, size: 192, offset: 1472)
!3723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3724, line: 19, size: 192, elements: !3725)
!3724 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!3725 = !{!3726, !3733, !3734}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3723, file: !3724, line: 20, baseType: !3727, size: 128)
!3727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3728, line: 296, size: 128, elements: !3729)
!3728 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3729 = !{!3730, !3731, !3732}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3727, file: !3728, line: 297, baseType: !71, size: 32)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3727, file: !3728, line: 299, baseType: !300, size: 32, offset: 32)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3727, file: !3728, line: 300, baseType: !33, size: 64, offset: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3723, file: !3724, line: 21, baseType: !18, size: 32, offset: 128)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3723, file: !3724, line: 22, baseType: !18, size: 32, offset: 160)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !3662, file: !3548, line: 738, baseType: !109, size: 128, offset: 1664)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !3662, file: !3548, line: 744, baseType: !3737, size: 64, offset: 1792)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !3548, line: 580, size: 1728, elements: !3739)
!3739 = !{!3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3749, !3750, !3751, !3755, !3759, !3760, !3761, !3762, !3763, !3767, !3771, !3772}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3738, file: !3548, line: 586, baseType: !3066, size: 512)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3738, file: !3548, line: 587, baseType: !51, size: 64, offset: 512)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !3738, file: !3548, line: 593, baseType: !47, size: 64, offset: 576)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3738, file: !3548, line: 596, baseType: !18, size: 32, offset: 640)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !3738, file: !3548, line: 604, baseType: !18, size: 32, offset: 672)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3738, file: !3548, line: 610, baseType: !3661, size: 64, offset: 704)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3738, file: !3548, line: 611, baseType: !109, size: 128, offset: 768)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !3738, file: !3548, line: 612, baseType: !3748, size: 64, offset: 896)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3738, file: !3548, line: 614, baseType: !1825, size: 64, offset: 960)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3738, file: !3548, line: 615, baseType: !1845, size: 64, offset: 1024)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !3738, file: !3548, line: 621, baseType: !3752, size: 64, offset: 1088)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{!400, !3552, !3737}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !3738, file: !3548, line: 625, baseType: !3756, size: 64, offset: 1152)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{!665, !3552, !3737}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3738, file: !3548, line: 628, baseType: !1703, size: 64, offset: 1216)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3738, file: !3548, line: 631, baseType: !1691, size: 64, offset: 1280)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3738, file: !3548, line: 632, baseType: !1699, size: 64, offset: 1344)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3738, file: !3548, line: 633, baseType: !1695, size: 64, offset: 1408)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !3738, file: !3548, line: 640, baseType: !3764, size: 64, offset: 1472)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!13, !3552, !3737, !400}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !3738, file: !3548, line: 645, baseType: !3768, size: 64, offset: 1536)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!13, !3552, !3737, !665}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3738, file: !3548, line: 654, baseType: !1853, size: 64, offset: 1600)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3738, file: !3548, line: 657, baseType: !1860, size: 64, offset: 1664)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !3662, file: !3548, line: 745, baseType: !3737, size: 64, offset: 1856)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !3662, file: !3548, line: 754, baseType: !18, size: 32, offset: 1920)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3553, file: !3548, line: 160, baseType: !3776, size: 128, offset: 128)
!3776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !3777, line: 105, size: 128, elements: !3778)
!3777 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!3778 = !{!3779, !3780}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !3776, file: !3777, line: 110, baseType: !51, size: 64)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3776, file: !3777, line: 118, baseType: !3781, size: 64, offset: 64)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !3777, line: 95, size: 448, elements: !3783)
!3783 = !{!3784, !3785, !3791, !3792, !3793, !3794, !3795}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3782, file: !3777, line: 96, baseType: !659, size: 64)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3782, file: !3777, line: 97, baseType: !3786, size: 64, offset: 64)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !3777, line: 60, baseType: !3788)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{null, !3790}
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !3782, file: !3777, line: 98, baseType: !3786, size: 64, offset: 128)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !3782, file: !3777, line: 99, baseType: !856, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !3782, file: !3777, line: 100, baseType: !856, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3782, file: !3777, line: 101, baseType: !287, size: 128, align: 64, offset: 256)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3782, file: !3777, line: 102, baseType: !3790, size: 64, offset: 384)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3553, file: !3548, line: 163, baseType: !109, size: 128, offset: 256)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3553, file: !3548, line: 164, baseType: !109, size: 128, offset: 384)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !3553, file: !3548, line: 167, baseType: !109, size: 128, offset: 512)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3553, file: !3548, line: 173, baseType: !13, size: 32, offset: 640)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3553, file: !3548, line: 175, baseType: !18, size: 32, offset: 672)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !3553, file: !3548, line: 183, baseType: !400, size: 64, offset: 704)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !3553, file: !3548, line: 189, baseType: !61, size: 32, offset: 768)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !3553, file: !3548, line: 192, baseType: !988, size: 256, offset: 832)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !3553, file: !3548, line: 193, baseType: !3805, size: 448, offset: 1088)
!3805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !989, line: 120, size: 448, elements: !3806)
!3806 = !{!3807, !3808, !3809}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3805, file: !989, line: 121, baseType: !988, size: 256)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3805, file: !989, line: 122, baseType: !287, size: 128, align: 64, offset: 256)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3805, file: !989, line: 125, baseType: !2191, size: 64, offset: 384)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3553, file: !3548, line: 199, baseType: !3552, size: 64, offset: 1536)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3547, file: !3548, line: 218, baseType: !711, size: 32, offset: 896)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !3547, file: !3548, line: 226, baseType: !3546, size: 64, offset: 960)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !3547, file: !3548, line: 229, baseType: !3556, size: 64, offset: 1024)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3547, file: !3548, line: 232, baseType: !13, size: 32, offset: 1088)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3547, file: !3548, line: 241, baseType: !109, size: 128, offset: 1152)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !3547, file: !3548, line: 242, baseType: !109, size: 128, offset: 1280)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !3547, file: !3548, line: 243, baseType: !109, size: 128, offset: 1408)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !3547, file: !3548, line: 246, baseType: !109, size: 128, offset: 1536)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !3547, file: !3548, line: 255, baseType: !3608, size: 1792, offset: 1664)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !3547, file: !3548, line: 258, baseType: !109, size: 128, offset: 3456)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !3547, file: !3548, line: 259, baseType: !109, size: 128, offset: 3584)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !3547, file: !3548, line: 265, baseType: !724, size: 128, offset: 3712)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !3547, file: !3548, line: 271, baseType: !109, size: 128, offset: 3840)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !3547, file: !3548, line: 277, baseType: !109, size: 128, offset: 3968)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !3547, file: !3548, line: 278, baseType: !109, size: 128, offset: 4096)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !3547, file: !3548, line: 279, baseType: !109, size: 128, offset: 4224)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !3547, file: !3548, line: 288, baseType: !3556, size: 64, offset: 4352)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !3547, file: !3548, line: 289, baseType: !3556, size: 64, offset: 4416)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !3547, file: !3548, line: 290, baseType: !3546, size: 64, offset: 4480)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !3547, file: !3548, line: 293, baseType: !856, size: 8, offset: 4544)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3547, file: !3548, line: 296, baseType: !287, size: 128, align: 64, offset: 4608)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3141, file: !10, line: 1110, baseType: !3833, size: 64, offset: 15360)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3835, line: 93, size: 8768, elements: !3836)
!3835 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3836 = !{!3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3885, !3894, !3895, !3897, !3898, !3899, !3902, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3940, !3941, !3948, !3958, !4021, !4022, !4025, !4026, !4027, !4028, !4029, !4030}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3834, file: !3835, line: 94, baseType: !711, size: 32)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3834, file: !3835, line: 95, baseType: !61, size: 32, offset: 32)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3834, file: !3835, line: 96, baseType: !13, size: 32, offset: 64)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3834, file: !3835, line: 97, baseType: !13, size: 32, offset: 96)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3834, file: !3835, line: 98, baseType: !109, size: 128, offset: 128)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3834, file: !3835, line: 100, baseType: !66, size: 192, offset: 256)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3834, file: !3835, line: 103, baseType: !3140, size: 64, offset: 448)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3834, file: !3835, line: 106, baseType: !3845, size: 192, offset: 512)
!3845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !3846, line: 32, size: 192, elements: !3847)
!3846 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!3847 = !{!3848, !3849}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3845, file: !3846, line: 33, baseType: !109, size: 128)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3845, file: !3846, line: 34, baseType: !3850, size: 64, offset: 128)
!3850 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3851, line: 25, baseType: !3852)
!3851 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3852 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3851, line: 23, size: 64, elements: !3853)
!3853 = !{!3854}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3852, file: !3851, line: 24, baseType: !3303, size: 64)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3834, file: !3835, line: 109, baseType: !720, size: 64, offset: 704)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3834, file: !3835, line: 112, baseType: !13, size: 32, offset: 768)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3834, file: !3835, line: 114, baseType: !13, size: 32, offset: 800)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3834, file: !3835, line: 115, baseType: !3140, size: 64, offset: 832)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3834, file: !3835, line: 118, baseType: !13, size: 32, offset: 896)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3834, file: !3835, line: 119, baseType: !18, size: 32, offset: 928)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3834, file: !3835, line: 121, baseType: !3862, size: 64, offset: 960)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3835, line: 80, size: 448, elements: !3864)
!3864 = !{!3865, !3866, !3872}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3863, file: !3835, line: 81, baseType: !61, size: 32)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3863, file: !3835, line: 82, baseType: !3867, size: 128, offset: 64)
!3867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3835, line: 75, size: 128, elements: !3868)
!3868 = !{!3869, !3870}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3867, file: !3835, line: 76, baseType: !3140, size: 64)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3867, file: !3835, line: 77, baseType: !3871, size: 64, offset: 64)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3863, file: !3835, line: 83, baseType: !1027, size: 256, offset: 192)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3834, file: !3835, line: 132, baseType: !18, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3834, file: !3835, line: 133, baseType: !18, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3834, file: !3835, line: 138, baseType: !18, size: 32, offset: 1056)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3834, file: !3835, line: 139, baseType: !109, size: 128, offset: 1088)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3834, file: !3835, line: 142, baseType: !2788, size: 512, offset: 1216)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3834, file: !3835, line: 143, baseType: !2768, size: 64, offset: 1728)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3834, file: !3835, line: 150, baseType: !3880, size: 256, offset: 1792)
!3880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3881, size: 256, elements: !2020)
!3881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3835, line: 38, size: 128, elements: !3882)
!3882 = !{!3883, !3884}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3881, file: !3835, line: 39, baseType: !400, size: 64)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3881, file: !3835, line: 40, baseType: !400, size: 64, offset: 64)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3834, file: !3835, line: 156, baseType: !3886, size: 192, offset: 2048)
!3886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3835, line: 66, size: 192, elements: !3887)
!3887 = !{!3888}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3886, file: !3835, line: 67, baseType: !3889, size: 192)
!3889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3835, line: 47, size: 192, elements: !3890)
!3890 = !{!3891, !3892, !3893}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3889, file: !3835, line: 48, baseType: !661, size: 64)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3889, file: !3835, line: 49, baseType: !661, size: 64, offset: 64)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3889, file: !3835, line: 50, baseType: !661, size: 64, offset: 128)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3834, file: !3835, line: 160, baseType: !3468, size: 640, offset: 2240)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3834, file: !3835, line: 163, baseType: !3896, size: 256, offset: 2880)
!3896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !707, size: 256, elements: !729)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3834, file: !3835, line: 169, baseType: !707, size: 64, offset: 3136)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3834, file: !3835, line: 172, baseType: !13, size: 32, offset: 3200)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3834, file: !3835, line: 174, baseType: !3900, size: 64, offset: 3264)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3835, line: 174, flags: DIFlagFwdDecl)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3834, file: !3835, line: 185, baseType: !3903, size: 64, offset: 3328)
!3903 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !369, line: 860, baseType: !3904)
!3904 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !369, line: 853, size: 64, elements: !3905)
!3905 = !{!3906, !3907}
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3904, file: !369, line: 858, baseType: !368, size: 32)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3904, file: !369, line: 859, baseType: !71, size: 32, offset: 32)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3834, file: !3835, line: 186, baseType: !400, size: 64, offset: 3392)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3834, file: !3835, line: 186, baseType: !400, size: 64, offset: 3456)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3834, file: !3835, line: 186, baseType: !400, size: 64, offset: 3520)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3834, file: !3835, line: 186, baseType: !400, size: 64, offset: 3584)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3834, file: !3835, line: 187, baseType: !400, size: 64, offset: 3648)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3834, file: !3835, line: 188, baseType: !400, size: 64, offset: 3712)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3834, file: !3835, line: 189, baseType: !3456, size: 192, offset: 3776)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3834, file: !3835, line: 190, baseType: !51, size: 64, offset: 3968)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3834, file: !3835, line: 190, baseType: !51, size: 64, offset: 4032)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3834, file: !3835, line: 190, baseType: !51, size: 64, offset: 4096)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3834, file: !3835, line: 190, baseType: !51, size: 64, offset: 4160)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3834, file: !3835, line: 191, baseType: !51, size: 64, offset: 4224)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3834, file: !3835, line: 191, baseType: !51, size: 64, offset: 4288)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3834, file: !3835, line: 191, baseType: !51, size: 64, offset: 4352)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3834, file: !3835, line: 191, baseType: !51, size: 64, offset: 4416)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3834, file: !3835, line: 192, baseType: !51, size: 64, offset: 4480)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3834, file: !3835, line: 192, baseType: !51, size: 64, offset: 4544)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3834, file: !3835, line: 192, baseType: !51, size: 64, offset: 4608)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3834, file: !3835, line: 192, baseType: !51, size: 64, offset: 4672)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3834, file: !3835, line: 193, baseType: !51, size: 64, offset: 4736)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3834, file: !3835, line: 193, baseType: !51, size: 64, offset: 4800)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3834, file: !3835, line: 194, baseType: !3930, size: 448, offset: 4864)
!3930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3931, line: 12, size: 448, elements: !3932)
!3931 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3932 = !{!3933, !3934, !3935, !3936, !3937, !3938, !3939}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3930, file: !3931, line: 15, baseType: !400, size: 64)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3930, file: !3931, line: 17, baseType: !400, size: 64, offset: 64)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3930, file: !3931, line: 19, baseType: !400, size: 64, offset: 128)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3930, file: !3931, line: 21, baseType: !400, size: 64, offset: 192)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3930, file: !3931, line: 29, baseType: !400, size: 64, offset: 256)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3930, file: !3931, line: 35, baseType: !400, size: 64, offset: 320)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3930, file: !3931, line: 44, baseType: !400, size: 64, offset: 384)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3834, file: !3835, line: 202, baseType: !402, size: 64, offset: 5312)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3834, file: !3835, line: 213, baseType: !3942, size: 2048, offset: 5376)
!3942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3943, size: 2048, elements: !5)
!3943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3944, line: 43, size: 128, elements: !3945)
!3944 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3945 = !{!3946, !3947}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3943, file: !3944, line: 44, baseType: !50, size: 64)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3943, file: !3944, line: 45, baseType: !50, size: 64, offset: 64)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3834, file: !3835, line: 216, baseType: !3949, size: 448, offset: 7424)
!3949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3835, line: 30, size: 448, elements: !3950)
!3950 = !{!3951, !3952, !3953, !3954, !3955, !3956, !3957}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3949, file: !3835, line: 31, baseType: !13, size: 32)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3949, file: !3835, line: 32, baseType: !602, size: 64, offset: 64)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3949, file: !3835, line: 33, baseType: !51, size: 64, offset: 128)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3949, file: !3835, line: 34, baseType: !400, size: 64, offset: 192)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3949, file: !3835, line: 34, baseType: !400, size: 64, offset: 256)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3949, file: !3835, line: 35, baseType: !51, size: 64, offset: 320)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3949, file: !3835, line: 35, baseType: !51, size: 64, offset: 384)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3834, file: !3835, line: 219, baseType: !3959, size: 64, offset: 7872)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3961, line: 41, size: 3456, elements: !3962)
!3961 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!3962 = !{!3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3977, !3978, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020}
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3960, file: !3961, line: 47, baseType: !106, size: 16)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3960, file: !3961, line: 48, baseType: !397, size: 32, offset: 32)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3960, file: !3961, line: 54, baseType: !97, size: 8, offset: 64)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !3960, file: !3961, line: 55, baseType: !97, size: 8, offset: 72)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !3960, file: !3961, line: 73, baseType: !401, size: 64, align: 64, offset: 128)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !3960, file: !3961, line: 74, baseType: !401, size: 64, offset: 192)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !3960, file: !3961, line: 81, baseType: !401, size: 64, offset: 256)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !3960, file: !3961, line: 82, baseType: !401, size: 64, offset: 320)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !3960, file: !3961, line: 85, baseType: !401, size: 64, offset: 384)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !3960, file: !3961, line: 86, baseType: !401, size: 64, offset: 448)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !3960, file: !3961, line: 94, baseType: !401, size: 64, offset: 512)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !3960, file: !3961, line: 102, baseType: !401, size: 64, offset: 576)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !3960, file: !3961, line: 107, baseType: !3976, size: 256, offset: 640)
!3976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !409)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !3960, file: !3961, line: 108, baseType: !97, size: 8, align: 64, offset: 896)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !3960, file: !3961, line: 110, baseType: !3979, size: 24, offset: 904)
!3979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 24, elements: !568)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !3960, file: !3961, line: 111, baseType: !397, size: 32, align: 64, offset: 960)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !3960, file: !3961, line: 113, baseType: !397, size: 32, offset: 992)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !3960, file: !3961, line: 114, baseType: !397, size: 32, offset: 1024)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !3960, file: !3961, line: 115, baseType: !397, size: 32, offset: 1056)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !3960, file: !3961, line: 117, baseType: !397, size: 32, offset: 1088)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !3960, file: !3961, line: 118, baseType: !401, size: 64, align: 64, offset: 1152)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3960, file: !3961, line: 120, baseType: !401, size: 64, offset: 1216)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3960, file: !3961, line: 121, baseType: !401, size: 64, offset: 1280)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3960, file: !3961, line: 122, baseType: !401, size: 64, offset: 1344)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3960, file: !3961, line: 123, baseType: !401, size: 64, offset: 1408)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !3960, file: !3961, line: 133, baseType: !401, size: 64, offset: 1472)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !3960, file: !3961, line: 137, baseType: !401, size: 64, offset: 1536)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !3960, file: !3961, line: 142, baseType: !401, size: 64, offset: 1600)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !3960, file: !3961, line: 143, baseType: !401, size: 64, offset: 1664)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !3960, file: !3961, line: 146, baseType: !401, size: 64, offset: 1728)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !3960, file: !3961, line: 147, baseType: !401, size: 64, offset: 1792)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !3960, file: !3961, line: 148, baseType: !401, size: 64, offset: 1856)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !3960, file: !3961, line: 149, baseType: !401, size: 64, offset: 1920)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3960, file: !3961, line: 154, baseType: !401, size: 64, offset: 1984)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3960, file: !3961, line: 155, baseType: !401, size: 64, offset: 2048)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3960, file: !3961, line: 156, baseType: !401, size: 64, offset: 2112)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3960, file: !3961, line: 158, baseType: !401, size: 64, offset: 2176)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3960, file: !3961, line: 159, baseType: !401, size: 64, offset: 2240)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !3960, file: !3961, line: 162, baseType: !401, size: 64, offset: 2304)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !3960, file: !3961, line: 163, baseType: !401, size: 64, offset: 2368)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !3960, file: !3961, line: 164, baseType: !401, size: 64, offset: 2432)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !3960, file: !3961, line: 167, baseType: !401, size: 64, offset: 2496)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !3960, file: !3961, line: 168, baseType: !401, size: 64, offset: 2560)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !3960, file: !3961, line: 171, baseType: !401, size: 64, offset: 2624)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !3960, file: !3961, line: 172, baseType: !401, size: 64, offset: 2688)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !3960, file: !3961, line: 175, baseType: !401, size: 64, offset: 2752)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !3960, file: !3961, line: 178, baseType: !401, size: 64, offset: 2816)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !3960, file: !3961, line: 179, baseType: !401, size: 64, offset: 2880)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !3960, file: !3961, line: 182, baseType: !397, size: 32, offset: 2944)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !3960, file: !3961, line: 186, baseType: !401, size: 64, align: 64, offset: 3008)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !3960, file: !3961, line: 194, baseType: !401, size: 64, offset: 3072)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !3960, file: !3961, line: 195, baseType: !401, size: 64, offset: 3136)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !3960, file: !3961, line: 199, baseType: !401, size: 64, offset: 3200)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !3960, file: !3961, line: 200, baseType: !401, size: 64, offset: 3264)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !3960, file: !3961, line: 203, baseType: !401, size: 64, offset: 3328)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !3960, file: !3961, line: 204, baseType: !401, size: 64, offset: 3392)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3834, file: !3835, line: 222, baseType: !18, size: 32, offset: 7936)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3834, file: !3835, line: 223, baseType: !4023, size: 64, offset: 8000)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3835, line: 223, flags: DIFlagFwdDecl)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3834, file: !3835, line: 230, baseType: !856, size: 8, offset: 8064)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3834, file: !3835, line: 231, baseType: !825, size: 16, offset: 8080)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3834, file: !3835, line: 232, baseType: !825, size: 16, offset: 8096)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3834, file: !3835, line: 234, baseType: !1300, size: 64, offset: 8128)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3834, file: !3835, line: 237, baseType: !668, size: 256, offset: 8192)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3834, file: !3835, line: 243, baseType: !797, size: 320, offset: 8448)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !3141, file: !10, line: 1111, baseType: !4032, size: 64, offset: 15424)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3835, line: 20, size: 16640, elements: !4034)
!4034 = !{!4035, !4036, !4037, !4038}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !4033, file: !3835, line: 21, baseType: !71, size: 32)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4033, file: !3835, line: 22, baseType: !711, size: 32, offset: 32)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !4033, file: !3835, line: 23, baseType: !66, size: 192, offset: 64)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4033, file: !3835, line: 24, baseType: !4039, size: 16384, offset: 256)
!4039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4040, size: 16384, elements: !572)
!4040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !3846, line: 51, size: 256, elements: !4041)
!4041 = !{!4042}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !4040, file: !3846, line: 52, baseType: !4043, size: 256)
!4043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !3846, line: 37, size: 256, elements: !4044)
!4044 = !{!4045, !4052, !4053, !4057}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !4043, file: !3846, line: 39, baseType: !4046, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !4047, line: 83, baseType: !4048)
!4047 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !4047, line: 82, baseType: !4050)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{null, !13}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !4043, file: !3846, line: 40, baseType: !51, size: 64, offset: 64)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !4043, file: !3846, line: 46, baseType: !4054, size: 64, offset: 128)
!4054 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !4047, line: 86, baseType: !4055)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !4047, line: 85, baseType: !2234)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !4043, file: !3846, line: 48, baseType: !3850, size: 64, offset: 192)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3141, file: !10, line: 1112, baseType: !3850, size: 64, offset: 15488)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !3141, file: !10, line: 1113, baseType: !3850, size: 64, offset: 15552)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !3141, file: !10, line: 1115, baseType: !3850, size: 64, offset: 15616)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !3141, file: !10, line: 1116, baseType: !3845, size: 192, offset: 15680)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !3141, file: !10, line: 1117, baseType: !51, size: 64, offset: 15872)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !3141, file: !10, line: 1118, baseType: !47, size: 64, offset: 15936)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !3141, file: !10, line: 1119, baseType: !18, size: 32, offset: 16000)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !3141, file: !10, line: 1121, baseType: !290, size: 64, offset: 16064)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !3141, file: !10, line: 1125, baseType: !4067, size: 64, offset: 16128)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !10, line: 43, flags: DIFlagFwdDecl)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !3141, file: !10, line: 1127, baseType: !333, size: 32, offset: 16192)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !3141, file: !10, line: 1128, baseType: !18, size: 32, offset: 16224)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !3141, file: !10, line: 1130, baseType: !4072, size: 128, offset: 16256)
!4072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4073, line: 37, size: 128, elements: !4074)
!4073 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!4074 = !{!4075, !4076, !4077}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4072, file: !4073, line: 38, baseType: !13, size: 32)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4072, file: !4073, line: 39, baseType: !61, size: 32, offset: 32)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4072, file: !4073, line: 40, baseType: !4078, size: 64, offset: 64)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4073, line: 24, flags: DIFlagFwdDecl)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !3141, file: !10, line: 1131, baseType: !4081, size: 256, offset: 16384)
!4081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !4082, line: 12, size: 256, elements: !4083)
!4082 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!4083 = !{!4084, !4085, !4086, !4087}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !4081, file: !4082, line: 13, baseType: !468, size: 64)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4081, file: !4082, line: 14, baseType: !51, size: 64, offset: 64)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4081, file: !4082, line: 15, baseType: !51, size: 64, offset: 128)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !4081, file: !4082, line: 16, baseType: !856, size: 8, offset: 192)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !3141, file: !10, line: 1134, baseType: !400, size: 64, offset: 16640)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !3141, file: !10, line: 1135, baseType: !400, size: 64, offset: 16704)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !3141, file: !10, line: 1138, baseType: !71, size: 32, offset: 16768)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !3141, file: !10, line: 1141, baseType: !673, size: 32, offset: 16800)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !3141, file: !10, line: 1143, baseType: !4093, size: 64, offset: 16832)
!4093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !10, line: 735, size: 64, elements: !4094)
!4094 = !{!4095}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4093, file: !10, line: 736, baseType: !4096, size: 64)
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4093, size: 64)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !3141, file: !10, line: 1147, baseType: !1495, size: 128, offset: 16896)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !3141, file: !10, line: 1149, baseType: !3140, size: 64, offset: 17024)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !3141, file: !10, line: 1151, baseType: !4100, size: 64, offset: 17088)
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4101, size: 64)
!4101 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !10, line: 1151, flags: DIFlagFwdDecl)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !3141, file: !10, line: 1188, baseType: !33, size: 64, offset: 17152)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !3141, file: !10, line: 1191, baseType: !4104, size: 64, offset: 17216)
!4104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4105, size: 64)
!4105 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !10, line: 44, flags: DIFlagFwdDecl)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !3141, file: !10, line: 1194, baseType: !4107, size: 64, offset: 17280)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !10, line: 45, flags: DIFlagFwdDecl)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !3141, file: !10, line: 1197, baseType: !4110, size: 64, offset: 17344)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !4112, line: 155, size: 64, elements: !4113)
!4112 = !DIFile(filename: "./include/linux/swap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b48f968c4d3c1313a5ba7451c8be5b79")
!4113 = !{!4114}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed", scope: !4111, file: !4112, line: 157, baseType: !51, size: 64)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !3141, file: !10, line: 1199, baseType: !4116, size: 64, offset: 17408)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2562, line: 99, size: 128, elements: !4118)
!4118 = !{!4119, !4120, !4121}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4117, file: !2562, line: 100, baseType: !659, size: 64)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !4117, file: !2562, line: 101, baseType: !61, size: 32, offset: 64)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !4117, file: !2562, line: 103, baseType: !38, size: 16, offset: 96)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !3141, file: !10, line: 1202, baseType: !4123, size: 64, offset: 17472)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !10, line: 48, flags: DIFlagFwdDecl)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !3141, file: !10, line: 1205, baseType: !51, size: 64, offset: 17536)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !3141, file: !10, line: 1206, baseType: !4127, size: 64, offset: 17600)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !3846, line: 14, baseType: !4129)
!4129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !3846, line: 12, size: 384, elements: !4130)
!4130 = !{!4131}
!4131 = !DIDerivedType(tag: DW_TAG_member, scope: !4129, file: !3846, line: 13, baseType: !4132, size: 384)
!4132 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4129, file: !3846, line: 13, size: 384, elements: !4133)
!4133 = !{!4134, !4135, !4136, !4137}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4132, file: !3846, line: 13, baseType: !13, size: 32)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4132, file: !3846, line: 13, baseType: !13, size: 32, offset: 32)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4132, file: !3846, line: 13, baseType: !13, size: 32, offset: 64)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4132, file: !3846, line: 13, baseType: !4138, size: 256, offset: 128)
!4138 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4139, line: 37, size: 256, elements: !4140)
!4139 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4140 = !{!4141, !4146, !4159, !4165, !4174, !4201, !4206}
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4138, file: !4139, line: 42, baseType: !4142, size: 64)
!4142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4138, file: !4139, line: 39, size: 64, elements: !4143)
!4143 = !{!4144, !4145}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4142, file: !4139, line: 40, baseType: !3433, size: 32)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4142, file: !4139, line: 41, baseType: !339, size: 32, offset: 32)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4138, file: !4139, line: 50, baseType: !4147, size: 192)
!4147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4138, file: !4139, line: 45, size: 192, elements: !4148)
!4148 = !{!4149, !4151, !4152, !4158}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4147, file: !4139, line: 46, baseType: !4150, size: 32)
!4150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !49, line: 95, baseType: !13)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4147, file: !4139, line: 47, baseType: !13, size: 32, offset: 32)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4147, file: !4139, line: 48, baseType: !4153, size: 64, offset: 64)
!4153 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4139, line: 11, baseType: !4154)
!4154 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4139, line: 8, size: 64, elements: !4155)
!4155 = !{!4156, !4157}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4154, file: !4139, line: 9, baseType: !13, size: 32)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4154, file: !4139, line: 10, baseType: !33, size: 64)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4147, file: !4139, line: 49, baseType: !13, size: 32, offset: 128)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4138, file: !4139, line: 57, baseType: !4160, size: 128)
!4160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4138, file: !4139, line: 53, size: 128, elements: !4161)
!4161 = !{!4162, !4163, !4164}
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4160, file: !4139, line: 54, baseType: !3433, size: 32)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4160, file: !4139, line: 55, baseType: !339, size: 32, offset: 32)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4160, file: !4139, line: 56, baseType: !4153, size: 64, offset: 64)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4138, file: !4139, line: 66, baseType: !4166, size: 256)
!4166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4138, file: !4139, line: 60, size: 256, elements: !4167)
!4167 = !{!4168, !4169, !4170, !4171, !4173}
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4166, file: !4139, line: 61, baseType: !3433, size: 32)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4166, file: !4139, line: 62, baseType: !339, size: 32, offset: 32)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4166, file: !4139, line: 63, baseType: !13, size: 32, offset: 64)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4166, file: !4139, line: 64, baseType: !4172, size: 64, offset: 128)
!4172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !49, line: 94, baseType: !601)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4166, file: !4139, line: 65, baseType: !4172, size: 64, offset: 192)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4138, file: !4139, line: 105, baseType: !4175, size: 256)
!4175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4138, file: !4139, line: 69, size: 256, elements: !4176)
!4176 = !{!4177, !4178}
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4175, file: !4139, line: 70, baseType: !33, size: 64)
!4178 = !DIDerivedType(tag: DW_TAG_member, scope: !4175, file: !4139, line: 79, baseType: !4179, size: 192, offset: 64)
!4179 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4175, file: !4139, line: 79, size: 192, elements: !4180)
!4180 = !{!4181, !4182, !4183, !4190, !4195}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4179, file: !4139, line: 81, baseType: !13, size: 32)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4179, file: !4139, line: 86, baseType: !825, size: 16)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4179, file: !4139, line: 92, baseType: !4184, size: 192)
!4184 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4179, file: !4139, line: 88, size: 192, elements: !4185)
!4185 = !{!4186, !4188, !4189}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4184, file: !4139, line: 89, baseType: !4187, size: 64)
!4187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !2829)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4184, file: !4139, line: 90, baseType: !33, size: 64, offset: 64)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4184, file: !4139, line: 91, baseType: !33, size: 64, offset: 128)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4179, file: !4139, line: 97, baseType: !4191, size: 96)
!4191 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4179, file: !4139, line: 94, size: 96, elements: !4192)
!4192 = !{!4193, !4194}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4191, file: !4139, line: 95, baseType: !4187, size: 64)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4191, file: !4139, line: 96, baseType: !397, size: 32, offset: 64)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4179, file: !4139, line: 103, baseType: !4196, size: 128)
!4196 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4179, file: !4139, line: 99, size: 128, elements: !4197)
!4197 = !{!4198, !4199, !4200}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4196, file: !4139, line: 100, baseType: !51, size: 64)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4196, file: !4139, line: 101, baseType: !397, size: 32, offset: 64)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4196, file: !4139, line: 102, baseType: !397, size: 32, offset: 96)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4138, file: !4139, line: 111, baseType: !4202, size: 128)
!4202 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4138, file: !4139, line: 108, size: 128, elements: !4203)
!4203 = !{!4204, !4205}
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4202, file: !4139, line: 109, baseType: !602, size: 64)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4202, file: !4139, line: 110, baseType: !13, size: 32, offset: 64)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4138, file: !4139, line: 118, baseType: !4207, size: 128)
!4207 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4138, file: !4139, line: 114, size: 128, elements: !4208)
!4208 = !{!4209, !4210, !4211}
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4207, file: !4139, line: 115, baseType: !33, size: 64)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4207, file: !4139, line: 116, baseType: !13, size: 32, offset: 64)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4207, file: !4139, line: 117, baseType: !18, size: 32, offset: 96)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3141, file: !10, line: 1208, baseType: !3930, size: 448, offset: 17664)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !3141, file: !10, line: 1215, baseType: !400, size: 64, offset: 18112)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !3141, file: !10, line: 1217, baseType: !400, size: 64, offset: 18176)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !3141, file: !10, line: 1219, baseType: !400, size: 64, offset: 18240)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !3141, file: !10, line: 1223, baseType: !4217, size: 64, offset: 18304)
!4217 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4218, line: 99, baseType: !4219)
!4218 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4219 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4218, line: 99, size: 64, elements: !4220)
!4220 = !{!4221}
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4219, file: !4218, line: 99, baseType: !3303, size: 64)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !3141, file: !10, line: 1225, baseType: !368, size: 32, offset: 18368)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !3141, file: !10, line: 1226, baseType: !13, size: 32, offset: 18400)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !3141, file: !10, line: 1227, baseType: !13, size: 32, offset: 18432)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !3141, file: !10, line: 1231, baseType: !3546, size: 64, offset: 18496)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !3141, file: !10, line: 1233, baseType: !109, size: 128, offset: 18560)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !3141, file: !10, line: 1240, baseType: !4228, size: 64, offset: 18688)
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4229, size: 64)
!4229 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !10, line: 62, flags: DIFlagFwdDecl)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !3141, file: !10, line: 1242, baseType: !4231, size: 64, offset: 18752)
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !10, line: 1242, flags: DIFlagFwdDecl)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !3141, file: !10, line: 1244, baseType: !109, size: 128, offset: 18816)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !3141, file: !10, line: 1245, baseType: !4235, size: 64, offset: 18944)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !10, line: 51, flags: DIFlagFwdDecl)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !3141, file: !10, line: 1246, baseType: !668, size: 256, offset: 19008)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !3141, file: !10, line: 1247, baseType: !18, size: 32, offset: 19264)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !3141, file: !10, line: 1250, baseType: !4240, size: 64, offset: 19328)
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4241, size: 64)
!4241 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !10, line: 57, flags: DIFlagFwdDecl)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !3141, file: !10, line: 1251, baseType: !668, size: 256, offset: 19392)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !3141, file: !10, line: 1252, baseType: !109, size: 128, offset: 19648)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !3141, file: !10, line: 1259, baseType: !1597, size: 64, offset: 19776)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !3141, file: !10, line: 1260, baseType: !825, size: 16, offset: 19840)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !3141, file: !10, line: 1261, baseType: !825, size: 16, offset: 19856)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !3141, file: !10, line: 1314, baseType: !4248, size: 64, offset: 19904)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4250, line: 62, size: 256, align: 256, elements: !4251)
!4250 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4251 = !{!4252, !4253, !4254, !4255, !4256, !4257, !4258}
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4249, file: !4250, line: 75, baseType: !397, size: 32)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4249, file: !4250, line: 90, baseType: !397, size: 32, offset: 32)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4249, file: !4250, line: 112, baseType: !401, size: 64, offset: 64)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4249, file: !4250, line: 132, baseType: !397, size: 32, offset: 128)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4249, file: !4250, line: 140, baseType: !397, size: 32, offset: 160)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4249, file: !4250, line: 149, baseType: !397, size: 32, offset: 192)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4249, file: !4250, line: 154, baseType: !4259, offset: 224)
!4259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !298)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !3141, file: !10, line: 1315, baseType: !396, size: 32, offset: 19968)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !3141, file: !10, line: 1316, baseType: !396, size: 32, offset: 20000)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !3141, file: !10, line: 1321, baseType: !51, size: 64, offset: 20032)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3141, file: !10, line: 1325, baseType: !13, size: 32, offset: 20096)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !3141, file: !10, line: 1326, baseType: !13, size: 32, offset: 20128)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !3141, file: !10, line: 1327, baseType: !13, size: 32, offset: 20160)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !3141, file: !10, line: 1328, baseType: !13, size: 32, offset: 20192)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !3141, file: !10, line: 1329, baseType: !287, size: 128, align: 64, offset: 20224)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !3141, file: !10, line: 1332, baseType: !4269, size: 128, offset: 20352)
!4269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4270, line: 51, size: 128, elements: !4271)
!4270 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4271 = !{!4272, !4277, !4278}
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4269, file: !4270, line: 60, baseType: !4273, size: 64)
!4273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4274, line: 7, size: 64, elements: !4275)
!4274 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4275 = !{!4276}
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4273, file: !4274, line: 12, baseType: !3300, size: 64)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4269, file: !4270, line: 63, baseType: !856, size: 8, offset: 64)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4269, file: !4270, line: 70, baseType: !856, size: 8, offset: 72)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !3141, file: !10, line: 1335, baseType: !1649, size: 64, offset: 20480)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !3141, file: !10, line: 1337, baseType: !4281, size: 128, offset: 20544)
!4281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4270, line: 39, size: 128, elements: !4282)
!4282 = !{!4283, !4284, !4285}
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4281, file: !4270, line: 40, baseType: !301, size: 64)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4281, file: !4270, line: 42, baseType: !397, size: 32, offset: 64)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4281, file: !4270, line: 43, baseType: !397, size: 32, offset: 96)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !3141, file: !10, line: 1340, baseType: !4287, size: 64, offset: 20672)
!4287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4288, size: 64)
!4288 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !10, line: 69, flags: DIFlagFwdDecl)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !3141, file: !10, line: 1351, baseType: !13, size: 32, offset: 20736)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !3141, file: !10, line: 1352, baseType: !13, size: 32, offset: 20768)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !3141, file: !10, line: 1354, baseType: !51, size: 64, offset: 20800)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !3141, file: !10, line: 1364, baseType: !400, size: 64, offset: 20864)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !3141, file: !10, line: 1365, baseType: !400, size: 64, offset: 20928)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !3141, file: !10, line: 1412, baseType: !51, size: 64, offset: 20992)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !3141, file: !10, line: 1453, baseType: !2557, size: 64, offset: 21056)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !3141, file: !10, line: 1457, baseType: !4297, size: 64, offset: 21120)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !256, line: 61, size: 576, elements: !4299)
!4299 = !{!4300, !4301, !4320, !4323, !4324, !4357, !4367}
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4298, file: !256, line: 62, baseType: !255, size: 32)
!4301 = !DIDerivedType(tag: DW_TAG_member, scope: !4298, file: !256, line: 64, baseType: !4302, size: 192, offset: 64)
!4302 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4298, file: !256, line: 64, size: 192, elements: !4303)
!4303 = !{!4304, !4315}
!4304 = !DIDerivedType(tag: DW_TAG_member, scope: !4302, file: !256, line: 65, baseType: !4305, size: 192)
!4305 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4302, file: !256, line: 65, size: 192, elements: !4306)
!4306 = !{!4307, !4314}
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4305, file: !256, line: 66, baseType: !4308, size: 128)
!4308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4309, line: 50, size: 128, elements: !4310)
!4309 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4310 = !{!4311, !4312, !4313}
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4308, file: !4309, line: 52, baseType: !51, size: 64)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4308, file: !4309, line: 54, baseType: !18, size: 32, offset: 64)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4308, file: !4309, line: 55, baseType: !18, size: 32, offset: 96)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4305, file: !256, line: 67, baseType: !51, size: 64, offset: 128)
!4315 = !DIDerivedType(tag: DW_TAG_member, scope: !4302, file: !256, line: 70, baseType: !4316, size: 192)
!4316 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4302, file: !256, line: 70, size: 192, elements: !4317)
!4317 = !{!4318, !4319}
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4316, file: !256, line: 71, baseType: !287, size: 128, align: 64)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4316, file: !256, line: 72, baseType: !51, size: 64, offset: 128)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4298, file: !256, line: 76, baseType: !4321, size: 64, offset: 256)
!4321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4322, size: 64)
!4322 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !256, line: 76, flags: DIFlagFwdDecl)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4298, file: !256, line: 77, baseType: !51, size: 64, offset: 320)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4298, file: !256, line: 79, baseType: !4325, size: 64, offset: 384)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4309, line: 25, size: 256, elements: !4327)
!4327 = !{!4328, !4334, !4338}
!4328 = !DIDerivedType(tag: DW_TAG_member, scope: !4326, file: !4309, line: 26, baseType: !4329, size: 128)
!4329 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4326, file: !4309, line: 26, size: 128, elements: !4330)
!4330 = !{!4331, !4333}
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4329, file: !4309, line: 27, baseType: !4332, size: 128)
!4332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 128, elements: !5)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4329, file: !4309, line: 28, baseType: !4332, size: 128)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4326, file: !4309, line: 31, baseType: !4335, size: 64, offset: 128)
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 64)
!4336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4337)
!4337 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4309, line: 23, flags: DIFlagFwdDecl)
!4338 = !DIDerivedType(tag: DW_TAG_member, scope: !4326, file: !4309, line: 33, baseType: !4339, size: 64, offset: 192)
!4339 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4326, file: !4309, line: 33, size: 64, elements: !4340)
!4340 = !{!4341, !4347, !4352}
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4339, file: !4309, line: 38, baseType: !4342, size: 64)
!4342 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4339, file: !4309, line: 34, size: 64, elements: !4343)
!4343 = !{!4344, !4345, !4346}
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4342, file: !4309, line: 35, baseType: !782, size: 32)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4342, file: !4309, line: 36, baseType: !95, size: 8, offset: 32)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4342, file: !4309, line: 37, baseType: !95, size: 8, offset: 40)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4339, file: !4309, line: 42, baseType: !4348, size: 16)
!4348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4339, file: !4309, line: 39, size: 16, elements: !4349)
!4349 = !{!4350, !4351}
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4348, file: !4309, line: 40, baseType: !95, size: 8)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4348, file: !4309, line: 41, baseType: !95, size: 8, offset: 8)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4339, file: !4309, line: 46, baseType: !4353, size: 16)
!4353 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4339, file: !4309, line: 43, size: 16, elements: !4354)
!4354 = !{!4355, !4356}
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4353, file: !4309, line: 44, baseType: !95, size: 8)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4353, file: !4309, line: 45, baseType: !95, size: 8, offset: 8)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4298, file: !256, line: 81, baseType: !4358, size: 64, offset: 448)
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !256, line: 85, size: 384, elements: !4360)
!4360 = !{!4361, !4362, !4363, !4364, !4365, !4366}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4359, file: !256, line: 86, baseType: !4321, size: 64)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4359, file: !256, line: 87, baseType: !51, size: 64, offset: 64)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4359, file: !256, line: 88, baseType: !51, size: 64, offset: 128)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4359, file: !256, line: 89, baseType: !51, size: 64, offset: 192)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4359, file: !256, line: 90, baseType: !856, size: 8, offset: 256)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4359, file: !256, line: 92, baseType: !4358, size: 64, offset: 320)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4298, file: !256, line: 82, baseType: !18, size: 32, offset: 512)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !3141, file: !10, line: 1463, baseType: !4369, offset: 21184)
!4369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !10, line: 739, elements: !1321)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3141, file: !10, line: 1470, baseType: !287, size: 128, align: 64, offset: 21184)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3141, file: !10, line: 1471, baseType: !711, size: 32, offset: 21312)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !3141, file: !10, line: 1472, baseType: !13, size: 32, offset: 21344)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !3141, file: !10, line: 1474, baseType: !3140, size: 64, offset: 21376)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !3141, file: !10, line: 1475, baseType: !2129, size: 320, offset: 21440)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !3141, file: !10, line: 1478, baseType: !4376, size: 64, offset: 21760)
!4376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4377, size: 64)
!4377 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !10, line: 1478, flags: DIFlagFwdDecl)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !3141, file: !10, line: 1482, baseType: !711, size: 32, offset: 21824)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3141, file: !10, line: 1489, baseType: !33, size: 64, offset: 21888)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !3141, file: !10, line: 1504, baseType: !33, size: 64, offset: 21952)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !3141, file: !10, line: 1505, baseType: !401, size: 64, offset: 22016)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !3141, file: !10, line: 1506, baseType: !400, size: 64, offset: 22080)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !3141, file: !10, line: 1507, baseType: !401, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !3141, file: !10, line: 1508, baseType: !401, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !3141, file: !10, line: 1509, baseType: !401, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !3141, file: !10, line: 1510, baseType: !287, size: 128, align: 64, offset: 22208)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !3141, file: !10, line: 1511, baseType: !13, size: 32, offset: 22336)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !3141, file: !10, line: 1515, baseType: !4389, size: 64, offset: 22400)
!4389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !649, line: 56, size: 64, elements: !4390)
!4390 = !{!4391}
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4389, file: !649, line: 57, baseType: !652, size: 64)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !3141, file: !10, line: 1518, baseType: !4389, size: 64, offset: 22464)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !3141, file: !10, line: 1528, baseType: !287, size: 128, align: 64, offset: 22528)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3141, file: !10, line: 1552, baseType: !4395, size: 35328, offset: 23040)
!4395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4396, line: 430, size: 35328, elements: !4397)
!4396 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4397 = !{!4398, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4427, !4428, !4429, !4430, !4431, !4432, !4435, !4436, !4437, !4438}
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4395, file: !4396, line: 432, baseType: !4399, size: 192)
!4399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4400, size: 192, elements: !568)
!4400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4401, line: 16, size: 64, elements: !4402)
!4401 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4402 = !{!4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415}
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4400, file: !4401, line: 17, baseType: !105, size: 16)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4400, file: !4401, line: 18, baseType: !105, size: 16, offset: 16)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4400, file: !4401, line: 19, baseType: !105, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4400, file: !4401, line: 19, baseType: !105, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4400, file: !4401, line: 19, baseType: !105, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4400, file: !4401, line: 19, baseType: !105, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4400, file: !4401, line: 19, baseType: !105, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4400, file: !4401, line: 20, baseType: !105, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4400, file: !4401, line: 20, baseType: !105, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4400, file: !4401, line: 20, baseType: !105, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4400, file: !4401, line: 20, baseType: !105, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4400, file: !4401, line: 20, baseType: !105, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4400, file: !4401, line: 20, baseType: !105, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4395, file: !4396, line: 436, baseType: !51, size: 64, offset: 192)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4395, file: !4396, line: 440, baseType: !38, size: 16, offset: 256)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4395, file: !4396, line: 441, baseType: !38, size: 16, offset: 272)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4395, file: !4396, line: 442, baseType: !38, size: 16, offset: 288)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4395, file: !4396, line: 443, baseType: !38, size: 16, offset: 304)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4395, file: !4396, line: 447, baseType: !51, size: 64, offset: 320)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4395, file: !4396, line: 448, baseType: !51, size: 64, offset: 384)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4395, file: !4396, line: 459, baseType: !4424, size: 256, offset: 448)
!4424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4425, size: 256, elements: !729)
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4396, line: 428, flags: DIFlagFwdDecl)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4395, file: !4396, line: 461, baseType: !51, size: 64, offset: 704)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4395, file: !4396, line: 463, baseType: !51, size: 64, offset: 768)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4395, file: !4396, line: 465, baseType: !51, size: 64, offset: 832)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4395, file: !4396, line: 466, baseType: !51, size: 64, offset: 896)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4395, file: !4396, line: 467, baseType: !51, size: 64, offset: 960)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4395, file: !4396, line: 473, baseType: !4433, size: 64, offset: 1024)
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4434, size: 64)
!4434 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4396, line: 10, flags: DIFlagFwdDecl)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4395, file: !4396, line: 480, baseType: !51, size: 64, offset: 1088)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4395, file: !4396, line: 482, baseType: !18, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4395, file: !4396, line: 491, baseType: !396, size: 32, offset: 1184)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4395, file: !4396, line: 501, baseType: !4439, size: 33792, offset: 1536)
!4439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4440, line: 448, size: 33792, elements: !4441)
!4440 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4441 = !{!4442, !4443, !4444, !4604, !4605, !4611, !4612}
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4439, file: !4440, line: 461, baseType: !18, size: 32)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4439, file: !4440, line: 468, baseType: !51, size: 64, offset: 64)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4439, file: !4440, line: 476, baseType: !4445, size: 64, offset: 128)
!4445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4446, size: 64)
!4446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4440, line: 356, size: 33280, align: 512, elements: !4447)
!4447 = !{!4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457}
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4446, file: !4440, line: 358, baseType: !18, size: 32)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4446, file: !4440, line: 361, baseType: !18, size: 32, offset: 32)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4446, file: !4440, line: 364, baseType: !400, size: 64, offset: 64)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4446, file: !4440, line: 367, baseType: !400, size: 64, offset: 128)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4446, file: !4440, line: 370, baseType: !400, size: 64, offset: 192)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4446, file: !4440, line: 373, baseType: !18, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4446, file: !4440, line: 376, baseType: !18, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4446, file: !4440, line: 391, baseType: !18, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4446, file: !4440, line: 394, baseType: !18, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4446, file: !4440, line: 397, baseType: !4458, size: 32768, offset: 512)
!4458 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4440, line: 348, size: 32768, elements: !4459)
!4459 = !{!4460, !4475, !4512, !4589, !4602}
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4458, file: !4440, line: 349, baseType: !4461, size: 896)
!4461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4440, line: 12, size: 896, elements: !4462)
!4462 = !{!4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4474}
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4461, file: !4440, line: 13, baseType: !396, size: 32)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4461, file: !4440, line: 14, baseType: !396, size: 32, offset: 32)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4461, file: !4440, line: 15, baseType: !396, size: 32, offset: 64)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4461, file: !4440, line: 16, baseType: !396, size: 32, offset: 96)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4461, file: !4440, line: 17, baseType: !396, size: 32, offset: 128)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4461, file: !4440, line: 18, baseType: !396, size: 32, offset: 160)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4461, file: !4440, line: 19, baseType: !396, size: 32, offset: 192)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4461, file: !4440, line: 22, baseType: !4471, size: 640, offset: 224)
!4471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !396, size: 640, elements: !4472)
!4472 = !{!4473}
!4473 = !DISubrange(count: 20)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4461, file: !4440, line: 25, baseType: !396, size: 32, offset: 864)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4458, file: !4440, line: 350, baseType: !4476, size: 4096, align: 128)
!4476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4440, line: 34, size: 4096, align: 128, elements: !4477)
!4477 = !{!4478, !4479, !4480, !4481, !4482, !4497, !4498, !4499, !4501, !4503, !4507}
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4476, file: !4440, line: 35, baseType: !105, size: 16)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4476, file: !4440, line: 36, baseType: !105, size: 16, offset: 16)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4476, file: !4440, line: 37, baseType: !105, size: 16, offset: 32)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4476, file: !4440, line: 38, baseType: !105, size: 16, offset: 48)
!4482 = !DIDerivedType(tag: DW_TAG_member, scope: !4476, file: !4440, line: 39, baseType: !4483, size: 128, offset: 64)
!4483 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4476, file: !4440, line: 39, size: 128, elements: !4484)
!4484 = !{!4485, !4490}
!4485 = !DIDerivedType(tag: DW_TAG_member, scope: !4483, file: !4440, line: 40, baseType: !4486, size: 128)
!4486 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4483, file: !4440, line: 40, size: 128, elements: !4487)
!4487 = !{!4488, !4489}
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4486, file: !4440, line: 41, baseType: !400, size: 64)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4486, file: !4440, line: 42, baseType: !400, size: 64, offset: 64)
!4490 = !DIDerivedType(tag: DW_TAG_member, scope: !4483, file: !4440, line: 44, baseType: !4491, size: 128)
!4491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4483, file: !4440, line: 44, size: 128, elements: !4492)
!4492 = !{!4493, !4494, !4495, !4496}
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4491, file: !4440, line: 45, baseType: !396, size: 32)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4491, file: !4440, line: 46, baseType: !396, size: 32, offset: 32)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4491, file: !4440, line: 47, baseType: !396, size: 32, offset: 64)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4491, file: !4440, line: 48, baseType: !396, size: 32, offset: 96)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4476, file: !4440, line: 51, baseType: !396, size: 32, offset: 192)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4476, file: !4440, line: 52, baseType: !396, size: 32, offset: 224)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4476, file: !4440, line: 55, baseType: !4500, size: 1024, offset: 256)
!4500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !396, size: 1024, elements: !409)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4476, file: !4440, line: 58, baseType: !4502, size: 2048, offset: 1280)
!4502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !396, size: 2048, elements: !572)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4476, file: !4440, line: 60, baseType: !4504, size: 384, offset: 3328)
!4504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !396, size: 384, elements: !4505)
!4505 = !{!4506}
!4506 = !DISubrange(count: 12)
!4507 = !DIDerivedType(tag: DW_TAG_member, scope: !4476, file: !4440, line: 62, baseType: !4508, size: 384, offset: 3712)
!4508 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4476, file: !4440, line: 62, size: 384, elements: !4509)
!4509 = !{!4510, !4511}
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4508, file: !4440, line: 63, baseType: !4504, size: 384)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4508, file: !4440, line: 64, baseType: !4504, size: 384)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4458, file: !4440, line: 351, baseType: !4513, size: 1088)
!4513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4440, line: 79, size: 1088, elements: !4514)
!4514 = !{!4515, !4516, !4517, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4588}
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4513, file: !4440, line: 80, baseType: !396, size: 32)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4513, file: !4440, line: 81, baseType: !396, size: 32, offset: 32)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4513, file: !4440, line: 82, baseType: !396, size: 32, offset: 64)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4513, file: !4440, line: 83, baseType: !396, size: 32, offset: 96)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4513, file: !4440, line: 84, baseType: !396, size: 32, offset: 128)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4513, file: !4440, line: 85, baseType: !396, size: 32, offset: 160)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4513, file: !4440, line: 86, baseType: !396, size: 32, offset: 192)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4513, file: !4440, line: 88, baseType: !4471, size: 640, offset: 224)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4513, file: !4440, line: 89, baseType: !95, size: 8, offset: 864)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4513, file: !4440, line: 90, baseType: !95, size: 8, offset: 872)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4513, file: !4440, line: 91, baseType: !95, size: 8, offset: 880)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4513, file: !4440, line: 92, baseType: !95, size: 8, offset: 888)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4513, file: !4440, line: 93, baseType: !95, size: 8, offset: 896)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4513, file: !4440, line: 94, baseType: !95, size: 8, offset: 904)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4513, file: !4440, line: 95, baseType: !4530, size: 64, offset: 960)
!4530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4531, size: 64)
!4531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4532, line: 11, size: 128, elements: !4533)
!4532 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4533 = !{!4534, !4535}
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4531, file: !4532, line: 12, baseType: !602, size: 64)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4531, file: !4532, line: 13, baseType: !4536, size: 64, offset: 64)
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4538, line: 103, size: 1344, elements: !4539)
!4538 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4539 = !{!4540, !4541, !4542, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4568, !4569, !4570}
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4537, file: !4538, line: 109, baseType: !51, size: 64)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4537, file: !4538, line: 110, baseType: !51, size: 64, offset: 64)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4537, file: !4538, line: 111, baseType: !51, size: 64, offset: 128)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4537, file: !4538, line: 112, baseType: !51, size: 64, offset: 192)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4537, file: !4538, line: 113, baseType: !51, size: 64, offset: 256)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4537, file: !4538, line: 114, baseType: !51, size: 64, offset: 320)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4537, file: !4538, line: 117, baseType: !51, size: 64, offset: 384)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4537, file: !4538, line: 118, baseType: !51, size: 64, offset: 448)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4537, file: !4538, line: 119, baseType: !51, size: 64, offset: 512)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4537, file: !4538, line: 120, baseType: !51, size: 64, offset: 576)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4537, file: !4538, line: 121, baseType: !51, size: 64, offset: 640)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4537, file: !4538, line: 122, baseType: !51, size: 64, offset: 704)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4537, file: !4538, line: 123, baseType: !51, size: 64, offset: 768)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4537, file: !4538, line: 124, baseType: !51, size: 64, offset: 832)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4537, file: !4538, line: 125, baseType: !51, size: 64, offset: 896)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4537, file: !4538, line: 139, baseType: !51, size: 64, offset: 960)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4537, file: !4538, line: 142, baseType: !51, size: 64, offset: 1024)
!4557 = !DIDerivedType(tag: DW_TAG_member, scope: !4537, file: !4538, line: 144, baseType: !4558, size: 64, offset: 1088)
!4558 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4537, file: !4538, line: 144, size: 64, elements: !4559)
!4559 = !{!4560, !4561, !4562}
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4558, file: !4538, line: 146, baseType: !105, size: 16)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4558, file: !4538, line: 148, baseType: !400, size: 64)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4558, file: !4538, line: 150, baseType: !4563, size: 64)
!4563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4538, line: 59, size: 64, elements: !4564)
!4564 = !{!4565, !4566, !4567}
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4563, file: !4538, line: 61, baseType: !400, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4563, file: !4538, line: 63, baseType: !400, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4563, file: !4538, line: 65, baseType: !400, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4537, file: !4538, line: 153, baseType: !51, size: 64, offset: 1152)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4537, file: !4538, line: 154, baseType: !51, size: 64, offset: 1216)
!4570 = !DIDerivedType(tag: DW_TAG_member, scope: !4537, file: !4538, line: 156, baseType: !4571, size: 64, offset: 1280)
!4571 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4537, file: !4538, line: 156, size: 64, elements: !4572)
!4572 = !{!4573, !4574, !4575}
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4571, file: !4538, line: 158, baseType: !105, size: 16)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4571, file: !4538, line: 160, baseType: !400, size: 64)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4571, file: !4538, line: 162, baseType: !4576, size: 64)
!4576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4538, line: 69, size: 64, elements: !4577)
!4577 = !{!4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4587}
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4576, file: !4538, line: 71, baseType: !400, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4576, file: !4538, line: 73, baseType: !400, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4576, file: !4538, line: 75, baseType: !400, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4576, file: !4538, line: 77, baseType: !400, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4576, file: !4538, line: 80, baseType: !400, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4576, file: !4538, line: 83, baseType: !400, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4576, file: !4538, line: 86, baseType: !400, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4576, file: !4538, line: 88, baseType: !400, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4576, file: !4538, line: 93, baseType: !400, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4576, file: !4538, line: 100, baseType: !400, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4513, file: !4440, line: 96, baseType: !396, size: 32, offset: 1024)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4458, file: !4440, line: 352, baseType: !4590, size: 4608, align: 512)
!4590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4440, line: 333, size: 4608, align: 512, elements: !4591)
!4591 = !{!4592, !4593, !4600}
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4590, file: !4440, line: 334, baseType: !4476, size: 4096, align: 128)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4590, file: !4440, line: 335, baseType: !4594, size: 512, offset: 4096)
!4594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4440, line: 312, size: 512, elements: !4595)
!4595 = !{!4596, !4597, !4598}
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4594, file: !4440, line: 313, baseType: !400, size: 64)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4594, file: !4440, line: 314, baseType: !400, size: 64, offset: 64)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4594, file: !4440, line: 315, baseType: !4599, size: 384, offset: 128)
!4599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, size: 384, elements: !843)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4590, file: !4440, line: 336, baseType: !4601, offset: 4608)
!4601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, elements: !298)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4458, file: !4440, line: 353, baseType: !4603, size: 32768)
!4603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 32768, elements: !3603)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4439, file: !4440, line: 484, baseType: !4445, size: 64, offset: 192)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4439, file: !4440, line: 491, baseType: !4606, size: 128, offset: 256)
!4606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4440, line: 404, size: 128, elements: !4607)
!4607 = !{!4608, !4609, !4610}
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4606, file: !4440, line: 424, baseType: !400, size: 64)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4606, file: !4440, line: 432, baseType: !18, size: 32, offset: 64)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4606, file: !4440, line: 440, baseType: !18, size: 32, offset: 96)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4439, file: !4440, line: 498, baseType: !4606, size: 128, offset: 384)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4439, file: !4440, line: 508, baseType: !4446, size: 33280, align: 512, offset: 512)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3123, file: !3124, line: 16, baseType: !66, size: 192, offset: 512)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3123, file: !3124, line: 17, baseType: !61, size: 32, offset: 704)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !480, file: !227, line: 1240, baseType: !33, size: 64, offset: 6912)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !480, file: !227, line: 1243, baseType: !396, size: 32, offset: 6976)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !480, file: !227, line: 1245, baseType: !813, size: 64, offset: 7040)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !480, file: !227, line: 1246, baseType: !813, size: 64, offset: 7104)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !480, file: !227, line: 1248, baseType: !397, size: 32, offset: 7168)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !480, file: !227, line: 1249, baseType: !4621, size: 64, offset: 7232)
!4621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4622, size: 64)
!4622 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !227, line: 634, flags: DIFlagFwdDecl)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !480, file: !227, line: 1252, baseType: !3976, size: 256, offset: 7296)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !480, file: !227, line: 1253, baseType: !4625, size: 128, offset: 7552)
!4625 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4626, line: 21, baseType: !4627)
!4626 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4627 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4626, line: 19, size: 128, elements: !4628)
!4628 = !{!4629}
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4627, file: !4626, line: 20, baseType: !4630, size: 128)
!4630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 128, elements: !5)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !480, file: !227, line: 1255, baseType: !18, size: 32, offset: 7680)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !480, file: !227, line: 1261, baseType: !668, size: 256, offset: 7744)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !480, file: !227, line: 1267, baseType: !30, size: 64, offset: 8000)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !480, file: !227, line: 1269, baseType: !425, size: 64, offset: 8064)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !480, file: !227, line: 1271, baseType: !4636, size: 448, offset: 8128)
!4636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2390, line: 63, size: 448, elements: !4637)
!4637 = !{!4638, !4643, !4644, !4645, !4646, !4647, !4648}
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4636, file: !2390, line: 64, baseType: !4639, size: 64)
!4639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4640, size: 64)
!4640 = !DISubroutineType(types: !4641)
!4641 = !{!51, !4642, !2388}
!4642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4636, size: 64)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4636, file: !2390, line: 66, baseType: !4639, size: 64, offset: 64)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4636, file: !2390, line: 69, baseType: !602, size: 64, offset: 128)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4636, file: !2390, line: 70, baseType: !13, size: 32, offset: 192)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4636, file: !2390, line: 71, baseType: !18, size: 32, offset: 224)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4636, file: !2390, line: 74, baseType: !109, size: 128, offset: 256)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4636, file: !2390, line: 85, baseType: !4649, size: 64, offset: 384)
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !480, file: !227, line: 1274, baseType: !659, size: 64, offset: 8576)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !480, file: !227, line: 1280, baseType: !659, size: 64, offset: 8640)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !480, file: !227, line: 1283, baseType: !13, size: 32, offset: 8704)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !480, file: !227, line: 1286, baseType: !1737, size: 32, offset: 8736)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !480, file: !227, line: 1289, baseType: !2191, size: 64, offset: 8768)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !480, file: !227, line: 1290, baseType: !720, size: 64, offset: 8832)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !480, file: !227, line: 1297, baseType: !939, size: 64, offset: 8896)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !480, file: !227, line: 1304, baseType: !4658, size: 64, offset: 8960)
!4658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4659, line: 49, size: 64, elements: !4660)
!4659 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4660 = !{!4661}
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4658, file: !4659, line: 50, baseType: !4662, size: 64)
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4659, line: 41, size: 512, align: 512, elements: !4664)
!4664 = !{!4665, !4666, !4671}
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4663, file: !4659, line: 43, baseType: !71, size: 32)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4663, file: !4659, line: 45, baseType: !4667, size: 192, offset: 64)
!4667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4659, line: 29, size: 192, elements: !4668)
!4668 = !{!4669, !4670}
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4667, file: !4659, line: 30, baseType: !109, size: 128)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4667, file: !4659, line: 32, baseType: !602, size: 64, offset: 128)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4663, file: !4659, line: 46, baseType: !602, size: 64, offset: 256)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !480, file: !227, line: 1305, baseType: !4658, size: 64, offset: 9024)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !480, file: !227, line: 1306, baseType: !287, size: 128, align: 64, offset: 9088)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !480, file: !227, line: 1307, baseType: !988, size: 256, offset: 9216)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !480, file: !227, line: 1309, baseType: !668, size: 256, offset: 9472)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !480, file: !227, line: 1314, baseType: !13, size: 32, offset: 9728)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !480, file: !227, line: 1317, baseType: !71, size: 32, align: 512, offset: 10240)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !480, file: !227, line: 1318, baseType: !109, size: 128, offset: 10304)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !480, file: !227, line: 1320, baseType: !71, size: 32, offset: 10432)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !480, file: !227, line: 1321, baseType: !109, size: 128, offset: 10496)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !474, file: !475, line: 73, baseType: !13, size: 32, offset: 128)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !474, file: !475, line: 74, baseType: !4683, size: 64, offset: 192)
!4683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4684, size: 64)
!4684 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !764, line: 42, flags: DIFlagFwdDecl)
!4685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !427, file: !364, line: 141, baseType: !4687, size: 64, offset: 704)
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4688 = !DISubroutineType(types: !4689)
!4689 = !{!13, !2450, !856}
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !427, file: !364, line: 142, baseType: !4691, size: 64, offset: 768)
!4691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4692, size: 64)
!4692 = !DISubroutineType(types: !4693)
!4693 = !{!362, !362, !4694}
!4694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4695, size: 64)
!4695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !328)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !363, file: !364, line: 96, baseType: !479, size: 64, offset: 832)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !363, file: !364, line: 97, baseType: !51, size: 64, offset: 896)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !363, file: !364, line: 98, baseType: !33, size: 64, offset: 960)
!4699 = !DIDerivedType(tag: DW_TAG_member, scope: !363, file: !364, line: 100, baseType: !4700, size: 128, offset: 1024)
!4700 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !363, file: !364, line: 100, size: 128, elements: !4701)
!4701 = !{!4702, !4703}
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4700, file: !364, line: 101, baseType: !109, size: 128)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4700, file: !364, line: 102, baseType: !4704, size: 64)
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !363, file: !364, line: 104, baseType: !109, size: 128, offset: 1152)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !363, file: !364, line: 105, baseType: !109, size: 128, offset: 1280)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !363, file: !364, line: 113, baseType: !4708, size: 128, offset: 1408)
!4708 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !363, file: !364, line: 109, size: 128, elements: !4709)
!4709 = !{!4710, !4711, !4712}
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4708, file: !364, line: 110, baseType: !724, size: 128)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4708, file: !364, line: 111, baseType: !378, size: 128)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4708, file: !364, line: 112, baseType: !287, size: 128, align: 64)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !356, file: !227, line: 1968, baseType: !4714, size: 64, offset: 64)
!4714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4715, size: 64)
!4715 = !DISubroutineType(types: !4716)
!4716 = !{!30, !362, !327, !4717}
!4717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4718, size: 64)
!4718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4719, line: 10, size: 128, elements: !4720)
!4719 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4720 = !{!4721, !4722}
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4718, file: !4719, line: 11, baseType: !1777, size: 64)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4718, file: !4719, line: 12, baseType: !33, size: 64, offset: 64)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !356, file: !227, line: 1969, baseType: !4724, size: 64, offset: 128)
!4724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4725, size: 64)
!4725 = !DISubroutineType(types: !4726)
!4726 = !{!13, !4683, !327, !13}
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !356, file: !227, line: 1970, baseType: !4728, size: 64, offset: 192)
!4728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4729, size: 64)
!4729 = !DISubroutineType(types: !4730)
!4730 = !{!350, !327, !13, !856}
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !356, file: !227, line: 1972, baseType: !4732, size: 64, offset: 256)
!4732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4733, size: 64)
!4733 = !DISubroutineType(types: !4734)
!4734 = !{!13, !362, !468, !13}
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !356, file: !227, line: 1974, baseType: !4736, size: 64, offset: 320)
!4736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4737, size: 64)
!4737 = !DISubroutineType(types: !4738)
!4738 = !{!13, !4683, !327, !362, !36, !856}
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !356, file: !227, line: 1976, baseType: !4740, size: 64, offset: 384)
!4740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4741, size: 64)
!4741 = !DISubroutineType(types: !4742)
!4742 = !{!13, !362, !327, !362}
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !356, file: !227, line: 1977, baseType: !4744, size: 64, offset: 448)
!4744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4745, size: 64)
!4745 = !DISubroutineType(types: !4746)
!4746 = !{!13, !327, !362}
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !356, file: !227, line: 1978, baseType: !4748, size: 64, offset: 512)
!4748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4749, size: 64)
!4749 = !DISubroutineType(types: !4750)
!4750 = !{!13, !4683, !327, !362, !30}
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !356, file: !227, line: 1980, baseType: !4752, size: 64, offset: 576)
!4752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4753, size: 64)
!4753 = !DISubroutineType(types: !4754)
!4754 = !{!13, !4683, !327, !362, !36}
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !356, file: !227, line: 1982, baseType: !4744, size: 64, offset: 640)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !356, file: !227, line: 1983, baseType: !4757, size: 64, offset: 704)
!4757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4758, size: 64)
!4758 = !DISubroutineType(types: !4759)
!4759 = !{!13, !4683, !327, !362, !36, !484}
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !356, file: !227, line: 1985, baseType: !4761, size: 64, offset: 768)
!4761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4762, size: 64)
!4762 = !DISubroutineType(types: !4763)
!4763 = !{!13, !4683, !327, !362, !327, !362, !18}
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !356, file: !227, line: 1987, baseType: !4765, size: 64, offset: 832)
!4765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4766, size: 64)
!4766 = !DISubroutineType(types: !4767)
!4767 = !{!13, !4683, !362, !4768}
!4768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4769, size: 64)
!4769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !227, line: 226, size: 640, elements: !4770)
!4770 = !{!4771, !4772, !4773, !4783, !4792, !4793, !4798, !4799, !4800}
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4769, file: !227, line: 227, baseType: !18, size: 32)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4769, file: !227, line: 228, baseType: !36, size: 16, offset: 32)
!4773 = !DIDerivedType(tag: DW_TAG_member, scope: !4769, file: !227, line: 241, baseType: !4774, size: 32, offset: 64)
!4774 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4769, file: !227, line: 241, size: 32, elements: !4775)
!4775 = !{!4776, !4777}
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4774, file: !227, line: 242, baseType: !333, size: 32)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4774, file: !227, line: 243, baseType: !4778, size: 32)
!4778 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4779, line: 16, baseType: !4780)
!4779 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4780 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4779, line: 14, size: 32, elements: !4781)
!4781 = !{!4782}
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4780, file: !4779, line: 15, baseType: !338, size: 32)
!4783 = !DIDerivedType(tag: DW_TAG_member, scope: !4769, file: !227, line: 245, baseType: !4784, size: 32, offset: 96)
!4784 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4769, file: !227, line: 245, size: 32, elements: !4785)
!4785 = !{!4786, !4787}
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4784, file: !227, line: 246, baseType: !342, size: 32)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4784, file: !227, line: 247, baseType: !4788, size: 32)
!4788 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4779, line: 20, baseType: !4789)
!4789 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4779, line: 18, size: 32, elements: !4790)
!4790 = !{!4791}
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4789, file: !4779, line: 19, baseType: !346, size: 32)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4769, file: !227, line: 249, baseType: !53, size: 64, offset: 128)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4769, file: !227, line: 250, baseType: !4794, size: 128, offset: 192)
!4794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !814, line: 13, size: 128, elements: !4795)
!4795 = !{!4796, !4797}
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4794, file: !814, line: 14, baseType: !813, size: 64)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4794, file: !814, line: 15, baseType: !602, size: 64, offset: 64)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4769, file: !227, line: 251, baseType: !4794, size: 128, offset: 320)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4769, file: !227, line: 252, baseType: !4794, size: 128, offset: 448)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4769, file: !227, line: 259, baseType: !641, size: 64, offset: 576)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !356, file: !227, line: 1988, baseType: !4802, size: 64, offset: 896)
!4802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4803, size: 64)
!4803 = !DISubroutineType(types: !4804)
!4804 = !{!13, !4683, !2450, !4805, !396, !18}
!4805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4806, size: 64)
!4806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4807, line: 22, size: 1280, elements: !4808)
!4807 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4808 = !{!4809, !4810, !4811, !4812, !4813, !4814, !4815, !4816, !4817, !4818, !4819, !4820, !4821, !4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829}
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4806, file: !4807, line: 23, baseType: !396, size: 32)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4806, file: !4807, line: 24, baseType: !36, size: 16, offset: 32)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4806, file: !4807, line: 25, baseType: !18, size: 32, offset: 64)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4806, file: !4807, line: 26, baseType: !821, size: 32, offset: 96)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4806, file: !4807, line: 27, baseType: !400, size: 64, offset: 128)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4806, file: !4807, line: 28, baseType: !400, size: 64, offset: 192)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4806, file: !4807, line: 41, baseType: !400, size: 64, offset: 256)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4806, file: !4807, line: 42, baseType: !484, size: 32, offset: 320)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4806, file: !4807, line: 43, baseType: !484, size: 32, offset: 352)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4806, file: !4807, line: 44, baseType: !333, size: 32, offset: 384)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4806, file: !4807, line: 45, baseType: !342, size: 32, offset: 416)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4806, file: !4807, line: 46, baseType: !53, size: 64, offset: 448)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4806, file: !4807, line: 47, baseType: !4794, size: 128, offset: 512)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4806, file: !4807, line: 48, baseType: !4794, size: 128, offset: 640)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4806, file: !4807, line: 49, baseType: !4794, size: 128, offset: 768)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4806, file: !4807, line: 50, baseType: !4794, size: 128, offset: 896)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4806, file: !4807, line: 51, baseType: !400, size: 64, offset: 1024)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4806, file: !4807, line: 52, baseType: !400, size: 64, offset: 1088)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4806, file: !4807, line: 53, baseType: !396, size: 32, offset: 1152)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4806, file: !4807, line: 54, baseType: !396, size: 32, offset: 1184)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4806, file: !4807, line: 55, baseType: !400, size: 64, offset: 1216)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !356, file: !227, line: 1990, baseType: !4831, size: 64, offset: 960)
!4831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4832, size: 64)
!4832 = !DISubroutineType(types: !4833)
!4833 = !{!599, !362, !468, !47}
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !356, file: !227, line: 1991, baseType: !4835, size: 64, offset: 1024)
!4835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4836, size: 64)
!4836 = !DISubroutineType(types: !4837)
!4837 = !{!13, !327, !4838, !400, !400}
!4838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4839, size: 64)
!4839 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !227, line: 55, flags: DIFlagFwdDecl)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !356, file: !227, line: 1993, baseType: !4841, size: 64, offset: 1088)
!4841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4842, size: 64)
!4842 = !DISubroutineType(types: !4843)
!4843 = !{!13, !327, !13}
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !356, file: !227, line: 1994, baseType: !4845, size: 64, offset: 1152)
!4845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4846, size: 64)
!4846 = !DISubroutineType(types: !4847)
!4847 = !{!13, !327, !362, !641, !18, !36}
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !356, file: !227, line: 1997, baseType: !4849, size: 64, offset: 1216)
!4849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4850, size: 64)
!4850 = !DISubroutineType(types: !4851)
!4851 = !{!13, !4683, !327, !641, !36}
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !356, file: !227, line: 1999, baseType: !4853, size: 64, offset: 1280)
!4853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4854, size: 64)
!4854 = !DISubroutineType(types: !4855)
!4855 = !{!350, !4683, !362, !13}
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !356, file: !227, line: 2001, baseType: !4857, size: 64, offset: 1344)
!4857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4858, size: 64)
!4858 = !DISubroutineType(types: !4859)
!4859 = !{!13, !4683, !362, !350, !13}
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !356, file: !227, line: 2003, baseType: !4861, size: 64, offset: 1408)
!4861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4862, size: 64)
!4862 = !DISubroutineType(types: !4863)
!4863 = !{!13, !4683, !362, !4864}
!4864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4865, size: 64)
!4865 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !227, line: 76, flags: DIFlagFwdDecl)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !356, file: !227, line: 2005, baseType: !4867, size: 64, offset: 1472)
!4867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4868, size: 64)
!4868 = !DISubroutineType(types: !4869)
!4869 = !{!13, !362, !4864}
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !356, file: !227, line: 2006, baseType: !4871, size: 64, offset: 1536)
!4871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4872, size: 64)
!4872 = !DISubroutineType(types: !4873)
!4873 = !{!4874, !327}
!4874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4875, size: 64)
!4875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !227, line: 3192, size: 192, elements: !4876)
!4876 = !{!4877, !4878}
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4875, file: !227, line: 3193, baseType: !3727, size: 128)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4875, file: !227, line: 3194, baseType: !396, size: 32, offset: 128)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !328, file: !227, line: 655, baseType: !479, size: 64, offset: 448)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !328, file: !227, line: 656, baseType: !323, size: 64, offset: 512)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !328, file: !227, line: 659, baseType: !33, size: 64, offset: 576)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !328, file: !227, line: 663, baseType: !51, size: 64, offset: 640)
!4883 = !DIDerivedType(tag: DW_TAG_member, scope: !328, file: !227, line: 671, baseType: !4884, size: 32, offset: 704)
!4884 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !328, file: !227, line: 671, size: 32, elements: !4885)
!4885 = !{!4886, !4888}
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4884, file: !227, line: 672, baseType: !4887, size: 32)
!4887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4884, file: !227, line: 673, baseType: !18, size: 32)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !328, file: !227, line: 675, baseType: !484, size: 32, offset: 736)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !328, file: !227, line: 676, baseType: !53, size: 64, offset: 768)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !328, file: !227, line: 677, baseType: !4794, size: 128, offset: 832)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !328, file: !227, line: 678, baseType: !4794, size: 128, offset: 960)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !328, file: !227, line: 679, baseType: !4794, size: 128, offset: 1088)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !328, file: !227, line: 680, baseType: !71, size: 32, offset: 1216)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !328, file: !227, line: 681, baseType: !38, size: 16, offset: 1248)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !328, file: !227, line: 682, baseType: !95, size: 8, offset: 1264)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !328, file: !227, line: 683, baseType: !95, size: 8, offset: 1272)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !328, file: !227, line: 684, baseType: !2523, size: 64, offset: 1280)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !328, file: !227, line: 691, baseType: !51, size: 64, offset: 1344)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !328, file: !227, line: 692, baseType: !797, size: 320, offset: 1408)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !328, file: !227, line: 694, baseType: !51, size: 64, offset: 1728)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !328, file: !227, line: 695, baseType: !51, size: 64, offset: 1792)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !328, file: !227, line: 697, baseType: !724, size: 128, offset: 1856)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !328, file: !227, line: 698, baseType: !109, size: 128, offset: 1984)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !328, file: !227, line: 707, baseType: !109, size: 128, offset: 2112)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !328, file: !227, line: 708, baseType: !109, size: 128, offset: 2240)
!4907 = !DIDerivedType(tag: DW_TAG_member, scope: !328, file: !227, line: 709, baseType: !4908, size: 128, offset: 2368)
!4908 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !328, file: !227, line: 709, size: 128, elements: !4909)
!4909 = !{!4910, !4911}
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4908, file: !227, line: 710, baseType: !720, size: 64)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4908, file: !227, line: 711, baseType: !287, size: 128, align: 64)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !328, file: !227, line: 713, baseType: !661, size: 64, offset: 2496)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !328, file: !227, line: 714, baseType: !661, size: 64, offset: 2560)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !328, file: !227, line: 715, baseType: !61, size: 32, offset: 2624)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !328, file: !227, line: 716, baseType: !61, size: 32, offset: 2656)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !328, file: !227, line: 717, baseType: !61, size: 32, offset: 2688)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !328, file: !227, line: 719, baseType: !61, size: 32, offset: 2720)
!4918 = !DIDerivedType(tag: DW_TAG_member, scope: !328, file: !227, line: 721, baseType: !4919, size: 64, offset: 2752)
!4919 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !328, file: !227, line: 721, size: 64, elements: !4920)
!4920 = !{!4921, !4922}
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4919, file: !227, line: 722, baseType: !1122, size: 64)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4919, file: !227, line: 723, baseType: !2259, size: 64)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !328, file: !227, line: 725, baseType: !4924, size: 64, offset: 2816)
!4924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4925, size: 64)
!4925 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !227, line: 725, flags: DIFlagFwdDecl)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !328, file: !227, line: 726, baseType: !324, size: 1536, align: 64, offset: 2880)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !328, file: !227, line: 727, baseType: !109, size: 128, offset: 4416)
!4928 = !DIDerivedType(tag: DW_TAG_member, scope: !328, file: !227, line: 728, baseType: !4929, size: 64, offset: 4544)
!4929 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !328, file: !227, line: 728, size: 64, elements: !4930)
!4930 = !{!4931, !4932, !4935, !4936}
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4929, file: !227, line: 729, baseType: !1649, size: 64)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4929, file: !227, line: 730, baseType: !4933, size: 64)
!4933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4934, size: 64)
!4934 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !227, line: 730, flags: DIFlagFwdDecl)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4929, file: !227, line: 731, baseType: !468, size: 64)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4929, file: !227, line: 732, baseType: !18, size: 32)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !328, file: !227, line: 735, baseType: !397, size: 32, offset: 4608)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !328, file: !227, line: 738, baseType: !397, size: 32, offset: 4640)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !328, file: !227, line: 739, baseType: !4621, size: 64, offset: 4672)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !328, file: !227, line: 750, baseType: !33, size: 64, offset: 4736)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !324, file: !227, line: 474, baseType: !3727, size: 128, offset: 64)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !324, file: !227, line: 475, baseType: !797, size: 320, offset: 192)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !324, file: !227, line: 476, baseType: !300, size: 32, offset: 512)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !324, file: !227, line: 477, baseType: !61, size: 32, offset: 544)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !324, file: !227, line: 482, baseType: !1495, size: 128, offset: 576)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !324, file: !227, line: 483, baseType: !51, size: 64, offset: 704)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !324, file: !227, line: 484, baseType: !51, size: 64, offset: 768)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !324, file: !227, line: 485, baseType: !4949, size: 64, offset: 832)
!4949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4950, size: 64)
!4950 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4951)
!4951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !227, line: 404, size: 1280, elements: !4952)
!4952 = !{!4953, !4957, !4961, !4965, !4969, !4985, !4990, !4994, !4998, !5002, !5006, !5010, !5011, !5015, !5019, !5023, !5028, !5032, !5084, !5085}
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4951, file: !227, line: 405, baseType: !4954, size: 64)
!4954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4955, size: 64)
!4955 = !DISubroutineType(types: !4956)
!4956 = !{!13, !301, !2271}
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4951, file: !227, line: 406, baseType: !4958, size: 64, offset: 64)
!4958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4959, size: 64)
!4959 = !DISubroutineType(types: !4960)
!4960 = !{!13, !641, !1164}
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4951, file: !227, line: 409, baseType: !4962, size: 64, offset: 128)
!4962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4963, size: 64)
!4963 = !DISubroutineType(types: !4964)
!4964 = !{!13, !323, !2271}
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4951, file: !227, line: 412, baseType: !4966, size: 64, offset: 192)
!4966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4967, size: 64)
!4967 = !DISubroutineType(types: !4968)
!4968 = !{!856, !323, !1164}
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4951, file: !227, line: 414, baseType: !4970, size: 64, offset: 256)
!4970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4971, size: 64)
!4971 = !DISubroutineType(types: !4972)
!4972 = !{null, !4973}
!4973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4974, size: 64)
!4974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1161, line: 1276, size: 448, elements: !4975)
!4975 = !{!4976, !4977, !4978, !4980, !4981, !4982, !4983, !4984}
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4974, file: !1161, line: 1277, baseType: !641, size: 64)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4974, file: !1161, line: 1278, baseType: !323, size: 64, offset: 64)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !4974, file: !1161, line: 1279, baseType: !4979, size: 64, offset: 128)
!4979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !4974, file: !1161, line: 1281, baseType: !51, size: 64, offset: 192)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !4974, file: !1161, line: 1282, baseType: !18, size: 32, offset: 256)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !4974, file: !1161, line: 1283, baseType: !18, size: 32, offset: 288)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !4974, file: !1161, line: 1284, baseType: !856, size: 8, offset: 320)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !4974, file: !1161, line: 1285, baseType: !51, size: 64, offset: 384)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4951, file: !227, line: 416, baseType: !4986, size: 64, offset: 320)
!4986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4987, size: 64)
!4987 = !DISubroutineType(types: !4988)
!4988 = !{!13, !641, !323, !53, !18, !4989, !1664}
!4989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4951, file: !227, line: 419, baseType: !4991, size: 64, offset: 384)
!4991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4992, size: 64)
!4992 = !DISubroutineType(types: !4993)
!4993 = !{!13, !641, !323, !53, !18, !18, !301, !33}
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4951, file: !227, line: 424, baseType: !4995, size: 64, offset: 448)
!4995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4996, size: 64)
!4996 = !DISubroutineType(types: !4997)
!4997 = !{!2554, !323, !2554}
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4951, file: !227, line: 425, baseType: !4999, size: 64, offset: 512)
!4999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5000, size: 64)
!5000 = !DISubroutineType(types: !5001)
!5001 = !{null, !1164, !47, !47}
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4951, file: !227, line: 426, baseType: !5003, size: 64, offset: 576)
!5003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5004, size: 64)
!5004 = !DISubroutineType(types: !5005)
!5005 = !{!856, !1164, !300}
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4951, file: !227, line: 427, baseType: !5007, size: 64, offset: 640)
!5007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5008, size: 64)
!5008 = !DISubroutineType(types: !5009)
!5009 = !{null, !1164}
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4951, file: !227, line: 428, baseType: !1140, size: 64, offset: 704)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4951, file: !227, line: 433, baseType: !5012, size: 64, offset: 768)
!5012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5013, size: 64)
!5013 = !DISubroutineType(types: !5014)
!5014 = !{!13, !323, !1164, !1164, !155}
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4951, file: !227, line: 435, baseType: !5016, size: 64, offset: 832)
!5016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5017, size: 64)
!5017 = !DISubroutineType(types: !5018)
!5018 = !{!13, !1164}
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4951, file: !227, line: 436, baseType: !5020, size: 64, offset: 896)
!5020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5021, size: 64)
!5021 = !DISubroutineType(types: !5022)
!5022 = !{!856, !1164, !47, !47}
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4951, file: !227, line: 438, baseType: !5024, size: 64, offset: 960)
!5024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5025, size: 64)
!5025 = !DISubroutineType(types: !5026)
!5026 = !{null, !1164, !5027, !5027}
!5027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4951, file: !227, line: 439, baseType: !5029, size: 64, offset: 1024)
!5029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5030, size: 64)
!5030 = !DISubroutineType(types: !5031)
!5031 = !{!13, !323, !301}
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4951, file: !227, line: 442, baseType: !5033, size: 64, offset: 1088)
!5033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5034, size: 64)
!5034 = !DISubroutineType(types: !5035)
!5035 = !{!13, !5036, !641, !5083}
!5036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5037, size: 64)
!5037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !4112, line: 282, size: 2176, elements: !5038)
!5038 = !{!5039, !5040, !5041, !5042, !5043, !5044, !5045, !5047, !5054, !5059, !5060, !5061, !5062, !5063, !5064, !5065, !5066, !5072, !5073, !5074, !5075, !5076, !5077, !5078, !5079, !5080, !5081}
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !5037, file: !4112, line: 283, baseType: !3776, size: 128)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5037, file: !4112, line: 284, baseType: !51, size: 64, offset: 128)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !5037, file: !4112, line: 285, baseType: !825, size: 16, offset: 192)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5037, file: !4112, line: 286, baseType: !3344, size: 320, offset: 256)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5037, file: !4112, line: 287, baseType: !1963, size: 8, offset: 576)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !5037, file: !4112, line: 288, baseType: !18, size: 32, offset: 608)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "swap_map", scope: !5037, file: !4112, line: 289, baseType: !5046, size: 64, offset: 640)
!5046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_info", scope: !5037, file: !4112, line: 290, baseType: !5048, size: 64, offset: 704)
!5048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5049, size: 64)
!5049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_info", file: !4112, line: 250, size: 64, elements: !5050)
!5050 = !{!5051, !5052, !5053}
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5049, file: !4112, line: 251, baseType: !71, size: 32)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5049, file: !4112, line: 257, baseType: !18, size: 24, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5049, file: !4112, line: 258, baseType: !18, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !5037, file: !4112, line: 291, baseType: !5055, size: 128, offset: 768)
!5055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_list", file: !4112, line: 274, size: 128, elements: !5056)
!5056 = !{!5057, !5058}
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5055, file: !4112, line: 275, baseType: !5049, size: 64)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !5055, file: !4112, line: 276, baseType: !5049, size: 64, offset: 64)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_bit", scope: !5037, file: !4112, line: 292, baseType: !18, size: 32, offset: 896)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "highest_bit", scope: !5037, file: !4112, line: 293, baseType: !18, size: 32, offset: 928)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !5037, file: !4112, line: 294, baseType: !18, size: 32, offset: 960)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "inuse_pages", scope: !5037, file: !4112, line: 295, baseType: !18, size: 32, offset: 992)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next", scope: !5037, file: !4112, line: 296, baseType: !18, size: 32, offset: 1024)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_nr", scope: !5037, file: !4112, line: 297, baseType: !18, size: 32, offset: 1056)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next_cpu", scope: !5037, file: !4112, line: 298, baseType: !1984, size: 64, offset: 1088)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_cluster", scope: !5037, file: !4112, line: 299, baseType: !5067, size: 64, offset: 1152)
!5067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5068, size: 64)
!5068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_cluster", file: !4112, line: 269, size: 96, elements: !5069)
!5069 = !{!5070, !5071}
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5068, file: !4112, line: 270, baseType: !5049, size: 64)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5068, file: !4112, line: 271, baseType: !18, size: 32, offset: 64)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "swap_extent_root", scope: !5037, file: !4112, line: 300, baseType: !1069, size: 64, offset: 1216)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !5037, file: !4112, line: 301, baseType: !2549, size: 64, offset: 1280)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "swap_file", scope: !5037, file: !4112, line: 302, baseType: !641, size: 64, offset: 1344)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "old_block_size", scope: !5037, file: !4112, line: 303, baseType: !18, size: 32, offset: 1408)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !5037, file: !4112, line: 304, baseType: !1027, size: 256, offset: 1472)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5037, file: !4112, line: 305, baseType: !71, size: 32, offset: 1728)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "cont_lock", scope: !5037, file: !4112, line: 318, baseType: !71, size: 32, offset: 1760)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "discard_work", scope: !5037, file: !4112, line: 322, baseType: !988, size: 256, offset: 1792)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "discard_clusters", scope: !5037, file: !4112, line: 323, baseType: !5055, size: 128, offset: 2048)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "avail_lists", scope: !5037, file: !4112, line: 324, baseType: !5082, offset: 2176)
!5082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3344, elements: !298)
!5083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4951, file: !227, line: 444, baseType: !1656, size: 64, offset: 1152)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4951, file: !227, line: 445, baseType: !5086, size: 64, offset: 1216)
!5086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5087, size: 64)
!5087 = !DISubroutineType(types: !5088)
!5088 = !{!13, !1143, !1248}
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !324, file: !227, line: 486, baseType: !51, size: 64, offset: 896)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !324, file: !227, line: 487, baseType: !797, size: 320, offset: 960)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !324, file: !227, line: 488, baseType: !1737, size: 32, offset: 1280)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !324, file: !227, line: 489, baseType: !71, size: 32, offset: 1312)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !324, file: !227, line: 490, baseType: !109, size: 128, offset: 1344)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !324, file: !227, line: 491, baseType: !33, size: 64, offset: 1472)
!5095 = !DIDerivedType(tag: DW_TAG_member, scope: !309, file: !135, line: 107, baseType: !5096, size: 64, offset: 192)
!5096 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !309, file: !135, line: 107, size: 64, elements: !5097)
!5097 = !{!5098, !5099}
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5096, file: !135, line: 108, baseType: !51, size: 64)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !5096, file: !135, line: 109, baseType: !51, size: 64)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !309, file: !135, line: 117, baseType: !51, size: 64, offset: 256)
!5101 = !DIDerivedType(tag: DW_TAG_member, scope: !306, file: !135, line: 119, baseType: !5102, size: 320)
!5102 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !306, file: !135, line: 119, size: 320, elements: !5103)
!5103 = !{!5104, !5105, !5108, !5109, !5110}
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !5102, file: !135, line: 124, baseType: !51, size: 64)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !5102, file: !135, line: 125, baseType: !5106, size: 64, offset: 64)
!5106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5107, size: 64)
!5107 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !135, line: 125, flags: DIFlagFwdDecl)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !5102, file: !135, line: 126, baseType: !51, size: 64, offset: 128)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !5102, file: !135, line: 127, baseType: !51, size: 64, offset: 192)
!5110 = !DIDerivedType(tag: DW_TAG_member, scope: !5102, file: !135, line: 128, baseType: !5111, size: 64, offset: 256)
!5111 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5102, file: !135, line: 128, size: 64, elements: !5112)
!5112 = !{!5113, !5114}
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !5111, file: !135, line: 133, baseType: !51, size: 64)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !5111, file: !135, line: 138, baseType: !659, size: 64)
!5115 = !DIDerivedType(tag: DW_TAG_member, scope: !306, file: !135, line: 141, baseType: !5116, size: 64)
!5116 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !306, file: !135, line: 141, size: 64, elements: !5117)
!5117 = !{!5118}
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !5116, file: !135, line: 142, baseType: !51, size: 64)
!5119 = !DIDerivedType(tag: DW_TAG_member, scope: !306, file: !135, line: 144, baseType: !5120, size: 128)
!5120 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !306, file: !135, line: 144, size: 128, elements: !5121)
!5121 = !{!5122, !5173}
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !5120, file: !135, line: 146, baseType: !5123, size: 64)
!5123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5124, size: 64)
!5124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !127, line: 126, size: 1216, elements: !5125)
!5125 = !{!5126, !5136, !5137, !5138, !5139, !5140, !5141, !5155, !5156, !5157}
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !5124, file: !127, line: 127, baseType: !5127, size: 384)
!5127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !127, line: 21, size: 384, elements: !5128)
!5128 = !{!5129, !5130, !5132, !5133, !5134, !5135}
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !5127, file: !127, line: 22, baseType: !51, size: 64)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !5127, file: !127, line: 23, baseType: !5131, size: 64, offset: 64)
!5131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !5127, file: !127, line: 24, baseType: !5131, size: 64, offset: 128)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5127, file: !127, line: 25, baseType: !51, size: 64, offset: 192)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !5127, file: !127, line: 26, baseType: !51, size: 64, offset: 256)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !5127, file: !127, line: 27, baseType: !51, size: 64, offset: 320)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5124, file: !127, line: 128, baseType: !3776, size: 128, offset: 384)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !5124, file: !127, line: 129, baseType: !1027, size: 256, offset: 512)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5124, file: !127, line: 130, baseType: !126, size: 32, offset: 768)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5124, file: !127, line: 131, baseType: !18, size: 32, offset: 800)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !5124, file: !127, line: 132, baseType: !51, size: 64, offset: 832)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5124, file: !127, line: 133, baseType: !5142, size: 64, offset: 896)
!5142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5143, size: 64)
!5143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5144)
!5144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !127, line: 77, size: 192, elements: !5145)
!5145 = !{!5146, !5150, !5151}
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !5144, file: !127, line: 83, baseType: !5147, size: 64)
!5147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5148, size: 64)
!5148 = !DISubroutineType(types: !5149)
!5149 = !{null, !301}
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !5144, file: !127, line: 89, baseType: !1523, size: 64, offset: 64)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !5144, file: !127, line: 100, baseType: !5152, size: 64, offset: 128)
!5152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5153, size: 64)
!5153 = !DISubroutineType(types: !5154)
!5154 = !{!13, !5123, !51, !51, !13}
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5124, file: !127, line: 134, baseType: !33, size: 64, offset: 960)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !5124, file: !127, line: 135, baseType: !13, size: 32, offset: 1024)
!5157 = !DIDerivedType(tag: DW_TAG_member, scope: !5124, file: !127, line: 136, baseType: !5158, size: 128, offset: 1088)
!5158 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5124, file: !127, line: 136, size: 128, elements: !5159)
!5159 = !{!5160, !5166}
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !5158, file: !127, line: 137, baseType: !5161, size: 128)
!5161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !5162, line: 6, size: 128, elements: !5163)
!5162 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!5163 = !{!5164, !5165}
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5161, file: !5162, line: 7, baseType: !400, size: 64)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5161, file: !5162, line: 8, baseType: !400, size: 64, offset: 64)
!5166 = !DIDerivedType(tag: DW_TAG_member, scope: !5158, file: !127, line: 138, baseType: !5167)
!5167 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5158, file: !127, line: 138, elements: !5168)
!5168 = !{!5169, !5171}
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !5167, file: !127, line: 138, baseType: !5170)
!5170 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5167, file: !127, line: 138, elements: !1321)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !5167, file: !127, line: 138, baseType: !5172)
!5172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5161, elements: !298)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !5120, file: !135, line: 147, baseType: !33, size: 64, offset: 64)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !306, file: !135, line: 161, baseType: !287, size: 128, align: 64)
!5175 = !DIDerivedType(tag: DW_TAG_member, scope: !302, file: !135, line: 164, baseType: !5176, size: 32, offset: 384)
!5176 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !302, file: !135, line: 164, size: 32, elements: !5177)
!5177 = !{!5178, !5179}
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !5176, file: !135, line: 169, baseType: !61, size: 32)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !5176, file: !135, line: 177, baseType: !18, size: 32)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !302, file: !135, line: 181, baseType: !61, size: 32, offset: 416)
!5181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5182, size: 64)
!5182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5183)
!5183 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !13)
!5184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!5185 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !37, line: 42, baseType: !51)
!5186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5131, size: 64)
!5187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!5188 = !{!0, !7}
!5189 = !{i32 7, !"Dwarf Version", i32 5}
!5190 = !{i32 2, !"Debug Info Version", i32 3}
!5191 = !{i32 1, !"wchar_size", i32 2}
!5192 = !{i32 8, !"cf-protection-branch", i32 1}
!5193 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5194 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5195 = !{i32 1, !"Code Model", i32 2}
!5196 = !{i32 1, !"override-stack-alignment", i32 8}
!5197 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5198 = distinct !DISubprogram(name: "tlb_flush_rmaps", scope: !2, file: !2, line: 73, type: !5199, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5234)
!5199 = !DISubroutineType(types: !5200)
!5200 = !{null, !5201, !1287}
!5201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5202, size: 64)
!5202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_gather", file: !284, line: 294, size: 1024, elements: !5203)
!5203 = !{!5204, !5205, !5206, !5207, !5208, !5209, !5210, !5211, !5212, !5213, !5214, !5215, !5216, !5217, !5218, !5219, !5220, !5231, !5232}
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !5202, file: !284, line: 295, baseType: !1300, size: 64)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !5202, file: !284, line: 298, baseType: !282, size: 64, offset: 64)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5202, file: !284, line: 301, baseType: !51, size: 64, offset: 128)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5202, file: !284, line: 302, baseType: !51, size: 64, offset: 192)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "fullmm", scope: !5202, file: !284, line: 307, baseType: !18, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "need_flush_all", scope: !5202, file: !284, line: 313, baseType: !18, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "freed_tables", scope: !5202, file: !284, line: 318, baseType: !18, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_rmap", scope: !5202, file: !284, line: 323, baseType: !18, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "cleared_ptes", scope: !5202, file: !284, line: 328, baseType: !18, size: 1, offset: 260, flags: DIFlagBitField, extraData: i64 256)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "cleared_pmds", scope: !5202, file: !284, line: 329, baseType: !18, size: 1, offset: 261, flags: DIFlagBitField, extraData: i64 256)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "cleared_puds", scope: !5202, file: !284, line: 330, baseType: !18, size: 1, offset: 262, flags: DIFlagBitField, extraData: i64 256)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "cleared_p4ds", scope: !5202, file: !284, line: 331, baseType: !18, size: 1, offset: 263, flags: DIFlagBitField, extraData: i64 256)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "vma_exec", scope: !5202, file: !284, line: 336, baseType: !18, size: 1, offset: 264, flags: DIFlagBitField, extraData: i64 256)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "vma_huge", scope: !5202, file: !284, line: 337, baseType: !18, size: 1, offset: 265, flags: DIFlagBitField, extraData: i64 256)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "vma_pfn", scope: !5202, file: !284, line: 338, baseType: !18, size: 1, offset: 266, flags: DIFlagBitField, extraData: i64 256)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "batch_count", scope: !5202, file: !284, line: 340, baseType: !18, size: 32, offset: 288)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !5202, file: !284, line: 343, baseType: !5221, size: 64, offset: 320)
!5221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5222, size: 64)
!5222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_gather_batch", file: !284, line: 245, size: 128, elements: !5223)
!5223 = !{!5224, !5225, !5226, !5227}
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5222, file: !284, line: 246, baseType: !5221, size: 64)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !5222, file: !284, line: 247, baseType: !18, size: 32, offset: 64)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !5222, file: !284, line: 248, baseType: !18, size: 32, offset: 96)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_pages", scope: !5222, file: !284, line: 249, baseType: !5228, offset: 128)
!5228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5229, elements: !298)
!5229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5230, size: 64)
!5230 = !DICompositeType(tag: DW_TAG_structure_type, name: "encoded_page", file: !135, line: 233, flags: DIFlagFwdDecl)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !5202, file: !284, line: 344, baseType: !5222, size: 128, offset: 384)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "__pages", scope: !5202, file: !284, line: 345, baseType: !5233, size: 512, offset: 512)
!5233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 512, elements: !2829)
!5234 = !{!5235, !5236}
!5235 = !DILocalVariable(name: "tlb", arg: 1, scope: !5198, file: !2, line: 73, type: !5201)
!5236 = !DILocalVariable(name: "vma", arg: 2, scope: !5198, file: !2, line: 73, type: !1287)
!5237 = !DILocation(line: 73, column: 41, scope: !5198)
!5238 = !DILocation(line: 73, column: 69, scope: !5198)
!5239 = !DILocation(line: 75, column: 7, scope: !5240)
!5240 = distinct !DILexicalBlock(scope: !5198, file: !2, line: 75, column: 6)
!5241 = !DILocation(line: 75, column: 12, scope: !5240)
!5242 = !DILocation(line: 75, column: 6, scope: !5198)
!5243 = !DILocation(line: 76, column: 3, scope: !5240)
!5244 = !DILocation(line: 78, column: 24, scope: !5198)
!5245 = !DILocation(line: 78, column: 29, scope: !5198)
!5246 = !DILocation(line: 78, column: 36, scope: !5198)
!5247 = !DILocation(line: 78, column: 2, scope: !5198)
!5248 = !DILocation(line: 79, column: 6, scope: !5249)
!5249 = distinct !DILexicalBlock(scope: !5198, file: !2, line: 79, column: 6)
!5250 = !DILocation(line: 79, column: 11, scope: !5249)
!5251 = !DILocation(line: 79, column: 22, scope: !5249)
!5252 = !DILocation(line: 79, column: 27, scope: !5249)
!5253 = !DILocation(line: 79, column: 18, scope: !5249)
!5254 = !DILocation(line: 79, column: 6, scope: !5198)
!5255 = !DILocation(line: 80, column: 24, scope: !5249)
!5256 = !DILocation(line: 80, column: 29, scope: !5249)
!5257 = !DILocation(line: 80, column: 37, scope: !5249)
!5258 = !DILocation(line: 80, column: 3, scope: !5249)
!5259 = !DILocation(line: 81, column: 2, scope: !5198)
!5260 = !DILocation(line: 81, column: 7, scope: !5198)
!5261 = !DILocation(line: 81, column: 20, scope: !5198)
!5262 = !DILocation(line: 82, column: 1, scope: !5198)
!5263 = distinct !DISubprogram(name: "tlb_flush_rmap_batch", scope: !2, file: !2, line: 51, type: !5264, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5266)
!5264 = !DISubroutineType(types: !5265)
!5265 = !{null, !5221, !1287}
!5266 = !{!5267, !5268, !5269, !5271, !5274}
!5267 = !DILocalVariable(name: "batch", arg: 1, scope: !5263, file: !2, line: 51, type: !5221)
!5268 = !DILocalVariable(name: "vma", arg: 2, scope: !5263, file: !2, line: 51, type: !1287)
!5269 = !DILocalVariable(name: "i", scope: !5270, file: !2, line: 53, type: !13)
!5270 = distinct !DILexicalBlock(scope: !5263, file: !2, line: 53, column: 2)
!5271 = !DILocalVariable(name: "enc", scope: !5272, file: !2, line: 54, type: !5229)
!5272 = distinct !DILexicalBlock(scope: !5273, file: !2, line: 53, column: 38)
!5273 = distinct !DILexicalBlock(scope: !5270, file: !2, line: 53, column: 2)
!5274 = !DILocalVariable(name: "page", scope: !5275, file: !2, line: 57, type: !301)
!5275 = distinct !DILexicalBlock(scope: !5276, file: !2, line: 56, column: 32)
!5276 = distinct !DILexicalBlock(scope: !5272, file: !2, line: 56, column: 7)
!5277 = !DILocation(line: 51, column: 59, scope: !5263)
!5278 = !DILocation(line: 51, column: 89, scope: !5263)
!5279 = !DILocation(line: 53, column: 7, scope: !5270)
!5280 = !DILocation(line: 53, column: 11, scope: !5270)
!5281 = !DILocation(line: 53, column: 18, scope: !5273)
!5282 = !DILocation(line: 53, column: 22, scope: !5273)
!5283 = !DILocation(line: 53, column: 29, scope: !5273)
!5284 = !DILocation(line: 53, column: 20, scope: !5273)
!5285 = !DILocation(line: 53, column: 2, scope: !5270)
!5286 = !DILocation(line: 53, column: 2, scope: !5273)
!5287 = !DILocation(line: 54, column: 3, scope: !5272)
!5288 = !DILocation(line: 54, column: 24, scope: !5272)
!5289 = !DILocation(line: 54, column: 30, scope: !5272)
!5290 = !DILocation(line: 54, column: 37, scope: !5272)
!5291 = !DILocation(line: 54, column: 51, scope: !5272)
!5292 = !DILocation(line: 56, column: 26, scope: !5276)
!5293 = !DILocation(line: 56, column: 7, scope: !5276)
!5294 = !DILocation(line: 56, column: 7, scope: !5272)
!5295 = !DILocation(line: 57, column: 4, scope: !5275)
!5296 = !DILocation(line: 57, column: 17, scope: !5275)
!5297 = !DILocation(line: 57, column: 41, scope: !5275)
!5298 = !DILocation(line: 57, column: 24, scope: !5275)
!5299 = !DILocation(line: 58, column: 21, scope: !5275)
!5300 = !DILocation(line: 58, column: 27, scope: !5275)
!5301 = !DILocation(line: 58, column: 4, scope: !5275)
!5302 = !DILocation(line: 59, column: 3, scope: !5276)
!5303 = !DILocation(line: 59, column: 3, scope: !5275)
!5304 = !DILocation(line: 60, column: 2, scope: !5273)
!5305 = !DILocation(line: 60, column: 2, scope: !5272)
!5306 = !DILocation(line: 53, column: 34, scope: !5273)
!5307 = distinct !{!5307, !5285, !5308, !5309, !5310}
!5308 = !DILocation(line: 60, column: 2, scope: !5270)
!5309 = !{!"llvm.loop.mustprogress"}
!5310 = !{!"llvm.loop.unroll.disable"}
!5311 = !DILocation(line: 61, column: 1, scope: !5263)
!5312 = distinct !DISubprogram(name: "__tlb_remove_page_size", scope: !2, file: !2, line: 119, type: !5313, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5315)
!5313 = !DISubroutineType(types: !5314)
!5314 = !{!856, !5201, !5229, !13}
!5315 = !{!5316, !5317, !5318, !5319}
!5316 = !DILocalVariable(name: "tlb", arg: 1, scope: !5312, file: !2, line: 119, type: !5201)
!5317 = !DILocalVariable(name: "page", arg: 2, scope: !5312, file: !2, line: 119, type: !5229)
!5318 = !DILocalVariable(name: "page_size", arg: 3, scope: !5312, file: !2, line: 119, type: !13)
!5319 = !DILocalVariable(name: "batch", scope: !5312, file: !2, line: 121, type: !5221)
!5320 = !DILocation(line: 119, column: 48, scope: !5312)
!5321 = !DILocation(line: 119, column: 74, scope: !5312)
!5322 = !DILocation(line: 119, column: 84, scope: !5312)
!5323 = !DILocation(line: 121, column: 2, scope: !5312)
!5324 = !DILocation(line: 121, column: 27, scope: !5312)
!5325 = !DILocation(line: 129, column: 10, scope: !5312)
!5326 = !DILocation(line: 129, column: 15, scope: !5312)
!5327 = !DILocation(line: 129, column: 8, scope: !5312)
!5328 = !DILocation(line: 134, column: 38, scope: !5312)
!5329 = !DILocation(line: 134, column: 2, scope: !5312)
!5330 = !DILocation(line: 134, column: 9, scope: !5312)
!5331 = !DILocation(line: 134, column: 23, scope: !5312)
!5332 = !DILocation(line: 134, column: 30, scope: !5312)
!5333 = !DILocation(line: 134, column: 32, scope: !5312)
!5334 = !DILocation(line: 134, column: 36, scope: !5312)
!5335 = !DILocation(line: 135, column: 6, scope: !5336)
!5336 = distinct !DILexicalBlock(scope: !5312, file: !2, line: 135, column: 6)
!5337 = !DILocation(line: 135, column: 13, scope: !5336)
!5338 = !DILocation(line: 135, column: 19, scope: !5336)
!5339 = !DILocation(line: 135, column: 26, scope: !5336)
!5340 = !DILocation(line: 135, column: 16, scope: !5336)
!5341 = !DILocation(line: 135, column: 6, scope: !5312)
!5342 = !DILocation(line: 136, column: 23, scope: !5343)
!5343 = distinct !DILexicalBlock(scope: !5344, file: !2, line: 136, column: 7)
!5344 = distinct !DILexicalBlock(scope: !5336, file: !2, line: 135, column: 31)
!5345 = !DILocation(line: 136, column: 8, scope: !5343)
!5346 = !DILocation(line: 136, column: 7, scope: !5344)
!5347 = !DILocation(line: 137, column: 4, scope: !5343)
!5348 = !DILocation(line: 138, column: 11, scope: !5344)
!5349 = !DILocation(line: 138, column: 16, scope: !5344)
!5350 = !DILocation(line: 138, column: 9, scope: !5344)
!5351 = !DILocation(line: 139, column: 2, scope: !5344)
!5352 = !DILocation(line: 142, column: 2, scope: !5312)
!5353 = !DILocation(line: 143, column: 1, scope: !5312)
!5354 = distinct !DISubprogram(name: "tlb_next_batch", scope: !2, file: !2, line: 18, type: !5355, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5357)
!5355 = !DISubroutineType(types: !5356)
!5356 = !{!856, !5201}
!5357 = !{!5358, !5359}
!5358 = !DILocalVariable(name: "tlb", arg: 1, scope: !5354, file: !2, line: 18, type: !5201)
!5359 = !DILocalVariable(name: "batch", scope: !5354, file: !2, line: 20, type: !5221)
!5360 = !DILocation(line: 18, column: 47, scope: !5354)
!5361 = !DILocation(line: 20, column: 2, scope: !5354)
!5362 = !DILocation(line: 20, column: 27, scope: !5354)
!5363 = !DILocation(line: 23, column: 6, scope: !5364)
!5364 = distinct !DILexicalBlock(scope: !5354, file: !2, line: 23, column: 6)
!5365 = !DILocation(line: 23, column: 11, scope: !5364)
!5366 = !DILocation(line: 23, column: 24, scope: !5364)
!5367 = !DILocation(line: 23, column: 27, scope: !5364)
!5368 = !DILocation(line: 23, column: 32, scope: !5364)
!5369 = !DILocation(line: 23, column: 43, scope: !5364)
!5370 = !DILocation(line: 23, column: 48, scope: !5364)
!5371 = !DILocation(line: 23, column: 39, scope: !5364)
!5372 = !DILocation(line: 23, column: 6, scope: !5354)
!5373 = !DILocation(line: 24, column: 3, scope: !5364)
!5374 = !DILocation(line: 26, column: 10, scope: !5354)
!5375 = !DILocation(line: 26, column: 15, scope: !5354)
!5376 = !DILocation(line: 26, column: 8, scope: !5354)
!5377 = !DILocation(line: 27, column: 6, scope: !5378)
!5378 = distinct !DILexicalBlock(scope: !5354, file: !2, line: 27, column: 6)
!5379 = !DILocation(line: 27, column: 13, scope: !5378)
!5380 = !DILocation(line: 27, column: 6, scope: !5354)
!5381 = !DILocation(line: 28, column: 17, scope: !5382)
!5382 = distinct !DILexicalBlock(scope: !5378, file: !2, line: 27, column: 19)
!5383 = !DILocation(line: 28, column: 24, scope: !5382)
!5384 = !DILocation(line: 28, column: 3, scope: !5382)
!5385 = !DILocation(line: 28, column: 8, scope: !5382)
!5386 = !DILocation(line: 28, column: 15, scope: !5382)
!5387 = !DILocation(line: 29, column: 3, scope: !5382)
!5388 = !DILocation(line: 32, column: 6, scope: !5389)
!5389 = distinct !DILexicalBlock(scope: !5354, file: !2, line: 32, column: 6)
!5390 = !DILocation(line: 32, column: 11, scope: !5389)
!5391 = !DILocation(line: 32, column: 23, scope: !5389)
!5392 = !DILocation(line: 32, column: 6, scope: !5354)
!5393 = !DILocation(line: 33, column: 3, scope: !5389)
!5394 = !DILocation(line: 35, column: 18, scope: !5354)
!5395 = !DILocation(line: 35, column: 10, scope: !5354)
!5396 = !DILocation(line: 35, column: 8, scope: !5354)
!5397 = !DILocation(line: 36, column: 7, scope: !5398)
!5398 = distinct !DILexicalBlock(scope: !5354, file: !2, line: 36, column: 6)
!5399 = !DILocation(line: 36, column: 6, scope: !5354)
!5400 = !DILocation(line: 37, column: 3, scope: !5398)
!5401 = !DILocation(line: 39, column: 2, scope: !5354)
!5402 = !DILocation(line: 39, column: 7, scope: !5354)
!5403 = !DILocation(line: 39, column: 18, scope: !5354)
!5404 = !DILocation(line: 40, column: 2, scope: !5354)
!5405 = !DILocation(line: 40, column: 9, scope: !5354)
!5406 = !DILocation(line: 40, column: 14, scope: !5354)
!5407 = !DILocation(line: 41, column: 2, scope: !5354)
!5408 = !DILocation(line: 41, column: 9, scope: !5354)
!5409 = !DILocation(line: 41, column: 14, scope: !5354)
!5410 = !DILocation(line: 42, column: 2, scope: !5354)
!5411 = !DILocation(line: 42, column: 9, scope: !5354)
!5412 = !DILocation(line: 42, column: 14, scope: !5354)
!5413 = !DILocation(line: 44, column: 22, scope: !5354)
!5414 = !DILocation(line: 44, column: 2, scope: !5354)
!5415 = !DILocation(line: 44, column: 7, scope: !5354)
!5416 = !DILocation(line: 44, column: 15, scope: !5354)
!5417 = !DILocation(line: 44, column: 20, scope: !5354)
!5418 = !DILocation(line: 45, column: 16, scope: !5354)
!5419 = !DILocation(line: 45, column: 2, scope: !5354)
!5420 = !DILocation(line: 45, column: 7, scope: !5354)
!5421 = !DILocation(line: 45, column: 14, scope: !5354)
!5422 = !DILocation(line: 47, column: 2, scope: !5354)
!5423 = !DILocation(line: 48, column: 1, scope: !5354)
!5424 = distinct !DISubprogram(name: "tlb_remove_table_sync_one", scope: !2, file: !2, line: 195, type: !2234, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14)
!5425 = !DILocation(line: 204, column: 2, scope: !5424)
!5426 = !DILocation(line: 205, column: 1, scope: !5424)
!5427 = !DISubprogram(name: "smp_call_function", scope: !5428, file: !5428, line: 156, type: !5429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5428 = !DIFile(filename: "./include/linux/smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5e44047123e6e4f39e255273d47d7376")
!5429 = !DISubroutineType(types: !5430)
!5430 = !{null, !5431, !33, !13}
!5431 = !DIDerivedType(tag: DW_TAG_typedef, name: "smp_call_func_t", file: !5428, line: 17, baseType: !1777)
!5432 = distinct !DISubprogram(name: "tlb_remove_table_smp_sync", scope: !2, file: !2, line: 190, type: !1778, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5433)
!5433 = !{!5434}
!5434 = !DILocalVariable(name: "arg", arg: 1, scope: !5432, file: !2, line: 190, type: !33)
!5435 = !DILocation(line: 190, column: 45, scope: !5432)
!5436 = !DILocation(line: 193, column: 1, scope: !5432)
!5437 = distinct !DISubprogram(name: "tlb_remove_table", scope: !2, file: !2, line: 258, type: !5438, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5440)
!5438 = !DISubroutineType(types: !5439)
!5439 = !{null, !5201, !33}
!5440 = !{!5441, !5442, !5443}
!5441 = !DILocalVariable(name: "tlb", arg: 1, scope: !5437, file: !2, line: 258, type: !5201)
!5442 = !DILocalVariable(name: "table", arg: 2, scope: !5437, file: !2, line: 258, type: !33)
!5443 = !DILocalVariable(name: "batch", scope: !5437, file: !2, line: 260, type: !5444)
!5444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!5445 = !DILocation(line: 258, column: 42, scope: !5437)
!5446 = !DILocation(line: 258, column: 53, scope: !5437)
!5447 = !DILocation(line: 260, column: 2, scope: !5437)
!5448 = !DILocation(line: 260, column: 27, scope: !5437)
!5449 = !DILocation(line: 260, column: 36, scope: !5437)
!5450 = !DILocation(line: 260, column: 41, scope: !5437)
!5451 = !DILocation(line: 262, column: 7, scope: !5452)
!5452 = distinct !DILexicalBlock(scope: !5437, file: !2, line: 262, column: 6)
!5453 = !DILocation(line: 262, column: 6, scope: !5452)
!5454 = !DILocation(line: 262, column: 13, scope: !5452)
!5455 = !DILocation(line: 262, column: 6, scope: !5437)
!5456 = !DILocation(line: 263, column: 38, scope: !5457)
!5457 = distinct !DILexicalBlock(scope: !5452, file: !2, line: 262, column: 22)
!5458 = !DILocation(line: 263, column: 12, scope: !5457)
!5459 = !DILocation(line: 263, column: 4, scope: !5457)
!5460 = !DILocation(line: 263, column: 10, scope: !5457)
!5461 = !DILocation(line: 264, column: 8, scope: !5462)
!5462 = distinct !DILexicalBlock(scope: !5457, file: !2, line: 264, column: 7)
!5463 = !DILocation(line: 264, column: 7, scope: !5462)
!5464 = !DILocation(line: 264, column: 14, scope: !5462)
!5465 = !DILocation(line: 264, column: 7, scope: !5457)
!5466 = !DILocation(line: 265, column: 25, scope: !5467)
!5467 = distinct !DILexicalBlock(scope: !5462, file: !2, line: 264, column: 23)
!5468 = !DILocation(line: 265, column: 4, scope: !5467)
!5469 = !DILocation(line: 266, column: 25, scope: !5467)
!5470 = !DILocation(line: 266, column: 4, scope: !5467)
!5471 = !DILocation(line: 267, column: 4, scope: !5467)
!5472 = !DILocation(line: 269, column: 5, scope: !5457)
!5473 = !DILocation(line: 269, column: 4, scope: !5457)
!5474 = !DILocation(line: 269, column: 13, scope: !5457)
!5475 = !DILocation(line: 269, column: 16, scope: !5457)
!5476 = !DILocation(line: 270, column: 2, scope: !5457)
!5477 = !DILocation(line: 272, column: 37, scope: !5437)
!5478 = !DILocation(line: 272, column: 4, scope: !5437)
!5479 = !DILocation(line: 272, column: 3, scope: !5437)
!5480 = !DILocation(line: 272, column: 12, scope: !5437)
!5481 = !DILocation(line: 272, column: 21, scope: !5437)
!5482 = !DILocation(line: 272, column: 20, scope: !5437)
!5483 = !DILocation(line: 272, column: 29, scope: !5437)
!5484 = !DILocation(line: 272, column: 31, scope: !5437)
!5485 = !DILocation(line: 272, column: 2, scope: !5437)
!5486 = !DILocation(line: 272, column: 35, scope: !5437)
!5487 = !DILocation(line: 273, column: 8, scope: !5488)
!5488 = distinct !DILexicalBlock(scope: !5437, file: !2, line: 273, column: 6)
!5489 = !DILocation(line: 273, column: 7, scope: !5488)
!5490 = !DILocation(line: 273, column: 16, scope: !5488)
!5491 = !DILocation(line: 273, column: 6, scope: !5488)
!5492 = !DILocation(line: 273, column: 19, scope: !5488)
!5493 = !DILocation(line: 273, column: 6, scope: !5437)
!5494 = !DILocation(line: 274, column: 19, scope: !5488)
!5495 = !DILocation(line: 274, column: 3, scope: !5488)
!5496 = !DILocation(line: 275, column: 1, scope: !5437)
!5497 = !DISubprogram(name: "__get_free_pages", scope: !5498, file: !5498, line: 289, type: !5499, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5498 = !DIFile(filename: "./include/linux/gfp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9839e6e1390b3a0e2df74dd95101fbc5")
!5499 = !DISubroutineType(types: !5500)
!5500 = !{!51, !300, !18}
!5501 = distinct !DISubprogram(name: "tlb_table_invalidate", scope: !2, file: !2, line: 229, type: !5502, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5504)
!5502 = !DISubroutineType(types: !5503)
!5503 = !{null, !5201}
!5504 = !{!5505}
!5505 = !DILocalVariable(name: "tlb", arg: 1, scope: !5501, file: !2, line: 229, type: !5201)
!5506 = !DILocation(line: 229, column: 60, scope: !5501)
!5507 = !DILocation(line: 237, column: 25, scope: !5508)
!5508 = distinct !DILexicalBlock(scope: !5509, file: !2, line: 231, column: 36)
!5509 = distinct !DILexicalBlock(scope: !5501, file: !2, line: 231, column: 6)
!5510 = !DILocation(line: 237, column: 3, scope: !5508)
!5511 = !DILocation(line: 239, column: 1, scope: !5501)
!5512 = distinct !DISubprogram(name: "tlb_remove_table_one", scope: !2, file: !2, line: 241, type: !1778, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5513)
!5513 = !{!5514}
!5514 = !DILocalVariable(name: "table", arg: 1, scope: !5512, file: !2, line: 241, type: !33)
!5515 = !DILocation(line: 241, column: 40, scope: !5512)
!5516 = !DILocation(line: 243, column: 2, scope: !5512)
!5517 = !DILocation(line: 244, column: 21, scope: !5512)
!5518 = !DILocation(line: 244, column: 2, scope: !5512)
!5519 = !DILocation(line: 245, column: 1, scope: !5512)
!5520 = distinct !DISubprogram(name: "tlb_table_flush", scope: !2, file: !2, line: 247, type: !5502, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5521)
!5521 = !{!5522, !5523}
!5522 = !DILocalVariable(name: "tlb", arg: 1, scope: !5520, file: !2, line: 247, type: !5201)
!5523 = !DILocalVariable(name: "batch", scope: !5520, file: !2, line: 249, type: !5444)
!5524 = !DILocation(line: 247, column: 48, scope: !5520)
!5525 = !DILocation(line: 249, column: 2, scope: !5520)
!5526 = !DILocation(line: 249, column: 27, scope: !5520)
!5527 = !DILocation(line: 249, column: 36, scope: !5520)
!5528 = !DILocation(line: 249, column: 41, scope: !5520)
!5529 = !DILocation(line: 251, column: 7, scope: !5530)
!5530 = distinct !DILexicalBlock(scope: !5520, file: !2, line: 251, column: 6)
!5531 = !DILocation(line: 251, column: 6, scope: !5530)
!5532 = !DILocation(line: 251, column: 6, scope: !5520)
!5533 = !DILocation(line: 252, column: 24, scope: !5534)
!5534 = distinct !DILexicalBlock(scope: !5530, file: !2, line: 251, column: 14)
!5535 = !DILocation(line: 252, column: 3, scope: !5534)
!5536 = !DILocation(line: 253, column: 26, scope: !5534)
!5537 = !DILocation(line: 253, column: 25, scope: !5534)
!5538 = !DILocation(line: 253, column: 3, scope: !5534)
!5539 = !DILocation(line: 254, column: 4, scope: !5534)
!5540 = !DILocation(line: 254, column: 10, scope: !5534)
!5541 = !DILocation(line: 255, column: 2, scope: !5534)
!5542 = !DILocation(line: 256, column: 1, scope: !5520)
!5543 = distinct !DISubprogram(name: "tlb_flush_mmu", scope: !2, file: !2, line: 297, type: !5502, scopeLine: 298, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5544)
!5544 = !{!5545}
!5545 = !DILocalVariable(name: "tlb", arg: 1, scope: !5543, file: !2, line: 297, type: !5201)
!5546 = !DILocation(line: 297, column: 39, scope: !5543)
!5547 = !DILocation(line: 299, column: 24, scope: !5543)
!5548 = !DILocation(line: 299, column: 2, scope: !5543)
!5549 = !DILocation(line: 300, column: 21, scope: !5543)
!5550 = !DILocation(line: 300, column: 2, scope: !5543)
!5551 = !DILocation(line: 301, column: 1, scope: !5543)
!5552 = distinct !DISubprogram(name: "tlb_flush_mmu_tlbonly", scope: !284, file: !284, line: 448, type: !5502, scopeLine: 449, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5553)
!5553 = !{!5554}
!5554 = !DILocalVariable(name: "tlb", arg: 1, scope: !5552, file: !284, line: 448, type: !5201)
!5555 = !DILocation(line: 448, column: 61, scope: !5552)
!5556 = !DILocation(line: 454, column: 8, scope: !5557)
!5557 = distinct !DILexicalBlock(scope: !5552, file: !284, line: 454, column: 6)
!5558 = !DILocation(line: 454, column: 13, scope: !5557)
!5559 = !DILocation(line: 454, column: 26, scope: !5557)
!5560 = !DILocation(line: 454, column: 29, scope: !5557)
!5561 = !DILocation(line: 454, column: 34, scope: !5557)
!5562 = !DILocation(line: 454, column: 47, scope: !5557)
!5563 = !DILocation(line: 454, column: 50, scope: !5557)
!5564 = !DILocation(line: 454, column: 55, scope: !5557)
!5565 = !DILocation(line: 454, column: 68, scope: !5557)
!5566 = !DILocation(line: 455, column: 8, scope: !5557)
!5567 = !DILocation(line: 455, column: 13, scope: !5557)
!5568 = !DILocation(line: 455, column: 26, scope: !5557)
!5569 = !DILocation(line: 455, column: 29, scope: !5557)
!5570 = !DILocation(line: 455, column: 34, scope: !5557)
!5571 = !DILocation(line: 454, column: 6, scope: !5552)
!5572 = !DILocation(line: 456, column: 3, scope: !5557)
!5573 = !DILocation(line: 458, column: 12, scope: !5552)
!5574 = !DILocation(line: 458, column: 2, scope: !5552)
!5575 = !DILocation(line: 459, column: 20, scope: !5552)
!5576 = !DILocation(line: 459, column: 2, scope: !5552)
!5577 = !DILocation(line: 460, column: 1, scope: !5552)
!5578 = distinct !DISubprogram(name: "tlb_flush_mmu_free", scope: !2, file: !2, line: 289, type: !5502, scopeLine: 290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5579)
!5579 = !{!5580}
!5580 = !DILocalVariable(name: "tlb", arg: 1, scope: !5578, file: !2, line: 289, type: !5201)
!5581 = !DILocation(line: 289, column: 51, scope: !5578)
!5582 = !DILocation(line: 291, column: 18, scope: !5578)
!5583 = !DILocation(line: 291, column: 2, scope: !5578)
!5584 = !DILocation(line: 293, column: 24, scope: !5578)
!5585 = !DILocation(line: 293, column: 2, scope: !5578)
!5586 = !DILocation(line: 295, column: 1, scope: !5578)
!5587 = distinct !DISubprogram(name: "tlb_gather_mmu", scope: !2, file: !2, line: 336, type: !5588, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5590)
!5588 = !DISubroutineType(types: !5589)
!5589 = !{null, !5201, !1300}
!5590 = !{!5591, !5592}
!5591 = !DILocalVariable(name: "tlb", arg: 1, scope: !5587, file: !2, line: 336, type: !5201)
!5592 = !DILocalVariable(name: "mm", arg: 2, scope: !5587, file: !2, line: 336, type: !1300)
!5593 = !DILocation(line: 336, column: 40, scope: !5587)
!5594 = !DILocation(line: 336, column: 63, scope: !5587)
!5595 = !DILocation(line: 338, column: 19, scope: !5587)
!5596 = !DILocation(line: 338, column: 24, scope: !5587)
!5597 = !DILocation(line: 338, column: 2, scope: !5587)
!5598 = !DILocation(line: 339, column: 1, scope: !5587)
!5599 = distinct !DISubprogram(name: "__tlb_gather_mmu", scope: !2, file: !2, line: 303, type: !5600, scopeLine: 305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5602)
!5600 = !DISubroutineType(types: !5601)
!5601 = !{null, !5201, !1300, !856}
!5602 = !{!5603, !5604, !5605}
!5603 = !DILocalVariable(name: "tlb", arg: 1, scope: !5599, file: !2, line: 303, type: !5201)
!5604 = !DILocalVariable(name: "mm", arg: 2, scope: !5599, file: !2, line: 303, type: !1300)
!5605 = !DILocalVariable(name: "fullmm", arg: 3, scope: !5599, file: !2, line: 304, type: !856)
!5606 = !DILocation(line: 303, column: 49, scope: !5599)
!5607 = !DILocation(line: 303, column: 72, scope: !5599)
!5608 = !DILocation(line: 304, column: 14, scope: !5599)
!5609 = !DILocation(line: 306, column: 12, scope: !5599)
!5610 = !DILocation(line: 306, column: 2, scope: !5599)
!5611 = !DILocation(line: 306, column: 7, scope: !5599)
!5612 = !DILocation(line: 306, column: 10, scope: !5599)
!5613 = !DILocation(line: 307, column: 16, scope: !5599)
!5614 = !{i8 0, i8 2}
!5615 = !DILocation(line: 307, column: 2, scope: !5599)
!5616 = !DILocation(line: 307, column: 7, scope: !5599)
!5617 = !DILocation(line: 307, column: 14, scope: !5599)
!5618 = !DILocation(line: 310, column: 2, scope: !5599)
!5619 = !DILocation(line: 310, column: 7, scope: !5599)
!5620 = !DILocation(line: 310, column: 22, scope: !5599)
!5621 = !DILocation(line: 311, column: 2, scope: !5599)
!5622 = !DILocation(line: 311, column: 7, scope: !5599)
!5623 = !DILocation(line: 311, column: 13, scope: !5599)
!5624 = !DILocation(line: 311, column: 18, scope: !5599)
!5625 = !DILocation(line: 312, column: 2, scope: !5599)
!5626 = !DILocation(line: 312, column: 7, scope: !5599)
!5627 = !DILocation(line: 312, column: 13, scope: !5599)
!5628 = !DILocation(line: 312, column: 18, scope: !5599)
!5629 = !DILocation(line: 313, column: 2, scope: !5599)
!5630 = !DILocation(line: 313, column: 7, scope: !5599)
!5631 = !DILocation(line: 313, column: 13, scope: !5599)
!5632 = !DILocation(line: 313, column: 18, scope: !5599)
!5633 = !DILocation(line: 314, column: 21, scope: !5599)
!5634 = !DILocation(line: 314, column: 26, scope: !5599)
!5635 = !DILocation(line: 314, column: 2, scope: !5599)
!5636 = !DILocation(line: 314, column: 7, scope: !5599)
!5637 = !DILocation(line: 314, column: 18, scope: !5599)
!5638 = !DILocation(line: 315, column: 2, scope: !5599)
!5639 = !DILocation(line: 315, column: 7, scope: !5599)
!5640 = !DILocation(line: 315, column: 19, scope: !5599)
!5641 = !DILocation(line: 317, column: 2, scope: !5599)
!5642 = !DILocation(line: 317, column: 7, scope: !5599)
!5643 = !DILocation(line: 317, column: 20, scope: !5599)
!5644 = !DILocation(line: 319, column: 17, scope: !5599)
!5645 = !DILocation(line: 319, column: 2, scope: !5599)
!5646 = !DILocation(line: 324, column: 20, scope: !5599)
!5647 = !DILocation(line: 324, column: 2, scope: !5599)
!5648 = !DILocation(line: 325, column: 24, scope: !5599)
!5649 = !DILocation(line: 325, column: 29, scope: !5599)
!5650 = !DILocation(line: 325, column: 2, scope: !5599)
!5651 = !DILocation(line: 326, column: 1, scope: !5599)
!5652 = distinct !DISubprogram(name: "tlb_gather_mmu_fullmm", scope: !2, file: !2, line: 352, type: !5588, scopeLine: 353, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5653)
!5653 = !{!5654, !5655}
!5654 = !DILocalVariable(name: "tlb", arg: 1, scope: !5652, file: !2, line: 352, type: !5201)
!5655 = !DILocalVariable(name: "mm", arg: 2, scope: !5652, file: !2, line: 352, type: !1300)
!5656 = !DILocation(line: 352, column: 47, scope: !5652)
!5657 = !DILocation(line: 352, column: 70, scope: !5652)
!5658 = !DILocation(line: 354, column: 19, scope: !5652)
!5659 = !DILocation(line: 354, column: 24, scope: !5652)
!5660 = !DILocation(line: 354, column: 2, scope: !5652)
!5661 = !DILocation(line: 355, column: 1, scope: !5652)
!5662 = distinct !DISubprogram(name: "tlb_finish_mmu", scope: !2, file: !2, line: 364, type: !5502, scopeLine: 365, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5663)
!5663 = !{!5664}
!5664 = !DILocalVariable(name: "tlb", arg: 1, scope: !5662, file: !2, line: 364, type: !5201)
!5665 = !DILocation(line: 364, column: 40, scope: !5662)
!5666 = !DILocation(line: 378, column: 26, scope: !5667)
!5667 = distinct !DILexicalBlock(scope: !5662, file: !2, line: 378, column: 6)
!5668 = !DILocation(line: 378, column: 31, scope: !5667)
!5669 = !DILocation(line: 378, column: 6, scope: !5667)
!5670 = !DILocation(line: 378, column: 6, scope: !5662)
!5671 = !DILocation(line: 387, column: 3, scope: !5672)
!5672 = distinct !DILexicalBlock(scope: !5667, file: !2, line: 378, column: 36)
!5673 = !DILocation(line: 387, column: 8, scope: !5672)
!5674 = !DILocation(line: 387, column: 15, scope: !5672)
!5675 = !DILocation(line: 388, column: 21, scope: !5672)
!5676 = !DILocation(line: 388, column: 3, scope: !5672)
!5677 = !DILocation(line: 389, column: 3, scope: !5672)
!5678 = !DILocation(line: 389, column: 8, scope: !5672)
!5679 = !DILocation(line: 389, column: 21, scope: !5672)
!5680 = !DILocation(line: 390, column: 2, scope: !5672)
!5681 = !DILocation(line: 392, column: 16, scope: !5662)
!5682 = !DILocation(line: 392, column: 2, scope: !5662)
!5683 = !DILocation(line: 395, column: 22, scope: !5662)
!5684 = !DILocation(line: 395, column: 2, scope: !5662)
!5685 = !DILocation(line: 397, column: 24, scope: !5662)
!5686 = !DILocation(line: 397, column: 29, scope: !5662)
!5687 = !DILocation(line: 397, column: 2, scope: !5662)
!5688 = !DILocation(line: 398, column: 1, scope: !5662)
!5689 = distinct !DISubprogram(name: "mm_tlb_flush_nested", scope: !5690, file: !5690, line: 519, type: !5691, scopeLine: 520, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5693)
!5690 = !DIFile(filename: "./include/linux/mm_inline.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1300852a53cdabf87faad43d15841e57")
!5691 = !DISubroutineType(types: !5692)
!5692 = !{!856, !1300}
!5693 = !{!5694}
!5694 = !DILocalVariable(name: "mm", arg: 1, scope: !5689, file: !5690, line: 519, type: !1300)
!5695 = !DILocation(line: 519, column: 58, scope: !5689)
!5696 = !DILocation(line: 528, column: 22, scope: !5689)
!5697 = !DILocation(line: 528, column: 26, scope: !5689)
!5698 = !DILocation(line: 528, column: 9, scope: !5689)
!5699 = !DILocation(line: 528, column: 45, scope: !5689)
!5700 = !DILocation(line: 528, column: 2, scope: !5689)
!5701 = distinct !DISubprogram(name: "__tlb_reset_range", scope: !284, file: !284, line: 363, type: !5502, scopeLine: 364, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5702)
!5702 = !{!5703}
!5703 = !DILocalVariable(name: "tlb", arg: 1, scope: !5701, file: !284, line: 363, type: !5201)
!5704 = !DILocation(line: 363, column: 57, scope: !5701)
!5705 = !DILocation(line: 365, column: 6, scope: !5706)
!5706 = distinct !DILexicalBlock(scope: !5701, file: !284, line: 365, column: 6)
!5707 = !DILocation(line: 365, column: 11, scope: !5706)
!5708 = !DILocation(line: 365, column: 6, scope: !5701)
!5709 = !DILocation(line: 366, column: 16, scope: !5710)
!5710 = distinct !DILexicalBlock(scope: !5706, file: !284, line: 365, column: 19)
!5711 = !DILocation(line: 366, column: 21, scope: !5710)
!5712 = !DILocation(line: 366, column: 25, scope: !5710)
!5713 = !DILocation(line: 366, column: 3, scope: !5710)
!5714 = !DILocation(line: 366, column: 8, scope: !5710)
!5715 = !DILocation(line: 366, column: 14, scope: !5710)
!5716 = !DILocation(line: 367, column: 2, scope: !5710)
!5717 = !DILocation(line: 368, column: 16, scope: !5718)
!5718 = distinct !DILexicalBlock(scope: !5706, file: !284, line: 367, column: 9)
!5719 = !DILocation(line: 368, column: 3, scope: !5718)
!5720 = !DILocation(line: 368, column: 8, scope: !5718)
!5721 = !DILocation(line: 368, column: 14, scope: !5718)
!5722 = !DILocation(line: 369, column: 3, scope: !5718)
!5723 = !DILocation(line: 369, column: 8, scope: !5718)
!5724 = !DILocation(line: 369, column: 12, scope: !5718)
!5725 = !DILocation(line: 371, column: 2, scope: !5701)
!5726 = !DILocation(line: 371, column: 7, scope: !5701)
!5727 = !DILocation(line: 371, column: 20, scope: !5701)
!5728 = !DILocation(line: 372, column: 2, scope: !5701)
!5729 = !DILocation(line: 372, column: 7, scope: !5701)
!5730 = !DILocation(line: 372, column: 20, scope: !5701)
!5731 = !DILocation(line: 373, column: 2, scope: !5701)
!5732 = !DILocation(line: 373, column: 7, scope: !5701)
!5733 = !DILocation(line: 373, column: 20, scope: !5701)
!5734 = !DILocation(line: 374, column: 2, scope: !5701)
!5735 = !DILocation(line: 374, column: 7, scope: !5701)
!5736 = !DILocation(line: 374, column: 20, scope: !5701)
!5737 = !DILocation(line: 375, column: 2, scope: !5701)
!5738 = !DILocation(line: 375, column: 7, scope: !5701)
!5739 = !DILocation(line: 375, column: 20, scope: !5701)
!5740 = !DILocation(line: 381, column: 1, scope: !5701)
!5741 = distinct !DISubprogram(name: "tlb_batch_list_free", scope: !2, file: !2, line: 108, type: !5502, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5742)
!5742 = !{!5743, !5744, !5745}
!5743 = !DILocalVariable(name: "tlb", arg: 1, scope: !5741, file: !2, line: 108, type: !5201)
!5744 = !DILocalVariable(name: "batch", scope: !5741, file: !2, line: 110, type: !5221)
!5745 = !DILocalVariable(name: "next", scope: !5741, file: !2, line: 110, type: !5221)
!5746 = !DILocation(line: 108, column: 52, scope: !5741)
!5747 = !DILocation(line: 110, column: 2, scope: !5741)
!5748 = !DILocation(line: 110, column: 27, scope: !5741)
!5749 = !DILocation(line: 110, column: 35, scope: !5741)
!5750 = !DILocation(line: 112, column: 15, scope: !5751)
!5751 = distinct !DILexicalBlock(scope: !5741, file: !2, line: 112, column: 2)
!5752 = !DILocation(line: 112, column: 20, scope: !5751)
!5753 = !DILocation(line: 112, column: 26, scope: !5751)
!5754 = !DILocation(line: 112, column: 13, scope: !5751)
!5755 = !DILocation(line: 112, column: 7, scope: !5751)
!5756 = !DILocation(line: 112, column: 32, scope: !5757)
!5757 = distinct !DILexicalBlock(scope: !5751, file: !2, line: 112, column: 2)
!5758 = !DILocation(line: 112, column: 2, scope: !5751)
!5759 = !DILocation(line: 113, column: 10, scope: !5760)
!5760 = distinct !DILexicalBlock(scope: !5757, file: !2, line: 112, column: 53)
!5761 = !DILocation(line: 113, column: 17, scope: !5760)
!5762 = !DILocation(line: 113, column: 8, scope: !5760)
!5763 = !DILocation(line: 114, column: 29, scope: !5760)
!5764 = !DILocation(line: 114, column: 14, scope: !5760)
!5765 = !DILocation(line: 114, column: 3, scope: !5760)
!5766 = !DILocation(line: 115, column: 2, scope: !5760)
!5767 = !DILocation(line: 112, column: 47, scope: !5757)
!5768 = !DILocation(line: 112, column: 45, scope: !5757)
!5769 = !DILocation(line: 112, column: 2, scope: !5757)
!5770 = distinct !{!5770, !5758, !5771, !5309, !5310}
!5771 = !DILocation(line: 115, column: 2, scope: !5751)
!5772 = !DILocation(line: 116, column: 2, scope: !5741)
!5773 = !DILocation(line: 116, column: 7, scope: !5741)
!5774 = !DILocation(line: 116, column: 13, scope: !5741)
!5775 = !DILocation(line: 116, column: 18, scope: !5741)
!5776 = !DILocation(line: 117, column: 1, scope: !5741)
!5777 = distinct !DISubprogram(name: "dec_tlb_flush_pending", scope: !5690, file: !5690, line: 493, type: !5778, scopeLine: 494, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5780)
!5778 = !DISubroutineType(types: !5779)
!5779 = !{null, !1300}
!5780 = !{!5781}
!5781 = !DILocalVariable(name: "mm", arg: 1, scope: !5777, file: !5690, line: 493, type: !1300)
!5782 = !DILocation(line: 493, column: 60, scope: !5777)
!5783 = !DILocation(line: 503, column: 14, scope: !5777)
!5784 = !DILocation(line: 503, column: 18, scope: !5777)
!5785 = !DILocation(line: 503, column: 2, scope: !5777)
!5786 = !DILocation(line: 504, column: 1, scope: !5777)
!5787 = distinct !DISubprogram(name: "encoded_page_flags", scope: !135, file: !135, line: 241, type: !5788, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5790)
!5788 = !DISubroutineType(types: !5789)
!5789 = !{!51, !5229}
!5790 = !{!5791}
!5791 = !DILocalVariable(name: "page", arg: 1, scope: !5787, file: !135, line: 241, type: !5229)
!5792 = !DILocation(line: 241, column: 69, scope: !5787)
!5793 = !DILocation(line: 243, column: 43, scope: !5787)
!5794 = !DILocation(line: 243, column: 28, scope: !5787)
!5795 = !DILocation(line: 243, column: 26, scope: !5787)
!5796 = !DILocation(line: 243, column: 2, scope: !5787)
!5797 = distinct !DISubprogram(name: "encoded_page_ptr", scope: !135, file: !135, line: 246, type: !5798, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5800)
!5798 = !DISubroutineType(types: !5799)
!5799 = !{!301, !5229}
!5800 = !{!5801}
!5801 = !DILocalVariable(name: "page", arg: 1, scope: !5797, file: !135, line: 246, type: !5229)
!5802 = !DILocation(line: 246, column: 66, scope: !5797)
!5803 = !DILocation(line: 248, column: 60, scope: !5797)
!5804 = !DILocation(line: 248, column: 45, scope: !5797)
!5805 = !DILocation(line: 248, column: 43, scope: !5797)
!5806 = !DILocation(line: 248, column: 9, scope: !5797)
!5807 = !DILocation(line: 248, column: 2, scope: !5797)
!5808 = !DISubprogram(name: "page_remove_rmap", scope: !1486, file: !1486, line: 203, type: !5809, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5809 = !DISubroutineType(types: !5810)
!5810 = !{null, !301, !1287, !856}
!5811 = distinct !DISubprogram(name: "__tlb_remove_table", scope: !5812, file: !5812, line: 32, type: !1778, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5813)
!5812 = !DIFile(filename: "./arch/x86/include/asm/tlb.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b03b3bf33b053fa22b486d9384710fd3")
!5813 = !{!5814}
!5814 = !DILocalVariable(name: "table", arg: 1, scope: !5811, file: !5812, line: 32, type: !33)
!5815 = !DILocation(line: 32, column: 45, scope: !5811)
!5816 = !DILocation(line: 34, column: 27, scope: !5811)
!5817 = !DILocation(line: 34, column: 2, scope: !5811)
!5818 = !DILocation(line: 35, column: 1, scope: !5811)
!5819 = !DISubprogram(name: "free_page_and_swap_cache", scope: !4112, file: !4112, line: 453, type: !5148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5820 = distinct !DISubprogram(name: "tlb_remove_table_free", scope: !2, file: !2, line: 212, type: !5821, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5823)
!5821 = !DISubroutineType(types: !5822)
!5822 = !{null, !282}
!5823 = !{!5824}
!5824 = !DILocalVariable(name: "batch", arg: 1, scope: !5820, file: !2, line: 212, type: !282)
!5825 = !DILocation(line: 212, column: 59, scope: !5820)
!5826 = !DILocation(line: 214, column: 12, scope: !5820)
!5827 = !DILocation(line: 214, column: 19, scope: !5820)
!5828 = !DILocation(line: 214, column: 2, scope: !5820)
!5829 = !DILocation(line: 215, column: 1, scope: !5820)
!5830 = !DISubprogram(name: "call_rcu", scope: !5831, file: !5831, line: 42, type: !5832, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5831 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!5832 = !DISubroutineType(types: !5833)
!5833 = !{null, !290, !5834}
!5834 = !DIDerivedType(tag: DW_TAG_typedef, name: "rcu_callback_t", file: !37, line: 238, baseType: !292)
!5835 = distinct !DISubprogram(name: "tlb_remove_table_rcu", scope: !2, file: !2, line: 207, type: !293, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5836)
!5836 = !{!5837, !5838}
!5837 = !DILocalVariable(name: "head", arg: 1, scope: !5835, file: !2, line: 207, type: !290)
!5838 = !DILocalVariable(name: "__mptr", scope: !5839, file: !2, line: 209, type: !33)
!5839 = distinct !DILexicalBlock(scope: !5835, file: !2, line: 209, column: 26)
!5840 = !DILocation(line: 207, column: 51, scope: !5835)
!5841 = !DILocation(line: 209, column: 26, scope: !5839)
!5842 = !DILocation(line: 209, column: 26, scope: !5835)
!5843 = !DILocation(line: 209, column: 2, scope: !5835)
!5844 = !DILocation(line: 210, column: 1, scope: !5835)
!5845 = distinct !DISubprogram(name: "__tlb_remove_table_free", scope: !2, file: !2, line: 149, type: !5821, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5846)
!5846 = !{!5847, !5848}
!5847 = !DILocalVariable(name: "batch", arg: 1, scope: !5845, file: !2, line: 149, type: !282)
!5848 = !DILocalVariable(name: "i", scope: !5845, file: !2, line: 151, type: !13)
!5849 = !DILocation(line: 149, column: 61, scope: !5845)
!5850 = !DILocation(line: 151, column: 2, scope: !5845)
!5851 = !DILocation(line: 151, column: 6, scope: !5845)
!5852 = !DILocation(line: 153, column: 9, scope: !5853)
!5853 = distinct !DILexicalBlock(scope: !5845, file: !2, line: 153, column: 2)
!5854 = !DILocation(line: 153, column: 7, scope: !5853)
!5855 = !DILocation(line: 153, column: 14, scope: !5856)
!5856 = distinct !DILexicalBlock(scope: !5853, file: !2, line: 153, column: 2)
!5857 = !DILocation(line: 153, column: 18, scope: !5856)
!5858 = !DILocation(line: 153, column: 25, scope: !5856)
!5859 = !DILocation(line: 153, column: 16, scope: !5856)
!5860 = !DILocation(line: 153, column: 2, scope: !5853)
!5861 = !DILocation(line: 154, column: 22, scope: !5856)
!5862 = !DILocation(line: 154, column: 29, scope: !5856)
!5863 = !DILocation(line: 154, column: 36, scope: !5856)
!5864 = !DILocation(line: 154, column: 3, scope: !5856)
!5865 = !DILocation(line: 153, column: 30, scope: !5856)
!5866 = !DILocation(line: 153, column: 2, scope: !5856)
!5867 = distinct !{!5867, !5860, !5868, !5309, !5310}
!5868 = !DILocation(line: 154, column: 38, scope: !5853)
!5869 = !DILocation(line: 156, column: 2, scope: !5845)
!5870 = !DILocation(line: 157, column: 1, scope: !5845)
!5871 = !DISubprogram(name: "free_pages", scope: !5498, file: !5498, line: 303, type: !5872, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5872 = !DISubroutineType(types: !5873)
!5873 = !{null, !51, !18}
!5874 = distinct !DISubprogram(name: "tlb_flush", scope: !5812, file: !5812, line: 10, type: !5502, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5875)
!5875 = !{!5876, !5877, !5878, !5879}
!5876 = !DILocalVariable(name: "tlb", arg: 1, scope: !5874, file: !5812, line: 10, type: !5201)
!5877 = !DILocalVariable(name: "start", scope: !5874, file: !5812, line: 12, type: !51)
!5878 = !DILocalVariable(name: "end", scope: !5874, file: !5812, line: 12, type: !51)
!5879 = !DILocalVariable(name: "stride_shift", scope: !5874, file: !5812, line: 13, type: !18)
!5880 = !DILocation(line: 10, column: 49, scope: !5874)
!5881 = !DILocation(line: 12, column: 2, scope: !5874)
!5882 = !DILocation(line: 12, column: 16, scope: !5874)
!5883 = !DILocation(line: 12, column: 29, scope: !5874)
!5884 = !DILocation(line: 13, column: 2, scope: !5874)
!5885 = !DILocation(line: 13, column: 15, scope: !5874)
!5886 = !DILocation(line: 13, column: 50, scope: !5874)
!5887 = !DILocation(line: 13, column: 30, scope: !5874)
!5888 = !DILocation(line: 15, column: 7, scope: !5889)
!5889 = distinct !DILexicalBlock(scope: !5874, file: !5812, line: 15, column: 6)
!5890 = !DILocation(line: 15, column: 12, scope: !5889)
!5891 = !DILocation(line: 15, column: 19, scope: !5889)
!5892 = !DILocation(line: 15, column: 23, scope: !5889)
!5893 = !DILocation(line: 15, column: 28, scope: !5889)
!5894 = !DILocation(line: 15, column: 6, scope: !5874)
!5895 = !DILocation(line: 16, column: 11, scope: !5896)
!5896 = distinct !DILexicalBlock(scope: !5889, file: !5812, line: 15, column: 44)
!5897 = !DILocation(line: 16, column: 16, scope: !5896)
!5898 = !DILocation(line: 16, column: 9, scope: !5896)
!5899 = !DILocation(line: 17, column: 9, scope: !5896)
!5900 = !DILocation(line: 17, column: 14, scope: !5896)
!5901 = !DILocation(line: 17, column: 7, scope: !5896)
!5902 = !DILocation(line: 18, column: 2, scope: !5896)
!5903 = !DILocation(line: 20, column: 21, scope: !5874)
!5904 = !DILocation(line: 20, column: 26, scope: !5874)
!5905 = !DILocation(line: 20, column: 30, scope: !5874)
!5906 = !DILocation(line: 20, column: 37, scope: !5874)
!5907 = !DILocation(line: 20, column: 42, scope: !5874)
!5908 = !DILocation(line: 20, column: 56, scope: !5874)
!5909 = !DILocation(line: 20, column: 61, scope: !5874)
!5910 = !DILocation(line: 20, column: 2, scope: !5874)
!5911 = !DILocation(line: 21, column: 1, scope: !5874)
!5912 = distinct !DISubprogram(name: "tlb_get_unmap_shift", scope: !284, file: !284, line: 507, type: !5913, scopeLine: 508, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5915)
!5913 = !DISubroutineType(types: !5914)
!5914 = !{!51, !5201}
!5915 = !{!5916}
!5916 = !DILocalVariable(name: "tlb", arg: 1, scope: !5912, file: !284, line: 507, type: !5201)
!5917 = !DILocation(line: 507, column: 68, scope: !5912)
!5918 = !DILocation(line: 509, column: 6, scope: !5919)
!5919 = distinct !DILexicalBlock(scope: !5912, file: !284, line: 509, column: 6)
!5920 = !DILocation(line: 509, column: 11, scope: !5919)
!5921 = !DILocation(line: 509, column: 6, scope: !5912)
!5922 = !DILocation(line: 510, column: 3, scope: !5919)
!5923 = !DILocation(line: 511, column: 6, scope: !5924)
!5924 = distinct !DILexicalBlock(scope: !5912, file: !284, line: 511, column: 6)
!5925 = !DILocation(line: 511, column: 11, scope: !5924)
!5926 = !DILocation(line: 511, column: 6, scope: !5912)
!5927 = !DILocation(line: 512, column: 3, scope: !5924)
!5928 = !DILocation(line: 513, column: 6, scope: !5929)
!5929 = distinct !DILexicalBlock(scope: !5912, file: !284, line: 513, column: 6)
!5930 = !DILocation(line: 513, column: 11, scope: !5929)
!5931 = !DILocation(line: 513, column: 6, scope: !5912)
!5932 = !DILocation(line: 514, column: 3, scope: !5929)
!5933 = !DILocation(line: 515, column: 6, scope: !5934)
!5934 = distinct !DILexicalBlock(scope: !5912, file: !284, line: 515, column: 6)
!5935 = !DILocation(line: 515, column: 11, scope: !5934)
!5936 = !DILocation(line: 515, column: 6, scope: !5912)
!5937 = !DILocation(line: 516, column: 3, scope: !5934)
!5938 = !DILocation(line: 518, column: 2, scope: !5912)
!5939 = !DILocation(line: 519, column: 1, scope: !5912)
!5940 = !DISubprogram(name: "flush_tlb_mm_range", scope: !5941, file: !5941, line: 248, type: !5942, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5941 = !DIFile(filename: "./arch/x86/include/asm/tlbflush.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "855d4064bc03d0e3d0f10fca91c7b33f")
!5942 = !DISubroutineType(types: !5943)
!5943 = !{null, !1300, !51, !51, !18, !856}
!5944 = distinct !DISubprogram(name: "tlb_batch_pages_flush", scope: !2, file: !2, line: 85, type: !5502, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5945)
!5945 = !{!5946, !5947, !5948, !5953, !5955, !5957}
!5946 = !DILocalVariable(name: "tlb", arg: 1, scope: !5944, file: !2, line: 85, type: !5201)
!5947 = !DILocalVariable(name: "batch", scope: !5944, file: !2, line: 87, type: !5221)
!5948 = !DILocalVariable(name: "pages", scope: !5949, file: !2, line: 90, type: !5952)
!5949 = distinct !DILexicalBlock(scope: !5950, file: !2, line: 89, column: 69)
!5950 = distinct !DILexicalBlock(scope: !5951, file: !2, line: 89, column: 2)
!5951 = distinct !DILexicalBlock(scope: !5944, file: !2, line: 89, column: 2)
!5952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5229, size: 64)
!5953 = !DILocalVariable(name: "nr", scope: !5954, file: !2, line: 96, type: !18)
!5954 = distinct !DILexicalBlock(scope: !5949, file: !2, line: 92, column: 6)
!5955 = !DILocalVariable(name: "__UNIQUE_ID___x340", scope: !5956, file: !2, line: 96, type: !18)
!5956 = distinct !DILexicalBlock(scope: !5954, file: !2, line: 96, column: 22)
!5957 = !DILocalVariable(name: "__UNIQUE_ID___y341", scope: !5956, file: !2, line: 96, type: !18)
!5958 = !DILocation(line: 85, column: 54, scope: !5944)
!5959 = !DILocation(line: 87, column: 2, scope: !5944)
!5960 = !DILocation(line: 87, column: 27, scope: !5944)
!5961 = !DILocation(line: 89, column: 16, scope: !5951)
!5962 = !DILocation(line: 89, column: 21, scope: !5951)
!5963 = !DILocation(line: 89, column: 13, scope: !5951)
!5964 = !DILocation(line: 89, column: 7, scope: !5951)
!5965 = !DILocation(line: 89, column: 28, scope: !5950)
!5966 = !DILocation(line: 89, column: 34, scope: !5950)
!5967 = !DILocation(line: 89, column: 37, scope: !5950)
!5968 = !DILocation(line: 89, column: 44, scope: !5950)
!5969 = !DILocation(line: 0, scope: !5950)
!5970 = !DILocation(line: 89, column: 2, scope: !5951)
!5971 = !DILocation(line: 90, column: 3, scope: !5949)
!5972 = !DILocation(line: 90, column: 25, scope: !5949)
!5973 = !DILocation(line: 90, column: 33, scope: !5949)
!5974 = !DILocation(line: 90, column: 40, scope: !5949)
!5975 = !DILocation(line: 92, column: 3, scope: !5949)
!5976 = !DILocation(line: 96, column: 4, scope: !5954)
!5977 = !DILocation(line: 96, column: 17, scope: !5954)
!5978 = !DILocation(line: 96, column: 22, scope: !5956)
!5979 = !DILocation(line: 96, column: 22, scope: !5954)
!5980 = !DILocation(line: 98, column: 30, scope: !5954)
!5981 = !DILocation(line: 98, column: 37, scope: !5954)
!5982 = !DILocation(line: 98, column: 4, scope: !5954)
!5983 = !DILocation(line: 99, column: 13, scope: !5954)
!5984 = !DILocation(line: 99, column: 10, scope: !5954)
!5985 = !DILocation(line: 100, column: 17, scope: !5954)
!5986 = !DILocation(line: 100, column: 4, scope: !5954)
!5987 = !DILocation(line: 100, column: 11, scope: !5954)
!5988 = !DILocation(line: 100, column: 14, scope: !5954)
!5989 = !DILocation(line: 102, column: 4, scope: !5990)
!5990 = distinct !DILexicalBlock(scope: !5954, file: !2, line: 102, column: 4)
!5991 = !DILocation(line: 103, column: 3, scope: !5949)
!5992 = !DILocation(line: 103, column: 3, scope: !5954)
!5993 = !DILocation(line: 103, column: 12, scope: !5949)
!5994 = !DILocation(line: 103, column: 19, scope: !5949)
!5995 = distinct !{!5995, !5975, !5996, !5309, !5310}
!5996 = !DILocation(line: 103, column: 21, scope: !5949)
!5997 = !DILocation(line: 104, column: 2, scope: !5950)
!5998 = !DILocation(line: 104, column: 2, scope: !5949)
!5999 = !DILocation(line: 89, column: 56, scope: !5950)
!6000 = !DILocation(line: 89, column: 63, scope: !5950)
!6001 = !DILocation(line: 89, column: 54, scope: !5950)
!6002 = !DILocation(line: 89, column: 2, scope: !5950)
!6003 = distinct !{!6003, !5970, !6004, !5309, !5310}
!6004 = !DILocation(line: 104, column: 2, scope: !5951)
!6005 = !DILocation(line: 105, column: 17, scope: !5944)
!6006 = !DILocation(line: 105, column: 22, scope: !5944)
!6007 = !DILocation(line: 105, column: 2, scope: !5944)
!6008 = !DILocation(line: 105, column: 7, scope: !5944)
!6009 = !DILocation(line: 105, column: 14, scope: !5944)
!6010 = !DILocation(line: 106, column: 1, scope: !5944)
!6011 = !DISubprogram(name: "free_pages_and_swap_cache", scope: !4112, file: !4112, line: 454, type: !6012, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6012 = !DISubroutineType(types: !6013)
!6013 = !{null, !5952, !13}
!6014 = distinct !DISubprogram(name: "__might_resched", scope: !6015, file: !6015, line: 184, type: !6016, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6018)
!6015 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!6016 = !DISubroutineType(types: !6017)
!6017 = !{null, !30, !13, !18}
!6018 = !{!6019, !6020, !6021}
!6019 = !DILocalVariable(name: "file", arg: 1, scope: !6014, file: !6015, line: 184, type: !30)
!6020 = !DILocalVariable(name: "line", arg: 2, scope: !6014, file: !6015, line: 184, type: !13)
!6021 = !DILocalVariable(name: "offsets", arg: 3, scope: !6014, file: !6015, line: 185, type: !18)
!6022 = !DILocation(line: 184, column: 50, scope: !6014)
!6023 = !DILocation(line: 184, column: 60, scope: !6014)
!6024 = !DILocation(line: 185, column: 23, scope: !6014)
!6025 = !DILocation(line: 185, column: 34, scope: !6014)
!6026 = !DILocation(line: 2104, column: 9, scope: !6027)
!6027 = distinct !DILexicalBlock(scope: !9, file: !10, line: 2104, column: 9)
!6028 = !DILocation(line: 2104, column: 9, scope: !9)
!6029 = !DILocation(line: 2104, column: 2, scope: !9)
!6030 = distinct !DISubprogram(name: "tlb_table_init", scope: !2, file: !2, line: 277, type: !5502, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6031)
!6031 = !{!6032}
!6032 = !DILocalVariable(name: "tlb", arg: 1, scope: !6030, file: !2, line: 277, type: !5201)
!6033 = !DILocation(line: 277, column: 54, scope: !6030)
!6034 = !DILocation(line: 279, column: 2, scope: !6030)
!6035 = !DILocation(line: 279, column: 7, scope: !6030)
!6036 = !DILocation(line: 279, column: 13, scope: !6030)
!6037 = !DILocation(line: 280, column: 1, scope: !6030)
!6038 = distinct !DISubprogram(name: "inc_tlb_flush_pending", scope: !5690, file: !5690, line: 452, type: !5778, scopeLine: 453, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6039)
!6039 = !{!6040}
!6040 = !DILocalVariable(name: "mm", arg: 1, scope: !6038, file: !5690, line: 452, type: !1300)
!6041 = !DILocation(line: 452, column: 60, scope: !6038)
!6042 = !DILocation(line: 454, column: 14, scope: !6038)
!6043 = !DILocation(line: 454, column: 18, scope: !6038)
!6044 = !DILocation(line: 454, column: 2, scope: !6038)
!6045 = !DILocation(line: 491, column: 1, scope: !6038)
!6046 = distinct !DISubprogram(name: "atomic_inc", scope: !6047, file: !6047, line: 433, type: !6048, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6051)
!6047 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6048 = !DISubroutineType(types: !6049)
!6049 = !{null, !6050}
!6050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!6051 = !{!6052}
!6052 = !DILocalVariable(name: "v", arg: 1, scope: !6046, file: !6047, line: 433, type: !6050)
!6053 = !DILocation(line: 433, column: 22, scope: !6046)
!6054 = !DILocation(line: 435, column: 31, scope: !6046)
!6055 = !DILocation(line: 435, column: 2, scope: !6046)
!6056 = !DILocation(line: 436, column: 17, scope: !6046)
!6057 = !DILocation(line: 436, column: 2, scope: !6046)
!6058 = !DILocation(line: 437, column: 1, scope: !6046)
!6059 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6060, file: !6060, line: 94, type: !6061, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6066)
!6060 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6061 = !DISubroutineType(types: !6062)
!6062 = !{null, !6063, !47}
!6063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6064, size: 64)
!6064 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6065)
!6065 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6066 = !{!6067, !6068}
!6067 = !DILocalVariable(name: "v", arg: 1, scope: !6059, file: !6060, line: 94, type: !6063)
!6068 = !DILocalVariable(name: "size", arg: 2, scope: !6059, file: !6060, line: 94, type: !47)
!6069 = !DILocation(line: 94, column: 79, scope: !6059)
!6070 = !DILocation(line: 94, column: 89, scope: !6059)
!6071 = !DILocation(line: 96, column: 20, scope: !6059)
!6072 = !DILocation(line: 96, column: 23, scope: !6059)
!6073 = !DILocation(line: 96, column: 2, scope: !6059)
!6074 = !DILocation(line: 97, column: 2, scope: !6059)
!6075 = !DILocation(line: 98, column: 1, scope: !6059)
!6076 = distinct !DISubprogram(name: "raw_atomic_inc", scope: !6077, file: !6077, line: 976, type: !6048, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6078)
!6077 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6078 = !{!6079}
!6079 = !DILocalVariable(name: "v", arg: 1, scope: !6076, file: !6077, line: 976, type: !6050)
!6080 = !DILocation(line: 976, column: 26, scope: !6076)
!6081 = !DILocation(line: 979, column: 18, scope: !6076)
!6082 = !DILocation(line: 979, column: 2, scope: !6076)
!6083 = !DILocation(line: 983, column: 1, scope: !6076)
!6084 = distinct !DISubprogram(name: "kasan_check_write", scope: !6085, file: !6085, line: 44, type: !6086, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6088)
!6085 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6086 = !DISubroutineType(types: !6087)
!6087 = !{!856, !6063, !18}
!6088 = !{!6089, !6090}
!6089 = !DILocalVariable(name: "p", arg: 1, scope: !6084, file: !6085, line: 44, type: !6063)
!6090 = !DILocalVariable(name: "size", arg: 2, scope: !6084, file: !6085, line: 44, type: !18)
!6091 = !DILocation(line: 44, column: 59, scope: !6084)
!6092 = !DILocation(line: 44, column: 75, scope: !6084)
!6093 = !DILocation(line: 46, column: 2, scope: !6084)
!6094 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6095, file: !6095, line: 229, type: !6096, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6098)
!6095 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6096 = !DISubroutineType(types: !6097)
!6097 = !{null, !6063, !47, !13}
!6098 = !{!6099, !6100, !6101}
!6099 = !DILocalVariable(name: "ptr", arg: 1, scope: !6094, file: !6095, line: 229, type: !6063)
!6100 = !DILocalVariable(name: "size", arg: 2, scope: !6094, file: !6095, line: 229, type: !47)
!6101 = !DILocalVariable(name: "type", arg: 3, scope: !6094, file: !6095, line: 230, type: !13)
!6102 = !DILocation(line: 229, column: 60, scope: !6094)
!6103 = !DILocation(line: 229, column: 72, scope: !6094)
!6104 = !DILocation(line: 230, column: 15, scope: !6094)
!6105 = !DILocation(line: 230, column: 23, scope: !6094)
!6106 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !6107, file: !6107, line: 51, type: !6048, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6108)
!6107 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6108 = !{!6109}
!6109 = !DILocalVariable(name: "v", arg: 1, scope: !6106, file: !6107, line: 51, type: !6050)
!6110 = !DILocation(line: 51, column: 55, scope: !6106)
!6111 = !DILocation(line: 54, column: 16, scope: !6106)
!6112 = !DILocation(line: 54, column: 19, scope: !6106)
!6113 = !DILocation(line: 53, column: 2, scope: !6106)
!6114 = !{i64 2148902293, i64 2148902332, i64 2148902353, i64 2148902390, i64 2148902413, i64 2148902283}
!6115 = !DILocation(line: 55, column: 1, scope: !6106)
!6116 = distinct !DISubprogram(name: "atomic_read", scope: !6047, file: !6047, line: 30, type: !6117, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6121)
!6117 = !DISubroutineType(types: !6118)
!6118 = !{!13, !6119}
!6119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6120, size: 64)
!6120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!6121 = !{!6122}
!6122 = !DILocalVariable(name: "v", arg: 1, scope: !6116, file: !6047, line: 30, type: !6119)
!6123 = !DILocation(line: 30, column: 29, scope: !6116)
!6124 = !DILocation(line: 32, column: 25, scope: !6116)
!6125 = !DILocation(line: 32, column: 2, scope: !6116)
!6126 = !DILocation(line: 33, column: 25, scope: !6116)
!6127 = !DILocation(line: 33, column: 9, scope: !6116)
!6128 = !DILocation(line: 33, column: 2, scope: !6116)
!6129 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6060, file: !6060, line: 66, type: !6061, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6130)
!6130 = !{!6131, !6132}
!6131 = !DILocalVariable(name: "v", arg: 1, scope: !6129, file: !6060, line: 66, type: !6063)
!6132 = !DILocalVariable(name: "size", arg: 2, scope: !6129, file: !6060, line: 66, type: !47)
!6133 = !DILocation(line: 66, column: 73, scope: !6129)
!6134 = !DILocation(line: 66, column: 83, scope: !6129)
!6135 = !DILocation(line: 68, column: 19, scope: !6129)
!6136 = !DILocation(line: 68, column: 22, scope: !6129)
!6137 = !DILocation(line: 68, column: 2, scope: !6129)
!6138 = !DILocation(line: 69, column: 2, scope: !6129)
!6139 = !DILocation(line: 70, column: 1, scope: !6129)
!6140 = distinct !DISubprogram(name: "raw_atomic_read", scope: !6077, file: !6077, line: 442, type: !6117, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6141)
!6141 = !{!6142}
!6142 = !DILocalVariable(name: "v", arg: 1, scope: !6140, file: !6077, line: 442, type: !6119)
!6143 = !DILocation(line: 442, column: 33, scope: !6140)
!6144 = !DILocation(line: 444, column: 26, scope: !6140)
!6145 = !DILocation(line: 444, column: 9, scope: !6140)
!6146 = !DILocation(line: 444, column: 2, scope: !6140)
!6147 = distinct !DISubprogram(name: "kasan_check_read", scope: !6085, file: !6085, line: 40, type: !6086, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6148)
!6148 = !{!6149, !6150}
!6149 = !DILocalVariable(name: "p", arg: 1, scope: !6147, file: !6085, line: 40, type: !6063)
!6150 = !DILocalVariable(name: "size", arg: 2, scope: !6147, file: !6085, line: 40, type: !18)
!6151 = !DILocation(line: 40, column: 58, scope: !6147)
!6152 = !DILocation(line: 40, column: 74, scope: !6147)
!6153 = !DILocation(line: 42, column: 2, scope: !6147)
!6154 = distinct !DISubprogram(name: "arch_atomic_read", scope: !6107, file: !6107, line: 17, type: !6117, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6155)
!6155 = !{!6156}
!6156 = !DILocalVariable(name: "v", arg: 1, scope: !6154, file: !6107, line: 17, type: !6119)
!6157 = !DILocation(line: 17, column: 61, scope: !6154)
!6158 = !DILocation(line: 23, column: 9, scope: !6154)
!6159 = !DILocation(line: 23, column: 2, scope: !6154)
!6160 = distinct !DISubprogram(name: "test_ti_thread_flag", scope: !6161, file: !6161, line: 116, type: !6162, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6164)
!6161 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!6162 = !DISubroutineType(types: !6163)
!6163 = !{!13, !5184, !13}
!6164 = !{!6165, !6166}
!6165 = !DILocalVariable(name: "ti", arg: 1, scope: !6160, file: !6161, line: 116, type: !5184)
!6166 = !DILocalVariable(name: "flag", arg: 2, scope: !6160, file: !6161, line: 116, type: !13)
!6167 = !DILocation(line: 116, column: 59, scope: !6160)
!6168 = !DILocation(line: 116, column: 67, scope: !6160)
!6169 = !DILocation(line: 118, column: 9, scope: !6160)
!6170 = !DILocation(line: 118, column: 2, scope: !6160)
!6171 = distinct !DISubprogram(name: "get_current", scope: !6172, file: !6172, line: 39, type: !6173, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6175)
!6172 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!6173 = !DISubroutineType(types: !6174)
!6174 = !{!3140}
!6175 = !{!6176, !6178, !6180}
!6176 = !DILocalVariable(name: "pscr_ret__", scope: !6177, file: !6172, line: 41, type: !3140)
!6177 = distinct !DILexicalBlock(scope: !6171, file: !6172, line: 41, column: 9)
!6178 = !DILocalVariable(name: "__vpp_verify", scope: !6179, file: !6172, line: 41, type: !1416)
!6179 = distinct !DILexicalBlock(scope: !6177, file: !6172, line: 41, column: 9)
!6180 = !DILocalVariable(name: "pfo_val__", scope: !6181, file: !6172, line: 41, type: !400)
!6181 = distinct !DILexicalBlock(scope: !6177, file: !6172, line: 41, column: 9)
!6182 = !DILocation(line: 41, column: 9, scope: !6177)
!6183 = !DILocation(line: 41, column: 9, scope: !6179)
!6184 = !DILocation(line: 41, column: 9, scope: !6181)
!6185 = !{i64 2148363839}
!6186 = !DILocation(line: 41, column: 9, scope: !6171)
!6187 = !DILocation(line: 41, column: 2, scope: !6171)
!6188 = distinct !DISubprogram(name: "task_size_max", scope: !6189, file: !6189, line: 83, type: !6190, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6192)
!6189 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e8642b887a42f979954681cc5f73dc7c")
!6190 = !DISubroutineType(types: !6191)
!6191 = !{!51}
!6192 = !{!6193}
!6193 = !DILocalVariable(name: "ret", scope: !6188, file: !6189, line: 85, type: !51)
!6194 = !DILocation(line: 85, column: 2, scope: !6188)
!6195 = !DILocation(line: 85, column: 16, scope: !6188)
!6196 = !DILocation(line: 87, column: 2, scope: !6188)
!6197 = !{i64 2148463010, i64 2148463038, i64 2148463044, i64 2148463060, i64 2148463076, i64 2148463103, i64 2148463433, i64 2148462748, i64 2148463439, i64 2148463487, i64 2148463551, i64 2148463615, i64 2148463672, i64 2148462829, i64 2148462854, i64 2148463879, i64 2148464011, i64 2148463940, i64 2148464025, i64 2148462946}
!6198 = !DILocation(line: 93, column: 9, scope: !6188)
!6199 = !DILocation(line: 94, column: 1, scope: !6188)
!6200 = !DILocation(line: 93, column: 2, scope: !6188)
!6201 = distinct !DISubprogram(name: "const_test_bit", scope: !6202, file: !6202, line: 166, type: !6203, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6208)
!6202 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!6203 = !DISubroutineType(types: !6204)
!6204 = !{!856, !51, !6205}
!6205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6206, size: 64)
!6206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6207)
!6207 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !51)
!6208 = !{!6209, !6210, !6211, !6212, !6213}
!6209 = !DILocalVariable(name: "nr", arg: 1, scope: !6201, file: !6202, line: 166, type: !51)
!6210 = !DILocalVariable(name: "addr", arg: 2, scope: !6201, file: !6202, line: 166, type: !6205)
!6211 = !DILocalVariable(name: "p", scope: !6201, file: !6202, line: 168, type: !5186)
!6212 = !DILocalVariable(name: "mask", scope: !6201, file: !6202, line: 169, type: !51)
!6213 = !DILocalVariable(name: "val", scope: !6201, file: !6202, line: 170, type: !51)
!6214 = !DILocation(line: 166, column: 30, scope: !6201)
!6215 = !DILocation(line: 166, column: 64, scope: !6201)
!6216 = !DILocation(line: 168, column: 2, scope: !6201)
!6217 = !DILocation(line: 168, column: 23, scope: !6201)
!6218 = !DILocation(line: 168, column: 50, scope: !6201)
!6219 = !DILocation(line: 168, column: 57, scope: !6201)
!6220 = !DILocation(line: 168, column: 55, scope: !6201)
!6221 = !DILocation(line: 169, column: 2, scope: !6201)
!6222 = !DILocation(line: 169, column: 16, scope: !6201)
!6223 = !DILocation(line: 169, column: 23, scope: !6201)
!6224 = !DILocation(line: 170, column: 2, scope: !6201)
!6225 = !DILocation(line: 170, column: 16, scope: !6201)
!6226 = !DILocation(line: 170, column: 23, scope: !6201)
!6227 = !DILocation(line: 170, column: 22, scope: !6201)
!6228 = !DILocation(line: 172, column: 12, scope: !6201)
!6229 = !DILocation(line: 172, column: 18, scope: !6201)
!6230 = !DILocation(line: 172, column: 16, scope: !6201)
!6231 = !DILocation(line: 172, column: 10, scope: !6201)
!6232 = !DILocation(line: 172, column: 9, scope: !6201)
!6233 = !DILocation(line: 173, column: 1, scope: !6201)
!6234 = !DILocation(line: 172, column: 2, scope: !6201)
!6235 = distinct !DISubprogram(name: "_test_bit", scope: !6236, file: !6236, line: 139, type: !6203, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6237)
!6236 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!6237 = !{!6238, !6239}
!6238 = !DILocalVariable(name: "nr", arg: 1, scope: !6235, file: !6236, line: 139, type: !51)
!6239 = !DILocalVariable(name: "addr", arg: 2, scope: !6235, file: !6236, line: 139, type: !6205)
!6240 = !DILocation(line: 139, column: 25, scope: !6235)
!6241 = !DILocation(line: 139, column: 59, scope: !6235)
!6242 = !DILocation(line: 141, column: 25, scope: !6235)
!6243 = !DILocation(line: 141, column: 32, scope: !6235)
!6244 = !DILocation(line: 141, column: 30, scope: !6235)
!6245 = !DILocation(line: 141, column: 2, scope: !6235)
!6246 = !DILocation(line: 142, column: 23, scope: !6235)
!6247 = !DILocation(line: 142, column: 27, scope: !6235)
!6248 = !DILocation(line: 142, column: 9, scope: !6235)
!6249 = !DILocation(line: 142, column: 2, scope: !6235)
!6250 = distinct !DISubprogram(name: "arch_test_bit", scope: !6251, file: !6251, line: 237, type: !6203, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6252)
!6251 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6252 = !{!6253, !6254}
!6253 = !DILocalVariable(name: "nr", arg: 1, scope: !6250, file: !6251, line: 237, type: !51)
!6254 = !DILocalVariable(name: "addr", arg: 2, scope: !6250, file: !6251, line: 237, type: !6205)
!6255 = !DILocation(line: 237, column: 29, scope: !6250)
!6256 = !DILocation(line: 237, column: 63, scope: !6250)
!6257 = !DILocation(line: 239, column: 30, scope: !6250)
!6258 = !DILocation(line: 239, column: 9, scope: !6250)
!6259 = !DILocation(line: 239, column: 54, scope: !6250)
!6260 = !DILocation(line: 239, column: 58, scope: !6250)
!6261 = !DILocation(line: 239, column: 36, scope: !6250)
!6262 = !DILocation(line: 240, column: 26, scope: !6250)
!6263 = !DILocation(line: 240, column: 30, scope: !6250)
!6264 = !DILocation(line: 240, column: 8, scope: !6250)
!6265 = !DILocation(line: 239, column: 2, scope: !6250)
!6266 = distinct !DISubprogram(name: "constant_test_bit", scope: !6251, file: !6251, line: 204, type: !6267, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6269)
!6267 = !DISubroutineType(types: !6268)
!6268 = !{!856, !602, !6205}
!6269 = !{!6270, !6271}
!6270 = !DILocalVariable(name: "nr", arg: 1, scope: !6266, file: !6251, line: 204, type: !602)
!6271 = !DILocalVariable(name: "addr", arg: 2, scope: !6266, file: !6251, line: 204, type: !6205)
!6272 = !DILocation(line: 204, column: 52, scope: !6266)
!6273 = !DILocation(line: 204, column: 86, scope: !6266)
!6274 = !DILocation(line: 206, column: 19, scope: !6266)
!6275 = !DILocation(line: 206, column: 22, scope: !6266)
!6276 = !DILocation(line: 206, column: 15, scope: !6266)
!6277 = !DILocation(line: 207, column: 4, scope: !6266)
!6278 = !DILocation(line: 207, column: 9, scope: !6266)
!6279 = !DILocation(line: 207, column: 12, scope: !6266)
!6280 = !DILocation(line: 206, column: 44, scope: !6266)
!6281 = !DILocation(line: 207, column: 37, scope: !6266)
!6282 = !DILocation(line: 206, column: 2, scope: !6266)
!6283 = distinct !DISubprogram(name: "variable_test_bit", scope: !6251, file: !6251, line: 224, type: !6267, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6284)
!6284 = !{!6285, !6286, !6287}
!6285 = !DILocalVariable(name: "nr", arg: 1, scope: !6283, file: !6251, line: 224, type: !602)
!6286 = !DILocalVariable(name: "addr", arg: 2, scope: !6283, file: !6251, line: 224, type: !6205)
!6287 = !DILocalVariable(name: "oldbit", scope: !6283, file: !6251, line: 226, type: !856)
!6288 = !DILocation(line: 224, column: 52, scope: !6283)
!6289 = !DILocation(line: 224, column: 86, scope: !6283)
!6290 = !DILocation(line: 226, column: 2, scope: !6283)
!6291 = !DILocation(line: 226, column: 7, scope: !6283)
!6292 = !DILocation(line: 231, column: 33, scope: !6283)
!6293 = !DILocation(line: 231, column: 46, scope: !6283)
!6294 = !DILocation(line: 228, column: 2, scope: !6283)
!6295 = !{i64 2148066955, i64 2148067029}
!6296 = !DILocation(line: 233, column: 9, scope: !6283)
!6297 = !DILocation(line: 234, column: 1, scope: !6283)
!6298 = !DILocation(line: 233, column: 2, scope: !6283)
!6299 = distinct !DISubprogram(name: "atomic_dec", scope: !6047, file: !6047, line: 590, type: !6048, scopeLine: 591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6300)
!6300 = !{!6301}
!6301 = !DILocalVariable(name: "v", arg: 1, scope: !6299, file: !6047, line: 590, type: !6050)
!6302 = !DILocation(line: 590, column: 22, scope: !6299)
!6303 = !DILocation(line: 592, column: 31, scope: !6299)
!6304 = !DILocation(line: 592, column: 2, scope: !6299)
!6305 = !DILocation(line: 593, column: 17, scope: !6299)
!6306 = !DILocation(line: 593, column: 2, scope: !6299)
!6307 = !DILocation(line: 594, column: 1, scope: !6299)
!6308 = distinct !DISubprogram(name: "raw_atomic_dec", scope: !6077, file: !6077, line: 1194, type: !6048, scopeLine: 1195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6309)
!6309 = !{!6310}
!6310 = !DILocalVariable(name: "v", arg: 1, scope: !6308, file: !6077, line: 1194, type: !6050)
!6311 = !DILocation(line: 1194, column: 26, scope: !6308)
!6312 = !DILocation(line: 1197, column: 18, scope: !6308)
!6313 = !DILocation(line: 1197, column: 2, scope: !6308)
!6314 = !DILocation(line: 1201, column: 1, scope: !6308)
!6315 = distinct !DISubprogram(name: "arch_atomic_dec", scope: !6107, file: !6107, line: 58, type: !6048, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6316)
!6316 = !{!6317}
!6317 = !DILocalVariable(name: "v", arg: 1, scope: !6315, file: !6107, line: 58, type: !6050)
!6318 = !DILocation(line: 58, column: 55, scope: !6315)
!6319 = !DILocation(line: 61, column: 16, scope: !6315)
!6320 = !DILocation(line: 61, column: 19, scope: !6315)
!6321 = !DILocation(line: 60, column: 2, scope: !6315)
!6322 = !{i64 2148902656, i64 2148902695, i64 2148902716, i64 2148902753, i64 2148902776, i64 2148902646}
!6323 = !DILocation(line: 62, column: 1, scope: !6315)
