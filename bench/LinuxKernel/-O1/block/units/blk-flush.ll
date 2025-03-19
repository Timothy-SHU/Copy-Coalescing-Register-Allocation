; ModuleID = 'block/blk-flush.c'
source_filename = "block/blk-flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_blkdev_issue_flush: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad blkdev_issue_flush ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_blk_mq_hctx_set_fq_lock_class: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad blk_mq_hctx_set_fq_lock_class ; .previous"

%struct.cpuinfo_x86 = type { %union.anon.19, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.21, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.19 = type { i32 }
%union.anon.21 = type { i64, [88 x i8] }
%struct.static_call_key = type { ptr, %union.anon.22 }
%union.anon.22 = type { i64 }
%struct.pcpu_hot = type { %union.anon.23 }
%union.anon.23 = type { %struct.anon.24, [16 x i8] }
%struct.anon.24 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.13, ptr, i64, i64, i64, i16, i16, i16, i32, %struct.atomic_t, i64, %union.anon.14, %union.anon.15, %struct.anon.16, %struct.anon.17, i64, ptr, ptr }
%union.anon.13 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%union.anon.15 = type { %struct.rb_node }
%struct.rb_node = type { i64, ptr, ptr }
%struct.anon.16 = type { ptr, [2 x ptr] }
%struct.anon.17 = type { i32, ptr }
%struct.blk_flush_queue = type { %struct.spinlock, i8, i8, i64, [2 x %struct.list_head], i64, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, %struct.mutex, ptr, ptr, i32, %struct.xarray, i32, ptr, i64, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.refcount_struct, ptr, ptr, i32, i64, i32, i32, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i64], ptr, %struct.list_head, %struct.mutex, %struct.queue_limits, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, ptr, ptr, ptr, %struct.mutex, i8 }
%struct.percpu_ref = type { i64, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.queue_limits = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.blk_mq_hw_ctx = type { %struct.anon.25, %struct.delayed_work, [1 x %struct.cpumask], i32, i32, i64, ptr, ptr, ptr, ptr, %struct.sbitmap, ptr, i32, i16, i16, ptr, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, ptr, ptr, i64, i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, ptr, ptr, %struct.list_head, [24 x i8] }
%struct.anon.25 = type { %struct.spinlock, %struct.list_head, i64, [32 x i8] }
%struct.cpumask = type { [1 x i64] }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.bio = type { ptr, ptr, i32, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, %union.anon.18, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.18 = type {}
%struct.bio_vec = type { ptr, i32, i32 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, %struct.bio_set, i32, i64, %struct.mutex, i32, ptr, %struct.kobject, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.lockdep_map, i64, i32, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.lockdep_map = type {}
%struct.block_device = type { i64, i64, ptr, ptr, ptr, i64, i8, i8, i8, i8, i32, %struct.atomic_t, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.mutex, i32, i32, ptr, %struct.mutex, ptr, ptr, i8, %struct.device }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.disk_stats = type { [4 x i64], [4 x i64], [4 x i64], [4 x i64], i64, [2 x %struct.local_t] }
%struct.local_t = type { %struct.atomic64_t }
%struct.blk_mq_ctx = type { %struct.anon.26, i32, [3 x i16], [3 x ptr], ptr, ptr, %struct.kobject, [8 x i8] }
%struct.anon.26 = type { %struct.spinlock, [3 x %struct.list_head], [8 x i8] }

@.str = private unnamed_addr constant [18 x i8] c"block/blk-flush.c\00", align 1, !dbg !0
@__UNIQUE_ID___addressable_blkdev_issue_flush353 = internal global ptr @blkdev_issue_flush, section ".discard.addressable", align 8, !dbg !7
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@__UNIQUE_ID___addressable_blk_mq_hctx_set_fq_lock_class354 = internal global ptr @blk_mq_hctx_set_fq_lock_class, section ".discard.addressable", align 8, !dbg !5595
@.str.1 = private unnamed_addr constant [12 x i8] c"block/blk.h\00", align 1, !dbg !5597
@.str.2 = private unnamed_addr constant [4 x i8] c"add\00", align 1, !dbg !5600
@blk_account_io_flush.__UNIQUE_ID___addressable___SCK__preempt_schedule351 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !5603
@__SCK__preempt_schedule = external dso_local global %struct.static_call_key, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5645
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable_blkdev_issue_flush353, ptr @__UNIQUE_ID___addressable_blk_mq_hctx_set_fq_lock_class354, ptr @blk_account_io_flush.__UNIQUE_ID___addressable___SCK__preempt_schedule351], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @is_flush_rq(ptr noundef %rq) #0 align 16 !dbg !5660 {
entry:
  %rq.addr = alloca ptr, align 8
  store ptr %rq, ptr %rq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rq.addr, metadata !5664, metadata !DIExpression()), !dbg !5665
  %0 = load ptr, ptr %rq.addr, align 8, !dbg !5666
  %end_io = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 28, !dbg !5667
  %1 = load ptr, ptr %end_io, align 8, !dbg !5667
  %cmp = icmp eq ptr %1, @flush_end_io, !dbg !5668
  ret i1 %cmp, !dbg !5669
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @flush_end_io(ptr noundef %flush_rq, i8 noundef zeroext %error) #0 align 16 !dbg !5670 {
entry:
  %retval = alloca i32, align 4
  %flush_rq.addr = alloca ptr, align 8
  %error.addr = alloca i8, align 1
  %q = alloca ptr, align 8
  %running = alloca ptr, align 8
  %rq = alloca ptr, align 8
  %n = alloca ptr, align 8
  %flags = alloca i64, align 8
  %fq = alloca ptr, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp62 = alloca ptr, align 8
  %__mptr63 = alloca ptr, align 8
  %tmp65 = alloca ptr, align 8
  %seq = alloca i32, align 4
  %__mptr97 = alloca ptr, align 8
  %tmp99 = alloca ptr, align 8
  store ptr %flush_rq, ptr %flush_rq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flush_rq.addr, metadata !5672, metadata !DIExpression()), !dbg !5695
  store i8 %error, ptr %error.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !5673, metadata !DIExpression()), !dbg !5696
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #17, !dbg !5697
  call void @llvm.dbg.declare(metadata ptr %q, metadata !5674, metadata !DIExpression()), !dbg !5698
  %0 = load ptr, ptr %flush_rq.addr, align 8, !dbg !5699
  %q1 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 0, !dbg !5700
  %1 = load ptr, ptr %q1, align 8, !dbg !5700
  store ptr %1, ptr %q, align 8, !dbg !5698
  call void @llvm.lifetime.start.p0(i64 8, ptr %running) #17, !dbg !5701
  call void @llvm.dbg.declare(metadata ptr %running, metadata !5675, metadata !DIExpression()), !dbg !5702
  call void @llvm.lifetime.start.p0(i64 8, ptr %rq) #17, !dbg !5703
  call void @llvm.dbg.declare(metadata ptr %rq, metadata !5676, metadata !DIExpression()), !dbg !5704
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #17, !dbg !5703
  call void @llvm.dbg.declare(metadata ptr %n, metadata !5677, metadata !DIExpression()), !dbg !5705
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #17, !dbg !5706
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5678, metadata !DIExpression()), !dbg !5707
  store i64 0, ptr %flags, align 8, !dbg !5707
  call void @llvm.lifetime.start.p0(i64 8, ptr %fq) #17, !dbg !5708
  call void @llvm.dbg.declare(metadata ptr %fq, metadata !5679, metadata !DIExpression()), !dbg !5709
  %2 = load ptr, ptr %q, align 8, !dbg !5710
  %3 = load ptr, ptr %flush_rq.addr, align 8, !dbg !5711
  %mq_ctx = getelementptr inbounds %struct.request, ptr %3, i32 0, i32 1, !dbg !5712
  %4 = load ptr, ptr %mq_ctx, align 8, !dbg !5712
  %call = call ptr @blk_get_flush_queue(ptr noundef %2, ptr noundef %4) #18, !dbg !5713
  store ptr %call, ptr %fq, align 8, !dbg !5709
  br label %do.body, !dbg !5714

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5715

do.body2:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #17, !dbg !5716
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5680, metadata !DIExpression()), !dbg !5716
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #17, !dbg !5716
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5684, metadata !DIExpression()), !dbg !5716
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5716
  %conv = zext i1 %cmp to i32, !dbg !5716
  store i32 1, ptr %tmp, align 4, !dbg !5716
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #17, !dbg !5717
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #17, !dbg !5717
  %5 = load i32, ptr %tmp, align 4, !dbg !5716
  %6 = load ptr, ptr %fq, align 8, !dbg !5717
  %mq_flush_lock = getelementptr inbounds %struct.blk_flush_queue, ptr %6, i32 0, i32 0, !dbg !5717
  %call3 = call ptr @spinlock_check(ptr noundef %mq_flush_lock) #18, !dbg !5717
  %call4 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call3) #18, !dbg !5717
  store i64 %call4, ptr %flags, align 8, !dbg !5717
  br label %do.cond, !dbg !5717

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !5717

do.end:                                           ; preds = %do.cond
  br label %do.cond5, !dbg !5715

do.cond5:                                         ; preds = %do.end
  br label %do.end6, !dbg !5715

do.end6:                                          ; preds = %do.cond5
  %7 = load ptr, ptr %flush_rq.addr, align 8, !dbg !5718
  %call7 = call zeroext i1 @req_ref_put_and_test(ptr noundef %7) #18, !dbg !5720
  br i1 %call7, label %if.end, label %if.then, !dbg !5721

if.then:                                          ; preds = %do.end6
  %8 = load i8, ptr %error.addr, align 1, !dbg !5722
  %9 = load ptr, ptr %fq, align 8, !dbg !5724
  %rq_status = getelementptr inbounds %struct.blk_flush_queue, ptr %9, i32 0, i32 2, !dbg !5725
  store i8 %8, ptr %rq_status, align 1, !dbg !5726
  %10 = load ptr, ptr %fq, align 8, !dbg !5727
  %mq_flush_lock8 = getelementptr inbounds %struct.blk_flush_queue, ptr %10, i32 0, i32 0, !dbg !5728
  %11 = load i64, ptr %flags, align 8, !dbg !5729
  call void @spin_unlock_irqrestore(ptr noundef %mq_flush_lock8, i64 noundef %11) #18, !dbg !5730
  store i32 0, ptr %retval, align 4, !dbg !5731
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5731

if.end:                                           ; preds = %do.end6
  %12 = load ptr, ptr %flush_rq.addr, align 8, !dbg !5732
  call void @blk_account_io_flush(ptr noundef %12) #18, !dbg !5733
  br label %do.body9, !dbg !5734

do.body9:                                         ; preds = %if.end
  br label %do.body10, !dbg !5735

do.body10:                                        ; preds = %do.body9
  br label %do.cond11, !dbg !5737

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !5737

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !5735

do.body13:                                        ; preds = %do.end12
  %13 = load ptr, ptr %flush_rq.addr, align 8, !dbg !5739
  %state = getelementptr inbounds %struct.request, ptr %13, i32 0, i32 20, !dbg !5739
  store volatile i32 0, ptr %state, align 8, !dbg !5739
  br label %do.cond14, !dbg !5739

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !5739

do.end15:                                         ; preds = %do.cond14
  br label %do.cond16, !dbg !5735

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !5735

do.end17:                                         ; preds = %do.cond16
  %14 = load ptr, ptr %fq, align 8, !dbg !5741
  %rq_status18 = getelementptr inbounds %struct.blk_flush_queue, ptr %14, i32 0, i32 2, !dbg !5743
  %15 = load i8, ptr %rq_status18, align 1, !dbg !5743
  %conv19 = zext i8 %15 to i32, !dbg !5741
  %cmp20 = icmp ne i32 %conv19, 0, !dbg !5744
  br i1 %cmp20, label %if.then22, label %if.end25, !dbg !5745

if.then22:                                        ; preds = %do.end17
  %16 = load ptr, ptr %fq, align 8, !dbg !5746
  %rq_status23 = getelementptr inbounds %struct.blk_flush_queue, ptr %16, i32 0, i32 2, !dbg !5748
  %17 = load i8, ptr %rq_status23, align 1, !dbg !5748
  store i8 %17, ptr %error.addr, align 1, !dbg !5749
  %18 = load ptr, ptr %fq, align 8, !dbg !5750
  %rq_status24 = getelementptr inbounds %struct.blk_flush_queue, ptr %18, i32 0, i32 2, !dbg !5751
  store i8 0, ptr %rq_status24, align 1, !dbg !5752
  br label %if.end25, !dbg !5753

if.end25:                                         ; preds = %if.then22, %do.end17
  %19 = load ptr, ptr %q, align 8, !dbg !5754
  %elevator = getelementptr inbounds %struct.request_queue, ptr %19, i32 0, i32 1, !dbg !5756
  %20 = load ptr, ptr %elevator, align 8, !dbg !5756
  %tobool = icmp ne ptr %20, null, !dbg !5754
  br i1 %tobool, label %if.else, label %if.then26, !dbg !5757

if.then26:                                        ; preds = %if.end25
  %21 = load ptr, ptr %flush_rq.addr, align 8, !dbg !5758
  %tag = getelementptr inbounds %struct.request, ptr %21, i32 0, i32 5, !dbg !5760
  store i32 -1, ptr %tag, align 8, !dbg !5761
  br label %if.end27, !dbg !5762

if.else:                                          ; preds = %if.end25
  %22 = load ptr, ptr %flush_rq.addr, align 8, !dbg !5763
  call void @blk_mq_put_driver_tag(ptr noundef %22) #18, !dbg !5765
  %23 = load ptr, ptr %flush_rq.addr, align 8, !dbg !5766
  %internal_tag = getelementptr inbounds %struct.request, ptr %23, i32 0, i32 6, !dbg !5767
  store i32 -1, ptr %internal_tag, align 4, !dbg !5768
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then26
  %24 = load ptr, ptr %fq, align 8, !dbg !5769
  %flush_queue = getelementptr inbounds %struct.blk_flush_queue, ptr %24, i32 0, i32 4, !dbg !5770
  %25 = load ptr, ptr %fq, align 8, !dbg !5771
  %flush_running_idx = getelementptr inbounds %struct.blk_flush_queue, ptr %25, i32 0, i32 1, !dbg !5772
  %bf.load = load i8, ptr %flush_running_idx, align 4, !dbg !5772
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !5772
  %bf.clear = and i8 %bf.lshr, 1, !dbg !5772
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5772
  %idxprom = zext i32 %bf.cast to i64, !dbg !5769
  %arrayidx = getelementptr [2 x %struct.list_head], ptr %flush_queue, i64 0, i64 %idxprom, !dbg !5769
  store ptr %arrayidx, ptr %running, align 8, !dbg !5773
  br label %do.body28, !dbg !5774

do.body28:                                        ; preds = %if.end27
  %26 = load ptr, ptr %fq, align 8, !dbg !5775
  %flush_pending_idx = getelementptr inbounds %struct.blk_flush_queue, ptr %26, i32 0, i32 1, !dbg !5775
  %bf.load29 = load i8, ptr %flush_pending_idx, align 4, !dbg !5775
  %bf.clear30 = and i8 %bf.load29, 1, !dbg !5775
  %bf.cast31 = zext i8 %bf.clear30 to i32, !dbg !5775
  %27 = load ptr, ptr %fq, align 8, !dbg !5775
  %flush_running_idx32 = getelementptr inbounds %struct.blk_flush_queue, ptr %27, i32 0, i32 1, !dbg !5775
  %bf.load33 = load i8, ptr %flush_running_idx32, align 4, !dbg !5775
  %bf.lshr34 = lshr i8 %bf.load33, 1, !dbg !5775
  %bf.clear35 = and i8 %bf.lshr34, 1, !dbg !5775
  %bf.cast36 = zext i8 %bf.clear35 to i32, !dbg !5775
  %cmp37 = icmp eq i32 %bf.cast31, %bf.cast36, !dbg !5775
  %lnot = xor i1 %cmp37, true, !dbg !5775
  %lnot39 = xor i1 %lnot, true, !dbg !5775
  %lnot.ext = zext i1 %lnot39 to i32, !dbg !5775
  %conv40 = sext i32 %lnot.ext to i64, !dbg !5775
  %expval = call i64 @llvm.expect.i64(i64 %conv40, i64 0), !dbg !5775
  %tobool41 = icmp ne i64 %expval, 0, !dbg !5775
  br i1 %tobool41, label %if.then42, label %if.end52, !dbg !5778

if.then42:                                        ; preds = %do.body28
  br label %do.body43, !dbg !5775

do.body43:                                        ; preds = %if.then42
  br label %do.body44, !dbg !5779

do.body44:                                        ; preds = %do.body43
  br label %do.cond45, !dbg !5781

do.cond45:                                        ; preds = %do.body44
  br label %do.end46, !dbg !5781

do.end46:                                         ; preds = %do.cond45
  br label %do.body47, !dbg !5779

do.body47:                                        ; preds = %do.end46
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 254, i32 0, i64 12) #17, !dbg !5783, !srcloc !5785
  br label %do.cond48, !dbg !5783

do.cond48:                                        ; preds = %do.body47
  br label %do.end49, !dbg !5783

do.end49:                                         ; preds = %do.cond48
  unreachable, !dbg !5779

do.cond50:                                        ; No predecessors!
  br label %do.end51, !dbg !5779

do.end51:                                         ; preds = %do.cond50
  br label %if.end52, !dbg !5779

if.end52:                                         ; preds = %do.end51, %do.body28
  br label %do.cond53, !dbg !5778

do.cond53:                                        ; preds = %if.end52
  br label %do.end54, !dbg !5778

do.end54:                                         ; preds = %do.cond53
  %28 = load ptr, ptr %fq, align 8, !dbg !5786
  %flush_running_idx55 = getelementptr inbounds %struct.blk_flush_queue, ptr %28, i32 0, i32 1, !dbg !5787
  %bf.load56 = load i8, ptr %flush_running_idx55, align 4, !dbg !5788
  %bf.lshr57 = lshr i8 %bf.load56, 1, !dbg !5788
  %bf.clear58 = and i8 %bf.lshr57, 1, !dbg !5788
  %bf.cast59 = zext i8 %bf.clear58 to i32, !dbg !5788
  %xor = xor i32 %bf.cast59, 1, !dbg !5788
  %29 = trunc i32 %xor to i8, !dbg !5788
  %bf.load60 = load i8, ptr %flush_running_idx55, align 4, !dbg !5788
  %bf.value = and i8 %29, 1, !dbg !5788
  %bf.shl = shl i8 %bf.value, 1, !dbg !5788
  %bf.clear61 = and i8 %bf.load60, -3, !dbg !5788
  %bf.set = or i8 %bf.clear61, %bf.shl, !dbg !5788
  store i8 %bf.set, ptr %flush_running_idx55, align 4, !dbg !5788
  %bf.result.cast = zext i8 %bf.value to i32, !dbg !5788
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !5789
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5685, metadata !DIExpression()), !dbg !5789
  %30 = load ptr, ptr %running, align 8, !dbg !5789
  %next = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 0, !dbg !5789
  %31 = load ptr, ptr %next, align 8, !dbg !5789
  store ptr %31, ptr %__mptr, align 8, !dbg !5789
  %32 = load ptr, ptr %__mptr, align 8, !dbg !5789
  %add.ptr = getelementptr i8, ptr %32, i64 -72, !dbg !5789
  store ptr %add.ptr, ptr %tmp62, align 8, !dbg !5789
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !5790
  %33 = load ptr, ptr %tmp62, align 8, !dbg !5789
  store ptr %33, ptr %rq, align 8, !dbg !5790
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr63) #17, !dbg !5791
  call void @llvm.dbg.declare(metadata ptr %__mptr63, metadata !5688, metadata !DIExpression()), !dbg !5791
  %34 = load ptr, ptr %rq, align 8, !dbg !5791
  %35 = getelementptr inbounds %struct.request, ptr %34, i32 0, i32 12, !dbg !5791
  %next64 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 0, !dbg !5791
  %36 = load ptr, ptr %next64, align 8, !dbg !5791
  store ptr %36, ptr %__mptr63, align 8, !dbg !5791
  %37 = load ptr, ptr %__mptr63, align 8, !dbg !5791
  %add.ptr66 = getelementptr i8, ptr %37, i64 -72, !dbg !5791
  store ptr %add.ptr66, ptr %tmp65, align 8, !dbg !5791
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr63) #17, !dbg !5790
  %38 = load ptr, ptr %tmp65, align 8, !dbg !5791
  store ptr %38, ptr %n, align 8, !dbg !5790
  br label %for.cond, !dbg !5790

for.cond:                                         ; preds = %for.inc, %do.end54
  %39 = load ptr, ptr %rq, align 8, !dbg !5792
  %40 = getelementptr inbounds %struct.request, ptr %39, i32 0, i32 12, !dbg !5792
  %41 = load ptr, ptr %running, align 8, !dbg !5792
  %cmp67 = icmp eq ptr %40, %41, !dbg !5792
  %lnot69 = xor i1 %cmp67, true, !dbg !5792
  br i1 %lnot69, label %for.body, label %for.end, !dbg !5790

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %seq) #17, !dbg !5793
  call void @llvm.dbg.declare(metadata ptr %seq, metadata !5690, metadata !DIExpression()), !dbg !5794
  %42 = load ptr, ptr %rq, align 8, !dbg !5795
  %call71 = call i32 @blk_flush_cur_seq(ptr noundef %42) #18, !dbg !5796
  store i32 %call71, ptr %seq, align 4, !dbg !5794
  br label %do.body72, !dbg !5797

do.body72:                                        ; preds = %for.body
  %43 = load i32, ptr %seq, align 4, !dbg !5798
  %cmp73 = icmp ne i32 %43, 1, !dbg !5798
  br i1 %cmp73, label %land.rhs, label %land.end, !dbg !5798

land.rhs:                                         ; preds = %do.body72
  %44 = load i32, ptr %seq, align 4, !dbg !5798
  %cmp75 = icmp ne i32 %44, 4, !dbg !5798
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.body72
  %45 = phi i1 [ false, %do.body72 ], [ %cmp75, %land.rhs ], !dbg !5801
  %lnot77 = xor i1 %45, true, !dbg !5798
  %lnot79 = xor i1 %lnot77, true, !dbg !5798
  %lnot.ext80 = zext i1 %lnot79 to i32, !dbg !5798
  %conv81 = sext i32 %lnot.ext80 to i64, !dbg !5798
  %expval82 = call i64 @llvm.expect.i64(i64 %conv81, i64 0), !dbg !5798
  %tobool83 = icmp ne i64 %expval82, 0, !dbg !5798
  br i1 %tobool83, label %if.then84, label %if.end94, !dbg !5802

if.then84:                                        ; preds = %land.end
  br label %do.body85, !dbg !5798

do.body85:                                        ; preds = %if.then84
  br label %do.body86, !dbg !5803

do.body86:                                        ; preds = %do.body85
  br label %do.cond87, !dbg !5805

do.cond87:                                        ; preds = %do.body86
  br label %do.end88, !dbg !5805

do.end88:                                         ; preds = %do.cond87
  br label %do.body89, !dbg !5803

do.body89:                                        ; preds = %do.end88
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 263, i32 0, i64 12) #17, !dbg !5807, !srcloc !5809
  br label %do.cond90, !dbg !5807

do.cond90:                                        ; preds = %do.body89
  br label %do.end91, !dbg !5807

do.end91:                                         ; preds = %do.cond90
  unreachable, !dbg !5803

do.cond92:                                        ; No predecessors!
  br label %do.end93, !dbg !5803

do.end93:                                         ; preds = %do.cond92
  br label %if.end94, !dbg !5803

if.end94:                                         ; preds = %do.end93, %land.end
  br label %do.cond95, !dbg !5802

do.cond95:                                        ; preds = %if.end94
  br label %do.end96, !dbg !5802

do.end96:                                         ; preds = %do.cond95
  %46 = load ptr, ptr %rq, align 8, !dbg !5810
  %47 = getelementptr inbounds %struct.request, ptr %46, i32 0, i32 12, !dbg !5811
  call void @list_del_init(ptr noundef %47) #18, !dbg !5812
  %48 = load ptr, ptr %rq, align 8, !dbg !5813
  %49 = load ptr, ptr %fq, align 8, !dbg !5814
  %50 = load i32, ptr %seq, align 4, !dbg !5815
  %51 = load i8, ptr %error.addr, align 1, !dbg !5816
  call void @blk_flush_complete_seq(ptr noundef %48, ptr noundef %49, i32 noundef %50, i8 noundef zeroext %51) #18, !dbg !5817
  call void @llvm.lifetime.end.p0(i64 4, ptr %seq) #17, !dbg !5818
  br label %for.inc, !dbg !5819

for.inc:                                          ; preds = %do.end96
  %52 = load ptr, ptr %n, align 8, !dbg !5792
  store ptr %52, ptr %rq, align 8, !dbg !5792
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr97) #17, !dbg !5820
  call void @llvm.dbg.declare(metadata ptr %__mptr97, metadata !5693, metadata !DIExpression()), !dbg !5820
  %53 = load ptr, ptr %n, align 8, !dbg !5820
  %54 = getelementptr inbounds %struct.request, ptr %53, i32 0, i32 12, !dbg !5820
  %next98 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 0, !dbg !5820
  %55 = load ptr, ptr %next98, align 8, !dbg !5820
  store ptr %55, ptr %__mptr97, align 8, !dbg !5820
  %56 = load ptr, ptr %__mptr97, align 8, !dbg !5820
  %add.ptr100 = getelementptr i8, ptr %56, i64 -72, !dbg !5820
  store ptr %add.ptr100, ptr %tmp99, align 8, !dbg !5820
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr97) #17, !dbg !5792
  %57 = load ptr, ptr %tmp99, align 8, !dbg !5820
  store ptr %57, ptr %n, align 8, !dbg !5792
  br label %for.cond, !dbg !5792, !llvm.loop !5821

for.end:                                          ; preds = %for.cond
  %58 = load ptr, ptr %fq, align 8, !dbg !5825
  %mq_flush_lock101 = getelementptr inbounds %struct.blk_flush_queue, ptr %58, i32 0, i32 0, !dbg !5826
  %59 = load i64, ptr %flags, align 8, !dbg !5827
  call void @spin_unlock_irqrestore(ptr noundef %mq_flush_lock101, i64 noundef %59) #18, !dbg !5828
  store i32 0, ptr %retval, align 4, !dbg !5829
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5829

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %fq) #17, !dbg !5830
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #17, !dbg !5830
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #17, !dbg !5830
  call void @llvm.lifetime.end.p0(i64 8, ptr %rq) #17, !dbg !5830
  call void @llvm.lifetime.end.p0(i64 8, ptr %running) #17, !dbg !5830
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #17, !dbg !5830
  %60 = load i32, ptr %retval, align 4, !dbg !5830
  ret i32 %60, !dbg !5830
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @blk_insert_flush(ptr noundef %rq) #0 align 16 !dbg !5831 {
entry:
  %retval = alloca i1, align 1
  %rq.addr = alloca ptr, align 8
  %q = alloca ptr, align 8
  %fflags = alloca i64, align 8
  %policy = alloca i32, align 4
  %fq = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rq, ptr %rq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rq.addr, metadata !5833, metadata !DIExpression()), !dbg !5843
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #17, !dbg !5844
  call void @llvm.dbg.declare(metadata ptr %q, metadata !5834, metadata !DIExpression()), !dbg !5845
  %0 = load ptr, ptr %rq.addr, align 8, !dbg !5846
  %q1 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 0, !dbg !5847
  %1 = load ptr, ptr %q1, align 8, !dbg !5847
  store ptr %1, ptr %q, align 8, !dbg !5845
  call void @llvm.lifetime.start.p0(i64 8, ptr %fflags) #17, !dbg !5848
  call void @llvm.dbg.declare(metadata ptr %fflags, metadata !5835, metadata !DIExpression()), !dbg !5849
  %2 = load ptr, ptr %q, align 8, !dbg !5850
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %2, i32 0, i32 12, !dbg !5851
  %3 = load i64, ptr %queue_flags, align 8, !dbg !5851
  store i64 %3, ptr %fflags, align 8, !dbg !5849
  call void @llvm.lifetime.start.p0(i64 4, ptr %policy) #17, !dbg !5852
  call void @llvm.dbg.declare(metadata ptr %policy, metadata !5836, metadata !DIExpression()), !dbg !5853
  %4 = load i64, ptr %fflags, align 8, !dbg !5854
  %5 = load ptr, ptr %rq.addr, align 8, !dbg !5855
  %call = call i32 @blk_flush_policy(i64 noundef %4, ptr noundef %5) #18, !dbg !5856
  store i32 %call, ptr %policy, align 4, !dbg !5853
  call void @llvm.lifetime.start.p0(i64 8, ptr %fq) #17, !dbg !5857
  call void @llvm.dbg.declare(metadata ptr %fq, metadata !5837, metadata !DIExpression()), !dbg !5858
  %6 = load ptr, ptr %q, align 8, !dbg !5859
  %7 = load ptr, ptr %rq.addr, align 8, !dbg !5860
  %mq_ctx = getelementptr inbounds %struct.request, ptr %7, i32 0, i32 1, !dbg !5861
  %8 = load ptr, ptr %mq_ctx, align 8, !dbg !5861
  %call2 = call ptr @blk_get_flush_queue(ptr noundef %6, ptr noundef %8) #18, !dbg !5862
  store ptr %call2, ptr %fq, align 8, !dbg !5858
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !5863
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5838, metadata !DIExpression()), !dbg !5863
  %9 = load ptr, ptr %rq.addr, align 8, !dbg !5863
  %bio = getelementptr inbounds %struct.request, ptr %9, i32 0, i32 10, !dbg !5863
  %10 = load ptr, ptr %bio, align 8, !dbg !5863
  %11 = load ptr, ptr %rq.addr, align 8, !dbg !5863
  %biotail = getelementptr inbounds %struct.request, ptr %11, i32 0, i32 11, !dbg !5863
  %12 = load ptr, ptr %biotail, align 8, !dbg !5863
  %cmp = icmp ne ptr %10, %12, !dbg !5863
  %lnot = xor i1 %cmp, true, !dbg !5863
  %lnot3 = xor i1 %lnot, true, !dbg !5863
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5863
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5863
  %13 = load i32, ptr %__ret_warn_on, align 4, !dbg !5864
  %tobool = icmp ne i32 %13, 0, !dbg !5864
  %lnot4 = xor i1 %tobool, true, !dbg !5864
  %lnot6 = xor i1 %lnot4, true, !dbg !5864
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !5864
  %conv = sext i32 %lnot.ext7 to i64, !dbg !5864
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5864
  %tobool8 = icmp ne i64 %expval, 0, !dbg !5864
  br i1 %tobool8, label %if.then, label %if.end, !dbg !5863

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5864

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !5865
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5840, metadata !DIExpression()), !dbg !5865
  store i32 2307, ptr %__flags, align 4, !dbg !5865
  br label %do.body9, !dbg !5865

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !5866

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !5866

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !5865

do.body10:                                        ; preds = %do.end
  %14 = load i32, ptr %__flags, align 4, !dbg !5868
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 412, i32 %14, i64 12) #17, !dbg !5868, !srcloc !5870
  br label %do.cond11, !dbg !5868

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !5868

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !5865

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !5871

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !5871

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !5864
  br label %do.cond16, !dbg !5865

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !5865

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !5865

if.end:                                           ; preds = %do.end17, %entry
  %15 = load i32, ptr %__ret_warn_on, align 4, !dbg !5863
  %tobool18 = icmp ne i32 %15, 0, !dbg !5863
  %lnot19 = xor i1 %tobool18, true, !dbg !5863
  %lnot21 = xor i1 %lnot19, true, !dbg !5863
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !5863
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !5863
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !5863
  store i64 %expval24, ptr %tmp, align 8, !dbg !5864
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !5873
  %16 = load i64, ptr %tmp, align 8, !dbg !5863
  %17 = load ptr, ptr %rq.addr, align 8, !dbg !5874
  %cmd_flags = getelementptr inbounds %struct.request, ptr %17, i32 0, i32 3, !dbg !5875
  %18 = load i32, ptr %cmd_flags, align 8, !dbg !5876
  %and = and i32 %18, -262145, !dbg !5876
  store i32 %and, ptr %cmd_flags, align 8, !dbg !5876
  %19 = load i64, ptr %fflags, align 8, !dbg !5877
  %and25 = and i64 %19, 262144, !dbg !5879
  %tobool26 = icmp ne i64 %and25, 0, !dbg !5879
  br i1 %tobool26, label %if.end30, label %if.then27, !dbg !5880

if.then27:                                        ; preds = %if.end
  %20 = load ptr, ptr %rq.addr, align 8, !dbg !5881
  %cmd_flags28 = getelementptr inbounds %struct.request, ptr %20, i32 0, i32 3, !dbg !5882
  %21 = load i32, ptr %cmd_flags28, align 8, !dbg !5883
  %and29 = and i32 %21, -131073, !dbg !5883
  store i32 %and29, ptr %cmd_flags28, align 8, !dbg !5883
  br label %if.end30, !dbg !5881

if.end30:                                         ; preds = %if.then27, %if.end
  %22 = load ptr, ptr %rq.addr, align 8, !dbg !5884
  %cmd_flags31 = getelementptr inbounds %struct.request, ptr %22, i32 0, i32 3, !dbg !5885
  %23 = load i32, ptr %cmd_flags31, align 8, !dbg !5886
  %or = or i32 %23, 2048, !dbg !5886
  store i32 %or, ptr %cmd_flags31, align 8, !dbg !5886
  %24 = load i32, ptr %policy, align 4, !dbg !5887
  switch i32 %24, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb32
    i32 6, label %sw.bb33
  ], !dbg !5888

sw.bb:                                            ; preds = %if.end30
  %25 = load ptr, ptr %rq.addr, align 8, !dbg !5889
  call void @blk_mq_end_request(ptr noundef %25, i8 noundef zeroext 0) #18, !dbg !5891
  store i1 true, ptr %retval, align 1, !dbg !5892
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5892

sw.bb32:                                          ; preds = %if.end30
  store i1 false, ptr %retval, align 1, !dbg !5893
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5893

sw.bb33:                                          ; preds = %if.end30
  %26 = load ptr, ptr %rq.addr, align 8, !dbg !5894
  call void @blk_rq_init_flush(ptr noundef %26) #18, !dbg !5895
  %27 = load ptr, ptr %rq.addr, align 8, !dbg !5896
  %flush = getelementptr inbounds %struct.request, ptr %27, i32 0, i32 26, !dbg !5897
  %seq = getelementptr inbounds %struct.anon.17, ptr %flush, i32 0, i32 0, !dbg !5898
  %28 = load i32, ptr %seq, align 8, !dbg !5899
  %or34 = or i32 %28, 1, !dbg !5899
  store i32 %or34, ptr %seq, align 8, !dbg !5899
  %29 = load ptr, ptr %fq, align 8, !dbg !5900
  %mq_flush_lock = getelementptr inbounds %struct.blk_flush_queue, ptr %29, i32 0, i32 0, !dbg !5901
  call void @spin_lock_irq(ptr noundef %mq_flush_lock) #18, !dbg !5902
  %30 = load ptr, ptr %fq, align 8, !dbg !5903
  %flush_data_in_flight = getelementptr inbounds %struct.blk_flush_queue, ptr %30, i32 0, i32 5, !dbg !5904
  %31 = load i64, ptr %flush_data_in_flight, align 8, !dbg !5905
  %inc = add i64 %31, 1, !dbg !5905
  store i64 %inc, ptr %flush_data_in_flight, align 8, !dbg !5905
  %32 = load ptr, ptr %fq, align 8, !dbg !5906
  %mq_flush_lock35 = getelementptr inbounds %struct.blk_flush_queue, ptr %32, i32 0, i32 0, !dbg !5907
  call void @spin_unlock_irq(ptr noundef %mq_flush_lock35) #18, !dbg !5908
  store i1 false, ptr %retval, align 1, !dbg !5909
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5909

sw.default:                                       ; preds = %if.end30
  %33 = load ptr, ptr %rq.addr, align 8, !dbg !5910
  call void @blk_rq_init_flush(ptr noundef %33) #18, !dbg !5911
  %34 = load ptr, ptr %fq, align 8, !dbg !5912
  %mq_flush_lock36 = getelementptr inbounds %struct.blk_flush_queue, ptr %34, i32 0, i32 0, !dbg !5913
  call void @spin_lock_irq(ptr noundef %mq_flush_lock36) #18, !dbg !5914
  %35 = load ptr, ptr %rq.addr, align 8, !dbg !5915
  %36 = load ptr, ptr %fq, align 8, !dbg !5916
  %37 = load i32, ptr %policy, align 4, !dbg !5917
  %not = xor i32 %37, -1, !dbg !5918
  %and37 = and i32 7, %not, !dbg !5919
  call void @blk_flush_complete_seq(ptr noundef %35, ptr noundef %36, i32 noundef %and37, i8 noundef zeroext 0) #18, !dbg !5920
  %38 = load ptr, ptr %fq, align 8, !dbg !5921
  %mq_flush_lock38 = getelementptr inbounds %struct.blk_flush_queue, ptr %38, i32 0, i32 0, !dbg !5922
  call void @spin_unlock_irq(ptr noundef %mq_flush_lock38) #18, !dbg !5923
  store i1 true, ptr %retval, align 1, !dbg !5924
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5924

cleanup:                                          ; preds = %sw.default, %sw.bb33, %sw.bb32, %sw.bb
  call void @llvm.lifetime.end.p0(i64 8, ptr %fq) #17, !dbg !5925
  call void @llvm.lifetime.end.p0(i64 4, ptr %policy) #17, !dbg !5925
  call void @llvm.lifetime.end.p0(i64 8, ptr %fflags) #17, !dbg !5925
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #17, !dbg !5925
  %39 = load i1, ptr %retval, align 1, !dbg !5925
  ret i1 %39, !dbg !5925
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @blk_flush_policy(i64 noundef %fflags, ptr noundef %rq) #0 align 16 !dbg !5926 {
entry:
  %fflags.addr = alloca i64, align 8
  %rq.addr = alloca ptr, align 8
  %policy = alloca i32, align 4
  store i64 %fflags, ptr %fflags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fflags.addr, metadata !5930, metadata !DIExpression()), !dbg !5933
  store ptr %rq, ptr %rq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rq.addr, metadata !5931, metadata !DIExpression()), !dbg !5934
  call void @llvm.lifetime.start.p0(i64 4, ptr %policy) #17, !dbg !5935
  call void @llvm.dbg.declare(metadata ptr %policy, metadata !5932, metadata !DIExpression()), !dbg !5936
  store i32 0, ptr %policy, align 4, !dbg !5936
  %0 = load ptr, ptr %rq.addr, align 8, !dbg !5937
  %call = call i32 @blk_rq_sectors(ptr noundef %0) #18, !dbg !5939
  %tobool = icmp ne i32 %call, 0, !dbg !5939
  br i1 %tobool, label %if.then, label %if.end, !dbg !5940

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %policy, align 4, !dbg !5941
  %or = or i32 %1, 2, !dbg !5941
  store i32 %or, ptr %policy, align 4, !dbg !5941
  br label %if.end, !dbg !5942

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, ptr %fflags.addr, align 8, !dbg !5943
  %and = and i64 %2, 131072, !dbg !5945
  %tobool1 = icmp ne i64 %and, 0, !dbg !5945
  br i1 %tobool1, label %if.then2, label %if.end16, !dbg !5946

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %rq.addr, align 8, !dbg !5947
  %cmd_flags = getelementptr inbounds %struct.request, ptr %3, i32 0, i32 3, !dbg !5950
  %4 = load i32, ptr %cmd_flags, align 8, !dbg !5950
  %and3 = and i32 %4, 262144, !dbg !5951
  %tobool4 = icmp ne i32 %and3, 0, !dbg !5951
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !5952

if.then5:                                         ; preds = %if.then2
  %5 = load i32, ptr %policy, align 4, !dbg !5953
  %or6 = or i32 %5, 1, !dbg !5953
  store i32 %or6, ptr %policy, align 4, !dbg !5953
  br label %if.end7, !dbg !5954

if.end7:                                          ; preds = %if.then5, %if.then2
  %6 = load i64, ptr %fflags.addr, align 8, !dbg !5955
  %and8 = and i64 %6, 262144, !dbg !5957
  %tobool9 = icmp ne i64 %and8, 0, !dbg !5957
  br i1 %tobool9, label %if.end15, label %land.lhs.true, !dbg !5958

land.lhs.true:                                    ; preds = %if.end7
  %7 = load ptr, ptr %rq.addr, align 8, !dbg !5959
  %cmd_flags10 = getelementptr inbounds %struct.request, ptr %7, i32 0, i32 3, !dbg !5960
  %8 = load i32, ptr %cmd_flags10, align 8, !dbg !5960
  %and11 = and i32 %8, 131072, !dbg !5961
  %tobool12 = icmp ne i32 %and11, 0, !dbg !5961
  br i1 %tobool12, label %if.then13, label %if.end15, !dbg !5962

if.then13:                                        ; preds = %land.lhs.true
  %9 = load i32, ptr %policy, align 4, !dbg !5963
  %or14 = or i32 %9, 4, !dbg !5963
  store i32 %or14, ptr %policy, align 4, !dbg !5963
  br label %if.end15, !dbg !5964

if.end15:                                         ; preds = %if.then13, %land.lhs.true, %if.end7
  br label %if.end16, !dbg !5965

if.end16:                                         ; preds = %if.end15, %if.end
  %10 = load i32, ptr %policy, align 4, !dbg !5966
  call void @llvm.lifetime.end.p0(i64 4, ptr %policy) #17, !dbg !5967
  ret i32 %10, !dbg !5968
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @blk_get_flush_queue(ptr noundef %q, ptr noundef %ctx) #3 align 16 !dbg !5969 {
entry:
  %q.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !5973, metadata !DIExpression()), !dbg !5975
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !5974, metadata !DIExpression()), !dbg !5976
  %0 = load ptr, ptr %q.addr, align 8, !dbg !5977
  %1 = load ptr, ptr %ctx.addr, align 8, !dbg !5978
  %call = call ptr @blk_mq_map_queue(ptr noundef %0, i32 noundef 2, ptr noundef %1) #18, !dbg !5979
  %fq = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %call, i32 0, i32 8, !dbg !5980
  %2 = load ptr, ptr %fq, align 64, !dbg !5980
  ret ptr %2, !dbg !5981
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5982 dso_local void @blk_mq_end_request(ptr noundef, i8 noundef zeroext) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @blk_rq_init_flush(ptr noundef %rq) #0 align 16 !dbg !5985 {
entry:
  %rq.addr = alloca ptr, align 8
  store ptr %rq, ptr %rq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rq.addr, metadata !5987, metadata !DIExpression()), !dbg !5988
  %0 = load ptr, ptr %rq.addr, align 8, !dbg !5989
  %flush = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 26, !dbg !5990
  %seq = getelementptr inbounds %struct.anon.17, ptr %flush, i32 0, i32 0, !dbg !5991
  store i32 0, ptr %seq, align 8, !dbg !5992
  %1 = load ptr, ptr %rq.addr, align 8, !dbg !5993
  %rq_flags = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 4, !dbg !5994
  %2 = load i32, ptr %rq_flags, align 4, !dbg !5995
  %or = or i32 %2, 16, !dbg !5995
  store i32 %or, ptr %rq_flags, align 4, !dbg !5995
  %3 = load ptr, ptr %rq.addr, align 8, !dbg !5996
  %end_io = getelementptr inbounds %struct.request, ptr %3, i32 0, i32 28, !dbg !5997
  %4 = load ptr, ptr %end_io, align 8, !dbg !5997
  %5 = load ptr, ptr %rq.addr, align 8, !dbg !5998
  %flush1 = getelementptr inbounds %struct.request, ptr %5, i32 0, i32 26, !dbg !5999
  %saved_end_io = getelementptr inbounds %struct.anon.17, ptr %flush1, i32 0, i32 1, !dbg !6000
  store ptr %4, ptr %saved_end_io, align 8, !dbg !6001
  %6 = load ptr, ptr %rq.addr, align 8, !dbg !6002
  %end_io2 = getelementptr inbounds %struct.request, ptr %6, i32 0, i32 28, !dbg !6003
  store ptr @mq_flush_data_end_io, ptr %end_io2, align 8, !dbg !6004
  ret void, !dbg !6005
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_irq(ptr noundef %lock) #6 align 16 !dbg !6006 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6011, metadata !DIExpression()), !dbg !6012
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6013
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6013
  call void @_raw_spin_lock_irq(ptr noundef %1) #18, !dbg !6013
  ret void, !dbg !6014
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irq(ptr noundef %lock) #6 align 16 !dbg !6015 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6017, metadata !DIExpression()), !dbg !6018
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6019
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6019
  call void @_raw_spin_unlock_irq(ptr noundef %1) #18, !dbg !6019
  ret void, !dbg !6020
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @blk_flush_complete_seq(ptr noundef %rq, ptr noundef %fq, i32 noundef %seq, i8 noundef zeroext %error) #0 align 16 !dbg !6021 {
entry:
  %rq.addr = alloca ptr, align 8
  %fq.addr = alloca ptr, align 8
  %seq.addr = alloca i32, align 4
  %error.addr = alloca i8, align 1
  %q = alloca ptr, align 8
  %pending = alloca ptr, align 8
  %cmd_flags = alloca i32, align 4
  store ptr %rq, ptr %rq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rq.addr, metadata !6025, metadata !DIExpression()), !dbg !6032
  store ptr %fq, ptr %fq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fq.addr, metadata !6026, metadata !DIExpression()), !dbg !6033
  store i32 %seq, ptr %seq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !6027, metadata !DIExpression()), !dbg !6034
  store i8 %error, ptr %error.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !6028, metadata !DIExpression()), !dbg !6035
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #17, !dbg !6036
  call void @llvm.dbg.declare(metadata ptr %q, metadata !6029, metadata !DIExpression()), !dbg !6037
  %0 = load ptr, ptr %rq.addr, align 8, !dbg !6038
  %q1 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 0, !dbg !6039
  %1 = load ptr, ptr %q1, align 8, !dbg !6039
  store ptr %1, ptr %q, align 8, !dbg !6037
  call void @llvm.lifetime.start.p0(i64 8, ptr %pending) #17, !dbg !6040
  call void @llvm.dbg.declare(metadata ptr %pending, metadata !6030, metadata !DIExpression()), !dbg !6041
  %2 = load ptr, ptr %fq.addr, align 8, !dbg !6042
  %flush_queue = getelementptr inbounds %struct.blk_flush_queue, ptr %2, i32 0, i32 4, !dbg !6043
  %3 = load ptr, ptr %fq.addr, align 8, !dbg !6044
  %flush_pending_idx = getelementptr inbounds %struct.blk_flush_queue, ptr %3, i32 0, i32 1, !dbg !6045
  %bf.load = load i8, ptr %flush_pending_idx, align 4, !dbg !6045
  %bf.clear = and i8 %bf.load, 1, !dbg !6045
  %bf.cast = zext i8 %bf.clear to i32, !dbg !6045
  %idxprom = zext i32 %bf.cast to i64, !dbg !6042
  %arrayidx = getelementptr [2 x %struct.list_head], ptr %flush_queue, i64 0, i64 %idxprom, !dbg !6042
  store ptr %arrayidx, ptr %pending, align 8, !dbg !6041
  call void @llvm.lifetime.start.p0(i64 4, ptr %cmd_flags) #17, !dbg !6046
  call void @llvm.dbg.declare(metadata ptr %cmd_flags, metadata !6031, metadata !DIExpression()), !dbg !6047
  br label %do.body, !dbg !6048

do.body:                                          ; preds = %entry
  %4 = load ptr, ptr %rq.addr, align 8, !dbg !6049
  %flush = getelementptr inbounds %struct.request, ptr %4, i32 0, i32 26, !dbg !6049
  %seq2 = getelementptr inbounds %struct.anon.17, ptr %flush, i32 0, i32 0, !dbg !6049
  %5 = load i32, ptr %seq2, align 8, !dbg !6049
  %6 = load i32, ptr %seq.addr, align 4, !dbg !6049
  %and = and i32 %5, %6, !dbg !6049
  %tobool = icmp ne i32 %and, 0, !dbg !6049
  %lnot = xor i1 %tobool, true, !dbg !6049
  %lnot3 = xor i1 %lnot, true, !dbg !6049
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6049
  %conv = sext i32 %lnot.ext to i64, !dbg !6049
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6049
  %tobool4 = icmp ne i64 %expval, 0, !dbg !6049
  br i1 %tobool4, label %if.then, label %if.end, !dbg !6052

if.then:                                          ; preds = %do.body
  br label %do.body5, !dbg !6049

do.body5:                                         ; preds = %if.then
  br label %do.body6, !dbg !6053

do.body6:                                         ; preds = %do.body5
  br label %do.cond, !dbg !6055

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !6055

do.end:                                           ; preds = %do.cond
  br label %do.body7, !dbg !6053

do.body7:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 171, i32 0, i64 12) #17, !dbg !6057, !srcloc !6059
  br label %do.cond8, !dbg !6057

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !6057

do.end9:                                          ; preds = %do.cond8
  unreachable, !dbg !6053

do.cond10:                                        ; No predecessors!
  br label %do.end11, !dbg !6053

do.end11:                                         ; preds = %do.cond10
  br label %if.end, !dbg !6053

if.end:                                           ; preds = %do.end11, %do.body
  br label %do.cond12, !dbg !6052

do.cond12:                                        ; preds = %if.end
  br label %do.end13, !dbg !6052

do.end13:                                         ; preds = %do.cond12
  %7 = load i32, ptr %seq.addr, align 4, !dbg !6060
  %8 = load ptr, ptr %rq.addr, align 8, !dbg !6061
  %flush14 = getelementptr inbounds %struct.request, ptr %8, i32 0, i32 26, !dbg !6062
  %seq15 = getelementptr inbounds %struct.anon.17, ptr %flush14, i32 0, i32 0, !dbg !6063
  %9 = load i32, ptr %seq15, align 8, !dbg !6064
  %or = or i32 %9, %7, !dbg !6064
  store i32 %or, ptr %seq15, align 8, !dbg !6064
  %10 = load ptr, ptr %rq.addr, align 8, !dbg !6065
  %cmd_flags16 = getelementptr inbounds %struct.request, ptr %10, i32 0, i32 3, !dbg !6066
  %11 = load i32, ptr %cmd_flags16, align 8, !dbg !6066
  store i32 %11, ptr %cmd_flags, align 4, !dbg !6067
  %12 = load i8, ptr %error.addr, align 1, !dbg !6068
  %tobool17 = icmp ne i8 %12, 0, !dbg !6068
  %lnot18 = xor i1 %tobool17, true, !dbg !6068
  %lnot20 = xor i1 %lnot18, true, !dbg !6068
  %lnot22 = xor i1 %lnot20, true, !dbg !6068
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !6068
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !6068
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 1), !dbg !6068
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !6068
  br i1 %tobool26, label %if.then27, label %if.else, !dbg !6070

if.then27:                                        ; preds = %do.end13
  %13 = load ptr, ptr %rq.addr, align 8, !dbg !6071
  %call = call i32 @blk_flush_cur_seq(ptr noundef %13) #18, !dbg !6072
  store i32 %call, ptr %seq.addr, align 4, !dbg !6073
  br label %if.end28, !dbg !6074

if.else:                                          ; preds = %do.end13
  store i32 8, ptr %seq.addr, align 4, !dbg !6075
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then27
  %14 = load i32, ptr %seq.addr, align 4, !dbg !6076
  switch i32 %14, label %sw.default [
    i32 1, label %sw.bb
    i32 4, label %sw.bb
    i32 2, label %sw.bb33
    i32 8, label %sw.bb35
  ], !dbg !6077

sw.bb:                                            ; preds = %if.end28, %if.end28
  %15 = load ptr, ptr %pending, align 8, !dbg !6078
  %call29 = call i32 @list_empty(ptr noundef %15) #18, !dbg !6081
  %tobool30 = icmp ne i32 %call29, 0, !dbg !6081
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !6082

if.then31:                                        ; preds = %sw.bb
  %16 = load volatile i64, ptr @jiffies, align 64, !dbg !6083
  %17 = load ptr, ptr %fq.addr, align 8, !dbg !6084
  %flush_pending_since = getelementptr inbounds %struct.blk_flush_queue, ptr %17, i32 0, i32 3, !dbg !6085
  store i64 %16, ptr %flush_pending_since, align 8, !dbg !6086
  br label %if.end32, !dbg !6084

if.end32:                                         ; preds = %if.then31, %sw.bb
  %18 = load ptr, ptr %rq.addr, align 8, !dbg !6087
  %19 = getelementptr inbounds %struct.request, ptr %18, i32 0, i32 12, !dbg !6088
  %20 = load ptr, ptr %pending, align 8, !dbg !6089
  call void @list_add_tail(ptr noundef %19, ptr noundef %20) #18, !dbg !6090
  br label %sw.epilog, !dbg !6091

sw.bb33:                                          ; preds = %if.end28
  %21 = load ptr, ptr %fq.addr, align 8, !dbg !6092
  %flush_data_in_flight = getelementptr inbounds %struct.blk_flush_queue, ptr %21, i32 0, i32 5, !dbg !6093
  %22 = load i64, ptr %flush_data_in_flight, align 8, !dbg !6094
  %inc = add i64 %22, 1, !dbg !6094
  store i64 %inc, ptr %flush_data_in_flight, align 8, !dbg !6094
  %23 = load ptr, ptr %q, align 8, !dbg !6095
  %requeue_lock = getelementptr inbounds %struct.request_queue, ptr %23, i32 0, i32 40, !dbg !6096
  call void @spin_lock(ptr noundef %requeue_lock) #18, !dbg !6097
  %24 = load ptr, ptr %rq.addr, align 8, !dbg !6098
  %25 = getelementptr inbounds %struct.request, ptr %24, i32 0, i32 12, !dbg !6099
  %26 = load ptr, ptr %q, align 8, !dbg !6100
  %requeue_list = getelementptr inbounds %struct.request_queue, ptr %26, i32 0, i32 39, !dbg !6101
  call void @list_move(ptr noundef %25, ptr noundef %requeue_list) #18, !dbg !6102
  %27 = load ptr, ptr %q, align 8, !dbg !6103
  %requeue_lock34 = getelementptr inbounds %struct.request_queue, ptr %27, i32 0, i32 40, !dbg !6104
  call void @spin_unlock(ptr noundef %requeue_lock34) #18, !dbg !6105
  %28 = load ptr, ptr %q, align 8, !dbg !6106
  call void @blk_mq_kick_requeue_list(ptr noundef %28) #18, !dbg !6107
  br label %sw.epilog, !dbg !6108

sw.bb35:                                          ; preds = %if.end28
  %29 = load ptr, ptr %rq.addr, align 8, !dbg !6109
  %30 = getelementptr inbounds %struct.request, ptr %29, i32 0, i32 12, !dbg !6110
  call void @list_del_init(ptr noundef %30) #18, !dbg !6111
  %31 = load ptr, ptr %rq.addr, align 8, !dbg !6112
  call void @blk_flush_restore_request(ptr noundef %31) #18, !dbg !6113
  %32 = load ptr, ptr %rq.addr, align 8, !dbg !6114
  %33 = load i8, ptr %error.addr, align 1, !dbg !6115
  call void @blk_mq_end_request(ptr noundef %32, i8 noundef zeroext %33) #18, !dbg !6116
  br label %sw.epilog, !dbg !6117

sw.default:                                       ; preds = %if.end28
  br label %do.body36, !dbg !6118

do.body36:                                        ; preds = %sw.default
  br label %do.body37, !dbg !6119

do.body37:                                        ; preds = %do.body36
  br label %do.cond38, !dbg !6121

do.cond38:                                        ; preds = %do.body37
  br label %do.end39, !dbg !6121

do.end39:                                         ; preds = %do.cond38
  br label %do.body40, !dbg !6119

do.body40:                                        ; preds = %do.end39
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 210, i32 0, i64 12) #17, !dbg !6123, !srcloc !6125
  br label %do.cond41, !dbg !6123

do.cond41:                                        ; preds = %do.body40
  br label %do.end42, !dbg !6123

do.end42:                                         ; preds = %do.cond41
  unreachable, !dbg !6119

do.cond43:                                        ; No predecessors!
  br label %do.end44, !dbg !6119

do.end44:                                         ; preds = %do.cond43
  br label %sw.epilog, !dbg !6126

sw.epilog:                                        ; preds = %do.end44, %sw.bb35, %sw.bb33, %if.end32
  %34 = load ptr, ptr %q, align 8, !dbg !6127
  %35 = load ptr, ptr %fq.addr, align 8, !dbg !6128
  %36 = load i32, ptr %cmd_flags, align 4, !dbg !6129
  call void @blk_kick_flush(ptr noundef %34, ptr noundef %35, i32 noundef %36) #18, !dbg !6130
  call void @llvm.lifetime.end.p0(i64 4, ptr %cmd_flags) #17, !dbg !6131
  call void @llvm.lifetime.end.p0(i64 8, ptr %pending) #17, !dbg !6131
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #17, !dbg !6131
  ret void, !dbg !6131
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @blkdev_issue_flush(ptr noundef %bdev) #0 align 16 !dbg !6132 {
entry:
  %bdev.addr = alloca ptr, align 8
  %bio = alloca %struct.bio, align 8
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !6136, metadata !DIExpression()), !dbg !6138
  call void @llvm.lifetime.start.p0(i64 120, ptr %bio) #17, !dbg !6139
  call void @llvm.dbg.declare(metadata ptr %bio, metadata !6137, metadata !DIExpression()), !dbg !6140
  %0 = load ptr, ptr %bdev.addr, align 8, !dbg !6141
  call void @bio_init(ptr noundef %bio, ptr noundef %0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 262145) #18, !dbg !6142
  %call = call i32 @submit_bio_wait(ptr noundef %bio) #18, !dbg !6143
  call void @llvm.lifetime.end.p0(i64 120, ptr %bio) #17, !dbg !6144
  ret i32 %call, !dbg !6145
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6146 dso_local void @bio_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6149 dso_local i32 @submit_bio_wait(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @blk_alloc_flush_queue(i32 noundef %node, i32 noundef %cmd_size, i32 noundef %flags) #0 align 16 !dbg !6152 {
entry:
  %retval = alloca ptr, align 8
  %node.addr = alloca i32, align 4
  %cmd_size.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %fq = alloca ptr, align 8
  %rq_sz = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !6156, metadata !DIExpression()), !dbg !6163
  store i32 %cmd_size, ptr %cmd_size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd_size.addr, metadata !6157, metadata !DIExpression()), !dbg !6164
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6158, metadata !DIExpression()), !dbg !6165
  call void @llvm.lifetime.start.p0(i64 8, ptr %fq) #17, !dbg !6166
  call void @llvm.dbg.declare(metadata ptr %fq, metadata !6159, metadata !DIExpression()), !dbg !6167
  call void @llvm.lifetime.start.p0(i64 4, ptr %rq_sz) #17, !dbg !6168
  call void @llvm.dbg.declare(metadata ptr %rq_sz, metadata !6160, metadata !DIExpression()), !dbg !6169
  store i32 248, ptr %rq_sz, align 4, !dbg !6169
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6170
  %1 = load i32, ptr %node.addr, align 4, !dbg !6171
  %call = call noalias ptr @kzalloc_node(i64 noundef 64, i32 noundef %0, i32 noundef %1) #19, !dbg !6172
  store ptr %call, ptr %fq, align 8, !dbg !6173
  %2 = load ptr, ptr %fq, align 8, !dbg !6174
  %tobool = icmp ne ptr %2, null, !dbg !6174
  br i1 %tobool, label %if.end, label %if.then, !dbg !6176

if.then:                                          ; preds = %entry
  br label %fail, !dbg !6177

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !6178

do.body:                                          ; preds = %if.end
  %3 = load ptr, ptr %fq, align 8, !dbg !6179
  %mq_flush_lock = getelementptr inbounds %struct.blk_flush_queue, ptr %3, i32 0, i32 0, !dbg !6179
  %call1 = call ptr @spinlock_check(ptr noundef %mq_flush_lock) #18, !dbg !6179
  %4 = load ptr, ptr %fq, align 8, !dbg !6179
  %mq_flush_lock2 = getelementptr inbounds %struct.blk_flush_queue, ptr %4, i32 0, i32 0, !dbg !6179
  %5 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !6179
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %5, i32 0, i32 0, !dbg !6179
  %6 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !6179
  %counter = getelementptr inbounds %struct.atomic_t, ptr %6, i32 0, i32 0, !dbg !6179
  store i32 0, ptr %counter, align 4, !dbg !6179
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %mq_flush_lock2, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !6179
  br label %do.cond, !dbg !6179

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6179

do.end:                                           ; preds = %do.cond
  %7 = load i32, ptr %rq_sz, align 4, !dbg !6181
  %8 = load i32, ptr %cmd_size.addr, align 4, !dbg !6181
  %add = add i32 %7, %8, !dbg !6181
  %sub = sub i32 %add, 1, !dbg !6181
  %9 = load i32, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 14), align 4, !dbg !6181
  %sub3 = sub i32 %9, 1, !dbg !6181
  %or = or i32 %sub, %sub3, !dbg !6181
  %add4 = add i32 %or, 1, !dbg !6181
  store i32 %add4, ptr %rq_sz, align 4, !dbg !6182
  %10 = load i32, ptr %rq_sz, align 4, !dbg !6183
  %conv = sext i32 %10 to i64, !dbg !6183
  %11 = load i32, ptr %flags.addr, align 4, !dbg !6184
  %12 = load i32, ptr %node.addr, align 4, !dbg !6185
  %call5 = call noalias ptr @kzalloc_node(i64 noundef %conv, i32 noundef %11, i32 noundef %12) #19, !dbg !6186
  %13 = load ptr, ptr %fq, align 8, !dbg !6187
  %flush_rq = getelementptr inbounds %struct.blk_flush_queue, ptr %13, i32 0, i32 6, !dbg !6188
  store ptr %call5, ptr %flush_rq, align 8, !dbg !6189
  %14 = load ptr, ptr %fq, align 8, !dbg !6190
  %flush_rq6 = getelementptr inbounds %struct.blk_flush_queue, ptr %14, i32 0, i32 6, !dbg !6192
  %15 = load ptr, ptr %flush_rq6, align 8, !dbg !6192
  %tobool7 = icmp ne ptr %15, null, !dbg !6190
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !6193

if.then8:                                         ; preds = %do.end
  br label %fail_rq, !dbg !6194

if.end9:                                          ; preds = %do.end
  %16 = load ptr, ptr %fq, align 8, !dbg !6195
  %flush_queue = getelementptr inbounds %struct.blk_flush_queue, ptr %16, i32 0, i32 4, !dbg !6196
  %arrayidx = getelementptr [2 x %struct.list_head], ptr %flush_queue, i64 0, i64 0, !dbg !6195
  call void @INIT_LIST_HEAD(ptr noundef %arrayidx) #18, !dbg !6197
  %17 = load ptr, ptr %fq, align 8, !dbg !6198
  %flush_queue10 = getelementptr inbounds %struct.blk_flush_queue, ptr %17, i32 0, i32 4, !dbg !6199
  %arrayidx11 = getelementptr [2 x %struct.list_head], ptr %flush_queue10, i64 0, i64 1, !dbg !6198
  call void @INIT_LIST_HEAD(ptr noundef %arrayidx11) #18, !dbg !6200
  %18 = load ptr, ptr %fq, align 8, !dbg !6201
  store ptr %18, ptr %retval, align 8, !dbg !6202
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6202

fail_rq:                                          ; preds = %if.then8
  call void @llvm.dbg.label(metadata !6161), !dbg !6203
  %19 = load ptr, ptr %fq, align 8, !dbg !6204
  call void @kfree(ptr noundef %19) #18, !dbg !6205
  br label %fail, !dbg !6205

fail:                                             ; preds = %fail_rq, %if.then
  call void @llvm.dbg.label(metadata !6162), !dbg !6206
  store ptr null, ptr %retval, align 8, !dbg !6207
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6207

cleanup:                                          ; preds = %fail, %if.end9
  call void @llvm.lifetime.end.p0(i64 4, ptr %rq_sz) #17, !dbg !6208
  call void @llvm.lifetime.end.p0(i64 8, ptr %fq) #17, !dbg !6208
  %20 = load ptr, ptr %retval, align 8, !dbg !6208
  ret ptr %20, !dbg !6208
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc_node(i64 noundef %size, i32 noundef %flags, i32 noundef %node) #7 align 16 !dbg !6209 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %node.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6213, metadata !DIExpression()), !dbg !6216
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6214, metadata !DIExpression()), !dbg !6217
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !6215, metadata !DIExpression()), !dbg !6218
  %0 = load i64, ptr %size.addr, align 8, !dbg !6219
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6220
  %or = or i32 %1, 256, !dbg !6221
  %2 = load i32, ptr %node.addr, align 4, !dbg !6222
  %call = call noalias ptr @kmalloc_node(i64 noundef %0, i32 noundef %or, i32 noundef %2) #19, !dbg !6223
  ret ptr %call, !dbg !6224
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #6 align 16 !dbg !6225 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6230, metadata !DIExpression()), !dbg !6231
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6232
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6233
  ret ptr %1, !dbg !6234
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #3 align 16 !dbg !6235 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !6240, metadata !DIExpression()), !dbg !6241
  br label %do.body, !dbg !6242

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6243

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6245

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6243

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !6247
  %1 = load ptr, ptr %list.addr, align 8, !dbg !6247
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !6247
  store volatile ptr %0, ptr %next, align 8, !dbg !6247
  br label %do.end3, !dbg !6247

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !6243

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !6249

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !6250

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !6252

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !6250

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !6254
  %3 = load ptr, ptr %list.addr, align 8, !dbg !6254
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !6254
  store volatile ptr %2, ptr %prev, align 8, !dbg !6254
  br label %do.end9, !dbg !6254

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !6250

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !6256
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6257 dso_local void @kfree(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @blk_free_flush_queue(ptr noundef %fq) #0 align 16 !dbg !6260 {
entry:
  %fq.addr = alloca ptr, align 8
  store ptr %fq, ptr %fq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fq.addr, metadata !6264, metadata !DIExpression()), !dbg !6265
  %0 = load ptr, ptr %fq.addr, align 8, !dbg !6266
  %tobool = icmp ne ptr %0, null, !dbg !6266
  br i1 %tobool, label %if.end, label %if.then, !dbg !6268

if.then:                                          ; preds = %entry
  br label %return, !dbg !6269

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %fq.addr, align 8, !dbg !6270
  %flush_rq = getelementptr inbounds %struct.blk_flush_queue, ptr %1, i32 0, i32 6, !dbg !6271
  %2 = load ptr, ptr %flush_rq, align 8, !dbg !6271
  call void @kfree(ptr noundef %2) #18, !dbg !6272
  %3 = load ptr, ptr %fq.addr, align 8, !dbg !6273
  call void @kfree(ptr noundef %3) #18, !dbg !6274
  br label %return, !dbg !6275

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6275
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @blk_mq_hctx_set_fq_lock_class(ptr noundef %hctx, ptr noundef %key) #0 align 16 !dbg !6276 {
entry:
  %hctx.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  store ptr %hctx, ptr %hctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hctx.addr, metadata !6281, metadata !DIExpression()), !dbg !6283
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6282, metadata !DIExpression()), !dbg !6284
  br label %do.body, !dbg !6285

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %key.addr, align 8, !dbg !6286
  br label %do.end, !dbg !6286

do.end:                                           ; preds = %do.body
  ret void, !dbg !6288
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6289 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @req_ref_put_and_test(ptr noundef %req) #3 align 16 !dbg !6293 {
entry:
  %req.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6295, metadata !DIExpression()), !dbg !6301
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !6302
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6296, metadata !DIExpression()), !dbg !6302
  %0 = load ptr, ptr %req.addr, align 8, !dbg !6302
  %ref = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 21, !dbg !6302
  %call = call i32 @atomic_read(ptr noundef %ref) #18, !dbg !6302
  %add = add i32 %call, 127, !dbg !6302
  %cmp = icmp ule i32 %add, 127, !dbg !6302
  %lnot = xor i1 %cmp, true, !dbg !6302
  %lnot1 = xor i1 %lnot, true, !dbg !6302
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6302
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6302
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !6303
  %tobool = icmp ne i32 %1, 0, !dbg !6303
  %lnot2 = xor i1 %tobool, true, !dbg !6303
  %lnot4 = xor i1 %lnot2, true, !dbg !6303
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !6303
  %conv = sext i32 %lnot.ext5 to i64, !dbg !6303
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6303
  %tobool6 = icmp ne i64 %expval, 0, !dbg !6303
  br i1 %tobool6, label %if.then, label %if.end, !dbg !6302

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6303

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !6304
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6298, metadata !DIExpression()), !dbg !6304
  store i32 2307, ptr %__flags, align 4, !dbg !6304
  br label %do.body7, !dbg !6304

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !6305

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !6305

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !6304

do.body8:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !6307
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 508, i32 %2, i64 12) #17, !dbg !6307, !srcloc !6309
  br label %do.cond9, !dbg !6307

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !6307

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !6304

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !6310

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !6310

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !6303
  br label %do.cond14, !dbg !6304

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !6304

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !6304

if.end:                                           ; preds = %do.end15, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !6302
  %tobool16 = icmp ne i32 %3, 0, !dbg !6302
  %lnot17 = xor i1 %tobool16, true, !dbg !6302
  %lnot19 = xor i1 %lnot17, true, !dbg !6302
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !6302
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !6302
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !6302
  store i64 %expval22, ptr %tmp, align 8, !dbg !6303
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !6312
  %4 = load i64, ptr %tmp, align 8, !dbg !6302
  %5 = load ptr, ptr %req.addr, align 8, !dbg !6313
  %ref23 = getelementptr inbounds %struct.request, ptr %5, i32 0, i32 21, !dbg !6314
  %call24 = call zeroext i1 @atomic_dec_and_test(ptr noundef %ref23) #18, !dbg !6315
  ret i1 %call24, !dbg !6316
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #6 align 16 !dbg !6317 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6321, metadata !DIExpression()), !dbg !6327
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6322, metadata !DIExpression()), !dbg !6328
  br label %do.body, !dbg !6329

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #17, !dbg !6330
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6323, metadata !DIExpression()), !dbg !6330
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #17, !dbg !6330
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6326, metadata !DIExpression()), !dbg !6330
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6330
  %conv = zext i1 %cmp to i32, !dbg !6330
  store i32 1, ptr %tmp, align 4, !dbg !6330
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #17, !dbg !6331
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #17, !dbg !6331
  %0 = load i32, ptr %tmp, align 4, !dbg !6330
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !6331
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !6331
  %3 = load i64, ptr %flags.addr, align 8, !dbg !6331
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #18, !dbg !6331
  br label %do.end, !dbg !6331

do.end:                                           ; preds = %do.body
  ret void, !dbg !6332
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @blk_account_io_flush(ptr noundef %rq) #0 align 16 !dbg !5605 {
entry:
  %rq.addr = alloca ptr, align 8
  %part = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pao_ID__ = alloca i32, align 4
  %__vpp_verify13 = alloca ptr, align 8
  %pao_ID__17 = alloca i32, align 4
  %__vpp_verify31 = alloca ptr, align 8
  %pao_ID__35 = alloca i32, align 4
  %pto_val__ = alloca i64, align 8
  %__vpp_verify50 = alloca ptr, align 8
  %pao_ID__54 = alloca i32, align 4
  %pto_val__56 = alloca i64, align 8
  store ptr %rq, ptr %rq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rq.addr, metadata !5607, metadata !DIExpression()), !dbg !6333
  call void @llvm.lifetime.start.p0(i64 8, ptr %part) #17, !dbg !6334
  call void @llvm.dbg.declare(metadata ptr %part, metadata !5608, metadata !DIExpression()), !dbg !6335
  %0 = load ptr, ptr %rq.addr, align 8, !dbg !6336
  %q = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 0, !dbg !6337
  %1 = load ptr, ptr %q, align 8, !dbg !6337
  %disk = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 16, !dbg !6338
  %2 = load ptr, ptr %disk, align 8, !dbg !6338
  %part0 = getelementptr inbounds %struct.gendisk, ptr %2, i32 0, i32 7, !dbg !6339
  %3 = load ptr, ptr %part0, align 8, !dbg !6339
  store ptr %3, ptr %part, align 8, !dbg !6335
  br label %do.body, !dbg !6340

do.body:                                          ; preds = %entry
  call void @__preempt_count_add(i32 noundef 1) #18, !dbg !6341
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !6341, !srcloc !6343
  br label %do.cond, !dbg !6341

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6341

do.end:                                           ; preds = %do.cond
  br label %do.body1, !dbg !6344

do.body1:                                         ; preds = %do.end
  call void @__this_cpu_preempt_check(ptr noundef @.str.2) #18, !dbg !6345
  br label %do.body2, !dbg !6345

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !6346

do.body3:                                         ; preds = %do.body2
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #17, !dbg !6347
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5609, metadata !DIExpression()), !dbg !6347
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6347
  %4 = load ptr, ptr %__vpp_verify, align 8, !dbg !6347
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #17, !dbg !6346
  br label %do.cond4, !dbg !6347

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !6347

do.end5:                                          ; preds = %do.cond4
  br label %do.body6, !dbg !6346

do.body6:                                         ; preds = %do.end5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #17, !dbg !6348
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !5614, metadata !DIExpression()), !dbg !6348
  store i32 1, ptr %pao_ID__, align 4, !dbg !6348
  %5 = load ptr, ptr %part, align 8, !dbg !6349
  %bd_stats = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 4, !dbg !6349
  %6 = load ptr, ptr %bd_stats, align 8, !dbg !6349
  %ios = getelementptr inbounds %struct.disk_stats, ptr %6, i32 0, i32 2, !dbg !6349
  %arrayidx = getelementptr [4 x i64], ptr %ios, i64 0, i64 3, !dbg !6349
  call void asm "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %arrayidx, ptr elementtype(i64) %arrayidx) #17, !dbg !6349, !srcloc !6352
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #17, !dbg !6346
  br label %do.cond7, !dbg !6348

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !6348

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !6346

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !6346

do.end10:                                         ; preds = %do.cond9
  %7 = load ptr, ptr %part, align 8, !dbg !6353
  %bd_partno = getelementptr inbounds %struct.block_device, ptr %7, i32 0, i32 7, !dbg !6353
  %8 = load i8, ptr %bd_partno, align 1, !dbg !6353
  %tobool = icmp ne i8 %8, 0, !dbg !6353
  br i1 %tobool, label %if.then, label %if.end, !dbg !6354

if.then:                                          ; preds = %do.end10
  call void @__this_cpu_preempt_check(ptr noundef @.str.2) #18, !dbg !6355
  br label %do.body11, !dbg !6355

do.body11:                                        ; preds = %if.then
  br label %do.body12, !dbg !6356

do.body12:                                        ; preds = %do.body11
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify13) #17, !dbg !6357
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify13, metadata !5616, metadata !DIExpression()), !dbg !6357
  store ptr null, ptr %__vpp_verify13, align 8, !dbg !6357
  %9 = load ptr, ptr %__vpp_verify13, align 8, !dbg !6357
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify13) #17, !dbg !6356
  br label %do.cond14, !dbg !6357

do.cond14:                                        ; preds = %do.body12
  br label %do.end15, !dbg !6357

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !6356

do.body16:                                        ; preds = %do.end15
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__17) #17, !dbg !6358
  call void @llvm.dbg.declare(metadata ptr %pao_ID__17, metadata !5621, metadata !DIExpression()), !dbg !6358
  store i32 1, ptr %pao_ID__17, align 4, !dbg !6358
  %10 = load ptr, ptr %part, align 8, !dbg !6359
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %10, i32 0, i32 2, !dbg !6359
  %11 = load ptr, ptr %bd_disk, align 8, !dbg !6359
  %part018 = getelementptr inbounds %struct.gendisk, ptr %11, i32 0, i32 7, !dbg !6359
  %12 = load ptr, ptr %part018, align 8, !dbg !6359
  %bd_stats19 = getelementptr inbounds %struct.block_device, ptr %12, i32 0, i32 4, !dbg !6359
  %13 = load ptr, ptr %bd_stats19, align 8, !dbg !6359
  %ios20 = getelementptr inbounds %struct.disk_stats, ptr %13, i32 0, i32 2, !dbg !6359
  %arrayidx21 = getelementptr [4 x i64], ptr %ios20, i64 0, i64 3, !dbg !6359
  call void asm "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %arrayidx21, ptr elementtype(i64) %arrayidx21) #17, !dbg !6359, !srcloc !6362
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__17) #17, !dbg !6356
  br label %do.cond22, !dbg !6358

do.cond22:                                        ; preds = %do.body16
  br label %do.end23, !dbg !6358

do.end23:                                         ; preds = %do.cond22
  br label %do.cond24, !dbg !6356

do.cond24:                                        ; preds = %do.end23
  br label %do.end25, !dbg !6356

do.end25:                                         ; preds = %do.cond24
  br label %if.end, !dbg !6353

if.end:                                           ; preds = %do.end25, %do.end10
  br label %do.cond26, !dbg !6354

do.cond26:                                        ; preds = %if.end
  br label %do.end27, !dbg !6354

do.end27:                                         ; preds = %do.cond26
  br label %do.body28, !dbg !6363

do.body28:                                        ; preds = %do.end27
  call void @__this_cpu_preempt_check(ptr noundef @.str.2) #18, !dbg !6364
  br label %do.body29, !dbg !6364

do.body29:                                        ; preds = %do.body28
  br label %do.body30, !dbg !6365

do.body30:                                        ; preds = %do.body29
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify31) #17, !dbg !6366
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify31, metadata !5623, metadata !DIExpression()), !dbg !6366
  store ptr null, ptr %__vpp_verify31, align 8, !dbg !6366
  %14 = load ptr, ptr %__vpp_verify31, align 8, !dbg !6366
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify31) #17, !dbg !6365
  br label %do.cond32, !dbg !6366

do.cond32:                                        ; preds = %do.body30
  br label %do.end33, !dbg !6366

do.end33:                                         ; preds = %do.cond32
  br label %do.body34, !dbg !6365

do.body34:                                        ; preds = %do.end33
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__35) #17, !dbg !6367
  call void @llvm.dbg.declare(metadata ptr %pao_ID__35, metadata !5628, metadata !DIExpression()), !dbg !6367
  store i32 0, ptr %pao_ID__35, align 4, !dbg !6367
  br label %do.body36, !dbg !6368

do.body36:                                        ; preds = %do.body34
  call void @llvm.lifetime.start.p0(i64 8, ptr %pto_val__) #17, !dbg !6369
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !5630, metadata !DIExpression()), !dbg !6369
  %call = call i64 @ktime_get_ns() #18, !dbg !6369
  %15 = load ptr, ptr %rq.addr, align 8, !dbg !6369
  %start_time_ns = getelementptr inbounds %struct.request, ptr %15, i32 0, i32 15, !dbg !6369
  %16 = load i64, ptr %start_time_ns, align 8, !dbg !6369
  %sub = sub i64 %call, %16, !dbg !6369
  store i64 %sub, ptr %pto_val__, align 8, !dbg !6369
  %17 = load ptr, ptr %part, align 8, !dbg !6369
  %bd_stats37 = getelementptr inbounds %struct.block_device, ptr %17, i32 0, i32 4, !dbg !6369
  %18 = load ptr, ptr %bd_stats37, align 8, !dbg !6369
  %nsecs = getelementptr inbounds %struct.disk_stats, ptr %18, i32 0, i32 0, !dbg !6369
  %arrayidx38 = getelementptr [4 x i64], ptr %nsecs, i64 0, i64 3, !dbg !6369
  %19 = load i64, ptr %pto_val__, align 8, !dbg !6369
  call void asm "addq $1, %gs:$0", "=*m,re,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %arrayidx38, i64 %19, ptr elementtype(i64) %arrayidx38) #17, !dbg !6369, !srcloc !6370
  call void @llvm.lifetime.end.p0(i64 8, ptr %pto_val__) #17, !dbg !6368
  br label %do.cond39, !dbg !6369

do.cond39:                                        ; preds = %do.body36
  br label %do.end40, !dbg !6369

do.end40:                                         ; preds = %do.cond39
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__35) #17, !dbg !6365
  br label %do.cond41, !dbg !6367

do.cond41:                                        ; preds = %do.end40
  br label %do.end42, !dbg !6367

do.end42:                                         ; preds = %do.cond41
  br label %do.cond43, !dbg !6365

do.cond43:                                        ; preds = %do.end42
  br label %do.end44, !dbg !6365

do.end44:                                         ; preds = %do.cond43
  %20 = load ptr, ptr %part, align 8, !dbg !6371
  %bd_partno45 = getelementptr inbounds %struct.block_device, ptr %20, i32 0, i32 7, !dbg !6371
  %21 = load i8, ptr %bd_partno45, align 1, !dbg !6371
  %tobool46 = icmp ne i8 %21, 0, !dbg !6371
  br i1 %tobool46, label %if.then47, label %if.end71, !dbg !6372

if.then47:                                        ; preds = %do.end44
  call void @__this_cpu_preempt_check(ptr noundef @.str.2) #18, !dbg !6373
  br label %do.body48, !dbg !6373

do.body48:                                        ; preds = %if.then47
  br label %do.body49, !dbg !6374

do.body49:                                        ; preds = %do.body48
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify50) #17, !dbg !6375
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify50, metadata !5634, metadata !DIExpression()), !dbg !6375
  store ptr null, ptr %__vpp_verify50, align 8, !dbg !6375
  %22 = load ptr, ptr %__vpp_verify50, align 8, !dbg !6375
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify50) #17, !dbg !6374
  br label %do.cond51, !dbg !6375

do.cond51:                                        ; preds = %do.body49
  br label %do.end52, !dbg !6375

do.end52:                                         ; preds = %do.cond51
  br label %do.body53, !dbg !6374

do.body53:                                        ; preds = %do.end52
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__54) #17, !dbg !6376
  call void @llvm.dbg.declare(metadata ptr %pao_ID__54, metadata !5639, metadata !DIExpression()), !dbg !6376
  store i32 0, ptr %pao_ID__54, align 4, !dbg !6376
  br label %do.body55, !dbg !6377

do.body55:                                        ; preds = %do.body53
  call void @llvm.lifetime.start.p0(i64 8, ptr %pto_val__56) #17, !dbg !6378
  call void @llvm.dbg.declare(metadata ptr %pto_val__56, metadata !5641, metadata !DIExpression()), !dbg !6378
  %call57 = call i64 @ktime_get_ns() #18, !dbg !6378
  %23 = load ptr, ptr %rq.addr, align 8, !dbg !6378
  %start_time_ns58 = getelementptr inbounds %struct.request, ptr %23, i32 0, i32 15, !dbg !6378
  %24 = load i64, ptr %start_time_ns58, align 8, !dbg !6378
  %sub59 = sub i64 %call57, %24, !dbg !6378
  store i64 %sub59, ptr %pto_val__56, align 8, !dbg !6378
  %25 = load ptr, ptr %part, align 8, !dbg !6378
  %bd_disk60 = getelementptr inbounds %struct.block_device, ptr %25, i32 0, i32 2, !dbg !6378
  %26 = load ptr, ptr %bd_disk60, align 8, !dbg !6378
  %part061 = getelementptr inbounds %struct.gendisk, ptr %26, i32 0, i32 7, !dbg !6378
  %27 = load ptr, ptr %part061, align 8, !dbg !6378
  %bd_stats62 = getelementptr inbounds %struct.block_device, ptr %27, i32 0, i32 4, !dbg !6378
  %28 = load ptr, ptr %bd_stats62, align 8, !dbg !6378
  %nsecs63 = getelementptr inbounds %struct.disk_stats, ptr %28, i32 0, i32 0, !dbg !6378
  %arrayidx64 = getelementptr [4 x i64], ptr %nsecs63, i64 0, i64 3, !dbg !6378
  %29 = load i64, ptr %pto_val__56, align 8, !dbg !6378
  call void asm "addq $1, %gs:$0", "=*m,re,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %arrayidx64, i64 %29, ptr elementtype(i64) %arrayidx64) #17, !dbg !6378, !srcloc !6379
  call void @llvm.lifetime.end.p0(i64 8, ptr %pto_val__56) #17, !dbg !6377
  br label %do.cond65, !dbg !6378

do.cond65:                                        ; preds = %do.body55
  br label %do.end66, !dbg !6378

do.end66:                                         ; preds = %do.cond65
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__54) #17, !dbg !6374
  br label %do.cond67, !dbg !6376

do.cond67:                                        ; preds = %do.end66
  br label %do.end68, !dbg !6376

do.end68:                                         ; preds = %do.cond67
  br label %do.cond69, !dbg !6374

do.cond69:                                        ; preds = %do.end68
  br label %do.end70, !dbg !6374

do.end70:                                         ; preds = %do.cond69
  br label %if.end71, !dbg !6371

if.end71:                                         ; preds = %do.end70, %do.end44
  br label %do.cond72, !dbg !6372

do.cond72:                                        ; preds = %if.end71
  br label %do.end73, !dbg !6372

do.end73:                                         ; preds = %do.cond72
  br label %do.body74, !dbg !6380

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !6381, !srcloc !6383
  %call75 = call zeroext i1 @__preempt_count_dec_and_test() #18, !dbg !6384
  %lnot = xor i1 %call75, true, !dbg !6384
  %lnot76 = xor i1 %lnot, true, !dbg !6384
  %lnot.ext = zext i1 %lnot76 to i32, !dbg !6384
  %conv = sext i32 %lnot.ext to i64, !dbg !6384
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6384
  %tobool77 = icmp ne i64 %expval, 0, !dbg !6384
  br i1 %tobool77, label %if.then78, label %if.end82, !dbg !6381

if.then78:                                        ; preds = %do.body74
  br label %do.body79, !dbg !6384

do.body79:                                        ; preds = %if.then78
  %30 = call i64 @llvm.read_register.i64(metadata !5650), !dbg !6386
  %31 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %30) #17, !dbg !6386, !srcloc !6388
  call void @llvm.write_register.i64(metadata !5650, i64 %31), !dbg !6386
  br label %do.cond80, !dbg !6386

do.cond80:                                        ; preds = %do.body79
  br label %do.end81, !dbg !6386

do.end81:                                         ; preds = %do.cond80
  br label %if.end82, !dbg !6386

if.end82:                                         ; preds = %do.end81, %do.body74
  br label %do.cond83, !dbg !6381

do.cond83:                                        ; preds = %if.end82
  br label %do.end84, !dbg !6381

do.end84:                                         ; preds = %do.cond83
  call void @llvm.lifetime.end.p0(i64 8, ptr %part) #17, !dbg !6389
  ret void, !dbg !6389
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @blk_mq_put_driver_tag(ptr noundef %rq) #3 align 16 !dbg !6390 {
entry:
  %rq.addr = alloca ptr, align 8
  store ptr %rq, ptr %rq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rq.addr, metadata !6392, metadata !DIExpression()), !dbg !6393
  %0 = load ptr, ptr %rq.addr, align 8, !dbg !6394
  %tag = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 5, !dbg !6396
  %1 = load i32, ptr %tag, align 8, !dbg !6396
  %cmp = icmp eq i32 %1, -1, !dbg !6397
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !6398

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %rq.addr, align 8, !dbg !6399
  %internal_tag = getelementptr inbounds %struct.request, ptr %2, i32 0, i32 6, !dbg !6400
  %3 = load i32, ptr %internal_tag, align 4, !dbg !6400
  %cmp1 = icmp eq i32 %3, -1, !dbg !6401
  br i1 %cmp1, label %if.then, label %if.end, !dbg !6402

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return, !dbg !6403

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %rq.addr, align 8, !dbg !6404
  %mq_hctx = getelementptr inbounds %struct.request, ptr %4, i32 0, i32 2, !dbg !6405
  %5 = load ptr, ptr %mq_hctx, align 8, !dbg !6405
  %6 = load ptr, ptr %rq.addr, align 8, !dbg !6406
  call void @__blk_mq_put_driver_tag(ptr noundef %5, ptr noundef %6) #18, !dbg !6407
  br label %return, !dbg !6408

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6408
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @blk_flush_cur_seq(ptr noundef %rq) #0 align 16 !dbg !6409 {
entry:
  %rq.addr = alloca ptr, align 8
  store ptr %rq, ptr %rq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rq.addr, metadata !6413, metadata !DIExpression()), !dbg !6414
  %0 = load ptr, ptr %rq.addr, align 8, !dbg !6415
  %flush = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 26, !dbg !6415
  %seq = getelementptr inbounds %struct.anon.17, ptr %flush, i32 0, i32 0, !dbg !6415
  %1 = load i32, ptr %seq, align 8, !dbg !6415
  %2 = call i1 @llvm.is.constant.i32(i32 %1), !dbg !6415
  br i1 %2, label %cond.true, label %cond.false, !dbg !6415

cond.true:                                        ; preds = %entry
  %3 = load ptr, ptr %rq.addr, align 8, !dbg !6415
  %flush1 = getelementptr inbounds %struct.request, ptr %3, i32 0, i32 26, !dbg !6415
  %seq2 = getelementptr inbounds %struct.anon.17, ptr %flush1, i32 0, i32 0, !dbg !6415
  %4 = load i32, ptr %seq2, align 8, !dbg !6415
  %not = xor i32 %4, -1, !dbg !6415
  %conv = zext i32 %not to i64, !dbg !6415
  %5 = call i64 @llvm.cttz.i64(i64 %conv, i1 true), !dbg !6415
  %cast = trunc i64 %5 to i32, !dbg !6415
  %conv3 = sext i32 %cast to i64, !dbg !6415
  br label %cond.end, !dbg !6415

cond.false:                                       ; preds = %entry
  %6 = load ptr, ptr %rq.addr, align 8, !dbg !6415
  %flush4 = getelementptr inbounds %struct.request, ptr %6, i32 0, i32 26, !dbg !6415
  %seq5 = getelementptr inbounds %struct.anon.17, ptr %flush4, i32 0, i32 0, !dbg !6415
  %7 = load i32, ptr %seq5, align 8, !dbg !6415
  %conv6 = zext i32 %7 to i64, !dbg !6415
  %call = call i64 @variable_ffz(i64 noundef %conv6) #18, !dbg !6415
  br label %cond.end, !dbg !6415

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv3, %cond.true ], [ %call, %cond.false ], !dbg !6415
  %sh_prom = trunc i64 %cond to i32, !dbg !6416
  %shl = shl i32 1, %sh_prom, !dbg !6416
  ret i32 %shl, !dbg !6417
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del_init(ptr noundef %entry1) #3 align 16 !dbg !6418 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6420, metadata !DIExpression()), !dbg !6421
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6422
  call void @__list_del_entry(ptr noundef %0) #18, !dbg !6423
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6424
  call void @INIT_LIST_HEAD(ptr noundef %1) #18, !dbg !6425
  ret void, !dbg !6426
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #6 align 16 !dbg !6427 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6434, metadata !DIExpression()), !dbg !6435
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6436
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #18, !dbg !6437
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6438
  %call = call i32 @raw_atomic_read(ptr noundef %1) #18, !dbg !6439
  ret i32 %call, !dbg !6440
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_dec_and_test(ptr noundef %v) #6 align 16 !dbg !6441 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6446, metadata !DIExpression()), !dbg !6447
  br label %do.body, !dbg !6448

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6449

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6451
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #18, !dbg !6452
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6453
  %call = call zeroext i1 @raw_atomic_dec_and_test(ptr noundef %1) #18, !dbg !6454
  ret i1 %call, !dbg !6455
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !6456 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6464, metadata !DIExpression()), !dbg !6466
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6465, metadata !DIExpression()), !dbg !6467
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6468
  %1 = load i64, ptr %size.addr, align 8, !dbg !6469
  %conv = trunc i64 %1 to i32, !dbg !6469
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #18, !dbg !6470
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6471
  %3 = load i64, ptr %size.addr, align 8, !dbg !6471
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #18, !dbg !6471
  ret void, !dbg !6472
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #6 align 16 !dbg !6473 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6476, metadata !DIExpression()), !dbg !6477
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6478
  %call = call i32 @arch_atomic_read(ptr noundef %0) #18, !dbg !6479
  ret i32 %call, !dbg !6480
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !6481 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6486, metadata !DIExpression()), !dbg !6488
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6487, metadata !DIExpression()), !dbg !6489
  ret i1 true, !dbg !6490
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !6491 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6496, metadata !DIExpression()), !dbg !6499
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6497, metadata !DIExpression()), !dbg !6500
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6498, metadata !DIExpression()), !dbg !6501
  ret void, !dbg !6502
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #6 align 16 !dbg !6503 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6506, metadata !DIExpression()), !dbg !6507
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6508
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6508
  %1 = load volatile i32, ptr %counter, align 4, !dbg !6508
  ret i32 %1, !dbg !6509
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !6510 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6512, metadata !DIExpression()), !dbg !6514
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6513, metadata !DIExpression()), !dbg !6515
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6516
  %1 = load i64, ptr %size.addr, align 8, !dbg !6517
  %conv = trunc i64 %1 to i32, !dbg !6517
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #18, !dbg !6518
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6519
  %3 = load i64, ptr %size.addr, align 8, !dbg !6519
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #18, !dbg !6519
  ret void, !dbg !6520
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_dec_and_test(ptr noundef %v) #6 align 16 !dbg !6521 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6523, metadata !DIExpression()), !dbg !6524
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6525
  %call = call zeroext i1 @arch_atomic_dec_and_test(ptr noundef %0) #18, !dbg !6526
  ret i1 %call, !dbg !6527
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !6528 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6530, metadata !DIExpression()), !dbg !6532
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6531, metadata !DIExpression()), !dbg !6533
  ret i1 true, !dbg !6534
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_dec_and_test(ptr noundef %v) #6 align 16 !dbg !6535 {
entry:
  %v.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6537, metadata !DIExpression()), !dbg !6540
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #17, !dbg !6541
  call void @llvm.dbg.declare(metadata ptr %c, metadata !6538, metadata !DIExpression()), !dbg !6541
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6541
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6541
  %1 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decl $0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #17, !dbg !6541, !srcloc !6542
  %2 = icmp ult i8 %1, 2, !dbg !6541
  call void @llvm.assume(i1 %2), !dbg !6541
  store i8 %1, ptr %c, align 1, !dbg !6541
  %3 = load i8, ptr %c, align 1, !dbg !6541, !range !6543, !noundef !1130
  %tobool = trunc i8 %3 to i1, !dbg !6541
  %frombool = zext i1 %tobool to i8, !dbg !6541
  store i8 %frombool, ptr %tmp, align 1, !dbg !6541
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #17, !dbg !6544
  %4 = load i8, ptr %tmp, align 1, !dbg !6541, !range !6543, !noundef !1130
  %tobool1 = trunc i8 %4 to i1, !dbg !6541
  ret i1 %tobool1, !dbg !6545
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6546 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #5 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #6 align 16 !dbg !6549 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6552, metadata !DIExpression()), !dbg !6559
  br label %do.body, !dbg !6560

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #17, !dbg !6561
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !6553, metadata !DIExpression()), !dbg !6561
  %0 = load i32, ptr %val.addr, align 4, !dbg !6561
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6561
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !6561

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !6561
  %cmp = icmp eq i32 %2, 1, !dbg !6561
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !6561

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !6561
  %cmp1 = icmp eq i32 %3, -1, !dbg !6561
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !6561

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !6561
  br label %cond.end, !dbg !6561

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !6561

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !6561
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !6561
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !6562
  %cmp2 = icmp eq i32 %5, 1, !dbg !6562
  br i1 %cmp2, label %if.then, label %if.else, !dbg !6561

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.24, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.24, ptr @pcpu_hot, i32 0, i32 1)) #17, !dbg !6563, !srcloc !6565
  br label %if.end8, !dbg !6562

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !6566
  %cmp3 = icmp eq i32 %6, -1, !dbg !6566
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !6562

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.24, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.24, ptr @pcpu_hot, i32 0, i32 1)) #17, !dbg !6567, !srcloc !6569
  br label %if.end, !dbg !6566

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !6566

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #17, !dbg !6570
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !6555, metadata !DIExpression()), !dbg !6570
  %7 = load i32, ptr %val.addr, align 4, !dbg !6570
  %conv = sext i32 %7 to i64, !dbg !6570
  %and = and i64 %conv, 4294967295, !dbg !6570
  %conv7 = trunc i64 %and to i32, !dbg !6570
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !6570
  %8 = load i32, ptr %pto_val__, align 4, !dbg !6570
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.24, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.24, ptr @pcpu_hot, i32 0, i32 1)) #17, !dbg !6570, !srcloc !6571
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #17, !dbg !6566
  br label %do.cond, !dbg !6570

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !6570

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #17, !dbg !6560
  br label %do.end10, !dbg !6561

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !6572
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #6 align 16 !dbg !6573 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !6578, metadata !DIExpression()), !dbg !6579
  ret void, !dbg !6580
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ktime_get_ns() #3 align 16 !dbg !6581 {
entry:
  %call = call i64 @ktime_get() #18, !dbg !6585
  %call1 = call i64 @ktime_to_ns(i64 noundef %call) #18, !dbg !6586
  ret i64 %call1, !dbg !6587
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #6 align 16 !dbg !6588 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #17, !dbg !6592
  call void @llvm.dbg.declare(metadata ptr %c, metadata !6590, metadata !DIExpression()), !dbg !6592
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.24, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.24, ptr @pcpu_hot, i32 0, i32 1)) #17, !dbg !6592, !srcloc !6593
  %1 = icmp ult i8 %0, 2, !dbg !6592
  call void @llvm.assume(i1 %1), !dbg !6592
  store i8 %0, ptr %c, align 1, !dbg !6592
  %2 = load i8, ptr %c, align 1, !dbg !6592, !range !6543, !noundef !1130
  %tobool = trunc i8 %2 to i1, !dbg !6592
  %frombool = zext i1 %tobool to i8, !dbg !6592
  store i8 %frombool, ptr %tmp, align 1, !dbg !6592
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #17, !dbg !6594
  %3 = load i8, ptr %tmp, align 1, !dbg !6592, !range !6543, !noundef !1130
  %tobool1 = trunc i8 %3 to i1, !dbg !6592
  ret i1 %tobool1, !dbg !6595
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #10

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #11

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ktime_to_ns(i64 noundef %kt) #3 align 16 !dbg !6596 {
entry:
  %kt.addr = alloca i64, align 8
  store i64 %kt, ptr %kt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kt.addr, metadata !6601, metadata !DIExpression()), !dbg !6602
  %0 = load i64, ptr %kt.addr, align 8, !dbg !6603
  ret i64 %0, !dbg !6604
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6605 dso_local i64 @ktime_get() #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__blk_mq_put_driver_tag(ptr noundef %hctx, ptr noundef %rq) #3 align 16 !dbg !6606 {
entry:
  %hctx.addr = alloca ptr, align 8
  %rq.addr = alloca ptr, align 8
  store ptr %hctx, ptr %hctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hctx.addr, metadata !6610, metadata !DIExpression()), !dbg !6612
  store ptr %rq, ptr %rq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rq.addr, metadata !6611, metadata !DIExpression()), !dbg !6613
  %0 = load ptr, ptr %hctx.addr, align 8, !dbg !6614
  %tags = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 19, !dbg !6615
  %1 = load ptr, ptr %tags, align 64, !dbg !6615
  %2 = load ptr, ptr %rq.addr, align 8, !dbg !6616
  %mq_ctx = getelementptr inbounds %struct.request, ptr %2, i32 0, i32 1, !dbg !6617
  %3 = load ptr, ptr %mq_ctx, align 8, !dbg !6617
  %4 = load ptr, ptr %rq.addr, align 8, !dbg !6618
  %tag = getelementptr inbounds %struct.request, ptr %4, i32 0, i32 5, !dbg !6619
  %5 = load i32, ptr %tag, align 8, !dbg !6619
  call void @blk_mq_put_tag(ptr noundef %1, ptr noundef %3, i32 noundef %5) #18, !dbg !6620
  %6 = load ptr, ptr %rq.addr, align 8, !dbg !6621
  %tag1 = getelementptr inbounds %struct.request, ptr %6, i32 0, i32 5, !dbg !6622
  store i32 -1, ptr %tag1, align 8, !dbg !6623
  %7 = load ptr, ptr %rq.addr, align 8, !dbg !6624
  %rq_flags = getelementptr inbounds %struct.request, ptr %7, i32 0, i32 4, !dbg !6626
  %8 = load i32, ptr %rq_flags, align 4, !dbg !6626
  %and = and i32 %8, 64, !dbg !6627
  %tobool = icmp ne i32 %and, 0, !dbg !6627
  br i1 %tobool, label %if.then, label %if.end, !dbg !6628

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %rq.addr, align 8, !dbg !6629
  %rq_flags2 = getelementptr inbounds %struct.request, ptr %9, i32 0, i32 4, !dbg !6631
  %10 = load i32, ptr %rq_flags2, align 4, !dbg !6632
  %and3 = and i32 %10, -65, !dbg !6632
  store i32 %and3, ptr %rq_flags2, align 4, !dbg !6632
  %11 = load ptr, ptr %hctx.addr, align 8, !dbg !6633
  call void @__blk_mq_dec_active_requests(ptr noundef %11) #18, !dbg !6634
  br label %if.end, !dbg !6635

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6636
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6637 dso_local void @blk_mq_put_tag(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__blk_mq_dec_active_requests(ptr noundef %hctx) #3 align 16 !dbg !6640 {
entry:
  %hctx.addr = alloca ptr, align 8
  store ptr %hctx, ptr %hctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hctx.addr, metadata !6642, metadata !DIExpression()), !dbg !6643
  %0 = load ptr, ptr %hctx.addr, align 8, !dbg !6644
  call void @__blk_mq_sub_active_requests(ptr noundef %0, i32 noundef 1) #18, !dbg !6645
  ret void, !dbg !6646
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__blk_mq_sub_active_requests(ptr noundef %hctx, i32 noundef %val) #3 align 16 !dbg !6647 {
entry:
  %hctx.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  store ptr %hctx, ptr %hctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hctx.addr, metadata !6651, metadata !DIExpression()), !dbg !6653
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6652, metadata !DIExpression()), !dbg !6654
  %0 = load ptr, ptr %hctx.addr, align 8, !dbg !6655
  %flags = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 5, !dbg !6657
  %1 = load i64, ptr %flags, align 8, !dbg !6657
  %conv = trunc i64 %1 to i32, !dbg !6655
  %call = call zeroext i1 @blk_mq_is_shared_tags(i32 noundef %conv) #18, !dbg !6658
  br i1 %call, label %if.then, label %if.else, !dbg !6659

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %val.addr, align 4, !dbg !6660
  %3 = load ptr, ptr %hctx.addr, align 8, !dbg !6661
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %3, i32 0, i32 7, !dbg !6662
  %4 = load ptr, ptr %queue, align 8, !dbg !6662
  %nr_active_requests_shared_tags = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 26, !dbg !6663
  call void @atomic_sub(i32 noundef %2, ptr noundef %nr_active_requests_shared_tags) #18, !dbg !6664
  br label %if.end, !dbg !6664

if.else:                                          ; preds = %entry
  %5 = load i32, ptr %val.addr, align 4, !dbg !6665
  %6 = load ptr, ptr %hctx.addr, align 8, !dbg !6666
  %nr_active = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %6, i32 0, i32 24, !dbg !6667
  call void @atomic_sub(i32 noundef %5, ptr noundef %nr_active) #18, !dbg !6668
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !6669
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @blk_mq_is_shared_tags(i32 noundef %flags) #3 align 16 !dbg !6670 {
entry:
  %flags.addr = alloca i32, align 4
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6674, metadata !DIExpression()), !dbg !6675
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6676
  %and = and i32 %0, 8, !dbg !6677
  %tobool = icmp ne i32 %and, 0, !dbg !6676
  ret i1 %tobool, !dbg !6678
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_sub(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !6679 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6683, metadata !DIExpression()), !dbg !6685
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6684, metadata !DIExpression()), !dbg !6686
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6687
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #18, !dbg !6688
  %1 = load i32, ptr %i.addr, align 4, !dbg !6689
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6690
  call void @raw_atomic_sub(i32 noundef %1, ptr noundef %2) #18, !dbg !6691
  ret void, !dbg !6692
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_sub(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !6693 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6695, metadata !DIExpression()), !dbg !6697
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6696, metadata !DIExpression()), !dbg !6698
  %0 = load i32, ptr %i.addr, align 4, !dbg !6699
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6700
  call void @arch_atomic_sub(i32 noundef %0, ptr noundef %1) #18, !dbg !6701
  ret void, !dbg !6702
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_sub(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !6703 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6705, metadata !DIExpression()), !dbg !6707
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6706, metadata !DIExpression()), !dbg !6708
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6709
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6710
  %1 = load i32, ptr %i.addr, align 4, !dbg !6711
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; subl $1,$0", "=*m,ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #17, !dbg !6712, !srcloc !6713
  ret void, !dbg !6714
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable_ffz(i64 noundef %word) #6 align 16 !dbg !6715 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !6720, metadata !DIExpression()), !dbg !6721
  %0 = load i64, ptr %word.addr, align 8, !dbg !6722
  %not = xor i64 %0, -1, !dbg !6723
  %1 = call i64 asm "rep; bsf $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %not) #20, !dbg !6724, !srcloc !6725
  store i64 %1, ptr %word.addr, align 8, !dbg !6724
  %2 = load i64, ptr %word.addr, align 8, !dbg !6726
  ret i64 %2, !dbg !6727
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #3 align 16 !dbg !6728 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6730, metadata !DIExpression()), !dbg !6731
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6732
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #18, !dbg !6734
  br i1 %call, label %if.end, label %if.then, !dbg !6735

if.then:                                          ; preds = %entry
  br label %return, !dbg !6736

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6737
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6738
  %2 = load ptr, ptr %prev, align 8, !dbg !6738
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !6739
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6740
  %4 = load ptr, ptr %next, align 8, !dbg !6740
  call void @__list_del(ptr noundef %2, ptr noundef %4) #18, !dbg !6741
  br label %return, !dbg !6742

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6742
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #3 align 16 !dbg !6743 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6747, metadata !DIExpression()), !dbg !6748
  ret i1 true, !dbg !6749
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !6750 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6754, metadata !DIExpression()), !dbg !6756
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6755, metadata !DIExpression()), !dbg !6757
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !6758
  %1 = load ptr, ptr %next.addr, align 8, !dbg !6759
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6760
  store ptr %0, ptr %prev1, align 8, !dbg !6761
  br label %do.body, !dbg !6762

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6763

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6765

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6763

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6767
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !6767
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6767
  store volatile ptr %2, ptr %next4, align 8, !dbg !6767
  br label %do.end5, !dbg !6767

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6763

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6769
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @blk_rq_sectors(ptr noundef %rq) #3 align 16 !dbg !6770 {
entry:
  %rq.addr = alloca ptr, align 8
  store ptr %rq, ptr %rq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rq.addr, metadata !6776, metadata !DIExpression()), !dbg !6777
  %0 = load ptr, ptr %rq.addr, align 8, !dbg !6778
  %call = call i32 @blk_rq_bytes(ptr noundef %0) #18, !dbg !6779
  %shr = lshr i32 %call, 9, !dbg !6780
  ret i32 %shr, !dbg !6781
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @blk_rq_bytes(ptr noundef %rq) #3 align 16 !dbg !6782 {
entry:
  %rq.addr = alloca ptr, align 8
  store ptr %rq, ptr %rq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rq.addr, metadata !6784, metadata !DIExpression()), !dbg !6785
  %0 = load ptr, ptr %rq.addr, align 8, !dbg !6786
  %__data_len = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 8, !dbg !6787
  %1 = load i32, ptr %__data_len, align 4, !dbg !6787
  ret i32 %1, !dbg !6788
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @blk_mq_map_queue(ptr noundef %q, i32 noundef %opf, ptr noundef %ctx) #3 align 16 !dbg !6789 {
entry:
  %q.addr = alloca ptr, align 8
  %opf.addr = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !6793, metadata !DIExpression()), !dbg !6796
  store i32 %opf, ptr %opf.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %opf.addr, metadata !6794, metadata !DIExpression()), !dbg !6797
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !6795, metadata !DIExpression()), !dbg !6798
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !6799
  %hctxs = getelementptr inbounds %struct.blk_mq_ctx, ptr %0, i32 0, i32 3, !dbg !6800
  %1 = load i32, ptr %opf.addr, align 4, !dbg !6801
  %call = call i32 @blk_mq_get_hctx_type(i32 noundef %1) #18, !dbg !6802
  %idxprom = zext i32 %call to i64, !dbg !6799
  %arrayidx = getelementptr [3 x ptr], ptr %hctxs, i64 0, i64 %idxprom, !dbg !6799
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !6799
  ret ptr %2, !dbg !6803
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @blk_mq_get_hctx_type(i32 noundef %opf) #3 align 16 !dbg !6804 {
entry:
  %opf.addr = alloca i32, align 4
  %type = alloca i32, align 4
  store i32 %opf, ptr %opf.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %opf.addr, metadata !6808, metadata !DIExpression()), !dbg !6810
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #17, !dbg !6811
  call void @llvm.dbg.declare(metadata ptr %type, metadata !6809, metadata !DIExpression()), !dbg !6812
  store i32 0, ptr %type, align 4, !dbg !6812
  %0 = load i32, ptr %opf.addr, align 4, !dbg !6813
  %and = and i32 %0, 4194304, !dbg !6815
  %tobool = icmp ne i32 %and, 0, !dbg !6815
  br i1 %tobool, label %if.then, label %if.else, !dbg !6816

if.then:                                          ; preds = %entry
  store i32 2, ptr %type, align 4, !dbg !6817
  br label %if.end3, !dbg !6818

if.else:                                          ; preds = %entry
  %1 = load i32, ptr %opf.addr, align 4, !dbg !6819
  %and1 = and i32 %1, 255, !dbg !6821
  %cmp = icmp eq i32 %and1, 0, !dbg !6822
  br i1 %cmp, label %if.then2, label %if.end, !dbg !6823

if.then2:                                         ; preds = %if.else
  store i32 1, ptr %type, align 4, !dbg !6824
  br label %if.end, !dbg !6825

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then
  %2 = load i32, ptr %type, align 4, !dbg !6826
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #17, !dbg !6827
  ret i32 %2, !dbg !6828
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mq_flush_data_end_io(ptr noundef %rq, i8 noundef zeroext %error) #0 align 16 !dbg !6829 {
entry:
  %rq.addr = alloca ptr, align 8
  %error.addr = alloca i8, align 1
  %q = alloca ptr, align 8
  %hctx = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %flags = alloca i64, align 8
  %fq = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp31 = alloca i32, align 4
  store ptr %rq, ptr %rq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rq.addr, metadata !6831, metadata !DIExpression()), !dbg !6850
  store i8 %error, ptr %error.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !6832, metadata !DIExpression()), !dbg !6851
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #17, !dbg !6852
  call void @llvm.dbg.declare(metadata ptr %q, metadata !6833, metadata !DIExpression()), !dbg !6853
  %0 = load ptr, ptr %rq.addr, align 8, !dbg !6854
  %q1 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 0, !dbg !6855
  %1 = load ptr, ptr %q1, align 8, !dbg !6855
  store ptr %1, ptr %q, align 8, !dbg !6853
  call void @llvm.lifetime.start.p0(i64 8, ptr %hctx) #17, !dbg !6856
  call void @llvm.dbg.declare(metadata ptr %hctx, metadata !6834, metadata !DIExpression()), !dbg !6857
  %2 = load ptr, ptr %rq.addr, align 8, !dbg !6858
  %mq_hctx = getelementptr inbounds %struct.request, ptr %2, i32 0, i32 2, !dbg !6859
  %3 = load ptr, ptr %mq_hctx, align 8, !dbg !6859
  store ptr %3, ptr %hctx, align 8, !dbg !6857
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #17, !dbg !6860
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !6835, metadata !DIExpression()), !dbg !6861
  %4 = load ptr, ptr %rq.addr, align 8, !dbg !6862
  %mq_ctx = getelementptr inbounds %struct.request, ptr %4, i32 0, i32 1, !dbg !6863
  %5 = load ptr, ptr %mq_ctx, align 8, !dbg !6863
  store ptr %5, ptr %ctx, align 8, !dbg !6861
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #17, !dbg !6864
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6836, metadata !DIExpression()), !dbg !6865
  call void @llvm.lifetime.start.p0(i64 8, ptr %fq) #17, !dbg !6866
  call void @llvm.dbg.declare(metadata ptr %fq, metadata !6837, metadata !DIExpression()), !dbg !6867
  %6 = load ptr, ptr %q, align 8, !dbg !6868
  %7 = load ptr, ptr %ctx, align 8, !dbg !6869
  %call = call ptr @blk_get_flush_queue(ptr noundef %6, ptr noundef %7) #18, !dbg !6870
  store ptr %call, ptr %fq, align 8, !dbg !6867
  %8 = load ptr, ptr %q, align 8, !dbg !6871
  %elevator = getelementptr inbounds %struct.request_queue, ptr %8, i32 0, i32 1, !dbg !6872
  %9 = load ptr, ptr %elevator, align 8, !dbg !6872
  %tobool = icmp ne ptr %9, null, !dbg !6871
  br i1 %tobool, label %if.then, label %if.end26, !dbg !6873

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !6874
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6838, metadata !DIExpression()), !dbg !6874
  %10 = load ptr, ptr %rq.addr, align 8, !dbg !6874
  %tag = getelementptr inbounds %struct.request, ptr %10, i32 0, i32 5, !dbg !6874
  %11 = load i32, ptr %tag, align 8, !dbg !6874
  %cmp = icmp slt i32 %11, 0, !dbg !6874
  %lnot = xor i1 %cmp, true, !dbg !6874
  %lnot2 = xor i1 %lnot, true, !dbg !6874
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6874
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6874
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !6875
  %tobool3 = icmp ne i32 %12, 0, !dbg !6875
  %lnot4 = xor i1 %tobool3, true, !dbg !6875
  %lnot6 = xor i1 %lnot4, true, !dbg !6875
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !6875
  %conv = sext i32 %lnot.ext7 to i64, !dbg !6875
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6875
  %tobool8 = icmp ne i64 %expval, 0, !dbg !6875
  br i1 %tobool8, label %if.then9, label %if.end, !dbg !6874

if.then9:                                         ; preds = %if.then
  br label %do.body, !dbg !6875

do.body:                                          ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !6876
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6842, metadata !DIExpression()), !dbg !6876
  store i32 2305, ptr %__flags, align 4, !dbg !6876
  br label %do.body10, !dbg !6876

do.body10:                                        ; preds = %do.body
  br label %do.cond, !dbg !6877

do.cond:                                          ; preds = %do.body10
  br label %do.end, !dbg !6877

do.end:                                           ; preds = %do.cond
  br label %do.body11, !dbg !6876

do.body11:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !6879
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 369, i32 %13, i64 12) #17, !dbg !6879, !srcloc !6881
  br label %do.cond12, !dbg !6879

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !6879

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !6876

do.body14:                                        ; preds = %do.end13
  br label %do.cond15, !dbg !6882

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !6882

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !6875
  br label %do.cond17, !dbg !6876

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !6876

do.end18:                                         ; preds = %do.cond17
  br label %if.end, !dbg !6876

if.end:                                           ; preds = %do.end18, %if.then
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !6874
  %tobool19 = icmp ne i32 %14, 0, !dbg !6874
  %lnot20 = xor i1 %tobool19, true, !dbg !6874
  %lnot22 = xor i1 %lnot20, true, !dbg !6874
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !6874
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !6874
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !6874
  store i64 %expval25, ptr %tmp, align 8, !dbg !6875
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !6884
  %15 = load i64, ptr %tmp, align 8, !dbg !6874
  %16 = load ptr, ptr %rq.addr, align 8, !dbg !6885
  call void @blk_mq_put_driver_tag(ptr noundef %16) #18, !dbg !6886
  br label %if.end26, !dbg !6887

if.end26:                                         ; preds = %if.end, %entry
  br label %do.body27, !dbg !6888

do.body27:                                        ; preds = %if.end26
  br label %do.body28, !dbg !6889

do.body28:                                        ; preds = %do.body27
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #17, !dbg !6890
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6845, metadata !DIExpression()), !dbg !6890
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #17, !dbg !6890
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6849, metadata !DIExpression()), !dbg !6890
  %cmp29 = icmp eq ptr %__dummy, %__dummy2, !dbg !6890
  %conv30 = zext i1 %cmp29 to i32, !dbg !6890
  store i32 1, ptr %tmp31, align 4, !dbg !6890
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #17, !dbg !6891
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #17, !dbg !6891
  %17 = load i32, ptr %tmp31, align 4, !dbg !6890
  %18 = load ptr, ptr %fq, align 8, !dbg !6891
  %mq_flush_lock = getelementptr inbounds %struct.blk_flush_queue, ptr %18, i32 0, i32 0, !dbg !6891
  %call32 = call ptr @spinlock_check(ptr noundef %mq_flush_lock) #18, !dbg !6891
  %call33 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call32) #18, !dbg !6891
  store i64 %call33, ptr %flags, align 8, !dbg !6891
  br label %do.cond34, !dbg !6891

do.cond34:                                        ; preds = %do.body28
  br label %do.end35, !dbg !6891

do.end35:                                         ; preds = %do.cond34
  br label %do.cond36, !dbg !6889

do.cond36:                                        ; preds = %do.end35
  br label %do.end37, !dbg !6889

do.end37:                                         ; preds = %do.cond36
  %19 = load ptr, ptr %fq, align 8, !dbg !6892
  %flush_data_in_flight = getelementptr inbounds %struct.blk_flush_queue, ptr %19, i32 0, i32 5, !dbg !6893
  %20 = load i64, ptr %flush_data_in_flight, align 8, !dbg !6894
  %dec = add i64 %20, -1, !dbg !6894
  store i64 %dec, ptr %flush_data_in_flight, align 8, !dbg !6894
  %21 = load ptr, ptr %rq.addr, align 8, !dbg !6895
  %22 = getelementptr inbounds %struct.request, ptr %21, i32 0, i32 12, !dbg !6896
  call void @INIT_LIST_HEAD(ptr noundef %22) #18, !dbg !6897
  %23 = load ptr, ptr %rq.addr, align 8, !dbg !6898
  %24 = load ptr, ptr %fq, align 8, !dbg !6899
  %25 = load i8, ptr %error.addr, align 1, !dbg !6900
  call void @blk_flush_complete_seq(ptr noundef %23, ptr noundef %24, i32 noundef 2, i8 noundef zeroext %25) #18, !dbg !6901
  %26 = load ptr, ptr %fq, align 8, !dbg !6902
  %mq_flush_lock38 = getelementptr inbounds %struct.blk_flush_queue, ptr %26, i32 0, i32 0, !dbg !6903
  %27 = load i64, ptr %flags, align 8, !dbg !6904
  call void @spin_unlock_irqrestore(ptr noundef %mq_flush_lock38, i64 noundef %27) #18, !dbg !6905
  %28 = load ptr, ptr %hctx, align 8, !dbg !6906
  call void @blk_mq_sched_restart(ptr noundef %28) #18, !dbg !6907
  call void @llvm.lifetime.end.p0(i64 8, ptr %fq) #17, !dbg !6908
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #17, !dbg !6908
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #17, !dbg !6908
  call void @llvm.lifetime.end.p0(i64 8, ptr %hctx) #17, !dbg !6908
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #17, !dbg !6908
  ret i32 0, !dbg !6909
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @blk_mq_sched_restart(ptr noundef %hctx) #3 align 16 !dbg !6910 {
entry:
  %hctx.addr = alloca ptr, align 8
  store ptr %hctx, ptr %hctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hctx.addr, metadata !6913, metadata !DIExpression()), !dbg !6914
  %0 = load ptr, ptr %hctx.addr, align 8, !dbg !6915
  %1 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 0, !dbg !6915
  %state = getelementptr inbounds %struct.anon.25, ptr %1, i32 0, i32 2, !dbg !6915
  %2 = ptrtoint ptr %state to i64, !dbg !6915
  %cmp = icmp ne i64 %2, 0, !dbg !6915
  %conv = zext i1 %cmp to i32, !dbg !6915
  %3 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !6915
  br i1 %3, label %land.lhs.true, label %cond.false, !dbg !6915

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %hctx.addr, align 8, !dbg !6915
  %5 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %4, i32 0, i32 0, !dbg !6915
  %state1 = getelementptr inbounds %struct.anon.25, ptr %5, i32 0, i32 2, !dbg !6915
  %6 = ptrtoint ptr %state1 to i64, !dbg !6915
  %cmp2 = icmp ne i64 %6, 0, !dbg !6915
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !6915

land.lhs.true4:                                   ; preds = %land.lhs.true
  %7 = load ptr, ptr %hctx.addr, align 8, !dbg !6915
  %8 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %7, i32 0, i32 0, !dbg !6915
  %state5 = getelementptr inbounds %struct.anon.25, ptr %8, i32 0, i32 2, !dbg !6915
  %9 = load i64, ptr %state5, align 8, !dbg !6915
  %10 = call i1 @llvm.is.constant.i64(i64 %9), !dbg !6915
  br i1 %10, label %cond.true, label %cond.false, !dbg !6917

cond.true:                                        ; preds = %land.lhs.true4
  %11 = load ptr, ptr %hctx.addr, align 8, !dbg !6915
  %12 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %11, i32 0, i32 0, !dbg !6915
  %state6 = getelementptr inbounds %struct.anon.25, ptr %12, i32 0, i32 2, !dbg !6915
  %call = call zeroext i1 @const_test_bit(i64 noundef 2, ptr noundef %state6) #18, !dbg !6915
  br i1 %call, label %if.then, label %if.end, !dbg !6915

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %13 = load ptr, ptr %hctx.addr, align 8, !dbg !6915
  %14 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %13, i32 0, i32 0, !dbg !6915
  %state8 = getelementptr inbounds %struct.anon.25, ptr %14, i32 0, i32 2, !dbg !6915
  %call9 = call zeroext i1 @_test_bit(i64 noundef 2, ptr noundef %state8) #18, !dbg !6915
  br i1 %call9, label %if.then, label %if.end, !dbg !6917

if.then:                                          ; preds = %cond.false, %cond.true
  %15 = load ptr, ptr %hctx.addr, align 8, !dbg !6918
  call void @__blk_mq_sched_restart(ptr noundef %15) #18, !dbg !6919
  br label %if.end, !dbg !6919

if.end:                                           ; preds = %if.then, %cond.false, %cond.true
  ret void, !dbg !6920
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6921 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6929, metadata !DIExpression()), !dbg !6934
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6930, metadata !DIExpression()), !dbg !6935
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #17, !dbg !6936
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6931, metadata !DIExpression()), !dbg !6937
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6938
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6939
  %div = udiv i64 %1, 64, !dbg !6939
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6940
  store ptr %add.ptr, ptr %p, align 8, !dbg !6937
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #17, !dbg !6941
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6932, metadata !DIExpression()), !dbg !6942
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6943
  %rem = urem i64 %2, 64, !dbg !6943
  %shl = shl i64 1, %rem, !dbg !6943
  store i64 %shl, ptr %mask, align 8, !dbg !6942
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #17, !dbg !6944
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6933, metadata !DIExpression()), !dbg !6945
  %3 = load ptr, ptr %p, align 8, !dbg !6946
  %4 = load i64, ptr %3, align 8, !dbg !6947
  store i64 %4, ptr %val, align 8, !dbg !6945
  %5 = load i64, ptr %val, align 8, !dbg !6948
  %6 = load i64, ptr %mask, align 8, !dbg !6949
  %and = and i64 %5, %6, !dbg !6950
  %tobool = icmp ne i64 %and, 0, !dbg !6951
  %lnot = xor i1 %tobool, true, !dbg !6951
  %lnot1 = xor i1 %lnot, true, !dbg !6952
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #17, !dbg !6953
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #17, !dbg !6953
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #17, !dbg !6953
  ret i1 %lnot1, !dbg !6954
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6955 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6958, metadata !DIExpression()), !dbg !6960
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6959, metadata !DIExpression()), !dbg !6961
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6962
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6963
  %div = udiv i64 %1, 64, !dbg !6963
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6964
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #18, !dbg !6965
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6966
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6967
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !6968
  ret i1 %call, !dbg !6969
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6970 dso_local void @__blk_mq_sched_restart(ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6971 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6973, metadata !DIExpression()), !dbg !6975
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6974, metadata !DIExpression()), !dbg !6976
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6977
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6978
  br i1 %1, label %cond.true, label %cond.false, !dbg !6978

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6979
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6980
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !6981
  %conv = zext i1 %call to i32, !dbg !6981
  br label %cond.end, !dbg !6978

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6982
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6983
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #18, !dbg !6984
  %conv2 = zext i1 %call1 to i32, !dbg !6984
  br label %cond.end, !dbg !6978

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6978
  %tobool = icmp ne i32 %cond, 0, !dbg !6978
  ret i1 %tobool, !dbg !6985
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6986 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6990, metadata !DIExpression()), !dbg !6992
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6991, metadata !DIExpression()), !dbg !6993
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6994
  %and = and i64 %0, 63, !dbg !6995
  %shl = shl i64 1, %and, !dbg !6996
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6997
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6998
  %shr = ashr i64 %2, 6, !dbg !6999
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6997
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6997
  %and1 = and i64 %shl, %3, !dbg !7000
  %cmp = icmp ne i64 %and1, 0, !dbg !7001
  ret i1 %cmp, !dbg !7002
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !7003 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7005, metadata !DIExpression()), !dbg !7008
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7006, metadata !DIExpression()), !dbg !7009
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #17, !dbg !7010
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !7007, metadata !DIExpression()), !dbg !7011
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7012
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7013
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #17, !dbg !7014, !srcloc !7015
  %3 = icmp ult i8 %2, 2, !dbg !7014
  call void @llvm.assume(i1 %3), !dbg !7014
  store i8 %2, ptr %oldbit, align 1, !dbg !7014
  %4 = load i8, ptr %oldbit, align 1, !dbg !7016, !range !6543, !noundef !1130
  %tobool = trunc i8 %4 to i1, !dbg !7016
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #17, !dbg !7017
  ret i1 %tobool, !dbg !7018
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7019 dso_local void @_raw_spin_lock_irq(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7022 dso_local void @_raw_spin_unlock_irq(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #3 align 16 !dbg !7023 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !7029, metadata !DIExpression()), !dbg !7030
  br label %do.body, !dbg !7031

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7033

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !7031
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !7031
  %1 = load volatile ptr, ptr %next, align 8, !dbg !7031
  store ptr %1, ptr %tmp, align 8, !dbg !7033
  %2 = load ptr, ptr %tmp, align 8, !dbg !7031
  %3 = load ptr, ptr %head.addr, align 8, !dbg !7035
  %cmp = icmp eq ptr %2, %3, !dbg !7036
  %conv = zext i1 %cmp to i32, !dbg !7036
  ret i32 %conv, !dbg !7037
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #3 align 16 !dbg !7038 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7040, metadata !DIExpression()), !dbg !7042
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !7041, metadata !DIExpression()), !dbg !7043
  %0 = load ptr, ptr %new.addr, align 8, !dbg !7044
  %1 = load ptr, ptr %head.addr, align 8, !dbg !7045
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !7046
  %2 = load ptr, ptr %prev, align 8, !dbg !7046
  %3 = load ptr, ptr %head.addr, align 8, !dbg !7047
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #18, !dbg !7048
  ret void, !dbg !7049
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #6 align 16 !dbg !7050 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !7052, metadata !DIExpression()), !dbg !7053
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !7054
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !7054
  call void @_raw_spin_lock(ptr noundef %1) #18, !dbg !7054
  ret void, !dbg !7055
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_move(ptr noundef %list, ptr noundef %head) #3 align 16 !dbg !7056 {
entry:
  %list.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !7058, metadata !DIExpression()), !dbg !7060
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !7059, metadata !DIExpression()), !dbg !7061
  %0 = load ptr, ptr %list.addr, align 8, !dbg !7062
  call void @__list_del_entry(ptr noundef %0) #18, !dbg !7063
  %1 = load ptr, ptr %list.addr, align 8, !dbg !7064
  %2 = load ptr, ptr %head.addr, align 8, !dbg !7065
  call void @list_add(ptr noundef %1, ptr noundef %2) #18, !dbg !7066
  ret void, !dbg !7067
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #6 align 16 !dbg !7068 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !7070, metadata !DIExpression()), !dbg !7071
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !7072
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !7072
  call void @_raw_spin_unlock(ptr noundef %1) #18, !dbg !7072
  ret void, !dbg !7073
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7074 dso_local void @blk_mq_kick_requeue_list(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @blk_flush_restore_request(ptr noundef %rq) #0 align 16 !dbg !7077 {
entry:
  %rq.addr = alloca ptr, align 8
  store ptr %rq, ptr %rq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rq.addr, metadata !7079, metadata !DIExpression()), !dbg !7080
  %0 = load ptr, ptr %rq.addr, align 8, !dbg !7081
  %biotail = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 11, !dbg !7082
  %1 = load ptr, ptr %biotail, align 8, !dbg !7082
  %2 = load ptr, ptr %rq.addr, align 8, !dbg !7083
  %bio = getelementptr inbounds %struct.request, ptr %2, i32 0, i32 10, !dbg !7084
  store ptr %1, ptr %bio, align 8, !dbg !7085
  %3 = load ptr, ptr %rq.addr, align 8, !dbg !7086
  %rq_flags = getelementptr inbounds %struct.request, ptr %3, i32 0, i32 4, !dbg !7087
  %4 = load i32, ptr %rq_flags, align 4, !dbg !7088
  %and = and i32 %4, -17, !dbg !7088
  store i32 %and, ptr %rq_flags, align 4, !dbg !7088
  %5 = load ptr, ptr %rq.addr, align 8, !dbg !7089
  %flush = getelementptr inbounds %struct.request, ptr %5, i32 0, i32 26, !dbg !7090
  %saved_end_io = getelementptr inbounds %struct.anon.17, ptr %flush, i32 0, i32 1, !dbg !7091
  %6 = load ptr, ptr %saved_end_io, align 8, !dbg !7091
  %7 = load ptr, ptr %rq.addr, align 8, !dbg !7092
  %end_io = getelementptr inbounds %struct.request, ptr %7, i32 0, i32 28, !dbg !7093
  store ptr %6, ptr %end_io, align 8, !dbg !7094
  ret void, !dbg !7095
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @blk_kick_flush(ptr noundef %q, ptr noundef %fq, i32 noundef %flags) #0 align 16 !dbg !7096 {
entry:
  %q.addr = alloca ptr, align 8
  %fq.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %pending = alloca ptr, align 8
  %first_rq = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %flush_rq = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !7100, metadata !DIExpression()), !dbg !7108
  store ptr %fq, ptr %fq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fq.addr, metadata !7101, metadata !DIExpression()), !dbg !7109
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7102, metadata !DIExpression()), !dbg !7110
  call void @llvm.lifetime.start.p0(i64 8, ptr %pending) #17, !dbg !7111
  call void @llvm.dbg.declare(metadata ptr %pending, metadata !7103, metadata !DIExpression()), !dbg !7112
  %0 = load ptr, ptr %fq.addr, align 8, !dbg !7113
  %flush_queue = getelementptr inbounds %struct.blk_flush_queue, ptr %0, i32 0, i32 4, !dbg !7114
  %1 = load ptr, ptr %fq.addr, align 8, !dbg !7115
  %flush_pending_idx = getelementptr inbounds %struct.blk_flush_queue, ptr %1, i32 0, i32 1, !dbg !7116
  %bf.load = load i8, ptr %flush_pending_idx, align 4, !dbg !7116
  %bf.clear = and i8 %bf.load, 1, !dbg !7116
  %bf.cast = zext i8 %bf.clear to i32, !dbg !7116
  %idxprom = zext i32 %bf.cast to i64, !dbg !7113
  %arrayidx = getelementptr [2 x %struct.list_head], ptr %flush_queue, i64 0, i64 %idxprom, !dbg !7113
  store ptr %arrayidx, ptr %pending, align 8, !dbg !7112
  call void @llvm.lifetime.start.p0(i64 8, ptr %first_rq) #17, !dbg !7117
  call void @llvm.dbg.declare(metadata ptr %first_rq, metadata !7104, metadata !DIExpression()), !dbg !7118
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !7119
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7105, metadata !DIExpression()), !dbg !7119
  %2 = load ptr, ptr %pending, align 8, !dbg !7119
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !7119
  %3 = load ptr, ptr %next, align 8, !dbg !7119
  store ptr %3, ptr %__mptr, align 8, !dbg !7119
  %4 = load ptr, ptr %__mptr, align 8, !dbg !7119
  %add.ptr = getelementptr i8, ptr %4, i64 -72, !dbg !7119
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7119
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !7120
  %5 = load ptr, ptr %tmp, align 8, !dbg !7119
  store ptr %5, ptr %first_rq, align 8, !dbg !7118
  call void @llvm.lifetime.start.p0(i64 8, ptr %flush_rq) #17, !dbg !7121
  call void @llvm.dbg.declare(metadata ptr %flush_rq, metadata !7107, metadata !DIExpression()), !dbg !7122
  %6 = load ptr, ptr %fq.addr, align 8, !dbg !7123
  %flush_rq1 = getelementptr inbounds %struct.blk_flush_queue, ptr %6, i32 0, i32 6, !dbg !7124
  %7 = load ptr, ptr %flush_rq1, align 8, !dbg !7124
  store ptr %7, ptr %flush_rq, align 8, !dbg !7122
  %8 = load ptr, ptr %fq.addr, align 8, !dbg !7125
  %flush_pending_idx2 = getelementptr inbounds %struct.blk_flush_queue, ptr %8, i32 0, i32 1, !dbg !7127
  %bf.load3 = load i8, ptr %flush_pending_idx2, align 4, !dbg !7127
  %bf.clear4 = and i8 %bf.load3, 1, !dbg !7127
  %bf.cast5 = zext i8 %bf.clear4 to i32, !dbg !7127
  %9 = load ptr, ptr %fq.addr, align 8, !dbg !7128
  %flush_running_idx = getelementptr inbounds %struct.blk_flush_queue, ptr %9, i32 0, i32 1, !dbg !7129
  %bf.load6 = load i8, ptr %flush_running_idx, align 4, !dbg !7129
  %bf.lshr = lshr i8 %bf.load6, 1, !dbg !7129
  %bf.clear7 = and i8 %bf.lshr, 1, !dbg !7129
  %bf.cast8 = zext i8 %bf.clear7 to i32, !dbg !7129
  %cmp = icmp ne i32 %bf.cast5, %bf.cast8, !dbg !7130
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !7131

lor.lhs.false:                                    ; preds = %entry
  %10 = load ptr, ptr %pending, align 8, !dbg !7132
  %call = call i32 @list_empty(ptr noundef %10) #18, !dbg !7133
  %tobool = icmp ne i32 %call, 0, !dbg !7133
  br i1 %tobool, label %if.then, label %if.end, !dbg !7134

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7135

if.end:                                           ; preds = %lor.lhs.false
  %11 = load ptr, ptr %fq.addr, align 8, !dbg !7136
  %flush_data_in_flight = getelementptr inbounds %struct.blk_flush_queue, ptr %11, i32 0, i32 5, !dbg !7138
  %12 = load i64, ptr %flush_data_in_flight, align 8, !dbg !7138
  %tobool9 = icmp ne i64 %12, 0, !dbg !7136
  br i1 %tobool9, label %land.lhs.true, label %if.end12, !dbg !7139

land.lhs.true:                                    ; preds = %if.end
  %13 = load volatile i64, ptr @jiffies, align 64, !dbg !7140
  %14 = load ptr, ptr %fq.addr, align 8, !dbg !7140
  %flush_pending_since = getelementptr inbounds %struct.blk_flush_queue, ptr %14, i32 0, i32 3, !dbg !7140
  %15 = load i64, ptr %flush_pending_since, align 8, !dbg !7140
  %add = add i64 %15, 5000, !dbg !7140
  %sub = sub i64 %13, %add, !dbg !7140
  %cmp10 = icmp slt i64 %sub, 0, !dbg !7140
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !7141

if.then11:                                        ; preds = %land.lhs.true
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7142

if.end12:                                         ; preds = %land.lhs.true, %if.end
  %16 = load ptr, ptr %fq.addr, align 8, !dbg !7143
  %flush_pending_idx13 = getelementptr inbounds %struct.blk_flush_queue, ptr %16, i32 0, i32 1, !dbg !7144
  %bf.load14 = load i8, ptr %flush_pending_idx13, align 4, !dbg !7145
  %bf.clear15 = and i8 %bf.load14, 1, !dbg !7145
  %bf.cast16 = zext i8 %bf.clear15 to i32, !dbg !7145
  %xor = xor i32 %bf.cast16, 1, !dbg !7145
  %17 = trunc i32 %xor to i8, !dbg !7145
  %bf.load17 = load i8, ptr %flush_pending_idx13, align 4, !dbg !7145
  %bf.value = and i8 %17, 1, !dbg !7145
  %bf.clear18 = and i8 %bf.load17, -2, !dbg !7145
  %bf.set = or i8 %bf.clear18, %bf.value, !dbg !7145
  store i8 %bf.set, ptr %flush_pending_idx13, align 4, !dbg !7145
  %bf.result.cast = zext i8 %bf.value to i32, !dbg !7145
  %18 = load ptr, ptr %q.addr, align 8, !dbg !7146
  %19 = load ptr, ptr %flush_rq, align 8, !dbg !7147
  call void @blk_rq_init(ptr noundef %18, ptr noundef %19) #18, !dbg !7148
  %20 = load ptr, ptr %first_rq, align 8, !dbg !7149
  %mq_ctx = getelementptr inbounds %struct.request, ptr %20, i32 0, i32 1, !dbg !7150
  %21 = load ptr, ptr %mq_ctx, align 8, !dbg !7150
  %22 = load ptr, ptr %flush_rq, align 8, !dbg !7151
  %mq_ctx19 = getelementptr inbounds %struct.request, ptr %22, i32 0, i32 1, !dbg !7152
  store ptr %21, ptr %mq_ctx19, align 8, !dbg !7153
  %23 = load ptr, ptr %first_rq, align 8, !dbg !7154
  %mq_hctx = getelementptr inbounds %struct.request, ptr %23, i32 0, i32 2, !dbg !7155
  %24 = load ptr, ptr %mq_hctx, align 8, !dbg !7155
  %25 = load ptr, ptr %flush_rq, align 8, !dbg !7156
  %mq_hctx20 = getelementptr inbounds %struct.request, ptr %25, i32 0, i32 2, !dbg !7157
  store ptr %24, ptr %mq_hctx20, align 8, !dbg !7158
  %26 = load ptr, ptr %q.addr, align 8, !dbg !7159
  %elevator = getelementptr inbounds %struct.request_queue, ptr %26, i32 0, i32 1, !dbg !7161
  %27 = load ptr, ptr %elevator, align 8, !dbg !7161
  %tobool21 = icmp ne ptr %27, null, !dbg !7159
  br i1 %tobool21, label %if.else, label %if.then22, !dbg !7162

if.then22:                                        ; preds = %if.end12
  %28 = load ptr, ptr %first_rq, align 8, !dbg !7163
  %tag = getelementptr inbounds %struct.request, ptr %28, i32 0, i32 5, !dbg !7165
  %29 = load i32, ptr %tag, align 8, !dbg !7165
  %30 = load ptr, ptr %flush_rq, align 8, !dbg !7166
  %tag23 = getelementptr inbounds %struct.request, ptr %30, i32 0, i32 5, !dbg !7167
  store i32 %29, ptr %tag23, align 8, !dbg !7168
  %31 = load ptr, ptr %flush_rq, align 8, !dbg !7169
  %rq_flags = getelementptr inbounds %struct.request, ptr %31, i32 0, i32 4, !dbg !7170
  %32 = load i32, ptr %rq_flags, align 4, !dbg !7171
  %or = or i32 %32, 64, !dbg !7171
  store i32 %or, ptr %rq_flags, align 4, !dbg !7171
  br label %if.end25, !dbg !7172

if.else:                                          ; preds = %if.end12
  %33 = load ptr, ptr %first_rq, align 8, !dbg !7173
  %internal_tag = getelementptr inbounds %struct.request, ptr %33, i32 0, i32 6, !dbg !7174
  %34 = load i32, ptr %internal_tag, align 4, !dbg !7174
  %35 = load ptr, ptr %flush_rq, align 8, !dbg !7175
  %internal_tag24 = getelementptr inbounds %struct.request, ptr %35, i32 0, i32 6, !dbg !7176
  store i32 %34, ptr %internal_tag24, align 4, !dbg !7177
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then22
  %36 = load ptr, ptr %flush_rq, align 8, !dbg !7178
  %cmd_flags = getelementptr inbounds %struct.request, ptr %36, i32 0, i32 3, !dbg !7179
  store i32 262146, ptr %cmd_flags, align 8, !dbg !7180
  %37 = load i32, ptr %flags.addr, align 4, !dbg !7181
  %and = and i32 %37, 33554432, !dbg !7182
  %38 = load i32, ptr %flags.addr, align 4, !dbg !7183
  %and26 = and i32 %38, 1792, !dbg !7184
  %or27 = or i32 %and, %and26, !dbg !7185
  %39 = load ptr, ptr %flush_rq, align 8, !dbg !7186
  %cmd_flags28 = getelementptr inbounds %struct.request, ptr %39, i32 0, i32 3, !dbg !7187
  %40 = load i32, ptr %cmd_flags28, align 8, !dbg !7188
  %or29 = or i32 %40, %or27, !dbg !7188
  store i32 %or29, ptr %cmd_flags28, align 8, !dbg !7188
  %41 = load ptr, ptr %flush_rq, align 8, !dbg !7189
  %rq_flags30 = getelementptr inbounds %struct.request, ptr %41, i32 0, i32 4, !dbg !7190
  %42 = load i32, ptr %rq_flags30, align 4, !dbg !7191
  %or31 = or i32 %42, 16, !dbg !7191
  store i32 %or31, ptr %rq_flags30, align 4, !dbg !7191
  %43 = load ptr, ptr %flush_rq, align 8, !dbg !7192
  %end_io = getelementptr inbounds %struct.request, ptr %43, i32 0, i32 28, !dbg !7193
  store ptr @flush_end_io, ptr %end_io, align 8, !dbg !7194
  br label %do.body, !dbg !7195

do.body:                                          ; preds = %if.end25
  br label %do.body32, !dbg !7196

do.body32:                                        ; preds = %do.body
  br label %do.cond, !dbg !7198

do.cond:                                          ; preds = %do.body32
  br label %do.end, !dbg !7198

do.end:                                           ; preds = %do.cond
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !7196, !srcloc !7200
  br label %do.cond33, !dbg !7196

do.cond33:                                        ; preds = %do.end
  br label %do.end34, !dbg !7196

do.end34:                                         ; preds = %do.cond33
  %44 = load ptr, ptr %flush_rq, align 8, !dbg !7201
  call void @req_ref_set(ptr noundef %44, i32 noundef 1) #18, !dbg !7202
  %45 = load ptr, ptr %q.addr, align 8, !dbg !7203
  %requeue_lock = getelementptr inbounds %struct.request_queue, ptr %45, i32 0, i32 40, !dbg !7204
  call void @spin_lock(ptr noundef %requeue_lock) #18, !dbg !7205
  %46 = load ptr, ptr %flush_rq, align 8, !dbg !7206
  %47 = getelementptr inbounds %struct.request, ptr %46, i32 0, i32 12, !dbg !7207
  %48 = load ptr, ptr %q.addr, align 8, !dbg !7208
  %flush_list = getelementptr inbounds %struct.request_queue, ptr %48, i32 0, i32 38, !dbg !7209
  call void @list_add_tail(ptr noundef %47, ptr noundef %flush_list) #18, !dbg !7210
  %49 = load ptr, ptr %q.addr, align 8, !dbg !7211
  %requeue_lock35 = getelementptr inbounds %struct.request_queue, ptr %49, i32 0, i32 40, !dbg !7212
  call void @spin_unlock(ptr noundef %requeue_lock35) #18, !dbg !7213
  %50 = load ptr, ptr %q.addr, align 8, !dbg !7214
  call void @blk_mq_kick_requeue_list(ptr noundef %50) #18, !dbg !7215
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !7216
  br label %cleanup, !dbg !7216

cleanup:                                          ; preds = %do.end34, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flush_rq) #17, !dbg !7216
  call void @llvm.lifetime.end.p0(i64 8, ptr %first_rq) #17, !dbg !7216
  call void @llvm.lifetime.end.p0(i64 8, ptr %pending) #17, !dbg !7216
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !7216

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !7217 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7221, metadata !DIExpression()), !dbg !7224
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !7222, metadata !DIExpression()), !dbg !7225
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !7223, metadata !DIExpression()), !dbg !7226
  %0 = load ptr, ptr %new.addr, align 8, !dbg !7227
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !7229
  %2 = load ptr, ptr %next.addr, align 8, !dbg !7230
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18, !dbg !7231
  br i1 %call, label %if.end, label %if.then, !dbg !7232

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !7233

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !7234
  %4 = load ptr, ptr %next.addr, align 8, !dbg !7235
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !7236
  store ptr %3, ptr %prev1, align 8, !dbg !7237
  %5 = load ptr, ptr %next.addr, align 8, !dbg !7238
  %6 = load ptr, ptr %new.addr, align 8, !dbg !7239
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !7240
  store ptr %5, ptr %next2, align 8, !dbg !7241
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !7242
  %8 = load ptr, ptr %new.addr, align 8, !dbg !7243
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !7244
  store ptr %7, ptr %prev3, align 8, !dbg !7245
  br label %do.body, !dbg !7246

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !7247

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !7249

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !7247

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !7251
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !7251
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !7251
  store volatile ptr %9, ptr %next6, align 8, !dbg !7251
  br label %do.end7, !dbg !7251

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !7247

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !7253
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !7254 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7258, metadata !DIExpression()), !dbg !7261
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !7259, metadata !DIExpression()), !dbg !7262
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !7260, metadata !DIExpression()), !dbg !7263
  ret i1 true, !dbg !7264
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7265 dso_local void @_raw_spin_lock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #3 align 16 !dbg !7266 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7268, metadata !DIExpression()), !dbg !7270
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !7269, metadata !DIExpression()), !dbg !7271
  %0 = load ptr, ptr %new.addr, align 8, !dbg !7272
  %1 = load ptr, ptr %head.addr, align 8, !dbg !7273
  %2 = load ptr, ptr %head.addr, align 8, !dbg !7274
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !7275
  %3 = load ptr, ptr %next, align 8, !dbg !7275
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #18, !dbg !7276
  ret void, !dbg !7277
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7278 dso_local void @_raw_spin_unlock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7279 dso_local void @blk_rq_init(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @req_ref_set(ptr noundef %req, i32 noundef %value) #3 align 16 !dbg !7282 {
entry:
  %req.addr = alloca ptr, align 8
  %value.addr = alloca i32, align 4
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !7284, metadata !DIExpression()), !dbg !7286
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !7285, metadata !DIExpression()), !dbg !7287
  %0 = load ptr, ptr %req.addr, align 8, !dbg !7288
  %ref = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 21, !dbg !7289
  %1 = load i32, ptr %value.addr, align 4, !dbg !7290
  call void @atomic_set(ptr noundef %ref, i32 noundef %1) #18, !dbg !7291
  ret void, !dbg !7292
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #6 align 16 !dbg !7293 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7297, metadata !DIExpression()), !dbg !7299
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7298, metadata !DIExpression()), !dbg !7300
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7301
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #18, !dbg !7302
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7303
  %2 = load i32, ptr %i.addr, align 4, !dbg !7304
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #18, !dbg !7305
  ret void, !dbg !7306
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !7307 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7309, metadata !DIExpression()), !dbg !7311
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7310, metadata !DIExpression()), !dbg !7312
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7313
  %1 = load i64, ptr %size.addr, align 8, !dbg !7314
  %conv = trunc i64 %1 to i32, !dbg !7314
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #18, !dbg !7315
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7316
  %3 = load i64, ptr %size.addr, align 8, !dbg !7316
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #18, !dbg !7316
  ret void, !dbg !7317
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #6 align 16 !dbg !7318 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7320, metadata !DIExpression()), !dbg !7322
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7321, metadata !DIExpression()), !dbg !7323
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7324
  %1 = load i32, ptr %i.addr, align 4, !dbg !7325
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #18, !dbg !7326
  ret void, !dbg !7327
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #6 align 16 !dbg !7328 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7330, metadata !DIExpression()), !dbg !7332
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7331, metadata !DIExpression()), !dbg !7333
  br label %do.body, !dbg !7334

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !7335
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7335
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !7335
  store volatile i32 %0, ptr %counter, align 4, !dbg !7335
  br label %do.end, !dbg !7335

do.end:                                           ; preds = %do.body
  ret void, !dbg !7337
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc_node(i64 noundef %size, i32 noundef %flags, i32 noundef %node) #13 align 16 !dbg !7338 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %node.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7340, metadata !DIExpression()), !dbg !7346
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7341, metadata !DIExpression()), !dbg !7347
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !7342, metadata !DIExpression()), !dbg !7348
  %0 = load i64, ptr %size.addr, align 8, !dbg !7349
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7350
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !7351

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !7352
  %tobool = icmp ne i64 %2, 0, !dbg !7352
  br i1 %tobool, label %if.then, label %if.end7, !dbg !7353

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #17, !dbg !7354
  call void @llvm.dbg.declare(metadata ptr %index, metadata !7343, metadata !DIExpression()), !dbg !7355
  %3 = load i64, ptr %size.addr, align 8, !dbg !7356
  %cmp = icmp ugt i64 %3, 8192, !dbg !7358
  br i1 %cmp, label %if.then1, label %if.end, !dbg !7359

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !7360
  %5 = load i32, ptr %flags.addr, align 4, !dbg !7361
  %6 = load i32, ptr %node.addr, align 4, !dbg !7362
  %call = call noalias align 4096 ptr @kmalloc_large_node(i64 noundef %4, i32 noundef %5, i32 noundef %6) #19, !dbg !7363
  store ptr %call, ptr %retval, align 8, !dbg !7364
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7364

if.end:                                           ; preds = %if.then
  %7 = load i64, ptr %size.addr, align 8, !dbg !7365
  %call2 = call i32 @__kmalloc_index(i64 noundef %7, i1 noundef zeroext true) #18, !dbg !7365
  store i32 %call2, ptr %index, align 4, !dbg !7366
  %8 = load i32, ptr %flags.addr, align 4, !dbg !7367
  %9 = call ptr @llvm.returnaddress(i32 0), !dbg !7368
  %10 = ptrtoint ptr %9 to i64, !dbg !7368
  %call3 = call i32 @kmalloc_type(i32 noundef %8, i64 noundef %10) #18, !dbg !7369
  %idxprom = zext i32 %call3 to i64, !dbg !7370
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !7370
  %11 = load i32, ptr %index, align 4, !dbg !7371
  %idxprom4 = zext i32 %11 to i64, !dbg !7370
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !7370
  %12 = load ptr, ptr %arrayidx5, align 8, !dbg !7370
  %13 = load i32, ptr %flags.addr, align 4, !dbg !7372
  %14 = load i32, ptr %node.addr, align 4, !dbg !7373
  %15 = load i64, ptr %size.addr, align 8, !dbg !7374
  %call6 = call noalias align 8 ptr @kmalloc_node_trace(ptr noundef %12, i32 noundef %13, i32 noundef %14, i64 noundef %15) #21, !dbg !7375
  store ptr %call6, ptr %retval, align 8, !dbg !7376
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7376

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #17, !dbg !7377
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %16 = load i64, ptr %size.addr, align 8, !dbg !7378
  %17 = load i32, ptr %flags.addr, align 4, !dbg !7379
  %18 = load i32, ptr %node.addr, align 4, !dbg !7380
  %call8 = call noalias align 8 ptr @__kmalloc_node(i64 noundef %16, i32 noundef %17, i32 noundef %18) #19, !dbg !7381
  store ptr %call8, ptr %retval, align 8, !dbg !7382
  br label %return, !dbg !7382

return:                                           ; preds = %if.end7, %cleanup
  %19 = load ptr, ptr %retval, align 8, !dbg !7383
  ret ptr %19, !dbg !7383
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7384 dso_local noalias ptr @kmalloc_large_node(i64 noundef, i32 noundef, i32 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #6 align 16 !dbg !7385 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7389, metadata !DIExpression()), !dbg !7391
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !7390, metadata !DIExpression()), !dbg !7392
  %0 = load i64, ptr %size.addr, align 8, !dbg !7393
  %tobool = icmp ne i64 %0, 0, !dbg !7393
  br i1 %tobool, label %if.end, label %if.then, !dbg !7395

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7396
  br label %return, !dbg !7396

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !7397
  %cmp = icmp ule i64 %1, 8, !dbg !7399
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !7400

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !7401
  br label %return, !dbg !7401

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !7402
  %cmp3 = icmp ugt i64 %2, 64, !dbg !7404
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !7405

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !7406
  %cmp4 = icmp ule i64 %3, 96, !dbg !7407
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !7408

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !7409
  br label %return, !dbg !7409

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !7410
  %cmp7 = icmp ugt i64 %4, 128, !dbg !7412
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !7413

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !7414
  %cmp9 = icmp ule i64 %5, 192, !dbg !7415
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !7416

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !7417
  br label %return, !dbg !7417

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !7418
  %cmp12 = icmp ule i64 %6, 8, !dbg !7420
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !7421

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !7422
  br label %return, !dbg !7422

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !7423
  %cmp15 = icmp ule i64 %7, 16, !dbg !7425
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !7426

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !7427
  br label %return, !dbg !7427

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !7428
  %cmp18 = icmp ule i64 %8, 32, !dbg !7430
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !7431

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !7432
  br label %return, !dbg !7432

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !7433
  %cmp21 = icmp ule i64 %9, 64, !dbg !7435
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !7436

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !7437
  br label %return, !dbg !7437

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !7438
  %cmp24 = icmp ule i64 %10, 128, !dbg !7440
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !7441

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !7442
  br label %return, !dbg !7442

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !7443
  %cmp27 = icmp ule i64 %11, 256, !dbg !7445
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !7446

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !7447
  br label %return, !dbg !7447

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !7448
  %cmp30 = icmp ule i64 %12, 512, !dbg !7450
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !7451

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !7452
  br label %return, !dbg !7452

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !7453
  %cmp33 = icmp ule i64 %13, 1024, !dbg !7455
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !7456

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !7457
  br label %return, !dbg !7457

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !7458
  %cmp36 = icmp ule i64 %14, 2048, !dbg !7460
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !7461

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !7462
  br label %return, !dbg !7462

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !7463
  %cmp39 = icmp ule i64 %15, 4096, !dbg !7465
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !7466

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !7467
  br label %return, !dbg !7467

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !7468
  %cmp42 = icmp ule i64 %16, 8192, !dbg !7470
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !7471

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !7472
  br label %return, !dbg !7472

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !7473
  %cmp45 = icmp ule i64 %17, 16384, !dbg !7475
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !7476

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !7477
  br label %return, !dbg !7477

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !7478
  %cmp48 = icmp ule i64 %18, 32768, !dbg !7480
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !7481

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !7482
  br label %return, !dbg !7482

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !7483
  %cmp51 = icmp ule i64 %19, 65536, !dbg !7485
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !7486

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !7487
  br label %return, !dbg !7487

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !7488
  %cmp54 = icmp ule i64 %20, 131072, !dbg !7490
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !7491

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !7492
  br label %return, !dbg !7492

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !7493
  %cmp57 = icmp ule i64 %21, 262144, !dbg !7495
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !7496

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !7497
  br label %return, !dbg !7497

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !7498
  %cmp60 = icmp ule i64 %22, 524288, !dbg !7500
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !7501

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !7502
  br label %return, !dbg !7502

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !7503
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !7505
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !7506

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !7507
  br label %return, !dbg !7507

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !7508
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !7510
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !7511

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !7512
  br label %return, !dbg !7512

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !7513, !range !6543, !noundef !1130
  %tobool69 = trunc i8 %25 to i1, !dbg !7513
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !7515

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !7516

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_256() #22, !dbg !7517, !srcloc !7520
  unreachable, !dbg !7517

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !7521

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !7522

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !7523

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !7525

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !7523

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 480, i32 0, i64 12) #17, !dbg !7527, !srcloc !7529
  br label %do.end75, !dbg !7527

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !7523

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !7530
  br label %return, !dbg !7530

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !7531
  ret i32 %26, !dbg !7531
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(3)
declare !dbg !7532 dso_local noalias ptr @kmalloc_node_trace(ptr noundef, i32 noundef, i32 noundef, i64 noundef) #15

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #6 align 16 !dbg !7535 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7539, metadata !DIExpression()), !dbg !7541
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !7540, metadata !DIExpression()), !dbg !7542
  %0 = load i32, ptr %flags.addr, align 4, !dbg !7543
  %and = and i32 %0, 17, !dbg !7543
  %cmp = icmp eq i32 %and, 0, !dbg !7543
  %lnot = xor i1 %cmp, true, !dbg !7543
  %lnot1 = xor i1 %lnot, true, !dbg !7543
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7543
  %conv = sext i32 %lnot.ext to i64, !dbg !7543
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !7543
  %tobool = icmp ne i64 %expval, 0, !dbg !7543
  br i1 %tobool, label %if.then, label %if.end, !dbg !7545

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7546
  br label %return, !dbg !7546

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !7547
  %and2 = and i32 %1, 1, !dbg !7549
  %tobool3 = icmp ne i32 %and2, 0, !dbg !7549
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !7550

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !7551
  br label %return, !dbg !7551

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !7552
  br label %return, !dbg !7552

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !7554
  ret i32 %2, !dbg !7554
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7555 dso_local noalias ptr @__kmalloc_node(i64 noundef, i32 noundef, i32 noundef) #14

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !7556 dso_local void @__compiletime_assert_256() #16

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #11 = { nocallback nounwind }
attributes #12 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone null_pointer_is_valid allocsize(3) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { nounwind }
attributes #18 = { noredzone }
attributes #19 = { noredzone allocsize(0) }
attributes #20 = { nounwind memory(none) }
attributes #21 = { noredzone allocsize(3) }
attributes #22 = { noredzone noreturn }

!llvm.dbg.cu = !{!9}
!llvm.named.register.rsp = !{!5650}
!llvm.module.flags = !{!5651, !5652, !5653, !5654, !5655, !5656, !5657, !5658}
!llvm.ident = !{!5659}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 412, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "block/blk-flush.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "db2728c0fb59290186fb7c8138f7a0c2")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 18)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_blkdev_issue_flush353", scope: !9, file: !2, line: 484, type: !287, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF block/.blk-flush.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22block/blk-flush\22 -D KBUILD_BASENAME=\22blk_flush\22 -D KBUILD_MODNAME=\22blk_flush\22 -D __KBUILD_MODNAME=kmod_blk_flush -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o block/blk-flush.ll block/blk-flush.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !283, globals: !5594, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !19, !24, !30, !38, !46, !62, !68, !74, !81, !86, !94, !102, !108, !117, !122, !127, !133, !139, !146, !153, !160, !165, !169, !174, !179, !183, !207, !212, !220, !237, !243, !250, !267, !273}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !12, line: 312, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!16 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!17 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!18 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !20, line: 2052, baseType: !13, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!21 = !{!22, !23}
!22 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!23 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !25, line: 54, baseType: !13, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!26 = !{!27, !28, !29}
!27 = !DIEnumerator(name: "USRQUOTA", value: 0)
!28 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!29 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !31, line: 68, baseType: !13, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!32 = !{!33, !34, !35, !36, !37}
!33 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!34 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!35 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!36 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!37 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !39, line: 9, baseType: !13, size: 32, elements: !40)
!39 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!40 = !{!41, !42, !43, !44, !45}
!41 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!42 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!43 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!44 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!45 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !47, line: 1325, baseType: !13, size: 32, elements: !48)
!47 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!48 = !{!49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61}
!49 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!50 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!51 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!52 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!53 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!54 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!55 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!56 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!57 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!58 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!59 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!60 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!61 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_unique_id", file: !63, line: 1381, baseType: !13, size: 32, elements: !64)
!63 = !DIFile(filename: "./include/linux/blkdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "802ed60c7d9aff392515db0b7890881d")
!64 = !{!65, !66, !67}
!65 = !DIEnumerator(name: "BLK_UID_T10", value: 1)
!66 = !DIEnumerator(name: "BLK_UID_EUI64", value: 2)
!67 = !DIEnumerator(name: "BLK_UID_NAA", value: 3)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !69, line: 45, baseType: !13, size: 32, elements: !70)
!69 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!70 = !{!71, !72, !73}
!71 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!72 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!73 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !75, line: 487, baseType: !13, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!76 = !{!77, !78, !79, !80}
!77 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!78 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!79 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!80 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !82, line: 65, baseType: !13, size: 32, elements: !83)
!82 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!83 = !{!84, !85}
!84 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!85 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !87, line: 620, baseType: !13, size: 32, elements: !88)
!87 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!88 = !{!89, !90, !91, !92, !93}
!89 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!90 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!91 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!92 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!93 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !87, line: 597, baseType: !95, size: 32, elements: !96)
!95 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!96 = !{!97, !98, !99, !100, !101}
!97 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!98 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!99 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!100 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!101 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !103, line: 26, baseType: !13, size: 32, elements: !104)
!103 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!104 = !{!105, !106, !107}
!105 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!106 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!107 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !75, line: 547, baseType: !13, size: 32, elements: !109)
!109 = !{!110, !111, !112, !113, !114, !115, !116}
!110 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!111 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!112 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!113 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!114 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!115 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!116 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !75, line: 564, baseType: !13, size: 32, elements: !118)
!118 = !{!119, !120, !121}
!119 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!120 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!121 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !75, line: 577, baseType: !13, size: 32, elements: !123)
!123 = !{!124, !125, !126}
!124 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!125 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!126 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !75, line: 503, baseType: !13, size: 32, elements: !128)
!128 = !{!129, !130, !131, !132}
!129 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!130 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!131 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!132 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !134, line: 16, baseType: !13, size: 32, elements: !135)
!134 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!135 = !{!136, !137, !138}
!136 = !DIEnumerator(name: "TT_NONE", value: 0)
!137 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!138 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !140, line: 51, baseType: !13, size: 32, elements: !141)
!140 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!141 = !{!142, !143, !144, !145}
!142 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!143 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!144 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!145 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !147, line: 15, baseType: !13, size: 32, elements: !148)
!147 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!148 = !{!149, !150, !151, !152}
!149 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!150 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!151 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!152 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "elv_merge", file: !154, line: 16, baseType: !13, size: 32, elements: !155)
!154 = !DIFile(filename: "block/elevator.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f2c1e08cf51857d27273f234ecff22b")
!155 = !{!156, !157, !158, !159}
!156 = !DIEnumerator(name: "ELEVATOR_NO_MERGE", value: 0)
!157 = !DIEnumerator(name: "ELEVATOR_FRONT_MERGE", value: 1)
!158 = !DIEnumerator(name: "ELEVATOR_BACK_MERGE", value: 2)
!159 = !DIEnumerator(name: "ELEVATOR_DISCARD_MERGE", value: 3)
!160 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_eh_timer_return", file: !161, line: 276, baseType: !13, size: 32, elements: !162)
!161 = !DIFile(filename: "./include/linux/blk-mq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "62cf1706db3683ee75df9cf32a2cf47d")
!162 = !{!163, !164}
!163 = !DIEnumerator(name: "BLK_EH_DONE", value: 0)
!164 = !DIEnumerator(name: "BLK_EH_RESET_TIMER", value: 1)
!165 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_bounce", file: !63, line: 295, baseType: !13, size: 32, elements: !166)
!166 = !{!167, !168}
!167 = !DIEnumerator(name: "BLK_BOUNCE_NONE", value: 0)
!168 = !DIEnumerator(name: "BLK_BOUNCE_HIGH", value: 1)
!169 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_zoned_model", file: !63, line: 285, baseType: !13, size: 32, elements: !170)
!170 = !{!171, !172, !173}
!171 = !DIEnumerator(name: "BLK_ZONED_NONE", value: 0)
!172 = !DIEnumerator(name: "BLK_ZONED_HA", value: 1)
!173 = !DIEnumerator(name: "BLK_ZONED_HM", value: 2)
!174 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mq_rq_state", file: !161, line: 68, baseType: !13, size: 32, elements: !175)
!175 = !{!176, !177, !178}
!176 = !DIEnumerator(name: "MQ_RQ_IDLE", value: 0)
!177 = !DIEnumerator(name: "MQ_RQ_IN_FLIGHT", value: 1)
!178 = !DIEnumerator(name: "MQ_RQ_COMPLETE", value: 2)
!179 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rq_end_io_ret", file: !161, line: 18, baseType: !13, size: 32, elements: !180)
!180 = !{!181, !182}
!181 = !DIEnumerator(name: "RQ_END_IO_NONE", value: 0)
!182 = !DIEnumerator(name: "RQ_END_IO_FREE", value: 1)
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "req_flag_bits", file: !184, line: 404, baseType: !13, size: 32, elements: !185)
!184 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!185 = !{!186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206}
!186 = !DIEnumerator(name: "__REQ_FAILFAST_DEV", value: 8)
!187 = !DIEnumerator(name: "__REQ_FAILFAST_TRANSPORT", value: 9)
!188 = !DIEnumerator(name: "__REQ_FAILFAST_DRIVER", value: 10)
!189 = !DIEnumerator(name: "__REQ_SYNC", value: 11)
!190 = !DIEnumerator(name: "__REQ_META", value: 12)
!191 = !DIEnumerator(name: "__REQ_PRIO", value: 13)
!192 = !DIEnumerator(name: "__REQ_NOMERGE", value: 14)
!193 = !DIEnumerator(name: "__REQ_IDLE", value: 15)
!194 = !DIEnumerator(name: "__REQ_INTEGRITY", value: 16)
!195 = !DIEnumerator(name: "__REQ_FUA", value: 17)
!196 = !DIEnumerator(name: "__REQ_PREFLUSH", value: 18)
!197 = !DIEnumerator(name: "__REQ_RAHEAD", value: 19)
!198 = !DIEnumerator(name: "__REQ_BACKGROUND", value: 20)
!199 = !DIEnumerator(name: "__REQ_NOWAIT", value: 21)
!200 = !DIEnumerator(name: "__REQ_POLLED", value: 22)
!201 = !DIEnumerator(name: "__REQ_ALLOC_CACHE", value: 23)
!202 = !DIEnumerator(name: "__REQ_SWAP", value: 24)
!203 = !DIEnumerator(name: "__REQ_DRV", value: 25)
!204 = !DIEnumerator(name: "__REQ_FS_PRIVATE", value: 26)
!205 = !DIEnumerator(name: "__REQ_NOUNMAP", value: 27)
!206 = !DIEnumerator(name: "__REQ_NR_BITS", value: 28)
!207 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !208, line: 10, baseType: !13, size: 32, elements: !209)
!208 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!209 = !{!210, !211}
!210 = !DIEnumerator(name: "false", value: 0)
!211 = !DIEnumerator(name: "true", value: 1)
!212 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 78, baseType: !13, size: 32, elements: !213)
!213 = !{!214, !215, !216, !217, !218, !219}
!214 = !DIEnumerator(name: "REQ_FSEQ_PREFLUSH", value: 1)
!215 = !DIEnumerator(name: "REQ_FSEQ_DATA", value: 2)
!216 = !DIEnumerator(name: "REQ_FSEQ_POSTFLUSH", value: 4)
!217 = !DIEnumerator(name: "REQ_FSEQ_DONE", value: 8)
!218 = !DIEnumerator(name: "REQ_FSEQ_ACTIONS", value: 7)
!219 = !DIEnumerator(name: "FLUSH_PENDING_TIMEOUT", value: 5000)
!220 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "req_op", file: !184, line: 371, baseType: !13, size: 32, elements: !221)
!221 = !{!222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236}
!222 = !DIEnumerator(name: "REQ_OP_READ", value: 0)
!223 = !DIEnumerator(name: "REQ_OP_WRITE", value: 1)
!224 = !DIEnumerator(name: "REQ_OP_FLUSH", value: 2)
!225 = !DIEnumerator(name: "REQ_OP_DISCARD", value: 3)
!226 = !DIEnumerator(name: "REQ_OP_SECURE_ERASE", value: 5)
!227 = !DIEnumerator(name: "REQ_OP_WRITE_ZEROES", value: 9)
!228 = !DIEnumerator(name: "REQ_OP_ZONE_OPEN", value: 10)
!229 = !DIEnumerator(name: "REQ_OP_ZONE_CLOSE", value: 11)
!230 = !DIEnumerator(name: "REQ_OP_ZONE_FINISH", value: 12)
!231 = !DIEnumerator(name: "REQ_OP_ZONE_APPEND", value: 13)
!232 = !DIEnumerator(name: "REQ_OP_ZONE_RESET", value: 15)
!233 = !DIEnumerator(name: "REQ_OP_ZONE_RESET_ALL", value: 17)
!234 = !DIEnumerator(name: "REQ_OP_DRV_IN", value: 34)
!235 = !DIEnumerator(name: "REQ_OP_DRV_OUT", value: 35)
!236 = !DIEnumerator(name: "REQ_OP_LAST", value: 36)
!237 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !238, line: 33, baseType: !13, size: 32, elements: !239)
!238 = !DIFile(filename: "block/blk-mq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eaaa52c8c9e7dda989aa14aea0f2d4c3")
!239 = !{!240, !241, !242}
!240 = !DIEnumerator(name: "BLK_MQ_NO_TAG", value: 4294967295, isUnsigned: true)
!241 = !DIEnumerator(name: "BLK_MQ_TAG_MIN", value: 1)
!242 = !DIEnumerator(name: "BLK_MQ_TAG_MAX", value: 4294967294, isUnsigned: true)
!243 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "stat_group", file: !184, line: 466, baseType: !13, size: 32, elements: !244)
!244 = !{!245, !246, !247, !248, !249}
!245 = !DIEnumerator(name: "STAT_READ", value: 0)
!246 = !DIEnumerator(name: "STAT_WRITE", value: 1)
!247 = !DIEnumerator(name: "STAT_DISCARD", value: 2)
!248 = !DIEnumerator(name: "STAT_FLUSH", value: 3)
!249 = !DIEnumerator(name: "NR_STAT_GROUPS", value: 4)
!250 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !161, line: 650, baseType: !13, size: 32, elements: !251)
!251 = !{!252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266}
!252 = !DIEnumerator(name: "BLK_MQ_F_SHOULD_MERGE", value: 1)
!253 = !DIEnumerator(name: "BLK_MQ_F_TAG_QUEUE_SHARED", value: 2)
!254 = !DIEnumerator(name: "BLK_MQ_F_STACKING", value: 4)
!255 = !DIEnumerator(name: "BLK_MQ_F_TAG_HCTX_SHARED", value: 8)
!256 = !DIEnumerator(name: "BLK_MQ_F_BLOCKING", value: 32)
!257 = !DIEnumerator(name: "BLK_MQ_F_NO_SCHED", value: 64)
!258 = !DIEnumerator(name: "BLK_MQ_F_NO_SCHED_BY_DEFAULT", value: 128)
!259 = !DIEnumerator(name: "BLK_MQ_F_ALLOC_POLICY_START_BIT", value: 8)
!260 = !DIEnumerator(name: "BLK_MQ_F_ALLOC_POLICY_BITS", value: 1)
!261 = !DIEnumerator(name: "BLK_MQ_S_STOPPED", value: 0)
!262 = !DIEnumerator(name: "BLK_MQ_S_TAG_ACTIVE", value: 1)
!263 = !DIEnumerator(name: "BLK_MQ_S_SCHED_RESTART", value: 2)
!264 = !DIEnumerator(name: "BLK_MQ_S_INACTIVE", value: 3)
!265 = !DIEnumerator(name: "BLK_MQ_MAX_DEPTH", value: 10240)
!266 = !DIEnumerator(name: "BLK_MQ_CPU_WORK_BATCH", value: 8)
!267 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hctx_type", file: !161, line: 457, baseType: !13, size: 32, elements: !268)
!268 = !{!269, !270, !271, !272}
!269 = !DIEnumerator(name: "HCTX_TYPE_DEFAULT", value: 0)
!270 = !DIEnumerator(name: "HCTX_TYPE_READ", value: 1)
!271 = !DIEnumerator(name: "HCTX_TYPE_POLL", value: 2)
!272 = !DIEnumerator(name: "HCTX_MAX_TYPES", value: 3)
!273 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !274, line: 364, baseType: !13, size: 32, elements: !275)
!274 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!275 = !{!276, !277, !278, !279, !280, !281, !282}
!276 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!277 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!278 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!279 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!280 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!281 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!282 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!283 = !{!284, !287, !95, !288, !290, !13, !5584, !1184, !3116, !696, !424, !381, !5251, !5587, !5589, !5590, !5591, !582, !5593, !1347}
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_opf_t", file: !184, line: 256, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !286, line: 27, baseType: !13)
!286 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !174)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request", file: !161, line: 80, size: 1984, elements: !292)
!292 = !{!293, !5530, !5531, !5532, !5533, !5534, !5535, !5536, !5537, !5538, !5539, !5540, !5541, !5546, !5547, !5548, !5549, !5550, !5551, !5552, !5553, !5554, !5555, !5556, !5561, !5566, !5572, !5581, !5582, !5583}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !291, file: !161, line: 81, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !63, line: 391, size: 7296, elements: !296)
!296 = !{!297, !298, !5340, !5341, !5344, !5347, !5348, !5445, !5446, !5447, !5448, !5449, !5450, !5451, !5452, !5453, !5454, !5455, !5456, !5457, !5458, !5459, !5460, !5461, !5462, !5463, !5464, !5465, !5466, !5467, !5468, !5469, !5470, !5471, !5504, !5505, !5506, !5509, !5510, !5511, !5512, !5513, !5514, !5515, !5516, !5517, !5518, !5519, !5520, !5521, !5522, !5523, !5524, !5525, !5526, !5527, !5528, !5529}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "last_merge", scope: !295, file: !63, line: 392, baseType: !290, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "elevator", scope: !295, file: !63, line: 393, baseType: !299, size: 64, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_queue", file: !154, line: 114, size: 5056, elements: !301)
!301 = !{!302, !5334, !5335, !5336, !5337, !5338}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !300, file: !154, line: 116, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_type", file: !154, line: 64, size: 2368, elements: !305)
!305 = !{!306, !310, !5305, !5306, !5307, !5320, !5321, !5322, !5323, !5324, !5328, !5329, !5333}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "icq_cache", scope: !304, file: !154, line: 67, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !309, line: 11, flags: DIFlagFwdDecl)
!309 = !DIFile(filename: "./include/linux/mempool.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ef8a210e9c9e696cc7d6e9be9316611")
!310 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !304, file: !154, line: 70, baseType: !311, size: 1408, offset: 64)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_mq_ops", file: !154, line: 26, size: 1408, elements: !312)
!312 = !{!313, !317, !321, !5210, !5214, !5218, !5222, !5226, !5230, !5234, !5238, !5256, !5260, !5261, !5266, !5270, !5274, !5278, !5279, !5283, !5284, !5304}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "init_sched", scope: !311, file: !154, line: 27, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{!95, !294, !303}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "exit_sched", scope: !311, file: !154, line: 28, baseType: !318, size: 64, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{null, !299}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "init_hctx", scope: !311, file: !154, line: 29, baseType: !322, size: 64, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!95, !325, !13}
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_hw_ctx", file: !161, line: 288, size: 4096, elements: !327)
!327 = !{!328, !382, !429, !439, !440, !441, !442, !443, !444, !461, !462, !482, !5151, !5152, !5153, !5154, !5156, !5157, !5170, !5171, !5199, !5200, !5201, !5202, !5203, !5204, !5205, !5206, !5207, !5208, !5209}
!328 = !DIDerivedType(tag: DW_TAG_member, scope: !326, file: !161, line: 289, baseType: !329, size: 512, align: 512)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !326, file: !161, line: 289, size: 512, align: 512, elements: !330)
!330 = !{!331, !374, !380}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !329, file: !161, line: 291, baseType: !332, size: 32)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !333, line: 29, baseType: !334)
!333 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !333, line: 17, size: 32, elements: !335)
!335 = !{!336}
!336 = !DIDerivedType(tag: DW_TAG_member, scope: !334, file: !333, line: 18, baseType: !337, size: 32)
!337 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !334, file: !333, line: 18, size: 32, elements: !338)
!338 = !{!339}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !337, file: !333, line: 19, baseType: !340, size: 32)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !341, line: 14, size: 32, elements: !342)
!341 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!342 = !{!343}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !340, file: !341, line: 15, baseType: !344, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !345, line: 44, baseType: !346)
!345 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !345, line: 14, size: 32, elements: !347)
!347 = !{!348}
!348 = !DIDerivedType(tag: DW_TAG_member, scope: !346, file: !345, line: 15, baseType: !349, size: 32)
!349 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !346, file: !345, line: 15, size: 32, elements: !350)
!350 = !{!351, !357, !366}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !349, file: !345, line: 16, baseType: !352, size: 32)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !353, line: 174, baseType: !354)
!353 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !353, line: 172, size: 32, elements: !355)
!355 = !{!356}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !354, file: !353, line: 173, baseType: !95, size: 32)
!357 = !DIDerivedType(tag: DW_TAG_member, scope: !349, file: !345, line: 24, baseType: !358, size: 16)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !349, file: !345, line: 24, size: 16, elements: !359)
!359 = !{!360, !365}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !358, file: !345, line: 25, baseType: !361, size: 8)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !362, line: 17, baseType: !363)
!362 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !286, line: 21, baseType: !364)
!364 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !358, file: !345, line: 26, baseType: !361, size: 8, offset: 8)
!366 = !DIDerivedType(tag: DW_TAG_member, scope: !349, file: !345, line: 28, baseType: !367, size: 32)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !349, file: !345, line: 28, size: 32, elements: !368)
!368 = !{!369, !373}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !367, file: !345, line: 29, baseType: !370, size: 16)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !362, line: 19, baseType: !371)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !286, line: 24, baseType: !372)
!372 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !367, file: !345, line: 30, baseType: !370, size: 16, offset: 16)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !329, file: !161, line: 299, baseType: !375, size: 128, offset: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !353, line: 190, size: 128, elements: !376)
!376 = !{!377, !379}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !375, file: !353, line: 191, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !375, file: !353, line: 191, baseType: !378, size: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !329, file: !161, line: 304, baseType: !381, size: 64, offset: 192)
!381 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "run_work", scope: !326, file: !161, line: 310, baseType: !383, size: 704, offset: 512)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !384, line: 111, size: 704, elements: !385)
!384 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!385 = !{!386, !406, !425, !428}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !383, file: !384, line: 112, baseType: !387, size: 256)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !384, line: 98, size: 256, elements: !388)
!388 = !{!389, !399, !400}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !387, file: !384, line: 99, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !391, line: 13, baseType: !392)
!391 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !353, line: 181, baseType: !393)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !353, line: 179, size: 64, elements: !394)
!394 = !{!395}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !393, file: !353, line: 180, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !362, line: 22, baseType: !397)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !286, line: 30, baseType: !398)
!398 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !387, file: !384, line: 100, baseType: !375, size: 128, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !387, file: !384, line: 101, baseType: !401, size: 64, offset: 192)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !384, line: 21, baseType: !402)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{null, !405}
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !383, file: !384, line: 113, baseType: !407, size: 320, offset: 256)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !408, line: 11, size: 320, elements: !409)
!408 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!409 = !{!410, !417, !418, !423}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !407, file: !408, line: 16, baseType: !411, size: 128)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !353, line: 198, size: 128, elements: !412)
!412 = !{!413, !415}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !411, file: !353, line: 199, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !411, file: !353, line: 199, baseType: !416, size: 64, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !407, file: !408, line: 17, baseType: !381, size: 64, offset: 128)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !407, file: !408, line: 18, baseType: !419, size: 64, offset: 192)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{null, !422}
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !407, file: !408, line: 19, baseType: !424, size: 32, offset: 256)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !362, line: 21, baseType: !285)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !383, file: !384, line: 116, baseType: !426, size: 64, offset: 576)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !384, line: 18, flags: DIFlagFwdDecl)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !383, file: !384, line: 117, baseType: !95, size: 32, offset: 640)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !326, file: !161, line: 312, baseType: !430, size: 64, offset: 1216)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !431, line: 913, baseType: !432)
!431 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 64, elements: !437)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !431, line: 19, size: 64, elements: !434)
!434 = !{!435}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !433, file: !431, line: 19, baseType: !436, size: 64)
!436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 64, elements: !437)
!437 = !{!438}
!438 = !DISubrange(count: 1)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "next_cpu", scope: !326, file: !161, line: 317, baseType: !95, size: 32, offset: 1280)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "next_cpu_batch", scope: !326, file: !161, line: 322, baseType: !95, size: 32, offset: 1312)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !326, file: !161, line: 325, baseType: !381, size: 64, offset: 1344)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "sched_data", scope: !326, file: !161, line: 331, baseType: !287, size: 64, offset: 1408)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !326, file: !161, line: 335, baseType: !294, size: 64, offset: 1472)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !326, file: !161, line: 337, baseType: !445, size: 64, offset: 1536)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_flush_queue", file: !447, line: 17, size: 512, elements: !448)
!447 = !DIFile(filename: "block/blk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "08e4a891c7a7b1c380cd6f0c6d03b93a")
!448 = !{!449, !450, !451, !452, !454, !455, !459, !460}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "mq_flush_lock", scope: !446, file: !447, line: 18, baseType: !332, size: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "flush_pending_idx", scope: !446, file: !447, line: 19, baseType: !13, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "flush_running_idx", scope: !446, file: !447, line: 20, baseType: !13, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "rq_status", scope: !446, file: !447, line: 21, baseType: !453, size: 8, offset: 40)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_status_t", file: !184, line: 97, baseType: !361)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "flush_pending_since", scope: !446, file: !447, line: 22, baseType: !381, size: 64, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "flush_queue", scope: !446, file: !447, line: 23, baseType: !456, size: 256, offset: 128)
!456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !375, size: 256, elements: !457)
!457 = !{!458}
!458 = !DISubrange(count: 2)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "flush_data_in_flight", scope: !446, file: !447, line: 24, baseType: !381, size: 64, offset: 384)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "flush_rq", scope: !446, file: !447, line: 25, baseType: !290, size: 64, offset: 448)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !326, file: !161, line: 343, baseType: !287, size: 64, offset: 1600)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_map", scope: !326, file: !161, line: 349, baseType: !463, size: 256, offset: 1664)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbitmap", file: !464, line: 52, size: 256, elements: !465)
!464 = !DIFile(filename: "./include/linux/sbitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c1a10e3a5ba3f1b25200b1abce63f43a")
!465 = !{!466, !467, !468, !469, !472, !480}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !463, file: !464, line: 56, baseType: !13, size: 32)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !463, file: !464, line: 61, baseType: !13, size: 32, offset: 32)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "map_nr", scope: !463, file: !464, line: 66, baseType: !13, size: 32, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "round_robin", scope: !463, file: !464, line: 71, baseType: !470, size: 8, offset: 96)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !353, line: 35, baseType: !471)
!471 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !463, file: !464, line: 76, baseType: !473, size: 64, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbitmap_word", file: !464, line: 29, size: 1024, align: 512, elements: !475)
!475 = !{!476, !477, !478}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !474, file: !464, line: 33, baseType: !381, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "cleared", scope: !474, file: !464, line: 38, baseType: !381, size: 64, align: 512, offset: 512)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "swap_lock", scope: !474, file: !464, line: 43, baseType: !479, size: 32, offset: 576)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !341, line: 23, baseType: !340)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_hint", scope: !463, file: !464, line: 84, baseType: !481, size: 64, offset: 192)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_from", scope: !326, file: !161, line: 355, baseType: !483, size: 64, offset: 1920)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ctx", file: !238, line: 18, size: 1536, align: 512, elements: !485)
!485 = !{!486, !494, !495, !497, !499, !500, !5150}
!486 = !DIDerivedType(tag: DW_TAG_member, scope: !484, file: !238, line: 19, baseType: !487, size: 512, align: 512)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !484, file: !238, line: 19, size: 512, align: 512, elements: !488)
!488 = !{!489, !490}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !487, file: !238, line: 20, baseType: !332, size: 32)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "rq_lists", scope: !487, file: !238, line: 21, baseType: !491, size: 384, offset: 64)
!491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !375, size: 384, elements: !492)
!492 = !{!493}
!493 = !DISubrange(count: 3)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !484, file: !238, line: 24, baseType: !13, size: 32, offset: 512)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "index_hw", scope: !484, file: !238, line: 25, baseType: !496, size: 48, offset: 544)
!496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 48, elements: !492)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "hctxs", scope: !484, file: !238, line: 26, baseType: !498, size: 192, offset: 640)
!498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 192, elements: !492)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !484, file: !238, line: 28, baseType: !294, size: 64, offset: 832)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "ctxs", scope: !484, file: !238, line: 29, baseType: !501, size: 64, offset: 896)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ctxs", file: !238, line: 10, size: 576, elements: !503)
!503 = !{!504, !5149}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !502, file: !238, line: 11, baseType: !505, size: 512)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !506, line: 64, size: 512, elements: !507)
!506 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!507 = !{!508, !511, !512, !514, !559, !5036, !5139, !5144, !5145, !5146, !5147, !5148}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !505, file: !506, line: 65, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !505, file: !506, line: 66, baseType: !375, size: 128, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !505, file: !506, line: 67, baseType: !513, size: 64, offset: 192)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !505, file: !506, line: 68, baseType: !515, size: 64, offset: 256)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !506, line: 168, size: 768, elements: !517)
!517 = !{!518, !519, !520, !521}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !516, file: !506, line: 169, baseType: !375, size: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !516, file: !506, line: 170, baseType: !332, size: 32, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !516, file: !506, line: 171, baseType: !505, size: 512, offset: 192)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !516, file: !506, line: 172, baseType: !522, size: 64, offset: 704)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !524)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !506, line: 133, size: 192, elements: !525)
!525 = !{!526, !533, !538}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !524, file: !506, line: 134, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !528)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!95, !531}
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !505)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !524, file: !506, line: 135, baseType: !534, size: 64, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !535)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!509, !531}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !524, file: !506, line: 136, baseType: !539, size: 64, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !540)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!95, !531, !543}
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !506, line: 125, size: 20736, elements: !545)
!545 = !{!546, !549, !553, !554, !558}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !544, file: !506, line: 126, baseType: !547, size: 192)
!547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !548, size: 192, elements: !492)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !544, file: !506, line: 127, baseType: !550, size: 4096, offset: 192)
!550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !548, size: 4096, elements: !551)
!551 = !{!552}
!552 = !DISubrange(count: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !544, file: !506, line: 128, baseType: !95, size: 32, offset: 4288)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !544, file: !506, line: 129, baseType: !555, size: 16384, offset: 4320)
!555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !556)
!556 = !{!557}
!557 = !DISubrange(count: 2048)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !544, file: !506, line: 130, baseType: !95, size: 32, offset: 20704)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !505, file: !506, line: 69, baseType: !560, size: 64, offset: 320)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !562)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !506, line: 116, size: 384, elements: !563)
!563 = !{!564, !568, !596, !5024, !5028, !5032}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !562, file: !506, line: 117, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{null, !513}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !562, file: !506, line: 118, baseType: !569, size: 64, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !571)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !572, line: 254, size: 128, elements: !573)
!572 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!573 = !{!574, !589}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !571, file: !572, line: 255, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!578, !513, !583, !548}
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !353, line: 66, baseType: !579)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !580, line: 73, baseType: !581)
!580 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !580, line: 15, baseType: !582)
!582 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !572, line: 30, size: 128, elements: !585)
!585 = !{!586, !587}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !584, file: !572, line: 31, baseType: !509, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !584, file: !572, line: 32, baseType: !588, size: 16, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !353, line: 24, baseType: !372)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !571, file: !572, line: 256, baseType: !590, size: 64, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!578, !513, !583, !509, !593}
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !353, line: 61, baseType: !594)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !580, line: 72, baseType: !595)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !580, line: 16, baseType: !381)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !562, file: !506, line: 119, baseType: !597, size: 64, offset: 128)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !600)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !572, line: 84, size: 320, elements: !601)
!601 = !{!602, !603, !607, !5020, !5022}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !600, file: !572, line: 85, baseType: !509, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !600, file: !572, line: 86, baseType: !604, size: 64, offset: 64)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{!588, !513, !583, !95}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !600, file: !572, line: 88, baseType: !608, size: 64, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{!588, !513, !611, !95}
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !572, line: 175, size: 512, elements: !613)
!613 = !{!614, !615, !616, !617, !5011, !5015, !5016}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !612, file: !572, line: 176, baseType: !584, size: 128)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !612, file: !572, line: 177, baseType: !593, size: 64, offset: 128)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !612, file: !572, line: 178, baseType: !287, size: 64, offset: 192)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !612, file: !572, line: 179, baseType: !618, size: 64, offset: 256)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!621}
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !20, line: 472, size: 1536, align: 64, elements: !623)
!623 = !{!624, !4848, !4849, !4850, !4851, !4852, !4853, !4854, !4855, !5005, !5006, !5007, !5008, !5009, !5010}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !622, file: !20, line: 473, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !20, line: 641, size: 4800, elements: !627)
!627 = !{!628, !629, !630, !638, !639, !646, !647, !650, !651, !4786, !4787, !4788, !4789, !4790, !4796, !4797, !4798, !4799, !4800, !4801, !4802, !4803, !4804, !4805, !4806, !4807, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4819, !4820, !4821, !4822, !4823, !4824, !4825, !4830, !4833, !4834, !4835, !4844, !4845, !4846, !4847}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !626, file: !20, line: 642, baseType: !588, size: 16)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !626, file: !20, line: 643, baseType: !372, size: 16, offset: 16)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !626, file: !20, line: 644, baseType: !631, size: 32, offset: 32)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !632, line: 23, baseType: !633)
!632 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !632, line: 21, size: 32, elements: !634)
!634 = !{!635}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !633, file: !632, line: 22, baseType: !636, size: 32)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !353, line: 37, baseType: !637)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !580, line: 49, baseType: !13)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !626, file: !20, line: 645, baseType: !375, size: 128, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !626, file: !20, line: 646, baseType: !640, size: 32, offset: 192)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !632, line: 28, baseType: !641)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !632, line: 26, size: 32, elements: !642)
!642 = !{!643}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !641, file: !632, line: 27, baseType: !644, size: 32)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !353, line: 38, baseType: !645)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !580, line: 50, baseType: !13)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !626, file: !20, line: 647, baseType: !13, size: 32, offset: 224)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !626, file: !20, line: 650, baseType: !648, size: 64, offset: 256)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !20, line: 607, flags: DIFlagFwdDecl)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !626, file: !20, line: 651, baseType: !648, size: 64, offset: 320)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !626, file: !20, line: 654, baseType: !652, size: 64, offset: 384)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !654)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !20, line: 1966, size: 2048, align: 512, elements: !655)
!655 = !{!656, !4620, !4630, !4634, !4638, !4642, !4646, !4650, !4654, !4658, !4662, !4663, !4667, !4671, !4708, !4737, !4741, !4747, !4751, !4755, !4759, !4763, !4767, !4773, !4777}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !654, file: !20, line: 1967, baseType: !657, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{!660, !625, !660, !13}
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !662, line: 82, size: 1536, elements: !663)
!662 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!663 = !{!664, !665, !675, !683, !684, !702, !703, !707, !720, !4603, !4604, !4605, !4606, !4612, !4613, !4614}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !661, file: !662, line: 84, baseType: !13, size: 32)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !661, file: !662, line: 85, baseType: !666, size: 32, offset: 32)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !667, line: 275, baseType: !668)
!667 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !667, line: 275, size: 32, elements: !669)
!669 = !{!670}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !668, file: !667, line: 275, baseType: !671, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !667, line: 69, baseType: !672)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !667, line: 64, size: 32, elements: !673)
!673 = !{!674}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !672, file: !667, line: 65, baseType: !13, size: 32)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !661, file: !662, line: 86, baseType: !676, size: 128, offset: 64)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !677, line: 38, size: 128, elements: !678)
!677 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!678 = !{!679, !681}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !676, file: !677, line: 39, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !676, file: !677, line: 39, baseType: !682, size: 64, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !661, file: !662, line: 87, baseType: !660, size: 64, offset: 192)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !661, file: !662, line: 88, baseType: !685, size: 128, offset: 256)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !662, line: 49, size: 128, elements: !686)
!686 = !{!687, !699}
!687 = !DIDerivedType(tag: DW_TAG_member, scope: !685, file: !662, line: 50, baseType: !688, size: 64)
!688 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !685, file: !662, line: 50, size: 64, elements: !689)
!689 = !{!690, !695}
!690 = !DIDerivedType(tag: DW_TAG_member, scope: !688, file: !662, line: 51, baseType: !691, size: 64)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !688, file: !662, line: 51, size: 64, elements: !692)
!692 = !{!693, !694}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !691, file: !662, line: 52, baseType: !424, size: 32)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !691, file: !662, line: 52, baseType: !424, size: 32, offset: 32)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !688, file: !662, line: 54, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !362, line: 23, baseType: !697)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !286, line: 31, baseType: !698)
!698 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !685, file: !662, line: 56, baseType: !700, size: 64, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !364)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !661, file: !662, line: 89, baseType: !625, size: 64, offset: 384)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !661, file: !662, line: 91, baseType: !704, size: 256, offset: 448)
!704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 256, elements: !705)
!705 = !{!706}
!706 = !DISubrange(count: 32)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !661, file: !662, line: 94, baseType: !708, size: 64, offset: 704)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !709, line: 25, size: 64, elements: !710)
!709 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!710 = !{!711}
!711 = !DIDerivedType(tag: DW_TAG_member, scope: !708, file: !709, line: 26, baseType: !712, size: 64)
!712 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !708, file: !709, line: 26, size: 64, elements: !713)
!713 = !{!714, !715}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !712, file: !709, line: 28, baseType: !697, size: 64, align: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, scope: !712, file: !709, line: 30, baseType: !716, size: 64)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !712, file: !709, line: 30, size: 64, elements: !717)
!717 = !{!718, !719}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !716, file: !709, line: 31, baseType: !332, size: 32)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !716, file: !709, line: 32, baseType: !95, size: 32, offset: 32)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !661, file: !662, line: 95, baseType: !721, size: 64, offset: 768)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !723)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !662, line: 128, size: 1024, align: 512, elements: !724)
!724 = !{!725, !729, !730, !737, !743, !747, !751, !755, !756, !760, !764, !4593, !4597}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !723, file: !662, line: 129, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{!95, !660, !13}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !723, file: !662, line: 130, baseType: !726, size: 64, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !723, file: !662, line: 131, baseType: !731, size: 64, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{!95, !734, !736}
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !661)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !723, file: !662, line: 132, baseType: !738, size: 64, offset: 192)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!95, !734, !13, !509, !741}
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !685)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !723, file: !662, line: 134, baseType: !744, size: 64, offset: 256)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DISubroutineType(types: !746)
!746 = !{!95, !734}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !723, file: !662, line: 135, baseType: !748, size: 64, offset: 320)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{!95, !660}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !723, file: !662, line: 136, baseType: !752, size: 64, offset: 384)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DISubroutineType(types: !754)
!754 = !{null, !660}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !723, file: !662, line: 137, baseType: !752, size: 64, offset: 448)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !723, file: !662, line: 138, baseType: !757, size: 64, offset: 512)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{null, !660, !625}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !723, file: !662, line: 139, baseType: !761, size: 64, offset: 576)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{!548, !660, !548, !95}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !723, file: !662, line: 140, baseType: !765, size: 64, offset: 640)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{!768, !4592}
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !770, line: 70, size: 256, elements: !771)
!770 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!771 = !{!772, !773, !4588, !4589}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !769, file: !770, line: 71, baseType: !660, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !769, file: !770, line: 72, baseType: !774, size: 64, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !20, line: 1190, size: 10752, elements: !776)
!776 = !{!777, !778, !781, !782, !783, !786, !1216, !1356, !1396, !1486, !1490, !1491, !1492, !1493, !1494, !1503, !1504, !1505, !1506, !1511, !1515, !1516, !3327, !3333, !3334, !3337, !3338, !3339, !3380, !4522, !4523, !4524, !4525, !4526, !4527, !4530, !4531, !4538, !4539, !4540, !4541, !4542, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4564, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4587}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !775, file: !20, line: 1191, baseType: !375, size: 128)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !775, file: !20, line: 1192, baseType: !779, size: 32, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !353, line: 21, baseType: !780)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !353, line: 18, baseType: !424)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !775, file: !20, line: 1193, baseType: !364, size: 8, offset: 160)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !775, file: !20, line: 1194, baseType: !381, size: 64, offset: 192)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !775, file: !20, line: 1195, baseType: !784, size: 64, offset: 256)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !353, line: 52, baseType: !785)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !580, line: 88, baseType: !398)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !775, file: !20, line: 1196, baseType: !787, size: 64, offset: 320)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !20, line: 2366, size: 576, elements: !789)
!789 = !{!790, !791, !792, !799, !803, !807, !811, !1201, !1202, !1206, !1208, !1209, !1210, !1212, !1213, !1214, !1215}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !788, file: !20, line: 2367, baseType: !509, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !788, file: !20, line: 2368, baseType: !95, size: 32, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !788, file: !20, line: 2376, baseType: !793, size: 64, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DISubroutineType(types: !795)
!795 = !{!95, !796}
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !798, line: 32, flags: DIFlagFwdDecl)
!798 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!799 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !788, file: !20, line: 2377, baseType: !800, size: 64, offset: 192)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !802)
!802 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !20, line: 75, flags: DIFlagFwdDecl)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !788, file: !20, line: 2378, baseType: !804, size: 64, offset: 256)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{!660, !787, !95, !509, !287}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !788, file: !20, line: 2380, baseType: !808, size: 64, offset: 320)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{null, !774}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !788, file: !20, line: 2381, baseType: !812, size: 64, offset: 384)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !12, line: 402, size: 9216, align: 512, elements: !814)
!814 = !{!815, !816, !817, !821, !842, !868, !869, !870, !871, !875, !880, !881, !893, !948, !949, !950, !951, !952, !953, !954, !955, !963, !967, !992, !1013, !1014, !1015, !1016, !1025, !1048, !1049, !1052, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1066, !1067, !1159, !1167, !1168, !1169, !1171, !1175, !1176, !1180, !1181, !1182, !1183, !1185, !1186, !1187, !1194, !1195, !1196, !1200}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !813, file: !12, line: 403, baseType: !11, size: 32)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !813, file: !12, line: 406, baseType: !375, size: 128, offset: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !813, file: !12, line: 409, baseType: !818, size: 448, offset: 192)
!818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !819)
!819 = !{!820}
!820 = !DISubrange(count: 56)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !813, file: !12, line: 417, baseType: !822, size: 768, offset: 640)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !12, line: 45, size: 768, elements: !823)
!823 = !{!824, !825, !826, !827, !830}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !822, file: !12, line: 46, baseType: !505, size: 512)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !822, file: !12, line: 47, baseType: !812, size: 64, offset: 512)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !822, file: !12, line: 48, baseType: !513, size: 64, offset: 576)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !822, file: !12, line: 49, baseType: !828, size: 64, offset: 640)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !12, line: 49, flags: DIFlagFwdDecl)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !822, file: !12, line: 50, baseType: !831, size: 64, offset: 704)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !833, line: 26, size: 256, elements: !834)
!833 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!834 = !{!835, !836}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !832, file: !833, line: 27, baseType: !13, size: 32)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !832, file: !833, line: 28, baseType: !837, size: 192, offset: 64)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !838, line: 43, size: 192, elements: !839)
!838 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!839 = !{!840, !841}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !837, file: !838, line: 44, baseType: !479, size: 32)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !837, file: !838, line: 45, baseType: !375, size: 128, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !813, file: !12, line: 418, baseType: !843, size: 64, offset: 1408)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !12, line: 53, size: 448, elements: !845)
!845 = !{!846, !847, !852, !856, !860, !864}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !844, file: !12, line: 54, baseType: !584, size: 128)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !844, file: !12, line: 55, baseType: !848, size: 64, offset: 128)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{!578, !843, !851, !548}
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !844, file: !12, line: 57, baseType: !853, size: 64, offset: 192)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!578, !843, !851, !509, !593}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !844, file: !12, line: 59, baseType: !857, size: 64, offset: 256)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{null, !812, !509}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !844, file: !12, line: 60, baseType: !861, size: 64, offset: 320)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{!95, !812}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !844, file: !12, line: 61, baseType: !865, size: 64, offset: 384)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{null, !812}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !813, file: !12, line: 419, baseType: !509, size: 64, offset: 1472)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !813, file: !12, line: 420, baseType: !509, size: 64, offset: 1536)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !813, file: !12, line: 421, baseType: !513, size: 64, offset: 1600)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !813, file: !12, line: 424, baseType: !872, size: 64, offset: 1664)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !874)
!874 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !12, line: 424, flags: DIFlagFwdDecl)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !813, file: !12, line: 425, baseType: !876, size: 64, offset: 1728)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !878)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !362, line: 20, baseType: !879)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !286, line: 26, baseType: !95)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !813, file: !12, line: 426, baseType: !13, size: 32, offset: 1792)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !813, file: !12, line: 435, baseType: !882, size: 256, offset: 1856)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !883, line: 66, size: 256, elements: !884)
!883 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!884 = !{!885, !886, !887, !892}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !882, file: !883, line: 67, baseType: !390, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !882, file: !883, line: 68, baseType: !479, size: 32, offset: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !882, file: !883, line: 70, baseType: !888, size: 32, offset: 96)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !889, line: 15, size: 32, elements: !890)
!889 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!890 = !{!891}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !888, file: !889, line: 20, baseType: !352, size: 32)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !882, file: !883, line: 72, baseType: !375, size: 128, offset: 128)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !813, file: !12, line: 437, baseType: !894, size: 64, offset: 2112)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !896, line: 69, size: 320, elements: !897)
!896 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!897 = !{!898, !899, !900, !920, !922, !926, !927}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !895, file: !896, line: 70, baseType: !509, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !895, file: !896, line: 71, baseType: !812, size: 64, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !895, file: !896, line: 72, baseType: !901, size: 64, offset: 128)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !903)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !896, line: 47, size: 256, elements: !904)
!904 = !{!905, !906, !912, !916}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !903, file: !896, line: 49, baseType: !13, size: 32)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !903, file: !896, line: 51, baseType: !907, size: 64, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DISubroutineType(types: !909)
!909 = !{!95, !509, !910}
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !895)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !903, file: !896, line: 53, baseType: !913, size: 64, offset: 128)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DISubroutineType(types: !915)
!915 = !{!95, !548, !910}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !903, file: !896, line: 55, baseType: !917, size: 64, offset: 192)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DISubroutineType(types: !919)
!919 = !{null, !287}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !895, file: !896, line: 73, baseType: !921, size: 16, offset: 192)
!921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !370)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !895, file: !896, line: 74, baseType: !923, size: 8, offset: 208)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !362, line: 16, baseType: !924)
!924 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !286, line: 20, baseType: !925)
!925 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !895, file: !896, line: 75, baseType: !361, size: 8, offset: 216)
!927 = !DIDerivedType(tag: DW_TAG_member, scope: !895, file: !896, line: 76, baseType: !928, size: 64, offset: 256)
!928 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !895, file: !896, line: 76, size: 64, elements: !929)
!929 = !{!930, !931, !938}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !928, file: !896, line: 77, baseType: !287, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !928, file: !896, line: 78, baseType: !932, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !934)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !896, line: 86, size: 128, elements: !935)
!935 = !{!936, !937}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !934, file: !896, line: 87, baseType: !13, size: 32)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !934, file: !896, line: 88, baseType: !548, size: 64, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !928, file: !896, line: 79, baseType: !939, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !941)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !896, line: 92, size: 256, elements: !942)
!942 = !{!943, !944, !945, !946, !947}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !941, file: !896, line: 94, baseType: !13, size: 32)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !941, file: !896, line: 95, baseType: !13, size: 32, offset: 32)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !941, file: !896, line: 96, baseType: !481, size: 64, offset: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !941, file: !896, line: 97, baseType: !901, size: 64, offset: 128)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !941, file: !896, line: 98, baseType: !287, size: 64, offset: 192)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !813, file: !12, line: 438, baseType: !13, size: 32, offset: 2176)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !813, file: !12, line: 441, baseType: !13, size: 32, offset: 2208)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !813, file: !12, line: 442, baseType: !872, size: 64, offset: 2240)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !813, file: !12, line: 443, baseType: !876, size: 64, offset: 2304)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !813, file: !12, line: 444, baseType: !470, size: 8, offset: 2368)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !813, file: !12, line: 451, baseType: !470, size: 8, offset: 2376)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !813, file: !12, line: 454, baseType: !13, size: 32, offset: 2400)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !813, file: !12, line: 455, baseType: !956, size: 64, offset: 2432)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !958, line: 23, size: 96, elements: !959)
!958 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!959 = !{!960, !961, !962}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !957, file: !958, line: 24, baseType: !95, size: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !957, file: !958, line: 24, baseType: !95, size: 32, offset: 32)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !957, file: !958, line: 24, baseType: !95, size: 32, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !813, file: !12, line: 458, baseType: !964, size: 64, offset: 2496)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DISubroutineType(types: !966)
!966 = !{!95}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !813, file: !12, line: 460, baseType: !968, size: 4032, align: 512, offset: 2560)
!968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !969, size: 4032, elements: !990)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !12, line: 362, size: 576, elements: !970)
!970 = !{!971, !972, !973}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !969, file: !12, line: 363, baseType: !287, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !969, file: !12, line: 364, baseType: !13, size: 32, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !969, file: !12, line: 367, baseType: !974, size: 448, offset: 128)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !12, line: 319, size: 448, elements: !975)
!975 = !{!976, !977}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !974, file: !12, line: 320, baseType: !812, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !974, file: !12, line: 321, baseType: !978, size: 384, offset: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !979, line: 40, size: 384, elements: !980)
!979 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!980 = !{!981}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !978, file: !979, line: 41, baseType: !982, size: 384, align: 64)
!982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !983, size: 384, align: 64, elements: !457)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !984, line: 5, size: 192, align: 64, elements: !985)
!984 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!985 = !{!986, !987, !989}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !983, file: !984, line: 6, baseType: !381, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !983, file: !984, line: 7, baseType: !988, size: 64, offset: 64)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !983, file: !984, line: 8, baseType: !988, size: 64, offset: 128)
!990 = !{!991}
!991 = !DISubrange(count: 7)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !813, file: !12, line: 463, baseType: !993, size: 192, offset: 6592)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !994, line: 8, size: 192, elements: !995)
!994 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!995 = !{!996, !997, !999}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !993, file: !994, line: 10, baseType: !13, size: 32)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !993, file: !994, line: 11, baseType: !998, size: 64, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !993, file: !994, line: 12, baseType: !1000, size: 64, offset: 128)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1002, line: 59, size: 48, elements: !1003)
!1002 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1003 = !{!1004, !1008, !1009, !1010, !1011, !1012}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1001, file: !1002, line: 60, baseType: !1005, size: 16)
!1005 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !362, line: 18, baseType: !1006)
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !286, line: 23, baseType: !1007)
!1007 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1001, file: !1002, line: 61, baseType: !1005, size: 16, offset: 16)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1001, file: !1002, line: 63, baseType: !13, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1001, file: !1002, line: 64, baseType: !13, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1001, file: !1002, line: 65, baseType: !13, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1001, file: !1002, line: 66, baseType: !13, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !813, file: !12, line: 465, baseType: !381, size: 64, offset: 6784)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !813, file: !12, line: 469, baseType: !13, size: 32, offset: 6848)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !813, file: !12, line: 470, baseType: !375, size: 128, offset: 6912)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !813, file: !12, line: 471, baseType: !1017, size: 64, offset: 7040)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1019, line: 33, size: 96, elements: !1020)
!1019 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1020 = !{!1021, !1022, !1023, !1024}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1018, file: !1019, line: 37, baseType: !95, size: 32)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1018, file: !1019, line: 43, baseType: !95, size: 32, offset: 32)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1018, file: !1019, line: 45, baseType: !372, size: 16, offset: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1018, file: !1019, line: 47, baseType: !372, size: 16, offset: 80)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !813, file: !12, line: 476, baseType: !1026, size: 64, offset: 7104)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !12, line: 378, size: 256, elements: !1028)
!1028 = !{!1029, !1045, !1046, !1047}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1027, file: !12, line: 379, baseType: !1030, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1032, line: 204, baseType: !1033)
!1032 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1032, line: 197, size: 192, elements: !1034)
!1034 = !{!1035, !1037, !1038, !1039, !1041, !1043}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1033, file: !1032, line: 198, baseType: !1036, size: 32)
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1032, line: 21, baseType: !285)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1033, file: !1032, line: 199, baseType: !364, size: 8, offset: 32)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1033, file: !1032, line: 200, baseType: !364, size: 8, offset: 40)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1033, file: !1032, line: 201, baseType: !1040, size: 16, offset: 48)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1032, line: 17, baseType: !371)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1033, file: !1032, line: 202, baseType: !1042, size: 64, offset: 64)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1032, line: 16, baseType: !697)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1033, file: !1032, line: 203, baseType: !1044, size: 64, offset: 128)
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1032, line: 22, baseType: !697)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1027, file: !12, line: 380, baseType: !13, size: 32, offset: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1027, file: !12, line: 381, baseType: !548, size: 64, offset: 128)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1027, file: !12, line: 382, baseType: !548, size: 64, offset: 192)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !813, file: !12, line: 477, baseType: !1027, size: 256, offset: 7168)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !813, file: !12, line: 480, baseType: !1050, size: 64, offset: 7424)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !12, line: 480, flags: DIFlagFwdDecl)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !813, file: !12, line: 483, baseType: !1053, size: 64, offset: 7488)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !12, line: 483, flags: DIFlagFwdDecl)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !813, file: !12, line: 488, baseType: !548, size: 64, offset: 7552)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !813, file: !12, line: 492, baseType: !287, size: 64, offset: 7616)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !813, file: !12, line: 493, baseType: !13, size: 32, offset: 7680)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !813, file: !12, line: 495, baseType: !287, size: 64, offset: 7744)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !813, file: !12, line: 496, baseType: !13, size: 32, offset: 7808)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !813, file: !12, line: 499, baseType: !13, size: 32, offset: 7840)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !813, file: !12, line: 500, baseType: !1062, size: 64, offset: 7872)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1064, line: 45, baseType: !1065)
!1064 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !813, file: !12, line: 503, baseType: !13, size: 32, offset: 7936)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !813, file: !12, line: 504, baseType: !1068, size: 64, offset: 8000)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1071, line: 96, size: 192, elements: !1072)
!1071 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1072 = !{!1073, !1074, !1127, !1131}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1070, file: !1071, line: 97, baseType: !13, size: 32)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1070, file: !1071, line: 98, baseType: !1075, size: 64, offset: 64)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1071, line: 24, size: 3072, elements: !1077)
!1077 = !{!1078, !1080, !1081, !1082, !1083, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1124, !1125, !1126}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1076, file: !1071, line: 26, baseType: !1079, size: 128)
!1079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 128, elements: !457)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1076, file: !1071, line: 27, baseType: !1079, size: 128, offset: 128)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1076, file: !1071, line: 28, baseType: !95, size: 32, offset: 256)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1076, file: !1071, line: 31, baseType: !332, size: 32, align: 512, offset: 512)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1076, file: !1071, line: 32, baseType: !1084, size: 960, offset: 576)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1085, line: 206, size: 960, elements: !1086)
!1085 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1086 = !{!1087, !1096, !1101, !1103, !1104, !1106}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1084, file: !1085, line: 207, baseType: !1088, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !353, line: 232, size: 128, align: 64, elements: !1090)
!1090 = !{!1091, !1092}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1089, file: !353, line: 233, baseType: !1088, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1089, file: !353, line: 234, baseType: !1093, size: 64, offset: 64)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{null, !1088}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1084, file: !1085, line: 208, baseType: !1097, size: 256, offset: 64)
!1097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1098, size: 256, elements: !1099)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1099 = !{!1100}
!1100 = !DISubrange(count: 4)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1084, file: !1085, line: 209, baseType: !1102, size: 256, offset: 320)
!1102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 256, elements: !1099)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1084, file: !1085, line: 213, baseType: !582, size: 64, offset: 576)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1084, file: !1085, line: 215, baseType: !1105, size: 256, offset: 640)
!1105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !582, size: 256, elements: !1099)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1084, file: !1085, line: 216, baseType: !361, size: 8, offset: 896)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1076, file: !1071, line: 33, baseType: !381, size: 64, offset: 1536)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1076, file: !1071, line: 34, baseType: !381, size: 64, offset: 1600)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1076, file: !1071, line: 35, baseType: !470, size: 8, offset: 1664)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1076, file: !1071, line: 36, baseType: !407, size: 320, offset: 1728)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1076, file: !1071, line: 37, baseType: !387, size: 256, offset: 2048)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1076, file: !1071, line: 38, baseType: !1089, size: 128, align: 64, offset: 2304)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1076, file: !1071, line: 39, baseType: !1114, size: 64, offset: 2432)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1071, line: 49, size: 768, elements: !1116)
!1116 = !{!1117, !1118, !1119, !1120, !1121, !1122, !1123}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1115, file: !1071, line: 50, baseType: !332, size: 32)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1115, file: !1071, line: 51, baseType: !1102, size: 256, offset: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1115, file: !1071, line: 53, baseType: !1102, size: 256, offset: 320)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1115, file: !1071, line: 54, baseType: !381, size: 64, offset: 576)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1115, file: !1071, line: 55, baseType: !1114, size: 64, offset: 640)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1115, file: !1071, line: 56, baseType: !95, size: 32, offset: 704)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1115, file: !1071, line: 57, baseType: !95, size: 32, offset: 736)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1076, file: !1071, line: 40, baseType: !381, size: 64, offset: 2496)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1076, file: !1071, line: 42, baseType: !95, size: 32, offset: 2560)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1076, file: !1071, line: 43, baseType: !1069, size: 64, offset: 2624)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1070, file: !1071, line: 99, baseType: !1128, offset: 128)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1129, line: 211, elements: !1130)
!1129 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1130 = !{}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1070, file: !1071, line: 100, baseType: !1132, size: 64, offset: 128)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1071, line: 63, size: 3008, elements: !1134)
!1134 = !{!1135, !1136, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1133, file: !1071, line: 64, baseType: !1114, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1133, file: !1071, line: 65, baseType: !1137, size: 192, offset: 64)
!1137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1114, size: 192, elements: !492)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1133, file: !1071, line: 67, baseType: !95, size: 32, offset: 256)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1133, file: !1071, line: 68, baseType: !882, size: 256, offset: 320)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1133, file: !1071, line: 69, baseType: !332, size: 32, offset: 576)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1133, file: !1071, line: 70, baseType: !882, size: 256, offset: 640)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1133, file: !1071, line: 71, baseType: !381, size: 64, offset: 896)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1133, file: !1071, line: 72, baseType: !381, size: 64, offset: 960)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1133, file: !1071, line: 73, baseType: !381, size: 64, offset: 1024)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1133, file: !1071, line: 74, baseType: !381, size: 64, offset: 1088)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1133, file: !1071, line: 75, baseType: !381, size: 64, offset: 1152)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1133, file: !1071, line: 76, baseType: !381, size: 64, offset: 1216)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1133, file: !1071, line: 77, baseType: !381, size: 64, offset: 1280)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1133, file: !1071, line: 78, baseType: !381, size: 64, offset: 1344)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1133, file: !1071, line: 79, baseType: !470, size: 8, offset: 1408)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1133, file: !1071, line: 80, baseType: !381, size: 64, offset: 1472)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1133, file: !1071, line: 81, baseType: !882, size: 256, offset: 1536)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1133, file: !1071, line: 82, baseType: !832, size: 256, offset: 1792)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1133, file: !1071, line: 84, baseType: !352, size: 32, offset: 2048)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1133, file: !1071, line: 87, baseType: !381, size: 64, offset: 2112)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1133, file: !1071, line: 88, baseType: !381, size: 64, offset: 2176)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1133, file: !1071, line: 89, baseType: !383, size: 704, offset: 2240)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1133, file: !1071, line: 90, baseType: !1069, size: 64, offset: 2944)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !813, file: !12, line: 515, baseType: !1160, size: 64, offset: 8064)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1162, line: 117, size: 128, elements: !1163)
!1162 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1163 = !{!1164, !1165, !1166}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1161, file: !1162, line: 118, baseType: !878, size: 32)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1161, file: !1162, line: 119, baseType: !878, size: 32, offset: 32)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1161, file: !1162, line: 120, baseType: !582, size: 64, offset: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !813, file: !12, line: 516, baseType: !13, size: 32, offset: 8128)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !813, file: !12, line: 519, baseType: !13, size: 32, offset: 8160)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !813, file: !12, line: 520, baseType: !1170, size: 64, offset: 8192)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !813, file: !12, line: 523, baseType: !1172, size: 64, offset: 8256)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !12, line: 523, flags: DIFlagFwdDecl)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !813, file: !12, line: 524, baseType: !13, size: 32, offset: 8320)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !813, file: !12, line: 525, baseType: !1177, size: 64, offset: 8384)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !12, line: 525, flags: DIFlagFwdDecl)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !813, file: !12, line: 526, baseType: !13, size: 32, offset: 8448)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !813, file: !12, line: 533, baseType: !287, size: 64, offset: 8512)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !813, file: !12, line: 534, baseType: !13, size: 32, offset: 8576)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !813, file: !12, line: 535, baseType: !1184, size: 64, offset: 8640)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !813, file: !12, line: 536, baseType: !13, size: 32, offset: 8704)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !813, file: !12, line: 539, baseType: !95, size: 32, offset: 8736)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !813, file: !12, line: 540, baseType: !1188, size: 64, offset: 8768)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1190, line: 32, size: 64, elements: !1191)
!1190 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1191 = !{!1192, !1193}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1189, file: !1190, line: 33, baseType: !878, size: 32)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1189, file: !1190, line: 34, baseType: !878, size: 32, offset: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !813, file: !12, line: 563, baseType: !375, size: 128, offset: 8832)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !813, file: !12, line: 565, baseType: !375, size: 128, offset: 8960)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !813, file: !12, line: 568, baseType: !1197, size: 64, offset: 9088)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{null}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !813, file: !12, line: 570, baseType: !352, size: 32, offset: 9152)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !788, file: !20, line: 2382, baseType: !787, size: 64, offset: 448)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !788, file: !20, line: 2383, baseType: !1203, size: 64, offset: 512)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !353, line: 194, size: 64, elements: !1204)
!1204 = !{!1205}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1203, file: !353, line: 195, baseType: !414, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !788, file: !20, line: 2385, baseType: !1207, offset: 576)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1129, line: 206, elements: !1130)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !788, file: !20, line: 2386, baseType: !1207, offset: 576)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !788, file: !20, line: 2387, baseType: !1207, offset: 576)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !788, file: !20, line: 2388, baseType: !1211, offset: 576)
!1211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1207, elements: !492)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !788, file: !20, line: 2390, baseType: !1207, offset: 576)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !788, file: !20, line: 2391, baseType: !1207, offset: 576)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !788, file: !20, line: 2392, baseType: !1207, offset: 576)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !788, file: !20, line: 2393, baseType: !1207, offset: 576)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !775, file: !20, line: 1197, baseType: !1217, size: 64, offset: 384)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1219)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !20, line: 2057, size: 1664, elements: !1220)
!1220 = !{!1221, !1225, !1229, !1230, !1234, !1240, !1244, !1245, !1246, !1250, !1254, !1258, !1259, !1260, !1266, !1270, !1271, !1278, !1279, !1280, !1281, !1285, !1289, !1338, !1354, !1355}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1219, file: !20, line: 2058, baseType: !1222, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!625, !774}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1219, file: !20, line: 2059, baseType: !1226, size: 64, offset: 64)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{null, !625}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1219, file: !20, line: 2060, baseType: !1226, size: 64, offset: 128)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1219, file: !20, line: 2062, baseType: !1231, size: 64, offset: 192)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{null, !625, !95}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1219, file: !20, line: 2063, baseType: !1235, size: 64, offset: 256)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!95, !625, !1238}
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !20, line: 309, flags: DIFlagFwdDecl)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1219, file: !20, line: 2064, baseType: !1241, size: 64, offset: 320)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!95, !625}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1219, file: !20, line: 2065, baseType: !1226, size: 64, offset: 384)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1219, file: !20, line: 2066, baseType: !808, size: 64, offset: 448)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1219, file: !20, line: 2067, baseType: !1247, size: 64, offset: 512)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!95, !774, !95}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1219, file: !20, line: 2068, baseType: !1251, size: 64, offset: 576)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!95, !774, !19}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1219, file: !20, line: 2069, baseType: !1255, size: 64, offset: 640)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{!95, !774}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1219, file: !20, line: 2070, baseType: !1251, size: 64, offset: 704)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1219, file: !20, line: 2071, baseType: !1255, size: 64, offset: 768)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1219, file: !20, line: 2072, baseType: !1261, size: 64, offset: 832)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!95, !660, !1264}
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !20, line: 62, flags: DIFlagFwdDecl)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1219, file: !20, line: 2073, baseType: !1267, size: 64, offset: 896)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!95, !774, !998, !548}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1219, file: !20, line: 2074, baseType: !808, size: 64, offset: 960)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1219, file: !20, line: 2076, baseType: !1272, size: 64, offset: 1024)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!95, !1275, !660}
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1277, line: 66, flags: DIFlagFwdDecl)
!1277 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1219, file: !20, line: 2077, baseType: !1272, size: 64, offset: 1088)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1219, file: !20, line: 2078, baseType: !1272, size: 64, offset: 1152)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1219, file: !20, line: 2079, baseType: !1272, size: 64, offset: 1216)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1219, file: !20, line: 2081, baseType: !1282, size: 64, offset: 1280)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!578, !774, !95, !548, !593, !784}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1219, file: !20, line: 2082, baseType: !1286, size: 64, offset: 1344)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!578, !774, !95, !509, !593, !784}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1219, file: !20, line: 2083, baseType: !1290, size: 64, offset: 1408)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{!1293, !625}
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !25, line: 296, size: 1664, elements: !1296)
!1296 = !{!1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1321, !1322, !1323}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1295, file: !25, line: 297, baseType: !411, size: 128)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1295, file: !25, line: 298, baseType: !375, size: 128, offset: 128)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1295, file: !25, line: 299, baseType: !375, size: 128, offset: 256)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1295, file: !25, line: 300, baseType: !375, size: 128, offset: 384)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1295, file: !25, line: 301, baseType: !882, size: 256, offset: 512)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1295, file: !25, line: 302, baseType: !332, size: 32, offset: 768)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1295, file: !25, line: 303, baseType: !352, size: 32, offset: 800)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1295, file: !25, line: 304, baseType: !774, size: 64, offset: 832)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1295, file: !25, line: 305, baseType: !1306, size: 64, offset: 896)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !25, line: 68, size: 64, elements: !1307)
!1307 = !{!1308, !1320}
!1308 = !DIDerivedType(tag: DW_TAG_member, scope: !1306, file: !25, line: 69, baseType: !1309, size: 32)
!1309 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1306, file: !25, line: 69, size: 32, elements: !1310)
!1310 = !{!1311, !1312, !1313}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1309, file: !25, line: 70, baseType: !631, size: 32)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1309, file: !25, line: 71, baseType: !640, size: 32)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1309, file: !25, line: 72, baseType: !1314, size: 32)
!1314 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1315, line: 24, baseType: !1316)
!1315 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1315, line: 22, size: 32, elements: !1317)
!1317 = !{!1318}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1316, file: !1315, line: 23, baseType: !1319, size: 32)
!1319 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1315, line: 20, baseType: !637)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1306, file: !25, line: 74, baseType: !24, size: 32, offset: 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1295, file: !25, line: 306, baseType: !784, size: 64, offset: 960)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1295, file: !25, line: 307, baseType: !381, size: 64, offset: 1024)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1295, file: !25, line: 308, baseType: !1324, size: 576, offset: 1088)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !25, line: 205, size: 576, elements: !1325)
!1325 = !{!1326, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1337}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1324, file: !25, line: 206, baseType: !1327, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !25, line: 66, baseType: !398)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1324, file: !25, line: 207, baseType: !1327, size: 64, offset: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1324, file: !25, line: 208, baseType: !1327, size: 64, offset: 128)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1324, file: !25, line: 209, baseType: !1327, size: 64, offset: 192)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1324, file: !25, line: 210, baseType: !1327, size: 64, offset: 256)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1324, file: !25, line: 211, baseType: !1327, size: 64, offset: 320)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1324, file: !25, line: 212, baseType: !1327, size: 64, offset: 384)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1324, file: !25, line: 213, baseType: !1335, size: 64, offset: 448)
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1336, line: 8, baseType: !397)
!1336 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1324, file: !25, line: 214, baseType: !1335, size: 64, offset: 512)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1219, file: !20, line: 2085, baseType: !1339, size: 64, offset: 1472)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!582, !774, !1342}
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1344, line: 15, size: 256, elements: !1345)
!1344 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1345 = !{!1346, !1348, !1349, !1350, !1351}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1343, file: !1344, line: 16, baseType: !1347, size: 32)
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !353, line: 154, baseType: !13)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1343, file: !1344, line: 19, baseType: !95, size: 32, offset: 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1343, file: !1344, line: 26, baseType: !381, size: 64, offset: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1343, file: !1344, line: 33, baseType: !381, size: 64, offset: 128)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1343, file: !1344, line: 36, baseType: !1352, size: 64, offset: 192)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !47, line: 33, flags: DIFlagFwdDecl)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1219, file: !20, line: 2087, baseType: !1339, size: 64, offset: 1536)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1219, file: !20, line: 2089, baseType: !808, size: 64, offset: 1600)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !775, file: !20, line: 1198, baseType: !1357, size: 64, offset: 448)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1359)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !25, line: 324, size: 704, elements: !1360)
!1360 = !{!1361, !1365, !1369, !1373, !1374, !1375, !1376, !1377, !1382, !1387, !1391}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1359, file: !25, line: 325, baseType: !1362, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!95, !1294}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1359, file: !25, line: 326, baseType: !1366, size: 64, offset: 64)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!1294, !774, !95}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1359, file: !25, line: 327, baseType: !1370, size: 64, offset: 128)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{null, !1294}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1359, file: !25, line: 328, baseType: !1362, size: 64, offset: 192)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1359, file: !25, line: 329, baseType: !1362, size: 64, offset: 256)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1359, file: !25, line: 330, baseType: !1362, size: 64, offset: 320)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1359, file: !25, line: 331, baseType: !1247, size: 64, offset: 384)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1359, file: !25, line: 334, baseType: !1378, size: 64, offset: 448)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!1381, !625}
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1359, file: !25, line: 335, baseType: !1383, size: 64, offset: 512)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!95, !625, !1386}
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1359, file: !25, line: 337, baseType: !1388, size: 64, offset: 576)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!95, !625, !1381}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1359, file: !25, line: 339, baseType: !1392, size: 64, offset: 640)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!95, !774, !1395}
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !775, file: !20, line: 1199, baseType: !1397, size: 64, offset: 512)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1399)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !25, line: 430, size: 704, elements: !1400)
!1400 = !{!1401, !1412, !1413, !1417, !1418, !1419, !1434, !1457, !1461, !1462, !1485}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1399, file: !25, line: 431, baseType: !1402, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!95, !774, !95, !95, !1405}
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1407)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1408, line: 8, size: 128, elements: !1409)
!1408 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1409 = !{!1410, !1411}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1407, file: !1408, line: 9, baseType: !768, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1407, file: !1408, line: 10, baseType: !660, size: 64, offset: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1399, file: !25, line: 432, baseType: !1247, size: 64, offset: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1399, file: !25, line: 433, baseType: !1414, size: 64, offset: 128)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!95, !774, !13}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1399, file: !25, line: 434, baseType: !1414, size: 64, offset: 192)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1399, file: !25, line: 435, baseType: !1247, size: 64, offset: 256)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1399, file: !25, line: 436, baseType: !1420, size: 64, offset: 320)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!95, !774, !95, !1423}
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !25, line: 417, size: 256, elements: !1425)
!1425 = !{!1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1424, file: !25, line: 418, baseType: !95, size: 32)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1424, file: !25, line: 419, baseType: !13, size: 32, offset: 32)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1424, file: !25, line: 420, baseType: !13, size: 32, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1424, file: !25, line: 422, baseType: !13, size: 32, offset: 96)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1424, file: !25, line: 423, baseType: !13, size: 32, offset: 128)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1424, file: !25, line: 424, baseType: !13, size: 32, offset: 160)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1424, file: !25, line: 425, baseType: !13, size: 32, offset: 192)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1424, file: !25, line: 426, baseType: !13, size: 32, offset: 224)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1399, file: !25, line: 437, baseType: !1435, size: 64, offset: 384)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!95, !774, !1306, !1438}
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !25, line: 345, size: 960, elements: !1440)
!1440 = !{!1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1439, file: !25, line: 346, baseType: !95, size: 32)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1439, file: !25, line: 347, baseType: !696, size: 64, offset: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1439, file: !25, line: 348, baseType: !696, size: 64, offset: 128)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1439, file: !25, line: 349, baseType: !696, size: 64, offset: 192)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1439, file: !25, line: 350, baseType: !696, size: 64, offset: 256)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1439, file: !25, line: 351, baseType: !696, size: 64, offset: 320)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1439, file: !25, line: 352, baseType: !696, size: 64, offset: 384)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1439, file: !25, line: 353, baseType: !396, size: 64, offset: 448)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1439, file: !25, line: 355, baseType: !396, size: 64, offset: 512)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1439, file: !25, line: 356, baseType: !95, size: 32, offset: 576)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1439, file: !25, line: 357, baseType: !95, size: 32, offset: 608)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1439, file: !25, line: 358, baseType: !696, size: 64, offset: 640)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1439, file: !25, line: 359, baseType: !696, size: 64, offset: 704)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1439, file: !25, line: 360, baseType: !696, size: 64, offset: 768)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1439, file: !25, line: 361, baseType: !396, size: 64, offset: 832)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1439, file: !25, line: 362, baseType: !95, size: 32, offset: 896)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1399, file: !25, line: 438, baseType: !1458, size: 64, offset: 448)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{!95, !774, !1395, !1438}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1399, file: !25, line: 440, baseType: !1435, size: 64, offset: 512)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1399, file: !25, line: 441, baseType: !1463, size: 64, offset: 576)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{!95, !774, !1466}
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !25, line: 411, size: 1408, elements: !1468)
!1468 = !{!1469, !1470}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1467, file: !25, line: 412, baseType: !13, size: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1467, file: !25, line: 413, baseType: !1471, size: 1344, offset: 64)
!1471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1472, size: 1344, elements: !492)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !25, line: 397, size: 448, elements: !1473)
!1473 = !{!1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1484}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1472, file: !25, line: 398, baseType: !13, size: 32)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1472, file: !25, line: 399, baseType: !13, size: 32, offset: 32)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1472, file: !25, line: 401, baseType: !13, size: 32, offset: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1472, file: !25, line: 402, baseType: !13, size: 32, offset: 96)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1472, file: !25, line: 403, baseType: !13, size: 32, offset: 128)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1472, file: !25, line: 404, baseType: !13, size: 32, offset: 160)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1472, file: !25, line: 405, baseType: !13, size: 32, offset: 192)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1472, file: !25, line: 406, baseType: !698, size: 64, offset: 256)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1472, file: !25, line: 407, baseType: !1483, size: 64, offset: 320)
!1483 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !353, line: 132, baseType: !696)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1472, file: !25, line: 408, baseType: !1483, size: 64, offset: 384)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1399, file: !25, line: 442, baseType: !1414, size: 64, offset: 640)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !775, file: !20, line: 1200, baseType: !1487, size: 64, offset: 576)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1489)
!1489 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !20, line: 54, flags: DIFlagFwdDecl)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !775, file: !20, line: 1201, baseType: !381, size: 64, offset: 640)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !775, file: !20, line: 1202, baseType: !381, size: 64, offset: 704)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !775, file: !20, line: 1203, baseType: !381, size: 64, offset: 768)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !775, file: !20, line: 1204, baseType: !660, size: 64, offset: 832)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !775, file: !20, line: 1205, baseType: !1495, size: 320, offset: 896)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1496, line: 48, size: 320, elements: !1497)
!1496 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1497 = !{!1498, !1499, !1500, !1501, !1502}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1495, file: !1496, line: 49, baseType: !390, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1495, file: !1496, line: 55, baseType: !390, size: 64, offset: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1495, file: !1496, line: 57, baseType: !888, size: 32, offset: 128)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1495, file: !1496, line: 59, baseType: !479, size: 32, offset: 160)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1495, file: !1496, line: 60, baseType: !375, size: 128, offset: 192)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !775, file: !20, line: 1206, baseType: !95, size: 32, offset: 1216)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !775, file: !20, line: 1207, baseType: !352, size: 32, offset: 1248)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !775, file: !20, line: 1209, baseType: !287, size: 64, offset: 1280)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !775, file: !20, line: 1211, baseType: !1507, size: 64, offset: 1344)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1510)
!1510 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !20, line: 1211, flags: DIFlagFwdDecl)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !775, file: !20, line: 1223, baseType: !1512, size: 64, offset: 1408)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !677, line: 34, size: 64, elements: !1513)
!1513 = !{!1514}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1512, file: !677, line: 35, baseType: !680, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !775, file: !20, line: 1224, baseType: !375, size: 128, offset: 1472)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !775, file: !20, line: 1225, baseType: !1517, size: 64, offset: 1600)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !184, line: 40, size: 7424, elements: !1519)
!1519 = !{!1520, !1522, !1523, !2716, !2717, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2775, !2776}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !1518, file: !184, line: 41, baseType: !1521, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !353, line: 131, baseType: !696)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !1518, file: !184, line: 42, baseType: !1521, size: 64, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !1518, file: !184, line: 43, baseType: !1524, size: 64, offset: 128)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !63, line: 128, size: 4544, elements: !1526)
!1526 = !{!1527, !1528, !1529, !1530, !1532, !1533, !1534, !1541, !1542, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2682, !2683, !2684, !2685, !2688, !2689, !2692, !2695, !2696, !2699, !2700, !2701, !2702}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !1525, file: !63, line: 133, baseType: !95, size: 32)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "first_minor", scope: !1525, file: !63, line: 134, baseType: !95, size: 32, offset: 32)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "minors", scope: !1525, file: !63, line: 135, baseType: !95, size: 32, offset: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !1525, file: !63, line: 137, baseType: !1531, size: 256, offset: 96)
!1531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !705)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1525, file: !63, line: 139, baseType: !372, size: 16, offset: 352)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "event_flags", scope: !1525, file: !63, line: 140, baseType: !372, size: 16, offset: 368)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "part_tbl", scope: !1525, file: !63, line: 142, baseType: !1535, size: 128, offset: 384)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1536, line: 296, size: 128, elements: !1537)
!1536 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1537 = !{!1538, !1539, !1540}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1535, file: !1536, line: 297, baseType: !332, size: 32)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1535, file: !1536, line: 299, baseType: !1347, size: 32, offset: 32)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1535, file: !1536, line: 300, baseType: !287, size: 64, offset: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "part0", scope: !1525, file: !63, line: 143, baseType: !1517, size: 64, offset: 512)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !1525, file: !63, line: 145, baseType: !1543, size: 64, offset: 576)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1545)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device_operations", file: !63, line: 1388, size: 1152, elements: !1546)
!1546 = !{!1547, !2588, !2592, !2597, !2601, !2605, !2606, !2610, !2611, !2617, !2621, !2622, !2626, !2652, !2657, !2662, !2663, !2667}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "submit_bio", scope: !1545, file: !63, line: 1389, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{null, !1551}
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio", file: !184, line: 265, size: 960, elements: !1553)
!1553 = !{!1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1569, !1571, !1574, !1575, !1578, !1582, !1583, !1585, !1586, !1587, !1588, !2545, !2586}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "bi_next", scope: !1552, file: !184, line: 266, baseType: !1551, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bdev", scope: !1552, file: !184, line: 267, baseType: !1517, size: 64, offset: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "bi_opf", scope: !1552, file: !184, line: 268, baseType: !284, size: 32, offset: 128)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "bi_flags", scope: !1552, file: !184, line: 271, baseType: !372, size: 16, offset: 160)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "bi_ioprio", scope: !1552, file: !184, line: 272, baseType: !372, size: 16, offset: 176)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "bi_status", scope: !1552, file: !184, line: 273, baseType: !453, size: 8, offset: 192)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_remaining", scope: !1552, file: !184, line: 274, baseType: !352, size: 32, offset: 224)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iter", scope: !1552, file: !184, line: 276, baseType: !1562, size: 160, align: 32, offset: 256)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bvec_iter", file: !1563, line: 77, size: 160, align: 32, elements: !1564)
!1563 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!1564 = !{!1565, !1566, !1567, !1568}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "bi_sector", scope: !1562, file: !1563, line: 78, baseType: !1521, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "bi_size", scope: !1562, file: !1563, line: 80, baseType: !13, size: 32, offset: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "bi_idx", scope: !1562, file: !1563, line: 82, baseType: !13, size: 32, offset: 96)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bvec_done", scope: !1562, file: !1563, line: 84, baseType: !13, size: 32, offset: 128)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "bi_cookie", scope: !1552, file: !184, line: 278, baseType: !1570, size: 32, offset: 416)
!1570 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_qc_t", file: !184, line: 258, baseType: !13)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "bi_end_io", scope: !1552, file: !184, line: 279, baseType: !1572, size: 64, offset: 448)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_end_io_t", file: !184, line: 20, baseType: !1549)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "bi_private", scope: !1552, file: !184, line: 280, baseType: !287, size: 64, offset: 512)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "bi_blkg", scope: !1552, file: !184, line: 288, baseType: !1576, size: 64, offset: 576)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DICompositeType(tag: DW_TAG_structure_type, name: "blkcg_gq", file: !184, line: 288, flags: DIFlagFwdDecl)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "bi_issue", scope: !1552, file: !184, line: 289, baseType: !1579, size: 64, offset: 640)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_issue", file: !184, line: 228, size: 64, elements: !1580)
!1580 = !{!1581}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1579, file: !184, line: 229, baseType: !696, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iocost_cost", scope: !1552, file: !184, line: 291, baseType: !696, size: 64, offset: 704)
!1583 = !DIDerivedType(tag: DW_TAG_member, scope: !1552, file: !184, line: 299, baseType: !1584, offset: 768)
!1584 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1552, file: !184, line: 299, elements: !1130)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "bi_vcnt", scope: !1552, file: !184, line: 305, baseType: !372, size: 16, offset: 768)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "bi_max_vecs", scope: !1552, file: !184, line: 311, baseType: !372, size: 16, offset: 784)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_cnt", scope: !1552, file: !184, line: 313, baseType: !352, size: 32, offset: 800)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "bi_io_vec", scope: !1552, file: !184, line: 315, baseType: !1589, size: 64, offset: 832)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1563, line: 31, size: 128, elements: !1591)
!1591 = !{!1592, !2543, !2544}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !1590, file: !1563, line: 32, baseType: !1593, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !47, line: 74, size: 512, align: 128, elements: !1595)
!1595 = !{!1596, !1597, !2537, !2542}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1594, file: !47, line: 75, baseType: !381, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, scope: !1594, file: !47, line: 83, baseType: !1598, size: 320, offset: 64)
!1598 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1594, file: !47, line: 83, size: 320, elements: !1599)
!1599 = !{!1600, !1621, !1635, !1639, !2536}
!1600 = !DIDerivedType(tag: DW_TAG_member, scope: !1598, file: !47, line: 84, baseType: !1601, size: 320)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1598, file: !47, line: 84, size: 320, elements: !1602)
!1602 = !{!1603, !1614, !1615, !1620}
!1603 = !DIDerivedType(tag: DW_TAG_member, scope: !1601, file: !47, line: 90, baseType: !1604, size: 128)
!1604 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1601, file: !47, line: 90, size: 128, elements: !1605)
!1605 = !{!1606, !1607, !1612, !1613}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1604, file: !47, line: 91, baseType: !375, size: 128)
!1607 = !DIDerivedType(tag: DW_TAG_member, scope: !1604, file: !47, line: 94, baseType: !1608, size: 128)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1604, file: !47, line: 94, size: 128, elements: !1609)
!1609 = !{!1610, !1611}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1608, file: !47, line: 96, baseType: !287, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1608, file: !47, line: 98, baseType: !13, size: 32, offset: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1604, file: !47, line: 102, baseType: !375, size: 128)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1604, file: !47, line: 103, baseType: !375, size: 128)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1601, file: !47, line: 106, baseType: !621, size: 64, offset: 128)
!1615 = !DIDerivedType(tag: DW_TAG_member, scope: !1601, file: !47, line: 107, baseType: !1616, size: 64, offset: 192)
!1616 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1601, file: !47, line: 107, size: 64, elements: !1617)
!1617 = !{!1618, !1619}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1616, file: !47, line: 108, baseType: !381, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1616, file: !47, line: 109, baseType: !381, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1601, file: !47, line: 117, baseType: !381, size: 64, offset: 256)
!1621 = !DIDerivedType(tag: DW_TAG_member, scope: !1598, file: !47, line: 119, baseType: !1622, size: 320)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1598, file: !47, line: 119, size: 320, elements: !1623)
!1623 = !{!1624, !1625, !1628, !1629, !1630}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1622, file: !47, line: 124, baseType: !381, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1622, file: !47, line: 125, baseType: !1626, size: 64, offset: 64)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !47, line: 125, flags: DIFlagFwdDecl)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1622, file: !47, line: 126, baseType: !381, size: 64, offset: 128)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1622, file: !47, line: 127, baseType: !381, size: 64, offset: 192)
!1630 = !DIDerivedType(tag: DW_TAG_member, scope: !1622, file: !47, line: 128, baseType: !1631, size: 64, offset: 256)
!1631 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1622, file: !47, line: 128, size: 64, elements: !1632)
!1632 = !{!1633, !1634}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1631, file: !47, line: 133, baseType: !381, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1631, file: !47, line: 138, baseType: !390, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, scope: !1598, file: !47, line: 141, baseType: !1636, size: 64)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1598, file: !47, line: 141, size: 64, elements: !1637)
!1637 = !{!1638}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1636, file: !47, line: 142, baseType: !381, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, scope: !1598, file: !47, line: 144, baseType: !1640, size: 128)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1598, file: !47, line: 144, size: 128, elements: !1641)
!1641 = !{!1642, !2535}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1640, file: !47, line: 146, baseType: !1643, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 126, size: 1216, elements: !1645)
!1645 = !{!1646, !1656, !1677, !1678, !1679, !1680, !1681, !2517, !2518, !2519}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1644, file: !31, line: 127, baseType: !1647, size: 384)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 21, size: 384, elements: !1648)
!1648 = !{!1649, !1650, !1652, !1653, !1654, !1655}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1647, file: !31, line: 22, baseType: !381, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1647, file: !31, line: 23, baseType: !1651, size: 64, offset: 64)
!1651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !381)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1647, file: !31, line: 24, baseType: !1651, size: 64, offset: 128)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1647, file: !31, line: 25, baseType: !381, size: 64, offset: 192)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1647, file: !31, line: 26, baseType: !381, size: 64, offset: 256)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1647, file: !31, line: 27, baseType: !381, size: 64, offset: 320)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1644, file: !31, line: 128, baseType: !1657, size: 128, offset: 384)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1658, line: 105, size: 128, elements: !1659)
!1658 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1659 = !{!1660, !1661}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1657, file: !1658, line: 110, baseType: !381, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1657, file: !1658, line: 118, baseType: !1662, size: 64, offset: 64)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1658, line: 95, size: 448, elements: !1664)
!1664 = !{!1665, !1666, !1672, !1673, !1674, !1675, !1676}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1663, file: !1658, line: 96, baseType: !390, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1663, file: !1658, line: 97, baseType: !1667, size: 64, offset: 64)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1658, line: 60, baseType: !1669)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{null, !1671}
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1663, file: !1658, line: 98, baseType: !1667, size: 64, offset: 128)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1663, file: !1658, line: 99, baseType: !470, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1663, file: !1658, line: 100, baseType: !470, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1663, file: !1658, line: 101, baseType: !1089, size: 128, align: 64, offset: 256)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1663, file: !1658, line: 102, baseType: !1671, size: 64, offset: 384)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1644, file: !31, line: 129, baseType: !832, size: 256, offset: 512)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1644, file: !31, line: 130, baseType: !30, size: 32, offset: 768)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1644, file: !31, line: 131, baseType: !13, size: 32, offset: 800)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1644, file: !31, line: 132, baseType: !381, size: 64, offset: 832)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1644, file: !31, line: 133, baseType: !1682, size: 64, offset: 896)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1684)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 77, size: 192, elements: !1685)
!1685 = !{!1686, !1690, !2513}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1684, file: !31, line: 83, baseType: !1687, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{null, !1593}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1684, file: !31, line: 89, baseType: !1691, size: 64, offset: 64)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{!1694, !1695}
!1694 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !47, line: 1184, baseType: !13)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1697, line: 512, size: 896, elements: !1698)
!1697 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1698 = !{!1699, !2480, !2481, !2488, !2495, !2505, !2506, !2507, !2509, !2511}
!1699 = !DIDerivedType(tag: DW_TAG_member, scope: !1696, file: !1697, line: 513, baseType: !1700, size: 320)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1696, file: !1697, line: 513, size: 320, elements: !1701)
!1701 = !{!1702, !2476, !2477, !2478, !2479}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1700, file: !1697, line: 514, baseType: !1703, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !47, line: 625, size: 1344, elements: !1705)
!1705 = !{!1706, !1715, !2381, !2387, !2394, !2395, !2400, !2401, !2406, !2407, !2410, !2469, !2470, !2471, !2472, !2473, !2474}
!1706 = !DIDerivedType(tag: DW_TAG_member, scope: !1704, file: !47, line: 628, baseType: !1707, size: 128)
!1707 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1704, file: !47, line: 628, size: 128, elements: !1708)
!1708 = !{!1709, !1714}
!1709 = !DIDerivedType(tag: DW_TAG_member, scope: !1707, file: !47, line: 629, baseType: !1710, size: 128)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1707, file: !47, line: 629, size: 128, elements: !1711)
!1711 = !{!1712, !1713}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1710, file: !47, line: 631, baseType: !381, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1710, file: !47, line: 632, baseType: !381, size: 64, offset: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1707, file: !47, line: 635, baseType: !1089, size: 128, align: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1704, file: !47, line: 639, baseType: !1716, size: 64, offset: 128)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !47, line: 733, size: 10240, elements: !1718)
!1718 = !{!1719, !2379}
!1719 = !DIDerivedType(tag: DW_TAG_member, scope: !1717, file: !47, line: 734, baseType: !1720, size: 10240)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1717, file: !47, line: 734, size: 10240, elements: !1721)
!1721 = !{!1722, !1726, !1739, !2254, !2255, !2256, !2257, !2258, !2259, !2268, !2269, !2270, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2309, !2311, !2314, !2359, !2360, !2361, !2364, !2365, !2366, !2369, !2370, !2371, !2377, !2378}
!1722 = !DIDerivedType(tag: DW_TAG_member, scope: !1720, file: !47, line: 739, baseType: !1723, size: 512, align: 512)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1720, file: !47, line: 739, size: 512, align: 512, elements: !1724)
!1724 = !{!1725}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1723, file: !47, line: 747, baseType: !352, size: 32)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1720, file: !47, line: 750, baseType: !1727, size: 128, offset: 512)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1728, line: 218, size: 128, elements: !1729)
!1728 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1729 = !{!1730, !1737, !1738}
!1730 = !DIDerivedType(tag: DW_TAG_member, scope: !1727, file: !1728, line: 219, baseType: !1731, size: 32)
!1731 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1727, file: !1728, line: 219, size: 32, elements: !1732)
!1732 = !{!1733, !1734}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1731, file: !1728, line: 220, baseType: !332, size: 32)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1731, file: !1728, line: 221, baseType: !1735)
!1735 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1728, line: 197, baseType: !1736)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1728, line: 197, elements: !1130)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1727, file: !1728, line: 223, baseType: !13, size: 32, offset: 32)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1727, file: !1728, line: 224, baseType: !287, size: 64, offset: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1720, file: !47, line: 752, baseType: !1740, size: 64, offset: 640)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!381, !1743, !381, !381, !381, !381}
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !20, line: 994, size: 1856, align: 64, elements: !1745)
!1745 = !{!1746, !1757, !1758, !1760, !1761, !1762, !1763, !1764, !1825, !2015, !2024, !2025, !2026, !2244, !2245, !2246, !2247, !2249, !2250, !2253}
!1746 = !DIDerivedType(tag: DW_TAG_member, scope: !1744, file: !20, line: 995, baseType: !1747, size: 128)
!1747 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1744, file: !20, line: 995, size: 128, elements: !1748)
!1748 = !{!1749, !1755, !1756}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1747, file: !20, line: 996, baseType: !1750, size: 64)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1751, line: 60, size: 64, elements: !1752)
!1751 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1752 = !{!1753}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1750, file: !1751, line: 61, baseType: !1754, size: 64)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1747, file: !20, line: 997, baseType: !1089, size: 128, align: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1747, file: !20, line: 998, baseType: !13, size: 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1744, file: !20, line: 1005, baseType: !332, size: 32, offset: 128)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1744, file: !20, line: 1006, baseType: !1759, size: 32, offset: 160)
!1759 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !353, line: 156, baseType: !13)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1744, file: !20, line: 1007, baseType: !390, size: 64, offset: 192)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1744, file: !20, line: 1008, baseType: !882, size: 256, offset: 256)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1744, file: !20, line: 1009, baseType: !784, size: 64, offset: 512)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1744, file: !20, line: 1010, baseType: !13, size: 32, offset: 576)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1744, file: !20, line: 1011, baseType: !1765, size: 256, offset: 640)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !20, line: 948, size: 256, elements: !1766)
!1766 = !{!1767, !1788, !1821, !1822, !1823, !1824}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1765, file: !20, line: 949, baseType: !1768, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1769, line: 34, baseType: !1770)
!1769 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1769, line: 25, size: 64, elements: !1771)
!1771 = !{!1772}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1770, file: !1769, line: 26, baseType: !1773, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1774, line: 27, baseType: !1775)
!1774 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1774, line: 13, size: 64, elements: !1776)
!1776 = !{!1777, !1787}
!1777 = !DIDerivedType(tag: DW_TAG_member, scope: !1775, file: !1774, line: 14, baseType: !1778, size: 32)
!1778 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1775, file: !1774, line: 14, size: 32, elements: !1779)
!1779 = !{!1780, !1781}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1778, file: !1774, line: 15, baseType: !352, size: 32)
!1781 = !DIDerivedType(tag: DW_TAG_member, scope: !1778, file: !1774, line: 16, baseType: !1782, size: 32)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1778, file: !1774, line: 16, size: 32, elements: !1783)
!1783 = !{!1784, !1785}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1782, file: !1774, line: 18, baseType: !361, size: 8)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1782, file: !1774, line: 19, baseType: !1786, size: 24, offset: 8)
!1786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 24, elements: !492)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1775, file: !1774, line: 26, baseType: !344, size: 32, offset: 32)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1765, file: !20, line: 950, baseType: !1789, size: 64, offset: 64)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !39, line: 59, size: 768, elements: !1791)
!1791 = !{!1792, !1798, !1799, !1800, !1802, !1803, !1810, !1811}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1790, file: !39, line: 61, baseType: !1793, size: 32)
!1793 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1794, line: 113, baseType: !1795)
!1794 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1794, line: 111, size: 32, elements: !1796)
!1796 = !{!1797}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1795, file: !1794, line: 112, baseType: !352, size: 32)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1790, file: !39, line: 62, baseType: !13, size: 32, offset: 32)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1790, file: !39, line: 63, baseType: !332, size: 32, offset: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1790, file: !39, line: 65, baseType: !1801, size: 256, offset: 128)
!1801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1203, size: 256, elements: !1099)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1790, file: !39, line: 66, baseType: !1203, size: 64, offset: 384)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1790, file: !39, line: 68, baseType: !1804, size: 192, offset: 448)
!1804 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1805, line: 41, baseType: !1806)
!1805 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1805, line: 37, size: 192, elements: !1807)
!1807 = !{!1808, !1809}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1806, file: !1805, line: 38, baseType: !332, size: 32)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1806, file: !1805, line: 39, baseType: !375, size: 128, offset: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1790, file: !39, line: 69, baseType: !1089, size: 128, align: 64, offset: 640)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1790, file: !39, line: 70, baseType: !1812, offset: 768)
!1812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1813, elements: !1819)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !39, line: 54, size: 128, elements: !1814)
!1814 = !{!1815, !1816}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1813, file: !39, line: 55, baseType: !95, size: 32)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1813, file: !39, line: 56, baseType: !1817, size: 64, offset: 64)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !39, line: 56, flags: DIFlagFwdDecl)
!1819 = !{!1820}
!1820 = !DISubrange(count: -1)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1765, file: !20, line: 951, baseType: !38, size: 32, offset: 128)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1765, file: !20, line: 952, baseType: !631, size: 32, offset: 160)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1765, file: !20, line: 952, baseType: !631, size: 32, offset: 192)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1765, file: !20, line: 953, baseType: !95, size: 32, offset: 224)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1744, file: !20, line: 1012, baseType: !1826, size: 64, offset: 896)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1828)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1829, line: 110, size: 1472, elements: !1830)
!1829 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1830 = !{!1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1847, !1848, !1849, !1850, !1851, !1852, !1960, !1961, !1962, !1963, !1964, !1995, !1998, !2002, !2010}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1828, file: !1829, line: 111, baseType: !390, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1828, file: !1829, line: 112, baseType: !631, size: 32, offset: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1828, file: !1829, line: 113, baseType: !640, size: 32, offset: 96)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1828, file: !1829, line: 114, baseType: !631, size: 32, offset: 128)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1828, file: !1829, line: 115, baseType: !640, size: 32, offset: 160)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1828, file: !1829, line: 116, baseType: !631, size: 32, offset: 192)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1828, file: !1829, line: 117, baseType: !640, size: 32, offset: 224)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1828, file: !1829, line: 118, baseType: !631, size: 32, offset: 256)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1828, file: !1829, line: 119, baseType: !640, size: 32, offset: 288)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1828, file: !1829, line: 120, baseType: !13, size: 32, offset: 320)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1828, file: !1829, line: 121, baseType: !1842, size: 64, offset: 384)
!1842 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1843, line: 24, baseType: !1844)
!1843 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1843, line: 24, size: 64, elements: !1845)
!1845 = !{!1846}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1844, file: !1843, line: 24, baseType: !696, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1828, file: !1829, line: 122, baseType: !1842, size: 64, offset: 448)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1828, file: !1829, line: 123, baseType: !1842, size: 64, offset: 512)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1828, file: !1829, line: 124, baseType: !1842, size: 64, offset: 576)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1828, file: !1829, line: 125, baseType: !1842, size: 64, offset: 640)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1828, file: !1829, line: 127, baseType: !364, size: 8, offset: 704)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1828, file: !1829, line: 129, baseType: !1853, size: 64, offset: 768)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1855, line: 195, size: 1728, elements: !1856)
!1855 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1856 = !{!1857, !1858, !1861, !1866, !1867, !1870, !1871, !1876, !1877, !1878, !1879, !1882, !1883, !1884, !1885, !1886, !1924, !1945}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1854, file: !1855, line: 196, baseType: !1793, size: 32)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1854, file: !1855, line: 197, baseType: !1859, size: 32, offset: 32)
!1859 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1855, line: 28, baseType: !1860)
!1860 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !353, line: 104, baseType: !878)
!1861 = !DIDerivedType(tag: DW_TAG_member, scope: !1854, file: !1855, line: 198, baseType: !1862, size: 192, offset: 64)
!1862 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1854, file: !1855, line: 198, size: 192, elements: !1863)
!1863 = !{!1864, !1865}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1862, file: !1855, line: 199, baseType: !375, size: 128)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1862, file: !1855, line: 200, baseType: !983, size: 192, align: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1854, file: !1855, line: 205, baseType: !1495, size: 320, offset: 256)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1854, file: !1855, line: 206, baseType: !1868, size: 64, offset: 576)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1855, line: 206, flags: DIFlagFwdDecl)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1854, file: !1855, line: 207, baseType: !287, size: 64, offset: 640)
!1871 = !DIDerivedType(tag: DW_TAG_member, scope: !1854, file: !1855, line: 208, baseType: !1872, size: 64, offset: 704)
!1872 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1854, file: !1855, line: 208, size: 64, elements: !1873)
!1873 = !{!1874, !1875}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1872, file: !1855, line: 209, baseType: !1335, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1872, file: !1855, line: 210, baseType: !1335, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1854, file: !1855, line: 212, baseType: !1335, size: 64, offset: 768)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1854, file: !1855, line: 213, baseType: !631, size: 32, offset: 832)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1854, file: !1855, line: 214, baseType: !640, size: 32, offset: 864)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1854, file: !1855, line: 215, baseType: !1880, size: 32, offset: 896)
!1880 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1855, line: 31, baseType: !1881)
!1881 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !353, line: 110, baseType: !424)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1854, file: !1855, line: 216, baseType: !372, size: 16, offset: 928)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1854, file: !1855, line: 217, baseType: !372, size: 16, offset: 944)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1854, file: !1855, line: 221, baseType: !1007, size: 16, offset: 960)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1854, file: !1855, line: 228, baseType: !381, size: 64, offset: 1024)
!1886 = !DIDerivedType(tag: DW_TAG_member, scope: !1854, file: !1855, line: 245, baseType: !1887, size: 320, offset: 1088)
!1887 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1854, file: !1855, line: 245, size: 320, elements: !1888)
!1888 = !{!1889, !1916}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1887, file: !1855, line: 246, baseType: !1890, size: 320)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1855, line: 114, size: 320, elements: !1891)
!1891 = !{!1892, !1893, !1905, !1908, !1915}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1890, file: !1855, line: 116, baseType: !381, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, scope: !1890, file: !1855, line: 117, baseType: !1894, size: 64, offset: 64)
!1894 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1890, file: !1855, line: 117, size: 64, elements: !1895)
!1895 = !{!1896, !1904}
!1896 = !DIDerivedType(tag: DW_TAG_member, scope: !1894, file: !1855, line: 118, baseType: !1897, size: 64)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1894, file: !1855, line: 118, size: 64, elements: !1898)
!1898 = !{!1899, !1900}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1897, file: !1855, line: 120, baseType: !370, size: 16)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1897, file: !1855, line: 121, baseType: !1901, size: 48, offset: 16)
!1901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !1902)
!1902 = !{!1903}
!1903 = !DISubrange(count: 6)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1894, file: !1855, line: 127, baseType: !381, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1890, file: !1855, line: 129, baseType: !1906, size: 64, offset: 128)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1855, line: 102, flags: DIFlagFwdDecl)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1890, file: !1855, line: 130, baseType: !1909, size: 64, offset: 192)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1855, line: 108, size: 192, elements: !1911)
!1911 = !{!1912, !1913, !1914}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1910, file: !1855, line: 109, baseType: !1089, size: 128, align: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1910, file: !1855, line: 110, baseType: !1793, size: 32, offset: 128)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1910, file: !1855, line: 111, baseType: !470, size: 8, offset: 160)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1890, file: !1855, line: 131, baseType: !509, size: 64, offset: 256)
!1916 = !DIDerivedType(tag: DW_TAG_member, scope: !1887, file: !1855, line: 247, baseType: !1917, size: 320)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1887, file: !1855, line: 247, size: 320, elements: !1918)
!1918 = !{!1919, !1920, !1921, !1922, !1923}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1917, file: !1855, line: 248, baseType: !381, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1917, file: !1855, line: 249, baseType: !381, size: 64, offset: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1917, file: !1855, line: 250, baseType: !1906, size: 64, offset: 128)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1917, file: !1855, line: 251, baseType: !1909, size: 64, offset: 192)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1917, file: !1855, line: 252, baseType: !548, size: 64, offset: 256)
!1924 = !DIDerivedType(tag: DW_TAG_member, scope: !1854, file: !1855, line: 260, baseType: !1925, size: 256, offset: 1408)
!1925 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1854, file: !1855, line: 260, size: 256, elements: !1926)
!1926 = !{!1927, !1933}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1925, file: !1855, line: 261, baseType: !1928, size: 256)
!1928 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1855, line: 134, size: 256, elements: !1929)
!1929 = !{!1930, !1931}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1928, file: !1855, line: 135, baseType: !287, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1928, file: !1855, line: 136, baseType: !1932, size: 256)
!1932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 256, elements: !1099)
!1933 = !DIDerivedType(tag: DW_TAG_member, scope: !1925, file: !1855, line: 262, baseType: !1934, size: 256)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1925, file: !1855, line: 262, size: 256, elements: !1935)
!1935 = !{!1936, !1937}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1934, file: !1855, line: 264, baseType: !375, size: 128)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1934, file: !1855, line: 265, baseType: !1938, size: 128, offset: 128)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1939, line: 22, size: 128, elements: !1940)
!1939 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1940 = !{!1941, !1944}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1938, file: !1939, line: 23, baseType: !1942, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1939, line: 23, flags: DIFlagFwdDecl)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1938, file: !1939, line: 24, baseType: !381, size: 64, offset: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1854, file: !1855, line: 280, baseType: !1946, size: 64, offset: 1664)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1855, line: 176, size: 192, elements: !1948)
!1948 = !{!1949, !1958, !1959}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1947, file: !1855, line: 177, baseType: !1950, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1855, line: 171, baseType: !1951)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{!95, !1853, !1954, !1956, !1853}
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1907)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1928)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1947, file: !1855, line: 178, baseType: !1853, size: 64, offset: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1947, file: !1855, line: 179, baseType: !1906, size: 64, offset: 128)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1828, file: !1829, line: 130, baseType: !1853, size: 64, offset: 832)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1828, file: !1829, line: 131, baseType: !1853, size: 64, offset: 896)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1828, file: !1829, line: 132, baseType: !1853, size: 64, offset: 960)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1828, file: !1829, line: 135, baseType: !287, size: 64, offset: 1024)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1828, file: !1829, line: 137, baseType: !1965, size: 64, offset: 1088)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1967, line: 14, size: 1088, elements: !1968)
!1967 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1968 = !{!1969, !1970, !1979, !1980, !1981, !1982, !1983, !1984}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1966, file: !1967, line: 15, baseType: !1793, size: 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1966, file: !1967, line: 17, baseType: !1971, size: 320, offset: 64)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1972, line: 22, size: 320, elements: !1973)
!1972 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1973 = !{!1974, !1975, !1976, !1977}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1971, file: !1972, line: 23, baseType: !479, size: 32)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1971, file: !1972, line: 24, baseType: !396, size: 64, offset: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1971, file: !1972, line: 26, baseType: !375, size: 128, offset: 128)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1971, file: !1972, line: 28, baseType: !1978, size: 64, offset: 256)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1966, file: !1967, line: 19, baseType: !381, size: 64, offset: 384)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1966, file: !1967, line: 20, baseType: !390, size: 64, offset: 448)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1966, file: !1967, line: 23, baseType: !411, size: 128, offset: 512)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1966, file: !1967, line: 24, baseType: !631, size: 32, offset: 640)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1966, file: !1967, line: 29, baseType: !390, size: 64, offset: 704)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1966, file: !1967, line: 36, baseType: !1985, size: 320, offset: 768)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1986, line: 15, size: 320, elements: !1987)
!1986 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1987 = !{!1988, !1989, !1990, !1991, !1992, !1993, !1994}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1985, file: !1986, line: 16, baseType: !479, size: 32)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1985, file: !1986, line: 18, baseType: !95, size: 32, offset: 32)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1985, file: !1986, line: 19, baseType: !95, size: 32, offset: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1985, file: !1986, line: 20, baseType: !95, size: 32, offset: 96)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1985, file: !1986, line: 21, baseType: !95, size: 32, offset: 128)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1985, file: !1986, line: 22, baseType: !381, size: 64, offset: 192)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1985, file: !1986, line: 23, baseType: !381, size: 64, offset: 256)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1828, file: !1829, line: 138, baseType: !1996, size: 64, offset: 1152)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !632, line: 18, flags: DIFlagFwdDecl)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1828, file: !1829, line: 139, baseType: !1999, size: 64, offset: 1216)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !2001, line: 16, flags: DIFlagFwdDecl)
!2001 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1828, file: !1829, line: 140, baseType: !2003, size: 64, offset: 1280)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1829, line: 25, size: 64, elements: !2005)
!2005 = !{!2006, !2007, !2008}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2004, file: !1829, line: 26, baseType: !352, size: 32)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2004, file: !1829, line: 27, baseType: !95, size: 32, offset: 32)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2004, file: !1829, line: 28, baseType: !2009, offset: 64)
!2009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !640, elements: !1819)
!2010 = !DIDerivedType(tag: DW_TAG_member, scope: !1828, file: !1829, line: 142, baseType: !2011, size: 128, offset: 1344)
!2011 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1828, file: !1829, line: 142, size: 128, elements: !2012)
!2012 = !{!2013, !2014}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2011, file: !1829, line: 143, baseType: !95, size: 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2011, file: !1829, line: 144, baseType: !1089, size: 128, align: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1744, file: !20, line: 1013, baseType: !2016, size: 256, offset: 960)
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !20, line: 970, size: 256, elements: !2017)
!2017 = !{!2018, !2019, !2020, !2021, !2022, !2023}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2016, file: !20, line: 971, baseType: !381, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2016, file: !20, line: 972, baseType: !13, size: 32, offset: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2016, file: !20, line: 973, baseType: !13, size: 32, offset: 96)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2016, file: !20, line: 974, baseType: !13, size: 32, offset: 128)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2016, file: !20, line: 975, baseType: !13, size: 32, offset: 160)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2016, file: !20, line: 976, baseType: !784, size: 64, offset: 192)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1744, file: !20, line: 1014, baseType: !1407, size: 128, offset: 1216)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1744, file: !20, line: 1015, baseType: !625, size: 64, offset: 1344)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1744, file: !20, line: 1016, baseType: !2027, size: 64, offset: 1408)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2029)
!2029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !20, line: 1914, size: 2112, elements: !2030)
!2030 = !{!2031, !2032, !2036, !2041, !2045, !2122, !2123, !2136, !2149, !2157, !2161, !2162, !2166, !2167, !2171, !2176, !2177, !2181, !2185, !2191, !2192, !2196, !2197, !2203, !2207, !2211, !2217, !2221, !2225, !2229, !2233, !2234, !2240}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2029, file: !20, line: 1915, baseType: !812, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2029, file: !20, line: 1916, baseType: !2033, size: 64, offset: 64)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!784, !1743, !784, !95}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2029, file: !20, line: 1917, baseType: !2037, size: 64, offset: 128)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!578, !1743, !548, !593, !2040}
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2029, file: !20, line: 1918, baseType: !2042, size: 64, offset: 192)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{!578, !1743, !509, !593, !2040}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2029, file: !20, line: 1919, baseType: !2046, size: 64, offset: 256)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!578, !2049, !2071}
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !20, line: 373, size: 384, elements: !2051)
!2051 = !{!2052, !2053, !2054, !2058, !2059, !2060, !2061}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2050, file: !20, line: 374, baseType: !1743, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2050, file: !20, line: 375, baseType: !784, size: 64, offset: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2050, file: !20, line: 376, baseType: !2055, size: 64, offset: 128)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{null, !2049, !582}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2050, file: !20, line: 377, baseType: !287, size: 64, offset: 192)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2050, file: !20, line: 378, baseType: !95, size: 32, offset: 256)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2050, file: !20, line: 379, baseType: !370, size: 16, offset: 288)
!2061 = !DIDerivedType(tag: DW_TAG_member, scope: !2050, file: !20, line: 380, baseType: !2062, size: 64, offset: 320)
!2062 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2050, file: !20, line: 380, size: 64, elements: !2063)
!2063 = !{!2064, !2067}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2062, file: !20, line: 386, baseType: !2065, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !20, line: 386, flags: DIFlagFwdDecl)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2062, file: !20, line: 395, baseType: !2068, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{!578, !287}
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2073, line: 41, size: 320, elements: !2074)
!2073 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!2074 = !{!2075, !2076, !2077, !2078, !2079, !2080, !2085, !2117}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !2072, file: !2073, line: 42, baseType: !361, size: 8)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !2072, file: !2073, line: 43, baseType: !470, size: 8, offset: 8)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !2072, file: !2073, line: 44, baseType: !470, size: 8, offset: 16)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !2072, file: !2073, line: 45, baseType: !470, size: 8, offset: 24)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !2072, file: !2073, line: 46, baseType: !470, size: 8, offset: 32)
!2080 = !DIDerivedType(tag: DW_TAG_member, scope: !2072, file: !2073, line: 47, baseType: !2081, size: 64, offset: 64)
!2081 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2072, file: !2073, line: 47, size: 64, elements: !2082)
!2082 = !{!2083, !2084}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !2081, file: !2073, line: 48, baseType: !593, size: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !2081, file: !2073, line: 49, baseType: !95, size: 32)
!2085 = !DIDerivedType(tag: DW_TAG_member, scope: !2072, file: !2073, line: 61, baseType: !2086, size: 128, offset: 128)
!2086 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2072, file: !2073, line: 61, size: 128, elements: !2087)
!2087 = !{!2088, !2094}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !2086, file: !2073, line: 67, baseType: !2089, size: 128)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !2090, line: 17, size: 128, elements: !2091)
!2090 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!2091 = !{!2092, !2093}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2089, file: !2090, line: 19, baseType: !287, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2089, file: !2090, line: 20, baseType: !594, size: 64, offset: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, scope: !2086, file: !2073, line: 68, baseType: !2095, size: 128)
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2086, file: !2073, line: 68, size: 128, elements: !2096)
!2096 = !{!2097, !2116}
!2097 = !DIDerivedType(tag: DW_TAG_member, scope: !2095, file: !2073, line: 69, baseType: !2098, size: 64)
!2098 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2095, file: !2073, line: 69, size: 64, elements: !2099)
!2099 = !{!2100, !2103, !2110, !2113, !2115}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !2098, file: !2073, line: 71, baseType: !2101, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2089)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !2098, file: !2073, line: 72, baseType: !2104, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2106)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !2073, line: 17, size: 128, elements: !2107)
!2107 = !{!2108, !2109}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2106, file: !2073, line: 18, baseType: !287, size: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2106, file: !2073, line: 19, baseType: !593, size: 64, offset: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !2098, file: !2073, line: 73, baseType: !2111, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1590)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !2098, file: !2073, line: 74, baseType: !2114, size: 64)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !2098, file: !2073, line: 75, baseType: !287, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2095, file: !2073, line: 77, baseType: !593, size: 64, offset: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, scope: !2072, file: !2073, line: 80, baseType: !2118, size: 64, offset: 256)
!2118 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2072, file: !2073, line: 80, size: 64, elements: !2119)
!2119 = !{!2120, !2121}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !2118, file: !2073, line: 81, baseType: !381, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !2118, file: !2073, line: 82, baseType: !784, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2029, file: !20, line: 1920, baseType: !2046, size: 64, offset: 320)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2029, file: !20, line: 1921, baseType: !2124, size: 64, offset: 384)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!95, !2049, !2127, !13}
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !63, line: 1559, size: 192, elements: !2129)
!2129 = !{!2130, !2131, !2132}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "req_list", scope: !2128, file: !63, line: 1560, baseType: !290, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "need_ts", scope: !2128, file: !63, line: 1561, baseType: !470, size: 8, offset: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2128, file: !63, line: 1562, baseType: !2133, size: 64, offset: 128)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{null, !2127}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2029, file: !20, line: 1923, baseType: !2137, size: 64, offset: 448)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!95, !1743, !2140}
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !20, line: 1858, size: 128, elements: !2142)
!2142 = !{!2143, !2148}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2141, file: !20, line: 1859, baseType: !2144, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !20, line: 1855, baseType: !2145)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!470, !2140, !509, !95, !784, !696, !13}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2141, file: !20, line: 1860, baseType: !784, size: 64, offset: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2029, file: !20, line: 1924, baseType: !2150, size: 64, offset: 512)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!2153, !1743, !2155}
!2153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2154, line: 59, baseType: !13)
!2154 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !798, line: 31, flags: DIFlagFwdDecl)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2029, file: !20, line: 1925, baseType: !2158, size: 64, offset: 576)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{!582, !1743, !13, !381}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2029, file: !20, line: 1926, baseType: !2158, size: 64, offset: 640)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2029, file: !20, line: 1927, baseType: !2163, size: 64, offset: 704)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!95, !1743, !1703}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2029, file: !20, line: 1928, baseType: !381, size: 64, offset: 768)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2029, file: !20, line: 1929, baseType: !2168, size: 64, offset: 832)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!95, !625, !1743}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2029, file: !20, line: 1930, baseType: !2172, size: 64, offset: 896)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!95, !1743, !2175}
!2175 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !20, line: 1061, baseType: !287)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2029, file: !20, line: 1931, baseType: !2168, size: 64, offset: 960)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2029, file: !20, line: 1932, baseType: !2178, size: 64, offset: 1024)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!95, !1743, !784, !784, !95}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2029, file: !20, line: 1933, baseType: !2182, size: 64, offset: 1088)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{!95, !95, !1743, !95}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2029, file: !20, line: 1934, baseType: !2186, size: 64, offset: 1152)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{!95, !1743, !95, !2189}
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !20, line: 1063, flags: DIFlagFwdDecl)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2029, file: !20, line: 1935, baseType: !1740, size: 64, offset: 1216)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2029, file: !20, line: 1936, baseType: !2193, size: 64, offset: 1280)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{!95, !95}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2029, file: !20, line: 1937, baseType: !2186, size: 64, offset: 1344)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2029, file: !20, line: 1938, baseType: !2198, size: 64, offset: 1408)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!578, !2201, !1743, !2040, !593, !13}
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1277, line: 59, flags: DIFlagFwdDecl)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2029, file: !20, line: 1939, baseType: !2204, size: 64, offset: 1472)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!578, !1743, !2040, !2201, !593, !13}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2029, file: !20, line: 1940, baseType: !2208, size: 64, offset: 1536)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{null, !1743}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2029, file: !20, line: 1941, baseType: !2212, size: 64, offset: 1600)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{!95, !1743, !95, !2215, !2216}
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2029, file: !20, line: 1942, baseType: !2218, size: 64, offset: 1664)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!582, !1743, !95, !784, !784}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2029, file: !20, line: 1944, baseType: !2222, size: 64, offset: 1728)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{null, !1275, !1743}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2029, file: !20, line: 1948, baseType: !2226, size: 64, offset: 1792)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!578, !1743, !784, !1743, !784, !593, !13}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2029, file: !20, line: 1950, baseType: !2230, size: 64, offset: 1856)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{!784, !1743, !784, !1743, !784, !784, !13}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2029, file: !20, line: 1953, baseType: !2178, size: 64, offset: 1920)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2029, file: !20, line: 1954, baseType: !2235, size: 64, offset: 1984)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{!95, !2238, !13}
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !20, line: 1911, flags: DIFlagFwdDecl)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2029, file: !20, line: 1955, baseType: !2241, size: 64, offset: 2048)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!95, !2238, !2127, !13}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1744, file: !20, line: 1018, baseType: !696, size: 64, offset: 1472)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1744, file: !20, line: 1020, baseType: !287, size: 64, offset: 1536)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1744, file: !20, line: 1023, baseType: !287, size: 64, offset: 1600)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1744, file: !20, line: 1027, baseType: !2248, size: 64, offset: 1664)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1744, file: !20, line: 1029, baseType: !621, size: 64, offset: 1728)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1744, file: !20, line: 1030, baseType: !2251, size: 32, offset: 1792)
!2251 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2252, line: 8, baseType: !424)
!2252 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1744, file: !20, line: 1031, baseType: !2251, size: 32, offset: 1824)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1720, file: !47, line: 756, baseType: !381, size: 64, offset: 704)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1720, file: !47, line: 757, baseType: !381, size: 64, offset: 768)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1720, file: !47, line: 760, baseType: !381, size: 64, offset: 832)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1720, file: !47, line: 761, baseType: !381, size: 64, offset: 896)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1720, file: !47, line: 763, baseType: !381, size: 64, offset: 960)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1720, file: !47, line: 764, baseType: !2260, size: 64, offset: 1024)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2262, line: 299, baseType: !2263)
!2262 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2262, line: 299, size: 64, elements: !2264)
!2264 = !{!2265}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2263, file: !2262, line: 299, baseType: !2266, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2267, line: 18, baseType: !381)
!2267 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1720, file: !47, line: 773, baseType: !352, size: 32, offset: 1088)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1720, file: !47, line: 785, baseType: !352, size: 32, offset: 1120)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1720, file: !47, line: 795, baseType: !2271, size: 64, offset: 1152)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !47, line: 726, size: 128, elements: !2273)
!2273 = !{!2274, !2275}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2272, file: !47, line: 727, baseType: !696, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2272, file: !47, line: 728, baseType: !95, size: 32, offset: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1720, file: !47, line: 801, baseType: !381, size: 64, offset: 1216)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1720, file: !47, line: 804, baseType: !390, size: 64, offset: 1280)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1720, file: !47, line: 806, baseType: !95, size: 32, offset: 1344)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1720, file: !47, line: 808, baseType: !332, size: 32, offset: 1376)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1720, file: !47, line: 823, baseType: !1495, size: 320, offset: 1408)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1720, file: !47, line: 825, baseType: !375, size: 128, offset: 1728)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1720, file: !47, line: 845, baseType: !95, size: 32, offset: 1856)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1720, file: !47, line: 849, baseType: !381, size: 64, offset: 1920)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1720, file: !47, line: 850, baseType: !381, size: 64, offset: 1984)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1720, file: !47, line: 852, baseType: !381, size: 64, offset: 2048)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1720, file: !47, line: 853, baseType: !381, size: 64, offset: 2112)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1720, file: !47, line: 854, baseType: !392, size: 64, offset: 2176)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1720, file: !47, line: 855, baseType: !381, size: 64, offset: 2240)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1720, file: !47, line: 856, baseType: !381, size: 64, offset: 2304)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1720, file: !47, line: 857, baseType: !381, size: 64, offset: 2368)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1720, file: !47, line: 858, baseType: !381, size: 64, offset: 2432)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1720, file: !47, line: 865, baseType: !671, size: 32, offset: 2496)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1720, file: !47, line: 867, baseType: !332, size: 32, offset: 2528)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1720, file: !47, line: 869, baseType: !381, size: 64, offset: 2560)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1720, file: !47, line: 869, baseType: !381, size: 64, offset: 2624)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1720, file: !47, line: 869, baseType: !381, size: 64, offset: 2688)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1720, file: !47, line: 869, baseType: !381, size: 64, offset: 2752)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1720, file: !47, line: 870, baseType: !381, size: 64, offset: 2816)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1720, file: !47, line: 870, baseType: !381, size: 64, offset: 2880)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1720, file: !47, line: 870, baseType: !381, size: 64, offset: 2944)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1720, file: !47, line: 871, baseType: !381, size: 64, offset: 3008)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1720, file: !47, line: 871, baseType: !381, size: 64, offset: 3072)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1720, file: !47, line: 871, baseType: !381, size: 64, offset: 3136)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1720, file: !47, line: 871, baseType: !381, size: 64, offset: 3200)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1720, file: !47, line: 873, baseType: !2306, size: 3328, offset: 3264)
!2306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 3328, elements: !2307)
!2307 = !{!2308}
!2308 = !DISubrange(count: 52)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1720, file: !47, line: 875, baseType: !2310, size: 1280, offset: 6592)
!2310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1971, size: 1280, elements: !1099)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1720, file: !47, line: 877, baseType: !2312, size: 64, offset: 7872)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !47, line: 877, flags: DIFlagFwdDecl)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1720, file: !47, line: 880, baseType: !2315, size: 1088, offset: 7936)
!2315 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2316, line: 72, baseType: !2317)
!2316 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2317 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2316, line: 23, size: 1088, elements: !2318)
!2318 = !{!2319, !2320, !2321, !2322, !2323, !2326, !2327, !2328, !2329, !2356, !2357, !2358}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2317, file: !2316, line: 28, baseType: !696, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2317, file: !2316, line: 38, baseType: !392, size: 64, offset: 64)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2317, file: !2316, line: 40, baseType: !381, size: 64, offset: 128)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2317, file: !2316, line: 43, baseType: !1495, size: 320, offset: 192)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2317, file: !2316, line: 44, baseType: !2324, size: 64, offset: 512)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2316, line: 44, flags: DIFlagFwdDecl)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2317, file: !2316, line: 48, baseType: !381, size: 64, offset: 576)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2317, file: !2316, line: 59, baseType: !882, size: 256, offset: 640)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2317, file: !2316, line: 60, baseType: !287, size: 64, offset: 896)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2317, file: !2316, line: 61, baseType: !2330, size: 64, offset: 960)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2332)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2333, line: 13, size: 1216, elements: !2334)
!2333 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2334 = !{!2335, !2336, !2337, !2338, !2339, !2340, !2341, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2332, file: !2333, line: 14, baseType: !287, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2332, file: !2333, line: 15, baseType: !381, size: 64, offset: 64)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2332, file: !2333, line: 17, baseType: !381, size: 64, offset: 128)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2332, file: !2333, line: 17, baseType: !381, size: 64, offset: 192)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2332, file: !2333, line: 18, baseType: !381, size: 64, offset: 256)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2332, file: !2333, line: 18, baseType: !381, size: 64, offset: 320)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2332, file: !2333, line: 19, baseType: !2342, size: 64, offset: 384)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2332, file: !2333, line: 21, baseType: !582, size: 64, offset: 448)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2332, file: !2333, line: 23, baseType: !582, size: 64, offset: 512)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2332, file: !2333, line: 24, baseType: !582, size: 64, offset: 576)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2332, file: !2333, line: 25, baseType: !582, size: 64, offset: 640)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2332, file: !2333, line: 26, baseType: !582, size: 64, offset: 704)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2332, file: !2333, line: 27, baseType: !582, size: 64, offset: 768)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2332, file: !2333, line: 28, baseType: !582, size: 64, offset: 832)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2332, file: !2333, line: 29, baseType: !582, size: 64, offset: 896)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2332, file: !2333, line: 30, baseType: !582, size: 64, offset: 960)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2332, file: !2333, line: 31, baseType: !582, size: 64, offset: 1024)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2332, file: !2333, line: 32, baseType: !582, size: 64, offset: 1088)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2332, file: !2333, line: 33, baseType: !582, size: 64, offset: 1152)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2317, file: !2316, line: 63, baseType: !352, size: 32, offset: 1024)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2317, file: !2316, line: 69, baseType: !370, size: 16, offset: 1056)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2317, file: !2316, line: 70, baseType: !1005, size: 16, offset: 1072)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1720, file: !47, line: 882, baseType: !381, size: 64, offset: 9024)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1720, file: !47, line: 885, baseType: !332, size: 32, offset: 9088)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1720, file: !47, line: 886, baseType: !2362, size: 64, offset: 9152)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !47, line: 732, flags: DIFlagFwdDecl)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1720, file: !47, line: 901, baseType: !1996, size: 64, offset: 9216)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1720, file: !47, line: 904, baseType: !1743, size: 64, offset: 9280)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1720, file: !47, line: 906, baseType: !2367, size: 64, offset: 9344)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !47, line: 906, flags: DIFlagFwdDecl)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1720, file: !47, line: 930, baseType: !352, size: 32, offset: 9408)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1720, file: !47, line: 933, baseType: !352, size: 32, offset: 9440)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1720, file: !47, line: 935, baseType: !2372, size: 64, offset: 9472)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !140, line: 103, size: 64, elements: !2373)
!2373 = !{!2374}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2372, file: !140, line: 104, baseType: !2375, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !140, line: 101, flags: DIFlagFwdDecl)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1720, file: !47, line: 940, baseType: !390, size: 64, offset: 9536)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1720, file: !47, line: 942, baseType: !387, size: 256, offset: 9600)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1717, file: !47, line: 986, baseType: !2380, offset: 10240)
!2380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, elements: !1819)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1704, file: !47, line: 640, baseType: !2382, size: 64, offset: 192)
!2382 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2262, line: 297, baseType: !2383)
!2383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2262, line: 297, size: 64, elements: !2384)
!2384 = !{!2385}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2383, file: !2262, line: 297, baseType: !2386, size: 64)
!2386 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2267, line: 19, baseType: !381)
!2387 = !DIDerivedType(tag: DW_TAG_member, scope: !1704, file: !47, line: 646, baseType: !2388, size: 64, offset: 256)
!2388 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1704, file: !47, line: 646, size: 64, elements: !2389)
!2389 = !{!2390, !2393}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2388, file: !47, line: 647, baseType: !2391, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2392)
!2392 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !47, line: 542, baseType: !381)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2388, file: !47, line: 648, baseType: !2392, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1704, file: !47, line: 666, baseType: !95, size: 32, offset: 320)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1704, file: !47, line: 667, baseType: !2396, size: 64, offset: 384)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !47, line: 579, size: 320, elements: !2398)
!2398 = !{!2399}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2397, file: !47, line: 580, baseType: !1495, size: 320)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1704, file: !47, line: 670, baseType: !470, size: 8, offset: 448)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1704, file: !47, line: 681, baseType: !2402, size: 256, offset: 512)
!2402 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1704, file: !47, line: 678, size: 256, elements: !2403)
!2403 = !{!2404, !2405}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2402, file: !47, line: 679, baseType: !983, size: 192, align: 64)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2402, file: !47, line: 680, baseType: !381, size: 64, offset: 192)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1704, file: !47, line: 689, baseType: !375, size: 128, offset: 768)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1704, file: !47, line: 691, baseType: !2408, size: 64, offset: 896)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !47, line: 691, flags: DIFlagFwdDecl)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1704, file: !47, line: 694, baseType: !2411, size: 64, offset: 960)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2413)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1697, line: 563, size: 1024, elements: !2414)
!2414 = !{!2415, !2419, !2420, !2424, !2428, !2432, !2433, !2437, !2441, !2445, !2446, !2447, !2451, !2455, !2461, !2465}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2413, file: !1697, line: 564, baseType: !2416, size: 64)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{null, !1703}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2413, file: !1697, line: 569, baseType: !2416, size: 64, offset: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2413, file: !1697, line: 571, baseType: !2421, size: 64, offset: 128)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!95, !1703, !381}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2413, file: !1697, line: 572, baseType: !2425, size: 64, offset: 192)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!95, !1703}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2413, file: !1697, line: 578, baseType: !2429, size: 64, offset: 256)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = !DISubroutineType(types: !2431)
!2431 = !{!95, !1703, !381, !381, !381}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2413, file: !1697, line: 580, baseType: !1691, size: 64, offset: 320)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2413, file: !1697, line: 581, baseType: !2434, size: 64, offset: 384)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{!1694, !1695, !13}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2413, file: !1697, line: 582, baseType: !2438, size: 64, offset: 448)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!1694, !1695, !381, !381}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2413, file: !1697, line: 584, baseType: !2442, size: 64, offset: 512)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!381, !1703}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2413, file: !1697, line: 588, baseType: !1691, size: 64, offset: 576)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2413, file: !1697, line: 591, baseType: !1691, size: 64, offset: 640)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2413, file: !1697, line: 597, baseType: !2448, size: 64, offset: 704)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!95, !1703, !381, !287, !95, !95}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2413, file: !1697, line: 603, baseType: !2452, size: 64, offset: 768)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!509, !1703}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2413, file: !1697, line: 613, baseType: !2456, size: 64, offset: 832)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{!95, !1703, !2459}
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !47, line: 717, flags: DIFlagFwdDecl)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2413, file: !1697, line: 625, baseType: !2462, size: 64, offset: 896)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!2459, !1703, !381}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2413, file: !1697, line: 633, baseType: !2466, size: 64, offset: 960)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{!1593, !1703, !381}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1704, file: !47, line: 697, baseType: !381, size: 64, offset: 1024)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1704, file: !47, line: 699, baseType: !1743, size: 64, offset: 1088)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1704, file: !47, line: 700, baseType: !287, size: 64, offset: 1152)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1704, file: !47, line: 711, baseType: !390, size: 64, offset: 1216)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1704, file: !47, line: 717, baseType: !2459, size: 64, offset: 1280)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1704, file: !47, line: 722, baseType: !2475, offset: 1344)
!2475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !47, line: 570, elements: !1130)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1700, file: !1697, line: 515, baseType: !1347, size: 32, offset: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1700, file: !1697, line: 516, baseType: !381, size: 64, offset: 128)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1700, file: !1697, line: 517, baseType: !381, size: 64, offset: 192)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1700, file: !1697, line: 518, baseType: !381, size: 64, offset: 256)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1696, file: !1697, line: 520, baseType: !46, size: 32, offset: 320)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1696, file: !1697, line: 522, baseType: !2482, size: 64, offset: 384)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2267, line: 22, baseType: !2484)
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2267, line: 22, size: 64, elements: !2485)
!2485 = !{!2486}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2484, file: !2267, line: 22, baseType: !2487, size: 64)
!2487 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2267, line: 15, baseType: !381)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1696, file: !1697, line: 524, baseType: !2489, size: 64, offset: 448)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2262, line: 372, baseType: !2491)
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2262, line: 372, size: 64, elements: !2492)
!2492 = !{!2493}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2491, file: !2262, line: 372, baseType: !2494, size: 64)
!2494 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2267, line: 16, baseType: !381)
!2495 = !DIDerivedType(tag: DW_TAG_member, scope: !1696, file: !1697, line: 527, baseType: !2496, size: 64, offset: 512)
!2496 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1696, file: !1697, line: 527, size: 64, elements: !2497)
!2497 = !{!2498, !2504}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2496, file: !1697, line: 528, baseType: !2499, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2267, line: 21, baseType: !2500)
!2500 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2267, line: 21, size: 64, elements: !2501)
!2501 = !{!2502}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2500, file: !2267, line: 21, baseType: !2503, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2267, line: 14, baseType: !381)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2496, file: !1697, line: 529, baseType: !2483, size: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1696, file: !1697, line: 534, baseType: !1593, size: 64, offset: 576)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1696, file: !1697, line: 535, baseType: !1593, size: 64, offset: 640)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1696, file: !1697, line: 541, baseType: !2508, size: 64, offset: 704)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1696, file: !1697, line: 545, baseType: !2510, size: 64, offset: 768)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1696, file: !1697, line: 549, baseType: !2512, size: 64, offset: 832)
!2512 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2262, line: 520, baseType: !1593)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1684, file: !31, line: 100, baseType: !2514, size: 64, offset: 128)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!95, !1643, !381, !381, !95}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1644, file: !31, line: 134, baseType: !287, size: 64, offset: 960)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1644, file: !31, line: 135, baseType: !95, size: 32, offset: 1024)
!2519 = !DIDerivedType(tag: DW_TAG_member, scope: !1644, file: !31, line: 136, baseType: !2520, size: 128, offset: 1088)
!2520 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1644, file: !31, line: 136, size: 128, elements: !2521)
!2521 = !{!2522, !2528}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2520, file: !31, line: 137, baseType: !2523, size: 128)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2524, line: 6, size: 128, elements: !2525)
!2524 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2525 = !{!2526, !2527}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2523, file: !2524, line: 7, baseType: !696, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2523, file: !2524, line: 8, baseType: !696, size: 64, offset: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, scope: !2520, file: !31, line: 138, baseType: !2529)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2520, file: !31, line: 138, elements: !2530)
!2530 = !{!2531, !2533}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2529, file: !31, line: 138, baseType: !2532)
!2532 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2529, file: !31, line: 138, elements: !1130)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2529, file: !31, line: 138, baseType: !2534)
!2534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2523, elements: !1819)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1640, file: !47, line: 147, baseType: !287, size: 64, offset: 64)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1598, file: !47, line: 161, baseType: !1089, size: 128, align: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, scope: !1594, file: !47, line: 164, baseType: !2538, size: 32, offset: 384)
!2538 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1594, file: !47, line: 164, size: 32, elements: !2539)
!2539 = !{!2540, !2541}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2538, file: !47, line: 169, baseType: !352, size: 32)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2538, file: !47, line: 177, baseType: !13, size: 32)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1594, file: !47, line: 181, baseType: !352, size: 32, offset: 416)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !1590, file: !1563, line: 33, baseType: !13, size: 32, offset: 64)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !1590, file: !1563, line: 34, baseType: !13, size: 32, offset: 96)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pool", scope: !1552, file: !184, line: 317, baseType: !2546, size: 64, offset: 896)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_set", file: !2548, line: 678, size: 1984, elements: !2549)
!2548 = !DIFile(filename: "./include/linux/bio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48d164cf34dda85459af1fe5d2b8d08f")
!2549 = !{!2550, !2551, !2552, !2555, !2575, !2576, !2577, !2578, !2583, !2584, !2585}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "bio_slab", scope: !2547, file: !2548, line: 679, baseType: !307, size: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "front_pad", scope: !2547, file: !2548, line: 680, baseType: !13, size: 32, offset: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !2547, file: !2548, line: 685, baseType: !2553, size: 64, offset: 128)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_alloc_cache", file: !2548, line: 685, flags: DIFlagFwdDecl)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "bio_pool", scope: !2547, file: !2548, line: 687, baseType: !2556, size: 576, offset: 192)
!2556 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_t", file: !309, line: 26, baseType: !2557)
!2557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempool_s", file: !309, line: 16, size: 576, elements: !2558)
!2558 = !{!2559, !2560, !2561, !2562, !2563, !2564, !2569, !2574}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2557, file: !309, line: 17, baseType: !332, size: 32)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "min_nr", scope: !2557, file: !309, line: 18, baseType: !95, size: 32, offset: 32)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "curr_nr", scope: !2557, file: !309, line: 19, baseType: !95, size: 32, offset: 64)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2557, file: !309, line: 20, baseType: !2216, size: 64, offset: 128)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "pool_data", scope: !2557, file: !309, line: 22, baseType: !287, size: 64, offset: 192)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2557, file: !309, line: 23, baseType: !2565, size: 64, offset: 256)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_alloc_t", file: !309, line: 13, baseType: !2567)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!287, !1347, !287}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2557, file: !309, line: 24, baseType: !2570, size: 64, offset: 320)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_free_t", file: !309, line: 14, baseType: !2572)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{null, !287, !287}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2557, file: !309, line: 25, baseType: !1804, size: 192, offset: 384)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_pool", scope: !2547, file: !2548, line: 688, baseType: !2556, size: 576, offset: 768)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "back_pad", scope: !2547, file: !2548, line: 694, baseType: !13, size: 32, offset: 1344)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_lock", scope: !2547, file: !2548, line: 699, baseType: !332, size: 32, offset: 1376)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_list", scope: !2547, file: !2548, line: 700, baseType: !2579, size: 128, offset: 1408)
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2548, line: 550, size: 128, elements: !2580)
!2580 = !{!2581, !2582}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2579, file: !2548, line: 551, baseType: !1551, size: 64)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2579, file: !2548, line: 552, baseType: !1551, size: 64, offset: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_work", scope: !2547, file: !2548, line: 701, baseType: !387, size: 256, offset: 1536)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_workqueue", scope: !2547, file: !2548, line: 702, baseType: !426, size: 64, offset: 1792)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !2547, file: !2548, line: 707, baseType: !411, size: 128, offset: 1856)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "bi_inline_vecs", scope: !1552, file: !184, line: 324, baseType: !2587, offset: 960)
!2587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1590, elements: !1819)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "poll_bio", scope: !1545, file: !63, line: 1390, baseType: !2589, size: 64, offset: 64)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{!95, !1551, !2127, !13}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1545, file: !63, line: 1392, baseType: !2593, size: 64, offset: 128)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!95, !1524, !2596}
!2596 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_mode_t", file: !63, line: 115, baseType: !13)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1545, file: !63, line: 1393, baseType: !2598, size: 64, offset: 192)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{null, !1524}
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !1545, file: !63, line: 1394, baseType: !2602, size: 64, offset: 256)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!95, !1517, !2596, !13, !381}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1545, file: !63, line: 1396, baseType: !2602, size: 64, offset: 320)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "check_events", scope: !1545, file: !63, line: 1398, baseType: !2607, size: 64, offset: 384)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = !DISubroutineType(types: !2609)
!2609 = !{!13, !1524, !13}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_native_capacity", scope: !1545, file: !63, line: 1400, baseType: !2598, size: 64, offset: 448)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "getgeo", scope: !1545, file: !63, line: 1401, baseType: !2612, size: 64, offset: 512)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{!95, !1517, !2615}
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DICompositeType(tag: DW_TAG_structure_type, name: "hd_geometry", file: !20, line: 56, flags: DIFlagFwdDecl)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_only", scope: !1545, file: !63, line: 1402, baseType: !2618, size: 64, offset: 576)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!95, !1517, !470}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "free_disk", scope: !1545, file: !63, line: 1403, baseType: !2598, size: 64, offset: 640)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "swap_slot_free_notify", scope: !1545, file: !63, line: 1405, baseType: !2623, size: 64, offset: 704)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DISubroutineType(types: !2625)
!2625 = !{null, !1517, !381}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "report_zones", scope: !1545, file: !63, line: 1406, baseType: !2627, size: 64, offset: 768)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{!95, !1524, !1521, !13, !2630, !287}
!2630 = !DIDerivedType(tag: DW_TAG_typedef, name: "report_zones_cb", file: !63, line: 342, baseType: !2631)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{!95, !2634, !13, !287}
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_zone", file: !2636, line: 106, size: 512, elements: !2637)
!2636 = !DIFile(filename: "./include/uapi/linux/blkzoned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3d5e7016ed7b437a9c2a308f55db1257")
!2637 = !{!2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2647, !2648}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2635, file: !2636, line: 107, baseType: !697, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2635, file: !2636, line: 108, baseType: !697, size: 64, offset: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !2635, file: !2636, line: 109, baseType: !697, size: 64, offset: 128)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2635, file: !2636, line: 110, baseType: !363, size: 8, offset: 192)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !2635, file: !2636, line: 111, baseType: !363, size: 8, offset: 200)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "non_seq", scope: !2635, file: !2636, line: 112, baseType: !363, size: 8, offset: 208)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !2635, file: !2636, line: 113, baseType: !363, size: 8, offset: 216)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !2635, file: !2636, line: 114, baseType: !2646, size: 32, offset: 224)
!2646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 32, elements: !1099)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !2635, file: !2636, line: 115, baseType: !697, size: 64, offset: 256)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2635, file: !2636, line: 116, baseType: !2649, size: 192, offset: 320)
!2649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 192, elements: !2650)
!2650 = !{!2651}
!2651 = !DISubrange(count: 24)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1545, file: !63, line: 1408, baseType: !2653, size: 64, offset: 832)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{!548, !1524, !2656}
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "get_unique_id", scope: !1545, file: !63, line: 1410, baseType: !2658, size: 64, offset: 896)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DISubroutineType(types: !2660)
!2660 = !{!95, !1524, !2661, !62}
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1545, file: !63, line: 1412, baseType: !812, size: 64, offset: 960)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "pr_ops", scope: !1545, file: !63, line: 1413, baseType: !2664, size: 64, offset: 1024)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2666)
!2666 = !DICompositeType(tag: DW_TAG_structure_type, name: "pr_ops", file: !63, line: 37, flags: DIFlagFwdDecl)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "alternative_gpt_sector", scope: !1545, file: !63, line: 1420, baseType: !2668, size: 64, offset: 1088)
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2669, size: 64)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{!95, !1524, !2671}
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !1525, file: !63, line: 146, baseType: !294, size: 64, offset: 640)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1525, file: !63, line: 147, baseType: !287, size: 64, offset: 704)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "bio_split", scope: !1525, file: !63, line: 149, baseType: !2547, size: 1984, offset: 768)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1525, file: !63, line: 151, baseType: !95, size: 32, offset: 2752)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1525, file: !63, line: 152, baseType: !381, size: 64, offset: 2816)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "open_mutex", scope: !1525, file: !63, line: 161, baseType: !882, size: 256, offset: 2880)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "open_partitions", scope: !1525, file: !63, line: 162, baseType: !13, size: 32, offset: 3136)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !1525, file: !63, line: 164, baseType: !2680, size: 64, offset: 3200)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !20, line: 50, flags: DIFlagFwdDecl)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "queue_kobj", scope: !1525, file: !63, line: 165, baseType: !505, size: 512, offset: 3264)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "slave_dir", scope: !1525, file: !63, line: 166, baseType: !513, size: 64, offset: 3776)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "slave_bdevs", scope: !1525, file: !63, line: 168, baseType: !375, size: 128, offset: 3840)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !1525, file: !63, line: 170, baseType: !2686, size: 64, offset: 3968)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DICompositeType(tag: DW_TAG_structure_type, name: "timer_rand_state", file: !63, line: 170, flags: DIFlagFwdDecl)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "sync_io", scope: !1525, file: !63, line: 171, baseType: !352, size: 32, offset: 4032)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "ev", scope: !1525, file: !63, line: 172, baseType: !2690, size: 64, offset: 4096)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_events", file: !63, line: 104, flags: DIFlagFwdDecl)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "cdi", scope: !1525, file: !63, line: 197, baseType: !2693, size: 64, offset: 4160)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdrom_device_info", file: !63, line: 197, flags: DIFlagFwdDecl)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1525, file: !63, line: 199, baseType: !95, size: 32, offset: 4224)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !1525, file: !63, line: 200, baseType: !2697, size: 64, offset: 4288)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DICompositeType(tag: DW_TAG_structure_type, name: "badblocks", file: !63, line: 105, flags: DIFlagFwdDecl)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "lockdep_map", scope: !1525, file: !63, line: 201, baseType: !1128, offset: 4352)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "diskseq", scope: !1525, file: !63, line: 202, baseType: !696, size: 64, offset: 4352)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "open_mode", scope: !1525, file: !63, line: 203, baseType: !2596, size: 32, offset: 4416)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ranges", scope: !1525, file: !63, line: 209, baseType: !2703, size: 64, offset: 4480)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_ranges", file: !63, line: 384, size: 576, elements: !2705)
!2705 = !{!2706, !2707, !2708, !2709}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2704, file: !63, line: 385, baseType: !505, size: 512)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_registered", scope: !2704, file: !63, line: 386, baseType: !470, size: 8, offset: 512)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ia_ranges", scope: !2704, file: !63, line: 387, baseType: !13, size: 32, offset: 544)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "ia_range", scope: !2704, file: !63, line: 388, baseType: !2710, offset: 576)
!2710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2711, elements: !1819)
!2711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_range", file: !63, line: 378, size: 640, elements: !2712)
!2712 = !{!2713, !2714, !2715}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2711, file: !63, line: 379, baseType: !505, size: 512)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "sector", scope: !2711, file: !63, line: 380, baseType: !1521, size: 64, offset: 512)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sectors", scope: !2711, file: !63, line: 381, baseType: !1521, size: 64, offset: 576)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !1518, file: !184, line: 44, baseType: !294, size: 64, offset: 192)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !1518, file: !184, line: 45, baseType: !2718, size: 64, offset: 256)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2720, line: 8, size: 1216, elements: !2721)
!2720 = !DIFile(filename: "./include/linux/part_stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2f669347829dc4306e1ebcabb2e98636")
!2721 = !{!2722, !2724, !2725, !2726, !2727, !2728}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "nsecs", scope: !2719, file: !2720, line: 9, baseType: !2723, size: 256)
!2723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !696, size: 256, elements: !1099)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "sectors", scope: !2719, file: !2720, line: 10, baseType: !1102, size: 256, offset: 256)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "ios", scope: !2719, file: !2720, line: 11, baseType: !1102, size: 256, offset: 512)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "merges", scope: !2719, file: !2720, line: 12, baseType: !1102, size: 256, offset: 768)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "io_ticks", scope: !2719, file: !2720, line: 13, baseType: !381, size: 64, offset: 1024)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "in_flight", scope: !2719, file: !2720, line: 14, baseType: !2729, size: 128, offset: 1088)
!2729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2730, size: 128, elements: !457)
!2730 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !2731, line: 12, baseType: !2732)
!2731 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!2732 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2731, line: 10, size: 64, elements: !2733)
!2733 = !{!2734}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !2732, file: !2731, line: 11, baseType: !390, size: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !1518, file: !184, line: 46, baseType: !381, size: 64, offset: 320)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !1518, file: !184, line: 47, baseType: !470, size: 8, offset: 384)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !1518, file: !184, line: 48, baseType: !361, size: 8, offset: 392)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !1518, file: !184, line: 49, baseType: !470, size: 8, offset: 400)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !1518, file: !184, line: 50, baseType: !470, size: 8, offset: 408)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !1518, file: !184, line: 51, baseType: !779, size: 32, offset: 416)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !1518, file: !184, line: 52, baseType: !352, size: 32, offset: 448)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !1518, file: !184, line: 53, baseType: !332, size: 32, offset: 480)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !1518, file: !184, line: 54, baseType: !625, size: 64, offset: 512)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !1518, file: !184, line: 55, baseType: !287, size: 64, offset: 576)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !1518, file: !184, line: 56, baseType: !287, size: 64, offset: 640)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !1518, file: !184, line: 57, baseType: !2747, size: 64, offset: 704)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2749)
!2749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !63, line: 1477, size: 128, elements: !2750)
!2750 = !{!2751, !2755}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dead", scope: !2749, file: !63, line: 1478, baseType: !2752, size: 64)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{null, !1517, !470}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2749, file: !63, line: 1483, baseType: !2756, size: 64, offset: 64)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DISubroutineType(types: !2758)
!2758 = !{null, !1517}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !1518, file: !184, line: 58, baseType: !882, size: 256, offset: 768)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !1518, file: !184, line: 60, baseType: !95, size: 32, offset: 1024)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !1518, file: !184, line: 61, baseType: !95, size: 32, offset: 1056)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !1518, file: !184, line: 62, baseType: !513, size: 64, offset: 1088)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !1518, file: !184, line: 65, baseType: !882, size: 256, offset: 1152)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !1518, file: !184, line: 66, baseType: !774, size: 64, offset: 1408)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !1518, file: !184, line: 68, baseType: !2766, size: 64, offset: 1472)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !63, line: 63, size: 808, elements: !2768)
!2768 = !{!2769, !2773}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !2767, file: !63, line: 64, baseType: !2770, size: 296)
!2770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !2771)
!2771 = !{!2772}
!2772 = !DISubrange(count: 37)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "volname", scope: !2767, file: !63, line: 65, baseType: !2774, size: 512, offset: 296)
!2774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 512, elements: !551)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !1518, file: !184, line: 72, baseType: !470, size: 8, offset: 1536)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !1518, file: !184, line: 77, baseType: !2777, size: 5824, offset: 1600)
!2777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !75, line: 705, size: 5824, elements: !2778)
!2778 = !{!2779, !2780, !2782, !2785, !2786, !2840, !2910, !2911, !2912, !2913, !2914, !2921, !3088, !3101, !3111, !3115, !3117, !3118, !3119, !3123, !3130, !3131, !3134, !3137, !3141, !3245, !3246, !3247, !3248, !3249, !3250, !3304, !3305, !3306, !3309, !3312, !3321, !3322, !3323, !3324, !3325, !3326}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2777, file: !75, line: 706, baseType: !505, size: 512)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2777, file: !75, line: 707, baseType: !2781, size: 64, offset: 512)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2777, file: !75, line: 709, baseType: !2783, size: 64, offset: 576)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !75, line: 37, flags: DIFlagFwdDecl)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2777, file: !75, line: 711, baseType: !509, size: 64, offset: 640)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2777, file: !75, line: 712, baseType: !2787, size: 64, offset: 704)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2789)
!2789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !75, line: 89, size: 384, elements: !2790)
!2790 = !{!2791, !2792, !2793, !2799, !2805, !2809}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2789, file: !75, line: 90, baseType: !509, size: 64)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2789, file: !75, line: 91, baseType: !597, size: 64, offset: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2789, file: !75, line: 92, baseType: !2794, size: 64, offset: 128)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!95, !2797, !543}
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2777)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2789, file: !75, line: 93, baseType: !2800, size: 64, offset: 192)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!548, !2797, !2656, !2803, !2804}
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2789, file: !75, line: 95, baseType: !2806, size: 64, offset: 256)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{null, !2781}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2789, file: !75, line: 97, baseType: !2810, size: 64, offset: 320)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2812)
!2812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !87, line: 286, size: 1472, elements: !2813)
!2813 = !{!2814, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2812, file: !87, line: 287, baseType: !2815, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{!95, !2781}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2812, file: !87, line: 288, baseType: !2806, size: 64, offset: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2812, file: !87, line: 289, baseType: !2815, size: 64, offset: 128)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2812, file: !87, line: 290, baseType: !2815, size: 64, offset: 192)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2812, file: !87, line: 291, baseType: !2815, size: 64, offset: 256)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2812, file: !87, line: 292, baseType: !2815, size: 64, offset: 320)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2812, file: !87, line: 293, baseType: !2815, size: 64, offset: 384)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2812, file: !87, line: 294, baseType: !2815, size: 64, offset: 448)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2812, file: !87, line: 295, baseType: !2815, size: 64, offset: 512)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2812, file: !87, line: 296, baseType: !2815, size: 64, offset: 576)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2812, file: !87, line: 297, baseType: !2815, size: 64, offset: 640)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2812, file: !87, line: 298, baseType: !2815, size: 64, offset: 704)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2812, file: !87, line: 299, baseType: !2815, size: 64, offset: 768)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2812, file: !87, line: 300, baseType: !2815, size: 64, offset: 832)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2812, file: !87, line: 301, baseType: !2815, size: 64, offset: 896)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2812, file: !87, line: 302, baseType: !2815, size: 64, offset: 960)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2812, file: !87, line: 303, baseType: !2815, size: 64, offset: 1024)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2812, file: !87, line: 304, baseType: !2815, size: 64, offset: 1088)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2812, file: !87, line: 305, baseType: !2815, size: 64, offset: 1152)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2812, file: !87, line: 306, baseType: !2815, size: 64, offset: 1216)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2812, file: !87, line: 307, baseType: !2815, size: 64, offset: 1280)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2812, file: !87, line: 308, baseType: !2815, size: 64, offset: 1344)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2812, file: !87, line: 309, baseType: !2815, size: 64, offset: 1408)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2777, file: !75, line: 714, baseType: !2841, size: 64, offset: 768)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2843)
!2843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2844, line: 80, size: 1344, elements: !2845)
!2844 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2845 = !{!2846, !2847, !2848, !2849, !2850, !2851, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2909}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2843, file: !2844, line: 81, baseType: !509, size: 64)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2843, file: !2844, line: 82, baseType: !509, size: 64, offset: 64)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2843, file: !2844, line: 83, baseType: !597, size: 64, offset: 128)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2843, file: !2844, line: 84, baseType: !597, size: 64, offset: 192)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2843, file: !2844, line: 85, baseType: !597, size: 64, offset: 256)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2843, file: !2844, line: 87, baseType: !2852, size: 64, offset: 320)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!95, !2781, !2855}
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !69, line: 96, size: 1152, elements: !2857)
!2857 = !{!2858, !2859, !2860, !2861, !2862, !2863, !2864, !2868, !2872, !2873, !2874, !2875, !2876, !2884, !2885, !2886, !2887, !2888, !2889}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2856, file: !69, line: 97, baseType: !509, size: 64)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2856, file: !69, line: 98, baseType: !2841, size: 64, offset: 64)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2856, file: !69, line: 100, baseType: !812, size: 64, offset: 128)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2856, file: !69, line: 101, baseType: !509, size: 64, offset: 192)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2856, file: !69, line: 103, baseType: !470, size: 8, offset: 256)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2856, file: !69, line: 104, baseType: !68, size: 32, offset: 288)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2856, file: !69, line: 106, baseType: !2865, size: 64, offset: 320)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2867)
!2867 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !69, line: 106, flags: DIFlagFwdDecl)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2856, file: !69, line: 107, baseType: !2869, size: 64, offset: 384)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2871)
!2871 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !69, line: 107, flags: DIFlagFwdDecl)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2856, file: !69, line: 109, baseType: !2815, size: 64, offset: 448)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2856, file: !69, line: 110, baseType: !2806, size: 64, offset: 512)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2856, file: !69, line: 111, baseType: !2815, size: 64, offset: 576)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2856, file: !69, line: 112, baseType: !2806, size: 64, offset: 640)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2856, file: !69, line: 113, baseType: !2877, size: 64, offset: 704)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{!95, !2781, !2880}
!2880 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !87, line: 60, baseType: !2881)
!2881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !87, line: 58, size: 32, elements: !2882)
!2882 = !{!2883}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2881, file: !87, line: 59, baseType: !95, size: 32)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2856, file: !69, line: 114, baseType: !2815, size: 64, offset: 768)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2856, file: !69, line: 115, baseType: !597, size: 64, offset: 832)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2856, file: !69, line: 116, baseType: !597, size: 64, offset: 896)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2856, file: !69, line: 118, baseType: !2810, size: 64, offset: 960)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2856, file: !69, line: 119, baseType: !2806, size: 64, offset: 1024)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2856, file: !69, line: 121, baseType: !2890, size: 64, offset: 1088)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !69, line: 121, flags: DIFlagFwdDecl)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2843, file: !2844, line: 88, baseType: !2794, size: 64, offset: 384)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2843, file: !2844, line: 89, baseType: !2815, size: 64, offset: 448)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2843, file: !2844, line: 90, baseType: !2806, size: 64, offset: 512)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2843, file: !2844, line: 91, baseType: !2806, size: 64, offset: 576)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2843, file: !2844, line: 92, baseType: !2806, size: 64, offset: 640)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2843, file: !2844, line: 94, baseType: !2815, size: 64, offset: 704)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2843, file: !2844, line: 95, baseType: !2815, size: 64, offset: 768)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2843, file: !2844, line: 97, baseType: !2877, size: 64, offset: 832)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2843, file: !2844, line: 98, baseType: !2815, size: 64, offset: 896)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2843, file: !2844, line: 100, baseType: !2815, size: 64, offset: 960)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2843, file: !2844, line: 102, baseType: !2815, size: 64, offset: 1024)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2843, file: !2844, line: 103, baseType: !2806, size: 64, offset: 1088)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2843, file: !2844, line: 105, baseType: !2810, size: 64, offset: 1152)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2843, file: !2844, line: 107, baseType: !2906, size: 64, offset: 1216)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2908)
!2908 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2844, line: 107, flags: DIFlagFwdDecl)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2843, file: !2844, line: 109, baseType: !470, size: 8, offset: 1280)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2777, file: !75, line: 715, baseType: !2855, size: 64, offset: 832)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2777, file: !75, line: 717, baseType: !287, size: 64, offset: 896)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2777, file: !75, line: 719, baseType: !287, size: 64, offset: 960)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2777, file: !75, line: 721, baseType: !882, size: 256, offset: 1024)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2777, file: !75, line: 725, baseType: !2915, size: 448, offset: 1280)
!2915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !75, line: 517, size: 448, elements: !2916)
!2916 = !{!2917, !2918, !2919, !2920}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2915, file: !75, line: 518, baseType: !375, size: 128)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2915, file: !75, line: 519, baseType: !375, size: 128, offset: 128)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2915, file: !75, line: 520, baseType: !375, size: 128, offset: 256)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2915, file: !75, line: 521, baseType: !74, size: 32, offset: 384)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2777, file: !75, line: 726, baseType: !2922, size: 2496, offset: 1728)
!2922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !87, line: 663, size: 2496, elements: !2923)
!2923 = !{!2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2968, !2969, !2970, !2971, !2972, !2973, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3081, !3085}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2922, file: !87, line: 664, baseType: !2880, size: 32)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2922, file: !87, line: 665, baseType: !13, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2922, file: !87, line: 666, baseType: !13, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2922, file: !87, line: 667, baseType: !470, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2922, file: !87, line: 668, baseType: !470, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2922, file: !87, line: 669, baseType: !470, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2922, file: !87, line: 670, baseType: !470, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2922, file: !87, line: 671, baseType: !470, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2922, file: !87, line: 672, baseType: !470, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2922, file: !87, line: 673, baseType: !470, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2922, file: !87, line: 674, baseType: !470, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2922, file: !87, line: 675, baseType: !424, size: 32, offset: 64)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2922, file: !87, line: 676, baseType: !332, size: 32, offset: 96)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2922, file: !87, line: 678, baseType: !375, size: 128, offset: 128)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2922, file: !87, line: 679, baseType: !832, size: 256, offset: 256)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2922, file: !87, line: 680, baseType: !2940, size: 64, offset: 512)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2942, line: 43, size: 1536, elements: !2943)
!2942 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2943 = !{!2944, !2945, !2946, !2947, !2948, !2951, !2952, !2953, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2941, file: !2942, line: 44, baseType: !509, size: 64)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2941, file: !2942, line: 45, baseType: !95, size: 32, offset: 64)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2941, file: !2942, line: 46, baseType: !375, size: 128, offset: 128)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2941, file: !2942, line: 47, baseType: !332, size: 32, offset: 256)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2941, file: !2942, line: 48, baseType: !2949, size: 64, offset: 320)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !87, line: 629, flags: DIFlagFwdDecl)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2941, file: !2942, line: 49, baseType: !407, size: 320, offset: 384)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2941, file: !2942, line: 50, baseType: !381, size: 64, offset: 704)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2941, file: !2942, line: 51, baseType: !2954, size: 64, offset: 768)
!2954 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2955, line: 29, baseType: !396)
!2955 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2941, file: !2942, line: 52, baseType: !2954, size: 64, offset: 832)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2941, file: !2942, line: 53, baseType: !2954, size: 64, offset: 896)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2941, file: !2942, line: 54, baseType: !2954, size: 64, offset: 960)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2941, file: !2942, line: 55, baseType: !2954, size: 64, offset: 1024)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2941, file: !2942, line: 56, baseType: !381, size: 64, offset: 1088)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2941, file: !2942, line: 57, baseType: !381, size: 64, offset: 1152)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2941, file: !2942, line: 58, baseType: !381, size: 64, offset: 1216)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2941, file: !2942, line: 59, baseType: !381, size: 64, offset: 1280)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2941, file: !2942, line: 60, baseType: !381, size: 64, offset: 1344)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2941, file: !2942, line: 61, baseType: !2781, size: 64, offset: 1408)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2941, file: !2942, line: 62, baseType: !470, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2941, file: !2942, line: 63, baseType: !470, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2922, file: !87, line: 681, baseType: !470, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2922, file: !87, line: 682, baseType: !470, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2922, file: !87, line: 683, baseType: !470, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2922, file: !87, line: 684, baseType: !13, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2922, file: !87, line: 685, baseType: !13, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2922, file: !87, line: 690, baseType: !2974, size: 512, offset: 640)
!2974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !82, line: 118, size: 512, elements: !2975)
!2975 = !{!2976, !2982, !2983, !2988, !3043, !3044, !3045, !3046}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2974, file: !82, line: 119, baseType: !2977, size: 256)
!2977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2978, line: 9, size: 256, elements: !2979)
!2978 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2979 = !{!2980, !2981}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2977, file: !2978, line: 10, baseType: !983, size: 192, align: 64)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2977, file: !2978, line: 11, baseType: !2954, size: 64, offset: 192)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2974, file: !82, line: 120, baseType: !2954, size: 64, offset: 256)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2974, file: !82, line: 121, baseType: !2984, size: 64, offset: 320)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!81, !2987}
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2974, file: !82, line: 122, baseType: !2989, size: 64, offset: 384)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !82, line: 159, size: 512, align: 512, elements: !2991)
!2991 = !{!2992, !3017, !3018, !3021, !3026, !3027, !3038, !3042}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2990, file: !82, line: 160, baseType: !2993, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !82, line: 215, size: 4608, align: 512, elements: !2995)
!2995 = !{!2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2994, file: !82, line: 216, baseType: !479, size: 32)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2994, file: !82, line: 217, baseType: !13, size: 32, offset: 32)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2994, file: !82, line: 218, baseType: !13, size: 32, offset: 64)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2994, file: !82, line: 219, baseType: !13, size: 32, offset: 96)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2994, file: !82, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2994, file: !82, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2994, file: !82, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2994, file: !82, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2994, file: !82, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2994, file: !82, line: 226, baseType: !13, size: 32, offset: 160)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2994, file: !82, line: 227, baseType: !372, size: 16, offset: 192)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2994, file: !82, line: 228, baseType: !372, size: 16, offset: 208)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2994, file: !82, line: 229, baseType: !13, size: 32, offset: 224)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2994, file: !82, line: 235, baseType: !2954, size: 64, offset: 256)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2994, file: !82, line: 236, baseType: !2987, size: 64, offset: 320)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2994, file: !82, line: 237, baseType: !2954, size: 64, offset: 384)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2994, file: !82, line: 238, baseType: !2987, size: 64, offset: 448)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2994, file: !82, line: 239, baseType: !3014, size: 4096, align: 512, offset: 512)
!3014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2990, size: 4096, align: 512, elements: !3015)
!3015 = !{!3016}
!3016 = !DISubrange(count: 8)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2990, file: !82, line: 161, baseType: !13, size: 32, offset: 64)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2990, file: !82, line: 162, baseType: !3019, size: 32, offset: 96)
!3019 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !353, line: 32, baseType: !3020)
!3020 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !580, line: 96, baseType: !95)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2990, file: !82, line: 163, baseType: !3022, size: 32, offset: 128)
!3022 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !667, line: 274, baseType: !3023)
!3023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !667, line: 274, size: 32, elements: !3024)
!3024 = !{!3025}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3023, file: !667, line: 274, baseType: !671, size: 32)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2990, file: !82, line: 164, baseType: !2987, size: 64, offset: 192)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2990, file: !82, line: 165, baseType: !3028, size: 128, offset: 256)
!3028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2978, line: 14, size: 128, elements: !3029)
!3029 = !{!3030}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !3028, file: !2978, line: 15, baseType: !3031, size: 128)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !984, line: 26, size: 128, elements: !3032)
!3032 = !{!3033, !3037}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !3031, file: !984, line: 27, baseType: !3034, size: 64)
!3034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !984, line: 12, size: 64, elements: !3035)
!3035 = !{!3036}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3034, file: !984, line: 13, baseType: !988, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !3031, file: !984, line: 28, baseType: !988, size: 64, offset: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2990, file: !82, line: 166, baseType: !3039, size: 64, offset: 384)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!2954}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2990, file: !82, line: 167, baseType: !2954, size: 64, offset: 448)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2974, file: !82, line: 123, baseType: !361, size: 8, offset: 448)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2974, file: !82, line: 124, baseType: !361, size: 8, offset: 456)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2974, file: !82, line: 125, baseType: !361, size: 8, offset: 464)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2974, file: !82, line: 126, baseType: !361, size: 8, offset: 472)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2922, file: !87, line: 691, baseType: !696, size: 64, offset: 1152)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2922, file: !87, line: 692, baseType: !387, size: 256, offset: 1216)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2922, file: !87, line: 693, baseType: !1804, size: 192, offset: 1472)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2922, file: !87, line: 694, baseType: !2949, size: 64, offset: 1664)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2922, file: !87, line: 695, baseType: !352, size: 32, offset: 1728)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2922, file: !87, line: 696, baseType: !352, size: 32, offset: 1760)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2922, file: !87, line: 697, baseType: !13, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2922, file: !87, line: 698, baseType: !13, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2922, file: !87, line: 699, baseType: !13, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2922, file: !87, line: 700, baseType: !13, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2922, file: !87, line: 701, baseType: !13, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2922, file: !87, line: 702, baseType: !13, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2922, file: !87, line: 703, baseType: !470, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2922, file: !87, line: 704, baseType: !13, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2922, file: !87, line: 705, baseType: !13, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2922, file: !87, line: 706, baseType: !13, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2922, file: !87, line: 707, baseType: !13, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2922, file: !87, line: 708, baseType: !13, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2922, file: !87, line: 709, baseType: !13, size: 32, offset: 1824)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2922, file: !87, line: 710, baseType: !86, size: 32, offset: 1856)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2922, file: !87, line: 711, baseType: !94, size: 32, offset: 1888)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2922, file: !87, line: 712, baseType: !94, size: 32, offset: 1920)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2922, file: !87, line: 713, baseType: !95, size: 32, offset: 1952)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2922, file: !87, line: 714, baseType: !95, size: 32, offset: 1984)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2922, file: !87, line: 715, baseType: !696, size: 64, offset: 2048)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2922, file: !87, line: 716, baseType: !696, size: 64, offset: 2112)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2922, file: !87, line: 717, baseType: !696, size: 64, offset: 2176)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2922, file: !87, line: 718, baseType: !696, size: 64, offset: 2240)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2922, file: !87, line: 720, baseType: !3076, size: 64, offset: 2304)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !87, line: 632, size: 64, elements: !3078)
!3078 = !{!3079, !3080}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3077, file: !87, line: 633, baseType: !332, size: 32)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3077, file: !87, line: 634, baseType: !13, size: 32, offset: 32)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2922, file: !87, line: 721, baseType: !3082, size: 64, offset: 2368)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{null, !2781, !878}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2922, file: !87, line: 722, baseType: !3086, size: 64, offset: 2432)
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3087 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !87, line: 722, flags: DIFlagFwdDecl)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2777, file: !75, line: 727, baseType: !3089, size: 64, offset: 4224)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !87, line: 742, size: 1792, elements: !3091)
!3091 = !{!3092, !3093, !3094, !3098, !3099, !3100}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3090, file: !87, line: 743, baseType: !2812, size: 1472)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3090, file: !87, line: 744, baseType: !2815, size: 64, offset: 1472)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3090, file: !87, line: 745, baseType: !3095, size: 64, offset: 1536)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{null, !2781, !470}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3090, file: !87, line: 746, baseType: !2815, size: 64, offset: 1600)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3090, file: !87, line: 747, baseType: !2806, size: 64, offset: 1664)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3090, file: !87, line: 748, baseType: !2806, size: 64, offset: 1728)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2777, file: !75, line: 736, baseType: !3102, size: 128, offset: 4288)
!3102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !75, line: 529, size: 128, elements: !3103)
!3103 = !{!3104, !3108}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3102, file: !75, line: 531, baseType: !3105, size: 64)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3107, line: 13, flags: DIFlagFwdDecl)
!3107 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3102, file: !75, line: 532, baseType: !3109, size: 64, offset: 64)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !75, line: 49, flags: DIFlagFwdDecl)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2777, file: !75, line: 738, baseType: !3112, size: 64, offset: 4416)
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3114)
!3114 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !75, line: 738, flags: DIFlagFwdDecl)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2777, file: !75, line: 740, baseType: !3116, size: 64, offset: 4480)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2777, file: !75, line: 741, baseType: !696, size: 64, offset: 4544)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2777, file: !75, line: 746, baseType: !696, size: 64, offset: 4608)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2777, file: !75, line: 747, baseType: !3120, size: 64, offset: 4672)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3122)
!3122 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !75, line: 747, flags: DIFlagFwdDecl)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2777, file: !75, line: 749, baseType: !3124, size: 64, offset: 4736)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !75, line: 428, size: 128, elements: !3126)
!3126 = !{!3127, !3128, !3129}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3125, file: !75, line: 433, baseType: !13, size: 32)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3125, file: !75, line: 434, baseType: !13, size: 32, offset: 32)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3125, file: !75, line: 435, baseType: !381, size: 64, offset: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2777, file: !75, line: 751, baseType: !375, size: 128, offset: 4800)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2777, file: !75, line: 762, baseType: !3132, size: 64, offset: 4928)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !75, line: 762, flags: DIFlagFwdDecl)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2777, file: !75, line: 770, baseType: !3135, offset: 4992)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3136, line: 5, elements: !1130)
!3136 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2777, file: !75, line: 772, baseType: !3138, size: 64, offset: 4992)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3140, line: 18, flags: DIFlagFwdDecl)
!3140 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2777, file: !75, line: 773, baseType: !3142, size: 64, offset: 5056)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3144, line: 41, size: 512, elements: !3145)
!3144 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!3145 = !{!3146, !3147, !3241, !3242, !3243, !3244}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3143, file: !3144, line: 42, baseType: !3142, size: 64)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3143, file: !3144, line: 43, baseType: !3148, size: 64, offset: 64)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3150)
!3150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3144, line: 125, size: 1408, elements: !3151)
!3151 = !{!3152, !3156, !3160, !3166, !3170, !3171, !3176, !3180, !3184, !3188, !3192, !3193, !3197, !3201, !3205, !3216, !3217, !3218, !3219, !3229, !3233, !3237}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3150, file: !3144, line: 126, baseType: !3153, size: 64)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!3142, !3142}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3150, file: !3144, line: 127, baseType: !3157, size: 64, offset: 64)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{null, !3142}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3150, file: !3144, line: 128, baseType: !3161, size: 64, offset: 128)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{!470, !3164}
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3143)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3150, file: !3144, line: 129, baseType: !3167, size: 64, offset: 192)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!2342, !3164, !2797}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !3150, file: !3144, line: 131, baseType: !3161, size: 64, offset: 256)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !3150, file: !3144, line: 133, baseType: !3172, size: 64, offset: 320)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{!3175, !3164}
!3175 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !3144, line: 132, flags: DIFlagFwdDecl)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3150, file: !3144, line: 134, baseType: !3177, size: 64, offset: 384)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!470, !3164, !509}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3150, file: !3144, line: 136, baseType: !3181, size: 64, offset: 448)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{!95, !3164, !509, !13, !287, !593}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3150, file: !3144, line: 141, baseType: !3185, size: 64, offset: 512)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!95, !3164, !509, !1170, !593}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3150, file: !3144, line: 144, baseType: !3189, size: 64, offset: 576)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{!509, !3164}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3150, file: !3144, line: 145, baseType: !3189, size: 64, offset: 640)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3150, file: !3144, line: 146, baseType: !3194, size: 64, offset: 704)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{!3142, !3164}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3150, file: !3144, line: 148, baseType: !3198, size: 64, offset: 768)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{!3142, !3164, !3142}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3150, file: !3144, line: 151, baseType: !3202, size: 64, offset: 832)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DISubroutineType(types: !3204)
!3204 = !{!3142, !3164, !509}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3150, file: !3144, line: 153, baseType: !3206, size: 64, offset: 896)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{!95, !3164, !509, !509, !13, !13, !3209}
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3144, line: 94, size: 640, elements: !3211)
!3211 = !{!3212, !3213, !3214}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3210, file: !3144, line: 95, baseType: !3142, size: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3210, file: !3144, line: 96, baseType: !13, size: 32, offset: 64)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3210, file: !3144, line: 97, baseType: !3215, size: 512, offset: 128)
!3215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !696, size: 512, elements: !3015)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3150, file: !3144, line: 158, baseType: !3198, size: 64, offset: 960)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3150, file: !3144, line: 161, baseType: !3194, size: 64, offset: 1024)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3150, file: !3144, line: 163, baseType: !3153, size: 64, offset: 1088)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3150, file: !3144, line: 164, baseType: !3220, size: 64, offset: 1152)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = !DISubroutineType(types: !3222)
!3222 = !{!95, !3164, !3223}
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3144, line: 73, size: 128, elements: !3225)
!3225 = !{!3226, !3227, !3228}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3224, file: !3144, line: 74, baseType: !13, size: 32)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3224, file: !3144, line: 75, baseType: !13, size: 32, offset: 32)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3224, file: !3144, line: 76, baseType: !3164, size: 64, offset: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !3150, file: !3144, line: 166, baseType: !3230, size: 64, offset: 1216)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!287, !3142, !95}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !3150, file: !3144, line: 167, baseType: !3234, size: 64, offset: 1280)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{!95, !3164, !13}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3150, file: !3144, line: 168, baseType: !3238, size: 64, offset: 1344)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{!95, !3142}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3143, file: !3144, line: 44, baseType: !2781, size: 64, offset: 128)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3143, file: !3144, line: 45, baseType: !375, size: 128, offset: 192)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3143, file: !3144, line: 46, baseType: !375, size: 128, offset: 320)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3143, file: !3144, line: 47, baseType: !361, size: 8, offset: 448)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2777, file: !75, line: 776, baseType: !95, size: 32, offset: 5120)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2777, file: !75, line: 778, baseType: !779, size: 32, offset: 5152)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2777, file: !75, line: 779, baseType: !424, size: 32, offset: 5184)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2777, file: !75, line: 781, baseType: !332, size: 32, offset: 5216)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2777, file: !75, line: 782, baseType: !375, size: 128, offset: 5248)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2777, file: !75, line: 784, baseType: !3251, size: 64, offset: 5376)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3253)
!3253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3254, line: 52, size: 768, elements: !3255)
!3254 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3255 = !{!3256, !3257, !3258, !3259, !3260, !3264, !3268, !3269, !3270, !3295, !3299, !3303}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3253, file: !3254, line: 53, baseType: !509, size: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3253, file: !3254, line: 55, baseType: !597, size: 64, offset: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3253, file: !3254, line: 56, baseType: !597, size: 64, offset: 128)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3253, file: !3254, line: 58, baseType: !2794, size: 64, offset: 192)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3253, file: !3254, line: 59, baseType: !3261, size: 64, offset: 256)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!548, !2797, !2656}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3253, file: !3254, line: 61, baseType: !3265, size: 64, offset: 320)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{null, !3251}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3253, file: !3254, line: 62, baseType: !2806, size: 64, offset: 384)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3253, file: !3254, line: 64, baseType: !2815, size: 64, offset: 448)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3253, file: !3254, line: 66, baseType: !3271, size: 64, offset: 512)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3273)
!3273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !103, line: 39, size: 384, elements: !3274)
!3274 = !{!3275, !3276, !3280, !3284, !3290, !3294}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3273, file: !103, line: 40, baseType: !102, size: 32)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3273, file: !103, line: 41, baseType: !3277, size: 64, offset: 64)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!470}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3273, file: !103, line: 42, baseType: !3281, size: 64, offset: 128)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!287}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3273, file: !103, line: 43, baseType: !3285, size: 64, offset: 192)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!2342, !3288}
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !103, line: 19, flags: DIFlagFwdDecl)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3273, file: !103, line: 44, baseType: !3291, size: 64, offset: 256)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{!2342}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3273, file: !103, line: 45, baseType: !917, size: 64, offset: 320)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3253, file: !3254, line: 67, baseType: !3296, size: 64, offset: 576)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{!2342, !2797}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3253, file: !3254, line: 69, baseType: !3300, size: 64, offset: 640)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{null, !2797, !2803, !2804}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3253, file: !3254, line: 71, baseType: !2810, size: 64, offset: 704)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2777, file: !75, line: 785, baseType: !597, size: 64, offset: 5440)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2777, file: !75, line: 787, baseType: !2806, size: 64, offset: 5504)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2777, file: !75, line: 788, baseType: !3307, size: 64, offset: 5568)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !75, line: 46, flags: DIFlagFwdDecl)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2777, file: !75, line: 789, baseType: !3310, size: 64, offset: 5632)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !75, line: 48, flags: DIFlagFwdDecl)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2777, file: !75, line: 791, baseType: !3313, size: 64, offset: 5696)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !75, line: 597, size: 128, elements: !3315)
!3315 = !{!3316, !3317, !3318, !3319, !3320}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3314, file: !75, line: 598, baseType: !108, size: 32)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3314, file: !75, line: 599, baseType: !117, size: 32, offset: 32)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3314, file: !75, line: 600, baseType: !122, size: 32, offset: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3314, file: !75, line: 601, baseType: !470, size: 8, offset: 96)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3314, file: !75, line: 602, baseType: !470, size: 8, offset: 104)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2777, file: !75, line: 793, baseType: !127, size: 32, offset: 5760)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2777, file: !75, line: 795, baseType: !470, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2777, file: !75, line: 796, baseType: !470, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2777, file: !75, line: 797, baseType: !470, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2777, file: !75, line: 798, baseType: !470, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2777, file: !75, line: 799, baseType: !470, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !775, file: !20, line: 1226, baseType: !3328, size: 64, offset: 1664)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !63, line: 1495, size: 128, elements: !3330)
!3330 = !{!3331, !3332}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !3329, file: !63, line: 1496, baseType: !1517, size: 64)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "holder", scope: !3329, file: !63, line: 1497, baseType: !287, size: 64, offset: 64)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !775, file: !20, line: 1227, baseType: !2680, size: 64, offset: 1728)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !775, file: !20, line: 1228, baseType: !3335, size: 64, offset: 1792)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !20, line: 1228, flags: DIFlagFwdDecl)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !775, file: !20, line: 1229, baseType: !411, size: 128, offset: 1856)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !775, file: !20, line: 1230, baseType: !13, size: 32, offset: 1984)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !775, file: !20, line: 1231, baseType: !3340, size: 2496, offset: 2048)
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !25, line: 521, size: 2496, elements: !3341)
!3341 = !{!3342, !3343, !3344, !3346, !3378}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3340, file: !25, line: 522, baseType: !13, size: 32)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3340, file: !25, line: 523, baseType: !1495, size: 320, offset: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3340, file: !25, line: 524, baseType: !3345, size: 192, offset: 384)
!3345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !625, size: 192, elements: !492)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3340, file: !25, line: 525, baseType: !3347, size: 1728, offset: 576)
!3347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3348, size: 1728, elements: !492)
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !25, line: 222, size: 576, elements: !3349)
!3349 = !{!3350, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3348, file: !25, line: 223, baseType: !3351, size: 64)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !25, line: 445, size: 256, elements: !3353)
!3353 = !{!3354, !3355, !3368, !3369}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3352, file: !25, line: 446, baseType: !95, size: 32)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3352, file: !25, line: 447, baseType: !3356, size: 64, offset: 64)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3358)
!3358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !25, line: 312, size: 512, elements: !3359)
!3359 = !{!3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3358, file: !25, line: 313, baseType: !1247, size: 64)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3358, file: !25, line: 314, baseType: !1247, size: 64, offset: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3358, file: !25, line: 315, baseType: !1247, size: 64, offset: 128)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3358, file: !25, line: 316, baseType: !1247, size: 64, offset: 192)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3358, file: !25, line: 317, baseType: !1362, size: 64, offset: 256)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3358, file: !25, line: 318, baseType: !1362, size: 64, offset: 320)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3358, file: !25, line: 319, baseType: !1362, size: 64, offset: 384)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3358, file: !25, line: 320, baseType: !1392, size: 64, offset: 448)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3352, file: !25, line: 448, baseType: !812, size: 64, offset: 128)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3352, file: !25, line: 449, baseType: !3351, size: 64, offset: 192)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3348, file: !25, line: 224, baseType: !95, size: 32, offset: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3348, file: !25, line: 226, baseType: !375, size: 128, offset: 128)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3348, file: !25, line: 227, baseType: !381, size: 64, offset: 256)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3348, file: !25, line: 228, baseType: !13, size: 32, offset: 320)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3348, file: !25, line: 229, baseType: !13, size: 32, offset: 352)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3348, file: !25, line: 230, baseType: !1327, size: 64, offset: 384)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3348, file: !25, line: 231, baseType: !1327, size: 64, offset: 448)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3348, file: !25, line: 232, baseType: !287, size: 64, offset: 512)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3340, file: !25, line: 526, baseType: !3379, size: 192, offset: 2304)
!3379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3356, size: 192, elements: !492)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !775, file: !20, line: 1233, baseType: !3381, size: 2368, offset: 4544)
!3381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !20, line: 1184, size: 2368, elements: !3382)
!3382 = !{!3383, !3384, !3385}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3381, file: !20, line: 1185, baseType: !372, size: 16)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3381, file: !20, line: 1186, baseType: !372, size: 16, offset: 16)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3381, file: !20, line: 1187, baseType: !3386, size: 2304, offset: 64)
!3386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3387, size: 2304, elements: !492)
!3387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3388, line: 12, size: 768, elements: !3389)
!3388 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3389 = !{!3390, !3398, !3399, !4520, !4521}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3387, file: !3388, line: 13, baseType: !3391, size: 384)
!3391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3392, line: 17, size: 384, elements: !3393)
!3392 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3393 = !{!3394, !3395, !3396, !3397}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3391, file: !3392, line: 18, baseType: !95, size: 32)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3391, file: !3392, line: 19, baseType: !95, size: 32, offset: 32)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3391, file: !3392, line: 20, baseType: !1804, size: 192, offset: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3391, file: !3392, line: 22, baseType: !1089, size: 128, align: 64, offset: 256)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3387, file: !3388, line: 14, baseType: !481, size: 64, offset: 384)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3387, file: !3388, line: 15, baseType: !3400, size: 64, offset: 448)
!3400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3401, line: 16, size: 64, elements: !3402)
!3401 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3402 = !{!3403}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3400, file: !3401, line: 17, baseType: !3404, size: 64)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1277, line: 746, size: 58368, elements: !3406)
!3406 = !{!3407, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3487, !3498, !3518, !3522, !3525, !3556, !3557, !3558, !3559, !3563, !3565, !3566, !3567, !3568, !3569, !3570, !3581, !3582, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3599, !3600, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3688, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3736, !3742, !3743, !3744, !3745, !3746, !3750, !3753, !3760, !3765, !3768, !3771, !3774, !3778, !3916, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3954, !3955, !3956, !3965, !3973, !3974, !3975, !3976, !3977, !3982, !3983, !3984, !3987, !3988, !3990, !4001, !4004, !4012, !4015, !4016, !4102, !4103, !4104, !4105, !4106, !4112, !4113, !4114, !4115, !4118, !4119, !4122, !4125, !4126, !4129, !4130, !4131, !4134, !4135, !4136, !4137, !4138, !4139, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4171, !4172, !4178, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4260, !4262, !4263, !4264, !4265, !4266, !4267, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4297, !4298, !4299}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !3405, file: !1277, line: 752, baseType: !3408, size: 192)
!3408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !3409, line: 56, size: 192, elements: !3410)
!3409 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!3410 = !{!3411, !3412, !3413, !3414}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3408, file: !3409, line: 57, baseType: !381, size: 64)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !3408, file: !3409, line: 58, baseType: !381, size: 64, offset: 64)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3408, file: !3409, line: 59, baseType: !424, size: 32, offset: 128)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3408, file: !3409, line: 61, baseType: !424, size: 32, offset: 160)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !3405, file: !1277, line: 754, baseType: !13, size: 32, offset: 192)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3405, file: !1277, line: 767, baseType: !287, size: 64, offset: 256)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3405, file: !1277, line: 768, baseType: !1793, size: 32, offset: 320)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3405, file: !1277, line: 770, baseType: !13, size: 32, offset: 352)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !3405, file: !1277, line: 771, baseType: !13, size: 32, offset: 384)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !3405, file: !1277, line: 774, baseType: !95, size: 32, offset: 416)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !3405, file: !1277, line: 775, baseType: !3422, size: 128, offset: 448)
!3422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !3423, line: 58, size: 128, elements: !3424)
!3423 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!3424 = !{!3425, !3426, !3431, !3432}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !3422, file: !3423, line: 59, baseType: !1750, size: 64)
!3426 = !DIDerivedType(tag: DW_TAG_member, scope: !3422, file: !3423, line: 60, baseType: !3427, size: 32, offset: 64)
!3427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3422, file: !3423, line: 60, size: 32, elements: !3428)
!3428 = !{!3429, !3430}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !3427, file: !3423, line: 61, baseType: !13, size: 32)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !3427, file: !3423, line: 62, baseType: !352, size: 32)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !3422, file: !3423, line: 65, baseType: !370, size: 16, offset: 96)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !3422, file: !3423, line: 65, baseType: !370, size: 16, offset: 112)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !3405, file: !1277, line: 776, baseType: !13, size: 32, offset: 576)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !3405, file: !1277, line: 777, baseType: !381, size: 64, offset: 640)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !3405, file: !1277, line: 778, baseType: !3404, size: 64, offset: 704)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !3405, file: !1277, line: 787, baseType: !95, size: 32, offset: 768)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !3405, file: !1277, line: 788, baseType: !95, size: 32, offset: 800)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3405, file: !1277, line: 790, baseType: !95, size: 32, offset: 832)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3405, file: !1277, line: 792, baseType: !95, size: 32, offset: 864)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !3405, file: !1277, line: 793, baseType: !95, size: 32, offset: 896)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !3405, file: !1277, line: 794, baseType: !95, size: 32, offset: 928)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !3405, file: !1277, line: 795, baseType: !13, size: 32, offset: 960)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !3405, file: !1277, line: 797, baseType: !3444, size: 2048, offset: 1024)
!3444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1277, line: 551, size: 2048, elements: !3445)
!3445 = !{!3446, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3466, !3469, !3470, !3471}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !3444, file: !1277, line: 553, baseType: !3447, size: 128)
!3447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1277, line: 411, size: 128, elements: !3448)
!3448 = !{!3449, !3450}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3447, file: !1277, line: 412, baseType: !381, size: 64)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !3447, file: !1277, line: 413, baseType: !424, size: 32, offset: 64)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !3444, file: !1277, line: 554, baseType: !983, size: 192, align: 64, offset: 128)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3444, file: !1277, line: 555, baseType: !696, size: 64, offset: 320)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !3444, file: !1277, line: 556, baseType: !696, size: 64, offset: 384)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3444, file: !1277, line: 558, baseType: !375, size: 128, offset: 448)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3444, file: !1277, line: 559, baseType: !13, size: 32, offset: 576)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !3444, file: !1277, line: 561, baseType: !696, size: 64, offset: 640)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3444, file: !1277, line: 562, baseType: !696, size: 64, offset: 704)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !3444, file: !1277, line: 563, baseType: !696, size: 64, offset: 768)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !3444, file: !1277, line: 564, baseType: !696, size: 64, offset: 832)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !3444, file: !1277, line: 565, baseType: !396, size: 64, offset: 896)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3444, file: !1277, line: 566, baseType: !696, size: 64, offset: 960)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !3444, file: !1277, line: 568, baseType: !696, size: 64, offset: 1024)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3444, file: !1277, line: 571, baseType: !95, size: 32, offset: 1088)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3444, file: !1277, line: 572, baseType: !3465, size: 64, offset: 1152)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !3444, file: !1277, line: 574, baseType: !3467, size: 64, offset: 1216)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1277, line: 49, flags: DIFlagFwdDecl)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !3444, file: !1277, line: 576, baseType: !3467, size: 64, offset: 1280)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !3444, file: !1277, line: 578, baseType: !381, size: 64, offset: 1344)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !3444, file: !1277, line: 588, baseType: !3472, size: 512, align: 512, offset: 1536)
!3472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1277, line: 497, size: 512, align: 512, elements: !3473)
!3473 = !{!3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !3472, file: !1277, line: 498, baseType: !696, size: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !3472, file: !1277, line: 499, baseType: !696, size: 64, offset: 64)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !3472, file: !1277, line: 500, baseType: !696, size: 64, offset: 128)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !3472, file: !1277, line: 501, baseType: !424, size: 32, offset: 192)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !3472, file: !1277, line: 502, baseType: !424, size: 32, offset: 224)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !3472, file: !1277, line: 503, baseType: !381, size: 64, offset: 256)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !3472, file: !1277, line: 504, baseType: !381, size: 64, offset: 320)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !3472, file: !1277, line: 505, baseType: !381, size: 64, offset: 384)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !3472, file: !1277, line: 506, baseType: !3483, size: 64, align: 64, offset: 448)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1277, line: 445, size: 64, align: 64, elements: !3484)
!3484 = !{!3485, !3486}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !3483, file: !1277, line: 446, baseType: !13, size: 32)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !3483, file: !1277, line: 447, baseType: !13, size: 32, offset: 32)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3405, file: !1277, line: 798, baseType: !3488, size: 384, offset: 3072)
!3488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1277, line: 592, size: 384, elements: !3489)
!3489 = !{!3490, !3491, !3492, !3493, !3494, !3495, !3496}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !3488, file: !1277, line: 593, baseType: !375, size: 128)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3488, file: !1277, line: 594, baseType: !381, size: 64, offset: 128)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !3488, file: !1277, line: 595, baseType: !381, size: 64, offset: 192)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !3488, file: !1277, line: 596, baseType: !13, size: 32, offset: 256)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3488, file: !1277, line: 597, baseType: !372, size: 16, offset: 288)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !3488, file: !1277, line: 598, baseType: !372, size: 16, offset: 304)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !3488, file: !1277, line: 600, baseType: !3497, size: 64, offset: 320)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !3405, file: !1277, line: 799, baseType: !3499, size: 1792, offset: 3456)
!3499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1277, line: 610, size: 1792, elements: !3500)
!3500 = !{!3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516}
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3499, file: !1277, line: 611, baseType: !983, size: 192, align: 64)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !3499, file: !1277, line: 618, baseType: !696, size: 64, offset: 192)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !3499, file: !1277, line: 619, baseType: !696, size: 64, offset: 256)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !3499, file: !1277, line: 620, baseType: !696, size: 64, offset: 320)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !3499, file: !1277, line: 621, baseType: !696, size: 64, offset: 384)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !3499, file: !1277, line: 622, baseType: !696, size: 64, offset: 448)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !3499, file: !1277, line: 629, baseType: !396, size: 64, offset: 512)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3499, file: !1277, line: 630, baseType: !696, size: 64, offset: 576)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3499, file: !1277, line: 631, baseType: !13, size: 32, offset: 640)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !3499, file: !1277, line: 653, baseType: !13, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !3499, file: !1277, line: 654, baseType: !13, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !3499, file: !1277, line: 655, baseType: !13, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !3499, file: !1277, line: 656, baseType: !13, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !3499, file: !1277, line: 662, baseType: !2974, size: 512, offset: 704)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !3499, file: !1277, line: 671, baseType: !2974, size: 512, offset: 1216)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !3499, file: !1277, line: 679, baseType: !3517, size: 64, offset: 1728)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !3405, file: !1277, line: 800, baseType: !3519, size: 64, offset: 5248)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3521)
!3521 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1277, line: 800, flags: DIFlagFwdDecl)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !3405, file: !1277, line: 809, baseType: !3523, size: 64, offset: 5312)
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3524 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1277, line: 70, flags: DIFlagFwdDecl)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3405, file: !1277, line: 825, baseType: !3526, size: 2048, align: 512, offset: 5632)
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1277, line: 509, size: 2048, align: 512, elements: !3527)
!3527 = !{!3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3526, file: !1277, line: 511, baseType: !696, size: 64)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3526, file: !1277, line: 512, baseType: !696, size: 64, offset: 64)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3526, file: !1277, line: 513, baseType: !696, size: 64, offset: 128)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3526, file: !1277, line: 514, baseType: !696, size: 64, offset: 192)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3526, file: !1277, line: 515, baseType: !696, size: 64, offset: 256)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3526, file: !1277, line: 516, baseType: !696, size: 64, offset: 320)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3526, file: !1277, line: 518, baseType: !696, size: 64, offset: 384)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3526, file: !1277, line: 519, baseType: !696, size: 64, offset: 448)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3526, file: !1277, line: 520, baseType: !396, size: 64, offset: 512)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3526, file: !1277, line: 522, baseType: !696, size: 64, offset: 576)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3526, file: !1277, line: 523, baseType: !696, size: 64, offset: 640)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3526, file: !1277, line: 524, baseType: !396, size: 64, offset: 704)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3526, file: !1277, line: 526, baseType: !396, size: 64, offset: 768)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3526, file: !1277, line: 527, baseType: !696, size: 64, offset: 832)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3526, file: !1277, line: 529, baseType: !696, size: 64, offset: 896)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3526, file: !1277, line: 530, baseType: !696, size: 64, offset: 960)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3526, file: !1277, line: 531, baseType: !696, size: 64, offset: 1024)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3526, file: !1277, line: 532, baseType: !696, size: 64, offset: 1088)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3526, file: !1277, line: 533, baseType: !696, size: 64, offset: 1152)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3526, file: !1277, line: 535, baseType: !696, size: 64, offset: 1216)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3526, file: !1277, line: 536, baseType: !696, size: 64, offset: 1280)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3526, file: !1277, line: 537, baseType: !696, size: 64, offset: 1344)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3526, file: !1277, line: 538, baseType: !696, size: 64, offset: 1408)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3526, file: !1277, line: 539, baseType: !696, size: 64, offset: 1472)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3526, file: !1277, line: 540, baseType: !696, size: 64, offset: 1536)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3526, file: !1277, line: 541, baseType: !696, size: 64, offset: 1600)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3526, file: !1277, line: 542, baseType: !696, size: 64, offset: 1664)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3526, file: !1277, line: 543, baseType: !696, size: 64, offset: 1728)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !3405, file: !1277, line: 833, baseType: !13, size: 32, offset: 7680)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !3405, file: !1277, line: 836, baseType: !13, size: 32, offset: 7712)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !3405, file: !1277, line: 837, baseType: !95, size: 32, offset: 7744)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !3405, file: !1277, line: 838, baseType: !3560, size: 64, offset: 7808)
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3561 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3562)
!3562 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !431, line: 19, baseType: !433)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !3405, file: !1277, line: 839, baseType: !3564, size: 64, offset: 7872)
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !3405, file: !1277, line: 840, baseType: !3562, size: 64, offset: 7936)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !3405, file: !1277, line: 841, baseType: !287, size: 64, offset: 8000)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !3405, file: !1277, line: 843, baseType: !372, size: 16, offset: 8064)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !3405, file: !1277, line: 845, baseType: !372, size: 16, offset: 8080)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !3405, file: !1277, line: 848, baseType: !95, size: 32, offset: 8096)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !3405, file: !1277, line: 849, baseType: !3571, size: 32, offset: 8128)
!3571 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1277, line: 718, size: 32, elements: !3572)
!3572 = !{!3573, !3580}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3571, file: !1277, line: 724, baseType: !3574, size: 32)
!3574 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3571, file: !1277, line: 719, size: 32, elements: !3575)
!3575 = !{!3576, !3577, !3578, !3579}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3574, file: !1277, line: 720, baseType: !361, size: 8)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3574, file: !1277, line: 721, baseType: !361, size: 8, offset: 8)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3574, file: !1277, line: 722, baseType: !361, size: 8, offset: 16)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3574, file: !1277, line: 723, baseType: !361, size: 8, offset: 24)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3571, file: !1277, line: 725, baseType: !424, size: 32)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !3405, file: !1277, line: 850, baseType: !375, size: 128, offset: 8192)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !3405, file: !1277, line: 851, baseType: !3583, size: 64, offset: 8320)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1277, line: 60, flags: DIFlagFwdDecl)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !3405, file: !1277, line: 855, baseType: !381, size: 64, offset: 8384)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !3405, file: !1277, line: 856, baseType: !361, size: 8, offset: 8448)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !3405, file: !1277, line: 857, baseType: !361, size: 8, offset: 8456)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !3405, file: !1277, line: 858, baseType: !95, size: 32, offset: 8480)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !3405, file: !1277, line: 859, baseType: !375, size: 128, offset: 8512)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !3405, file: !1277, line: 860, baseType: !95, size: 32, offset: 8640)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !3405, file: !1277, line: 861, baseType: !375, size: 128, offset: 8704)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !3405, file: !1277, line: 873, baseType: !3593, size: 256, offset: 8832)
!3593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1277, line: 376, size: 256, elements: !3594)
!3594 = !{!3595, !3596, !3597, !3598}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3593, file: !1277, line: 381, baseType: !381, size: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3593, file: !1277, line: 384, baseType: !698, size: 64, offset: 64)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3593, file: !1277, line: 389, baseType: !698, size: 64, offset: 128)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3593, file: !1277, line: 392, baseType: !698, size: 64, offset: 192)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3405, file: !1277, line: 875, baseType: !375, size: 128, offset: 9088)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !3405, file: !1277, line: 877, baseType: !3601, size: 320, offset: 9216)
!3601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3602, line: 86, size: 320, elements: !3603)
!3602 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3603 = !{!3604, !3605, !3606}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3601, file: !3602, line: 87, baseType: !95, size: 32)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3601, file: !3602, line: 88, baseType: !375, size: 128, offset: 64)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3601, file: !3602, line: 89, baseType: !375, size: 128, offset: 192)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !3405, file: !1277, line: 878, baseType: !983, size: 192, align: 64, offset: 9536)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3405, file: !1277, line: 881, baseType: !1716, size: 64, offset: 9728)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !3405, file: !1277, line: 882, baseType: !1716, size: 64, offset: 9792)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !3405, file: !1277, line: 884, baseType: !95, size: 32, offset: 9856)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !3405, file: !1277, line: 885, baseType: !95, size: 32, offset: 9888)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !3405, file: !1277, line: 886, baseType: !95, size: 32, offset: 9920)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !3405, file: !1277, line: 888, baseType: !95, size: 32, offset: 9952)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !3405, file: !1277, line: 890, baseType: !381, size: 64, offset: 9984)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !3405, file: !1277, line: 893, baseType: !13, size: 32, offset: 10048)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !3405, file: !1277, line: 896, baseType: !13, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !3405, file: !1277, line: 897, baseType: !13, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !3405, file: !1277, line: 898, baseType: !13, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !3405, file: !1277, line: 899, baseType: !13, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !3405, file: !1277, line: 919, baseType: !13, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !3405, file: !1277, line: 922, baseType: !13, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !3405, file: !1277, line: 923, baseType: !13, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !3405, file: !1277, line: 925, baseType: !13, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !3405, file: !1277, line: 939, baseType: !13, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3405, file: !1277, line: 941, baseType: !13, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !3405, file: !1277, line: 944, baseType: !13, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !3405, file: !1277, line: 956, baseType: !13, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !3405, file: !1277, line: 962, baseType: !13, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !3405, file: !1277, line: 966, baseType: !13, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !3405, file: !1277, line: 969, baseType: !381, size: 64, offset: 10176)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !3405, file: !1277, line: 971, baseType: !3632, size: 448, offset: 10240)
!3632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !134, line: 25, size: 448, elements: !3633)
!3633 = !{!3634, !3635, !3640}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3632, file: !134, line: 26, baseType: !381, size: 64)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3632, file: !134, line: 27, baseType: !3636, size: 64, offset: 64)
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3637 = !DISubroutineType(types: !3638)
!3638 = !{!582, !3639}
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3640 = !DIDerivedType(tag: DW_TAG_member, scope: !3632, file: !134, line: 28, baseType: !3641, size: 320, offset: 128)
!3641 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3632, file: !134, line: 28, size: 320, elements: !3642)
!3642 = !{!3643, !3653, !3678}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3641, file: !134, line: 37, baseType: !3644, size: 320)
!3644 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3641, file: !134, line: 30, size: 320, elements: !3645)
!3645 = !{!3646, !3648, !3649, !3650, !3651, !3652}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3644, file: !134, line: 31, baseType: !3647, size: 64)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3644, file: !134, line: 32, baseType: !424, size: 32, offset: 64)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3644, file: !134, line: 33, baseType: !424, size: 32, offset: 96)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3644, file: !134, line: 34, baseType: !424, size: 32, offset: 128)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3644, file: !134, line: 35, baseType: !696, size: 64, offset: 192)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3644, file: !134, line: 36, baseType: !3647, size: 64, offset: 256)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3641, file: !134, line: 47, baseType: !3654, size: 192)
!3654 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3641, file: !134, line: 39, size: 192, elements: !3655)
!3655 = !{!3656, !3657, !3658, !3677}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3654, file: !134, line: 40, baseType: !3019, size: 32)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3654, file: !134, line: 41, baseType: !133, size: 32, offset: 32)
!3658 = !DIDerivedType(tag: DW_TAG_member, scope: !3654, file: !134, line: 42, baseType: !3659, size: 64, offset: 64)
!3659 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3654, file: !134, line: 42, size: 64, elements: !3660)
!3660 = !{!3661, !3669}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3659, file: !134, line: 43, baseType: !3662, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3664, line: 7, size: 128, elements: !3665)
!3664 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3665 = !{!3666, !3668}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3663, file: !3664, line: 8, baseType: !3667, size: 64)
!3667 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !580, line: 93, baseType: !398)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3663, file: !3664, line: 9, baseType: !398, size: 64, offset: 64)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3659, file: !134, line: 44, baseType: !3670, size: 64)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3672, line: 7, size: 64, elements: !3673)
!3672 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3673 = !{!3674, !3676}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3671, file: !3672, line: 8, baseType: !3675, size: 32)
!3675 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3672, line: 5, baseType: !878)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3671, file: !3672, line: 9, baseType: !878, size: 32, offset: 32)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3654, file: !134, line: 46, baseType: !696, size: 64, offset: 128)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3641, file: !134, line: 55, baseType: !3679, size: 256)
!3679 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3641, file: !134, line: 49, size: 256, elements: !3680)
!3680 = !{!3681, !3684, !3685, !3686, !3687}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3679, file: !134, line: 50, baseType: !3682, size: 64)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !134, line: 14, flags: DIFlagFwdDecl)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3679, file: !134, line: 51, baseType: !95, size: 32, offset: 64)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3679, file: !134, line: 52, baseType: !95, size: 32, offset: 96)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3679, file: !134, line: 53, baseType: !381, size: 64, offset: 128)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3679, file: !134, line: 54, baseType: !381, size: 64, offset: 192)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3405, file: !1277, line: 973, baseType: !3689, size: 32, offset: 10688)
!3689 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !353, line: 27, baseType: !3690)
!3690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !580, line: 28, baseType: !95)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !3405, file: !1277, line: 974, baseType: !3689, size: 32, offset: 10720)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !3405, file: !1277, line: 978, baseType: !381, size: 64, offset: 10752)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !3405, file: !1277, line: 987, baseType: !3404, size: 64, offset: 10816)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3405, file: !1277, line: 990, baseType: !3404, size: 64, offset: 10880)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3405, file: !1277, line: 995, baseType: !375, size: 128, offset: 10944)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3405, file: !1277, line: 996, baseType: !375, size: 128, offset: 11072)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3405, file: !1277, line: 997, baseType: !3404, size: 64, offset: 11200)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !3405, file: !1277, line: 1005, baseType: !375, size: 128, offset: 11264)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !3405, file: !1277, line: 1006, baseType: !375, size: 128, offset: 11392)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !3405, file: !1277, line: 1009, baseType: !1789, size: 64, offset: 11520)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !3405, file: !1277, line: 1010, baseType: !3702, size: 512, offset: 11584)
!3702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 512, elements: !1099)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !3405, file: !1277, line: 1011, baseType: !375, size: 128, offset: 12096)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !3405, file: !1277, line: 1012, baseType: !375, size: 128, offset: 12224)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !3405, file: !1277, line: 1014, baseType: !831, size: 64, offset: 12352)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !3405, file: !1277, line: 1017, baseType: !998, size: 64, offset: 12416)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !3405, file: !1277, line: 1020, baseType: !998, size: 64, offset: 12480)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !3405, file: !1277, line: 1023, baseType: !287, size: 64, offset: 12544)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3405, file: !1277, line: 1025, baseType: !696, size: 64, offset: 12608)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3405, file: !1277, line: 1026, baseType: !696, size: 64, offset: 12672)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3405, file: !1277, line: 1031, baseType: !696, size: 64, offset: 12736)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3405, file: !1277, line: 1032, baseType: !3713, size: 192, offset: 12800)
!3713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1277, line: 324, size: 192, elements: !3714)
!3714 = !{!3715, !3716, !3717}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3713, file: !1277, line: 326, baseType: !696, size: 64)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3713, file: !1277, line: 327, baseType: !696, size: 64, offset: 64)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3713, file: !1277, line: 328, baseType: !479, size: 32, offset: 128)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3405, file: !1277, line: 1041, baseType: !381, size: 64, offset: 12992)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3405, file: !1277, line: 1042, baseType: !381, size: 64, offset: 13056)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !3405, file: !1277, line: 1045, baseType: !696, size: 64, offset: 13120)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !3405, file: !1277, line: 1048, baseType: !696, size: 64, offset: 13184)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3405, file: !1277, line: 1051, baseType: !381, size: 64, offset: 13248)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3405, file: !1277, line: 1052, baseType: !381, size: 64, offset: 13312)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3405, file: !1277, line: 1055, baseType: !3725, size: 640, offset: 13376)
!3725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3726, line: 132, size: 640, elements: !3727)
!3726 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3727 = !{!3728, !3734, !3735}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3725, file: !3726, line: 133, baseType: !3729, size: 576)
!3729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3730, size: 576, elements: !492)
!3730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3726, line: 117, size: 192, elements: !3731)
!3731 = !{!3732, !3733}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3730, file: !3726, line: 118, baseType: !696, size: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3730, file: !3726, line: 119, baseType: !3028, size: 128, offset: 64)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3725, file: !3726, line: 134, baseType: !13, size: 32, offset: 576)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3725, file: !3726, line: 135, baseType: !13, size: 32, offset: 608)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !3405, file: !1277, line: 1058, baseType: !3737, size: 448, offset: 14016)
!3737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3726, line: 144, size: 448, elements: !3738)
!3738 = !{!3739, !3740, !3741}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3737, file: !3726, line: 145, baseType: !1089, size: 128, align: 64)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3737, file: !3726, line: 146, baseType: !882, size: 256, offset: 128)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3737, file: !3726, line: 147, baseType: !13, size: 32, offset: 384)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !3405, file: !1277, line: 1064, baseType: !1826, size: 64, offset: 14464)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !3405, file: !1277, line: 1067, baseType: !1826, size: 64, offset: 14528)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3405, file: !1277, line: 1070, baseType: !1826, size: 64, offset: 14592)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !3405, file: !1277, line: 1074, baseType: !1853, size: 64, offset: 14656)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3405, file: !1277, line: 1084, baseType: !3747, size: 128, offset: 14720)
!3747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !3748)
!3748 = !{!3749}
!3749 = !DISubrange(count: 16)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !3405, file: !1277, line: 1086, baseType: !3751, size: 64, offset: 14848)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1277, line: 55, flags: DIFlagFwdDecl)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !3405, file: !1277, line: 1089, baseType: !3754, size: 64, offset: 14912)
!3754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3755, line: 12, size: 64, elements: !3756)
!3755 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3756 = !{!3757}
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3754, file: !3755, line: 13, baseType: !3758, size: 64)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3755, line: 8, flags: DIFlagFwdDecl)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !3405, file: !1277, line: 1090, baseType: !3761, size: 128, offset: 14976)
!3761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3762, line: 13, size: 128, elements: !3763)
!3762 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3763 = !{!3764}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3761, file: !3762, line: 14, baseType: !375, size: 128)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3405, file: !1277, line: 1097, baseType: !3766, size: 64, offset: 15104)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1277, line: 50, flags: DIFlagFwdDecl)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3405, file: !1277, line: 1100, baseType: !3769, size: 64, offset: 15168)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1277, line: 1100, flags: DIFlagFwdDecl)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !3405, file: !1277, line: 1103, baseType: !3772, size: 64, offset: 15232)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1277, line: 53, flags: DIFlagFwdDecl)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3405, file: !1277, line: 1107, baseType: !3775, size: 64, offset: 15296)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3777, line: 35, flags: DIFlagFwdDecl)
!3777 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3405, file: !1277, line: 1110, baseType: !3779, size: 64, offset: 15360)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3781, line: 93, size: 8768, elements: !3782)
!3781 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3782 = !{!3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3830, !3839, !3840, !3842, !3843, !3844, !3847, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3885, !3886, !3893, !3903, !3906, !3907, !3910, !3911, !3912, !3913, !3914, !3915}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3780, file: !3781, line: 94, baseType: !1793, size: 32)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3780, file: !3781, line: 95, baseType: !352, size: 32, offset: 32)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3780, file: !3781, line: 96, baseType: !95, size: 32, offset: 64)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3780, file: !3781, line: 97, baseType: !95, size: 32, offset: 96)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3780, file: !3781, line: 98, baseType: !375, size: 128, offset: 128)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3780, file: !3781, line: 100, baseType: !1804, size: 192, offset: 256)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3780, file: !3781, line: 103, baseType: !3404, size: 64, offset: 448)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3780, file: !3781, line: 106, baseType: !3791, size: 192, offset: 512)
!3791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2001, line: 32, size: 192, elements: !3792)
!3792 = !{!3793, !3794}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3791, file: !2001, line: 33, baseType: !375, size: 128)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3791, file: !2001, line: 34, baseType: !3795, size: 64, offset: 128)
!3795 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3796, line: 25, baseType: !3797)
!3796 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3797 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3796, line: 23, size: 64, elements: !3798)
!3798 = !{!3799}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3797, file: !3796, line: 24, baseType: !436, size: 64)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3780, file: !3781, line: 109, baseType: !1203, size: 64, offset: 704)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3780, file: !3781, line: 112, baseType: !95, size: 32, offset: 768)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3780, file: !3781, line: 114, baseType: !95, size: 32, offset: 800)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3780, file: !3781, line: 115, baseType: !3404, size: 64, offset: 832)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3780, file: !3781, line: 118, baseType: !95, size: 32, offset: 896)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3780, file: !3781, line: 119, baseType: !13, size: 32, offset: 928)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3780, file: !3781, line: 121, baseType: !3807, size: 64, offset: 960)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3781, line: 80, size: 448, elements: !3809)
!3809 = !{!3810, !3811, !3817}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3808, file: !3781, line: 81, baseType: !352, size: 32)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3808, file: !3781, line: 82, baseType: !3812, size: 128, offset: 64)
!3812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3781, line: 75, size: 128, elements: !3813)
!3813 = !{!3814, !3815}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3812, file: !3781, line: 76, baseType: !3404, size: 64)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3812, file: !3781, line: 77, baseType: !3816, size: 64, offset: 64)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3808, file: !3781, line: 83, baseType: !832, size: 256, offset: 192)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3780, file: !3781, line: 132, baseType: !13, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3780, file: !3781, line: 133, baseType: !13, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3780, file: !3781, line: 138, baseType: !13, size: 32, offset: 1056)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3780, file: !3781, line: 139, baseType: !375, size: 128, offset: 1088)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3780, file: !3781, line: 142, baseType: !2974, size: 512, offset: 1216)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3780, file: !3781, line: 143, baseType: !2954, size: 64, offset: 1728)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3780, file: !3781, line: 150, baseType: !3825, size: 256, offset: 1792)
!3825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3826, size: 256, elements: !457)
!3826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3781, line: 38, size: 128, elements: !3827)
!3827 = !{!3828, !3829}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3826, file: !3781, line: 39, baseType: !696, size: 64)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3826, file: !3781, line: 40, baseType: !696, size: 64, offset: 64)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3780, file: !3781, line: 156, baseType: !3831, size: 192, offset: 2048)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3781, line: 66, size: 192, elements: !3832)
!3832 = !{!3833}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3831, file: !3781, line: 67, baseType: !3834, size: 192)
!3834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3781, line: 47, size: 192, elements: !3835)
!3835 = !{!3836, !3837, !3838}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3834, file: !3781, line: 48, baseType: !392, size: 64)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3834, file: !3781, line: 49, baseType: !392, size: 64, offset: 64)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3834, file: !3781, line: 50, baseType: !392, size: 64, offset: 128)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3780, file: !3781, line: 160, baseType: !3725, size: 640, offset: 2240)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3780, file: !3781, line: 163, baseType: !3841, size: 256, offset: 2880)
!3841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1789, size: 256, elements: !1099)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3780, file: !3781, line: 169, baseType: !1789, size: 64, offset: 3136)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3780, file: !3781, line: 172, baseType: !95, size: 32, offset: 3200)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3780, file: !3781, line: 174, baseType: !3845, size: 64, offset: 3264)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3781, line: 174, flags: DIFlagFwdDecl)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3780, file: !3781, line: 185, baseType: !3848, size: 64, offset: 3328)
!3848 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !667, line: 860, baseType: !3849)
!3849 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !667, line: 853, size: 64, elements: !3850)
!3850 = !{!3851, !3852}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3849, file: !667, line: 858, baseType: !666, size: 32)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3849, file: !667, line: 859, baseType: !332, size: 32, offset: 32)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3780, file: !3781, line: 186, baseType: !696, size: 64, offset: 3392)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3780, file: !3781, line: 186, baseType: !696, size: 64, offset: 3456)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3780, file: !3781, line: 186, baseType: !696, size: 64, offset: 3520)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3780, file: !3781, line: 186, baseType: !696, size: 64, offset: 3584)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3780, file: !3781, line: 187, baseType: !696, size: 64, offset: 3648)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3780, file: !3781, line: 188, baseType: !696, size: 64, offset: 3712)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3780, file: !3781, line: 189, baseType: !3713, size: 192, offset: 3776)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3780, file: !3781, line: 190, baseType: !381, size: 64, offset: 3968)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3780, file: !3781, line: 190, baseType: !381, size: 64, offset: 4032)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3780, file: !3781, line: 190, baseType: !381, size: 64, offset: 4096)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3780, file: !3781, line: 190, baseType: !381, size: 64, offset: 4160)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3780, file: !3781, line: 191, baseType: !381, size: 64, offset: 4224)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3780, file: !3781, line: 191, baseType: !381, size: 64, offset: 4288)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3780, file: !3781, line: 191, baseType: !381, size: 64, offset: 4352)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3780, file: !3781, line: 191, baseType: !381, size: 64, offset: 4416)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3780, file: !3781, line: 192, baseType: !381, size: 64, offset: 4480)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3780, file: !3781, line: 192, baseType: !381, size: 64, offset: 4544)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3780, file: !3781, line: 192, baseType: !381, size: 64, offset: 4608)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3780, file: !3781, line: 192, baseType: !381, size: 64, offset: 4672)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3780, file: !3781, line: 193, baseType: !381, size: 64, offset: 4736)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3780, file: !3781, line: 193, baseType: !381, size: 64, offset: 4800)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3780, file: !3781, line: 194, baseType: !3875, size: 448, offset: 4864)
!3875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3876, line: 12, size: 448, elements: !3877)
!3876 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3877 = !{!3878, !3879, !3880, !3881, !3882, !3883, !3884}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3875, file: !3876, line: 15, baseType: !696, size: 64)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3875, file: !3876, line: 17, baseType: !696, size: 64, offset: 64)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3875, file: !3876, line: 19, baseType: !696, size: 64, offset: 128)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3875, file: !3876, line: 21, baseType: !696, size: 64, offset: 192)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3875, file: !3876, line: 29, baseType: !696, size: 64, offset: 256)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3875, file: !3876, line: 35, baseType: !696, size: 64, offset: 320)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3875, file: !3876, line: 44, baseType: !696, size: 64, offset: 384)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3780, file: !3781, line: 202, baseType: !698, size: 64, offset: 5312)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3780, file: !3781, line: 213, baseType: !3887, size: 2048, offset: 5376)
!3887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3888, size: 2048, elements: !3748)
!3888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3889, line: 43, size: 128, elements: !3890)
!3889 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3890 = !{!3891, !3892}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3888, file: !3889, line: 44, baseType: !595, size: 64)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3888, file: !3889, line: 45, baseType: !595, size: 64, offset: 64)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3780, file: !3781, line: 216, baseType: !3894, size: 448, offset: 7424)
!3894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3781, line: 30, size: 448, elements: !3895)
!3895 = !{!3896, !3897, !3898, !3899, !3900, !3901, !3902}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3894, file: !3781, line: 31, baseType: !95, size: 32)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3894, file: !3781, line: 32, baseType: !582, size: 64, offset: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3894, file: !3781, line: 33, baseType: !381, size: 64, offset: 128)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3894, file: !3781, line: 34, baseType: !696, size: 64, offset: 192)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3894, file: !3781, line: 34, baseType: !696, size: 64, offset: 256)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3894, file: !3781, line: 35, baseType: !381, size: 64, offset: 320)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3894, file: !3781, line: 35, baseType: !381, size: 64, offset: 384)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3780, file: !3781, line: 219, baseType: !3904, size: 64, offset: 7872)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3781, line: 219, flags: DIFlagFwdDecl)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3780, file: !3781, line: 222, baseType: !13, size: 32, offset: 7936)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3780, file: !3781, line: 223, baseType: !3908, size: 64, offset: 8000)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3781, line: 223, flags: DIFlagFwdDecl)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3780, file: !3781, line: 230, baseType: !470, size: 8, offset: 8064)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3780, file: !3781, line: 231, baseType: !1007, size: 16, offset: 8080)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3780, file: !3781, line: 232, baseType: !1007, size: 16, offset: 8096)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3780, file: !3781, line: 234, baseType: !1716, size: 64, offset: 8128)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3780, file: !3781, line: 237, baseType: !882, size: 256, offset: 8192)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3780, file: !3781, line: 243, baseType: !1495, size: 320, offset: 8448)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !3405, file: !1277, line: 1111, baseType: !3917, size: 64, offset: 15424)
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3918, size: 64)
!3918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3781, line: 20, size: 16640, elements: !3919)
!3919 = !{!3920, !3921, !3922, !3923}
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3918, file: !3781, line: 21, baseType: !332, size: 32)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3918, file: !3781, line: 22, baseType: !1793, size: 32, offset: 32)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3918, file: !3781, line: 23, baseType: !1804, size: 192, offset: 64)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3918, file: !3781, line: 24, baseType: !3924, size: 16384, offset: 256)
!3924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3925, size: 16384, elements: !551)
!3925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2001, line: 51, size: 256, elements: !3926)
!3926 = !{!3927}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3925, file: !2001, line: 52, baseType: !3928, size: 256)
!3928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2001, line: 37, size: 256, elements: !3929)
!3929 = !{!3930, !3937, !3938, !3942}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3928, file: !2001, line: 39, baseType: !3931, size: 64)
!3931 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3932, line: 83, baseType: !3933)
!3932 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3934, size: 64)
!3934 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3932, line: 82, baseType: !3935)
!3935 = !DISubroutineType(types: !3936)
!3936 = !{null, !95}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3928, file: !2001, line: 40, baseType: !381, size: 64, offset: 64)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3928, file: !2001, line: 46, baseType: !3939, size: 64, offset: 128)
!3939 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3932, line: 86, baseType: !3940)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3941, size: 64)
!3941 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3932, line: 85, baseType: !1198)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3928, file: !2001, line: 48, baseType: !3795, size: 64, offset: 192)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3405, file: !1277, line: 1112, baseType: !3795, size: 64, offset: 15488)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !3405, file: !1277, line: 1113, baseType: !3795, size: 64, offset: 15552)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !3405, file: !1277, line: 1115, baseType: !3795, size: 64, offset: 15616)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !3405, file: !1277, line: 1116, baseType: !3791, size: 192, offset: 15680)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !3405, file: !1277, line: 1117, baseType: !381, size: 64, offset: 15872)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !3405, file: !1277, line: 1118, baseType: !593, size: 64, offset: 15936)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !3405, file: !1277, line: 1119, baseType: !13, size: 32, offset: 16000)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !3405, file: !1277, line: 1121, baseType: !1088, size: 64, offset: 16064)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !3405, file: !1277, line: 1125, baseType: !3952, size: 64, offset: 16128)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1277, line: 43, flags: DIFlagFwdDecl)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !3405, file: !1277, line: 1127, baseType: !631, size: 32, offset: 16192)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !3405, file: !1277, line: 1128, baseType: !13, size: 32, offset: 16224)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !3405, file: !1277, line: 1130, baseType: !3957, size: 128, offset: 16256)
!3957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3958, line: 37, size: 128, elements: !3959)
!3958 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3959 = !{!3960, !3961, !3962}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3957, file: !3958, line: 38, baseType: !95, size: 32)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3957, file: !3958, line: 39, baseType: !352, size: 32, offset: 32)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3957, file: !3958, line: 40, baseType: !3963, size: 64, offset: 64)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3958, line: 24, flags: DIFlagFwdDecl)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !3405, file: !1277, line: 1131, baseType: !3966, size: 256, offset: 16384)
!3966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3967, line: 12, size: 256, elements: !3968)
!3967 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3968 = !{!3969, !3970, !3971, !3972}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3966, file: !3967, line: 13, baseType: !548, size: 64)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3966, file: !3967, line: 14, baseType: !381, size: 64, offset: 64)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3966, file: !3967, line: 15, baseType: !381, size: 64, offset: 128)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3966, file: !3967, line: 16, baseType: !470, size: 8, offset: 192)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !3405, file: !1277, line: 1134, baseType: !696, size: 64, offset: 16640)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !3405, file: !1277, line: 1135, baseType: !696, size: 64, offset: 16704)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !3405, file: !1277, line: 1138, baseType: !332, size: 32, offset: 16768)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !3405, file: !1277, line: 1141, baseType: !479, size: 32, offset: 16800)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !3405, file: !1277, line: 1143, baseType: !3978, size: 64, offset: 16832)
!3978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1277, line: 735, size: 64, elements: !3979)
!3979 = !{!3980}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3978, file: !1277, line: 736, baseType: !3981, size: 64)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !3405, file: !1277, line: 1147, baseType: !3031, size: 128, offset: 16896)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !3405, file: !1277, line: 1149, baseType: !3404, size: 64, offset: 17024)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !3405, file: !1277, line: 1151, baseType: !3985, size: 64, offset: 17088)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1277, line: 1151, flags: DIFlagFwdDecl)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !3405, file: !1277, line: 1188, baseType: !287, size: 64, offset: 17152)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !3405, file: !1277, line: 1191, baseType: !3989, size: 64, offset: 17216)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !3405, file: !1277, line: 1194, baseType: !3991, size: 64, offset: 17280)
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!3992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !63, line: 976, size: 320, elements: !3993)
!3993 = !{!3994, !3995, !3996, !3997, !3998, !3999, !4000}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "mq_list", scope: !3992, file: !63, line: 977, baseType: !290, size: 64)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "cached_rq", scope: !3992, file: !63, line: 980, baseType: !290, size: 64, offset: 64)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ios", scope: !3992, file: !63, line: 981, baseType: !372, size: 16, offset: 128)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "rq_count", scope: !3992, file: !63, line: 983, baseType: !372, size: 16, offset: 144)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "multiple_queues", scope: !3992, file: !63, line: 985, baseType: !470, size: 8, offset: 160)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "has_elevator", scope: !3992, file: !63, line: 986, baseType: !470, size: 8, offset: 168)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !3992, file: !63, line: 988, baseType: !375, size: 128, offset: 192)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !3405, file: !1277, line: 1197, baseType: !4002, size: 64, offset: 17344)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1277, line: 61, flags: DIFlagFwdDecl)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !3405, file: !1277, line: 1199, baseType: !4005, size: 64, offset: 17408)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !4007, line: 99, size: 128, elements: !4008)
!4007 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!4008 = !{!4009, !4010, !4011}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4006, file: !4007, line: 100, baseType: !390, size: 64)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !4006, file: !4007, line: 101, baseType: !352, size: 32, offset: 64)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !4006, file: !4007, line: 103, baseType: !372, size: 16, offset: 96)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !3405, file: !1277, line: 1202, baseType: !4013, size: 64, offset: 17472)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1277, line: 48, flags: DIFlagFwdDecl)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !3405, file: !1277, line: 1205, baseType: !381, size: 64, offset: 17536)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !3405, file: !1277, line: 1206, baseType: !4017, size: 64, offset: 17600)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2001, line: 14, baseType: !4019)
!4019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2001, line: 12, size: 384, elements: !4020)
!4020 = !{!4021}
!4021 = !DIDerivedType(tag: DW_TAG_member, scope: !4019, file: !2001, line: 13, baseType: !4022, size: 384)
!4022 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4019, file: !2001, line: 13, size: 384, elements: !4023)
!4023 = !{!4024, !4025, !4026, !4027}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4022, file: !2001, line: 13, baseType: !95, size: 32)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4022, file: !2001, line: 13, baseType: !95, size: 32, offset: 32)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4022, file: !2001, line: 13, baseType: !95, size: 32, offset: 64)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4022, file: !2001, line: 13, baseType: !4028, size: 256, offset: 128)
!4028 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4029, line: 37, size: 256, elements: !4030)
!4029 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4030 = !{!4031, !4036, !4049, !4055, !4064, !4091, !4096}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4028, file: !4029, line: 42, baseType: !4032, size: 64)
!4032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4028, file: !4029, line: 39, size: 64, elements: !4033)
!4033 = !{!4034, !4035}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4032, file: !4029, line: 40, baseType: !3690, size: 32)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4032, file: !4029, line: 41, baseType: !637, size: 32, offset: 32)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4028, file: !4029, line: 50, baseType: !4037, size: 192)
!4037 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4028, file: !4029, line: 45, size: 192, elements: !4038)
!4038 = !{!4039, !4041, !4042, !4048}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4037, file: !4029, line: 46, baseType: !4040, size: 32)
!4040 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !580, line: 95, baseType: !95)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4037, file: !4029, line: 47, baseType: !95, size: 32, offset: 32)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4037, file: !4029, line: 48, baseType: !4043, size: 64, offset: 64)
!4043 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4029, line: 11, baseType: !4044)
!4044 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4029, line: 8, size: 64, elements: !4045)
!4045 = !{!4046, !4047}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4044, file: !4029, line: 9, baseType: !95, size: 32)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4044, file: !4029, line: 10, baseType: !287, size: 64)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4037, file: !4029, line: 49, baseType: !95, size: 32, offset: 128)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4028, file: !4029, line: 57, baseType: !4050, size: 128)
!4050 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4028, file: !4029, line: 53, size: 128, elements: !4051)
!4051 = !{!4052, !4053, !4054}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4050, file: !4029, line: 54, baseType: !3690, size: 32)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4050, file: !4029, line: 55, baseType: !637, size: 32, offset: 32)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4050, file: !4029, line: 56, baseType: !4043, size: 64, offset: 64)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4028, file: !4029, line: 66, baseType: !4056, size: 256)
!4056 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4028, file: !4029, line: 60, size: 256, elements: !4057)
!4057 = !{!4058, !4059, !4060, !4061, !4063}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4056, file: !4029, line: 61, baseType: !3690, size: 32)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4056, file: !4029, line: 62, baseType: !637, size: 32, offset: 32)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4056, file: !4029, line: 63, baseType: !95, size: 32, offset: 64)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4056, file: !4029, line: 64, baseType: !4062, size: 64, offset: 128)
!4062 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !580, line: 94, baseType: !581)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4056, file: !4029, line: 65, baseType: !4062, size: 64, offset: 192)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4028, file: !4029, line: 105, baseType: !4065, size: 256)
!4065 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4028, file: !4029, line: 69, size: 256, elements: !4066)
!4066 = !{!4067, !4068}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4065, file: !4029, line: 70, baseType: !287, size: 64)
!4068 = !DIDerivedType(tag: DW_TAG_member, scope: !4065, file: !4029, line: 79, baseType: !4069, size: 192, offset: 64)
!4069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4065, file: !4029, line: 79, size: 192, elements: !4070)
!4070 = !{!4071, !4072, !4073, !4080, !4085}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4069, file: !4029, line: 81, baseType: !95, size: 32)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4069, file: !4029, line: 86, baseType: !1007, size: 16)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4069, file: !4029, line: 92, baseType: !4074, size: 192)
!4074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4069, file: !4029, line: 88, size: 192, elements: !4075)
!4075 = !{!4076, !4078, !4079}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4074, file: !4029, line: 89, baseType: !4077, size: 64)
!4077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !3015)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4074, file: !4029, line: 90, baseType: !287, size: 64, offset: 64)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4074, file: !4029, line: 91, baseType: !287, size: 64, offset: 128)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4069, file: !4029, line: 97, baseType: !4081, size: 96)
!4081 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4069, file: !4029, line: 94, size: 96, elements: !4082)
!4082 = !{!4083, !4084}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4081, file: !4029, line: 95, baseType: !4077, size: 64)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4081, file: !4029, line: 96, baseType: !285, size: 32, offset: 64)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4069, file: !4029, line: 103, baseType: !4086, size: 128)
!4086 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4069, file: !4029, line: 99, size: 128, elements: !4087)
!4087 = !{!4088, !4089, !4090}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4086, file: !4029, line: 100, baseType: !381, size: 64)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4086, file: !4029, line: 101, baseType: !285, size: 32, offset: 64)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4086, file: !4029, line: 102, baseType: !285, size: 32, offset: 96)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4028, file: !4029, line: 111, baseType: !4092, size: 128)
!4092 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4028, file: !4029, line: 108, size: 128, elements: !4093)
!4093 = !{!4094, !4095}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4092, file: !4029, line: 109, baseType: !582, size: 64)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4092, file: !4029, line: 110, baseType: !95, size: 32, offset: 64)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4028, file: !4029, line: 118, baseType: !4097, size: 128)
!4097 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4028, file: !4029, line: 114, size: 128, elements: !4098)
!4098 = !{!4099, !4100, !4101}
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4097, file: !4029, line: 115, baseType: !287, size: 64)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4097, file: !4029, line: 116, baseType: !95, size: 32, offset: 64)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4097, file: !4029, line: 117, baseType: !13, size: 32, offset: 96)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3405, file: !1277, line: 1208, baseType: !3875, size: 448, offset: 17664)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !3405, file: !1277, line: 1215, baseType: !696, size: 64, offset: 18112)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !3405, file: !1277, line: 1217, baseType: !696, size: 64, offset: 18176)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !3405, file: !1277, line: 1219, baseType: !696, size: 64, offset: 18240)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !3405, file: !1277, line: 1223, baseType: !4107, size: 64, offset: 18304)
!4107 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4108, line: 99, baseType: !4109)
!4108 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4109 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4108, line: 99, size: 64, elements: !4110)
!4110 = !{!4111}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4109, file: !4108, line: 99, baseType: !436, size: 64)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !3405, file: !1277, line: 1225, baseType: !666, size: 32, offset: 18368)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !3405, file: !1277, line: 1226, baseType: !95, size: 32, offset: 18400)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !3405, file: !1277, line: 1227, baseType: !95, size: 32, offset: 18432)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !3405, file: !1277, line: 1231, baseType: !4116, size: 64, offset: 18496)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1277, line: 1231, flags: DIFlagFwdDecl)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !3405, file: !1277, line: 1233, baseType: !375, size: 128, offset: 18560)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !3405, file: !1277, line: 1240, baseType: !4120, size: 64, offset: 18688)
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4121 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1277, line: 62, flags: DIFlagFwdDecl)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !3405, file: !1277, line: 1242, baseType: !4123, size: 64, offset: 18752)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1277, line: 1242, flags: DIFlagFwdDecl)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !3405, file: !1277, line: 1244, baseType: !375, size: 128, offset: 18816)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !3405, file: !1277, line: 1245, baseType: !4127, size: 64, offset: 18944)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1277, line: 51, flags: DIFlagFwdDecl)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !3405, file: !1277, line: 1246, baseType: !882, size: 256, offset: 19008)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !3405, file: !1277, line: 1247, baseType: !13, size: 32, offset: 19264)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !3405, file: !1277, line: 1250, baseType: !4132, size: 64, offset: 19328)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1277, line: 57, flags: DIFlagFwdDecl)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !3405, file: !1277, line: 1251, baseType: !882, size: 256, offset: 19392)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !3405, file: !1277, line: 1252, baseType: !375, size: 128, offset: 19648)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !3405, file: !1277, line: 1259, baseType: !2459, size: 64, offset: 19776)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !3405, file: !1277, line: 1260, baseType: !1007, size: 16, offset: 19840)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !3405, file: !1277, line: 1261, baseType: !1007, size: 16, offset: 19856)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !3405, file: !1277, line: 1314, baseType: !4140, size: 64, offset: 19904)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4142, line: 62, size: 256, align: 256, elements: !4143)
!4142 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4143 = !{!4144, !4145, !4146, !4147, !4148, !4149, !4150}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4141, file: !4142, line: 75, baseType: !285, size: 32)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4141, file: !4142, line: 90, baseType: !285, size: 32, offset: 32)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4141, file: !4142, line: 112, baseType: !697, size: 64, offset: 64)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4141, file: !4142, line: 132, baseType: !285, size: 32, offset: 128)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4141, file: !4142, line: 140, baseType: !285, size: 32, offset: 160)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4141, file: !4142, line: 149, baseType: !285, size: 32, offset: 192)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4141, file: !4142, line: 154, baseType: !4151, offset: 224)
!4151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !1819)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !3405, file: !1277, line: 1315, baseType: !424, size: 32, offset: 19968)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !3405, file: !1277, line: 1316, baseType: !424, size: 32, offset: 20000)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !3405, file: !1277, line: 1321, baseType: !381, size: 64, offset: 20032)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3405, file: !1277, line: 1325, baseType: !95, size: 32, offset: 20096)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !3405, file: !1277, line: 1326, baseType: !95, size: 32, offset: 20128)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !3405, file: !1277, line: 1327, baseType: !95, size: 32, offset: 20160)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !3405, file: !1277, line: 1328, baseType: !95, size: 32, offset: 20192)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !3405, file: !1277, line: 1329, baseType: !1089, size: 128, align: 64, offset: 20224)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !3405, file: !1277, line: 1332, baseType: !4161, size: 128, offset: 20352)
!4161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4162, line: 51, size: 128, elements: !4163)
!4162 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4163 = !{!4164, !4169, !4170}
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4161, file: !4162, line: 60, baseType: !4165, size: 64)
!4165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4166, line: 7, size: 64, elements: !4167)
!4166 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4167 = !{!4168}
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4165, file: !4166, line: 12, baseType: !433, size: 64)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4161, file: !4162, line: 63, baseType: !470, size: 8, offset: 64)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4161, file: !4162, line: 70, baseType: !470, size: 8, offset: 72)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !3405, file: !1277, line: 1335, baseType: !2201, size: 64, offset: 20480)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !3405, file: !1277, line: 1337, baseType: !4173, size: 128, offset: 20544)
!4173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4162, line: 39, size: 128, elements: !4174)
!4174 = !{!4175, !4176, !4177}
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4173, file: !4162, line: 40, baseType: !1593, size: 64)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4173, file: !4162, line: 42, baseType: !285, size: 32, offset: 64)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4173, file: !4162, line: 43, baseType: !285, size: 32, offset: 96)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !3405, file: !1277, line: 1340, baseType: !4179, size: 64, offset: 20672)
!4179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4180, size: 64)
!4180 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1277, line: 69, flags: DIFlagFwdDecl)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !3405, file: !1277, line: 1351, baseType: !95, size: 32, offset: 20736)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !3405, file: !1277, line: 1352, baseType: !95, size: 32, offset: 20768)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !3405, file: !1277, line: 1354, baseType: !381, size: 64, offset: 20800)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !3405, file: !1277, line: 1364, baseType: !696, size: 64, offset: 20864)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !3405, file: !1277, line: 1365, baseType: !696, size: 64, offset: 20928)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !3405, file: !1277, line: 1412, baseType: !381, size: 64, offset: 20992)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !3405, file: !1277, line: 1453, baseType: !1524, size: 64, offset: 21056)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !3405, file: !1277, line: 1457, baseType: !4189, size: 64, offset: 21120)
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !140, line: 61, size: 576, elements: !4191)
!4191 = !{!4192, !4193, !4212, !4215, !4216, !4249, !4259}
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4190, file: !140, line: 62, baseType: !139, size: 32)
!4193 = !DIDerivedType(tag: DW_TAG_member, scope: !4190, file: !140, line: 64, baseType: !4194, size: 192, offset: 64)
!4194 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4190, file: !140, line: 64, size: 192, elements: !4195)
!4195 = !{!4196, !4207}
!4196 = !DIDerivedType(tag: DW_TAG_member, scope: !4194, file: !140, line: 65, baseType: !4197, size: 192)
!4197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4194, file: !140, line: 65, size: 192, elements: !4198)
!4198 = !{!4199, !4206}
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4197, file: !140, line: 66, baseType: !4200, size: 128)
!4200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4201, line: 50, size: 128, elements: !4202)
!4201 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4202 = !{!4203, !4204, !4205}
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4200, file: !4201, line: 52, baseType: !381, size: 64)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4200, file: !4201, line: 54, baseType: !13, size: 32, offset: 64)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4200, file: !4201, line: 55, baseType: !13, size: 32, offset: 96)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4197, file: !140, line: 67, baseType: !381, size: 64, offset: 128)
!4207 = !DIDerivedType(tag: DW_TAG_member, scope: !4194, file: !140, line: 70, baseType: !4208, size: 192)
!4208 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4194, file: !140, line: 70, size: 192, elements: !4209)
!4209 = !{!4210, !4211}
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4208, file: !140, line: 71, baseType: !1089, size: 128, align: 64)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4208, file: !140, line: 72, baseType: !381, size: 64, offset: 128)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4190, file: !140, line: 76, baseType: !4213, size: 64, offset: 256)
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4214 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !140, line: 76, flags: DIFlagFwdDecl)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4190, file: !140, line: 77, baseType: !381, size: 64, offset: 320)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4190, file: !140, line: 79, baseType: !4217, size: 64, offset: 384)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4201, line: 25, size: 256, elements: !4219)
!4219 = !{!4220, !4226, !4230}
!4220 = !DIDerivedType(tag: DW_TAG_member, scope: !4218, file: !4201, line: 26, baseType: !4221, size: 128)
!4221 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4218, file: !4201, line: 26, size: 128, elements: !4222)
!4222 = !{!4223, !4225}
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4221, file: !4201, line: 27, baseType: !4224, size: 128)
!4224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 128, elements: !3748)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4221, file: !4201, line: 28, baseType: !4224, size: 128)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4218, file: !4201, line: 31, baseType: !4227, size: 64, offset: 128)
!4227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4228, size: 64)
!4228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4229)
!4229 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4201, line: 23, flags: DIFlagFwdDecl)
!4230 = !DIDerivedType(tag: DW_TAG_member, scope: !4218, file: !4201, line: 33, baseType: !4231, size: 64, offset: 192)
!4231 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4218, file: !4201, line: 33, size: 64, elements: !4232)
!4232 = !{!4233, !4239, !4244}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4231, file: !4201, line: 38, baseType: !4234, size: 64)
!4234 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4231, file: !4201, line: 34, size: 64, elements: !4235)
!4235 = !{!4236, !4237, !4238}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4234, file: !4201, line: 35, baseType: !878, size: 32)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4234, file: !4201, line: 36, baseType: !361, size: 8, offset: 32)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4234, file: !4201, line: 37, baseType: !361, size: 8, offset: 40)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4231, file: !4201, line: 42, baseType: !4240, size: 16)
!4240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4231, file: !4201, line: 39, size: 16, elements: !4241)
!4241 = !{!4242, !4243}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4240, file: !4201, line: 40, baseType: !361, size: 8)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4240, file: !4201, line: 41, baseType: !361, size: 8, offset: 8)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4231, file: !4201, line: 46, baseType: !4245, size: 16)
!4245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4231, file: !4201, line: 43, size: 16, elements: !4246)
!4246 = !{!4247, !4248}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4245, file: !4201, line: 44, baseType: !361, size: 8)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4245, file: !4201, line: 45, baseType: !361, size: 8, offset: 8)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4190, file: !140, line: 81, baseType: !4250, size: 64, offset: 448)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !140, line: 85, size: 384, elements: !4252)
!4252 = !{!4253, !4254, !4255, !4256, !4257, !4258}
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4251, file: !140, line: 86, baseType: !4213, size: 64)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4251, file: !140, line: 87, baseType: !381, size: 64, offset: 64)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4251, file: !140, line: 88, baseType: !381, size: 64, offset: 128)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4251, file: !140, line: 89, baseType: !381, size: 64, offset: 192)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4251, file: !140, line: 90, baseType: !470, size: 8, offset: 256)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4251, file: !140, line: 92, baseType: !4250, size: 64, offset: 320)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4190, file: !140, line: 82, baseType: !13, size: 32, offset: 512)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !3405, file: !1277, line: 1463, baseType: !4261, offset: 21184)
!4261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1277, line: 739, elements: !1130)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3405, file: !1277, line: 1470, baseType: !1089, size: 128, align: 64, offset: 21184)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3405, file: !1277, line: 1471, baseType: !1793, size: 32, offset: 21312)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !3405, file: !1277, line: 1472, baseType: !95, size: 32, offset: 21344)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !3405, file: !1277, line: 1474, baseType: !3404, size: 64, offset: 21376)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !3405, file: !1277, line: 1475, baseType: !407, size: 320, offset: 21440)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !3405, file: !1277, line: 1478, baseType: !4268, size: 64, offset: 21760)
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 64)
!4269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !4270, line: 49, size: 512, elements: !4271)
!4270 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!4271 = !{!4272, !4273, !4274, !4275, !4276, !4278, !4279, !4280, !4282}
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4269, file: !4270, line: 50, baseType: !4268, size: 64)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4269, file: !4270, line: 51, baseType: !287, size: 64, offset: 64)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4269, file: !4270, line: 52, baseType: !381, size: 64, offset: 128)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4269, file: !4270, line: 53, baseType: !381, size: 64, offset: 192)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4269, file: !4270, line: 54, baseType: !4277, size: 64, offset: 256)
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !4269, file: !4270, line: 56, baseType: !13, size: 32, offset: 320)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !4269, file: !4270, line: 58, baseType: !13, size: 32, offset: 352)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4269, file: !4270, line: 59, baseType: !4281, size: 64, offset: 384)
!4281 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !353, line: 159, baseType: !696)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !4269, file: !4270, line: 60, baseType: !2342, size: 64, offset: 448)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !3405, file: !1277, line: 1482, baseType: !1793, size: 32, offset: 21824)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3405, file: !1277, line: 1489, baseType: !287, size: 64, offset: 21888)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !3405, file: !1277, line: 1504, baseType: !287, size: 64, offset: 21952)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !3405, file: !1277, line: 1505, baseType: !697, size: 64, offset: 22016)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !3405, file: !1277, line: 1506, baseType: !696, size: 64, offset: 22080)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !3405, file: !1277, line: 1507, baseType: !697, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !3405, file: !1277, line: 1508, baseType: !697, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !3405, file: !1277, line: 1509, baseType: !697, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !3405, file: !1277, line: 1510, baseType: !1089, size: 128, align: 64, offset: 22208)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !3405, file: !1277, line: 1511, baseType: !95, size: 32, offset: 22336)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !3405, file: !1277, line: 1515, baseType: !4294, size: 64, offset: 22400)
!4294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1751, line: 56, size: 64, elements: !4295)
!4295 = !{!4296}
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4294, file: !1751, line: 57, baseType: !1754, size: 64)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !3405, file: !1277, line: 1518, baseType: !4294, size: 64, offset: 22464)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !3405, file: !1277, line: 1528, baseType: !1089, size: 128, align: 64, offset: 22528)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3405, file: !1277, line: 1552, baseType: !4300, size: 35328, offset: 23040)
!4300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4301, line: 430, size: 35328, elements: !4302)
!4301 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4302 = !{!4303, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4332, !4333, !4334, !4335, !4336, !4337, !4340, !4341, !4342, !4343}
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4300, file: !4301, line: 432, baseType: !4304, size: 192)
!4304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4305, size: 192, elements: !492)
!4305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4306, line: 16, size: 64, elements: !4307)
!4306 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4307 = !{!4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320}
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4305, file: !4306, line: 17, baseType: !370, size: 16)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4305, file: !4306, line: 18, baseType: !370, size: 16, offset: 16)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4305, file: !4306, line: 19, baseType: !370, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4305, file: !4306, line: 19, baseType: !370, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4305, file: !4306, line: 19, baseType: !370, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4305, file: !4306, line: 19, baseType: !370, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4305, file: !4306, line: 19, baseType: !370, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4305, file: !4306, line: 20, baseType: !370, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4305, file: !4306, line: 20, baseType: !370, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4305, file: !4306, line: 20, baseType: !370, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4305, file: !4306, line: 20, baseType: !370, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4305, file: !4306, line: 20, baseType: !370, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4305, file: !4306, line: 20, baseType: !370, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4300, file: !4301, line: 436, baseType: !381, size: 64, offset: 192)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4300, file: !4301, line: 440, baseType: !372, size: 16, offset: 256)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4300, file: !4301, line: 441, baseType: !372, size: 16, offset: 272)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4300, file: !4301, line: 442, baseType: !372, size: 16, offset: 288)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4300, file: !4301, line: 443, baseType: !372, size: 16, offset: 304)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4300, file: !4301, line: 447, baseType: !381, size: 64, offset: 320)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4300, file: !4301, line: 448, baseType: !381, size: 64, offset: 384)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4300, file: !4301, line: 459, baseType: !4329, size: 256, offset: 448)
!4329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4330, size: 256, elements: !1099)
!4330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4331, size: 64)
!4331 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4301, line: 428, flags: DIFlagFwdDecl)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4300, file: !4301, line: 461, baseType: !381, size: 64, offset: 704)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4300, file: !4301, line: 463, baseType: !381, size: 64, offset: 768)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4300, file: !4301, line: 465, baseType: !381, size: 64, offset: 832)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4300, file: !4301, line: 466, baseType: !381, size: 64, offset: 896)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4300, file: !4301, line: 467, baseType: !381, size: 64, offset: 960)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4300, file: !4301, line: 473, baseType: !4338, size: 64, offset: 1024)
!4338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4339, size: 64)
!4339 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4301, line: 10, flags: DIFlagFwdDecl)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4300, file: !4301, line: 480, baseType: !381, size: 64, offset: 1088)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4300, file: !4301, line: 482, baseType: !13, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4300, file: !4301, line: 491, baseType: !424, size: 32, offset: 1184)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4300, file: !4301, line: 501, baseType: !4344, size: 33792, offset: 1536)
!4344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4345, line: 448, size: 33792, elements: !4346)
!4345 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4346 = !{!4347, !4348, !4349, !4511, !4512, !4518, !4519}
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4344, file: !4345, line: 461, baseType: !13, size: 32)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4344, file: !4345, line: 468, baseType: !381, size: 64, offset: 64)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4344, file: !4345, line: 476, baseType: !4350, size: 64, offset: 128)
!4350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4351, size: 64)
!4351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4345, line: 356, size: 33280, align: 512, elements: !4352)
!4352 = !{!4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362}
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4351, file: !4345, line: 358, baseType: !13, size: 32)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4351, file: !4345, line: 361, baseType: !13, size: 32, offset: 32)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4351, file: !4345, line: 364, baseType: !696, size: 64, offset: 64)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4351, file: !4345, line: 367, baseType: !696, size: 64, offset: 128)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4351, file: !4345, line: 370, baseType: !696, size: 64, offset: 192)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4351, file: !4345, line: 373, baseType: !13, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4351, file: !4345, line: 376, baseType: !13, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4351, file: !4345, line: 391, baseType: !13, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4351, file: !4345, line: 394, baseType: !13, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4351, file: !4345, line: 397, baseType: !4363, size: 32768, offset: 512)
!4363 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4345, line: 348, size: 32768, elements: !4364)
!4364 = !{!4365, !4380, !4417, !4494, !4507}
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4363, file: !4345, line: 349, baseType: !4366, size: 896)
!4366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4345, line: 12, size: 896, elements: !4367)
!4367 = !{!4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4379}
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4366, file: !4345, line: 13, baseType: !424, size: 32)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4366, file: !4345, line: 14, baseType: !424, size: 32, offset: 32)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4366, file: !4345, line: 15, baseType: !424, size: 32, offset: 64)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4366, file: !4345, line: 16, baseType: !424, size: 32, offset: 96)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4366, file: !4345, line: 17, baseType: !424, size: 32, offset: 128)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4366, file: !4345, line: 18, baseType: !424, size: 32, offset: 160)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4366, file: !4345, line: 19, baseType: !424, size: 32, offset: 192)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4366, file: !4345, line: 22, baseType: !4376, size: 640, offset: 224)
!4376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 640, elements: !4377)
!4377 = !{!4378}
!4378 = !DISubrange(count: 20)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4366, file: !4345, line: 25, baseType: !424, size: 32, offset: 864)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4363, file: !4345, line: 350, baseType: !4381, size: 4096, align: 128)
!4381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4345, line: 34, size: 4096, align: 128, elements: !4382)
!4382 = !{!4383, !4384, !4385, !4386, !4387, !4402, !4403, !4404, !4406, !4408, !4412}
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4381, file: !4345, line: 35, baseType: !370, size: 16)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4381, file: !4345, line: 36, baseType: !370, size: 16, offset: 16)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4381, file: !4345, line: 37, baseType: !370, size: 16, offset: 32)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4381, file: !4345, line: 38, baseType: !370, size: 16, offset: 48)
!4387 = !DIDerivedType(tag: DW_TAG_member, scope: !4381, file: !4345, line: 39, baseType: !4388, size: 128, offset: 64)
!4388 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4381, file: !4345, line: 39, size: 128, elements: !4389)
!4389 = !{!4390, !4395}
!4390 = !DIDerivedType(tag: DW_TAG_member, scope: !4388, file: !4345, line: 40, baseType: !4391, size: 128)
!4391 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4388, file: !4345, line: 40, size: 128, elements: !4392)
!4392 = !{!4393, !4394}
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4391, file: !4345, line: 41, baseType: !696, size: 64)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4391, file: !4345, line: 42, baseType: !696, size: 64, offset: 64)
!4395 = !DIDerivedType(tag: DW_TAG_member, scope: !4388, file: !4345, line: 44, baseType: !4396, size: 128)
!4396 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4388, file: !4345, line: 44, size: 128, elements: !4397)
!4397 = !{!4398, !4399, !4400, !4401}
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4396, file: !4345, line: 45, baseType: !424, size: 32)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4396, file: !4345, line: 46, baseType: !424, size: 32, offset: 32)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4396, file: !4345, line: 47, baseType: !424, size: 32, offset: 64)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4396, file: !4345, line: 48, baseType: !424, size: 32, offset: 96)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4381, file: !4345, line: 51, baseType: !424, size: 32, offset: 192)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4381, file: !4345, line: 52, baseType: !424, size: 32, offset: 224)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4381, file: !4345, line: 55, baseType: !4405, size: 1024, offset: 256)
!4405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 1024, elements: !705)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4381, file: !4345, line: 58, baseType: !4407, size: 2048, offset: 1280)
!4407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 2048, elements: !551)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4381, file: !4345, line: 60, baseType: !4409, size: 384, offset: 3328)
!4409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 384, elements: !4410)
!4410 = !{!4411}
!4411 = !DISubrange(count: 12)
!4412 = !DIDerivedType(tag: DW_TAG_member, scope: !4381, file: !4345, line: 62, baseType: !4413, size: 384, offset: 3712)
!4413 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4381, file: !4345, line: 62, size: 384, elements: !4414)
!4414 = !{!4415, !4416}
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4413, file: !4345, line: 63, baseType: !4409, size: 384)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4413, file: !4345, line: 64, baseType: !4409, size: 384)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4363, file: !4345, line: 351, baseType: !4418, size: 1088)
!4418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4345, line: 79, size: 1088, elements: !4419)
!4419 = !{!4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4493}
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4418, file: !4345, line: 80, baseType: !424, size: 32)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4418, file: !4345, line: 81, baseType: !424, size: 32, offset: 32)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4418, file: !4345, line: 82, baseType: !424, size: 32, offset: 64)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4418, file: !4345, line: 83, baseType: !424, size: 32, offset: 96)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4418, file: !4345, line: 84, baseType: !424, size: 32, offset: 128)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4418, file: !4345, line: 85, baseType: !424, size: 32, offset: 160)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4418, file: !4345, line: 86, baseType: !424, size: 32, offset: 192)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4418, file: !4345, line: 88, baseType: !4376, size: 640, offset: 224)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4418, file: !4345, line: 89, baseType: !361, size: 8, offset: 864)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4418, file: !4345, line: 90, baseType: !361, size: 8, offset: 872)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4418, file: !4345, line: 91, baseType: !361, size: 8, offset: 880)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4418, file: !4345, line: 92, baseType: !361, size: 8, offset: 888)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4418, file: !4345, line: 93, baseType: !361, size: 8, offset: 896)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4418, file: !4345, line: 94, baseType: !361, size: 8, offset: 904)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4418, file: !4345, line: 95, baseType: !4435, size: 64, offset: 960)
!4435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4436, size: 64)
!4436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4437, line: 11, size: 128, elements: !4438)
!4437 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4438 = !{!4439, !4440}
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4436, file: !4437, line: 12, baseType: !582, size: 64)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4436, file: !4437, line: 13, baseType: !4441, size: 64, offset: 64)
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!4442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4443, line: 103, size: 1344, elements: !4444)
!4443 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4444 = !{!4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4473, !4474, !4475}
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4442, file: !4443, line: 109, baseType: !381, size: 64)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4442, file: !4443, line: 110, baseType: !381, size: 64, offset: 64)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4442, file: !4443, line: 111, baseType: !381, size: 64, offset: 128)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4442, file: !4443, line: 112, baseType: !381, size: 64, offset: 192)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4442, file: !4443, line: 113, baseType: !381, size: 64, offset: 256)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4442, file: !4443, line: 114, baseType: !381, size: 64, offset: 320)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4442, file: !4443, line: 117, baseType: !381, size: 64, offset: 384)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4442, file: !4443, line: 118, baseType: !381, size: 64, offset: 448)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4442, file: !4443, line: 119, baseType: !381, size: 64, offset: 512)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4442, file: !4443, line: 120, baseType: !381, size: 64, offset: 576)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4442, file: !4443, line: 121, baseType: !381, size: 64, offset: 640)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4442, file: !4443, line: 122, baseType: !381, size: 64, offset: 704)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4442, file: !4443, line: 123, baseType: !381, size: 64, offset: 768)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4442, file: !4443, line: 124, baseType: !381, size: 64, offset: 832)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4442, file: !4443, line: 125, baseType: !381, size: 64, offset: 896)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4442, file: !4443, line: 139, baseType: !381, size: 64, offset: 960)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4442, file: !4443, line: 142, baseType: !381, size: 64, offset: 1024)
!4462 = !DIDerivedType(tag: DW_TAG_member, scope: !4442, file: !4443, line: 144, baseType: !4463, size: 64, offset: 1088)
!4463 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4442, file: !4443, line: 144, size: 64, elements: !4464)
!4464 = !{!4465, !4466, !4467}
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4463, file: !4443, line: 146, baseType: !370, size: 16)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4463, file: !4443, line: 148, baseType: !696, size: 64)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4463, file: !4443, line: 150, baseType: !4468, size: 64)
!4468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4443, line: 59, size: 64, elements: !4469)
!4469 = !{!4470, !4471, !4472}
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4468, file: !4443, line: 61, baseType: !696, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4468, file: !4443, line: 63, baseType: !696, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4468, file: !4443, line: 65, baseType: !696, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4442, file: !4443, line: 153, baseType: !381, size: 64, offset: 1152)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4442, file: !4443, line: 154, baseType: !381, size: 64, offset: 1216)
!4475 = !DIDerivedType(tag: DW_TAG_member, scope: !4442, file: !4443, line: 156, baseType: !4476, size: 64, offset: 1280)
!4476 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4442, file: !4443, line: 156, size: 64, elements: !4477)
!4477 = !{!4478, !4479, !4480}
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4476, file: !4443, line: 158, baseType: !370, size: 16)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4476, file: !4443, line: 160, baseType: !696, size: 64)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4476, file: !4443, line: 162, baseType: !4481, size: 64)
!4481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4443, line: 69, size: 64, elements: !4482)
!4482 = !{!4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492}
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4481, file: !4443, line: 71, baseType: !696, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4481, file: !4443, line: 73, baseType: !696, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4481, file: !4443, line: 75, baseType: !696, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4481, file: !4443, line: 77, baseType: !696, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4481, file: !4443, line: 80, baseType: !696, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4481, file: !4443, line: 83, baseType: !696, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4481, file: !4443, line: 86, baseType: !696, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4481, file: !4443, line: 88, baseType: !696, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4481, file: !4443, line: 93, baseType: !696, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4481, file: !4443, line: 100, baseType: !696, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4418, file: !4345, line: 96, baseType: !424, size: 32, offset: 1024)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4363, file: !4345, line: 352, baseType: !4495, size: 4608, align: 512)
!4495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4345, line: 333, size: 4608, align: 512, elements: !4496)
!4496 = !{!4497, !4498, !4505}
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4495, file: !4345, line: 334, baseType: !4381, size: 4096, align: 128)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4495, file: !4345, line: 335, baseType: !4499, size: 512, offset: 4096)
!4499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4345, line: 312, size: 512, elements: !4500)
!4500 = !{!4501, !4502, !4503}
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4499, file: !4345, line: 313, baseType: !696, size: 64)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4499, file: !4345, line: 314, baseType: !696, size: 64, offset: 64)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4499, file: !4345, line: 315, baseType: !4504, size: 384, offset: 128)
!4504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !696, size: 384, elements: !1902)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4495, file: !4345, line: 336, baseType: !4506, offset: 4608)
!4506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, elements: !1819)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4363, file: !4345, line: 353, baseType: !4508, size: 32768)
!4508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 32768, elements: !4509)
!4509 = !{!4510}
!4510 = !DISubrange(count: 4096)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4344, file: !4345, line: 484, baseType: !4350, size: 64, offset: 192)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4344, file: !4345, line: 491, baseType: !4513, size: 128, offset: 256)
!4513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4345, line: 404, size: 128, elements: !4514)
!4514 = !{!4515, !4516, !4517}
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4513, file: !4345, line: 424, baseType: !696, size: 64)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4513, file: !4345, line: 432, baseType: !13, size: 32, offset: 64)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4513, file: !4345, line: 440, baseType: !13, size: 32, offset: 96)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4344, file: !4345, line: 498, baseType: !4513, size: 128, offset: 384)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4344, file: !4345, line: 508, baseType: !4351, size: 33280, align: 512, offset: 512)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3387, file: !3388, line: 16, baseType: !1804, size: 192, offset: 512)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3387, file: !3388, line: 17, baseType: !352, size: 32, offset: 704)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !775, file: !20, line: 1240, baseType: !287, size: 64, offset: 6912)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !775, file: !20, line: 1243, baseType: !424, size: 32, offset: 6976)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !775, file: !20, line: 1245, baseType: !1335, size: 64, offset: 7040)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !775, file: !20, line: 1246, baseType: !1335, size: 64, offset: 7104)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !775, file: !20, line: 1248, baseType: !285, size: 32, offset: 7168)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !775, file: !20, line: 1249, baseType: !4528, size: 64, offset: 7232)
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4529 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !20, line: 634, flags: DIFlagFwdDecl)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !775, file: !20, line: 1252, baseType: !1531, size: 256, offset: 7296)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !775, file: !20, line: 1253, baseType: !4532, size: 128, offset: 7552)
!4532 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4533, line: 21, baseType: !4534)
!4533 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4534 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4533, line: 19, size: 128, elements: !4535)
!4535 = !{!4536}
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4534, file: !4533, line: 20, baseType: !4537, size: 128)
!4537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 128, elements: !3748)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !775, file: !20, line: 1255, baseType: !13, size: 32, offset: 7680)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !775, file: !20, line: 1261, baseType: !882, size: 256, offset: 7744)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !775, file: !20, line: 1267, baseType: !509, size: 64, offset: 8000)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !775, file: !20, line: 1269, baseType: !721, size: 64, offset: 8064)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !775, file: !20, line: 1271, baseType: !4543, size: 448, offset: 8128)
!4543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1344, line: 63, size: 448, elements: !4544)
!4544 = !{!4545, !4550, !4551, !4552, !4553, !4554, !4555}
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4543, file: !1344, line: 64, baseType: !4546, size: 64)
!4546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4547, size: 64)
!4547 = !DISubroutineType(types: !4548)
!4548 = !{!381, !4549, !1342}
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4543, size: 64)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4543, file: !1344, line: 66, baseType: !4546, size: 64, offset: 64)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4543, file: !1344, line: 69, baseType: !582, size: 64, offset: 128)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4543, file: !1344, line: 70, baseType: !95, size: 32, offset: 192)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4543, file: !1344, line: 71, baseType: !13, size: 32, offset: 224)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4543, file: !1344, line: 74, baseType: !375, size: 128, offset: 256)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4543, file: !1344, line: 85, baseType: !4556, size: 64, offset: 384)
!4556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !775, file: !20, line: 1274, baseType: !390, size: 64, offset: 8576)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !775, file: !20, line: 1280, baseType: !390, size: 64, offset: 8640)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !775, file: !20, line: 1283, baseType: !95, size: 32, offset: 8704)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !775, file: !20, line: 1286, baseType: !2251, size: 32, offset: 8736)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !775, file: !20, line: 1289, baseType: !426, size: 64, offset: 8768)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !775, file: !20, line: 1290, baseType: !1203, size: 64, offset: 8832)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !775, file: !20, line: 1297, baseType: !1996, size: 64, offset: 8896)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !775, file: !20, line: 1304, baseType: !4565, size: 64, offset: 8960)
!4565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4566, line: 49, size: 64, elements: !4567)
!4566 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4567 = !{!4568}
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4565, file: !4566, line: 50, baseType: !4569, size: 64)
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4570, size: 64)
!4570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4566, line: 41, size: 512, align: 512, elements: !4571)
!4571 = !{!4572, !4573, !4578}
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4570, file: !4566, line: 43, baseType: !332, size: 32)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4570, file: !4566, line: 45, baseType: !4574, size: 192, offset: 64)
!4574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4566, line: 29, size: 192, elements: !4575)
!4575 = !{!4576, !4577}
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4574, file: !4566, line: 30, baseType: !375, size: 128)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4574, file: !4566, line: 32, baseType: !582, size: 64, offset: 128)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4570, file: !4566, line: 46, baseType: !582, size: 64, offset: 256)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !775, file: !20, line: 1305, baseType: !4565, size: 64, offset: 9024)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !775, file: !20, line: 1306, baseType: !1089, size: 128, align: 64, offset: 9088)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !775, file: !20, line: 1307, baseType: !387, size: 256, offset: 9216)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !775, file: !20, line: 1309, baseType: !882, size: 256, offset: 9472)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !775, file: !20, line: 1314, baseType: !95, size: 32, offset: 9728)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !775, file: !20, line: 1317, baseType: !332, size: 32, align: 512, offset: 10240)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !775, file: !20, line: 1318, baseType: !375, size: 128, offset: 10304)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !775, file: !20, line: 1320, baseType: !332, size: 32, offset: 10432)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !775, file: !20, line: 1321, baseType: !375, size: 128, offset: 10496)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !769, file: !770, line: 73, baseType: !95, size: 32, offset: 128)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !769, file: !770, line: 74, baseType: !4590, size: 64, offset: 192)
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4591, size: 64)
!4591 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1843, line: 42, flags: DIFlagFwdDecl)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !723, file: !662, line: 141, baseType: !4594, size: 64, offset: 704)
!4594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4595, size: 64)
!4595 = !DISubroutineType(types: !4596)
!4596 = !{!95, !1405, !470}
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !723, file: !662, line: 142, baseType: !4598, size: 64, offset: 768)
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4599, size: 64)
!4599 = !DISubroutineType(types: !4600)
!4600 = !{!660, !660, !4601}
!4601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4602, size: 64)
!4602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !626)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !661, file: !662, line: 96, baseType: !774, size: 64, offset: 832)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !661, file: !662, line: 97, baseType: !381, size: 64, offset: 896)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !661, file: !662, line: 98, baseType: !287, size: 64, offset: 960)
!4606 = !DIDerivedType(tag: DW_TAG_member, scope: !661, file: !662, line: 100, baseType: !4607, size: 128, offset: 1024)
!4607 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !661, file: !662, line: 100, size: 128, elements: !4608)
!4608 = !{!4609, !4610}
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4607, file: !662, line: 101, baseType: !375, size: 128)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4607, file: !662, line: 102, baseType: !4611, size: 64)
!4611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !661, file: !662, line: 104, baseType: !375, size: 128, offset: 1152)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !661, file: !662, line: 105, baseType: !375, size: 128, offset: 1280)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !661, file: !662, line: 113, baseType: !4615, size: 128, offset: 1408)
!4615 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !661, file: !662, line: 109, size: 128, elements: !4616)
!4616 = !{!4617, !4618, !4619}
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4615, file: !662, line: 110, baseType: !411, size: 128)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4615, file: !662, line: 111, baseType: !676, size: 128)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4615, file: !662, line: 112, baseType: !1089, size: 128, align: 64)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !654, file: !20, line: 1968, baseType: !4621, size: 64, offset: 64)
!4621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4622, size: 64)
!4622 = !DISubroutineType(types: !4623)
!4623 = !{!509, !660, !625, !4624}
!4624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4625, size: 64)
!4625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4626, line: 10, size: 128, elements: !4627)
!4626 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4627 = !{!4628, !4629}
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4625, file: !4626, line: 11, baseType: !917, size: 64)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4625, file: !4626, line: 12, baseType: !287, size: 64, offset: 64)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !654, file: !20, line: 1969, baseType: !4631, size: 64, offset: 128)
!4631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4632, size: 64)
!4632 = !DISubroutineType(types: !4633)
!4633 = !{!95, !4590, !625, !95}
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !654, file: !20, line: 1970, baseType: !4635, size: 64, offset: 192)
!4635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4636, size: 64)
!4636 = !DISubroutineType(types: !4637)
!4637 = !{!648, !625, !95, !470}
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !654, file: !20, line: 1972, baseType: !4639, size: 64, offset: 256)
!4639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4640, size: 64)
!4640 = !DISubroutineType(types: !4641)
!4641 = !{!95, !660, !548, !95}
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !654, file: !20, line: 1974, baseType: !4643, size: 64, offset: 320)
!4643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4644, size: 64)
!4644 = !DISubroutineType(types: !4645)
!4645 = !{!95, !4590, !625, !660, !588, !470}
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !654, file: !20, line: 1976, baseType: !4647, size: 64, offset: 384)
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4648 = !DISubroutineType(types: !4649)
!4649 = !{!95, !660, !625, !660}
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !654, file: !20, line: 1977, baseType: !4651, size: 64, offset: 448)
!4651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4652, size: 64)
!4652 = !DISubroutineType(types: !4653)
!4653 = !{!95, !625, !660}
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !654, file: !20, line: 1978, baseType: !4655, size: 64, offset: 512)
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4656, size: 64)
!4656 = !DISubroutineType(types: !4657)
!4657 = !{!95, !4590, !625, !660, !509}
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !654, file: !20, line: 1980, baseType: !4659, size: 64, offset: 576)
!4659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4660, size: 64)
!4660 = !DISubroutineType(types: !4661)
!4661 = !{!95, !4590, !625, !660, !588}
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !654, file: !20, line: 1982, baseType: !4651, size: 64, offset: 640)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !654, file: !20, line: 1983, baseType: !4664, size: 64, offset: 704)
!4664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4665, size: 64)
!4665 = !DISubroutineType(types: !4666)
!4666 = !{!95, !4590, !625, !660, !588, !779}
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !654, file: !20, line: 1985, baseType: !4668, size: 64, offset: 768)
!4668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4669, size: 64)
!4669 = !DISubroutineType(types: !4670)
!4670 = !{!95, !4590, !625, !660, !625, !660, !13}
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !654, file: !20, line: 1987, baseType: !4672, size: 64, offset: 832)
!4672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4673, size: 64)
!4673 = !DISubroutineType(types: !4674)
!4674 = !{!95, !4590, !660, !4675}
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4676, size: 64)
!4676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !20, line: 226, size: 640, elements: !4677)
!4677 = !{!4678, !4679, !4680, !4690, !4699, !4700, !4705, !4706, !4707}
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4676, file: !20, line: 227, baseType: !13, size: 32)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4676, file: !20, line: 228, baseType: !588, size: 16, offset: 32)
!4680 = !DIDerivedType(tag: DW_TAG_member, scope: !4676, file: !20, line: 241, baseType: !4681, size: 32, offset: 64)
!4681 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4676, file: !20, line: 241, size: 32, elements: !4682)
!4682 = !{!4683, !4684}
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4681, file: !20, line: 242, baseType: !631, size: 32)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4681, file: !20, line: 243, baseType: !4685, size: 32)
!4685 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4686, line: 16, baseType: !4687)
!4686 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4687 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4686, line: 14, size: 32, elements: !4688)
!4688 = !{!4689}
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4687, file: !4686, line: 15, baseType: !636, size: 32)
!4690 = !DIDerivedType(tag: DW_TAG_member, scope: !4676, file: !20, line: 245, baseType: !4691, size: 32, offset: 96)
!4691 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4676, file: !20, line: 245, size: 32, elements: !4692)
!4692 = !{!4693, !4694}
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4691, file: !20, line: 246, baseType: !640, size: 32)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4691, file: !20, line: 247, baseType: !4695, size: 32)
!4695 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4686, line: 20, baseType: !4696)
!4696 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4686, line: 18, size: 32, elements: !4697)
!4697 = !{!4698}
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4696, file: !4686, line: 19, baseType: !644, size: 32)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4676, file: !20, line: 249, baseType: !784, size: 64, offset: 128)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4676, file: !20, line: 250, baseType: !4701, size: 128, offset: 192)
!4701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1336, line: 13, size: 128, elements: !4702)
!4702 = !{!4703, !4704}
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4701, file: !1336, line: 14, baseType: !1335, size: 64)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4701, file: !1336, line: 15, baseType: !582, size: 64, offset: 64)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4676, file: !20, line: 251, baseType: !4701, size: 128, offset: 320)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4676, file: !20, line: 252, baseType: !4701, size: 128, offset: 448)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4676, file: !20, line: 259, baseType: !1743, size: 64, offset: 576)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !654, file: !20, line: 1988, baseType: !4709, size: 64, offset: 896)
!4709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4710, size: 64)
!4710 = !DISubroutineType(types: !4711)
!4711 = !{!95, !4590, !1405, !4712, !424, !13}
!4712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4713, size: 64)
!4713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4714, line: 22, size: 1280, elements: !4715)
!4714 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4715 = !{!4716, !4717, !4718, !4719, !4720, !4721, !4722, !4723, !4724, !4725, !4726, !4727, !4728, !4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736}
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4713, file: !4714, line: 23, baseType: !424, size: 32)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4713, file: !4714, line: 24, baseType: !588, size: 16, offset: 32)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4713, file: !4714, line: 25, baseType: !13, size: 32, offset: 64)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4713, file: !4714, line: 26, baseType: !1881, size: 32, offset: 96)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4713, file: !4714, line: 27, baseType: !696, size: 64, offset: 128)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4713, file: !4714, line: 28, baseType: !696, size: 64, offset: 192)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4713, file: !4714, line: 41, baseType: !696, size: 64, offset: 256)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4713, file: !4714, line: 42, baseType: !779, size: 32, offset: 320)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4713, file: !4714, line: 43, baseType: !779, size: 32, offset: 352)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4713, file: !4714, line: 44, baseType: !631, size: 32, offset: 384)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4713, file: !4714, line: 45, baseType: !640, size: 32, offset: 416)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4713, file: !4714, line: 46, baseType: !784, size: 64, offset: 448)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4713, file: !4714, line: 47, baseType: !4701, size: 128, offset: 512)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4713, file: !4714, line: 48, baseType: !4701, size: 128, offset: 640)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4713, file: !4714, line: 49, baseType: !4701, size: 128, offset: 768)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4713, file: !4714, line: 50, baseType: !4701, size: 128, offset: 896)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4713, file: !4714, line: 51, baseType: !696, size: 64, offset: 1024)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4713, file: !4714, line: 52, baseType: !696, size: 64, offset: 1088)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4713, file: !4714, line: 53, baseType: !424, size: 32, offset: 1152)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4713, file: !4714, line: 54, baseType: !424, size: 32, offset: 1184)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4713, file: !4714, line: 55, baseType: !696, size: 64, offset: 1216)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !654, file: !20, line: 1990, baseType: !4738, size: 64, offset: 960)
!4738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4739, size: 64)
!4739 = !DISubroutineType(types: !4740)
!4740 = !{!578, !660, !548, !593}
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !654, file: !20, line: 1991, baseType: !4742, size: 64, offset: 1024)
!4742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4743, size: 64)
!4743 = !DISubroutineType(types: !4744)
!4744 = !{!95, !625, !4745, !696, !696}
!4745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4746, size: 64)
!4746 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !20, line: 55, flags: DIFlagFwdDecl)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !654, file: !20, line: 1993, baseType: !4748, size: 64, offset: 1088)
!4748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4749, size: 64)
!4749 = !DISubroutineType(types: !4750)
!4750 = !{!95, !625, !95}
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !654, file: !20, line: 1994, baseType: !4752, size: 64, offset: 1152)
!4752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4753, size: 64)
!4753 = !DISubroutineType(types: !4754)
!4754 = !{!95, !625, !660, !1743, !13, !588}
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !654, file: !20, line: 1997, baseType: !4756, size: 64, offset: 1216)
!4756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4757, size: 64)
!4757 = !DISubroutineType(types: !4758)
!4758 = !{!95, !4590, !625, !1743, !588}
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !654, file: !20, line: 1999, baseType: !4760, size: 64, offset: 1280)
!4760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4761, size: 64)
!4761 = !DISubroutineType(types: !4762)
!4762 = !{!648, !4590, !660, !95}
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !654, file: !20, line: 2001, baseType: !4764, size: 64, offset: 1344)
!4764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4765, size: 64)
!4765 = !DISubroutineType(types: !4766)
!4766 = !{!95, !4590, !660, !648, !95}
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !654, file: !20, line: 2003, baseType: !4768, size: 64, offset: 1408)
!4768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4769, size: 64)
!4769 = !DISubroutineType(types: !4770)
!4770 = !{!95, !4590, !660, !4771}
!4771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4772, size: 64)
!4772 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !20, line: 76, flags: DIFlagFwdDecl)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !654, file: !20, line: 2005, baseType: !4774, size: 64, offset: 1472)
!4774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4775, size: 64)
!4775 = !DISubroutineType(types: !4776)
!4776 = !{!95, !660, !4771}
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !654, file: !20, line: 2006, baseType: !4778, size: 64, offset: 1536)
!4778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4779, size: 64)
!4779 = !DISubroutineType(types: !4780)
!4780 = !{!4781, !625}
!4781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4782, size: 64)
!4782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !20, line: 3192, size: 192, elements: !4783)
!4783 = !{!4784, !4785}
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4782, file: !20, line: 3193, baseType: !1535, size: 128)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4782, file: !20, line: 3194, baseType: !424, size: 32, offset: 128)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !626, file: !20, line: 655, baseType: !774, size: 64, offset: 448)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !626, file: !20, line: 656, baseType: !621, size: 64, offset: 512)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !626, file: !20, line: 659, baseType: !287, size: 64, offset: 576)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !626, file: !20, line: 663, baseType: !381, size: 64, offset: 640)
!4790 = !DIDerivedType(tag: DW_TAG_member, scope: !626, file: !20, line: 671, baseType: !4791, size: 32, offset: 704)
!4791 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !626, file: !20, line: 671, size: 32, elements: !4792)
!4792 = !{!4793, !4795}
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4791, file: !20, line: 672, baseType: !4794, size: 32)
!4794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4791, file: !20, line: 673, baseType: !13, size: 32)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !626, file: !20, line: 675, baseType: !779, size: 32, offset: 736)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !626, file: !20, line: 676, baseType: !784, size: 64, offset: 768)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !626, file: !20, line: 677, baseType: !4701, size: 128, offset: 832)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !626, file: !20, line: 678, baseType: !4701, size: 128, offset: 960)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !626, file: !20, line: 679, baseType: !4701, size: 128, offset: 1088)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !626, file: !20, line: 680, baseType: !332, size: 32, offset: 1216)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !626, file: !20, line: 681, baseType: !372, size: 16, offset: 1248)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !626, file: !20, line: 682, baseType: !361, size: 8, offset: 1264)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !626, file: !20, line: 683, baseType: !361, size: 8, offset: 1272)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !626, file: !20, line: 684, baseType: !1483, size: 64, offset: 1280)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !626, file: !20, line: 691, baseType: !381, size: 64, offset: 1344)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !626, file: !20, line: 692, baseType: !1495, size: 320, offset: 1408)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !626, file: !20, line: 694, baseType: !381, size: 64, offset: 1728)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !626, file: !20, line: 695, baseType: !381, size: 64, offset: 1792)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !626, file: !20, line: 697, baseType: !411, size: 128, offset: 1856)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !626, file: !20, line: 698, baseType: !375, size: 128, offset: 1984)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !626, file: !20, line: 707, baseType: !375, size: 128, offset: 2112)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !626, file: !20, line: 708, baseType: !375, size: 128, offset: 2240)
!4814 = !DIDerivedType(tag: DW_TAG_member, scope: !626, file: !20, line: 709, baseType: !4815, size: 128, offset: 2368)
!4815 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !626, file: !20, line: 709, size: 128, elements: !4816)
!4816 = !{!4817, !4818}
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4815, file: !20, line: 710, baseType: !1203, size: 64)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4815, file: !20, line: 711, baseType: !1089, size: 128, align: 64)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !626, file: !20, line: 713, baseType: !392, size: 64, offset: 2496)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !626, file: !20, line: 714, baseType: !392, size: 64, offset: 2560)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !626, file: !20, line: 715, baseType: !352, size: 32, offset: 2624)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !626, file: !20, line: 716, baseType: !352, size: 32, offset: 2656)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !626, file: !20, line: 717, baseType: !352, size: 32, offset: 2688)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !626, file: !20, line: 719, baseType: !352, size: 32, offset: 2720)
!4825 = !DIDerivedType(tag: DW_TAG_member, scope: !626, file: !20, line: 721, baseType: !4826, size: 64, offset: 2752)
!4826 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !626, file: !20, line: 721, size: 64, elements: !4827)
!4827 = !{!4828, !4829}
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4826, file: !20, line: 722, baseType: !2027, size: 64)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4826, file: !20, line: 723, baseType: !1226, size: 64)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !626, file: !20, line: 725, baseType: !4831, size: 64, offset: 2816)
!4831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4832, size: 64)
!4832 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !20, line: 725, flags: DIFlagFwdDecl)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !626, file: !20, line: 726, baseType: !622, size: 1536, align: 64, offset: 2880)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !626, file: !20, line: 727, baseType: !375, size: 128, offset: 4416)
!4835 = !DIDerivedType(tag: DW_TAG_member, scope: !626, file: !20, line: 728, baseType: !4836, size: 64, offset: 4544)
!4836 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !626, file: !20, line: 728, size: 64, elements: !4837)
!4837 = !{!4838, !4839, !4842, !4843}
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4836, file: !20, line: 729, baseType: !2201, size: 64)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4836, file: !20, line: 730, baseType: !4840, size: 64)
!4840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4841, size: 64)
!4841 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !20, line: 730, flags: DIFlagFwdDecl)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4836, file: !20, line: 731, baseType: !548, size: 64)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4836, file: !20, line: 732, baseType: !13, size: 32)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !626, file: !20, line: 735, baseType: !285, size: 32, offset: 4608)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !626, file: !20, line: 738, baseType: !285, size: 32, offset: 4640)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !626, file: !20, line: 739, baseType: !4528, size: 64, offset: 4672)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !626, file: !20, line: 750, baseType: !287, size: 64, offset: 4736)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !622, file: !20, line: 474, baseType: !1535, size: 128, offset: 64)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !622, file: !20, line: 475, baseType: !1495, size: 320, offset: 192)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !622, file: !20, line: 476, baseType: !1347, size: 32, offset: 512)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !622, file: !20, line: 477, baseType: !352, size: 32, offset: 544)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !622, file: !20, line: 482, baseType: !3031, size: 128, offset: 576)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !622, file: !20, line: 483, baseType: !381, size: 64, offset: 704)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !622, file: !20, line: 484, baseType: !381, size: 64, offset: 768)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !622, file: !20, line: 485, baseType: !4856, size: 64, offset: 832)
!4856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4857, size: 64)
!4857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4858)
!4858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !20, line: 404, size: 1280, elements: !4859)
!4859 = !{!4860, !4864, !4934, !4938, !4942, !4948, !4952, !4956, !4960, !4964, !4968, !4972, !4973, !4977, !4981, !4985, !4990, !4994, !5000, !5001}
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4858, file: !20, line: 405, baseType: !4861, size: 64)
!4861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4862, size: 64)
!4862 = !DISubroutineType(types: !4863)
!4863 = !{!95, !1593, !1238}
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4858, file: !20, line: 406, baseType: !4865, size: 64, offset: 64)
!4865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4866, size: 64)
!4866 = !DISubroutineType(types: !4867)
!4867 = !{!95, !1743, !4868}
!4868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4869, size: 64)
!4869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !47, line: 293, size: 1536, elements: !4870)
!4870 = !{!4871, !4901, !4915}
!4871 = !DIDerivedType(tag: DW_TAG_member, scope: !4869, file: !47, line: 295, baseType: !4872, size: 512)
!4872 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4869, file: !47, line: 295, size: 512, elements: !4873)
!4873 = !{!4874, !4900}
!4874 = !DIDerivedType(tag: DW_TAG_member, scope: !4872, file: !47, line: 296, baseType: !4875, size: 448)
!4875 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4872, file: !47, line: 296, size: 448, elements: !4876)
!4876 = !{!4877, !4878, !4887, !4888, !4889, !4898, !4899}
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4875, file: !47, line: 298, baseType: !381, size: 64)
!4878 = !DIDerivedType(tag: DW_TAG_member, scope: !4875, file: !47, line: 299, baseType: !4879, size: 128, offset: 64)
!4879 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4875, file: !47, line: 299, size: 128, elements: !4880)
!4880 = !{!4881, !4882}
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4879, file: !47, line: 300, baseType: !375, size: 128)
!4882 = !DIDerivedType(tag: DW_TAG_member, scope: !4879, file: !47, line: 302, baseType: !4883, size: 128)
!4883 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4879, file: !47, line: 302, size: 128, elements: !4884)
!4884 = !{!4885, !4886}
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4883, file: !47, line: 303, baseType: !287, size: 64)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4883, file: !47, line: 305, baseType: !13, size: 32, offset: 64)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4875, file: !47, line: 310, baseType: !621, size: 64, offset: 192)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4875, file: !47, line: 311, baseType: !381, size: 64, offset: 256)
!4889 = !DIDerivedType(tag: DW_TAG_member, scope: !4875, file: !47, line: 312, baseType: !4890, size: 64, offset: 320)
!4890 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4875, file: !47, line: 312, size: 64, elements: !4891)
!4891 = !{!4892, !4893}
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4890, file: !47, line: 313, baseType: !287, size: 64)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4890, file: !47, line: 314, baseType: !4894, size: 64)
!4894 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !47, line: 257, baseType: !4895)
!4895 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !47, line: 255, size: 64, elements: !4896)
!4896 = !{!4897}
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4895, file: !47, line: 256, baseType: !381, size: 64)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4875, file: !47, line: 316, baseType: !352, size: 32, offset: 384)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !4875, file: !47, line: 317, baseType: !352, size: 32, offset: 416)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4872, file: !47, line: 323, baseType: !1594, size: 512, align: 128)
!4901 = !DIDerivedType(tag: DW_TAG_member, scope: !4869, file: !47, line: 325, baseType: !4902, size: 512, offset: 512)
!4902 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4869, file: !47, line: 325, size: 512, elements: !4903)
!4903 = !{!4904, !4914}
!4904 = !DIDerivedType(tag: DW_TAG_member, scope: !4902, file: !47, line: 326, baseType: !4905, size: 320)
!4905 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4902, file: !47, line: 326, size: 320, elements: !4906)
!4906 = !{!4907, !4908, !4909, !4910, !4911, !4912, !4913}
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4905, file: !47, line: 327, baseType: !381, size: 64)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4905, file: !47, line: 328, baseType: !381, size: 64, offset: 64)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4905, file: !47, line: 329, baseType: !381, size: 64, offset: 128)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4905, file: !47, line: 331, baseType: !352, size: 32, offset: 192)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4905, file: !47, line: 332, baseType: !352, size: 32, offset: 224)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4905, file: !47, line: 333, baseType: !352, size: 32, offset: 256)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4905, file: !47, line: 335, baseType: !13, size: 32, offset: 288)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4902, file: !47, line: 339, baseType: !1594, size: 512, align: 128)
!4915 = !DIDerivedType(tag: DW_TAG_member, scope: !4869, file: !47, line: 341, baseType: !4916, size: 512, offset: 1024)
!4916 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4869, file: !47, line: 341, size: 512, elements: !4917)
!4917 = !{!4918, !4927, !4933}
!4918 = !DIDerivedType(tag: DW_TAG_member, scope: !4916, file: !47, line: 342, baseType: !4919, size: 384)
!4919 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4916, file: !47, line: 342, size: 384, elements: !4920)
!4920 = !{!4921, !4922, !4923, !4924, !4925, !4926}
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4919, file: !47, line: 343, baseType: !381, size: 64)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4919, file: !47, line: 344, baseType: !381, size: 64, offset: 64)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4919, file: !47, line: 346, baseType: !287, size: 64, offset: 128)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4919, file: !47, line: 347, baseType: !287, size: 64, offset: 192)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4919, file: !47, line: 348, baseType: !287, size: 64, offset: 256)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4919, file: !47, line: 349, baseType: !287, size: 64, offset: 320)
!4927 = !DIDerivedType(tag: DW_TAG_member, scope: !4916, file: !47, line: 352, baseType: !4928, size: 256)
!4928 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4916, file: !47, line: 352, size: 256, elements: !4929)
!4929 = !{!4930, !4931, !4932}
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4928, file: !47, line: 353, baseType: !381, size: 64)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4928, file: !47, line: 354, baseType: !381, size: 64, offset: 64)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4928, file: !47, line: 356, baseType: !375, size: 128, offset: 128)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4916, file: !47, line: 359, baseType: !1594, size: 512, align: 128)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4858, file: !20, line: 409, baseType: !4935, size: 64, offset: 128)
!4935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4936, size: 64)
!4936 = !DISubroutineType(types: !4937)
!4937 = !{!95, !621, !1238}
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4858, file: !20, line: 412, baseType: !4939, size: 64, offset: 192)
!4939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4940, size: 64)
!4940 = !DISubroutineType(types: !4941)
!4941 = !{!470, !621, !4868}
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4858, file: !20, line: 414, baseType: !4943, size: 64, offset: 256)
!4943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4944, size: 64)
!4944 = !DISubroutineType(types: !4945)
!4945 = !{null, !4946}
!4946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4947, size: 64)
!4947 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !20, line: 310, flags: DIFlagFwdDecl)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4858, file: !20, line: 416, baseType: !4949, size: 64, offset: 320)
!4949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4950, size: 64)
!4950 = !DISubroutineType(types: !4951)
!4951 = !{!95, !1743, !621, !784, !13, !4277, !2216}
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4858, file: !20, line: 419, baseType: !4953, size: 64, offset: 384)
!4953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4954, size: 64)
!4954 = !DISubroutineType(types: !4955)
!4955 = !{!95, !1743, !621, !784, !13, !13, !1593, !287}
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4858, file: !20, line: 424, baseType: !4957, size: 64, offset: 448)
!4957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4958, size: 64)
!4958 = !DISubroutineType(types: !4959)
!4959 = !{!1521, !621, !1521}
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4858, file: !20, line: 425, baseType: !4961, size: 64, offset: 512)
!4961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4962, size: 64)
!4962 = !DISubroutineType(types: !4963)
!4963 = !{null, !4868, !593, !593}
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4858, file: !20, line: 426, baseType: !4965, size: 64, offset: 576)
!4965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4966, size: 64)
!4966 = !DISubroutineType(types: !4967)
!4967 = !{!470, !4868, !1347}
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4858, file: !20, line: 427, baseType: !4969, size: 64, offset: 640)
!4969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4970, size: 64)
!4970 = !DISubroutineType(types: !4971)
!4971 = !{null, !4868}
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4858, file: !20, line: 428, baseType: !2046, size: 64, offset: 704)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4858, file: !20, line: 433, baseType: !4974, size: 64, offset: 768)
!4974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4975, size: 64)
!4975 = !DISubroutineType(types: !4976)
!4976 = !{!95, !621, !4868, !4868, !146}
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4858, file: !20, line: 435, baseType: !4978, size: 64, offset: 832)
!4978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4979, size: 64)
!4979 = !DISubroutineType(types: !4980)
!4980 = !{!95, !4868}
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4858, file: !20, line: 436, baseType: !4982, size: 64, offset: 896)
!4982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4983, size: 64)
!4983 = !DISubroutineType(types: !4984)
!4984 = !{!470, !4868, !593, !593}
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4858, file: !20, line: 438, baseType: !4986, size: 64, offset: 960)
!4986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4987, size: 64)
!4987 = !DISubroutineType(types: !4988)
!4988 = !{null, !4868, !4989, !4989}
!4989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4858, file: !20, line: 439, baseType: !4991, size: 64, offset: 1024)
!4991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4992, size: 64)
!4992 = !DISubroutineType(types: !4993)
!4993 = !{!95, !621, !1593}
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4858, file: !20, line: 442, baseType: !4995, size: 64, offset: 1088)
!4995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4996, size: 64)
!4996 = !DISubroutineType(types: !4997)
!4997 = !{!95, !4998, !1743, !2671}
!4998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4999, size: 64)
!4999 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !20, line: 66, flags: DIFlagFwdDecl)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4858, file: !20, line: 444, baseType: !2208, size: 64, offset: 1152)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4858, file: !20, line: 445, baseType: !5002, size: 64, offset: 1216)
!5002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5003, size: 64)
!5003 = !DISubroutineType(types: !5004)
!5004 = !{!95, !2049, !2071}
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !622, file: !20, line: 486, baseType: !381, size: 64, offset: 896)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !622, file: !20, line: 487, baseType: !1495, size: 320, offset: 960)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !622, file: !20, line: 488, baseType: !2251, size: 32, offset: 1280)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !622, file: !20, line: 489, baseType: !332, size: 32, offset: 1312)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !622, file: !20, line: 490, baseType: !375, size: 128, offset: 1344)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !622, file: !20, line: 491, baseType: !287, size: 64, offset: 1472)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !612, file: !572, line: 180, baseType: !5012, size: 64, offset: 320)
!5012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5013, size: 64)
!5013 = !DISubroutineType(types: !5014)
!5014 = !{!578, !1743, !513, !611, !548, !784, !593}
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !612, file: !572, line: 182, baseType: !5012, size: 64, offset: 384)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !612, file: !572, line: 184, baseType: !5017, size: 64, offset: 448)
!5017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5018, size: 64)
!5018 = !DISubroutineType(types: !5019)
!5019 = !{!95, !1743, !513, !611, !1703}
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !600, file: !572, line: 90, baseType: !5021, size: 64, offset: 192)
!5021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !600, file: !572, line: 91, baseType: !5023, size: 64, offset: 256)
!5023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !562, file: !506, line: 120, baseType: !5025, size: 64, offset: 192)
!5025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5026, size: 64)
!5026 = !DISubroutineType(types: !5027)
!5027 = !{!3271, !531}
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !562, file: !506, line: 121, baseType: !5029, size: 64, offset: 256)
!5029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5030, size: 64)
!5030 = !DISubroutineType(types: !5031)
!5031 = !{!2342, !531}
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !562, file: !506, line: 122, baseType: !5033, size: 64, offset: 320)
!5033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5034, size: 64)
!5034 = !DISubroutineType(types: !5035)
!5035 = !{null, !531, !2803, !2804}
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !505, file: !506, line: 70, baseType: !5037, size: 64, offset: 384)
!5037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5038, size: 64)
!5038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !798, line: 190, size: 1152, elements: !5039)
!5039 = !{!5040, !5041, !5042, !5043, !5044, !5045, !5046, !5047, !5131, !5132, !5133, !5134, !5135, !5138}
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5038, file: !798, line: 191, baseType: !352, size: 32)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !5038, file: !798, line: 192, baseType: !352, size: 32, offset: 32)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5038, file: !798, line: 202, baseType: !5037, size: 64, offset: 64)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5038, file: !798, line: 203, baseType: !509, size: 64, offset: 128)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !5038, file: !798, line: 205, baseType: !983, size: 192, align: 64, offset: 192)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !5038, file: !798, line: 207, baseType: !2342, size: 64, offset: 384)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !5038, file: !798, line: 208, baseType: !13, size: 32, offset: 448)
!5047 = !DIDerivedType(tag: DW_TAG_member, scope: !5038, file: !798, line: 209, baseType: !5048, size: 256, offset: 512)
!5048 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5038, file: !798, line: 209, size: 256, elements: !5049)
!5049 = !{!5050, !5059, !5063}
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !5048, file: !798, line: 210, baseType: !5051, size: 256)
!5051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !798, line: 153, size: 256, elements: !5052)
!5052 = !{!5053, !5054, !5055, !5058}
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !5051, file: !798, line: 154, baseType: !381, size: 64)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !5051, file: !798, line: 156, baseType: !3034, size: 64, offset: 64)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !5051, file: !798, line: 162, baseType: !5056, size: 64, offset: 128)
!5056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5057, size: 64)
!5057 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !798, line: 162, flags: DIFlagFwdDecl)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !5051, file: !798, line: 167, baseType: !381, size: 64, offset: 192)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !5048, file: !798, line: 211, baseType: !5060, size: 64)
!5060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !798, line: 170, size: 64, elements: !5061)
!5061 = !{!5062}
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !5060, file: !798, line: 171, baseType: !5037, size: 64)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5048, file: !798, line: 212, baseType: !5064, size: 256)
!5064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !798, line: 174, size: 256, elements: !5065)
!5065 = !{!5066, !5126, !5129, !5130}
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5064, file: !798, line: 175, baseType: !5067, size: 64)
!5067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5068, size: 64)
!5068 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5069)
!5069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !798, line: 271, size: 768, elements: !5070)
!5070 = !{!5071, !5091, !5095, !5099, !5103, !5107, !5111, !5115, !5116, !5117, !5118, !5122}
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5069, file: !798, line: 276, baseType: !5072, size: 64)
!5072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5073, size: 64)
!5073 = !DISubroutineType(types: !5074)
!5074 = !{!95, !5075}
!5075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5076, size: 64)
!5076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !798, line: 251, size: 1216, elements: !5077)
!5077 = !{!5078, !5079, !5080, !5081, !5082, !5083, !5084, !5085, !5086, !5087, !5088, !5089, !5090}
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !5076, file: !798, line: 253, baseType: !5037, size: 64)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !5076, file: !798, line: 254, baseType: !1743, size: 64, offset: 64)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !5076, file: !798, line: 255, baseType: !1275, size: 64, offset: 128)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5076, file: !798, line: 256, baseType: !287, size: 64, offset: 192)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5076, file: !798, line: 259, baseType: !882, size: 256, offset: 256)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !5076, file: !798, line: 260, baseType: !882, size: 256, offset: 512)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5076, file: !798, line: 261, baseType: !95, size: 32, offset: 768)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5076, file: !798, line: 262, baseType: !375, size: 128, offset: 832)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !5076, file: !798, line: 263, baseType: !548, size: 64, offset: 960)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !5076, file: !798, line: 265, baseType: !593, size: 64, offset: 1024)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !5076, file: !798, line: 266, baseType: !470, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !5076, file: !798, line: 267, baseType: !470, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !5076, file: !798, line: 268, baseType: !2411, size: 64, offset: 1152)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5069, file: !798, line: 277, baseType: !5092, size: 64, offset: 64)
!5092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5093, size: 64)
!5093 = !DISubroutineType(types: !5094)
!5094 = !{null, !5075}
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !5069, file: !798, line: 290, baseType: !5096, size: 64, offset: 128)
!5096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5097, size: 64)
!5097 = !DISubroutineType(types: !5098)
!5098 = !{!95, !1275, !287}
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !5069, file: !798, line: 292, baseType: !5100, size: 64, offset: 192)
!5100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5101, size: 64)
!5101 = !DISubroutineType(types: !5102)
!5102 = !{!287, !1275, !2040}
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !5069, file: !798, line: 293, baseType: !5104, size: 64, offset: 256)
!5104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5105, size: 64)
!5105 = !DISubroutineType(types: !5106)
!5106 = !{!287, !1275, !287, !2040}
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !5069, file: !798, line: 294, baseType: !5108, size: 64, offset: 320)
!5108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5109, size: 64)
!5109 = !DISubroutineType(types: !5110)
!5110 = !{null, !1275, !287}
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !5069, file: !798, line: 296, baseType: !5112, size: 64, offset: 384)
!5112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5113, size: 64)
!5113 = !DISubroutineType(types: !5114)
!5114 = !{!578, !5075, !548, !593, !784}
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !5069, file: !798, line: 306, baseType: !593, size: 64, offset: 448)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !5069, file: !798, line: 313, baseType: !470, size: 8, offset: 512)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5069, file: !798, line: 314, baseType: !5112, size: 64, offset: 576)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5069, file: !798, line: 317, baseType: !5119, size: 64, offset: 640)
!5119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5120, size: 64)
!5120 = !DISubroutineType(types: !5121)
!5121 = !{!2153, !5075, !2155}
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !5069, file: !798, line: 320, baseType: !5123, size: 64, offset: 704)
!5123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5124, size: 64)
!5124 = !DISubroutineType(types: !5125)
!5125 = !{!95, !5075, !1703}
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5064, file: !798, line: 176, baseType: !5127, size: 64, offset: 64)
!5127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5128, size: 64)
!5128 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !798, line: 35, flags: DIFlagFwdDecl)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5064, file: !798, line: 177, baseType: !784, size: 64, offset: 128)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !5064, file: !798, line: 178, baseType: !5037, size: 64, offset: 192)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5038, file: !798, line: 215, baseType: !287, size: 64, offset: 768)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5038, file: !798, line: 221, baseType: !696, size: 64, offset: 832)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5038, file: !798, line: 223, baseType: !372, size: 16, offset: 896)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5038, file: !798, line: 224, baseType: !588, size: 16, offset: 912)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !5038, file: !798, line: 225, baseType: !5136, size: 64, offset: 960)
!5136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5137, size: 64)
!5137 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !798, line: 36, flags: DIFlagFwdDecl)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !5038, file: !798, line: 227, baseType: !1089, size: 128, align: 64, offset: 1024)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !505, file: !506, line: 71, baseType: !5140, size: 32, offset: 448)
!5140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !5141, line: 19, size: 32, elements: !5142)
!5141 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!5142 = !{!5143}
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5140, file: !5141, line: 20, baseType: !1793, size: 32)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !505, file: !506, line: 73, baseType: !13, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !505, file: !506, line: 74, baseType: !13, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !505, file: !506, line: 75, baseType: !13, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !505, file: !506, line: 76, baseType: !13, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !505, file: !506, line: 77, baseType: !13, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ctx", scope: !502, file: !238, line: 12, baseType: !483, size: 64, offset: 512)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !484, file: !238, line: 30, baseType: !505, size: 512, offset: 960)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_busy", scope: !326, file: !161, line: 361, baseType: !13, size: 32, offset: 1984)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !326, file: !161, line: 364, baseType: !372, size: 16, offset: 2016)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ctx", scope: !326, file: !161, line: 366, baseType: !372, size: 16, offset: 2032)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "ctxs", scope: !326, file: !161, line: 368, baseType: !5155, size: 64, offset: 2048)
!5155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_wait_lock", scope: !326, file: !161, line: 371, baseType: !332, size: 32, offset: 2112)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_wait", scope: !326, file: !161, line: 376, baseType: !5158, size: 320, offset: 2176)
!5158 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !1805, line: 14, baseType: !5159)
!5159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !1805, line: 30, size: 320, elements: !5160)
!5160 = !{!5161, !5162, !5163, !5169}
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5159, file: !1805, line: 31, baseType: !13, size: 32)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5159, file: !1805, line: 32, baseType: !287, size: 64, offset: 64)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5159, file: !1805, line: 33, baseType: !5164, size: 64, offset: 128)
!5164 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !1805, line: 16, baseType: !5165)
!5165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5166, size: 64)
!5166 = !DISubroutineType(types: !5167)
!5167 = !{!95, !5168, !13, !95, !287}
!5168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5159, size: 64)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5159, file: !1805, line: 34, baseType: !375, size: 128, offset: 192)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !326, file: !161, line: 382, baseType: !352, size: 32, offset: 2496)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "tags", scope: !326, file: !161, line: 388, baseType: !5172, size: 64, offset: 2560)
!5172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5173, size: 64)
!5173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tags", file: !161, line: 735, size: 1472, elements: !5174)
!5174 = !{!5175, !5176, !5177, !5178, !5193, !5194, !5196, !5197, !5198}
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tags", scope: !5173, file: !161, line: 736, baseType: !13, size: 32)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "nr_reserved_tags", scope: !5173, file: !161, line: 737, baseType: !13, size: 32, offset: 32)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "active_queues", scope: !5173, file: !161, line: 738, baseType: !13, size: 32, offset: 64)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap_tags", scope: !5173, file: !161, line: 740, baseType: !5179, size: 512, offset: 128)
!5179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbitmap_queue", file: !464, line: 109, size: 512, elements: !5180)
!5180 = !{!5181, !5182, !5183, !5184, !5189, !5190, !5191, !5192}
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "sb", scope: !5179, file: !464, line: 113, baseType: !463, size: 256)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "wake_batch", scope: !5179, file: !464, line: 119, baseType: !13, size: 32, offset: 256)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "wake_index", scope: !5179, file: !464, line: 124, baseType: !352, size: 32, offset: 288)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !5179, file: !464, line: 129, baseType: !5185, size: 64, offset: 320)
!5185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5186, size: 64)
!5186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbq_wait_state", file: !464, line: 93, size: 512, align: 512, elements: !5187)
!5187 = !{!5188}
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !5186, file: !464, line: 97, baseType: !1804, size: 192)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "ws_active", scope: !5179, file: !464, line: 134, baseType: !352, size: 32, offset: 384)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "min_shallow_depth", scope: !5179, file: !464, line: 140, baseType: !13, size: 32, offset: 416)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "completion_cnt", scope: !5179, file: !464, line: 146, baseType: !352, size: 32, offset: 448)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_cnt", scope: !5179, file: !464, line: 151, baseType: !352, size: 32, offset: 480)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "breserved_tags", scope: !5173, file: !161, line: 741, baseType: !5179, size: 512, offset: 640)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "rqs", scope: !5173, file: !161, line: 743, baseType: !5195, size: 64, offset: 1152)
!5195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "static_rqs", scope: !5173, file: !161, line: 744, baseType: !5195, size: 64, offset: 1216)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "page_list", scope: !5173, file: !161, line: 745, baseType: !375, size: 128, offset: 1280)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5173, file: !161, line: 751, baseType: !332, size: 32, offset: 1408)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "sched_tags", scope: !326, file: !161, line: 394, baseType: !5172, size: 64, offset: 2624)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !326, file: !161, line: 397, baseType: !381, size: 64, offset: 2688)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !326, file: !161, line: 400, baseType: !13, size: 32, offset: 2752)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "queue_num", scope: !326, file: !161, line: 402, baseType: !13, size: 32, offset: 2784)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active", scope: !326, file: !161, line: 408, baseType: !352, size: 32, offset: 2816)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_online", scope: !326, file: !161, line: 411, baseType: !411, size: 128, offset: 2880)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !326, file: !161, line: 413, baseType: !411, size: 128, offset: 3008)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !326, file: !161, line: 415, baseType: !505, size: 512, offset: 3136)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !326, file: !161, line: 422, baseType: !660, size: 64, offset: 3648)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "sched_debugfs_dir", scope: !326, file: !161, line: 424, baseType: !660, size: 64, offset: 3712)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_list", scope: !326, file: !161, line: 431, baseType: !375, size: 128, offset: 3776)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "exit_hctx", scope: !311, file: !154, line: 30, baseType: !5211, size: 64, offset: 192)
!5211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5212, size: 64)
!5212 = !DISubroutineType(types: !5213)
!5213 = !{null, !325, !13}
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "depth_updated", scope: !311, file: !154, line: 31, baseType: !5215, size: 64, offset: 256)
!5215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5216, size: 64)
!5216 = !DISubroutineType(types: !5217)
!5217 = !{null, !325}
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "allow_merge", scope: !311, file: !154, line: 33, baseType: !5219, size: 64, offset: 320)
!5219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5220, size: 64)
!5220 = !DISubroutineType(types: !5221)
!5221 = !{!470, !294, !290, !1551}
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "bio_merge", scope: !311, file: !154, line: 34, baseType: !5223, size: 64, offset: 384)
!5223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5224, size: 64)
!5224 = !DISubroutineType(types: !5225)
!5225 = !{!470, !294, !1551, !13}
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "request_merge", scope: !311, file: !154, line: 35, baseType: !5227, size: 64, offset: 448)
!5227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5228, size: 64)
!5228 = !DISubroutineType(types: !5229)
!5229 = !{!95, !294, !5195, !1551}
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "request_merged", scope: !311, file: !154, line: 36, baseType: !5231, size: 64, offset: 512)
!5231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5232, size: 64)
!5232 = !DISubroutineType(types: !5233)
!5233 = !{null, !294, !290, !153}
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "requests_merged", scope: !311, file: !154, line: 37, baseType: !5235, size: 64, offset: 576)
!5235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5236, size: 64)
!5236 = !DISubroutineType(types: !5237)
!5237 = !{null, !294, !290, !290}
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "limit_depth", scope: !311, file: !154, line: 38, baseType: !5239, size: 64, offset: 640)
!5239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5240, size: 64)
!5240 = !DISubroutineType(types: !5241)
!5241 = !{null, !284, !5242}
!5242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5243, size: 64)
!5243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_alloc_data", file: !238, line: 146, size: 448, elements: !5244)
!5244 = !{!5245, !5246, !5248, !5249, !5250, !5252, !5253, !5254, !5255}
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !5243, file: !238, line: 148, baseType: !294, size: 64)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5243, file: !238, line: 149, baseType: !5247, size: 32, offset: 64)
!5247 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_mq_req_flags_t", file: !184, line: 352, baseType: !285)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "shallow_depth", scope: !5243, file: !238, line: 150, baseType: !13, size: 32, offset: 96)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !5243, file: !238, line: 151, baseType: !284, size: 32, offset: 128)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "rq_flags", scope: !5243, file: !238, line: 152, baseType: !5251, size: 32, offset: 160)
!5251 = !DIDerivedType(tag: DW_TAG_typedef, name: "req_flags_t", file: !161, line: 27, baseType: !285)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tags", scope: !5243, file: !238, line: 155, baseType: !13, size: 32, offset: 192)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "cached_rq", scope: !5243, file: !238, line: 156, baseType: !5195, size: 64, offset: 256)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !5243, file: !238, line: 159, baseType: !483, size: 64, offset: 320)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "hctx", scope: !5243, file: !238, line: 160, baseType: !325, size: 64, offset: 384)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_request", scope: !311, file: !154, line: 39, baseType: !5257, size: 64, offset: 704)
!5257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5258, size: 64)
!5258 = !DISubroutineType(types: !5259)
!5259 = !{null, !290}
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "finish_request", scope: !311, file: !154, line: 40, baseType: !5257, size: 64, offset: 768)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "insert_requests", scope: !311, file: !154, line: 41, baseType: !5262, size: 64, offset: 832)
!5262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5263, size: 64)
!5263 = !DISubroutineType(types: !5264)
!5264 = !{null, !325, !378, !5265}
!5265 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_insert_t", file: !238, line: 39, baseType: !13)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_request", scope: !311, file: !154, line: 43, baseType: !5267, size: 64, offset: 896)
!5267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5268, size: 64)
!5268 = !DISubroutineType(types: !5269)
!5269 = !{!290, !325}
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "has_work", scope: !311, file: !154, line: 44, baseType: !5271, size: 64, offset: 960)
!5271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5272, size: 64)
!5272 = !DISubroutineType(types: !5273)
!5273 = !{!470, !325}
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "completed_request", scope: !311, file: !154, line: 45, baseType: !5275, size: 64, offset: 1024)
!5275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5276, size: 64)
!5276 = !DISubroutineType(types: !5277)
!5277 = !{null, !290, !696}
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_request", scope: !311, file: !154, line: 46, baseType: !5257, size: 64, offset: 1088)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "former_request", scope: !311, file: !154, line: 47, baseType: !5280, size: 64, offset: 1152)
!5280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5281, size: 64)
!5281 = !DISubroutineType(types: !5282)
!5282 = !{!290, !294, !290}
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "next_request", scope: !311, file: !154, line: 48, baseType: !5280, size: 64, offset: 1216)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "init_icq", scope: !311, file: !154, line: 49, baseType: !5285, size: 64, offset: 1280)
!5285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5286, size: 64)
!5286 = !DISubroutineType(types: !5287)
!5287 = !{null, !5288}
!5288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5289, size: 64)
!5289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !4007, line: 73, size: 448, elements: !5290)
!5290 = !{!5291, !5292, !5293, !5298, !5303}
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !5289, file: !4007, line: 74, baseType: !294, size: 64)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !5289, file: !4007, line: 75, baseType: !4005, size: 64, offset: 64)
!5293 = !DIDerivedType(tag: DW_TAG_member, scope: !5289, file: !4007, line: 83, baseType: !5294, size: 128, offset: 128)
!5294 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5289, file: !4007, line: 83, size: 128, elements: !5295)
!5295 = !{!5296, !5297}
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !5294, file: !4007, line: 84, baseType: !375, size: 128)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !5294, file: !4007, line: 85, baseType: !307, size: 64)
!5298 = !DIDerivedType(tag: DW_TAG_member, scope: !5289, file: !4007, line: 87, baseType: !5299, size: 128, offset: 256)
!5299 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5289, file: !4007, line: 87, size: 128, elements: !5300)
!5300 = !{!5301, !5302}
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !5299, file: !4007, line: 88, baseType: !411, size: 128)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !5299, file: !4007, line: 89, baseType: !1089, size: 128, align: 64)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5289, file: !4007, line: 92, baseType: !13, size: 32, offset: 384)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "exit_icq", scope: !311, file: !154, line: 50, baseType: !5285, size: 64, offset: 1344)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "icq_size", scope: !304, file: !154, line: 72, baseType: !593, size: 64, offset: 1472)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "icq_align", scope: !304, file: !154, line: 73, baseType: !593, size: 64, offset: 1536)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_attrs", scope: !304, file: !154, line: 74, baseType: !5308, size: 64, offset: 1600)
!5308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5309, size: 64)
!5309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elv_fs_entry", file: !154, line: 55, size: 256, elements: !5310)
!5310 = !{!5311, !5312, !5316}
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5309, file: !154, line: 56, baseType: !584, size: 128)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !5309, file: !154, line: 57, baseType: !5313, size: 64, offset: 128)
!5313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5314, size: 64)
!5314 = !DISubroutineType(types: !5315)
!5315 = !{!578, !299, !548}
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !5309, file: !154, line: 58, baseType: !5317, size: 64, offset: 192)
!5317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5318, size: 64)
!5318 = !DISubroutineType(types: !5319)
!5319 = !{!578, !299, !509, !593}
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_name", scope: !304, file: !154, line: 75, baseType: !509, size: 64, offset: 1664)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_alias", scope: !304, file: !154, line: 76, baseType: !509, size: 64, offset: 1728)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_features", scope: !304, file: !154, line: 77, baseType: !4794, size: 32, offset: 1792)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_owner", scope: !304, file: !154, line: 78, baseType: !812, size: 64, offset: 1856)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "queue_debugfs_attrs", scope: !304, file: !154, line: 80, baseType: !5325, size: 64, offset: 1920)
!5325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5326, size: 64)
!5326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5327)
!5327 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_debugfs_attr", file: !154, line: 11, flags: DIFlagFwdDecl)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_debugfs_attrs", scope: !304, file: !154, line: 81, baseType: !5325, size: 64, offset: 1984)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "icq_cache_name", scope: !304, file: !154, line: 85, baseType: !5330, size: 176, offset: 2048)
!5330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !5331)
!5331 = !{!5332}
!5332 = !DISubrange(count: 22)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !304, file: !154, line: 86, baseType: !375, size: 128, offset: 2240)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_data", scope: !300, file: !154, line: 117, baseType: !287, size: 64, offset: 64)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !300, file: !154, line: 118, baseType: !505, size: 512, offset: 128)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !300, file: !154, line: 119, baseType: !882, size: 256, offset: 640)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !300, file: !154, line: 120, baseType: !381, size: 64, offset: 896)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !300, file: !154, line: 121, baseType: !5339, size: 4096, offset: 960)
!5339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1203, size: 4096, elements: !551)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "q_usage_counter", scope: !295, file: !63, line: 395, baseType: !1657, size: 128, offset: 128)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !295, file: !63, line: 397, baseType: !5342, size: 64, offset: 256)
!5342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5343, size: 64)
!5343 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_queue_stats", file: !63, line: 39, flags: DIFlagFwdDecl)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos", scope: !295, file: !63, line: 398, baseType: !5345, size: 64, offset: 320)
!5345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5346, size: 64)
!5346 = !DICompositeType(tag: DW_TAG_structure_type, name: "rq_qos", file: !63, line: 38, flags: DIFlagFwdDecl)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos_mutex", scope: !295, file: !63, line: 399, baseType: !882, size: 256, offset: 384)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ops", scope: !295, file: !63, line: 401, baseType: !5349, size: 64, offset: 640)
!5349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5350, size: 64)
!5350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5351)
!5351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ops", file: !161, line: 537, size: 1152, elements: !5352)
!5352 = !{!5353, !5363, !5364, !5368, !5372, !5376, !5380, !5384, !5388, !5392, !5393, !5397, !5398, !5428, !5432, !5433, !5437, !5441}
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "queue_rq", scope: !5351, file: !161, line: 541, baseType: !5354, size: 64)
!5354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5355, size: 64)
!5355 = !DISubroutineType(types: !5356)
!5356 = !{!453, !325, !5357}
!5357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5358, size: 64)
!5358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5359)
!5359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_queue_data", file: !161, line: 526, size: 128, elements: !5360)
!5360 = !{!5361, !5362}
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "rq", scope: !5359, file: !161, line: 527, baseType: !290, size: 64)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !5359, file: !161, line: 528, baseType: !470, size: 8, offset: 64)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "commit_rqs", scope: !5351, file: !161, line: 551, baseType: !5215, size: 64, offset: 64)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "queue_rqs", scope: !5351, file: !161, line: 559, baseType: !5365, size: 64, offset: 128)
!5365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5366, size: 64)
!5366 = !DISubroutineType(types: !5367)
!5367 = !{null, !5195}
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "get_budget", scope: !5351, file: !161, line: 567, baseType: !5369, size: 64, offset: 192)
!5369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5370, size: 64)
!5370 = !DISubroutineType(types: !5371)
!5371 = !{!95, !294}
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "put_budget", scope: !5351, file: !161, line: 572, baseType: !5373, size: 64, offset: 256)
!5373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5374, size: 64)
!5374 = !DISubroutineType(types: !5375)
!5375 = !{null, !294, !95}
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "set_rq_budget_token", scope: !5351, file: !161, line: 577, baseType: !5377, size: 64, offset: 320)
!5377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5378, size: 64)
!5378 = !DISubroutineType(types: !5379)
!5379 = !{null, !290, !95}
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "get_rq_budget_token", scope: !5351, file: !161, line: 581, baseType: !5381, size: 64, offset: 384)
!5381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5382, size: 64)
!5382 = !DISubroutineType(types: !5383)
!5383 = !{!95, !290}
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !5351, file: !161, line: 586, baseType: !5385, size: 64, offset: 448)
!5385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5386, size: 64)
!5386 = !DISubroutineType(types: !5387)
!5387 = !{!160, !290}
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5351, file: !161, line: 591, baseType: !5389, size: 64, offset: 512)
!5389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5390, size: 64)
!5390 = !DISubroutineType(types: !5391)
!5391 = !{!95, !325, !2127}
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !5351, file: !161, line: 596, baseType: !5257, size: 64, offset: 576)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "init_hctx", scope: !5351, file: !161, line: 603, baseType: !5394, size: 64, offset: 640)
!5394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5395, size: 64)
!5395 = !DISubroutineType(types: !5396)
!5396 = !{!95, !325, !287, !13}
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "exit_hctx", scope: !5351, file: !161, line: 607, baseType: !5211, size: 64, offset: 704)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "init_request", scope: !5351, file: !161, line: 616, baseType: !5399, size: 64, offset: 768)
!5399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5400, size: 64)
!5400 = !DISubroutineType(types: !5401)
!5401 = !{!95, !5402, !290, !13, !13}
!5402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5403, size: 64)
!5403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tag_set", file: !161, line: 498, size: 1344, elements: !5404)
!5404 = !{!5405, !5406, !5413, !5414, !5415, !5416, !5417, !5418, !5419, !5420, !5421, !5422, !5424, !5425, !5426, !5427}
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5403, file: !161, line: 499, baseType: !5349, size: 64)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !5403, file: !161, line: 500, baseType: !5407, size: 384, offset: 64)
!5407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5408, size: 384, elements: !492)
!5408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_queue_map", file: !161, line: 444, size: 128, elements: !5409)
!5409 = !{!5410, !5411, !5412}
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "mq_map", scope: !5408, file: !161, line: 445, baseType: !481, size: 64)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "nr_queues", scope: !5408, file: !161, line: 446, baseType: !13, size: 32, offset: 64)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "queue_offset", scope: !5408, file: !161, line: 447, baseType: !13, size: 32, offset: 96)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "nr_maps", scope: !5403, file: !161, line: 501, baseType: !13, size: 32, offset: 448)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !5403, file: !161, line: 502, baseType: !13, size: 32, offset: 480)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !5403, file: !161, line: 503, baseType: !13, size: 32, offset: 512)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_tags", scope: !5403, file: !161, line: 504, baseType: !13, size: 32, offset: 544)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_size", scope: !5403, file: !161, line: 505, baseType: !13, size: 32, offset: 576)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !5403, file: !161, line: 506, baseType: !95, size: 32, offset: 608)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !5403, file: !161, line: 507, baseType: !13, size: 32, offset: 640)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5403, file: !161, line: 508, baseType: !13, size: 32, offset: 672)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !5403, file: !161, line: 509, baseType: !287, size: 64, offset: 704)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "tags", scope: !5403, file: !161, line: 511, baseType: !5423, size: 64, offset: 768)
!5423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5172, size: 64)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "shared_tags", scope: !5403, file: !161, line: 513, baseType: !5172, size: 64, offset: 832)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "tag_list_lock", scope: !5403, file: !161, line: 515, baseType: !882, size: 256, offset: 896)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "tag_list", scope: !5403, file: !161, line: 516, baseType: !375, size: 128, offset: 1152)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "srcu", scope: !5403, file: !161, line: 517, baseType: !1069, size: 64, offset: 1280)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "exit_request", scope: !5351, file: !161, line: 621, baseType: !5429, size: 64, offset: 832)
!5429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5430, size: 64)
!5430 = !DISubroutineType(types: !5431)
!5431 = !{null, !5402, !290, !13}
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_rq", scope: !5351, file: !161, line: 628, baseType: !5257, size: 64, offset: 896)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !5351, file: !161, line: 633, baseType: !5434, size: 64, offset: 960)
!5434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5435, size: 64)
!5435 = !DISubroutineType(types: !5436)
!5436 = !{!470, !294}
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "map_queues", scope: !5351, file: !161, line: 639, baseType: !5438, size: 64, offset: 1024)
!5438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5439, size: 64)
!5439 = !DISubroutineType(types: !5440)
!5440 = !{null, !5402}
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "show_rq", scope: !5351, file: !161, line: 646, baseType: !5442, size: 64, offset: 1088)
!5442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5443, size: 64)
!5443 = !DISubroutineType(types: !5444)
!5444 = !{null, !1275, !290}
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ctx", scope: !295, file: !63, line: 404, baseType: !483, size: 64, offset: 704)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !295, file: !63, line: 406, baseType: !13, size: 32, offset: 768)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_table", scope: !295, file: !63, line: 409, baseType: !1535, size: 128, offset: 832)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !295, file: !63, line: 410, baseType: !13, size: 32, offset: 960)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "queuedata", scope: !295, file: !63, line: 416, baseType: !287, size: 64, offset: 1024)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "queue_flags", scope: !295, file: !63, line: 421, baseType: !381, size: 64, offset: 1088)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "pm_only", scope: !295, file: !63, line: 426, baseType: !352, size: 32, offset: 1152)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !295, file: !63, line: 432, baseType: !95, size: 32, offset: 1184)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "queue_lock", scope: !295, file: !63, line: 434, baseType: !332, size: 32, offset: 1216)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "disk", scope: !295, file: !63, line: 436, baseType: !1524, size: 64, offset: 1280)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !295, file: !63, line: 438, baseType: !1793, size: 32, offset: 1344)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "mq_kobj", scope: !295, file: !63, line: 443, baseType: !513, size: 64, offset: 1408)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !295, file: !63, line: 450, baseType: !2781, size: 64, offset: 1472)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_status", scope: !295, file: !63, line: 451, baseType: !94, size: 32, offset: 1536)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "nr_requests", scope: !295, file: !63, line: 457, baseType: !381, size: 64, offset: 1600)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pad_mask", scope: !295, file: !63, line: 459, baseType: !13, size: 32, offset: 1664)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "rq_timeout", scope: !295, file: !63, line: 466, baseType: !13, size: 32, offset: 1696)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !295, file: !63, line: 468, baseType: !407, size: 320, offset: 1728)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_work", scope: !295, file: !63, line: 469, baseType: !387, size: 256, offset: 2048)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active_requests_shared_tags", scope: !295, file: !63, line: 471, baseType: !352, size: 32, offset: 2304)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "sched_shared_tags", scope: !295, file: !63, line: 473, baseType: !5172, size: 64, offset: 2368)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !295, file: !63, line: 475, baseType: !375, size: 128, offset: 2432)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_pols", scope: !295, file: !63, line: 477, baseType: !436, size: 64, offset: 2560)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "root_blkg", scope: !295, file: !63, line: 478, baseType: !1576, size: 64, offset: 2624)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "blkg_list", scope: !295, file: !63, line: 479, baseType: !375, size: 128, offset: 2688)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_mutex", scope: !295, file: !63, line: 480, baseType: !882, size: 256, offset: 2816)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !295, file: !63, line: 483, baseType: !5472, size: 960, offset: 3072)
!5472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_limits", file: !63, line: 300, size: 960, elements: !5473)
!5473 = !{!5474, !5475, !5476, !5477, !5478, !5479, !5480, !5481, !5482, !5483, !5484, !5485, !5486, !5487, !5488, !5489, !5490, !5491, !5492, !5493, !5494, !5495, !5496, !5497, !5498, !5499, !5500, !5501, !5502, !5503}
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "bounce", scope: !5472, file: !63, line: 301, baseType: !165, size: 32)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "seg_boundary_mask", scope: !5472, file: !63, line: 302, baseType: !381, size: 64, offset: 64)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !5472, file: !63, line: 303, baseType: !381, size: 64, offset: 128)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_sectors", scope: !5472, file: !63, line: 305, baseType: !13, size: 32, offset: 192)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "max_dev_sectors", scope: !5472, file: !63, line: 306, baseType: !13, size: 32, offset: 224)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_sectors", scope: !5472, file: !63, line: 307, baseType: !13, size: 32, offset: 256)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !5472, file: !63, line: 308, baseType: !13, size: 32, offset: 288)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "max_user_sectors", scope: !5472, file: !63, line: 309, baseType: !13, size: 32, offset: 320)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !5472, file: !63, line: 310, baseType: !13, size: 32, offset: 352)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "physical_block_size", scope: !5472, file: !63, line: 311, baseType: !13, size: 32, offset: 384)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "logical_block_size", scope: !5472, file: !63, line: 312, baseType: !13, size: 32, offset: 416)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_offset", scope: !5472, file: !63, line: 313, baseType: !13, size: 32, offset: 448)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "io_min", scope: !5472, file: !63, line: 314, baseType: !13, size: 32, offset: 480)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "io_opt", scope: !5472, file: !63, line: 315, baseType: !13, size: 32, offset: 512)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_sectors", scope: !5472, file: !63, line: 316, baseType: !13, size: 32, offset: 544)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_discard_sectors", scope: !5472, file: !63, line: 317, baseType: !13, size: 32, offset: 576)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "max_secure_erase_sectors", scope: !5472, file: !63, line: 318, baseType: !13, size: 32, offset: 608)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_zeroes_sectors", scope: !5472, file: !63, line: 319, baseType: !13, size: 32, offset: 640)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "max_zone_append_sectors", scope: !5472, file: !63, line: 320, baseType: !13, size: 32, offset: 672)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "discard_granularity", scope: !5472, file: !63, line: 321, baseType: !13, size: 32, offset: 704)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "discard_alignment", scope: !5472, file: !63, line: 322, baseType: !13, size: 32, offset: 736)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "zone_write_granularity", scope: !5472, file: !63, line: 323, baseType: !13, size: 32, offset: 768)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "max_segments", scope: !5472, file: !63, line: 325, baseType: !372, size: 16, offset: 800)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "max_integrity_segments", scope: !5472, file: !63, line: 326, baseType: !372, size: 16, offset: 816)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_segments", scope: !5472, file: !63, line: 327, baseType: !372, size: 16, offset: 832)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "misaligned", scope: !5472, file: !63, line: 329, baseType: !364, size: 8, offset: 848)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "discard_misaligned", scope: !5472, file: !63, line: 330, baseType: !364, size: 8, offset: 856)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "raid_partial_stripes_expensive", scope: !5472, file: !63, line: 331, baseType: !364, size: 8, offset: 864)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "zoned", scope: !5472, file: !63, line: 332, baseType: !169, size: 32, offset: 896)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alignment", scope: !5472, file: !63, line: 339, baseType: !13, size: 32, offset: 928)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "required_elevator_features", scope: !295, file: !63, line: 485, baseType: !13, size: 32, offset: 4032)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !295, file: !63, line: 487, baseType: !95, size: 32, offset: 4064)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "blk_trace", scope: !295, file: !63, line: 489, baseType: !5507, size: 64, offset: 4096)
!5507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5508, size: 64)
!5508 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_trace", file: !63, line: 31, flags: DIFlagFwdDecl)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !295, file: !63, line: 494, baseType: !445, size: 64, offset: 4160)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "flush_list", scope: !295, file: !63, line: 495, baseType: !375, size: 128, offset: 4224)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_list", scope: !295, file: !63, line: 497, baseType: !375, size: 128, offset: 4352)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_lock", scope: !295, file: !63, line: 498, baseType: !332, size: 32, offset: 4480)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_work", scope: !295, file: !63, line: 499, baseType: !383, size: 704, offset: 4544)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !295, file: !63, line: 501, baseType: !882, size: 256, offset: 5248)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_dir_lock", scope: !295, file: !63, line: 502, baseType: !882, size: 256, offset: 5504)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_list", scope: !295, file: !63, line: 508, baseType: !375, size: 128, offset: 5760)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_lock", scope: !295, file: !63, line: 509, baseType: !332, size: 32, offset: 5888)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_depth", scope: !295, file: !63, line: 511, baseType: !95, size: 32, offset: 5920)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !295, file: !63, line: 517, baseType: !1089, size: 128, align: 64, offset: 5952)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_wq", scope: !295, file: !63, line: 518, baseType: !1804, size: 192, offset: 6080)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_lock", scope: !295, file: !63, line: 523, baseType: !882, size: 256, offset: 6272)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "quiesce_depth", scope: !295, file: !63, line: 525, baseType: !95, size: 32, offset: 6528)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set", scope: !295, file: !63, line: 527, baseType: !5402, size: 64, offset: 6592)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set_list", scope: !295, file: !63, line: 528, baseType: !375, size: 128, offset: 6656)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !295, file: !63, line: 530, baseType: !660, size: 64, offset: 6784)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "sched_debugfs_dir", scope: !295, file: !63, line: 531, baseType: !660, size: 64, offset: 6848)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "rqos_debugfs_dir", scope: !295, file: !63, line: 532, baseType: !660, size: 64, offset: 6912)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !295, file: !63, line: 536, baseType: !882, size: 256, offset: 6976)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "mq_sysfs_init_done", scope: !295, file: !63, line: 538, baseType: !470, size: 8, offset: 7232)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ctx", scope: !291, file: !161, line: 82, baseType: !483, size: 64, offset: 64)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "mq_hctx", scope: !291, file: !161, line: 83, baseType: !325, size: 64, offset: 128)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !291, file: !161, line: 85, baseType: !284, size: 32, offset: 192)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "rq_flags", scope: !291, file: !161, line: 86, baseType: !5251, size: 32, offset: 224)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !291, file: !161, line: 88, baseType: !95, size: 32, offset: 256)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "internal_tag", scope: !291, file: !161, line: 89, baseType: !95, size: 32, offset: 288)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !291, file: !161, line: 91, baseType: !13, size: 32, offset: 320)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "__data_len", scope: !291, file: !161, line: 94, baseType: !13, size: 32, offset: 352)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "__sector", scope: !291, file: !161, line: 95, baseType: !1521, size: 64, offset: 384)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "bio", scope: !291, file: !161, line: 97, baseType: !1551, size: 64, offset: 448)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "biotail", scope: !291, file: !161, line: 98, baseType: !1551, size: 64, offset: 512)
!5541 = !DIDerivedType(tag: DW_TAG_member, scope: !291, file: !161, line: 100, baseType: !5542, size: 128, offset: 576)
!5542 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !291, file: !161, line: 100, size: 128, elements: !5543)
!5543 = !{!5544, !5545}
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "queuelist", scope: !5542, file: !161, line: 101, baseType: !375, size: 128)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "rq_next", scope: !5542, file: !161, line: 102, baseType: !290, size: 64)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !291, file: !161, line: 105, baseType: !1517, size: 64, offset: 704)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_time_ns", scope: !291, file: !161, line: 108, baseType: !696, size: 64, offset: 768)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "start_time_ns", scope: !291, file: !161, line: 111, baseType: !696, size: 64, offset: 832)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "io_start_time_ns", scope: !291, file: !161, line: 113, baseType: !696, size: 64, offset: 896)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "stats_sectors", scope: !291, file: !161, line: 123, baseType: !372, size: 16, offset: 960)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "nr_phys_segments", scope: !291, file: !161, line: 129, baseType: !372, size: 16, offset: 976)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !291, file: !161, line: 140, baseType: !372, size: 16, offset: 992)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !291, file: !161, line: 142, baseType: !174, size: 32, offset: 1024)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !291, file: !161, line: 143, baseType: !352, size: 32, offset: 1056)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !291, file: !161, line: 145, baseType: !381, size: 64, offset: 1088)
!5556 = !DIDerivedType(tag: DW_TAG_member, scope: !291, file: !161, line: 154, baseType: !5557, size: 128, offset: 1152)
!5557 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !291, file: !161, line: 154, size: 128, elements: !5558)
!5558 = !{!5559, !5560}
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !5557, file: !161, line: 155, baseType: !411, size: 128)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_list", scope: !5557, file: !161, line: 156, baseType: !1750, size: 64)
!5561 = !DIDerivedType(tag: DW_TAG_member, scope: !291, file: !161, line: 165, baseType: !5562, size: 192, offset: 1280)
!5562 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !291, file: !161, line: 165, size: 192, elements: !5563)
!5563 = !{!5564, !5565}
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !5562, file: !161, line: 166, baseType: !983, size: 192, align: 64)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "special_vec", scope: !5562, file: !161, line: 167, baseType: !1590, size: 128)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "elv", scope: !291, file: !161, line: 177, baseType: !5567, size: 192, offset: 1472)
!5567 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !291, file: !161, line: 174, size: 192, elements: !5568)
!5568 = !{!5569, !5570}
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "icq", scope: !5567, file: !161, line: 175, baseType: !5288, size: 64)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5567, file: !161, line: 176, baseType: !5571, size: 128, offset: 64)
!5571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 128, elements: !457)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !291, file: !161, line: 182, baseType: !5573, size: 128, offset: 1664)
!5573 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !291, file: !161, line: 179, size: 128, elements: !5574)
!5574 = !{!5575, !5576}
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !5573, file: !161, line: 180, baseType: !13, size: 32)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "saved_end_io", scope: !5573, file: !161, line: 181, baseType: !5577, size: 64, offset: 64)
!5577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5578, size: 64)
!5578 = !DIDerivedType(tag: DW_TAG_typedef, name: "rq_end_io_fn", file: !161, line: 23, baseType: !5579)
!5579 = !DISubroutineType(types: !5580)
!5580 = !{!179, !290, !453}
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_time", scope: !291, file: !161, line: 184, baseType: !696, size: 64, offset: 1792)
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "end_io", scope: !291, file: !161, line: 189, baseType: !5577, size: 64, offset: 1856)
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "end_io_data", scope: !291, file: !161, line: 190, baseType: !287, size: 64, offset: 1920)
!5584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5585, size: 64)
!5585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5586)
!5586 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !95)
!5587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5588, size: 64)
!5588 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !378)
!5589 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !353, line: 42, baseType: !381)
!5590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!5591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5592, size: 64)
!5592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5588)
!5593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5586, size: 64)
!5594 = !{!0, !7, !5595, !5597, !5600, !5603, !5645}
!5595 = !DIGlobalVariableExpression(var: !5596, expr: !DIExpression())
!5596 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_blk_mq_hctx_set_fq_lock_class354", scope: !9, file: !2, line: 547, type: !287, isLocal: true, isDefinition: true)
!5597 = !DIGlobalVariableExpression(var: !5598, expr: !DIExpression())
!5598 = distinct !DIGlobalVariable(scope: null, file: !447, line: 508, type: !5599, isLocal: true, isDefinition: true)
!5599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !4410)
!5600 = !DIGlobalVariableExpression(var: !5601, expr: !DIExpression())
!5601 = distinct !DIGlobalVariable(scope: null, file: !2, line: 144, type: !5602, isLocal: true, isDefinition: true)
!5602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !1099)
!5603 = !DIGlobalVariableExpression(var: !5604, expr: !DIExpression())
!5604 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule351", scope: !5605, file: !2, line: 147, type: !287, isLocal: true, isDefinition: true)
!5605 = distinct !DISubprogram(name: "blk_account_io_flush", scope: !2, file: !2, line: 139, type: !5258, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5606)
!5606 = !{!5607, !5608, !5609, !5614, !5616, !5621, !5623, !5628, !5630, !5634, !5639, !5641}
!5607 = !DILocalVariable(name: "rq", arg: 1, scope: !5605, file: !2, line: 139, type: !290)
!5608 = !DILocalVariable(name: "part", scope: !5605, file: !2, line: 141, type: !1517)
!5609 = !DILocalVariable(name: "__vpp_verify", scope: !5610, file: !2, line: 144, type: !2342)
!5610 = distinct !DILexicalBlock(scope: !5611, file: !2, line: 144, column: 2)
!5611 = distinct !DILexicalBlock(scope: !5612, file: !2, line: 144, column: 2)
!5612 = distinct !DILexicalBlock(scope: !5613, file: !2, line: 144, column: 2)
!5613 = distinct !DILexicalBlock(scope: !5605, file: !2, line: 144, column: 2)
!5614 = !DILocalVariable(name: "pao_ID__", scope: !5615, file: !2, line: 144, type: !1065)
!5615 = distinct !DILexicalBlock(scope: !5611, file: !2, line: 144, column: 2)
!5616 = !DILocalVariable(name: "__vpp_verify", scope: !5617, file: !2, line: 144, type: !2342)
!5617 = distinct !DILexicalBlock(scope: !5618, file: !2, line: 144, column: 2)
!5618 = distinct !DILexicalBlock(scope: !5619, file: !2, line: 144, column: 2)
!5619 = distinct !DILexicalBlock(scope: !5620, file: !2, line: 144, column: 2)
!5620 = distinct !DILexicalBlock(scope: !5613, file: !2, line: 144, column: 2)
!5621 = !DILocalVariable(name: "pao_ID__", scope: !5622, file: !2, line: 144, type: !1065)
!5622 = distinct !DILexicalBlock(scope: !5618, file: !2, line: 144, column: 2)
!5623 = !DILocalVariable(name: "__vpp_verify", scope: !5624, file: !2, line: 145, type: !2342)
!5624 = distinct !DILexicalBlock(scope: !5625, file: !2, line: 145, column: 2)
!5625 = distinct !DILexicalBlock(scope: !5626, file: !2, line: 145, column: 2)
!5626 = distinct !DILexicalBlock(scope: !5627, file: !2, line: 145, column: 2)
!5627 = distinct !DILexicalBlock(scope: !5605, file: !2, line: 145, column: 2)
!5628 = !DILocalVariable(name: "pao_ID__", scope: !5629, file: !2, line: 145, type: !1065)
!5629 = distinct !DILexicalBlock(scope: !5625, file: !2, line: 145, column: 2)
!5630 = !DILocalVariable(name: "pto_val__", scope: !5631, file: !2, line: 145, type: !696)
!5631 = distinct !DILexicalBlock(scope: !5632, file: !2, line: 145, column: 2)
!5632 = distinct !DILexicalBlock(scope: !5633, file: !2, line: 145, column: 2)
!5633 = distinct !DILexicalBlock(scope: !5629, file: !2, line: 145, column: 2)
!5634 = !DILocalVariable(name: "__vpp_verify", scope: !5635, file: !2, line: 145, type: !2342)
!5635 = distinct !DILexicalBlock(scope: !5636, file: !2, line: 145, column: 2)
!5636 = distinct !DILexicalBlock(scope: !5637, file: !2, line: 145, column: 2)
!5637 = distinct !DILexicalBlock(scope: !5638, file: !2, line: 145, column: 2)
!5638 = distinct !DILexicalBlock(scope: !5627, file: !2, line: 145, column: 2)
!5639 = !DILocalVariable(name: "pao_ID__", scope: !5640, file: !2, line: 145, type: !1065)
!5640 = distinct !DILexicalBlock(scope: !5636, file: !2, line: 145, column: 2)
!5641 = !DILocalVariable(name: "pto_val__", scope: !5642, file: !2, line: 145, type: !696)
!5642 = distinct !DILexicalBlock(scope: !5643, file: !2, line: 145, column: 2)
!5643 = distinct !DILexicalBlock(scope: !5644, file: !2, line: 145, column: 2)
!5644 = distinct !DILexicalBlock(scope: !5640, file: !2, line: 145, column: 2)
!5645 = !DIGlobalVariableExpression(var: !5646, expr: !DIExpression())
!5646 = distinct !DIGlobalVariable(scope: null, file: !274, line: 480, type: !5647, isLocal: true, isDefinition: true)
!5647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !5648)
!5648 = !{!5649}
!5649 = !DISubrange(count: 21)
!5650 = !{!"rsp"}
!5651 = !{i32 7, !"Dwarf Version", i32 5}
!5652 = !{i32 2, !"Debug Info Version", i32 3}
!5653 = !{i32 1, !"wchar_size", i32 2}
!5654 = !{i32 8, !"cf-protection-branch", i32 1}
!5655 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5656 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5657 = !{i32 1, !"Code Model", i32 2}
!5658 = !{i32 1, !"override-stack-alignment", i32 8}
!5659 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5660 = distinct !DISubprogram(name: "is_flush_rq", scope: !2, file: !2, line: 272, type: !5661, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5663)
!5661 = !DISubroutineType(types: !5662)
!5662 = !{!470, !290}
!5663 = !{!5664}
!5664 = !DILocalVariable(name: "rq", arg: 1, scope: !5660, file: !2, line: 272, type: !290)
!5665 = !DILocation(line: 272, column: 34, scope: !5660)
!5666 = !DILocation(line: 274, column: 9, scope: !5660)
!5667 = !DILocation(line: 274, column: 13, scope: !5660)
!5668 = !DILocation(line: 274, column: 20, scope: !5660)
!5669 = !DILocation(line: 274, column: 2, scope: !5660)
!5670 = distinct !DISubprogram(name: "flush_end_io", scope: !2, file: !2, line: 216, type: !5579, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5671)
!5671 = !{!5672, !5673, !5674, !5675, !5676, !5677, !5678, !5679, !5680, !5684, !5685, !5688, !5690, !5693}
!5672 = !DILocalVariable(name: "flush_rq", arg: 1, scope: !5670, file: !2, line: 216, type: !290)
!5673 = !DILocalVariable(name: "error", arg: 2, scope: !5670, file: !2, line: 217, type: !453)
!5674 = !DILocalVariable(name: "q", scope: !5670, file: !2, line: 219, type: !294)
!5675 = !DILocalVariable(name: "running", scope: !5670, file: !2, line: 220, type: !378)
!5676 = !DILocalVariable(name: "rq", scope: !5670, file: !2, line: 221, type: !290)
!5677 = !DILocalVariable(name: "n", scope: !5670, file: !2, line: 221, type: !290)
!5678 = !DILocalVariable(name: "flags", scope: !5670, file: !2, line: 222, type: !381)
!5679 = !DILocalVariable(name: "fq", scope: !5670, file: !2, line: 223, type: !445)
!5680 = !DILocalVariable(name: "__dummy", scope: !5681, file: !2, line: 226, type: !381)
!5681 = distinct !DILexicalBlock(scope: !5682, file: !2, line: 226, column: 2)
!5682 = distinct !DILexicalBlock(scope: !5683, file: !2, line: 226, column: 2)
!5683 = distinct !DILexicalBlock(scope: !5670, file: !2, line: 226, column: 2)
!5684 = !DILocalVariable(name: "__dummy2", scope: !5681, file: !2, line: 226, type: !381)
!5685 = !DILocalVariable(name: "__mptr", scope: !5686, file: !2, line: 260, type: !287)
!5686 = distinct !DILexicalBlock(scope: !5687, file: !2, line: 260, column: 2)
!5687 = distinct !DILexicalBlock(scope: !5670, file: !2, line: 260, column: 2)
!5688 = !DILocalVariable(name: "__mptr", scope: !5689, file: !2, line: 260, type: !287)
!5689 = distinct !DILexicalBlock(scope: !5687, file: !2, line: 260, column: 2)
!5690 = !DILocalVariable(name: "seq", scope: !5691, file: !2, line: 261, type: !13)
!5691 = distinct !DILexicalBlock(scope: !5692, file: !2, line: 260, column: 54)
!5692 = distinct !DILexicalBlock(scope: !5687, file: !2, line: 260, column: 2)
!5693 = !DILocalVariable(name: "__mptr", scope: !5694, file: !2, line: 260, type: !287)
!5694 = distinct !DILexicalBlock(scope: !5692, file: !2, line: 260, column: 2)
!5695 = !DILocation(line: 216, column: 56, scope: !5670)
!5696 = !DILocation(line: 217, column: 25, scope: !5670)
!5697 = !DILocation(line: 219, column: 2, scope: !5670)
!5698 = !DILocation(line: 219, column: 24, scope: !5670)
!5699 = !DILocation(line: 219, column: 28, scope: !5670)
!5700 = !DILocation(line: 219, column: 38, scope: !5670)
!5701 = !DILocation(line: 220, column: 2, scope: !5670)
!5702 = !DILocation(line: 220, column: 20, scope: !5670)
!5703 = !DILocation(line: 221, column: 2, scope: !5670)
!5704 = !DILocation(line: 221, column: 18, scope: !5670)
!5705 = !DILocation(line: 221, column: 23, scope: !5670)
!5706 = !DILocation(line: 222, column: 2, scope: !5670)
!5707 = !DILocation(line: 222, column: 16, scope: !5670)
!5708 = !DILocation(line: 223, column: 2, scope: !5670)
!5709 = !DILocation(line: 223, column: 26, scope: !5670)
!5710 = !DILocation(line: 223, column: 51, scope: !5670)
!5711 = !DILocation(line: 223, column: 54, scope: !5670)
!5712 = !DILocation(line: 223, column: 64, scope: !5670)
!5713 = !DILocation(line: 223, column: 31, scope: !5670)
!5714 = !DILocation(line: 226, column: 2, scope: !5670)
!5715 = !DILocation(line: 226, column: 2, scope: !5683)
!5716 = !DILocation(line: 226, column: 2, scope: !5681)
!5717 = !DILocation(line: 226, column: 2, scope: !5682)
!5718 = !DILocation(line: 228, column: 28, scope: !5719)
!5719 = distinct !DILexicalBlock(scope: !5670, file: !2, line: 228, column: 6)
!5720 = !DILocation(line: 228, column: 7, scope: !5719)
!5721 = !DILocation(line: 228, column: 6, scope: !5670)
!5722 = !DILocation(line: 229, column: 19, scope: !5723)
!5723 = distinct !DILexicalBlock(scope: !5719, file: !2, line: 228, column: 39)
!5724 = !DILocation(line: 229, column: 3, scope: !5723)
!5725 = !DILocation(line: 229, column: 7, scope: !5723)
!5726 = !DILocation(line: 229, column: 17, scope: !5723)
!5727 = !DILocation(line: 230, column: 27, scope: !5723)
!5728 = !DILocation(line: 230, column: 31, scope: !5723)
!5729 = !DILocation(line: 230, column: 46, scope: !5723)
!5730 = !DILocation(line: 230, column: 3, scope: !5723)
!5731 = !DILocation(line: 231, column: 3, scope: !5723)
!5732 = !DILocation(line: 234, column: 23, scope: !5670)
!5733 = !DILocation(line: 234, column: 2, scope: !5670)
!5734 = !DILocation(line: 240, column: 2, scope: !5670)
!5735 = !DILocation(line: 240, column: 2, scope: !5736)
!5736 = distinct !DILexicalBlock(scope: !5670, file: !2, line: 240, column: 2)
!5737 = !DILocation(line: 240, column: 2, scope: !5738)
!5738 = distinct !DILexicalBlock(scope: !5736, file: !2, line: 240, column: 2)
!5739 = !DILocation(line: 240, column: 2, scope: !5740)
!5740 = distinct !DILexicalBlock(scope: !5736, file: !2, line: 240, column: 2)
!5741 = !DILocation(line: 241, column: 6, scope: !5742)
!5742 = distinct !DILexicalBlock(scope: !5670, file: !2, line: 241, column: 6)
!5743 = !DILocation(line: 241, column: 10, scope: !5742)
!5744 = !DILocation(line: 241, column: 20, scope: !5742)
!5745 = !DILocation(line: 241, column: 6, scope: !5670)
!5746 = !DILocation(line: 242, column: 11, scope: !5747)
!5747 = distinct !DILexicalBlock(scope: !5742, file: !2, line: 241, column: 35)
!5748 = !DILocation(line: 242, column: 15, scope: !5747)
!5749 = !DILocation(line: 242, column: 9, scope: !5747)
!5750 = !DILocation(line: 243, column: 3, scope: !5747)
!5751 = !DILocation(line: 243, column: 7, scope: !5747)
!5752 = !DILocation(line: 243, column: 17, scope: !5747)
!5753 = !DILocation(line: 244, column: 2, scope: !5747)
!5754 = !DILocation(line: 246, column: 7, scope: !5755)
!5755 = distinct !DILexicalBlock(scope: !5670, file: !2, line: 246, column: 6)
!5756 = !DILocation(line: 246, column: 10, scope: !5755)
!5757 = !DILocation(line: 246, column: 6, scope: !5670)
!5758 = !DILocation(line: 247, column: 3, scope: !5759)
!5759 = distinct !DILexicalBlock(scope: !5755, file: !2, line: 246, column: 20)
!5760 = !DILocation(line: 247, column: 13, scope: !5759)
!5761 = !DILocation(line: 247, column: 17, scope: !5759)
!5762 = !DILocation(line: 248, column: 2, scope: !5759)
!5763 = !DILocation(line: 249, column: 25, scope: !5764)
!5764 = distinct !DILexicalBlock(scope: !5755, file: !2, line: 248, column: 9)
!5765 = !DILocation(line: 249, column: 3, scope: !5764)
!5766 = !DILocation(line: 250, column: 3, scope: !5764)
!5767 = !DILocation(line: 250, column: 13, scope: !5764)
!5768 = !DILocation(line: 250, column: 26, scope: !5764)
!5769 = !DILocation(line: 253, column: 13, scope: !5670)
!5770 = !DILocation(line: 253, column: 17, scope: !5670)
!5771 = !DILocation(line: 253, column: 29, scope: !5670)
!5772 = !DILocation(line: 253, column: 33, scope: !5670)
!5773 = !DILocation(line: 253, column: 10, scope: !5670)
!5774 = !DILocation(line: 254, column: 2, scope: !5670)
!5775 = !DILocation(line: 254, column: 2, scope: !5776)
!5776 = distinct !DILexicalBlock(scope: !5777, file: !2, line: 254, column: 2)
!5777 = distinct !DILexicalBlock(scope: !5670, file: !2, line: 254, column: 2)
!5778 = !DILocation(line: 254, column: 2, scope: !5777)
!5779 = !DILocation(line: 254, column: 2, scope: !5780)
!5780 = distinct !DILexicalBlock(scope: !5776, file: !2, line: 254, column: 2)
!5781 = !DILocation(line: 254, column: 2, scope: !5782)
!5782 = distinct !DILexicalBlock(scope: !5780, file: !2, line: 254, column: 2)
!5783 = !DILocation(line: 254, column: 2, scope: !5784)
!5784 = distinct !DILexicalBlock(scope: !5780, file: !2, line: 254, column: 2)
!5785 = !{i64 2156170758, i64 2156170787, i64 2156170833, i64 2156170891, i64 2156170945, i64 2156170999, i64 2156171054, i64 2156171085}
!5786 = !DILocation(line: 257, column: 2, scope: !5670)
!5787 = !DILocation(line: 257, column: 6, scope: !5670)
!5788 = !DILocation(line: 257, column: 24, scope: !5670)
!5789 = !DILocation(line: 260, column: 2, scope: !5686)
!5790 = !DILocation(line: 260, column: 2, scope: !5687)
!5791 = !DILocation(line: 260, column: 2, scope: !5689)
!5792 = !DILocation(line: 260, column: 2, scope: !5692)
!5793 = !DILocation(line: 261, column: 3, scope: !5691)
!5794 = !DILocation(line: 261, column: 16, scope: !5691)
!5795 = !DILocation(line: 261, column: 40, scope: !5691)
!5796 = !DILocation(line: 261, column: 22, scope: !5691)
!5797 = !DILocation(line: 263, column: 3, scope: !5691)
!5798 = !DILocation(line: 263, column: 3, scope: !5799)
!5799 = distinct !DILexicalBlock(scope: !5800, file: !2, line: 263, column: 3)
!5800 = distinct !DILexicalBlock(scope: !5691, file: !2, line: 263, column: 3)
!5801 = !DILocation(line: 0, scope: !5799)
!5802 = !DILocation(line: 263, column: 3, scope: !5800)
!5803 = !DILocation(line: 263, column: 3, scope: !5804)
!5804 = distinct !DILexicalBlock(scope: !5799, file: !2, line: 263, column: 3)
!5805 = !DILocation(line: 263, column: 3, scope: !5806)
!5806 = distinct !DILexicalBlock(scope: !5804, file: !2, line: 263, column: 3)
!5807 = !DILocation(line: 263, column: 3, scope: !5808)
!5808 = distinct !DILexicalBlock(scope: !5804, file: !2, line: 263, column: 3)
!5809 = !{i64 2156176513, i64 2156176542, i64 2156176588, i64 2156176646, i64 2156176700, i64 2156176754, i64 2156176809, i64 2156176840}
!5810 = !DILocation(line: 264, column: 18, scope: !5691)
!5811 = !DILocation(line: 264, column: 22, scope: !5691)
!5812 = !DILocation(line: 264, column: 3, scope: !5691)
!5813 = !DILocation(line: 265, column: 26, scope: !5691)
!5814 = !DILocation(line: 265, column: 30, scope: !5691)
!5815 = !DILocation(line: 265, column: 34, scope: !5691)
!5816 = !DILocation(line: 265, column: 39, scope: !5691)
!5817 = !DILocation(line: 265, column: 3, scope: !5691)
!5818 = !DILocation(line: 266, column: 2, scope: !5692)
!5819 = !DILocation(line: 266, column: 2, scope: !5691)
!5820 = !DILocation(line: 260, column: 2, scope: !5694)
!5821 = distinct !{!5821, !5790, !5822, !5823, !5824}
!5822 = !DILocation(line: 266, column: 2, scope: !5687)
!5823 = !{!"llvm.loop.mustprogress"}
!5824 = !{!"llvm.loop.unroll.disable"}
!5825 = !DILocation(line: 268, column: 26, scope: !5670)
!5826 = !DILocation(line: 268, column: 30, scope: !5670)
!5827 = !DILocation(line: 268, column: 45, scope: !5670)
!5828 = !DILocation(line: 268, column: 2, scope: !5670)
!5829 = !DILocation(line: 269, column: 2, scope: !5670)
!5830 = !DILocation(line: 270, column: 1, scope: !5670)
!5831 = distinct !DISubprogram(name: "blk_insert_flush", scope: !2, file: !2, line: 404, type: !5661, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5832)
!5832 = !{!5833, !5834, !5835, !5836, !5837, !5838, !5840}
!5833 = !DILocalVariable(name: "rq", arg: 1, scope: !5831, file: !2, line: 404, type: !290)
!5834 = !DILocalVariable(name: "q", scope: !5831, file: !2, line: 406, type: !294)
!5835 = !DILocalVariable(name: "fflags", scope: !5831, file: !2, line: 407, type: !381)
!5836 = !DILocalVariable(name: "policy", scope: !5831, file: !2, line: 408, type: !13)
!5837 = !DILocalVariable(name: "fq", scope: !5831, file: !2, line: 409, type: !445)
!5838 = !DILocalVariable(name: "__ret_warn_on", scope: !5839, file: !2, line: 412, type: !95)
!5839 = distinct !DILexicalBlock(scope: !5831, file: !2, line: 412, column: 2)
!5840 = !DILocalVariable(name: "__flags", scope: !5841, file: !2, line: 412, type: !95)
!5841 = distinct !DILexicalBlock(scope: !5842, file: !2, line: 412, column: 2)
!5842 = distinct !DILexicalBlock(scope: !5839, file: !2, line: 412, column: 2)
!5843 = !DILocation(line: 404, column: 39, scope: !5831)
!5844 = !DILocation(line: 406, column: 2, scope: !5831)
!5845 = !DILocation(line: 406, column: 24, scope: !5831)
!5846 = !DILocation(line: 406, column: 28, scope: !5831)
!5847 = !DILocation(line: 406, column: 32, scope: !5831)
!5848 = !DILocation(line: 407, column: 2, scope: !5831)
!5849 = !DILocation(line: 407, column: 16, scope: !5831)
!5850 = !DILocation(line: 407, column: 25, scope: !5831)
!5851 = !DILocation(line: 407, column: 28, scope: !5831)
!5852 = !DILocation(line: 408, column: 2, scope: !5831)
!5853 = !DILocation(line: 408, column: 15, scope: !5831)
!5854 = !DILocation(line: 408, column: 41, scope: !5831)
!5855 = !DILocation(line: 408, column: 49, scope: !5831)
!5856 = !DILocation(line: 408, column: 24, scope: !5831)
!5857 = !DILocation(line: 409, column: 2, scope: !5831)
!5858 = !DILocation(line: 409, column: 26, scope: !5831)
!5859 = !DILocation(line: 409, column: 51, scope: !5831)
!5860 = !DILocation(line: 409, column: 54, scope: !5831)
!5861 = !DILocation(line: 409, column: 58, scope: !5831)
!5862 = !DILocation(line: 409, column: 31, scope: !5831)
!5863 = !DILocation(line: 412, column: 2, scope: !5839)
!5864 = !DILocation(line: 412, column: 2, scope: !5842)
!5865 = !DILocation(line: 412, column: 2, scope: !5841)
!5866 = !DILocation(line: 412, column: 2, scope: !5867)
!5867 = distinct !DILexicalBlock(scope: !5841, file: !2, line: 412, column: 2)
!5868 = !DILocation(line: 412, column: 2, scope: !5869)
!5869 = distinct !DILexicalBlock(scope: !5841, file: !2, line: 412, column: 2)
!5870 = !{i64 2156182078, i64 2156182107, i64 2156182153, i64 2156182211, i64 2156182265, i64 2156182319, i64 2156182374, i64 2156182405, i64 2156182713, i64 2156182719, i64 2156182766, i64 2156182789, i64 2156182815}
!5871 = !DILocation(line: 412, column: 2, scope: !5872)
!5872 = distinct !DILexicalBlock(scope: !5841, file: !2, line: 412, column: 2)
!5873 = !DILocation(line: 412, column: 2, scope: !5831)
!5874 = !DILocation(line: 418, column: 2, scope: !5831)
!5875 = !DILocation(line: 418, column: 6, scope: !5831)
!5876 = !DILocation(line: 418, column: 16, scope: !5831)
!5877 = !DILocation(line: 419, column: 8, scope: !5878)
!5878 = distinct !DILexicalBlock(scope: !5831, file: !2, line: 419, column: 6)
!5879 = !DILocation(line: 419, column: 15, scope: !5878)
!5880 = !DILocation(line: 419, column: 6, scope: !5831)
!5881 = !DILocation(line: 420, column: 3, scope: !5878)
!5882 = !DILocation(line: 420, column: 7, scope: !5878)
!5883 = !DILocation(line: 420, column: 17, scope: !5878)
!5884 = !DILocation(line: 427, column: 2, scope: !5831)
!5885 = !DILocation(line: 427, column: 6, scope: !5831)
!5886 = !DILocation(line: 427, column: 16, scope: !5831)
!5887 = !DILocation(line: 429, column: 10, scope: !5831)
!5888 = !DILocation(line: 429, column: 2, scope: !5831)
!5889 = !DILocation(line: 437, column: 22, scope: !5890)
!5890 = distinct !DILexicalBlock(scope: !5831, file: !2, line: 429, column: 18)
!5891 = !DILocation(line: 437, column: 3, scope: !5890)
!5892 = !DILocation(line: 438, column: 3, scope: !5890)
!5893 = !DILocation(line: 445, column: 3, scope: !5890)
!5894 = !DILocation(line: 451, column: 21, scope: !5890)
!5895 = !DILocation(line: 451, column: 3, scope: !5890)
!5896 = !DILocation(line: 452, column: 3, scope: !5890)
!5897 = !DILocation(line: 452, column: 7, scope: !5890)
!5898 = !DILocation(line: 452, column: 13, scope: !5890)
!5899 = !DILocation(line: 452, column: 17, scope: !5890)
!5900 = !DILocation(line: 453, column: 18, scope: !5890)
!5901 = !DILocation(line: 453, column: 22, scope: !5890)
!5902 = !DILocation(line: 453, column: 3, scope: !5890)
!5903 = !DILocation(line: 454, column: 3, scope: !5890)
!5904 = !DILocation(line: 454, column: 7, scope: !5890)
!5905 = !DILocation(line: 454, column: 27, scope: !5890)
!5906 = !DILocation(line: 455, column: 20, scope: !5890)
!5907 = !DILocation(line: 455, column: 24, scope: !5890)
!5908 = !DILocation(line: 455, column: 3, scope: !5890)
!5909 = !DILocation(line: 456, column: 3, scope: !5890)
!5910 = !DILocation(line: 462, column: 21, scope: !5890)
!5911 = !DILocation(line: 462, column: 3, scope: !5890)
!5912 = !DILocation(line: 463, column: 18, scope: !5890)
!5913 = !DILocation(line: 463, column: 22, scope: !5890)
!5914 = !DILocation(line: 463, column: 3, scope: !5890)
!5915 = !DILocation(line: 464, column: 26, scope: !5890)
!5916 = !DILocation(line: 464, column: 30, scope: !5890)
!5917 = !DILocation(line: 464, column: 54, scope: !5890)
!5918 = !DILocation(line: 464, column: 53, scope: !5890)
!5919 = !DILocation(line: 464, column: 51, scope: !5890)
!5920 = !DILocation(line: 464, column: 3, scope: !5890)
!5921 = !DILocation(line: 465, column: 20, scope: !5890)
!5922 = !DILocation(line: 465, column: 24, scope: !5890)
!5923 = !DILocation(line: 465, column: 3, scope: !5890)
!5924 = !DILocation(line: 466, column: 3, scope: !5890)
!5925 = !DILocation(line: 468, column: 1, scope: !5831)
!5926 = distinct !DISubprogram(name: "blk_flush_policy", scope: !2, file: !2, line: 103, type: !5927, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5929)
!5927 = !DISubroutineType(types: !5928)
!5928 = !{!13, !381, !290}
!5929 = !{!5930, !5931, !5932}
!5930 = !DILocalVariable(name: "fflags", arg: 1, scope: !5926, file: !2, line: 103, type: !381)
!5931 = !DILocalVariable(name: "rq", arg: 2, scope: !5926, file: !2, line: 103, type: !290)
!5932 = !DILocalVariable(name: "policy", scope: !5926, file: !2, line: 105, type: !13)
!5933 = !DILocation(line: 103, column: 52, scope: !5926)
!5934 = !DILocation(line: 103, column: 76, scope: !5926)
!5935 = !DILocation(line: 105, column: 2, scope: !5926)
!5936 = !DILocation(line: 105, column: 15, scope: !5926)
!5937 = !DILocation(line: 107, column: 21, scope: !5938)
!5938 = distinct !DILexicalBlock(scope: !5926, file: !2, line: 107, column: 6)
!5939 = !DILocation(line: 107, column: 6, scope: !5938)
!5940 = !DILocation(line: 107, column: 6, scope: !5926)
!5941 = !DILocation(line: 108, column: 10, scope: !5938)
!5942 = !DILocation(line: 108, column: 3, scope: !5938)
!5943 = !DILocation(line: 110, column: 6, scope: !5944)
!5944 = distinct !DILexicalBlock(scope: !5926, file: !2, line: 110, column: 6)
!5945 = !DILocation(line: 110, column: 13, scope: !5944)
!5946 = !DILocation(line: 110, column: 6, scope: !5926)
!5947 = !DILocation(line: 111, column: 7, scope: !5948)
!5948 = distinct !DILexicalBlock(scope: !5949, file: !2, line: 111, column: 7)
!5949 = distinct !DILexicalBlock(scope: !5944, file: !2, line: 110, column: 39)
!5950 = !DILocation(line: 111, column: 11, scope: !5948)
!5951 = !DILocation(line: 111, column: 21, scope: !5948)
!5952 = !DILocation(line: 111, column: 7, scope: !5949)
!5953 = !DILocation(line: 112, column: 11, scope: !5948)
!5954 = !DILocation(line: 112, column: 4, scope: !5948)
!5955 = !DILocation(line: 113, column: 9, scope: !5956)
!5956 = distinct !DILexicalBlock(scope: !5949, file: !2, line: 113, column: 7)
!5957 = !DILocation(line: 113, column: 16, scope: !5956)
!5958 = !DILocation(line: 113, column: 43, scope: !5956)
!5959 = !DILocation(line: 114, column: 8, scope: !5956)
!5960 = !DILocation(line: 114, column: 12, scope: !5956)
!5961 = !DILocation(line: 114, column: 22, scope: !5956)
!5962 = !DILocation(line: 113, column: 7, scope: !5949)
!5963 = !DILocation(line: 115, column: 11, scope: !5956)
!5964 = !DILocation(line: 115, column: 4, scope: !5956)
!5965 = !DILocation(line: 116, column: 2, scope: !5949)
!5966 = !DILocation(line: 117, column: 9, scope: !5926)
!5967 = !DILocation(line: 118, column: 1, scope: !5926)
!5968 = !DILocation(line: 117, column: 2, scope: !5926)
!5969 = distinct !DISubprogram(name: "blk_get_flush_queue", scope: !2, file: !2, line: 98, type: !5970, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5972)
!5970 = !DISubroutineType(types: !5971)
!5971 = !{!445, !294, !483}
!5972 = !{!5973, !5974}
!5973 = !DILocalVariable(name: "q", arg: 1, scope: !5969, file: !2, line: 98, type: !294)
!5974 = !DILocalVariable(name: "ctx", arg: 2, scope: !5969, file: !2, line: 98, type: !483)
!5975 = !DILocation(line: 98, column: 43, scope: !5969)
!5976 = !DILocation(line: 98, column: 65, scope: !5969)
!5977 = !DILocation(line: 100, column: 26, scope: !5969)
!5978 = !DILocation(line: 100, column: 43, scope: !5969)
!5979 = !DILocation(line: 100, column: 9, scope: !5969)
!5980 = !DILocation(line: 100, column: 49, scope: !5969)
!5981 = !DILocation(line: 100, column: 2, scope: !5969)
!5982 = !DISubprogram(name: "blk_mq_end_request", scope: !161, file: !161, line: 825, type: !5983, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5983 = !DISubroutineType(types: !5984)
!5984 = !{null, !290, !453}
!5985 = distinct !DISubprogram(name: "blk_rq_init_flush", scope: !2, file: !2, line: 391, type: !5258, scopeLine: 392, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5986)
!5986 = !{!5987}
!5987 = !DILocalVariable(name: "rq", arg: 1, scope: !5985, file: !2, line: 391, type: !290)
!5988 = !DILocation(line: 391, column: 47, scope: !5985)
!5989 = !DILocation(line: 393, column: 2, scope: !5985)
!5990 = !DILocation(line: 393, column: 6, scope: !5985)
!5991 = !DILocation(line: 393, column: 12, scope: !5985)
!5992 = !DILocation(line: 393, column: 16, scope: !5985)
!5993 = !DILocation(line: 394, column: 2, scope: !5985)
!5994 = !DILocation(line: 394, column: 6, scope: !5985)
!5995 = !DILocation(line: 394, column: 15, scope: !5985)
!5996 = !DILocation(line: 395, column: 27, scope: !5985)
!5997 = !DILocation(line: 395, column: 31, scope: !5985)
!5998 = !DILocation(line: 395, column: 2, scope: !5985)
!5999 = !DILocation(line: 395, column: 6, scope: !5985)
!6000 = !DILocation(line: 395, column: 12, scope: !5985)
!6001 = !DILocation(line: 395, column: 25, scope: !5985)
!6002 = !DILocation(line: 396, column: 2, scope: !5985)
!6003 = !DILocation(line: 396, column: 6, scope: !5985)
!6004 = !DILocation(line: 396, column: 13, scope: !5985)
!6005 = !DILocation(line: 397, column: 1, scope: !5985)
!6006 = distinct !DISubprogram(name: "spin_lock_irq", scope: !6007, file: !6007, line: 374, type: !6008, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6010)
!6007 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!6008 = !DISubroutineType(types: !6009)
!6009 = !{null, !2510}
!6010 = !{!6011}
!6011 = !DILocalVariable(name: "lock", arg: 1, scope: !6006, file: !6007, line: 374, type: !2510)
!6012 = !DILocation(line: 374, column: 55, scope: !6006)
!6013 = !DILocation(line: 376, column: 2, scope: !6006)
!6014 = !DILocation(line: 377, column: 1, scope: !6006)
!6015 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !6007, file: !6007, line: 399, type: !6008, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6016)
!6016 = !{!6017}
!6017 = !DILocalVariable(name: "lock", arg: 1, scope: !6015, file: !6007, line: 399, type: !2510)
!6018 = !DILocation(line: 399, column: 57, scope: !6015)
!6019 = !DILocation(line: 401, column: 2, scope: !6015)
!6020 = !DILocation(line: 402, column: 1, scope: !6015)
!6021 = distinct !DISubprogram(name: "blk_flush_complete_seq", scope: !2, file: !2, line: 163, type: !6022, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6024)
!6022 = !DISubroutineType(types: !6023)
!6023 = !{null, !290, !445, !13, !453}
!6024 = !{!6025, !6026, !6027, !6028, !6029, !6030, !6031}
!6025 = !DILocalVariable(name: "rq", arg: 1, scope: !6021, file: !2, line: 163, type: !290)
!6026 = !DILocalVariable(name: "fq", arg: 2, scope: !6021, file: !2, line: 164, type: !445)
!6027 = !DILocalVariable(name: "seq", arg: 3, scope: !6021, file: !2, line: 165, type: !13)
!6028 = !DILocalVariable(name: "error", arg: 4, scope: !6021, file: !2, line: 165, type: !453)
!6029 = !DILocalVariable(name: "q", scope: !6021, file: !2, line: 167, type: !294)
!6030 = !DILocalVariable(name: "pending", scope: !6021, file: !2, line: 168, type: !378)
!6031 = !DILocalVariable(name: "cmd_flags", scope: !6021, file: !2, line: 169, type: !284)
!6032 = !DILocation(line: 163, column: 52, scope: !6021)
!6033 = !DILocation(line: 164, column: 32, scope: !6021)
!6034 = !DILocation(line: 165, column: 21, scope: !6021)
!6035 = !DILocation(line: 165, column: 39, scope: !6021)
!6036 = !DILocation(line: 167, column: 2, scope: !6021)
!6037 = !DILocation(line: 167, column: 24, scope: !6021)
!6038 = !DILocation(line: 167, column: 28, scope: !6021)
!6039 = !DILocation(line: 167, column: 32, scope: !6021)
!6040 = !DILocation(line: 168, column: 2, scope: !6021)
!6041 = !DILocation(line: 168, column: 20, scope: !6021)
!6042 = !DILocation(line: 168, column: 31, scope: !6021)
!6043 = !DILocation(line: 168, column: 35, scope: !6021)
!6044 = !DILocation(line: 168, column: 47, scope: !6021)
!6045 = !DILocation(line: 168, column: 51, scope: !6021)
!6046 = !DILocation(line: 169, column: 2, scope: !6021)
!6047 = !DILocation(line: 169, column: 12, scope: !6021)
!6048 = !DILocation(line: 171, column: 2, scope: !6021)
!6049 = !DILocation(line: 171, column: 2, scope: !6050)
!6050 = distinct !DILexicalBlock(scope: !6051, file: !2, line: 171, column: 2)
!6051 = distinct !DILexicalBlock(scope: !6021, file: !2, line: 171, column: 2)
!6052 = !DILocation(line: 171, column: 2, scope: !6051)
!6053 = !DILocation(line: 171, column: 2, scope: !6054)
!6054 = distinct !DILexicalBlock(scope: !6050, file: !2, line: 171, column: 2)
!6055 = !DILocation(line: 171, column: 2, scope: !6056)
!6056 = distinct !DILexicalBlock(scope: !6054, file: !2, line: 171, column: 2)
!6057 = !DILocation(line: 171, column: 2, scope: !6058)
!6058 = distinct !DILexicalBlock(scope: !6054, file: !2, line: 171, column: 2)
!6059 = !{i64 2156166245, i64 2156166274, i64 2156166320, i64 2156166378, i64 2156166432, i64 2156166486, i64 2156166541, i64 2156166572}
!6060 = !DILocation(line: 172, column: 19, scope: !6021)
!6061 = !DILocation(line: 172, column: 2, scope: !6021)
!6062 = !DILocation(line: 172, column: 6, scope: !6021)
!6063 = !DILocation(line: 172, column: 12, scope: !6021)
!6064 = !DILocation(line: 172, column: 16, scope: !6021)
!6065 = !DILocation(line: 173, column: 14, scope: !6021)
!6066 = !DILocation(line: 173, column: 18, scope: !6021)
!6067 = !DILocation(line: 173, column: 12, scope: !6021)
!6068 = !DILocation(line: 175, column: 6, scope: !6069)
!6069 = distinct !DILexicalBlock(scope: !6021, file: !2, line: 175, column: 6)
!6070 = !DILocation(line: 175, column: 6, scope: !6021)
!6071 = !DILocation(line: 176, column: 27, scope: !6069)
!6072 = !DILocation(line: 176, column: 9, scope: !6069)
!6073 = !DILocation(line: 176, column: 7, scope: !6069)
!6074 = !DILocation(line: 176, column: 3, scope: !6069)
!6075 = !DILocation(line: 178, column: 7, scope: !6069)
!6076 = !DILocation(line: 180, column: 10, scope: !6021)
!6077 = !DILocation(line: 180, column: 2, scope: !6021)
!6078 = !DILocation(line: 184, column: 18, scope: !6079)
!6079 = distinct !DILexicalBlock(scope: !6080, file: !2, line: 184, column: 7)
!6080 = distinct !DILexicalBlock(scope: !6021, file: !2, line: 180, column: 15)
!6081 = !DILocation(line: 184, column: 7, scope: !6079)
!6082 = !DILocation(line: 184, column: 7, scope: !6080)
!6083 = !DILocation(line: 185, column: 30, scope: !6079)
!6084 = !DILocation(line: 185, column: 4, scope: !6079)
!6085 = !DILocation(line: 185, column: 8, scope: !6079)
!6086 = !DILocation(line: 185, column: 28, scope: !6079)
!6087 = !DILocation(line: 186, column: 18, scope: !6080)
!6088 = !DILocation(line: 186, column: 22, scope: !6080)
!6089 = !DILocation(line: 186, column: 33, scope: !6080)
!6090 = !DILocation(line: 186, column: 3, scope: !6080)
!6091 = !DILocation(line: 187, column: 3, scope: !6080)
!6092 = !DILocation(line: 190, column: 3, scope: !6080)
!6093 = !DILocation(line: 190, column: 7, scope: !6080)
!6094 = !DILocation(line: 190, column: 27, scope: !6080)
!6095 = !DILocation(line: 191, column: 14, scope: !6080)
!6096 = !DILocation(line: 191, column: 17, scope: !6080)
!6097 = !DILocation(line: 191, column: 3, scope: !6080)
!6098 = !DILocation(line: 192, column: 14, scope: !6080)
!6099 = !DILocation(line: 192, column: 18, scope: !6080)
!6100 = !DILocation(line: 192, column: 30, scope: !6080)
!6101 = !DILocation(line: 192, column: 33, scope: !6080)
!6102 = !DILocation(line: 192, column: 3, scope: !6080)
!6103 = !DILocation(line: 193, column: 16, scope: !6080)
!6104 = !DILocation(line: 193, column: 19, scope: !6080)
!6105 = !DILocation(line: 193, column: 3, scope: !6080)
!6106 = !DILocation(line: 194, column: 28, scope: !6080)
!6107 = !DILocation(line: 194, column: 3, scope: !6080)
!6108 = !DILocation(line: 195, column: 3, scope: !6080)
!6109 = !DILocation(line: 204, column: 18, scope: !6080)
!6110 = !DILocation(line: 204, column: 22, scope: !6080)
!6111 = !DILocation(line: 204, column: 3, scope: !6080)
!6112 = !DILocation(line: 205, column: 29, scope: !6080)
!6113 = !DILocation(line: 205, column: 3, scope: !6080)
!6114 = !DILocation(line: 206, column: 22, scope: !6080)
!6115 = !DILocation(line: 206, column: 26, scope: !6080)
!6116 = !DILocation(line: 206, column: 3, scope: !6080)
!6117 = !DILocation(line: 207, column: 3, scope: !6080)
!6118 = !DILocation(line: 210, column: 3, scope: !6080)
!6119 = !DILocation(line: 210, column: 3, scope: !6120)
!6120 = distinct !DILexicalBlock(scope: !6080, file: !2, line: 210, column: 3)
!6121 = !DILocation(line: 210, column: 3, scope: !6122)
!6122 = distinct !DILexicalBlock(scope: !6120, file: !2, line: 210, column: 3)
!6123 = !DILocation(line: 210, column: 3, scope: !6124)
!6124 = distinct !DILexicalBlock(scope: !6120, file: !2, line: 210, column: 3)
!6125 = !{i64 2156167157, i64 2156167186, i64 2156167232, i64 2156167290, i64 2156167344, i64 2156167398, i64 2156167453, i64 2156167484}
!6126 = !DILocation(line: 211, column: 2, scope: !6080)
!6127 = !DILocation(line: 213, column: 17, scope: !6021)
!6128 = !DILocation(line: 213, column: 20, scope: !6021)
!6129 = !DILocation(line: 213, column: 24, scope: !6021)
!6130 = !DILocation(line: 213, column: 2, scope: !6021)
!6131 = !DILocation(line: 214, column: 1, scope: !6021)
!6132 = distinct !DISubprogram(name: "blkdev_issue_flush", scope: !2, file: !2, line: 477, type: !6133, scopeLine: 478, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6135)
!6133 = !DISubroutineType(types: !6134)
!6134 = !{!95, !1517}
!6135 = !{!6136, !6137}
!6136 = !DILocalVariable(name: "bdev", arg: 1, scope: !6132, file: !2, line: 477, type: !1517)
!6137 = !DILocalVariable(name: "bio", scope: !6132, file: !2, line: 479, type: !1552)
!6138 = !DILocation(line: 477, column: 45, scope: !6132)
!6139 = !DILocation(line: 479, column: 2, scope: !6132)
!6140 = !DILocation(line: 479, column: 13, scope: !6132)
!6141 = !DILocation(line: 481, column: 17, scope: !6132)
!6142 = !DILocation(line: 481, column: 2, scope: !6132)
!6143 = !DILocation(line: 482, column: 9, scope: !6132)
!6144 = !DILocation(line: 483, column: 1, scope: !6132)
!6145 = !DILocation(line: 482, column: 2, scope: !6132)
!6146 = !DISubprogram(name: "bio_init", scope: !2548, file: !2548, line: 470, type: !6147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6147 = !DISubroutineType(types: !6148)
!6148 = !{null, !1551, !1517, !1589, !372, !284}
!6149 = !DISubprogram(name: "submit_bio_wait", scope: !2548, file: !2548, line: 469, type: !6150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6150 = !DISubroutineType(types: !6151)
!6151 = !{!95, !1551}
!6152 = distinct !DISubprogram(name: "blk_alloc_flush_queue", scope: !2, file: !2, line: 486, type: !6153, scopeLine: 488, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6155)
!6153 = !DISubroutineType(types: !6154)
!6154 = !{!445, !95, !95, !1347}
!6155 = !{!6156, !6157, !6158, !6159, !6160, !6161, !6162}
!6156 = !DILocalVariable(name: "node", arg: 1, scope: !6152, file: !2, line: 486, type: !95)
!6157 = !DILocalVariable(name: "cmd_size", arg: 2, scope: !6152, file: !2, line: 486, type: !95)
!6158 = !DILocalVariable(name: "flags", arg: 3, scope: !6152, file: !2, line: 487, type: !1347)
!6159 = !DILocalVariable(name: "fq", scope: !6152, file: !2, line: 489, type: !445)
!6160 = !DILocalVariable(name: "rq_sz", scope: !6152, file: !2, line: 490, type: !95)
!6161 = !DILabel(scope: !6152, name: "fail_rq", file: !2, line: 508)
!6162 = !DILabel(scope: !6152, name: "fail", file: !2, line: 510)
!6163 = !DILocation(line: 486, column: 51, scope: !6152)
!6164 = !DILocation(line: 486, column: 61, scope: !6152)
!6165 = !DILocation(line: 487, column: 18, scope: !6152)
!6166 = !DILocation(line: 489, column: 2, scope: !6152)
!6167 = !DILocation(line: 489, column: 26, scope: !6152)
!6168 = !DILocation(line: 490, column: 2, scope: !6152)
!6169 = !DILocation(line: 490, column: 6, scope: !6152)
!6170 = !DILocation(line: 492, column: 33, scope: !6152)
!6171 = !DILocation(line: 492, column: 40, scope: !6152)
!6172 = !DILocation(line: 492, column: 7, scope: !6152)
!6173 = !DILocation(line: 492, column: 5, scope: !6152)
!6174 = !DILocation(line: 493, column: 7, scope: !6175)
!6175 = distinct !DILexicalBlock(scope: !6152, file: !2, line: 493, column: 6)
!6176 = !DILocation(line: 493, column: 6, scope: !6152)
!6177 = !DILocation(line: 494, column: 3, scope: !6175)
!6178 = !DILocation(line: 496, column: 2, scope: !6152)
!6179 = !DILocation(line: 496, column: 2, scope: !6180)
!6180 = distinct !DILexicalBlock(scope: !6152, file: !2, line: 496, column: 2)
!6181 = !DILocation(line: 498, column: 10, scope: !6152)
!6182 = !DILocation(line: 498, column: 8, scope: !6152)
!6183 = !DILocation(line: 499, column: 30, scope: !6152)
!6184 = !DILocation(line: 499, column: 37, scope: !6152)
!6185 = !DILocation(line: 499, column: 44, scope: !6152)
!6186 = !DILocation(line: 499, column: 17, scope: !6152)
!6187 = !DILocation(line: 499, column: 2, scope: !6152)
!6188 = !DILocation(line: 499, column: 6, scope: !6152)
!6189 = !DILocation(line: 499, column: 15, scope: !6152)
!6190 = !DILocation(line: 500, column: 7, scope: !6191)
!6191 = distinct !DILexicalBlock(scope: !6152, file: !2, line: 500, column: 6)
!6192 = !DILocation(line: 500, column: 11, scope: !6191)
!6193 = !DILocation(line: 500, column: 6, scope: !6152)
!6194 = !DILocation(line: 501, column: 3, scope: !6191)
!6195 = !DILocation(line: 503, column: 18, scope: !6152)
!6196 = !DILocation(line: 503, column: 22, scope: !6152)
!6197 = !DILocation(line: 503, column: 2, scope: !6152)
!6198 = !DILocation(line: 504, column: 18, scope: !6152)
!6199 = !DILocation(line: 504, column: 22, scope: !6152)
!6200 = !DILocation(line: 504, column: 2, scope: !6152)
!6201 = !DILocation(line: 506, column: 9, scope: !6152)
!6202 = !DILocation(line: 506, column: 2, scope: !6152)
!6203 = !DILocation(line: 508, column: 2, scope: !6152)
!6204 = !DILocation(line: 509, column: 8, scope: !6152)
!6205 = !DILocation(line: 509, column: 2, scope: !6152)
!6206 = !DILocation(line: 510, column: 2, scope: !6152)
!6207 = !DILocation(line: 511, column: 2, scope: !6152)
!6208 = !DILocation(line: 512, column: 1, scope: !6152)
!6209 = distinct !DISubprogram(name: "kzalloc_node", scope: !274, file: !274, line: 730, type: !6210, scopeLine: 731, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6212)
!6210 = !DISubroutineType(types: !6211)
!6211 = !{!287, !593, !1347, !95}
!6212 = !{!6213, !6214, !6215}
!6213 = !DILocalVariable(name: "size", arg: 1, scope: !6209, file: !274, line: 730, type: !593)
!6214 = !DILocalVariable(name: "flags", arg: 2, scope: !6209, file: !274, line: 730, type: !1347)
!6215 = !DILocalVariable(name: "node", arg: 3, scope: !6209, file: !274, line: 730, type: !95)
!6216 = !DILocation(line: 730, column: 57, scope: !6209)
!6217 = !DILocation(line: 730, column: 69, scope: !6209)
!6218 = !DILocation(line: 730, column: 80, scope: !6209)
!6219 = !DILocation(line: 732, column: 22, scope: !6209)
!6220 = !DILocation(line: 732, column: 28, scope: !6209)
!6221 = !DILocation(line: 732, column: 34, scope: !6209)
!6222 = !DILocation(line: 732, column: 48, scope: !6209)
!6223 = !DILocation(line: 732, column: 9, scope: !6209)
!6224 = !DILocation(line: 732, column: 2, scope: !6209)
!6225 = distinct !DISubprogram(name: "spinlock_check", scope: !6007, file: !6007, line: 324, type: !6226, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6229)
!6226 = !DISubroutineType(types: !6227)
!6227 = !{!6228, !2510}
!6228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!6229 = !{!6230}
!6230 = !DILocalVariable(name: "lock", arg: 1, scope: !6225, file: !6007, line: 324, type: !2510)
!6231 = !DILocation(line: 324, column: 67, scope: !6225)
!6232 = !DILocation(line: 326, column: 10, scope: !6225)
!6233 = !DILocation(line: 326, column: 16, scope: !6225)
!6234 = !DILocation(line: 326, column: 2, scope: !6225)
!6235 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !6236, file: !6236, line: 35, type: !6237, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6239)
!6236 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!6237 = !DISubroutineType(types: !6238)
!6238 = !{null, !378}
!6239 = !{!6240}
!6240 = !DILocalVariable(name: "list", arg: 1, scope: !6235, file: !6236, line: 35, type: !378)
!6241 = !DILocation(line: 35, column: 53, scope: !6235)
!6242 = !DILocation(line: 37, column: 2, scope: !6235)
!6243 = !DILocation(line: 37, column: 2, scope: !6244)
!6244 = distinct !DILexicalBlock(scope: !6235, file: !6236, line: 37, column: 2)
!6245 = !DILocation(line: 37, column: 2, scope: !6246)
!6246 = distinct !DILexicalBlock(scope: !6244, file: !6236, line: 37, column: 2)
!6247 = !DILocation(line: 37, column: 2, scope: !6248)
!6248 = distinct !DILexicalBlock(scope: !6244, file: !6236, line: 37, column: 2)
!6249 = !DILocation(line: 38, column: 2, scope: !6235)
!6250 = !DILocation(line: 38, column: 2, scope: !6251)
!6251 = distinct !DILexicalBlock(scope: !6235, file: !6236, line: 38, column: 2)
!6252 = !DILocation(line: 38, column: 2, scope: !6253)
!6253 = distinct !DILexicalBlock(scope: !6251, file: !6236, line: 38, column: 2)
!6254 = !DILocation(line: 38, column: 2, scope: !6255)
!6255 = distinct !DILexicalBlock(scope: !6251, file: !6236, line: 38, column: 2)
!6256 = !DILocation(line: 39, column: 1, scope: !6235)
!6257 = !DISubprogram(name: "kfree", scope: !274, file: !274, line: 227, type: !6258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6258 = !DISubroutineType(types: !6259)
!6259 = !{null, !2342}
!6260 = distinct !DISubprogram(name: "blk_free_flush_queue", scope: !2, file: !2, line: 514, type: !6261, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6263)
!6261 = !DISubroutineType(types: !6262)
!6262 = !{null, !445}
!6263 = !{!6264}
!6264 = !DILocalVariable(name: "fq", arg: 1, scope: !6260, file: !2, line: 514, type: !445)
!6265 = !DILocation(line: 514, column: 51, scope: !6260)
!6266 = !DILocation(line: 517, column: 7, scope: !6267)
!6267 = distinct !DILexicalBlock(scope: !6260, file: !2, line: 517, column: 6)
!6268 = !DILocation(line: 517, column: 6, scope: !6260)
!6269 = !DILocation(line: 518, column: 3, scope: !6267)
!6270 = !DILocation(line: 520, column: 8, scope: !6260)
!6271 = !DILocation(line: 520, column: 12, scope: !6260)
!6272 = !DILocation(line: 520, column: 2, scope: !6260)
!6273 = !DILocation(line: 521, column: 8, scope: !6260)
!6274 = !DILocation(line: 521, column: 2, scope: !6260)
!6275 = !DILocation(line: 522, column: 1, scope: !6260)
!6276 = distinct !DISubprogram(name: "blk_mq_hctx_set_fq_lock_class", scope: !2, file: !2, line: 542, type: !6277, scopeLine: 544, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6280)
!6277 = !DISubroutineType(types: !6278)
!6278 = !{null, !325, !6279}
!6279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!6280 = !{!6281, !6282}
!6281 = !DILocalVariable(name: "hctx", arg: 1, scope: !6276, file: !2, line: 542, type: !325)
!6282 = !DILocalVariable(name: "key", arg: 2, scope: !6276, file: !2, line: 543, type: !6279)
!6283 = !DILocation(line: 542, column: 58, scope: !6276)
!6284 = !DILocation(line: 543, column: 26, scope: !6276)
!6285 = !DILocation(line: 545, column: 2, scope: !6276)
!6286 = !DILocation(line: 545, column: 2, scope: !6287)
!6287 = distinct !DILexicalBlock(scope: !6276, file: !2, line: 545, column: 2)
!6288 = !DILocation(line: 546, column: 1, scope: !6276)
!6289 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !6290, file: !6290, line: 32, type: !6291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6290 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!6291 = !DISubroutineType(types: !6292)
!6292 = !{!381, !6228}
!6293 = distinct !DISubprogram(name: "req_ref_put_and_test", scope: !447, file: !447, line: 506, type: !5661, scopeLine: 507, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6294)
!6294 = !{!6295, !6296, !6298}
!6295 = !DILocalVariable(name: "req", arg: 1, scope: !6293, file: !447, line: 506, type: !290)
!6296 = !DILocalVariable(name: "__ret_warn_on", scope: !6297, file: !447, line: 508, type: !95)
!6297 = distinct !DILexicalBlock(scope: !6293, file: !447, line: 508, column: 2)
!6298 = !DILocalVariable(name: "__flags", scope: !6299, file: !447, line: 508, type: !95)
!6299 = distinct !DILexicalBlock(scope: !6300, file: !447, line: 508, column: 2)
!6300 = distinct !DILexicalBlock(scope: !6297, file: !447, line: 508, column: 2)
!6301 = !DILocation(line: 506, column: 57, scope: !6293)
!6302 = !DILocation(line: 508, column: 2, scope: !6297)
!6303 = !DILocation(line: 508, column: 2, scope: !6300)
!6304 = !DILocation(line: 508, column: 2, scope: !6299)
!6305 = !DILocation(line: 508, column: 2, scope: !6306)
!6306 = distinct !DILexicalBlock(scope: !6299, file: !447, line: 508, column: 2)
!6307 = !DILocation(line: 508, column: 2, scope: !6308)
!6308 = distinct !DILexicalBlock(scope: !6299, file: !447, line: 508, column: 2)
!6309 = !{i64 2156048422, i64 2156048451, i64 2156048497, i64 2156048555, i64 2156048609, i64 2156048663, i64 2156048718, i64 2156048749, i64 2156049057, i64 2156049063, i64 2156049110, i64 2156049133, i64 2156049159}
!6310 = !DILocation(line: 508, column: 2, scope: !6311)
!6311 = distinct !DILexicalBlock(scope: !6299, file: !447, line: 508, column: 2)
!6312 = !DILocation(line: 508, column: 2, scope: !6293)
!6313 = !DILocation(line: 509, column: 30, scope: !6293)
!6314 = !DILocation(line: 509, column: 35, scope: !6293)
!6315 = !DILocation(line: 509, column: 9, scope: !6293)
!6316 = !DILocation(line: 509, column: 2, scope: !6293)
!6317 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !6007, file: !6007, line: 404, type: !6318, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6320)
!6318 = !DISubroutineType(types: !6319)
!6319 = !{null, !2510, !381}
!6320 = !{!6321, !6322, !6323, !6326}
!6321 = !DILocalVariable(name: "lock", arg: 1, scope: !6317, file: !6007, line: 404, type: !2510)
!6322 = !DILocalVariable(name: "flags", arg: 2, scope: !6317, file: !6007, line: 404, type: !381)
!6323 = !DILocalVariable(name: "__dummy", scope: !6324, file: !6007, line: 406, type: !381)
!6324 = distinct !DILexicalBlock(scope: !6325, file: !6007, line: 406, column: 2)
!6325 = distinct !DILexicalBlock(scope: !6317, file: !6007, line: 406, column: 2)
!6326 = !DILocalVariable(name: "__dummy2", scope: !6324, file: !6007, line: 406, type: !381)
!6327 = !DILocation(line: 404, column: 64, scope: !6317)
!6328 = !DILocation(line: 404, column: 84, scope: !6317)
!6329 = !DILocation(line: 406, column: 2, scope: !6317)
!6330 = !DILocation(line: 406, column: 2, scope: !6324)
!6331 = !DILocation(line: 406, column: 2, scope: !6325)
!6332 = !DILocation(line: 407, column: 1, scope: !6317)
!6333 = !DILocation(line: 139, column: 50, scope: !5605)
!6334 = !DILocation(line: 141, column: 2, scope: !5605)
!6335 = !DILocation(line: 141, column: 23, scope: !5605)
!6336 = !DILocation(line: 141, column: 30, scope: !5605)
!6337 = !DILocation(line: 141, column: 34, scope: !5605)
!6338 = !DILocation(line: 141, column: 37, scope: !5605)
!6339 = !DILocation(line: 141, column: 43, scope: !5605)
!6340 = !DILocation(line: 143, column: 2, scope: !5605)
!6341 = !DILocation(line: 143, column: 2, scope: !6342)
!6342 = distinct !DILexicalBlock(scope: !5605, file: !2, line: 143, column: 2)
!6343 = !{i64 2156115162}
!6344 = !DILocation(line: 144, column: 2, scope: !5605)
!6345 = !DILocation(line: 144, column: 2, scope: !5612)
!6346 = !DILocation(line: 144, column: 2, scope: !5611)
!6347 = !DILocation(line: 144, column: 2, scope: !5610)
!6348 = !DILocation(line: 144, column: 2, scope: !5615)
!6349 = !DILocation(line: 144, column: 2, scope: !6350)
!6350 = distinct !DILexicalBlock(scope: !6351, file: !2, line: 144, column: 2)
!6351 = distinct !DILexicalBlock(scope: !5615, file: !2, line: 144, column: 2)
!6352 = !{i64 2156124056}
!6353 = !DILocation(line: 144, column: 2, scope: !5620)
!6354 = !DILocation(line: 144, column: 2, scope: !5613)
!6355 = !DILocation(line: 144, column: 2, scope: !5619)
!6356 = !DILocation(line: 144, column: 2, scope: !5618)
!6357 = !DILocation(line: 144, column: 2, scope: !5617)
!6358 = !DILocation(line: 144, column: 2, scope: !5622)
!6359 = !DILocation(line: 144, column: 2, scope: !6360)
!6360 = distinct !DILexicalBlock(scope: !6361, file: !2, line: 144, column: 2)
!6361 = distinct !DILexicalBlock(scope: !5622, file: !2, line: 144, column: 2)
!6362 = !{i64 2156134675}
!6363 = !DILocation(line: 145, column: 2, scope: !5605)
!6364 = !DILocation(line: 145, column: 2, scope: !5626)
!6365 = !DILocation(line: 145, column: 2, scope: !5625)
!6366 = !DILocation(line: 145, column: 2, scope: !5624)
!6367 = !DILocation(line: 145, column: 2, scope: !5629)
!6368 = !DILocation(line: 145, column: 2, scope: !5632)
!6369 = !DILocation(line: 145, column: 2, scope: !5631)
!6370 = !{i64 2156147474}
!6371 = !DILocation(line: 145, column: 2, scope: !5638)
!6372 = !DILocation(line: 145, column: 2, scope: !5627)
!6373 = !DILocation(line: 145, column: 2, scope: !5637)
!6374 = !DILocation(line: 145, column: 2, scope: !5636)
!6375 = !DILocation(line: 145, column: 2, scope: !5635)
!6376 = !DILocation(line: 145, column: 2, scope: !5640)
!6377 = !DILocation(line: 145, column: 2, scope: !5643)
!6378 = !DILocation(line: 145, column: 2, scope: !5642)
!6379 = !{i64 2156163851}
!6380 = !DILocation(line: 147, column: 2, scope: !5605)
!6381 = !DILocation(line: 147, column: 2, scope: !6382)
!6382 = distinct !DILexicalBlock(scope: !5605, file: !2, line: 147, column: 2)
!6383 = !{i64 2156164169}
!6384 = !DILocation(line: 147, column: 2, scope: !6385)
!6385 = distinct !DILexicalBlock(scope: !6382, file: !2, line: 147, column: 2)
!6386 = !DILocation(line: 147, column: 2, scope: !6387)
!6387 = distinct !DILexicalBlock(scope: !6385, file: !2, line: 147, column: 2)
!6388 = !{i64 2156164351}
!6389 = !DILocation(line: 148, column: 1, scope: !5605)
!6390 = distinct !DISubprogram(name: "blk_mq_put_driver_tag", scope: !238, file: !238, line: 327, type: !5258, scopeLine: 328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6391)
!6391 = !{!6392}
!6392 = !DILocalVariable(name: "rq", arg: 1, scope: !6390, file: !238, line: 327, type: !290)
!6393 = !DILocation(line: 327, column: 58, scope: !6390)
!6394 = !DILocation(line: 329, column: 6, scope: !6395)
!6395 = distinct !DILexicalBlock(scope: !6390, file: !238, line: 329, column: 6)
!6396 = !DILocation(line: 329, column: 10, scope: !6395)
!6397 = !DILocation(line: 329, column: 14, scope: !6395)
!6398 = !DILocation(line: 329, column: 31, scope: !6395)
!6399 = !DILocation(line: 329, column: 34, scope: !6395)
!6400 = !DILocation(line: 329, column: 38, scope: !6395)
!6401 = !DILocation(line: 329, column: 51, scope: !6395)
!6402 = !DILocation(line: 329, column: 6, scope: !6390)
!6403 = !DILocation(line: 330, column: 3, scope: !6395)
!6404 = !DILocation(line: 332, column: 26, scope: !6390)
!6405 = !DILocation(line: 332, column: 30, scope: !6390)
!6406 = !DILocation(line: 332, column: 39, scope: !6390)
!6407 = !DILocation(line: 332, column: 2, scope: !6390)
!6408 = !DILocation(line: 333, column: 1, scope: !6390)
!6409 = distinct !DISubprogram(name: "blk_flush_cur_seq", scope: !2, file: !2, line: 120, type: !6410, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6412)
!6410 = !DISubroutineType(types: !6411)
!6411 = !{!13, !290}
!6412 = !{!6413}
!6413 = !DILocalVariable(name: "rq", arg: 1, scope: !6409, file: !2, line: 120, type: !290)
!6414 = !DILocation(line: 120, column: 55, scope: !6409)
!6415 = !DILocation(line: 122, column: 14, scope: !6409)
!6416 = !DILocation(line: 122, column: 11, scope: !6409)
!6417 = !DILocation(line: 122, column: 2, scope: !6409)
!6418 = distinct !DISubprogram(name: "list_del_init", scope: !6236, file: !6236, line: 285, type: !6237, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6419)
!6419 = !{!6420}
!6420 = !DILocalVariable(name: "entry", arg: 1, scope: !6418, file: !6236, line: 285, type: !378)
!6421 = !DILocation(line: 285, column: 52, scope: !6418)
!6422 = !DILocation(line: 287, column: 19, scope: !6418)
!6423 = !DILocation(line: 287, column: 2, scope: !6418)
!6424 = !DILocation(line: 288, column: 17, scope: !6418)
!6425 = !DILocation(line: 288, column: 2, scope: !6418)
!6426 = !DILocation(line: 289, column: 1, scope: !6418)
!6427 = distinct !DISubprogram(name: "atomic_read", scope: !6428, file: !6428, line: 30, type: !6429, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6433)
!6428 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6429 = !DISubroutineType(types: !6430)
!6430 = !{!95, !6431}
!6431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6432, size: 64)
!6432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !352)
!6433 = !{!6434}
!6434 = !DILocalVariable(name: "v", arg: 1, scope: !6427, file: !6428, line: 30, type: !6431)
!6435 = !DILocation(line: 30, column: 29, scope: !6427)
!6436 = !DILocation(line: 32, column: 25, scope: !6427)
!6437 = !DILocation(line: 32, column: 2, scope: !6427)
!6438 = !DILocation(line: 33, column: 25, scope: !6427)
!6439 = !DILocation(line: 33, column: 9, scope: !6427)
!6440 = !DILocation(line: 33, column: 2, scope: !6427)
!6441 = distinct !DISubprogram(name: "atomic_dec_and_test", scope: !6428, file: !6428, line: 1372, type: !6442, scopeLine: 1373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6445)
!6442 = !DISubroutineType(types: !6443)
!6443 = !{!470, !6444}
!6444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!6445 = !{!6446}
!6446 = !DILocalVariable(name: "v", arg: 1, scope: !6441, file: !6428, line: 1372, type: !6444)
!6447 = !DILocation(line: 1372, column: 31, scope: !6441)
!6448 = !DILocation(line: 1374, column: 2, scope: !6441)
!6449 = !DILocation(line: 1374, column: 2, scope: !6450)
!6450 = distinct !DILexicalBlock(scope: !6441, file: !6428, line: 1374, column: 2)
!6451 = !DILocation(line: 1375, column: 31, scope: !6441)
!6452 = !DILocation(line: 1375, column: 2, scope: !6441)
!6453 = !DILocation(line: 1376, column: 33, scope: !6441)
!6454 = !DILocation(line: 1376, column: 9, scope: !6441)
!6455 = !DILocation(line: 1376, column: 2, scope: !6441)
!6456 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6457, file: !6457, line: 66, type: !6458, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6463)
!6457 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6458 = !DISubroutineType(types: !6459)
!6459 = !{null, !6460, !593}
!6460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6461, size: 64)
!6461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6462)
!6462 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6463 = !{!6464, !6465}
!6464 = !DILocalVariable(name: "v", arg: 1, scope: !6456, file: !6457, line: 66, type: !6460)
!6465 = !DILocalVariable(name: "size", arg: 2, scope: !6456, file: !6457, line: 66, type: !593)
!6466 = !DILocation(line: 66, column: 73, scope: !6456)
!6467 = !DILocation(line: 66, column: 83, scope: !6456)
!6468 = !DILocation(line: 68, column: 19, scope: !6456)
!6469 = !DILocation(line: 68, column: 22, scope: !6456)
!6470 = !DILocation(line: 68, column: 2, scope: !6456)
!6471 = !DILocation(line: 69, column: 2, scope: !6456)
!6472 = !DILocation(line: 70, column: 1, scope: !6456)
!6473 = distinct !DISubprogram(name: "raw_atomic_read", scope: !6474, file: !6474, line: 442, type: !6429, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6475)
!6474 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6475 = !{!6476}
!6476 = !DILocalVariable(name: "v", arg: 1, scope: !6473, file: !6474, line: 442, type: !6431)
!6477 = !DILocation(line: 442, column: 33, scope: !6473)
!6478 = !DILocation(line: 444, column: 26, scope: !6473)
!6479 = !DILocation(line: 444, column: 9, scope: !6473)
!6480 = !DILocation(line: 444, column: 2, scope: !6473)
!6481 = distinct !DISubprogram(name: "kasan_check_read", scope: !6482, file: !6482, line: 40, type: !6483, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6485)
!6482 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6483 = !DISubroutineType(types: !6484)
!6484 = !{!470, !6460, !13}
!6485 = !{!6486, !6487}
!6486 = !DILocalVariable(name: "p", arg: 1, scope: !6481, file: !6482, line: 40, type: !6460)
!6487 = !DILocalVariable(name: "size", arg: 2, scope: !6481, file: !6482, line: 40, type: !13)
!6488 = !DILocation(line: 40, column: 58, scope: !6481)
!6489 = !DILocation(line: 40, column: 74, scope: !6481)
!6490 = !DILocation(line: 42, column: 2, scope: !6481)
!6491 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6492, file: !6492, line: 229, type: !6493, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6495)
!6492 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6493 = !DISubroutineType(types: !6494)
!6494 = !{null, !6460, !593, !95}
!6495 = !{!6496, !6497, !6498}
!6496 = !DILocalVariable(name: "ptr", arg: 1, scope: !6491, file: !6492, line: 229, type: !6460)
!6497 = !DILocalVariable(name: "size", arg: 2, scope: !6491, file: !6492, line: 229, type: !593)
!6498 = !DILocalVariable(name: "type", arg: 3, scope: !6491, file: !6492, line: 230, type: !95)
!6499 = !DILocation(line: 229, column: 60, scope: !6491)
!6500 = !DILocation(line: 229, column: 72, scope: !6491)
!6501 = !DILocation(line: 230, column: 15, scope: !6491)
!6502 = !DILocation(line: 230, column: 23, scope: !6491)
!6503 = distinct !DISubprogram(name: "arch_atomic_read", scope: !6504, file: !6504, line: 17, type: !6429, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6505)
!6504 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6505 = !{!6506}
!6506 = !DILocalVariable(name: "v", arg: 1, scope: !6503, file: !6504, line: 17, type: !6431)
!6507 = !DILocation(line: 17, column: 61, scope: !6503)
!6508 = !DILocation(line: 23, column: 9, scope: !6503)
!6509 = !DILocation(line: 23, column: 2, scope: !6503)
!6510 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6457, file: !6457, line: 94, type: !6458, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6511)
!6511 = !{!6512, !6513}
!6512 = !DILocalVariable(name: "v", arg: 1, scope: !6510, file: !6457, line: 94, type: !6460)
!6513 = !DILocalVariable(name: "size", arg: 2, scope: !6510, file: !6457, line: 94, type: !593)
!6514 = !DILocation(line: 94, column: 79, scope: !6510)
!6515 = !DILocation(line: 94, column: 89, scope: !6510)
!6516 = !DILocation(line: 96, column: 20, scope: !6510)
!6517 = !DILocation(line: 96, column: 23, scope: !6510)
!6518 = !DILocation(line: 96, column: 2, scope: !6510)
!6519 = !DILocation(line: 97, column: 2, scope: !6510)
!6520 = !DILocation(line: 98, column: 1, scope: !6510)
!6521 = distinct !DISubprogram(name: "raw_atomic_dec_and_test", scope: !6474, file: !6474, line: 2254, type: !6442, scopeLine: 2255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6522)
!6522 = !{!6523}
!6523 = !DILocalVariable(name: "v", arg: 1, scope: !6521, file: !6474, line: 2254, type: !6444)
!6524 = !DILocation(line: 2254, column: 35, scope: !6521)
!6525 = !DILocation(line: 2257, column: 34, scope: !6521)
!6526 = !DILocation(line: 2257, column: 9, scope: !6521)
!6527 = !DILocation(line: 2257, column: 2, scope: !6521)
!6528 = distinct !DISubprogram(name: "kasan_check_write", scope: !6482, file: !6482, line: 44, type: !6483, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6529)
!6529 = !{!6530, !6531}
!6530 = !DILocalVariable(name: "p", arg: 1, scope: !6528, file: !6482, line: 44, type: !6460)
!6531 = !DILocalVariable(name: "size", arg: 2, scope: !6528, file: !6482, line: 44, type: !13)
!6532 = !DILocation(line: 44, column: 59, scope: !6528)
!6533 = !DILocation(line: 44, column: 75, scope: !6528)
!6534 = !DILocation(line: 46, column: 2, scope: !6528)
!6535 = distinct !DISubprogram(name: "arch_atomic_dec_and_test", scope: !6504, file: !6504, line: 65, type: !6442, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6536)
!6536 = !{!6537, !6538}
!6537 = !DILocalVariable(name: "v", arg: 1, scope: !6535, file: !6504, line: 65, type: !6444)
!6538 = !DILocalVariable(name: "c", scope: !6539, file: !6504, line: 67, type: !470)
!6539 = distinct !DILexicalBlock(scope: !6535, file: !6504, line: 67, column: 9)
!6540 = !DILocation(line: 65, column: 64, scope: !6535)
!6541 = !DILocation(line: 67, column: 9, scope: !6539)
!6542 = !{i64 2148798391, i64 2148798430, i64 2148798451, i64 2148798488, i64 2148798511, i64 2148798520, i64 2148798594}
!6543 = !{i8 0, i8 2}
!6544 = !DILocation(line: 67, column: 9, scope: !6535)
!6545 = !DILocation(line: 67, column: 2, scope: !6535)
!6546 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !6290, file: !6290, line: 43, type: !6547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6547 = !DISubroutineType(types: !6548)
!6548 = !{null, !6228, !381}
!6549 = distinct !DISubprogram(name: "__preempt_count_add", scope: !6550, file: !6550, line: 78, type: !3935, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6551)
!6550 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!6551 = !{!6552, !6553, !6555}
!6552 = !DILocalVariable(name: "val", arg: 1, scope: !6549, file: !6550, line: 78, type: !95)
!6553 = !DILocalVariable(name: "pao_ID__", scope: !6554, file: !6550, line: 80, type: !1065)
!6554 = distinct !DILexicalBlock(scope: !6549, file: !6550, line: 80, column: 2)
!6555 = !DILocalVariable(name: "pto_val__", scope: !6556, file: !6550, line: 80, type: !424)
!6556 = distinct !DILexicalBlock(scope: !6557, file: !6550, line: 80, column: 2)
!6557 = distinct !DILexicalBlock(scope: !6558, file: !6550, line: 80, column: 2)
!6558 = distinct !DILexicalBlock(scope: !6554, file: !6550, line: 80, column: 2)
!6559 = !DILocation(line: 78, column: 53, scope: !6549)
!6560 = !DILocation(line: 80, column: 2, scope: !6549)
!6561 = !DILocation(line: 80, column: 2, scope: !6554)
!6562 = !DILocation(line: 80, column: 2, scope: !6558)
!6563 = !DILocation(line: 80, column: 2, scope: !6564)
!6564 = distinct !DILexicalBlock(scope: !6558, file: !6550, line: 80, column: 2)
!6565 = !{i64 2149629125}
!6566 = !DILocation(line: 80, column: 2, scope: !6557)
!6567 = !DILocation(line: 80, column: 2, scope: !6568)
!6568 = distinct !DILexicalBlock(scope: !6557, file: !6550, line: 80, column: 2)
!6569 = !{i64 2149629420}
!6570 = !DILocation(line: 80, column: 2, scope: !6556)
!6571 = !{i64 2149630125}
!6572 = !DILocation(line: 81, column: 1, scope: !6549)
!6573 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !6574, file: !6574, line: 313, type: !6575, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6577)
!6574 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!6575 = !DISubroutineType(types: !6576)
!6576 = !{null, !509}
!6577 = !{!6578}
!6578 = !DILocalVariable(name: "op", arg: 1, scope: !6573, file: !6574, line: 313, type: !509)
!6579 = !DILocation(line: 313, column: 66, scope: !6573)
!6580 = !DILocation(line: 313, column: 72, scope: !6573)
!6581 = distinct !DISubprogram(name: "ktime_get_ns", scope: !6582, file: !6582, line: 152, type: !6583, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!6582 = !DIFile(filename: "./include/linux/timekeeping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f8a5b548f2f61d6d6461a10d2f09afe")
!6583 = !DISubroutineType(types: !6584)
!6584 = !{!696}
!6585 = !DILocation(line: 154, column: 21, scope: !6581)
!6586 = !DILocation(line: 154, column: 9, scope: !6581)
!6587 = !DILocation(line: 154, column: 2, scope: !6581)
!6588 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !6550, file: !6550, line: 93, type: !3278, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6589)
!6589 = !{!6590}
!6590 = !DILocalVariable(name: "c", scope: !6591, file: !6550, line: 95, type: !470)
!6591 = distinct !DILexicalBlock(scope: !6588, file: !6550, line: 95, column: 9)
!6592 = !DILocation(line: 95, column: 9, scope: !6591)
!6593 = !{i64 2149633481, i64 2149633574}
!6594 = !DILocation(line: 95, column: 9, scope: !6588)
!6595 = !DILocation(line: 95, column: 2, scope: !6588)
!6596 = distinct !DISubprogram(name: "ktime_to_ns", scope: !2955, file: !2955, line: 80, type: !6597, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6600)
!6597 = !DISubroutineType(types: !6598)
!6598 = !{!396, !6599}
!6599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2954)
!6600 = !{!6601}
!6601 = !DILocalVariable(name: "kt", arg: 1, scope: !6596, file: !2955, line: 80, type: !6599)
!6602 = !DILocation(line: 80, column: 45, scope: !6596)
!6603 = !DILocation(line: 82, column: 9, scope: !6596)
!6604 = !DILocation(line: 82, column: 2, scope: !6596)
!6605 = !DISubprogram(name: "ktime_get", scope: !6582, file: !6582, line: 67, type: !3040, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6606 = distinct !DISubprogram(name: "__blk_mq_put_driver_tag", scope: !238, file: !238, line: 315, type: !6607, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6609)
!6607 = !DISubroutineType(types: !6608)
!6608 = !{null, !325, !290}
!6609 = !{!6610, !6611}
!6610 = !DILocalVariable(name: "hctx", arg: 1, scope: !6606, file: !238, line: 315, type: !325)
!6611 = !DILocalVariable(name: "rq", arg: 2, scope: !6606, file: !238, line: 316, type: !290)
!6612 = !DILocation(line: 315, column: 66, scope: !6606)
!6613 = !DILocation(line: 316, column: 25, scope: !6606)
!6614 = !DILocation(line: 318, column: 17, scope: !6606)
!6615 = !DILocation(line: 318, column: 23, scope: !6606)
!6616 = !DILocation(line: 318, column: 29, scope: !6606)
!6617 = !DILocation(line: 318, column: 33, scope: !6606)
!6618 = !DILocation(line: 318, column: 41, scope: !6606)
!6619 = !DILocation(line: 318, column: 45, scope: !6606)
!6620 = !DILocation(line: 318, column: 2, scope: !6606)
!6621 = !DILocation(line: 319, column: 2, scope: !6606)
!6622 = !DILocation(line: 319, column: 6, scope: !6606)
!6623 = !DILocation(line: 319, column: 10, scope: !6606)
!6624 = !DILocation(line: 321, column: 6, scope: !6625)
!6625 = distinct !DILexicalBlock(scope: !6606, file: !238, line: 321, column: 6)
!6626 = !DILocation(line: 321, column: 10, scope: !6625)
!6627 = !DILocation(line: 321, column: 19, scope: !6625)
!6628 = !DILocation(line: 321, column: 6, scope: !6606)
!6629 = !DILocation(line: 322, column: 3, scope: !6630)
!6630 = distinct !DILexicalBlock(scope: !6625, file: !238, line: 321, column: 38)
!6631 = !DILocation(line: 322, column: 7, scope: !6630)
!6632 = !DILocation(line: 322, column: 16, scope: !6630)
!6633 = !DILocation(line: 323, column: 32, scope: !6630)
!6634 = !DILocation(line: 323, column: 3, scope: !6630)
!6635 = !DILocation(line: 324, column: 2, scope: !6630)
!6636 = !DILocation(line: 325, column: 1, scope: !6606)
!6637 = !DISubprogram(name: "blk_mq_put_tag", scope: !238, file: !238, line: 173, type: !6638, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6638 = !DISubroutineType(types: !6639)
!6639 = !{null, !5172, !483, !13}
!6640 = distinct !DISubprogram(name: "__blk_mq_dec_active_requests", scope: !238, file: !238, line: 304, type: !5216, scopeLine: 305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6641)
!6641 = !{!6642}
!6642 = !DILocalVariable(name: "hctx", arg: 1, scope: !6640, file: !238, line: 304, type: !325)
!6643 = !DILocation(line: 304, column: 71, scope: !6640)
!6644 = !DILocation(line: 306, column: 31, scope: !6640)
!6645 = !DILocation(line: 306, column: 2, scope: !6640)
!6646 = !DILocation(line: 307, column: 1, scope: !6640)
!6647 = distinct !DISubprogram(name: "__blk_mq_sub_active_requests", scope: !238, file: !238, line: 295, type: !6648, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6650)
!6648 = !DISubroutineType(types: !6649)
!6649 = !{null, !325, !95}
!6650 = !{!6651, !6652}
!6651 = !DILocalVariable(name: "hctx", arg: 1, scope: !6647, file: !238, line: 295, type: !325)
!6652 = !DILocalVariable(name: "val", arg: 2, scope: !6647, file: !238, line: 296, type: !95)
!6653 = !DILocation(line: 295, column: 71, scope: !6647)
!6654 = !DILocation(line: 296, column: 7, scope: !6647)
!6655 = !DILocation(line: 298, column: 28, scope: !6656)
!6656 = distinct !DILexicalBlock(scope: !6647, file: !238, line: 298, column: 6)
!6657 = !DILocation(line: 298, column: 34, scope: !6656)
!6658 = !DILocation(line: 298, column: 6, scope: !6656)
!6659 = !DILocation(line: 298, column: 6, scope: !6647)
!6660 = !DILocation(line: 299, column: 14, scope: !6656)
!6661 = !DILocation(line: 299, column: 20, scope: !6656)
!6662 = !DILocation(line: 299, column: 26, scope: !6656)
!6663 = !DILocation(line: 299, column: 33, scope: !6656)
!6664 = !DILocation(line: 299, column: 3, scope: !6656)
!6665 = !DILocation(line: 301, column: 14, scope: !6656)
!6666 = !DILocation(line: 301, column: 20, scope: !6656)
!6667 = !DILocation(line: 301, column: 26, scope: !6656)
!6668 = !DILocation(line: 301, column: 3, scope: !6656)
!6669 = !DILocation(line: 302, column: 1, scope: !6647)
!6670 = distinct !DISubprogram(name: "blk_mq_is_shared_tags", scope: !238, file: !238, line: 217, type: !6671, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6673)
!6671 = !DISubroutineType(types: !6672)
!6672 = !{!470, !13}
!6673 = !{!6674}
!6674 = !DILocalVariable(name: "flags", arg: 1, scope: !6670, file: !238, line: 217, type: !13)
!6675 = !DILocation(line: 217, column: 55, scope: !6670)
!6676 = !DILocation(line: 219, column: 9, scope: !6670)
!6677 = !DILocation(line: 219, column: 15, scope: !6670)
!6678 = !DILocation(line: 219, column: 2, scope: !6670)
!6679 = distinct !DISubprogram(name: "atomic_sub", scope: !6428, file: !6428, line: 268, type: !6680, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6682)
!6680 = !DISubroutineType(types: !6681)
!6681 = !{null, !95, !6444}
!6682 = !{!6683, !6684}
!6683 = !DILocalVariable(name: "i", arg: 1, scope: !6679, file: !6428, line: 268, type: !95)
!6684 = !DILocalVariable(name: "v", arg: 2, scope: !6679, file: !6428, line: 268, type: !6444)
!6685 = !DILocation(line: 268, column: 16, scope: !6679)
!6686 = !DILocation(line: 268, column: 29, scope: !6679)
!6687 = !DILocation(line: 270, column: 31, scope: !6679)
!6688 = !DILocation(line: 270, column: 2, scope: !6679)
!6689 = !DILocation(line: 271, column: 17, scope: !6679)
!6690 = !DILocation(line: 271, column: 20, scope: !6679)
!6691 = !DILocation(line: 271, column: 2, scope: !6679)
!6692 = !DILocation(line: 272, column: 1, scope: !6679)
!6693 = distinct !DISubprogram(name: "raw_atomic_sub", scope: !6474, file: !6474, line: 754, type: !6680, scopeLine: 755, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6694)
!6694 = !{!6695, !6696}
!6695 = !DILocalVariable(name: "i", arg: 1, scope: !6693, file: !6474, line: 754, type: !95)
!6696 = !DILocalVariable(name: "v", arg: 2, scope: !6693, file: !6474, line: 754, type: !6444)
!6697 = !DILocation(line: 754, column: 20, scope: !6693)
!6698 = !DILocation(line: 754, column: 33, scope: !6693)
!6699 = !DILocation(line: 756, column: 18, scope: !6693)
!6700 = !DILocation(line: 756, column: 21, scope: !6693)
!6701 = !DILocation(line: 756, column: 2, scope: !6693)
!6702 = !DILocation(line: 757, column: 1, scope: !6693)
!6703 = distinct !DISubprogram(name: "arch_atomic_sub", scope: !6504, file: !6504, line: 38, type: !6680, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6704)
!6704 = !{!6705, !6706}
!6705 = !DILocalVariable(name: "i", arg: 1, scope: !6703, file: !6504, line: 38, type: !95)
!6706 = !DILocalVariable(name: "v", arg: 2, scope: !6703, file: !6504, line: 38, type: !6444)
!6707 = !DILocation(line: 38, column: 49, scope: !6703)
!6708 = !DILocation(line: 38, column: 62, scope: !6703)
!6709 = !DILocation(line: 41, column: 16, scope: !6703)
!6710 = !DILocation(line: 41, column: 19, scope: !6703)
!6711 = !DILocation(line: 42, column: 16, scope: !6703)
!6712 = !DILocation(line: 40, column: 2, scope: !6703)
!6713 = !{i64 2148793914, i64 2148793953, i64 2148793974, i64 2148794011, i64 2148794034, i64 2148793904}
!6714 = !DILocation(line: 43, column: 1, scope: !6703)
!6715 = distinct !DISubprogram(name: "variable_ffz", scope: !6716, file: !6716, line: 269, type: !6717, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6719)
!6716 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6717 = !DISubroutineType(types: !6718)
!6718 = !{!381, !381}
!6719 = !{!6720}
!6720 = !DILocalVariable(name: "word", arg: 1, scope: !6715, file: !6716, line: 269, type: !381)
!6721 = !DILocation(line: 269, column: 65, scope: !6715)
!6722 = !DILocation(line: 273, column: 11, scope: !6715)
!6723 = !DILocation(line: 273, column: 10, scope: !6715)
!6724 = !DILocation(line: 271, column: 2, scope: !6715)
!6725 = !{i64 309729}
!6726 = !DILocation(line: 274, column: 9, scope: !6715)
!6727 = !DILocation(line: 274, column: 2, scope: !6715)
!6728 = distinct !DISubprogram(name: "__list_del_entry", scope: !6236, file: !6236, line: 213, type: !6237, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6729)
!6729 = !{!6730}
!6730 = !DILocalVariable(name: "entry", arg: 1, scope: !6728, file: !6236, line: 213, type: !378)
!6731 = !DILocation(line: 213, column: 55, scope: !6728)
!6732 = !DILocation(line: 215, column: 30, scope: !6733)
!6733 = distinct !DILexicalBlock(scope: !6728, file: !6236, line: 215, column: 6)
!6734 = !DILocation(line: 215, column: 7, scope: !6733)
!6735 = !DILocation(line: 215, column: 6, scope: !6728)
!6736 = !DILocation(line: 216, column: 3, scope: !6733)
!6737 = !DILocation(line: 218, column: 13, scope: !6728)
!6738 = !DILocation(line: 218, column: 20, scope: !6728)
!6739 = !DILocation(line: 218, column: 26, scope: !6728)
!6740 = !DILocation(line: 218, column: 33, scope: !6728)
!6741 = !DILocation(line: 218, column: 2, scope: !6728)
!6742 = !DILocation(line: 219, column: 1, scope: !6728)
!6743 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !6236, file: !6236, line: 134, type: !6744, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6746)
!6744 = !DISubroutineType(types: !6745)
!6745 = !{!470, !378}
!6746 = !{!6747}
!6747 = !DILocalVariable(name: "entry", arg: 1, scope: !6743, file: !6236, line: 134, type: !378)
!6748 = !DILocation(line: 134, column: 61, scope: !6743)
!6749 = !DILocation(line: 136, column: 2, scope: !6743)
!6750 = distinct !DISubprogram(name: "__list_del", scope: !6236, file: !6236, line: 193, type: !6751, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6753)
!6751 = !DISubroutineType(types: !6752)
!6752 = !{null, !378, !378}
!6753 = !{!6754, !6755}
!6754 = !DILocalVariable(name: "prev", arg: 1, scope: !6750, file: !6236, line: 193, type: !378)
!6755 = !DILocalVariable(name: "next", arg: 2, scope: !6750, file: !6236, line: 193, type: !378)
!6756 = !DILocation(line: 193, column: 50, scope: !6750)
!6757 = !DILocation(line: 193, column: 75, scope: !6750)
!6758 = !DILocation(line: 195, column: 15, scope: !6750)
!6759 = !DILocation(line: 195, column: 2, scope: !6750)
!6760 = !DILocation(line: 195, column: 8, scope: !6750)
!6761 = !DILocation(line: 195, column: 13, scope: !6750)
!6762 = !DILocation(line: 196, column: 2, scope: !6750)
!6763 = !DILocation(line: 196, column: 2, scope: !6764)
!6764 = distinct !DILexicalBlock(scope: !6750, file: !6236, line: 196, column: 2)
!6765 = !DILocation(line: 196, column: 2, scope: !6766)
!6766 = distinct !DILexicalBlock(scope: !6764, file: !6236, line: 196, column: 2)
!6767 = !DILocation(line: 196, column: 2, scope: !6768)
!6768 = distinct !DILexicalBlock(scope: !6764, file: !6236, line: 196, column: 2)
!6769 = !DILocation(line: 197, column: 1, scope: !6750)
!6770 = distinct !DISubprogram(name: "blk_rq_sectors", scope: !161, file: !161, line: 1060, type: !6771, scopeLine: 1061, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6775)
!6771 = !DISubroutineType(types: !6772)
!6772 = !{!13, !6773}
!6773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6774, size: 64)
!6774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !291)
!6775 = !{!6776}
!6776 = !DILocalVariable(name: "rq", arg: 1, scope: !6770, file: !161, line: 1060, type: !6773)
!6777 = !DILocation(line: 1060, column: 65, scope: !6770)
!6778 = !DILocation(line: 1062, column: 22, scope: !6770)
!6779 = !DILocation(line: 1062, column: 9, scope: !6770)
!6780 = !DILocation(line: 1062, column: 26, scope: !6770)
!6781 = !DILocation(line: 1062, column: 2, scope: !6770)
!6782 = distinct !DISubprogram(name: "blk_rq_bytes", scope: !161, file: !161, line: 1046, type: !6771, scopeLine: 1047, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6783)
!6783 = !{!6784}
!6784 = !DILocalVariable(name: "rq", arg: 1, scope: !6782, file: !161, line: 1046, type: !6773)
!6785 = !DILocation(line: 1046, column: 63, scope: !6782)
!6786 = !DILocation(line: 1048, column: 9, scope: !6782)
!6787 = !DILocation(line: 1048, column: 13, scope: !6782)
!6788 = !DILocation(line: 1048, column: 2, scope: !6782)
!6789 = distinct !DISubprogram(name: "blk_mq_map_queue", scope: !238, file: !238, line: 105, type: !6790, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6792)
!6790 = !DISubroutineType(types: !6791)
!6791 = !{!325, !294, !284, !483}
!6792 = !{!6793, !6794, !6795}
!6793 = !DILocalVariable(name: "q", arg: 1, scope: !6789, file: !238, line: 105, type: !294)
!6794 = !DILocalVariable(name: "opf", arg: 2, scope: !6789, file: !238, line: 106, type: !284)
!6795 = !DILocalVariable(name: "ctx", arg: 3, scope: !6789, file: !238, line: 107, type: !483)
!6796 = !DILocation(line: 105, column: 76, scope: !6789)
!6797 = !DILocation(line: 106, column: 22, scope: !6789)
!6798 = !DILocation(line: 107, column: 31, scope: !6789)
!6799 = !DILocation(line: 109, column: 9, scope: !6789)
!6800 = !DILocation(line: 109, column: 14, scope: !6789)
!6801 = !DILocation(line: 109, column: 41, scope: !6789)
!6802 = !DILocation(line: 109, column: 20, scope: !6789)
!6803 = !DILocation(line: 109, column: 2, scope: !6789)
!6804 = distinct !DISubprogram(name: "blk_mq_get_hctx_type", scope: !238, file: !238, line: 85, type: !6805, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6807)
!6805 = !DISubroutineType(types: !6806)
!6806 = !{!267, !284}
!6807 = !{!6808, !6809}
!6808 = !DILocalVariable(name: "opf", arg: 1, scope: !6804, file: !238, line: 85, type: !284)
!6809 = !DILocalVariable(name: "type", scope: !6804, file: !238, line: 87, type: !267)
!6810 = !DILocation(line: 85, column: 61, scope: !6804)
!6811 = !DILocation(line: 87, column: 2, scope: !6804)
!6812 = !DILocation(line: 87, column: 17, scope: !6804)
!6813 = !DILocation(line: 92, column: 6, scope: !6814)
!6814 = distinct !DILexicalBlock(scope: !6804, file: !238, line: 92, column: 6)
!6815 = !DILocation(line: 92, column: 10, scope: !6814)
!6816 = !DILocation(line: 92, column: 6, scope: !6804)
!6817 = !DILocation(line: 93, column: 8, scope: !6814)
!6818 = !DILocation(line: 93, column: 3, scope: !6814)
!6819 = !DILocation(line: 94, column: 12, scope: !6820)
!6820 = distinct !DILexicalBlock(scope: !6814, file: !238, line: 94, column: 11)
!6821 = !DILocation(line: 94, column: 16, scope: !6820)
!6822 = !DILocation(line: 94, column: 31, scope: !6820)
!6823 = !DILocation(line: 94, column: 11, scope: !6814)
!6824 = !DILocation(line: 95, column: 8, scope: !6820)
!6825 = !DILocation(line: 95, column: 3, scope: !6820)
!6826 = !DILocation(line: 96, column: 9, scope: !6804)
!6827 = !DILocation(line: 97, column: 1, scope: !6804)
!6828 = !DILocation(line: 96, column: 2, scope: !6804)
!6829 = distinct !DISubprogram(name: "mq_flush_data_end_io", scope: !2, file: !2, line: 359, type: !5579, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6830)
!6830 = !{!6831, !6832, !6833, !6834, !6835, !6836, !6837, !6838, !6842, !6845, !6849}
!6831 = !DILocalVariable(name: "rq", arg: 1, scope: !6829, file: !2, line: 359, type: !290)
!6832 = !DILocalVariable(name: "error", arg: 2, scope: !6829, file: !2, line: 360, type: !453)
!6833 = !DILocalVariable(name: "q", scope: !6829, file: !2, line: 362, type: !294)
!6834 = !DILocalVariable(name: "hctx", scope: !6829, file: !2, line: 363, type: !325)
!6835 = !DILocalVariable(name: "ctx", scope: !6829, file: !2, line: 364, type: !483)
!6836 = !DILocalVariable(name: "flags", scope: !6829, file: !2, line: 365, type: !381)
!6837 = !DILocalVariable(name: "fq", scope: !6829, file: !2, line: 366, type: !445)
!6838 = !DILocalVariable(name: "__ret_warn_on", scope: !6839, file: !2, line: 369, type: !95)
!6839 = distinct !DILexicalBlock(scope: !6840, file: !2, line: 369, column: 3)
!6840 = distinct !DILexicalBlock(scope: !6841, file: !2, line: 368, column: 19)
!6841 = distinct !DILexicalBlock(scope: !6829, file: !2, line: 368, column: 6)
!6842 = !DILocalVariable(name: "__flags", scope: !6843, file: !2, line: 369, type: !95)
!6843 = distinct !DILexicalBlock(scope: !6844, file: !2, line: 369, column: 3)
!6844 = distinct !DILexicalBlock(scope: !6839, file: !2, line: 369, column: 3)
!6845 = !DILocalVariable(name: "__dummy", scope: !6846, file: !2, line: 377, type: !381)
!6846 = distinct !DILexicalBlock(scope: !6847, file: !2, line: 377, column: 2)
!6847 = distinct !DILexicalBlock(scope: !6848, file: !2, line: 377, column: 2)
!6848 = distinct !DILexicalBlock(scope: !6829, file: !2, line: 377, column: 2)
!6849 = !DILocalVariable(name: "__dummy2", scope: !6846, file: !2, line: 377, type: !381)
!6850 = !DILocation(line: 359, column: 64, scope: !6829)
!6851 = !DILocation(line: 360, column: 26, scope: !6829)
!6852 = !DILocation(line: 362, column: 2, scope: !6829)
!6853 = !DILocation(line: 362, column: 24, scope: !6829)
!6854 = !DILocation(line: 362, column: 28, scope: !6829)
!6855 = !DILocation(line: 362, column: 32, scope: !6829)
!6856 = !DILocation(line: 363, column: 2, scope: !6829)
!6857 = !DILocation(line: 363, column: 24, scope: !6829)
!6858 = !DILocation(line: 363, column: 31, scope: !6829)
!6859 = !DILocation(line: 363, column: 35, scope: !6829)
!6860 = !DILocation(line: 364, column: 2, scope: !6829)
!6861 = !DILocation(line: 364, column: 21, scope: !6829)
!6862 = !DILocation(line: 364, column: 27, scope: !6829)
!6863 = !DILocation(line: 364, column: 31, scope: !6829)
!6864 = !DILocation(line: 365, column: 2, scope: !6829)
!6865 = !DILocation(line: 365, column: 16, scope: !6829)
!6866 = !DILocation(line: 366, column: 2, scope: !6829)
!6867 = !DILocation(line: 366, column: 26, scope: !6829)
!6868 = !DILocation(line: 366, column: 51, scope: !6829)
!6869 = !DILocation(line: 366, column: 54, scope: !6829)
!6870 = !DILocation(line: 366, column: 31, scope: !6829)
!6871 = !DILocation(line: 368, column: 6, scope: !6841)
!6872 = !DILocation(line: 368, column: 9, scope: !6841)
!6873 = !DILocation(line: 368, column: 6, scope: !6829)
!6874 = !DILocation(line: 369, column: 3, scope: !6839)
!6875 = !DILocation(line: 369, column: 3, scope: !6844)
!6876 = !DILocation(line: 369, column: 3, scope: !6843)
!6877 = !DILocation(line: 369, column: 3, scope: !6878)
!6878 = distinct !DILexicalBlock(scope: !6843, file: !2, line: 369, column: 3)
!6879 = !DILocation(line: 369, column: 3, scope: !6880)
!6880 = distinct !DILexicalBlock(scope: !6843, file: !2, line: 369, column: 3)
!6881 = !{i64 2156180147, i64 2156180176, i64 2156180222, i64 2156180280, i64 2156180334, i64 2156180388, i64 2156180443, i64 2156180474, i64 2156180782, i64 2156180788, i64 2156180835, i64 2156180858, i64 2156180884}
!6882 = !DILocation(line: 369, column: 3, scope: !6883)
!6883 = distinct !DILexicalBlock(scope: !6843, file: !2, line: 369, column: 3)
!6884 = !DILocation(line: 369, column: 3, scope: !6840)
!6885 = !DILocation(line: 370, column: 25, scope: !6840)
!6886 = !DILocation(line: 370, column: 3, scope: !6840)
!6887 = !DILocation(line: 371, column: 2, scope: !6840)
!6888 = !DILocation(line: 377, column: 2, scope: !6829)
!6889 = !DILocation(line: 377, column: 2, scope: !6848)
!6890 = !DILocation(line: 377, column: 2, scope: !6846)
!6891 = !DILocation(line: 377, column: 2, scope: !6847)
!6892 = !DILocation(line: 378, column: 2, scope: !6829)
!6893 = !DILocation(line: 378, column: 6, scope: !6829)
!6894 = !DILocation(line: 378, column: 26, scope: !6829)
!6895 = !DILocation(line: 383, column: 18, scope: !6829)
!6896 = !DILocation(line: 383, column: 22, scope: !6829)
!6897 = !DILocation(line: 383, column: 2, scope: !6829)
!6898 = !DILocation(line: 384, column: 25, scope: !6829)
!6899 = !DILocation(line: 384, column: 29, scope: !6829)
!6900 = !DILocation(line: 384, column: 48, scope: !6829)
!6901 = !DILocation(line: 384, column: 2, scope: !6829)
!6902 = !DILocation(line: 385, column: 26, scope: !6829)
!6903 = !DILocation(line: 385, column: 30, scope: !6829)
!6904 = !DILocation(line: 385, column: 45, scope: !6829)
!6905 = !DILocation(line: 385, column: 2, scope: !6829)
!6906 = !DILocation(line: 387, column: 23, scope: !6829)
!6907 = !DILocation(line: 387, column: 2, scope: !6829)
!6908 = !DILocation(line: 389, column: 1, scope: !6829)
!6909 = !DILocation(line: 388, column: 2, scope: !6829)
!6910 = distinct !DISubprogram(name: "blk_mq_sched_restart", scope: !6911, file: !6911, line: 25, type: !5216, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6912)
!6911 = !DIFile(filename: "block/blk-mq-sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f6fceff3c7468ba9305f4c34ce22af0c")
!6912 = !{!6913}
!6913 = !DILocalVariable(name: "hctx", arg: 1, scope: !6910, file: !6911, line: 25, type: !325)
!6914 = !DILocation(line: 25, column: 63, scope: !6910)
!6915 = !DILocation(line: 27, column: 6, scope: !6916)
!6916 = distinct !DILexicalBlock(scope: !6910, file: !6911, line: 27, column: 6)
!6917 = !DILocation(line: 27, column: 6, scope: !6910)
!6918 = !DILocation(line: 28, column: 26, scope: !6916)
!6919 = !DILocation(line: 28, column: 3, scope: !6916)
!6920 = !DILocation(line: 29, column: 1, scope: !6910)
!6921 = distinct !DISubprogram(name: "const_test_bit", scope: !6922, file: !6922, line: 166, type: !6923, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6928)
!6922 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!6923 = !DISubroutineType(types: !6924)
!6924 = !{!470, !381, !6925}
!6925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6926, size: 64)
!6926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6927)
!6927 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !381)
!6928 = !{!6929, !6930, !6931, !6932, !6933}
!6929 = !DILocalVariable(name: "nr", arg: 1, scope: !6921, file: !6922, line: 166, type: !381)
!6930 = !DILocalVariable(name: "addr", arg: 2, scope: !6921, file: !6922, line: 166, type: !6925)
!6931 = !DILocalVariable(name: "p", scope: !6921, file: !6922, line: 168, type: !5590)
!6932 = !DILocalVariable(name: "mask", scope: !6921, file: !6922, line: 169, type: !381)
!6933 = !DILocalVariable(name: "val", scope: !6921, file: !6922, line: 170, type: !381)
!6934 = !DILocation(line: 166, column: 30, scope: !6921)
!6935 = !DILocation(line: 166, column: 64, scope: !6921)
!6936 = !DILocation(line: 168, column: 2, scope: !6921)
!6937 = !DILocation(line: 168, column: 23, scope: !6921)
!6938 = !DILocation(line: 168, column: 50, scope: !6921)
!6939 = !DILocation(line: 168, column: 57, scope: !6921)
!6940 = !DILocation(line: 168, column: 55, scope: !6921)
!6941 = !DILocation(line: 169, column: 2, scope: !6921)
!6942 = !DILocation(line: 169, column: 16, scope: !6921)
!6943 = !DILocation(line: 169, column: 23, scope: !6921)
!6944 = !DILocation(line: 170, column: 2, scope: !6921)
!6945 = !DILocation(line: 170, column: 16, scope: !6921)
!6946 = !DILocation(line: 170, column: 23, scope: !6921)
!6947 = !DILocation(line: 170, column: 22, scope: !6921)
!6948 = !DILocation(line: 172, column: 12, scope: !6921)
!6949 = !DILocation(line: 172, column: 18, scope: !6921)
!6950 = !DILocation(line: 172, column: 16, scope: !6921)
!6951 = !DILocation(line: 172, column: 10, scope: !6921)
!6952 = !DILocation(line: 172, column: 9, scope: !6921)
!6953 = !DILocation(line: 173, column: 1, scope: !6921)
!6954 = !DILocation(line: 172, column: 2, scope: !6921)
!6955 = distinct !DISubprogram(name: "_test_bit", scope: !6956, file: !6956, line: 139, type: !6923, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6957)
!6956 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!6957 = !{!6958, !6959}
!6958 = !DILocalVariable(name: "nr", arg: 1, scope: !6955, file: !6956, line: 139, type: !381)
!6959 = !DILocalVariable(name: "addr", arg: 2, scope: !6955, file: !6956, line: 139, type: !6925)
!6960 = !DILocation(line: 139, column: 25, scope: !6955)
!6961 = !DILocation(line: 139, column: 59, scope: !6955)
!6962 = !DILocation(line: 141, column: 25, scope: !6955)
!6963 = !DILocation(line: 141, column: 32, scope: !6955)
!6964 = !DILocation(line: 141, column: 30, scope: !6955)
!6965 = !DILocation(line: 141, column: 2, scope: !6955)
!6966 = !DILocation(line: 142, column: 23, scope: !6955)
!6967 = !DILocation(line: 142, column: 27, scope: !6955)
!6968 = !DILocation(line: 142, column: 9, scope: !6955)
!6969 = !DILocation(line: 142, column: 2, scope: !6955)
!6970 = !DISubprogram(name: "__blk_mq_sched_restart", scope: !6911, file: !6911, line: 17, type: !5216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6971 = distinct !DISubprogram(name: "arch_test_bit", scope: !6716, file: !6716, line: 237, type: !6923, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6972)
!6972 = !{!6973, !6974}
!6973 = !DILocalVariable(name: "nr", arg: 1, scope: !6971, file: !6716, line: 237, type: !381)
!6974 = !DILocalVariable(name: "addr", arg: 2, scope: !6971, file: !6716, line: 237, type: !6925)
!6975 = !DILocation(line: 237, column: 29, scope: !6971)
!6976 = !DILocation(line: 237, column: 63, scope: !6971)
!6977 = !DILocation(line: 239, column: 30, scope: !6971)
!6978 = !DILocation(line: 239, column: 9, scope: !6971)
!6979 = !DILocation(line: 239, column: 54, scope: !6971)
!6980 = !DILocation(line: 239, column: 58, scope: !6971)
!6981 = !DILocation(line: 239, column: 36, scope: !6971)
!6982 = !DILocation(line: 240, column: 26, scope: !6971)
!6983 = !DILocation(line: 240, column: 30, scope: !6971)
!6984 = !DILocation(line: 240, column: 8, scope: !6971)
!6985 = !DILocation(line: 239, column: 2, scope: !6971)
!6986 = distinct !DISubprogram(name: "constant_test_bit", scope: !6716, file: !6716, line: 204, type: !6987, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6989)
!6987 = !DISubroutineType(types: !6988)
!6988 = !{!470, !582, !6925}
!6989 = !{!6990, !6991}
!6990 = !DILocalVariable(name: "nr", arg: 1, scope: !6986, file: !6716, line: 204, type: !582)
!6991 = !DILocalVariable(name: "addr", arg: 2, scope: !6986, file: !6716, line: 204, type: !6925)
!6992 = !DILocation(line: 204, column: 52, scope: !6986)
!6993 = !DILocation(line: 204, column: 86, scope: !6986)
!6994 = !DILocation(line: 206, column: 19, scope: !6986)
!6995 = !DILocation(line: 206, column: 22, scope: !6986)
!6996 = !DILocation(line: 206, column: 15, scope: !6986)
!6997 = !DILocation(line: 207, column: 4, scope: !6986)
!6998 = !DILocation(line: 207, column: 9, scope: !6986)
!6999 = !DILocation(line: 207, column: 12, scope: !6986)
!7000 = !DILocation(line: 206, column: 44, scope: !6986)
!7001 = !DILocation(line: 207, column: 37, scope: !6986)
!7002 = !DILocation(line: 206, column: 2, scope: !6986)
!7003 = distinct !DISubprogram(name: "variable_test_bit", scope: !6716, file: !6716, line: 224, type: !6987, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7004)
!7004 = !{!7005, !7006, !7007}
!7005 = !DILocalVariable(name: "nr", arg: 1, scope: !7003, file: !6716, line: 224, type: !582)
!7006 = !DILocalVariable(name: "addr", arg: 2, scope: !7003, file: !6716, line: 224, type: !6925)
!7007 = !DILocalVariable(name: "oldbit", scope: !7003, file: !6716, line: 226, type: !470)
!7008 = !DILocation(line: 224, column: 52, scope: !7003)
!7009 = !DILocation(line: 224, column: 86, scope: !7003)
!7010 = !DILocation(line: 226, column: 2, scope: !7003)
!7011 = !DILocation(line: 226, column: 7, scope: !7003)
!7012 = !DILocation(line: 231, column: 33, scope: !7003)
!7013 = !DILocation(line: 231, column: 46, scope: !7003)
!7014 = !DILocation(line: 228, column: 2, scope: !7003)
!7015 = !{i64 2147814237, i64 2147814311}
!7016 = !DILocation(line: 233, column: 9, scope: !7003)
!7017 = !DILocation(line: 234, column: 1, scope: !7003)
!7018 = !DILocation(line: 233, column: 2, scope: !7003)
!7019 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !6290, file: !6290, line: 29, type: !7020, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7020 = !DISubroutineType(types: !7021)
!7021 = !{null, !6228}
!7022 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !6290, file: !6290, line: 41, type: !7020, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7023 = distinct !DISubprogram(name: "list_empty", scope: !6236, file: !6236, line: 371, type: !7024, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7028)
!7024 = !DISubroutineType(types: !7025)
!7025 = !{!95, !7026}
!7026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7027, size: 64)
!7027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !375)
!7028 = !{!7029}
!7029 = !DILocalVariable(name: "head", arg: 1, scope: !7023, file: !6236, line: 371, type: !7026)
!7030 = !DILocation(line: 371, column: 54, scope: !7023)
!7031 = !DILocation(line: 373, column: 9, scope: !7032)
!7032 = distinct !DILexicalBlock(scope: !7023, file: !6236, line: 373, column: 9)
!7033 = !DILocation(line: 373, column: 9, scope: !7034)
!7034 = distinct !DILexicalBlock(scope: !7032, file: !6236, line: 373, column: 9)
!7035 = !DILocation(line: 373, column: 34, scope: !7023)
!7036 = !DILocation(line: 373, column: 31, scope: !7023)
!7037 = !DILocation(line: 373, column: 2, scope: !7023)
!7038 = distinct !DISubprogram(name: "list_add_tail", scope: !6236, file: !6236, line: 181, type: !6751, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7039)
!7039 = !{!7040, !7041}
!7040 = !DILocalVariable(name: "new", arg: 1, scope: !7038, file: !6236, line: 181, type: !378)
!7041 = !DILocalVariable(name: "head", arg: 2, scope: !7038, file: !6236, line: 181, type: !378)
!7042 = !DILocation(line: 181, column: 52, scope: !7038)
!7043 = !DILocation(line: 181, column: 75, scope: !7038)
!7044 = !DILocation(line: 183, column: 13, scope: !7038)
!7045 = !DILocation(line: 183, column: 18, scope: !7038)
!7046 = !DILocation(line: 183, column: 24, scope: !7038)
!7047 = !DILocation(line: 183, column: 30, scope: !7038)
!7048 = !DILocation(line: 183, column: 2, scope: !7038)
!7049 = !DILocation(line: 184, column: 1, scope: !7038)
!7050 = distinct !DISubprogram(name: "spin_lock", scope: !6007, file: !6007, line: 349, type: !6008, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7051)
!7051 = !{!7052}
!7052 = !DILocalVariable(name: "lock", arg: 1, scope: !7050, file: !6007, line: 349, type: !2510)
!7053 = !DILocation(line: 349, column: 51, scope: !7050)
!7054 = !DILocation(line: 351, column: 2, scope: !7050)
!7055 = !DILocation(line: 352, column: 1, scope: !7050)
!7056 = distinct !DISubprogram(name: "list_move", scope: !6236, file: !6236, line: 296, type: !6751, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7057)
!7057 = !{!7058, !7059}
!7058 = !DILocalVariable(name: "list", arg: 1, scope: !7056, file: !6236, line: 296, type: !378)
!7059 = !DILocalVariable(name: "head", arg: 2, scope: !7056, file: !6236, line: 296, type: !378)
!7060 = !DILocation(line: 296, column: 48, scope: !7056)
!7061 = !DILocation(line: 296, column: 72, scope: !7056)
!7062 = !DILocation(line: 298, column: 19, scope: !7056)
!7063 = !DILocation(line: 298, column: 2, scope: !7056)
!7064 = !DILocation(line: 299, column: 11, scope: !7056)
!7065 = !DILocation(line: 299, column: 17, scope: !7056)
!7066 = !DILocation(line: 299, column: 2, scope: !7056)
!7067 = !DILocation(line: 300, column: 1, scope: !7056)
!7068 = distinct !DISubprogram(name: "spin_unlock", scope: !6007, file: !6007, line: 389, type: !6008, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7069)
!7069 = !{!7070}
!7070 = !DILocalVariable(name: "lock", arg: 1, scope: !7068, file: !6007, line: 389, type: !2510)
!7071 = !DILocation(line: 389, column: 53, scope: !7068)
!7072 = !DILocation(line: 391, column: 2, scope: !7068)
!7073 = !DILocation(line: 392, column: 1, scope: !7068)
!7074 = !DISubprogram(name: "blk_mq_kick_requeue_list", scope: !161, file: !161, line: 879, type: !7075, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7075 = !DISubroutineType(types: !7076)
!7076 = !{null, !294}
!7077 = distinct !DISubprogram(name: "blk_flush_restore_request", scope: !2, file: !2, line: 125, type: !5258, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7078)
!7078 = !{!7079}
!7079 = !DILocalVariable(name: "rq", arg: 1, scope: !7077, file: !2, line: 125, type: !290)
!7080 = !DILocation(line: 125, column: 55, scope: !7077)
!7081 = !DILocation(line: 132, column: 12, scope: !7077)
!7082 = !DILocation(line: 132, column: 16, scope: !7077)
!7083 = !DILocation(line: 132, column: 2, scope: !7077)
!7084 = !DILocation(line: 132, column: 6, scope: !7077)
!7085 = !DILocation(line: 132, column: 10, scope: !7077)
!7086 = !DILocation(line: 135, column: 2, scope: !7077)
!7087 = !DILocation(line: 135, column: 6, scope: !7077)
!7088 = !DILocation(line: 135, column: 15, scope: !7077)
!7089 = !DILocation(line: 136, column: 15, scope: !7077)
!7090 = !DILocation(line: 136, column: 19, scope: !7077)
!7091 = !DILocation(line: 136, column: 25, scope: !7077)
!7092 = !DILocation(line: 136, column: 2, scope: !7077)
!7093 = !DILocation(line: 136, column: 6, scope: !7077)
!7094 = !DILocation(line: 136, column: 13, scope: !7077)
!7095 = !DILocation(line: 137, column: 1, scope: !7077)
!7096 = distinct !DISubprogram(name: "blk_kick_flush", scope: !2, file: !2, line: 290, type: !7097, scopeLine: 292, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7099)
!7097 = !DISubroutineType(types: !7098)
!7098 = !{null, !294, !445, !284}
!7099 = !{!7100, !7101, !7102, !7103, !7104, !7105, !7107}
!7100 = !DILocalVariable(name: "q", arg: 1, scope: !7096, file: !2, line: 290, type: !294)
!7101 = !DILocalVariable(name: "fq", arg: 2, scope: !7096, file: !2, line: 290, type: !445)
!7102 = !DILocalVariable(name: "flags", arg: 3, scope: !7096, file: !2, line: 291, type: !284)
!7103 = !DILocalVariable(name: "pending", scope: !7096, file: !2, line: 293, type: !378)
!7104 = !DILocalVariable(name: "first_rq", scope: !7096, file: !2, line: 294, type: !290)
!7105 = !DILocalVariable(name: "__mptr", scope: !7106, file: !2, line: 295, type: !287)
!7106 = distinct !DILexicalBlock(scope: !7096, file: !2, line: 295, column: 3)
!7107 = !DILocalVariable(name: "flush_rq", scope: !7096, file: !2, line: 296, type: !290)
!7108 = !DILocation(line: 290, column: 50, scope: !7096)
!7109 = !DILocation(line: 290, column: 77, scope: !7096)
!7110 = !DILocation(line: 291, column: 17, scope: !7096)
!7111 = !DILocation(line: 293, column: 2, scope: !7096)
!7112 = !DILocation(line: 293, column: 20, scope: !7096)
!7113 = !DILocation(line: 293, column: 31, scope: !7096)
!7114 = !DILocation(line: 293, column: 35, scope: !7096)
!7115 = !DILocation(line: 293, column: 47, scope: !7096)
!7116 = !DILocation(line: 293, column: 51, scope: !7096)
!7117 = !DILocation(line: 294, column: 2, scope: !7096)
!7118 = !DILocation(line: 294, column: 18, scope: !7096)
!7119 = !DILocation(line: 295, column: 3, scope: !7106)
!7120 = !DILocation(line: 295, column: 3, scope: !7096)
!7121 = !DILocation(line: 296, column: 2, scope: !7096)
!7122 = !DILocation(line: 296, column: 18, scope: !7096)
!7123 = !DILocation(line: 296, column: 29, scope: !7096)
!7124 = !DILocation(line: 296, column: 33, scope: !7096)
!7125 = !DILocation(line: 299, column: 6, scope: !7126)
!7126 = distinct !DILexicalBlock(scope: !7096, file: !2, line: 299, column: 6)
!7127 = !DILocation(line: 299, column: 10, scope: !7126)
!7128 = !DILocation(line: 299, column: 31, scope: !7126)
!7129 = !DILocation(line: 299, column: 35, scope: !7126)
!7130 = !DILocation(line: 299, column: 28, scope: !7126)
!7131 = !DILocation(line: 299, column: 53, scope: !7126)
!7132 = !DILocation(line: 299, column: 67, scope: !7126)
!7133 = !DILocation(line: 299, column: 56, scope: !7126)
!7134 = !DILocation(line: 299, column: 6, scope: !7096)
!7135 = !DILocation(line: 300, column: 3, scope: !7126)
!7136 = !DILocation(line: 303, column: 6, scope: !7137)
!7137 = distinct !DILexicalBlock(scope: !7096, file: !2, line: 303, column: 6)
!7138 = !DILocation(line: 303, column: 10, scope: !7137)
!7139 = !DILocation(line: 303, column: 31, scope: !7137)
!7140 = !DILocation(line: 304, column: 6, scope: !7137)
!7141 = !DILocation(line: 303, column: 6, scope: !7096)
!7142 = !DILocation(line: 306, column: 3, scope: !7137)
!7143 = !DILocation(line: 312, column: 2, scope: !7096)
!7144 = !DILocation(line: 312, column: 6, scope: !7096)
!7145 = !DILocation(line: 312, column: 24, scope: !7096)
!7146 = !DILocation(line: 314, column: 14, scope: !7096)
!7147 = !DILocation(line: 314, column: 17, scope: !7096)
!7148 = !DILocation(line: 314, column: 2, scope: !7096)
!7149 = !DILocation(line: 324, column: 21, scope: !7096)
!7150 = !DILocation(line: 324, column: 31, scope: !7096)
!7151 = !DILocation(line: 324, column: 2, scope: !7096)
!7152 = !DILocation(line: 324, column: 12, scope: !7096)
!7153 = !DILocation(line: 324, column: 19, scope: !7096)
!7154 = !DILocation(line: 325, column: 22, scope: !7096)
!7155 = !DILocation(line: 325, column: 32, scope: !7096)
!7156 = !DILocation(line: 325, column: 2, scope: !7096)
!7157 = !DILocation(line: 325, column: 12, scope: !7096)
!7158 = !DILocation(line: 325, column: 20, scope: !7096)
!7159 = !DILocation(line: 327, column: 7, scope: !7160)
!7160 = distinct !DILexicalBlock(scope: !7096, file: !2, line: 327, column: 6)
!7161 = !DILocation(line: 327, column: 10, scope: !7160)
!7162 = !DILocation(line: 327, column: 6, scope: !7096)
!7163 = !DILocation(line: 328, column: 19, scope: !7164)
!7164 = distinct !DILexicalBlock(scope: !7160, file: !2, line: 327, column: 20)
!7165 = !DILocation(line: 328, column: 29, scope: !7164)
!7166 = !DILocation(line: 328, column: 3, scope: !7164)
!7167 = !DILocation(line: 328, column: 13, scope: !7164)
!7168 = !DILocation(line: 328, column: 17, scope: !7164)
!7169 = !DILocation(line: 335, column: 3, scope: !7164)
!7170 = !DILocation(line: 335, column: 13, scope: !7164)
!7171 = !DILocation(line: 335, column: 22, scope: !7164)
!7172 = !DILocation(line: 336, column: 2, scope: !7164)
!7173 = !DILocation(line: 337, column: 28, scope: !7160)
!7174 = !DILocation(line: 337, column: 38, scope: !7160)
!7175 = !DILocation(line: 337, column: 3, scope: !7160)
!7176 = !DILocation(line: 337, column: 13, scope: !7160)
!7177 = !DILocation(line: 337, column: 26, scope: !7160)
!7178 = !DILocation(line: 339, column: 2, scope: !7096)
!7179 = !DILocation(line: 339, column: 12, scope: !7096)
!7180 = !DILocation(line: 339, column: 22, scope: !7096)
!7181 = !DILocation(line: 340, column: 26, scope: !7096)
!7182 = !DILocation(line: 340, column: 32, scope: !7096)
!7183 = !DILocation(line: 340, column: 46, scope: !7096)
!7184 = !DILocation(line: 340, column: 52, scope: !7096)
!7185 = !DILocation(line: 340, column: 43, scope: !7096)
!7186 = !DILocation(line: 340, column: 2, scope: !7096)
!7187 = !DILocation(line: 340, column: 12, scope: !7096)
!7188 = !DILocation(line: 340, column: 22, scope: !7096)
!7189 = !DILocation(line: 341, column: 2, scope: !7096)
!7190 = !DILocation(line: 341, column: 12, scope: !7096)
!7191 = !DILocation(line: 341, column: 21, scope: !7096)
!7192 = !DILocation(line: 342, column: 2, scope: !7096)
!7193 = !DILocation(line: 342, column: 12, scope: !7096)
!7194 = !DILocation(line: 342, column: 19, scope: !7096)
!7195 = !DILocation(line: 349, column: 2, scope: !7096)
!7196 = !DILocation(line: 349, column: 2, scope: !7197)
!7197 = distinct !DILexicalBlock(scope: !7096, file: !2, line: 349, column: 2)
!7198 = !DILocation(line: 349, column: 2, scope: !7199)
!7199 = distinct !DILexicalBlock(scope: !7197, file: !2, line: 349, column: 2)
!7200 = !{i64 2156179612}
!7201 = !DILocation(line: 350, column: 14, scope: !7096)
!7202 = !DILocation(line: 350, column: 2, scope: !7096)
!7203 = !DILocation(line: 352, column: 13, scope: !7096)
!7204 = !DILocation(line: 352, column: 16, scope: !7096)
!7205 = !DILocation(line: 352, column: 2, scope: !7096)
!7206 = !DILocation(line: 353, column: 17, scope: !7096)
!7207 = !DILocation(line: 353, column: 27, scope: !7096)
!7208 = !DILocation(line: 353, column: 39, scope: !7096)
!7209 = !DILocation(line: 353, column: 42, scope: !7096)
!7210 = !DILocation(line: 353, column: 2, scope: !7096)
!7211 = !DILocation(line: 354, column: 15, scope: !7096)
!7212 = !DILocation(line: 354, column: 18, scope: !7096)
!7213 = !DILocation(line: 354, column: 2, scope: !7096)
!7214 = !DILocation(line: 356, column: 27, scope: !7096)
!7215 = !DILocation(line: 356, column: 2, scope: !7096)
!7216 = !DILocation(line: 357, column: 1, scope: !7096)
!7217 = distinct !DISubprogram(name: "__list_add", scope: !6236, file: !6236, line: 146, type: !7218, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7220)
!7218 = !DISubroutineType(types: !7219)
!7219 = !{null, !378, !378, !378}
!7220 = !{!7221, !7222, !7223}
!7221 = !DILocalVariable(name: "new", arg: 1, scope: !7217, file: !6236, line: 146, type: !378)
!7222 = !DILocalVariable(name: "prev", arg: 2, scope: !7217, file: !6236, line: 147, type: !378)
!7223 = !DILocalVariable(name: "next", arg: 3, scope: !7217, file: !6236, line: 148, type: !378)
!7224 = !DILocation(line: 146, column: 49, scope: !7217)
!7225 = !DILocation(line: 147, column: 28, scope: !7217)
!7226 = !DILocation(line: 148, column: 28, scope: !7217)
!7227 = !DILocation(line: 150, column: 24, scope: !7228)
!7228 = distinct !DILexicalBlock(scope: !7217, file: !6236, line: 150, column: 6)
!7229 = !DILocation(line: 150, column: 29, scope: !7228)
!7230 = !DILocation(line: 150, column: 35, scope: !7228)
!7231 = !DILocation(line: 150, column: 7, scope: !7228)
!7232 = !DILocation(line: 150, column: 6, scope: !7217)
!7233 = !DILocation(line: 151, column: 3, scope: !7228)
!7234 = !DILocation(line: 153, column: 15, scope: !7217)
!7235 = !DILocation(line: 153, column: 2, scope: !7217)
!7236 = !DILocation(line: 153, column: 8, scope: !7217)
!7237 = !DILocation(line: 153, column: 13, scope: !7217)
!7238 = !DILocation(line: 154, column: 14, scope: !7217)
!7239 = !DILocation(line: 154, column: 2, scope: !7217)
!7240 = !DILocation(line: 154, column: 7, scope: !7217)
!7241 = !DILocation(line: 154, column: 12, scope: !7217)
!7242 = !DILocation(line: 155, column: 14, scope: !7217)
!7243 = !DILocation(line: 155, column: 2, scope: !7217)
!7244 = !DILocation(line: 155, column: 7, scope: !7217)
!7245 = !DILocation(line: 155, column: 12, scope: !7217)
!7246 = !DILocation(line: 156, column: 2, scope: !7217)
!7247 = !DILocation(line: 156, column: 2, scope: !7248)
!7248 = distinct !DILexicalBlock(scope: !7217, file: !6236, line: 156, column: 2)
!7249 = !DILocation(line: 156, column: 2, scope: !7250)
!7250 = distinct !DILexicalBlock(scope: !7248, file: !6236, line: 156, column: 2)
!7251 = !DILocation(line: 156, column: 2, scope: !7252)
!7252 = distinct !DILexicalBlock(scope: !7248, file: !6236, line: 156, column: 2)
!7253 = !DILocation(line: 157, column: 1, scope: !7217)
!7254 = distinct !DISubprogram(name: "__list_add_valid", scope: !6236, file: !6236, line: 128, type: !7255, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7257)
!7255 = !DISubroutineType(types: !7256)
!7256 = !{!470, !378, !378, !378}
!7257 = !{!7258, !7259, !7260}
!7258 = !DILocalVariable(name: "new", arg: 1, scope: !7254, file: !6236, line: 128, type: !378)
!7259 = !DILocalVariable(name: "prev", arg: 2, scope: !7254, file: !6236, line: 129, type: !378)
!7260 = !DILocalVariable(name: "next", arg: 3, scope: !7254, file: !6236, line: 130, type: !378)
!7261 = !DILocation(line: 128, column: 55, scope: !7254)
!7262 = !DILocation(line: 129, column: 23, scope: !7254)
!7263 = !DILocation(line: 130, column: 23, scope: !7254)
!7264 = !DILocation(line: 132, column: 2, scope: !7254)
!7265 = !DISubprogram(name: "_raw_spin_lock", scope: !6290, file: !6290, line: 22, type: !7020, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7266 = distinct !DISubprogram(name: "list_add", scope: !6236, file: !6236, line: 167, type: !6751, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7267)
!7267 = !{!7268, !7269}
!7268 = !DILocalVariable(name: "new", arg: 1, scope: !7266, file: !6236, line: 167, type: !378)
!7269 = !DILocalVariable(name: "head", arg: 2, scope: !7266, file: !6236, line: 167, type: !378)
!7270 = !DILocation(line: 167, column: 47, scope: !7266)
!7271 = !DILocation(line: 167, column: 70, scope: !7266)
!7272 = !DILocation(line: 169, column: 13, scope: !7266)
!7273 = !DILocation(line: 169, column: 18, scope: !7266)
!7274 = !DILocation(line: 169, column: 24, scope: !7266)
!7275 = !DILocation(line: 169, column: 30, scope: !7266)
!7276 = !DILocation(line: 169, column: 2, scope: !7266)
!7277 = !DILocation(line: 170, column: 1, scope: !7266)
!7278 = !DISubprogram(name: "_raw_spin_unlock", scope: !6290, file: !6290, line: 39, type: !7020, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7279 = !DISubprogram(name: "blk_rq_init", scope: !161, file: !161, line: 982, type: !7280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7280 = !DISubroutineType(types: !7281)
!7281 = !{null, !294, !290}
!7282 = distinct !DISubprogram(name: "req_ref_set", scope: !447, file: !447, line: 512, type: !5378, scopeLine: 513, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7283)
!7283 = !{!7284, !7285}
!7284 = !DILocalVariable(name: "req", arg: 1, scope: !7282, file: !447, line: 512, type: !290)
!7285 = !DILocalVariable(name: "value", arg: 2, scope: !7282, file: !447, line: 512, type: !95)
!7286 = !DILocation(line: 512, column: 48, scope: !7282)
!7287 = !DILocation(line: 512, column: 57, scope: !7282)
!7288 = !DILocation(line: 514, column: 14, scope: !7282)
!7289 = !DILocation(line: 514, column: 19, scope: !7282)
!7290 = !DILocation(line: 514, column: 24, scope: !7282)
!7291 = !DILocation(line: 514, column: 2, scope: !7282)
!7292 = !DILocation(line: 515, column: 1, scope: !7282)
!7293 = distinct !DISubprogram(name: "atomic_set", scope: !6428, file: !6428, line: 65, type: !7294, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7296)
!7294 = !DISubroutineType(types: !7295)
!7295 = !{null, !6444, !95}
!7296 = !{!7297, !7298}
!7297 = !DILocalVariable(name: "v", arg: 1, scope: !7293, file: !6428, line: 65, type: !6444)
!7298 = !DILocalVariable(name: "i", arg: 2, scope: !7293, file: !6428, line: 65, type: !95)
!7299 = !DILocation(line: 65, column: 22, scope: !7293)
!7300 = !DILocation(line: 65, column: 29, scope: !7293)
!7301 = !DILocation(line: 67, column: 26, scope: !7293)
!7302 = !DILocation(line: 67, column: 2, scope: !7293)
!7303 = !DILocation(line: 68, column: 17, scope: !7293)
!7304 = !DILocation(line: 68, column: 20, scope: !7293)
!7305 = !DILocation(line: 68, column: 2, scope: !7293)
!7306 = !DILocation(line: 69, column: 1, scope: !7293)
!7307 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !6457, file: !6457, line: 80, type: !6458, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7308)
!7308 = !{!7309, !7310}
!7309 = !DILocalVariable(name: "v", arg: 1, scope: !7307, file: !6457, line: 80, type: !6460)
!7310 = !DILocalVariable(name: "size", arg: 2, scope: !7307, file: !6457, line: 80, type: !593)
!7311 = !DILocation(line: 80, column: 74, scope: !7307)
!7312 = !DILocation(line: 80, column: 84, scope: !7307)
!7313 = !DILocation(line: 82, column: 20, scope: !7307)
!7314 = !DILocation(line: 82, column: 23, scope: !7307)
!7315 = !DILocation(line: 82, column: 2, scope: !7307)
!7316 = !DILocation(line: 83, column: 2, scope: !7307)
!7317 = !DILocation(line: 84, column: 1, scope: !7307)
!7318 = distinct !DISubprogram(name: "raw_atomic_set", scope: !6474, file: !6474, line: 488, type: !7294, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7319)
!7319 = !{!7320, !7321}
!7320 = !DILocalVariable(name: "v", arg: 1, scope: !7318, file: !6474, line: 488, type: !6444)
!7321 = !DILocalVariable(name: "i", arg: 2, scope: !7318, file: !6474, line: 488, type: !95)
!7322 = !DILocation(line: 488, column: 26, scope: !7318)
!7323 = !DILocation(line: 488, column: 33, scope: !7318)
!7324 = !DILocation(line: 490, column: 18, scope: !7318)
!7325 = !DILocation(line: 490, column: 21, scope: !7318)
!7326 = !DILocation(line: 490, column: 2, scope: !7318)
!7327 = !DILocation(line: 491, column: 1, scope: !7318)
!7328 = distinct !DISubprogram(name: "arch_atomic_set", scope: !6504, file: !6504, line: 26, type: !7294, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7329)
!7329 = !{!7330, !7331}
!7330 = !DILocalVariable(name: "v", arg: 1, scope: !7328, file: !6504, line: 26, type: !6444)
!7331 = !DILocalVariable(name: "i", arg: 2, scope: !7328, file: !6504, line: 26, type: !95)
!7332 = !DILocation(line: 26, column: 55, scope: !7328)
!7333 = !DILocation(line: 26, column: 62, scope: !7328)
!7334 = !DILocation(line: 28, column: 2, scope: !7328)
!7335 = !DILocation(line: 28, column: 2, scope: !7336)
!7336 = distinct !DILexicalBlock(scope: !7328, file: !6504, line: 28, column: 2)
!7337 = !DILocation(line: 29, column: 1, scope: !7328)
!7338 = distinct !DISubprogram(name: "kmalloc_node", scope: !274, file: !274, line: 607, type: !6210, scopeLine: 608, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7339)
!7339 = !{!7340, !7341, !7342, !7343}
!7340 = !DILocalVariable(name: "size", arg: 1, scope: !7338, file: !274, line: 607, type: !593)
!7341 = !DILocalVariable(name: "flags", arg: 2, scope: !7338, file: !274, line: 607, type: !1347)
!7342 = !DILocalVariable(name: "node", arg: 3, scope: !7338, file: !274, line: 607, type: !95)
!7343 = !DILocalVariable(name: "index", scope: !7344, file: !274, line: 610, type: !13)
!7344 = distinct !DILexicalBlock(scope: !7345, file: !274, line: 609, column: 42)
!7345 = distinct !DILexicalBlock(scope: !7338, file: !274, line: 609, column: 6)
!7346 = !DILocation(line: 607, column: 66, scope: !7338)
!7347 = !DILocation(line: 607, column: 78, scope: !7338)
!7348 = !DILocation(line: 607, column: 89, scope: !7338)
!7349 = !DILocation(line: 609, column: 27, scope: !7345)
!7350 = !DILocation(line: 609, column: 6, scope: !7345)
!7351 = !DILocation(line: 609, column: 33, scope: !7345)
!7352 = !DILocation(line: 609, column: 36, scope: !7345)
!7353 = !DILocation(line: 609, column: 6, scope: !7338)
!7354 = !DILocation(line: 610, column: 3, scope: !7344)
!7355 = !DILocation(line: 610, column: 16, scope: !7344)
!7356 = !DILocation(line: 612, column: 7, scope: !7357)
!7357 = distinct !DILexicalBlock(scope: !7344, file: !274, line: 612, column: 7)
!7358 = !DILocation(line: 612, column: 12, scope: !7357)
!7359 = !DILocation(line: 612, column: 7, scope: !7344)
!7360 = !DILocation(line: 613, column: 30, scope: !7357)
!7361 = !DILocation(line: 613, column: 36, scope: !7357)
!7362 = !DILocation(line: 613, column: 43, scope: !7357)
!7363 = !DILocation(line: 613, column: 11, scope: !7357)
!7364 = !DILocation(line: 613, column: 4, scope: !7357)
!7365 = !DILocation(line: 615, column: 11, scope: !7344)
!7366 = !DILocation(line: 615, column: 9, scope: !7344)
!7367 = !DILocation(line: 617, column: 33, scope: !7344)
!7368 = !DILocation(line: 617, column: 40, scope: !7344)
!7369 = !DILocation(line: 617, column: 20, scope: !7344)
!7370 = !DILocation(line: 617, column: 5, scope: !7344)
!7371 = !DILocation(line: 617, column: 51, scope: !7344)
!7372 = !DILocation(line: 618, column: 5, scope: !7344)
!7373 = !DILocation(line: 618, column: 12, scope: !7344)
!7374 = !DILocation(line: 618, column: 18, scope: !7344)
!7375 = !DILocation(line: 616, column: 10, scope: !7344)
!7376 = !DILocation(line: 616, column: 3, scope: !7344)
!7377 = !DILocation(line: 619, column: 2, scope: !7345)
!7378 = !DILocation(line: 620, column: 24, scope: !7338)
!7379 = !DILocation(line: 620, column: 30, scope: !7338)
!7380 = !DILocation(line: 620, column: 37, scope: !7338)
!7381 = !DILocation(line: 620, column: 9, scope: !7338)
!7382 = !DILocation(line: 620, column: 2, scope: !7338)
!7383 = !DILocation(line: 621, column: 1, scope: !7338)
!7384 = !DISubprogram(name: "kmalloc_large_node", scope: !274, file: !274, line: 534, type: !6210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7385 = distinct !DISubprogram(name: "__kmalloc_index", scope: !274, file: !274, line: 444, type: !7386, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7388)
!7386 = !DISubroutineType(types: !7387)
!7387 = !{!13, !593, !470}
!7388 = !{!7389, !7390}
!7389 = !DILocalVariable(name: "size", arg: 1, scope: !7385, file: !274, line: 444, type: !593)
!7390 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !7385, file: !274, line: 445, type: !470)
!7391 = !DILocation(line: 444, column: 60, scope: !7385)
!7392 = !DILocation(line: 445, column: 16, scope: !7385)
!7393 = !DILocation(line: 447, column: 7, scope: !7394)
!7394 = distinct !DILexicalBlock(scope: !7385, file: !274, line: 447, column: 6)
!7395 = !DILocation(line: 447, column: 6, scope: !7385)
!7396 = !DILocation(line: 448, column: 3, scope: !7394)
!7397 = !DILocation(line: 450, column: 6, scope: !7398)
!7398 = distinct !DILexicalBlock(scope: !7385, file: !274, line: 450, column: 6)
!7399 = !DILocation(line: 450, column: 11, scope: !7398)
!7400 = !DILocation(line: 450, column: 6, scope: !7385)
!7401 = !DILocation(line: 451, column: 3, scope: !7398)
!7402 = !DILocation(line: 453, column: 32, scope: !7403)
!7403 = distinct !DILexicalBlock(scope: !7385, file: !274, line: 453, column: 6)
!7404 = !DILocation(line: 453, column: 37, scope: !7403)
!7405 = !DILocation(line: 453, column: 42, scope: !7403)
!7406 = !DILocation(line: 453, column: 45, scope: !7403)
!7407 = !DILocation(line: 453, column: 50, scope: !7403)
!7408 = !DILocation(line: 453, column: 6, scope: !7385)
!7409 = !DILocation(line: 454, column: 3, scope: !7403)
!7410 = !DILocation(line: 455, column: 32, scope: !7411)
!7411 = distinct !DILexicalBlock(scope: !7385, file: !274, line: 455, column: 6)
!7412 = !DILocation(line: 455, column: 37, scope: !7411)
!7413 = !DILocation(line: 455, column: 43, scope: !7411)
!7414 = !DILocation(line: 455, column: 46, scope: !7411)
!7415 = !DILocation(line: 455, column: 51, scope: !7411)
!7416 = !DILocation(line: 455, column: 6, scope: !7385)
!7417 = !DILocation(line: 456, column: 3, scope: !7411)
!7418 = !DILocation(line: 457, column: 6, scope: !7419)
!7419 = distinct !DILexicalBlock(scope: !7385, file: !274, line: 457, column: 6)
!7420 = !DILocation(line: 457, column: 11, scope: !7419)
!7421 = !DILocation(line: 457, column: 6, scope: !7385)
!7422 = !DILocation(line: 457, column: 26, scope: !7419)
!7423 = !DILocation(line: 458, column: 6, scope: !7424)
!7424 = distinct !DILexicalBlock(scope: !7385, file: !274, line: 458, column: 6)
!7425 = !DILocation(line: 458, column: 11, scope: !7424)
!7426 = !DILocation(line: 458, column: 6, scope: !7385)
!7427 = !DILocation(line: 458, column: 26, scope: !7424)
!7428 = !DILocation(line: 459, column: 6, scope: !7429)
!7429 = distinct !DILexicalBlock(scope: !7385, file: !274, line: 459, column: 6)
!7430 = !DILocation(line: 459, column: 11, scope: !7429)
!7431 = !DILocation(line: 459, column: 6, scope: !7385)
!7432 = !DILocation(line: 459, column: 26, scope: !7429)
!7433 = !DILocation(line: 460, column: 6, scope: !7434)
!7434 = distinct !DILexicalBlock(scope: !7385, file: !274, line: 460, column: 6)
!7435 = !DILocation(line: 460, column: 11, scope: !7434)
!7436 = !DILocation(line: 460, column: 6, scope: !7385)
!7437 = !DILocation(line: 460, column: 26, scope: !7434)
!7438 = !DILocation(line: 461, column: 6, scope: !7439)
!7439 = distinct !DILexicalBlock(scope: !7385, file: !274, line: 461, column: 6)
!7440 = !DILocation(line: 461, column: 11, scope: !7439)
!7441 = !DILocation(line: 461, column: 6, scope: !7385)
!7442 = !DILocation(line: 461, column: 26, scope: !7439)
!7443 = !DILocation(line: 462, column: 6, scope: !7444)
!7444 = distinct !DILexicalBlock(scope: !7385, file: !274, line: 462, column: 6)
!7445 = !DILocation(line: 462, column: 11, scope: !7444)
!7446 = !DILocation(line: 462, column: 6, scope: !7385)
!7447 = !DILocation(line: 462, column: 26, scope: !7444)
!7448 = !DILocation(line: 463, column: 6, scope: !7449)
!7449 = distinct !DILexicalBlock(scope: !7385, file: !274, line: 463, column: 6)
!7450 = !DILocation(line: 463, column: 11, scope: !7449)
!7451 = !DILocation(line: 463, column: 6, scope: !7385)
!7452 = !DILocation(line: 463, column: 26, scope: !7449)
!7453 = !DILocation(line: 464, column: 6, scope: !7454)
!7454 = distinct !DILexicalBlock(scope: !7385, file: !274, line: 464, column: 6)
!7455 = !DILocation(line: 464, column: 11, scope: !7454)
!7456 = !DILocation(line: 464, column: 6, scope: !7385)
!7457 = !DILocation(line: 464, column: 26, scope: !7454)
!7458 = !DILocation(line: 465, column: 6, scope: !7459)
!7459 = distinct !DILexicalBlock(scope: !7385, file: !274, line: 465, column: 6)
!7460 = !DILocation(line: 465, column: 11, scope: !7459)
!7461 = !DILocation(line: 465, column: 6, scope: !7385)
!7462 = !DILocation(line: 465, column: 26, scope: !7459)
!7463 = !DILocation(line: 466, column: 6, scope: !7464)
!7464 = distinct !DILexicalBlock(scope: !7385, file: !274, line: 466, column: 6)
!7465 = !DILocation(line: 466, column: 11, scope: !7464)
!7466 = !DILocation(line: 466, column: 6, scope: !7385)
!7467 = !DILocation(line: 466, column: 26, scope: !7464)
!7468 = !DILocation(line: 467, column: 6, scope: !7469)
!7469 = distinct !DILexicalBlock(scope: !7385, file: !274, line: 467, column: 6)
!7470 = !DILocation(line: 467, column: 11, scope: !7469)
!7471 = !DILocation(line: 467, column: 6, scope: !7385)
!7472 = !DILocation(line: 467, column: 26, scope: !7469)
!7473 = !DILocation(line: 468, column: 6, scope: !7474)
!7474 = distinct !DILexicalBlock(scope: !7385, file: !274, line: 468, column: 6)
!7475 = !DILocation(line: 468, column: 11, scope: !7474)
!7476 = !DILocation(line: 468, column: 6, scope: !7385)
!7477 = !DILocation(line: 468, column: 26, scope: !7474)
!7478 = !DILocation(line: 469, column: 6, scope: !7479)
!7479 = distinct !DILexicalBlock(scope: !7385, file: !274, line: 469, column: 6)
!7480 = !DILocation(line: 469, column: 11, scope: !7479)
!7481 = !DILocation(line: 469, column: 6, scope: !7385)
!7482 = !DILocation(line: 469, column: 26, scope: !7479)
!7483 = !DILocation(line: 470, column: 6, scope: !7484)
!7484 = distinct !DILexicalBlock(scope: !7385, file: !274, line: 470, column: 6)
!7485 = !DILocation(line: 470, column: 11, scope: !7484)
!7486 = !DILocation(line: 470, column: 6, scope: !7385)
!7487 = !DILocation(line: 470, column: 26, scope: !7484)
!7488 = !DILocation(line: 471, column: 6, scope: !7489)
!7489 = distinct !DILexicalBlock(scope: !7385, file: !274, line: 471, column: 6)
!7490 = !DILocation(line: 471, column: 11, scope: !7489)
!7491 = !DILocation(line: 471, column: 6, scope: !7385)
!7492 = !DILocation(line: 471, column: 26, scope: !7489)
!7493 = !DILocation(line: 472, column: 6, scope: !7494)
!7494 = distinct !DILexicalBlock(scope: !7385, file: !274, line: 472, column: 6)
!7495 = !DILocation(line: 472, column: 11, scope: !7494)
!7496 = !DILocation(line: 472, column: 6, scope: !7385)
!7497 = !DILocation(line: 472, column: 26, scope: !7494)
!7498 = !DILocation(line: 473, column: 6, scope: !7499)
!7499 = distinct !DILexicalBlock(scope: !7385, file: !274, line: 473, column: 6)
!7500 = !DILocation(line: 473, column: 11, scope: !7499)
!7501 = !DILocation(line: 473, column: 6, scope: !7385)
!7502 = !DILocation(line: 473, column: 26, scope: !7499)
!7503 = !DILocation(line: 474, column: 6, scope: !7504)
!7504 = distinct !DILexicalBlock(scope: !7385, file: !274, line: 474, column: 6)
!7505 = !DILocation(line: 474, column: 11, scope: !7504)
!7506 = !DILocation(line: 474, column: 6, scope: !7385)
!7507 = !DILocation(line: 474, column: 27, scope: !7504)
!7508 = !DILocation(line: 475, column: 6, scope: !7509)
!7509 = distinct !DILexicalBlock(scope: !7385, file: !274, line: 475, column: 6)
!7510 = !DILocation(line: 475, column: 11, scope: !7509)
!7511 = !DILocation(line: 475, column: 6, scope: !7385)
!7512 = !DILocation(line: 475, column: 32, scope: !7509)
!7513 = !DILocation(line: 477, column: 50, scope: !7514)
!7514 = distinct !DILexicalBlock(scope: !7385, file: !274, line: 477, column: 6)
!7515 = !DILocation(line: 477, column: 6, scope: !7385)
!7516 = !DILocation(line: 478, column: 3, scope: !7514)
!7517 = !DILocation(line: 478, column: 3, scope: !7518)
!7518 = distinct !DILexicalBlock(scope: !7519, file: !274, line: 478, column: 3)
!7519 = distinct !DILexicalBlock(scope: !7514, file: !274, line: 478, column: 3)
!7520 = !{i32 -2141397349}
!7521 = !DILocation(line: 478, column: 3, scope: !7519)
!7522 = !DILocation(line: 480, column: 3, scope: !7514)
!7523 = !DILocation(line: 480, column: 3, scope: !7524)
!7524 = distinct !DILexicalBlock(scope: !7514, file: !274, line: 480, column: 3)
!7525 = !DILocation(line: 480, column: 3, scope: !7526)
!7526 = distinct !DILexicalBlock(scope: !7524, file: !274, line: 480, column: 3)
!7527 = !DILocation(line: 480, column: 3, scope: !7528)
!7528 = distinct !DILexicalBlock(scope: !7524, file: !274, line: 480, column: 3)
!7529 = !{i64 2153570150, i64 2153570179, i64 2153570225, i64 2153570283, i64 2153570337, i64 2153570391, i64 2153570446, i64 2153570477}
!7530 = !DILocation(line: 483, column: 2, scope: !7385)
!7531 = !DILocation(line: 484, column: 1, scope: !7385)
!7532 = !DISubprogram(name: "kmalloc_node_trace", scope: !274, file: !274, line: 528, type: !7533, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7533 = !DISubroutineType(types: !7534)
!7534 = !{!287, !307, !1347, !95, !593}
!7535 = distinct !DISubprogram(name: "kmalloc_type", scope: !274, file: !274, line: 401, type: !7536, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7538)
!7536 = !DISubroutineType(types: !7537)
!7537 = !{!273, !1347, !381}
!7538 = !{!7539, !7540}
!7539 = !DILocalVariable(name: "flags", arg: 1, scope: !7535, file: !274, line: 401, type: !1347)
!7540 = !DILocalVariable(name: "caller", arg: 2, scope: !7535, file: !274, line: 401, type: !381)
!7541 = !DILocation(line: 401, column: 67, scope: !7535)
!7542 = !DILocation(line: 401, column: 88, scope: !7535)
!7543 = !DILocation(line: 407, column: 6, scope: !7544)
!7544 = distinct !DILexicalBlock(scope: !7535, file: !274, line: 407, column: 6)
!7545 = !DILocation(line: 407, column: 6, scope: !7535)
!7546 = !DILocation(line: 413, column: 3, scope: !7544)
!7547 = !DILocation(line: 423, column: 38, scope: !7548)
!7548 = distinct !DILexicalBlock(scope: !7535, file: !274, line: 423, column: 6)
!7549 = !DILocation(line: 423, column: 44, scope: !7548)
!7550 = !DILocation(line: 423, column: 6, scope: !7535)
!7551 = !DILocation(line: 424, column: 3, scope: !7548)
!7552 = !DILocation(line: 426, column: 3, scope: !7553)
!7553 = distinct !DILexicalBlock(scope: !7535, file: !274, line: 425, column: 6)
!7554 = !DILocation(line: 429, column: 1, scope: !7535)
!7555 = !DISubprogram(name: "__kmalloc_node", scope: !274, file: !274, line: 520, type: !6210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7556 = !DISubprogram(name: "__compiletime_assert_256", scope: !274, file: !274, line: 478, type: !1198, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
