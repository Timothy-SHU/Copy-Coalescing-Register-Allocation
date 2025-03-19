; ModuleID = 'block/blk-stat.c'
source_filename = "block/blk-stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_blk_stat_disable_accounting: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad blk_stat_disable_accounting ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_blk_stat_enable_accounting: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad blk_stat_enable_accounting ; .previous"

%struct.pcpu_hot = type { %union.anon.18 }
%union.anon.18 = type { %struct.anon.19, [16 x i8] }
%struct.anon.19 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.static_call_key = type { ptr, %union.anon.20 }
%union.anon.20 = type { i64 }
%struct.cpumask = type { [1 x i64] }
%struct.blk_rq_stat = type { i64, i64, i64, i32, i64 }
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
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, %struct.mutex, ptr, ptr, i32, %struct.xarray, i32, ptr, i64, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.refcount_struct, ptr, ptr, i32, i64, i32, i32, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i64], ptr, %struct.list_head, %struct.mutex, %struct.queue_limits, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, ptr, ptr, ptr, %struct.mutex, i8 }
%struct.percpu_ref = type { i64, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.queue_limits = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.callback_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.blk_queue_stats = type { %struct.list_head, %struct.spinlock, i32 }
%struct.blk_stat_callback = type { %struct.list_head, %struct.timer_list, ptr, ptr, i32, ptr, ptr, ptr, %struct.callback_head }

@.str = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !0
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@blk_stat_add.__UNIQUE_ID___addressable___SCK__preempt_schedule361 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !7
@__SCK__preempt_schedule = external dso_local global %struct.static_call_key, align 8
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@__UNIQUE_ID___addressable_blk_stat_disable_accounting362 = internal global ptr @blk_stat_disable_accounting, section ".discard.addressable", align 8, !dbg !5417
@__UNIQUE_ID___addressable_blk_stat_enable_accounting363 = internal global ptr @blk_stat_enable_accounting, section ".discard.addressable", align 8, !dbg !5419
@.str.1 = private unnamed_addr constant [17 x i8] c"block/blk-stat.c\00", align 1, !dbg !5421
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5426
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@llvm.compiler.used = appending global [3 x ptr] [ptr @blk_stat_add.__UNIQUE_ID___addressable___SCK__preempt_schedule361, ptr @__UNIQUE_ID___addressable_blk_stat_disable_accounting362, ptr @__UNIQUE_ID___addressable_blk_stat_enable_accounting363], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @blk_rq_stat_init(ptr noundef %stat) #0 align 16 !dbg !5470 {
entry:
  %stat.addr = alloca ptr, align 8
  store ptr %stat, ptr %stat.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stat.addr, metadata !5474, metadata !DIExpression()), !dbg !5475
  %0 = load ptr, ptr %stat.addr, align 8, !dbg !5476
  %min = getelementptr inbounds %struct.blk_rq_stat, ptr %0, i32 0, i32 1, !dbg !5477
  store i64 -1, ptr %min, align 8, !dbg !5478
  %1 = load ptr, ptr %stat.addr, align 8, !dbg !5479
  %mean = getelementptr inbounds %struct.blk_rq_stat, ptr %1, i32 0, i32 0, !dbg !5480
  store i64 0, ptr %mean, align 8, !dbg !5481
  %2 = load ptr, ptr %stat.addr, align 8, !dbg !5482
  %nr_samples = getelementptr inbounds %struct.blk_rq_stat, ptr %2, i32 0, i32 3, !dbg !5483
  store i32 0, ptr %nr_samples, align 8, !dbg !5484
  %3 = load ptr, ptr %stat.addr, align 8, !dbg !5485
  %max = getelementptr inbounds %struct.blk_rq_stat, ptr %3, i32 0, i32 2, !dbg !5486
  store i64 0, ptr %max, align 8, !dbg !5487
  %4 = load ptr, ptr %stat.addr, align 8, !dbg !5488
  %batch = getelementptr inbounds %struct.blk_rq_stat, ptr %4, i32 0, i32 4, !dbg !5489
  store i64 0, ptr %batch, align 8, !dbg !5490
  ret void, !dbg !5491
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @blk_rq_stat_sum(ptr noundef %dst, ptr noundef %src) #0 align 16 !dbg !5492 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %__UNIQUE_ID___x351 = alloca i64, align 8
  %__UNIQUE_ID___y352 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___x353 = alloca i64, align 8
  %__UNIQUE_ID___y354 = alloca i64, align 8
  %tmp7 = alloca i64, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !5496, metadata !DIExpression()), !dbg !5504
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !5497, metadata !DIExpression()), !dbg !5505
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !5506
  %nr_samples = getelementptr inbounds %struct.blk_rq_stat, ptr %0, i32 0, i32 3, !dbg !5508
  %1 = load i32, ptr %nr_samples, align 8, !dbg !5508
  %2 = load ptr, ptr %src.addr, align 8, !dbg !5509
  %nr_samples1 = getelementptr inbounds %struct.blk_rq_stat, ptr %2, i32 0, i32 3, !dbg !5510
  %3 = load i32, ptr %nr_samples1, align 8, !dbg !5510
  %add = add i32 %1, %3, !dbg !5511
  %4 = load ptr, ptr %dst.addr, align 8, !dbg !5512
  %nr_samples2 = getelementptr inbounds %struct.blk_rq_stat, ptr %4, i32 0, i32 3, !dbg !5513
  %5 = load i32, ptr %nr_samples2, align 8, !dbg !5513
  %cmp = icmp ule i32 %add, %5, !dbg !5514
  br i1 %cmp, label %if.then, label %if.end, !dbg !5515

if.then:                                          ; preds = %entry
  br label %return, !dbg !5516

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x351) #17, !dbg !5517
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x351, metadata !5498, metadata !DIExpression()), !dbg !5517
  %6 = load ptr, ptr %dst.addr, align 8, !dbg !5517
  %min = getelementptr inbounds %struct.blk_rq_stat, ptr %6, i32 0, i32 1, !dbg !5517
  %7 = load i64, ptr %min, align 8, !dbg !5517
  store i64 %7, ptr %__UNIQUE_ID___x351, align 8, !dbg !5517
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y352) #17, !dbg !5517
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y352, metadata !5500, metadata !DIExpression()), !dbg !5517
  %8 = load ptr, ptr %src.addr, align 8, !dbg !5517
  %min3 = getelementptr inbounds %struct.blk_rq_stat, ptr %8, i32 0, i32 1, !dbg !5517
  %9 = load i64, ptr %min3, align 8, !dbg !5517
  store i64 %9, ptr %__UNIQUE_ID___y352, align 8, !dbg !5517
  %10 = load i64, ptr %__UNIQUE_ID___x351, align 8, !dbg !5517
  %11 = load i64, ptr %__UNIQUE_ID___y352, align 8, !dbg !5517
  %cmp4 = icmp ult i64 %10, %11, !dbg !5517
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !5517

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %__UNIQUE_ID___x351, align 8, !dbg !5517
  br label %cond.end, !dbg !5517

cond.false:                                       ; preds = %if.end
  %13 = load i64, ptr %__UNIQUE_ID___y352, align 8, !dbg !5517
  br label %cond.end, !dbg !5517

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %12, %cond.true ], [ %13, %cond.false ], !dbg !5517
  store i64 %cond, ptr %tmp, align 8, !dbg !5517
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y352) #17, !dbg !5518
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x351) #17, !dbg !5518
  %14 = load i64, ptr %tmp, align 8, !dbg !5517
  %15 = load ptr, ptr %dst.addr, align 8, !dbg !5519
  %min5 = getelementptr inbounds %struct.blk_rq_stat, ptr %15, i32 0, i32 1, !dbg !5520
  store i64 %14, ptr %min5, align 8, !dbg !5521
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x353) #17, !dbg !5522
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x353, metadata !5501, metadata !DIExpression()), !dbg !5522
  %16 = load ptr, ptr %dst.addr, align 8, !dbg !5522
  %max = getelementptr inbounds %struct.blk_rq_stat, ptr %16, i32 0, i32 2, !dbg !5522
  %17 = load i64, ptr %max, align 8, !dbg !5522
  store i64 %17, ptr %__UNIQUE_ID___x353, align 8, !dbg !5522
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y354) #17, !dbg !5522
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y354, metadata !5503, metadata !DIExpression()), !dbg !5522
  %18 = load ptr, ptr %src.addr, align 8, !dbg !5522
  %max6 = getelementptr inbounds %struct.blk_rq_stat, ptr %18, i32 0, i32 2, !dbg !5522
  %19 = load i64, ptr %max6, align 8, !dbg !5522
  store i64 %19, ptr %__UNIQUE_ID___y354, align 8, !dbg !5522
  %20 = load i64, ptr %__UNIQUE_ID___x353, align 8, !dbg !5522
  %21 = load i64, ptr %__UNIQUE_ID___y354, align 8, !dbg !5522
  %cmp8 = icmp ugt i64 %20, %21, !dbg !5522
  br i1 %cmp8, label %cond.true9, label %cond.false10, !dbg !5522

cond.true9:                                       ; preds = %cond.end
  %22 = load i64, ptr %__UNIQUE_ID___x353, align 8, !dbg !5522
  br label %cond.end11, !dbg !5522

cond.false10:                                     ; preds = %cond.end
  %23 = load i64, ptr %__UNIQUE_ID___y354, align 8, !dbg !5522
  br label %cond.end11, !dbg !5522

cond.end11:                                       ; preds = %cond.false10, %cond.true9
  %cond12 = phi i64 [ %22, %cond.true9 ], [ %23, %cond.false10 ], !dbg !5522
  store i64 %cond12, ptr %tmp7, align 8, !dbg !5522
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y354) #17, !dbg !5523
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x353) #17, !dbg !5523
  %24 = load i64, ptr %tmp7, align 8, !dbg !5522
  %25 = load ptr, ptr %dst.addr, align 8, !dbg !5524
  %max13 = getelementptr inbounds %struct.blk_rq_stat, ptr %25, i32 0, i32 2, !dbg !5525
  store i64 %24, ptr %max13, align 8, !dbg !5526
  %26 = load ptr, ptr %src.addr, align 8, !dbg !5527
  %batch = getelementptr inbounds %struct.blk_rq_stat, ptr %26, i32 0, i32 4, !dbg !5528
  %27 = load i64, ptr %batch, align 8, !dbg !5528
  %28 = load ptr, ptr %dst.addr, align 8, !dbg !5529
  %mean = getelementptr inbounds %struct.blk_rq_stat, ptr %28, i32 0, i32 0, !dbg !5530
  %29 = load i64, ptr %mean, align 8, !dbg !5530
  %30 = load ptr, ptr %dst.addr, align 8, !dbg !5531
  %nr_samples14 = getelementptr inbounds %struct.blk_rq_stat, ptr %30, i32 0, i32 3, !dbg !5532
  %31 = load i32, ptr %nr_samples14, align 8, !dbg !5532
  %conv = zext i32 %31 to i64, !dbg !5531
  %mul = mul i64 %29, %conv, !dbg !5533
  %add15 = add i64 %27, %mul, !dbg !5534
  %32 = load ptr, ptr %dst.addr, align 8, !dbg !5535
  %nr_samples16 = getelementptr inbounds %struct.blk_rq_stat, ptr %32, i32 0, i32 3, !dbg !5536
  %33 = load i32, ptr %nr_samples16, align 8, !dbg !5536
  %34 = load ptr, ptr %src.addr, align 8, !dbg !5537
  %nr_samples17 = getelementptr inbounds %struct.blk_rq_stat, ptr %34, i32 0, i32 3, !dbg !5538
  %35 = load i32, ptr %nr_samples17, align 8, !dbg !5538
  %add18 = add i32 %33, %35, !dbg !5539
  %call = call i64 @div_u64(i64 noundef %add15, i32 noundef %add18) #18, !dbg !5540
  %36 = load ptr, ptr %dst.addr, align 8, !dbg !5541
  %mean19 = getelementptr inbounds %struct.blk_rq_stat, ptr %36, i32 0, i32 0, !dbg !5542
  store i64 %call, ptr %mean19, align 8, !dbg !5543
  %37 = load ptr, ptr %src.addr, align 8, !dbg !5544
  %nr_samples20 = getelementptr inbounds %struct.blk_rq_stat, ptr %37, i32 0, i32 3, !dbg !5545
  %38 = load i32, ptr %nr_samples20, align 8, !dbg !5545
  %39 = load ptr, ptr %dst.addr, align 8, !dbg !5546
  %nr_samples21 = getelementptr inbounds %struct.blk_rq_stat, ptr %39, i32 0, i32 3, !dbg !5547
  %40 = load i32, ptr %nr_samples21, align 8, !dbg !5548
  %add22 = add i32 %40, %38, !dbg !5548
  store i32 %add22, ptr %nr_samples21, align 8, !dbg !5548
  br label %return, !dbg !5549

return:                                           ; preds = %cond.end11, %if.then
  ret void, !dbg !5549
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @div_u64(i64 noundef %dividend, i32 noundef %divisor) #3 align 16 !dbg !5550 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder = alloca i32, align 4
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !5555, metadata !DIExpression()), !dbg !5558
  store i32 %divisor, ptr %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !5556, metadata !DIExpression()), !dbg !5559
  call void @llvm.lifetime.start.p0(i64 4, ptr %remainder) #17, !dbg !5560
  call void @llvm.dbg.declare(metadata ptr %remainder, metadata !5557, metadata !DIExpression()), !dbg !5561
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !5562
  %1 = load i32, ptr %divisor.addr, align 4, !dbg !5563
  %call = call i64 @div_u64_rem(i64 noundef %0, i32 noundef %1, ptr noundef %remainder) #18, !dbg !5564
  call void @llvm.lifetime.end.p0(i64 4, ptr %remainder) #17, !dbg !5565
  ret i64 %call, !dbg !5566
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @blk_rq_stat_add(ptr noundef %stat, i64 noundef %value) #0 align 16 !dbg !5567 {
entry:
  %stat.addr = alloca ptr, align 8
  %value.addr = alloca i64, align 8
  %__UNIQUE_ID___x355 = alloca i64, align 8
  %__UNIQUE_ID___y356 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___x357 = alloca i64, align 8
  %__UNIQUE_ID___y358 = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  store ptr %stat, ptr %stat.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stat.addr, metadata !5571, metadata !DIExpression()), !dbg !5579
  store i64 %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5572, metadata !DIExpression()), !dbg !5580
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x355) #17, !dbg !5581
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x355, metadata !5573, metadata !DIExpression()), !dbg !5581
  %0 = load ptr, ptr %stat.addr, align 8, !dbg !5581
  %min = getelementptr inbounds %struct.blk_rq_stat, ptr %0, i32 0, i32 1, !dbg !5581
  %1 = load i64, ptr %min, align 8, !dbg !5581
  store i64 %1, ptr %__UNIQUE_ID___x355, align 8, !dbg !5581
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y356) #17, !dbg !5581
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y356, metadata !5575, metadata !DIExpression()), !dbg !5581
  %2 = load i64, ptr %value.addr, align 8, !dbg !5581
  store i64 %2, ptr %__UNIQUE_ID___y356, align 8, !dbg !5581
  %3 = load i64, ptr %__UNIQUE_ID___x355, align 8, !dbg !5581
  %4 = load i64, ptr %__UNIQUE_ID___y356, align 8, !dbg !5581
  %cmp = icmp ult i64 %3, %4, !dbg !5581
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5581

cond.true:                                        ; preds = %entry
  %5 = load i64, ptr %__UNIQUE_ID___x355, align 8, !dbg !5581
  br label %cond.end, !dbg !5581

cond.false:                                       ; preds = %entry
  %6 = load i64, ptr %__UNIQUE_ID___y356, align 8, !dbg !5581
  br label %cond.end, !dbg !5581

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %5, %cond.true ], [ %6, %cond.false ], !dbg !5581
  store i64 %cond, ptr %tmp, align 8, !dbg !5581
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y356) #17, !dbg !5582
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x355) #17, !dbg !5582
  %7 = load i64, ptr %tmp, align 8, !dbg !5581
  %8 = load ptr, ptr %stat.addr, align 8, !dbg !5583
  %min1 = getelementptr inbounds %struct.blk_rq_stat, ptr %8, i32 0, i32 1, !dbg !5584
  store i64 %7, ptr %min1, align 8, !dbg !5585
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x357) #17, !dbg !5586
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x357, metadata !5576, metadata !DIExpression()), !dbg !5586
  %9 = load ptr, ptr %stat.addr, align 8, !dbg !5586
  %max = getelementptr inbounds %struct.blk_rq_stat, ptr %9, i32 0, i32 2, !dbg !5586
  %10 = load i64, ptr %max, align 8, !dbg !5586
  store i64 %10, ptr %__UNIQUE_ID___x357, align 8, !dbg !5586
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y358) #17, !dbg !5586
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y358, metadata !5578, metadata !DIExpression()), !dbg !5586
  %11 = load i64, ptr %value.addr, align 8, !dbg !5586
  store i64 %11, ptr %__UNIQUE_ID___y358, align 8, !dbg !5586
  %12 = load i64, ptr %__UNIQUE_ID___x357, align 8, !dbg !5586
  %13 = load i64, ptr %__UNIQUE_ID___y358, align 8, !dbg !5586
  %cmp3 = icmp ugt i64 %12, %13, !dbg !5586
  br i1 %cmp3, label %cond.true4, label %cond.false5, !dbg !5586

cond.true4:                                       ; preds = %cond.end
  %14 = load i64, ptr %__UNIQUE_ID___x357, align 8, !dbg !5586
  br label %cond.end6, !dbg !5586

cond.false5:                                      ; preds = %cond.end
  %15 = load i64, ptr %__UNIQUE_ID___y358, align 8, !dbg !5586
  br label %cond.end6, !dbg !5586

cond.end6:                                        ; preds = %cond.false5, %cond.true4
  %cond7 = phi i64 [ %14, %cond.true4 ], [ %15, %cond.false5 ], !dbg !5586
  store i64 %cond7, ptr %tmp2, align 8, !dbg !5586
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y358) #17, !dbg !5587
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x357) #17, !dbg !5587
  %16 = load i64, ptr %tmp2, align 8, !dbg !5586
  %17 = load ptr, ptr %stat.addr, align 8, !dbg !5588
  %max8 = getelementptr inbounds %struct.blk_rq_stat, ptr %17, i32 0, i32 2, !dbg !5589
  store i64 %16, ptr %max8, align 8, !dbg !5590
  %18 = load i64, ptr %value.addr, align 8, !dbg !5591
  %19 = load ptr, ptr %stat.addr, align 8, !dbg !5592
  %batch = getelementptr inbounds %struct.blk_rq_stat, ptr %19, i32 0, i32 4, !dbg !5593
  %20 = load i64, ptr %batch, align 8, !dbg !5594
  %add = add i64 %20, %18, !dbg !5594
  store i64 %add, ptr %batch, align 8, !dbg !5594
  %21 = load ptr, ptr %stat.addr, align 8, !dbg !5595
  %nr_samples = getelementptr inbounds %struct.blk_rq_stat, ptr %21, i32 0, i32 3, !dbg !5596
  %22 = load i32, ptr %nr_samples, align 8, !dbg !5597
  %inc = add i32 %22, 1, !dbg !5597
  store i32 %inc, ptr %nr_samples, align 8, !dbg !5597
  ret void, !dbg !5598
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @blk_stat_add(ptr noundef %rq, i64 noundef %now) #0 align 16 !dbg !9 {
entry:
  %rq.addr = alloca ptr, align 8
  %now.addr = alloca i64, align 8
  %q = alloca ptr, align 8
  %cb = alloca ptr, align 8
  %stat = alloca ptr, align 8
  %bucket = alloca i32, align 4
  %cpu = alloca i32, align 4
  %value = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp6 = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp10 = alloca i32, align 4
  %tmp12 = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp16 = alloca ptr, align 8
  %tmp17 = alloca ptr, align 8
  %__vpp_verify31 = alloca ptr, align 8
  %tmp34 = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp35 = alloca ptr, align 8
  %__mptr38 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store ptr %rq, ptr %rq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rq.addr, metadata !5432, metadata !DIExpression()), !dbg !5599
  store i64 %now, ptr %now.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %now.addr, metadata !5433, metadata !DIExpression()), !dbg !5600
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #17, !dbg !5601
  call void @llvm.dbg.declare(metadata ptr %q, metadata !5434, metadata !DIExpression()), !dbg !5602
  %0 = load ptr, ptr %rq.addr, align 8, !dbg !5603
  %q1 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 0, !dbg !5604
  %1 = load ptr, ptr %q1, align 8, !dbg !5604
  store ptr %1, ptr %q, align 8, !dbg !5602
  call void @llvm.lifetime.start.p0(i64 8, ptr %cb) #17, !dbg !5605
  call void @llvm.dbg.declare(metadata ptr %cb, metadata !5435, metadata !DIExpression()), !dbg !5606
  call void @llvm.lifetime.start.p0(i64 8, ptr %stat) #17, !dbg !5607
  call void @llvm.dbg.declare(metadata ptr %stat, metadata !5436, metadata !DIExpression()), !dbg !5608
  call void @llvm.lifetime.start.p0(i64 4, ptr %bucket) #17, !dbg !5609
  call void @llvm.dbg.declare(metadata ptr %bucket, metadata !5437, metadata !DIExpression()), !dbg !5610
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #17, !dbg !5609
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !5438, metadata !DIExpression()), !dbg !5611
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #17, !dbg !5612
  call void @llvm.dbg.declare(metadata ptr %value, metadata !5439, metadata !DIExpression()), !dbg !5613
  %2 = load i64, ptr %now.addr, align 8, !dbg !5614
  %3 = load ptr, ptr %rq.addr, align 8, !dbg !5615
  %io_start_time_ns = getelementptr inbounds %struct.request, ptr %3, i32 0, i32 16, !dbg !5616
  %4 = load i64, ptr %io_start_time_ns, align 8, !dbg !5616
  %cmp = icmp uge i64 %2, %4, !dbg !5617
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5618

cond.true:                                        ; preds = %entry
  %5 = load i64, ptr %now.addr, align 8, !dbg !5619
  %6 = load ptr, ptr %rq.addr, align 8, !dbg !5620
  %io_start_time_ns2 = getelementptr inbounds %struct.request, ptr %6, i32 0, i32 16, !dbg !5621
  %7 = load i64, ptr %io_start_time_ns2, align 8, !dbg !5621
  %sub = sub i64 %5, %7, !dbg !5622
  br label %cond.end, !dbg !5618

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5618

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ 0, %cond.false ], !dbg !5618
  store i64 %cond, ptr %value, align 8, !dbg !5623
  %8 = load ptr, ptr %rq.addr, align 8, !dbg !5624
  %call = call i32 @req_op(ptr noundef %8) #18, !dbg !5626
  %cmp3 = icmp eq i32 %call, 0, !dbg !5627
  br i1 %cmp3, label %if.then, label %lor.lhs.false, !dbg !5628

lor.lhs.false:                                    ; preds = %cond.end
  %9 = load ptr, ptr %rq.addr, align 8, !dbg !5629
  %call4 = call i32 @req_op(ptr noundef %9) #18, !dbg !5630
  %cmp5 = icmp eq i32 %call4, 1, !dbg !5631
  br i1 %cmp5, label %if.then, label %if.end, !dbg !5632

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  %10 = load ptr, ptr %rq.addr, align 8, !dbg !5633
  %11 = load i64, ptr %value, align 8, !dbg !5634
  call void @blk_throtl_stat_add(ptr noundef %10, i64 noundef %11) #18, !dbg !5635
  br label %if.end, !dbg !5635

if.end:                                           ; preds = %if.then, %lor.lhs.false
  call void @rcu_read_lock() #18, !dbg !5636
  br label %do.body, !dbg !5637

do.body:                                          ; preds = %if.end
  call void @__preempt_count_add(i32 noundef 1) #18, !dbg !5638
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !5638, !srcloc !5640
  br label %do.cond, !dbg !5638

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5638

do.end:                                           ; preds = %do.cond
  call void @__this_cpu_preempt_check(ptr noundef @.str) #18, !dbg !5641
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #17, !dbg !5642
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5440, metadata !DIExpression()), !dbg !5642
  br label %do.body7, !dbg !5642

do.body7:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #17, !dbg !5643
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5444, metadata !DIExpression()), !dbg !5643
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5643
  %12 = load ptr, ptr %__vpp_verify, align 8, !dbg !5643
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #17, !dbg !5642
  br label %do.cond8, !dbg !5643

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !5643

do.end9:                                          ; preds = %do.cond8
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #17, !dbg !5644
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5446, metadata !DIExpression()), !dbg !5644
  %13 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.19, ptr @pcpu_hot, i32 0, i32 2)) #19, !dbg !5644, !srcloc !5645
  store i32 %13, ptr %pfo_val__, align 4, !dbg !5644
  %14 = load i32, ptr %pfo_val__, align 4, !dbg !5644
  %conv = zext i32 %14 to i64, !dbg !5644
  %conv11 = trunc i64 %conv to i32, !dbg !5644
  store i32 %conv11, ptr %tmp10, align 4, !dbg !5644
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #17, !dbg !5642
  %15 = load i32, ptr %tmp10, align 4, !dbg !5644
  store i32 %15, ptr %pscr_ret__, align 4, !dbg !5642
  %16 = load i32, ptr %pscr_ret__, align 4, !dbg !5642
  store i32 %16, ptr %tmp12, align 4, !dbg !5642
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #17, !dbg !5641
  %17 = load i32, ptr %tmp12, align 4, !dbg !5642
  store i32 %17, ptr %tmp6, align 4, !dbg !5641
  %18 = load i32, ptr %tmp6, align 4, !dbg !5641
  store i32 %18, ptr %tmp, align 4, !dbg !5638
  %19 = load i32, ptr %tmp, align 4, !dbg !5637
  store i32 %19, ptr %cpu, align 4, !dbg !5646
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !5647
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5448, metadata !DIExpression()), !dbg !5647
  br label %do.body13, !dbg !5648

do.body13:                                        ; preds = %do.end9
  br label %do.cond14, !dbg !5650

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !5650

do.end15:                                         ; preds = %do.cond14
  %20 = load ptr, ptr %q, align 8, !dbg !5648
  %stats = getelementptr inbounds %struct.request_queue, ptr %20, i32 0, i32 3, !dbg !5648
  %21 = load ptr, ptr %stats, align 8, !dbg !5648
  %callbacks = getelementptr inbounds %struct.blk_queue_stats, ptr %21, i32 0, i32 0, !dbg !5648
  %next = getelementptr inbounds %struct.list_head, ptr %callbacks, i32 0, i32 0, !dbg !5648
  %22 = load volatile ptr, ptr %next, align 8, !dbg !5648
  store ptr %22, ptr %tmp16, align 8, !dbg !5650
  %23 = load ptr, ptr %tmp16, align 8, !dbg !5648
  store ptr %23, ptr %__mptr, align 8, !dbg !5647
  %24 = load ptr, ptr %__mptr, align 8, !dbg !5647
  %add.ptr = getelementptr i8, ptr %24, i64 0, !dbg !5647
  store ptr %add.ptr, ptr %tmp17, align 8, !dbg !5647
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !5652
  %25 = load ptr, ptr %tmp17, align 8, !dbg !5647
  store ptr %25, ptr %cb, align 8, !dbg !5652
  br label %for.cond, !dbg !5652

for.cond:                                         ; preds = %do.end41, %do.end15
  %26 = load ptr, ptr %cb, align 8, !dbg !5653
  %list = getelementptr inbounds %struct.blk_stat_callback, ptr %26, i32 0, i32 0, !dbg !5653
  %27 = load ptr, ptr %q, align 8, !dbg !5653
  %stats18 = getelementptr inbounds %struct.request_queue, ptr %27, i32 0, i32 3, !dbg !5653
  %28 = load ptr, ptr %stats18, align 8, !dbg !5653
  %callbacks19 = getelementptr inbounds %struct.blk_queue_stats, ptr %28, i32 0, i32 0, !dbg !5653
  %cmp20 = icmp ne ptr %list, %callbacks19, !dbg !5653
  br i1 %cmp20, label %for.body, label %for.end, !dbg !5652

for.body:                                         ; preds = %for.cond
  %29 = load ptr, ptr %cb, align 8, !dbg !5654
  %call22 = call zeroext i1 @blk_stat_is_active(ptr noundef %29) #18, !dbg !5656
  br i1 %call22, label %if.end24, label %if.then23, !dbg !5657

if.then23:                                        ; preds = %for.body
  br label %for.inc, !dbg !5658

if.end24:                                         ; preds = %for.body
  %30 = load ptr, ptr %cb, align 8, !dbg !5659
  %bucket_fn = getelementptr inbounds %struct.blk_stat_callback, ptr %30, i32 0, i32 3, !dbg !5660
  %31 = load ptr, ptr %bucket_fn, align 8, !dbg !5660
  %32 = load ptr, ptr %rq.addr, align 8, !dbg !5661
  %call25 = call i32 %31(ptr noundef %32) #18, !dbg !5659
  store i32 %call25, ptr %bucket, align 4, !dbg !5662
  %33 = load i32, ptr %bucket, align 4, !dbg !5663
  %cmp26 = icmp slt i32 %33, 0, !dbg !5665
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !5666

if.then28:                                        ; preds = %if.end24
  br label %for.inc, !dbg !5667

if.end29:                                         ; preds = %if.end24
  br label %do.body30, !dbg !5668

do.body30:                                        ; preds = %if.end29
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify31) #17, !dbg !5669
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify31, metadata !5451, metadata !DIExpression()), !dbg !5669
  store ptr null, ptr %__vpp_verify31, align 8, !dbg !5669
  %34 = load ptr, ptr %__vpp_verify31, align 8, !dbg !5669
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify31) #17, !dbg !5668
  br label %do.cond32, !dbg !5669

do.cond32:                                        ; preds = %do.body30
  br label %do.end33, !dbg !5669

do.end33:                                         ; preds = %do.cond32
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #17, !dbg !5670
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5456, metadata !DIExpression()), !dbg !5670
  %35 = load ptr, ptr %cb, align 8, !dbg !5670
  %cpu_stat = getelementptr inbounds %struct.blk_stat_callback, ptr %35, i32 0, i32 2, !dbg !5670
  %36 = load ptr, ptr %cpu_stat, align 8, !dbg !5670
  %37 = ptrtoint ptr %36 to i64, !dbg !5670
  store i64 %37, ptr %__ptr, align 8, !dbg !5670
  %38 = load i64, ptr %__ptr, align 8, !dbg !5670
  %39 = load i32, ptr %cpu, align 4, !dbg !5670
  %idxprom = sext i32 %39 to i64, !dbg !5670
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !5670
  %40 = load i64, ptr %arrayidx, align 8, !dbg !5670
  %add = add i64 %38, %40, !dbg !5670
  %41 = inttoptr i64 %add to ptr, !dbg !5670
  store ptr %41, ptr %tmp35, align 8, !dbg !5670
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #17, !dbg !5668
  %42 = load ptr, ptr %tmp35, align 8, !dbg !5670
  store ptr %42, ptr %tmp34, align 8, !dbg !5669
  %43 = load ptr, ptr %tmp34, align 8, !dbg !5668
  %44 = load i32, ptr %bucket, align 4, !dbg !5671
  %idxprom36 = sext i32 %44 to i64, !dbg !5672
  %arrayidx37 = getelementptr %struct.blk_rq_stat, ptr %43, i64 %idxprom36, !dbg !5672
  store ptr %arrayidx37, ptr %stat, align 8, !dbg !5673
  %45 = load ptr, ptr %stat, align 8, !dbg !5674
  %46 = load i64, ptr %value, align 8, !dbg !5675
  call void @blk_rq_stat_add(ptr noundef %45, i64 noundef %46) #18, !dbg !5676
  br label %for.inc, !dbg !5677

for.inc:                                          ; preds = %do.end33, %if.then28, %if.then23
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr38) #17, !dbg !5678
  call void @llvm.dbg.declare(metadata ptr %__mptr38, metadata !5458, metadata !DIExpression()), !dbg !5678
  br label %do.body39, !dbg !5679

do.body39:                                        ; preds = %for.inc
  br label %do.cond40, !dbg !5681

do.cond40:                                        ; preds = %do.body39
  br label %do.end41, !dbg !5681

do.end41:                                         ; preds = %do.cond40
  %47 = load ptr, ptr %cb, align 8, !dbg !5679
  %list43 = getelementptr inbounds %struct.blk_stat_callback, ptr %47, i32 0, i32 0, !dbg !5679
  %next44 = getelementptr inbounds %struct.list_head, ptr %list43, i32 0, i32 0, !dbg !5679
  %48 = load volatile ptr, ptr %next44, align 8, !dbg !5679
  store ptr %48, ptr %tmp42, align 8, !dbg !5681
  %49 = load ptr, ptr %tmp42, align 8, !dbg !5679
  store ptr %49, ptr %__mptr38, align 8, !dbg !5678
  %50 = load ptr, ptr %__mptr38, align 8, !dbg !5678
  %add.ptr46 = getelementptr i8, ptr %50, i64 0, !dbg !5678
  store ptr %add.ptr46, ptr %tmp45, align 8, !dbg !5678
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr38) #17, !dbg !5653
  %51 = load ptr, ptr %tmp45, align 8, !dbg !5678
  store ptr %51, ptr %cb, align 8, !dbg !5653
  br label %for.cond, !dbg !5653, !llvm.loop !5683

for.end:                                          ; preds = %for.cond
  br label %do.body47, !dbg !5687

do.body47:                                        ; preds = %for.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !5688, !srcloc !5690
  %call48 = call zeroext i1 @__preempt_count_dec_and_test() #18, !dbg !5691
  %lnot = xor i1 %call48, true, !dbg !5691
  %lnot49 = xor i1 %lnot, true, !dbg !5691
  %lnot.ext = zext i1 %lnot49 to i32, !dbg !5691
  %conv50 = sext i32 %lnot.ext to i64, !dbg !5691
  %expval = call i64 @llvm.expect.i64(i64 %conv50, i64 0), !dbg !5691
  %tobool = icmp ne i64 %expval, 0, !dbg !5691
  br i1 %tobool, label %if.then51, label %if.end55, !dbg !5688

if.then51:                                        ; preds = %do.body47
  br label %do.body52, !dbg !5691

do.body52:                                        ; preds = %if.then51
  %52 = call i64 @llvm.read_register.i64(metadata !5460), !dbg !5693
  %53 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %52) #17, !dbg !5693, !srcloc !5695
  call void @llvm.write_register.i64(metadata !5460, i64 %53), !dbg !5693
  br label %do.cond53, !dbg !5693

do.cond53:                                        ; preds = %do.body52
  br label %do.end54, !dbg !5693

do.end54:                                         ; preds = %do.cond53
  br label %if.end55, !dbg !5693

if.end55:                                         ; preds = %do.end54, %do.body47
  br label %do.cond56, !dbg !5688

do.cond56:                                        ; preds = %if.end55
  br label %do.end57, !dbg !5688

do.end57:                                         ; preds = %do.cond56
  call void @rcu_read_unlock() #18, !dbg !5696
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #17, !dbg !5697
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #17, !dbg !5697
  call void @llvm.lifetime.end.p0(i64 4, ptr %bucket) #17, !dbg !5697
  call void @llvm.lifetime.end.p0(i64 8, ptr %stat) #17, !dbg !5697
  call void @llvm.lifetime.end.p0(i64 8, ptr %cb) #17, !dbg !5697
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #17, !dbg !5697
  ret void, !dbg !5697
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @req_op(ptr noundef %req) #3 align 16 !dbg !5698 {
entry:
  %req.addr = alloca ptr, align 8
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !5702, metadata !DIExpression()), !dbg !5703
  %0 = load ptr, ptr %req.addr, align 8, !dbg !5704
  %cmd_flags = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 3, !dbg !5705
  %1 = load i32, ptr %cmd_flags, align 8, !dbg !5705
  %and = and i32 %1, 255, !dbg !5706
  ret i32 %and, !dbg !5707
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @blk_throtl_stat_add(ptr noundef %rq, i64 noundef %time) #3 align 16 !dbg !5708 {
entry:
  %rq.addr = alloca ptr, align 8
  %time.addr = alloca i64, align 8
  store ptr %rq, ptr %rq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rq.addr, metadata !5710, metadata !DIExpression()), !dbg !5712
  store i64 %time, ptr %time.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %time.addr, metadata !5711, metadata !DIExpression()), !dbg !5713
  ret void, !dbg !5714
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #4 align 16 !dbg !5715 {
entry:
  call void @__rcu_read_lock() #18, !dbg !5717
  br label %do.body, !dbg !5718

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5719

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !5721

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !5722

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !5724
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #4 align 16 !dbg !5725 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5728, metadata !DIExpression()), !dbg !5735
  br label %do.body, !dbg !5736

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #17, !dbg !5737
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !5729, metadata !DIExpression()), !dbg !5737
  %0 = load i32, ptr %val.addr, align 4, !dbg !5737
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !5737
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !5737

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !5737
  %cmp = icmp eq i32 %2, 1, !dbg !5737
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !5737

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !5737
  %cmp1 = icmp eq i32 %3, -1, !dbg !5737
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !5737

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !5737
  br label %cond.end, !dbg !5737

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !5737

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !5737
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !5737
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !5738
  %cmp2 = icmp eq i32 %5, 1, !dbg !5738
  br i1 %cmp2, label %if.then, label %if.else, !dbg !5737

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.19, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.19, ptr @pcpu_hot, i32 0, i32 1)) #17, !dbg !5739, !srcloc !5741
  br label %if.end8, !dbg !5738

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !5742
  %cmp3 = icmp eq i32 %6, -1, !dbg !5742
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !5738

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.19, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.19, ptr @pcpu_hot, i32 0, i32 1)) #17, !dbg !5743, !srcloc !5745
  br label %if.end, !dbg !5742

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !5742

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #17, !dbg !5746
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !5731, metadata !DIExpression()), !dbg !5746
  %7 = load i32, ptr %val.addr, align 4, !dbg !5746
  %conv = sext i32 %7 to i64, !dbg !5746
  %and = and i64 %conv, 4294967295, !dbg !5746
  %conv7 = trunc i64 %and to i32, !dbg !5746
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !5746
  %8 = load i32, ptr %pto_val__, align 4, !dbg !5746
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.19, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.19, ptr @pcpu_hot, i32 0, i32 1)) #17, !dbg !5746, !srcloc !5747
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #17, !dbg !5742
  br label %do.cond, !dbg !5746

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !5746

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #17, !dbg !5736
  br label %do.end10, !dbg !5737

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !5748
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #4 align 16 !dbg !5749 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !5754, metadata !DIExpression()), !dbg !5755
  ret void, !dbg !5756
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @blk_stat_is_active(ptr noundef %cb) #3 align 16 !dbg !5757 {
entry:
  %cb.addr = alloca ptr, align 8
  store ptr %cb, ptr %cb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cb.addr, metadata !5761, metadata !DIExpression()), !dbg !5762
  %0 = load ptr, ptr %cb.addr, align 8, !dbg !5763
  %timer = getelementptr inbounds %struct.blk_stat_callback, ptr %0, i32 0, i32 1, !dbg !5764
  %call = call i32 @timer_pending(ptr noundef %timer) #18, !dbg !5765
  %tobool = icmp ne i32 %call, 0, !dbg !5765
  ret i1 %tobool, !dbg !5766
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #4 align 16 !dbg !5767 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #17, !dbg !5771
  call void @llvm.dbg.declare(metadata ptr %c, metadata !5769, metadata !DIExpression()), !dbg !5771
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.19, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.19, ptr @pcpu_hot, i32 0, i32 1)) #17, !dbg !5771, !srcloc !5772
  %1 = icmp ult i8 %0, 2, !dbg !5771
  call void @llvm.assume(i1 %1), !dbg !5771
  store i8 %0, ptr %c, align 1, !dbg !5771
  %2 = load i8, ptr %c, align 1, !dbg !5771, !range !5773, !noundef !885
  %tobool = trunc i8 %2 to i1, !dbg !5771
  %frombool = zext i1 %tobool to i8, !dbg !5771
  store i8 %frombool, ptr %tmp, align 1, !dbg !5771
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #17, !dbg !5774
  %3 = load i8, ptr %tmp, align 1, !dbg !5771, !range !5773, !noundef !885
  %tobool1 = trunc i8 %3 to i1, !dbg !5771
  ret i1 %tobool1, !dbg !5775
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #3 align 16 !dbg !5776 {
entry:
  br label %do.body, !dbg !5777

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5778

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #18, !dbg !5780
  br label %do.body1, !dbg !5781

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !5782

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !5784
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @blk_stat_alloc_callback(ptr noundef %timer_fn, ptr noundef %bucket_fn, i32 noundef %buckets, ptr noundef %data) #0 align 16 !dbg !5785 {
entry:
  %retval = alloca ptr, align 8
  %timer_fn.addr = alloca ptr, align 8
  %bucket_fn.addr = alloca ptr, align 8
  %buckets.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %cb = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %timer_fn, ptr %timer_fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timer_fn.addr, metadata !5789, metadata !DIExpression()), !dbg !5794
  store ptr %bucket_fn, ptr %bucket_fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bucket_fn.addr, metadata !5790, metadata !DIExpression()), !dbg !5795
  store i32 %buckets, ptr %buckets.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %buckets.addr, metadata !5791, metadata !DIExpression()), !dbg !5796
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5792, metadata !DIExpression()), !dbg !5797
  call void @llvm.lifetime.start.p0(i64 8, ptr %cb) #17, !dbg !5798
  call void @llvm.dbg.declare(metadata ptr %cb, metadata !5793, metadata !DIExpression()), !dbg !5799
  %call = call noalias ptr @kmalloc(i64 noundef 120, i32 noundef 3264) #20, !dbg !5800
  store ptr %call, ptr %cb, align 8, !dbg !5801
  %0 = load ptr, ptr %cb, align 8, !dbg !5802
  %tobool = icmp ne ptr %0, null, !dbg !5802
  br i1 %tobool, label %if.end, label %if.then, !dbg !5804

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5805
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5805

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %buckets.addr, align 4, !dbg !5806
  %conv = zext i32 %1 to i64, !dbg !5806
  %call1 = call noalias ptr @kmalloc_array(i64 noundef %conv, i64 noundef 40, i32 noundef 3264) #21, !dbg !5807
  %2 = load ptr, ptr %cb, align 8, !dbg !5808
  %stat = getelementptr inbounds %struct.blk_stat_callback, ptr %2, i32 0, i32 5, !dbg !5809
  store ptr %call1, ptr %stat, align 8, !dbg !5810
  %3 = load ptr, ptr %cb, align 8, !dbg !5811
  %stat2 = getelementptr inbounds %struct.blk_stat_callback, ptr %3, i32 0, i32 5, !dbg !5813
  %4 = load ptr, ptr %stat2, align 8, !dbg !5813
  %tobool3 = icmp ne ptr %4, null, !dbg !5811
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !5814

if.then4:                                         ; preds = %if.end
  %5 = load ptr, ptr %cb, align 8, !dbg !5815
  call void @kfree(ptr noundef %5) #18, !dbg !5817
  store ptr null, ptr %retval, align 8, !dbg !5818
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5818

if.end5:                                          ; preds = %if.end
  %6 = load i32, ptr %buckets.addr, align 4, !dbg !5819
  %conv6 = zext i32 %6 to i64, !dbg !5819
  %mul = mul i64 %conv6, 40, !dbg !5820
  %call7 = call noalias ptr @__alloc_percpu(i64 noundef %mul, i64 noundef 8) #20, !dbg !5821
  %7 = load ptr, ptr %cb, align 8, !dbg !5822
  %cpu_stat = getelementptr inbounds %struct.blk_stat_callback, ptr %7, i32 0, i32 2, !dbg !5823
  store ptr %call7, ptr %cpu_stat, align 8, !dbg !5824
  %8 = load ptr, ptr %cb, align 8, !dbg !5825
  %cpu_stat8 = getelementptr inbounds %struct.blk_stat_callback, ptr %8, i32 0, i32 2, !dbg !5827
  %9 = load ptr, ptr %cpu_stat8, align 8, !dbg !5827
  %tobool9 = icmp ne ptr %9, null, !dbg !5825
  br i1 %tobool9, label %if.end12, label %if.then10, !dbg !5828

if.then10:                                        ; preds = %if.end5
  %10 = load ptr, ptr %cb, align 8, !dbg !5829
  %stat11 = getelementptr inbounds %struct.blk_stat_callback, ptr %10, i32 0, i32 5, !dbg !5831
  %11 = load ptr, ptr %stat11, align 8, !dbg !5831
  call void @kfree(ptr noundef %11) #18, !dbg !5832
  %12 = load ptr, ptr %cb, align 8, !dbg !5833
  call void @kfree(ptr noundef %12) #18, !dbg !5834
  store ptr null, ptr %retval, align 8, !dbg !5835
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5835

if.end12:                                         ; preds = %if.end5
  %13 = load ptr, ptr %timer_fn.addr, align 8, !dbg !5836
  %14 = load ptr, ptr %cb, align 8, !dbg !5837
  %timer_fn13 = getelementptr inbounds %struct.blk_stat_callback, ptr %14, i32 0, i32 6, !dbg !5838
  store ptr %13, ptr %timer_fn13, align 8, !dbg !5839
  %15 = load ptr, ptr %bucket_fn.addr, align 8, !dbg !5840
  %16 = load ptr, ptr %cb, align 8, !dbg !5841
  %bucket_fn14 = getelementptr inbounds %struct.blk_stat_callback, ptr %16, i32 0, i32 3, !dbg !5842
  store ptr %15, ptr %bucket_fn14, align 8, !dbg !5843
  %17 = load ptr, ptr %data.addr, align 8, !dbg !5844
  %18 = load ptr, ptr %cb, align 8, !dbg !5845
  %data15 = getelementptr inbounds %struct.blk_stat_callback, ptr %18, i32 0, i32 7, !dbg !5846
  store ptr %17, ptr %data15, align 8, !dbg !5847
  %19 = load i32, ptr %buckets.addr, align 4, !dbg !5848
  %20 = load ptr, ptr %cb, align 8, !dbg !5849
  %buckets16 = getelementptr inbounds %struct.blk_stat_callback, ptr %20, i32 0, i32 4, !dbg !5850
  store i32 %19, ptr %buckets16, align 8, !dbg !5851
  %21 = load ptr, ptr %cb, align 8, !dbg !5852
  %timer = getelementptr inbounds %struct.blk_stat_callback, ptr %21, i32 0, i32 1, !dbg !5852
  call void @init_timer_key(ptr noundef %timer, ptr noundef @blk_stat_timer_fn, i32 noundef 0, ptr noundef null, ptr noundef null) #18, !dbg !5852
  %22 = load ptr, ptr %cb, align 8, !dbg !5853
  store ptr %22, ptr %retval, align 8, !dbg !5854
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5854

cleanup:                                          ; preds = %if.end12, %if.then10, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cb) #17, !dbg !5855
  %23 = load ptr, ptr %retval, align 8, !dbg !5855
  ret ptr %23, !dbg !5855
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !5856 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5860, metadata !DIExpression()), !dbg !5865
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5861, metadata !DIExpression()), !dbg !5866
  %0 = load i64, ptr %size.addr, align 8, !dbg !5867
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5868
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5869

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5870
  %tobool = icmp ne i64 %2, 0, !dbg !5870
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5871

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #17, !dbg !5872
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5862, metadata !DIExpression()), !dbg !5873
  %3 = load i64, ptr %size.addr, align 8, !dbg !5874
  %cmp = icmp ugt i64 %3, 8192, !dbg !5876
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5877

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5878
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5879
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #20, !dbg !5880
  store ptr %call, ptr %retval, align 8, !dbg !5881
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5881

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5882
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !5882
  store i32 %call2, ptr %index, align 4, !dbg !5883
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5884
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5885
  %9 = ptrtoint ptr %8 to i64, !dbg !5885
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !5886
  %idxprom = zext i32 %call3 to i64, !dbg !5887
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5887
  %10 = load i32, ptr %index, align 4, !dbg !5888
  %idxprom4 = zext i32 %10 to i64, !dbg !5887
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5887
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5887
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5889
  %13 = load i64, ptr %size.addr, align 8, !dbg !5890
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #22, !dbg !5891
  store ptr %call6, ptr %retval, align 8, !dbg !5892
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5892

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #17, !dbg !5893
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5894
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5895
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #20, !dbg !5896
  store ptr %call8, ptr %retval, align 8, !dbg !5897
  br label %return, !dbg !5897

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5898
  ret ptr %16, !dbg !5898
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !5899 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5903, metadata !DIExpression()), !dbg !5907
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5904, metadata !DIExpression()), !dbg !5908
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5905, metadata !DIExpression()), !dbg !5909
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #17, !dbg !5910
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !5906, metadata !DIExpression()), !dbg !5911
  %0 = load i64, ptr %n.addr, align 8, !dbg !5912
  %1 = load i64, ptr %size.addr, align 8, !dbg !5912
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !5912
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !5912
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !5912
  store i64 %4, ptr %bytes, align 8, !dbg !5912
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #18, !dbg !5912
  %lnot = xor i1 %call, true, !dbg !5912
  %lnot1 = xor i1 %lnot, true, !dbg !5912
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5912
  %conv = sext i32 %lnot.ext to i64, !dbg !5912
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5912
  %tobool = icmp ne i64 %expval, 0, !dbg !5912
  br i1 %tobool, label %if.then, label %if.end, !dbg !5914

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5915
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5915

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !5916
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !5918
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !5919

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !5920
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !5921
  br i1 %8, label %if.then2, label %if.end4, !dbg !5922

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !5923
  %10 = load i32, ptr %flags.addr, align 4, !dbg !5924
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #20, !dbg !5925
  store ptr %call3, ptr %retval, align 8, !dbg !5926
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5926

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !5927
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5928
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #20, !dbg !5929
  store ptr %call5, ptr %retval, align 8, !dbg !5930
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5930

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #17, !dbg !5931
  %13 = load ptr, ptr %retval, align 8, !dbg !5931
  ret ptr %13, !dbg !5931
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5932 dso_local void @kfree(ptr noundef) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5935 dso_local noalias ptr @__alloc_percpu(i64 noundef, i64 noundef) #11

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5939 dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #10

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @blk_stat_timer_fn(ptr noundef %t) #0 align 16 !dbg !5943 {
entry:
  %t.addr = alloca ptr, align 8
  %cb = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %bucket = alloca i32, align 4
  %cpu = alloca i32, align 4
  %cpu_stat = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp8 = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !5945, metadata !DIExpression()), !dbg !5960
  call void @llvm.lifetime.start.p0(i64 8, ptr %cb) #17, !dbg !5961
  call void @llvm.dbg.declare(metadata ptr %cb, metadata !5946, metadata !DIExpression()), !dbg !5962
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !5963
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5947, metadata !DIExpression()), !dbg !5963
  %0 = load ptr, ptr %t.addr, align 8, !dbg !5963
  store ptr %0, ptr %__mptr, align 8, !dbg !5963
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5963
  %add.ptr = getelementptr i8, ptr %1, i64 -16, !dbg !5963
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5963
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !5964
  %2 = load ptr, ptr %tmp, align 8, !dbg !5963
  store ptr %2, ptr %cb, align 8, !dbg !5962
  call void @llvm.lifetime.start.p0(i64 4, ptr %bucket) #17, !dbg !5965
  call void @llvm.dbg.declare(metadata ptr %bucket, metadata !5949, metadata !DIExpression()), !dbg !5966
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #17, !dbg !5967
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !5950, metadata !DIExpression()), !dbg !5968
  store i32 0, ptr %bucket, align 4, !dbg !5969
  br label %for.cond, !dbg !5971

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %bucket, align 4, !dbg !5972
  %4 = load ptr, ptr %cb, align 8, !dbg !5974
  %buckets = getelementptr inbounds %struct.blk_stat_callback, ptr %4, i32 0, i32 4, !dbg !5975
  %5 = load i32, ptr %buckets, align 8, !dbg !5975
  %cmp = icmp ult i32 %3, %5, !dbg !5976
  br i1 %cmp, label %for.body, label %for.end, !dbg !5977

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %cb, align 8, !dbg !5978
  %stat = getelementptr inbounds %struct.blk_stat_callback, ptr %6, i32 0, i32 5, !dbg !5979
  %7 = load ptr, ptr %stat, align 8, !dbg !5979
  %8 = load i32, ptr %bucket, align 4, !dbg !5980
  %idxprom = zext i32 %8 to i64, !dbg !5978
  %arrayidx = getelementptr %struct.blk_rq_stat, ptr %7, i64 %idxprom, !dbg !5978
  call void @blk_rq_stat_init(ptr noundef %arrayidx) #18, !dbg !5981
  br label %for.inc, !dbg !5981

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %bucket, align 4, !dbg !5982
  %inc = add i32 %9, 1, !dbg !5982
  store i32 %inc, ptr %bucket, align 4, !dbg !5982
  br label %for.cond, !dbg !5983, !llvm.loop !5984

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cpu, align 4, !dbg !5986
  br label %for.cond1, !dbg !5986

for.cond1:                                        ; preds = %for.inc26, %for.end
  %10 = load i32, ptr %cpu, align 4, !dbg !5987
  %conv = sext i32 %10 to i64, !dbg !5987
  %call = call i64 @find_next_bit(ptr noundef @__cpu_online_mask, i64 noundef 64, i64 noundef %conv) #18, !dbg !5987
  %conv2 = trunc i64 %call to i32, !dbg !5987
  store i32 %conv2, ptr %cpu, align 4, !dbg !5987
  %11 = load i32, ptr %cpu, align 4, !dbg !5987
  %cmp3 = icmp ult i32 %11, 64, !dbg !5987
  br i1 %cmp3, label %for.body5, label %for.end28, !dbg !5986

for.body5:                                        ; preds = %for.cond1
  call void @llvm.lifetime.start.p0(i64 8, ptr %cpu_stat) #17, !dbg !5988
  call void @llvm.dbg.declare(metadata ptr %cpu_stat, metadata !5951, metadata !DIExpression()), !dbg !5989
  br label %do.body, !dbg !5990

do.body:                                          ; preds = %for.body5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #17, !dbg !5991
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5955, metadata !DIExpression()), !dbg !5991
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5991
  %12 = load ptr, ptr %__vpp_verify, align 8, !dbg !5991
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #17, !dbg !5990
  br label %do.cond, !dbg !5991

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5991

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #17, !dbg !5992
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5958, metadata !DIExpression()), !dbg !5992
  %13 = load ptr, ptr %cb, align 8, !dbg !5992
  %cpu_stat7 = getelementptr inbounds %struct.blk_stat_callback, ptr %13, i32 0, i32 2, !dbg !5992
  %14 = load ptr, ptr %cpu_stat7, align 8, !dbg !5992
  %15 = ptrtoint ptr %14 to i64, !dbg !5992
  store i64 %15, ptr %__ptr, align 8, !dbg !5992
  %16 = load i64, ptr %__ptr, align 8, !dbg !5992
  %17 = load i32, ptr %cpu, align 4, !dbg !5992
  %idxprom9 = sext i32 %17 to i64, !dbg !5992
  %arrayidx10 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom9, !dbg !5992
  %18 = load i64, ptr %arrayidx10, align 8, !dbg !5992
  %add = add i64 %16, %18, !dbg !5992
  %19 = inttoptr i64 %add to ptr, !dbg !5992
  store ptr %19, ptr %tmp8, align 8, !dbg !5992
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #17, !dbg !5990
  %20 = load ptr, ptr %tmp8, align 8, !dbg !5992
  store ptr %20, ptr %tmp6, align 8, !dbg !5991
  %21 = load ptr, ptr %tmp6, align 8, !dbg !5990
  store ptr %21, ptr %cpu_stat, align 8, !dbg !5993
  store i32 0, ptr %bucket, align 4, !dbg !5994
  br label %for.cond11, !dbg !5996

for.cond11:                                       ; preds = %for.inc23, %do.end
  %22 = load i32, ptr %bucket, align 4, !dbg !5997
  %23 = load ptr, ptr %cb, align 8, !dbg !5999
  %buckets12 = getelementptr inbounds %struct.blk_stat_callback, ptr %23, i32 0, i32 4, !dbg !6000
  %24 = load i32, ptr %buckets12, align 8, !dbg !6000
  %cmp13 = icmp ult i32 %22, %24, !dbg !6001
  br i1 %cmp13, label %for.body15, label %for.end25, !dbg !6002

for.body15:                                       ; preds = %for.cond11
  %25 = load ptr, ptr %cb, align 8, !dbg !6003
  %stat16 = getelementptr inbounds %struct.blk_stat_callback, ptr %25, i32 0, i32 5, !dbg !6005
  %26 = load ptr, ptr %stat16, align 8, !dbg !6005
  %27 = load i32, ptr %bucket, align 4, !dbg !6006
  %idxprom17 = zext i32 %27 to i64, !dbg !6003
  %arrayidx18 = getelementptr %struct.blk_rq_stat, ptr %26, i64 %idxprom17, !dbg !6003
  %28 = load ptr, ptr %cpu_stat, align 8, !dbg !6007
  %29 = load i32, ptr %bucket, align 4, !dbg !6008
  %idxprom19 = zext i32 %29 to i64, !dbg !6007
  %arrayidx20 = getelementptr %struct.blk_rq_stat, ptr %28, i64 %idxprom19, !dbg !6007
  call void @blk_rq_stat_sum(ptr noundef %arrayidx18, ptr noundef %arrayidx20) #18, !dbg !6009
  %30 = load ptr, ptr %cpu_stat, align 8, !dbg !6010
  %31 = load i32, ptr %bucket, align 4, !dbg !6011
  %idxprom21 = zext i32 %31 to i64, !dbg !6010
  %arrayidx22 = getelementptr %struct.blk_rq_stat, ptr %30, i64 %idxprom21, !dbg !6010
  call void @blk_rq_stat_init(ptr noundef %arrayidx22) #18, !dbg !6012
  br label %for.inc23, !dbg !6013

for.inc23:                                        ; preds = %for.body15
  %32 = load i32, ptr %bucket, align 4, !dbg !6014
  %inc24 = add i32 %32, 1, !dbg !6014
  store i32 %inc24, ptr %bucket, align 4, !dbg !6014
  br label %for.cond11, !dbg !6015, !llvm.loop !6016

for.end25:                                        ; preds = %for.cond11
  call void @llvm.lifetime.end.p0(i64 8, ptr %cpu_stat) #17, !dbg !6018
  br label %for.inc26, !dbg !6019

for.inc26:                                        ; preds = %for.end25
  %33 = load i32, ptr %cpu, align 4, !dbg !5987
  %inc27 = add i32 %33, 1, !dbg !5987
  store i32 %inc27, ptr %cpu, align 4, !dbg !5987
  br label %for.cond1, !dbg !5987, !llvm.loop !6020

for.end28:                                        ; preds = %for.cond1
  %34 = load ptr, ptr %cb, align 8, !dbg !6022
  %timer_fn = getelementptr inbounds %struct.blk_stat_callback, ptr %34, i32 0, i32 6, !dbg !6023
  %35 = load ptr, ptr %timer_fn, align 8, !dbg !6023
  %36 = load ptr, ptr %cb, align 8, !dbg !6024
  call void %35(ptr noundef %36) #18, !dbg !6022
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #17, !dbg !6025
  call void @llvm.lifetime.end.p0(i64 4, ptr %bucket) #17, !dbg !6025
  call void @llvm.lifetime.end.p0(i64 8, ptr %cb) #17, !dbg !6025
  ret void, !dbg !6025
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @blk_stat_add_callback(ptr noundef %q, ptr noundef %cb) #0 align 16 !dbg !6026 {
entry:
  %q.addr = alloca ptr, align 8
  %cb.addr = alloca ptr, align 8
  %bucket = alloca i32, align 4
  %flags = alloca i64, align 8
  %cpu = alloca i32, align 4
  %cpu_stat = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp4 = alloca ptr, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp18 = alloca i32, align 4
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !6030, metadata !DIExpression()), !dbg !6049
  store ptr %cb, ptr %cb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cb.addr, metadata !6031, metadata !DIExpression()), !dbg !6050
  call void @llvm.lifetime.start.p0(i64 4, ptr %bucket) #17, !dbg !6051
  call void @llvm.dbg.declare(metadata ptr %bucket, metadata !6032, metadata !DIExpression()), !dbg !6052
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #17, !dbg !6053
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6033, metadata !DIExpression()), !dbg !6054
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #17, !dbg !6055
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !6034, metadata !DIExpression()), !dbg !6056
  store i32 0, ptr %cpu, align 4, !dbg !6057
  br label %for.cond, !dbg !6057

for.cond:                                         ; preds = %for.inc11, %entry
  %0 = load i32, ptr %cpu, align 4, !dbg !6058
  %conv = sext i32 %0 to i64, !dbg !6058
  %call = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv) #18, !dbg !6058
  %conv1 = trunc i64 %call to i32, !dbg !6058
  store i32 %conv1, ptr %cpu, align 4, !dbg !6058
  %1 = load i32, ptr %cpu, align 4, !dbg !6058
  %cmp = icmp ult i32 %1, 64, !dbg !6058
  br i1 %cmp, label %for.body, label %for.end13, !dbg !6057

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %cpu_stat) #17, !dbg !6059
  call void @llvm.dbg.declare(metadata ptr %cpu_stat, metadata !6035, metadata !DIExpression()), !dbg !6060
  br label %do.body, !dbg !6061

do.body:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #17, !dbg !6062
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6039, metadata !DIExpression()), !dbg !6062
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6062
  %2 = load ptr, ptr %__vpp_verify, align 8, !dbg !6062
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #17, !dbg !6061
  br label %do.cond, !dbg !6062

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6062

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #17, !dbg !6063
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6042, metadata !DIExpression()), !dbg !6063
  %3 = load ptr, ptr %cb.addr, align 8, !dbg !6063
  %cpu_stat3 = getelementptr inbounds %struct.blk_stat_callback, ptr %3, i32 0, i32 2, !dbg !6063
  %4 = load ptr, ptr %cpu_stat3, align 8, !dbg !6063
  %5 = ptrtoint ptr %4 to i64, !dbg !6063
  store i64 %5, ptr %__ptr, align 8, !dbg !6063
  %6 = load i64, ptr %__ptr, align 8, !dbg !6063
  %7 = load i32, ptr %cpu, align 4, !dbg !6063
  %idxprom = sext i32 %7 to i64, !dbg !6063
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !6063
  %8 = load i64, ptr %arrayidx, align 8, !dbg !6063
  %add = add i64 %6, %8, !dbg !6063
  %9 = inttoptr i64 %add to ptr, !dbg !6063
  store ptr %9, ptr %tmp4, align 8, !dbg !6063
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #17, !dbg !6061
  %10 = load ptr, ptr %tmp4, align 8, !dbg !6063
  store ptr %10, ptr %tmp, align 8, !dbg !6062
  %11 = load ptr, ptr %tmp, align 8, !dbg !6061
  store ptr %11, ptr %cpu_stat, align 8, !dbg !6064
  store i32 0, ptr %bucket, align 4, !dbg !6065
  br label %for.cond5, !dbg !6067

for.cond5:                                        ; preds = %for.inc, %do.end
  %12 = load i32, ptr %bucket, align 4, !dbg !6068
  %13 = load ptr, ptr %cb.addr, align 8, !dbg !6070
  %buckets = getelementptr inbounds %struct.blk_stat_callback, ptr %13, i32 0, i32 4, !dbg !6071
  %14 = load i32, ptr %buckets, align 8, !dbg !6071
  %cmp6 = icmp ult i32 %12, %14, !dbg !6072
  br i1 %cmp6, label %for.body8, label %for.end, !dbg !6073

for.body8:                                        ; preds = %for.cond5
  %15 = load ptr, ptr %cpu_stat, align 8, !dbg !6074
  %16 = load i32, ptr %bucket, align 4, !dbg !6075
  %idxprom9 = zext i32 %16 to i64, !dbg !6074
  %arrayidx10 = getelementptr %struct.blk_rq_stat, ptr %15, i64 %idxprom9, !dbg !6074
  call void @blk_rq_stat_init(ptr noundef %arrayidx10) #18, !dbg !6076
  br label %for.inc, !dbg !6076

for.inc:                                          ; preds = %for.body8
  %17 = load i32, ptr %bucket, align 4, !dbg !6077
  %inc = add i32 %17, 1, !dbg !6077
  store i32 %inc, ptr %bucket, align 4, !dbg !6077
  br label %for.cond5, !dbg !6078, !llvm.loop !6079

for.end:                                          ; preds = %for.cond5
  call void @llvm.lifetime.end.p0(i64 8, ptr %cpu_stat) #17, !dbg !6081
  br label %for.inc11, !dbg !6082

for.inc11:                                        ; preds = %for.end
  %18 = load i32, ptr %cpu, align 4, !dbg !6058
  %inc12 = add i32 %18, 1, !dbg !6058
  store i32 %inc12, ptr %cpu, align 4, !dbg !6058
  br label %for.cond, !dbg !6058, !llvm.loop !6083

for.end13:                                        ; preds = %for.cond
  br label %do.body14, !dbg !6085

do.body14:                                        ; preds = %for.end13
  br label %do.body15, !dbg !6086

do.body15:                                        ; preds = %do.body14
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #17, !dbg !6087
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6044, metadata !DIExpression()), !dbg !6087
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #17, !dbg !6087
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6048, metadata !DIExpression()), !dbg !6087
  %cmp16 = icmp eq ptr %__dummy, %__dummy2, !dbg !6087
  %conv17 = zext i1 %cmp16 to i32, !dbg !6087
  store i32 1, ptr %tmp18, align 4, !dbg !6087
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #17, !dbg !6088
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #17, !dbg !6088
  %19 = load i32, ptr %tmp18, align 4, !dbg !6087
  %20 = load ptr, ptr %q.addr, align 8, !dbg !6088
  %stats = getelementptr inbounds %struct.request_queue, ptr %20, i32 0, i32 3, !dbg !6088
  %21 = load ptr, ptr %stats, align 8, !dbg !6088
  %lock = getelementptr inbounds %struct.blk_queue_stats, ptr %21, i32 0, i32 1, !dbg !6088
  %call19 = call ptr @spinlock_check(ptr noundef %lock) #18, !dbg !6088
  %call20 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call19) #18, !dbg !6088
  store i64 %call20, ptr %flags, align 8, !dbg !6088
  br label %do.cond21, !dbg !6088

do.cond21:                                        ; preds = %do.body15
  br label %do.end22, !dbg !6088

do.end22:                                         ; preds = %do.cond21
  br label %do.cond23, !dbg !6086

do.cond23:                                        ; preds = %do.end22
  br label %do.end24, !dbg !6086

do.end24:                                         ; preds = %do.cond23
  %22 = load ptr, ptr %cb.addr, align 8, !dbg !6089
  %list = getelementptr inbounds %struct.blk_stat_callback, ptr %22, i32 0, i32 0, !dbg !6090
  %23 = load ptr, ptr %q.addr, align 8, !dbg !6091
  %stats25 = getelementptr inbounds %struct.request_queue, ptr %23, i32 0, i32 3, !dbg !6092
  %24 = load ptr, ptr %stats25, align 8, !dbg !6092
  %callbacks = getelementptr inbounds %struct.blk_queue_stats, ptr %24, i32 0, i32 0, !dbg !6093
  call void @list_add_tail_rcu(ptr noundef %list, ptr noundef %callbacks) #18, !dbg !6094
  %25 = load ptr, ptr %q.addr, align 8, !dbg !6095
  call void @blk_queue_flag_set(i32 noundef 20, ptr noundef %25) #18, !dbg !6096
  %26 = load ptr, ptr %q.addr, align 8, !dbg !6097
  %stats26 = getelementptr inbounds %struct.request_queue, ptr %26, i32 0, i32 3, !dbg !6098
  %27 = load ptr, ptr %stats26, align 8, !dbg !6098
  %lock27 = getelementptr inbounds %struct.blk_queue_stats, ptr %27, i32 0, i32 1, !dbg !6099
  %28 = load i64, ptr %flags, align 8, !dbg !6100
  call void @spin_unlock_irqrestore(ptr noundef %lock27, i64 noundef %28) #18, !dbg !6101
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #17, !dbg !6102
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #17, !dbg !6102
  call void @llvm.lifetime.end.p0(i64 4, ptr %bucket) #17, !dbg !6102
  ret void, !dbg !6102
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #3 align 16 !dbg !6103 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6109, metadata !DIExpression()), !dbg !6115
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6110, metadata !DIExpression()), !dbg !6116
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !6111, metadata !DIExpression()), !dbg !6117
  %0 = load i64, ptr %size.addr, align 8, !dbg !6118
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6118
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !6118

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6118
  %cmp = icmp ule i64 %2, 64, !dbg !6118
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !6118

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !6118
  %cmp2 = icmp ugt i64 %3, 0, !dbg !6118
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !6119

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #17, !dbg !6120
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6112, metadata !DIExpression()), !dbg !6121
  %4 = load i64, ptr %offset.addr, align 8, !dbg !6122
  %5 = load i64, ptr %size.addr, align 8, !dbg !6122
  %cmp3 = icmp uge i64 %4, %5, !dbg !6122
  %lnot = xor i1 %cmp3, true, !dbg !6122
  %lnot4 = xor i1 %lnot, true, !dbg !6122
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !6122
  %conv = sext i32 %lnot.ext to i64, !dbg !6122
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6122
  %tobool = icmp ne i64 %expval, 0, !dbg !6122
  br i1 %tobool, label %if.then5, label %if.end, !dbg !6124

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6125
  store i64 %6, ptr %retval, align 8, !dbg !6126
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6126

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !6127
  %8 = load i64, ptr %7, align 8, !dbg !6128
  %9 = load i64, ptr %offset.addr, align 8, !dbg !6129
  %shl = shl i64 1, %9, !dbg !6129
  %sub = sub i64 -1, %shl, !dbg !6129
  %add = add i64 %sub, 1, !dbg !6129
  %10 = load i64, ptr %size.addr, align 8, !dbg !6129
  %sub6 = sub i64 %10, 1, !dbg !6129
  %sub7 = sub i64 63, %sub6, !dbg !6129
  %shr = lshr i64 -1, %sub7, !dbg !6129
  %and = and i64 %add, %shr, !dbg !6129
  %add8 = add i64 0, %and, !dbg !6129
  %and9 = and i64 %8, %add8, !dbg !6130
  store i64 %and9, ptr %val, align 8, !dbg !6131
  %11 = load i64, ptr %val, align 8, !dbg !6132
  %tobool10 = icmp ne i64 %11, 0, !dbg !6132
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !6132

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !6133
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !6133
  br i1 %13, label %cond.true11, label %cond.false, !dbg !6133

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !6133
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !6133
  %cast = trunc i64 %15 to i32, !dbg !6133
  %conv12 = sext i32 %cast to i64, !dbg !6133
  br label %cond.end, !dbg !6133

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !6133
  %call = call i64 @variable__ffs(i64 noundef %16) #18, !dbg !6133
  br label %cond.end, !dbg !6133

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !6133
  br label %cond.end14, !dbg !6132

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !6134
  br label %cond.end14, !dbg !6132

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !6132
  store i64 %cond15, ptr %retval, align 8, !dbg !6135
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6135

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #17, !dbg !6136
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !6137
  %19 = load i64, ptr %size.addr, align 8, !dbg !6138
  %20 = load i64, ptr %offset.addr, align 8, !dbg !6139
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #18, !dbg !6140
  store i64 %call17, ptr %retval, align 8, !dbg !6141
  br label %return, !dbg !6141

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !6142
  ret i64 %21, !dbg !6142
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6143 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #10 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #4 align 16 !dbg !6148 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6153, metadata !DIExpression()), !dbg !6154
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6155
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6156
  ret ptr %1, !dbg !6157
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail_rcu(ptr noundef %new, ptr noundef %head) #3 align 16 !dbg !6158 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6163, metadata !DIExpression()), !dbg !6165
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6164, metadata !DIExpression()), !dbg !6166
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6167
  %1 = load ptr, ptr %head.addr, align 8, !dbg !6168
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6169
  %2 = load ptr, ptr %prev, align 8, !dbg !6169
  %3 = load ptr, ptr %head.addr, align 8, !dbg !6170
  call void @__list_add_rcu(ptr noundef %0, ptr noundef %2, ptr noundef %3) #18, !dbg !6171
  ret void, !dbg !6172
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6173 dso_local void @blk_queue_flag_set(i32 noundef, ptr noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #4 align 16 !dbg !6176 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6180, metadata !DIExpression()), !dbg !6186
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6181, metadata !DIExpression()), !dbg !6187
  br label %do.body, !dbg !6188

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #17, !dbg !6189
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6182, metadata !DIExpression()), !dbg !6189
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #17, !dbg !6189
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6185, metadata !DIExpression()), !dbg !6189
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6189
  %conv = zext i1 %cmp to i32, !dbg !6189
  store i32 1, ptr %tmp, align 4, !dbg !6189
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #17, !dbg !6190
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #17, !dbg !6190
  %0 = load i32, ptr %tmp, align 4, !dbg !6189
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !6190
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !6190
  %3 = load i64, ptr %flags.addr, align 8, !dbg !6190
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #18, !dbg !6190
  br label %do.end, !dbg !6190

do.end:                                           ; preds = %do.body
  ret void, !dbg !6191
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @blk_stat_remove_callback(ptr noundef %q, ptr noundef %cb) #0 align 16 !dbg !6192 {
entry:
  %q.addr = alloca ptr, align 8
  %cb.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !6194, metadata !DIExpression()), !dbg !6202
  store ptr %cb, ptr %cb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cb.addr, metadata !6195, metadata !DIExpression()), !dbg !6203
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #17, !dbg !6204
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6196, metadata !DIExpression()), !dbg !6205
  br label %do.body, !dbg !6206

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6207

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #17, !dbg !6208
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6197, metadata !DIExpression()), !dbg !6208
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #17, !dbg !6208
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6201, metadata !DIExpression()), !dbg !6208
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6208
  %conv = zext i1 %cmp to i32, !dbg !6208
  store i32 1, ptr %tmp, align 4, !dbg !6208
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #17, !dbg !6209
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #17, !dbg !6209
  %0 = load i32, ptr %tmp, align 4, !dbg !6208
  %1 = load ptr, ptr %q.addr, align 8, !dbg !6209
  %stats = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 3, !dbg !6209
  %2 = load ptr, ptr %stats, align 8, !dbg !6209
  %lock = getelementptr inbounds %struct.blk_queue_stats, ptr %2, i32 0, i32 1, !dbg !6209
  %call = call ptr @spinlock_check(ptr noundef %lock) #18, !dbg !6209
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #18, !dbg !6209
  store i64 %call2, ptr %flags, align 8, !dbg !6209
  br label %do.cond, !dbg !6209

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6209

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !6207

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !6207

do.end4:                                          ; preds = %do.cond3
  %3 = load ptr, ptr %cb.addr, align 8, !dbg !6210
  %list = getelementptr inbounds %struct.blk_stat_callback, ptr %3, i32 0, i32 0, !dbg !6211
  call void @list_del_rcu(ptr noundef %list) #18, !dbg !6212
  %4 = load ptr, ptr %q.addr, align 8, !dbg !6213
  %stats5 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 3, !dbg !6215
  %5 = load ptr, ptr %stats5, align 8, !dbg !6215
  %callbacks = getelementptr inbounds %struct.blk_queue_stats, ptr %5, i32 0, i32 0, !dbg !6216
  %call6 = call i32 @list_empty(ptr noundef %callbacks) #18, !dbg !6217
  %tobool = icmp ne i32 %call6, 0, !dbg !6217
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6218

land.lhs.true:                                    ; preds = %do.end4
  %6 = load ptr, ptr %q.addr, align 8, !dbg !6219
  %stats7 = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 3, !dbg !6220
  %7 = load ptr, ptr %stats7, align 8, !dbg !6220
  %accounting = getelementptr inbounds %struct.blk_queue_stats, ptr %7, i32 0, i32 2, !dbg !6221
  %8 = load i32, ptr %accounting, align 4, !dbg !6221
  %tobool8 = icmp ne i32 %8, 0, !dbg !6219
  br i1 %tobool8, label %if.end, label %if.then, !dbg !6222

if.then:                                          ; preds = %land.lhs.true
  %9 = load ptr, ptr %q.addr, align 8, !dbg !6223
  call void @blk_queue_flag_clear(i32 noundef 20, ptr noundef %9) #18, !dbg !6224
  br label %if.end, !dbg !6224

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end4
  %10 = load ptr, ptr %q.addr, align 8, !dbg !6225
  %stats9 = getelementptr inbounds %struct.request_queue, ptr %10, i32 0, i32 3, !dbg !6226
  %11 = load ptr, ptr %stats9, align 8, !dbg !6226
  %lock10 = getelementptr inbounds %struct.blk_queue_stats, ptr %11, i32 0, i32 1, !dbg !6227
  %12 = load i64, ptr %flags, align 8, !dbg !6228
  call void @spin_unlock_irqrestore(ptr noundef %lock10, i64 noundef %12) #18, !dbg !6229
  %13 = load ptr, ptr %cb.addr, align 8, !dbg !6230
  %timer = getelementptr inbounds %struct.blk_stat_callback, ptr %13, i32 0, i32 1, !dbg !6231
  %call11 = call i32 @del_timer_sync(ptr noundef %timer) #18, !dbg !6232
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #17, !dbg !6233
  ret void, !dbg !6233
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del_rcu(ptr noundef %entry1) #3 align 16 !dbg !6234 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6238, metadata !DIExpression()), !dbg !6239
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6240
  call void @__list_del_entry(ptr noundef %0) #18, !dbg !6241
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6242
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6243
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !6244
  ret void, !dbg !6245
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #3 align 16 !dbg !6246 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6253, metadata !DIExpression()), !dbg !6254
  br label %do.body, !dbg !6255

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6257

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !6255
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !6255
  %1 = load volatile ptr, ptr %next, align 8, !dbg !6255
  store ptr %1, ptr %tmp, align 8, !dbg !6257
  %2 = load ptr, ptr %tmp, align 8, !dbg !6255
  %3 = load ptr, ptr %head.addr, align 8, !dbg !6259
  %cmp = icmp eq ptr %2, %3, !dbg !6260
  %conv = zext i1 %cmp to i32, !dbg !6260
  ret i32 %conv, !dbg !6261
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6262 dso_local void @blk_queue_flag_clear(i32 noundef, ptr noundef) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @del_timer_sync(ptr noundef %timer) #3 align 16 !dbg !6263 {
entry:
  %timer.addr = alloca ptr, align 8
  store ptr %timer, ptr %timer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timer.addr, metadata !6267, metadata !DIExpression()), !dbg !6268
  %0 = load ptr, ptr %timer.addr, align 8, !dbg !6269
  %call = call i32 @timer_delete_sync(ptr noundef %0) #18, !dbg !6270
  ret i32 %call, !dbg !6271
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @blk_stat_free_callback(ptr noundef %cb) #0 align 16 !dbg !6272 {
entry:
  %cb.addr = alloca ptr, align 8
  store ptr %cb, ptr %cb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cb.addr, metadata !6274, metadata !DIExpression()), !dbg !6275
  %0 = load ptr, ptr %cb.addr, align 8, !dbg !6276
  %tobool = icmp ne ptr %0, null, !dbg !6276
  br i1 %tobool, label %if.then, label %if.end, !dbg !6278

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cb.addr, align 8, !dbg !6279
  %rcu = getelementptr inbounds %struct.blk_stat_callback, ptr %1, i32 0, i32 8, !dbg !6280
  call void @call_rcu(ptr noundef %rcu, ptr noundef @blk_stat_free_callback_rcu) #18, !dbg !6281
  br label %if.end, !dbg !6281

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6282
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6283 dso_local void @call_rcu(ptr noundef, ptr noundef) #10

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @blk_stat_free_callback_rcu(ptr noundef %head) #0 align 16 !dbg !6287 {
entry:
  %head.addr = alloca ptr, align 8
  %cb = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6289, metadata !DIExpression()), !dbg !6293
  call void @llvm.lifetime.start.p0(i64 8, ptr %cb) #17, !dbg !6294
  call void @llvm.dbg.declare(metadata ptr %cb, metadata !6290, metadata !DIExpression()), !dbg !6295
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !6296
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6291, metadata !DIExpression()), !dbg !6296
  %0 = load ptr, ptr %head.addr, align 8, !dbg !6296
  store ptr %0, ptr %__mptr, align 8, !dbg !6296
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6296
  %add.ptr = getelementptr i8, ptr %1, i64 -104, !dbg !6296
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6296
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !6297
  %2 = load ptr, ptr %tmp, align 8, !dbg !6296
  store ptr %2, ptr %cb, align 8, !dbg !6298
  %3 = load ptr, ptr %cb, align 8, !dbg !6299
  %cpu_stat = getelementptr inbounds %struct.blk_stat_callback, ptr %3, i32 0, i32 2, !dbg !6300
  %4 = load ptr, ptr %cpu_stat, align 8, !dbg !6300
  call void @free_percpu(ptr noundef %4) #18, !dbg !6301
  %5 = load ptr, ptr %cb, align 8, !dbg !6302
  %stat = getelementptr inbounds %struct.blk_stat_callback, ptr %5, i32 0, i32 5, !dbg !6303
  %6 = load ptr, ptr %stat, align 8, !dbg !6303
  call void @kfree(ptr noundef %6) #18, !dbg !6304
  %7 = load ptr, ptr %cb, align 8, !dbg !6305
  call void @kfree(ptr noundef %7) #18, !dbg !6306
  call void @llvm.lifetime.end.p0(i64 8, ptr %cb) #17, !dbg !6307
  ret void, !dbg !6307
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @blk_stat_disable_accounting(ptr noundef %q) #0 align 16 !dbg !6308 {
entry:
  %q.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !6312, metadata !DIExpression()), !dbg !6319
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #17, !dbg !6320
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6313, metadata !DIExpression()), !dbg !6321
  br label %do.body, !dbg !6322

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6323

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #17, !dbg !6324
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6314, metadata !DIExpression()), !dbg !6324
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #17, !dbg !6324
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6318, metadata !DIExpression()), !dbg !6324
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6324
  %conv = zext i1 %cmp to i32, !dbg !6324
  store i32 1, ptr %tmp, align 4, !dbg !6324
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #17, !dbg !6325
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #17, !dbg !6325
  %0 = load i32, ptr %tmp, align 4, !dbg !6324
  %1 = load ptr, ptr %q.addr, align 8, !dbg !6325
  %stats = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 3, !dbg !6325
  %2 = load ptr, ptr %stats, align 8, !dbg !6325
  %lock = getelementptr inbounds %struct.blk_queue_stats, ptr %2, i32 0, i32 1, !dbg !6325
  %call = call ptr @spinlock_check(ptr noundef %lock) #18, !dbg !6325
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #18, !dbg !6325
  store i64 %call2, ptr %flags, align 8, !dbg !6325
  br label %do.cond, !dbg !6325

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6325

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !6323

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !6323

do.end4:                                          ; preds = %do.cond3
  %3 = load ptr, ptr %q.addr, align 8, !dbg !6326
  %stats5 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 3, !dbg !6328
  %4 = load ptr, ptr %stats5, align 8, !dbg !6328
  %accounting = getelementptr inbounds %struct.blk_queue_stats, ptr %4, i32 0, i32 2, !dbg !6329
  %5 = load i32, ptr %accounting, align 4, !dbg !6330
  %dec = add i32 %5, -1, !dbg !6330
  store i32 %dec, ptr %accounting, align 4, !dbg !6330
  %tobool = icmp ne i32 %dec, 0, !dbg !6330
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !6331

land.lhs.true:                                    ; preds = %do.end4
  %6 = load ptr, ptr %q.addr, align 8, !dbg !6332
  %stats6 = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 3, !dbg !6333
  %7 = load ptr, ptr %stats6, align 8, !dbg !6333
  %callbacks = getelementptr inbounds %struct.blk_queue_stats, ptr %7, i32 0, i32 0, !dbg !6334
  %call7 = call i32 @list_empty(ptr noundef %callbacks) #18, !dbg !6335
  %tobool8 = icmp ne i32 %call7, 0, !dbg !6335
  br i1 %tobool8, label %if.then, label %if.end, !dbg !6336

if.then:                                          ; preds = %land.lhs.true
  %8 = load ptr, ptr %q.addr, align 8, !dbg !6337
  call void @blk_queue_flag_clear(i32 noundef 20, ptr noundef %8) #18, !dbg !6338
  br label %if.end, !dbg !6338

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end4
  %9 = load ptr, ptr %q.addr, align 8, !dbg !6339
  %stats9 = getelementptr inbounds %struct.request_queue, ptr %9, i32 0, i32 3, !dbg !6340
  %10 = load ptr, ptr %stats9, align 8, !dbg !6340
  %lock10 = getelementptr inbounds %struct.blk_queue_stats, ptr %10, i32 0, i32 1, !dbg !6341
  %11 = load i64, ptr %flags, align 8, !dbg !6342
  call void @spin_unlock_irqrestore(ptr noundef %lock10, i64 noundef %11) #18, !dbg !6343
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #17, !dbg !6344
  ret void, !dbg !6344
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @blk_stat_enable_accounting(ptr noundef %q) #0 align 16 !dbg !6345 {
entry:
  %q.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !6347, metadata !DIExpression()), !dbg !6354
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #17, !dbg !6355
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6348, metadata !DIExpression()), !dbg !6356
  br label %do.body, !dbg !6357

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6358

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #17, !dbg !6359
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6349, metadata !DIExpression()), !dbg !6359
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #17, !dbg !6359
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6353, metadata !DIExpression()), !dbg !6359
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6359
  %conv = zext i1 %cmp to i32, !dbg !6359
  store i32 1, ptr %tmp, align 4, !dbg !6359
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #17, !dbg !6360
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #17, !dbg !6360
  %0 = load i32, ptr %tmp, align 4, !dbg !6359
  %1 = load ptr, ptr %q.addr, align 8, !dbg !6360
  %stats = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 3, !dbg !6360
  %2 = load ptr, ptr %stats, align 8, !dbg !6360
  %lock = getelementptr inbounds %struct.blk_queue_stats, ptr %2, i32 0, i32 1, !dbg !6360
  %call = call ptr @spinlock_check(ptr noundef %lock) #18, !dbg !6360
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #18, !dbg !6360
  store i64 %call2, ptr %flags, align 8, !dbg !6360
  br label %do.cond, !dbg !6360

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6360

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !6358

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !6358

do.end4:                                          ; preds = %do.cond3
  %3 = load ptr, ptr %q.addr, align 8, !dbg !6361
  %stats5 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 3, !dbg !6363
  %4 = load ptr, ptr %stats5, align 8, !dbg !6363
  %accounting = getelementptr inbounds %struct.blk_queue_stats, ptr %4, i32 0, i32 2, !dbg !6364
  %5 = load i32, ptr %accounting, align 4, !dbg !6365
  %inc = add i32 %5, 1, !dbg !6365
  store i32 %inc, ptr %accounting, align 4, !dbg !6365
  %tobool = icmp ne i32 %5, 0, !dbg !6365
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !6366

land.lhs.true:                                    ; preds = %do.end4
  %6 = load ptr, ptr %q.addr, align 8, !dbg !6367
  %stats6 = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 3, !dbg !6368
  %7 = load ptr, ptr %stats6, align 8, !dbg !6368
  %callbacks = getelementptr inbounds %struct.blk_queue_stats, ptr %7, i32 0, i32 0, !dbg !6369
  %call7 = call i32 @list_empty(ptr noundef %callbacks) #18, !dbg !6370
  %tobool8 = icmp ne i32 %call7, 0, !dbg !6370
  br i1 %tobool8, label %if.then, label %if.end, !dbg !6371

if.then:                                          ; preds = %land.lhs.true
  %8 = load ptr, ptr %q.addr, align 8, !dbg !6372
  call void @blk_queue_flag_set(i32 noundef 20, ptr noundef %8) #18, !dbg !6373
  br label %if.end, !dbg !6373

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end4
  %9 = load ptr, ptr %q.addr, align 8, !dbg !6374
  %stats9 = getelementptr inbounds %struct.request_queue, ptr %9, i32 0, i32 3, !dbg !6375
  %10 = load ptr, ptr %stats9, align 8, !dbg !6375
  %lock10 = getelementptr inbounds %struct.blk_queue_stats, ptr %10, i32 0, i32 1, !dbg !6376
  %11 = load i64, ptr %flags, align 8, !dbg !6377
  call void @spin_unlock_irqrestore(ptr noundef %lock10, i64 noundef %11) #18, !dbg !6378
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #17, !dbg !6379
  ret void, !dbg !6379
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @blk_alloc_queue_stats() #0 align 16 !dbg !6380 {
entry:
  %retval = alloca ptr, align 8
  %stats = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %stats) #17, !dbg !6385
  call void @llvm.dbg.declare(metadata ptr %stats, metadata !6384, metadata !DIExpression()), !dbg !6386
  %call = call noalias ptr @kmalloc(i64 noundef 24, i32 noundef 3264) #20, !dbg !6387
  store ptr %call, ptr %stats, align 8, !dbg !6388
  %0 = load ptr, ptr %stats, align 8, !dbg !6389
  %tobool = icmp ne ptr %0, null, !dbg !6389
  br i1 %tobool, label %if.end, label %if.then, !dbg !6391

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !6392
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6392

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %stats, align 8, !dbg !6393
  %callbacks = getelementptr inbounds %struct.blk_queue_stats, ptr %1, i32 0, i32 0, !dbg !6394
  call void @INIT_LIST_HEAD(ptr noundef %callbacks) #18, !dbg !6395
  br label %do.body, !dbg !6396

do.body:                                          ; preds = %if.end
  %2 = load ptr, ptr %stats, align 8, !dbg !6397
  %lock = getelementptr inbounds %struct.blk_queue_stats, ptr %2, i32 0, i32 1, !dbg !6397
  %call1 = call ptr @spinlock_check(ptr noundef %lock) #18, !dbg !6397
  %3 = load ptr, ptr %stats, align 8, !dbg !6397
  %lock2 = getelementptr inbounds %struct.blk_queue_stats, ptr %3, i32 0, i32 1, !dbg !6397
  %4 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !6397
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %4, i32 0, i32 0, !dbg !6397
  %5 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !6397
  %counter = getelementptr inbounds %struct.atomic_t, ptr %5, i32 0, i32 0, !dbg !6397
  store i32 0, ptr %counter, align 4, !dbg !6397
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %lock2, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !6397
  br label %do.cond, !dbg !6397

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6397

do.end:                                           ; preds = %do.cond
  %6 = load ptr, ptr %stats, align 8, !dbg !6399
  %accounting = getelementptr inbounds %struct.blk_queue_stats, ptr %6, i32 0, i32 2, !dbg !6400
  store i32 0, ptr %accounting, align 4, !dbg !6401
  %7 = load ptr, ptr %stats, align 8, !dbg !6402
  store ptr %7, ptr %retval, align 8, !dbg !6403
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6403

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %stats) #17, !dbg !6404
  %8 = load ptr, ptr %retval, align 8, !dbg !6404
  ret ptr %8, !dbg !6404
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #3 align 16 !dbg !6405 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !6407, metadata !DIExpression()), !dbg !6408
  br label %do.body, !dbg !6409

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6410

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6412

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6410

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !6414
  %1 = load ptr, ptr %list.addr, align 8, !dbg !6414
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !6414
  store volatile ptr %0, ptr %next, align 8, !dbg !6414
  br label %do.end3, !dbg !6414

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !6410

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !6416

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !6417

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !6419

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !6417

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !6421
  %3 = load ptr, ptr %list.addr, align 8, !dbg !6421
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !6421
  store volatile ptr %2, ptr %prev, align 8, !dbg !6421
  br label %do.end9, !dbg !6421

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !6417

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !6423
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @blk_free_queue_stats(ptr noundef %stats) #0 align 16 !dbg !6424 {
entry:
  %stats.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %stats, ptr %stats.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stats.addr, metadata !6428, metadata !DIExpression()), !dbg !6434
  %0 = load ptr, ptr %stats.addr, align 8, !dbg !6435
  %tobool = icmp ne ptr %0, null, !dbg !6435
  br i1 %tobool, label %if.end, label %if.then, !dbg !6437

if.then:                                          ; preds = %entry
  br label %return, !dbg !6438

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !6439
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6429, metadata !DIExpression()), !dbg !6439
  %1 = load ptr, ptr %stats.addr, align 8, !dbg !6439
  %callbacks = getelementptr inbounds %struct.blk_queue_stats, ptr %1, i32 0, i32 0, !dbg !6439
  %call = call i32 @list_empty(ptr noundef %callbacks) #18, !dbg !6439
  %tobool1 = icmp ne i32 %call, 0, !dbg !6439
  %lnot = xor i1 %tobool1, true, !dbg !6439
  %lnot2 = xor i1 %lnot, true, !dbg !6439
  %lnot3 = xor i1 %lnot2, true, !dbg !6439
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6439
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6439
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !6440
  %tobool4 = icmp ne i32 %2, 0, !dbg !6440
  %lnot5 = xor i1 %tobool4, true, !dbg !6440
  %lnot7 = xor i1 %lnot5, true, !dbg !6440
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !6440
  %conv = sext i32 %lnot.ext8 to i64, !dbg !6440
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6440
  %tobool9 = icmp ne i64 %expval, 0, !dbg !6440
  br i1 %tobool9, label %if.then10, label %if.end20, !dbg !6439

if.then10:                                        ; preds = %if.end
  br label %do.body, !dbg !6440

do.body:                                          ; preds = %if.then10
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !6441
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6431, metadata !DIExpression()), !dbg !6441
  store i32 2305, ptr %__flags, align 4, !dbg !6441
  br label %do.body11, !dbg !6441

do.body11:                                        ; preds = %do.body
  br label %do.cond, !dbg !6442

do.cond:                                          ; preds = %do.body11
  br label %do.end, !dbg !6442

do.end:                                           ; preds = %do.cond
  br label %do.body12, !dbg !6441

do.body12:                                        ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !6444
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 229, i32 %3, i64 12) #17, !dbg !6444, !srcloc !6446
  br label %do.cond13, !dbg !6444

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !6444

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !6441

do.body15:                                        ; preds = %do.end14
  br label %do.cond16, !dbg !6447

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !6447

do.end17:                                         ; preds = %do.cond16
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !6440
  br label %do.cond18, !dbg !6441

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !6441

do.end19:                                         ; preds = %do.cond18
  br label %if.end20, !dbg !6441

if.end20:                                         ; preds = %do.end19, %if.end
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !6439
  %tobool21 = icmp ne i32 %4, 0, !dbg !6439
  %lnot22 = xor i1 %tobool21, true, !dbg !6439
  %lnot24 = xor i1 %lnot22, true, !dbg !6439
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !6439
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !6439
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 0), !dbg !6439
  store i64 %expval27, ptr %tmp, align 8, !dbg !6440
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !6449
  %5 = load i64, ptr %tmp, align 8, !dbg !6439
  %6 = load ptr, ptr %stats.addr, align 8, !dbg !6450
  call void @kfree(ptr noundef %6) #18, !dbg !6451
  br label %return, !dbg !6452

return:                                           ; preds = %if.end20, %if.then
  ret void, !dbg !6452
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @div_u64_rem(i64 noundef %dividend, i32 noundef %divisor, ptr noundef %remainder) #3 align 16 !dbg !6453 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder.addr = alloca ptr, align 8
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !6457, metadata !DIExpression()), !dbg !6460
  store i32 %divisor, ptr %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !6458, metadata !DIExpression()), !dbg !6461
  store ptr %remainder, ptr %remainder.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %remainder.addr, metadata !6459, metadata !DIExpression()), !dbg !6462
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !6463
  %1 = load i32, ptr %divisor.addr, align 4, !dbg !6464
  %conv = zext i32 %1 to i64, !dbg !6464
  %rem = urem i64 %0, %conv, !dbg !6465
  %conv1 = trunc i64 %rem to i32, !dbg !6463
  %2 = load ptr, ptr %remainder.addr, align 8, !dbg !6466
  store i32 %conv1, ptr %2, align 4, !dbg !6467
  %3 = load i64, ptr %dividend.addr, align 8, !dbg !6468
  %4 = load i32, ptr %divisor.addr, align 4, !dbg !6469
  %conv2 = zext i32 %4 to i64, !dbg !6469
  %div = udiv i64 %3, %conv2, !dbg !6470
  ret i64 %div, !dbg !6471
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6472 dso_local void @__rcu_read_lock() #10

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @timer_pending(ptr noundef %timer) #3 align 16 !dbg !6473 {
entry:
  %timer.addr = alloca ptr, align 8
  store ptr %timer, ptr %timer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timer.addr, metadata !6479, metadata !DIExpression()), !dbg !6480
  %0 = load ptr, ptr %timer.addr, align 8, !dbg !6481
  %entry1 = getelementptr inbounds %struct.timer_list, ptr %0, i32 0, i32 0, !dbg !6482
  %call = call i32 @hlist_unhashed_lockless(ptr noundef %entry1) #18, !dbg !6483
  %tobool = icmp ne i32 %call, 0, !dbg !6484
  %lnot = xor i1 %tobool, true, !dbg !6484
  %lnot.ext = zext i1 %lnot to i32, !dbg !6484
  ret i32 %lnot.ext, !dbg !6485
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hlist_unhashed_lockless(ptr noundef %h) #3 align 16 !dbg !6486 {
entry:
  %h.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !6492, metadata !DIExpression()), !dbg !6493
  br label %do.body, !dbg !6494

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6496

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %h.addr, align 8, !dbg !6494
  %pprev = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 1, !dbg !6494
  %1 = load volatile ptr, ptr %pprev, align 8, !dbg !6494
  store ptr %1, ptr %tmp, align 8, !dbg !6496
  %2 = load ptr, ptr %tmp, align 8, !dbg !6494
  %tobool = icmp ne ptr %2, null, !dbg !6498
  %lnot = xor i1 %tobool, true, !dbg !6498
  %lnot.ext = zext i1 %lnot to i32, !dbg !6498
  ret i32 %lnot.ext, !dbg !6499
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6500 dso_local void @__rcu_read_unlock() #10

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6501 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #4 align 16 !dbg !6502 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6506, metadata !DIExpression()), !dbg !6508
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6507, metadata !DIExpression()), !dbg !6509
  %0 = load i64, ptr %size.addr, align 8, !dbg !6510
  %tobool = icmp ne i64 %0, 0, !dbg !6510
  br i1 %tobool, label %if.end, label %if.then, !dbg !6512

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6513
  br label %return, !dbg !6513

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6514
  %cmp = icmp ule i64 %1, 8, !dbg !6516
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6517

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6518
  br label %return, !dbg !6518

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6519
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6521
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6522

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6523
  %cmp4 = icmp ule i64 %3, 96, !dbg !6524
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6525

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6526
  br label %return, !dbg !6526

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6527
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6529
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6530

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6531
  %cmp9 = icmp ule i64 %5, 192, !dbg !6532
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6533

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6534
  br label %return, !dbg !6534

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6535
  %cmp12 = icmp ule i64 %6, 8, !dbg !6537
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6538

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6539
  br label %return, !dbg !6539

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6540
  %cmp15 = icmp ule i64 %7, 16, !dbg !6542
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6543

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6544
  br label %return, !dbg !6544

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6545
  %cmp18 = icmp ule i64 %8, 32, !dbg !6547
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6548

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6549
  br label %return, !dbg !6549

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6550
  %cmp21 = icmp ule i64 %9, 64, !dbg !6552
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6553

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6554
  br label %return, !dbg !6554

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6555
  %cmp24 = icmp ule i64 %10, 128, !dbg !6557
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6558

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6559
  br label %return, !dbg !6559

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6560
  %cmp27 = icmp ule i64 %11, 256, !dbg !6562
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6563

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6564
  br label %return, !dbg !6564

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6565
  %cmp30 = icmp ule i64 %12, 512, !dbg !6567
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6568

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6569
  br label %return, !dbg !6569

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6570
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6572
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6573

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6574
  br label %return, !dbg !6574

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6575
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6577
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6578

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6579
  br label %return, !dbg !6579

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6580
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6582
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6583

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6584
  br label %return, !dbg !6584

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6585
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6587
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6588

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6589
  br label %return, !dbg !6589

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6590
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6592
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6593

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6594
  br label %return, !dbg !6594

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6595
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6597
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6598

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6599
  br label %return, !dbg !6599

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6600
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6602
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6603

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6604
  br label %return, !dbg !6604

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6605
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6607
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6608

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6609
  br label %return, !dbg !6609

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6610
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6612
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6613

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6614
  br label %return, !dbg !6614

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6615
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6617
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6618

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6619
  br label %return, !dbg !6619

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6620
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6622
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6623

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6624
  br label %return, !dbg !6624

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6625
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6627
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6628

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6629
  br label %return, !dbg !6629

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6630, !range !5773, !noundef !885
  %tobool69 = trunc i8 %25 to i1, !dbg !6630
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6632

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6633

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #23, !dbg !6634, !srcloc !6637
  unreachable, !dbg !6634

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6638

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6639

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6640

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6642

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6640

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 480, i32 0, i64 12) #17, !dbg !6644, !srcloc !6646
  br label %do.end75, !dbg !6644

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6640

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6647
  br label %return, !dbg !6647

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6648
  ret i32 %26, !dbg !6648
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6649 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #15

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #4 align 16 !dbg !6652 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6656, metadata !DIExpression()), !dbg !6658
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6657, metadata !DIExpression()), !dbg !6659
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6660
  %and = and i32 %0, 17, !dbg !6660
  %cmp = icmp eq i32 %and, 0, !dbg !6660
  %lnot = xor i1 %cmp, true, !dbg !6660
  %lnot1 = xor i1 %lnot, true, !dbg !6660
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6660
  %conv = sext i32 %lnot.ext to i64, !dbg !6660
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6660
  %tobool = icmp ne i64 %expval, 0, !dbg !6660
  br i1 %tobool, label %if.then, label %if.end, !dbg !6662

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6663
  br label %return, !dbg !6663

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6664
  %and2 = and i32 %1, 1, !dbg !6666
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6666
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6667

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6668
  br label %return, !dbg !6668

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6669
  br label %return, !dbg !6669

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6671
  ret i32 %2, !dbg !6671
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6672 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6673 dso_local void @__compiletime_assert_245() #16

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #3 align 16 !dbg !6674 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !6679, metadata !DIExpression()), !dbg !6680
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !6681, !range !5773, !noundef !885
  %tobool = trunc i8 %0 to i1, !dbg !6681
  %lnot = xor i1 %tobool, true, !dbg !6681
  %lnot1 = xor i1 %lnot, true, !dbg !6681
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6681
  %conv = sext i32 %lnot.ext to i64, !dbg !6681
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6681
  %tobool2 = icmp ne i64 %expval, 0, !dbg !6681
  ret i1 %tobool2, !dbg !6682
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #4 align 16 !dbg !6683 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !6688, metadata !DIExpression()), !dbg !6689
  %0 = load i64, ptr %word.addr, align 8, !dbg !6690
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #19, !dbg !6691, !srcloc !6692
  store i64 %1, ptr %word.addr, align 8, !dbg !6691
  %2 = load i64, ptr %word.addr, align 8, !dbg !6693
  ret i64 %2, !dbg !6694
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6695 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add_rcu(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !6696 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  %_r_a_p__v = alloca i64, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6700, metadata !DIExpression()), !dbg !6705
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6701, metadata !DIExpression()), !dbg !6706
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6702, metadata !DIExpression()), !dbg !6707
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6708
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !6710
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6711
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18, !dbg !6712
  br i1 %call, label %if.end, label %if.then, !dbg !6713

if.then:                                          ; preds = %entry
  br label %return, !dbg !6714

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %next.addr, align 8, !dbg !6715
  %4 = load ptr, ptr %new.addr, align 8, !dbg !6716
  %next1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 0, !dbg !6717
  store ptr %3, ptr %next1, align 8, !dbg !6718
  %5 = load ptr, ptr %prev.addr, align 8, !dbg !6719
  %6 = load ptr, ptr %new.addr, align 8, !dbg !6720
  %prev2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1, !dbg !6721
  store ptr %5, ptr %prev2, align 8, !dbg !6722
  br label %do.body, !dbg !6723

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v) #17, !dbg !6724
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v, metadata !6703, metadata !DIExpression()), !dbg !6724
  %7 = load ptr, ptr %new.addr, align 8, !dbg !6724
  %8 = ptrtoint ptr %7 to i64, !dbg !6724
  store i64 %8, ptr %_r_a_p__v, align 8, !dbg !6724
  br i1 false, label %land.lhs.true, label %if.else, !dbg !6725

land.lhs.true:                                    ; preds = %do.body
  %9 = load i64, ptr %_r_a_p__v, align 8, !dbg !6725
  %cmp = icmp eq i64 %9, 0, !dbg !6725
  br i1 %cmp, label %if.then3, label %if.else, !dbg !6724

if.then3:                                         ; preds = %land.lhs.true
  br label %do.body4, !dbg !6725

do.body4:                                         ; preds = %if.then3
  br label %do.body5, !dbg !6727

do.body5:                                         ; preds = %do.body4
  br label %do.cond, !dbg !6729

do.cond:                                          ; preds = %do.body5
  br label %do.end, !dbg !6729

do.end:                                           ; preds = %do.cond
  br label %do.body6, !dbg !6727

do.body6:                                         ; preds = %do.end
  %10 = load i64, ptr %_r_a_p__v, align 8, !dbg !6731
  %11 = inttoptr i64 %10 to ptr, !dbg !6731
  %12 = load ptr, ptr %prev.addr, align 8, !dbg !6731
  %next7 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 0, !dbg !6731
  store volatile ptr %11, ptr %next7, align 8, !dbg !6731
  br label %do.cond8, !dbg !6731

do.cond8:                                         ; preds = %do.body6
  br label %do.end9, !dbg !6731

do.end9:                                          ; preds = %do.cond8
  br label %do.cond10, !dbg !6727

do.cond10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !6727

do.end11:                                         ; preds = %do.cond10
  br label %if.end34, !dbg !6727

if.else:                                          ; preds = %land.lhs.true, %do.body
  br label %do.body12, !dbg !6725

do.body12:                                        ; preds = %if.else
  br label %do.body13, !dbg !6733

do.body13:                                        ; preds = %do.body12
  br label %do.cond14, !dbg !6735

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !6735

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !6733

do.body16:                                        ; preds = %do.end15
  br label %do.body17, !dbg !6737

do.body17:                                        ; preds = %do.body16
  br label %do.cond18, !dbg !6739

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !6739

do.end19:                                         ; preds = %do.cond18
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !6737, !srcloc !6741
  br label %do.body20, !dbg !6737

do.body20:                                        ; preds = %do.end19
  br label %do.body21, !dbg !6742

do.body21:                                        ; preds = %do.body20
  br label %do.cond22, !dbg !6744

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !6744

do.end23:                                         ; preds = %do.cond22
  br label %do.body24, !dbg !6742

do.body24:                                        ; preds = %do.end23
  %13 = load i64, ptr %_r_a_p__v, align 8, !dbg !6746
  %14 = inttoptr i64 %13 to ptr, !dbg !6746
  %15 = load ptr, ptr %prev.addr, align 8, !dbg !6746
  %next25 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 0, !dbg !6746
  store volatile ptr %14, ptr %next25, align 8, !dbg !6746
  br label %do.cond26, !dbg !6746

do.cond26:                                        ; preds = %do.body24
  br label %do.end27, !dbg !6746

do.end27:                                         ; preds = %do.cond26
  br label %do.cond28, !dbg !6742

do.cond28:                                        ; preds = %do.end27
  br label %do.end29, !dbg !6742

do.end29:                                         ; preds = %do.cond28
  br label %do.cond30, !dbg !6737

do.cond30:                                        ; preds = %do.end29
  br label %do.end31, !dbg !6737

do.end31:                                         ; preds = %do.cond30
  br label %do.cond32, !dbg !6733

do.cond32:                                        ; preds = %do.end31
  br label %do.end33, !dbg !6733

do.end33:                                         ; preds = %do.cond32
  br label %if.end34

if.end34:                                         ; preds = %do.end33, %do.end11
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v) #17, !dbg !6723
  br label %do.end36, !dbg !6724

do.end36:                                         ; preds = %if.end34
  %16 = load ptr, ptr %new.addr, align 8, !dbg !6748
  %17 = load ptr, ptr %next.addr, align 8, !dbg !6749
  %prev37 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1, !dbg !6750
  store ptr %16, ptr %prev37, align 8, !dbg !6751
  br label %return, !dbg !6752

return:                                           ; preds = %do.end36, %if.then
  ret void, !dbg !6752
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !6753 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6757, metadata !DIExpression()), !dbg !6760
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6758, metadata !DIExpression()), !dbg !6761
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6759, metadata !DIExpression()), !dbg !6762
  ret i1 true, !dbg !6763
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6764 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #10 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #3 align 16 !dbg !6767 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6769, metadata !DIExpression()), !dbg !6770
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6771
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #18, !dbg !6773
  br i1 %call, label %if.end, label %if.then, !dbg !6774

if.then:                                          ; preds = %entry
  br label %return, !dbg !6775

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6776
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6777
  %2 = load ptr, ptr %prev, align 8, !dbg !6777
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !6778
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6779
  %4 = load ptr, ptr %next, align 8, !dbg !6779
  call void @__list_del(ptr noundef %2, ptr noundef %4) #18, !dbg !6780
  br label %return, !dbg !6781

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6781
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #3 align 16 !dbg !6782 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6786, metadata !DIExpression()), !dbg !6787
  ret i1 true, !dbg !6788
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !6789 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6791, metadata !DIExpression()), !dbg !6793
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6792, metadata !DIExpression()), !dbg !6794
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !6795
  %1 = load ptr, ptr %next.addr, align 8, !dbg !6796
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6797
  store ptr %0, ptr %prev1, align 8, !dbg !6798
  br label %do.body, !dbg !6799

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6800

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6802

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6800

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6804
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !6804
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6804
  store volatile ptr %2, ptr %next4, align 8, !dbg !6804
  br label %do.end5, !dbg !6804

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6800

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6806
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6807 dso_local i32 @timer_delete_sync(ptr noundef) #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6808 dso_local void @free_percpu(ptr noundef) #10

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #7 = { nocallback nounwind }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { nounwind }
attributes #18 = { noredzone }
attributes #19 = { nounwind memory(read) }
attributes #20 = { noredzone allocsize(0) }
attributes #21 = { noredzone allocsize(0,1) }
attributes #22 = { noredzone allocsize(2) }
attributes #23 = { noredzone noreturn }

!llvm.dbg.cu = !{!5341}
!llvm.named.register.rsp = !{!5460}
!llvm.module.flags = !{!5461, !5462, !5463, !5464, !5465, !5466, !5467, !5468}
!llvm.ident = !{!5469}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "block/blk-stat.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e820b4e23931a9c94bbecfa5fbb7e04")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 5)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule361", scope: !9, file: !2, line: 76, type: !212, isLocal: true, isDefinition: true)
!9 = distinct !DISubprogram(name: "blk_stat_add", scope: !2, file: !2, line: 50, type: !10, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5341, retainedNodes: !5431)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !464}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request", file: !14, line: 80, size: 1984, elements: !15)
!14 = !DIFile(filename: "./include/linux/blk-mq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "62cf1706db3683ee75df9cf32a2cf47d")
!15 = !{!16, !5261, !5262, !5263, !5264, !5266, !5267, !5268, !5269, !5270, !5271, !5272, !5273, !5278, !5279, !5280, !5281, !5282, !5283, !5284, !5285, !5291, !5292, !5293, !5298, !5303, !5325, !5338, !5339, !5340}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !13, file: !14, line: 81, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !19, line: 391, size: 7296, elements: !20)
!19 = !DIFile(filename: "./include/linux/blkdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "802ed60c7d9aff392515db0b7890881d")
!20 = !{!21, !22, !25, !69, !122, !125, !138, !5167, !5168, !5169, !5170, !5171, !5172, !5173, !5174, !5175, !5176, !5177, !5178, !5179, !5180, !5181, !5182, !5183, !5184, !5185, !5186, !5187, !5188, !5189, !5190, !5191, !5192, !5193, !5235, !5236, !5237, !5240, !5241, !5242, !5243, !5244, !5245, !5246, !5247, !5248, !5249, !5250, !5251, !5252, !5253, !5254, !5255, !5256, !5257, !5258, !5259, !5260}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "last_merge", scope: !18, file: !19, line: 392, baseType: !12, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "elevator", scope: !18, file: !19, line: 393, baseType: !23, size: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_queue", file: !19, line: 30, flags: DIFlagFwdDecl)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "q_usage_counter", scope: !18, file: !19, line: 395, baseType: !26, size: 128, offset: 128)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !27, line: 105, size: 128, elements: !28)
!27 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!28 = !{!29, !31}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !26, file: !27, line: 110, baseType: !30, size: 64)
!30 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !26, file: !27, line: 118, baseType: !32, size: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !27, line: 95, size: 448, elements: !34)
!34 = !{!35, !48, !54, !55, !58, !59, !68}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !33, file: !27, line: 96, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !37, line: 13, baseType: !38)
!37 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !39, line: 181, baseType: !40)
!39 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !39, line: 179, size: 64, elements: !41)
!41 = !{!42}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !40, file: !39, line: 180, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !44, line: 22, baseType: !45)
!44 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !46, line: 30, baseType: !47)
!46 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!47 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !33, file: !27, line: 97, baseType: !49, size: 64, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !27, line: 60, baseType: !51)
!51 = !DISubroutineType(types: !52)
!52 = !{null, !53}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !33, file: !27, line: 98, baseType: !49, size: 64, offset: 128)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !33, file: !27, line: 99, baseType: !56, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !39, line: 35, baseType: !57)
!57 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !33, file: !27, line: 100, baseType: !56, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !33, file: !27, line: 101, baseType: !60, size: 128, align: 64, offset: 256)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !39, line: 232, size: 128, align: 64, elements: !61)
!61 = !{!62, !64}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !60, file: !39, line: 233, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !60, file: !39, line: 234, baseType: !65, size: 64, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{null, !63}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !33, file: !27, line: 102, baseType: !53, size: 64, offset: 384)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !18, file: !19, line: 397, baseType: !70, size: 64, offset: 256)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_queue_stats", file: !2, line: 14, size: 192, elements: !72)
!72 = !{!73, !79, !121}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "callbacks", scope: !71, file: !2, line: 15, baseType: !74, size: 128)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !39, line: 190, size: 128, elements: !75)
!75 = !{!76, !78}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !74, file: !39, line: 191, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !74, file: !39, line: 191, baseType: !77, size: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !71, file: !2, line: 16, baseType: !80, size: 32, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !81, line: 29, baseType: !82)
!81 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !81, line: 17, size: 32, elements: !83)
!83 = !{!84}
!84 = !DIDerivedType(tag: DW_TAG_member, scope: !82, file: !81, line: 18, baseType: !85, size: 32)
!85 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !82, file: !81, line: 18, size: 32, elements: !86)
!86 = !{!87}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !85, file: !81, line: 19, baseType: !88, size: 32)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !89, line: 14, size: 32, elements: !90)
!89 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!90 = !{!91}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !88, file: !89, line: 15, baseType: !92, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !93, line: 44, baseType: !94)
!93 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !93, line: 14, size: 32, elements: !95)
!95 = !{!96}
!96 = !DIDerivedType(tag: DW_TAG_member, scope: !94, file: !93, line: 15, baseType: !97, size: 32)
!97 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !94, file: !93, line: 15, size: 32, elements: !98)
!98 = !{!99, !105, !113}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !97, file: !93, line: 16, baseType: !100, size: 32)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !39, line: 174, baseType: !101)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !39, line: 172, size: 32, elements: !102)
!102 = !{!103}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !101, file: !39, line: 173, baseType: !104, size: 32)
!104 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!105 = !DIDerivedType(tag: DW_TAG_member, scope: !97, file: !93, line: 24, baseType: !106, size: 16)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !97, file: !93, line: 24, size: 16, elements: !107)
!107 = !{!108, !112}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !106, file: !93, line: 25, baseType: !109, size: 8)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !44, line: 17, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !46, line: 21, baseType: !111)
!111 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !106, file: !93, line: 26, baseType: !109, size: 8, offset: 8)
!113 = !DIDerivedType(tag: DW_TAG_member, scope: !97, file: !93, line: 28, baseType: !114, size: 32)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !97, file: !93, line: 28, size: 32, elements: !115)
!115 = !{!116, !120}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !114, file: !93, line: 29, baseType: !117, size: 16)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !44, line: 19, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !46, line: 24, baseType: !119)
!119 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !114, file: !93, line: 30, baseType: !117, size: 16, offset: 16)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "accounting", scope: !71, file: !2, line: 17, baseType: !104, size: 32, offset: 160)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos", scope: !18, file: !19, line: 398, baseType: !123, size: 64, offset: 320)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DICompositeType(tag: DW_TAG_structure_type, name: "rq_qos", file: !19, line: 38, flags: DIFlagFwdDecl)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos_mutex", scope: !18, file: !19, line: 399, baseType: !126, size: 256, offset: 384)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !127, line: 66, size: 256, elements: !128)
!127 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!128 = !{!129, !130, !132, !137}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !126, file: !127, line: 67, baseType: !36, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !126, file: !127, line: 68, baseType: !131, size: 32, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !89, line: 23, baseType: !88)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !126, file: !127, line: 70, baseType: !133, size: 32, offset: 96)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !134, line: 15, size: 32, elements: !135)
!134 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!135 = !{!136}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !133, file: !134, line: 20, baseType: !100, size: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !126, file: !127, line: 72, baseType: !74, size: 128, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ops", scope: !18, file: !19, line: 401, baseType: !139, size: 64, offset: 640)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ops", file: !14, line: 537, size: 1152, elements: !142)
!142 = !{!143, !5072, !5076, !5080, !5084, !5088, !5092, !5096, !5104, !5108, !5112, !5116, !5120, !5150, !5154, !5155, !5159, !5163}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "queue_rq", scope: !141, file: !14, line: 541, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DISubroutineType(types: !146)
!146 = !{!147, !149, !5066}
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_status_t", file: !148, line: 97, baseType: !109)
!148 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_hw_ctx", file: !14, line: 288, size: 4096, elements: !151)
!151 = !{!152, !158, !198, !208, !209, !210, !211, !213, !214, !230, !231, !248, !5007, !5008, !5009, !5010, !5012, !5013, !5026, !5027, !5055, !5056, !5057, !5058, !5059, !5060, !5061, !5062, !5063, !5064, !5065}
!152 = !DIDerivedType(tag: DW_TAG_member, scope: !150, file: !14, line: 289, baseType: !153, size: 512, align: 512)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !150, file: !14, line: 289, size: 512, align: 512, elements: !154)
!154 = !{!155, !156, !157}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !153, file: !14, line: 291, baseType: !80, size: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !153, file: !14, line: 299, baseType: !74, size: 128, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !153, file: !14, line: 304, baseType: !30, size: 64, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "run_work", scope: !150, file: !14, line: 310, baseType: !159, size: 704, offset: 512)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !160, line: 111, size: 704, elements: !161)
!160 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!161 = !{!162, !173, !194, !197}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !159, file: !160, line: 112, baseType: !163, size: 256)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !160, line: 98, size: 256, elements: !164)
!164 = !{!165, !166, !167}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !163, file: !160, line: 99, baseType: !36, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !163, file: !160, line: 100, baseType: !74, size: 128, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !163, file: !160, line: 101, baseType: !168, size: 64, offset: 192)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !160, line: 21, baseType: !169)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{null, !172}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !159, file: !160, line: 113, baseType: !174, size: 320, offset: 256)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !175, line: 11, size: 320, elements: !176)
!175 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!176 = !{!177, !184, !185, !190}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !174, file: !175, line: 16, baseType: !178, size: 128)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !39, line: 198, size: 128, elements: !179)
!179 = !{!180, !182}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !178, file: !39, line: 199, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !178, file: !39, line: 199, baseType: !183, size: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !174, file: !175, line: 17, baseType: !30, size: 64, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !174, file: !175, line: 18, baseType: !186, size: 64, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DISubroutineType(types: !188)
!188 = !{null, !189}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !174, file: !175, line: 19, baseType: !191, size: 32, offset: 256)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !44, line: 21, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !46, line: 27, baseType: !193)
!193 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !159, file: !160, line: 116, baseType: !195, size: 64, offset: 576)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !160, line: 18, flags: DIFlagFwdDecl)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !159, file: !160, line: 117, baseType: !104, size: 32, offset: 640)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !150, file: !14, line: 312, baseType: !199, size: 64, offset: 1216)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !200, line: 913, baseType: !201)
!200 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 64, elements: !206)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !200, line: 19, size: 64, elements: !203)
!203 = !{!204}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !202, file: !200, line: 19, baseType: !205, size: 64)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 64, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 1)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "next_cpu", scope: !150, file: !14, line: 317, baseType: !104, size: 32, offset: 1280)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "next_cpu_batch", scope: !150, file: !14, line: 322, baseType: !104, size: 32, offset: 1312)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !150, file: !14, line: 325, baseType: !30, size: 64, offset: 1344)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "sched_data", scope: !150, file: !14, line: 331, baseType: !212, size: 64, offset: 1408)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !150, file: !14, line: 335, baseType: !17, size: 64, offset: 1472)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !150, file: !14, line: 337, baseType: !215, size: 64, offset: 1536)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_flush_queue", file: !217, line: 17, size: 512, elements: !218)
!217 = !DIFile(filename: "block/blk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "08e4a891c7a7b1c380cd6f0c6d03b93a")
!218 = !{!219, !220, !221, !222, !223, !224, !228, !229}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "mq_flush_lock", scope: !216, file: !217, line: 18, baseType: !80, size: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "flush_pending_idx", scope: !216, file: !217, line: 19, baseType: !193, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "flush_running_idx", scope: !216, file: !217, line: 20, baseType: !193, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "rq_status", scope: !216, file: !217, line: 21, baseType: !147, size: 8, offset: 40)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "flush_pending_since", scope: !216, file: !217, line: 22, baseType: !30, size: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "flush_queue", scope: !216, file: !217, line: 23, baseType: !225, size: 256, offset: 128)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 256, elements: !226)
!226 = !{!227}
!227 = !DISubrange(count: 2)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "flush_data_in_flight", scope: !216, file: !217, line: 24, baseType: !30, size: 64, offset: 384)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "flush_rq", scope: !216, file: !217, line: 25, baseType: !12, size: 64, offset: 448)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !150, file: !14, line: 343, baseType: !212, size: 64, offset: 1600)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_map", scope: !150, file: !14, line: 349, baseType: !232, size: 256, offset: 1664)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbitmap", file: !233, line: 52, size: 256, elements: !234)
!233 = !DIFile(filename: "./include/linux/sbitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c1a10e3a5ba3f1b25200b1abce63f43a")
!234 = !{!235, !236, !237, !238, !239, !246}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !232, file: !233, line: 56, baseType: !193, size: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !232, file: !233, line: 61, baseType: !193, size: 32, offset: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "map_nr", scope: !232, file: !233, line: 66, baseType: !193, size: 32, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "round_robin", scope: !232, file: !233, line: 71, baseType: !56, size: 8, offset: 96)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !232, file: !233, line: 76, baseType: !240, size: 64, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbitmap_word", file: !233, line: 29, size: 1024, align: 512, elements: !242)
!242 = !{!243, !244, !245}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !241, file: !233, line: 33, baseType: !30, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "cleared", scope: !241, file: !233, line: 38, baseType: !30, size: 64, align: 512, offset: 512)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "swap_lock", scope: !241, file: !233, line: 43, baseType: !131, size: 32, offset: 576)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_hint", scope: !232, file: !233, line: 84, baseType: !247, size: 64, offset: 192)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_from", scope: !150, file: !14, line: 355, baseType: !249, size: 64, offset: 1920)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ctx", file: !251, line: 18, size: 1536, align: 512, elements: !252)
!251 = !DIFile(filename: "block/blk-mq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eaaa52c8c9e7dda989aa14aea0f2d4c3")
!252 = !{!253, !261, !262, !264, !266, !267, !5006}
!253 = !DIDerivedType(tag: DW_TAG_member, scope: !250, file: !251, line: 19, baseType: !254, size: 512, align: 512)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !250, file: !251, line: 19, size: 512, align: 512, elements: !255)
!255 = !{!256, !257}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !254, file: !251, line: 20, baseType: !80, size: 32)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "rq_lists", scope: !254, file: !251, line: 21, baseType: !258, size: 384, offset: 64)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 384, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: 3)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !250, file: !251, line: 24, baseType: !193, size: 32, offset: 512)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "index_hw", scope: !250, file: !251, line: 25, baseType: !263, size: 48, offset: 544)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 48, elements: !259)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "hctxs", scope: !250, file: !251, line: 26, baseType: !265, size: 192, offset: 640)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 192, elements: !259)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !250, file: !251, line: 28, baseType: !17, size: 64, offset: 832)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "ctxs", scope: !250, file: !251, line: 29, baseType: !268, size: 64, offset: 896)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ctxs", file: !251, line: 10, size: 576, elements: !270)
!270 = !{!271, !5005}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !269, file: !251, line: 11, baseType: !272, size: 512)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !273, line: 64, size: 512, elements: !274)
!273 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!274 = !{!275, !278, !279, !281, !326, !4891, !4995, !5000, !5001, !5002, !5003, !5004}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !272, file: !273, line: 65, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !272, file: !273, line: 66, baseType: !74, size: 128, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !272, file: !273, line: 67, baseType: !280, size: 64, offset: 192)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !272, file: !273, line: 68, baseType: !282, size: 64, offset: 256)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !273, line: 168, size: 768, elements: !284)
!284 = !{!285, !286, !287, !288}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !283, file: !273, line: 169, baseType: !74, size: 128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !283, file: !273, line: 170, baseType: !80, size: 32, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !283, file: !273, line: 171, baseType: !272, size: 512, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !283, file: !273, line: 172, baseType: !289, size: 64, offset: 704)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !291)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !273, line: 133, size: 192, elements: !292)
!292 = !{!293, !300, !305}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !291, file: !273, line: 134, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !295)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{!104, !298}
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !291, file: !273, line: 135, baseType: !301, size: 64, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{!276, !298}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !291, file: !273, line: 136, baseType: !306, size: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!104, !298, !310}
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !273, line: 125, size: 20736, elements: !312)
!312 = !{!313, !316, !320, !321, !325}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !311, file: !273, line: 126, baseType: !314, size: 192)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 192, elements: !259)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !311, file: !273, line: 127, baseType: !317, size: 4096, offset: 192)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 4096, elements: !318)
!318 = !{!319}
!319 = !DISubrange(count: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !311, file: !273, line: 128, baseType: !104, size: 32, offset: 4288)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !311, file: !273, line: 129, baseType: !322, size: 16384, offset: 4320)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !323)
!323 = !{!324}
!324 = !DISubrange(count: 2048)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !311, file: !273, line: 130, baseType: !104, size: 32, offset: 20704)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !272, file: !273, line: 69, baseType: !327, size: 64, offset: 320)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !329)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !273, line: 116, size: 384, elements: !330)
!330 = !{!331, !335, !363, !4879, !4883, !4887}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !329, file: !273, line: 117, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{null, !280}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !329, file: !273, line: 118, baseType: !336, size: 64, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !339, line: 254, size: 128, elements: !340)
!339 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!340 = !{!341, !356}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !338, file: !339, line: 255, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{!345, !280, !350, !315}
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !39, line: 66, baseType: !346)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !347, line: 73, baseType: !348)
!347 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !347, line: 15, baseType: !349)
!349 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !339, line: 30, size: 128, elements: !352)
!352 = !{!353, !354}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !351, file: !339, line: 31, baseType: !276, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !351, file: !339, line: 32, baseType: !355, size: 16, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !39, line: 24, baseType: !119)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !338, file: !339, line: 256, baseType: !357, size: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!345, !280, !350, !276, !360}
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !39, line: 61, baseType: !361)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !347, line: 72, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !347, line: 16, baseType: !30)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !329, file: !273, line: 119, baseType: !364, size: 64, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !367)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !339, line: 84, size: 320, elements: !368)
!368 = !{!369, !370, !374, !4875, !4877}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !367, file: !339, line: 85, baseType: !276, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !367, file: !339, line: 86, baseType: !371, size: 64, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DISubroutineType(types: !373)
!373 = !{!355, !280, !350, !104}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !367, file: !339, line: 88, baseType: !375, size: 64, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DISubroutineType(types: !377)
!377 = !{!355, !280, !378, !104}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !339, line: 175, size: 512, elements: !380)
!380 = !{!381, !382, !383, !384, !4866, !4870, !4871}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !379, file: !339, line: 176, baseType: !351, size: 128)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !379, file: !339, line: 177, baseType: !360, size: 64, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !379, file: !339, line: 178, baseType: !212, size: 64, offset: 192)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !379, file: !339, line: 179, baseType: !385, size: 64, offset: 256)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{!388}
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !390, line: 472, size: 1536, align: 64, elements: !391)
!390 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!391 = !{!392, !4696, !4697, !4698, !4699, !4700, !4701, !4702, !4703, !4860, !4861, !4862, !4863, !4864, !4865}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !389, file: !390, line: 473, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !390, line: 641, size: 4800, elements: !395)
!395 = !{!396, !397, !398, !406, !407, !414, !415, !418, !419, !4634, !4635, !4636, !4637, !4638, !4644, !4645, !4646, !4647, !4648, !4649, !4650, !4651, !4652, !4653, !4654, !4655, !4656, !4657, !4658, !4659, !4660, !4661, !4662, !4667, !4668, !4669, !4670, !4671, !4672, !4673, !4678, !4681, !4682, !4683, !4692, !4693, !4694, !4695}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !394, file: !390, line: 642, baseType: !355, size: 16)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !394, file: !390, line: 643, baseType: !119, size: 16, offset: 16)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !394, file: !390, line: 644, baseType: !399, size: 32, offset: 32)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !400, line: 23, baseType: !401)
!400 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !400, line: 21, size: 32, elements: !402)
!402 = !{!403}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !401, file: !400, line: 22, baseType: !404, size: 32)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !39, line: 37, baseType: !405)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !347, line: 49, baseType: !193)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !394, file: !390, line: 645, baseType: !74, size: 128, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !394, file: !390, line: 646, baseType: !408, size: 32, offset: 192)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !400, line: 28, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !400, line: 26, size: 32, elements: !410)
!410 = !{!411}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !409, file: !400, line: 27, baseType: !412, size: 32)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !39, line: 38, baseType: !413)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !347, line: 50, baseType: !193)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !394, file: !390, line: 647, baseType: !193, size: 32, offset: 224)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !394, file: !390, line: 650, baseType: !416, size: 64, offset: 256)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !390, line: 607, flags: DIFlagFwdDecl)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !394, file: !390, line: 651, baseType: !416, size: 64, offset: 320)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !394, file: !390, line: 654, baseType: !420, size: 64, offset: 384)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !390, line: 1966, size: 2048, align: 512, elements: !423)
!423 = !{!424, !4468, !4478, !4482, !4486, !4490, !4494, !4498, !4502, !4506, !4510, !4511, !4515, !4519, !4556, !4585, !4589, !4595, !4599, !4603, !4607, !4611, !4615, !4621, !4625}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !422, file: !390, line: 1967, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{!428, !393, !428, !193}
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !430, line: 82, size: 1536, elements: !431)
!430 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!431 = !{!432, !433, !443, !451, !452, !470, !471, !475, !488, !4451, !4452, !4453, !4454, !4460, !4461, !4462}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !429, file: !430, line: 84, baseType: !193, size: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !429, file: !430, line: 85, baseType: !434, size: 32, offset: 32)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !435, line: 275, baseType: !436)
!435 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !435, line: 275, size: 32, elements: !437)
!437 = !{!438}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !436, file: !435, line: 275, baseType: !439, size: 32)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !435, line: 69, baseType: !440)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !435, line: 64, size: 32, elements: !441)
!441 = !{!442}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !440, file: !435, line: 65, baseType: !193, size: 32)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !429, file: !430, line: 86, baseType: !444, size: 128, offset: 64)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !445, line: 38, size: 128, elements: !446)
!445 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!446 = !{!447, !449}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !444, file: !445, line: 39, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !444, file: !445, line: 39, baseType: !450, size: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !429, file: !430, line: 87, baseType: !428, size: 64, offset: 192)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !429, file: !430, line: 88, baseType: !453, size: 128, offset: 256)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !430, line: 49, size: 128, elements: !454)
!454 = !{!455, !467}
!455 = !DIDerivedType(tag: DW_TAG_member, scope: !453, file: !430, line: 50, baseType: !456, size: 64)
!456 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !453, file: !430, line: 50, size: 64, elements: !457)
!457 = !{!458, !463}
!458 = !DIDerivedType(tag: DW_TAG_member, scope: !456, file: !430, line: 51, baseType: !459, size: 64)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !456, file: !430, line: 51, size: 64, elements: !460)
!460 = !{!461, !462}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !459, file: !430, line: 52, baseType: !191, size: 32)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !459, file: !430, line: 52, baseType: !191, size: 32, offset: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !456, file: !430, line: 54, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !44, line: 23, baseType: !465)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !46, line: 31, baseType: !466)
!466 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !453, file: !430, line: 56, baseType: !468, size: 64, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !429, file: !430, line: 89, baseType: !393, size: 64, offset: 384)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !429, file: !430, line: 91, baseType: !472, size: 256, offset: 448)
!472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 256, elements: !473)
!473 = !{!474}
!474 = !DISubrange(count: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !429, file: !430, line: 94, baseType: !476, size: 64, offset: 704)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !477, line: 25, size: 64, elements: !478)
!477 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!478 = !{!479}
!479 = !DIDerivedType(tag: DW_TAG_member, scope: !476, file: !477, line: 26, baseType: !480, size: 64)
!480 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !476, file: !477, line: 26, size: 64, elements: !481)
!481 = !{!482, !483}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !480, file: !477, line: 28, baseType: !465, size: 64, align: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, scope: !480, file: !477, line: 30, baseType: !484, size: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !480, file: !477, line: 30, size: 64, elements: !485)
!485 = !{!486, !487}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !484, file: !477, line: 31, baseType: !80, size: 32)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !484, file: !477, line: 32, baseType: !104, size: 32, offset: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !429, file: !430, line: 95, baseType: !489, size: 64, offset: 768)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !491)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !430, line: 128, size: 1024, align: 512, elements: !492)
!492 = !{!493, !497, !498, !505, !511, !515, !519, !523, !524, !528, !532, !4441, !4445}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !491, file: !430, line: 129, baseType: !494, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!104, !428, !193}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !491, file: !430, line: 130, baseType: !494, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !491, file: !430, line: 131, baseType: !499, size: 64, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!104, !502, !504}
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !429)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !491, file: !430, line: 132, baseType: !506, size: 64, offset: 192)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{!104, !502, !193, !276, !509}
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !453)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !491, file: !430, line: 134, baseType: !512, size: 64, offset: 256)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!104, !502}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !491, file: !430, line: 135, baseType: !516, size: 64, offset: 320)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{!104, !428}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !491, file: !430, line: 136, baseType: !520, size: 64, offset: 384)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{null, !428}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !491, file: !430, line: 137, baseType: !520, size: 64, offset: 448)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !491, file: !430, line: 138, baseType: !525, size: 64, offset: 512)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{null, !428, !393}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !491, file: !430, line: 139, baseType: !529, size: 64, offset: 576)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!315, !428, !315, !104}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !491, file: !430, line: 140, baseType: !533, size: 64, offset: 640)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!536, !4440}
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !538, line: 70, size: 256, elements: !539)
!538 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!539 = !{!540, !541, !4436, !4437}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !537, file: !538, line: 71, baseType: !428, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !537, file: !538, line: 72, baseType: !542, size: 64, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !390, line: 1190, size: 10752, elements: !544)
!544 = !{!545, !546, !549, !550, !551, !554, !971, !1121, !1161, !1251, !1255, !1256, !1257, !1258, !1259, !1268, !1269, !1270, !1271, !1276, !1280, !1281, !3164, !3170, !3171, !3174, !3175, !3176, !3217, !4370, !4371, !4372, !4373, !4374, !4375, !4378, !4379, !4386, !4387, !4388, !4389, !4390, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !543, file: !390, line: 1191, baseType: !74, size: 128)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !543, file: !390, line: 1192, baseType: !547, size: 32, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !39, line: 21, baseType: !548)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !39, line: 18, baseType: !191)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !543, file: !390, line: 1193, baseType: !111, size: 8, offset: 160)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !543, file: !390, line: 1194, baseType: !30, size: 64, offset: 192)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !543, file: !390, line: 1195, baseType: !552, size: 64, offset: 256)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !39, line: 52, baseType: !553)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !347, line: 88, baseType: !47)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !543, file: !390, line: 1196, baseType: !555, size: 64, offset: 320)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !390, line: 2366, size: 576, elements: !557)
!557 = !{!558, !559, !560, !566, !570, !574, !578, !956, !957, !961, !963, !964, !965, !967, !968, !969, !970}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !556, file: !390, line: 2367, baseType: !276, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !556, file: !390, line: 2368, baseType: !104, size: 32, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !556, file: !390, line: 2376, baseType: !561, size: 64, offset: 128)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{!104, !564}
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !538, line: 21, flags: DIFlagFwdDecl)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !556, file: !390, line: 2377, baseType: !567, size: 64, offset: 192)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !569)
!569 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !390, line: 75, flags: DIFlagFwdDecl)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !556, file: !390, line: 2378, baseType: !571, size: 64, offset: 256)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!428, !555, !104, !276, !212}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !556, file: !390, line: 2380, baseType: !575, size: 64, offset: 320)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{null, !542}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !556, file: !390, line: 2381, baseType: !579, size: 64, offset: 384)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !581, line: 402, size: 9216, align: 512, elements: !582)
!581 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!582 = !{!583, !590, !591, !595, !616, !642, !643, !644, !645, !649, !654, !655, !656, !711, !712, !713, !714, !715, !716, !717, !718, !726, !730, !755, !776, !777, !778, !779, !788, !811, !812, !815, !818, !819, !820, !821, !822, !823, !824, !829, !830, !914, !922, !923, !924, !926, !930, !931, !935, !936, !937, !938, !940, !941, !942, !949, !950, !951, !955}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !580, file: !581, line: 403, baseType: !584, size: 32)
!584 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !581, line: 312, baseType: !193, size: 32, elements: !585)
!585 = !{!586, !587, !588, !589}
!586 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!587 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!588 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!589 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !580, file: !581, line: 406, baseType: !74, size: 128, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !580, file: !581, line: 409, baseType: !592, size: 448, offset: 192)
!592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !593)
!593 = !{!594}
!594 = !DISubrange(count: 56)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !580, file: !581, line: 417, baseType: !596, size: 768, offset: 640)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !581, line: 45, size: 768, elements: !597)
!597 = !{!598, !599, !600, !601, !604}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !596, file: !581, line: 46, baseType: !272, size: 512)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !596, file: !581, line: 47, baseType: !579, size: 64, offset: 512)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !596, file: !581, line: 48, baseType: !280, size: 64, offset: 576)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !596, file: !581, line: 49, baseType: !602, size: 64, offset: 640)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !581, line: 49, flags: DIFlagFwdDecl)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !596, file: !581, line: 50, baseType: !605, size: 64, offset: 704)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !607, line: 26, size: 256, elements: !608)
!607 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!608 = !{!609, !610}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !606, file: !607, line: 27, baseType: !193, size: 32)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !606, file: !607, line: 28, baseType: !611, size: 192, offset: 64)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !612, line: 43, size: 192, elements: !613)
!612 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!613 = !{!614, !615}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !611, file: !612, line: 44, baseType: !131, size: 32)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !611, file: !612, line: 45, baseType: !74, size: 128, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !580, file: !581, line: 418, baseType: !617, size: 64, offset: 1408)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !581, line: 53, size: 448, elements: !619)
!619 = !{!620, !621, !626, !630, !634, !638}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !618, file: !581, line: 54, baseType: !351, size: 128)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !618, file: !581, line: 55, baseType: !622, size: 64, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{!345, !617, !625, !315}
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !618, file: !581, line: 57, baseType: !627, size: 64, offset: 192)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!345, !617, !625, !276, !360}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !618, file: !581, line: 59, baseType: !631, size: 64, offset: 256)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{null, !579, !276}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !618, file: !581, line: 60, baseType: !635, size: 64, offset: 320)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!104, !579}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !618, file: !581, line: 61, baseType: !639, size: 64, offset: 384)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{null, !579}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !580, file: !581, line: 419, baseType: !276, size: 64, offset: 1472)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !580, file: !581, line: 420, baseType: !276, size: 64, offset: 1536)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !580, file: !581, line: 421, baseType: !280, size: 64, offset: 1600)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !580, file: !581, line: 424, baseType: !646, size: 64, offset: 1664)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !648)
!648 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !581, line: 424, flags: DIFlagFwdDecl)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !580, file: !581, line: 425, baseType: !650, size: 64, offset: 1728)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !652)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !44, line: 20, baseType: !653)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !46, line: 26, baseType: !104)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !580, file: !581, line: 426, baseType: !193, size: 32, offset: 1792)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !580, file: !581, line: 435, baseType: !126, size: 256, offset: 1856)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !580, file: !581, line: 437, baseType: !657, size: 64, offset: 2112)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !659, line: 69, size: 320, elements: !660)
!659 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!660 = !{!661, !662, !663, !683, !685, !689, !690}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !658, file: !659, line: 70, baseType: !276, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !658, file: !659, line: 71, baseType: !579, size: 64, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !658, file: !659, line: 72, baseType: !664, size: 64, offset: 128)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !666)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !659, line: 47, size: 256, elements: !667)
!667 = !{!668, !669, !675, !679}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !666, file: !659, line: 49, baseType: !193, size: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !666, file: !659, line: 51, baseType: !670, size: 64, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{!104, !276, !673}
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !658)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !666, file: !659, line: 53, baseType: !676, size: 64, offset: 128)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{!104, !315, !673}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !666, file: !659, line: 55, baseType: !680, size: 64, offset: 192)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{null, !212}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !658, file: !659, line: 73, baseType: !684, size: 16, offset: 192)
!684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !658, file: !659, line: 74, baseType: !686, size: 8, offset: 208)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !44, line: 16, baseType: !687)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !46, line: 20, baseType: !688)
!688 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !658, file: !659, line: 75, baseType: !109, size: 8, offset: 216)
!690 = !DIDerivedType(tag: DW_TAG_member, scope: !658, file: !659, line: 76, baseType: !691, size: 64, offset: 256)
!691 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !658, file: !659, line: 76, size: 64, elements: !692)
!692 = !{!693, !694, !701}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !691, file: !659, line: 77, baseType: !212, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !691, file: !659, line: 78, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !697)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !659, line: 86, size: 128, elements: !698)
!698 = !{!699, !700}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !697, file: !659, line: 87, baseType: !193, size: 32)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !697, file: !659, line: 88, baseType: !315, size: 64, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !691, file: !659, line: 79, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !704)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !659, line: 92, size: 256, elements: !705)
!705 = !{!706, !707, !708, !709, !710}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !704, file: !659, line: 94, baseType: !193, size: 32)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !704, file: !659, line: 95, baseType: !193, size: 32, offset: 32)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !704, file: !659, line: 96, baseType: !247, size: 64, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !704, file: !659, line: 97, baseType: !664, size: 64, offset: 128)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !704, file: !659, line: 98, baseType: !212, size: 64, offset: 192)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !580, file: !581, line: 438, baseType: !193, size: 32, offset: 2176)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !580, file: !581, line: 441, baseType: !193, size: 32, offset: 2208)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !580, file: !581, line: 442, baseType: !646, size: 64, offset: 2240)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !580, file: !581, line: 443, baseType: !650, size: 64, offset: 2304)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !580, file: !581, line: 444, baseType: !56, size: 8, offset: 2368)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !580, file: !581, line: 451, baseType: !56, size: 8, offset: 2376)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !580, file: !581, line: 454, baseType: !193, size: 32, offset: 2400)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !580, file: !581, line: 455, baseType: !719, size: 64, offset: 2432)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !721, line: 23, size: 96, elements: !722)
!721 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!722 = !{!723, !724, !725}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !720, file: !721, line: 24, baseType: !104, size: 32)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !720, file: !721, line: 24, baseType: !104, size: 32, offset: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !720, file: !721, line: 24, baseType: !104, size: 32, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !580, file: !581, line: 458, baseType: !727, size: 64, offset: 2496)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{!104}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !580, file: !581, line: 460, baseType: !731, size: 4032, align: 512, offset: 2560)
!731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !732, size: 4032, elements: !753)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !581, line: 362, size: 576, elements: !733)
!733 = !{!734, !735, !736}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !732, file: !581, line: 363, baseType: !212, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !732, file: !581, line: 364, baseType: !193, size: 32, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !732, file: !581, line: 367, baseType: !737, size: 448, offset: 128)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !581, line: 319, size: 448, elements: !738)
!738 = !{!739, !740}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !737, file: !581, line: 320, baseType: !579, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !737, file: !581, line: 321, baseType: !741, size: 384, offset: 64)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !742, line: 40, size: 384, elements: !743)
!742 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!743 = !{!744}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !741, file: !742, line: 41, baseType: !745, size: 384, align: 64)
!745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !746, size: 384, align: 64, elements: !226)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !747, line: 5, size: 192, align: 64, elements: !748)
!747 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!748 = !{!749, !750, !752}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !746, file: !747, line: 6, baseType: !30, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !746, file: !747, line: 7, baseType: !751, size: 64, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !746, file: !747, line: 8, baseType: !751, size: 64, offset: 128)
!753 = !{!754}
!754 = !DISubrange(count: 7)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !580, file: !581, line: 463, baseType: !756, size: 192, offset: 6592)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !757, line: 8, size: 192, elements: !758)
!757 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!758 = !{!759, !760, !762}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !756, file: !757, line: 10, baseType: !193, size: 32)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !756, file: !757, line: 11, baseType: !761, size: 64, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !756, file: !757, line: 12, baseType: !763, size: 64, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !765, line: 59, size: 48, elements: !766)
!765 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!766 = !{!767, !771, !772, !773, !774, !775}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !764, file: !765, line: 60, baseType: !768, size: 16)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !44, line: 18, baseType: !769)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !46, line: 23, baseType: !770)
!770 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !764, file: !765, line: 61, baseType: !768, size: 16, offset: 16)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !764, file: !765, line: 63, baseType: !193, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !764, file: !765, line: 64, baseType: !193, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !764, file: !765, line: 65, baseType: !193, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !764, file: !765, line: 66, baseType: !193, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !580, file: !581, line: 465, baseType: !30, size: 64, offset: 6784)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !580, file: !581, line: 469, baseType: !193, size: 32, offset: 6848)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !580, file: !581, line: 470, baseType: !74, size: 128, offset: 6912)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !580, file: !581, line: 471, baseType: !780, size: 64, offset: 7040)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !782, line: 33, size: 96, elements: !783)
!782 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!783 = !{!784, !785, !786, !787}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !781, file: !782, line: 37, baseType: !104, size: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !781, file: !782, line: 43, baseType: !104, size: 32, offset: 32)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !781, file: !782, line: 45, baseType: !119, size: 16, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !781, file: !782, line: 47, baseType: !119, size: 16, offset: 80)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !580, file: !581, line: 476, baseType: !789, size: 64, offset: 7104)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !581, line: 378, size: 256, elements: !791)
!791 = !{!792, !808, !809, !810}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !790, file: !581, line: 379, baseType: !793, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !795, line: 204, baseType: !796)
!795 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !795, line: 197, size: 192, elements: !797)
!797 = !{!798, !800, !801, !802, !804, !806}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !796, file: !795, line: 198, baseType: !799, size: 32)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !795, line: 21, baseType: !192)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !796, file: !795, line: 199, baseType: !111, size: 8, offset: 32)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !796, file: !795, line: 200, baseType: !111, size: 8, offset: 40)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !796, file: !795, line: 201, baseType: !803, size: 16, offset: 48)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !795, line: 17, baseType: !118)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !796, file: !795, line: 202, baseType: !805, size: 64, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !795, line: 16, baseType: !465)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !796, file: !795, line: 203, baseType: !807, size: 64, offset: 128)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !795, line: 22, baseType: !465)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !790, file: !581, line: 380, baseType: !193, size: 32, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !790, file: !581, line: 381, baseType: !315, size: 64, offset: 128)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !790, file: !581, line: 382, baseType: !315, size: 64, offset: 192)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !580, file: !581, line: 477, baseType: !790, size: 256, offset: 7168)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !580, file: !581, line: 480, baseType: !813, size: 64, offset: 7424)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !581, line: 480, flags: DIFlagFwdDecl)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !580, file: !581, line: 483, baseType: !816, size: 64, offset: 7488)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !581, line: 483, flags: DIFlagFwdDecl)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !580, file: !581, line: 488, baseType: !315, size: 64, offset: 7552)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !580, file: !581, line: 492, baseType: !212, size: 64, offset: 7616)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !580, file: !581, line: 493, baseType: !193, size: 32, offset: 7680)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !580, file: !581, line: 495, baseType: !212, size: 64, offset: 7744)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !580, file: !581, line: 496, baseType: !193, size: 32, offset: 7808)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !580, file: !581, line: 499, baseType: !193, size: 32, offset: 7840)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !580, file: !581, line: 500, baseType: !825, size: 64, offset: 7872)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !827, line: 45, baseType: !828)
!827 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !580, file: !581, line: 503, baseType: !193, size: 32, offset: 7936)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !580, file: !581, line: 504, baseType: !831, size: 64, offset: 8000)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !834, line: 96, size: 192, elements: !835)
!834 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!835 = !{!836, !837, !882, !886}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !833, file: !834, line: 97, baseType: !193, size: 32)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !833, file: !834, line: 98, baseType: !838, size: 64, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !834, line: 24, size: 3072, elements: !840)
!840 = !{!841, !843, !844, !845, !846, !862, !863, !864, !865, !866, !867, !868, !879, !880, !881}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !839, file: !834, line: 26, baseType: !842, size: 128)
!842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 128, elements: !226)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !839, file: !834, line: 27, baseType: !842, size: 128, offset: 128)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !839, file: !834, line: 28, baseType: !104, size: 32, offset: 256)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !839, file: !834, line: 31, baseType: !80, size: 32, align: 512, offset: 512)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !839, file: !834, line: 32, baseType: !847, size: 960, offset: 576)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !848, line: 206, size: 960, elements: !849)
!848 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!849 = !{!850, !851, !856, !858, !859, !861}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !847, file: !848, line: 207, baseType: !63, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !847, file: !848, line: 208, baseType: !852, size: 256, offset: 64)
!852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !853, size: 256, elements: !854)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!854 = !{!855}
!855 = !DISubrange(count: 4)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !847, file: !848, line: 209, baseType: !857, size: 256, offset: 320)
!857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 256, elements: !854)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !847, file: !848, line: 213, baseType: !349, size: 64, offset: 576)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !847, file: !848, line: 215, baseType: !860, size: 256, offset: 640)
!860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 256, elements: !854)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !847, file: !848, line: 216, baseType: !109, size: 8, offset: 896)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !839, file: !834, line: 33, baseType: !30, size: 64, offset: 1536)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !839, file: !834, line: 34, baseType: !30, size: 64, offset: 1600)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !839, file: !834, line: 35, baseType: !56, size: 8, offset: 1664)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !839, file: !834, line: 36, baseType: !174, size: 320, offset: 1728)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !839, file: !834, line: 37, baseType: !163, size: 256, offset: 2048)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !839, file: !834, line: 38, baseType: !60, size: 128, align: 64, offset: 2304)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !839, file: !834, line: 39, baseType: !869, size: 64, offset: 2432)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !834, line: 49, size: 768, elements: !871)
!871 = !{!872, !873, !874, !875, !876, !877, !878}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !870, file: !834, line: 50, baseType: !80, size: 32)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !870, file: !834, line: 51, baseType: !857, size: 256, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !870, file: !834, line: 53, baseType: !857, size: 256, offset: 320)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !870, file: !834, line: 54, baseType: !30, size: 64, offset: 576)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !870, file: !834, line: 55, baseType: !869, size: 64, offset: 640)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !870, file: !834, line: 56, baseType: !104, size: 32, offset: 704)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !870, file: !834, line: 57, baseType: !104, size: 32, offset: 736)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !839, file: !834, line: 40, baseType: !30, size: 64, offset: 2496)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !839, file: !834, line: 42, baseType: !104, size: 32, offset: 2560)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !839, file: !834, line: 43, baseType: !832, size: 64, offset: 2624)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !833, file: !834, line: 99, baseType: !883, offset: 128)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !884, line: 211, elements: !885)
!884 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!885 = !{}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !833, file: !834, line: 100, baseType: !887, size: 64, offset: 128)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !834, line: 63, size: 3008, elements: !889)
!889 = !{!890, !891, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !888, file: !834, line: 64, baseType: !869, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !888, file: !834, line: 65, baseType: !892, size: 192, offset: 64)
!892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !869, size: 192, elements: !259)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !888, file: !834, line: 67, baseType: !104, size: 32, offset: 256)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !888, file: !834, line: 68, baseType: !126, size: 256, offset: 320)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !888, file: !834, line: 69, baseType: !80, size: 32, offset: 576)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !888, file: !834, line: 70, baseType: !126, size: 256, offset: 640)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !888, file: !834, line: 71, baseType: !30, size: 64, offset: 896)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !888, file: !834, line: 72, baseType: !30, size: 64, offset: 960)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !888, file: !834, line: 73, baseType: !30, size: 64, offset: 1024)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !888, file: !834, line: 74, baseType: !30, size: 64, offset: 1088)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !888, file: !834, line: 75, baseType: !30, size: 64, offset: 1152)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !888, file: !834, line: 76, baseType: !30, size: 64, offset: 1216)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !888, file: !834, line: 77, baseType: !30, size: 64, offset: 1280)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !888, file: !834, line: 78, baseType: !30, size: 64, offset: 1344)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !888, file: !834, line: 79, baseType: !56, size: 8, offset: 1408)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !888, file: !834, line: 80, baseType: !30, size: 64, offset: 1472)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !888, file: !834, line: 81, baseType: !126, size: 256, offset: 1536)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !888, file: !834, line: 82, baseType: !606, size: 256, offset: 1792)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !888, file: !834, line: 84, baseType: !100, size: 32, offset: 2048)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !888, file: !834, line: 87, baseType: !30, size: 64, offset: 2112)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !888, file: !834, line: 88, baseType: !30, size: 64, offset: 2176)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !888, file: !834, line: 89, baseType: !159, size: 704, offset: 2240)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !888, file: !834, line: 90, baseType: !832, size: 64, offset: 2944)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !580, file: !581, line: 515, baseType: !915, size: 64, offset: 8064)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !917, line: 117, size: 128, elements: !918)
!917 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!918 = !{!919, !920, !921}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !916, file: !917, line: 118, baseType: !652, size: 32)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !916, file: !917, line: 119, baseType: !652, size: 32, offset: 32)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !916, file: !917, line: 120, baseType: !349, size: 64, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !580, file: !581, line: 516, baseType: !193, size: 32, offset: 8128)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !580, file: !581, line: 519, baseType: !193, size: 32, offset: 8160)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !580, file: !581, line: 520, baseType: !925, size: 64, offset: 8192)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !580, file: !581, line: 523, baseType: !927, size: 64, offset: 8256)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !581, line: 523, flags: DIFlagFwdDecl)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !580, file: !581, line: 524, baseType: !193, size: 32, offset: 8320)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !580, file: !581, line: 525, baseType: !932, size: 64, offset: 8384)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !581, line: 525, flags: DIFlagFwdDecl)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !580, file: !581, line: 526, baseType: !193, size: 32, offset: 8448)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !580, file: !581, line: 533, baseType: !212, size: 64, offset: 8512)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !580, file: !581, line: 534, baseType: !193, size: 32, offset: 8576)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !580, file: !581, line: 535, baseType: !939, size: 64, offset: 8640)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !580, file: !581, line: 536, baseType: !193, size: 32, offset: 8704)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !580, file: !581, line: 539, baseType: !104, size: 32, offset: 8736)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !580, file: !581, line: 540, baseType: !943, size: 64, offset: 8768)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !945, line: 32, size: 64, elements: !946)
!945 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!946 = !{!947, !948}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !944, file: !945, line: 33, baseType: !652, size: 32)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !944, file: !945, line: 34, baseType: !652, size: 32, offset: 32)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !580, file: !581, line: 563, baseType: !74, size: 128, offset: 8832)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !580, file: !581, line: 565, baseType: !74, size: 128, offset: 8960)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !580, file: !581, line: 568, baseType: !952, size: 64, offset: 9088)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DISubroutineType(types: !954)
!954 = !{null}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !580, file: !581, line: 570, baseType: !100, size: 32, offset: 9152)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !556, file: !390, line: 2382, baseType: !555, size: 64, offset: 448)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !556, file: !390, line: 2383, baseType: !958, size: 64, offset: 512)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !39, line: 194, size: 64, elements: !959)
!959 = !{!960}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !958, file: !39, line: 195, baseType: !181, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !556, file: !390, line: 2385, baseType: !962, offset: 576)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !884, line: 206, elements: !885)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !556, file: !390, line: 2386, baseType: !962, offset: 576)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !556, file: !390, line: 2387, baseType: !962, offset: 576)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !556, file: !390, line: 2388, baseType: !966, offset: 576)
!966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !962, elements: !259)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !556, file: !390, line: 2390, baseType: !962, offset: 576)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !556, file: !390, line: 2391, baseType: !962, offset: 576)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !556, file: !390, line: 2392, baseType: !962, offset: 576)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !556, file: !390, line: 2393, baseType: !962, offset: 576)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !543, file: !390, line: 1197, baseType: !972, size: 64, offset: 384)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !974)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !390, line: 2057, size: 1664, elements: !975)
!975 = !{!976, !980, !984, !985, !989, !995, !999, !1000, !1001, !1005, !1013, !1017, !1018, !1019, !1025, !1029, !1030, !1037, !1038, !1039, !1040, !1044, !1048, !1103, !1119, !1120}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !974, file: !390, line: 2058, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DISubroutineType(types: !979)
!979 = !{!393, !542}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !974, file: !390, line: 2059, baseType: !981, size: 64, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DISubroutineType(types: !983)
!983 = !{null, !393}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !974, file: !390, line: 2060, baseType: !981, size: 64, offset: 128)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !974, file: !390, line: 2062, baseType: !986, size: 64, offset: 192)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DISubroutineType(types: !988)
!988 = !{null, !393, !104}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !974, file: !390, line: 2063, baseType: !990, size: 64, offset: 256)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DISubroutineType(types: !992)
!992 = !{!104, !393, !993}
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !390, line: 309, flags: DIFlagFwdDecl)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !974, file: !390, line: 2064, baseType: !996, size: 64, offset: 320)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(types: !998)
!998 = !{!104, !393}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !974, file: !390, line: 2065, baseType: !981, size: 64, offset: 384)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !974, file: !390, line: 2066, baseType: !575, size: 64, offset: 448)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !974, file: !390, line: 2067, baseType: !1002, size: 64, offset: 512)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!104, !542, !104}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !974, file: !390, line: 2068, baseType: !1006, size: 64, offset: 576)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!104, !542, !1009}
!1009 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !390, line: 2052, baseType: !193, size: 32, elements: !1010)
!1010 = !{!1011, !1012}
!1011 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!1012 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !974, file: !390, line: 2069, baseType: !1014, size: 64, offset: 640)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!104, !542}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !974, file: !390, line: 2070, baseType: !1006, size: 64, offset: 704)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !974, file: !390, line: 2071, baseType: !1014, size: 64, offset: 768)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !974, file: !390, line: 2072, baseType: !1020, size: 64, offset: 832)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!104, !428, !1023}
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !390, line: 62, flags: DIFlagFwdDecl)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !974, file: !390, line: 2073, baseType: !1026, size: 64, offset: 896)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!104, !542, !761, !315}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !974, file: !390, line: 2074, baseType: !575, size: 64, offset: 960)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !974, file: !390, line: 2076, baseType: !1031, size: 64, offset: 1024)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!104, !1034, !428}
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1036, line: 66, flags: DIFlagFwdDecl)
!1036 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !974, file: !390, line: 2077, baseType: !1031, size: 64, offset: 1088)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !974, file: !390, line: 2078, baseType: !1031, size: 64, offset: 1152)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !974, file: !390, line: 2079, baseType: !1031, size: 64, offset: 1216)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !974, file: !390, line: 2081, baseType: !1041, size: 64, offset: 1280)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!345, !542, !104, !315, !360, !552}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !974, file: !390, line: 2082, baseType: !1045, size: 64, offset: 1344)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!345, !542, !104, !276, !360, !552}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !974, file: !390, line: 2083, baseType: !1049, size: 64, offset: 1408)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!1052, !393}
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !1055, line: 296, size: 1664, elements: !1056)
!1055 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!1056 = !{!1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1086, !1087, !1088}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1054, file: !1055, line: 297, baseType: !178, size: 128)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1054, file: !1055, line: 298, baseType: !74, size: 128, offset: 128)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1054, file: !1055, line: 299, baseType: !74, size: 128, offset: 256)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1054, file: !1055, line: 300, baseType: !74, size: 128, offset: 384)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1054, file: !1055, line: 301, baseType: !126, size: 256, offset: 512)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1054, file: !1055, line: 302, baseType: !80, size: 32, offset: 768)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1054, file: !1055, line: 303, baseType: !100, size: 32, offset: 800)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1054, file: !1055, line: 304, baseType: !542, size: 64, offset: 832)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1054, file: !1055, line: 305, baseType: !1066, size: 64, offset: 896)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !1055, line: 68, size: 64, elements: !1067)
!1067 = !{!1068, !1080}
!1068 = !DIDerivedType(tag: DW_TAG_member, scope: !1066, file: !1055, line: 69, baseType: !1069, size: 32)
!1069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1066, file: !1055, line: 69, size: 32, elements: !1070)
!1070 = !{!1071, !1072, !1073}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1069, file: !1055, line: 70, baseType: !399, size: 32)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1069, file: !1055, line: 71, baseType: !408, size: 32)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1069, file: !1055, line: 72, baseType: !1074, size: 32)
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1075, line: 24, baseType: !1076)
!1075 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1075, line: 22, size: 32, elements: !1077)
!1077 = !{!1078}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1076, file: !1075, line: 23, baseType: !1079, size: 32)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1075, line: 20, baseType: !405)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1066, file: !1055, line: 74, baseType: !1081, size: 32, offset: 32)
!1081 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !1055, line: 54, baseType: !193, size: 32, elements: !1082)
!1082 = !{!1083, !1084, !1085}
!1083 = !DIEnumerator(name: "USRQUOTA", value: 0)
!1084 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!1085 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1054, file: !1055, line: 306, baseType: !552, size: 64, offset: 960)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1054, file: !1055, line: 307, baseType: !30, size: 64, offset: 1024)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1054, file: !1055, line: 308, baseType: !1089, size: 576, offset: 1088)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !1055, line: 205, size: 576, elements: !1090)
!1090 = !{!1091, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1102}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1089, file: !1055, line: 206, baseType: !1092, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !1055, line: 66, baseType: !47)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1089, file: !1055, line: 207, baseType: !1092, size: 64, offset: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1089, file: !1055, line: 208, baseType: !1092, size: 64, offset: 128)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1089, file: !1055, line: 209, baseType: !1092, size: 64, offset: 192)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1089, file: !1055, line: 210, baseType: !1092, size: 64, offset: 256)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1089, file: !1055, line: 211, baseType: !1092, size: 64, offset: 320)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1089, file: !1055, line: 212, baseType: !1092, size: 64, offset: 384)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1089, file: !1055, line: 213, baseType: !1100, size: 64, offset: 448)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1101, line: 8, baseType: !45)
!1101 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1089, file: !1055, line: 214, baseType: !1100, size: 64, offset: 512)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !974, file: !390, line: 2085, baseType: !1104, size: 64, offset: 1472)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!349, !542, !1107}
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1109, line: 15, size: 256, elements: !1110)
!1109 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1110 = !{!1111, !1113, !1114, !1115, !1116}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1108, file: !1109, line: 16, baseType: !1112, size: 32)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !39, line: 154, baseType: !193)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1108, file: !1109, line: 19, baseType: !104, size: 32, offset: 32)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1108, file: !1109, line: 26, baseType: !30, size: 64, offset: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1108, file: !1109, line: 33, baseType: !30, size: 64, offset: 128)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1108, file: !1109, line: 36, baseType: !1117, size: 64, offset: 192)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1109, line: 36, flags: DIFlagFwdDecl)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !974, file: !390, line: 2087, baseType: !1104, size: 64, offset: 1536)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !974, file: !390, line: 2089, baseType: !575, size: 64, offset: 1600)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !543, file: !390, line: 1198, baseType: !1122, size: 64, offset: 448)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1124)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !1055, line: 324, size: 704, elements: !1125)
!1125 = !{!1126, !1130, !1134, !1138, !1139, !1140, !1141, !1142, !1147, !1152, !1156}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1124, file: !1055, line: 325, baseType: !1127, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!104, !1053}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1124, file: !1055, line: 326, baseType: !1131, size: 64, offset: 64)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!1053, !542, !104}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1124, file: !1055, line: 327, baseType: !1135, size: 64, offset: 128)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{null, !1053}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1124, file: !1055, line: 328, baseType: !1127, size: 64, offset: 192)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1124, file: !1055, line: 329, baseType: !1127, size: 64, offset: 256)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1124, file: !1055, line: 330, baseType: !1127, size: 64, offset: 320)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1124, file: !1055, line: 331, baseType: !1002, size: 64, offset: 384)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1124, file: !1055, line: 334, baseType: !1143, size: 64, offset: 448)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!1146, !393}
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1124, file: !1055, line: 335, baseType: !1148, size: 64, offset: 512)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!104, !393, !1151}
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1124, file: !1055, line: 337, baseType: !1153, size: 64, offset: 576)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!104, !393, !1146}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1124, file: !1055, line: 339, baseType: !1157, size: 64, offset: 640)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!104, !542, !1160}
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !543, file: !390, line: 1199, baseType: !1162, size: 64, offset: 512)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1164)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !1055, line: 430, size: 704, elements: !1165)
!1165 = !{!1166, !1177, !1178, !1182, !1183, !1184, !1199, !1222, !1226, !1227, !1250}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1164, file: !1055, line: 431, baseType: !1167, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!104, !542, !104, !104, !1170}
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1172)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1173, line: 8, size: 128, elements: !1174)
!1173 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1174 = !{!1175, !1176}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1172, file: !1173, line: 9, baseType: !536, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1172, file: !1173, line: 10, baseType: !428, size: 64, offset: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1164, file: !1055, line: 432, baseType: !1002, size: 64, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1164, file: !1055, line: 433, baseType: !1179, size: 64, offset: 128)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!104, !542, !193}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1164, file: !1055, line: 434, baseType: !1179, size: 64, offset: 192)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1164, file: !1055, line: 435, baseType: !1002, size: 64, offset: 256)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1164, file: !1055, line: 436, baseType: !1185, size: 64, offset: 320)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!104, !542, !104, !1188}
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !1055, line: 417, size: 256, elements: !1190)
!1190 = !{!1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1189, file: !1055, line: 418, baseType: !104, size: 32)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1189, file: !1055, line: 419, baseType: !193, size: 32, offset: 32)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1189, file: !1055, line: 420, baseType: !193, size: 32, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1189, file: !1055, line: 422, baseType: !193, size: 32, offset: 96)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1189, file: !1055, line: 423, baseType: !193, size: 32, offset: 128)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1189, file: !1055, line: 424, baseType: !193, size: 32, offset: 160)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1189, file: !1055, line: 425, baseType: !193, size: 32, offset: 192)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1189, file: !1055, line: 426, baseType: !193, size: 32, offset: 224)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1164, file: !1055, line: 437, baseType: !1200, size: 64, offset: 384)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!104, !542, !1066, !1203}
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !1055, line: 345, size: 960, elements: !1205)
!1205 = !{!1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1204, file: !1055, line: 346, baseType: !104, size: 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1204, file: !1055, line: 347, baseType: !464, size: 64, offset: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1204, file: !1055, line: 348, baseType: !464, size: 64, offset: 128)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1204, file: !1055, line: 349, baseType: !464, size: 64, offset: 192)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1204, file: !1055, line: 350, baseType: !464, size: 64, offset: 256)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1204, file: !1055, line: 351, baseType: !464, size: 64, offset: 320)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1204, file: !1055, line: 352, baseType: !464, size: 64, offset: 384)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1204, file: !1055, line: 353, baseType: !43, size: 64, offset: 448)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1204, file: !1055, line: 355, baseType: !43, size: 64, offset: 512)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1204, file: !1055, line: 356, baseType: !104, size: 32, offset: 576)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1204, file: !1055, line: 357, baseType: !104, size: 32, offset: 608)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1204, file: !1055, line: 358, baseType: !464, size: 64, offset: 640)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1204, file: !1055, line: 359, baseType: !464, size: 64, offset: 704)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1204, file: !1055, line: 360, baseType: !464, size: 64, offset: 768)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1204, file: !1055, line: 361, baseType: !43, size: 64, offset: 832)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1204, file: !1055, line: 362, baseType: !104, size: 32, offset: 896)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1164, file: !1055, line: 438, baseType: !1223, size: 64, offset: 448)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!104, !542, !1160, !1203}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1164, file: !1055, line: 440, baseType: !1200, size: 64, offset: 512)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1164, file: !1055, line: 441, baseType: !1228, size: 64, offset: 576)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!104, !542, !1231}
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !1055, line: 411, size: 1408, elements: !1233)
!1233 = !{!1234, !1235}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1232, file: !1055, line: 412, baseType: !193, size: 32)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1232, file: !1055, line: 413, baseType: !1236, size: 1344, offset: 64)
!1236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1237, size: 1344, elements: !259)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !1055, line: 397, size: 448, elements: !1238)
!1238 = !{!1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1249}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1237, file: !1055, line: 398, baseType: !193, size: 32)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1237, file: !1055, line: 399, baseType: !193, size: 32, offset: 32)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1237, file: !1055, line: 401, baseType: !193, size: 32, offset: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1237, file: !1055, line: 402, baseType: !193, size: 32, offset: 96)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1237, file: !1055, line: 403, baseType: !193, size: 32, offset: 128)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1237, file: !1055, line: 404, baseType: !193, size: 32, offset: 160)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1237, file: !1055, line: 405, baseType: !193, size: 32, offset: 192)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1237, file: !1055, line: 406, baseType: !466, size: 64, offset: 256)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1237, file: !1055, line: 407, baseType: !1248, size: 64, offset: 320)
!1248 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !39, line: 132, baseType: !464)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1237, file: !1055, line: 408, baseType: !1248, size: 64, offset: 384)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1164, file: !1055, line: 442, baseType: !1179, size: 64, offset: 640)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !543, file: !390, line: 1200, baseType: !1252, size: 64, offset: 576)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1254)
!1254 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !390, line: 54, flags: DIFlagFwdDecl)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !543, file: !390, line: 1201, baseType: !30, size: 64, offset: 640)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !543, file: !390, line: 1202, baseType: !30, size: 64, offset: 704)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !543, file: !390, line: 1203, baseType: !30, size: 64, offset: 768)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !543, file: !390, line: 1204, baseType: !428, size: 64, offset: 832)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !543, file: !390, line: 1205, baseType: !1260, size: 320, offset: 896)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1261, line: 48, size: 320, elements: !1262)
!1261 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1262 = !{!1263, !1264, !1265, !1266, !1267}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1260, file: !1261, line: 49, baseType: !36, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1260, file: !1261, line: 55, baseType: !36, size: 64, offset: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1260, file: !1261, line: 57, baseType: !133, size: 32, offset: 128)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1260, file: !1261, line: 59, baseType: !131, size: 32, offset: 160)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1260, file: !1261, line: 60, baseType: !74, size: 128, offset: 192)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !543, file: !390, line: 1206, baseType: !104, size: 32, offset: 1216)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !543, file: !390, line: 1207, baseType: !100, size: 32, offset: 1248)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !543, file: !390, line: 1209, baseType: !212, size: 64, offset: 1280)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !543, file: !390, line: 1211, baseType: !1272, size: 64, offset: 1344)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1275)
!1275 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !390, line: 1211, flags: DIFlagFwdDecl)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !543, file: !390, line: 1223, baseType: !1277, size: 64, offset: 1408)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !445, line: 34, size: 64, elements: !1278)
!1278 = !{!1279}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1277, file: !445, line: 35, baseType: !448, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !543, file: !390, line: 1224, baseType: !74, size: 128, offset: 1472)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !543, file: !390, line: 1225, baseType: !1282, size: 64, offset: 1600)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !148, line: 40, size: 7424, elements: !1284)
!1284 = !{!1285, !1287, !1288, !2504, !2505, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2548, !2549}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !1283, file: !148, line: 41, baseType: !1286, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !39, line: 131, baseType: !464)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !1283, file: !148, line: 42, baseType: !1286, size: 64, offset: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !1283, file: !148, line: 43, baseType: !1289, size: 64, offset: 128)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !19, line: 128, size: 4544, elements: !1291)
!1291 = !{!1292, !1293, !1294, !1295, !1297, !1298, !1299, !1306, !1307, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2470, !2471, !2472, !2473, !2476, !2477, !2480, !2483, !2484, !2487, !2488, !2489, !2490}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !1290, file: !19, line: 133, baseType: !104, size: 32)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "first_minor", scope: !1290, file: !19, line: 134, baseType: !104, size: 32, offset: 32)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "minors", scope: !1290, file: !19, line: 135, baseType: !104, size: 32, offset: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !1290, file: !19, line: 137, baseType: !1296, size: 256, offset: 96)
!1296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !473)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1290, file: !19, line: 139, baseType: !119, size: 16, offset: 352)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "event_flags", scope: !1290, file: !19, line: 140, baseType: !119, size: 16, offset: 368)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "part_tbl", scope: !1290, file: !19, line: 142, baseType: !1300, size: 128, offset: 384)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1301, line: 296, size: 128, elements: !1302)
!1301 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1302 = !{!1303, !1304, !1305}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1300, file: !1301, line: 297, baseType: !80, size: 32)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1300, file: !1301, line: 299, baseType: !1112, size: 32, offset: 32)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1300, file: !1301, line: 300, baseType: !212, size: 64, offset: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "part0", scope: !1290, file: !19, line: 143, baseType: !1282, size: 64, offset: 512)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !1290, file: !19, line: 145, baseType: !1308, size: 64, offset: 576)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1310)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device_operations", file: !19, line: 1388, size: 1152, elements: !1311)
!1311 = !{!1312, !2371, !2375, !2380, !2384, !2388, !2389, !2393, !2394, !2400, !2404, !2405, !2409, !2435, !2440, !2450, !2451, !2455}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "submit_bio", scope: !1310, file: !19, line: 1389, baseType: !1313, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{null, !1316}
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio", file: !148, line: 265, size: 960, elements: !1318)
!1318 = !{!1319, !1320, !1321, !1323, !1324, !1325, !1326, !1327, !1335, !1337, !1340, !1341, !1344, !1348, !1349, !1351, !1352, !1353, !1354, !2324, !2369}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "bi_next", scope: !1317, file: !148, line: 266, baseType: !1316, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bdev", scope: !1317, file: !148, line: 267, baseType: !1282, size: 64, offset: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "bi_opf", scope: !1317, file: !148, line: 268, baseType: !1322, size: 32, offset: 128)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_opf_t", file: !148, line: 256, baseType: !192)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "bi_flags", scope: !1317, file: !148, line: 271, baseType: !119, size: 16, offset: 160)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "bi_ioprio", scope: !1317, file: !148, line: 272, baseType: !119, size: 16, offset: 176)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "bi_status", scope: !1317, file: !148, line: 273, baseType: !147, size: 8, offset: 192)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_remaining", scope: !1317, file: !148, line: 274, baseType: !100, size: 32, offset: 224)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iter", scope: !1317, file: !148, line: 276, baseType: !1328, size: 160, align: 32, offset: 256)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bvec_iter", file: !1329, line: 77, size: 160, align: 32, elements: !1330)
!1329 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!1330 = !{!1331, !1332, !1333, !1334}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "bi_sector", scope: !1328, file: !1329, line: 78, baseType: !1286, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "bi_size", scope: !1328, file: !1329, line: 80, baseType: !193, size: 32, offset: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "bi_idx", scope: !1328, file: !1329, line: 82, baseType: !193, size: 32, offset: 96)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bvec_done", scope: !1328, file: !1329, line: 84, baseType: !193, size: 32, offset: 128)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "bi_cookie", scope: !1317, file: !148, line: 278, baseType: !1336, size: 32, offset: 416)
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_qc_t", file: !148, line: 258, baseType: !193)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "bi_end_io", scope: !1317, file: !148, line: 279, baseType: !1338, size: 64, offset: 448)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_end_io_t", file: !148, line: 20, baseType: !1314)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "bi_private", scope: !1317, file: !148, line: 280, baseType: !212, size: 64, offset: 512)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "bi_blkg", scope: !1317, file: !148, line: 288, baseType: !1342, size: 64, offset: 576)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DICompositeType(tag: DW_TAG_structure_type, name: "blkcg_gq", file: !148, line: 288, flags: DIFlagFwdDecl)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "bi_issue", scope: !1317, file: !148, line: 289, baseType: !1345, size: 64, offset: 640)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_issue", file: !148, line: 228, size: 64, elements: !1346)
!1346 = !{!1347}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1345, file: !148, line: 229, baseType: !464, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iocost_cost", scope: !1317, file: !148, line: 291, baseType: !464, size: 64, offset: 704)
!1349 = !DIDerivedType(tag: DW_TAG_member, scope: !1317, file: !148, line: 299, baseType: !1350, offset: 768)
!1350 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1317, file: !148, line: 299, elements: !885)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "bi_vcnt", scope: !1317, file: !148, line: 305, baseType: !119, size: 16, offset: 768)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "bi_max_vecs", scope: !1317, file: !148, line: 311, baseType: !119, size: 16, offset: 784)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_cnt", scope: !1317, file: !148, line: 313, baseType: !100, size: 32, offset: 800)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "bi_io_vec", scope: !1317, file: !148, line: 315, baseType: !1355, size: 64, offset: 832)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1329, line: 31, size: 128, elements: !1357)
!1357 = !{!1358, !2322, !2323}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !1356, file: !1329, line: 32, baseType: !1359, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1361, line: 74, size: 512, align: 128, elements: !1362)
!1361 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1362 = !{!1363, !1364, !2316, !2321}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1360, file: !1361, line: 75, baseType: !30, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, scope: !1360, file: !1361, line: 83, baseType: !1365, size: 320, offset: 64)
!1365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1360, file: !1361, line: 83, size: 320, elements: !1366)
!1366 = !{!1367, !1388, !1402, !1406, !2315}
!1367 = !DIDerivedType(tag: DW_TAG_member, scope: !1365, file: !1361, line: 84, baseType: !1368, size: 320)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1365, file: !1361, line: 84, size: 320, elements: !1369)
!1369 = !{!1370, !1381, !1382, !1387}
!1370 = !DIDerivedType(tag: DW_TAG_member, scope: !1368, file: !1361, line: 90, baseType: !1371, size: 128)
!1371 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1368, file: !1361, line: 90, size: 128, elements: !1372)
!1372 = !{!1373, !1374, !1379, !1380}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1371, file: !1361, line: 91, baseType: !74, size: 128)
!1374 = !DIDerivedType(tag: DW_TAG_member, scope: !1371, file: !1361, line: 94, baseType: !1375, size: 128)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1371, file: !1361, line: 94, size: 128, elements: !1376)
!1376 = !{!1377, !1378}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1375, file: !1361, line: 96, baseType: !212, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1375, file: !1361, line: 98, baseType: !193, size: 32, offset: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1371, file: !1361, line: 102, baseType: !74, size: 128)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1371, file: !1361, line: 103, baseType: !74, size: 128)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1368, file: !1361, line: 106, baseType: !388, size: 64, offset: 128)
!1382 = !DIDerivedType(tag: DW_TAG_member, scope: !1368, file: !1361, line: 107, baseType: !1383, size: 64, offset: 192)
!1383 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1368, file: !1361, line: 107, size: 64, elements: !1384)
!1384 = !{!1385, !1386}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1383, file: !1361, line: 108, baseType: !30, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1383, file: !1361, line: 109, baseType: !30, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1368, file: !1361, line: 117, baseType: !30, size: 64, offset: 256)
!1388 = !DIDerivedType(tag: DW_TAG_member, scope: !1365, file: !1361, line: 119, baseType: !1389, size: 320)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1365, file: !1361, line: 119, size: 320, elements: !1390)
!1390 = !{!1391, !1392, !1395, !1396, !1397}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1389, file: !1361, line: 124, baseType: !30, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1389, file: !1361, line: 125, baseType: !1393, size: 64, offset: 64)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1361, line: 125, flags: DIFlagFwdDecl)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1389, file: !1361, line: 126, baseType: !30, size: 64, offset: 128)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1389, file: !1361, line: 127, baseType: !30, size: 64, offset: 192)
!1397 = !DIDerivedType(tag: DW_TAG_member, scope: !1389, file: !1361, line: 128, baseType: !1398, size: 64, offset: 256)
!1398 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1389, file: !1361, line: 128, size: 64, elements: !1399)
!1399 = !{!1400, !1401}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1398, file: !1361, line: 133, baseType: !30, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1398, file: !1361, line: 138, baseType: !36, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, scope: !1365, file: !1361, line: 141, baseType: !1403, size: 64)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1365, file: !1361, line: 141, size: 64, elements: !1404)
!1404 = !{!1405}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1403, file: !1361, line: 142, baseType: !30, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, scope: !1365, file: !1361, line: 144, baseType: !1407, size: 128)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1365, file: !1361, line: 144, size: 128, elements: !1408)
!1408 = !{!1409, !2314}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1407, file: !1361, line: 146, baseType: !1410, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1412, line: 126, size: 1216, elements: !1413)
!1412 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!1413 = !{!1414, !1424, !1425, !1426, !1434, !1435, !1436, !2296, !2297, !2298}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1411, file: !1412, line: 127, baseType: !1415, size: 384)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !1412, line: 21, size: 384, elements: !1416)
!1416 = !{!1417, !1418, !1420, !1421, !1422, !1423}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1415, file: !1412, line: 22, baseType: !30, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1415, file: !1412, line: 23, baseType: !1419, size: 64, offset: 64)
!1419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1415, file: !1412, line: 24, baseType: !1419, size: 64, offset: 128)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1415, file: !1412, line: 25, baseType: !30, size: 64, offset: 192)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1415, file: !1412, line: 26, baseType: !30, size: 64, offset: 256)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1415, file: !1412, line: 27, baseType: !30, size: 64, offset: 320)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1411, file: !1412, line: 128, baseType: !26, size: 128, offset: 384)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1411, file: !1412, line: 129, baseType: !606, size: 256, offset: 512)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1411, file: !1412, line: 130, baseType: !1427, size: 32, offset: 768)
!1427 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !1412, line: 68, baseType: !193, size: 32, elements: !1428)
!1428 = !{!1429, !1430, !1431, !1432, !1433}
!1429 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!1430 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!1431 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!1432 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!1433 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1411, file: !1412, line: 131, baseType: !193, size: 32, offset: 800)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1411, file: !1412, line: 132, baseType: !30, size: 64, offset: 832)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1411, file: !1412, line: 133, baseType: !1437, size: 64, offset: 896)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1439)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !1412, line: 77, size: 192, elements: !1440)
!1440 = !{!1441, !1445, !2292}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1439, file: !1412, line: 83, baseType: !1442, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{null, !1359}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1439, file: !1412, line: 89, baseType: !1446, size: 64, offset: 64)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!1449, !1450}
!1449 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !1361, line: 1184, baseType: !193)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1452, line: 512, size: 896, elements: !1453)
!1452 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1453 = !{!1454, !2244, !2260, !2267, !2274, !2284, !2285, !2286, !2288, !2290}
!1454 = !DIDerivedType(tag: DW_TAG_member, scope: !1451, file: !1452, line: 513, baseType: !1455, size: 320)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1451, file: !1452, line: 513, size: 320, elements: !1456)
!1456 = !{!1457, !2240, !2241, !2242, !2243}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1455, file: !1452, line: 514, baseType: !1458, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1361, line: 625, size: 1344, elements: !1460)
!1460 = !{!1461, !1470, !2145, !2151, !2158, !2159, !2164, !2165, !2170, !2171, !2174, !2233, !2234, !2235, !2236, !2237, !2238}
!1461 = !DIDerivedType(tag: DW_TAG_member, scope: !1459, file: !1361, line: 628, baseType: !1462, size: 128)
!1462 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1459, file: !1361, line: 628, size: 128, elements: !1463)
!1463 = !{!1464, !1469}
!1464 = !DIDerivedType(tag: DW_TAG_member, scope: !1462, file: !1361, line: 629, baseType: !1465, size: 128)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1462, file: !1361, line: 629, size: 128, elements: !1466)
!1466 = !{!1467, !1468}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1465, file: !1361, line: 631, baseType: !30, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1465, file: !1361, line: 632, baseType: !30, size: 64, offset: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1462, file: !1361, line: 635, baseType: !60, size: 128, align: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1459, file: !1361, line: 639, baseType: !1471, size: 64, offset: 128)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1361, line: 733, size: 10240, elements: !1473)
!1473 = !{!1474, !2143}
!1474 = !DIDerivedType(tag: DW_TAG_member, scope: !1472, file: !1361, line: 734, baseType: !1475, size: 10240)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1472, file: !1361, line: 734, size: 10240, elements: !1476)
!1476 = !{!1477, !1481, !1494, !2017, !2018, !2019, !2020, !2021, !2022, !2031, !2032, !2033, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2072, !2074, !2077, !2122, !2123, !2124, !2127, !2128, !2129, !2132, !2133, !2134, !2141, !2142}
!1477 = !DIDerivedType(tag: DW_TAG_member, scope: !1475, file: !1361, line: 739, baseType: !1478, size: 512, align: 512)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1475, file: !1361, line: 739, size: 512, align: 512, elements: !1479)
!1479 = !{!1480}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1478, file: !1361, line: 747, baseType: !100, size: 32)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1475, file: !1361, line: 750, baseType: !1482, size: 128, offset: 512)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1483, line: 218, size: 128, elements: !1484)
!1483 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1484 = !{!1485, !1492, !1493}
!1485 = !DIDerivedType(tag: DW_TAG_member, scope: !1482, file: !1483, line: 219, baseType: !1486, size: 32)
!1486 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1482, file: !1483, line: 219, size: 32, elements: !1487)
!1487 = !{!1488, !1489}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1486, file: !1483, line: 220, baseType: !80, size: 32)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1486, file: !1483, line: 221, baseType: !1490)
!1490 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1483, line: 197, baseType: !1491)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1483, line: 197, elements: !885)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1482, file: !1483, line: 223, baseType: !193, size: 32, offset: 32)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1482, file: !1483, line: 224, baseType: !212, size: 64, offset: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1475, file: !1361, line: 752, baseType: !1495, size: 64, offset: 640)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!30, !1498, !30, !30, !30, !30}
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !390, line: 994, size: 1856, align: 64, elements: !1500)
!1500 = !{!1501, !1512, !1513, !1515, !1516, !1517, !1518, !1519, !1588, !1778, !1787, !1788, !1789, !2007, !2008, !2009, !2010, !2012, !2013, !2016}
!1501 = !DIDerivedType(tag: DW_TAG_member, scope: !1499, file: !390, line: 995, baseType: !1502, size: 128)
!1502 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1499, file: !390, line: 995, size: 128, elements: !1503)
!1503 = !{!1504, !1510, !1511}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1502, file: !390, line: 996, baseType: !1505, size: 64)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1506, line: 60, size: 64, elements: !1507)
!1506 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1507 = !{!1508}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1505, file: !1506, line: 61, baseType: !1509, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1502, file: !390, line: 997, baseType: !60, size: 128, align: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1502, file: !390, line: 998, baseType: !193, size: 32)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1499, file: !390, line: 1005, baseType: !80, size: 32, offset: 128)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1499, file: !390, line: 1006, baseType: !1514, size: 32, offset: 160)
!1514 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !39, line: 156, baseType: !193)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1499, file: !390, line: 1007, baseType: !36, size: 64, offset: 192)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1499, file: !390, line: 1008, baseType: !126, size: 256, offset: 256)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1499, file: !390, line: 1009, baseType: !552, size: 64, offset: 512)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1499, file: !390, line: 1010, baseType: !193, size: 32, offset: 576)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1499, file: !390, line: 1011, baseType: !1520, size: 256, offset: 640)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !390, line: 948, size: 256, elements: !1521)
!1521 = !{!1522, !1543, !1577, !1585, !1586, !1587}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1520, file: !390, line: 949, baseType: !1523, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1524, line: 34, baseType: !1525)
!1524 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1524, line: 25, size: 64, elements: !1526)
!1526 = !{!1527}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1525, file: !1524, line: 26, baseType: !1528, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1529, line: 27, baseType: !1530)
!1529 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1529, line: 13, size: 64, elements: !1531)
!1531 = !{!1532, !1542}
!1532 = !DIDerivedType(tag: DW_TAG_member, scope: !1530, file: !1529, line: 14, baseType: !1533, size: 32)
!1533 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1530, file: !1529, line: 14, size: 32, elements: !1534)
!1534 = !{!1535, !1536}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1533, file: !1529, line: 15, baseType: !100, size: 32)
!1536 = !DIDerivedType(tag: DW_TAG_member, scope: !1533, file: !1529, line: 16, baseType: !1537, size: 32)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1533, file: !1529, line: 16, size: 32, elements: !1538)
!1538 = !{!1539, !1540}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1537, file: !1529, line: 18, baseType: !109, size: 8)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1537, file: !1529, line: 19, baseType: !1541, size: 24, offset: 8)
!1541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 24, elements: !259)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1530, file: !1529, line: 26, baseType: !92, size: 32, offset: 32)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1520, file: !390, line: 950, baseType: !1544, size: 64, offset: 64)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !1546, line: 59, size: 768, elements: !1547)
!1546 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!1547 = !{!1548, !1554, !1555, !1556, !1558, !1559, !1566, !1567}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1545, file: !1546, line: 61, baseType: !1549, size: 32)
!1549 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1550, line: 113, baseType: !1551)
!1550 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1550, line: 111, size: 32, elements: !1552)
!1552 = !{!1553}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1551, file: !1550, line: 112, baseType: !100, size: 32)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1545, file: !1546, line: 62, baseType: !193, size: 32, offset: 32)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1545, file: !1546, line: 63, baseType: !80, size: 32, offset: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1545, file: !1546, line: 65, baseType: !1557, size: 256, offset: 128)
!1557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !958, size: 256, elements: !854)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1545, file: !1546, line: 66, baseType: !958, size: 64, offset: 384)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1545, file: !1546, line: 68, baseType: !1560, size: 192, offset: 448)
!1560 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1561, line: 41, baseType: !1562)
!1561 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1561, line: 37, size: 192, elements: !1563)
!1563 = !{!1564, !1565}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1562, file: !1561, line: 38, baseType: !80, size: 32)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1562, file: !1561, line: 39, baseType: !74, size: 128, offset: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1545, file: !1546, line: 69, baseType: !60, size: 128, align: 64, offset: 640)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1545, file: !1546, line: 70, baseType: !1568, offset: 768)
!1568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1569, elements: !1575)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !1546, line: 54, size: 128, elements: !1570)
!1570 = !{!1571, !1572}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1569, file: !1546, line: 55, baseType: !104, size: 32)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1569, file: !1546, line: 56, baseType: !1573, size: 64, offset: 64)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1546, line: 56, flags: DIFlagFwdDecl)
!1575 = !{!1576}
!1576 = !DISubrange(count: -1)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1520, file: !390, line: 951, baseType: !1578, size: 32, offset: 128)
!1578 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !1546, line: 9, baseType: !193, size: 32, elements: !1579)
!1579 = !{!1580, !1581, !1582, !1583, !1584}
!1580 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!1581 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!1582 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!1583 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!1584 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1520, file: !390, line: 952, baseType: !399, size: 32, offset: 160)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1520, file: !390, line: 952, baseType: !399, size: 32, offset: 192)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1520, file: !390, line: 953, baseType: !104, size: 32, offset: 224)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1499, file: !390, line: 1012, baseType: !1589, size: 64, offset: 896)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1591)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1592, line: 110, size: 1472, elements: !1593)
!1592 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1593 = !{!1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1610, !1611, !1612, !1613, !1614, !1615, !1723, !1724, !1725, !1726, !1727, !1758, !1761, !1765, !1773}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1591, file: !1592, line: 111, baseType: !36, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1591, file: !1592, line: 112, baseType: !399, size: 32, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1591, file: !1592, line: 113, baseType: !408, size: 32, offset: 96)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1591, file: !1592, line: 114, baseType: !399, size: 32, offset: 128)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1591, file: !1592, line: 115, baseType: !408, size: 32, offset: 160)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1591, file: !1592, line: 116, baseType: !399, size: 32, offset: 192)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1591, file: !1592, line: 117, baseType: !408, size: 32, offset: 224)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1591, file: !1592, line: 118, baseType: !399, size: 32, offset: 256)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1591, file: !1592, line: 119, baseType: !408, size: 32, offset: 288)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1591, file: !1592, line: 120, baseType: !193, size: 32, offset: 320)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1591, file: !1592, line: 121, baseType: !1605, size: 64, offset: 384)
!1605 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1606, line: 24, baseType: !1607)
!1606 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1606, line: 24, size: 64, elements: !1608)
!1608 = !{!1609}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1607, file: !1606, line: 24, baseType: !464, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1591, file: !1592, line: 122, baseType: !1605, size: 64, offset: 448)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1591, file: !1592, line: 123, baseType: !1605, size: 64, offset: 512)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1591, file: !1592, line: 124, baseType: !1605, size: 64, offset: 576)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1591, file: !1592, line: 125, baseType: !1605, size: 64, offset: 640)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1591, file: !1592, line: 127, baseType: !111, size: 8, offset: 704)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1591, file: !1592, line: 129, baseType: !1616, size: 64, offset: 768)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1618, line: 195, size: 1728, elements: !1619)
!1618 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1619 = !{!1620, !1621, !1624, !1629, !1630, !1633, !1634, !1639, !1640, !1641, !1642, !1645, !1646, !1647, !1648, !1649, !1687, !1708}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1617, file: !1618, line: 196, baseType: !1549, size: 32)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1617, file: !1618, line: 197, baseType: !1622, size: 32, offset: 32)
!1622 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1618, line: 28, baseType: !1623)
!1623 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !39, line: 104, baseType: !652)
!1624 = !DIDerivedType(tag: DW_TAG_member, scope: !1617, file: !1618, line: 198, baseType: !1625, size: 192, offset: 64)
!1625 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1617, file: !1618, line: 198, size: 192, elements: !1626)
!1626 = !{!1627, !1628}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1625, file: !1618, line: 199, baseType: !74, size: 128)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1625, file: !1618, line: 200, baseType: !746, size: 192, align: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1617, file: !1618, line: 205, baseType: !1260, size: 320, offset: 256)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1617, file: !1618, line: 206, baseType: !1631, size: 64, offset: 576)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1618, line: 206, flags: DIFlagFwdDecl)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1617, file: !1618, line: 207, baseType: !212, size: 64, offset: 640)
!1634 = !DIDerivedType(tag: DW_TAG_member, scope: !1617, file: !1618, line: 208, baseType: !1635, size: 64, offset: 704)
!1635 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1617, file: !1618, line: 208, size: 64, elements: !1636)
!1636 = !{!1637, !1638}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1635, file: !1618, line: 209, baseType: !1100, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1635, file: !1618, line: 210, baseType: !1100, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1617, file: !1618, line: 212, baseType: !1100, size: 64, offset: 768)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1617, file: !1618, line: 213, baseType: !399, size: 32, offset: 832)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1617, file: !1618, line: 214, baseType: !408, size: 32, offset: 864)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1617, file: !1618, line: 215, baseType: !1643, size: 32, offset: 896)
!1643 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1618, line: 31, baseType: !1644)
!1644 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !39, line: 110, baseType: !191)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1617, file: !1618, line: 216, baseType: !119, size: 16, offset: 928)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1617, file: !1618, line: 217, baseType: !119, size: 16, offset: 944)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1617, file: !1618, line: 221, baseType: !770, size: 16, offset: 960)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1617, file: !1618, line: 228, baseType: !30, size: 64, offset: 1024)
!1649 = !DIDerivedType(tag: DW_TAG_member, scope: !1617, file: !1618, line: 245, baseType: !1650, size: 320, offset: 1088)
!1650 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1617, file: !1618, line: 245, size: 320, elements: !1651)
!1651 = !{!1652, !1679}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1650, file: !1618, line: 246, baseType: !1653, size: 320)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1618, line: 114, size: 320, elements: !1654)
!1654 = !{!1655, !1656, !1668, !1671, !1678}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1653, file: !1618, line: 116, baseType: !30, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, scope: !1653, file: !1618, line: 117, baseType: !1657, size: 64, offset: 64)
!1657 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1653, file: !1618, line: 117, size: 64, elements: !1658)
!1658 = !{!1659, !1667}
!1659 = !DIDerivedType(tag: DW_TAG_member, scope: !1657, file: !1618, line: 118, baseType: !1660, size: 64)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1657, file: !1618, line: 118, size: 64, elements: !1661)
!1661 = !{!1662, !1663}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1660, file: !1618, line: 120, baseType: !117, size: 16)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1660, file: !1618, line: 121, baseType: !1664, size: 48, offset: 16)
!1664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !1665)
!1665 = !{!1666}
!1666 = !DISubrange(count: 6)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1657, file: !1618, line: 127, baseType: !30, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1653, file: !1618, line: 129, baseType: !1669, size: 64, offset: 128)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1618, line: 102, flags: DIFlagFwdDecl)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1653, file: !1618, line: 130, baseType: !1672, size: 64, offset: 192)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1618, line: 108, size: 192, elements: !1674)
!1674 = !{!1675, !1676, !1677}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1673, file: !1618, line: 109, baseType: !60, size: 128, align: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1673, file: !1618, line: 110, baseType: !1549, size: 32, offset: 128)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1673, file: !1618, line: 111, baseType: !56, size: 8, offset: 160)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1653, file: !1618, line: 131, baseType: !276, size: 64, offset: 256)
!1679 = !DIDerivedType(tag: DW_TAG_member, scope: !1650, file: !1618, line: 247, baseType: !1680, size: 320)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1650, file: !1618, line: 247, size: 320, elements: !1681)
!1681 = !{!1682, !1683, !1684, !1685, !1686}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1680, file: !1618, line: 248, baseType: !30, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1680, file: !1618, line: 249, baseType: !30, size: 64, offset: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1680, file: !1618, line: 250, baseType: !1669, size: 64, offset: 128)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1680, file: !1618, line: 251, baseType: !1672, size: 64, offset: 192)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1680, file: !1618, line: 252, baseType: !315, size: 64, offset: 256)
!1687 = !DIDerivedType(tag: DW_TAG_member, scope: !1617, file: !1618, line: 260, baseType: !1688, size: 256, offset: 1408)
!1688 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1617, file: !1618, line: 260, size: 256, elements: !1689)
!1689 = !{!1690, !1696}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1688, file: !1618, line: 261, baseType: !1691, size: 256)
!1691 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1618, line: 134, size: 256, elements: !1692)
!1692 = !{!1693, !1694}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1691, file: !1618, line: 135, baseType: !212, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1691, file: !1618, line: 136, baseType: !1695, size: 256)
!1695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 256, elements: !854)
!1696 = !DIDerivedType(tag: DW_TAG_member, scope: !1688, file: !1618, line: 262, baseType: !1697, size: 256)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1688, file: !1618, line: 262, size: 256, elements: !1698)
!1698 = !{!1699, !1700}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1697, file: !1618, line: 264, baseType: !74, size: 128)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1697, file: !1618, line: 265, baseType: !1701, size: 128, offset: 128)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1702, line: 22, size: 128, elements: !1703)
!1702 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1703 = !{!1704, !1707}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1701, file: !1702, line: 23, baseType: !1705, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1702, line: 23, flags: DIFlagFwdDecl)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1701, file: !1702, line: 24, baseType: !30, size: 64, offset: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1617, file: !1618, line: 280, baseType: !1709, size: 64, offset: 1664)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1618, line: 176, size: 192, elements: !1711)
!1711 = !{!1712, !1721, !1722}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1710, file: !1618, line: 177, baseType: !1713, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1618, line: 171, baseType: !1714)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!104, !1616, !1717, !1719, !1616}
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1670)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1691)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1710, file: !1618, line: 178, baseType: !1616, size: 64, offset: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1710, file: !1618, line: 179, baseType: !1669, size: 64, offset: 128)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1591, file: !1592, line: 130, baseType: !1616, size: 64, offset: 832)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1591, file: !1592, line: 131, baseType: !1616, size: 64, offset: 896)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1591, file: !1592, line: 132, baseType: !1616, size: 64, offset: 960)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1591, file: !1592, line: 135, baseType: !212, size: 64, offset: 1024)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1591, file: !1592, line: 137, baseType: !1728, size: 64, offset: 1088)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1730, line: 14, size: 1088, elements: !1731)
!1730 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1731 = !{!1732, !1733, !1742, !1743, !1744, !1745, !1746, !1747}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1729, file: !1730, line: 15, baseType: !1549, size: 32)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1729, file: !1730, line: 17, baseType: !1734, size: 320, offset: 64)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1735, line: 22, size: 320, elements: !1736)
!1735 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1736 = !{!1737, !1738, !1739, !1740}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1734, file: !1735, line: 23, baseType: !131, size: 32)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1734, file: !1735, line: 24, baseType: !43, size: 64, offset: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1734, file: !1735, line: 26, baseType: !74, size: 128, offset: 128)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1734, file: !1735, line: 28, baseType: !1741, size: 64, offset: 256)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1729, file: !1730, line: 19, baseType: !30, size: 64, offset: 384)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1729, file: !1730, line: 20, baseType: !36, size: 64, offset: 448)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1729, file: !1730, line: 23, baseType: !178, size: 128, offset: 512)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1729, file: !1730, line: 24, baseType: !399, size: 32, offset: 640)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1729, file: !1730, line: 29, baseType: !36, size: 64, offset: 704)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1729, file: !1730, line: 36, baseType: !1748, size: 320, offset: 768)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1749, line: 15, size: 320, elements: !1750)
!1749 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1750 = !{!1751, !1752, !1753, !1754, !1755, !1756, !1757}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1748, file: !1749, line: 16, baseType: !131, size: 32)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1748, file: !1749, line: 18, baseType: !104, size: 32, offset: 32)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1748, file: !1749, line: 19, baseType: !104, size: 32, offset: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1748, file: !1749, line: 20, baseType: !104, size: 32, offset: 96)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1748, file: !1749, line: 21, baseType: !104, size: 32, offset: 128)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1748, file: !1749, line: 22, baseType: !30, size: 64, offset: 192)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1748, file: !1749, line: 23, baseType: !30, size: 64, offset: 256)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1591, file: !1592, line: 138, baseType: !1759, size: 64, offset: 1152)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !400, line: 18, flags: DIFlagFwdDecl)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1591, file: !1592, line: 139, baseType: !1762, size: 64, offset: 1216)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1764, line: 16, flags: DIFlagFwdDecl)
!1764 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1591, file: !1592, line: 140, baseType: !1766, size: 64, offset: 1280)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1592, line: 25, size: 64, elements: !1768)
!1768 = !{!1769, !1770, !1771}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1767, file: !1592, line: 26, baseType: !100, size: 32)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1767, file: !1592, line: 27, baseType: !104, size: 32, offset: 32)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1767, file: !1592, line: 28, baseType: !1772, offset: 64)
!1772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, elements: !1575)
!1773 = !DIDerivedType(tag: DW_TAG_member, scope: !1591, file: !1592, line: 142, baseType: !1774, size: 128, offset: 1344)
!1774 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1591, file: !1592, line: 142, size: 128, elements: !1775)
!1775 = !{!1776, !1777}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1774, file: !1592, line: 143, baseType: !104, size: 32)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1774, file: !1592, line: 144, baseType: !60, size: 128, align: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1499, file: !390, line: 1013, baseType: !1779, size: 256, offset: 960)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !390, line: 970, size: 256, elements: !1780)
!1780 = !{!1781, !1782, !1783, !1784, !1785, !1786}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1779, file: !390, line: 971, baseType: !30, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1779, file: !390, line: 972, baseType: !193, size: 32, offset: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1779, file: !390, line: 973, baseType: !193, size: 32, offset: 96)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1779, file: !390, line: 974, baseType: !193, size: 32, offset: 128)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1779, file: !390, line: 975, baseType: !193, size: 32, offset: 160)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1779, file: !390, line: 976, baseType: !552, size: 64, offset: 192)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1499, file: !390, line: 1014, baseType: !1172, size: 128, offset: 1216)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1499, file: !390, line: 1015, baseType: !393, size: 64, offset: 1344)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1499, file: !390, line: 1016, baseType: !1790, size: 64, offset: 1408)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1792)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !390, line: 1914, size: 2112, elements: !1793)
!1793 = !{!1794, !1795, !1799, !1804, !1808, !1885, !1886, !1899, !1912, !1920, !1924, !1925, !1929, !1930, !1934, !1939, !1940, !1944, !1948, !1954, !1955, !1959, !1960, !1966, !1970, !1974, !1980, !1984, !1988, !1992, !1996, !1997, !2003}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1792, file: !390, line: 1915, baseType: !579, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1792, file: !390, line: 1916, baseType: !1796, size: 64, offset: 64)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{!552, !1498, !552, !104}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1792, file: !390, line: 1917, baseType: !1800, size: 64, offset: 128)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{!345, !1498, !315, !360, !1803}
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1792, file: !390, line: 1918, baseType: !1805, size: 64, offset: 192)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{!345, !1498, !276, !360, !1803}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1792, file: !390, line: 1919, baseType: !1809, size: 64, offset: 256)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!345, !1812, !1834}
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !390, line: 373, size: 384, elements: !1814)
!1814 = !{!1815, !1816, !1817, !1821, !1822, !1823, !1824}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1813, file: !390, line: 374, baseType: !1498, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1813, file: !390, line: 375, baseType: !552, size: 64, offset: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1813, file: !390, line: 376, baseType: !1818, size: 64, offset: 128)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{null, !1812, !349}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1813, file: !390, line: 377, baseType: !212, size: 64, offset: 192)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1813, file: !390, line: 378, baseType: !104, size: 32, offset: 256)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1813, file: !390, line: 379, baseType: !117, size: 16, offset: 288)
!1824 = !DIDerivedType(tag: DW_TAG_member, scope: !1813, file: !390, line: 380, baseType: !1825, size: 64, offset: 320)
!1825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1813, file: !390, line: 380, size: 64, elements: !1826)
!1826 = !{!1827, !1830}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1825, file: !390, line: 386, baseType: !1828, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !390, line: 386, flags: DIFlagFwdDecl)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1825, file: !390, line: 395, baseType: !1831, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{!345, !212}
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1836, line: 41, size: 320, elements: !1837)
!1836 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1837 = !{!1838, !1839, !1840, !1841, !1842, !1843, !1848, !1880}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1835, file: !1836, line: 42, baseType: !109, size: 8)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1835, file: !1836, line: 43, baseType: !56, size: 8, offset: 8)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1835, file: !1836, line: 44, baseType: !56, size: 8, offset: 16)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1835, file: !1836, line: 45, baseType: !56, size: 8, offset: 24)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1835, file: !1836, line: 46, baseType: !56, size: 8, offset: 32)
!1843 = !DIDerivedType(tag: DW_TAG_member, scope: !1835, file: !1836, line: 47, baseType: !1844, size: 64, offset: 64)
!1844 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1835, file: !1836, line: 47, size: 64, elements: !1845)
!1845 = !{!1846, !1847}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1844, file: !1836, line: 48, baseType: !360, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1844, file: !1836, line: 49, baseType: !104, size: 32)
!1848 = !DIDerivedType(tag: DW_TAG_member, scope: !1835, file: !1836, line: 61, baseType: !1849, size: 128, offset: 128)
!1849 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1835, file: !1836, line: 61, size: 128, elements: !1850)
!1850 = !{!1851, !1857}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1849, file: !1836, line: 67, baseType: !1852, size: 128)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1853, line: 17, size: 128, elements: !1854)
!1853 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1854 = !{!1855, !1856}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1852, file: !1853, line: 19, baseType: !212, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1852, file: !1853, line: 20, baseType: !361, size: 64, offset: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, scope: !1849, file: !1836, line: 68, baseType: !1858, size: 128)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1849, file: !1836, line: 68, size: 128, elements: !1859)
!1859 = !{!1860, !1879}
!1860 = !DIDerivedType(tag: DW_TAG_member, scope: !1858, file: !1836, line: 69, baseType: !1861, size: 64)
!1861 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1858, file: !1836, line: 69, size: 64, elements: !1862)
!1862 = !{!1863, !1866, !1873, !1876, !1878}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1861, file: !1836, line: 71, baseType: !1864, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1852)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1861, file: !1836, line: 72, baseType: !1867, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1869)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1836, line: 17, size: 128, elements: !1870)
!1870 = !{!1871, !1872}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1869, file: !1836, line: 18, baseType: !212, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1869, file: !1836, line: 19, baseType: !360, size: 64, offset: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1861, file: !1836, line: 73, baseType: !1874, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1356)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1861, file: !1836, line: 74, baseType: !1877, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1861, file: !1836, line: 75, baseType: !212, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1858, file: !1836, line: 77, baseType: !360, size: 64, offset: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, scope: !1835, file: !1836, line: 80, baseType: !1881, size: 64, offset: 256)
!1881 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1835, file: !1836, line: 80, size: 64, elements: !1882)
!1882 = !{!1883, !1884}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1881, file: !1836, line: 81, baseType: !30, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1881, file: !1836, line: 82, baseType: !552, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1792, file: !390, line: 1920, baseType: !1809, size: 64, offset: 320)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1792, file: !390, line: 1921, baseType: !1887, size: 64, offset: 384)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DISubroutineType(types: !1889)
!1889 = !{!104, !1812, !1890, !193}
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !19, line: 1559, size: 192, elements: !1892)
!1892 = !{!1893, !1894, !1895}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "req_list", scope: !1891, file: !19, line: 1560, baseType: !12, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "need_ts", scope: !1891, file: !19, line: 1561, baseType: !56, size: 8, offset: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1891, file: !19, line: 1562, baseType: !1896, size: 64, offset: 128)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{null, !1890}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1792, file: !390, line: 1923, baseType: !1900, size: 64, offset: 448)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{!104, !1498, !1903}
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !390, line: 1858, size: 128, elements: !1905)
!1905 = !{!1906, !1911}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1904, file: !390, line: 1859, baseType: !1907, size: 64)
!1907 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !390, line: 1855, baseType: !1908)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!56, !1903, !276, !104, !552, !464, !193}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1904, file: !390, line: 1860, baseType: !552, size: 64, offset: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1792, file: !390, line: 1924, baseType: !1913, size: 64, offset: 512)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{!1916, !1498, !1918}
!1916 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1917, line: 59, baseType: !193)
!1917 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !390, line: 61, flags: DIFlagFwdDecl)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1792, file: !390, line: 1925, baseType: !1921, size: 64, offset: 576)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!349, !1498, !193, !30}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1792, file: !390, line: 1926, baseType: !1921, size: 64, offset: 640)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1792, file: !390, line: 1927, baseType: !1926, size: 64, offset: 704)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!104, !1498, !1458}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1792, file: !390, line: 1928, baseType: !30, size: 64, offset: 768)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1792, file: !390, line: 1929, baseType: !1931, size: 64, offset: 832)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!104, !393, !1498}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1792, file: !390, line: 1930, baseType: !1935, size: 64, offset: 896)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!104, !1498, !1938}
!1938 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !390, line: 1061, baseType: !212)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1792, file: !390, line: 1931, baseType: !1931, size: 64, offset: 960)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1792, file: !390, line: 1932, baseType: !1941, size: 64, offset: 1024)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!104, !1498, !552, !552, !104}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1792, file: !390, line: 1933, baseType: !1945, size: 64, offset: 1088)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!104, !104, !1498, !104}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1792, file: !390, line: 1934, baseType: !1949, size: 64, offset: 1152)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!104, !1498, !104, !1952}
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !390, line: 1063, flags: DIFlagFwdDecl)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1792, file: !390, line: 1935, baseType: !1495, size: 64, offset: 1216)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1792, file: !390, line: 1936, baseType: !1956, size: 64, offset: 1280)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!104, !104}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1792, file: !390, line: 1937, baseType: !1949, size: 64, offset: 1344)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1792, file: !390, line: 1938, baseType: !1961, size: 64, offset: 1408)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!345, !1964, !1498, !1803, !360, !193}
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1036, line: 59, flags: DIFlagFwdDecl)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1792, file: !390, line: 1939, baseType: !1967, size: 64, offset: 1472)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!345, !1498, !1803, !1964, !360, !193}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1792, file: !390, line: 1940, baseType: !1971, size: 64, offset: 1536)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{null, !1498}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1792, file: !390, line: 1941, baseType: !1975, size: 64, offset: 1600)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!104, !1498, !104, !1978, !1979}
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1792, file: !390, line: 1942, baseType: !1981, size: 64, offset: 1664)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{!349, !1498, !104, !552, !552}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1792, file: !390, line: 1944, baseType: !1985, size: 64, offset: 1728)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{null, !1034, !1498}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1792, file: !390, line: 1948, baseType: !1989, size: 64, offset: 1792)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!345, !1498, !552, !1498, !552, !360, !193}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1792, file: !390, line: 1950, baseType: !1993, size: 64, offset: 1856)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!552, !1498, !552, !1498, !552, !552, !193}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1792, file: !390, line: 1953, baseType: !1941, size: 64, offset: 1920)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1792, file: !390, line: 1954, baseType: !1998, size: 64, offset: 1984)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{!104, !2001, !193}
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !390, line: 1911, flags: DIFlagFwdDecl)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1792, file: !390, line: 1955, baseType: !2004, size: 64, offset: 2048)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!104, !2001, !1890, !193}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1499, file: !390, line: 1018, baseType: !464, size: 64, offset: 1472)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1499, file: !390, line: 1020, baseType: !212, size: 64, offset: 1536)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1499, file: !390, line: 1023, baseType: !212, size: 64, offset: 1600)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1499, file: !390, line: 1027, baseType: !2011, size: 64, offset: 1664)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1499, file: !390, line: 1029, baseType: !388, size: 64, offset: 1728)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1499, file: !390, line: 1030, baseType: !2014, size: 32, offset: 1792)
!2014 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2015, line: 8, baseType: !191)
!2015 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1499, file: !390, line: 1031, baseType: !2014, size: 32, offset: 1824)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1475, file: !1361, line: 756, baseType: !30, size: 64, offset: 704)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1475, file: !1361, line: 757, baseType: !30, size: 64, offset: 768)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1475, file: !1361, line: 760, baseType: !30, size: 64, offset: 832)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1475, file: !1361, line: 761, baseType: !30, size: 64, offset: 896)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1475, file: !1361, line: 763, baseType: !30, size: 64, offset: 960)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1475, file: !1361, line: 764, baseType: !2023, size: 64, offset: 1024)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2025, line: 299, baseType: !2026)
!2025 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2025, line: 299, size: 64, elements: !2027)
!2027 = !{!2028}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2026, file: !2025, line: 299, baseType: !2029, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2030, line: 18, baseType: !30)
!2030 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1475, file: !1361, line: 773, baseType: !100, size: 32, offset: 1088)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1475, file: !1361, line: 785, baseType: !100, size: 32, offset: 1120)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1475, file: !1361, line: 795, baseType: !2034, size: 64, offset: 1152)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1361, line: 726, size: 128, elements: !2036)
!2036 = !{!2037, !2038}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2035, file: !1361, line: 727, baseType: !464, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2035, file: !1361, line: 728, baseType: !104, size: 32, offset: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1475, file: !1361, line: 801, baseType: !30, size: 64, offset: 1216)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1475, file: !1361, line: 804, baseType: !36, size: 64, offset: 1280)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1475, file: !1361, line: 806, baseType: !104, size: 32, offset: 1344)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1475, file: !1361, line: 808, baseType: !80, size: 32, offset: 1376)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1475, file: !1361, line: 823, baseType: !1260, size: 320, offset: 1408)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1475, file: !1361, line: 825, baseType: !74, size: 128, offset: 1728)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1475, file: !1361, line: 845, baseType: !104, size: 32, offset: 1856)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1475, file: !1361, line: 849, baseType: !30, size: 64, offset: 1920)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1475, file: !1361, line: 850, baseType: !30, size: 64, offset: 1984)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1475, file: !1361, line: 852, baseType: !30, size: 64, offset: 2048)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1475, file: !1361, line: 853, baseType: !30, size: 64, offset: 2112)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1475, file: !1361, line: 854, baseType: !38, size: 64, offset: 2176)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1475, file: !1361, line: 855, baseType: !30, size: 64, offset: 2240)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1475, file: !1361, line: 856, baseType: !30, size: 64, offset: 2304)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1475, file: !1361, line: 857, baseType: !30, size: 64, offset: 2368)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1475, file: !1361, line: 858, baseType: !30, size: 64, offset: 2432)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1475, file: !1361, line: 865, baseType: !439, size: 32, offset: 2496)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1475, file: !1361, line: 867, baseType: !80, size: 32, offset: 2528)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1475, file: !1361, line: 869, baseType: !30, size: 64, offset: 2560)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1475, file: !1361, line: 869, baseType: !30, size: 64, offset: 2624)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1475, file: !1361, line: 869, baseType: !30, size: 64, offset: 2688)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1475, file: !1361, line: 869, baseType: !30, size: 64, offset: 2752)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1475, file: !1361, line: 870, baseType: !30, size: 64, offset: 2816)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1475, file: !1361, line: 870, baseType: !30, size: 64, offset: 2880)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1475, file: !1361, line: 870, baseType: !30, size: 64, offset: 2944)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1475, file: !1361, line: 871, baseType: !30, size: 64, offset: 3008)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1475, file: !1361, line: 871, baseType: !30, size: 64, offset: 3072)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1475, file: !1361, line: 871, baseType: !30, size: 64, offset: 3136)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1475, file: !1361, line: 871, baseType: !30, size: 64, offset: 3200)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1475, file: !1361, line: 873, baseType: !2069, size: 3328, offset: 3264)
!2069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 3328, elements: !2070)
!2070 = !{!2071}
!2071 = !DISubrange(count: 52)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1475, file: !1361, line: 875, baseType: !2073, size: 1280, offset: 6592)
!2073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1734, size: 1280, elements: !854)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1475, file: !1361, line: 877, baseType: !2075, size: 64, offset: 7872)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1361, line: 877, flags: DIFlagFwdDecl)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1475, file: !1361, line: 880, baseType: !2078, size: 1088, offset: 7936)
!2078 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2079, line: 72, baseType: !2080)
!2079 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2079, line: 23, size: 1088, elements: !2081)
!2081 = !{!2082, !2083, !2084, !2085, !2086, !2089, !2090, !2091, !2092, !2119, !2120, !2121}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2080, file: !2079, line: 28, baseType: !464, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2080, file: !2079, line: 38, baseType: !38, size: 64, offset: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2080, file: !2079, line: 40, baseType: !30, size: 64, offset: 128)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2080, file: !2079, line: 43, baseType: !1260, size: 320, offset: 192)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2080, file: !2079, line: 44, baseType: !2087, size: 64, offset: 512)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2079, line: 44, flags: DIFlagFwdDecl)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2080, file: !2079, line: 48, baseType: !30, size: 64, offset: 576)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2080, file: !2079, line: 59, baseType: !126, size: 256, offset: 640)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2080, file: !2079, line: 60, baseType: !212, size: 64, offset: 896)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2080, file: !2079, line: 61, baseType: !2093, size: 64, offset: 960)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2095)
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2096, line: 13, size: 1216, elements: !2097)
!2096 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2097 = !{!2098, !2099, !2100, !2101, !2102, !2103, !2104, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2095, file: !2096, line: 14, baseType: !212, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2095, file: !2096, line: 15, baseType: !30, size: 64, offset: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2095, file: !2096, line: 17, baseType: !30, size: 64, offset: 128)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2095, file: !2096, line: 17, baseType: !30, size: 64, offset: 192)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2095, file: !2096, line: 18, baseType: !30, size: 64, offset: 256)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2095, file: !2096, line: 18, baseType: !30, size: 64, offset: 320)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2095, file: !2096, line: 19, baseType: !2105, size: 64, offset: 384)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2095, file: !2096, line: 21, baseType: !349, size: 64, offset: 448)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2095, file: !2096, line: 23, baseType: !349, size: 64, offset: 512)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2095, file: !2096, line: 24, baseType: !349, size: 64, offset: 576)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2095, file: !2096, line: 25, baseType: !349, size: 64, offset: 640)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2095, file: !2096, line: 26, baseType: !349, size: 64, offset: 704)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2095, file: !2096, line: 27, baseType: !349, size: 64, offset: 768)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2095, file: !2096, line: 28, baseType: !349, size: 64, offset: 832)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2095, file: !2096, line: 29, baseType: !349, size: 64, offset: 896)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2095, file: !2096, line: 30, baseType: !349, size: 64, offset: 960)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2095, file: !2096, line: 31, baseType: !349, size: 64, offset: 1024)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2095, file: !2096, line: 32, baseType: !349, size: 64, offset: 1088)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2095, file: !2096, line: 33, baseType: !349, size: 64, offset: 1152)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2080, file: !2079, line: 63, baseType: !100, size: 32, offset: 1024)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2080, file: !2079, line: 69, baseType: !117, size: 16, offset: 1056)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2080, file: !2079, line: 70, baseType: !768, size: 16, offset: 1072)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1475, file: !1361, line: 882, baseType: !30, size: 64, offset: 9024)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1475, file: !1361, line: 885, baseType: !80, size: 32, offset: 9088)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1475, file: !1361, line: 886, baseType: !2125, size: 64, offset: 9152)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1361, line: 732, flags: DIFlagFwdDecl)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1475, file: !1361, line: 901, baseType: !1759, size: 64, offset: 9216)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1475, file: !1361, line: 904, baseType: !1498, size: 64, offset: 9280)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1475, file: !1361, line: 906, baseType: !2130, size: 64, offset: 9344)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1361, line: 906, flags: DIFlagFwdDecl)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1475, file: !1361, line: 930, baseType: !100, size: 32, offset: 9408)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1475, file: !1361, line: 933, baseType: !100, size: 32, offset: 9440)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1475, file: !1361, line: 935, baseType: !2135, size: 64, offset: 9472)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2136, line: 103, size: 64, elements: !2137)
!2136 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!2137 = !{!2138}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2135, file: !2136, line: 104, baseType: !2139, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !2136, line: 101, flags: DIFlagFwdDecl)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1475, file: !1361, line: 940, baseType: !36, size: 64, offset: 9536)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1475, file: !1361, line: 942, baseType: !163, size: 256, offset: 9600)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1472, file: !1361, line: 986, baseType: !2144, offset: 10240)
!2144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, elements: !1575)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1459, file: !1361, line: 640, baseType: !2146, size: 64, offset: 192)
!2146 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2025, line: 297, baseType: !2147)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2025, line: 297, size: 64, elements: !2148)
!2148 = !{!2149}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2147, file: !2025, line: 297, baseType: !2150, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2030, line: 19, baseType: !30)
!2151 = !DIDerivedType(tag: DW_TAG_member, scope: !1459, file: !1361, line: 646, baseType: !2152, size: 64, offset: 256)
!2152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1459, file: !1361, line: 646, size: 64, elements: !2153)
!2153 = !{!2154, !2157}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2152, file: !1361, line: 647, baseType: !2155, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2156)
!2156 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1361, line: 542, baseType: !30)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2152, file: !1361, line: 648, baseType: !2156, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1459, file: !1361, line: 666, baseType: !104, size: 32, offset: 320)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1459, file: !1361, line: 667, baseType: !2160, size: 64, offset: 384)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1361, line: 579, size: 320, elements: !2162)
!2162 = !{!2163}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2161, file: !1361, line: 580, baseType: !1260, size: 320)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1459, file: !1361, line: 670, baseType: !56, size: 8, offset: 448)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1459, file: !1361, line: 681, baseType: !2166, size: 256, offset: 512)
!2166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1459, file: !1361, line: 678, size: 256, elements: !2167)
!2167 = !{!2168, !2169}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2166, file: !1361, line: 679, baseType: !746, size: 192, align: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2166, file: !1361, line: 680, baseType: !30, size: 64, offset: 192)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1459, file: !1361, line: 689, baseType: !74, size: 128, offset: 768)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1459, file: !1361, line: 691, baseType: !2172, size: 64, offset: 896)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1361, line: 691, flags: DIFlagFwdDecl)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1459, file: !1361, line: 694, baseType: !2175, size: 64, offset: 960)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2177)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1452, line: 563, size: 1024, elements: !2178)
!2178 = !{!2179, !2183, !2184, !2188, !2192, !2196, !2197, !2201, !2205, !2209, !2210, !2211, !2215, !2219, !2225, !2229}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2177, file: !1452, line: 564, baseType: !2180, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{null, !1458}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2177, file: !1452, line: 569, baseType: !2180, size: 64, offset: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2177, file: !1452, line: 571, baseType: !2185, size: 64, offset: 128)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!104, !1458, !30}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2177, file: !1452, line: 572, baseType: !2189, size: 64, offset: 192)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!104, !1458}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2177, file: !1452, line: 578, baseType: !2193, size: 64, offset: 256)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{!104, !1458, !30, !30, !30}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2177, file: !1452, line: 580, baseType: !1446, size: 64, offset: 320)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2177, file: !1452, line: 581, baseType: !2198, size: 64, offset: 384)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!1449, !1450, !193}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2177, file: !1452, line: 582, baseType: !2202, size: 64, offset: 448)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!1449, !1450, !30, !30}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2177, file: !1452, line: 584, baseType: !2206, size: 64, offset: 512)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!30, !1458}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2177, file: !1452, line: 588, baseType: !1446, size: 64, offset: 576)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2177, file: !1452, line: 591, baseType: !1446, size: 64, offset: 640)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2177, file: !1452, line: 597, baseType: !2212, size: 64, offset: 704)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{!104, !1458, !30, !212, !104, !104}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2177, file: !1452, line: 603, baseType: !2216, size: 64, offset: 768)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!276, !1458}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2177, file: !1452, line: 613, baseType: !2220, size: 64, offset: 832)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!104, !1458, !2223}
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1361, line: 717, flags: DIFlagFwdDecl)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2177, file: !1452, line: 625, baseType: !2226, size: 64, offset: 896)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!2223, !1458, !30}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2177, file: !1452, line: 633, baseType: !2230, size: 64, offset: 960)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{!1359, !1458, !30}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1459, file: !1361, line: 697, baseType: !30, size: 64, offset: 1024)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1459, file: !1361, line: 699, baseType: !1498, size: 64, offset: 1088)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1459, file: !1361, line: 700, baseType: !212, size: 64, offset: 1152)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1459, file: !1361, line: 711, baseType: !36, size: 64, offset: 1216)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1459, file: !1361, line: 717, baseType: !2223, size: 64, offset: 1280)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1459, file: !1361, line: 722, baseType: !2239, offset: 1344)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1361, line: 570, elements: !885)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1455, file: !1452, line: 515, baseType: !1112, size: 32, offset: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1455, file: !1452, line: 516, baseType: !30, size: 64, offset: 128)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1455, file: !1452, line: 517, baseType: !30, size: 64, offset: 192)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1455, file: !1452, line: 518, baseType: !30, size: 64, offset: 256)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1451, file: !1452, line: 520, baseType: !2245, size: 32, offset: 320)
!2245 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !1361, line: 1325, baseType: !193, size: 32, elements: !2246)
!2246 = !{!2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259}
!2247 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!2248 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!2249 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!2250 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!2251 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!2252 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!2253 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!2254 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!2255 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!2256 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!2257 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!2258 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!2259 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1451, file: !1452, line: 522, baseType: !2261, size: 64, offset: 384)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2030, line: 22, baseType: !2263)
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2030, line: 22, size: 64, elements: !2264)
!2264 = !{!2265}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2263, file: !2030, line: 22, baseType: !2266, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2030, line: 15, baseType: !30)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1451, file: !1452, line: 524, baseType: !2268, size: 64, offset: 448)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2025, line: 372, baseType: !2270)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2025, line: 372, size: 64, elements: !2271)
!2271 = !{!2272}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2270, file: !2025, line: 372, baseType: !2273, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2030, line: 16, baseType: !30)
!2274 = !DIDerivedType(tag: DW_TAG_member, scope: !1451, file: !1452, line: 527, baseType: !2275, size: 64, offset: 512)
!2275 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1451, file: !1452, line: 527, size: 64, elements: !2276)
!2276 = !{!2277, !2283}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2275, file: !1452, line: 528, baseType: !2278, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2030, line: 21, baseType: !2279)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2030, line: 21, size: 64, elements: !2280)
!2280 = !{!2281}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2279, file: !2030, line: 21, baseType: !2282, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2030, line: 14, baseType: !30)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2275, file: !1452, line: 529, baseType: !2262, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1451, file: !1452, line: 534, baseType: !1359, size: 64, offset: 576)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1451, file: !1452, line: 535, baseType: !1359, size: 64, offset: 640)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1451, file: !1452, line: 541, baseType: !2287, size: 64, offset: 704)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1451, file: !1452, line: 545, baseType: !2289, size: 64, offset: 768)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1451, file: !1452, line: 549, baseType: !2291, size: 64, offset: 832)
!2291 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2025, line: 520, baseType: !1359)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1439, file: !1412, line: 100, baseType: !2293, size: 64, offset: 128)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!104, !1410, !30, !30, !104}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1411, file: !1412, line: 134, baseType: !212, size: 64, offset: 960)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1411, file: !1412, line: 135, baseType: !104, size: 32, offset: 1024)
!2298 = !DIDerivedType(tag: DW_TAG_member, scope: !1411, file: !1412, line: 136, baseType: !2299, size: 128, offset: 1088)
!2299 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1411, file: !1412, line: 136, size: 128, elements: !2300)
!2300 = !{!2301, !2307}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2299, file: !1412, line: 137, baseType: !2302, size: 128)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2303, line: 6, size: 128, elements: !2304)
!2303 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2304 = !{!2305, !2306}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2302, file: !2303, line: 7, baseType: !464, size: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2302, file: !2303, line: 8, baseType: !464, size: 64, offset: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, scope: !2299, file: !1412, line: 138, baseType: !2308)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2299, file: !1412, line: 138, elements: !2309)
!2309 = !{!2310, !2312}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2308, file: !1412, line: 138, baseType: !2311)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2308, file: !1412, line: 138, elements: !885)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2308, file: !1412, line: 138, baseType: !2313)
!2313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2302, elements: !1575)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1407, file: !1361, line: 147, baseType: !212, size: 64, offset: 64)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1365, file: !1361, line: 161, baseType: !60, size: 128, align: 64)
!2316 = !DIDerivedType(tag: DW_TAG_member, scope: !1360, file: !1361, line: 164, baseType: !2317, size: 32, offset: 384)
!2317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1360, file: !1361, line: 164, size: 32, elements: !2318)
!2318 = !{!2319, !2320}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2317, file: !1361, line: 169, baseType: !100, size: 32)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2317, file: !1361, line: 177, baseType: !193, size: 32)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1360, file: !1361, line: 181, baseType: !100, size: 32, offset: 416)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !1356, file: !1329, line: 33, baseType: !193, size: 32, offset: 64)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !1356, file: !1329, line: 34, baseType: !193, size: 32, offset: 96)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pool", scope: !1317, file: !148, line: 317, baseType: !2325, size: 64, offset: 896)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_set", file: !2327, line: 678, size: 1984, elements: !2328)
!2327 = !DIFile(filename: "./include/linux/bio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48d164cf34dda85459af1fe5d2b8d08f")
!2328 = !{!2329, !2333, !2334, !2337, !2358, !2359, !2360, !2361, !2366, !2367, !2368}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "bio_slab", scope: !2326, file: !2327, line: 679, baseType: !2330, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2332, line: 325, flags: DIFlagFwdDecl)
!2332 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "front_pad", scope: !2326, file: !2327, line: 680, baseType: !193, size: 32, offset: 64)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !2326, file: !2327, line: 685, baseType: !2335, size: 64, offset: 128)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_alloc_cache", file: !2327, line: 685, flags: DIFlagFwdDecl)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "bio_pool", scope: !2326, file: !2327, line: 687, baseType: !2338, size: 576, offset: 192)
!2338 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_t", file: !2339, line: 26, baseType: !2340)
!2339 = !DIFile(filename: "./include/linux/mempool.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ef8a210e9c9e696cc7d6e9be9316611")
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempool_s", file: !2339, line: 16, size: 576, elements: !2341)
!2341 = !{!2342, !2343, !2344, !2345, !2346, !2347, !2352, !2357}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2340, file: !2339, line: 17, baseType: !80, size: 32)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "min_nr", scope: !2340, file: !2339, line: 18, baseType: !104, size: 32, offset: 32)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "curr_nr", scope: !2340, file: !2339, line: 19, baseType: !104, size: 32, offset: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2340, file: !2339, line: 20, baseType: !1979, size: 64, offset: 128)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "pool_data", scope: !2340, file: !2339, line: 22, baseType: !212, size: 64, offset: 192)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2340, file: !2339, line: 23, baseType: !2348, size: 64, offset: 256)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_alloc_t", file: !2339, line: 13, baseType: !2350)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!212, !1112, !212}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2340, file: !2339, line: 24, baseType: !2353, size: 64, offset: 320)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_free_t", file: !2339, line: 14, baseType: !2355)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{null, !212, !212}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2340, file: !2339, line: 25, baseType: !1560, size: 192, offset: 384)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_pool", scope: !2326, file: !2327, line: 688, baseType: !2338, size: 576, offset: 768)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "back_pad", scope: !2326, file: !2327, line: 694, baseType: !193, size: 32, offset: 1344)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_lock", scope: !2326, file: !2327, line: 699, baseType: !80, size: 32, offset: 1376)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_list", scope: !2326, file: !2327, line: 700, baseType: !2362, size: 128, offset: 1408)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2327, line: 550, size: 128, elements: !2363)
!2363 = !{!2364, !2365}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2362, file: !2327, line: 551, baseType: !1316, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2362, file: !2327, line: 552, baseType: !1316, size: 64, offset: 64)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_work", scope: !2326, file: !2327, line: 701, baseType: !163, size: 256, offset: 1536)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_workqueue", scope: !2326, file: !2327, line: 702, baseType: !195, size: 64, offset: 1792)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !2326, file: !2327, line: 707, baseType: !178, size: 128, offset: 1856)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "bi_inline_vecs", scope: !1317, file: !148, line: 324, baseType: !2370, offset: 960)
!2370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1356, elements: !1575)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "poll_bio", scope: !1310, file: !19, line: 1390, baseType: !2372, size: 64, offset: 64)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!104, !1316, !1890, !193}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1310, file: !19, line: 1392, baseType: !2376, size: 64, offset: 128)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!104, !1289, !2379}
!2379 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_mode_t", file: !19, line: 115, baseType: !193)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1310, file: !19, line: 1393, baseType: !2381, size: 64, offset: 192)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{null, !1289}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !1310, file: !19, line: 1394, baseType: !2385, size: 64, offset: 256)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!104, !1282, !2379, !193, !30}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1310, file: !19, line: 1396, baseType: !2385, size: 64, offset: 320)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "check_events", scope: !1310, file: !19, line: 1398, baseType: !2390, size: 64, offset: 384)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!193, !1289, !193}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_native_capacity", scope: !1310, file: !19, line: 1400, baseType: !2381, size: 64, offset: 448)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "getgeo", scope: !1310, file: !19, line: 1401, baseType: !2395, size: 64, offset: 512)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{!104, !1282, !2398}
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DICompositeType(tag: DW_TAG_structure_type, name: "hd_geometry", file: !390, line: 56, flags: DIFlagFwdDecl)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_only", scope: !1310, file: !19, line: 1402, baseType: !2401, size: 64, offset: 576)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!104, !1282, !56}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "free_disk", scope: !1310, file: !19, line: 1403, baseType: !2381, size: 64, offset: 640)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "swap_slot_free_notify", scope: !1310, file: !19, line: 1405, baseType: !2406, size: 64, offset: 704)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{null, !1282, !30}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "report_zones", scope: !1310, file: !19, line: 1406, baseType: !2410, size: 64, offset: 768)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!104, !1289, !1286, !193, !2413, !212}
!2413 = !DIDerivedType(tag: DW_TAG_typedef, name: "report_zones_cb", file: !19, line: 342, baseType: !2414)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!104, !2417, !193, !212}
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_zone", file: !2419, line: 106, size: 512, elements: !2420)
!2419 = !DIFile(filename: "./include/uapi/linux/blkzoned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3d5e7016ed7b437a9c2a308f55db1257")
!2420 = !{!2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2430, !2431}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2418, file: !2419, line: 107, baseType: !465, size: 64)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2418, file: !2419, line: 108, baseType: !465, size: 64, offset: 64)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !2418, file: !2419, line: 109, baseType: !465, size: 64, offset: 128)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2418, file: !2419, line: 110, baseType: !110, size: 8, offset: 192)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !2418, file: !2419, line: 111, baseType: !110, size: 8, offset: 200)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "non_seq", scope: !2418, file: !2419, line: 112, baseType: !110, size: 8, offset: 208)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !2418, file: !2419, line: 113, baseType: !110, size: 8, offset: 216)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !2418, file: !2419, line: 114, baseType: !2429, size: 32, offset: 224)
!2429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 32, elements: !854)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !2418, file: !2419, line: 115, baseType: !465, size: 64, offset: 256)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2418, file: !2419, line: 116, baseType: !2432, size: 192, offset: 320)
!2432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 192, elements: !2433)
!2433 = !{!2434}
!2434 = !DISubrange(count: 24)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1310, file: !19, line: 1408, baseType: !2436, size: 64, offset: 832)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!315, !1289, !2439}
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "get_unique_id", scope: !1310, file: !19, line: 1410, baseType: !2441, size: 64, offset: 896)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!104, !1289, !2444, !2445}
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!2445 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_unique_id", file: !19, line: 1381, baseType: !193, size: 32, elements: !2446)
!2446 = !{!2447, !2448, !2449}
!2447 = !DIEnumerator(name: "BLK_UID_T10", value: 1)
!2448 = !DIEnumerator(name: "BLK_UID_EUI64", value: 2)
!2449 = !DIEnumerator(name: "BLK_UID_NAA", value: 3)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1310, file: !19, line: 1412, baseType: !579, size: 64, offset: 960)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "pr_ops", scope: !1310, file: !19, line: 1413, baseType: !2452, size: 64, offset: 1024)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2454)
!2454 = !DICompositeType(tag: DW_TAG_structure_type, name: "pr_ops", file: !19, line: 37, flags: DIFlagFwdDecl)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "alternative_gpt_sector", scope: !1310, file: !19, line: 1420, baseType: !2456, size: 64, offset: 1088)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{!104, !1289, !2459}
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !1290, file: !19, line: 146, baseType: !17, size: 64, offset: 640)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1290, file: !19, line: 147, baseType: !212, size: 64, offset: 704)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "bio_split", scope: !1290, file: !19, line: 149, baseType: !2326, size: 1984, offset: 768)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1290, file: !19, line: 151, baseType: !104, size: 32, offset: 2752)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1290, file: !19, line: 152, baseType: !30, size: 64, offset: 2816)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "open_mutex", scope: !1290, file: !19, line: 161, baseType: !126, size: 256, offset: 2880)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "open_partitions", scope: !1290, file: !19, line: 162, baseType: !193, size: 32, offset: 3136)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !1290, file: !19, line: 164, baseType: !2468, size: 64, offset: 3200)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !390, line: 50, flags: DIFlagFwdDecl)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "queue_kobj", scope: !1290, file: !19, line: 165, baseType: !272, size: 512, offset: 3264)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "slave_dir", scope: !1290, file: !19, line: 166, baseType: !280, size: 64, offset: 3776)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "slave_bdevs", scope: !1290, file: !19, line: 168, baseType: !74, size: 128, offset: 3840)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !1290, file: !19, line: 170, baseType: !2474, size: 64, offset: 3968)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DICompositeType(tag: DW_TAG_structure_type, name: "timer_rand_state", file: !19, line: 170, flags: DIFlagFwdDecl)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "sync_io", scope: !1290, file: !19, line: 171, baseType: !100, size: 32, offset: 4032)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "ev", scope: !1290, file: !19, line: 172, baseType: !2478, size: 64, offset: 4096)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_events", file: !19, line: 104, flags: DIFlagFwdDecl)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "cdi", scope: !1290, file: !19, line: 197, baseType: !2481, size: 64, offset: 4160)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdrom_device_info", file: !19, line: 197, flags: DIFlagFwdDecl)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1290, file: !19, line: 199, baseType: !104, size: 32, offset: 4224)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !1290, file: !19, line: 200, baseType: !2485, size: 64, offset: 4288)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DICompositeType(tag: DW_TAG_structure_type, name: "badblocks", file: !19, line: 105, flags: DIFlagFwdDecl)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "lockdep_map", scope: !1290, file: !19, line: 201, baseType: !883, offset: 4352)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "diskseq", scope: !1290, file: !19, line: 202, baseType: !464, size: 64, offset: 4352)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "open_mode", scope: !1290, file: !19, line: 203, baseType: !2379, size: 32, offset: 4416)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ranges", scope: !1290, file: !19, line: 209, baseType: !2491, size: 64, offset: 4480)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_ranges", file: !19, line: 384, size: 576, elements: !2493)
!2493 = !{!2494, !2495, !2496, !2497}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2492, file: !19, line: 385, baseType: !272, size: 512)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_registered", scope: !2492, file: !19, line: 386, baseType: !56, size: 8, offset: 512)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ia_ranges", scope: !2492, file: !19, line: 387, baseType: !193, size: 32, offset: 544)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "ia_range", scope: !2492, file: !19, line: 388, baseType: !2498, offset: 576)
!2498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2499, elements: !1575)
!2499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_range", file: !19, line: 378, size: 640, elements: !2500)
!2500 = !{!2501, !2502, !2503}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2499, file: !19, line: 379, baseType: !272, size: 512)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "sector", scope: !2499, file: !19, line: 380, baseType: !1286, size: 64, offset: 512)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sectors", scope: !2499, file: !19, line: 381, baseType: !1286, size: 64, offset: 576)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !1283, file: !148, line: 44, baseType: !17, size: 64, offset: 192)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !1283, file: !148, line: 45, baseType: !2506, size: 64, offset: 256)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !148, line: 45, flags: DIFlagFwdDecl)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !1283, file: !148, line: 46, baseType: !30, size: 64, offset: 320)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !1283, file: !148, line: 47, baseType: !56, size: 8, offset: 384)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !1283, file: !148, line: 48, baseType: !109, size: 8, offset: 392)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !1283, file: !148, line: 49, baseType: !56, size: 8, offset: 400)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !1283, file: !148, line: 50, baseType: !56, size: 8, offset: 408)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !1283, file: !148, line: 51, baseType: !547, size: 32, offset: 416)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !1283, file: !148, line: 52, baseType: !100, size: 32, offset: 448)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !1283, file: !148, line: 53, baseType: !80, size: 32, offset: 480)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !1283, file: !148, line: 54, baseType: !393, size: 64, offset: 512)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !1283, file: !148, line: 55, baseType: !212, size: 64, offset: 576)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !1283, file: !148, line: 56, baseType: !212, size: 64, offset: 640)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !1283, file: !148, line: 57, baseType: !2520, size: 64, offset: 704)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2522)
!2522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !19, line: 1477, size: 128, elements: !2523)
!2523 = !{!2524, !2528}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dead", scope: !2522, file: !19, line: 1478, baseType: !2525, size: 64)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{null, !1282, !56}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2522, file: !19, line: 1483, baseType: !2529, size: 64, offset: 64)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{null, !1282}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !1283, file: !148, line: 58, baseType: !126, size: 256, offset: 768)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !1283, file: !148, line: 60, baseType: !104, size: 32, offset: 1024)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !1283, file: !148, line: 61, baseType: !104, size: 32, offset: 1056)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !1283, file: !148, line: 62, baseType: !280, size: 64, offset: 1088)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !1283, file: !148, line: 65, baseType: !126, size: 256, offset: 1152)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !1283, file: !148, line: 66, baseType: !542, size: 64, offset: 1408)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !1283, file: !148, line: 68, baseType: !2539, size: 64, offset: 1472)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !19, line: 63, size: 808, elements: !2541)
!2541 = !{!2542, !2546}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !2540, file: !19, line: 64, baseType: !2543, size: 296)
!2543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !2544)
!2544 = !{!2545}
!2545 = !DISubrange(count: 37)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "volname", scope: !2540, file: !19, line: 65, baseType: !2547, size: 512, offset: 296)
!2547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 512, elements: !318)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !1283, file: !148, line: 72, baseType: !56, size: 8, offset: 1536)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !1283, file: !148, line: 77, baseType: !2550, size: 5824, offset: 1600)
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !2551, line: 705, size: 5824, elements: !2552)
!2551 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!2552 = !{!2553, !2554, !2556, !2559, !2560, !2615, !2691, !2692, !2693, !2694, !2695, !2708, !2894, !2907, !2917, !2921, !2923, !2924, !2925, !2929, !2936, !2937, !2940, !2943, !2947, !3051, !3052, !3053, !3054, !3055, !3056, !3116, !3117, !3118, !3121, !3124, !3152, !3159, !3160, !3161, !3162, !3163}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2550, file: !2551, line: 706, baseType: !272, size: 512)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2550, file: !2551, line: 707, baseType: !2555, size: 64, offset: 512)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2550, file: !2551, line: 709, baseType: !2557, size: 64, offset: 576)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !2551, line: 37, flags: DIFlagFwdDecl)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2550, file: !2551, line: 711, baseType: !276, size: 64, offset: 640)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2550, file: !2551, line: 712, baseType: !2561, size: 64, offset: 704)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2563)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !2551, line: 89, size: 384, elements: !2564)
!2564 = !{!2565, !2566, !2567, !2573, !2579, !2583}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2563, file: !2551, line: 90, baseType: !276, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2563, file: !2551, line: 91, baseType: !364, size: 64, offset: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2563, file: !2551, line: 92, baseType: !2568, size: 64, offset: 128)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{!104, !2571, !310}
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2550)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2563, file: !2551, line: 93, baseType: !2574, size: 64, offset: 192)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!315, !2571, !2439, !2577, !2578}
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2563, file: !2551, line: 95, baseType: !2580, size: 64, offset: 256)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{null, !2555}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2563, file: !2551, line: 97, baseType: !2584, size: 64, offset: 320)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2586)
!2586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !2587, line: 286, size: 1472, elements: !2588)
!2587 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!2588 = !{!2589, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2586, file: !2587, line: 287, baseType: !2590, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DISubroutineType(types: !2592)
!2592 = !{!104, !2555}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2586, file: !2587, line: 288, baseType: !2580, size: 64, offset: 64)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2586, file: !2587, line: 289, baseType: !2590, size: 64, offset: 128)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2586, file: !2587, line: 290, baseType: !2590, size: 64, offset: 192)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2586, file: !2587, line: 291, baseType: !2590, size: 64, offset: 256)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2586, file: !2587, line: 292, baseType: !2590, size: 64, offset: 320)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2586, file: !2587, line: 293, baseType: !2590, size: 64, offset: 384)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2586, file: !2587, line: 294, baseType: !2590, size: 64, offset: 448)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2586, file: !2587, line: 295, baseType: !2590, size: 64, offset: 512)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2586, file: !2587, line: 296, baseType: !2590, size: 64, offset: 576)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2586, file: !2587, line: 297, baseType: !2590, size: 64, offset: 640)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2586, file: !2587, line: 298, baseType: !2590, size: 64, offset: 704)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2586, file: !2587, line: 299, baseType: !2590, size: 64, offset: 768)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2586, file: !2587, line: 300, baseType: !2590, size: 64, offset: 832)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2586, file: !2587, line: 301, baseType: !2590, size: 64, offset: 896)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2586, file: !2587, line: 302, baseType: !2590, size: 64, offset: 960)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2586, file: !2587, line: 303, baseType: !2590, size: 64, offset: 1024)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2586, file: !2587, line: 304, baseType: !2590, size: 64, offset: 1088)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2586, file: !2587, line: 305, baseType: !2590, size: 64, offset: 1152)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2586, file: !2587, line: 306, baseType: !2590, size: 64, offset: 1216)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2586, file: !2587, line: 307, baseType: !2590, size: 64, offset: 1280)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2586, file: !2587, line: 308, baseType: !2590, size: 64, offset: 1344)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2586, file: !2587, line: 309, baseType: !2590, size: 64, offset: 1408)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2550, file: !2551, line: 714, baseType: !2616, size: 64, offset: 768)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2618)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2619, line: 80, size: 1344, elements: !2620)
!2619 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2620 = !{!2621, !2622, !2623, !2624, !2625, !2626, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2690}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2618, file: !2619, line: 81, baseType: !276, size: 64)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2618, file: !2619, line: 82, baseType: !276, size: 64, offset: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2618, file: !2619, line: 83, baseType: !364, size: 64, offset: 128)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2618, file: !2619, line: 84, baseType: !364, size: 64, offset: 192)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2618, file: !2619, line: 85, baseType: !364, size: 64, offset: 256)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2618, file: !2619, line: 87, baseType: !2627, size: 64, offset: 320)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{!104, !2555, !2630}
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !2632, line: 96, size: 1152, elements: !2633)
!2632 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!2633 = !{!2634, !2635, !2636, !2637, !2638, !2639, !2645, !2649, !2653, !2654, !2655, !2656, !2657, !2665, !2666, !2667, !2668, !2669, !2670}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2631, file: !2632, line: 97, baseType: !276, size: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2631, file: !2632, line: 98, baseType: !2616, size: 64, offset: 64)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2631, file: !2632, line: 100, baseType: !579, size: 64, offset: 128)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2631, file: !2632, line: 101, baseType: !276, size: 64, offset: 192)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2631, file: !2632, line: 103, baseType: !56, size: 8, offset: 256)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2631, file: !2632, line: 104, baseType: !2640, size: 32, offset: 288)
!2640 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !2632, line: 45, baseType: !193, size: 32, elements: !2641)
!2641 = !{!2642, !2643, !2644}
!2642 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!2643 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!2644 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2631, file: !2632, line: 106, baseType: !2646, size: 64, offset: 320)
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2648)
!2648 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !2632, line: 106, flags: DIFlagFwdDecl)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2631, file: !2632, line: 107, baseType: !2650, size: 64, offset: 384)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2652)
!2652 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !2632, line: 107, flags: DIFlagFwdDecl)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2631, file: !2632, line: 109, baseType: !2590, size: 64, offset: 448)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2631, file: !2632, line: 110, baseType: !2580, size: 64, offset: 512)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2631, file: !2632, line: 111, baseType: !2590, size: 64, offset: 576)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2631, file: !2632, line: 112, baseType: !2580, size: 64, offset: 640)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2631, file: !2632, line: 113, baseType: !2658, size: 64, offset: 704)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DISubroutineType(types: !2660)
!2660 = !{!104, !2555, !2661}
!2661 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !2587, line: 60, baseType: !2662)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !2587, line: 58, size: 32, elements: !2663)
!2663 = !{!2664}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2662, file: !2587, line: 59, baseType: !104, size: 32)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2631, file: !2632, line: 114, baseType: !2590, size: 64, offset: 768)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2631, file: !2632, line: 115, baseType: !364, size: 64, offset: 832)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2631, file: !2632, line: 116, baseType: !364, size: 64, offset: 896)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2631, file: !2632, line: 118, baseType: !2584, size: 64, offset: 960)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2631, file: !2632, line: 119, baseType: !2580, size: 64, offset: 1024)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2631, file: !2632, line: 121, baseType: !2671, size: 64, offset: 1088)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !2632, line: 121, flags: DIFlagFwdDecl)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2618, file: !2619, line: 88, baseType: !2568, size: 64, offset: 384)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2618, file: !2619, line: 89, baseType: !2590, size: 64, offset: 448)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2618, file: !2619, line: 90, baseType: !2580, size: 64, offset: 512)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2618, file: !2619, line: 91, baseType: !2580, size: 64, offset: 576)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2618, file: !2619, line: 92, baseType: !2580, size: 64, offset: 640)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2618, file: !2619, line: 94, baseType: !2590, size: 64, offset: 704)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2618, file: !2619, line: 95, baseType: !2590, size: 64, offset: 768)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2618, file: !2619, line: 97, baseType: !2658, size: 64, offset: 832)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2618, file: !2619, line: 98, baseType: !2590, size: 64, offset: 896)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2618, file: !2619, line: 100, baseType: !2590, size: 64, offset: 960)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2618, file: !2619, line: 102, baseType: !2590, size: 64, offset: 1024)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2618, file: !2619, line: 103, baseType: !2580, size: 64, offset: 1088)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2618, file: !2619, line: 105, baseType: !2584, size: 64, offset: 1152)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2618, file: !2619, line: 107, baseType: !2687, size: 64, offset: 1216)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2689)
!2689 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2619, line: 107, flags: DIFlagFwdDecl)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2618, file: !2619, line: 109, baseType: !56, size: 8, offset: 1280)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2550, file: !2551, line: 715, baseType: !2630, size: 64, offset: 832)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2550, file: !2551, line: 717, baseType: !212, size: 64, offset: 896)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2550, file: !2551, line: 719, baseType: !212, size: 64, offset: 960)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2550, file: !2551, line: 721, baseType: !126, size: 256, offset: 1024)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2550, file: !2551, line: 725, baseType: !2696, size: 448, offset: 1280)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !2551, line: 517, size: 448, elements: !2697)
!2697 = !{!2698, !2699, !2700, !2701}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2696, file: !2551, line: 518, baseType: !74, size: 128)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2696, file: !2551, line: 519, baseType: !74, size: 128, offset: 128)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2696, file: !2551, line: 520, baseType: !74, size: 128, offset: 256)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2696, file: !2551, line: 521, baseType: !2702, size: 32, offset: 384)
!2702 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !2551, line: 487, baseType: !193, size: 32, elements: !2703)
!2703 = !{!2704, !2705, !2706, !2707}
!2704 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!2705 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!2706 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!2707 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2550, file: !2551, line: 726, baseType: !2709, size: 2496, offset: 1728)
!2709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !2587, line: 663, size: 2496, elements: !2710)
!2710 = !{!2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2755, !2756, !2757, !2758, !2759, !2760, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2866, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2887, !2891}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2709, file: !2587, line: 664, baseType: !2661, size: 32)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2709, file: !2587, line: 665, baseType: !193, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2709, file: !2587, line: 666, baseType: !193, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2709, file: !2587, line: 667, baseType: !56, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2709, file: !2587, line: 668, baseType: !56, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2709, file: !2587, line: 669, baseType: !56, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2709, file: !2587, line: 670, baseType: !56, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2709, file: !2587, line: 671, baseType: !56, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2709, file: !2587, line: 672, baseType: !56, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2709, file: !2587, line: 673, baseType: !56, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2709, file: !2587, line: 674, baseType: !56, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2709, file: !2587, line: 675, baseType: !191, size: 32, offset: 64)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2709, file: !2587, line: 676, baseType: !80, size: 32, offset: 96)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2709, file: !2587, line: 678, baseType: !74, size: 128, offset: 128)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2709, file: !2587, line: 679, baseType: !606, size: 256, offset: 256)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2709, file: !2587, line: 680, baseType: !2727, size: 64, offset: 512)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2729, line: 43, size: 1536, elements: !2730)
!2729 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2730 = !{!2731, !2732, !2733, !2734, !2735, !2738, !2739, !2740, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2728, file: !2729, line: 44, baseType: !276, size: 64)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2728, file: !2729, line: 45, baseType: !104, size: 32, offset: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2728, file: !2729, line: 46, baseType: !74, size: 128, offset: 128)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2728, file: !2729, line: 47, baseType: !80, size: 32, offset: 256)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2728, file: !2729, line: 48, baseType: !2736, size: 64, offset: 320)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !2587, line: 629, flags: DIFlagFwdDecl)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2728, file: !2729, line: 49, baseType: !174, size: 320, offset: 384)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2728, file: !2729, line: 50, baseType: !30, size: 64, offset: 704)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2728, file: !2729, line: 51, baseType: !2741, size: 64, offset: 768)
!2741 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2742, line: 29, baseType: !43)
!2742 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2728, file: !2729, line: 52, baseType: !2741, size: 64, offset: 832)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2728, file: !2729, line: 53, baseType: !2741, size: 64, offset: 896)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2728, file: !2729, line: 54, baseType: !2741, size: 64, offset: 960)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2728, file: !2729, line: 55, baseType: !2741, size: 64, offset: 1024)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2728, file: !2729, line: 56, baseType: !30, size: 64, offset: 1088)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2728, file: !2729, line: 57, baseType: !30, size: 64, offset: 1152)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2728, file: !2729, line: 58, baseType: !30, size: 64, offset: 1216)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2728, file: !2729, line: 59, baseType: !30, size: 64, offset: 1280)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2728, file: !2729, line: 60, baseType: !30, size: 64, offset: 1344)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2728, file: !2729, line: 61, baseType: !2555, size: 64, offset: 1408)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2728, file: !2729, line: 62, baseType: !56, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2728, file: !2729, line: 63, baseType: !56, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2709, file: !2587, line: 681, baseType: !56, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2709, file: !2587, line: 682, baseType: !56, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2709, file: !2587, line: 683, baseType: !56, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2709, file: !2587, line: 684, baseType: !193, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2709, file: !2587, line: 685, baseType: !193, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2709, file: !2587, line: 690, baseType: !2761, size: 512, offset: 640)
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !2762, line: 118, size: 512, elements: !2763)
!2762 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!2763 = !{!2764, !2770, !2771, !2780, !2835, !2836, !2837, !2838}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2761, file: !2762, line: 119, baseType: !2765, size: 256)
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2766, line: 9, size: 256, elements: !2767)
!2766 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2767 = !{!2768, !2769}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2765, file: !2766, line: 10, baseType: !746, size: 192, align: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2765, file: !2766, line: 11, baseType: !2741, size: 64, offset: 192)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2761, file: !2762, line: 120, baseType: !2741, size: 64, offset: 256)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2761, file: !2762, line: 121, baseType: !2772, size: 64, offset: 320)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{!2775, !2779}
!2775 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !2762, line: 65, baseType: !193, size: 32, elements: !2776)
!2776 = !{!2777, !2778}
!2777 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!2778 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2761, file: !2762, line: 122, baseType: !2781, size: 64, offset: 384)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !2762, line: 159, size: 512, align: 512, elements: !2783)
!2783 = !{!2784, !2809, !2810, !2813, !2818, !2819, !2830, !2834}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2782, file: !2762, line: 160, baseType: !2785, size: 64)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !2762, line: 215, size: 4608, align: 512, elements: !2787)
!2787 = !{!2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2786, file: !2762, line: 216, baseType: !131, size: 32)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2786, file: !2762, line: 217, baseType: !193, size: 32, offset: 32)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2786, file: !2762, line: 218, baseType: !193, size: 32, offset: 64)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2786, file: !2762, line: 219, baseType: !193, size: 32, offset: 96)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2786, file: !2762, line: 220, baseType: !193, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2786, file: !2762, line: 221, baseType: !193, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2786, file: !2762, line: 222, baseType: !193, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2786, file: !2762, line: 223, baseType: !193, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2786, file: !2762, line: 224, baseType: !193, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2786, file: !2762, line: 226, baseType: !193, size: 32, offset: 160)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2786, file: !2762, line: 227, baseType: !119, size: 16, offset: 192)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2786, file: !2762, line: 228, baseType: !119, size: 16, offset: 208)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2786, file: !2762, line: 229, baseType: !193, size: 32, offset: 224)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2786, file: !2762, line: 235, baseType: !2741, size: 64, offset: 256)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2786, file: !2762, line: 236, baseType: !2779, size: 64, offset: 320)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2786, file: !2762, line: 237, baseType: !2741, size: 64, offset: 384)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2786, file: !2762, line: 238, baseType: !2779, size: 64, offset: 448)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2786, file: !2762, line: 239, baseType: !2806, size: 4096, align: 512, offset: 512)
!2806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2782, size: 4096, align: 512, elements: !2807)
!2807 = !{!2808}
!2808 = !DISubrange(count: 8)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2782, file: !2762, line: 161, baseType: !193, size: 32, offset: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2782, file: !2762, line: 162, baseType: !2811, size: 32, offset: 96)
!2811 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !39, line: 32, baseType: !2812)
!2812 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !347, line: 96, baseType: !104)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2782, file: !2762, line: 163, baseType: !2814, size: 32, offset: 128)
!2814 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !435, line: 274, baseType: !2815)
!2815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !435, line: 274, size: 32, elements: !2816)
!2816 = !{!2817}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2815, file: !435, line: 274, baseType: !439, size: 32)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2782, file: !2762, line: 164, baseType: !2779, size: 64, offset: 192)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2782, file: !2762, line: 165, baseType: !2820, size: 128, offset: 256)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2766, line: 14, size: 128, elements: !2821)
!2821 = !{!2822}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2820, file: !2766, line: 15, baseType: !2823, size: 128)
!2823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !747, line: 26, size: 128, elements: !2824)
!2824 = !{!2825, !2829}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2823, file: !747, line: 27, baseType: !2826, size: 64)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !747, line: 12, size: 64, elements: !2827)
!2827 = !{!2828}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2826, file: !747, line: 13, baseType: !751, size: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2823, file: !747, line: 28, baseType: !751, size: 64, offset: 64)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2782, file: !2762, line: 166, baseType: !2831, size: 64, offset: 384)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DISubroutineType(types: !2833)
!2833 = !{!2741}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2782, file: !2762, line: 167, baseType: !2741, size: 64, offset: 448)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2761, file: !2762, line: 123, baseType: !109, size: 8, offset: 448)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2761, file: !2762, line: 124, baseType: !109, size: 8, offset: 456)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2761, file: !2762, line: 125, baseType: !109, size: 8, offset: 464)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2761, file: !2762, line: 126, baseType: !109, size: 8, offset: 472)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2709, file: !2587, line: 691, baseType: !464, size: 64, offset: 1152)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2709, file: !2587, line: 692, baseType: !163, size: 256, offset: 1216)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2709, file: !2587, line: 693, baseType: !1560, size: 192, offset: 1472)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2709, file: !2587, line: 694, baseType: !2736, size: 64, offset: 1664)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2709, file: !2587, line: 695, baseType: !100, size: 32, offset: 1728)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2709, file: !2587, line: 696, baseType: !100, size: 32, offset: 1760)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2709, file: !2587, line: 697, baseType: !193, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2709, file: !2587, line: 698, baseType: !193, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2709, file: !2587, line: 699, baseType: !193, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2709, file: !2587, line: 700, baseType: !193, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2709, file: !2587, line: 701, baseType: !193, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2709, file: !2587, line: 702, baseType: !193, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2709, file: !2587, line: 703, baseType: !56, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2709, file: !2587, line: 704, baseType: !193, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2709, file: !2587, line: 705, baseType: !193, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2709, file: !2587, line: 706, baseType: !193, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2709, file: !2587, line: 707, baseType: !193, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2709, file: !2587, line: 708, baseType: !193, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2709, file: !2587, line: 709, baseType: !193, size: 32, offset: 1824)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2709, file: !2587, line: 710, baseType: !2859, size: 32, offset: 1856)
!2859 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !2587, line: 620, baseType: !193, size: 32, elements: !2860)
!2860 = !{!2861, !2862, !2863, !2864, !2865}
!2861 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!2862 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!2863 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!2864 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!2865 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2709, file: !2587, line: 711, baseType: !2867, size: 32, offset: 1888)
!2867 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !2587, line: 597, baseType: !104, size: 32, elements: !2868)
!2868 = !{!2869, !2870, !2871, !2872, !2873}
!2869 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!2870 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!2871 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!2872 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!2873 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2709, file: !2587, line: 712, baseType: !2867, size: 32, offset: 1920)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2709, file: !2587, line: 713, baseType: !104, size: 32, offset: 1952)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2709, file: !2587, line: 714, baseType: !104, size: 32, offset: 1984)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2709, file: !2587, line: 715, baseType: !464, size: 64, offset: 2048)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2709, file: !2587, line: 716, baseType: !464, size: 64, offset: 2112)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2709, file: !2587, line: 717, baseType: !464, size: 64, offset: 2176)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2709, file: !2587, line: 718, baseType: !464, size: 64, offset: 2240)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2709, file: !2587, line: 720, baseType: !2882, size: 64, offset: 2304)
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !2587, line: 632, size: 64, elements: !2884)
!2884 = !{!2885, !2886}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2883, file: !2587, line: 633, baseType: !80, size: 32)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2883, file: !2587, line: 634, baseType: !193, size: 32, offset: 32)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2709, file: !2587, line: 721, baseType: !2888, size: 64, offset: 2368)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{null, !2555, !652}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2709, file: !2587, line: 722, baseType: !2892, size: 64, offset: 2432)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !2587, line: 722, flags: DIFlagFwdDecl)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2550, file: !2551, line: 727, baseType: !2895, size: 64, offset: 4224)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !2587, line: 742, size: 1792, elements: !2897)
!2897 = !{!2898, !2899, !2900, !2904, !2905, !2906}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2896, file: !2587, line: 743, baseType: !2586, size: 1472)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2896, file: !2587, line: 744, baseType: !2590, size: 64, offset: 1472)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2896, file: !2587, line: 745, baseType: !2901, size: 64, offset: 1536)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{null, !2555, !56}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2896, file: !2587, line: 746, baseType: !2590, size: 64, offset: 1600)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2896, file: !2587, line: 747, baseType: !2580, size: 64, offset: 1664)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2896, file: !2587, line: 748, baseType: !2580, size: 64, offset: 1728)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2550, file: !2551, line: 736, baseType: !2908, size: 128, offset: 4288)
!2908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !2551, line: 529, size: 128, elements: !2909)
!2909 = !{!2910, !2914}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2908, file: !2551, line: 531, baseType: !2911, size: 64)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !2913, line: 13, flags: DIFlagFwdDecl)
!2913 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2908, file: !2551, line: 532, baseType: !2915, size: 64, offset: 64)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !2551, line: 49, flags: DIFlagFwdDecl)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2550, file: !2551, line: 738, baseType: !2918, size: 64, offset: 4416)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2920)
!2920 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !2551, line: 738, flags: DIFlagFwdDecl)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2550, file: !2551, line: 740, baseType: !2922, size: 64, offset: 4480)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2550, file: !2551, line: 741, baseType: !464, size: 64, offset: 4544)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2550, file: !2551, line: 746, baseType: !464, size: 64, offset: 4608)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2550, file: !2551, line: 747, baseType: !2926, size: 64, offset: 4672)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2928)
!2928 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !2551, line: 747, flags: DIFlagFwdDecl)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2550, file: !2551, line: 749, baseType: !2930, size: 64, offset: 4736)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !2551, line: 428, size: 128, elements: !2932)
!2932 = !{!2933, !2934, !2935}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2931, file: !2551, line: 433, baseType: !193, size: 32)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !2931, file: !2551, line: 434, baseType: !193, size: 32, offset: 32)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2931, file: !2551, line: 435, baseType: !30, size: 64, offset: 64)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2550, file: !2551, line: 751, baseType: !74, size: 128, offset: 4800)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2550, file: !2551, line: 762, baseType: !2938, size: 64, offset: 4928)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !2551, line: 762, flags: DIFlagFwdDecl)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2550, file: !2551, line: 770, baseType: !2941, offset: 4992)
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2942, line: 5, elements: !885)
!2942 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2550, file: !2551, line: 772, baseType: !2944, size: 64, offset: 4992)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2946, line: 18, flags: DIFlagFwdDecl)
!2946 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2550, file: !2551, line: 773, baseType: !2948, size: 64, offset: 5056)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2950, line: 41, size: 512, elements: !2951)
!2950 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!2951 = !{!2952, !2953, !3047, !3048, !3049, !3050}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2949, file: !2950, line: 42, baseType: !2948, size: 64)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2949, file: !2950, line: 43, baseType: !2954, size: 64, offset: 64)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2956)
!2956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2950, line: 125, size: 1408, elements: !2957)
!2957 = !{!2958, !2962, !2966, !2972, !2976, !2977, !2982, !2986, !2990, !2994, !2998, !2999, !3003, !3007, !3011, !3022, !3023, !3024, !3025, !3035, !3039, !3043}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2956, file: !2950, line: 126, baseType: !2959, size: 64)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{!2948, !2948}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2956, file: !2950, line: 127, baseType: !2963, size: 64, offset: 64)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{null, !2948}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2956, file: !2950, line: 128, baseType: !2967, size: 64, offset: 128)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!56, !2970}
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2949)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2956, file: !2950, line: 129, baseType: !2973, size: 64, offset: 192)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!2105, !2970, !2571}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !2956, file: !2950, line: 131, baseType: !2967, size: 64, offset: 256)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !2956, file: !2950, line: 133, baseType: !2978, size: 64, offset: 320)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{!2981, !2970}
!2981 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !2950, line: 132, flags: DIFlagFwdDecl)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2956, file: !2950, line: 134, baseType: !2983, size: 64, offset: 384)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{!56, !2970, !276}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2956, file: !2950, line: 136, baseType: !2987, size: 64, offset: 448)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DISubroutineType(types: !2989)
!2989 = !{!104, !2970, !276, !193, !212, !360}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2956, file: !2950, line: 141, baseType: !2991, size: 64, offset: 512)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{!104, !2970, !276, !925, !360}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2956, file: !2950, line: 144, baseType: !2995, size: 64, offset: 576)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{!276, !2970}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2956, file: !2950, line: 145, baseType: !2995, size: 64, offset: 640)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2956, file: !2950, line: 146, baseType: !3000, size: 64, offset: 704)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!2948, !2970}
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2956, file: !2950, line: 148, baseType: !3004, size: 64, offset: 768)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!2948, !2970, !2948}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2956, file: !2950, line: 151, baseType: !3008, size: 64, offset: 832)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{!2948, !2970, !276}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2956, file: !2950, line: 153, baseType: !3012, size: 64, offset: 896)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!104, !2970, !276, !276, !193, !193, !3015}
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2950, line: 94, size: 640, elements: !3017)
!3017 = !{!3018, !3019, !3020}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3016, file: !2950, line: 95, baseType: !2948, size: 64)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3016, file: !2950, line: 96, baseType: !193, size: 32, offset: 64)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3016, file: !2950, line: 97, baseType: !3021, size: 512, offset: 128)
!3021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 512, elements: !2807)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2956, file: !2950, line: 158, baseType: !3004, size: 64, offset: 960)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2956, file: !2950, line: 161, baseType: !3000, size: 64, offset: 1024)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2956, file: !2950, line: 163, baseType: !2959, size: 64, offset: 1088)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2956, file: !2950, line: 164, baseType: !3026, size: 64, offset: 1152)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{!104, !2970, !3029}
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2950, line: 73, size: 128, elements: !3031)
!3031 = !{!3032, !3033, !3034}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3030, file: !2950, line: 74, baseType: !193, size: 32)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3030, file: !2950, line: 75, baseType: !193, size: 32, offset: 32)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3030, file: !2950, line: 76, baseType: !2970, size: 64, offset: 64)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !2956, file: !2950, line: 166, baseType: !3036, size: 64, offset: 1216)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!212, !2948, !104}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !2956, file: !2950, line: 167, baseType: !3040, size: 64, offset: 1280)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{!104, !2970, !193}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2956, file: !2950, line: 168, baseType: !3044, size: 64, offset: 1344)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!104, !2948}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2949, file: !2950, line: 44, baseType: !2555, size: 64, offset: 128)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2949, file: !2950, line: 45, baseType: !74, size: 128, offset: 192)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2949, file: !2950, line: 46, baseType: !74, size: 128, offset: 320)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2949, file: !2950, line: 47, baseType: !109, size: 8, offset: 448)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2550, file: !2551, line: 776, baseType: !104, size: 32, offset: 5120)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2550, file: !2551, line: 778, baseType: !547, size: 32, offset: 5152)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2550, file: !2551, line: 779, baseType: !191, size: 32, offset: 5184)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2550, file: !2551, line: 781, baseType: !80, size: 32, offset: 5216)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2550, file: !2551, line: 782, baseType: !74, size: 128, offset: 5248)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2550, file: !2551, line: 784, baseType: !3057, size: 64, offset: 5376)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3059)
!3059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3060, line: 52, size: 768, elements: !3061)
!3060 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3061 = !{!3062, !3063, !3064, !3065, !3066, !3070, !3074, !3075, !3076, !3107, !3111, !3115}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3059, file: !3060, line: 53, baseType: !276, size: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3059, file: !3060, line: 55, baseType: !364, size: 64, offset: 64)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3059, file: !3060, line: 56, baseType: !364, size: 64, offset: 128)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3059, file: !3060, line: 58, baseType: !2568, size: 64, offset: 192)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3059, file: !3060, line: 59, baseType: !3067, size: 64, offset: 256)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!315, !2571, !2439}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3059, file: !3060, line: 61, baseType: !3071, size: 64, offset: 320)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{null, !3057}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3059, file: !3060, line: 62, baseType: !2580, size: 64, offset: 384)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3059, file: !3060, line: 64, baseType: !2590, size: 64, offset: 448)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3059, file: !3060, line: 66, baseType: !3077, size: 64, offset: 512)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3079)
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !3080, line: 39, size: 384, elements: !3081)
!3080 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!3081 = !{!3082, !3088, !3092, !3096, !3102, !3106}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3079, file: !3080, line: 40, baseType: !3083, size: 32)
!3083 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !3080, line: 26, baseType: !193, size: 32, elements: !3084)
!3084 = !{!3085, !3086, !3087}
!3085 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!3086 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!3087 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3079, file: !3080, line: 41, baseType: !3089, size: 64, offset: 64)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!56}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3079, file: !3080, line: 42, baseType: !3093, size: 64, offset: 128)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!212}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3079, file: !3080, line: 43, baseType: !3097, size: 64, offset: 192)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!2105, !3100}
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !3080, line: 19, flags: DIFlagFwdDecl)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3079, file: !3080, line: 44, baseType: !3103, size: 64, offset: 256)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{!2105}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3079, file: !3080, line: 45, baseType: !680, size: 64, offset: 320)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3059, file: !3060, line: 67, baseType: !3108, size: 64, offset: 576)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{!2105, !2571}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3059, file: !3060, line: 69, baseType: !3112, size: 64, offset: 640)
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = !DISubroutineType(types: !3114)
!3114 = !{null, !2571, !2577, !2578}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3059, file: !3060, line: 71, baseType: !2584, size: 64, offset: 704)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2550, file: !2551, line: 785, baseType: !364, size: 64, offset: 5440)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2550, file: !2551, line: 787, baseType: !2580, size: 64, offset: 5504)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2550, file: !2551, line: 788, baseType: !3119, size: 64, offset: 5568)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !2551, line: 46, flags: DIFlagFwdDecl)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2550, file: !2551, line: 789, baseType: !3122, size: 64, offset: 5632)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !2551, line: 48, flags: DIFlagFwdDecl)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2550, file: !2551, line: 791, baseType: !3125, size: 64, offset: 5696)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !2551, line: 597, size: 128, elements: !3127)
!3127 = !{!3128, !3138, !3144, !3150, !3151}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3126, file: !2551, line: 598, baseType: !3129, size: 32)
!3129 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !2551, line: 547, baseType: !193, size: 32, elements: !3130)
!3130 = !{!3131, !3132, !3133, !3134, !3135, !3136, !3137}
!3131 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!3132 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!3133 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!3134 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!3135 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!3136 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!3137 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3126, file: !2551, line: 599, baseType: !3139, size: 32, offset: 32)
!3139 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !2551, line: 564, baseType: !193, size: 32, elements: !3140)
!3140 = !{!3141, !3142, !3143}
!3141 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!3142 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!3143 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3126, file: !2551, line: 600, baseType: !3145, size: 32, offset: 64)
!3145 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !2551, line: 577, baseType: !193, size: 32, elements: !3146)
!3146 = !{!3147, !3148, !3149}
!3147 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!3148 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!3149 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3126, file: !2551, line: 601, baseType: !56, size: 8, offset: 96)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3126, file: !2551, line: 602, baseType: !56, size: 8, offset: 104)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2550, file: !2551, line: 793, baseType: !3153, size: 32, offset: 5760)
!3153 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !2551, line: 503, baseType: !193, size: 32, elements: !3154)
!3154 = !{!3155, !3156, !3157, !3158}
!3155 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!3156 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!3157 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!3158 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2550, file: !2551, line: 795, baseType: !56, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2550, file: !2551, line: 796, baseType: !56, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2550, file: !2551, line: 797, baseType: !56, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2550, file: !2551, line: 798, baseType: !56, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2550, file: !2551, line: 799, baseType: !56, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !543, file: !390, line: 1226, baseType: !3165, size: 64, offset: 1664)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !19, line: 1495, size: 128, elements: !3167)
!3167 = !{!3168, !3169}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !3166, file: !19, line: 1496, baseType: !1282, size: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "holder", scope: !3166, file: !19, line: 1497, baseType: !212, size: 64, offset: 64)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !543, file: !390, line: 1227, baseType: !2468, size: 64, offset: 1728)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !543, file: !390, line: 1228, baseType: !3172, size: 64, offset: 1792)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !390, line: 1228, flags: DIFlagFwdDecl)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !543, file: !390, line: 1229, baseType: !178, size: 128, offset: 1856)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !543, file: !390, line: 1230, baseType: !193, size: 32, offset: 1984)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !543, file: !390, line: 1231, baseType: !3177, size: 2496, offset: 2048)
!3177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !1055, line: 521, size: 2496, elements: !3178)
!3178 = !{!3179, !3180, !3181, !3183, !3215}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3177, file: !1055, line: 522, baseType: !193, size: 32)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3177, file: !1055, line: 523, baseType: !1260, size: 320, offset: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3177, file: !1055, line: 524, baseType: !3182, size: 192, offset: 384)
!3182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 192, elements: !259)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3177, file: !1055, line: 525, baseType: !3184, size: 1728, offset: 576)
!3184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3185, size: 1728, elements: !259)
!3185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !1055, line: 222, size: 576, elements: !3186)
!3186 = !{!3187, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3185, file: !1055, line: 223, baseType: !3188, size: 64)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !1055, line: 445, size: 256, elements: !3190)
!3190 = !{!3191, !3192, !3205, !3206}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3189, file: !1055, line: 446, baseType: !104, size: 32)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3189, file: !1055, line: 447, baseType: !3193, size: 64, offset: 64)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3195)
!3195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !1055, line: 312, size: 512, elements: !3196)
!3196 = !{!3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3195, file: !1055, line: 313, baseType: !1002, size: 64)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3195, file: !1055, line: 314, baseType: !1002, size: 64, offset: 64)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3195, file: !1055, line: 315, baseType: !1002, size: 64, offset: 128)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3195, file: !1055, line: 316, baseType: !1002, size: 64, offset: 192)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3195, file: !1055, line: 317, baseType: !1127, size: 64, offset: 256)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3195, file: !1055, line: 318, baseType: !1127, size: 64, offset: 320)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3195, file: !1055, line: 319, baseType: !1127, size: 64, offset: 384)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3195, file: !1055, line: 320, baseType: !1157, size: 64, offset: 448)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3189, file: !1055, line: 448, baseType: !579, size: 64, offset: 128)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3189, file: !1055, line: 449, baseType: !3188, size: 64, offset: 192)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3185, file: !1055, line: 224, baseType: !104, size: 32, offset: 64)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3185, file: !1055, line: 226, baseType: !74, size: 128, offset: 128)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3185, file: !1055, line: 227, baseType: !30, size: 64, offset: 256)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3185, file: !1055, line: 228, baseType: !193, size: 32, offset: 320)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3185, file: !1055, line: 229, baseType: !193, size: 32, offset: 352)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3185, file: !1055, line: 230, baseType: !1092, size: 64, offset: 384)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3185, file: !1055, line: 231, baseType: !1092, size: 64, offset: 448)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3185, file: !1055, line: 232, baseType: !212, size: 64, offset: 512)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3177, file: !1055, line: 526, baseType: !3216, size: 192, offset: 2304)
!3216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3193, size: 192, elements: !259)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !543, file: !390, line: 1233, baseType: !3218, size: 2368, offset: 4544)
!3218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !390, line: 1184, size: 2368, elements: !3219)
!3219 = !{!3220, !3221, !3222}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3218, file: !390, line: 1185, baseType: !119, size: 16)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3218, file: !390, line: 1186, baseType: !119, size: 16, offset: 16)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3218, file: !390, line: 1187, baseType: !3223, size: 2304, offset: 64)
!3223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3224, size: 2304, elements: !259)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3225, line: 12, size: 768, elements: !3226)
!3225 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3226 = !{!3227, !3235, !3236, !4368, !4369}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3224, file: !3225, line: 13, baseType: !3228, size: 384)
!3228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3229, line: 17, size: 384, elements: !3230)
!3229 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3230 = !{!3231, !3232, !3233, !3234}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3228, file: !3229, line: 18, baseType: !104, size: 32)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3228, file: !3229, line: 19, baseType: !104, size: 32, offset: 32)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3228, file: !3229, line: 20, baseType: !1560, size: 192, offset: 64)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3228, file: !3229, line: 22, baseType: !60, size: 128, align: 64, offset: 256)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3224, file: !3225, line: 14, baseType: !247, size: 64, offset: 384)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3224, file: !3225, line: 15, baseType: !3237, size: 64, offset: 448)
!3237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3238, line: 16, size: 64, elements: !3239)
!3238 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3239 = !{!3240}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3237, file: !3238, line: 17, baseType: !3241, size: 64)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1036, line: 746, size: 58368, elements: !3243)
!3243 = !{!3244, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3324, !3335, !3355, !3359, !3362, !3393, !3394, !3395, !3396, !3400, !3402, !3403, !3404, !3405, !3406, !3407, !3418, !3419, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3436, !3437, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3531, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3579, !3585, !3586, !3587, !3588, !3589, !3593, !3596, !3603, !3608, !3611, !3614, !3617, !3620, !3758, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3796, !3797, !3798, !3807, !3815, !3816, !3817, !3818, !3819, !3824, !3825, !3826, !3829, !3830, !3832, !3843, !3846, !3854, !3857, !3858, !3944, !3945, !3946, !3947, !3948, !3954, !3955, !3956, !3957, !3960, !3961, !3964, !3967, !3968, !3971, !3972, !3973, !3976, !3977, !3978, !3979, !3980, !3981, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4013, !4014, !4020, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4108, !4110, !4111, !4112, !4113, !4114, !4115, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4145, !4146, !4147}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !3242, file: !1036, line: 752, baseType: !3245, size: 192)
!3245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !3246, line: 56, size: 192, elements: !3247)
!3246 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!3247 = !{!3248, !3249, !3250, !3251}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3245, file: !3246, line: 57, baseType: !30, size: 64)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !3245, file: !3246, line: 58, baseType: !30, size: 64, offset: 64)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3245, file: !3246, line: 59, baseType: !191, size: 32, offset: 128)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3245, file: !3246, line: 61, baseType: !191, size: 32, offset: 160)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !3242, file: !1036, line: 754, baseType: !193, size: 32, offset: 192)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3242, file: !1036, line: 767, baseType: !212, size: 64, offset: 256)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3242, file: !1036, line: 768, baseType: !1549, size: 32, offset: 320)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3242, file: !1036, line: 770, baseType: !193, size: 32, offset: 352)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !3242, file: !1036, line: 771, baseType: !193, size: 32, offset: 384)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !3242, file: !1036, line: 774, baseType: !104, size: 32, offset: 416)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !3242, file: !1036, line: 775, baseType: !3259, size: 128, offset: 448)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !3260, line: 58, size: 128, elements: !3261)
!3260 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!3261 = !{!3262, !3263, !3268, !3269}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !3259, file: !3260, line: 59, baseType: !1505, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, scope: !3259, file: !3260, line: 60, baseType: !3264, size: 32, offset: 64)
!3264 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3259, file: !3260, line: 60, size: 32, elements: !3265)
!3265 = !{!3266, !3267}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !3264, file: !3260, line: 61, baseType: !193, size: 32)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !3264, file: !3260, line: 62, baseType: !100, size: 32)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !3259, file: !3260, line: 65, baseType: !117, size: 16, offset: 96)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !3259, file: !3260, line: 65, baseType: !117, size: 16, offset: 112)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !3242, file: !1036, line: 776, baseType: !193, size: 32, offset: 576)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !3242, file: !1036, line: 777, baseType: !30, size: 64, offset: 640)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !3242, file: !1036, line: 778, baseType: !3241, size: 64, offset: 704)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !3242, file: !1036, line: 787, baseType: !104, size: 32, offset: 768)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !3242, file: !1036, line: 788, baseType: !104, size: 32, offset: 800)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3242, file: !1036, line: 790, baseType: !104, size: 32, offset: 832)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3242, file: !1036, line: 792, baseType: !104, size: 32, offset: 864)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !3242, file: !1036, line: 793, baseType: !104, size: 32, offset: 896)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !3242, file: !1036, line: 794, baseType: !104, size: 32, offset: 928)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !3242, file: !1036, line: 795, baseType: !193, size: 32, offset: 960)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !3242, file: !1036, line: 797, baseType: !3281, size: 2048, offset: 1024)
!3281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1036, line: 551, size: 2048, elements: !3282)
!3282 = !{!3283, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3303, !3306, !3307, !3308}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !3281, file: !1036, line: 553, baseType: !3284, size: 128)
!3284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1036, line: 411, size: 128, elements: !3285)
!3285 = !{!3286, !3287}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3284, file: !1036, line: 412, baseType: !30, size: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !3284, file: !1036, line: 413, baseType: !191, size: 32, offset: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !3281, file: !1036, line: 554, baseType: !746, size: 192, align: 64, offset: 128)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3281, file: !1036, line: 555, baseType: !464, size: 64, offset: 320)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !3281, file: !1036, line: 556, baseType: !464, size: 64, offset: 384)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3281, file: !1036, line: 558, baseType: !74, size: 128, offset: 448)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3281, file: !1036, line: 559, baseType: !193, size: 32, offset: 576)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !3281, file: !1036, line: 561, baseType: !464, size: 64, offset: 640)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3281, file: !1036, line: 562, baseType: !464, size: 64, offset: 704)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !3281, file: !1036, line: 563, baseType: !464, size: 64, offset: 768)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !3281, file: !1036, line: 564, baseType: !464, size: 64, offset: 832)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !3281, file: !1036, line: 565, baseType: !43, size: 64, offset: 896)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3281, file: !1036, line: 566, baseType: !464, size: 64, offset: 960)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !3281, file: !1036, line: 568, baseType: !464, size: 64, offset: 1024)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3281, file: !1036, line: 571, baseType: !104, size: 32, offset: 1088)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3281, file: !1036, line: 572, baseType: !3302, size: 64, offset: 1152)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !3281, file: !1036, line: 574, baseType: !3304, size: 64, offset: 1216)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1036, line: 49, flags: DIFlagFwdDecl)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !3281, file: !1036, line: 576, baseType: !3304, size: 64, offset: 1280)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !3281, file: !1036, line: 578, baseType: !30, size: 64, offset: 1344)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !3281, file: !1036, line: 588, baseType: !3309, size: 512, align: 512, offset: 1536)
!3309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1036, line: 497, size: 512, align: 512, elements: !3310)
!3310 = !{!3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !3309, file: !1036, line: 498, baseType: !464, size: 64)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !3309, file: !1036, line: 499, baseType: !464, size: 64, offset: 64)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !3309, file: !1036, line: 500, baseType: !464, size: 64, offset: 128)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !3309, file: !1036, line: 501, baseType: !191, size: 32, offset: 192)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !3309, file: !1036, line: 502, baseType: !191, size: 32, offset: 224)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !3309, file: !1036, line: 503, baseType: !30, size: 64, offset: 256)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !3309, file: !1036, line: 504, baseType: !30, size: 64, offset: 320)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !3309, file: !1036, line: 505, baseType: !30, size: 64, offset: 384)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !3309, file: !1036, line: 506, baseType: !3320, size: 64, align: 64, offset: 448)
!3320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1036, line: 445, size: 64, align: 64, elements: !3321)
!3321 = !{!3322, !3323}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !3320, file: !1036, line: 446, baseType: !193, size: 32)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !3320, file: !1036, line: 447, baseType: !193, size: 32, offset: 32)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3242, file: !1036, line: 798, baseType: !3325, size: 384, offset: 3072)
!3325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1036, line: 592, size: 384, elements: !3326)
!3326 = !{!3327, !3328, !3329, !3330, !3331, !3332, !3333}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !3325, file: !1036, line: 593, baseType: !74, size: 128)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3325, file: !1036, line: 594, baseType: !30, size: 64, offset: 128)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !3325, file: !1036, line: 595, baseType: !30, size: 64, offset: 192)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !3325, file: !1036, line: 596, baseType: !193, size: 32, offset: 256)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3325, file: !1036, line: 597, baseType: !119, size: 16, offset: 288)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !3325, file: !1036, line: 598, baseType: !119, size: 16, offset: 304)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !3325, file: !1036, line: 600, baseType: !3334, size: 64, offset: 320)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !3242, file: !1036, line: 799, baseType: !3336, size: 1792, offset: 3456)
!3336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1036, line: 610, size: 1792, elements: !3337)
!3337 = !{!3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3336, file: !1036, line: 611, baseType: !746, size: 192, align: 64)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !3336, file: !1036, line: 618, baseType: !464, size: 64, offset: 192)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !3336, file: !1036, line: 619, baseType: !464, size: 64, offset: 256)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !3336, file: !1036, line: 620, baseType: !464, size: 64, offset: 320)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !3336, file: !1036, line: 621, baseType: !464, size: 64, offset: 384)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !3336, file: !1036, line: 622, baseType: !464, size: 64, offset: 448)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !3336, file: !1036, line: 629, baseType: !43, size: 64, offset: 512)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3336, file: !1036, line: 630, baseType: !464, size: 64, offset: 576)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3336, file: !1036, line: 631, baseType: !193, size: 32, offset: 640)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !3336, file: !1036, line: 653, baseType: !193, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !3336, file: !1036, line: 654, baseType: !193, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !3336, file: !1036, line: 655, baseType: !193, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !3336, file: !1036, line: 656, baseType: !193, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !3336, file: !1036, line: 662, baseType: !2761, size: 512, offset: 704)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !3336, file: !1036, line: 671, baseType: !2761, size: 512, offset: 1216)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !3336, file: !1036, line: 679, baseType: !3354, size: 64, offset: 1728)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !3242, file: !1036, line: 800, baseType: !3356, size: 64, offset: 5248)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3358)
!3358 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1036, line: 800, flags: DIFlagFwdDecl)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !3242, file: !1036, line: 809, baseType: !3360, size: 64, offset: 5312)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1036, line: 70, flags: DIFlagFwdDecl)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3242, file: !1036, line: 825, baseType: !3363, size: 2048, align: 512, offset: 5632)
!3363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1036, line: 509, size: 2048, align: 512, elements: !3364)
!3364 = !{!3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3363, file: !1036, line: 511, baseType: !464, size: 64)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3363, file: !1036, line: 512, baseType: !464, size: 64, offset: 64)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3363, file: !1036, line: 513, baseType: !464, size: 64, offset: 128)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3363, file: !1036, line: 514, baseType: !464, size: 64, offset: 192)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3363, file: !1036, line: 515, baseType: !464, size: 64, offset: 256)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3363, file: !1036, line: 516, baseType: !464, size: 64, offset: 320)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3363, file: !1036, line: 518, baseType: !464, size: 64, offset: 384)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3363, file: !1036, line: 519, baseType: !464, size: 64, offset: 448)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3363, file: !1036, line: 520, baseType: !43, size: 64, offset: 512)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3363, file: !1036, line: 522, baseType: !464, size: 64, offset: 576)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3363, file: !1036, line: 523, baseType: !464, size: 64, offset: 640)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3363, file: !1036, line: 524, baseType: !43, size: 64, offset: 704)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3363, file: !1036, line: 526, baseType: !43, size: 64, offset: 768)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3363, file: !1036, line: 527, baseType: !464, size: 64, offset: 832)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3363, file: !1036, line: 529, baseType: !464, size: 64, offset: 896)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3363, file: !1036, line: 530, baseType: !464, size: 64, offset: 960)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3363, file: !1036, line: 531, baseType: !464, size: 64, offset: 1024)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3363, file: !1036, line: 532, baseType: !464, size: 64, offset: 1088)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3363, file: !1036, line: 533, baseType: !464, size: 64, offset: 1152)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3363, file: !1036, line: 535, baseType: !464, size: 64, offset: 1216)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3363, file: !1036, line: 536, baseType: !464, size: 64, offset: 1280)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3363, file: !1036, line: 537, baseType: !464, size: 64, offset: 1344)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3363, file: !1036, line: 538, baseType: !464, size: 64, offset: 1408)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3363, file: !1036, line: 539, baseType: !464, size: 64, offset: 1472)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3363, file: !1036, line: 540, baseType: !464, size: 64, offset: 1536)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3363, file: !1036, line: 541, baseType: !464, size: 64, offset: 1600)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3363, file: !1036, line: 542, baseType: !464, size: 64, offset: 1664)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3363, file: !1036, line: 543, baseType: !464, size: 64, offset: 1728)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !3242, file: !1036, line: 833, baseType: !193, size: 32, offset: 7680)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !3242, file: !1036, line: 836, baseType: !193, size: 32, offset: 7712)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !3242, file: !1036, line: 837, baseType: !104, size: 32, offset: 7744)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !3242, file: !1036, line: 838, baseType: !3397, size: 64, offset: 7808)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3399)
!3399 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !200, line: 19, baseType: !202)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !3242, file: !1036, line: 839, baseType: !3401, size: 64, offset: 7872)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !3242, file: !1036, line: 840, baseType: !3399, size: 64, offset: 7936)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !3242, file: !1036, line: 841, baseType: !212, size: 64, offset: 8000)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !3242, file: !1036, line: 843, baseType: !119, size: 16, offset: 8064)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !3242, file: !1036, line: 845, baseType: !119, size: 16, offset: 8080)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !3242, file: !1036, line: 848, baseType: !104, size: 32, offset: 8096)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !3242, file: !1036, line: 849, baseType: !3408, size: 32, offset: 8128)
!3408 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1036, line: 718, size: 32, elements: !3409)
!3409 = !{!3410, !3417}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3408, file: !1036, line: 724, baseType: !3411, size: 32)
!3411 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3408, file: !1036, line: 719, size: 32, elements: !3412)
!3412 = !{!3413, !3414, !3415, !3416}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3411, file: !1036, line: 720, baseType: !109, size: 8)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3411, file: !1036, line: 721, baseType: !109, size: 8, offset: 8)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3411, file: !1036, line: 722, baseType: !109, size: 8, offset: 16)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3411, file: !1036, line: 723, baseType: !109, size: 8, offset: 24)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3408, file: !1036, line: 725, baseType: !191, size: 32)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !3242, file: !1036, line: 850, baseType: !74, size: 128, offset: 8192)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !3242, file: !1036, line: 851, baseType: !3420, size: 64, offset: 8320)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1036, line: 60, flags: DIFlagFwdDecl)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !3242, file: !1036, line: 855, baseType: !30, size: 64, offset: 8384)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !3242, file: !1036, line: 856, baseType: !109, size: 8, offset: 8448)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !3242, file: !1036, line: 857, baseType: !109, size: 8, offset: 8456)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !3242, file: !1036, line: 858, baseType: !104, size: 32, offset: 8480)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !3242, file: !1036, line: 859, baseType: !74, size: 128, offset: 8512)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !3242, file: !1036, line: 860, baseType: !104, size: 32, offset: 8640)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !3242, file: !1036, line: 861, baseType: !74, size: 128, offset: 8704)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !3242, file: !1036, line: 873, baseType: !3430, size: 256, offset: 8832)
!3430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1036, line: 376, size: 256, elements: !3431)
!3431 = !{!3432, !3433, !3434, !3435}
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3430, file: !1036, line: 381, baseType: !30, size: 64)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3430, file: !1036, line: 384, baseType: !466, size: 64, offset: 64)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3430, file: !1036, line: 389, baseType: !466, size: 64, offset: 128)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3430, file: !1036, line: 392, baseType: !466, size: 64, offset: 192)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3242, file: !1036, line: 875, baseType: !74, size: 128, offset: 9088)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !3242, file: !1036, line: 877, baseType: !3438, size: 320, offset: 9216)
!3438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3439, line: 86, size: 320, elements: !3440)
!3439 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3440 = !{!3441, !3442, !3443}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3438, file: !3439, line: 87, baseType: !104, size: 32)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3438, file: !3439, line: 88, baseType: !74, size: 128, offset: 64)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3438, file: !3439, line: 89, baseType: !74, size: 128, offset: 192)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !3242, file: !1036, line: 878, baseType: !746, size: 192, align: 64, offset: 9536)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3242, file: !1036, line: 881, baseType: !1471, size: 64, offset: 9728)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !3242, file: !1036, line: 882, baseType: !1471, size: 64, offset: 9792)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !3242, file: !1036, line: 884, baseType: !104, size: 32, offset: 9856)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !3242, file: !1036, line: 885, baseType: !104, size: 32, offset: 9888)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !3242, file: !1036, line: 886, baseType: !104, size: 32, offset: 9920)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !3242, file: !1036, line: 888, baseType: !104, size: 32, offset: 9952)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !3242, file: !1036, line: 890, baseType: !30, size: 64, offset: 9984)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !3242, file: !1036, line: 893, baseType: !193, size: 32, offset: 10048)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !3242, file: !1036, line: 896, baseType: !193, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !3242, file: !1036, line: 897, baseType: !193, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !3242, file: !1036, line: 898, baseType: !193, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !3242, file: !1036, line: 899, baseType: !193, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !3242, file: !1036, line: 919, baseType: !193, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !3242, file: !1036, line: 922, baseType: !193, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !3242, file: !1036, line: 923, baseType: !193, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !3242, file: !1036, line: 925, baseType: !193, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !3242, file: !1036, line: 939, baseType: !193, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3242, file: !1036, line: 941, baseType: !193, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !3242, file: !1036, line: 944, baseType: !193, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !3242, file: !1036, line: 956, baseType: !193, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !3242, file: !1036, line: 962, baseType: !193, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !3242, file: !1036, line: 966, baseType: !193, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !3242, file: !1036, line: 969, baseType: !30, size: 64, offset: 10176)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !3242, file: !1036, line: 971, baseType: !3469, size: 448, offset: 10240)
!3469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !3470, line: 25, size: 448, elements: !3471)
!3470 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!3471 = !{!3472, !3473, !3478}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3469, file: !3470, line: 26, baseType: !30, size: 64)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3469, file: !3470, line: 27, baseType: !3474, size: 64, offset: 64)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{!349, !3477}
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, scope: !3469, file: !3470, line: 28, baseType: !3479, size: 320, offset: 128)
!3479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3469, file: !3470, line: 28, size: 320, elements: !3480)
!3480 = !{!3481, !3491, !3521}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3479, file: !3470, line: 37, baseType: !3482, size: 320)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3479, file: !3470, line: 30, size: 320, elements: !3483)
!3483 = !{!3484, !3486, !3487, !3488, !3489, !3490}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3482, file: !3470, line: 31, baseType: !3485, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3482, file: !3470, line: 32, baseType: !191, size: 32, offset: 64)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3482, file: !3470, line: 33, baseType: !191, size: 32, offset: 96)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3482, file: !3470, line: 34, baseType: !191, size: 32, offset: 128)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3482, file: !3470, line: 35, baseType: !464, size: 64, offset: 192)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3482, file: !3470, line: 36, baseType: !3485, size: 64, offset: 256)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3479, file: !3470, line: 47, baseType: !3492, size: 192)
!3492 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3479, file: !3470, line: 39, size: 192, elements: !3493)
!3493 = !{!3494, !3495, !3501, !3520}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3492, file: !3470, line: 40, baseType: !2811, size: 32)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3492, file: !3470, line: 41, baseType: !3496, size: 32, offset: 32)
!3496 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !3470, line: 16, baseType: !193, size: 32, elements: !3497)
!3497 = !{!3498, !3499, !3500}
!3498 = !DIEnumerator(name: "TT_NONE", value: 0)
!3499 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!3500 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!3501 = !DIDerivedType(tag: DW_TAG_member, scope: !3492, file: !3470, line: 42, baseType: !3502, size: 64, offset: 64)
!3502 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3492, file: !3470, line: 42, size: 64, elements: !3503)
!3503 = !{!3504, !3512}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3502, file: !3470, line: 43, baseType: !3505, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3507, line: 7, size: 128, elements: !3508)
!3507 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3508 = !{!3509, !3511}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3506, file: !3507, line: 8, baseType: !3510, size: 64)
!3510 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !347, line: 93, baseType: !47)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3506, file: !3507, line: 9, baseType: !47, size: 64, offset: 64)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3502, file: !3470, line: 44, baseType: !3513, size: 64)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3515, line: 7, size: 64, elements: !3516)
!3515 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3516 = !{!3517, !3519}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3514, file: !3515, line: 8, baseType: !3518, size: 32)
!3518 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3515, line: 5, baseType: !652)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3514, file: !3515, line: 9, baseType: !652, size: 32, offset: 32)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3492, file: !3470, line: 46, baseType: !464, size: 64, offset: 128)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3479, file: !3470, line: 55, baseType: !3522, size: 256)
!3522 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3479, file: !3470, line: 49, size: 256, elements: !3523)
!3523 = !{!3524, !3527, !3528, !3529, !3530}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3522, file: !3470, line: 50, baseType: !3525, size: 64)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !3470, line: 14, flags: DIFlagFwdDecl)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3522, file: !3470, line: 51, baseType: !104, size: 32, offset: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3522, file: !3470, line: 52, baseType: !104, size: 32, offset: 96)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3522, file: !3470, line: 53, baseType: !30, size: 64, offset: 128)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3522, file: !3470, line: 54, baseType: !30, size: 64, offset: 192)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3242, file: !1036, line: 973, baseType: !3532, size: 32, offset: 10688)
!3532 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !39, line: 27, baseType: !3533)
!3533 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !347, line: 28, baseType: !104)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !3242, file: !1036, line: 974, baseType: !3532, size: 32, offset: 10720)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !3242, file: !1036, line: 978, baseType: !30, size: 64, offset: 10752)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !3242, file: !1036, line: 987, baseType: !3241, size: 64, offset: 10816)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3242, file: !1036, line: 990, baseType: !3241, size: 64, offset: 10880)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3242, file: !1036, line: 995, baseType: !74, size: 128, offset: 10944)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3242, file: !1036, line: 996, baseType: !74, size: 128, offset: 11072)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3242, file: !1036, line: 997, baseType: !3241, size: 64, offset: 11200)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !3242, file: !1036, line: 1005, baseType: !74, size: 128, offset: 11264)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !3242, file: !1036, line: 1006, baseType: !74, size: 128, offset: 11392)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !3242, file: !1036, line: 1009, baseType: !1544, size: 64, offset: 11520)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !3242, file: !1036, line: 1010, baseType: !3545, size: 512, offset: 11584)
!3545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 512, elements: !854)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !3242, file: !1036, line: 1011, baseType: !74, size: 128, offset: 12096)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !3242, file: !1036, line: 1012, baseType: !74, size: 128, offset: 12224)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !3242, file: !1036, line: 1014, baseType: !605, size: 64, offset: 12352)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !3242, file: !1036, line: 1017, baseType: !761, size: 64, offset: 12416)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !3242, file: !1036, line: 1020, baseType: !761, size: 64, offset: 12480)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !3242, file: !1036, line: 1023, baseType: !212, size: 64, offset: 12544)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3242, file: !1036, line: 1025, baseType: !464, size: 64, offset: 12608)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3242, file: !1036, line: 1026, baseType: !464, size: 64, offset: 12672)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3242, file: !1036, line: 1031, baseType: !464, size: 64, offset: 12736)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3242, file: !1036, line: 1032, baseType: !3556, size: 192, offset: 12800)
!3556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1036, line: 324, size: 192, elements: !3557)
!3557 = !{!3558, !3559, !3560}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3556, file: !1036, line: 326, baseType: !464, size: 64)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3556, file: !1036, line: 327, baseType: !464, size: 64, offset: 64)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3556, file: !1036, line: 328, baseType: !131, size: 32, offset: 128)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3242, file: !1036, line: 1041, baseType: !30, size: 64, offset: 12992)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3242, file: !1036, line: 1042, baseType: !30, size: 64, offset: 13056)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !3242, file: !1036, line: 1045, baseType: !464, size: 64, offset: 13120)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !3242, file: !1036, line: 1048, baseType: !464, size: 64, offset: 13184)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3242, file: !1036, line: 1051, baseType: !30, size: 64, offset: 13248)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3242, file: !1036, line: 1052, baseType: !30, size: 64, offset: 13312)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3242, file: !1036, line: 1055, baseType: !3568, size: 640, offset: 13376)
!3568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3569, line: 132, size: 640, elements: !3570)
!3569 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3570 = !{!3571, !3577, !3578}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3568, file: !3569, line: 133, baseType: !3572, size: 576)
!3572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3573, size: 576, elements: !259)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3569, line: 117, size: 192, elements: !3574)
!3574 = !{!3575, !3576}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3573, file: !3569, line: 118, baseType: !464, size: 64)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3573, file: !3569, line: 119, baseType: !2820, size: 128, offset: 64)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3568, file: !3569, line: 134, baseType: !193, size: 32, offset: 576)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3568, file: !3569, line: 135, baseType: !193, size: 32, offset: 608)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !3242, file: !1036, line: 1058, baseType: !3580, size: 448, offset: 14016)
!3580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3569, line: 144, size: 448, elements: !3581)
!3581 = !{!3582, !3583, !3584}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3580, file: !3569, line: 145, baseType: !60, size: 128, align: 64)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3580, file: !3569, line: 146, baseType: !126, size: 256, offset: 128)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3580, file: !3569, line: 147, baseType: !193, size: 32, offset: 384)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !3242, file: !1036, line: 1064, baseType: !1589, size: 64, offset: 14464)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !3242, file: !1036, line: 1067, baseType: !1589, size: 64, offset: 14528)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3242, file: !1036, line: 1070, baseType: !1589, size: 64, offset: 14592)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !3242, file: !1036, line: 1074, baseType: !1616, size: 64, offset: 14656)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3242, file: !1036, line: 1084, baseType: !3590, size: 128, offset: 14720)
!3590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !3591)
!3591 = !{!3592}
!3592 = !DISubrange(count: 16)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !3242, file: !1036, line: 1086, baseType: !3594, size: 64, offset: 14848)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1036, line: 55, flags: DIFlagFwdDecl)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !3242, file: !1036, line: 1089, baseType: !3597, size: 64, offset: 14912)
!3597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3598, line: 12, size: 64, elements: !3599)
!3598 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3599 = !{!3600}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3597, file: !3598, line: 13, baseType: !3601, size: 64)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3598, line: 8, flags: DIFlagFwdDecl)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !3242, file: !1036, line: 1090, baseType: !3604, size: 128, offset: 14976)
!3604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3605, line: 13, size: 128, elements: !3606)
!3605 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3606 = !{!3607}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3604, file: !3605, line: 14, baseType: !74, size: 128)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3242, file: !1036, line: 1097, baseType: !3609, size: 64, offset: 15104)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1036, line: 50, flags: DIFlagFwdDecl)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3242, file: !1036, line: 1100, baseType: !3612, size: 64, offset: 15168)
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3613 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1036, line: 1100, flags: DIFlagFwdDecl)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !3242, file: !1036, line: 1103, baseType: !3615, size: 64, offset: 15232)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1036, line: 53, flags: DIFlagFwdDecl)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3242, file: !1036, line: 1107, baseType: !3618, size: 64, offset: 15296)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1036, line: 56, flags: DIFlagFwdDecl)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3242, file: !1036, line: 1110, baseType: !3621, size: 64, offset: 15360)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3623, line: 93, size: 8768, elements: !3624)
!3623 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3624 = !{!3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3672, !3681, !3682, !3684, !3685, !3686, !3689, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3727, !3728, !3735, !3745, !3748, !3749, !3752, !3753, !3754, !3755, !3756, !3757}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3622, file: !3623, line: 94, baseType: !1549, size: 32)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3622, file: !3623, line: 95, baseType: !100, size: 32, offset: 32)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3622, file: !3623, line: 96, baseType: !104, size: 32, offset: 64)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3622, file: !3623, line: 97, baseType: !104, size: 32, offset: 96)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3622, file: !3623, line: 98, baseType: !74, size: 128, offset: 128)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3622, file: !3623, line: 100, baseType: !1560, size: 192, offset: 256)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3622, file: !3623, line: 103, baseType: !3241, size: 64, offset: 448)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3622, file: !3623, line: 106, baseType: !3633, size: 192, offset: 512)
!3633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1764, line: 32, size: 192, elements: !3634)
!3634 = !{!3635, !3636}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3633, file: !1764, line: 33, baseType: !74, size: 128)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3633, file: !1764, line: 34, baseType: !3637, size: 64, offset: 128)
!3637 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3638, line: 25, baseType: !3639)
!3638 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3639 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3638, line: 23, size: 64, elements: !3640)
!3640 = !{!3641}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3639, file: !3638, line: 24, baseType: !205, size: 64)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3622, file: !3623, line: 109, baseType: !958, size: 64, offset: 704)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3622, file: !3623, line: 112, baseType: !104, size: 32, offset: 768)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3622, file: !3623, line: 114, baseType: !104, size: 32, offset: 800)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3622, file: !3623, line: 115, baseType: !3241, size: 64, offset: 832)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3622, file: !3623, line: 118, baseType: !104, size: 32, offset: 896)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3622, file: !3623, line: 119, baseType: !193, size: 32, offset: 928)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3622, file: !3623, line: 121, baseType: !3649, size: 64, offset: 960)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3623, line: 80, size: 448, elements: !3651)
!3651 = !{!3652, !3653, !3659}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3650, file: !3623, line: 81, baseType: !100, size: 32)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3650, file: !3623, line: 82, baseType: !3654, size: 128, offset: 64)
!3654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3623, line: 75, size: 128, elements: !3655)
!3655 = !{!3656, !3657}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3654, file: !3623, line: 76, baseType: !3241, size: 64)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3654, file: !3623, line: 77, baseType: !3658, size: 64, offset: 64)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3650, file: !3623, line: 83, baseType: !606, size: 256, offset: 192)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3622, file: !3623, line: 132, baseType: !193, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3622, file: !3623, line: 133, baseType: !193, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3622, file: !3623, line: 138, baseType: !193, size: 32, offset: 1056)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3622, file: !3623, line: 139, baseType: !74, size: 128, offset: 1088)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3622, file: !3623, line: 142, baseType: !2761, size: 512, offset: 1216)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3622, file: !3623, line: 143, baseType: !2741, size: 64, offset: 1728)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3622, file: !3623, line: 150, baseType: !3667, size: 256, offset: 1792)
!3667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3668, size: 256, elements: !226)
!3668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3623, line: 38, size: 128, elements: !3669)
!3669 = !{!3670, !3671}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3668, file: !3623, line: 39, baseType: !464, size: 64)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3668, file: !3623, line: 40, baseType: !464, size: 64, offset: 64)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3622, file: !3623, line: 156, baseType: !3673, size: 192, offset: 2048)
!3673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3623, line: 66, size: 192, elements: !3674)
!3674 = !{!3675}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3673, file: !3623, line: 67, baseType: !3676, size: 192)
!3676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3623, line: 47, size: 192, elements: !3677)
!3677 = !{!3678, !3679, !3680}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3676, file: !3623, line: 48, baseType: !38, size: 64)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3676, file: !3623, line: 49, baseType: !38, size: 64, offset: 64)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3676, file: !3623, line: 50, baseType: !38, size: 64, offset: 128)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3622, file: !3623, line: 160, baseType: !3568, size: 640, offset: 2240)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3622, file: !3623, line: 163, baseType: !3683, size: 256, offset: 2880)
!3683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1544, size: 256, elements: !854)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3622, file: !3623, line: 169, baseType: !1544, size: 64, offset: 3136)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3622, file: !3623, line: 172, baseType: !104, size: 32, offset: 3200)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3622, file: !3623, line: 174, baseType: !3687, size: 64, offset: 3264)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3623, line: 174, flags: DIFlagFwdDecl)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3622, file: !3623, line: 185, baseType: !3690, size: 64, offset: 3328)
!3690 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !435, line: 860, baseType: !3691)
!3691 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !435, line: 853, size: 64, elements: !3692)
!3692 = !{!3693, !3694}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3691, file: !435, line: 858, baseType: !434, size: 32)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3691, file: !435, line: 859, baseType: !80, size: 32, offset: 32)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3622, file: !3623, line: 186, baseType: !464, size: 64, offset: 3392)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3622, file: !3623, line: 186, baseType: !464, size: 64, offset: 3456)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3622, file: !3623, line: 186, baseType: !464, size: 64, offset: 3520)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3622, file: !3623, line: 186, baseType: !464, size: 64, offset: 3584)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3622, file: !3623, line: 187, baseType: !464, size: 64, offset: 3648)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3622, file: !3623, line: 188, baseType: !464, size: 64, offset: 3712)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3622, file: !3623, line: 189, baseType: !3556, size: 192, offset: 3776)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3622, file: !3623, line: 190, baseType: !30, size: 64, offset: 3968)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3622, file: !3623, line: 190, baseType: !30, size: 64, offset: 4032)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3622, file: !3623, line: 190, baseType: !30, size: 64, offset: 4096)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3622, file: !3623, line: 190, baseType: !30, size: 64, offset: 4160)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3622, file: !3623, line: 191, baseType: !30, size: 64, offset: 4224)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3622, file: !3623, line: 191, baseType: !30, size: 64, offset: 4288)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3622, file: !3623, line: 191, baseType: !30, size: 64, offset: 4352)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3622, file: !3623, line: 191, baseType: !30, size: 64, offset: 4416)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3622, file: !3623, line: 192, baseType: !30, size: 64, offset: 4480)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3622, file: !3623, line: 192, baseType: !30, size: 64, offset: 4544)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3622, file: !3623, line: 192, baseType: !30, size: 64, offset: 4608)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3622, file: !3623, line: 192, baseType: !30, size: 64, offset: 4672)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3622, file: !3623, line: 193, baseType: !30, size: 64, offset: 4736)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3622, file: !3623, line: 193, baseType: !30, size: 64, offset: 4800)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3622, file: !3623, line: 194, baseType: !3717, size: 448, offset: 4864)
!3717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3718, line: 12, size: 448, elements: !3719)
!3718 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3719 = !{!3720, !3721, !3722, !3723, !3724, !3725, !3726}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3717, file: !3718, line: 15, baseType: !464, size: 64)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3717, file: !3718, line: 17, baseType: !464, size: 64, offset: 64)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3717, file: !3718, line: 19, baseType: !464, size: 64, offset: 128)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3717, file: !3718, line: 21, baseType: !464, size: 64, offset: 192)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3717, file: !3718, line: 29, baseType: !464, size: 64, offset: 256)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3717, file: !3718, line: 35, baseType: !464, size: 64, offset: 320)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3717, file: !3718, line: 44, baseType: !464, size: 64, offset: 384)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3622, file: !3623, line: 202, baseType: !466, size: 64, offset: 5312)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3622, file: !3623, line: 213, baseType: !3729, size: 2048, offset: 5376)
!3729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3730, size: 2048, elements: !3591)
!3730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3731, line: 43, size: 128, elements: !3732)
!3731 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3732 = !{!3733, !3734}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3730, file: !3731, line: 44, baseType: !362, size: 64)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3730, file: !3731, line: 45, baseType: !362, size: 64, offset: 64)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3622, file: !3623, line: 216, baseType: !3736, size: 448, offset: 7424)
!3736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3623, line: 30, size: 448, elements: !3737)
!3737 = !{!3738, !3739, !3740, !3741, !3742, !3743, !3744}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3736, file: !3623, line: 31, baseType: !104, size: 32)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3736, file: !3623, line: 32, baseType: !349, size: 64, offset: 64)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3736, file: !3623, line: 33, baseType: !30, size: 64, offset: 128)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3736, file: !3623, line: 34, baseType: !464, size: 64, offset: 192)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3736, file: !3623, line: 34, baseType: !464, size: 64, offset: 256)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3736, file: !3623, line: 35, baseType: !30, size: 64, offset: 320)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3736, file: !3623, line: 35, baseType: !30, size: 64, offset: 384)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3622, file: !3623, line: 219, baseType: !3746, size: 64, offset: 7872)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3623, line: 219, flags: DIFlagFwdDecl)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3622, file: !3623, line: 222, baseType: !193, size: 32, offset: 7936)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3622, file: !3623, line: 223, baseType: !3750, size: 64, offset: 8000)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3623, line: 223, flags: DIFlagFwdDecl)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3622, file: !3623, line: 230, baseType: !56, size: 8, offset: 8064)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3622, file: !3623, line: 231, baseType: !770, size: 16, offset: 8080)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3622, file: !3623, line: 232, baseType: !770, size: 16, offset: 8096)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3622, file: !3623, line: 234, baseType: !1471, size: 64, offset: 8128)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3622, file: !3623, line: 237, baseType: !126, size: 256, offset: 8192)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3622, file: !3623, line: 243, baseType: !1260, size: 320, offset: 8448)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !3242, file: !1036, line: 1111, baseType: !3759, size: 64, offset: 15424)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3623, line: 20, size: 16640, elements: !3761)
!3761 = !{!3762, !3763, !3764, !3765}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3760, file: !3623, line: 21, baseType: !80, size: 32)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3760, file: !3623, line: 22, baseType: !1549, size: 32, offset: 32)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3760, file: !3623, line: 23, baseType: !1560, size: 192, offset: 64)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3760, file: !3623, line: 24, baseType: !3766, size: 16384, offset: 256)
!3766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3767, size: 16384, elements: !318)
!3767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1764, line: 51, size: 256, elements: !3768)
!3768 = !{!3769}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3767, file: !1764, line: 52, baseType: !3770, size: 256)
!3770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1764, line: 37, size: 256, elements: !3771)
!3771 = !{!3772, !3779, !3780, !3784}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3770, file: !1764, line: 39, baseType: !3773, size: 64)
!3773 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3774, line: 83, baseType: !3775)
!3774 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3774, line: 82, baseType: !3777)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{null, !104}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3770, file: !1764, line: 40, baseType: !30, size: 64, offset: 64)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3770, file: !1764, line: 46, baseType: !3781, size: 64, offset: 128)
!3781 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3774, line: 86, baseType: !3782)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3774, line: 85, baseType: !953)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3770, file: !1764, line: 48, baseType: !3637, size: 64, offset: 192)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3242, file: !1036, line: 1112, baseType: !3637, size: 64, offset: 15488)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !3242, file: !1036, line: 1113, baseType: !3637, size: 64, offset: 15552)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !3242, file: !1036, line: 1115, baseType: !3637, size: 64, offset: 15616)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !3242, file: !1036, line: 1116, baseType: !3633, size: 192, offset: 15680)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !3242, file: !1036, line: 1117, baseType: !30, size: 64, offset: 15872)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !3242, file: !1036, line: 1118, baseType: !360, size: 64, offset: 15936)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !3242, file: !1036, line: 1119, baseType: !193, size: 32, offset: 16000)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !3242, file: !1036, line: 1121, baseType: !63, size: 64, offset: 16064)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !3242, file: !1036, line: 1125, baseType: !3794, size: 64, offset: 16128)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1036, line: 43, flags: DIFlagFwdDecl)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !3242, file: !1036, line: 1127, baseType: !399, size: 32, offset: 16192)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !3242, file: !1036, line: 1128, baseType: !193, size: 32, offset: 16224)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !3242, file: !1036, line: 1130, baseType: !3799, size: 128, offset: 16256)
!3799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3800, line: 37, size: 128, elements: !3801)
!3800 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3801 = !{!3802, !3803, !3804}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3799, file: !3800, line: 38, baseType: !104, size: 32)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3799, file: !3800, line: 39, baseType: !100, size: 32, offset: 32)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3799, file: !3800, line: 40, baseType: !3805, size: 64, offset: 64)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3800, line: 24, flags: DIFlagFwdDecl)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !3242, file: !1036, line: 1131, baseType: !3808, size: 256, offset: 16384)
!3808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3809, line: 12, size: 256, elements: !3810)
!3809 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3810 = !{!3811, !3812, !3813, !3814}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3808, file: !3809, line: 13, baseType: !315, size: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3808, file: !3809, line: 14, baseType: !30, size: 64, offset: 64)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3808, file: !3809, line: 15, baseType: !30, size: 64, offset: 128)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3808, file: !3809, line: 16, baseType: !56, size: 8, offset: 192)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !3242, file: !1036, line: 1134, baseType: !464, size: 64, offset: 16640)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !3242, file: !1036, line: 1135, baseType: !464, size: 64, offset: 16704)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !3242, file: !1036, line: 1138, baseType: !80, size: 32, offset: 16768)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !3242, file: !1036, line: 1141, baseType: !131, size: 32, offset: 16800)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !3242, file: !1036, line: 1143, baseType: !3820, size: 64, offset: 16832)
!3820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1036, line: 735, size: 64, elements: !3821)
!3821 = !{!3822}
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3820, file: !1036, line: 736, baseType: !3823, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !3242, file: !1036, line: 1147, baseType: !2823, size: 128, offset: 16896)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !3242, file: !1036, line: 1149, baseType: !3241, size: 64, offset: 17024)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !3242, file: !1036, line: 1151, baseType: !3827, size: 64, offset: 17088)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1036, line: 1151, flags: DIFlagFwdDecl)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !3242, file: !1036, line: 1188, baseType: !212, size: 64, offset: 17152)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !3242, file: !1036, line: 1191, baseType: !3831, size: 64, offset: 17216)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !3242, file: !1036, line: 1194, baseType: !3833, size: 64, offset: 17280)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !19, line: 976, size: 320, elements: !3835)
!3835 = !{!3836, !3837, !3838, !3839, !3840, !3841, !3842}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "mq_list", scope: !3834, file: !19, line: 977, baseType: !12, size: 64)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "cached_rq", scope: !3834, file: !19, line: 980, baseType: !12, size: 64, offset: 64)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ios", scope: !3834, file: !19, line: 981, baseType: !119, size: 16, offset: 128)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "rq_count", scope: !3834, file: !19, line: 983, baseType: !119, size: 16, offset: 144)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "multiple_queues", scope: !3834, file: !19, line: 985, baseType: !56, size: 8, offset: 160)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "has_elevator", scope: !3834, file: !19, line: 986, baseType: !56, size: 8, offset: 168)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !3834, file: !19, line: 988, baseType: !74, size: 128, offset: 192)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !3242, file: !1036, line: 1197, baseType: !3844, size: 64, offset: 17344)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1036, line: 61, flags: DIFlagFwdDecl)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !3242, file: !1036, line: 1199, baseType: !3847, size: 64, offset: 17408)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3849, line: 99, size: 128, elements: !3850)
!3849 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3850 = !{!3851, !3852, !3853}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3848, file: !3849, line: 100, baseType: !36, size: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3848, file: !3849, line: 101, baseType: !100, size: 32, offset: 64)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3848, file: !3849, line: 103, baseType: !119, size: 16, offset: 96)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !3242, file: !1036, line: 1202, baseType: !3855, size: 64, offset: 17472)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1036, line: 48, flags: DIFlagFwdDecl)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !3242, file: !1036, line: 1205, baseType: !30, size: 64, offset: 17536)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !3242, file: !1036, line: 1206, baseType: !3859, size: 64, offset: 17600)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1764, line: 14, baseType: !3861)
!3861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1764, line: 12, size: 384, elements: !3862)
!3862 = !{!3863}
!3863 = !DIDerivedType(tag: DW_TAG_member, scope: !3861, file: !1764, line: 13, baseType: !3864, size: 384)
!3864 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3861, file: !1764, line: 13, size: 384, elements: !3865)
!3865 = !{!3866, !3867, !3868, !3869}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3864, file: !1764, line: 13, baseType: !104, size: 32)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3864, file: !1764, line: 13, baseType: !104, size: 32, offset: 32)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3864, file: !1764, line: 13, baseType: !104, size: 32, offset: 64)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3864, file: !1764, line: 13, baseType: !3870, size: 256, offset: 128)
!3870 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3871, line: 37, size: 256, elements: !3872)
!3871 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3872 = !{!3873, !3878, !3891, !3897, !3906, !3933, !3938}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3870, file: !3871, line: 42, baseType: !3874, size: 64)
!3874 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3870, file: !3871, line: 39, size: 64, elements: !3875)
!3875 = !{!3876, !3877}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3874, file: !3871, line: 40, baseType: !3533, size: 32)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3874, file: !3871, line: 41, baseType: !405, size: 32, offset: 32)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3870, file: !3871, line: 50, baseType: !3879, size: 192)
!3879 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3870, file: !3871, line: 45, size: 192, elements: !3880)
!3880 = !{!3881, !3883, !3884, !3890}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3879, file: !3871, line: 46, baseType: !3882, size: 32)
!3882 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !347, line: 95, baseType: !104)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3879, file: !3871, line: 47, baseType: !104, size: 32, offset: 32)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3879, file: !3871, line: 48, baseType: !3885, size: 64, offset: 64)
!3885 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3871, line: 11, baseType: !3886)
!3886 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3871, line: 8, size: 64, elements: !3887)
!3887 = !{!3888, !3889}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3886, file: !3871, line: 9, baseType: !104, size: 32)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3886, file: !3871, line: 10, baseType: !212, size: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3879, file: !3871, line: 49, baseType: !104, size: 32, offset: 128)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3870, file: !3871, line: 57, baseType: !3892, size: 128)
!3892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3870, file: !3871, line: 53, size: 128, elements: !3893)
!3893 = !{!3894, !3895, !3896}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3892, file: !3871, line: 54, baseType: !3533, size: 32)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3892, file: !3871, line: 55, baseType: !405, size: 32, offset: 32)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3892, file: !3871, line: 56, baseType: !3885, size: 64, offset: 64)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3870, file: !3871, line: 66, baseType: !3898, size: 256)
!3898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3870, file: !3871, line: 60, size: 256, elements: !3899)
!3899 = !{!3900, !3901, !3902, !3903, !3905}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3898, file: !3871, line: 61, baseType: !3533, size: 32)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3898, file: !3871, line: 62, baseType: !405, size: 32, offset: 32)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3898, file: !3871, line: 63, baseType: !104, size: 32, offset: 64)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3898, file: !3871, line: 64, baseType: !3904, size: 64, offset: 128)
!3904 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !347, line: 94, baseType: !348)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3898, file: !3871, line: 65, baseType: !3904, size: 64, offset: 192)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3870, file: !3871, line: 105, baseType: !3907, size: 256)
!3907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3870, file: !3871, line: 69, size: 256, elements: !3908)
!3908 = !{!3909, !3910}
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3907, file: !3871, line: 70, baseType: !212, size: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, scope: !3907, file: !3871, line: 79, baseType: !3911, size: 192, offset: 64)
!3911 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3907, file: !3871, line: 79, size: 192, elements: !3912)
!3912 = !{!3913, !3914, !3915, !3922, !3927}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3911, file: !3871, line: 81, baseType: !104, size: 32)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3911, file: !3871, line: 86, baseType: !770, size: 16)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3911, file: !3871, line: 92, baseType: !3916, size: 192)
!3916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3911, file: !3871, line: 88, size: 192, elements: !3917)
!3917 = !{!3918, !3920, !3921}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3916, file: !3871, line: 89, baseType: !3919, size: 64)
!3919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !2807)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3916, file: !3871, line: 90, baseType: !212, size: 64, offset: 64)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3916, file: !3871, line: 91, baseType: !212, size: 64, offset: 128)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3911, file: !3871, line: 97, baseType: !3923, size: 96)
!3923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3911, file: !3871, line: 94, size: 96, elements: !3924)
!3924 = !{!3925, !3926}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3923, file: !3871, line: 95, baseType: !3919, size: 64)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3923, file: !3871, line: 96, baseType: !192, size: 32, offset: 64)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3911, file: !3871, line: 103, baseType: !3928, size: 128)
!3928 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3911, file: !3871, line: 99, size: 128, elements: !3929)
!3929 = !{!3930, !3931, !3932}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3928, file: !3871, line: 100, baseType: !30, size: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3928, file: !3871, line: 101, baseType: !192, size: 32, offset: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3928, file: !3871, line: 102, baseType: !192, size: 32, offset: 96)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3870, file: !3871, line: 111, baseType: !3934, size: 128)
!3934 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3870, file: !3871, line: 108, size: 128, elements: !3935)
!3935 = !{!3936, !3937}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3934, file: !3871, line: 109, baseType: !349, size: 64)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3934, file: !3871, line: 110, baseType: !104, size: 32, offset: 64)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3870, file: !3871, line: 118, baseType: !3939, size: 128)
!3939 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3870, file: !3871, line: 114, size: 128, elements: !3940)
!3940 = !{!3941, !3942, !3943}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3939, file: !3871, line: 115, baseType: !212, size: 64)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3939, file: !3871, line: 116, baseType: !104, size: 32, offset: 64)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3939, file: !3871, line: 117, baseType: !193, size: 32, offset: 96)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3242, file: !1036, line: 1208, baseType: !3717, size: 448, offset: 17664)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !3242, file: !1036, line: 1215, baseType: !464, size: 64, offset: 18112)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !3242, file: !1036, line: 1217, baseType: !464, size: 64, offset: 18176)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !3242, file: !1036, line: 1219, baseType: !464, size: 64, offset: 18240)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !3242, file: !1036, line: 1223, baseType: !3949, size: 64, offset: 18304)
!3949 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3950, line: 99, baseType: !3951)
!3950 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3951 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3950, line: 99, size: 64, elements: !3952)
!3952 = !{!3953}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3951, file: !3950, line: 99, baseType: !205, size: 64)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !3242, file: !1036, line: 1225, baseType: !434, size: 32, offset: 18368)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !3242, file: !1036, line: 1226, baseType: !104, size: 32, offset: 18400)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !3242, file: !1036, line: 1227, baseType: !104, size: 32, offset: 18432)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !3242, file: !1036, line: 1231, baseType: !3958, size: 64, offset: 18496)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1036, line: 1231, flags: DIFlagFwdDecl)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !3242, file: !1036, line: 1233, baseType: !74, size: 128, offset: 18560)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !3242, file: !1036, line: 1240, baseType: !3962, size: 64, offset: 18688)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1036, line: 62, flags: DIFlagFwdDecl)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !3242, file: !1036, line: 1242, baseType: !3965, size: 64, offset: 18752)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1036, line: 1242, flags: DIFlagFwdDecl)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !3242, file: !1036, line: 1244, baseType: !74, size: 128, offset: 18816)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !3242, file: !1036, line: 1245, baseType: !3969, size: 64, offset: 18944)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1036, line: 51, flags: DIFlagFwdDecl)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !3242, file: !1036, line: 1246, baseType: !126, size: 256, offset: 19008)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !3242, file: !1036, line: 1247, baseType: !193, size: 32, offset: 19264)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !3242, file: !1036, line: 1250, baseType: !3974, size: 64, offset: 19328)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1036, line: 57, flags: DIFlagFwdDecl)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !3242, file: !1036, line: 1251, baseType: !126, size: 256, offset: 19392)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !3242, file: !1036, line: 1252, baseType: !74, size: 128, offset: 19648)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !3242, file: !1036, line: 1259, baseType: !2223, size: 64, offset: 19776)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !3242, file: !1036, line: 1260, baseType: !770, size: 16, offset: 19840)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !3242, file: !1036, line: 1261, baseType: !770, size: 16, offset: 19856)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !3242, file: !1036, line: 1314, baseType: !3982, size: 64, offset: 19904)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3984, line: 62, size: 256, align: 256, elements: !3985)
!3984 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3985 = !{!3986, !3987, !3988, !3989, !3990, !3991, !3992}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3983, file: !3984, line: 75, baseType: !192, size: 32)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3983, file: !3984, line: 90, baseType: !192, size: 32, offset: 32)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3983, file: !3984, line: 112, baseType: !465, size: 64, offset: 64)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3983, file: !3984, line: 132, baseType: !192, size: 32, offset: 128)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3983, file: !3984, line: 140, baseType: !192, size: 32, offset: 160)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3983, file: !3984, line: 149, baseType: !192, size: 32, offset: 192)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3983, file: !3984, line: 154, baseType: !3993, offset: 224)
!3993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !1575)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !3242, file: !1036, line: 1315, baseType: !191, size: 32, offset: 19968)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !3242, file: !1036, line: 1316, baseType: !191, size: 32, offset: 20000)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !3242, file: !1036, line: 1321, baseType: !30, size: 64, offset: 20032)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3242, file: !1036, line: 1325, baseType: !104, size: 32, offset: 20096)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !3242, file: !1036, line: 1326, baseType: !104, size: 32, offset: 20128)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !3242, file: !1036, line: 1327, baseType: !104, size: 32, offset: 20160)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !3242, file: !1036, line: 1328, baseType: !104, size: 32, offset: 20192)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !3242, file: !1036, line: 1329, baseType: !60, size: 128, align: 64, offset: 20224)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !3242, file: !1036, line: 1332, baseType: !4003, size: 128, offset: 20352)
!4003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4004, line: 51, size: 128, elements: !4005)
!4004 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4005 = !{!4006, !4011, !4012}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4003, file: !4004, line: 60, baseType: !4007, size: 64)
!4007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4008, line: 7, size: 64, elements: !4009)
!4008 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4009 = !{!4010}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4007, file: !4008, line: 12, baseType: !202, size: 64)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4003, file: !4004, line: 63, baseType: !56, size: 8, offset: 64)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4003, file: !4004, line: 70, baseType: !56, size: 8, offset: 72)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !3242, file: !1036, line: 1335, baseType: !1964, size: 64, offset: 20480)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !3242, file: !1036, line: 1337, baseType: !4015, size: 128, offset: 20544)
!4015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4004, line: 39, size: 128, elements: !4016)
!4016 = !{!4017, !4018, !4019}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4015, file: !4004, line: 40, baseType: !1359, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4015, file: !4004, line: 42, baseType: !192, size: 32, offset: 64)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4015, file: !4004, line: 43, baseType: !192, size: 32, offset: 96)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !3242, file: !1036, line: 1340, baseType: !4021, size: 64, offset: 20672)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1036, line: 69, flags: DIFlagFwdDecl)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !3242, file: !1036, line: 1351, baseType: !104, size: 32, offset: 20736)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !3242, file: !1036, line: 1352, baseType: !104, size: 32, offset: 20768)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !3242, file: !1036, line: 1354, baseType: !30, size: 64, offset: 20800)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !3242, file: !1036, line: 1364, baseType: !464, size: 64, offset: 20864)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !3242, file: !1036, line: 1365, baseType: !464, size: 64, offset: 20928)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !3242, file: !1036, line: 1412, baseType: !30, size: 64, offset: 20992)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !3242, file: !1036, line: 1453, baseType: !1289, size: 64, offset: 21056)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !3242, file: !1036, line: 1457, baseType: !4031, size: 64, offset: 21120)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !2136, line: 61, size: 576, elements: !4033)
!4033 = !{!4034, !4041, !4060, !4063, !4064, !4097, !4107}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4032, file: !2136, line: 62, baseType: !4035, size: 32)
!4035 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !2136, line: 51, baseType: !193, size: 32, elements: !4036)
!4036 = !{!4037, !4038, !4039, !4040}
!4037 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!4038 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!4039 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!4040 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!4041 = !DIDerivedType(tag: DW_TAG_member, scope: !4032, file: !2136, line: 64, baseType: !4042, size: 192, offset: 64)
!4042 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4032, file: !2136, line: 64, size: 192, elements: !4043)
!4043 = !{!4044, !4055}
!4044 = !DIDerivedType(tag: DW_TAG_member, scope: !4042, file: !2136, line: 65, baseType: !4045, size: 192)
!4045 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4042, file: !2136, line: 65, size: 192, elements: !4046)
!4046 = !{!4047, !4054}
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4045, file: !2136, line: 66, baseType: !4048, size: 128)
!4048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4049, line: 50, size: 128, elements: !4050)
!4049 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4050 = !{!4051, !4052, !4053}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4048, file: !4049, line: 52, baseType: !30, size: 64)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4048, file: !4049, line: 54, baseType: !193, size: 32, offset: 64)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4048, file: !4049, line: 55, baseType: !193, size: 32, offset: 96)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4045, file: !2136, line: 67, baseType: !30, size: 64, offset: 128)
!4055 = !DIDerivedType(tag: DW_TAG_member, scope: !4042, file: !2136, line: 70, baseType: !4056, size: 192)
!4056 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4042, file: !2136, line: 70, size: 192, elements: !4057)
!4057 = !{!4058, !4059}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4056, file: !2136, line: 71, baseType: !60, size: 128, align: 64)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4056, file: !2136, line: 72, baseType: !30, size: 64, offset: 128)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4032, file: !2136, line: 76, baseType: !4061, size: 64, offset: 256)
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4062 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !2136, line: 76, flags: DIFlagFwdDecl)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4032, file: !2136, line: 77, baseType: !30, size: 64, offset: 320)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4032, file: !2136, line: 79, baseType: !4065, size: 64, offset: 384)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4049, line: 25, size: 256, elements: !4067)
!4067 = !{!4068, !4074, !4078}
!4068 = !DIDerivedType(tag: DW_TAG_member, scope: !4066, file: !4049, line: 26, baseType: !4069, size: 128)
!4069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4066, file: !4049, line: 26, size: 128, elements: !4070)
!4070 = !{!4071, !4073}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4069, file: !4049, line: 27, baseType: !4072, size: 128)
!4072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 128, elements: !3591)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4069, file: !4049, line: 28, baseType: !4072, size: 128)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4066, file: !4049, line: 31, baseType: !4075, size: 64, offset: 128)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4077)
!4077 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4049, line: 23, flags: DIFlagFwdDecl)
!4078 = !DIDerivedType(tag: DW_TAG_member, scope: !4066, file: !4049, line: 33, baseType: !4079, size: 64, offset: 192)
!4079 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4066, file: !4049, line: 33, size: 64, elements: !4080)
!4080 = !{!4081, !4087, !4092}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4079, file: !4049, line: 38, baseType: !4082, size: 64)
!4082 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4079, file: !4049, line: 34, size: 64, elements: !4083)
!4083 = !{!4084, !4085, !4086}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4082, file: !4049, line: 35, baseType: !652, size: 32)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4082, file: !4049, line: 36, baseType: !109, size: 8, offset: 32)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4082, file: !4049, line: 37, baseType: !109, size: 8, offset: 40)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4079, file: !4049, line: 42, baseType: !4088, size: 16)
!4088 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4079, file: !4049, line: 39, size: 16, elements: !4089)
!4089 = !{!4090, !4091}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4088, file: !4049, line: 40, baseType: !109, size: 8)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4088, file: !4049, line: 41, baseType: !109, size: 8, offset: 8)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4079, file: !4049, line: 46, baseType: !4093, size: 16)
!4093 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4079, file: !4049, line: 43, size: 16, elements: !4094)
!4094 = !{!4095, !4096}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4093, file: !4049, line: 44, baseType: !109, size: 8)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4093, file: !4049, line: 45, baseType: !109, size: 8, offset: 8)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4032, file: !2136, line: 81, baseType: !4098, size: 64, offset: 448)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !2136, line: 85, size: 384, elements: !4100)
!4100 = !{!4101, !4102, !4103, !4104, !4105, !4106}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4099, file: !2136, line: 86, baseType: !4061, size: 64)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4099, file: !2136, line: 87, baseType: !30, size: 64, offset: 64)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4099, file: !2136, line: 88, baseType: !30, size: 64, offset: 128)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4099, file: !2136, line: 89, baseType: !30, size: 64, offset: 192)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4099, file: !2136, line: 90, baseType: !56, size: 8, offset: 256)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4099, file: !2136, line: 92, baseType: !4098, size: 64, offset: 320)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4032, file: !2136, line: 82, baseType: !193, size: 32, offset: 512)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !3242, file: !1036, line: 1463, baseType: !4109, offset: 21184)
!4109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1036, line: 739, elements: !885)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3242, file: !1036, line: 1470, baseType: !60, size: 128, align: 64, offset: 21184)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3242, file: !1036, line: 1471, baseType: !1549, size: 32, offset: 21312)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !3242, file: !1036, line: 1472, baseType: !104, size: 32, offset: 21344)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !3242, file: !1036, line: 1474, baseType: !3241, size: 64, offset: 21376)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !3242, file: !1036, line: 1475, baseType: !174, size: 320, offset: 21440)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !3242, file: !1036, line: 1478, baseType: !4116, size: 64, offset: 21760)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !4118, line: 49, size: 512, elements: !4119)
!4118 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!4119 = !{!4120, !4121, !4122, !4123, !4124, !4126, !4127, !4128, !4130}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4117, file: !4118, line: 50, baseType: !4116, size: 64)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4117, file: !4118, line: 51, baseType: !212, size: 64, offset: 64)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4117, file: !4118, line: 52, baseType: !30, size: 64, offset: 128)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4117, file: !4118, line: 53, baseType: !30, size: 64, offset: 192)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4117, file: !4118, line: 54, baseType: !4125, size: 64, offset: 256)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !4117, file: !4118, line: 56, baseType: !193, size: 32, offset: 320)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !4117, file: !4118, line: 58, baseType: !193, size: 32, offset: 352)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4117, file: !4118, line: 59, baseType: !4129, size: 64, offset: 384)
!4129 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !39, line: 159, baseType: !464)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !4117, file: !4118, line: 60, baseType: !2105, size: 64, offset: 448)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !3242, file: !1036, line: 1482, baseType: !1549, size: 32, offset: 21824)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3242, file: !1036, line: 1489, baseType: !212, size: 64, offset: 21888)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !3242, file: !1036, line: 1504, baseType: !212, size: 64, offset: 21952)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !3242, file: !1036, line: 1505, baseType: !465, size: 64, offset: 22016)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !3242, file: !1036, line: 1506, baseType: !464, size: 64, offset: 22080)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !3242, file: !1036, line: 1507, baseType: !465, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !3242, file: !1036, line: 1508, baseType: !465, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !3242, file: !1036, line: 1509, baseType: !465, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !3242, file: !1036, line: 1510, baseType: !60, size: 128, align: 64, offset: 22208)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !3242, file: !1036, line: 1511, baseType: !104, size: 32, offset: 22336)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !3242, file: !1036, line: 1515, baseType: !4142, size: 64, offset: 22400)
!4142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1506, line: 56, size: 64, elements: !4143)
!4143 = !{!4144}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4142, file: !1506, line: 57, baseType: !1509, size: 64)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !3242, file: !1036, line: 1518, baseType: !4142, size: 64, offset: 22464)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !3242, file: !1036, line: 1528, baseType: !60, size: 128, align: 64, offset: 22528)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3242, file: !1036, line: 1552, baseType: !4148, size: 35328, offset: 23040)
!4148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4149, line: 430, size: 35328, elements: !4150)
!4149 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4150 = !{!4151, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4180, !4181, !4182, !4183, !4184, !4185, !4188, !4189, !4190, !4191}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4148, file: !4149, line: 432, baseType: !4152, size: 192)
!4152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4153, size: 192, elements: !259)
!4153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4154, line: 16, size: 64, elements: !4155)
!4154 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4155 = !{!4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4153, file: !4154, line: 17, baseType: !117, size: 16)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4153, file: !4154, line: 18, baseType: !117, size: 16, offset: 16)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4153, file: !4154, line: 19, baseType: !117, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4153, file: !4154, line: 19, baseType: !117, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4153, file: !4154, line: 19, baseType: !117, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4153, file: !4154, line: 19, baseType: !117, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4153, file: !4154, line: 19, baseType: !117, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4153, file: !4154, line: 20, baseType: !117, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4153, file: !4154, line: 20, baseType: !117, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4153, file: !4154, line: 20, baseType: !117, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4153, file: !4154, line: 20, baseType: !117, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4153, file: !4154, line: 20, baseType: !117, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4153, file: !4154, line: 20, baseType: !117, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4148, file: !4149, line: 436, baseType: !30, size: 64, offset: 192)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4148, file: !4149, line: 440, baseType: !119, size: 16, offset: 256)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4148, file: !4149, line: 441, baseType: !119, size: 16, offset: 272)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4148, file: !4149, line: 442, baseType: !119, size: 16, offset: 288)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4148, file: !4149, line: 443, baseType: !119, size: 16, offset: 304)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4148, file: !4149, line: 447, baseType: !30, size: 64, offset: 320)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4148, file: !4149, line: 448, baseType: !30, size: 64, offset: 384)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4148, file: !4149, line: 459, baseType: !4177, size: 256, offset: 448)
!4177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4178, size: 256, elements: !854)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4149, line: 428, flags: DIFlagFwdDecl)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4148, file: !4149, line: 461, baseType: !30, size: 64, offset: 704)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4148, file: !4149, line: 463, baseType: !30, size: 64, offset: 768)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4148, file: !4149, line: 465, baseType: !30, size: 64, offset: 832)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4148, file: !4149, line: 466, baseType: !30, size: 64, offset: 896)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4148, file: !4149, line: 467, baseType: !30, size: 64, offset: 960)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4148, file: !4149, line: 473, baseType: !4186, size: 64, offset: 1024)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4149, line: 10, flags: DIFlagFwdDecl)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4148, file: !4149, line: 480, baseType: !30, size: 64, offset: 1088)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4148, file: !4149, line: 482, baseType: !193, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4148, file: !4149, line: 491, baseType: !191, size: 32, offset: 1184)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4148, file: !4149, line: 501, baseType: !4192, size: 33792, offset: 1536)
!4192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4193, line: 448, size: 33792, elements: !4194)
!4193 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4194 = !{!4195, !4196, !4197, !4359, !4360, !4366, !4367}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4192, file: !4193, line: 461, baseType: !193, size: 32)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4192, file: !4193, line: 468, baseType: !30, size: 64, offset: 64)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4192, file: !4193, line: 476, baseType: !4198, size: 64, offset: 128)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4193, line: 356, size: 33280, align: 512, elements: !4200)
!4200 = !{!4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4199, file: !4193, line: 358, baseType: !193, size: 32)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4199, file: !4193, line: 361, baseType: !193, size: 32, offset: 32)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4199, file: !4193, line: 364, baseType: !464, size: 64, offset: 64)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4199, file: !4193, line: 367, baseType: !464, size: 64, offset: 128)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4199, file: !4193, line: 370, baseType: !464, size: 64, offset: 192)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4199, file: !4193, line: 373, baseType: !193, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4199, file: !4193, line: 376, baseType: !193, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4199, file: !4193, line: 391, baseType: !193, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4199, file: !4193, line: 394, baseType: !193, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4199, file: !4193, line: 397, baseType: !4211, size: 32768, offset: 512)
!4211 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4193, line: 348, size: 32768, elements: !4212)
!4212 = !{!4213, !4228, !4265, !4342, !4355}
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4211, file: !4193, line: 349, baseType: !4214, size: 896)
!4214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4193, line: 12, size: 896, elements: !4215)
!4215 = !{!4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4227}
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4214, file: !4193, line: 13, baseType: !191, size: 32)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4214, file: !4193, line: 14, baseType: !191, size: 32, offset: 32)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4214, file: !4193, line: 15, baseType: !191, size: 32, offset: 64)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4214, file: !4193, line: 16, baseType: !191, size: 32, offset: 96)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4214, file: !4193, line: 17, baseType: !191, size: 32, offset: 128)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4214, file: !4193, line: 18, baseType: !191, size: 32, offset: 160)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4214, file: !4193, line: 19, baseType: !191, size: 32, offset: 192)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4214, file: !4193, line: 22, baseType: !4224, size: 640, offset: 224)
!4224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 640, elements: !4225)
!4225 = !{!4226}
!4226 = !DISubrange(count: 20)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4214, file: !4193, line: 25, baseType: !191, size: 32, offset: 864)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4211, file: !4193, line: 350, baseType: !4229, size: 4096, align: 128)
!4229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4193, line: 34, size: 4096, align: 128, elements: !4230)
!4230 = !{!4231, !4232, !4233, !4234, !4235, !4250, !4251, !4252, !4254, !4256, !4260}
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4229, file: !4193, line: 35, baseType: !117, size: 16)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4229, file: !4193, line: 36, baseType: !117, size: 16, offset: 16)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4229, file: !4193, line: 37, baseType: !117, size: 16, offset: 32)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4229, file: !4193, line: 38, baseType: !117, size: 16, offset: 48)
!4235 = !DIDerivedType(tag: DW_TAG_member, scope: !4229, file: !4193, line: 39, baseType: !4236, size: 128, offset: 64)
!4236 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4229, file: !4193, line: 39, size: 128, elements: !4237)
!4237 = !{!4238, !4243}
!4238 = !DIDerivedType(tag: DW_TAG_member, scope: !4236, file: !4193, line: 40, baseType: !4239, size: 128)
!4239 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4236, file: !4193, line: 40, size: 128, elements: !4240)
!4240 = !{!4241, !4242}
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4239, file: !4193, line: 41, baseType: !464, size: 64)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4239, file: !4193, line: 42, baseType: !464, size: 64, offset: 64)
!4243 = !DIDerivedType(tag: DW_TAG_member, scope: !4236, file: !4193, line: 44, baseType: !4244, size: 128)
!4244 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4236, file: !4193, line: 44, size: 128, elements: !4245)
!4245 = !{!4246, !4247, !4248, !4249}
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4244, file: !4193, line: 45, baseType: !191, size: 32)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4244, file: !4193, line: 46, baseType: !191, size: 32, offset: 32)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4244, file: !4193, line: 47, baseType: !191, size: 32, offset: 64)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4244, file: !4193, line: 48, baseType: !191, size: 32, offset: 96)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4229, file: !4193, line: 51, baseType: !191, size: 32, offset: 192)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4229, file: !4193, line: 52, baseType: !191, size: 32, offset: 224)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4229, file: !4193, line: 55, baseType: !4253, size: 1024, offset: 256)
!4253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 1024, elements: !473)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4229, file: !4193, line: 58, baseType: !4255, size: 2048, offset: 1280)
!4255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 2048, elements: !318)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4229, file: !4193, line: 60, baseType: !4257, size: 384, offset: 3328)
!4257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 384, elements: !4258)
!4258 = !{!4259}
!4259 = !DISubrange(count: 12)
!4260 = !DIDerivedType(tag: DW_TAG_member, scope: !4229, file: !4193, line: 62, baseType: !4261, size: 384, offset: 3712)
!4261 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4229, file: !4193, line: 62, size: 384, elements: !4262)
!4262 = !{!4263, !4264}
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4261, file: !4193, line: 63, baseType: !4257, size: 384)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4261, file: !4193, line: 64, baseType: !4257, size: 384)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4211, file: !4193, line: 351, baseType: !4266, size: 1088)
!4266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4193, line: 79, size: 1088, elements: !4267)
!4267 = !{!4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4341}
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4266, file: !4193, line: 80, baseType: !191, size: 32)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4266, file: !4193, line: 81, baseType: !191, size: 32, offset: 32)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4266, file: !4193, line: 82, baseType: !191, size: 32, offset: 64)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4266, file: !4193, line: 83, baseType: !191, size: 32, offset: 96)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4266, file: !4193, line: 84, baseType: !191, size: 32, offset: 128)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4266, file: !4193, line: 85, baseType: !191, size: 32, offset: 160)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4266, file: !4193, line: 86, baseType: !191, size: 32, offset: 192)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4266, file: !4193, line: 88, baseType: !4224, size: 640, offset: 224)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4266, file: !4193, line: 89, baseType: !109, size: 8, offset: 864)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4266, file: !4193, line: 90, baseType: !109, size: 8, offset: 872)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4266, file: !4193, line: 91, baseType: !109, size: 8, offset: 880)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4266, file: !4193, line: 92, baseType: !109, size: 8, offset: 888)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4266, file: !4193, line: 93, baseType: !109, size: 8, offset: 896)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4266, file: !4193, line: 94, baseType: !109, size: 8, offset: 904)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4266, file: !4193, line: 95, baseType: !4283, size: 64, offset: 960)
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4284, size: 64)
!4284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4285, line: 11, size: 128, elements: !4286)
!4285 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4286 = !{!4287, !4288}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4284, file: !4285, line: 12, baseType: !349, size: 64)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4284, file: !4285, line: 13, baseType: !4289, size: 64, offset: 64)
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4290, size: 64)
!4290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4291, line: 103, size: 1344, elements: !4292)
!4291 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4292 = !{!4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4321, !4322, !4323}
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4290, file: !4291, line: 109, baseType: !30, size: 64)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4290, file: !4291, line: 110, baseType: !30, size: 64, offset: 64)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4290, file: !4291, line: 111, baseType: !30, size: 64, offset: 128)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4290, file: !4291, line: 112, baseType: !30, size: 64, offset: 192)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4290, file: !4291, line: 113, baseType: !30, size: 64, offset: 256)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4290, file: !4291, line: 114, baseType: !30, size: 64, offset: 320)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4290, file: !4291, line: 117, baseType: !30, size: 64, offset: 384)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4290, file: !4291, line: 118, baseType: !30, size: 64, offset: 448)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4290, file: !4291, line: 119, baseType: !30, size: 64, offset: 512)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4290, file: !4291, line: 120, baseType: !30, size: 64, offset: 576)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4290, file: !4291, line: 121, baseType: !30, size: 64, offset: 640)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4290, file: !4291, line: 122, baseType: !30, size: 64, offset: 704)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4290, file: !4291, line: 123, baseType: !30, size: 64, offset: 768)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4290, file: !4291, line: 124, baseType: !30, size: 64, offset: 832)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4290, file: !4291, line: 125, baseType: !30, size: 64, offset: 896)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4290, file: !4291, line: 139, baseType: !30, size: 64, offset: 960)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4290, file: !4291, line: 142, baseType: !30, size: 64, offset: 1024)
!4310 = !DIDerivedType(tag: DW_TAG_member, scope: !4290, file: !4291, line: 144, baseType: !4311, size: 64, offset: 1088)
!4311 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4290, file: !4291, line: 144, size: 64, elements: !4312)
!4312 = !{!4313, !4314, !4315}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4311, file: !4291, line: 146, baseType: !117, size: 16)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4311, file: !4291, line: 148, baseType: !464, size: 64)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4311, file: !4291, line: 150, baseType: !4316, size: 64)
!4316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4291, line: 59, size: 64, elements: !4317)
!4317 = !{!4318, !4319, !4320}
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4316, file: !4291, line: 61, baseType: !464, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4316, file: !4291, line: 63, baseType: !464, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4316, file: !4291, line: 65, baseType: !464, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4290, file: !4291, line: 153, baseType: !30, size: 64, offset: 1152)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4290, file: !4291, line: 154, baseType: !30, size: 64, offset: 1216)
!4323 = !DIDerivedType(tag: DW_TAG_member, scope: !4290, file: !4291, line: 156, baseType: !4324, size: 64, offset: 1280)
!4324 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4290, file: !4291, line: 156, size: 64, elements: !4325)
!4325 = !{!4326, !4327, !4328}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4324, file: !4291, line: 158, baseType: !117, size: 16)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4324, file: !4291, line: 160, baseType: !464, size: 64)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4324, file: !4291, line: 162, baseType: !4329, size: 64)
!4329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4291, line: 69, size: 64, elements: !4330)
!4330 = !{!4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340}
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4329, file: !4291, line: 71, baseType: !464, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4329, file: !4291, line: 73, baseType: !464, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4329, file: !4291, line: 75, baseType: !464, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4329, file: !4291, line: 77, baseType: !464, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4329, file: !4291, line: 80, baseType: !464, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4329, file: !4291, line: 83, baseType: !464, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4329, file: !4291, line: 86, baseType: !464, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4329, file: !4291, line: 88, baseType: !464, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4329, file: !4291, line: 93, baseType: !464, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4329, file: !4291, line: 100, baseType: !464, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4266, file: !4193, line: 96, baseType: !191, size: 32, offset: 1024)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4211, file: !4193, line: 352, baseType: !4343, size: 4608, align: 512)
!4343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4193, line: 333, size: 4608, align: 512, elements: !4344)
!4344 = !{!4345, !4346, !4353}
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4343, file: !4193, line: 334, baseType: !4229, size: 4096, align: 128)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4343, file: !4193, line: 335, baseType: !4347, size: 512, offset: 4096)
!4347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4193, line: 312, size: 512, elements: !4348)
!4348 = !{!4349, !4350, !4351}
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4347, file: !4193, line: 313, baseType: !464, size: 64)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4347, file: !4193, line: 314, baseType: !464, size: 64, offset: 64)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4347, file: !4193, line: 315, baseType: !4352, size: 384, offset: 128)
!4352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 384, elements: !1665)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4343, file: !4193, line: 336, baseType: !4354, offset: 4608)
!4354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, elements: !1575)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4211, file: !4193, line: 353, baseType: !4356, size: 32768)
!4356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 32768, elements: !4357)
!4357 = !{!4358}
!4358 = !DISubrange(count: 4096)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4192, file: !4193, line: 484, baseType: !4198, size: 64, offset: 192)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4192, file: !4193, line: 491, baseType: !4361, size: 128, offset: 256)
!4361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4193, line: 404, size: 128, elements: !4362)
!4362 = !{!4363, !4364, !4365}
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4361, file: !4193, line: 424, baseType: !464, size: 64)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4361, file: !4193, line: 432, baseType: !193, size: 32, offset: 64)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4361, file: !4193, line: 440, baseType: !193, size: 32, offset: 96)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4192, file: !4193, line: 498, baseType: !4361, size: 128, offset: 384)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4192, file: !4193, line: 508, baseType: !4199, size: 33280, align: 512, offset: 512)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3224, file: !3225, line: 16, baseType: !1560, size: 192, offset: 512)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3224, file: !3225, line: 17, baseType: !100, size: 32, offset: 704)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !543, file: !390, line: 1240, baseType: !212, size: 64, offset: 6912)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !543, file: !390, line: 1243, baseType: !191, size: 32, offset: 6976)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !543, file: !390, line: 1245, baseType: !1100, size: 64, offset: 7040)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !543, file: !390, line: 1246, baseType: !1100, size: 64, offset: 7104)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !543, file: !390, line: 1248, baseType: !192, size: 32, offset: 7168)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !543, file: !390, line: 1249, baseType: !4376, size: 64, offset: 7232)
!4376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4377, size: 64)
!4377 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !390, line: 634, flags: DIFlagFwdDecl)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !543, file: !390, line: 1252, baseType: !1296, size: 256, offset: 7296)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !543, file: !390, line: 1253, baseType: !4380, size: 128, offset: 7552)
!4380 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4381, line: 21, baseType: !4382)
!4381 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4382 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4381, line: 19, size: 128, elements: !4383)
!4383 = !{!4384}
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4382, file: !4381, line: 20, baseType: !4385, size: 128)
!4385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 128, elements: !3591)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !543, file: !390, line: 1255, baseType: !193, size: 32, offset: 7680)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !543, file: !390, line: 1261, baseType: !126, size: 256, offset: 7744)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !543, file: !390, line: 1267, baseType: !276, size: 64, offset: 8000)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !543, file: !390, line: 1269, baseType: !489, size: 64, offset: 8064)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !543, file: !390, line: 1271, baseType: !4391, size: 448, offset: 8128)
!4391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1109, line: 63, size: 448, elements: !4392)
!4392 = !{!4393, !4398, !4399, !4400, !4401, !4402, !4403}
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4391, file: !1109, line: 64, baseType: !4394, size: 64)
!4394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4395, size: 64)
!4395 = !DISubroutineType(types: !4396)
!4396 = !{!30, !4397, !1107}
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4391, size: 64)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4391, file: !1109, line: 66, baseType: !4394, size: 64, offset: 64)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4391, file: !1109, line: 69, baseType: !349, size: 64, offset: 128)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4391, file: !1109, line: 70, baseType: !104, size: 32, offset: 192)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4391, file: !1109, line: 71, baseType: !193, size: 32, offset: 224)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4391, file: !1109, line: 74, baseType: !74, size: 128, offset: 256)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4391, file: !1109, line: 85, baseType: !4404, size: 64, offset: 384)
!4404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !543, file: !390, line: 1274, baseType: !36, size: 64, offset: 8576)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !543, file: !390, line: 1280, baseType: !36, size: 64, offset: 8640)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !543, file: !390, line: 1283, baseType: !104, size: 32, offset: 8704)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !543, file: !390, line: 1286, baseType: !2014, size: 32, offset: 8736)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !543, file: !390, line: 1289, baseType: !195, size: 64, offset: 8768)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !543, file: !390, line: 1290, baseType: !958, size: 64, offset: 8832)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !543, file: !390, line: 1297, baseType: !1759, size: 64, offset: 8896)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !543, file: !390, line: 1304, baseType: !4413, size: 64, offset: 8960)
!4413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4414, line: 49, size: 64, elements: !4415)
!4414 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4415 = !{!4416}
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4413, file: !4414, line: 50, baseType: !4417, size: 64)
!4417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4418, size: 64)
!4418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4414, line: 41, size: 512, align: 512, elements: !4419)
!4419 = !{!4420, !4421, !4426}
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4418, file: !4414, line: 43, baseType: !80, size: 32)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4418, file: !4414, line: 45, baseType: !4422, size: 192, offset: 64)
!4422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4414, line: 29, size: 192, elements: !4423)
!4423 = !{!4424, !4425}
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4422, file: !4414, line: 30, baseType: !74, size: 128)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4422, file: !4414, line: 32, baseType: !349, size: 64, offset: 128)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4418, file: !4414, line: 46, baseType: !349, size: 64, offset: 256)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !543, file: !390, line: 1305, baseType: !4413, size: 64, offset: 9024)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !543, file: !390, line: 1306, baseType: !60, size: 128, align: 64, offset: 9088)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !543, file: !390, line: 1307, baseType: !163, size: 256, offset: 9216)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !543, file: !390, line: 1309, baseType: !126, size: 256, offset: 9472)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !543, file: !390, line: 1314, baseType: !104, size: 32, offset: 9728)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !543, file: !390, line: 1317, baseType: !80, size: 32, align: 512, offset: 10240)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !543, file: !390, line: 1318, baseType: !74, size: 128, offset: 10304)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !543, file: !390, line: 1320, baseType: !80, size: 32, offset: 10432)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !543, file: !390, line: 1321, baseType: !74, size: 128, offset: 10496)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !537, file: !538, line: 73, baseType: !104, size: 32, offset: 128)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !537, file: !538, line: 74, baseType: !4438, size: 64, offset: 192)
!4438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4439, size: 64)
!4439 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1606, line: 42, flags: DIFlagFwdDecl)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !491, file: !430, line: 141, baseType: !4442, size: 64, offset: 704)
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4443, size: 64)
!4443 = !DISubroutineType(types: !4444)
!4444 = !{!104, !1170, !56}
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !491, file: !430, line: 142, baseType: !4446, size: 64, offset: 768)
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4447, size: 64)
!4447 = !DISubroutineType(types: !4448)
!4448 = !{!428, !428, !4449}
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !394)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !429, file: !430, line: 96, baseType: !542, size: 64, offset: 832)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !429, file: !430, line: 97, baseType: !30, size: 64, offset: 896)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !429, file: !430, line: 98, baseType: !212, size: 64, offset: 960)
!4454 = !DIDerivedType(tag: DW_TAG_member, scope: !429, file: !430, line: 100, baseType: !4455, size: 128, offset: 1024)
!4455 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !429, file: !430, line: 100, size: 128, elements: !4456)
!4456 = !{!4457, !4458}
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4455, file: !430, line: 101, baseType: !74, size: 128)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4455, file: !430, line: 102, baseType: !4459, size: 64)
!4459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !429, file: !430, line: 104, baseType: !74, size: 128, offset: 1152)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !429, file: !430, line: 105, baseType: !74, size: 128, offset: 1280)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !429, file: !430, line: 113, baseType: !4463, size: 128, offset: 1408)
!4463 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !429, file: !430, line: 109, size: 128, elements: !4464)
!4464 = !{!4465, !4466, !4467}
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4463, file: !430, line: 110, baseType: !178, size: 128)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4463, file: !430, line: 111, baseType: !444, size: 128)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4463, file: !430, line: 112, baseType: !60, size: 128, align: 64)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !422, file: !390, line: 1968, baseType: !4469, size: 64, offset: 64)
!4469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4470, size: 64)
!4470 = !DISubroutineType(types: !4471)
!4471 = !{!276, !428, !393, !4472}
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4474, line: 10, size: 128, elements: !4475)
!4474 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4475 = !{!4476, !4477}
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4473, file: !4474, line: 11, baseType: !680, size: 64)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4473, file: !4474, line: 12, baseType: !212, size: 64, offset: 64)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !422, file: !390, line: 1969, baseType: !4479, size: 64, offset: 128)
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4480 = !DISubroutineType(types: !4481)
!4481 = !{!104, !4438, !393, !104}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !422, file: !390, line: 1970, baseType: !4483, size: 64, offset: 192)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = !DISubroutineType(types: !4485)
!4485 = !{!416, !393, !104, !56}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !422, file: !390, line: 1972, baseType: !4487, size: 64, offset: 256)
!4487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4488, size: 64)
!4488 = !DISubroutineType(types: !4489)
!4489 = !{!104, !428, !315, !104}
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !422, file: !390, line: 1974, baseType: !4491, size: 64, offset: 320)
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4492 = !DISubroutineType(types: !4493)
!4493 = !{!104, !4438, !393, !428, !355, !56}
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !422, file: !390, line: 1976, baseType: !4495, size: 64, offset: 384)
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4496, size: 64)
!4496 = !DISubroutineType(types: !4497)
!4497 = !{!104, !428, !393, !428}
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !422, file: !390, line: 1977, baseType: !4499, size: 64, offset: 448)
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4500, size: 64)
!4500 = !DISubroutineType(types: !4501)
!4501 = !{!104, !393, !428}
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !422, file: !390, line: 1978, baseType: !4503, size: 64, offset: 512)
!4503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4504, size: 64)
!4504 = !DISubroutineType(types: !4505)
!4505 = !{!104, !4438, !393, !428, !276}
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !422, file: !390, line: 1980, baseType: !4507, size: 64, offset: 576)
!4507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4508, size: 64)
!4508 = !DISubroutineType(types: !4509)
!4509 = !{!104, !4438, !393, !428, !355}
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !422, file: !390, line: 1982, baseType: !4499, size: 64, offset: 640)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !422, file: !390, line: 1983, baseType: !4512, size: 64, offset: 704)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = !DISubroutineType(types: !4514)
!4514 = !{!104, !4438, !393, !428, !355, !547}
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !422, file: !390, line: 1985, baseType: !4516, size: 64, offset: 768)
!4516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4517, size: 64)
!4517 = !DISubroutineType(types: !4518)
!4518 = !{!104, !4438, !393, !428, !393, !428, !193}
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !422, file: !390, line: 1987, baseType: !4520, size: 64, offset: 832)
!4520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4521, size: 64)
!4521 = !DISubroutineType(types: !4522)
!4522 = !{!104, !4438, !428, !4523}
!4523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4524, size: 64)
!4524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !390, line: 226, size: 640, elements: !4525)
!4525 = !{!4526, !4527, !4528, !4538, !4547, !4548, !4553, !4554, !4555}
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4524, file: !390, line: 227, baseType: !193, size: 32)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4524, file: !390, line: 228, baseType: !355, size: 16, offset: 32)
!4528 = !DIDerivedType(tag: DW_TAG_member, scope: !4524, file: !390, line: 241, baseType: !4529, size: 32, offset: 64)
!4529 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4524, file: !390, line: 241, size: 32, elements: !4530)
!4530 = !{!4531, !4532}
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4529, file: !390, line: 242, baseType: !399, size: 32)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4529, file: !390, line: 243, baseType: !4533, size: 32)
!4533 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4534, line: 16, baseType: !4535)
!4534 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4535 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4534, line: 14, size: 32, elements: !4536)
!4536 = !{!4537}
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4535, file: !4534, line: 15, baseType: !404, size: 32)
!4538 = !DIDerivedType(tag: DW_TAG_member, scope: !4524, file: !390, line: 245, baseType: !4539, size: 32, offset: 96)
!4539 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4524, file: !390, line: 245, size: 32, elements: !4540)
!4540 = !{!4541, !4542}
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4539, file: !390, line: 246, baseType: !408, size: 32)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4539, file: !390, line: 247, baseType: !4543, size: 32)
!4543 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4534, line: 20, baseType: !4544)
!4544 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4534, line: 18, size: 32, elements: !4545)
!4545 = !{!4546}
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4544, file: !4534, line: 19, baseType: !412, size: 32)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4524, file: !390, line: 249, baseType: !552, size: 64, offset: 128)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4524, file: !390, line: 250, baseType: !4549, size: 128, offset: 192)
!4549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1101, line: 13, size: 128, elements: !4550)
!4550 = !{!4551, !4552}
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4549, file: !1101, line: 14, baseType: !1100, size: 64)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4549, file: !1101, line: 15, baseType: !349, size: 64, offset: 64)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4524, file: !390, line: 251, baseType: !4549, size: 128, offset: 320)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4524, file: !390, line: 252, baseType: !4549, size: 128, offset: 448)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4524, file: !390, line: 259, baseType: !1498, size: 64, offset: 576)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !422, file: !390, line: 1988, baseType: !4557, size: 64, offset: 896)
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = !DISubroutineType(types: !4559)
!4559 = !{!104, !4438, !1170, !4560, !191, !193}
!4560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4561, size: 64)
!4561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4562, line: 22, size: 1280, elements: !4563)
!4562 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4563 = !{!4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4583, !4584}
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4561, file: !4562, line: 23, baseType: !191, size: 32)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4561, file: !4562, line: 24, baseType: !355, size: 16, offset: 32)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4561, file: !4562, line: 25, baseType: !193, size: 32, offset: 64)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4561, file: !4562, line: 26, baseType: !1644, size: 32, offset: 96)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4561, file: !4562, line: 27, baseType: !464, size: 64, offset: 128)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4561, file: !4562, line: 28, baseType: !464, size: 64, offset: 192)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4561, file: !4562, line: 41, baseType: !464, size: 64, offset: 256)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4561, file: !4562, line: 42, baseType: !547, size: 32, offset: 320)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4561, file: !4562, line: 43, baseType: !547, size: 32, offset: 352)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4561, file: !4562, line: 44, baseType: !399, size: 32, offset: 384)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4561, file: !4562, line: 45, baseType: !408, size: 32, offset: 416)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4561, file: !4562, line: 46, baseType: !552, size: 64, offset: 448)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4561, file: !4562, line: 47, baseType: !4549, size: 128, offset: 512)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4561, file: !4562, line: 48, baseType: !4549, size: 128, offset: 640)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4561, file: !4562, line: 49, baseType: !4549, size: 128, offset: 768)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4561, file: !4562, line: 50, baseType: !4549, size: 128, offset: 896)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4561, file: !4562, line: 51, baseType: !464, size: 64, offset: 1024)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4561, file: !4562, line: 52, baseType: !464, size: 64, offset: 1088)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4561, file: !4562, line: 53, baseType: !191, size: 32, offset: 1152)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4561, file: !4562, line: 54, baseType: !191, size: 32, offset: 1184)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4561, file: !4562, line: 55, baseType: !464, size: 64, offset: 1216)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !422, file: !390, line: 1990, baseType: !4586, size: 64, offset: 960)
!4586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4587, size: 64)
!4587 = !DISubroutineType(types: !4588)
!4588 = !{!345, !428, !315, !360}
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !422, file: !390, line: 1991, baseType: !4590, size: 64, offset: 1024)
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4591, size: 64)
!4591 = !DISubroutineType(types: !4592)
!4592 = !{!104, !393, !4593, !464, !464}
!4593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4594, size: 64)
!4594 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !390, line: 55, flags: DIFlagFwdDecl)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !422, file: !390, line: 1993, baseType: !4596, size: 64, offset: 1088)
!4596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4597, size: 64)
!4597 = !DISubroutineType(types: !4598)
!4598 = !{!104, !393, !104}
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !422, file: !390, line: 1994, baseType: !4600, size: 64, offset: 1152)
!4600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4601, size: 64)
!4601 = !DISubroutineType(types: !4602)
!4602 = !{!104, !393, !428, !1498, !193, !355}
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !422, file: !390, line: 1997, baseType: !4604, size: 64, offset: 1216)
!4604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4605, size: 64)
!4605 = !DISubroutineType(types: !4606)
!4606 = !{!104, !4438, !393, !1498, !355}
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !422, file: !390, line: 1999, baseType: !4608, size: 64, offset: 1280)
!4608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4609, size: 64)
!4609 = !DISubroutineType(types: !4610)
!4610 = !{!416, !4438, !428, !104}
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !422, file: !390, line: 2001, baseType: !4612, size: 64, offset: 1344)
!4612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4613, size: 64)
!4613 = !DISubroutineType(types: !4614)
!4614 = !{!104, !4438, !428, !416, !104}
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !422, file: !390, line: 2003, baseType: !4616, size: 64, offset: 1408)
!4616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4617, size: 64)
!4617 = !DISubroutineType(types: !4618)
!4618 = !{!104, !4438, !428, !4619}
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4620, size: 64)
!4620 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !390, line: 76, flags: DIFlagFwdDecl)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !422, file: !390, line: 2005, baseType: !4622, size: 64, offset: 1472)
!4622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4623, size: 64)
!4623 = !DISubroutineType(types: !4624)
!4624 = !{!104, !428, !4619}
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !422, file: !390, line: 2006, baseType: !4626, size: 64, offset: 1536)
!4626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4627, size: 64)
!4627 = !DISubroutineType(types: !4628)
!4628 = !{!4629, !393}
!4629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4630, size: 64)
!4630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !390, line: 3192, size: 192, elements: !4631)
!4631 = !{!4632, !4633}
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4630, file: !390, line: 3193, baseType: !1300, size: 128)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4630, file: !390, line: 3194, baseType: !191, size: 32, offset: 128)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !394, file: !390, line: 655, baseType: !542, size: 64, offset: 448)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !394, file: !390, line: 656, baseType: !388, size: 64, offset: 512)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !394, file: !390, line: 659, baseType: !212, size: 64, offset: 576)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !394, file: !390, line: 663, baseType: !30, size: 64, offset: 640)
!4638 = !DIDerivedType(tag: DW_TAG_member, scope: !394, file: !390, line: 671, baseType: !4639, size: 32, offset: 704)
!4639 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !394, file: !390, line: 671, size: 32, elements: !4640)
!4640 = !{!4641, !4643}
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4639, file: !390, line: 672, baseType: !4642, size: 32)
!4642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4639, file: !390, line: 673, baseType: !193, size: 32)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !394, file: !390, line: 675, baseType: !547, size: 32, offset: 736)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !394, file: !390, line: 676, baseType: !552, size: 64, offset: 768)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !394, file: !390, line: 677, baseType: !4549, size: 128, offset: 832)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !394, file: !390, line: 678, baseType: !4549, size: 128, offset: 960)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !394, file: !390, line: 679, baseType: !4549, size: 128, offset: 1088)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !394, file: !390, line: 680, baseType: !80, size: 32, offset: 1216)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !394, file: !390, line: 681, baseType: !119, size: 16, offset: 1248)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !394, file: !390, line: 682, baseType: !109, size: 8, offset: 1264)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !394, file: !390, line: 683, baseType: !109, size: 8, offset: 1272)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !394, file: !390, line: 684, baseType: !1248, size: 64, offset: 1280)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !394, file: !390, line: 691, baseType: !30, size: 64, offset: 1344)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !394, file: !390, line: 692, baseType: !1260, size: 320, offset: 1408)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !394, file: !390, line: 694, baseType: !30, size: 64, offset: 1728)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !394, file: !390, line: 695, baseType: !30, size: 64, offset: 1792)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !394, file: !390, line: 697, baseType: !178, size: 128, offset: 1856)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !394, file: !390, line: 698, baseType: !74, size: 128, offset: 1984)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !394, file: !390, line: 707, baseType: !74, size: 128, offset: 2112)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !394, file: !390, line: 708, baseType: !74, size: 128, offset: 2240)
!4662 = !DIDerivedType(tag: DW_TAG_member, scope: !394, file: !390, line: 709, baseType: !4663, size: 128, offset: 2368)
!4663 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !394, file: !390, line: 709, size: 128, elements: !4664)
!4664 = !{!4665, !4666}
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4663, file: !390, line: 710, baseType: !958, size: 64)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4663, file: !390, line: 711, baseType: !60, size: 128, align: 64)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !394, file: !390, line: 713, baseType: !38, size: 64, offset: 2496)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !394, file: !390, line: 714, baseType: !38, size: 64, offset: 2560)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !394, file: !390, line: 715, baseType: !100, size: 32, offset: 2624)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !394, file: !390, line: 716, baseType: !100, size: 32, offset: 2656)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !394, file: !390, line: 717, baseType: !100, size: 32, offset: 2688)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !394, file: !390, line: 719, baseType: !100, size: 32, offset: 2720)
!4673 = !DIDerivedType(tag: DW_TAG_member, scope: !394, file: !390, line: 721, baseType: !4674, size: 64, offset: 2752)
!4674 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !394, file: !390, line: 721, size: 64, elements: !4675)
!4675 = !{!4676, !4677}
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4674, file: !390, line: 722, baseType: !1790, size: 64)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4674, file: !390, line: 723, baseType: !981, size: 64)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !394, file: !390, line: 725, baseType: !4679, size: 64, offset: 2816)
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !390, line: 725, flags: DIFlagFwdDecl)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !394, file: !390, line: 726, baseType: !389, size: 1536, align: 64, offset: 2880)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !394, file: !390, line: 727, baseType: !74, size: 128, offset: 4416)
!4683 = !DIDerivedType(tag: DW_TAG_member, scope: !394, file: !390, line: 728, baseType: !4684, size: 64, offset: 4544)
!4684 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !394, file: !390, line: 728, size: 64, elements: !4685)
!4685 = !{!4686, !4687, !4690, !4691}
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4684, file: !390, line: 729, baseType: !1964, size: 64)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4684, file: !390, line: 730, baseType: !4688, size: 64)
!4688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4689, size: 64)
!4689 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !390, line: 730, flags: DIFlagFwdDecl)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4684, file: !390, line: 731, baseType: !315, size: 64)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4684, file: !390, line: 732, baseType: !193, size: 32)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !394, file: !390, line: 735, baseType: !192, size: 32, offset: 4608)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !394, file: !390, line: 738, baseType: !192, size: 32, offset: 4640)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !394, file: !390, line: 739, baseType: !4376, size: 64, offset: 4672)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !394, file: !390, line: 750, baseType: !212, size: 64, offset: 4736)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !389, file: !390, line: 474, baseType: !1300, size: 128, offset: 64)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !389, file: !390, line: 475, baseType: !1260, size: 320, offset: 192)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !389, file: !390, line: 476, baseType: !1112, size: 32, offset: 512)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !389, file: !390, line: 477, baseType: !100, size: 32, offset: 544)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !389, file: !390, line: 482, baseType: !2823, size: 128, offset: 576)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !389, file: !390, line: 483, baseType: !30, size: 64, offset: 704)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !389, file: !390, line: 484, baseType: !30, size: 64, offset: 768)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !389, file: !390, line: 485, baseType: !4704, size: 64, offset: 832)
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4706)
!4706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !390, line: 404, size: 1280, elements: !4707)
!4707 = !{!4708, !4712, !4782, !4786, !4790, !4796, !4800, !4804, !4808, !4812, !4816, !4820, !4821, !4832, !4836, !4840, !4845, !4849, !4855, !4856}
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4706, file: !390, line: 405, baseType: !4709, size: 64)
!4709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4710, size: 64)
!4710 = !DISubroutineType(types: !4711)
!4711 = !{!104, !1359, !993}
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4706, file: !390, line: 406, baseType: !4713, size: 64, offset: 64)
!4713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4714, size: 64)
!4714 = !DISubroutineType(types: !4715)
!4715 = !{!104, !1498, !4716}
!4716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4717, size: 64)
!4717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !1361, line: 293, size: 1536, elements: !4718)
!4718 = !{!4719, !4749, !4763}
!4719 = !DIDerivedType(tag: DW_TAG_member, scope: !4717, file: !1361, line: 295, baseType: !4720, size: 512)
!4720 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4717, file: !1361, line: 295, size: 512, elements: !4721)
!4721 = !{!4722, !4748}
!4722 = !DIDerivedType(tag: DW_TAG_member, scope: !4720, file: !1361, line: 296, baseType: !4723, size: 448)
!4723 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4720, file: !1361, line: 296, size: 448, elements: !4724)
!4724 = !{!4725, !4726, !4735, !4736, !4737, !4746, !4747}
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4723, file: !1361, line: 298, baseType: !30, size: 64)
!4726 = !DIDerivedType(tag: DW_TAG_member, scope: !4723, file: !1361, line: 299, baseType: !4727, size: 128, offset: 64)
!4727 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4723, file: !1361, line: 299, size: 128, elements: !4728)
!4728 = !{!4729, !4730}
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4727, file: !1361, line: 300, baseType: !74, size: 128)
!4730 = !DIDerivedType(tag: DW_TAG_member, scope: !4727, file: !1361, line: 302, baseType: !4731, size: 128)
!4731 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4727, file: !1361, line: 302, size: 128, elements: !4732)
!4732 = !{!4733, !4734}
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4731, file: !1361, line: 303, baseType: !212, size: 64)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4731, file: !1361, line: 305, baseType: !193, size: 32, offset: 64)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4723, file: !1361, line: 310, baseType: !388, size: 64, offset: 192)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4723, file: !1361, line: 311, baseType: !30, size: 64, offset: 256)
!4737 = !DIDerivedType(tag: DW_TAG_member, scope: !4723, file: !1361, line: 312, baseType: !4738, size: 64, offset: 320)
!4738 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4723, file: !1361, line: 312, size: 64, elements: !4739)
!4739 = !{!4740, !4741}
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4738, file: !1361, line: 313, baseType: !212, size: 64)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4738, file: !1361, line: 314, baseType: !4742, size: 64)
!4742 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !1361, line: 257, baseType: !4743)
!4743 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1361, line: 255, size: 64, elements: !4744)
!4744 = !{!4745}
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4743, file: !1361, line: 256, baseType: !30, size: 64)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4723, file: !1361, line: 316, baseType: !100, size: 32, offset: 384)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !4723, file: !1361, line: 317, baseType: !100, size: 32, offset: 416)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4720, file: !1361, line: 323, baseType: !1360, size: 512, align: 128)
!4749 = !DIDerivedType(tag: DW_TAG_member, scope: !4717, file: !1361, line: 325, baseType: !4750, size: 512, offset: 512)
!4750 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4717, file: !1361, line: 325, size: 512, elements: !4751)
!4751 = !{!4752, !4762}
!4752 = !DIDerivedType(tag: DW_TAG_member, scope: !4750, file: !1361, line: 326, baseType: !4753, size: 320)
!4753 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4750, file: !1361, line: 326, size: 320, elements: !4754)
!4754 = !{!4755, !4756, !4757, !4758, !4759, !4760, !4761}
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4753, file: !1361, line: 327, baseType: !30, size: 64)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4753, file: !1361, line: 328, baseType: !30, size: 64, offset: 64)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4753, file: !1361, line: 329, baseType: !30, size: 64, offset: 128)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4753, file: !1361, line: 331, baseType: !100, size: 32, offset: 192)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4753, file: !1361, line: 332, baseType: !100, size: 32, offset: 224)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4753, file: !1361, line: 333, baseType: !100, size: 32, offset: 256)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4753, file: !1361, line: 335, baseType: !193, size: 32, offset: 288)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4750, file: !1361, line: 339, baseType: !1360, size: 512, align: 128)
!4763 = !DIDerivedType(tag: DW_TAG_member, scope: !4717, file: !1361, line: 341, baseType: !4764, size: 512, offset: 1024)
!4764 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4717, file: !1361, line: 341, size: 512, elements: !4765)
!4765 = !{!4766, !4775, !4781}
!4766 = !DIDerivedType(tag: DW_TAG_member, scope: !4764, file: !1361, line: 342, baseType: !4767, size: 384)
!4767 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4764, file: !1361, line: 342, size: 384, elements: !4768)
!4768 = !{!4769, !4770, !4771, !4772, !4773, !4774}
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4767, file: !1361, line: 343, baseType: !30, size: 64)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4767, file: !1361, line: 344, baseType: !30, size: 64, offset: 64)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4767, file: !1361, line: 346, baseType: !212, size: 64, offset: 128)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4767, file: !1361, line: 347, baseType: !212, size: 64, offset: 192)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4767, file: !1361, line: 348, baseType: !212, size: 64, offset: 256)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4767, file: !1361, line: 349, baseType: !212, size: 64, offset: 320)
!4775 = !DIDerivedType(tag: DW_TAG_member, scope: !4764, file: !1361, line: 352, baseType: !4776, size: 256)
!4776 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4764, file: !1361, line: 352, size: 256, elements: !4777)
!4777 = !{!4778, !4779, !4780}
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4776, file: !1361, line: 353, baseType: !30, size: 64)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4776, file: !1361, line: 354, baseType: !30, size: 64, offset: 64)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4776, file: !1361, line: 356, baseType: !74, size: 128, offset: 128)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4764, file: !1361, line: 359, baseType: !1360, size: 512, align: 128)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4706, file: !390, line: 409, baseType: !4783, size: 64, offset: 128)
!4783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4784, size: 64)
!4784 = !DISubroutineType(types: !4785)
!4785 = !{!104, !388, !993}
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4706, file: !390, line: 412, baseType: !4787, size: 64, offset: 192)
!4787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4788, size: 64)
!4788 = !DISubroutineType(types: !4789)
!4789 = !{!56, !388, !4716}
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4706, file: !390, line: 414, baseType: !4791, size: 64, offset: 256)
!4791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4792, size: 64)
!4792 = !DISubroutineType(types: !4793)
!4793 = !{null, !4794}
!4794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4795, size: 64)
!4795 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !390, line: 310, flags: DIFlagFwdDecl)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4706, file: !390, line: 416, baseType: !4797, size: 64, offset: 320)
!4797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4798, size: 64)
!4798 = !DISubroutineType(types: !4799)
!4799 = !{!104, !1498, !388, !552, !193, !4125, !1979}
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4706, file: !390, line: 419, baseType: !4801, size: 64, offset: 384)
!4801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4802, size: 64)
!4802 = !DISubroutineType(types: !4803)
!4803 = !{!104, !1498, !388, !552, !193, !193, !1359, !212}
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4706, file: !390, line: 424, baseType: !4805, size: 64, offset: 448)
!4805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4806, size: 64)
!4806 = !DISubroutineType(types: !4807)
!4807 = !{!1286, !388, !1286}
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4706, file: !390, line: 425, baseType: !4809, size: 64, offset: 512)
!4809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4810, size: 64)
!4810 = !DISubroutineType(types: !4811)
!4811 = !{null, !4716, !360, !360}
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4706, file: !390, line: 426, baseType: !4813, size: 64, offset: 576)
!4813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4814, size: 64)
!4814 = !DISubroutineType(types: !4815)
!4815 = !{!56, !4716, !1112}
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4706, file: !390, line: 427, baseType: !4817, size: 64, offset: 640)
!4817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4818, size: 64)
!4818 = !DISubroutineType(types: !4819)
!4819 = !{null, !4716}
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4706, file: !390, line: 428, baseType: !1809, size: 64, offset: 704)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4706, file: !390, line: 433, baseType: !4822, size: 64, offset: 768)
!4822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4823, size: 64)
!4823 = !DISubroutineType(types: !4824)
!4824 = !{!104, !388, !4716, !4716, !4825}
!4825 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !4826, line: 15, baseType: !193, size: 32, elements: !4827)
!4826 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!4827 = !{!4828, !4829, !4830, !4831}
!4828 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!4829 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!4830 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!4831 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4706, file: !390, line: 435, baseType: !4833, size: 64, offset: 832)
!4833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4834, size: 64)
!4834 = !DISubroutineType(types: !4835)
!4835 = !{!104, !4716}
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4706, file: !390, line: 436, baseType: !4837, size: 64, offset: 896)
!4837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4838, size: 64)
!4838 = !DISubroutineType(types: !4839)
!4839 = !{!56, !4716, !360, !360}
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4706, file: !390, line: 438, baseType: !4841, size: 64, offset: 960)
!4841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4842, size: 64)
!4842 = !DISubroutineType(types: !4843)
!4843 = !{null, !4716, !4844, !4844}
!4844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4706, file: !390, line: 439, baseType: !4846, size: 64, offset: 1024)
!4846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4847, size: 64)
!4847 = !DISubroutineType(types: !4848)
!4848 = !{!104, !388, !1359}
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4706, file: !390, line: 442, baseType: !4850, size: 64, offset: 1088)
!4850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4851, size: 64)
!4851 = !DISubroutineType(types: !4852)
!4852 = !{!104, !4853, !1498, !2459}
!4853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4854, size: 64)
!4854 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !390, line: 66, flags: DIFlagFwdDecl)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4706, file: !390, line: 444, baseType: !1971, size: 64, offset: 1152)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4706, file: !390, line: 445, baseType: !4857, size: 64, offset: 1216)
!4857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4858, size: 64)
!4858 = !DISubroutineType(types: !4859)
!4859 = !{!104, !1812, !1834}
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !389, file: !390, line: 486, baseType: !30, size: 64, offset: 896)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !389, file: !390, line: 487, baseType: !1260, size: 320, offset: 960)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !389, file: !390, line: 488, baseType: !2014, size: 32, offset: 1280)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !389, file: !390, line: 489, baseType: !80, size: 32, offset: 1312)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !389, file: !390, line: 490, baseType: !74, size: 128, offset: 1344)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !389, file: !390, line: 491, baseType: !212, size: 64, offset: 1472)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !379, file: !339, line: 180, baseType: !4867, size: 64, offset: 320)
!4867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4868, size: 64)
!4868 = !DISubroutineType(types: !4869)
!4869 = !{!345, !1498, !280, !378, !315, !552, !360}
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !379, file: !339, line: 182, baseType: !4867, size: 64, offset: 384)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !379, file: !339, line: 184, baseType: !4872, size: 64, offset: 448)
!4872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4873, size: 64)
!4873 = !DISubroutineType(types: !4874)
!4874 = !{!104, !1498, !280, !378, !1458}
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !367, file: !339, line: 90, baseType: !4876, size: 64, offset: 192)
!4876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !367, file: !339, line: 91, baseType: !4878, size: 64, offset: 256)
!4878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !329, file: !273, line: 120, baseType: !4880, size: 64, offset: 192)
!4880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4881, size: 64)
!4881 = !DISubroutineType(types: !4882)
!4882 = !{!3077, !298}
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !329, file: !273, line: 121, baseType: !4884, size: 64, offset: 256)
!4884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4885, size: 64)
!4885 = !DISubroutineType(types: !4886)
!4886 = !{!2105, !298}
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !329, file: !273, line: 122, baseType: !4888, size: 64, offset: 320)
!4888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4889, size: 64)
!4889 = !DISubroutineType(types: !4890)
!4890 = !{null, !298, !2577, !2578}
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !272, file: !273, line: 70, baseType: !4892, size: 64, offset: 384)
!4892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4893, size: 64)
!4893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !4894, line: 190, size: 1152, elements: !4895)
!4894 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!4895 = !{!4896, !4897, !4898, !4899, !4900, !4901, !4902, !4903, !4987, !4988, !4989, !4990, !4991, !4994}
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4893, file: !4894, line: 191, baseType: !100, size: 32)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4893, file: !4894, line: 192, baseType: !100, size: 32, offset: 32)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4893, file: !4894, line: 202, baseType: !4892, size: 64, offset: 64)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4893, file: !4894, line: 203, baseType: !276, size: 64, offset: 128)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4893, file: !4894, line: 205, baseType: !746, size: 192, align: 64, offset: 192)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4893, file: !4894, line: 207, baseType: !2105, size: 64, offset: 384)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4893, file: !4894, line: 208, baseType: !193, size: 32, offset: 448)
!4903 = !DIDerivedType(tag: DW_TAG_member, scope: !4893, file: !4894, line: 209, baseType: !4904, size: 256, offset: 512)
!4904 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4893, file: !4894, line: 209, size: 256, elements: !4905)
!4905 = !{!4906, !4915, !4919}
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4904, file: !4894, line: 210, baseType: !4907, size: 256)
!4907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !4894, line: 153, size: 256, elements: !4908)
!4908 = !{!4909, !4910, !4911, !4914}
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4907, file: !4894, line: 154, baseType: !30, size: 64)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4907, file: !4894, line: 156, baseType: !2826, size: 64, offset: 64)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4907, file: !4894, line: 162, baseType: !4912, size: 64, offset: 128)
!4912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4913, size: 64)
!4913 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !4894, line: 162, flags: DIFlagFwdDecl)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4907, file: !4894, line: 167, baseType: !30, size: 64, offset: 192)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4904, file: !4894, line: 211, baseType: !4916, size: 64)
!4916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !4894, line: 170, size: 64, elements: !4917)
!4917 = !{!4918}
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4916, file: !4894, line: 171, baseType: !4892, size: 64)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4904, file: !4894, line: 212, baseType: !4920, size: 256)
!4920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !4894, line: 174, size: 256, elements: !4921)
!4921 = !{!4922, !4982, !4985, !4986}
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4920, file: !4894, line: 175, baseType: !4923, size: 64)
!4923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4924, size: 64)
!4924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4925)
!4925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !4894, line: 271, size: 768, elements: !4926)
!4926 = !{!4927, !4947, !4951, !4955, !4959, !4963, !4967, !4971, !4972, !4973, !4974, !4978}
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4925, file: !4894, line: 276, baseType: !4928, size: 64)
!4928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4929, size: 64)
!4929 = !DISubroutineType(types: !4930)
!4930 = !{!104, !4931}
!4931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4932, size: 64)
!4932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !4894, line: 251, size: 1216, elements: !4933)
!4933 = !{!4934, !4935, !4936, !4937, !4938, !4939, !4940, !4941, !4942, !4943, !4944, !4945, !4946}
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4932, file: !4894, line: 253, baseType: !4892, size: 64)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4932, file: !4894, line: 254, baseType: !1498, size: 64, offset: 64)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4932, file: !4894, line: 255, baseType: !1034, size: 64, offset: 128)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4932, file: !4894, line: 256, baseType: !212, size: 64, offset: 192)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4932, file: !4894, line: 259, baseType: !126, size: 256, offset: 256)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4932, file: !4894, line: 260, baseType: !126, size: 256, offset: 512)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4932, file: !4894, line: 261, baseType: !104, size: 32, offset: 768)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4932, file: !4894, line: 262, baseType: !74, size: 128, offset: 832)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4932, file: !4894, line: 263, baseType: !315, size: 64, offset: 960)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4932, file: !4894, line: 265, baseType: !360, size: 64, offset: 1024)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4932, file: !4894, line: 266, baseType: !56, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4932, file: !4894, line: 267, baseType: !56, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4932, file: !4894, line: 268, baseType: !2175, size: 64, offset: 1152)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4925, file: !4894, line: 277, baseType: !4948, size: 64, offset: 64)
!4948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4949, size: 64)
!4949 = !DISubroutineType(types: !4950)
!4950 = !{null, !4931}
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4925, file: !4894, line: 290, baseType: !4952, size: 64, offset: 128)
!4952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4953, size: 64)
!4953 = !DISubroutineType(types: !4954)
!4954 = !{!104, !1034, !212}
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4925, file: !4894, line: 292, baseType: !4956, size: 64, offset: 192)
!4956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4957, size: 64)
!4957 = !DISubroutineType(types: !4958)
!4958 = !{!212, !1034, !1803}
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4925, file: !4894, line: 293, baseType: !4960, size: 64, offset: 256)
!4960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4961, size: 64)
!4961 = !DISubroutineType(types: !4962)
!4962 = !{!212, !1034, !212, !1803}
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4925, file: !4894, line: 294, baseType: !4964, size: 64, offset: 320)
!4964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4965, size: 64)
!4965 = !DISubroutineType(types: !4966)
!4966 = !{null, !1034, !212}
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4925, file: !4894, line: 296, baseType: !4968, size: 64, offset: 384)
!4968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4969, size: 64)
!4969 = !DISubroutineType(types: !4970)
!4970 = !{!345, !4931, !315, !360, !552}
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4925, file: !4894, line: 306, baseType: !360, size: 64, offset: 448)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4925, file: !4894, line: 313, baseType: !56, size: 8, offset: 512)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4925, file: !4894, line: 314, baseType: !4968, size: 64, offset: 576)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4925, file: !4894, line: 317, baseType: !4975, size: 64, offset: 640)
!4975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4976, size: 64)
!4976 = !DISubroutineType(types: !4977)
!4977 = !{!1916, !4931, !1918}
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4925, file: !4894, line: 320, baseType: !4979, size: 64, offset: 704)
!4979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4980, size: 64)
!4980 = !DISubroutineType(types: !4981)
!4981 = !{!104, !4931, !1458}
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4920, file: !4894, line: 176, baseType: !4983, size: 64, offset: 64)
!4983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4984, size: 64)
!4984 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !4894, line: 35, flags: DIFlagFwdDecl)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4920, file: !4894, line: 177, baseType: !552, size: 64, offset: 128)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4920, file: !4894, line: 178, baseType: !4892, size: 64, offset: 192)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4893, file: !4894, line: 215, baseType: !212, size: 64, offset: 768)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4893, file: !4894, line: 221, baseType: !464, size: 64, offset: 832)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4893, file: !4894, line: 223, baseType: !119, size: 16, offset: 896)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4893, file: !4894, line: 224, baseType: !355, size: 16, offset: 912)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4893, file: !4894, line: 225, baseType: !4992, size: 64, offset: 960)
!4992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4993, size: 64)
!4993 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !4894, line: 36, flags: DIFlagFwdDecl)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4893, file: !4894, line: 227, baseType: !60, size: 128, align: 64, offset: 1024)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !272, file: !273, line: 71, baseType: !4996, size: 32, offset: 448)
!4996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4997, line: 19, size: 32, elements: !4998)
!4997 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4998 = !{!4999}
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4996, file: !4997, line: 20, baseType: !1549, size: 32)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !272, file: !273, line: 73, baseType: !193, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !272, file: !273, line: 74, baseType: !193, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !272, file: !273, line: 75, baseType: !193, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !272, file: !273, line: 76, baseType: !193, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !272, file: !273, line: 77, baseType: !193, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ctx", scope: !269, file: !251, line: 12, baseType: !249, size: 64, offset: 512)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !250, file: !251, line: 30, baseType: !272, size: 512, offset: 960)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_busy", scope: !150, file: !14, line: 361, baseType: !193, size: 32, offset: 1984)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !150, file: !14, line: 364, baseType: !119, size: 16, offset: 2016)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ctx", scope: !150, file: !14, line: 366, baseType: !119, size: 16, offset: 2032)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "ctxs", scope: !150, file: !14, line: 368, baseType: !5011, size: 64, offset: 2048)
!5011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_wait_lock", scope: !150, file: !14, line: 371, baseType: !80, size: 32, offset: 2112)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_wait", scope: !150, file: !14, line: 376, baseType: !5014, size: 320, offset: 2176)
!5014 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !1561, line: 14, baseType: !5015)
!5015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !1561, line: 30, size: 320, elements: !5016)
!5016 = !{!5017, !5018, !5019, !5025}
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5015, file: !1561, line: 31, baseType: !193, size: 32)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5015, file: !1561, line: 32, baseType: !212, size: 64, offset: 64)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5015, file: !1561, line: 33, baseType: !5020, size: 64, offset: 128)
!5020 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !1561, line: 16, baseType: !5021)
!5021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5022, size: 64)
!5022 = !DISubroutineType(types: !5023)
!5023 = !{!104, !5024, !193, !104, !212}
!5024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5015, size: 64)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5015, file: !1561, line: 34, baseType: !74, size: 128, offset: 192)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !150, file: !14, line: 382, baseType: !100, size: 32, offset: 2496)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "tags", scope: !150, file: !14, line: 388, baseType: !5028, size: 64, offset: 2560)
!5028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5029, size: 64)
!5029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tags", file: !14, line: 735, size: 1472, elements: !5030)
!5030 = !{!5031, !5032, !5033, !5034, !5049, !5050, !5052, !5053, !5054}
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tags", scope: !5029, file: !14, line: 736, baseType: !193, size: 32)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "nr_reserved_tags", scope: !5029, file: !14, line: 737, baseType: !193, size: 32, offset: 32)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "active_queues", scope: !5029, file: !14, line: 738, baseType: !193, size: 32, offset: 64)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap_tags", scope: !5029, file: !14, line: 740, baseType: !5035, size: 512, offset: 128)
!5035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbitmap_queue", file: !233, line: 109, size: 512, elements: !5036)
!5036 = !{!5037, !5038, !5039, !5040, !5045, !5046, !5047, !5048}
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "sb", scope: !5035, file: !233, line: 113, baseType: !232, size: 256)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "wake_batch", scope: !5035, file: !233, line: 119, baseType: !193, size: 32, offset: 256)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "wake_index", scope: !5035, file: !233, line: 124, baseType: !100, size: 32, offset: 288)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !5035, file: !233, line: 129, baseType: !5041, size: 64, offset: 320)
!5041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5042, size: 64)
!5042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbq_wait_state", file: !233, line: 93, size: 512, align: 512, elements: !5043)
!5043 = !{!5044}
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !5042, file: !233, line: 97, baseType: !1560, size: 192)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "ws_active", scope: !5035, file: !233, line: 134, baseType: !100, size: 32, offset: 384)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "min_shallow_depth", scope: !5035, file: !233, line: 140, baseType: !193, size: 32, offset: 416)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "completion_cnt", scope: !5035, file: !233, line: 146, baseType: !100, size: 32, offset: 448)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_cnt", scope: !5035, file: !233, line: 151, baseType: !100, size: 32, offset: 480)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "breserved_tags", scope: !5029, file: !14, line: 741, baseType: !5035, size: 512, offset: 640)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "rqs", scope: !5029, file: !14, line: 743, baseType: !5051, size: 64, offset: 1152)
!5051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "static_rqs", scope: !5029, file: !14, line: 744, baseType: !5051, size: 64, offset: 1216)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "page_list", scope: !5029, file: !14, line: 745, baseType: !74, size: 128, offset: 1280)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5029, file: !14, line: 751, baseType: !80, size: 32, offset: 1408)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "sched_tags", scope: !150, file: !14, line: 394, baseType: !5028, size: 64, offset: 2624)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !150, file: !14, line: 397, baseType: !30, size: 64, offset: 2688)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !150, file: !14, line: 400, baseType: !193, size: 32, offset: 2752)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "queue_num", scope: !150, file: !14, line: 402, baseType: !193, size: 32, offset: 2784)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active", scope: !150, file: !14, line: 408, baseType: !100, size: 32, offset: 2816)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_online", scope: !150, file: !14, line: 411, baseType: !178, size: 128, offset: 2880)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !150, file: !14, line: 413, baseType: !178, size: 128, offset: 3008)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !150, file: !14, line: 415, baseType: !272, size: 512, offset: 3136)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !150, file: !14, line: 422, baseType: !428, size: 64, offset: 3648)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "sched_debugfs_dir", scope: !150, file: !14, line: 424, baseType: !428, size: 64, offset: 3712)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_list", scope: !150, file: !14, line: 431, baseType: !74, size: 128, offset: 3776)
!5066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5067, size: 64)
!5067 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5068)
!5068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_queue_data", file: !14, line: 526, size: 128, elements: !5069)
!5069 = !{!5070, !5071}
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "rq", scope: !5068, file: !14, line: 527, baseType: !12, size: 64)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !5068, file: !14, line: 528, baseType: !56, size: 8, offset: 64)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "commit_rqs", scope: !141, file: !14, line: 551, baseType: !5073, size: 64, offset: 64)
!5073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5074, size: 64)
!5074 = !DISubroutineType(types: !5075)
!5075 = !{null, !149}
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "queue_rqs", scope: !141, file: !14, line: 559, baseType: !5077, size: 64, offset: 128)
!5077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5078, size: 64)
!5078 = !DISubroutineType(types: !5079)
!5079 = !{null, !5051}
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "get_budget", scope: !141, file: !14, line: 567, baseType: !5081, size: 64, offset: 192)
!5081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5082, size: 64)
!5082 = !DISubroutineType(types: !5083)
!5083 = !{!104, !17}
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "put_budget", scope: !141, file: !14, line: 572, baseType: !5085, size: 64, offset: 256)
!5085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5086, size: 64)
!5086 = !DISubroutineType(types: !5087)
!5087 = !{null, !17, !104}
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "set_rq_budget_token", scope: !141, file: !14, line: 577, baseType: !5089, size: 64, offset: 320)
!5089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5090, size: 64)
!5090 = !DISubroutineType(types: !5091)
!5091 = !{null, !12, !104}
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "get_rq_budget_token", scope: !141, file: !14, line: 581, baseType: !5093, size: 64, offset: 384)
!5093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5094, size: 64)
!5094 = !DISubroutineType(types: !5095)
!5095 = !{!104, !12}
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !141, file: !14, line: 586, baseType: !5097, size: 64, offset: 448)
!5097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5098, size: 64)
!5098 = !DISubroutineType(types: !5099)
!5099 = !{!5100, !12}
!5100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_eh_timer_return", file: !14, line: 276, baseType: !193, size: 32, elements: !5101)
!5101 = !{!5102, !5103}
!5102 = !DIEnumerator(name: "BLK_EH_DONE", value: 0)
!5103 = !DIEnumerator(name: "BLK_EH_RESET_TIMER", value: 1)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !141, file: !14, line: 591, baseType: !5105, size: 64, offset: 512)
!5105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5106, size: 64)
!5106 = !DISubroutineType(types: !5107)
!5107 = !{!104, !149, !1890}
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !141, file: !14, line: 596, baseType: !5109, size: 64, offset: 576)
!5109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5110, size: 64)
!5110 = !DISubroutineType(types: !5111)
!5111 = !{null, !12}
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "init_hctx", scope: !141, file: !14, line: 603, baseType: !5113, size: 64, offset: 640)
!5113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5114, size: 64)
!5114 = !DISubroutineType(types: !5115)
!5115 = !{!104, !149, !212, !193}
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "exit_hctx", scope: !141, file: !14, line: 607, baseType: !5117, size: 64, offset: 704)
!5117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5118, size: 64)
!5118 = !DISubroutineType(types: !5119)
!5119 = !{null, !149, !193}
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "init_request", scope: !141, file: !14, line: 616, baseType: !5121, size: 64, offset: 768)
!5121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5122, size: 64)
!5122 = !DISubroutineType(types: !5123)
!5123 = !{!104, !5124, !12, !193, !193}
!5124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5125, size: 64)
!5125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tag_set", file: !14, line: 498, size: 1344, elements: !5126)
!5126 = !{!5127, !5128, !5135, !5136, !5137, !5138, !5139, !5140, !5141, !5142, !5143, !5144, !5146, !5147, !5148, !5149}
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5125, file: !14, line: 499, baseType: !139, size: 64)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !5125, file: !14, line: 500, baseType: !5129, size: 384, offset: 64)
!5129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5130, size: 384, elements: !259)
!5130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_queue_map", file: !14, line: 444, size: 128, elements: !5131)
!5131 = !{!5132, !5133, !5134}
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "mq_map", scope: !5130, file: !14, line: 445, baseType: !247, size: 64)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "nr_queues", scope: !5130, file: !14, line: 446, baseType: !193, size: 32, offset: 64)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "queue_offset", scope: !5130, file: !14, line: 447, baseType: !193, size: 32, offset: 96)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "nr_maps", scope: !5125, file: !14, line: 501, baseType: !193, size: 32, offset: 448)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !5125, file: !14, line: 502, baseType: !193, size: 32, offset: 480)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !5125, file: !14, line: 503, baseType: !193, size: 32, offset: 512)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_tags", scope: !5125, file: !14, line: 504, baseType: !193, size: 32, offset: 544)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_size", scope: !5125, file: !14, line: 505, baseType: !193, size: 32, offset: 576)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !5125, file: !14, line: 506, baseType: !104, size: 32, offset: 608)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !5125, file: !14, line: 507, baseType: !193, size: 32, offset: 640)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5125, file: !14, line: 508, baseType: !193, size: 32, offset: 672)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !5125, file: !14, line: 509, baseType: !212, size: 64, offset: 704)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "tags", scope: !5125, file: !14, line: 511, baseType: !5145, size: 64, offset: 768)
!5145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5028, size: 64)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "shared_tags", scope: !5125, file: !14, line: 513, baseType: !5028, size: 64, offset: 832)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "tag_list_lock", scope: !5125, file: !14, line: 515, baseType: !126, size: 256, offset: 896)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "tag_list", scope: !5125, file: !14, line: 516, baseType: !74, size: 128, offset: 1152)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "srcu", scope: !5125, file: !14, line: 517, baseType: !832, size: 64, offset: 1280)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "exit_request", scope: !141, file: !14, line: 621, baseType: !5151, size: 64, offset: 832)
!5151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5152, size: 64)
!5152 = !DISubroutineType(types: !5153)
!5153 = !{null, !5124, !12, !193}
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_rq", scope: !141, file: !14, line: 628, baseType: !5109, size: 64, offset: 896)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !141, file: !14, line: 633, baseType: !5156, size: 64, offset: 960)
!5156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5157, size: 64)
!5157 = !DISubroutineType(types: !5158)
!5158 = !{!56, !17}
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "map_queues", scope: !141, file: !14, line: 639, baseType: !5160, size: 64, offset: 1024)
!5160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5161, size: 64)
!5161 = !DISubroutineType(types: !5162)
!5162 = !{null, !5124}
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "show_rq", scope: !141, file: !14, line: 646, baseType: !5164, size: 64, offset: 1088)
!5164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5165, size: 64)
!5165 = !DISubroutineType(types: !5166)
!5166 = !{null, !1034, !12}
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ctx", scope: !18, file: !19, line: 404, baseType: !249, size: 64, offset: 704)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !18, file: !19, line: 406, baseType: !193, size: 32, offset: 768)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_table", scope: !18, file: !19, line: 409, baseType: !1300, size: 128, offset: 832)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !18, file: !19, line: 410, baseType: !193, size: 32, offset: 960)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "queuedata", scope: !18, file: !19, line: 416, baseType: !212, size: 64, offset: 1024)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "queue_flags", scope: !18, file: !19, line: 421, baseType: !30, size: 64, offset: 1088)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "pm_only", scope: !18, file: !19, line: 426, baseType: !100, size: 32, offset: 1152)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !18, file: !19, line: 432, baseType: !104, size: 32, offset: 1184)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "queue_lock", scope: !18, file: !19, line: 434, baseType: !80, size: 32, offset: 1216)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "disk", scope: !18, file: !19, line: 436, baseType: !1289, size: 64, offset: 1280)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !18, file: !19, line: 438, baseType: !1549, size: 32, offset: 1344)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "mq_kobj", scope: !18, file: !19, line: 443, baseType: !280, size: 64, offset: 1408)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !18, file: !19, line: 450, baseType: !2555, size: 64, offset: 1472)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_status", scope: !18, file: !19, line: 451, baseType: !2867, size: 32, offset: 1536)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "nr_requests", scope: !18, file: !19, line: 457, baseType: !30, size: 64, offset: 1600)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pad_mask", scope: !18, file: !19, line: 459, baseType: !193, size: 32, offset: 1664)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "rq_timeout", scope: !18, file: !19, line: 466, baseType: !193, size: 32, offset: 1696)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !18, file: !19, line: 468, baseType: !174, size: 320, offset: 1728)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_work", scope: !18, file: !19, line: 469, baseType: !163, size: 256, offset: 2048)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active_requests_shared_tags", scope: !18, file: !19, line: 471, baseType: !100, size: 32, offset: 2304)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "sched_shared_tags", scope: !18, file: !19, line: 473, baseType: !5028, size: 64, offset: 2368)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !18, file: !19, line: 475, baseType: !74, size: 128, offset: 2432)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_pols", scope: !18, file: !19, line: 477, baseType: !205, size: 64, offset: 2560)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "root_blkg", scope: !18, file: !19, line: 478, baseType: !1342, size: 64, offset: 2624)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "blkg_list", scope: !18, file: !19, line: 479, baseType: !74, size: 128, offset: 2688)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_mutex", scope: !18, file: !19, line: 480, baseType: !126, size: 256, offset: 2816)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !18, file: !19, line: 483, baseType: !5194, size: 960, offset: 3072)
!5194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_limits", file: !19, line: 300, size: 960, elements: !5195)
!5195 = !{!5196, !5201, !5202, !5203, !5204, !5205, !5206, !5207, !5208, !5209, !5210, !5211, !5212, !5213, !5214, !5215, !5216, !5217, !5218, !5219, !5220, !5221, !5222, !5223, !5224, !5225, !5226, !5227, !5228, !5234}
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "bounce", scope: !5194, file: !19, line: 301, baseType: !5197, size: 32)
!5197 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_bounce", file: !19, line: 295, baseType: !193, size: 32, elements: !5198)
!5198 = !{!5199, !5200}
!5199 = !DIEnumerator(name: "BLK_BOUNCE_NONE", value: 0)
!5200 = !DIEnumerator(name: "BLK_BOUNCE_HIGH", value: 1)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "seg_boundary_mask", scope: !5194, file: !19, line: 302, baseType: !30, size: 64, offset: 64)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !5194, file: !19, line: 303, baseType: !30, size: 64, offset: 128)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_sectors", scope: !5194, file: !19, line: 305, baseType: !193, size: 32, offset: 192)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "max_dev_sectors", scope: !5194, file: !19, line: 306, baseType: !193, size: 32, offset: 224)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_sectors", scope: !5194, file: !19, line: 307, baseType: !193, size: 32, offset: 256)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !5194, file: !19, line: 308, baseType: !193, size: 32, offset: 288)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "max_user_sectors", scope: !5194, file: !19, line: 309, baseType: !193, size: 32, offset: 320)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !5194, file: !19, line: 310, baseType: !193, size: 32, offset: 352)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "physical_block_size", scope: !5194, file: !19, line: 311, baseType: !193, size: 32, offset: 384)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "logical_block_size", scope: !5194, file: !19, line: 312, baseType: !193, size: 32, offset: 416)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_offset", scope: !5194, file: !19, line: 313, baseType: !193, size: 32, offset: 448)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "io_min", scope: !5194, file: !19, line: 314, baseType: !193, size: 32, offset: 480)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "io_opt", scope: !5194, file: !19, line: 315, baseType: !193, size: 32, offset: 512)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_sectors", scope: !5194, file: !19, line: 316, baseType: !193, size: 32, offset: 544)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_discard_sectors", scope: !5194, file: !19, line: 317, baseType: !193, size: 32, offset: 576)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "max_secure_erase_sectors", scope: !5194, file: !19, line: 318, baseType: !193, size: 32, offset: 608)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_zeroes_sectors", scope: !5194, file: !19, line: 319, baseType: !193, size: 32, offset: 640)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "max_zone_append_sectors", scope: !5194, file: !19, line: 320, baseType: !193, size: 32, offset: 672)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "discard_granularity", scope: !5194, file: !19, line: 321, baseType: !193, size: 32, offset: 704)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "discard_alignment", scope: !5194, file: !19, line: 322, baseType: !193, size: 32, offset: 736)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "zone_write_granularity", scope: !5194, file: !19, line: 323, baseType: !193, size: 32, offset: 768)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "max_segments", scope: !5194, file: !19, line: 325, baseType: !119, size: 16, offset: 800)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "max_integrity_segments", scope: !5194, file: !19, line: 326, baseType: !119, size: 16, offset: 816)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_segments", scope: !5194, file: !19, line: 327, baseType: !119, size: 16, offset: 832)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "misaligned", scope: !5194, file: !19, line: 329, baseType: !111, size: 8, offset: 848)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "discard_misaligned", scope: !5194, file: !19, line: 330, baseType: !111, size: 8, offset: 856)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "raid_partial_stripes_expensive", scope: !5194, file: !19, line: 331, baseType: !111, size: 8, offset: 864)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "zoned", scope: !5194, file: !19, line: 332, baseType: !5229, size: 32, offset: 896)
!5229 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_zoned_model", file: !19, line: 285, baseType: !193, size: 32, elements: !5230)
!5230 = !{!5231, !5232, !5233}
!5231 = !DIEnumerator(name: "BLK_ZONED_NONE", value: 0)
!5232 = !DIEnumerator(name: "BLK_ZONED_HA", value: 1)
!5233 = !DIEnumerator(name: "BLK_ZONED_HM", value: 2)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alignment", scope: !5194, file: !19, line: 339, baseType: !193, size: 32, offset: 928)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "required_elevator_features", scope: !18, file: !19, line: 485, baseType: !193, size: 32, offset: 4032)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !18, file: !19, line: 487, baseType: !104, size: 32, offset: 4064)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "blk_trace", scope: !18, file: !19, line: 489, baseType: !5238, size: 64, offset: 4096)
!5238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5239, size: 64)
!5239 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_trace", file: !19, line: 31, flags: DIFlagFwdDecl)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !18, file: !19, line: 494, baseType: !215, size: 64, offset: 4160)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "flush_list", scope: !18, file: !19, line: 495, baseType: !74, size: 128, offset: 4224)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_list", scope: !18, file: !19, line: 497, baseType: !74, size: 128, offset: 4352)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_lock", scope: !18, file: !19, line: 498, baseType: !80, size: 32, offset: 4480)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_work", scope: !18, file: !19, line: 499, baseType: !159, size: 704, offset: 4544)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !18, file: !19, line: 501, baseType: !126, size: 256, offset: 5248)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_dir_lock", scope: !18, file: !19, line: 502, baseType: !126, size: 256, offset: 5504)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_list", scope: !18, file: !19, line: 508, baseType: !74, size: 128, offset: 5760)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_lock", scope: !18, file: !19, line: 509, baseType: !80, size: 32, offset: 5888)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_depth", scope: !18, file: !19, line: 511, baseType: !104, size: 32, offset: 5920)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !18, file: !19, line: 517, baseType: !60, size: 128, align: 64, offset: 5952)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_wq", scope: !18, file: !19, line: 518, baseType: !1560, size: 192, offset: 6080)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_lock", scope: !18, file: !19, line: 523, baseType: !126, size: 256, offset: 6272)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "quiesce_depth", scope: !18, file: !19, line: 525, baseType: !104, size: 32, offset: 6528)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set", scope: !18, file: !19, line: 527, baseType: !5124, size: 64, offset: 6592)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set_list", scope: !18, file: !19, line: 528, baseType: !74, size: 128, offset: 6656)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !18, file: !19, line: 530, baseType: !428, size: 64, offset: 6784)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "sched_debugfs_dir", scope: !18, file: !19, line: 531, baseType: !428, size: 64, offset: 6848)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "rqos_debugfs_dir", scope: !18, file: !19, line: 532, baseType: !428, size: 64, offset: 6912)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !18, file: !19, line: 536, baseType: !126, size: 256, offset: 6976)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "mq_sysfs_init_done", scope: !18, file: !19, line: 538, baseType: !56, size: 8, offset: 7232)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ctx", scope: !13, file: !14, line: 82, baseType: !249, size: 64, offset: 64)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "mq_hctx", scope: !13, file: !14, line: 83, baseType: !149, size: 64, offset: 128)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !13, file: !14, line: 85, baseType: !1322, size: 32, offset: 192)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "rq_flags", scope: !13, file: !14, line: 86, baseType: !5265, size: 32, offset: 224)
!5265 = !DIDerivedType(tag: DW_TAG_typedef, name: "req_flags_t", file: !14, line: 27, baseType: !192)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !13, file: !14, line: 88, baseType: !104, size: 32, offset: 256)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "internal_tag", scope: !13, file: !14, line: 89, baseType: !104, size: 32, offset: 288)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !13, file: !14, line: 91, baseType: !193, size: 32, offset: 320)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "__data_len", scope: !13, file: !14, line: 94, baseType: !193, size: 32, offset: 352)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "__sector", scope: !13, file: !14, line: 95, baseType: !1286, size: 64, offset: 384)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "bio", scope: !13, file: !14, line: 97, baseType: !1316, size: 64, offset: 448)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "biotail", scope: !13, file: !14, line: 98, baseType: !1316, size: 64, offset: 512)
!5273 = !DIDerivedType(tag: DW_TAG_member, scope: !13, file: !14, line: 100, baseType: !5274, size: 128, offset: 576)
!5274 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !13, file: !14, line: 100, size: 128, elements: !5275)
!5275 = !{!5276, !5277}
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "queuelist", scope: !5274, file: !14, line: 101, baseType: !74, size: 128)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "rq_next", scope: !5274, file: !14, line: 102, baseType: !12, size: 64)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !13, file: !14, line: 105, baseType: !1282, size: 64, offset: 704)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_time_ns", scope: !13, file: !14, line: 108, baseType: !464, size: 64, offset: 768)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "start_time_ns", scope: !13, file: !14, line: 111, baseType: !464, size: 64, offset: 832)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "io_start_time_ns", scope: !13, file: !14, line: 113, baseType: !464, size: 64, offset: 896)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "stats_sectors", scope: !13, file: !14, line: 123, baseType: !119, size: 16, offset: 960)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "nr_phys_segments", scope: !13, file: !14, line: 129, baseType: !119, size: 16, offset: 976)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !13, file: !14, line: 140, baseType: !119, size: 16, offset: 992)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !13, file: !14, line: 142, baseType: !5286, size: 32, offset: 1024)
!5286 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mq_rq_state", file: !14, line: 68, baseType: !193, size: 32, elements: !5287)
!5287 = !{!5288, !5289, !5290}
!5288 = !DIEnumerator(name: "MQ_RQ_IDLE", value: 0)
!5289 = !DIEnumerator(name: "MQ_RQ_IN_FLIGHT", value: 1)
!5290 = !DIEnumerator(name: "MQ_RQ_COMPLETE", value: 2)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !13, file: !14, line: 143, baseType: !100, size: 32, offset: 1056)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !13, file: !14, line: 145, baseType: !30, size: 64, offset: 1088)
!5293 = !DIDerivedType(tag: DW_TAG_member, scope: !13, file: !14, line: 154, baseType: !5294, size: 128, offset: 1152)
!5294 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !13, file: !14, line: 154, size: 128, elements: !5295)
!5295 = !{!5296, !5297}
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !5294, file: !14, line: 155, baseType: !178, size: 128)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_list", scope: !5294, file: !14, line: 156, baseType: !1505, size: 64)
!5298 = !DIDerivedType(tag: DW_TAG_member, scope: !13, file: !14, line: 165, baseType: !5299, size: 192, offset: 1280)
!5299 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !13, file: !14, line: 165, size: 192, elements: !5300)
!5300 = !{!5301, !5302}
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !5299, file: !14, line: 166, baseType: !746, size: 192, align: 64)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "special_vec", scope: !5299, file: !14, line: 167, baseType: !1356, size: 128)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "elv", scope: !13, file: !14, line: 177, baseType: !5304, size: 192, offset: 1472)
!5304 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !13, file: !14, line: 174, size: 192, elements: !5305)
!5305 = !{!5306, !5323}
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "icq", scope: !5304, file: !14, line: 175, baseType: !5307, size: 64)
!5307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5308, size: 64)
!5308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !3849, line: 73, size: 448, elements: !5309)
!5309 = !{!5310, !5311, !5312, !5317, !5322}
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !5308, file: !3849, line: 74, baseType: !17, size: 64)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !5308, file: !3849, line: 75, baseType: !3847, size: 64, offset: 64)
!5312 = !DIDerivedType(tag: DW_TAG_member, scope: !5308, file: !3849, line: 83, baseType: !5313, size: 128, offset: 128)
!5313 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5308, file: !3849, line: 83, size: 128, elements: !5314)
!5314 = !{!5315, !5316}
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !5313, file: !3849, line: 84, baseType: !74, size: 128)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !5313, file: !3849, line: 85, baseType: !2330, size: 64)
!5317 = !DIDerivedType(tag: DW_TAG_member, scope: !5308, file: !3849, line: 87, baseType: !5318, size: 128, offset: 256)
!5318 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5308, file: !3849, line: 87, size: 128, elements: !5319)
!5319 = !{!5320, !5321}
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !5318, file: !3849, line: 88, baseType: !178, size: 128)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !5318, file: !3849, line: 89, baseType: !60, size: 128, align: 64)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5308, file: !3849, line: 92, baseType: !193, size: 32, offset: 384)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5304, file: !14, line: 176, baseType: !5324, size: 128, offset: 64)
!5324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 128, elements: !226)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !13, file: !14, line: 182, baseType: !5326, size: 128, offset: 1664)
!5326 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !13, file: !14, line: 179, size: 128, elements: !5327)
!5327 = !{!5328, !5329}
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !5326, file: !14, line: 180, baseType: !193, size: 32)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "saved_end_io", scope: !5326, file: !14, line: 181, baseType: !5330, size: 64, offset: 64)
!5330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5331, size: 64)
!5331 = !DIDerivedType(tag: DW_TAG_typedef, name: "rq_end_io_fn", file: !14, line: 23, baseType: !5332)
!5332 = !DISubroutineType(types: !5333)
!5333 = !{!5334, !12, !147}
!5334 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rq_end_io_ret", file: !14, line: 18, baseType: !193, size: 32, elements: !5335)
!5335 = !{!5336, !5337}
!5336 = !DIEnumerator(name: "RQ_END_IO_NONE", value: 0)
!5337 = !DIEnumerator(name: "RQ_END_IO_FREE", value: 1)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_time", scope: !13, file: !14, line: 184, baseType: !464, size: 64, offset: 1792)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "end_io", scope: !13, file: !14, line: 189, baseType: !5330, size: 64, offset: 1856)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "end_io_data", scope: !13, file: !14, line: 190, baseType: !212, size: 64, offset: 1920)
!5341 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF block/.blk-stat.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22block/blk-stat\22 -D KBUILD_BASENAME=\22blk_stat\22 -D KBUILD_MODNAME=\22blk_stat\22 -D __KBUILD_MODNAME=kmod_blk_stat -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o block/blk-stat.ll block/blk-stat.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !5342, retainedTypes: !5375, globals: !5416, splitDebugInlining: false, nameTableKind: None)
!5342 = !{!584, !1009, !1081, !1427, !1578, !2245, !2445, !2640, !2702, !2775, !2859, !2867, !3083, !3129, !3139, !3145, !3153, !3496, !4035, !4825, !5100, !5197, !5229, !5286, !5334, !5343, !5360, !5365}
!5343 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "req_op", file: !148, line: 371, baseType: !193, size: 32, elements: !5344)
!5344 = !{!5345, !5346, !5347, !5348, !5349, !5350, !5351, !5352, !5353, !5354, !5355, !5356, !5357, !5358, !5359}
!5345 = !DIEnumerator(name: "REQ_OP_READ", value: 0)
!5346 = !DIEnumerator(name: "REQ_OP_WRITE", value: 1)
!5347 = !DIEnumerator(name: "REQ_OP_FLUSH", value: 2)
!5348 = !DIEnumerator(name: "REQ_OP_DISCARD", value: 3)
!5349 = !DIEnumerator(name: "REQ_OP_SECURE_ERASE", value: 5)
!5350 = !DIEnumerator(name: "REQ_OP_WRITE_ZEROES", value: 9)
!5351 = !DIEnumerator(name: "REQ_OP_ZONE_OPEN", value: 10)
!5352 = !DIEnumerator(name: "REQ_OP_ZONE_CLOSE", value: 11)
!5353 = !DIEnumerator(name: "REQ_OP_ZONE_FINISH", value: 12)
!5354 = !DIEnumerator(name: "REQ_OP_ZONE_APPEND", value: 13)
!5355 = !DIEnumerator(name: "REQ_OP_ZONE_RESET", value: 15)
!5356 = !DIEnumerator(name: "REQ_OP_ZONE_RESET_ALL", value: 17)
!5357 = !DIEnumerator(name: "REQ_OP_DRV_IN", value: 34)
!5358 = !DIEnumerator(name: "REQ_OP_DRV_OUT", value: 35)
!5359 = !DIEnumerator(name: "REQ_OP_LAST", value: 36)
!5360 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !5361, line: 10, baseType: !193, size: 32, elements: !5362)
!5361 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!5362 = !{!5363, !5364}
!5363 = !DIEnumerator(name: "false", value: 0)
!5364 = !DIEnumerator(name: "true", value: 1)
!5365 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !5366, line: 364, baseType: !193, size: 32, elements: !5367)
!5366 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!5367 = !{!5368, !5369, !5370, !5371, !5372, !5373, !5374}
!5368 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!5369 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!5370 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!5371 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!5372 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!5373 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!5374 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!5375 = !{!761, !212, !104, !30, !5376, !5379, !5386, !1112, !5408, !193, !1322, !191, !5410, !5413, !77, !5414, !5415}
!5376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5377, size: 64)
!5377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5378)
!5378 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !77)
!5379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5380, size: 64)
!5380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_stat_callback", file: !5381, line: 19, size: 960, elements: !5382)
!5381 = !DIFile(filename: "block/blk-stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2191249a24de28cfbc7e24f960b757af")
!5382 = !{!5383, !5384, !5385, !5394, !5400, !5401, !5402, !5406, !5407}
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5380, file: !5381, line: 23, baseType: !74, size: 128)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !5380, file: !5381, line: 28, baseType: !174, size: 320, offset: 128)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_stat", scope: !5380, file: !5381, line: 33, baseType: !5386, size: 64, offset: 448)
!5386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5387, size: 64)
!5387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_rq_stat", file: !148, line: 536, size: 320, elements: !5388)
!5388 = !{!5389, !5390, !5391, !5392, !5393}
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "mean", scope: !5387, file: !148, line: 537, baseType: !464, size: 64)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !5387, file: !148, line: 538, baseType: !464, size: 64, offset: 64)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !5387, file: !148, line: 539, baseType: !464, size: 64, offset: 128)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "nr_samples", scope: !5387, file: !148, line: 540, baseType: !191, size: 32, offset: 192)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !5387, file: !148, line: 541, baseType: !464, size: 64, offset: 256)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "bucket_fn", scope: !5380, file: !5381, line: 40, baseType: !5395, size: 64, offset: 512)
!5395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5396, size: 64)
!5396 = !DISubroutineType(types: !5397)
!5397 = !{!104, !5398}
!5398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5399, size: 64)
!5399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "buckets", scope: !5380, file: !5381, line: 45, baseType: !193, size: 32, offset: 576)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !5380, file: !5381, line: 50, baseType: !5386, size: 64, offset: 640)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "timer_fn", scope: !5380, file: !5381, line: 55, baseType: !5403, size: 64, offset: 704)
!5403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5404, size: 64)
!5404 = !DISubroutineType(types: !5405)
!5405 = !{null, !5379}
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5380, file: !5381, line: 60, baseType: !212, size: 64, offset: 768)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !5380, file: !5381, line: 62, baseType: !60, size: 128, align: 64, offset: 832)
!5408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5409, size: 64)
!5409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!5410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5411, size: 64)
!5411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5412)
!5412 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !183)
!5413 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !39, line: 42, baseType: !30)
!5414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5378, size: 64)
!5415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!5416 = !{!0, !7, !5417, !5419, !5421, !5426}
!5417 = !DIGlobalVariableExpression(var: !5418, expr: !DIExpression())
!5418 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_blk_stat_disable_accounting362", scope: !5341, file: !2, line: 196, type: !212, isLocal: true, isDefinition: true)
!5419 = !DIGlobalVariableExpression(var: !5420, expr: !DIExpression())
!5420 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_blk_stat_enable_accounting363", scope: !5341, file: !2, line: 207, type: !212, isLocal: true, isDefinition: true)
!5421 = !DIGlobalVariableExpression(var: !5422, expr: !DIExpression())
!5422 = distinct !DIGlobalVariable(scope: null, file: !2, line: 229, type: !5423, isLocal: true, isDefinition: true)
!5423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !5424)
!5424 = !{!5425}
!5425 = !DISubrange(count: 17)
!5426 = !DIGlobalVariableExpression(var: !5427, expr: !DIExpression())
!5427 = distinct !DIGlobalVariable(scope: null, file: !5366, line: 480, type: !5428, isLocal: true, isDefinition: true)
!5428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !5429)
!5429 = !{!5430}
!5430 = !DISubrange(count: 21)
!5431 = !{!5432, !5433, !5434, !5435, !5436, !5437, !5438, !5439, !5440, !5444, !5446, !5448, !5451, !5456, !5458}
!5432 = !DILocalVariable(name: "rq", arg: 1, scope: !9, file: !2, line: 50, type: !12)
!5433 = !DILocalVariable(name: "now", arg: 2, scope: !9, file: !2, line: 50, type: !464)
!5434 = !DILocalVariable(name: "q", scope: !9, file: !2, line: 52, type: !17)
!5435 = !DILocalVariable(name: "cb", scope: !9, file: !2, line: 53, type: !5379)
!5436 = !DILocalVariable(name: "stat", scope: !9, file: !2, line: 54, type: !5386)
!5437 = !DILocalVariable(name: "bucket", scope: !9, file: !2, line: 55, type: !104)
!5438 = !DILocalVariable(name: "cpu", scope: !9, file: !2, line: 55, type: !104)
!5439 = !DILocalVariable(name: "value", scope: !9, file: !2, line: 56, type: !464)
!5440 = !DILocalVariable(name: "pscr_ret__", scope: !5441, file: !2, line: 64, type: !104)
!5441 = distinct !DILexicalBlock(scope: !5442, file: !2, line: 64, column: 8)
!5442 = distinct !DILexicalBlock(scope: !5443, file: !2, line: 64, column: 8)
!5443 = distinct !DILexicalBlock(scope: !9, file: !2, line: 64, column: 8)
!5444 = !DILocalVariable(name: "__vpp_verify", scope: !5445, file: !2, line: 64, type: !2105)
!5445 = distinct !DILexicalBlock(scope: !5441, file: !2, line: 64, column: 8)
!5446 = !DILocalVariable(name: "pfo_val__", scope: !5447, file: !2, line: 64, type: !191)
!5447 = distinct !DILexicalBlock(scope: !5441, file: !2, line: 64, column: 8)
!5448 = !DILocalVariable(name: "__mptr", scope: !5449, file: !2, line: 65, type: !212)
!5449 = distinct !DILexicalBlock(scope: !5450, file: !2, line: 65, column: 2)
!5450 = distinct !DILexicalBlock(scope: !9, file: !2, line: 65, column: 2)
!5451 = !DILocalVariable(name: "__vpp_verify", scope: !5452, file: !2, line: 73, type: !2105)
!5452 = distinct !DILexicalBlock(scope: !5453, file: !2, line: 73, column: 11)
!5453 = distinct !DILexicalBlock(scope: !5454, file: !2, line: 73, column: 11)
!5454 = distinct !DILexicalBlock(scope: !5455, file: !2, line: 65, column: 58)
!5455 = distinct !DILexicalBlock(scope: !5450, file: !2, line: 65, column: 2)
!5456 = !DILocalVariable(name: "__ptr", scope: !5457, file: !2, line: 73, type: !30)
!5457 = distinct !DILexicalBlock(scope: !5453, file: !2, line: 73, column: 11)
!5458 = !DILocalVariable(name: "__mptr", scope: !5459, file: !2, line: 65, type: !212)
!5459 = distinct !DILexicalBlock(scope: !5455, file: !2, line: 65, column: 2)
!5460 = !{!"rsp"}
!5461 = !{i32 7, !"Dwarf Version", i32 5}
!5462 = !{i32 2, !"Debug Info Version", i32 3}
!5463 = !{i32 1, !"wchar_size", i32 2}
!5464 = !{i32 8, !"cf-protection-branch", i32 1}
!5465 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5466 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5467 = !{i32 1, !"Code Model", i32 2}
!5468 = !{i32 1, !"override-stack-alignment", i32 8}
!5469 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5470 = distinct !DISubprogram(name: "blk_rq_stat_init", scope: !2, file: !2, line: 20, type: !5471, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5341, retainedNodes: !5473)
!5471 = !DISubroutineType(types: !5472)
!5472 = !{null, !5386}
!5473 = !{!5474}
!5474 = !DILocalVariable(name: "stat", arg: 1, scope: !5470, file: !2, line: 20, type: !5386)
!5475 = !DILocation(line: 20, column: 43, scope: !5470)
!5476 = !DILocation(line: 22, column: 2, scope: !5470)
!5477 = !DILocation(line: 22, column: 8, scope: !5470)
!5478 = !DILocation(line: 22, column: 12, scope: !5470)
!5479 = !DILocation(line: 23, column: 33, scope: !5470)
!5480 = !DILocation(line: 23, column: 39, scope: !5470)
!5481 = !DILocation(line: 23, column: 44, scope: !5470)
!5482 = !DILocation(line: 23, column: 14, scope: !5470)
!5483 = !DILocation(line: 23, column: 20, scope: !5470)
!5484 = !DILocation(line: 23, column: 31, scope: !5470)
!5485 = !DILocation(line: 23, column: 2, scope: !5470)
!5486 = !DILocation(line: 23, column: 8, scope: !5470)
!5487 = !DILocation(line: 23, column: 12, scope: !5470)
!5488 = !DILocation(line: 24, column: 2, scope: !5470)
!5489 = !DILocation(line: 24, column: 8, scope: !5470)
!5490 = !DILocation(line: 24, column: 14, scope: !5470)
!5491 = !DILocation(line: 25, column: 1, scope: !5470)
!5492 = distinct !DISubprogram(name: "blk_rq_stat_sum", scope: !2, file: !2, line: 28, type: !5493, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5341, retainedNodes: !5495)
!5493 = !DISubroutineType(types: !5494)
!5494 = !{null, !5386, !5386}
!5495 = !{!5496, !5497, !5498, !5500, !5501, !5503}
!5496 = !DILocalVariable(name: "dst", arg: 1, scope: !5492, file: !2, line: 28, type: !5386)
!5497 = !DILocalVariable(name: "src", arg: 2, scope: !5492, file: !2, line: 28, type: !5386)
!5498 = !DILocalVariable(name: "__UNIQUE_ID___x351", scope: !5499, file: !2, line: 33, type: !464)
!5499 = distinct !DILexicalBlock(scope: !5492, file: !2, line: 33, column: 13)
!5500 = !DILocalVariable(name: "__UNIQUE_ID___y352", scope: !5499, file: !2, line: 33, type: !464)
!5501 = !DILocalVariable(name: "__UNIQUE_ID___x353", scope: !5502, file: !2, line: 34, type: !464)
!5502 = distinct !DILexicalBlock(scope: !5492, file: !2, line: 34, column: 13)
!5503 = !DILocalVariable(name: "__UNIQUE_ID___y354", scope: !5502, file: !2, line: 34, type: !464)
!5504 = !DILocation(line: 28, column: 42, scope: !5492)
!5505 = !DILocation(line: 28, column: 67, scope: !5492)
!5506 = !DILocation(line: 30, column: 6, scope: !5507)
!5507 = distinct !DILexicalBlock(scope: !5492, file: !2, line: 30, column: 6)
!5508 = !DILocation(line: 30, column: 11, scope: !5507)
!5509 = !DILocation(line: 30, column: 24, scope: !5507)
!5510 = !DILocation(line: 30, column: 29, scope: !5507)
!5511 = !DILocation(line: 30, column: 22, scope: !5507)
!5512 = !DILocation(line: 30, column: 43, scope: !5507)
!5513 = !DILocation(line: 30, column: 48, scope: !5507)
!5514 = !DILocation(line: 30, column: 40, scope: !5507)
!5515 = !DILocation(line: 30, column: 6, scope: !5492)
!5516 = !DILocation(line: 31, column: 3, scope: !5507)
!5517 = !DILocation(line: 33, column: 13, scope: !5499)
!5518 = !DILocation(line: 33, column: 13, scope: !5492)
!5519 = !DILocation(line: 33, column: 2, scope: !5492)
!5520 = !DILocation(line: 33, column: 7, scope: !5492)
!5521 = !DILocation(line: 33, column: 11, scope: !5492)
!5522 = !DILocation(line: 34, column: 13, scope: !5502)
!5523 = !DILocation(line: 34, column: 13, scope: !5492)
!5524 = !DILocation(line: 34, column: 2, scope: !5492)
!5525 = !DILocation(line: 34, column: 7, scope: !5492)
!5526 = !DILocation(line: 34, column: 11, scope: !5492)
!5527 = !DILocation(line: 36, column: 22, scope: !5492)
!5528 = !DILocation(line: 36, column: 27, scope: !5492)
!5529 = !DILocation(line: 36, column: 35, scope: !5492)
!5530 = !DILocation(line: 36, column: 40, scope: !5492)
!5531 = !DILocation(line: 36, column: 47, scope: !5492)
!5532 = !DILocation(line: 36, column: 52, scope: !5492)
!5533 = !DILocation(line: 36, column: 45, scope: !5492)
!5534 = !DILocation(line: 36, column: 33, scope: !5492)
!5535 = !DILocation(line: 37, column: 5, scope: !5492)
!5536 = !DILocation(line: 37, column: 10, scope: !5492)
!5537 = !DILocation(line: 37, column: 23, scope: !5492)
!5538 = !DILocation(line: 37, column: 28, scope: !5492)
!5539 = !DILocation(line: 37, column: 21, scope: !5492)
!5540 = !DILocation(line: 36, column: 14, scope: !5492)
!5541 = !DILocation(line: 36, column: 2, scope: !5492)
!5542 = !DILocation(line: 36, column: 7, scope: !5492)
!5543 = !DILocation(line: 36, column: 12, scope: !5492)
!5544 = !DILocation(line: 39, column: 21, scope: !5492)
!5545 = !DILocation(line: 39, column: 26, scope: !5492)
!5546 = !DILocation(line: 39, column: 2, scope: !5492)
!5547 = !DILocation(line: 39, column: 7, scope: !5492)
!5548 = !DILocation(line: 39, column: 18, scope: !5492)
!5549 = !DILocation(line: 40, column: 1, scope: !5492)
!5550 = distinct !DISubprogram(name: "div_u64", scope: !5551, file: !5551, line: 127, type: !5552, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5341, retainedNodes: !5554)
!5551 = !DIFile(filename: "./include/linux/math64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d8ed26cb78f71dd5066a07a0684eae84")
!5552 = !DISubroutineType(types: !5553)
!5553 = !{!464, !464, !191}
!5554 = !{!5555, !5556, !5557}
!5555 = !DILocalVariable(name: "dividend", arg: 1, scope: !5550, file: !5551, line: 127, type: !464)
!5556 = !DILocalVariable(name: "divisor", arg: 2, scope: !5550, file: !5551, line: 127, type: !191)
!5557 = !DILocalVariable(name: "remainder", scope: !5550, file: !5551, line: 129, type: !191)
!5558 = !DILocation(line: 127, column: 31, scope: !5550)
!5559 = !DILocation(line: 127, column: 45, scope: !5550)
!5560 = !DILocation(line: 129, column: 2, scope: !5550)
!5561 = !DILocation(line: 129, column: 6, scope: !5550)
!5562 = !DILocation(line: 130, column: 21, scope: !5550)
!5563 = !DILocation(line: 130, column: 31, scope: !5550)
!5564 = !DILocation(line: 130, column: 9, scope: !5550)
!5565 = !DILocation(line: 131, column: 1, scope: !5550)
!5566 = !DILocation(line: 130, column: 2, scope: !5550)
!5567 = distinct !DISubprogram(name: "blk_rq_stat_add", scope: !2, file: !2, line: 42, type: !5568, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5341, retainedNodes: !5570)
!5568 = !DISubroutineType(types: !5569)
!5569 = !{null, !5386, !464}
!5570 = !{!5571, !5572, !5573, !5575, !5576, !5578}
!5571 = !DILocalVariable(name: "stat", arg: 1, scope: !5567, file: !2, line: 42, type: !5386)
!5572 = !DILocalVariable(name: "value", arg: 2, scope: !5567, file: !2, line: 42, type: !464)
!5573 = !DILocalVariable(name: "__UNIQUE_ID___x355", scope: !5574, file: !2, line: 44, type: !464)
!5574 = distinct !DILexicalBlock(scope: !5567, file: !2, line: 44, column: 14)
!5575 = !DILocalVariable(name: "__UNIQUE_ID___y356", scope: !5574, file: !2, line: 44, type: !464)
!5576 = !DILocalVariable(name: "__UNIQUE_ID___x357", scope: !5577, file: !2, line: 45, type: !464)
!5577 = distinct !DILexicalBlock(scope: !5567, file: !2, line: 45, column: 14)
!5578 = !DILocalVariable(name: "__UNIQUE_ID___y358", scope: !5577, file: !2, line: 45, type: !464)
!5579 = !DILocation(line: 42, column: 42, scope: !5567)
!5580 = !DILocation(line: 42, column: 52, scope: !5567)
!5581 = !DILocation(line: 44, column: 14, scope: !5574)
!5582 = !DILocation(line: 44, column: 14, scope: !5567)
!5583 = !DILocation(line: 44, column: 2, scope: !5567)
!5584 = !DILocation(line: 44, column: 8, scope: !5567)
!5585 = !DILocation(line: 44, column: 12, scope: !5567)
!5586 = !DILocation(line: 45, column: 14, scope: !5577)
!5587 = !DILocation(line: 45, column: 14, scope: !5567)
!5588 = !DILocation(line: 45, column: 2, scope: !5567)
!5589 = !DILocation(line: 45, column: 8, scope: !5567)
!5590 = !DILocation(line: 45, column: 12, scope: !5567)
!5591 = !DILocation(line: 46, column: 17, scope: !5567)
!5592 = !DILocation(line: 46, column: 2, scope: !5567)
!5593 = !DILocation(line: 46, column: 8, scope: !5567)
!5594 = !DILocation(line: 46, column: 14, scope: !5567)
!5595 = !DILocation(line: 47, column: 2, scope: !5567)
!5596 = !DILocation(line: 47, column: 8, scope: !5567)
!5597 = !DILocation(line: 47, column: 18, scope: !5567)
!5598 = !DILocation(line: 48, column: 1, scope: !5567)
!5599 = !DILocation(line: 50, column: 35, scope: !9)
!5600 = !DILocation(line: 50, column: 43, scope: !9)
!5601 = !DILocation(line: 52, column: 2, scope: !9)
!5602 = !DILocation(line: 52, column: 24, scope: !9)
!5603 = !DILocation(line: 52, column: 28, scope: !9)
!5604 = !DILocation(line: 52, column: 32, scope: !9)
!5605 = !DILocation(line: 53, column: 2, scope: !9)
!5606 = !DILocation(line: 53, column: 28, scope: !9)
!5607 = !DILocation(line: 54, column: 2, scope: !9)
!5608 = !DILocation(line: 54, column: 22, scope: !9)
!5609 = !DILocation(line: 55, column: 2, scope: !9)
!5610 = !DILocation(line: 55, column: 6, scope: !9)
!5611 = !DILocation(line: 55, column: 14, scope: !9)
!5612 = !DILocation(line: 56, column: 2, scope: !9)
!5613 = !DILocation(line: 56, column: 6, scope: !9)
!5614 = !DILocation(line: 58, column: 11, scope: !9)
!5615 = !DILocation(line: 58, column: 18, scope: !9)
!5616 = !DILocation(line: 58, column: 22, scope: !9)
!5617 = !DILocation(line: 58, column: 15, scope: !9)
!5618 = !DILocation(line: 58, column: 10, scope: !9)
!5619 = !DILocation(line: 58, column: 42, scope: !9)
!5620 = !DILocation(line: 58, column: 48, scope: !9)
!5621 = !DILocation(line: 58, column: 52, scope: !9)
!5622 = !DILocation(line: 58, column: 46, scope: !9)
!5623 = !DILocation(line: 58, column: 8, scope: !9)
!5624 = !DILocation(line: 60, column: 13, scope: !5625)
!5625 = distinct !DILexicalBlock(scope: !9, file: !2, line: 60, column: 6)
!5626 = !DILocation(line: 60, column: 6, scope: !5625)
!5627 = !DILocation(line: 60, column: 17, scope: !5625)
!5628 = !DILocation(line: 60, column: 32, scope: !5625)
!5629 = !DILocation(line: 60, column: 42, scope: !5625)
!5630 = !DILocation(line: 60, column: 35, scope: !5625)
!5631 = !DILocation(line: 60, column: 46, scope: !5625)
!5632 = !DILocation(line: 60, column: 6, scope: !9)
!5633 = !DILocation(line: 61, column: 23, scope: !5625)
!5634 = !DILocation(line: 61, column: 27, scope: !5625)
!5635 = !DILocation(line: 61, column: 3, scope: !5625)
!5636 = !DILocation(line: 63, column: 2, scope: !9)
!5637 = !DILocation(line: 64, column: 8, scope: !5443)
!5638 = !DILocation(line: 64, column: 8, scope: !5639)
!5639 = distinct !DILexicalBlock(scope: !5443, file: !2, line: 64, column: 8)
!5640 = !{i64 2156097034}
!5641 = !DILocation(line: 64, column: 8, scope: !5442)
!5642 = !DILocation(line: 64, column: 8, scope: !5441)
!5643 = !DILocation(line: 64, column: 8, scope: !5445)
!5644 = !DILocation(line: 64, column: 8, scope: !5447)
!5645 = !{i64 2156099672}
!5646 = !DILocation(line: 64, column: 6, scope: !9)
!5647 = !DILocation(line: 65, column: 2, scope: !5449)
!5648 = !DILocation(line: 65, column: 2, scope: !5649)
!5649 = distinct !DILexicalBlock(scope: !5449, file: !2, line: 65, column: 2)
!5650 = !DILocation(line: 65, column: 2, scope: !5651)
!5651 = distinct !DILexicalBlock(scope: !5649, file: !2, line: 65, column: 2)
!5652 = !DILocation(line: 65, column: 2, scope: !5450)
!5653 = !DILocation(line: 65, column: 2, scope: !5455)
!5654 = !DILocation(line: 66, column: 27, scope: !5655)
!5655 = distinct !DILexicalBlock(scope: !5454, file: !2, line: 66, column: 7)
!5656 = !DILocation(line: 66, column: 8, scope: !5655)
!5657 = !DILocation(line: 66, column: 7, scope: !5454)
!5658 = !DILocation(line: 67, column: 4, scope: !5655)
!5659 = !DILocation(line: 69, column: 12, scope: !5454)
!5660 = !DILocation(line: 69, column: 16, scope: !5454)
!5661 = !DILocation(line: 69, column: 26, scope: !5454)
!5662 = !DILocation(line: 69, column: 10, scope: !5454)
!5663 = !DILocation(line: 70, column: 7, scope: !5664)
!5664 = distinct !DILexicalBlock(scope: !5454, file: !2, line: 70, column: 7)
!5665 = !DILocation(line: 70, column: 14, scope: !5664)
!5666 = !DILocation(line: 70, column: 7, scope: !5454)
!5667 = !DILocation(line: 71, column: 4, scope: !5664)
!5668 = !DILocation(line: 73, column: 11, scope: !5453)
!5669 = !DILocation(line: 73, column: 11, scope: !5452)
!5670 = !DILocation(line: 73, column: 11, scope: !5457)
!5671 = !DILocation(line: 73, column: 42, scope: !5454)
!5672 = !DILocation(line: 73, column: 11, scope: !5454)
!5673 = !DILocation(line: 73, column: 8, scope: !5454)
!5674 = !DILocation(line: 74, column: 19, scope: !5454)
!5675 = !DILocation(line: 74, column: 25, scope: !5454)
!5676 = !DILocation(line: 74, column: 3, scope: !5454)
!5677 = !DILocation(line: 75, column: 2, scope: !5454)
!5678 = !DILocation(line: 65, column: 2, scope: !5459)
!5679 = !DILocation(line: 65, column: 2, scope: !5680)
!5680 = distinct !DILexicalBlock(scope: !5459, file: !2, line: 65, column: 2)
!5681 = !DILocation(line: 65, column: 2, scope: !5682)
!5682 = distinct !DILexicalBlock(scope: !5680, file: !2, line: 65, column: 2)
!5683 = distinct !{!5683, !5652, !5684, !5685, !5686}
!5684 = !DILocation(line: 75, column: 2, scope: !5450)
!5685 = !{!"llvm.loop.mustprogress"}
!5686 = !{!"llvm.loop.unroll.disable"}
!5687 = !DILocation(line: 76, column: 2, scope: !9)
!5688 = !DILocation(line: 76, column: 2, scope: !5689)
!5689 = distinct !DILexicalBlock(scope: !9, file: !2, line: 76, column: 2)
!5690 = !{i64 2156137266}
!5691 = !DILocation(line: 76, column: 2, scope: !5692)
!5692 = distinct !DILexicalBlock(scope: !5689, file: !2, line: 76, column: 2)
!5693 = !DILocation(line: 76, column: 2, scope: !5694)
!5694 = distinct !DILexicalBlock(scope: !5692, file: !2, line: 76, column: 2)
!5695 = !{i64 2156137448}
!5696 = !DILocation(line: 77, column: 2, scope: !9)
!5697 = !DILocation(line: 78, column: 1, scope: !9)
!5698 = distinct !DISubprogram(name: "req_op", scope: !14, file: !14, line: 193, type: !5699, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5341, retainedNodes: !5701)
!5699 = !DISubroutineType(types: !5700)
!5700 = !{!5343, !5398}
!5701 = !{!5702}
!5702 = !DILocalVariable(name: "req", arg: 1, scope: !5698, file: !14, line: 193, type: !5398)
!5703 = !DILocation(line: 193, column: 56, scope: !5698)
!5704 = !DILocation(line: 195, column: 9, scope: !5698)
!5705 = !DILocation(line: 195, column: 14, scope: !5698)
!5706 = !DILocation(line: 195, column: 24, scope: !5698)
!5707 = !DILocation(line: 195, column: 2, scope: !5698)
!5708 = distinct !DISubprogram(name: "blk_throtl_stat_add", scope: !217, file: !217, line: 377, type: !10, scopeLine: 377, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5341, retainedNodes: !5709)
!5709 = !{!5710, !5711}
!5710 = !DILocalVariable(name: "rq", arg: 1, scope: !5708, file: !217, line: 377, type: !12)
!5711 = !DILocalVariable(name: "time", arg: 2, scope: !5708, file: !217, line: 377, type: !464)
!5712 = !DILocation(line: 377, column: 56, scope: !5708)
!5713 = !DILocation(line: 377, column: 64, scope: !5708)
!5714 = !DILocation(line: 377, column: 72, scope: !5708)
!5715 = distinct !DISubprogram(name: "rcu_read_lock", scope: !5716, file: !5716, line: 782, type: !953, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5341)
!5716 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!5717 = !DILocation(line: 784, column: 2, scope: !5715)
!5718 = !DILocation(line: 786, column: 2, scope: !5715)
!5719 = !DILocation(line: 786, column: 2, scope: !5720)
!5720 = distinct !DILexicalBlock(scope: !5715, file: !5716, line: 786, column: 2)
!5721 = !DILocation(line: 787, column: 2, scope: !5715)
!5722 = !DILocation(line: 787, column: 2, scope: !5723)
!5723 = distinct !DILexicalBlock(scope: !5715, file: !5716, line: 787, column: 2)
!5724 = !DILocation(line: 789, column: 1, scope: !5715)
!5725 = distinct !DISubprogram(name: "__preempt_count_add", scope: !5726, file: !5726, line: 78, type: !3777, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5341, retainedNodes: !5727)
!5726 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!5727 = !{!5728, !5729, !5731}
!5728 = !DILocalVariable(name: "val", arg: 1, scope: !5725, file: !5726, line: 78, type: !104)
!5729 = !DILocalVariable(name: "pao_ID__", scope: !5730, file: !5726, line: 80, type: !828)
!5730 = distinct !DILexicalBlock(scope: !5725, file: !5726, line: 80, column: 2)
!5731 = !DILocalVariable(name: "pto_val__", scope: !5732, file: !5726, line: 80, type: !191)
!5732 = distinct !DILexicalBlock(scope: !5733, file: !5726, line: 80, column: 2)
!5733 = distinct !DILexicalBlock(scope: !5734, file: !5726, line: 80, column: 2)
!5734 = distinct !DILexicalBlock(scope: !5730, file: !5726, line: 80, column: 2)
!5735 = !DILocation(line: 78, column: 53, scope: !5725)
!5736 = !DILocation(line: 80, column: 2, scope: !5725)
!5737 = !DILocation(line: 80, column: 2, scope: !5730)
!5738 = !DILocation(line: 80, column: 2, scope: !5734)
!5739 = !DILocation(line: 80, column: 2, scope: !5740)
!5740 = distinct !DILexicalBlock(scope: !5734, file: !5726, line: 80, column: 2)
!5741 = !{i64 2149507859}
!5742 = !DILocation(line: 80, column: 2, scope: !5733)
!5743 = !DILocation(line: 80, column: 2, scope: !5744)
!5744 = distinct !DILexicalBlock(scope: !5733, file: !5726, line: 80, column: 2)
!5745 = !{i64 2149508154}
!5746 = !DILocation(line: 80, column: 2, scope: !5732)
!5747 = !{i64 2149508859}
!5748 = !DILocation(line: 81, column: 1, scope: !5725)
!5749 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !5750, file: !5750, line: 313, type: !5751, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5341, retainedNodes: !5753)
!5750 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!5751 = !DISubroutineType(types: !5752)
!5752 = !{null, !276}
!5753 = !{!5754}
!5754 = !DILocalVariable(name: "op", arg: 1, scope: !5749, file: !5750, line: 313, type: !276)
!5755 = !DILocation(line: 313, column: 66, scope: !5749)
!5756 = !DILocation(line: 313, column: 72, scope: !5749)
!5757 = distinct !DISubprogram(name: "blk_stat_is_active", scope: !5381, file: !5381, line: 131, type: !5758, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5341, retainedNodes: !5760)
!5758 = !DISubroutineType(types: !5759)
!5759 = !{!56, !5379}
!5760 = !{!5761}
!5761 = !DILocalVariable(name: "cb", arg: 1, scope: !5757, file: !5381, line: 131, type: !5379)
!5762 = !DILocation(line: 131, column: 65, scope: !5757)
!5763 = !DILocation(line: 133, column: 24, scope: !5757)
!5764 = !DILocation(line: 133, column: 28, scope: !5757)
!5765 = !DILocation(line: 133, column: 9, scope: !5757)
!5766 = !DILocation(line: 133, column: 2, scope: !5757)
!5767 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !5726, file: !5726, line: 93, type: !3090, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5341, retainedNodes: !5768)
!5768 = !{!5769}
!5769 = !DILocalVariable(name: "c", scope: !5770, file: !5726, line: 95, type: !56)
!5770 = distinct !DILexicalBlock(scope: !5767, file: !5726, line: 95, column: 9)
!5771 = !DILocation(line: 95, column: 9, scope: !5770)
!5772 = !{i64 2149512215, i64 2149512308}
!5773 = !{i8 0, i8 2}
!5774 = !DILocation(line: 95, column: 9, scope: !5767)
!5775 = !DILocation(line: 95, column: 2, scope: !5767)
!5776 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !5716, file: !5716, line: 813, type: !953, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5341)
!5777 = !DILocation(line: 815, column: 2, scope: !5776)
!5778 = !DILocation(line: 815, column: 2, scope: !5779)
!5779 = distinct !DILexicalBlock(scope: !5776, file: !5716, line: 815, column: 2)
!5780 = !DILocation(line: 818, column: 2, scope: !5776)
!5781 = !DILocation(line: 819, column: 2, scope: !5776)
!5782 = !DILocation(line: 819, column: 2, scope: !5783)
!5783 = distinct !DILexicalBlock(scope: !5776, file: !5716, line: 819, column: 2)
!5784 = !DILocation(line: 820, column: 1, scope: !5776)
!5785 = distinct !DISubprogram(name: "blk_stat_alloc_callback", scope: !2, file: !2, line: 103, type: !5786, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5341, retainedNodes: !5788)
!5786 = !DISubroutineType(types: !5787)
!5787 = !{!5379, !5403, !5395, !193, !212}
!5788 = !{!5789, !5790, !5791, !5792, !5793}
!5789 = !DILocalVariable(name: "timer_fn", arg: 1, scope: !5785, file: !2, line: 103, type: !5403)
!5790 = !DILocalVariable(name: "bucket_fn", arg: 2, scope: !5785, file: !2, line: 104, type: !5395)
!5791 = !DILocalVariable(name: "buckets", arg: 3, scope: !5785, file: !2, line: 105, type: !193)
!5792 = !DILocalVariable(name: "data", arg: 4, scope: !5785, file: !2, line: 105, type: !212)
!5793 = !DILocalVariable(name: "cb", scope: !5785, file: !2, line: 107, type: !5379)
!5794 = !DILocation(line: 103, column: 32, scope: !5785)
!5795 = !DILocation(line: 104, column: 10, scope: !5785)
!5796 = !DILocation(line: 105, column: 17, scope: !5785)
!5797 = !DILocation(line: 105, column: 32, scope: !5785)
!5798 = !DILocation(line: 107, column: 2, scope: !5785)
!5799 = !DILocation(line: 107, column: 28, scope: !5785)
!5800 = !DILocation(line: 109, column: 7, scope: !5785)
!5801 = !DILocation(line: 109, column: 5, scope: !5785)
!5802 = !DILocation(line: 110, column: 7, scope: !5803)
!5803 = distinct !DILexicalBlock(scope: !5785, file: !2, line: 110, column: 6)
!5804 = !DILocation(line: 110, column: 6, scope: !5785)
!5805 = !DILocation(line: 111, column: 3, scope: !5803)
!5806 = !DILocation(line: 113, column: 27, scope: !5785)
!5807 = !DILocation(line: 113, column: 13, scope: !5785)
!5808 = !DILocation(line: 113, column: 2, scope: !5785)
!5809 = !DILocation(line: 113, column: 6, scope: !5785)
!5810 = !DILocation(line: 113, column: 11, scope: !5785)
!5811 = !DILocation(line: 115, column: 7, scope: !5812)
!5812 = distinct !DILexicalBlock(scope: !5785, file: !2, line: 115, column: 6)
!5813 = !DILocation(line: 115, column: 11, scope: !5812)
!5814 = !DILocation(line: 115, column: 6, scope: !5785)
!5815 = !DILocation(line: 116, column: 9, scope: !5816)
!5816 = distinct !DILexicalBlock(scope: !5812, file: !2, line: 115, column: 17)
!5817 = !DILocation(line: 116, column: 3, scope: !5816)
!5818 = !DILocation(line: 117, column: 3, scope: !5816)
!5819 = !DILocation(line: 119, column: 32, scope: !5785)
!5820 = !DILocation(line: 119, column: 40, scope: !5785)
!5821 = !DILocation(line: 119, column: 17, scope: !5785)
!5822 = !DILocation(line: 119, column: 2, scope: !5785)
!5823 = !DILocation(line: 119, column: 6, scope: !5785)
!5824 = !DILocation(line: 119, column: 15, scope: !5785)
!5825 = !DILocation(line: 121, column: 7, scope: !5826)
!5826 = distinct !DILexicalBlock(scope: !5785, file: !2, line: 121, column: 6)
!5827 = !DILocation(line: 121, column: 11, scope: !5826)
!5828 = !DILocation(line: 121, column: 6, scope: !5785)
!5829 = !DILocation(line: 122, column: 9, scope: !5830)
!5830 = distinct !DILexicalBlock(scope: !5826, file: !2, line: 121, column: 21)
!5831 = !DILocation(line: 122, column: 13, scope: !5830)
!5832 = !DILocation(line: 122, column: 3, scope: !5830)
!5833 = !DILocation(line: 123, column: 9, scope: !5830)
!5834 = !DILocation(line: 123, column: 3, scope: !5830)
!5835 = !DILocation(line: 124, column: 3, scope: !5830)
!5836 = !DILocation(line: 127, column: 17, scope: !5785)
!5837 = !DILocation(line: 127, column: 2, scope: !5785)
!5838 = !DILocation(line: 127, column: 6, scope: !5785)
!5839 = !DILocation(line: 127, column: 15, scope: !5785)
!5840 = !DILocation(line: 128, column: 18, scope: !5785)
!5841 = !DILocation(line: 128, column: 2, scope: !5785)
!5842 = !DILocation(line: 128, column: 6, scope: !5785)
!5843 = !DILocation(line: 128, column: 16, scope: !5785)
!5844 = !DILocation(line: 129, column: 13, scope: !5785)
!5845 = !DILocation(line: 129, column: 2, scope: !5785)
!5846 = !DILocation(line: 129, column: 6, scope: !5785)
!5847 = !DILocation(line: 129, column: 11, scope: !5785)
!5848 = !DILocation(line: 130, column: 16, scope: !5785)
!5849 = !DILocation(line: 130, column: 2, scope: !5785)
!5850 = !DILocation(line: 130, column: 6, scope: !5785)
!5851 = !DILocation(line: 130, column: 14, scope: !5785)
!5852 = !DILocation(line: 131, column: 2, scope: !5785)
!5853 = !DILocation(line: 133, column: 9, scope: !5785)
!5854 = !DILocation(line: 133, column: 2, scope: !5785)
!5855 = !DILocation(line: 134, column: 1, scope: !5785)
!5856 = distinct !DISubprogram(name: "kmalloc", scope: !5366, file: !5366, line: 591, type: !5857, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5341, retainedNodes: !5859)
!5857 = !DISubroutineType(types: !5858)
!5858 = !{!212, !360, !1112}
!5859 = !{!5860, !5861, !5862}
!5860 = !DILocalVariable(name: "size", arg: 1, scope: !5856, file: !5366, line: 591, type: !360)
!5861 = !DILocalVariable(name: "flags", arg: 2, scope: !5856, file: !5366, line: 591, type: !1112)
!5862 = !DILocalVariable(name: "index", scope: !5863, file: !5366, line: 594, type: !193)
!5863 = distinct !DILexicalBlock(scope: !5864, file: !5366, line: 593, column: 42)
!5864 = distinct !DILexicalBlock(scope: !5856, file: !5366, line: 593, column: 6)
!5865 = !DILocation(line: 591, column: 61, scope: !5856)
!5866 = !DILocation(line: 591, column: 73, scope: !5856)
!5867 = !DILocation(line: 593, column: 27, scope: !5864)
!5868 = !DILocation(line: 593, column: 6, scope: !5864)
!5869 = !DILocation(line: 593, column: 33, scope: !5864)
!5870 = !DILocation(line: 593, column: 36, scope: !5864)
!5871 = !DILocation(line: 593, column: 6, scope: !5856)
!5872 = !DILocation(line: 594, column: 3, scope: !5863)
!5873 = !DILocation(line: 594, column: 16, scope: !5863)
!5874 = !DILocation(line: 596, column: 7, scope: !5875)
!5875 = distinct !DILexicalBlock(scope: !5863, file: !5366, line: 596, column: 7)
!5876 = !DILocation(line: 596, column: 12, scope: !5875)
!5877 = !DILocation(line: 596, column: 7, scope: !5863)
!5878 = !DILocation(line: 597, column: 25, scope: !5875)
!5879 = !DILocation(line: 597, column: 31, scope: !5875)
!5880 = !DILocation(line: 597, column: 11, scope: !5875)
!5881 = !DILocation(line: 597, column: 4, scope: !5875)
!5882 = !DILocation(line: 599, column: 11, scope: !5863)
!5883 = !DILocation(line: 599, column: 9, scope: !5863)
!5884 = !DILocation(line: 601, column: 33, scope: !5863)
!5885 = !DILocation(line: 601, column: 40, scope: !5863)
!5886 = !DILocation(line: 601, column: 20, scope: !5863)
!5887 = !DILocation(line: 601, column: 5, scope: !5863)
!5888 = !DILocation(line: 601, column: 51, scope: !5863)
!5889 = !DILocation(line: 602, column: 5, scope: !5863)
!5890 = !DILocation(line: 602, column: 12, scope: !5863)
!5891 = !DILocation(line: 600, column: 10, scope: !5863)
!5892 = !DILocation(line: 600, column: 3, scope: !5863)
!5893 = !DILocation(line: 603, column: 2, scope: !5864)
!5894 = !DILocation(line: 604, column: 19, scope: !5856)
!5895 = !DILocation(line: 604, column: 25, scope: !5856)
!5896 = !DILocation(line: 604, column: 9, scope: !5856)
!5897 = !DILocation(line: 604, column: 2, scope: !5856)
!5898 = !DILocation(line: 605, column: 1, scope: !5856)
!5899 = distinct !DISubprogram(name: "kmalloc_array", scope: !5366, file: !5366, line: 629, type: !5900, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5341, retainedNodes: !5902)
!5900 = !DISubroutineType(types: !5901)
!5901 = !{!212, !360, !360, !1112}
!5902 = !{!5903, !5904, !5905, !5906}
!5903 = !DILocalVariable(name: "n", arg: 1, scope: !5899, file: !5366, line: 629, type: !360)
!5904 = !DILocalVariable(name: "size", arg: 2, scope: !5899, file: !5366, line: 629, type: !360)
!5905 = !DILocalVariable(name: "flags", arg: 3, scope: !5899, file: !5366, line: 629, type: !1112)
!5906 = !DILocalVariable(name: "bytes", scope: !5899, file: !5366, line: 631, type: !360)
!5907 = !DILocation(line: 629, column: 61, scope: !5899)
!5908 = !DILocation(line: 629, column: 71, scope: !5899)
!5909 = !DILocation(line: 629, column: 83, scope: !5899)
!5910 = !DILocation(line: 631, column: 2, scope: !5899)
!5911 = !DILocation(line: 631, column: 9, scope: !5899)
!5912 = !DILocation(line: 633, column: 6, scope: !5913)
!5913 = distinct !DILexicalBlock(scope: !5899, file: !5366, line: 633, column: 6)
!5914 = !DILocation(line: 633, column: 6, scope: !5899)
!5915 = !DILocation(line: 634, column: 3, scope: !5913)
!5916 = !DILocation(line: 635, column: 27, scope: !5917)
!5917 = distinct !DILexicalBlock(scope: !5899, file: !5366, line: 635, column: 6)
!5918 = !DILocation(line: 635, column: 6, scope: !5917)
!5919 = !DILocation(line: 635, column: 30, scope: !5917)
!5920 = !DILocation(line: 635, column: 54, scope: !5917)
!5921 = !DILocation(line: 635, column: 33, scope: !5917)
!5922 = !DILocation(line: 635, column: 6, scope: !5899)
!5923 = !DILocation(line: 636, column: 18, scope: !5917)
!5924 = !DILocation(line: 636, column: 25, scope: !5917)
!5925 = !DILocation(line: 636, column: 10, scope: !5917)
!5926 = !DILocation(line: 636, column: 3, scope: !5917)
!5927 = !DILocation(line: 637, column: 19, scope: !5899)
!5928 = !DILocation(line: 637, column: 26, scope: !5899)
!5929 = !DILocation(line: 637, column: 9, scope: !5899)
!5930 = !DILocation(line: 637, column: 2, scope: !5899)
!5931 = !DILocation(line: 638, column: 1, scope: !5899)
!5932 = !DISubprogram(name: "kfree", scope: !5366, file: !5366, line: 227, type: !5933, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5933 = !DISubroutineType(types: !5934)
!5934 = !{null, !2105}
!5935 = !DISubprogram(name: "__alloc_percpu", scope: !5936, file: !5936, line: 133, type: !5937, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5936 = !DIFile(filename: "./include/linux/percpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5b443d1a4673980cdbec5f10c6cbbaa")
!5937 = !DISubroutineType(types: !5938)
!5938 = !{!212, !360, !360}
!5939 = !DISubprogram(name: "init_timer_key", scope: !175, file: !175, line: 91, type: !5940, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5940 = !DISubroutineType(types: !5941)
!5941 = !{null, !189, !186, !193, !276, !5942}
!5942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!5943 = distinct !DISubprogram(name: "blk_stat_timer_fn", scope: !2, file: !2, line: 80, type: !187, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5341, retainedNodes: !5944)
!5944 = !{!5945, !5946, !5947, !5949, !5950, !5951, !5955, !5958}
!5945 = !DILocalVariable(name: "t", arg: 1, scope: !5943, file: !2, line: 80, type: !189)
!5946 = !DILocalVariable(name: "cb", scope: !5943, file: !2, line: 82, type: !5379)
!5947 = !DILocalVariable(name: "__mptr", scope: !5948, file: !2, line: 82, type: !212)
!5948 = distinct !DILexicalBlock(scope: !5943, file: !2, line: 82, column: 33)
!5949 = !DILocalVariable(name: "bucket", scope: !5943, file: !2, line: 83, type: !193)
!5950 = !DILocalVariable(name: "cpu", scope: !5943, file: !2, line: 84, type: !104)
!5951 = !DILocalVariable(name: "cpu_stat", scope: !5952, file: !2, line: 90, type: !5386)
!5952 = distinct !DILexicalBlock(scope: !5953, file: !2, line: 89, column: 27)
!5953 = distinct !DILexicalBlock(scope: !5954, file: !2, line: 89, column: 2)
!5954 = distinct !DILexicalBlock(scope: !5943, file: !2, line: 89, column: 2)
!5955 = !DILocalVariable(name: "__vpp_verify", scope: !5956, file: !2, line: 92, type: !2105)
!5956 = distinct !DILexicalBlock(scope: !5957, file: !2, line: 92, column: 14)
!5957 = distinct !DILexicalBlock(scope: !5952, file: !2, line: 92, column: 14)
!5958 = !DILocalVariable(name: "__ptr", scope: !5959, file: !2, line: 92, type: !30)
!5959 = distinct !DILexicalBlock(scope: !5957, file: !2, line: 92, column: 14)
!5960 = !DILocation(line: 80, column: 50, scope: !5943)
!5961 = !DILocation(line: 82, column: 2, scope: !5943)
!5962 = !DILocation(line: 82, column: 28, scope: !5943)
!5963 = !DILocation(line: 82, column: 33, scope: !5948)
!5964 = !DILocation(line: 82, column: 33, scope: !5943)
!5965 = !DILocation(line: 83, column: 2, scope: !5943)
!5966 = !DILocation(line: 83, column: 15, scope: !5943)
!5967 = !DILocation(line: 84, column: 2, scope: !5943)
!5968 = !DILocation(line: 84, column: 6, scope: !5943)
!5969 = !DILocation(line: 86, column: 14, scope: !5970)
!5970 = distinct !DILexicalBlock(scope: !5943, file: !2, line: 86, column: 2)
!5971 = !DILocation(line: 86, column: 7, scope: !5970)
!5972 = !DILocation(line: 86, column: 19, scope: !5973)
!5973 = distinct !DILexicalBlock(scope: !5970, file: !2, line: 86, column: 2)
!5974 = !DILocation(line: 86, column: 28, scope: !5973)
!5975 = !DILocation(line: 86, column: 32, scope: !5973)
!5976 = !DILocation(line: 86, column: 26, scope: !5973)
!5977 = !DILocation(line: 86, column: 2, scope: !5970)
!5978 = !DILocation(line: 87, column: 21, scope: !5973)
!5979 = !DILocation(line: 87, column: 25, scope: !5973)
!5980 = !DILocation(line: 87, column: 30, scope: !5973)
!5981 = !DILocation(line: 87, column: 3, scope: !5973)
!5982 = !DILocation(line: 86, column: 47, scope: !5973)
!5983 = !DILocation(line: 86, column: 2, scope: !5973)
!5984 = distinct !{!5984, !5977, !5985, !5685, !5686}
!5985 = !DILocation(line: 87, column: 37, scope: !5970)
!5986 = !DILocation(line: 89, column: 2, scope: !5954)
!5987 = !DILocation(line: 89, column: 2, scope: !5953)
!5988 = !DILocation(line: 90, column: 3, scope: !5952)
!5989 = !DILocation(line: 90, column: 23, scope: !5952)
!5990 = !DILocation(line: 92, column: 14, scope: !5957)
!5991 = !DILocation(line: 92, column: 14, scope: !5956)
!5992 = !DILocation(line: 92, column: 14, scope: !5959)
!5993 = !DILocation(line: 92, column: 12, scope: !5952)
!5994 = !DILocation(line: 93, column: 15, scope: !5995)
!5995 = distinct !DILexicalBlock(scope: !5952, file: !2, line: 93, column: 3)
!5996 = !DILocation(line: 93, column: 8, scope: !5995)
!5997 = !DILocation(line: 93, column: 20, scope: !5998)
!5998 = distinct !DILexicalBlock(scope: !5995, file: !2, line: 93, column: 3)
!5999 = !DILocation(line: 93, column: 29, scope: !5998)
!6000 = !DILocation(line: 93, column: 33, scope: !5998)
!6001 = !DILocation(line: 93, column: 27, scope: !5998)
!6002 = !DILocation(line: 93, column: 3, scope: !5995)
!6003 = !DILocation(line: 94, column: 21, scope: !6004)
!6004 = distinct !DILexicalBlock(scope: !5998, file: !2, line: 93, column: 52)
!6005 = !DILocation(line: 94, column: 25, scope: !6004)
!6006 = !DILocation(line: 94, column: 30, scope: !6004)
!6007 = !DILocation(line: 94, column: 40, scope: !6004)
!6008 = !DILocation(line: 94, column: 49, scope: !6004)
!6009 = !DILocation(line: 94, column: 4, scope: !6004)
!6010 = !DILocation(line: 95, column: 22, scope: !6004)
!6011 = !DILocation(line: 95, column: 31, scope: !6004)
!6012 = !DILocation(line: 95, column: 4, scope: !6004)
!6013 = !DILocation(line: 96, column: 3, scope: !6004)
!6014 = !DILocation(line: 93, column: 48, scope: !5998)
!6015 = !DILocation(line: 93, column: 3, scope: !5998)
!6016 = distinct !{!6016, !6002, !6017, !5685, !5686}
!6017 = !DILocation(line: 96, column: 3, scope: !5995)
!6018 = !DILocation(line: 97, column: 2, scope: !5953)
!6019 = !DILocation(line: 97, column: 2, scope: !5952)
!6020 = distinct !{!6020, !5986, !6021, !5685, !5686}
!6021 = !DILocation(line: 97, column: 2, scope: !5954)
!6022 = !DILocation(line: 99, column: 2, scope: !5943)
!6023 = !DILocation(line: 99, column: 6, scope: !5943)
!6024 = !DILocation(line: 99, column: 15, scope: !5943)
!6025 = !DILocation(line: 100, column: 1, scope: !5943)
!6026 = distinct !DISubprogram(name: "blk_stat_add_callback", scope: !2, file: !2, line: 136, type: !6027, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5341, retainedNodes: !6029)
!6027 = !DISubroutineType(types: !6028)
!6028 = !{null, !17, !5379}
!6029 = !{!6030, !6031, !6032, !6033, !6034, !6035, !6039, !6042, !6044, !6048}
!6030 = !DILocalVariable(name: "q", arg: 1, scope: !6026, file: !2, line: 136, type: !17)
!6031 = !DILocalVariable(name: "cb", arg: 2, scope: !6026, file: !2, line: 137, type: !5379)
!6032 = !DILocalVariable(name: "bucket", scope: !6026, file: !2, line: 139, type: !193)
!6033 = !DILocalVariable(name: "flags", scope: !6026, file: !2, line: 140, type: !30)
!6034 = !DILocalVariable(name: "cpu", scope: !6026, file: !2, line: 141, type: !104)
!6035 = !DILocalVariable(name: "cpu_stat", scope: !6036, file: !2, line: 144, type: !5386)
!6036 = distinct !DILexicalBlock(scope: !6037, file: !2, line: 143, column: 29)
!6037 = distinct !DILexicalBlock(scope: !6038, file: !2, line: 143, column: 2)
!6038 = distinct !DILexicalBlock(scope: !6026, file: !2, line: 143, column: 2)
!6039 = !DILocalVariable(name: "__vpp_verify", scope: !6040, file: !2, line: 146, type: !2105)
!6040 = distinct !DILexicalBlock(scope: !6041, file: !2, line: 146, column: 14)
!6041 = distinct !DILexicalBlock(scope: !6036, file: !2, line: 146, column: 14)
!6042 = !DILocalVariable(name: "__ptr", scope: !6043, file: !2, line: 146, type: !30)
!6043 = distinct !DILexicalBlock(scope: !6041, file: !2, line: 146, column: 14)
!6044 = !DILocalVariable(name: "__dummy", scope: !6045, file: !2, line: 151, type: !30)
!6045 = distinct !DILexicalBlock(scope: !6046, file: !2, line: 151, column: 2)
!6046 = distinct !DILexicalBlock(scope: !6047, file: !2, line: 151, column: 2)
!6047 = distinct !DILexicalBlock(scope: !6026, file: !2, line: 151, column: 2)
!6048 = !DILocalVariable(name: "__dummy2", scope: !6045, file: !2, line: 151, type: !30)
!6049 = !DILocation(line: 136, column: 50, scope: !6026)
!6050 = !DILocation(line: 137, column: 33, scope: !6026)
!6051 = !DILocation(line: 139, column: 2, scope: !6026)
!6052 = !DILocation(line: 139, column: 15, scope: !6026)
!6053 = !DILocation(line: 140, column: 2, scope: !6026)
!6054 = !DILocation(line: 140, column: 16, scope: !6026)
!6055 = !DILocation(line: 141, column: 2, scope: !6026)
!6056 = !DILocation(line: 141, column: 6, scope: !6026)
!6057 = !DILocation(line: 143, column: 2, scope: !6038)
!6058 = !DILocation(line: 143, column: 2, scope: !6037)
!6059 = !DILocation(line: 144, column: 3, scope: !6036)
!6060 = !DILocation(line: 144, column: 23, scope: !6036)
!6061 = !DILocation(line: 146, column: 14, scope: !6041)
!6062 = !DILocation(line: 146, column: 14, scope: !6040)
!6063 = !DILocation(line: 146, column: 14, scope: !6043)
!6064 = !DILocation(line: 146, column: 12, scope: !6036)
!6065 = !DILocation(line: 147, column: 15, scope: !6066)
!6066 = distinct !DILexicalBlock(scope: !6036, file: !2, line: 147, column: 3)
!6067 = !DILocation(line: 147, column: 8, scope: !6066)
!6068 = !DILocation(line: 147, column: 20, scope: !6069)
!6069 = distinct !DILexicalBlock(scope: !6066, file: !2, line: 147, column: 3)
!6070 = !DILocation(line: 147, column: 29, scope: !6069)
!6071 = !DILocation(line: 147, column: 33, scope: !6069)
!6072 = !DILocation(line: 147, column: 27, scope: !6069)
!6073 = !DILocation(line: 147, column: 3, scope: !6066)
!6074 = !DILocation(line: 148, column: 22, scope: !6069)
!6075 = !DILocation(line: 148, column: 31, scope: !6069)
!6076 = !DILocation(line: 148, column: 4, scope: !6069)
!6077 = !DILocation(line: 147, column: 48, scope: !6069)
!6078 = !DILocation(line: 147, column: 3, scope: !6069)
!6079 = distinct !{!6079, !6073, !6080, !5685, !5686}
!6080 = !DILocation(line: 148, column: 38, scope: !6066)
!6081 = !DILocation(line: 149, column: 2, scope: !6037)
!6082 = !DILocation(line: 149, column: 2, scope: !6036)
!6083 = distinct !{!6083, !6057, !6084, !5685, !5686}
!6084 = !DILocation(line: 149, column: 2, scope: !6038)
!6085 = !DILocation(line: 151, column: 2, scope: !6026)
!6086 = !DILocation(line: 151, column: 2, scope: !6047)
!6087 = !DILocation(line: 151, column: 2, scope: !6045)
!6088 = !DILocation(line: 151, column: 2, scope: !6046)
!6089 = !DILocation(line: 152, column: 21, scope: !6026)
!6090 = !DILocation(line: 152, column: 25, scope: !6026)
!6091 = !DILocation(line: 152, column: 32, scope: !6026)
!6092 = !DILocation(line: 152, column: 35, scope: !6026)
!6093 = !DILocation(line: 152, column: 42, scope: !6026)
!6094 = !DILocation(line: 152, column: 2, scope: !6026)
!6095 = !DILocation(line: 153, column: 39, scope: !6026)
!6096 = !DILocation(line: 153, column: 2, scope: !6026)
!6097 = !DILocation(line: 154, column: 26, scope: !6026)
!6098 = !DILocation(line: 154, column: 29, scope: !6026)
!6099 = !DILocation(line: 154, column: 36, scope: !6026)
!6100 = !DILocation(line: 154, column: 42, scope: !6026)
!6101 = !DILocation(line: 154, column: 2, scope: !6026)
!6102 = !DILocation(line: 155, column: 1, scope: !6026)
!6103 = distinct !DISubprogram(name: "find_next_bit", scope: !6104, file: !6104, line: 54, type: !6105, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5341, retainedNodes: !6108)
!6104 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!6105 = !DISubroutineType(types: !6106)
!6106 = !{!30, !6107, !30, !30}
!6107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!6108 = !{!6109, !6110, !6111, !6112}
!6109 = !DILocalVariable(name: "addr", arg: 1, scope: !6103, file: !6104, line: 54, type: !6107)
!6110 = !DILocalVariable(name: "size", arg: 2, scope: !6103, file: !6104, line: 54, type: !30)
!6111 = !DILocalVariable(name: "offset", arg: 3, scope: !6103, file: !6104, line: 55, type: !30)
!6112 = !DILocalVariable(name: "val", scope: !6113, file: !6104, line: 58, type: !30)
!6113 = distinct !DILexicalBlock(scope: !6114, file: !6104, line: 57, column: 31)
!6114 = distinct !DILexicalBlock(scope: !6103, file: !6104, line: 57, column: 6)
!6115 = !DILocation(line: 54, column: 50, scope: !6103)
!6116 = !DILocation(line: 54, column: 70, scope: !6103)
!6117 = !DILocation(line: 55, column: 22, scope: !6103)
!6118 = !DILocation(line: 57, column: 6, scope: !6114)
!6119 = !DILocation(line: 57, column: 6, scope: !6103)
!6120 = !DILocation(line: 58, column: 3, scope: !6113)
!6121 = !DILocation(line: 58, column: 17, scope: !6113)
!6122 = !DILocation(line: 60, column: 7, scope: !6123)
!6123 = distinct !DILexicalBlock(scope: !6113, file: !6104, line: 60, column: 7)
!6124 = !DILocation(line: 60, column: 7, scope: !6113)
!6125 = !DILocation(line: 61, column: 11, scope: !6123)
!6126 = !DILocation(line: 61, column: 4, scope: !6123)
!6127 = !DILocation(line: 63, column: 10, scope: !6113)
!6128 = !DILocation(line: 63, column: 9, scope: !6113)
!6129 = !DILocation(line: 63, column: 17, scope: !6113)
!6130 = !DILocation(line: 63, column: 15, scope: !6113)
!6131 = !DILocation(line: 63, column: 7, scope: !6113)
!6132 = !DILocation(line: 64, column: 10, scope: !6113)
!6133 = !DILocation(line: 64, column: 16, scope: !6113)
!6134 = !DILocation(line: 64, column: 29, scope: !6113)
!6135 = !DILocation(line: 64, column: 3, scope: !6113)
!6136 = !DILocation(line: 65, column: 2, scope: !6114)
!6137 = !DILocation(line: 67, column: 24, scope: !6103)
!6138 = !DILocation(line: 67, column: 30, scope: !6103)
!6139 = !DILocation(line: 67, column: 36, scope: !6103)
!6140 = !DILocation(line: 67, column: 9, scope: !6103)
!6141 = !DILocation(line: 67, column: 2, scope: !6103)
!6142 = !DILocation(line: 68, column: 1, scope: !6103)
!6143 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !6144, file: !6144, line: 32, type: !6145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6144 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!6145 = !DISubroutineType(types: !6146)
!6146 = !{!30, !6147}
!6147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!6148 = distinct !DISubprogram(name: "spinlock_check", scope: !6149, file: !6149, line: 324, type: !6150, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5341, retainedNodes: !6152)
!6149 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!6150 = !DISubroutineType(types: !6151)
!6151 = !{!6147, !2289}
!6152 = !{!6153}
!6153 = !DILocalVariable(name: "lock", arg: 1, scope: !6148, file: !6149, line: 324, type: !2289)
!6154 = !DILocation(line: 324, column: 67, scope: !6148)
!6155 = !DILocation(line: 326, column: 10, scope: !6148)
!6156 = !DILocation(line: 326, column: 16, scope: !6148)
!6157 = !DILocation(line: 326, column: 2, scope: !6148)
!6158 = distinct !DISubprogram(name: "list_add_tail_rcu", scope: !6159, file: !6159, line: 125, type: !6160, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5341, retainedNodes: !6162)
!6159 = !DIFile(filename: "./include/linux/rculist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd1f3f0ac3963a1bf35badb4cb07f795")
!6160 = !DISubroutineType(types: !6161)
!6161 = !{null, !77, !77}
!6162 = !{!6163, !6164}
!6163 = !DILocalVariable(name: "new", arg: 1, scope: !6158, file: !6159, line: 125, type: !77)
!6164 = !DILocalVariable(name: "head", arg: 2, scope: !6158, file: !6159, line: 126, type: !77)
!6165 = !DILocation(line: 125, column: 56, scope: !6158)
!6166 = !DILocation(line: 126, column: 24, scope: !6158)
!6167 = !DILocation(line: 128, column: 17, scope: !6158)
!6168 = !DILocation(line: 128, column: 22, scope: !6158)
!6169 = !DILocation(line: 128, column: 28, scope: !6158)
!6170 = !DILocation(line: 128, column: 34, scope: !6158)
!6171 = !DILocation(line: 128, column: 2, scope: !6158)
!6172 = !DILocation(line: 129, column: 1, scope: !6158)
!6173 = !DISubprogram(name: "blk_queue_flag_set", scope: !19, file: !19, line: 576, type: !6174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6174 = !DISubroutineType(types: !6175)
!6175 = !{null, !193, !17}
!6176 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !6149, file: !6149, line: 404, type: !6177, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5341, retainedNodes: !6179)
!6177 = !DISubroutineType(types: !6178)
!6178 = !{null, !2289, !30}
!6179 = !{!6180, !6181, !6182, !6185}
!6180 = !DILocalVariable(name: "lock", arg: 1, scope: !6176, file: !6149, line: 404, type: !2289)
!6181 = !DILocalVariable(name: "flags", arg: 2, scope: !6176, file: !6149, line: 404, type: !30)
!6182 = !DILocalVariable(name: "__dummy", scope: !6183, file: !6149, line: 406, type: !30)
!6183 = distinct !DILexicalBlock(scope: !6184, file: !6149, line: 406, column: 2)
!6184 = distinct !DILexicalBlock(scope: !6176, file: !6149, line: 406, column: 2)
!6185 = !DILocalVariable(name: "__dummy2", scope: !6183, file: !6149, line: 406, type: !30)
!6186 = !DILocation(line: 404, column: 64, scope: !6176)
!6187 = !DILocation(line: 404, column: 84, scope: !6176)
!6188 = !DILocation(line: 406, column: 2, scope: !6176)
!6189 = !DILocation(line: 406, column: 2, scope: !6183)
!6190 = !DILocation(line: 406, column: 2, scope: !6184)
!6191 = !DILocation(line: 407, column: 1, scope: !6176)
!6192 = distinct !DISubprogram(name: "blk_stat_remove_callback", scope: !2, file: !2, line: 157, type: !6027, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5341, retainedNodes: !6193)
!6193 = !{!6194, !6195, !6196, !6197, !6201}
!6194 = !DILocalVariable(name: "q", arg: 1, scope: !6192, file: !2, line: 157, type: !17)
!6195 = !DILocalVariable(name: "cb", arg: 2, scope: !6192, file: !2, line: 158, type: !5379)
!6196 = !DILocalVariable(name: "flags", scope: !6192, file: !2, line: 160, type: !30)
!6197 = !DILocalVariable(name: "__dummy", scope: !6198, file: !2, line: 162, type: !30)
!6198 = distinct !DILexicalBlock(scope: !6199, file: !2, line: 162, column: 2)
!6199 = distinct !DILexicalBlock(scope: !6200, file: !2, line: 162, column: 2)
!6200 = distinct !DILexicalBlock(scope: !6192, file: !2, line: 162, column: 2)
!6201 = !DILocalVariable(name: "__dummy2", scope: !6198, file: !2, line: 162, type: !30)
!6202 = !DILocation(line: 157, column: 53, scope: !6192)
!6203 = !DILocation(line: 158, column: 36, scope: !6192)
!6204 = !DILocation(line: 160, column: 2, scope: !6192)
!6205 = !DILocation(line: 160, column: 16, scope: !6192)
!6206 = !DILocation(line: 162, column: 2, scope: !6192)
!6207 = !DILocation(line: 162, column: 2, scope: !6200)
!6208 = !DILocation(line: 162, column: 2, scope: !6198)
!6209 = !DILocation(line: 162, column: 2, scope: !6199)
!6210 = !DILocation(line: 163, column: 16, scope: !6192)
!6211 = !DILocation(line: 163, column: 20, scope: !6192)
!6212 = !DILocation(line: 163, column: 2, scope: !6192)
!6213 = !DILocation(line: 164, column: 18, scope: !6214)
!6214 = distinct !DILexicalBlock(scope: !6192, file: !2, line: 164, column: 6)
!6215 = !DILocation(line: 164, column: 21, scope: !6214)
!6216 = !DILocation(line: 164, column: 28, scope: !6214)
!6217 = !DILocation(line: 164, column: 6, scope: !6214)
!6218 = !DILocation(line: 164, column: 39, scope: !6214)
!6219 = !DILocation(line: 164, column: 43, scope: !6214)
!6220 = !DILocation(line: 164, column: 46, scope: !6214)
!6221 = !DILocation(line: 164, column: 53, scope: !6214)
!6222 = !DILocation(line: 164, column: 6, scope: !6192)
!6223 = !DILocation(line: 165, column: 42, scope: !6214)
!6224 = !DILocation(line: 165, column: 3, scope: !6214)
!6225 = !DILocation(line: 166, column: 26, scope: !6192)
!6226 = !DILocation(line: 166, column: 29, scope: !6192)
!6227 = !DILocation(line: 166, column: 36, scope: !6192)
!6228 = !DILocation(line: 166, column: 42, scope: !6192)
!6229 = !DILocation(line: 166, column: 2, scope: !6192)
!6230 = !DILocation(line: 168, column: 18, scope: !6192)
!6231 = !DILocation(line: 168, column: 22, scope: !6192)
!6232 = !DILocation(line: 168, column: 2, scope: !6192)
!6233 = !DILocation(line: 169, column: 1, scope: !6192)
!6234 = distinct !DISubprogram(name: "list_del_rcu", scope: !6159, file: !6159, line: 155, type: !6235, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5341, retainedNodes: !6237)
!6235 = !DISubroutineType(types: !6236)
!6236 = !{null, !77}
!6237 = !{!6238}
!6238 = !DILocalVariable(name: "entry", arg: 1, scope: !6234, file: !6159, line: 155, type: !77)
!6239 = !DILocation(line: 155, column: 51, scope: !6234)
!6240 = !DILocation(line: 157, column: 19, scope: !6234)
!6241 = !DILocation(line: 157, column: 2, scope: !6234)
!6242 = !DILocation(line: 158, column: 2, scope: !6234)
!6243 = !DILocation(line: 158, column: 9, scope: !6234)
!6244 = !DILocation(line: 158, column: 14, scope: !6234)
!6245 = !DILocation(line: 159, column: 1, scope: !6234)
!6246 = distinct !DISubprogram(name: "list_empty", scope: !6247, file: !6247, line: 371, type: !6248, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5341, retainedNodes: !6252)
!6247 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!6248 = !DISubroutineType(types: !6249)
!6249 = !{!104, !6250}
!6250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6251, size: 64)
!6251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!6252 = !{!6253}
!6253 = !DILocalVariable(name: "head", arg: 1, scope: !6246, file: !6247, line: 371, type: !6250)
!6254 = !DILocation(line: 371, column: 54, scope: !6246)
!6255 = !DILocation(line: 373, column: 9, scope: !6256)
!6256 = distinct !DILexicalBlock(scope: !6246, file: !6247, line: 373, column: 9)
!6257 = !DILocation(line: 373, column: 9, scope: !6258)
!6258 = distinct !DILexicalBlock(scope: !6256, file: !6247, line: 373, column: 9)
!6259 = !DILocation(line: 373, column: 34, scope: !6246)
!6260 = !DILocation(line: 373, column: 31, scope: !6246)
!6261 = !DILocation(line: 373, column: 2, scope: !6246)
!6262 = !DISubprogram(name: "blk_queue_flag_clear", scope: !19, file: !19, line: 577, type: !6174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6263 = distinct !DISubprogram(name: "del_timer_sync", scope: !175, file: !175, line: 198, type: !6264, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5341, retainedNodes: !6266)
!6264 = !DISubroutineType(types: !6265)
!6265 = !{!104, !189}
!6266 = !{!6267}
!6267 = !DILocalVariable(name: "timer", arg: 1, scope: !6263, file: !175, line: 198, type: !189)
!6268 = !DILocation(line: 198, column: 53, scope: !6263)
!6269 = !DILocation(line: 200, column: 27, scope: !6263)
!6270 = !DILocation(line: 200, column: 9, scope: !6263)
!6271 = !DILocation(line: 200, column: 2, scope: !6263)
!6272 = distinct !DISubprogram(name: "blk_stat_free_callback", scope: !2, file: !2, line: 181, type: !5404, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5341, retainedNodes: !6273)
!6273 = !{!6274}
!6274 = !DILocalVariable(name: "cb", arg: 1, scope: !6272, file: !2, line: 181, type: !5379)
!6275 = !DILocation(line: 181, column: 55, scope: !6272)
!6276 = !DILocation(line: 183, column: 6, scope: !6277)
!6277 = distinct !DILexicalBlock(scope: !6272, file: !2, line: 183, column: 6)
!6278 = !DILocation(line: 183, column: 6, scope: !6272)
!6279 = !DILocation(line: 184, column: 13, scope: !6277)
!6280 = !DILocation(line: 184, column: 17, scope: !6277)
!6281 = !DILocation(line: 184, column: 3, scope: !6277)
!6282 = !DILocation(line: 185, column: 1, scope: !6272)
!6283 = !DISubprogram(name: "call_rcu", scope: !5716, file: !5716, line: 42, type: !6284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6284 = !DISubroutineType(types: !6285)
!6285 = !{null, !63, !6286}
!6286 = !DIDerivedType(tag: DW_TAG_typedef, name: "rcu_callback_t", file: !39, line: 238, baseType: !65)
!6287 = distinct !DISubprogram(name: "blk_stat_free_callback_rcu", scope: !2, file: !2, line: 171, type: !66, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5341, retainedNodes: !6288)
!6288 = !{!6289, !6290, !6291}
!6289 = !DILocalVariable(name: "head", arg: 1, scope: !6287, file: !2, line: 171, type: !63)
!6290 = !DILocalVariable(name: "cb", scope: !6287, file: !2, line: 173, type: !5379)
!6291 = !DILocalVariable(name: "__mptr", scope: !6292, file: !2, line: 175, type: !212)
!6292 = distinct !DILexicalBlock(scope: !6287, file: !2, line: 175, column: 7)
!6293 = !DILocation(line: 171, column: 57, scope: !6287)
!6294 = !DILocation(line: 173, column: 2, scope: !6287)
!6295 = !DILocation(line: 173, column: 28, scope: !6287)
!6296 = !DILocation(line: 175, column: 7, scope: !6292)
!6297 = !DILocation(line: 175, column: 7, scope: !6287)
!6298 = !DILocation(line: 175, column: 5, scope: !6287)
!6299 = !DILocation(line: 176, column: 14, scope: !6287)
!6300 = !DILocation(line: 176, column: 18, scope: !6287)
!6301 = !DILocation(line: 176, column: 2, scope: !6287)
!6302 = !DILocation(line: 177, column: 8, scope: !6287)
!6303 = !DILocation(line: 177, column: 12, scope: !6287)
!6304 = !DILocation(line: 177, column: 2, scope: !6287)
!6305 = !DILocation(line: 178, column: 8, scope: !6287)
!6306 = !DILocation(line: 178, column: 2, scope: !6287)
!6307 = !DILocation(line: 179, column: 1, scope: !6287)
!6308 = distinct !DISubprogram(name: "blk_stat_disable_accounting", scope: !2, file: !2, line: 187, type: !6309, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5341, retainedNodes: !6311)
!6309 = !DISubroutineType(types: !6310)
!6310 = !{null, !17}
!6311 = !{!6312, !6313, !6314, !6318}
!6312 = !DILocalVariable(name: "q", arg: 1, scope: !6308, file: !2, line: 187, type: !17)
!6313 = !DILocalVariable(name: "flags", scope: !6308, file: !2, line: 189, type: !30)
!6314 = !DILocalVariable(name: "__dummy", scope: !6315, file: !2, line: 191, type: !30)
!6315 = distinct !DILexicalBlock(scope: !6316, file: !2, line: 191, column: 2)
!6316 = distinct !DILexicalBlock(scope: !6317, file: !2, line: 191, column: 2)
!6317 = distinct !DILexicalBlock(scope: !6308, file: !2, line: 191, column: 2)
!6318 = !DILocalVariable(name: "__dummy2", scope: !6315, file: !2, line: 191, type: !30)
!6319 = !DILocation(line: 187, column: 56, scope: !6308)
!6320 = !DILocation(line: 189, column: 2, scope: !6308)
!6321 = !DILocation(line: 189, column: 16, scope: !6308)
!6322 = !DILocation(line: 191, column: 2, scope: !6308)
!6323 = !DILocation(line: 191, column: 2, scope: !6317)
!6324 = !DILocation(line: 191, column: 2, scope: !6315)
!6325 = !DILocation(line: 191, column: 2, scope: !6316)
!6326 = !DILocation(line: 192, column: 9, scope: !6327)
!6327 = distinct !DILexicalBlock(scope: !6308, file: !2, line: 192, column: 6)
!6328 = !DILocation(line: 192, column: 12, scope: !6327)
!6329 = !DILocation(line: 192, column: 19, scope: !6327)
!6330 = !DILocation(line: 192, column: 7, scope: !6327)
!6331 = !DILocation(line: 192, column: 30, scope: !6327)
!6332 = !DILocation(line: 192, column: 45, scope: !6327)
!6333 = !DILocation(line: 192, column: 48, scope: !6327)
!6334 = !DILocation(line: 192, column: 55, scope: !6327)
!6335 = !DILocation(line: 192, column: 33, scope: !6327)
!6336 = !DILocation(line: 192, column: 6, scope: !6308)
!6337 = !DILocation(line: 193, column: 42, scope: !6327)
!6338 = !DILocation(line: 193, column: 3, scope: !6327)
!6339 = !DILocation(line: 194, column: 26, scope: !6308)
!6340 = !DILocation(line: 194, column: 29, scope: !6308)
!6341 = !DILocation(line: 194, column: 36, scope: !6308)
!6342 = !DILocation(line: 194, column: 42, scope: !6308)
!6343 = !DILocation(line: 194, column: 2, scope: !6308)
!6344 = !DILocation(line: 195, column: 1, scope: !6308)
!6345 = distinct !DISubprogram(name: "blk_stat_enable_accounting", scope: !2, file: !2, line: 198, type: !6309, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5341, retainedNodes: !6346)
!6346 = !{!6347, !6348, !6349, !6353}
!6347 = !DILocalVariable(name: "q", arg: 1, scope: !6345, file: !2, line: 198, type: !17)
!6348 = !DILocalVariable(name: "flags", scope: !6345, file: !2, line: 200, type: !30)
!6349 = !DILocalVariable(name: "__dummy", scope: !6350, file: !2, line: 202, type: !30)
!6350 = distinct !DILexicalBlock(scope: !6351, file: !2, line: 202, column: 2)
!6351 = distinct !DILexicalBlock(scope: !6352, file: !2, line: 202, column: 2)
!6352 = distinct !DILexicalBlock(scope: !6345, file: !2, line: 202, column: 2)
!6353 = !DILocalVariable(name: "__dummy2", scope: !6350, file: !2, line: 202, type: !30)
!6354 = !DILocation(line: 198, column: 55, scope: !6345)
!6355 = !DILocation(line: 200, column: 2, scope: !6345)
!6356 = !DILocation(line: 200, column: 16, scope: !6345)
!6357 = !DILocation(line: 202, column: 2, scope: !6345)
!6358 = !DILocation(line: 202, column: 2, scope: !6352)
!6359 = !DILocation(line: 202, column: 2, scope: !6350)
!6360 = !DILocation(line: 202, column: 2, scope: !6351)
!6361 = !DILocation(line: 203, column: 7, scope: !6362)
!6362 = distinct !DILexicalBlock(scope: !6345, file: !2, line: 203, column: 6)
!6363 = !DILocation(line: 203, column: 10, scope: !6362)
!6364 = !DILocation(line: 203, column: 17, scope: !6362)
!6365 = !DILocation(line: 203, column: 27, scope: !6362)
!6366 = !DILocation(line: 203, column: 30, scope: !6362)
!6367 = !DILocation(line: 203, column: 45, scope: !6362)
!6368 = !DILocation(line: 203, column: 48, scope: !6362)
!6369 = !DILocation(line: 203, column: 55, scope: !6362)
!6370 = !DILocation(line: 203, column: 33, scope: !6362)
!6371 = !DILocation(line: 203, column: 6, scope: !6345)
!6372 = !DILocation(line: 204, column: 40, scope: !6362)
!6373 = !DILocation(line: 204, column: 3, scope: !6362)
!6374 = !DILocation(line: 205, column: 26, scope: !6345)
!6375 = !DILocation(line: 205, column: 29, scope: !6345)
!6376 = !DILocation(line: 205, column: 36, scope: !6345)
!6377 = !DILocation(line: 205, column: 42, scope: !6345)
!6378 = !DILocation(line: 205, column: 2, scope: !6345)
!6379 = !DILocation(line: 206, column: 1, scope: !6345)
!6380 = distinct !DISubprogram(name: "blk_alloc_queue_stats", scope: !2, file: !2, line: 209, type: !6381, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5341, retainedNodes: !6383)
!6381 = !DISubroutineType(types: !6382)
!6382 = !{!70}
!6383 = !{!6384}
!6384 = !DILocalVariable(name: "stats", scope: !6380, file: !2, line: 211, type: !70)
!6385 = !DILocation(line: 211, column: 2, scope: !6380)
!6386 = !DILocation(line: 211, column: 26, scope: !6380)
!6387 = !DILocation(line: 213, column: 10, scope: !6380)
!6388 = !DILocation(line: 213, column: 8, scope: !6380)
!6389 = !DILocation(line: 214, column: 7, scope: !6390)
!6390 = distinct !DILexicalBlock(scope: !6380, file: !2, line: 214, column: 6)
!6391 = !DILocation(line: 214, column: 6, scope: !6380)
!6392 = !DILocation(line: 215, column: 3, scope: !6390)
!6393 = !DILocation(line: 217, column: 18, scope: !6380)
!6394 = !DILocation(line: 217, column: 25, scope: !6380)
!6395 = !DILocation(line: 217, column: 2, scope: !6380)
!6396 = !DILocation(line: 218, column: 2, scope: !6380)
!6397 = !DILocation(line: 218, column: 2, scope: !6398)
!6398 = distinct !DILexicalBlock(scope: !6380, file: !2, line: 218, column: 2)
!6399 = !DILocation(line: 219, column: 2, scope: !6380)
!6400 = !DILocation(line: 219, column: 9, scope: !6380)
!6401 = !DILocation(line: 219, column: 20, scope: !6380)
!6402 = !DILocation(line: 221, column: 9, scope: !6380)
!6403 = !DILocation(line: 221, column: 2, scope: !6380)
!6404 = !DILocation(line: 222, column: 1, scope: !6380)
!6405 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !6247, file: !6247, line: 35, type: !6235, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5341, retainedNodes: !6406)
!6406 = !{!6407}
!6407 = !DILocalVariable(name: "list", arg: 1, scope: !6405, file: !6247, line: 35, type: !77)
!6408 = !DILocation(line: 35, column: 53, scope: !6405)
!6409 = !DILocation(line: 37, column: 2, scope: !6405)
!6410 = !DILocation(line: 37, column: 2, scope: !6411)
!6411 = distinct !DILexicalBlock(scope: !6405, file: !6247, line: 37, column: 2)
!6412 = !DILocation(line: 37, column: 2, scope: !6413)
!6413 = distinct !DILexicalBlock(scope: !6411, file: !6247, line: 37, column: 2)
!6414 = !DILocation(line: 37, column: 2, scope: !6415)
!6415 = distinct !DILexicalBlock(scope: !6411, file: !6247, line: 37, column: 2)
!6416 = !DILocation(line: 38, column: 2, scope: !6405)
!6417 = !DILocation(line: 38, column: 2, scope: !6418)
!6418 = distinct !DILexicalBlock(scope: !6405, file: !6247, line: 38, column: 2)
!6419 = !DILocation(line: 38, column: 2, scope: !6420)
!6420 = distinct !DILexicalBlock(scope: !6418, file: !6247, line: 38, column: 2)
!6421 = !DILocation(line: 38, column: 2, scope: !6422)
!6422 = distinct !DILexicalBlock(scope: !6418, file: !6247, line: 38, column: 2)
!6423 = !DILocation(line: 39, column: 1, scope: !6405)
!6424 = distinct !DISubprogram(name: "blk_free_queue_stats", scope: !2, file: !2, line: 224, type: !6425, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5341, retainedNodes: !6427)
!6425 = !DISubroutineType(types: !6426)
!6426 = !{null, !70}
!6427 = !{!6428, !6429, !6431}
!6428 = !DILocalVariable(name: "stats", arg: 1, scope: !6424, file: !2, line: 224, type: !70)
!6429 = !DILocalVariable(name: "__ret_warn_on", scope: !6430, file: !2, line: 229, type: !104)
!6430 = distinct !DILexicalBlock(scope: !6424, file: !2, line: 229, column: 2)
!6431 = !DILocalVariable(name: "__flags", scope: !6432, file: !2, line: 229, type: !104)
!6432 = distinct !DILexicalBlock(scope: !6433, file: !2, line: 229, column: 2)
!6433 = distinct !DILexicalBlock(scope: !6430, file: !2, line: 229, column: 2)
!6434 = !DILocation(line: 224, column: 51, scope: !6424)
!6435 = !DILocation(line: 226, column: 7, scope: !6436)
!6436 = distinct !DILexicalBlock(scope: !6424, file: !2, line: 226, column: 6)
!6437 = !DILocation(line: 226, column: 6, scope: !6424)
!6438 = !DILocation(line: 227, column: 3, scope: !6436)
!6439 = !DILocation(line: 229, column: 2, scope: !6430)
!6440 = !DILocation(line: 229, column: 2, scope: !6433)
!6441 = !DILocation(line: 229, column: 2, scope: !6432)
!6442 = !DILocation(line: 229, column: 2, scope: !6443)
!6443 = distinct !DILexicalBlock(scope: !6432, file: !2, line: 229, column: 2)
!6444 = !DILocation(line: 229, column: 2, scope: !6445)
!6445 = distinct !DILexicalBlock(scope: !6432, file: !2, line: 229, column: 2)
!6446 = !{i64 2156155279, i64 2156155308, i64 2156155354, i64 2156155412, i64 2156155466, i64 2156155520, i64 2156155575, i64 2156155606, i64 2156155914, i64 2156155920, i64 2156155967, i64 2156155990, i64 2156156016}
!6447 = !DILocation(line: 229, column: 2, scope: !6448)
!6448 = distinct !DILexicalBlock(scope: !6432, file: !2, line: 229, column: 2)
!6449 = !DILocation(line: 229, column: 2, scope: !6424)
!6450 = !DILocation(line: 231, column: 8, scope: !6424)
!6451 = !DILocation(line: 231, column: 2, scope: !6424)
!6452 = !DILocation(line: 232, column: 1, scope: !6424)
!6453 = distinct !DISubprogram(name: "div_u64_rem", scope: !5551, file: !5551, line: 26, type: !6454, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5341, retainedNodes: !6456)
!6454 = !DISubroutineType(types: !6455)
!6455 = !{!464, !464, !191, !3485}
!6456 = !{!6457, !6458, !6459}
!6457 = !DILocalVariable(name: "dividend", arg: 1, scope: !6453, file: !5551, line: 26, type: !464)
!6458 = !DILocalVariable(name: "divisor", arg: 2, scope: !6453, file: !5551, line: 26, type: !191)
!6459 = !DILocalVariable(name: "remainder", arg: 3, scope: !6453, file: !5551, line: 26, type: !3485)
!6460 = !DILocation(line: 26, column: 35, scope: !6453)
!6461 = !DILocation(line: 26, column: 49, scope: !6453)
!6462 = !DILocation(line: 26, column: 63, scope: !6453)
!6463 = !DILocation(line: 28, column: 15, scope: !6453)
!6464 = !DILocation(line: 28, column: 26, scope: !6453)
!6465 = !DILocation(line: 28, column: 24, scope: !6453)
!6466 = !DILocation(line: 28, column: 3, scope: !6453)
!6467 = !DILocation(line: 28, column: 13, scope: !6453)
!6468 = !DILocation(line: 29, column: 9, scope: !6453)
!6469 = !DILocation(line: 29, column: 20, scope: !6453)
!6470 = !DILocation(line: 29, column: 18, scope: !6453)
!6471 = !DILocation(line: 29, column: 2, scope: !6453)
!6472 = !DISubprogram(name: "__rcu_read_lock", scope: !5716, file: !5716, line: 74, type: !953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6473 = distinct !DISubprogram(name: "timer_pending", scope: !175, file: !175, line: 166, type: !6474, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5341, retainedNodes: !6478)
!6474 = !DISubroutineType(types: !6475)
!6475 = !{!104, !6476}
!6476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6477, size: 64)
!6477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!6478 = !{!6479}
!6479 = !DILocalVariable(name: "timer", arg: 1, scope: !6473, file: !175, line: 166, type: !6476)
!6480 = !DILocation(line: 166, column: 59, scope: !6473)
!6481 = !DILocation(line: 168, column: 35, scope: !6473)
!6482 = !DILocation(line: 168, column: 42, scope: !6473)
!6483 = !DILocation(line: 168, column: 10, scope: !6473)
!6484 = !DILocation(line: 168, column: 9, scope: !6473)
!6485 = !DILocation(line: 168, column: 2, scope: !6473)
!6486 = distinct !DISubprogram(name: "hlist_unhashed_lockless", scope: !6247, file: !6247, line: 961, type: !6487, scopeLine: 962, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5341, retainedNodes: !6491)
!6487 = !DISubroutineType(types: !6488)
!6488 = !{!104, !6489}
!6489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6490, size: 64)
!6490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!6491 = !{!6492}
!6492 = !DILocalVariable(name: "h", arg: 1, scope: !6486, file: !6247, line: 961, type: !6489)
!6493 = !DILocation(line: 961, column: 68, scope: !6486)
!6494 = !DILocation(line: 963, column: 10, scope: !6495)
!6495 = distinct !DILexicalBlock(scope: !6486, file: !6247, line: 963, column: 10)
!6496 = !DILocation(line: 963, column: 10, scope: !6497)
!6497 = distinct !DILexicalBlock(scope: !6495, file: !6247, line: 963, column: 10)
!6498 = !DILocation(line: 963, column: 9, scope: !6486)
!6499 = !DILocation(line: 963, column: 2, scope: !6486)
!6500 = !DISubprogram(name: "__rcu_read_unlock", scope: !5716, file: !5716, line: 75, type: !953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6501 = !DISubprogram(name: "kmalloc_large", scope: !5366, file: !5366, line: 531, type: !5857, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6502 = distinct !DISubprogram(name: "__kmalloc_index", scope: !5366, file: !5366, line: 444, type: !6503, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5341, retainedNodes: !6505)
!6503 = !DISubroutineType(types: !6504)
!6504 = !{!193, !360, !56}
!6505 = !{!6506, !6507}
!6506 = !DILocalVariable(name: "size", arg: 1, scope: !6502, file: !5366, line: 444, type: !360)
!6507 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6502, file: !5366, line: 445, type: !56)
!6508 = !DILocation(line: 444, column: 60, scope: !6502)
!6509 = !DILocation(line: 445, column: 16, scope: !6502)
!6510 = !DILocation(line: 447, column: 7, scope: !6511)
!6511 = distinct !DILexicalBlock(scope: !6502, file: !5366, line: 447, column: 6)
!6512 = !DILocation(line: 447, column: 6, scope: !6502)
!6513 = !DILocation(line: 448, column: 3, scope: !6511)
!6514 = !DILocation(line: 450, column: 6, scope: !6515)
!6515 = distinct !DILexicalBlock(scope: !6502, file: !5366, line: 450, column: 6)
!6516 = !DILocation(line: 450, column: 11, scope: !6515)
!6517 = !DILocation(line: 450, column: 6, scope: !6502)
!6518 = !DILocation(line: 451, column: 3, scope: !6515)
!6519 = !DILocation(line: 453, column: 32, scope: !6520)
!6520 = distinct !DILexicalBlock(scope: !6502, file: !5366, line: 453, column: 6)
!6521 = !DILocation(line: 453, column: 37, scope: !6520)
!6522 = !DILocation(line: 453, column: 42, scope: !6520)
!6523 = !DILocation(line: 453, column: 45, scope: !6520)
!6524 = !DILocation(line: 453, column: 50, scope: !6520)
!6525 = !DILocation(line: 453, column: 6, scope: !6502)
!6526 = !DILocation(line: 454, column: 3, scope: !6520)
!6527 = !DILocation(line: 455, column: 32, scope: !6528)
!6528 = distinct !DILexicalBlock(scope: !6502, file: !5366, line: 455, column: 6)
!6529 = !DILocation(line: 455, column: 37, scope: !6528)
!6530 = !DILocation(line: 455, column: 43, scope: !6528)
!6531 = !DILocation(line: 455, column: 46, scope: !6528)
!6532 = !DILocation(line: 455, column: 51, scope: !6528)
!6533 = !DILocation(line: 455, column: 6, scope: !6502)
!6534 = !DILocation(line: 456, column: 3, scope: !6528)
!6535 = !DILocation(line: 457, column: 6, scope: !6536)
!6536 = distinct !DILexicalBlock(scope: !6502, file: !5366, line: 457, column: 6)
!6537 = !DILocation(line: 457, column: 11, scope: !6536)
!6538 = !DILocation(line: 457, column: 6, scope: !6502)
!6539 = !DILocation(line: 457, column: 26, scope: !6536)
!6540 = !DILocation(line: 458, column: 6, scope: !6541)
!6541 = distinct !DILexicalBlock(scope: !6502, file: !5366, line: 458, column: 6)
!6542 = !DILocation(line: 458, column: 11, scope: !6541)
!6543 = !DILocation(line: 458, column: 6, scope: !6502)
!6544 = !DILocation(line: 458, column: 26, scope: !6541)
!6545 = !DILocation(line: 459, column: 6, scope: !6546)
!6546 = distinct !DILexicalBlock(scope: !6502, file: !5366, line: 459, column: 6)
!6547 = !DILocation(line: 459, column: 11, scope: !6546)
!6548 = !DILocation(line: 459, column: 6, scope: !6502)
!6549 = !DILocation(line: 459, column: 26, scope: !6546)
!6550 = !DILocation(line: 460, column: 6, scope: !6551)
!6551 = distinct !DILexicalBlock(scope: !6502, file: !5366, line: 460, column: 6)
!6552 = !DILocation(line: 460, column: 11, scope: !6551)
!6553 = !DILocation(line: 460, column: 6, scope: !6502)
!6554 = !DILocation(line: 460, column: 26, scope: !6551)
!6555 = !DILocation(line: 461, column: 6, scope: !6556)
!6556 = distinct !DILexicalBlock(scope: !6502, file: !5366, line: 461, column: 6)
!6557 = !DILocation(line: 461, column: 11, scope: !6556)
!6558 = !DILocation(line: 461, column: 6, scope: !6502)
!6559 = !DILocation(line: 461, column: 26, scope: !6556)
!6560 = !DILocation(line: 462, column: 6, scope: !6561)
!6561 = distinct !DILexicalBlock(scope: !6502, file: !5366, line: 462, column: 6)
!6562 = !DILocation(line: 462, column: 11, scope: !6561)
!6563 = !DILocation(line: 462, column: 6, scope: !6502)
!6564 = !DILocation(line: 462, column: 26, scope: !6561)
!6565 = !DILocation(line: 463, column: 6, scope: !6566)
!6566 = distinct !DILexicalBlock(scope: !6502, file: !5366, line: 463, column: 6)
!6567 = !DILocation(line: 463, column: 11, scope: !6566)
!6568 = !DILocation(line: 463, column: 6, scope: !6502)
!6569 = !DILocation(line: 463, column: 26, scope: !6566)
!6570 = !DILocation(line: 464, column: 6, scope: !6571)
!6571 = distinct !DILexicalBlock(scope: !6502, file: !5366, line: 464, column: 6)
!6572 = !DILocation(line: 464, column: 11, scope: !6571)
!6573 = !DILocation(line: 464, column: 6, scope: !6502)
!6574 = !DILocation(line: 464, column: 26, scope: !6571)
!6575 = !DILocation(line: 465, column: 6, scope: !6576)
!6576 = distinct !DILexicalBlock(scope: !6502, file: !5366, line: 465, column: 6)
!6577 = !DILocation(line: 465, column: 11, scope: !6576)
!6578 = !DILocation(line: 465, column: 6, scope: !6502)
!6579 = !DILocation(line: 465, column: 26, scope: !6576)
!6580 = !DILocation(line: 466, column: 6, scope: !6581)
!6581 = distinct !DILexicalBlock(scope: !6502, file: !5366, line: 466, column: 6)
!6582 = !DILocation(line: 466, column: 11, scope: !6581)
!6583 = !DILocation(line: 466, column: 6, scope: !6502)
!6584 = !DILocation(line: 466, column: 26, scope: !6581)
!6585 = !DILocation(line: 467, column: 6, scope: !6586)
!6586 = distinct !DILexicalBlock(scope: !6502, file: !5366, line: 467, column: 6)
!6587 = !DILocation(line: 467, column: 11, scope: !6586)
!6588 = !DILocation(line: 467, column: 6, scope: !6502)
!6589 = !DILocation(line: 467, column: 26, scope: !6586)
!6590 = !DILocation(line: 468, column: 6, scope: !6591)
!6591 = distinct !DILexicalBlock(scope: !6502, file: !5366, line: 468, column: 6)
!6592 = !DILocation(line: 468, column: 11, scope: !6591)
!6593 = !DILocation(line: 468, column: 6, scope: !6502)
!6594 = !DILocation(line: 468, column: 26, scope: !6591)
!6595 = !DILocation(line: 469, column: 6, scope: !6596)
!6596 = distinct !DILexicalBlock(scope: !6502, file: !5366, line: 469, column: 6)
!6597 = !DILocation(line: 469, column: 11, scope: !6596)
!6598 = !DILocation(line: 469, column: 6, scope: !6502)
!6599 = !DILocation(line: 469, column: 26, scope: !6596)
!6600 = !DILocation(line: 470, column: 6, scope: !6601)
!6601 = distinct !DILexicalBlock(scope: !6502, file: !5366, line: 470, column: 6)
!6602 = !DILocation(line: 470, column: 11, scope: !6601)
!6603 = !DILocation(line: 470, column: 6, scope: !6502)
!6604 = !DILocation(line: 470, column: 26, scope: !6601)
!6605 = !DILocation(line: 471, column: 6, scope: !6606)
!6606 = distinct !DILexicalBlock(scope: !6502, file: !5366, line: 471, column: 6)
!6607 = !DILocation(line: 471, column: 11, scope: !6606)
!6608 = !DILocation(line: 471, column: 6, scope: !6502)
!6609 = !DILocation(line: 471, column: 26, scope: !6606)
!6610 = !DILocation(line: 472, column: 6, scope: !6611)
!6611 = distinct !DILexicalBlock(scope: !6502, file: !5366, line: 472, column: 6)
!6612 = !DILocation(line: 472, column: 11, scope: !6611)
!6613 = !DILocation(line: 472, column: 6, scope: !6502)
!6614 = !DILocation(line: 472, column: 26, scope: !6611)
!6615 = !DILocation(line: 473, column: 6, scope: !6616)
!6616 = distinct !DILexicalBlock(scope: !6502, file: !5366, line: 473, column: 6)
!6617 = !DILocation(line: 473, column: 11, scope: !6616)
!6618 = !DILocation(line: 473, column: 6, scope: !6502)
!6619 = !DILocation(line: 473, column: 26, scope: !6616)
!6620 = !DILocation(line: 474, column: 6, scope: !6621)
!6621 = distinct !DILexicalBlock(scope: !6502, file: !5366, line: 474, column: 6)
!6622 = !DILocation(line: 474, column: 11, scope: !6621)
!6623 = !DILocation(line: 474, column: 6, scope: !6502)
!6624 = !DILocation(line: 474, column: 27, scope: !6621)
!6625 = !DILocation(line: 475, column: 6, scope: !6626)
!6626 = distinct !DILexicalBlock(scope: !6502, file: !5366, line: 475, column: 6)
!6627 = !DILocation(line: 475, column: 11, scope: !6626)
!6628 = !DILocation(line: 475, column: 6, scope: !6502)
!6629 = !DILocation(line: 475, column: 32, scope: !6626)
!6630 = !DILocation(line: 477, column: 50, scope: !6631)
!6631 = distinct !DILexicalBlock(scope: !6502, file: !5366, line: 477, column: 6)
!6632 = !DILocation(line: 477, column: 6, scope: !6502)
!6633 = !DILocation(line: 478, column: 3, scope: !6631)
!6634 = !DILocation(line: 478, column: 3, scope: !6635)
!6635 = distinct !DILexicalBlock(scope: !6636, file: !5366, line: 478, column: 3)
!6636 = distinct !DILexicalBlock(scope: !6631, file: !5366, line: 478, column: 3)
!6637 = !{i32 -2141627945}
!6638 = !DILocation(line: 478, column: 3, scope: !6636)
!6639 = !DILocation(line: 480, column: 3, scope: !6631)
!6640 = !DILocation(line: 480, column: 3, scope: !6641)
!6641 = distinct !DILexicalBlock(scope: !6631, file: !5366, line: 480, column: 3)
!6642 = !DILocation(line: 480, column: 3, scope: !6643)
!6643 = distinct !DILexicalBlock(scope: !6641, file: !5366, line: 480, column: 3)
!6644 = !DILocation(line: 480, column: 3, scope: !6645)
!6645 = distinct !DILexicalBlock(scope: !6641, file: !5366, line: 480, column: 3)
!6646 = !{i64 2153339554, i64 2153339583, i64 2153339629, i64 2153339687, i64 2153339741, i64 2153339795, i64 2153339850, i64 2153339881}
!6647 = !DILocation(line: 483, column: 2, scope: !6502)
!6648 = !DILocation(line: 484, column: 1, scope: !6502)
!6649 = !DISubprogram(name: "kmalloc_trace", scope: !5366, file: !5366, line: 525, type: !6650, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6650 = !DISubroutineType(types: !6651)
!6651 = !{!212, !2330, !1112, !360}
!6652 = distinct !DISubprogram(name: "kmalloc_type", scope: !5366, file: !5366, line: 401, type: !6653, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5341, retainedNodes: !6655)
!6653 = !DISubroutineType(types: !6654)
!6654 = !{!5365, !1112, !30}
!6655 = !{!6656, !6657}
!6656 = !DILocalVariable(name: "flags", arg: 1, scope: !6652, file: !5366, line: 401, type: !1112)
!6657 = !DILocalVariable(name: "caller", arg: 2, scope: !6652, file: !5366, line: 401, type: !30)
!6658 = !DILocation(line: 401, column: 67, scope: !6652)
!6659 = !DILocation(line: 401, column: 88, scope: !6652)
!6660 = !DILocation(line: 407, column: 6, scope: !6661)
!6661 = distinct !DILexicalBlock(scope: !6652, file: !5366, line: 407, column: 6)
!6662 = !DILocation(line: 407, column: 6, scope: !6652)
!6663 = !DILocation(line: 413, column: 3, scope: !6661)
!6664 = !DILocation(line: 423, column: 38, scope: !6665)
!6665 = distinct !DILexicalBlock(scope: !6652, file: !5366, line: 423, column: 6)
!6666 = !DILocation(line: 423, column: 44, scope: !6665)
!6667 = !DILocation(line: 423, column: 6, scope: !6652)
!6668 = !DILocation(line: 424, column: 3, scope: !6665)
!6669 = !DILocation(line: 426, column: 3, scope: !6670)
!6670 = distinct !DILexicalBlock(scope: !6652, file: !5366, line: 425, column: 6)
!6671 = !DILocation(line: 429, column: 1, scope: !6652)
!6672 = !DISubprogram(name: "__kmalloc", scope: !5366, file: !5366, line: 488, type: !5857, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6673 = !DISubprogram(name: "__compiletime_assert_245", scope: !5366, file: !5366, line: 478, type: !953, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6674 = distinct !DISubprogram(name: "__must_check_overflow", scope: !6675, file: !6675, line: 51, type: !6676, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5341, retainedNodes: !6678)
!6675 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!6676 = !DISubroutineType(types: !6677)
!6677 = !{!56, !56}
!6678 = !{!6679}
!6679 = !DILocalVariable(name: "overflow", arg: 1, scope: !6674, file: !6675, line: 51, type: !56)
!6680 = !DILocation(line: 51, column: 60, scope: !6674)
!6681 = !DILocation(line: 53, column: 9, scope: !6674)
!6682 = !DILocation(line: 53, column: 2, scope: !6674)
!6683 = distinct !DISubprogram(name: "variable__ffs", scope: !6684, file: !6684, line: 250, type: !6685, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5341, retainedNodes: !6687)
!6684 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6685 = !DISubroutineType(types: !6686)
!6686 = !{!30, !30}
!6687 = !{!6688}
!6688 = !DILocalVariable(name: "word", arg: 1, scope: !6683, file: !6684, line: 250, type: !30)
!6689 = !DILocation(line: 250, column: 66, scope: !6683)
!6690 = !DILocation(line: 254, column: 11, scope: !6683)
!6691 = !DILocation(line: 252, column: 2, scope: !6683)
!6692 = !{i64 298330}
!6693 = !DILocation(line: 255, column: 9, scope: !6683)
!6694 = !DILocation(line: 255, column: 2, scope: !6683)
!6695 = !DISubprogram(name: "_find_next_bit", scope: !6104, file: !6104, line: 11, type: !6105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6696 = distinct !DISubprogram(name: "__list_add_rcu", scope: !6159, file: !6159, line: 76, type: !6697, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5341, retainedNodes: !6699)
!6697 = !DISubroutineType(types: !6698)
!6698 = !{null, !77, !77, !77}
!6699 = !{!6700, !6701, !6702, !6703}
!6700 = !DILocalVariable(name: "new", arg: 1, scope: !6696, file: !6159, line: 76, type: !77)
!6701 = !DILocalVariable(name: "prev", arg: 2, scope: !6696, file: !6159, line: 77, type: !77)
!6702 = !DILocalVariable(name: "next", arg: 3, scope: !6696, file: !6159, line: 77, type: !77)
!6703 = !DILocalVariable(name: "_r_a_p__v", scope: !6704, file: !6159, line: 84, type: !5413)
!6704 = distinct !DILexicalBlock(scope: !6696, file: !6159, line: 84, column: 2)
!6705 = !DILocation(line: 76, column: 53, scope: !6696)
!6706 = !DILocation(line: 77, column: 21, scope: !6696)
!6707 = !DILocation(line: 77, column: 45, scope: !6696)
!6708 = !DILocation(line: 79, column: 24, scope: !6709)
!6709 = distinct !DILexicalBlock(scope: !6696, file: !6159, line: 79, column: 6)
!6710 = !DILocation(line: 79, column: 29, scope: !6709)
!6711 = !DILocation(line: 79, column: 35, scope: !6709)
!6712 = !DILocation(line: 79, column: 7, scope: !6709)
!6713 = !DILocation(line: 79, column: 6, scope: !6696)
!6714 = !DILocation(line: 80, column: 3, scope: !6709)
!6715 = !DILocation(line: 82, column: 14, scope: !6696)
!6716 = !DILocation(line: 82, column: 2, scope: !6696)
!6717 = !DILocation(line: 82, column: 7, scope: !6696)
!6718 = !DILocation(line: 82, column: 12, scope: !6696)
!6719 = !DILocation(line: 83, column: 14, scope: !6696)
!6720 = !DILocation(line: 83, column: 2, scope: !6696)
!6721 = !DILocation(line: 83, column: 7, scope: !6696)
!6722 = !DILocation(line: 83, column: 12, scope: !6696)
!6723 = !DILocation(line: 84, column: 2, scope: !6696)
!6724 = !DILocation(line: 84, column: 2, scope: !6704)
!6725 = !DILocation(line: 84, column: 2, scope: !6726)
!6726 = distinct !DILexicalBlock(scope: !6704, file: !6159, line: 84, column: 2)
!6727 = !DILocation(line: 84, column: 2, scope: !6728)
!6728 = distinct !DILexicalBlock(scope: !6726, file: !6159, line: 84, column: 2)
!6729 = !DILocation(line: 84, column: 2, scope: !6730)
!6730 = distinct !DILexicalBlock(scope: !6728, file: !6159, line: 84, column: 2)
!6731 = !DILocation(line: 84, column: 2, scope: !6732)
!6732 = distinct !DILexicalBlock(scope: !6728, file: !6159, line: 84, column: 2)
!6733 = !DILocation(line: 84, column: 2, scope: !6734)
!6734 = distinct !DILexicalBlock(scope: !6726, file: !6159, line: 84, column: 2)
!6735 = !DILocation(line: 84, column: 2, scope: !6736)
!6736 = distinct !DILexicalBlock(scope: !6734, file: !6159, line: 84, column: 2)
!6737 = !DILocation(line: 84, column: 2, scope: !6738)
!6738 = distinct !DILexicalBlock(scope: !6734, file: !6159, line: 84, column: 2)
!6739 = !DILocation(line: 84, column: 2, scope: !6740)
!6740 = distinct !DILexicalBlock(scope: !6738, file: !6159, line: 84, column: 2)
!6741 = !{i64 2149633339}
!6742 = !DILocation(line: 84, column: 2, scope: !6743)
!6743 = distinct !DILexicalBlock(scope: !6738, file: !6159, line: 84, column: 2)
!6744 = !DILocation(line: 84, column: 2, scope: !6745)
!6745 = distinct !DILexicalBlock(scope: !6743, file: !6159, line: 84, column: 2)
!6746 = !DILocation(line: 84, column: 2, scope: !6747)
!6747 = distinct !DILexicalBlock(scope: !6743, file: !6159, line: 84, column: 2)
!6748 = !DILocation(line: 85, column: 15, scope: !6696)
!6749 = !DILocation(line: 85, column: 2, scope: !6696)
!6750 = !DILocation(line: 85, column: 8, scope: !6696)
!6751 = !DILocation(line: 85, column: 13, scope: !6696)
!6752 = !DILocation(line: 86, column: 1, scope: !6696)
!6753 = distinct !DISubprogram(name: "__list_add_valid", scope: !6247, file: !6247, line: 128, type: !6754, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5341, retainedNodes: !6756)
!6754 = !DISubroutineType(types: !6755)
!6755 = !{!56, !77, !77, !77}
!6756 = !{!6757, !6758, !6759}
!6757 = !DILocalVariable(name: "new", arg: 1, scope: !6753, file: !6247, line: 128, type: !77)
!6758 = !DILocalVariable(name: "prev", arg: 2, scope: !6753, file: !6247, line: 129, type: !77)
!6759 = !DILocalVariable(name: "next", arg: 3, scope: !6753, file: !6247, line: 130, type: !77)
!6760 = !DILocation(line: 128, column: 55, scope: !6753)
!6761 = !DILocation(line: 129, column: 23, scope: !6753)
!6762 = !DILocation(line: 130, column: 23, scope: !6753)
!6763 = !DILocation(line: 132, column: 2, scope: !6753)
!6764 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !6144, file: !6144, line: 43, type: !6765, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6765 = !DISubroutineType(types: !6766)
!6766 = !{null, !6147, !30}
!6767 = distinct !DISubprogram(name: "__list_del_entry", scope: !6247, file: !6247, line: 213, type: !6235, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5341, retainedNodes: !6768)
!6768 = !{!6769}
!6769 = !DILocalVariable(name: "entry", arg: 1, scope: !6767, file: !6247, line: 213, type: !77)
!6770 = !DILocation(line: 213, column: 55, scope: !6767)
!6771 = !DILocation(line: 215, column: 30, scope: !6772)
!6772 = distinct !DILexicalBlock(scope: !6767, file: !6247, line: 215, column: 6)
!6773 = !DILocation(line: 215, column: 7, scope: !6772)
!6774 = !DILocation(line: 215, column: 6, scope: !6767)
!6775 = !DILocation(line: 216, column: 3, scope: !6772)
!6776 = !DILocation(line: 218, column: 13, scope: !6767)
!6777 = !DILocation(line: 218, column: 20, scope: !6767)
!6778 = !DILocation(line: 218, column: 26, scope: !6767)
!6779 = !DILocation(line: 218, column: 33, scope: !6767)
!6780 = !DILocation(line: 218, column: 2, scope: !6767)
!6781 = !DILocation(line: 219, column: 1, scope: !6767)
!6782 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !6247, file: !6247, line: 134, type: !6783, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5341, retainedNodes: !6785)
!6783 = !DISubroutineType(types: !6784)
!6784 = !{!56, !77}
!6785 = !{!6786}
!6786 = !DILocalVariable(name: "entry", arg: 1, scope: !6782, file: !6247, line: 134, type: !77)
!6787 = !DILocation(line: 134, column: 61, scope: !6782)
!6788 = !DILocation(line: 136, column: 2, scope: !6782)
!6789 = distinct !DISubprogram(name: "__list_del", scope: !6247, file: !6247, line: 193, type: !6160, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5341, retainedNodes: !6790)
!6790 = !{!6791, !6792}
!6791 = !DILocalVariable(name: "prev", arg: 1, scope: !6789, file: !6247, line: 193, type: !77)
!6792 = !DILocalVariable(name: "next", arg: 2, scope: !6789, file: !6247, line: 193, type: !77)
!6793 = !DILocation(line: 193, column: 50, scope: !6789)
!6794 = !DILocation(line: 193, column: 75, scope: !6789)
!6795 = !DILocation(line: 195, column: 15, scope: !6789)
!6796 = !DILocation(line: 195, column: 2, scope: !6789)
!6797 = !DILocation(line: 195, column: 8, scope: !6789)
!6798 = !DILocation(line: 195, column: 13, scope: !6789)
!6799 = !DILocation(line: 196, column: 2, scope: !6789)
!6800 = !DILocation(line: 196, column: 2, scope: !6801)
!6801 = distinct !DILexicalBlock(scope: !6789, file: !6247, line: 196, column: 2)
!6802 = !DILocation(line: 196, column: 2, scope: !6803)
!6803 = distinct !DILexicalBlock(scope: !6801, file: !6247, line: 196, column: 2)
!6804 = !DILocation(line: 196, column: 2, scope: !6805)
!6805 = distinct !DILexicalBlock(scope: !6801, file: !6247, line: 196, column: 2)
!6806 = !DILocation(line: 197, column: 1, scope: !6789)
!6807 = !DISubprogram(name: "timer_delete_sync", scope: !175, file: !175, line: 185, type: !6264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6808 = !DISubprogram(name: "free_percpu", scope: !5936, file: !5936, line: 134, type: !681, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
