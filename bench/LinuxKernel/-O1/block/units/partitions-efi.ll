; ModuleID = 'block/partitions/efi.c'
source_filename = "block/partitions/efi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.guid_t = type { [16 x i8] }
%struct.parsed_partitions = type { ptr, [32 x i8], ptr, i32, i32, i8, ptr }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, %struct.bio_set, i32, i64, %struct.mutex, i32, ptr, %struct.kobject, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.lockdep_map, i64, i32, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type {}
%struct._gpt_header = type <{ i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.guid_t, i64, i32, i32, i32 }>
%struct._gpt_entry = type { %struct.guid_t, %struct.guid_t, i64, i64, %struct._gpt_entry_attributes, [36 x i16] }
%struct._gpt_entry_attributes = type { i64 }
%struct.anon.13 = type { i64, i64, i32, i8, %struct.partition_meta_info }
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, %struct.mutex, ptr, ptr, i32, %struct.xarray, i32, ptr, i64, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.refcount_struct, ptr, ptr, i32, i64, i32, i32, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i64], ptr, %struct.list_head, %struct.mutex, %struct.queue_limits, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, ptr, ptr, ptr, %struct.mutex, i8 }
%struct.percpu_ref = type { i64, ptr }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.queue_limits = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Sector = type { ptr }
%struct._legacy_mbr = type <{ [440 x i8], i32, i16, [4 x %struct._gpt_mbr_record], i16 }>
%struct._gpt_mbr_record = type { i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.block_device = type { i64, i64, ptr, ptr, ptr, i64, i8, i8, i8, i8, i32, %struct.atomic_t, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.mutex, i32, i32, ptr, %struct.mutex, ptr, ptr, i8, %struct.device }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.folio = type { %union.anon.14, %union.anon.29, %union.anon.31 }
%union.anon.14 = type { %struct.page }
%struct.page = type { i64, %union.anon.19, %union.anon.28, %struct.atomic_t, [8 x i8] }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { %union.anon.21, ptr, %union.anon.23, i64 }
%union.anon.21 = type { %struct.list_head }
%union.anon.23 = type { i64 }
%union.anon.28 = type { %struct.atomic_t }
%union.anon.29 = type { %struct.page }
%union.anon.31 = type { %struct.page }

@__setup_str_force_gpt_fn = internal constant [4 x i8] c"gpt\00", section ".init.rodata", align 1, !dbg !0
@__setup_force_gpt_fn = internal global %struct.obs_kernel_param { ptr @__setup_str_force_gpt_fn, ptr @force_gpt_fn, i32 0 }, section ".init.setup", align 8, !dbg !217
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !232
@force_gpt = internal global i32 0, align 4, !dbg !237
@.str.1 = private unnamed_addr constant [48 x i8] c"\014Alternate GPT is invalid, using primary GPT.\0A\00", align 1, !dbg !239
@.str.2 = private unnamed_addr constant [48 x i8] c"\014Primary GPT is invalid, using alternate GPT.\0A\00", align 1, !dbg !244
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !246
@.str.4 = private unnamed_addr constant [55 x i8] c"\014GPT:Primary header LBA != Alt. header alternate_lba\0A\00", align 1, !dbg !251
@.str.5 = private unnamed_addr constant [20 x i8] c"\014GPT:%lld != %lld\0A\00", align 1, !dbg !256
@.str.6 = private unnamed_addr constant [58 x i8] c"\014GPT:Primary header alternate_lba != Alt. header my_lba\0A\00", align 1, !dbg !261
@.str.7 = private unnamed_addr constant [38 x i8] c"\014GPT:first_usable_lbas don't match.\0A\00", align 1, !dbg !266
@.str.8 = private unnamed_addr constant [37 x i8] c"\014GPT:last_usable_lbas don't match.\0A\00", align 1, !dbg !271
@.str.9 = private unnamed_addr constant [31 x i8] c"\014GPT:disk_guids don't match.\0A\00", align 1, !dbg !276
@.str.10 = private unnamed_addr constant [55 x i8] c"\014GPT:num_partition_entries don't match: 0x%x != 0x%x\0A\00", align 1, !dbg !281
@.str.11 = private unnamed_addr constant [63 x i8] c"\014GPT:sizeof_partition_entry values don't match: 0x%x != 0x%x\0A\00", align 1, !dbg !283
@.str.12 = private unnamed_addr constant [68 x i8] c"\014GPT:partition_entry_array_crc32 values don't match: 0x%x != 0x%x\0A\00", align 1, !dbg !288
@.str.13 = private unnamed_addr constant [72 x i8] c"\014GPT:Primary header thinks Alt. header is not at the end of the disk.\0A\00", align 1, !dbg !293
@.str.14 = private unnamed_addr constant [56 x i8] c"\014GPT:Alternate GPT header not at the end of the disk.\0A\00", align 1, !dbg !298
@.str.15 = private unnamed_addr constant [46 x i8] c"\014GPT: Use GNU Parted to correct GPT errors.\0A\00", align 1, !dbg !303
@.str.16 = private unnamed_addr constant [6 x i8] c" %s%d\00", align 1, !dbg !308
@.str.17 = private unnamed_addr constant [5 x i8] c"%pUl\00", align 1, !dbg !314
@_ctype = external dso_local constant [0 x i8], align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__setup_force_gpt_fn], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @force_gpt_fn(ptr noundef %str) #0 section ".init.text" align 16 !dbg !332 {
entry:
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !334, metadata !DIExpression()), !dbg !335
  store i32 1, ptr @force_gpt, align 4, !dbg !336
  ret i32 1, !dbg !337
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @efi_partition(ptr noundef %state) #1 align 16 !dbg !338 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca ptr, align 8
  %gpt = alloca ptr, align 8
  %ptes = alloca ptr, align 8
  %i = alloca i32, align 4
  %ssz = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %info = alloca ptr, align 8
  %label_max = alloca i32, align 4
  %start = alloca i64, align 8
  %size = alloca i64, align 8
  %.compoundliteral = alloca %struct.guid_t, align 4
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !5514, metadata !DIExpression()), !dbg !5569
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpt) #18, !dbg !5570
  call void @llvm.dbg.declare(metadata ptr %gpt, metadata !5515, metadata !DIExpression()), !dbg !5571
  store ptr null, ptr %gpt, align 8, !dbg !5571
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptes) #18, !dbg !5572
  call void @llvm.dbg.declare(metadata ptr %ptes, metadata !5540, metadata !DIExpression()), !dbg !5573
  store ptr null, ptr %ptes, align 8, !dbg !5573
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !5574
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5560, metadata !DIExpression()), !dbg !5575
  call void @llvm.lifetime.start.p0(i64 4, ptr %ssz) #18, !dbg !5576
  call void @llvm.dbg.declare(metadata ptr %ssz, metadata !5561, metadata !DIExpression()), !dbg !5577
  %0 = load ptr, ptr %state.addr, align 8, !dbg !5578
  %disk = getelementptr inbounds %struct.parsed_partitions, ptr %0, i32 0, i32 0, !dbg !5579
  %1 = load ptr, ptr %disk, align 8, !dbg !5579
  %queue = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 9, !dbg !5580
  %2 = load ptr, ptr %queue, align 8, !dbg !5580
  %call = call i32 @queue_logical_block_size(ptr noundef %2) #19, !dbg !5581
  %div = udiv i32 %call, 512, !dbg !5582
  store i32 %div, ptr %ssz, align 4, !dbg !5577
  %3 = load ptr, ptr %state.addr, align 8, !dbg !5583
  %call1 = call i32 @find_valid_gpt(ptr noundef %3, ptr noundef %gpt, ptr noundef %ptes) #19, !dbg !5585
  %tobool = icmp ne i32 %call1, 0, !dbg !5585
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5586

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %gpt, align 8, !dbg !5587
  %tobool2 = icmp ne ptr %4, null, !dbg !5587
  br i1 %tobool2, label %lor.lhs.false3, label %if.then, !dbg !5588

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %5 = load ptr, ptr %ptes, align 8, !dbg !5589
  %tobool4 = icmp ne ptr %5, null, !dbg !5589
  br i1 %tobool4, label %if.end, label %if.then, !dbg !5590

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  %6 = load ptr, ptr %gpt, align 8, !dbg !5591
  call void @kfree(ptr noundef %6) #19, !dbg !5593
  %7 = load ptr, ptr %ptes, align 8, !dbg !5594
  call void @kfree(ptr noundef %7) #19, !dbg !5595
  store i32 0, ptr %retval, align 4, !dbg !5596
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup66, !dbg !5596

if.end:                                           ; preds = %lor.lhs.false3
  store i32 0, ptr %tmp, align 4, !dbg !5597
  %8 = load i32, ptr %tmp, align 4, !dbg !5600
  store i32 0, ptr %i, align 4, !dbg !5601
  br label %for.cond, !dbg !5602

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, ptr %i, align 4, !dbg !5603
  %10 = load ptr, ptr %gpt, align 8, !dbg !5604
  %num_partition_entries = getelementptr inbounds %struct._gpt_header, ptr %10, i32 0, i32 11, !dbg !5604
  %11 = load i32, ptr %num_partition_entries, align 1, !dbg !5604
  %cmp = icmp ult i32 %9, %11, !dbg !5605
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5606

land.rhs:                                         ; preds = %for.cond
  %12 = load i32, ptr %i, align 4, !dbg !5607
  %13 = load ptr, ptr %state.addr, align 8, !dbg !5608
  %limit = getelementptr inbounds %struct.parsed_partitions, ptr %13, i32 0, i32 4, !dbg !5609
  %14 = load i32, ptr %limit, align 4, !dbg !5609
  %sub = sub i32 %14, 1, !dbg !5610
  %cmp5 = icmp ult i32 %12, %sub, !dbg !5611
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %15 = phi i1 [ false, %for.cond ], [ %cmp5, %land.rhs ], !dbg !5612
  br i1 %15, label %for.body, label %for.end, !dbg !5613

for.body:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #18, !dbg !5614
  call void @llvm.dbg.declare(metadata ptr %info, metadata !5562, metadata !DIExpression()), !dbg !5615
  call void @llvm.lifetime.start.p0(i64 4, ptr %label_max) #18, !dbg !5616
  call void @llvm.dbg.declare(metadata ptr %label_max, metadata !5566, metadata !DIExpression()), !dbg !5617
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #18, !dbg !5618
  call void @llvm.dbg.declare(metadata ptr %start, metadata !5567, metadata !DIExpression()), !dbg !5619
  %16 = load ptr, ptr %ptes, align 8, !dbg !5620
  %17 = load i32, ptr %i, align 4, !dbg !5620
  %idxprom = zext i32 %17 to i64, !dbg !5620
  %arrayidx = getelementptr %struct._gpt_entry, ptr %16, i64 %idxprom, !dbg !5620
  %starting_lba = getelementptr inbounds %struct._gpt_entry, ptr %arrayidx, i32 0, i32 2, !dbg !5620
  %18 = load i64, ptr %starting_lba, align 1, !dbg !5620
  store i64 %18, ptr %start, align 8, !dbg !5619
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #18, !dbg !5621
  call void @llvm.dbg.declare(metadata ptr %size, metadata !5568, metadata !DIExpression()), !dbg !5622
  %19 = load ptr, ptr %ptes, align 8, !dbg !5623
  %20 = load i32, ptr %i, align 4, !dbg !5623
  %idxprom6 = zext i32 %20 to i64, !dbg !5623
  %arrayidx7 = getelementptr %struct._gpt_entry, ptr %19, i64 %idxprom6, !dbg !5623
  %ending_lba = getelementptr inbounds %struct._gpt_entry, ptr %arrayidx7, i32 0, i32 3, !dbg !5623
  %21 = load i64, ptr %ending_lba, align 1, !dbg !5623
  %22 = load ptr, ptr %ptes, align 8, !dbg !5624
  %23 = load i32, ptr %i, align 4, !dbg !5624
  %idxprom8 = zext i32 %23 to i64, !dbg !5624
  %arrayidx9 = getelementptr %struct._gpt_entry, ptr %22, i64 %idxprom8, !dbg !5624
  %starting_lba10 = getelementptr inbounds %struct._gpt_entry, ptr %arrayidx9, i32 0, i32 2, !dbg !5624
  %24 = load i64, ptr %starting_lba10, align 1, !dbg !5624
  %sub11 = sub i64 %21, %24, !dbg !5625
  %add = add i64 %sub11, 1, !dbg !5626
  store i64 %add, ptr %size, align 8, !dbg !5622
  %25 = load ptr, ptr %ptes, align 8, !dbg !5627
  %26 = load i32, ptr %i, align 4, !dbg !5629
  %idxprom12 = zext i32 %26 to i64, !dbg !5627
  %arrayidx13 = getelementptr %struct._gpt_entry, ptr %25, i64 %idxprom12, !dbg !5627
  %27 = load ptr, ptr %state.addr, align 8, !dbg !5630
  %disk14 = getelementptr inbounds %struct.parsed_partitions, ptr %27, i32 0, i32 0, !dbg !5631
  %28 = load ptr, ptr %disk14, align 8, !dbg !5631
  %call15 = call i64 @last_lba(ptr noundef %28) #19, !dbg !5632
  %call16 = call i32 @is_pte_valid(ptr noundef %arrayidx13, i64 noundef %call15) #19, !dbg !5633
  %tobool17 = icmp ne i32 %call16, 0, !dbg !5633
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !5634

if.then18:                                        ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5635

if.end19:                                         ; preds = %for.body
  %29 = load ptr, ptr %state.addr, align 8, !dbg !5636
  %30 = load i32, ptr %i, align 4, !dbg !5637
  %add20 = add i32 %30, 1, !dbg !5638
  %31 = load i64, ptr %start, align 8, !dbg !5639
  %32 = load i32, ptr %ssz, align 4, !dbg !5640
  %conv = zext i32 %32 to i64, !dbg !5640
  %mul = mul i64 %31, %conv, !dbg !5641
  %33 = load i64, ptr %size, align 8, !dbg !5642
  %34 = load i32, ptr %ssz, align 4, !dbg !5643
  %conv21 = zext i32 %34 to i64, !dbg !5643
  %mul22 = mul i64 %33, %conv21, !dbg !5644
  call void @put_partition(ptr noundef %29, i32 noundef %add20, i64 noundef %mul, i64 noundef %mul22) #19, !dbg !5645
  %35 = load ptr, ptr %ptes, align 8, !dbg !5646
  %36 = load i32, ptr %i, align 4, !dbg !5648
  %idxprom23 = zext i32 %36 to i64, !dbg !5646
  %arrayidx24 = getelementptr %struct._gpt_entry, ptr %35, i64 %idxprom23, !dbg !5646
  %partition_type_guid = getelementptr inbounds %struct._gpt_entry, ptr %arrayidx24, i32 0, i32 0, !dbg !5649
  %b = getelementptr inbounds %struct.guid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !5650
  %arrayinit.begin = getelementptr inbounds [16 x i8], ptr %b, i64 0, i64 0, !dbg !5650
  store i8 15, ptr %arrayinit.begin, align 1, !dbg !5650
  %arrayinit.element = getelementptr inbounds i8, ptr %arrayinit.begin, i64 1, !dbg !5650
  store i8 -120, ptr %arrayinit.element, align 1, !dbg !5650
  %arrayinit.element25 = getelementptr inbounds i8, ptr %arrayinit.element, i64 1, !dbg !5650
  store i8 -99, ptr %arrayinit.element25, align 1, !dbg !5650
  %arrayinit.element26 = getelementptr inbounds i8, ptr %arrayinit.element25, i64 1, !dbg !5650
  store i8 -95, ptr %arrayinit.element26, align 1, !dbg !5650
  %arrayinit.element27 = getelementptr inbounds i8, ptr %arrayinit.element26, i64 1, !dbg !5650
  store i8 -4, ptr %arrayinit.element27, align 1, !dbg !5650
  %arrayinit.element28 = getelementptr inbounds i8, ptr %arrayinit.element27, i64 1, !dbg !5650
  store i8 5, ptr %arrayinit.element28, align 1, !dbg !5650
  %arrayinit.element29 = getelementptr inbounds i8, ptr %arrayinit.element28, i64 1, !dbg !5650
  store i8 59, ptr %arrayinit.element29, align 1, !dbg !5650
  %arrayinit.element30 = getelementptr inbounds i8, ptr %arrayinit.element29, i64 1, !dbg !5650
  store i8 77, ptr %arrayinit.element30, align 1, !dbg !5650
  %arrayinit.element31 = getelementptr inbounds i8, ptr %arrayinit.element30, i64 1, !dbg !5650
  store i8 -96, ptr %arrayinit.element31, align 1, !dbg !5650
  %arrayinit.element32 = getelementptr inbounds i8, ptr %arrayinit.element31, i64 1, !dbg !5650
  store i8 6, ptr %arrayinit.element32, align 1, !dbg !5650
  %arrayinit.element33 = getelementptr inbounds i8, ptr %arrayinit.element32, i64 1, !dbg !5650
  store i8 116, ptr %arrayinit.element33, align 1, !dbg !5650
  %arrayinit.element34 = getelementptr inbounds i8, ptr %arrayinit.element33, i64 1, !dbg !5650
  store i8 63, ptr %arrayinit.element34, align 1, !dbg !5650
  %arrayinit.element35 = getelementptr inbounds i8, ptr %arrayinit.element34, i64 1, !dbg !5650
  store i8 15, ptr %arrayinit.element35, align 1, !dbg !5650
  %arrayinit.element36 = getelementptr inbounds i8, ptr %arrayinit.element35, i64 1, !dbg !5650
  store i8 -124, ptr %arrayinit.element36, align 1, !dbg !5650
  %arrayinit.element37 = getelementptr inbounds i8, ptr %arrayinit.element36, i64 1, !dbg !5650
  store i8 -111, ptr %arrayinit.element37, align 1, !dbg !5650
  %arrayinit.element38 = getelementptr inbounds i8, ptr %arrayinit.element37, i64 1, !dbg !5650
  store i8 30, ptr %arrayinit.element38, align 1, !dbg !5650
  %37 = getelementptr inbounds { i64, i64 }, ptr %partition_type_guid, i32 0, i32 0, !dbg !5651
  %38 = load i64, ptr %37, align 1, !dbg !5651
  %39 = getelementptr inbounds { i64, i64 }, ptr %partition_type_guid, i32 0, i32 1, !dbg !5651
  %40 = load i64, ptr %39, align 1, !dbg !5651
  %41 = getelementptr inbounds { i64, i64 }, ptr %.compoundliteral, i32 0, i32 0, !dbg !5651
  %42 = load i64, ptr %41, align 4, !dbg !5651
  %43 = getelementptr inbounds { i64, i64 }, ptr %.compoundliteral, i32 0, i32 1, !dbg !5651
  %44 = load i64, ptr %43, align 4, !dbg !5651
  %call39 = call i32 @efi_guidcmp(i64 %38, i64 %40, i64 %42, i64 %44) #19, !dbg !5651
  %tobool40 = icmp ne i32 %call39, 0, !dbg !5651
  br i1 %tobool40, label %if.end45, label %if.then41, !dbg !5652

if.then41:                                        ; preds = %if.end19
  %45 = load ptr, ptr %state.addr, align 8, !dbg !5653
  %parts = getelementptr inbounds %struct.parsed_partitions, ptr %45, i32 0, i32 2, !dbg !5654
  %46 = load ptr, ptr %parts, align 8, !dbg !5654
  %47 = load i32, ptr %i, align 4, !dbg !5655
  %add42 = add i32 %47, 1, !dbg !5656
  %idxprom43 = zext i32 %add42 to i64, !dbg !5653
  %arrayidx44 = getelementptr %struct.anon.13, ptr %46, i64 %idxprom43, !dbg !5653
  %flags = getelementptr inbounds %struct.anon.13, ptr %arrayidx44, i32 0, i32 2, !dbg !5657
  store i32 1, ptr %flags, align 8, !dbg !5658
  br label %if.end45, !dbg !5653

if.end45:                                         ; preds = %if.then41, %if.end19
  %48 = load ptr, ptr %state.addr, align 8, !dbg !5659
  %parts46 = getelementptr inbounds %struct.parsed_partitions, ptr %48, i32 0, i32 2, !dbg !5660
  %49 = load ptr, ptr %parts46, align 8, !dbg !5660
  %50 = load i32, ptr %i, align 4, !dbg !5661
  %add47 = add i32 %50, 1, !dbg !5662
  %idxprom48 = zext i32 %add47 to i64, !dbg !5659
  %arrayidx49 = getelementptr %struct.anon.13, ptr %49, i64 %idxprom48, !dbg !5659
  %info50 = getelementptr inbounds %struct.anon.13, ptr %arrayidx49, i32 0, i32 4, !dbg !5663
  store ptr %info50, ptr %info, align 8, !dbg !5664
  %51 = load ptr, ptr %ptes, align 8, !dbg !5665
  %52 = load i32, ptr %i, align 4, !dbg !5666
  %idxprom51 = zext i32 %52 to i64, !dbg !5665
  %arrayidx52 = getelementptr %struct._gpt_entry, ptr %51, i64 %idxprom51, !dbg !5665
  %unique_partition_guid = getelementptr inbounds %struct._gpt_entry, ptr %arrayidx52, i32 0, i32 1, !dbg !5667
  %53 = load ptr, ptr %info, align 8, !dbg !5668
  %uuid = getelementptr inbounds %struct.partition_meta_info, ptr %53, i32 0, i32 0, !dbg !5669
  %arraydecay = getelementptr inbounds [37 x i8], ptr %uuid, i64 0, i64 0, !dbg !5668
  %call53 = call ptr @efi_guid_to_str(ptr noundef %unique_partition_guid, ptr noundef %arraydecay) #19, !dbg !5670
  store i32 36, ptr %label_max, align 4, !dbg !5671
  %54 = load ptr, ptr %ptes, align 8, !dbg !5672
  %55 = load i32, ptr %i, align 4, !dbg !5673
  %idxprom54 = zext i32 %55 to i64, !dbg !5672
  %arrayidx55 = getelementptr %struct._gpt_entry, ptr %54, i64 %idxprom54, !dbg !5672
  %partition_name = getelementptr inbounds %struct._gpt_entry, ptr %arrayidx55, i32 0, i32 5, !dbg !5674
  %arraydecay56 = getelementptr inbounds [36 x i16], ptr %partition_name, i64 0, i64 0, !dbg !5672
  %56 = load i32, ptr %label_max, align 4, !dbg !5675
  %57 = load ptr, ptr %info, align 8, !dbg !5676
  %volname = getelementptr inbounds %struct.partition_meta_info, ptr %57, i32 0, i32 1, !dbg !5677
  %arraydecay57 = getelementptr inbounds [64 x i8], ptr %volname, i64 0, i64 0, !dbg !5676
  call void @utf16_le_to_7bit(ptr noundef %arraydecay56, i32 noundef %56, ptr noundef %arraydecay57) #19, !dbg !5678
  %58 = load ptr, ptr %state.addr, align 8, !dbg !5679
  %parts58 = getelementptr inbounds %struct.parsed_partitions, ptr %58, i32 0, i32 2, !dbg !5680
  %59 = load ptr, ptr %parts58, align 8, !dbg !5680
  %60 = load i32, ptr %i, align 4, !dbg !5681
  %add59 = add i32 %60, 1, !dbg !5682
  %idxprom60 = zext i32 %add59 to i64, !dbg !5679
  %arrayidx61 = getelementptr %struct.anon.13, ptr %59, i64 %idxprom60, !dbg !5679
  %has_info = getelementptr inbounds %struct.anon.13, ptr %arrayidx61, i32 0, i32 3, !dbg !5683
  store i8 1, ptr %has_info, align 4, !dbg !5684
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5685
  br label %cleanup, !dbg !5685

cleanup:                                          ; preds = %if.end45, %if.then18
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #18, !dbg !5685
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #18, !dbg !5685
  call void @llvm.lifetime.end.p0(i64 4, ptr %label_max) #18, !dbg !5685
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #18, !dbg !5685
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !5686

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %61 = load i32, ptr %i, align 4, !dbg !5687
  %inc = add i32 %61, 1, !dbg !5687
  store i32 %inc, ptr %i, align 4, !dbg !5687
  br label %for.cond, !dbg !5688, !llvm.loop !5689

for.end:                                          ; preds = %land.end
  %62 = load ptr, ptr %ptes, align 8, !dbg !5693
  call void @kfree(ptr noundef %62) #19, !dbg !5694
  %63 = load ptr, ptr %gpt, align 8, !dbg !5695
  call void @kfree(ptr noundef %63) #19, !dbg !5696
  %64 = load ptr, ptr %state.addr, align 8, !dbg !5697
  %pp_buf = getelementptr inbounds %struct.parsed_partitions, ptr %64, i32 0, i32 6, !dbg !5698
  %65 = load ptr, ptr %pp_buf, align 8, !dbg !5698
  %call65 = call i64 @strlcat(ptr noundef %65, ptr noundef @.str, i64 noundef 4096) #19, !dbg !5699
  store i32 1, ptr %retval, align 4, !dbg !5700
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup66, !dbg !5700

cleanup66:                                        ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ssz) #18, !dbg !5701
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !5701
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptes) #18, !dbg !5701
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpt) #18, !dbg !5701
  %66 = load i32, ptr %retval, align 4, !dbg !5701
  ret i32 %66, !dbg !5701

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @queue_logical_block_size(ptr noundef %q) #4 align 16 !dbg !5702 {
entry:
  %q.addr = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !5708, metadata !DIExpression()), !dbg !5710
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #18, !dbg !5711
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !5709, metadata !DIExpression()), !dbg !5712
  store i32 512, ptr %retval1, align 4, !dbg !5712
  %0 = load ptr, ptr %q.addr, align 8, !dbg !5713
  %tobool = icmp ne ptr %0, null, !dbg !5713
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5715

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %q.addr, align 8, !dbg !5716
  %limits = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 33, !dbg !5717
  %logical_block_size = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 10, !dbg !5718
  %2 = load i32, ptr %logical_block_size, align 4, !dbg !5718
  %tobool2 = icmp ne i32 %2, 0, !dbg !5716
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5719

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %q.addr, align 8, !dbg !5720
  %limits3 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 33, !dbg !5721
  %logical_block_size4 = getelementptr inbounds %struct.queue_limits, ptr %limits3, i32 0, i32 10, !dbg !5722
  %4 = load i32, ptr %logical_block_size4, align 4, !dbg !5722
  store i32 %4, ptr %retval1, align 4, !dbg !5723
  br label %if.end, !dbg !5724

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %5 = load i32, ptr %retval1, align 4, !dbg !5725
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #18, !dbg !5726
  ret i32 %5, !dbg !5727
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @find_valid_gpt(ptr noundef %state, ptr noundef %gpt, ptr noundef %ptes) #1 align 16 !dbg !5728 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca ptr, align 8
  %gpt.addr = alloca ptr, align 8
  %ptes.addr = alloca ptr, align 8
  %good_pgpt = alloca i32, align 4
  %good_agpt = alloca i32, align 4
  %good_pmbr = alloca i32, align 4
  %pgpt = alloca ptr, align 8
  %agpt = alloca ptr, align 8
  %pptes = alloca ptr, align 8
  %aptes = alloca ptr, align 8
  %legacymbr = alloca ptr, align 8
  %disk = alloca ptr, align 8
  %fops = alloca ptr, align 8
  %total_sectors = alloca i64, align 8
  %lastlba = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %agpt_sector = alloca i64, align 8
  %err = alloca i32, align 4
  %tmp50 = alloca i32, align 4
  %tmp58 = alloca i32, align 4
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !5734, metadata !DIExpression()), !dbg !5780
  store ptr %gpt, ptr %gpt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpt.addr, metadata !5735, metadata !DIExpression()), !dbg !5781
  store ptr %ptes, ptr %ptes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptes.addr, metadata !5736, metadata !DIExpression()), !dbg !5782
  call void @llvm.lifetime.start.p0(i64 4, ptr %good_pgpt) #18, !dbg !5783
  call void @llvm.dbg.declare(metadata ptr %good_pgpt, metadata !5737, metadata !DIExpression()), !dbg !5784
  store i32 0, ptr %good_pgpt, align 4, !dbg !5784
  call void @llvm.lifetime.start.p0(i64 4, ptr %good_agpt) #18, !dbg !5783
  call void @llvm.dbg.declare(metadata ptr %good_agpt, metadata !5738, metadata !DIExpression()), !dbg !5785
  store i32 0, ptr %good_agpt, align 4, !dbg !5785
  call void @llvm.lifetime.start.p0(i64 4, ptr %good_pmbr) #18, !dbg !5783
  call void @llvm.dbg.declare(metadata ptr %good_pmbr, metadata !5739, metadata !DIExpression()), !dbg !5786
  store i32 0, ptr %good_pmbr, align 4, !dbg !5786
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgpt) #18, !dbg !5787
  call void @llvm.dbg.declare(metadata ptr %pgpt, metadata !5740, metadata !DIExpression()), !dbg !5788
  store ptr null, ptr %pgpt, align 8, !dbg !5788
  call void @llvm.lifetime.start.p0(i64 8, ptr %agpt) #18, !dbg !5787
  call void @llvm.dbg.declare(metadata ptr %agpt, metadata !5741, metadata !DIExpression()), !dbg !5789
  store ptr null, ptr %agpt, align 8, !dbg !5789
  call void @llvm.lifetime.start.p0(i64 8, ptr %pptes) #18, !dbg !5790
  call void @llvm.dbg.declare(metadata ptr %pptes, metadata !5742, metadata !DIExpression()), !dbg !5791
  store ptr null, ptr %pptes, align 8, !dbg !5791
  call void @llvm.lifetime.start.p0(i64 8, ptr %aptes) #18, !dbg !5790
  call void @llvm.dbg.declare(metadata ptr %aptes, metadata !5743, metadata !DIExpression()), !dbg !5792
  store ptr null, ptr %aptes, align 8, !dbg !5792
  call void @llvm.lifetime.start.p0(i64 8, ptr %legacymbr) #18, !dbg !5793
  call void @llvm.dbg.declare(metadata ptr %legacymbr, metadata !5744, metadata !DIExpression()), !dbg !5794
  call void @llvm.lifetime.start.p0(i64 8, ptr %disk) #18, !dbg !5795
  call void @llvm.dbg.declare(metadata ptr %disk, metadata !5771, metadata !DIExpression()), !dbg !5796
  %0 = load ptr, ptr %state.addr, align 8, !dbg !5797
  %disk1 = getelementptr inbounds %struct.parsed_partitions, ptr %0, i32 0, i32 0, !dbg !5798
  %1 = load ptr, ptr %disk1, align 8, !dbg !5798
  store ptr %1, ptr %disk, align 8, !dbg !5796
  call void @llvm.lifetime.start.p0(i64 8, ptr %fops) #18, !dbg !5799
  call void @llvm.dbg.declare(metadata ptr %fops, metadata !5772, metadata !DIExpression()), !dbg !5800
  %2 = load ptr, ptr %disk, align 8, !dbg !5801
  %fops2 = getelementptr inbounds %struct.gendisk, ptr %2, i32 0, i32 8, !dbg !5802
  %3 = load ptr, ptr %fops2, align 8, !dbg !5802
  store ptr %3, ptr %fops, align 8, !dbg !5800
  call void @llvm.lifetime.start.p0(i64 8, ptr %total_sectors) #18, !dbg !5803
  call void @llvm.dbg.declare(metadata ptr %total_sectors, metadata !5773, metadata !DIExpression()), !dbg !5804
  %4 = load ptr, ptr %state.addr, align 8, !dbg !5805
  %disk3 = getelementptr inbounds %struct.parsed_partitions, ptr %4, i32 0, i32 0, !dbg !5806
  %5 = load ptr, ptr %disk3, align 8, !dbg !5806
  %call = call i64 @get_capacity(ptr noundef %5) #19, !dbg !5807
  store i64 %call, ptr %total_sectors, align 8, !dbg !5804
  call void @llvm.lifetime.start.p0(i64 8, ptr %lastlba) #18, !dbg !5808
  call void @llvm.dbg.declare(metadata ptr %lastlba, metadata !5774, metadata !DIExpression()), !dbg !5809
  %6 = load ptr, ptr %ptes.addr, align 8, !dbg !5810
  %tobool = icmp ne ptr %6, null, !dbg !5810
  br i1 %tobool, label %if.end, label %if.then, !dbg !5812

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5813
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5813

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %state.addr, align 8, !dbg !5814
  %disk4 = getelementptr inbounds %struct.parsed_partitions, ptr %7, i32 0, i32 0, !dbg !5815
  %8 = load ptr, ptr %disk4, align 8, !dbg !5815
  %call5 = call i64 @last_lba(ptr noundef %8) #19, !dbg !5816
  store i64 %call5, ptr %lastlba, align 8, !dbg !5817
  %9 = load i32, ptr @force_gpt, align 4, !dbg !5818
  %tobool6 = icmp ne i32 %9, 0, !dbg !5818
  br i1 %tobool6, label %if.end17, label %if.then7, !dbg !5820

if.then7:                                         ; preds = %if.end
  %call8 = call noalias ptr @kzalloc(i64 noundef 512, i32 noundef 3264) #20, !dbg !5821
  store ptr %call8, ptr %legacymbr, align 8, !dbg !5823
  %10 = load ptr, ptr %legacymbr, align 8, !dbg !5824
  %tobool9 = icmp ne ptr %10, null, !dbg !5824
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !5826

if.then10:                                        ; preds = %if.then7
  br label %fail, !dbg !5827

if.end11:                                         ; preds = %if.then7
  %11 = load ptr, ptr %state.addr, align 8, !dbg !5828
  %12 = load ptr, ptr %legacymbr, align 8, !dbg !5829
  %call12 = call i64 @read_lba(ptr noundef %11, i64 noundef 0, ptr noundef %12, i64 noundef 512) #19, !dbg !5830
  %13 = load ptr, ptr %legacymbr, align 8, !dbg !5831
  %14 = load i64, ptr %total_sectors, align 8, !dbg !5832
  %call13 = call i32 @is_pmbr_valid(ptr noundef %13, i64 noundef %14) #19, !dbg !5833
  store i32 %call13, ptr %good_pmbr, align 4, !dbg !5834
  %15 = load ptr, ptr %legacymbr, align 8, !dbg !5835
  call void @kfree(ptr noundef %15) #19, !dbg !5836
  %16 = load i32, ptr %good_pmbr, align 4, !dbg !5837
  %tobool14 = icmp ne i32 %16, 0, !dbg !5837
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !5839

if.then15:                                        ; preds = %if.end11
  br label %fail, !dbg !5840

if.end16:                                         ; preds = %if.end11
  store i32 0, ptr %tmp, align 4, !dbg !5841
  %17 = load i32, ptr %tmp, align 4, !dbg !5844
  br label %if.end17, !dbg !5845

if.end17:                                         ; preds = %if.end16, %if.end
  %18 = load ptr, ptr %state.addr, align 8, !dbg !5846
  %call18 = call i32 @is_gpt_valid(ptr noundef %18, i64 noundef 1, ptr noundef %pgpt, ptr noundef %pptes) #19, !dbg !5847
  store i32 %call18, ptr %good_pgpt, align 4, !dbg !5848
  %19 = load i32, ptr %good_pgpt, align 4, !dbg !5849
  %tobool19 = icmp ne i32 %19, 0, !dbg !5849
  br i1 %tobool19, label %if.then20, label %if.end22, !dbg !5851

if.then20:                                        ; preds = %if.end17
  %20 = load ptr, ptr %state.addr, align 8, !dbg !5852
  %21 = load ptr, ptr %pgpt, align 8, !dbg !5853
  %alternate_lba = getelementptr inbounds %struct._gpt_header, ptr %21, i32 0, i32 6, !dbg !5853
  %22 = load i64, ptr %alternate_lba, align 1, !dbg !5853
  %call21 = call i32 @is_gpt_valid(ptr noundef %20, i64 noundef %22, ptr noundef %agpt, ptr noundef %aptes) #19, !dbg !5854
  store i32 %call21, ptr %good_agpt, align 4, !dbg !5855
  br label %if.end22, !dbg !5856

if.end22:                                         ; preds = %if.then20, %if.end17
  %23 = load i32, ptr %good_agpt, align 4, !dbg !5857
  %tobool23 = icmp ne i32 %23, 0, !dbg !5857
  br i1 %tobool23, label %if.end27, label %land.lhs.true, !dbg !5859

land.lhs.true:                                    ; preds = %if.end22
  %24 = load i32, ptr @force_gpt, align 4, !dbg !5860
  %tobool24 = icmp ne i32 %24, 0, !dbg !5860
  br i1 %tobool24, label %if.then25, label %if.end27, !dbg !5861

if.then25:                                        ; preds = %land.lhs.true
  %25 = load ptr, ptr %state.addr, align 8, !dbg !5862
  %26 = load i64, ptr %lastlba, align 8, !dbg !5863
  %call26 = call i32 @is_gpt_valid(ptr noundef %25, i64 noundef %26, ptr noundef %agpt, ptr noundef %aptes) #19, !dbg !5864
  store i32 %call26, ptr %good_agpt, align 4, !dbg !5865
  br label %if.end27, !dbg !5866

if.end27:                                         ; preds = %if.then25, %land.lhs.true, %if.end22
  %27 = load i32, ptr %good_agpt, align 4, !dbg !5867
  %tobool28 = icmp ne i32 %27, 0, !dbg !5867
  br i1 %tobool28, label %if.end40, label %land.lhs.true29, !dbg !5868

land.lhs.true29:                                  ; preds = %if.end27
  %28 = load i32, ptr @force_gpt, align 4, !dbg !5869
  %tobool30 = icmp ne i32 %28, 0, !dbg !5869
  br i1 %tobool30, label %land.lhs.true31, label %if.end40, !dbg !5870

land.lhs.true31:                                  ; preds = %land.lhs.true29
  %29 = load ptr, ptr %fops, align 8, !dbg !5871
  %alternative_gpt_sector = getelementptr inbounds %struct.block_device_operations, ptr %29, i32 0, i32 17, !dbg !5872
  %30 = load ptr, ptr %alternative_gpt_sector, align 8, !dbg !5872
  %tobool32 = icmp ne ptr %30, null, !dbg !5871
  br i1 %tobool32, label %if.then33, label %if.end40, !dbg !5873

if.then33:                                        ; preds = %land.lhs.true31
  call void @llvm.lifetime.start.p0(i64 8, ptr %agpt_sector) #18, !dbg !5874
  call void @llvm.dbg.declare(metadata ptr %agpt_sector, metadata !5775, metadata !DIExpression()), !dbg !5875
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #18, !dbg !5876
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5778, metadata !DIExpression()), !dbg !5877
  %31 = load ptr, ptr %fops, align 8, !dbg !5878
  %alternative_gpt_sector34 = getelementptr inbounds %struct.block_device_operations, ptr %31, i32 0, i32 17, !dbg !5879
  %32 = load ptr, ptr %alternative_gpt_sector34, align 8, !dbg !5879
  %33 = load ptr, ptr %disk, align 8, !dbg !5880
  %call35 = call i32 %32(ptr noundef %33, ptr noundef %agpt_sector) #19, !dbg !5878
  store i32 %call35, ptr %err, align 4, !dbg !5881
  %34 = load i32, ptr %err, align 4, !dbg !5882
  %tobool36 = icmp ne i32 %34, 0, !dbg !5882
  br i1 %tobool36, label %if.end39, label %if.then37, !dbg !5884

if.then37:                                        ; preds = %if.then33
  %35 = load ptr, ptr %state.addr, align 8, !dbg !5885
  %36 = load i64, ptr %agpt_sector, align 8, !dbg !5886
  %call38 = call i32 @is_gpt_valid(ptr noundef %35, i64 noundef %36, ptr noundef %agpt, ptr noundef %aptes) #19, !dbg !5887
  store i32 %call38, ptr %good_agpt, align 4, !dbg !5888
  br label %if.end39, !dbg !5889

if.end39:                                         ; preds = %if.then37, %if.then33
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #18, !dbg !5890
  call void @llvm.lifetime.end.p0(i64 8, ptr %agpt_sector) #18, !dbg !5890
  br label %if.end40, !dbg !5891

if.end40:                                         ; preds = %if.end39, %land.lhs.true31, %land.lhs.true29, %if.end27
  %37 = load i32, ptr %good_pgpt, align 4, !dbg !5892
  %tobool41 = icmp ne i32 %37, 0, !dbg !5892
  br i1 %tobool41, label %if.end45, label %land.lhs.true42, !dbg !5894

land.lhs.true42:                                  ; preds = %if.end40
  %38 = load i32, ptr %good_agpt, align 4, !dbg !5895
  %tobool43 = icmp ne i32 %38, 0, !dbg !5895
  br i1 %tobool43, label %if.end45, label %if.then44, !dbg !5896

if.then44:                                        ; preds = %land.lhs.true42
  br label %fail, !dbg !5897

if.end45:                                         ; preds = %land.lhs.true42, %if.end40
  %39 = load ptr, ptr %pgpt, align 8, !dbg !5898
  %40 = load ptr, ptr %agpt, align 8, !dbg !5899
  %41 = load i64, ptr %lastlba, align 8, !dbg !5900
  call void @compare_gpts(ptr noundef %39, ptr noundef %40, i64 noundef %41) #19, !dbg !5901
  %42 = load i32, ptr %good_pgpt, align 4, !dbg !5902
  %tobool46 = icmp ne i32 %42, 0, !dbg !5902
  br i1 %tobool46, label %if.then47, label %if.else, !dbg !5904

if.then47:                                        ; preds = %if.end45
  %43 = load ptr, ptr %pgpt, align 8, !dbg !5905
  %44 = load ptr, ptr %gpt.addr, align 8, !dbg !5907
  store ptr %43, ptr %44, align 8, !dbg !5908
  %45 = load ptr, ptr %pptes, align 8, !dbg !5909
  %46 = load ptr, ptr %ptes.addr, align 8, !dbg !5910
  store ptr %45, ptr %46, align 8, !dbg !5911
  %47 = load ptr, ptr %agpt, align 8, !dbg !5912
  call void @kfree(ptr noundef %47) #19, !dbg !5913
  %48 = load ptr, ptr %aptes, align 8, !dbg !5914
  call void @kfree(ptr noundef %48) #19, !dbg !5915
  %49 = load i32, ptr %good_agpt, align 4, !dbg !5916
  %tobool48 = icmp ne i32 %49, 0, !dbg !5916
  br i1 %tobool48, label %if.end52, label %if.then49, !dbg !5918

if.then49:                                        ; preds = %if.then47
  br label %do.body, !dbg !5919

do.body:                                          ; preds = %if.then49
  br label %do.cond, !dbg !5921

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5921

do.end:                                           ; preds = %do.cond
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1) #21, !dbg !5919
  store i32 %call51, ptr %tmp50, align 4, !dbg !5921
  %50 = load i32, ptr %tmp50, align 4, !dbg !5919
  br label %if.end52, !dbg !5923

if.end52:                                         ; preds = %do.end, %if.then47
  store i32 1, ptr %retval, align 4, !dbg !5924
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5924

if.else:                                          ; preds = %if.end45
  %51 = load i32, ptr %good_agpt, align 4, !dbg !5925
  %tobool53 = icmp ne i32 %51, 0, !dbg !5925
  br i1 %tobool53, label %if.then54, label %if.end60, !dbg !5927

if.then54:                                        ; preds = %if.else
  %52 = load ptr, ptr %agpt, align 8, !dbg !5928
  %53 = load ptr, ptr %gpt.addr, align 8, !dbg !5930
  store ptr %52, ptr %53, align 8, !dbg !5931
  %54 = load ptr, ptr %aptes, align 8, !dbg !5932
  %55 = load ptr, ptr %ptes.addr, align 8, !dbg !5933
  store ptr %54, ptr %55, align 8, !dbg !5934
  %56 = load ptr, ptr %pgpt, align 8, !dbg !5935
  call void @kfree(ptr noundef %56) #19, !dbg !5936
  %57 = load ptr, ptr %pptes, align 8, !dbg !5937
  call void @kfree(ptr noundef %57) #19, !dbg !5938
  br label %do.body55, !dbg !5939

do.body55:                                        ; preds = %if.then54
  br label %do.cond56, !dbg !5941

do.cond56:                                        ; preds = %do.body55
  br label %do.end57, !dbg !5941

do.end57:                                         ; preds = %do.cond56
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2) #21, !dbg !5939
  store i32 %call59, ptr %tmp58, align 4, !dbg !5941
  %58 = load i32, ptr %tmp58, align 4, !dbg !5939
  store i32 1, ptr %retval, align 4, !dbg !5943
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5943

if.end60:                                         ; preds = %if.else
  br label %if.end61

if.end61:                                         ; preds = %if.end60
  br label %fail, !dbg !5902

fail:                                             ; preds = %if.end61, %if.then44, %if.then15, %if.then10
  call void @llvm.dbg.label(metadata !5779), !dbg !5944
  %59 = load ptr, ptr %pgpt, align 8, !dbg !5945
  call void @kfree(ptr noundef %59) #19, !dbg !5946
  %60 = load ptr, ptr %agpt, align 8, !dbg !5947
  call void @kfree(ptr noundef %60) #19, !dbg !5948
  %61 = load ptr, ptr %pptes, align 8, !dbg !5949
  call void @kfree(ptr noundef %61) #19, !dbg !5950
  %62 = load ptr, ptr %aptes, align 8, !dbg !5951
  call void @kfree(ptr noundef %62) #19, !dbg !5952
  %63 = load ptr, ptr %gpt.addr, align 8, !dbg !5953
  store ptr null, ptr %63, align 8, !dbg !5954
  %64 = load ptr, ptr %ptes.addr, align 8, !dbg !5955
  store ptr null, ptr %64, align 8, !dbg !5956
  store i32 0, ptr %retval, align 4, !dbg !5957
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5957

cleanup:                                          ; preds = %fail, %do.end57, %if.end52, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %lastlba) #18, !dbg !5958
  call void @llvm.lifetime.end.p0(i64 8, ptr %total_sectors) #18, !dbg !5958
  call void @llvm.lifetime.end.p0(i64 8, ptr %fops) #18, !dbg !5958
  call void @llvm.lifetime.end.p0(i64 8, ptr %disk) #18, !dbg !5958
  call void @llvm.lifetime.end.p0(i64 8, ptr %legacymbr) #18, !dbg !5958
  call void @llvm.lifetime.end.p0(i64 8, ptr %aptes) #18, !dbg !5958
  call void @llvm.lifetime.end.p0(i64 8, ptr %pptes) #18, !dbg !5958
  call void @llvm.lifetime.end.p0(i64 8, ptr %agpt) #18, !dbg !5958
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgpt) #18, !dbg !5958
  call void @llvm.lifetime.end.p0(i64 4, ptr %good_pmbr) #18, !dbg !5958
  call void @llvm.lifetime.end.p0(i64 4, ptr %good_agpt) #18, !dbg !5958
  call void @llvm.lifetime.end.p0(i64 4, ptr %good_pgpt) #18, !dbg !5958
  %65 = load i32, ptr %retval, align 4, !dbg !5958
  ret i32 %65, !dbg !5958
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5959 dso_local void @kfree(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @is_pte_valid(ptr noundef %pte, i64 noundef %lastlba) #4 align 16 !dbg !5962 {
entry:
  %retval = alloca i32, align 4
  %pte.addr = alloca ptr, align 8
  %lastlba.addr = alloca i64, align 8
  %.compoundliteral = alloca %struct.guid_t, align 4
  store ptr %pte, ptr %pte.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pte.addr, metadata !5969, metadata !DIExpression()), !dbg !5971
  store i64 %lastlba, ptr %lastlba.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lastlba.addr, metadata !5970, metadata !DIExpression()), !dbg !5972
  %0 = load ptr, ptr %pte.addr, align 8, !dbg !5973
  %partition_type_guid = getelementptr inbounds %struct._gpt_entry, ptr %0, i32 0, i32 0, !dbg !5975
  %b = getelementptr inbounds %struct.guid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !5976
  %arrayinit.begin = getelementptr inbounds [16 x i8], ptr %b, i64 0, i64 0, !dbg !5976
  store i8 0, ptr %arrayinit.begin, align 1, !dbg !5976
  %arrayinit.element = getelementptr inbounds i8, ptr %arrayinit.begin, i64 1, !dbg !5976
  store i8 0, ptr %arrayinit.element, align 1, !dbg !5976
  %arrayinit.element1 = getelementptr inbounds i8, ptr %arrayinit.element, i64 1, !dbg !5976
  store i8 0, ptr %arrayinit.element1, align 1, !dbg !5976
  %arrayinit.element2 = getelementptr inbounds i8, ptr %arrayinit.element1, i64 1, !dbg !5976
  store i8 0, ptr %arrayinit.element2, align 1, !dbg !5976
  %arrayinit.element3 = getelementptr inbounds i8, ptr %arrayinit.element2, i64 1, !dbg !5976
  store i8 0, ptr %arrayinit.element3, align 1, !dbg !5976
  %arrayinit.element4 = getelementptr inbounds i8, ptr %arrayinit.element3, i64 1, !dbg !5976
  store i8 0, ptr %arrayinit.element4, align 1, !dbg !5976
  %arrayinit.element5 = getelementptr inbounds i8, ptr %arrayinit.element4, i64 1, !dbg !5976
  store i8 0, ptr %arrayinit.element5, align 1, !dbg !5976
  %arrayinit.element6 = getelementptr inbounds i8, ptr %arrayinit.element5, i64 1, !dbg !5976
  store i8 0, ptr %arrayinit.element6, align 1, !dbg !5976
  %arrayinit.element7 = getelementptr inbounds i8, ptr %arrayinit.element6, i64 1, !dbg !5976
  store i8 0, ptr %arrayinit.element7, align 1, !dbg !5976
  %arrayinit.element8 = getelementptr inbounds i8, ptr %arrayinit.element7, i64 1, !dbg !5976
  store i8 0, ptr %arrayinit.element8, align 1, !dbg !5976
  %arrayinit.element9 = getelementptr inbounds i8, ptr %arrayinit.element8, i64 1, !dbg !5976
  store i8 0, ptr %arrayinit.element9, align 1, !dbg !5976
  %arrayinit.element10 = getelementptr inbounds i8, ptr %arrayinit.element9, i64 1, !dbg !5976
  store i8 0, ptr %arrayinit.element10, align 1, !dbg !5976
  %arrayinit.element11 = getelementptr inbounds i8, ptr %arrayinit.element10, i64 1, !dbg !5976
  store i8 0, ptr %arrayinit.element11, align 1, !dbg !5976
  %arrayinit.element12 = getelementptr inbounds i8, ptr %arrayinit.element11, i64 1, !dbg !5976
  store i8 0, ptr %arrayinit.element12, align 1, !dbg !5976
  %arrayinit.element13 = getelementptr inbounds i8, ptr %arrayinit.element12, i64 1, !dbg !5976
  store i8 0, ptr %arrayinit.element13, align 1, !dbg !5976
  %arrayinit.element14 = getelementptr inbounds i8, ptr %arrayinit.element13, i64 1, !dbg !5976
  store i8 0, ptr %arrayinit.element14, align 1, !dbg !5976
  %1 = getelementptr inbounds { i64, i64 }, ptr %partition_type_guid, i32 0, i32 0, !dbg !5977
  %2 = load i64, ptr %1, align 1, !dbg !5977
  %3 = getelementptr inbounds { i64, i64 }, ptr %partition_type_guid, i32 0, i32 1, !dbg !5977
  %4 = load i64, ptr %3, align 1, !dbg !5977
  %5 = getelementptr inbounds { i64, i64 }, ptr %.compoundliteral, i32 0, i32 0, !dbg !5977
  %6 = load i64, ptr %5, align 4, !dbg !5977
  %7 = getelementptr inbounds { i64, i64 }, ptr %.compoundliteral, i32 0, i32 1, !dbg !5977
  %8 = load i64, ptr %7, align 4, !dbg !5977
  %call = call i32 @efi_guidcmp(i64 %2, i64 %4, i64 %6, i64 %8) #19, !dbg !5977
  %tobool = icmp ne i32 %call, 0, !dbg !5977
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5978

lor.lhs.false:                                    ; preds = %entry
  %9 = load ptr, ptr %pte.addr, align 8, !dbg !5979
  %starting_lba = getelementptr inbounds %struct._gpt_entry, ptr %9, i32 0, i32 2, !dbg !5979
  %10 = load i64, ptr %starting_lba, align 1, !dbg !5979
  %11 = load i64, ptr %lastlba.addr, align 8, !dbg !5980
  %cmp = icmp ugt i64 %10, %11, !dbg !5981
  br i1 %cmp, label %if.then, label %lor.lhs.false15, !dbg !5982

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %12 = load ptr, ptr %pte.addr, align 8, !dbg !5983
  %ending_lba = getelementptr inbounds %struct._gpt_entry, ptr %12, i32 0, i32 3, !dbg !5983
  %13 = load i64, ptr %ending_lba, align 1, !dbg !5983
  %14 = load i64, ptr %lastlba.addr, align 8, !dbg !5984
  %cmp16 = icmp ugt i64 %13, %14, !dbg !5985
  br i1 %cmp16, label %if.then, label %if.end, !dbg !5986

if.then:                                          ; preds = %lor.lhs.false15, %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !5987
  br label %return, !dbg !5987

if.end:                                           ; preds = %lor.lhs.false15
  store i32 1, ptr %retval, align 4, !dbg !5988
  br label %return, !dbg !5988

return:                                           ; preds = %if.end, %if.then
  %15 = load i32, ptr %retval, align 4, !dbg !5989
  ret i32 %15, !dbg !5989
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @last_lba(ptr noundef %disk) #1 align 16 !dbg !5990 {
entry:
  %disk.addr = alloca ptr, align 8
  store ptr %disk, ptr %disk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %disk.addr, metadata !5994, metadata !DIExpression()), !dbg !5995
  %0 = load ptr, ptr %disk.addr, align 8, !dbg !5996
  %part0 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 7, !dbg !5997
  %1 = load ptr, ptr %part0, align 8, !dbg !5997
  %call = call i64 @bdev_nr_bytes(ptr noundef %1) #19, !dbg !5998
  %2 = load ptr, ptr %disk.addr, align 8, !dbg !5999
  %queue = getelementptr inbounds %struct.gendisk, ptr %2, i32 0, i32 9, !dbg !6000
  %3 = load ptr, ptr %queue, align 8, !dbg !6000
  %call1 = call i32 @queue_logical_block_size(ptr noundef %3) #19, !dbg !6001
  %call2 = call i64 @div_u64(i64 noundef %call, i32 noundef %call1) #19, !dbg !6002
  %sub = sub i64 %call2, 1, !dbg !6003
  ret i64 %sub, !dbg !6004
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_partition(ptr noundef %p, i32 noundef %n, i64 noundef %from, i64 noundef %size) #4 align 16 !dbg !6005 {
entry:
  %p.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %from.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %tmp = alloca [44 x i8], align 16
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6009, metadata !DIExpression()), !dbg !6019
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6010, metadata !DIExpression()), !dbg !6020
  store i64 %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6011, metadata !DIExpression()), !dbg !6021
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6012, metadata !DIExpression()), !dbg !6022
  %0 = load i32, ptr %n.addr, align 4, !dbg !6023
  %1 = load ptr, ptr %p.addr, align 8, !dbg !6024
  %limit = getelementptr inbounds %struct.parsed_partitions, ptr %1, i32 0, i32 4, !dbg !6025
  %2 = load i32, ptr %limit, align 4, !dbg !6025
  %cmp = icmp slt i32 %0, %2, !dbg !6026
  br i1 %cmp, label %if.then, label %if.end, !dbg !6027

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 44, ptr %tmp) #18, !dbg !6028
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !6013, metadata !DIExpression()), !dbg !6029
  %3 = load i64, ptr %from.addr, align 8, !dbg !6030
  %4 = load ptr, ptr %p.addr, align 8, !dbg !6031
  %parts = getelementptr inbounds %struct.parsed_partitions, ptr %4, i32 0, i32 2, !dbg !6032
  %5 = load ptr, ptr %parts, align 8, !dbg !6032
  %6 = load i32, ptr %n.addr, align 4, !dbg !6033
  %idxprom = sext i32 %6 to i64, !dbg !6031
  %arrayidx = getelementptr %struct.anon.13, ptr %5, i64 %idxprom, !dbg !6031
  %from1 = getelementptr inbounds %struct.anon.13, ptr %arrayidx, i32 0, i32 0, !dbg !6034
  store i64 %3, ptr %from1, align 8, !dbg !6035
  %7 = load i64, ptr %size.addr, align 8, !dbg !6036
  %8 = load ptr, ptr %p.addr, align 8, !dbg !6037
  %parts2 = getelementptr inbounds %struct.parsed_partitions, ptr %8, i32 0, i32 2, !dbg !6038
  %9 = load ptr, ptr %parts2, align 8, !dbg !6038
  %10 = load i32, ptr %n.addr, align 4, !dbg !6039
  %idxprom3 = sext i32 %10 to i64, !dbg !6037
  %arrayidx4 = getelementptr %struct.anon.13, ptr %9, i64 %idxprom3, !dbg !6037
  %size5 = getelementptr inbounds %struct.anon.13, ptr %arrayidx4, i32 0, i32 1, !dbg !6040
  store i64 %7, ptr %size5, align 8, !dbg !6041
  %arraydecay = getelementptr inbounds [44 x i8], ptr %tmp, i64 0, i64 0, !dbg !6042
  %11 = load ptr, ptr %p.addr, align 8, !dbg !6043
  %name = getelementptr inbounds %struct.parsed_partitions, ptr %11, i32 0, i32 1, !dbg !6044
  %arraydecay6 = getelementptr inbounds [32 x i8], ptr %name, i64 0, i64 0, !dbg !6043
  %12 = load i32, ptr %n.addr, align 4, !dbg !6045
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 44, ptr noundef @.str.16, ptr noundef %arraydecay6, i32 noundef %12) #19, !dbg !6046
  %13 = load ptr, ptr %p.addr, align 8, !dbg !6047
  %pp_buf = getelementptr inbounds %struct.parsed_partitions, ptr %13, i32 0, i32 6, !dbg !6048
  %14 = load ptr, ptr %pp_buf, align 8, !dbg !6048
  %arraydecay7 = getelementptr inbounds [44 x i8], ptr %tmp, i64 0, i64 0, !dbg !6049
  %call8 = call i64 @strlcat(ptr noundef %14, ptr noundef %arraydecay7, i64 noundef 4096) #19, !dbg !6050
  call void @llvm.lifetime.end.p0(i64 44, ptr %tmp) #18, !dbg !6051
  br label %if.end, !dbg !6052

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6053
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @efi_guidcmp(i64 %left.coerce0, i64 %left.coerce1, i64 %right.coerce0, i64 %right.coerce1) #4 align 16 !dbg !6054 {
entry:
  %left = alloca %struct.guid_t, align 4
  %right = alloca %struct.guid_t, align 4
  %0 = getelementptr inbounds { i64, i64 }, ptr %left, i32 0, i32 0
  store i64 %left.coerce0, ptr %0, align 4
  %1 = getelementptr inbounds { i64, i64 }, ptr %left, i32 0, i32 1
  store i64 %left.coerce1, ptr %1, align 4
  %2 = getelementptr inbounds { i64, i64 }, ptr %right, i32 0, i32 0
  store i64 %right.coerce0, ptr %2, align 4
  %3 = getelementptr inbounds { i64, i64 }, ptr %right, i32 0, i32 1
  store i64 %right.coerce1, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %left, metadata !6058, metadata !DIExpression()), !dbg !6060
  call void @llvm.dbg.declare(metadata ptr %right, metadata !6059, metadata !DIExpression()), !dbg !6061
  %call = call i32 @memcmp(ptr noundef %left, ptr noundef %right, i64 noundef 16) #19, !dbg !6062
  ret i32 %call, !dbg !6063
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @efi_guid_to_str(ptr noundef %guid, ptr noundef %out) #4 align 16 !dbg !6064 {
entry:
  %guid.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  store ptr %guid, ptr %guid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %guid.addr, metadata !6069, metadata !DIExpression()), !dbg !6071
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !6070, metadata !DIExpression()), !dbg !6072
  %0 = load ptr, ptr %out.addr, align 8, !dbg !6073
  %1 = load ptr, ptr %guid.addr, align 8, !dbg !6074
  %b = getelementptr inbounds %struct.guid_t, ptr %1, i32 0, i32 0, !dbg !6075
  %arraydecay = getelementptr inbounds [16 x i8], ptr %b, i64 0, i64 0, !dbg !6074
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.17, ptr noundef %arraydecay) #19, !dbg !6076
  %2 = load ptr, ptr %out.addr, align 8, !dbg !6077
  ret ptr %2, !dbg !6078
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @utf16_le_to_7bit(ptr noundef %in, i32 noundef %size, ptr noundef %out) #1 align 16 !dbg !6079 {
entry:
  %in.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %out.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %c = alloca i8, align 1
  store ptr %in, ptr %in.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !6085, metadata !DIExpression()), !dbg !6091
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6086, metadata !DIExpression()), !dbg !6092
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !6087, metadata !DIExpression()), !dbg !6093
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !6094
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6088, metadata !DIExpression()), !dbg !6095
  store i32 0, ptr %i, align 4, !dbg !6095
  %0 = load ptr, ptr %out.addr, align 8, !dbg !6096
  %1 = load i32, ptr %size.addr, align 4, !dbg !6097
  %idxprom = zext i32 %1 to i64, !dbg !6096
  %arrayidx = getelementptr i8, ptr %0, i64 %idxprom, !dbg !6096
  store i8 0, ptr %arrayidx, align 1, !dbg !6098
  br label %while.cond, !dbg !6099

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i32, ptr %i, align 4, !dbg !6100
  %3 = load i32, ptr %size.addr, align 4, !dbg !6101
  %cmp = icmp ult i32 %2, %3, !dbg !6102
  br i1 %cmp, label %while.body, label %while.end, !dbg !6099

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #18, !dbg !6103
  call void @llvm.dbg.declare(metadata ptr %c, metadata !6089, metadata !DIExpression()), !dbg !6104
  %4 = load ptr, ptr %in.addr, align 8, !dbg !6105
  %5 = load i32, ptr %i, align 4, !dbg !6105
  %idxprom1 = zext i32 %5 to i64, !dbg !6105
  %arrayidx2 = getelementptr i16, ptr %4, i64 %idxprom1, !dbg !6105
  %6 = load i16, ptr %arrayidx2, align 2, !dbg !6105
  %conv = zext i16 %6 to i32, !dbg !6105
  %and = and i32 %conv, 127, !dbg !6106
  %conv3 = trunc i32 %and to i8, !dbg !6105
  store i8 %conv3, ptr %c, align 1, !dbg !6104
  %7 = load i8, ptr %c, align 1, !dbg !6107
  %conv4 = zext i8 %7 to i32, !dbg !6107
  %tobool = icmp ne i32 %conv4, 0, !dbg !6107
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6109

land.lhs.true:                                    ; preds = %while.body
  %8 = load i8, ptr %c, align 1, !dbg !6110
  %conv5 = zext i8 %8 to i32, !dbg !6110
  %idxprom6 = sext i32 %conv5 to i64, !dbg !6110
  %arrayidx7 = getelementptr [0 x i8], ptr @_ctype, i64 0, i64 %idxprom6, !dbg !6110
  %9 = load i8, ptr %arrayidx7, align 1, !dbg !6110
  %conv8 = zext i8 %9 to i32, !dbg !6110
  %and9 = and i32 %conv8, 151, !dbg !6110
  %cmp10 = icmp ne i32 %and9, 0, !dbg !6110
  br i1 %cmp10, label %if.end, label %if.then, !dbg !6111

if.then:                                          ; preds = %land.lhs.true
  store i8 33, ptr %c, align 1, !dbg !6112
  br label %if.end, !dbg !6113

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.body
  %10 = load i8, ptr %c, align 1, !dbg !6114
  %11 = load ptr, ptr %out.addr, align 8, !dbg !6115
  %12 = load i32, ptr %i, align 4, !dbg !6116
  %idxprom12 = zext i32 %12 to i64, !dbg !6115
  %arrayidx13 = getelementptr i8, ptr %11, i64 %idxprom12, !dbg !6115
  store i8 %10, ptr %arrayidx13, align 1, !dbg !6117
  %13 = load i32, ptr %i, align 4, !dbg !6118
  %inc = add i32 %13, 1, !dbg !6118
  store i32 %inc, ptr %i, align 4, !dbg !6118
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #18, !dbg !6119
  br label %while.cond, !dbg !6099, !llvm.loop !6120

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !6121
  ret void, !dbg !6121
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6122 dso_local i64 @strlcat(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @get_capacity(ptr noundef %disk) #4 align 16 !dbg !6126 {
entry:
  %disk.addr = alloca ptr, align 8
  store ptr %disk, ptr %disk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %disk.addr, metadata !6130, metadata !DIExpression()), !dbg !6131
  %0 = load ptr, ptr %disk.addr, align 8, !dbg !6132
  %part0 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 7, !dbg !6133
  %1 = load ptr, ptr %part0, align 8, !dbg !6133
  %call = call i64 @bdev_nr_sectors(ptr noundef %1) #19, !dbg !6134
  ret i64 %call, !dbg !6135
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !6136 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6140, metadata !DIExpression()), !dbg !6142
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6141, metadata !DIExpression()), !dbg !6143
  %0 = load i64, ptr %size.addr, align 8, !dbg !6144
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6145
  %or = or i32 %1, 256, !dbg !6146
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #20, !dbg !6147
  ret ptr %call, !dbg !6148
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @read_lba(ptr noundef %state, i64 noundef %lba, ptr noundef %buffer, i64 noundef %count) #1 align 16 !dbg !6149 {
entry:
  %retval = alloca i64, align 8
  %state.addr = alloca ptr, align 8
  %lba.addr = alloca i64, align 8
  %buffer.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %totalreadcount = alloca i64, align 8
  %n = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %copied = alloca i32, align 4
  %sect = alloca %struct.Sector, align 8
  %data = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !6153, metadata !DIExpression()), !dbg !6168
  store i64 %lba, ptr %lba.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lba.addr, metadata !6154, metadata !DIExpression()), !dbg !6169
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !6155, metadata !DIExpression()), !dbg !6170
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6156, metadata !DIExpression()), !dbg !6171
  call void @llvm.lifetime.start.p0(i64 8, ptr %totalreadcount) #18, !dbg !6172
  call void @llvm.dbg.declare(metadata ptr %totalreadcount, metadata !6157, metadata !DIExpression()), !dbg !6173
  store i64 0, ptr %totalreadcount, align 8, !dbg !6173
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #18, !dbg !6174
  call void @llvm.dbg.declare(metadata ptr %n, metadata !6158, metadata !DIExpression()), !dbg !6175
  %0 = load i64, ptr %lba.addr, align 8, !dbg !6176
  %1 = load ptr, ptr %state.addr, align 8, !dbg !6177
  %disk = getelementptr inbounds %struct.parsed_partitions, ptr %1, i32 0, i32 0, !dbg !6178
  %2 = load ptr, ptr %disk, align 8, !dbg !6178
  %queue = getelementptr inbounds %struct.gendisk, ptr %2, i32 0, i32 9, !dbg !6179
  %3 = load ptr, ptr %queue, align 8, !dbg !6179
  %call = call i32 @queue_logical_block_size(ptr noundef %3) #19, !dbg !6180
  %div = udiv i32 %call, 512, !dbg !6181
  %conv = zext i32 %div to i64, !dbg !6182
  %mul = mul i64 %0, %conv, !dbg !6183
  store i64 %mul, ptr %n, align 8, !dbg !6175
  %4 = load ptr, ptr %buffer.addr, align 8, !dbg !6184
  %tobool = icmp ne ptr %4, null, !dbg !6184
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !6186

lor.lhs.false:                                    ; preds = %entry
  %5 = load i64, ptr %lba.addr, align 8, !dbg !6187
  %6 = load ptr, ptr %state.addr, align 8, !dbg !6188
  %disk1 = getelementptr inbounds %struct.parsed_partitions, ptr %6, i32 0, i32 0, !dbg !6189
  %7 = load ptr, ptr %disk1, align 8, !dbg !6189
  %call2 = call i64 @last_lba(ptr noundef %7) #19, !dbg !6190
  %cmp = icmp ugt i64 %5, %call2, !dbg !6191
  br i1 %cmp, label %if.then, label %if.end, !dbg !6192

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 0, ptr %retval, align 8, !dbg !6193
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup20, !dbg !6193

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond, !dbg !6194

while.cond:                                       ; preds = %cleanup.cont, %if.end
  %8 = load i64, ptr %count.addr, align 8, !dbg !6195
  %tobool4 = icmp ne i64 %8, 0, !dbg !6194
  br i1 %tobool4, label %while.body, label %while.end, !dbg !6194

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %copied) #18, !dbg !6196
  call void @llvm.dbg.declare(metadata ptr %copied, metadata !6159, metadata !DIExpression()), !dbg !6197
  store i32 512, ptr %copied, align 4, !dbg !6197
  call void @llvm.lifetime.start.p0(i64 8, ptr %sect) #18, !dbg !6198
  call void @llvm.dbg.declare(metadata ptr %sect, metadata !6161, metadata !DIExpression()), !dbg !6199
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #18, !dbg !6200
  call void @llvm.dbg.declare(metadata ptr %data, metadata !6166, metadata !DIExpression()), !dbg !6201
  %9 = load ptr, ptr %state.addr, align 8, !dbg !6202
  %10 = load i64, ptr %n, align 8, !dbg !6203
  %inc = add i64 %10, 1, !dbg !6203
  store i64 %inc, ptr %n, align 8, !dbg !6203
  %call5 = call ptr @read_part_sector(ptr noundef %9, i64 noundef %10, ptr noundef %sect) #19, !dbg !6204
  store ptr %call5, ptr %data, align 8, !dbg !6201
  %11 = load ptr, ptr %data, align 8, !dbg !6205
  %tobool6 = icmp ne ptr %11, null, !dbg !6205
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !6207

if.then7:                                         ; preds = %while.body
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6208

if.end8:                                          ; preds = %while.body
  %12 = load i32, ptr %copied, align 4, !dbg !6209
  %conv9 = sext i32 %12 to i64, !dbg !6209
  %13 = load i64, ptr %count.addr, align 8, !dbg !6211
  %cmp10 = icmp ugt i64 %conv9, %13, !dbg !6212
  br i1 %cmp10, label %if.then12, label %if.end14, !dbg !6213

if.then12:                                        ; preds = %if.end8
  %14 = load i64, ptr %count.addr, align 8, !dbg !6214
  %conv13 = trunc i64 %14 to i32, !dbg !6214
  store i32 %conv13, ptr %copied, align 4, !dbg !6215
  br label %if.end14, !dbg !6216

if.end14:                                         ; preds = %if.then12, %if.end8
  %15 = load ptr, ptr %buffer.addr, align 8, !dbg !6217
  %16 = load ptr, ptr %data, align 8, !dbg !6218
  %17 = load i32, ptr %copied, align 4, !dbg !6219
  %conv15 = sext i32 %17 to i64, !dbg !6219
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr align 1 %16, i64 %conv15, i1 false), !dbg !6220
  %coerce.dive = getelementptr inbounds %struct.Sector, ptr %sect, i32 0, i32 0, !dbg !6221
  %18 = load ptr, ptr %coerce.dive, align 8, !dbg !6221
  call void @put_dev_sector(ptr %18) #19, !dbg !6221
  %19 = load i32, ptr %copied, align 4, !dbg !6222
  %20 = load ptr, ptr %buffer.addr, align 8, !dbg !6223
  %idx.ext = sext i32 %19 to i64, !dbg !6223
  %add.ptr = getelementptr i8, ptr %20, i64 %idx.ext, !dbg !6223
  store ptr %add.ptr, ptr %buffer.addr, align 8, !dbg !6223
  %21 = load i32, ptr %copied, align 4, !dbg !6224
  %conv16 = sext i32 %21 to i64, !dbg !6224
  %22 = load i64, ptr %totalreadcount, align 8, !dbg !6225
  %add = add i64 %22, %conv16, !dbg !6225
  store i64 %add, ptr %totalreadcount, align 8, !dbg !6225
  %23 = load i32, ptr %copied, align 4, !dbg !6226
  %conv17 = sext i32 %23 to i64, !dbg !6226
  %24 = load i64, ptr %count.addr, align 8, !dbg !6227
  %sub = sub i64 %24, %conv17, !dbg !6227
  store i64 %sub, ptr %count.addr, align 8, !dbg !6227
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6228
  br label %cleanup, !dbg !6228

cleanup:                                          ; preds = %if.end14, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #18, !dbg !6228
  call void @llvm.lifetime.end.p0(i64 8, ptr %sect) #18, !dbg !6228
  call void @llvm.lifetime.end.p0(i64 4, ptr %copied) #18, !dbg !6228
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !6194, !llvm.loop !6229

while.end:                                        ; preds = %cleanup, %while.cond
  %25 = load i64, ptr %totalreadcount, align 8, !dbg !6230
  store i64 %25, ptr %retval, align 8, !dbg !6231
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup20, !dbg !6231

cleanup20:                                        ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #18, !dbg !6232
  call void @llvm.lifetime.end.p0(i64 8, ptr %totalreadcount) #18, !dbg !6232
  %26 = load i64, ptr %retval, align 8, !dbg !6232
  ret i64 %26, !dbg !6232

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @is_pmbr_valid(ptr noundef %mbr, i64 noundef %total_sectors) #1 align 16 !dbg !6233 {
entry:
  %mbr.addr = alloca ptr, align 8
  %total_sectors.addr = alloca i64, align 8
  %sz = alloca i32, align 4
  %i = alloca i32, align 4
  %part = alloca i32, align 4
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %mbr, ptr %mbr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mbr.addr, metadata !6237, metadata !DIExpression()), !dbg !6245
  store i64 %total_sectors, ptr %total_sectors.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %total_sectors.addr, metadata !6238, metadata !DIExpression()), !dbg !6246
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #18, !dbg !6247
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !6239, metadata !DIExpression()), !dbg !6248
  store i32 0, ptr %sz, align 4, !dbg !6248
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !6249
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6240, metadata !DIExpression()), !dbg !6250
  call void @llvm.lifetime.start.p0(i64 4, ptr %part) #18, !dbg !6249
  call void @llvm.dbg.declare(metadata ptr %part, metadata !6241, metadata !DIExpression()), !dbg !6251
  store i32 0, ptr %part, align 4, !dbg !6251
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !6249
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6242, metadata !DIExpression()), !dbg !6252
  store i32 0, ptr %ret, align 4, !dbg !6252
  %0 = load ptr, ptr %mbr.addr, align 8, !dbg !6253
  %tobool = icmp ne ptr %0, null, !dbg !6253
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !6255

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %mbr.addr, align 8, !dbg !6256
  %signature = getelementptr inbounds %struct._legacy_mbr, ptr %1, i32 0, i32 4, !dbg !6256
  %2 = load i16, ptr %signature, align 1, !dbg !6256
  %conv = zext i16 %2 to i32, !dbg !6256
  %cmp = icmp ne i32 %conv, 43605, !dbg !6257
  br i1 %cmp, label %if.then, label %if.end, !dbg !6258

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %done, !dbg !6259

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, ptr %i, align 4, !dbg !6260
  br label %for.cond, !dbg !6262

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %i, align 4, !dbg !6263
  %cmp2 = icmp slt i32 %3, 4, !dbg !6265
  br i1 %cmp2, label %for.body, label %for.end, !dbg !6266

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %mbr.addr, align 8, !dbg !6267
  %partition_record = getelementptr inbounds %struct._legacy_mbr, ptr %4, i32 0, i32 3, !dbg !6269
  %5 = load i32, ptr %i, align 4, !dbg !6270
  %idxprom = sext i32 %5 to i64, !dbg !6267
  %arrayidx = getelementptr [4 x %struct._gpt_mbr_record], ptr %partition_record, i64 0, i64 %idxprom, !dbg !6267
  %call = call i32 @pmbr_part_valid(ptr noundef %arrayidx) #19, !dbg !6271
  store i32 %call, ptr %ret, align 4, !dbg !6272
  %6 = load i32, ptr %ret, align 4, !dbg !6273
  %cmp4 = icmp eq i32 %6, 1, !dbg !6275
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !6276

if.then6:                                         ; preds = %for.body
  %7 = load i32, ptr %i, align 4, !dbg !6277
  store i32 %7, ptr %part, align 4, !dbg !6279
  br label %check_hybrid, !dbg !6280

if.end7:                                          ; preds = %for.body
  br label %for.inc, !dbg !6281

for.inc:                                          ; preds = %if.end7
  %8 = load i32, ptr %i, align 4, !dbg !6282
  %inc = add i32 %8, 1, !dbg !6282
  store i32 %inc, ptr %i, align 4, !dbg !6282
  br label %for.cond, !dbg !6283, !llvm.loop !6284

for.end:                                          ; preds = %for.cond
  %9 = load i32, ptr %ret, align 4, !dbg !6286
  %cmp8 = icmp ne i32 %9, 1, !dbg !6288
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !6289

if.then10:                                        ; preds = %for.end
  br label %done, !dbg !6290

if.end11:                                         ; preds = %for.end
  br label %check_hybrid, !dbg !6291

check_hybrid:                                     ; preds = %if.end11, %if.then6
  call void @llvm.dbg.label(metadata !6243), !dbg !6292
  store i32 0, ptr %i, align 4, !dbg !6293
  br label %for.cond12, !dbg !6295

for.cond12:                                       ; preds = %for.inc31, %check_hybrid
  %10 = load i32, ptr %i, align 4, !dbg !6296
  %cmp13 = icmp slt i32 %10, 4, !dbg !6298
  br i1 %cmp13, label %for.body15, label %for.end33, !dbg !6299

for.body15:                                       ; preds = %for.cond12
  %11 = load ptr, ptr %mbr.addr, align 8, !dbg !6300
  %partition_record16 = getelementptr inbounds %struct._legacy_mbr, ptr %11, i32 0, i32 3, !dbg !6302
  %12 = load i32, ptr %i, align 4, !dbg !6303
  %idxprom17 = sext i32 %12 to i64, !dbg !6300
  %arrayidx18 = getelementptr [4 x %struct._gpt_mbr_record], ptr %partition_record16, i64 0, i64 %idxprom17, !dbg !6300
  %os_type = getelementptr inbounds %struct._gpt_mbr_record, ptr %arrayidx18, i32 0, i32 4, !dbg !6304
  %13 = load i8, ptr %os_type, align 1, !dbg !6304
  %conv19 = zext i8 %13 to i32, !dbg !6300
  %cmp20 = icmp ne i32 %conv19, 238, !dbg !6305
  br i1 %cmp20, label %land.lhs.true, label %if.end30, !dbg !6306

land.lhs.true:                                    ; preds = %for.body15
  %14 = load ptr, ptr %mbr.addr, align 8, !dbg !6307
  %partition_record22 = getelementptr inbounds %struct._legacy_mbr, ptr %14, i32 0, i32 3, !dbg !6308
  %15 = load i32, ptr %i, align 4, !dbg !6309
  %idxprom23 = sext i32 %15 to i64, !dbg !6307
  %arrayidx24 = getelementptr [4 x %struct._gpt_mbr_record], ptr %partition_record22, i64 0, i64 %idxprom23, !dbg !6307
  %os_type25 = getelementptr inbounds %struct._gpt_mbr_record, ptr %arrayidx24, i32 0, i32 4, !dbg !6310
  %16 = load i8, ptr %os_type25, align 1, !dbg !6310
  %conv26 = zext i8 %16 to i32, !dbg !6307
  %cmp27 = icmp ne i32 %conv26, 0, !dbg !6311
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !6312

if.then29:                                        ; preds = %land.lhs.true
  store i32 2, ptr %ret, align 4, !dbg !6313
  br label %if.end30, !dbg !6314

if.end30:                                         ; preds = %if.then29, %land.lhs.true, %for.body15
  br label %for.inc31, !dbg !6315

for.inc31:                                        ; preds = %if.end30
  %17 = load i32, ptr %i, align 4, !dbg !6316
  %inc32 = add i32 %17, 1, !dbg !6316
  store i32 %inc32, ptr %i, align 4, !dbg !6316
  br label %for.cond12, !dbg !6317, !llvm.loop !6318

for.end33:                                        ; preds = %for.cond12
  %18 = load i32, ptr %ret, align 4, !dbg !6320
  %cmp34 = icmp eq i32 %18, 1, !dbg !6322
  br i1 %cmp34, label %if.then36, label %if.end48, !dbg !6323

if.then36:                                        ; preds = %for.end33
  %19 = load ptr, ptr %mbr.addr, align 8, !dbg !6324
  %partition_record37 = getelementptr inbounds %struct._legacy_mbr, ptr %19, i32 0, i32 3, !dbg !6324
  %20 = load i32, ptr %part, align 4, !dbg !6324
  %idxprom38 = sext i32 %20 to i64, !dbg !6324
  %arrayidx39 = getelementptr [4 x %struct._gpt_mbr_record], ptr %partition_record37, i64 0, i64 %idxprom38, !dbg !6324
  %size_in_lba = getelementptr inbounds %struct._gpt_mbr_record, ptr %arrayidx39, i32 0, i32 9, !dbg !6324
  %21 = load i32, ptr %size_in_lba, align 1, !dbg !6324
  store i32 %21, ptr %sz, align 4, !dbg !6326
  %22 = load i32, ptr %sz, align 4, !dbg !6327
  %23 = load i64, ptr %total_sectors.addr, align 8, !dbg !6329
  %conv40 = trunc i64 %23 to i32, !dbg !6330
  %sub = sub i32 %conv40, 1, !dbg !6331
  %cmp41 = icmp ne i32 %22, %sub, !dbg !6332
  br i1 %cmp41, label %land.lhs.true43, label %if.end47, !dbg !6333

land.lhs.true43:                                  ; preds = %if.then36
  %24 = load i32, ptr %sz, align 4, !dbg !6334
  %cmp44 = icmp ne i32 %24, -1, !dbg !6335
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !6336

if.then46:                                        ; preds = %land.lhs.true43
  store i32 0, ptr %tmp, align 4, !dbg !6337
  %25 = load i32, ptr %tmp, align 4, !dbg !6340
  br label %if.end47, !dbg !6341

if.end47:                                         ; preds = %if.then46, %land.lhs.true43, %if.then36
  br label %if.end48, !dbg !6342

if.end48:                                         ; preds = %if.end47, %for.end33
  br label %done, !dbg !6343

done:                                             ; preds = %if.end48, %if.then10, %if.then
  call void @llvm.dbg.label(metadata !6244), !dbg !6344
  %26 = load i32, ptr %ret, align 4, !dbg !6345
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !6346
  call void @llvm.lifetime.end.p0(i64 4, ptr %part) #18, !dbg !6346
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !6346
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #18, !dbg !6346
  ret i32 %26, !dbg !6347
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @is_gpt_valid(ptr noundef %state, i64 noundef %lba, ptr noundef %gpt, ptr noundef %ptes) #1 align 16 !dbg !6348 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca ptr, align 8
  %lba.addr = alloca i64, align 8
  %gpt.addr = alloca ptr, align 8
  %ptes.addr = alloca ptr, align 8
  %crc = alloca i32, align 4
  %origcrc = alloca i32, align 4
  %lastlba = alloca i64, align 8
  %pt_size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp9 = alloca i32, align 4
  %tmp15 = alloca i32, align 4
  %tmp24 = alloca i32, align 4
  %tmp30 = alloca i32, align 4
  %tmp37 = alloca i32, align 4
  %tmp42 = alloca i32, align 4
  %tmp49 = alloca i32, align 4
  %tmp55 = alloca i32, align 4
  %tmp63 = alloca i32, align 4
  %tmp73 = alloca i32, align 4
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !6352, metadata !DIExpression()), !dbg !6362
  store i64 %lba, ptr %lba.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lba.addr, metadata !6353, metadata !DIExpression()), !dbg !6363
  store ptr %gpt, ptr %gpt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpt.addr, metadata !6354, metadata !DIExpression()), !dbg !6364
  store ptr %ptes, ptr %ptes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptes.addr, metadata !6355, metadata !DIExpression()), !dbg !6365
  call void @llvm.lifetime.start.p0(i64 4, ptr %crc) #18, !dbg !6366
  call void @llvm.dbg.declare(metadata ptr %crc, metadata !6356, metadata !DIExpression()), !dbg !6367
  call void @llvm.lifetime.start.p0(i64 4, ptr %origcrc) #18, !dbg !6366
  call void @llvm.dbg.declare(metadata ptr %origcrc, metadata !6357, metadata !DIExpression()), !dbg !6368
  call void @llvm.lifetime.start.p0(i64 8, ptr %lastlba) #18, !dbg !6369
  call void @llvm.dbg.declare(metadata ptr %lastlba, metadata !6358, metadata !DIExpression()), !dbg !6370
  call void @llvm.lifetime.start.p0(i64 8, ptr %pt_size) #18, !dbg !6369
  call void @llvm.dbg.declare(metadata ptr %pt_size, metadata !6359, metadata !DIExpression()), !dbg !6371
  %0 = load ptr, ptr %ptes.addr, align 8, !dbg !6372
  %tobool = icmp ne ptr %0, null, !dbg !6372
  br i1 %tobool, label %if.end, label %if.then, !dbg !6374

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6375
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6375

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %state.addr, align 8, !dbg !6376
  %2 = load i64, ptr %lba.addr, align 8, !dbg !6378
  %call = call ptr @alloc_read_gpt_header(ptr noundef %1, i64 noundef %2) #19, !dbg !6379
  %3 = load ptr, ptr %gpt.addr, align 8, !dbg !6380
  store ptr %call, ptr %3, align 8, !dbg !6381
  %tobool1 = icmp ne ptr %call, null, !dbg !6381
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !6382

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !6383
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6383

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %gpt.addr, align 8, !dbg !6384
  %5 = load ptr, ptr %4, align 8, !dbg !6384
  %signature = getelementptr inbounds %struct._gpt_header, ptr %5, i32 0, i32 0, !dbg !6384
  %6 = load i64, ptr %signature, align 1, !dbg !6384
  %cmp = icmp ne i64 %6, 6075990659671082565, !dbg !6386
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !6387

if.then4:                                         ; preds = %if.end3
  store i32 0, ptr %tmp, align 4, !dbg !6388
  %7 = load i32, ptr %tmp, align 4, !dbg !6392
  br label %fail, !dbg !6393

if.end5:                                          ; preds = %if.end3
  %8 = load ptr, ptr %gpt.addr, align 8, !dbg !6394
  %9 = load ptr, ptr %8, align 8, !dbg !6394
  %header_size = getelementptr inbounds %struct._gpt_header, ptr %9, i32 0, i32 2, !dbg !6394
  %10 = load i32, ptr %header_size, align 1, !dbg !6394
  %11 = load ptr, ptr %state.addr, align 8, !dbg !6396
  %disk = getelementptr inbounds %struct.parsed_partitions, ptr %11, i32 0, i32 0, !dbg !6397
  %12 = load ptr, ptr %disk, align 8, !dbg !6397
  %queue = getelementptr inbounds %struct.gendisk, ptr %12, i32 0, i32 9, !dbg !6398
  %13 = load ptr, ptr %queue, align 8, !dbg !6398
  %call6 = call i32 @queue_logical_block_size(ptr noundef %13) #19, !dbg !6399
  %cmp7 = icmp ugt i32 %10, %call6, !dbg !6400
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !6401

if.then8:                                         ; preds = %if.end5
  store i32 0, ptr %tmp9, align 4, !dbg !6402
  %14 = load i32, ptr %tmp9, align 4, !dbg !6406
  br label %fail, !dbg !6407

if.end10:                                         ; preds = %if.end5
  %15 = load ptr, ptr %gpt.addr, align 8, !dbg !6408
  %16 = load ptr, ptr %15, align 8, !dbg !6408
  %header_size11 = getelementptr inbounds %struct._gpt_header, ptr %16, i32 0, i32 2, !dbg !6408
  %17 = load i32, ptr %header_size11, align 1, !dbg !6408
  %conv = zext i32 %17 to i64, !dbg !6408
  %cmp12 = icmp ult i64 %conv, 92, !dbg !6410
  br i1 %cmp12, label %if.then14, label %if.end16, !dbg !6411

if.then14:                                        ; preds = %if.end10
  store i32 0, ptr %tmp15, align 4, !dbg !6412
  %18 = load i32, ptr %tmp15, align 4, !dbg !6416
  br label %fail, !dbg !6417

if.end16:                                         ; preds = %if.end10
  %19 = load ptr, ptr %gpt.addr, align 8, !dbg !6418
  %20 = load ptr, ptr %19, align 8, !dbg !6418
  %header_crc32 = getelementptr inbounds %struct._gpt_header, ptr %20, i32 0, i32 3, !dbg !6418
  %21 = load i32, ptr %header_crc32, align 1, !dbg !6418
  store i32 %21, ptr %origcrc, align 4, !dbg !6419
  %22 = load ptr, ptr %gpt.addr, align 8, !dbg !6420
  %23 = load ptr, ptr %22, align 8, !dbg !6421
  %header_crc3217 = getelementptr inbounds %struct._gpt_header, ptr %23, i32 0, i32 3, !dbg !6422
  store i32 0, ptr %header_crc3217, align 1, !dbg !6423
  %24 = load ptr, ptr %gpt.addr, align 8, !dbg !6424
  %25 = load ptr, ptr %24, align 8, !dbg !6425
  %26 = load ptr, ptr %gpt.addr, align 8, !dbg !6426
  %27 = load ptr, ptr %26, align 8, !dbg !6426
  %header_size18 = getelementptr inbounds %struct._gpt_header, ptr %27, i32 0, i32 2, !dbg !6426
  %28 = load i32, ptr %header_size18, align 1, !dbg !6426
  %conv19 = zext i32 %28 to i64, !dbg !6426
  %call20 = call i32 @efi_crc32(ptr noundef %25, i64 noundef %conv19) #19, !dbg !6427
  store i32 %call20, ptr %crc, align 4, !dbg !6428
  %29 = load i32, ptr %crc, align 4, !dbg !6429
  %30 = load i32, ptr %origcrc, align 4, !dbg !6431
  %cmp21 = icmp ne i32 %29, %30, !dbg !6432
  br i1 %cmp21, label %if.then23, label %if.end25, !dbg !6433

if.then23:                                        ; preds = %if.end16
  store i32 0, ptr %tmp24, align 4, !dbg !6434
  %31 = load i32, ptr %tmp24, align 4, !dbg !6438
  br label %fail, !dbg !6439

if.end25:                                         ; preds = %if.end16
  %32 = load i32, ptr %origcrc, align 4, !dbg !6440
  %33 = load ptr, ptr %gpt.addr, align 8, !dbg !6441
  %34 = load ptr, ptr %33, align 8, !dbg !6442
  %header_crc3226 = getelementptr inbounds %struct._gpt_header, ptr %34, i32 0, i32 3, !dbg !6443
  store i32 %32, ptr %header_crc3226, align 1, !dbg !6444
  %35 = load ptr, ptr %gpt.addr, align 8, !dbg !6445
  %36 = load ptr, ptr %35, align 8, !dbg !6445
  %my_lba = getelementptr inbounds %struct._gpt_header, ptr %36, i32 0, i32 5, !dbg !6445
  %37 = load i64, ptr %my_lba, align 1, !dbg !6445
  %38 = load i64, ptr %lba.addr, align 8, !dbg !6447
  %cmp27 = icmp ne i64 %37, %38, !dbg !6448
  br i1 %cmp27, label %if.then29, label %if.end31, !dbg !6449

if.then29:                                        ; preds = %if.end25
  store i32 0, ptr %tmp30, align 4, !dbg !6450
  %39 = load i32, ptr %tmp30, align 4, !dbg !6454
  br label %fail, !dbg !6455

if.end31:                                         ; preds = %if.end25
  %40 = load ptr, ptr %state.addr, align 8, !dbg !6456
  %disk32 = getelementptr inbounds %struct.parsed_partitions, ptr %40, i32 0, i32 0, !dbg !6457
  %41 = load ptr, ptr %disk32, align 8, !dbg !6457
  %call33 = call i64 @last_lba(ptr noundef %41) #19, !dbg !6458
  store i64 %call33, ptr %lastlba, align 8, !dbg !6459
  %42 = load ptr, ptr %gpt.addr, align 8, !dbg !6460
  %43 = load ptr, ptr %42, align 8, !dbg !6460
  %first_usable_lba = getelementptr inbounds %struct._gpt_header, ptr %43, i32 0, i32 7, !dbg !6460
  %44 = load i64, ptr %first_usable_lba, align 1, !dbg !6460
  %45 = load i64, ptr %lastlba, align 8, !dbg !6462
  %cmp34 = icmp ugt i64 %44, %45, !dbg !6463
  br i1 %cmp34, label %if.then36, label %if.end38, !dbg !6464

if.then36:                                        ; preds = %if.end31
  store i32 0, ptr %tmp37, align 4, !dbg !6465
  %46 = load i32, ptr %tmp37, align 4, !dbg !6469
  br label %fail, !dbg !6470

if.end38:                                         ; preds = %if.end31
  %47 = load ptr, ptr %gpt.addr, align 8, !dbg !6471
  %48 = load ptr, ptr %47, align 8, !dbg !6471
  %last_usable_lba = getelementptr inbounds %struct._gpt_header, ptr %48, i32 0, i32 8, !dbg !6471
  %49 = load i64, ptr %last_usable_lba, align 1, !dbg !6471
  %50 = load i64, ptr %lastlba, align 8, !dbg !6473
  %cmp39 = icmp ugt i64 %49, %50, !dbg !6474
  br i1 %cmp39, label %if.then41, label %if.end43, !dbg !6475

if.then41:                                        ; preds = %if.end38
  store i32 0, ptr %tmp42, align 4, !dbg !6476
  %51 = load i32, ptr %tmp42, align 4, !dbg !6480
  br label %fail, !dbg !6481

if.end43:                                         ; preds = %if.end38
  %52 = load ptr, ptr %gpt.addr, align 8, !dbg !6482
  %53 = load ptr, ptr %52, align 8, !dbg !6482
  %last_usable_lba44 = getelementptr inbounds %struct._gpt_header, ptr %53, i32 0, i32 8, !dbg !6482
  %54 = load i64, ptr %last_usable_lba44, align 1, !dbg !6482
  %55 = load ptr, ptr %gpt.addr, align 8, !dbg !6484
  %56 = load ptr, ptr %55, align 8, !dbg !6484
  %first_usable_lba45 = getelementptr inbounds %struct._gpt_header, ptr %56, i32 0, i32 7, !dbg !6484
  %57 = load i64, ptr %first_usable_lba45, align 1, !dbg !6484
  %cmp46 = icmp ult i64 %54, %57, !dbg !6485
  br i1 %cmp46, label %if.then48, label %if.end50, !dbg !6486

if.then48:                                        ; preds = %if.end43
  store i32 0, ptr %tmp49, align 4, !dbg !6487
  %58 = load i32, ptr %tmp49, align 4, !dbg !6491
  br label %fail, !dbg !6492

if.end50:                                         ; preds = %if.end43
  %59 = load ptr, ptr %gpt.addr, align 8, !dbg !6493
  %60 = load ptr, ptr %59, align 8, !dbg !6493
  %sizeof_partition_entry = getelementptr inbounds %struct._gpt_header, ptr %60, i32 0, i32 12, !dbg !6493
  %61 = load i32, ptr %sizeof_partition_entry, align 1, !dbg !6493
  %conv51 = zext i32 %61 to i64, !dbg !6493
  %cmp52 = icmp ne i64 %conv51, 128, !dbg !6495
  br i1 %cmp52, label %if.then54, label %if.end56, !dbg !6496

if.then54:                                        ; preds = %if.end50
  store i32 0, ptr %tmp55, align 4, !dbg !6497
  %62 = load i32, ptr %tmp55, align 4, !dbg !6501
  br label %fail, !dbg !6502

if.end56:                                         ; preds = %if.end50
  %63 = load ptr, ptr %gpt.addr, align 8, !dbg !6503
  %64 = load ptr, ptr %63, align 8, !dbg !6503
  %num_partition_entries = getelementptr inbounds %struct._gpt_header, ptr %64, i32 0, i32 11, !dbg !6503
  %65 = load i32, ptr %num_partition_entries, align 1, !dbg !6503
  %conv57 = zext i32 %65 to i64, !dbg !6504
  %66 = load ptr, ptr %gpt.addr, align 8, !dbg !6505
  %67 = load ptr, ptr %66, align 8, !dbg !6505
  %sizeof_partition_entry58 = getelementptr inbounds %struct._gpt_header, ptr %67, i32 0, i32 12, !dbg !6505
  %68 = load i32, ptr %sizeof_partition_entry58, align 1, !dbg !6505
  %conv59 = zext i32 %68 to i64, !dbg !6505
  %mul = mul i64 %conv57, %conv59, !dbg !6506
  store i64 %mul, ptr %pt_size, align 8, !dbg !6507
  %69 = load i64, ptr %pt_size, align 8, !dbg !6508
  %cmp60 = icmp ugt i64 %69, 4194304, !dbg !6510
  br i1 %cmp60, label %if.then62, label %if.end64, !dbg !6511

if.then62:                                        ; preds = %if.end56
  store i32 0, ptr %tmp63, align 4, !dbg !6512
  %70 = load i32, ptr %tmp63, align 4, !dbg !6516
  br label %fail, !dbg !6517

if.end64:                                         ; preds = %if.end56
  %71 = load ptr, ptr %state.addr, align 8, !dbg !6518
  %72 = load ptr, ptr %gpt.addr, align 8, !dbg !6520
  %73 = load ptr, ptr %72, align 8, !dbg !6521
  %call65 = call ptr @alloc_read_gpt_entries(ptr noundef %71, ptr noundef %73) #19, !dbg !6522
  %74 = load ptr, ptr %ptes.addr, align 8, !dbg !6523
  store ptr %call65, ptr %74, align 8, !dbg !6524
  %tobool66 = icmp ne ptr %call65, null, !dbg !6524
  br i1 %tobool66, label %if.end68, label %if.then67, !dbg !6525

if.then67:                                        ; preds = %if.end64
  br label %fail, !dbg !6526

if.end68:                                         ; preds = %if.end64
  %75 = load ptr, ptr %ptes.addr, align 8, !dbg !6527
  %76 = load ptr, ptr %75, align 8, !dbg !6528
  %77 = load i64, ptr %pt_size, align 8, !dbg !6529
  %call69 = call i32 @efi_crc32(ptr noundef %76, i64 noundef %77) #19, !dbg !6530
  store i32 %call69, ptr %crc, align 4, !dbg !6531
  %78 = load i32, ptr %crc, align 4, !dbg !6532
  %79 = load ptr, ptr %gpt.addr, align 8, !dbg !6534
  %80 = load ptr, ptr %79, align 8, !dbg !6534
  %partition_entry_array_crc32 = getelementptr inbounds %struct._gpt_header, ptr %80, i32 0, i32 13, !dbg !6534
  %81 = load i32, ptr %partition_entry_array_crc32, align 1, !dbg !6534
  %cmp70 = icmp ne i32 %78, %81, !dbg !6535
  br i1 %cmp70, label %if.then72, label %if.end74, !dbg !6536

if.then72:                                        ; preds = %if.end68
  store i32 0, ptr %tmp73, align 4, !dbg !6537
  %82 = load i32, ptr %tmp73, align 4, !dbg !6541
  br label %fail_ptes, !dbg !6542

if.end74:                                         ; preds = %if.end68
  store i32 1, ptr %retval, align 4, !dbg !6543
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6543

fail_ptes:                                        ; preds = %if.then72
  call void @llvm.dbg.label(metadata !6360), !dbg !6544
  %83 = load ptr, ptr %ptes.addr, align 8, !dbg !6545
  %84 = load ptr, ptr %83, align 8, !dbg !6546
  call void @kfree(ptr noundef %84) #19, !dbg !6547
  %85 = load ptr, ptr %ptes.addr, align 8, !dbg !6548
  store ptr null, ptr %85, align 8, !dbg !6549
  br label %fail, !dbg !6550

fail:                                             ; preds = %fail_ptes, %if.then67, %if.then62, %if.then54, %if.then48, %if.then41, %if.then36, %if.then29, %if.then23, %if.then14, %if.then8, %if.then4
  call void @llvm.dbg.label(metadata !6361), !dbg !6551
  %86 = load ptr, ptr %gpt.addr, align 8, !dbg !6552
  %87 = load ptr, ptr %86, align 8, !dbg !6553
  call void @kfree(ptr noundef %87) #19, !dbg !6554
  %88 = load ptr, ptr %gpt.addr, align 8, !dbg !6555
  store ptr null, ptr %88, align 8, !dbg !6556
  store i32 0, ptr %retval, align 4, !dbg !6557
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6557

cleanup:                                          ; preds = %fail, %if.end74, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pt_size) #18, !dbg !6558
  call void @llvm.lifetime.end.p0(i64 8, ptr %lastlba) #18, !dbg !6558
  call void @llvm.lifetime.end.p0(i64 4, ptr %origcrc) #18, !dbg !6558
  call void @llvm.lifetime.end.p0(i64 4, ptr %crc) #18, !dbg !6558
  %89 = load i32, ptr %retval, align 4, !dbg !6558
  ret i32 %89, !dbg !6558
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @compare_gpts(ptr noundef %pgpt, ptr noundef %agpt, i64 noundef %lastlba) #1 align 16 !dbg !6559 {
entry:
  %pgpt.addr = alloca ptr, align 8
  %agpt.addr = alloca ptr, align 8
  %lastlba.addr = alloca i64, align 8
  %error_found = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp6 = alloca i32, align 4
  %tmp18 = alloca i32, align 4
  %tmp23 = alloca i32, align 4
  %tmp35 = alloca i32, align 4
  %tmp40 = alloca i32, align 4
  %tmp52 = alloca i32, align 4
  %tmp57 = alloca i32, align 4
  %tmp70 = alloca i32, align 4
  %tmp80 = alloca i32, align 4
  %tmp92 = alloca i32, align 4
  %tmp104 = alloca i32, align 4
  %tmp116 = alloca i32, align 4
  %tmp121 = alloca i32, align 4
  %tmp132 = alloca i32, align 4
  %tmp137 = alloca i32, align 4
  %tmp147 = alloca i32, align 4
  store ptr %pgpt, ptr %pgpt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgpt.addr, metadata !6563, metadata !DIExpression()), !dbg !6567
  store ptr %agpt, ptr %agpt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %agpt.addr, metadata !6564, metadata !DIExpression()), !dbg !6568
  store i64 %lastlba, ptr %lastlba.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lastlba.addr, metadata !6565, metadata !DIExpression()), !dbg !6569
  call void @llvm.lifetime.start.p0(i64 4, ptr %error_found) #18, !dbg !6570
  call void @llvm.dbg.declare(metadata ptr %error_found, metadata !6566, metadata !DIExpression()), !dbg !6571
  store i32 0, ptr %error_found, align 4, !dbg !6571
  %0 = load ptr, ptr %pgpt.addr, align 8, !dbg !6572
  %tobool = icmp ne ptr %0, null, !dbg !6572
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !6574

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %agpt.addr, align 8, !dbg !6575
  %tobool1 = icmp ne ptr %1, null, !dbg !6575
  br i1 %tobool1, label %if.end, label %if.then, !dbg !6576

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6577

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %pgpt.addr, align 8, !dbg !6578
  %my_lba = getelementptr inbounds %struct._gpt_header, ptr %2, i32 0, i32 5, !dbg !6578
  %3 = load i64, ptr %my_lba, align 1, !dbg !6578
  %4 = load ptr, ptr %agpt.addr, align 8, !dbg !6580
  %alternate_lba = getelementptr inbounds %struct._gpt_header, ptr %4, i32 0, i32 6, !dbg !6580
  %5 = load i64, ptr %alternate_lba, align 1, !dbg !6580
  %cmp = icmp ne i64 %3, %5, !dbg !6581
  br i1 %cmp, label %if.then2, label %if.end10, !dbg !6582

if.then2:                                         ; preds = %if.end
  br label %do.body, !dbg !6583

do.body:                                          ; preds = %if.then2
  br label %do.cond, !dbg !6586

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6586

do.end:                                           ; preds = %do.cond
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.4) #21, !dbg !6583
  store i32 %call, ptr %tmp, align 4, !dbg !6586
  %6 = load i32, ptr %tmp, align 4, !dbg !6583
  br label %do.body3, !dbg !6588

do.body3:                                         ; preds = %do.end
  br label %do.cond4, !dbg !6590

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !6590

do.end5:                                          ; preds = %do.cond4
  %7 = load ptr, ptr %pgpt.addr, align 8, !dbg !6588
  %my_lba7 = getelementptr inbounds %struct._gpt_header, ptr %7, i32 0, i32 5, !dbg !6588
  %8 = load i64, ptr %my_lba7, align 1, !dbg !6588
  %9 = load ptr, ptr %agpt.addr, align 8, !dbg !6588
  %alternate_lba8 = getelementptr inbounds %struct._gpt_header, ptr %9, i32 0, i32 6, !dbg !6588
  %10 = load i64, ptr %alternate_lba8, align 1, !dbg !6588
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, i64 noundef %8, i64 noundef %10) #21, !dbg !6588
  store i32 %call9, ptr %tmp6, align 4, !dbg !6590
  %11 = load i32, ptr %tmp6, align 4, !dbg !6588
  %12 = load i32, ptr %error_found, align 4, !dbg !6592
  %inc = add i32 %12, 1, !dbg !6592
  store i32 %inc, ptr %error_found, align 4, !dbg !6592
  br label %if.end10, !dbg !6593

if.end10:                                         ; preds = %do.end5, %if.end
  %13 = load ptr, ptr %pgpt.addr, align 8, !dbg !6594
  %alternate_lba11 = getelementptr inbounds %struct._gpt_header, ptr %13, i32 0, i32 6, !dbg !6594
  %14 = load i64, ptr %alternate_lba11, align 1, !dbg !6594
  %15 = load ptr, ptr %agpt.addr, align 8, !dbg !6596
  %my_lba12 = getelementptr inbounds %struct._gpt_header, ptr %15, i32 0, i32 5, !dbg !6596
  %16 = load i64, ptr %my_lba12, align 1, !dbg !6596
  %cmp13 = icmp ne i64 %14, %16, !dbg !6597
  br i1 %cmp13, label %if.then14, label %if.end28, !dbg !6598

if.then14:                                        ; preds = %if.end10
  br label %do.body15, !dbg !6599

do.body15:                                        ; preds = %if.then14
  br label %do.cond16, !dbg !6602

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !6602

do.end17:                                         ; preds = %do.cond16
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6) #21, !dbg !6599
  store i32 %call19, ptr %tmp18, align 4, !dbg !6602
  %17 = load i32, ptr %tmp18, align 4, !dbg !6599
  br label %do.body20, !dbg !6604

do.body20:                                        ; preds = %do.end17
  br label %do.cond21, !dbg !6606

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !6606

do.end22:                                         ; preds = %do.cond21
  %18 = load ptr, ptr %pgpt.addr, align 8, !dbg !6604
  %alternate_lba24 = getelementptr inbounds %struct._gpt_header, ptr %18, i32 0, i32 6, !dbg !6604
  %19 = load i64, ptr %alternate_lba24, align 1, !dbg !6604
  %20 = load ptr, ptr %agpt.addr, align 8, !dbg !6604
  %my_lba25 = getelementptr inbounds %struct._gpt_header, ptr %20, i32 0, i32 5, !dbg !6604
  %21 = load i64, ptr %my_lba25, align 1, !dbg !6604
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, i64 noundef %19, i64 noundef %21) #21, !dbg !6604
  store i32 %call26, ptr %tmp23, align 4, !dbg !6606
  %22 = load i32, ptr %tmp23, align 4, !dbg !6604
  %23 = load i32, ptr %error_found, align 4, !dbg !6608
  %inc27 = add i32 %23, 1, !dbg !6608
  store i32 %inc27, ptr %error_found, align 4, !dbg !6608
  br label %if.end28, !dbg !6609

if.end28:                                         ; preds = %do.end22, %if.end10
  %24 = load ptr, ptr %pgpt.addr, align 8, !dbg !6610
  %first_usable_lba = getelementptr inbounds %struct._gpt_header, ptr %24, i32 0, i32 7, !dbg !6610
  %25 = load i64, ptr %first_usable_lba, align 1, !dbg !6610
  %26 = load ptr, ptr %agpt.addr, align 8, !dbg !6612
  %first_usable_lba29 = getelementptr inbounds %struct._gpt_header, ptr %26, i32 0, i32 7, !dbg !6612
  %27 = load i64, ptr %first_usable_lba29, align 1, !dbg !6612
  %cmp30 = icmp ne i64 %25, %27, !dbg !6613
  br i1 %cmp30, label %if.then31, label %if.end45, !dbg !6614

if.then31:                                        ; preds = %if.end28
  br label %do.body32, !dbg !6615

do.body32:                                        ; preds = %if.then31
  br label %do.cond33, !dbg !6618

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !6618

do.end34:                                         ; preds = %do.cond33
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7) #21, !dbg !6615
  store i32 %call36, ptr %tmp35, align 4, !dbg !6618
  %28 = load i32, ptr %tmp35, align 4, !dbg !6615
  br label %do.body37, !dbg !6620

do.body37:                                        ; preds = %do.end34
  br label %do.cond38, !dbg !6622

do.cond38:                                        ; preds = %do.body37
  br label %do.end39, !dbg !6622

do.end39:                                         ; preds = %do.cond38
  %29 = load ptr, ptr %pgpt.addr, align 8, !dbg !6620
  %first_usable_lba41 = getelementptr inbounds %struct._gpt_header, ptr %29, i32 0, i32 7, !dbg !6620
  %30 = load i64, ptr %first_usable_lba41, align 1, !dbg !6620
  %31 = load ptr, ptr %agpt.addr, align 8, !dbg !6620
  %first_usable_lba42 = getelementptr inbounds %struct._gpt_header, ptr %31, i32 0, i32 7, !dbg !6620
  %32 = load i64, ptr %first_usable_lba42, align 1, !dbg !6620
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, i64 noundef %30, i64 noundef %32) #21, !dbg !6620
  store i32 %call43, ptr %tmp40, align 4, !dbg !6622
  %33 = load i32, ptr %tmp40, align 4, !dbg !6620
  %34 = load i32, ptr %error_found, align 4, !dbg !6624
  %inc44 = add i32 %34, 1, !dbg !6624
  store i32 %inc44, ptr %error_found, align 4, !dbg !6624
  br label %if.end45, !dbg !6625

if.end45:                                         ; preds = %do.end39, %if.end28
  %35 = load ptr, ptr %pgpt.addr, align 8, !dbg !6626
  %last_usable_lba = getelementptr inbounds %struct._gpt_header, ptr %35, i32 0, i32 8, !dbg !6626
  %36 = load i64, ptr %last_usable_lba, align 1, !dbg !6626
  %37 = load ptr, ptr %agpt.addr, align 8, !dbg !6628
  %last_usable_lba46 = getelementptr inbounds %struct._gpt_header, ptr %37, i32 0, i32 8, !dbg !6628
  %38 = load i64, ptr %last_usable_lba46, align 1, !dbg !6628
  %cmp47 = icmp ne i64 %36, %38, !dbg !6629
  br i1 %cmp47, label %if.then48, label %if.end62, !dbg !6630

if.then48:                                        ; preds = %if.end45
  br label %do.body49, !dbg !6631

do.body49:                                        ; preds = %if.then48
  br label %do.cond50, !dbg !6634

do.cond50:                                        ; preds = %do.body49
  br label %do.end51, !dbg !6634

do.end51:                                         ; preds = %do.cond50
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef @.str.8) #21, !dbg !6631
  store i32 %call53, ptr %tmp52, align 4, !dbg !6634
  %39 = load i32, ptr %tmp52, align 4, !dbg !6631
  br label %do.body54, !dbg !6636

do.body54:                                        ; preds = %do.end51
  br label %do.cond55, !dbg !6638

do.cond55:                                        ; preds = %do.body54
  br label %do.end56, !dbg !6638

do.end56:                                         ; preds = %do.cond55
  %40 = load ptr, ptr %pgpt.addr, align 8, !dbg !6636
  %last_usable_lba58 = getelementptr inbounds %struct._gpt_header, ptr %40, i32 0, i32 8, !dbg !6636
  %41 = load i64, ptr %last_usable_lba58, align 1, !dbg !6636
  %42 = load ptr, ptr %agpt.addr, align 8, !dbg !6636
  %last_usable_lba59 = getelementptr inbounds %struct._gpt_header, ptr %42, i32 0, i32 8, !dbg !6636
  %43 = load i64, ptr %last_usable_lba59, align 1, !dbg !6636
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, i64 noundef %41, i64 noundef %43) #21, !dbg !6636
  store i32 %call60, ptr %tmp57, align 4, !dbg !6638
  %44 = load i32, ptr %tmp57, align 4, !dbg !6636
  %45 = load i32, ptr %error_found, align 4, !dbg !6640
  %inc61 = add i32 %45, 1, !dbg !6640
  store i32 %inc61, ptr %error_found, align 4, !dbg !6640
  br label %if.end62, !dbg !6641

if.end62:                                         ; preds = %do.end56, %if.end45
  %46 = load ptr, ptr %pgpt.addr, align 8, !dbg !6642
  %disk_guid = getelementptr inbounds %struct._gpt_header, ptr %46, i32 0, i32 9, !dbg !6644
  %47 = load ptr, ptr %agpt.addr, align 8, !dbg !6645
  %disk_guid63 = getelementptr inbounds %struct._gpt_header, ptr %47, i32 0, i32 9, !dbg !6646
  %48 = getelementptr inbounds { i64, i64 }, ptr %disk_guid, i32 0, i32 0, !dbg !6647
  %49 = load i64, ptr %48, align 1, !dbg !6647
  %50 = getelementptr inbounds { i64, i64 }, ptr %disk_guid, i32 0, i32 1, !dbg !6647
  %51 = load i64, ptr %50, align 1, !dbg !6647
  %52 = getelementptr inbounds { i64, i64 }, ptr %disk_guid63, i32 0, i32 0, !dbg !6647
  %53 = load i64, ptr %52, align 1, !dbg !6647
  %54 = getelementptr inbounds { i64, i64 }, ptr %disk_guid63, i32 0, i32 1, !dbg !6647
  %55 = load i64, ptr %54, align 1, !dbg !6647
  %call64 = call i32 @efi_guidcmp(i64 %49, i64 %51, i64 %53, i64 %55) #19, !dbg !6647
  %tobool65 = icmp ne i32 %call64, 0, !dbg !6647
  br i1 %tobool65, label %if.then66, label %if.end73, !dbg !6648

if.then66:                                        ; preds = %if.end62
  br label %do.body67, !dbg !6649

do.body67:                                        ; preds = %if.then66
  br label %do.cond68, !dbg !6652

do.cond68:                                        ; preds = %do.body67
  br label %do.end69, !dbg !6652

do.end69:                                         ; preds = %do.cond68
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef @.str.9) #21, !dbg !6649
  store i32 %call71, ptr %tmp70, align 4, !dbg !6652
  %56 = load i32, ptr %tmp70, align 4, !dbg !6649
  %57 = load i32, ptr %error_found, align 4, !dbg !6654
  %inc72 = add i32 %57, 1, !dbg !6654
  store i32 %inc72, ptr %error_found, align 4, !dbg !6654
  br label %if.end73, !dbg !6655

if.end73:                                         ; preds = %do.end69, %if.end62
  %58 = load ptr, ptr %pgpt.addr, align 8, !dbg !6656
  %num_partition_entries = getelementptr inbounds %struct._gpt_header, ptr %58, i32 0, i32 11, !dbg !6656
  %59 = load i32, ptr %num_partition_entries, align 1, !dbg !6656
  %60 = load ptr, ptr %agpt.addr, align 8, !dbg !6658
  %num_partition_entries74 = getelementptr inbounds %struct._gpt_header, ptr %60, i32 0, i32 11, !dbg !6658
  %61 = load i32, ptr %num_partition_entries74, align 1, !dbg !6658
  %cmp75 = icmp ne i32 %59, %61, !dbg !6659
  br i1 %cmp75, label %if.then76, label %if.end85, !dbg !6660

if.then76:                                        ; preds = %if.end73
  br label %do.body77, !dbg !6661

do.body77:                                        ; preds = %if.then76
  br label %do.cond78, !dbg !6664

do.cond78:                                        ; preds = %do.body77
  br label %do.end79, !dbg !6664

do.end79:                                         ; preds = %do.cond78
  %62 = load ptr, ptr %pgpt.addr, align 8, !dbg !6661
  %num_partition_entries81 = getelementptr inbounds %struct._gpt_header, ptr %62, i32 0, i32 11, !dbg !6661
  %63 = load i32, ptr %num_partition_entries81, align 1, !dbg !6661
  %64 = load ptr, ptr %agpt.addr, align 8, !dbg !6661
  %num_partition_entries82 = getelementptr inbounds %struct._gpt_header, ptr %64, i32 0, i32 11, !dbg !6661
  %65 = load i32, ptr %num_partition_entries82, align 1, !dbg !6661
  %call83 = call i32 (ptr, ...) @_printk(ptr noundef @.str.10, i32 noundef %63, i32 noundef %65) #21, !dbg !6661
  store i32 %call83, ptr %tmp80, align 4, !dbg !6664
  %66 = load i32, ptr %tmp80, align 4, !dbg !6661
  %67 = load i32, ptr %error_found, align 4, !dbg !6666
  %inc84 = add i32 %67, 1, !dbg !6666
  store i32 %inc84, ptr %error_found, align 4, !dbg !6666
  br label %if.end85, !dbg !6667

if.end85:                                         ; preds = %do.end79, %if.end73
  %68 = load ptr, ptr %pgpt.addr, align 8, !dbg !6668
  %sizeof_partition_entry = getelementptr inbounds %struct._gpt_header, ptr %68, i32 0, i32 12, !dbg !6668
  %69 = load i32, ptr %sizeof_partition_entry, align 1, !dbg !6668
  %70 = load ptr, ptr %agpt.addr, align 8, !dbg !6670
  %sizeof_partition_entry86 = getelementptr inbounds %struct._gpt_header, ptr %70, i32 0, i32 12, !dbg !6670
  %71 = load i32, ptr %sizeof_partition_entry86, align 1, !dbg !6670
  %cmp87 = icmp ne i32 %69, %71, !dbg !6671
  br i1 %cmp87, label %if.then88, label %if.end97, !dbg !6672

if.then88:                                        ; preds = %if.end85
  br label %do.body89, !dbg !6673

do.body89:                                        ; preds = %if.then88
  br label %do.cond90, !dbg !6676

do.cond90:                                        ; preds = %do.body89
  br label %do.end91, !dbg !6676

do.end91:                                         ; preds = %do.cond90
  %72 = load ptr, ptr %pgpt.addr, align 8, !dbg !6673
  %sizeof_partition_entry93 = getelementptr inbounds %struct._gpt_header, ptr %72, i32 0, i32 12, !dbg !6673
  %73 = load i32, ptr %sizeof_partition_entry93, align 1, !dbg !6673
  %74 = load ptr, ptr %agpt.addr, align 8, !dbg !6673
  %sizeof_partition_entry94 = getelementptr inbounds %struct._gpt_header, ptr %74, i32 0, i32 12, !dbg !6673
  %75 = load i32, ptr %sizeof_partition_entry94, align 1, !dbg !6673
  %call95 = call i32 (ptr, ...) @_printk(ptr noundef @.str.11, i32 noundef %73, i32 noundef %75) #21, !dbg !6673
  store i32 %call95, ptr %tmp92, align 4, !dbg !6676
  %76 = load i32, ptr %tmp92, align 4, !dbg !6673
  %77 = load i32, ptr %error_found, align 4, !dbg !6678
  %inc96 = add i32 %77, 1, !dbg !6678
  store i32 %inc96, ptr %error_found, align 4, !dbg !6678
  br label %if.end97, !dbg !6679

if.end97:                                         ; preds = %do.end91, %if.end85
  %78 = load ptr, ptr %pgpt.addr, align 8, !dbg !6680
  %partition_entry_array_crc32 = getelementptr inbounds %struct._gpt_header, ptr %78, i32 0, i32 13, !dbg !6680
  %79 = load i32, ptr %partition_entry_array_crc32, align 1, !dbg !6680
  %80 = load ptr, ptr %agpt.addr, align 8, !dbg !6682
  %partition_entry_array_crc3298 = getelementptr inbounds %struct._gpt_header, ptr %80, i32 0, i32 13, !dbg !6682
  %81 = load i32, ptr %partition_entry_array_crc3298, align 1, !dbg !6682
  %cmp99 = icmp ne i32 %79, %81, !dbg !6683
  br i1 %cmp99, label %if.then100, label %if.end109, !dbg !6684

if.then100:                                       ; preds = %if.end97
  br label %do.body101, !dbg !6685

do.body101:                                       ; preds = %if.then100
  br label %do.cond102, !dbg !6688

do.cond102:                                       ; preds = %do.body101
  br label %do.end103, !dbg !6688

do.end103:                                        ; preds = %do.cond102
  %82 = load ptr, ptr %pgpt.addr, align 8, !dbg !6685
  %partition_entry_array_crc32105 = getelementptr inbounds %struct._gpt_header, ptr %82, i32 0, i32 13, !dbg !6685
  %83 = load i32, ptr %partition_entry_array_crc32105, align 1, !dbg !6685
  %84 = load ptr, ptr %agpt.addr, align 8, !dbg !6685
  %partition_entry_array_crc32106 = getelementptr inbounds %struct._gpt_header, ptr %84, i32 0, i32 13, !dbg !6685
  %85 = load i32, ptr %partition_entry_array_crc32106, align 1, !dbg !6685
  %call107 = call i32 (ptr, ...) @_printk(ptr noundef @.str.12, i32 noundef %83, i32 noundef %85) #21, !dbg !6685
  store i32 %call107, ptr %tmp104, align 4, !dbg !6688
  %86 = load i32, ptr %tmp104, align 4, !dbg !6685
  %87 = load i32, ptr %error_found, align 4, !dbg !6690
  %inc108 = add i32 %87, 1, !dbg !6690
  store i32 %inc108, ptr %error_found, align 4, !dbg !6690
  br label %if.end109, !dbg !6691

if.end109:                                        ; preds = %do.end103, %if.end97
  %88 = load ptr, ptr %pgpt.addr, align 8, !dbg !6692
  %alternate_lba110 = getelementptr inbounds %struct._gpt_header, ptr %88, i32 0, i32 6, !dbg !6692
  %89 = load i64, ptr %alternate_lba110, align 1, !dbg !6692
  %90 = load i64, ptr %lastlba.addr, align 8, !dbg !6694
  %cmp111 = icmp ne i64 %89, %90, !dbg !6695
  br i1 %cmp111, label %if.then112, label %if.end125, !dbg !6696

if.then112:                                       ; preds = %if.end109
  br label %do.body113, !dbg !6697

do.body113:                                       ; preds = %if.then112
  br label %do.cond114, !dbg !6700

do.cond114:                                       ; preds = %do.body113
  br label %do.end115, !dbg !6700

do.end115:                                        ; preds = %do.cond114
  %call117 = call i32 (ptr, ...) @_printk(ptr noundef @.str.13) #21, !dbg !6697
  store i32 %call117, ptr %tmp116, align 4, !dbg !6700
  %91 = load i32, ptr %tmp116, align 4, !dbg !6697
  br label %do.body118, !dbg !6702

do.body118:                                       ; preds = %do.end115
  br label %do.cond119, !dbg !6704

do.cond119:                                       ; preds = %do.body118
  br label %do.end120, !dbg !6704

do.end120:                                        ; preds = %do.cond119
  %92 = load ptr, ptr %pgpt.addr, align 8, !dbg !6702
  %alternate_lba122 = getelementptr inbounds %struct._gpt_header, ptr %92, i32 0, i32 6, !dbg !6702
  %93 = load i64, ptr %alternate_lba122, align 1, !dbg !6702
  %94 = load i64, ptr %lastlba.addr, align 8, !dbg !6702
  %call123 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, i64 noundef %93, i64 noundef %94) #21, !dbg !6702
  store i32 %call123, ptr %tmp121, align 4, !dbg !6704
  %95 = load i32, ptr %tmp121, align 4, !dbg !6702
  %96 = load i32, ptr %error_found, align 4, !dbg !6706
  %inc124 = add i32 %96, 1, !dbg !6706
  store i32 %inc124, ptr %error_found, align 4, !dbg !6706
  br label %if.end125, !dbg !6707

if.end125:                                        ; preds = %do.end120, %if.end109
  %97 = load ptr, ptr %agpt.addr, align 8, !dbg !6708
  %my_lba126 = getelementptr inbounds %struct._gpt_header, ptr %97, i32 0, i32 5, !dbg !6708
  %98 = load i64, ptr %my_lba126, align 1, !dbg !6708
  %99 = load i64, ptr %lastlba.addr, align 8, !dbg !6710
  %cmp127 = icmp ne i64 %98, %99, !dbg !6711
  br i1 %cmp127, label %if.then128, label %if.end141, !dbg !6712

if.then128:                                       ; preds = %if.end125
  br label %do.body129, !dbg !6713

do.body129:                                       ; preds = %if.then128
  br label %do.cond130, !dbg !6716

do.cond130:                                       ; preds = %do.body129
  br label %do.end131, !dbg !6716

do.end131:                                        ; preds = %do.cond130
  %call133 = call i32 (ptr, ...) @_printk(ptr noundef @.str.14) #21, !dbg !6713
  store i32 %call133, ptr %tmp132, align 4, !dbg !6716
  %100 = load i32, ptr %tmp132, align 4, !dbg !6713
  br label %do.body134, !dbg !6718

do.body134:                                       ; preds = %do.end131
  br label %do.cond135, !dbg !6720

do.cond135:                                       ; preds = %do.body134
  br label %do.end136, !dbg !6720

do.end136:                                        ; preds = %do.cond135
  %101 = load ptr, ptr %agpt.addr, align 8, !dbg !6718
  %my_lba138 = getelementptr inbounds %struct._gpt_header, ptr %101, i32 0, i32 5, !dbg !6718
  %102 = load i64, ptr %my_lba138, align 1, !dbg !6718
  %103 = load i64, ptr %lastlba.addr, align 8, !dbg !6718
  %call139 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, i64 noundef %102, i64 noundef %103) #21, !dbg !6718
  store i32 %call139, ptr %tmp137, align 4, !dbg !6720
  %104 = load i32, ptr %tmp137, align 4, !dbg !6718
  %105 = load i32, ptr %error_found, align 4, !dbg !6722
  %inc140 = add i32 %105, 1, !dbg !6722
  store i32 %inc140, ptr %error_found, align 4, !dbg !6722
  br label %if.end141, !dbg !6723

if.end141:                                        ; preds = %do.end136, %if.end125
  %106 = load i32, ptr %error_found, align 4, !dbg !6724
  %tobool142 = icmp ne i32 %106, 0, !dbg !6724
  br i1 %tobool142, label %if.then143, label %if.end149, !dbg !6726

if.then143:                                       ; preds = %if.end141
  br label %do.body144, !dbg !6727

do.body144:                                       ; preds = %if.then143
  br label %do.cond145, !dbg !6729

do.cond145:                                       ; preds = %do.body144
  br label %do.end146, !dbg !6729

do.end146:                                        ; preds = %do.cond145
  %call148 = call i32 (ptr, ...) @_printk(ptr noundef @.str.15) #21, !dbg !6727
  store i32 %call148, ptr %tmp147, align 4, !dbg !6729
  %107 = load i32, ptr %tmp147, align 4, !dbg !6727
  br label %if.end149, !dbg !6731

if.end149:                                        ; preds = %do.end146, %if.end141
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6732

cleanup:                                          ; preds = %if.end149, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error_found) #18, !dbg !6733
  ret void, !dbg !6733
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6734 dso_local i32 @_printk(ptr noundef, ...) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @bdev_nr_sectors(ptr noundef %bdev) #4 align 16 !dbg !6738 {
entry:
  %bdev.addr = alloca ptr, align 8
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !6742, metadata !DIExpression()), !dbg !6743
  %0 = load ptr, ptr %bdev.addr, align 8, !dbg !6744
  %bd_nr_sectors = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 1, !dbg !6745
  %1 = load i64, ptr %bd_nr_sectors, align 8, !dbg !6745
  ret i64 %1, !dbg !6746
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !6747 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6749, metadata !DIExpression()), !dbg !6754
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6750, metadata !DIExpression()), !dbg !6755
  %0 = load i64, ptr %size.addr, align 8, !dbg !6756
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6757
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6758

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6759
  %tobool = icmp ne i64 %2, 0, !dbg !6759
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6760

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #18, !dbg !6761
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6751, metadata !DIExpression()), !dbg !6762
  %3 = load i64, ptr %size.addr, align 8, !dbg !6763
  %cmp = icmp ugt i64 %3, 8192, !dbg !6765
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6766

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6767
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6768
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #20, !dbg !6769
  store ptr %call, ptr %retval, align 8, !dbg !6770
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6770

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6771
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #19, !dbg !6771
  store i32 %call2, ptr %index, align 4, !dbg !6772
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6773
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6774
  %9 = ptrtoint ptr %8 to i64, !dbg !6774
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #19, !dbg !6775
  %idxprom = zext i32 %call3 to i64, !dbg !6776
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6776
  %10 = load i32, ptr %index, align 4, !dbg !6777
  %idxprom4 = zext i32 %10 to i64, !dbg !6776
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6776
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6776
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6778
  %13 = load i64, ptr %size.addr, align 8, !dbg !6779
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #22, !dbg !6780
  store ptr %call6, ptr %retval, align 8, !dbg !6781
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6781

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #18, !dbg !6782
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6783
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6784
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #20, !dbg !6785
  store ptr %call8, ptr %retval, align 8, !dbg !6786
  br label %return, !dbg !6786

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6787
  ret ptr %16, !dbg !6787
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6788 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #11 align 16 !dbg !6789 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6793, metadata !DIExpression()), !dbg !6795
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6794, metadata !DIExpression()), !dbg !6796
  %0 = load i64, ptr %size.addr, align 8, !dbg !6797
  %tobool = icmp ne i64 %0, 0, !dbg !6797
  br i1 %tobool, label %if.end, label %if.then, !dbg !6799

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6800
  br label %return, !dbg !6800

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6801
  %cmp = icmp ule i64 %1, 8, !dbg !6803
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6804

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6805
  br label %return, !dbg !6805

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6806
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6808
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6809

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6810
  %cmp4 = icmp ule i64 %3, 96, !dbg !6811
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6812

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6813
  br label %return, !dbg !6813

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6814
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6816
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6817

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6818
  %cmp9 = icmp ule i64 %5, 192, !dbg !6819
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6820

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6821
  br label %return, !dbg !6821

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6822
  %cmp12 = icmp ule i64 %6, 8, !dbg !6824
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6825

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6826
  br label %return, !dbg !6826

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6827
  %cmp15 = icmp ule i64 %7, 16, !dbg !6829
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6830

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6831
  br label %return, !dbg !6831

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6832
  %cmp18 = icmp ule i64 %8, 32, !dbg !6834
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6835

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6836
  br label %return, !dbg !6836

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6837
  %cmp21 = icmp ule i64 %9, 64, !dbg !6839
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6840

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6841
  br label %return, !dbg !6841

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6842
  %cmp24 = icmp ule i64 %10, 128, !dbg !6844
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6845

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6846
  br label %return, !dbg !6846

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6847
  %cmp27 = icmp ule i64 %11, 256, !dbg !6849
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6850

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6851
  br label %return, !dbg !6851

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6852
  %cmp30 = icmp ule i64 %12, 512, !dbg !6854
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6855

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6856
  br label %return, !dbg !6856

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6857
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6859
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6860

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6861
  br label %return, !dbg !6861

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6862
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6864
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6865

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6866
  br label %return, !dbg !6866

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6867
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6869
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6870

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6871
  br label %return, !dbg !6871

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6872
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6874
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6875

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6876
  br label %return, !dbg !6876

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6877
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6879
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6880

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6881
  br label %return, !dbg !6881

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6882
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6884
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6885

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6886
  br label %return, !dbg !6886

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6887
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6889
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6890

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6891
  br label %return, !dbg !6891

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6892
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6894
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6895

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6896
  br label %return, !dbg !6896

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6897
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6899
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6900

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6901
  br label %return, !dbg !6901

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6902
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6904
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6905

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6906
  br label %return, !dbg !6906

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6907
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6909
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6910

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6911
  br label %return, !dbg !6911

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6912
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6914
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6915

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6916
  br label %return, !dbg !6916

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6917, !range !6919, !noundef !1200
  %tobool69 = trunc i8 %25 to i1, !dbg !6917
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6920

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6921

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #23, !dbg !6922, !srcloc !6925
  unreachable, !dbg !6922

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6926

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6927

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6928

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6930

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6928

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 480, i32 0, i64 12) #18, !dbg !6932, !srcloc !6934
  br label %do.end75, !dbg !6932

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6928

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6935
  br label %return, !dbg !6935

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6936
  ret i32 %26, !dbg !6936
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6937 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #11 align 16 !dbg !6940 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6944, metadata !DIExpression()), !dbg !6946
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6945, metadata !DIExpression()), !dbg !6947
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6948
  %and = and i32 %0, 17, !dbg !6948
  %cmp = icmp eq i32 %and, 0, !dbg !6948
  %lnot = xor i1 %cmp, true, !dbg !6948
  %lnot1 = xor i1 %lnot, true, !dbg !6948
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6948
  %conv = sext i32 %lnot.ext to i64, !dbg !6948
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6948
  %tobool = icmp ne i64 %expval, 0, !dbg !6948
  br i1 %tobool, label %if.then, label %if.end, !dbg !6950

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6951
  br label %return, !dbg !6951

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6952
  %and2 = and i32 %1, 1, !dbg !6954
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6954
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6955

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6956
  br label %return, !dbg !6956

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6957
  br label %return, !dbg !6957

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6959
  ret i32 %2, !dbg !6959
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6960 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6961 dso_local void @__compiletime_assert_117() #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #13

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6962 dso_local ptr @read_part_sector(ptr noundef, i64 noundef, ptr noundef) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_dev_sector(ptr %p.coerce) #4 align 16 !dbg !6966 {
entry:
  %p = alloca %struct.Sector, align 8
  %coerce.dive = getelementptr inbounds %struct.Sector, ptr %p, i32 0, i32 0
  store ptr %p.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6970, metadata !DIExpression()), !dbg !6971
  %v = getelementptr inbounds %struct.Sector, ptr %p, i32 0, i32 0, !dbg !6972
  %0 = load ptr, ptr %v, align 8, !dbg !6972
  call void @folio_put(ptr noundef %0) #19, !dbg !6973
  ret void, !dbg !6974
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @folio_put(ptr noundef %folio) #4 align 16 !dbg !6975 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6977, metadata !DIExpression()), !dbg !6978
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6979
  %call = call i32 @folio_put_testzero(ptr noundef %0) #19, !dbg !6981
  %tobool = icmp ne i32 %call, 0, !dbg !6981
  br i1 %tobool, label %if.then, label %if.end, !dbg !6982

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %folio.addr, align 8, !dbg !6983
  call void @__folio_put(ptr noundef %1) #19, !dbg !6984
  br label %if.end, !dbg !6984

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6985
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @folio_put_testzero(ptr noundef %folio) #4 align 16 !dbg !6986 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6988, metadata !DIExpression()), !dbg !6989
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6990
  %1 = getelementptr inbounds %struct.folio, ptr %0, i32 0, i32 0, !dbg !6991
  %call = call i32 @put_page_testzero(ptr noundef %1) #19, !dbg !6992
  ret i32 %call, !dbg !6993
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6994 dso_local void @__folio_put(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @put_page_testzero(ptr noundef %page) #4 align 16 !dbg !6995 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6999, metadata !DIExpression()), !dbg !7000
  %0 = load ptr, ptr %page.addr, align 8, !dbg !7001
  %call = call i32 @page_ref_dec_and_test(ptr noundef %0) #19, !dbg !7002
  ret i32 %call, !dbg !7003
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @page_ref_dec_and_test(ptr noundef %page) #4 align 16 !dbg !7004 {
entry:
  %page.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !7007, metadata !DIExpression()), !dbg !7009
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !7010
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7008, metadata !DIExpression()), !dbg !7011
  %0 = load ptr, ptr %page.addr, align 8, !dbg !7012
  %_refcount = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 3, !dbg !7013
  %call = call zeroext i1 @atomic_dec_and_test(ptr noundef %_refcount) #19, !dbg !7014
  %conv = zext i1 %call to i32, !dbg !7014
  store i32 %conv, ptr %ret, align 4, !dbg !7011
  %1 = load i32, ptr %ret, align 4, !dbg !7015
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !7016
  ret i32 %1, !dbg !7017
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_dec_and_test(ptr noundef %v) #11 align 16 !dbg !7018 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7024, metadata !DIExpression()), !dbg !7025
  br label %do.body, !dbg !7026

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7027

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7029
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #19, !dbg !7030
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7031
  %call = call zeroext i1 @raw_atomic_dec_and_test(ptr noundef %1) #19, !dbg !7032
  ret i1 %call, !dbg !7033
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #11 align 16 !dbg !7034 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7042, metadata !DIExpression()), !dbg !7044
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7043, metadata !DIExpression()), !dbg !7045
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7046
  %1 = load i64, ptr %size.addr, align 8, !dbg !7047
  %conv = trunc i64 %1 to i32, !dbg !7047
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #19, !dbg !7048
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7049
  %3 = load i64, ptr %size.addr, align 8, !dbg !7049
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #19, !dbg !7049
  ret void, !dbg !7050
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_dec_and_test(ptr noundef %v) #11 align 16 !dbg !7051 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7054, metadata !DIExpression()), !dbg !7055
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7056
  %call = call zeroext i1 @arch_atomic_dec_and_test(ptr noundef %0) #19, !dbg !7057
  ret i1 %call, !dbg !7058
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !7059 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7064, metadata !DIExpression()), !dbg !7066
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7065, metadata !DIExpression()), !dbg !7067
  ret i1 true, !dbg !7068
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !7069 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7074, metadata !DIExpression()), !dbg !7077
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7075, metadata !DIExpression()), !dbg !7078
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !7076, metadata !DIExpression()), !dbg !7079
  ret void, !dbg !7080
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_dec_and_test(ptr noundef %v) #11 align 16 !dbg !7081 {
entry:
  %v.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7084, metadata !DIExpression()), !dbg !7087
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #18, !dbg !7088
  call void @llvm.dbg.declare(metadata ptr %c, metadata !7085, metadata !DIExpression()), !dbg !7088
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7088
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !7088
  %1 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decl $0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #18, !dbg !7088, !srcloc !7089
  %2 = icmp ult i8 %1, 2, !dbg !7088
  call void @llvm.assume(i1 %2), !dbg !7088
  store i8 %1, ptr %c, align 1, !dbg !7088
  %3 = load i8, ptr %c, align 1, !dbg !7088, !range !6919, !noundef !1200
  %tobool = trunc i8 %3 to i1, !dbg !7088
  %frombool = zext i1 %tobool to i8, !dbg !7088
  store i8 %frombool, ptr %tmp, align 1, !dbg !7088
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #18, !dbg !7090
  %4 = load i8, ptr %tmp, align 1, !dbg !7088, !range !6919, !noundef !1200
  %tobool1 = trunc i8 %4 to i1, !dbg !7088
  ret i1 %tobool1, !dbg !7091
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pmbr_part_valid(ptr noundef %part) #4 align 16 !dbg !7092 {
entry:
  %retval = alloca i32, align 4
  %part.addr = alloca ptr, align 8
  store ptr %part, ptr %part.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %part.addr, metadata !7097, metadata !DIExpression()), !dbg !7099
  %0 = load ptr, ptr %part.addr, align 8, !dbg !7100
  %os_type = getelementptr inbounds %struct._gpt_mbr_record, ptr %0, i32 0, i32 4, !dbg !7102
  %1 = load i8, ptr %os_type, align 1, !dbg !7102
  %conv = zext i8 %1 to i32, !dbg !7100
  %cmp = icmp ne i32 %conv, 238, !dbg !7103
  br i1 %cmp, label %if.then, label %if.end, !dbg !7104

if.then:                                          ; preds = %entry
  br label %invalid, !dbg !7105

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %part.addr, align 8, !dbg !7106
  %starting_lba = getelementptr inbounds %struct._gpt_mbr_record, ptr %2, i32 0, i32 8, !dbg !7106
  %3 = load i32, ptr %starting_lba, align 1, !dbg !7106
  %cmp2 = icmp ne i32 %3, 1, !dbg !7108
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !7109

if.then4:                                         ; preds = %if.end
  br label %invalid, !dbg !7110

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !7111
  br label %return, !dbg !7111

invalid:                                          ; preds = %if.then4, %if.then
  call void @llvm.dbg.label(metadata !7098), !dbg !7112
  store i32 0, ptr %retval, align 4, !dbg !7113
  br label %return, !dbg !7113

return:                                           ; preds = %invalid, %if.end5
  %4 = load i32, ptr %retval, align 4, !dbg !7114
  ret i32 %4, !dbg !7114
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @alloc_read_gpt_header(ptr noundef %state, i64 noundef %lba) #1 align 16 !dbg !7115 {
entry:
  %retval = alloca ptr, align 8
  %state.addr = alloca ptr, align 8
  %lba.addr = alloca i64, align 8
  %gpt = alloca ptr, align 8
  %ssz = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !7119, metadata !DIExpression()), !dbg !7123
  store i64 %lba, ptr %lba.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lba.addr, metadata !7120, metadata !DIExpression()), !dbg !7124
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpt) #18, !dbg !7125
  call void @llvm.dbg.declare(metadata ptr %gpt, metadata !7121, metadata !DIExpression()), !dbg !7126
  call void @llvm.lifetime.start.p0(i64 4, ptr %ssz) #18, !dbg !7127
  call void @llvm.dbg.declare(metadata ptr %ssz, metadata !7122, metadata !DIExpression()), !dbg !7128
  %0 = load ptr, ptr %state.addr, align 8, !dbg !7129
  %disk = getelementptr inbounds %struct.parsed_partitions, ptr %0, i32 0, i32 0, !dbg !7130
  %1 = load ptr, ptr %disk, align 8, !dbg !7130
  %queue = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 9, !dbg !7131
  %2 = load ptr, ptr %queue, align 8, !dbg !7131
  %call = call i32 @queue_logical_block_size(ptr noundef %2) #19, !dbg !7132
  store i32 %call, ptr %ssz, align 4, !dbg !7128
  %3 = load i32, ptr %ssz, align 4, !dbg !7133
  %conv = zext i32 %3 to i64, !dbg !7133
  %call1 = call noalias ptr @kmalloc(i64 noundef %conv, i32 noundef 3264) #20, !dbg !7134
  store ptr %call1, ptr %gpt, align 8, !dbg !7135
  %4 = load ptr, ptr %gpt, align 8, !dbg !7136
  %tobool = icmp ne ptr %4, null, !dbg !7136
  br i1 %tobool, label %if.end, label %if.then, !dbg !7138

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !7139
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7139

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %state.addr, align 8, !dbg !7140
  %6 = load i64, ptr %lba.addr, align 8, !dbg !7142
  %7 = load ptr, ptr %gpt, align 8, !dbg !7143
  %8 = load i32, ptr %ssz, align 4, !dbg !7144
  %conv2 = zext i32 %8 to i64, !dbg !7144
  %call3 = call i64 @read_lba(ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %conv2) #19, !dbg !7145
  %9 = load i32, ptr %ssz, align 4, !dbg !7146
  %conv4 = zext i32 %9 to i64, !dbg !7146
  %cmp = icmp ult i64 %call3, %conv4, !dbg !7147
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !7148

if.then6:                                         ; preds = %if.end
  %10 = load ptr, ptr %gpt, align 8, !dbg !7149
  call void @kfree(ptr noundef %10) #19, !dbg !7151
  store ptr null, ptr %gpt, align 8, !dbg !7152
  store ptr null, ptr %retval, align 8, !dbg !7153
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7153

if.end7:                                          ; preds = %if.end
  %11 = load ptr, ptr %gpt, align 8, !dbg !7154
  store ptr %11, ptr %retval, align 8, !dbg !7155
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7155

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ssz) #18, !dbg !7156
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpt) #18, !dbg !7156
  %12 = load ptr, ptr %retval, align 8, !dbg !7156
  ret ptr %12, !dbg !7156
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @efi_crc32(ptr noundef %buf, i64 noundef %len) #4 align 16 !dbg !7157 {
entry:
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !7161, metadata !DIExpression()), !dbg !7163
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !7162, metadata !DIExpression()), !dbg !7164
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !7165
  %1 = load i64, ptr %len.addr, align 8, !dbg !7165
  %call = call i32 @crc32_le(i32 noundef -1, ptr noundef %0, i64 noundef %1) #24, !dbg !7165
  %conv = zext i32 %call to i64, !dbg !7165
  %xor = xor i64 %conv, -1, !dbg !7166
  %conv1 = trunc i64 %xor to i32, !dbg !7167
  ret i32 %conv1, !dbg !7168
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @alloc_read_gpt_entries(ptr noundef %state, ptr noundef %gpt) #1 align 16 !dbg !7169 {
entry:
  %retval = alloca ptr, align 8
  %state.addr = alloca ptr, align 8
  %gpt.addr = alloca ptr, align 8
  %count = alloca i64, align 8
  %pte = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !7173, metadata !DIExpression()), !dbg !7177
  store ptr %gpt, ptr %gpt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpt.addr, metadata !7174, metadata !DIExpression()), !dbg !7178
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #18, !dbg !7179
  call void @llvm.dbg.declare(metadata ptr %count, metadata !7175, metadata !DIExpression()), !dbg !7180
  call void @llvm.lifetime.start.p0(i64 8, ptr %pte) #18, !dbg !7181
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !7176, metadata !DIExpression()), !dbg !7182
  %0 = load ptr, ptr %gpt.addr, align 8, !dbg !7183
  %tobool = icmp ne ptr %0, null, !dbg !7183
  br i1 %tobool, label %if.end, label %if.then, !dbg !7185

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !7186
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7186

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %gpt.addr, align 8, !dbg !7187
  %num_partition_entries = getelementptr inbounds %struct._gpt_header, ptr %1, i32 0, i32 11, !dbg !7187
  %2 = load i32, ptr %num_partition_entries, align 1, !dbg !7187
  %conv = zext i32 %2 to i64, !dbg !7188
  %3 = load ptr, ptr %gpt.addr, align 8, !dbg !7189
  %sizeof_partition_entry = getelementptr inbounds %struct._gpt_header, ptr %3, i32 0, i32 12, !dbg !7189
  %4 = load i32, ptr %sizeof_partition_entry, align 1, !dbg !7189
  %conv1 = zext i32 %4 to i64, !dbg !7189
  %mul = mul i64 %conv, %conv1, !dbg !7190
  store i64 %mul, ptr %count, align 8, !dbg !7191
  %5 = load i64, ptr %count, align 8, !dbg !7192
  %tobool2 = icmp ne i64 %5, 0, !dbg !7192
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !7194

if.then3:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !7195
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7195

if.end4:                                          ; preds = %if.end
  %6 = load i64, ptr %count, align 8, !dbg !7196
  %call = call noalias ptr @kmalloc(i64 noundef %6, i32 noundef 3264) #20, !dbg !7197
  store ptr %call, ptr %pte, align 8, !dbg !7198
  %7 = load ptr, ptr %pte, align 8, !dbg !7199
  %tobool5 = icmp ne ptr %7, null, !dbg !7199
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !7201

if.then6:                                         ; preds = %if.end4
  store ptr null, ptr %retval, align 8, !dbg !7202
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7202

if.end7:                                          ; preds = %if.end4
  %8 = load ptr, ptr %state.addr, align 8, !dbg !7203
  %9 = load ptr, ptr %gpt.addr, align 8, !dbg !7205
  %partition_entry_lba = getelementptr inbounds %struct._gpt_header, ptr %9, i32 0, i32 10, !dbg !7205
  %10 = load i64, ptr %partition_entry_lba, align 1, !dbg !7205
  %11 = load ptr, ptr %pte, align 8, !dbg !7206
  %12 = load i64, ptr %count, align 8, !dbg !7207
  %call8 = call i64 @read_lba(ptr noundef %8, i64 noundef %10, ptr noundef %11, i64 noundef %12) #19, !dbg !7208
  %13 = load i64, ptr %count, align 8, !dbg !7209
  %cmp = icmp ult i64 %call8, %13, !dbg !7210
  br i1 %cmp, label %if.then10, label %if.end11, !dbg !7211

if.then10:                                        ; preds = %if.end7
  %14 = load ptr, ptr %pte, align 8, !dbg !7212
  call void @kfree(ptr noundef %14) #19, !dbg !7214
  store ptr null, ptr %pte, align 8, !dbg !7215
  store ptr null, ptr %retval, align 8, !dbg !7216
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7216

if.end11:                                         ; preds = %if.end7
  %15 = load ptr, ptr %pte, align 8, !dbg !7217
  store ptr %15, ptr %retval, align 8, !dbg !7218
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7218

cleanup:                                          ; preds = %if.end11, %if.then10, %if.then6, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pte) #18, !dbg !7219
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #18, !dbg !7219
  %16 = load ptr, ptr %retval, align 8, !dbg !7219
  ret ptr %16, !dbg !7219
}

; Function Attrs: noredzone nounwind null_pointer_is_valid willreturn memory(read)
declare !dbg !7220 dso_local i32 @crc32_le(i32 noundef, ptr noundef, i64 noundef) #17

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @div_u64(i64 noundef %dividend, i32 noundef %divisor) #4 align 16 !dbg !7224 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder = alloca i32, align 4
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !7229, metadata !DIExpression()), !dbg !7232
  store i32 %divisor, ptr %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !7230, metadata !DIExpression()), !dbg !7233
  call void @llvm.lifetime.start.p0(i64 4, ptr %remainder) #18, !dbg !7234
  call void @llvm.dbg.declare(metadata ptr %remainder, metadata !7231, metadata !DIExpression()), !dbg !7235
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !7236
  %1 = load i32, ptr %divisor.addr, align 4, !dbg !7237
  %call = call i64 @div_u64_rem(i64 noundef %0, i32 noundef %1, ptr noundef %remainder) #19, !dbg !7238
  call void @llvm.lifetime.end.p0(i64 4, ptr %remainder) #18, !dbg !7239
  ret i64 %call, !dbg !7240
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @bdev_nr_bytes(ptr noundef %bdev) #4 align 16 !dbg !7241 {
entry:
  %bdev.addr = alloca ptr, align 8
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !7245, metadata !DIExpression()), !dbg !7246
  %0 = load ptr, ptr %bdev.addr, align 8, !dbg !7247
  %call = call i64 @bdev_nr_sectors(ptr noundef %0) #19, !dbg !7248
  %shl = shl i64 %call, 9, !dbg !7249
  ret i64 %shl, !dbg !7250
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @div_u64_rem(i64 noundef %dividend, i32 noundef %divisor, ptr noundef %remainder) #4 align 16 !dbg !7251 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder.addr = alloca ptr, align 8
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !7255, metadata !DIExpression()), !dbg !7258
  store i32 %divisor, ptr %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !7256, metadata !DIExpression()), !dbg !7259
  store ptr %remainder, ptr %remainder.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %remainder.addr, metadata !7257, metadata !DIExpression()), !dbg !7260
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !7261
  %1 = load i32, ptr %divisor.addr, align 4, !dbg !7262
  %conv = zext i32 %1 to i64, !dbg !7262
  %rem = urem i64 %0, %conv, !dbg !7263
  %conv1 = trunc i64 %rem to i32, !dbg !7261
  %2 = load ptr, ptr %remainder.addr, align 8, !dbg !7264
  store i32 %conv1, ptr %2, align 4, !dbg !7265
  %3 = load i64, ptr %dividend.addr, align 8, !dbg !7266
  %4 = load i32, ptr %divisor.addr, align 4, !dbg !7267
  %conv2 = zext i32 %4 to i64, !dbg !7267
  %div = udiv i64 %3, %conv2, !dbg !7268
  ret i64 %div, !dbg !7269
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7270 dso_local i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7274 dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7277 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #5

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { noredzone nounwind null_pointer_is_valid willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #18 = { nounwind }
attributes #19 = { noredzone }
attributes #20 = { noredzone allocsize(0) }
attributes #21 = { cold noredzone }
attributes #22 = { noredzone allocsize(2) }
attributes #23 = { noredzone noreturn }
attributes #24 = { noredzone nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!323, !324, !325, !326, !327, !328, !329, !330}
!llvm.ident = !{!331}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__setup_str_force_gpt_fn", scope: !2, file: !3, line: 104, type: !320, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF block/partitions/.efi.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22block/partitions/efi\22 -D KBUILD_BASENAME=\22efi\22 -D KBUILD_MODNAME=\22efi\22 -D __KBUILD_MODNAME=kmod_efi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o block/partitions/efi.ll block/partitions/efi.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !185, globals: !216, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "block/partitions/efi.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3c4f87b570194ba1784ba1198e12b078")
!4 = !{!5, !13, !18, !26, !34, !50, !56, !61, !67, !74, !81, !87, !93, !97, !101, !107, !114, !122, !130, !139, !144, !149, !155, !160, !165, !170, !175}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !14, line: 2052, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!17 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !19, line: 9, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!20 = !{!21, !22, !23, !24, !25}
!21 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!22 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!23 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!24 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!25 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !27, line: 68, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!28 = !{!29, !30, !31, !32, !33}
!29 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!30 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!31 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!32 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!33 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !35, line: 1325, baseType: !7, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!36 = !{!37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!37 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!38 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!39 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!40 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!41 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!42 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!43 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!44 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!45 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!46 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!47 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!48 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!49 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !51, line: 54, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!52 = !{!53, !54, !55}
!53 = !DIEnumerator(name: "USRQUOTA", value: 0)
!54 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!55 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !57, line: 65, baseType: !7, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!58 = !{!59, !60}
!59 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!60 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !62, line: 16, baseType: !7, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!63 = !{!64, !65, !66}
!64 = !DIEnumerator(name: "TT_NONE", value: 0)
!65 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!66 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !68, line: 51, baseType: !7, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!69 = !{!70, !71, !72, !73}
!70 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!71 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!72 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!73 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !75, line: 15, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!76 = !{!77, !78, !79, !80}
!77 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!78 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!79 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!80 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !82, line: 26, baseType: !7, size: 32, elements: !83)
!82 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!83 = !{!84, !85, !86}
!84 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!85 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!86 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mq_rq_state", file: !88, line: 68, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/blk-mq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "62cf1706db3683ee75df9cf32a2cf47d")
!89 = !{!90, !91, !92}
!90 = !DIEnumerator(name: "MQ_RQ_IDLE", value: 0)
!91 = !DIEnumerator(name: "MQ_RQ_IN_FLIGHT", value: 1)
!92 = !DIEnumerator(name: "MQ_RQ_COMPLETE", value: 2)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rq_end_io_ret", file: !88, line: 18, baseType: !7, size: 32, elements: !94)
!94 = !{!95, !96}
!95 = !DIEnumerator(name: "RQ_END_IO_NONE", value: 0)
!96 = !DIEnumerator(name: "RQ_END_IO_FREE", value: 1)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_eh_timer_return", file: !88, line: 276, baseType: !7, size: 32, elements: !98)
!98 = !{!99, !100}
!99 = !DIEnumerator(name: "BLK_EH_DONE", value: 0)
!100 = !DIEnumerator(name: "BLK_EH_RESET_TIMER", value: 1)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !102, line: 45, baseType: !7, size: 32, elements: !103)
!102 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!103 = !{!104, !105, !106}
!104 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!105 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!106 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !108, line: 487, baseType: !7, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!109 = !{!110, !111, !112, !113}
!110 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!111 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!112 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!113 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !115, line: 620, baseType: !7, size: 32, elements: !116)
!115 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!116 = !{!117, !118, !119, !120, !121}
!117 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!118 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!119 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!120 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!121 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !115, line: 597, baseType: !123, size: 32, elements: !124)
!123 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!124 = !{!125, !126, !127, !128, !129}
!125 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!126 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!127 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!128 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!129 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !108, line: 547, baseType: !7, size: 32, elements: !131)
!131 = !{!132, !133, !134, !135, !136, !137, !138}
!132 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!133 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!134 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!135 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!136 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!137 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!138 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !108, line: 564, baseType: !7, size: 32, elements: !140)
!140 = !{!141, !142, !143}
!141 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!142 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!143 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !108, line: 577, baseType: !7, size: 32, elements: !145)
!145 = !{!146, !147, !148}
!146 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!147 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!148 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !108, line: 503, baseType: !7, size: 32, elements: !150)
!150 = !{!151, !152, !153, !154}
!151 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!152 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!153 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!154 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!155 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_bounce", file: !156, line: 295, baseType: !7, size: 32, elements: !157)
!156 = !DIFile(filename: "./include/linux/blkdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "802ed60c7d9aff392515db0b7890881d")
!157 = !{!158, !159}
!158 = !DIEnumerator(name: "BLK_BOUNCE_NONE", value: 0)
!159 = !DIEnumerator(name: "BLK_BOUNCE_HIGH", value: 1)
!160 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_zoned_model", file: !156, line: 285, baseType: !7, size: 32, elements: !161)
!161 = !{!162, !163, !164}
!162 = !DIEnumerator(name: "BLK_ZONED_NONE", value: 0)
!163 = !DIEnumerator(name: "BLK_ZONED_HA", value: 1)
!164 = !DIEnumerator(name: "BLK_ZONED_HM", value: 2)
!165 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_unique_id", file: !156, line: 1381, baseType: !7, size: 32, elements: !166)
!166 = !{!167, !168, !169}
!167 = !DIEnumerator(name: "BLK_UID_T10", value: 1)
!168 = !DIEnumerator(name: "BLK_UID_EUI64", value: 2)
!169 = !DIEnumerator(name: "BLK_UID_NAA", value: 3)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !171, line: 10, baseType: !7, size: 32, elements: !172)
!171 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!172 = !{!173, !174}
!173 = !DIEnumerator(name: "false", value: 0)
!174 = !DIEnumerator(name: "true", value: 1)
!175 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !176, line: 364, baseType: !7, size: 32, elements: !177)
!176 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!177 = !{!178, !179, !180, !181, !182, !183, !184}
!178 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!179 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!180 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!181 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!182 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!183 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!184 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!185 = !{!186, !188, !190, !192, !123, !193, !195, !200, !201, !203, !204, !206, !208, !209, !191, !213, !199}
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !187, line: 27, baseType: !7)
!187 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !189, line: 38, baseType: !186)
!189 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !187, line: 31, baseType: !191)
!191 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le64", file: !189, line: 40, baseType: !190)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !194, line: 154, baseType: !7)
!194 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !197, line: 17, baseType: !198)
!197 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !187, line: 21, baseType: !199)
!199 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!200 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !187, line: 24, baseType: !202)
!202 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !189, line: 36, baseType: !201)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !194, line: 110, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !197, line: 21, baseType: !186)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !199)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !197, line: 23, baseType: !190)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !194, line: 61, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !211, line: 72, baseType: !212)
!211 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !211, line: 16, baseType: !200)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !194, line: 52, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !211, line: 88, baseType: !215)
!215 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!216 = !{!217, !232, !0, !237, !239, !244, !246, !251, !256, !261, !266, !271, !276, !281, !283, !288, !293, !298, !303, !308, !314}
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(name: "__setup_force_gpt_fn", scope: !2, file: !3, line: 104, type: !219, isLocal: true, isDefinition: true, align: 64)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !220, line: 324, size: 192, elements: !221)
!220 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!221 = !{!222, !226, !231}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !219, file: !220, line: 325, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!225 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !219, file: !220, line: 326, baseType: !227, size: 64, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{!123, !230}
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !219, file: !220, line: 327, baseType: !123, size: 32, offset: 128)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(scope: null, file: !3, line: 755, type: !234, isLocal: true, isDefinition: true)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 16, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 2)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(name: "force_gpt", scope: !2, file: !3, line: 97, type: !123, isLocal: true, isDefinition: true)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(scope: null, file: !3, line: 647, type: !241, isLocal: true, isDefinition: true)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 384, elements: !242)
!242 = !{!243}
!243 = !DISubrange(count: 48)
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(scope: null, file: !3, line: 655, type: !241, isLocal: true, isDefinition: true)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(scope: null, file: !176, line: 480, type: !248, isLocal: true, isDefinition: true)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 168, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 21)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(scope: null, file: !3, line: 487, type: !253, isLocal: true, isDefinition: true)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 440, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 55)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(scope: null, file: !3, line: 488, type: !258, isLocal: true, isDefinition: true)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 160, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: 20)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(scope: null, file: !3, line: 494, type: !263, isLocal: true, isDefinition: true)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 464, elements: !264)
!264 = !{!265}
!265 = !DISubrange(count: 58)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(scope: null, file: !3, line: 502, type: !268, isLocal: true, isDefinition: true)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 304, elements: !269)
!269 = !{!270}
!270 = !DISubrange(count: 38)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(scope: null, file: !3, line: 510, type: !273, isLocal: true, isDefinition: true)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 296, elements: !274)
!274 = !{!275}
!275 = !DISubrange(count: 37)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(scope: null, file: !3, line: 517, type: !278, isLocal: true, isDefinition: true)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 248, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 31)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(scope: null, file: !3, line: 522, type: !253, isLocal: true, isDefinition: true)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(scope: null, file: !3, line: 530, type: !285, isLocal: true, isDefinition: true)
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 504, elements: !286)
!286 = !{!287}
!287 = !DISubrange(count: 63)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(scope: null, file: !3, line: 538, type: !290, isLocal: true, isDefinition: true)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 544, elements: !291)
!291 = !{!292}
!292 = !DISubrange(count: 68)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(scope: null, file: !3, line: 545, type: !295, isLocal: true, isDefinition: true)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 576, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 72)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(scope: null, file: !3, line: 553, type: !300, isLocal: true, isDefinition: true)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 448, elements: !301)
!301 = !{!302}
!302 = !DISubrange(count: 56)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(scope: null, file: !3, line: 561, type: !305, isLocal: true, isDefinition: true)
!305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 368, elements: !306)
!306 = !{!307}
!307 = !DISubrange(count: 46)
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(scope: null, file: !310, line: 44, type: !311, isLocal: true, isDefinition: true)
!310 = !DIFile(filename: "block/partitions/check.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72c47c6bdec8fe2cd02c9ca9371c8497")
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 48, elements: !312)
!312 = !{!313}
!313 = !DISubrange(count: 6)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(scope: null, file: !316, line: 707, type: !317, isLocal: true, isDefinition: true)
!316 = !DIFile(filename: "./include/linux/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2323d214b32d787c50a5d65c12a21824")
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 40, elements: !318)
!318 = !{!319}
!319 = !DISubrange(count: 5)
!320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 32, elements: !321)
!321 = !{!322}
!322 = !DISubrange(count: 4)
!323 = !{i32 7, !"Dwarf Version", i32 5}
!324 = !{i32 2, !"Debug Info Version", i32 3}
!325 = !{i32 1, !"wchar_size", i32 2}
!326 = !{i32 8, !"cf-protection-branch", i32 1}
!327 = !{i32 4, !"function_return_thunk_extern", i32 1}
!328 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!329 = !{i32 1, !"Code Model", i32 2}
!330 = !{i32 1, !"override-stack-alignment", i32 8}
!331 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!332 = distinct !DISubprogram(name: "force_gpt_fn", scope: !3, file: !3, line: 99, type: !228, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !333)
!333 = !{!334}
!334 = !DILocalVariable(name: "str", arg: 1, scope: !332, file: !3, line: 99, type: !230)
!335 = !DILocation(line: 99, column: 20, scope: !332)
!336 = !DILocation(line: 101, column: 12, scope: !332)
!337 = !DILocation(line: 102, column: 2, scope: !332)
!338 = distinct !DISubprogram(name: "efi_partition", scope: !3, file: !3, line: 713, type: !339, scopeLine: 714, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5513)
!339 = !DISubroutineType(types: !340)
!340 = !{!123, !341}
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "parsed_partitions", file: !310, line: 10, size: 576, elements: !343)
!343 = !{!344, !5499, !5500, !5509, !5510, !5511, !5512}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "disk", scope: !342, file: !310, line: 11, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !156, line: 128, size: 4544, elements: !347)
!347 = !{!348, !349, !350, !351, !355, !356, !357, !400, !5369, !5457, !5458, !5459, !5460, !5461, !5462, !5463, !5464, !5465, !5466, !5467, !5468, !5471, !5472, !5475, !5478, !5479, !5482, !5483, !5484, !5485}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !346, file: !156, line: 133, baseType: !123, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "first_minor", scope: !346, file: !156, line: 134, baseType: !123, size: 32, offset: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "minors", scope: !346, file: !156, line: 135, baseType: !123, size: 32, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !346, file: !156, line: 137, baseType: !352, size: 256, offset: 96)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 256, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 32)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !346, file: !156, line: 139, baseType: !202, size: 16, offset: 352)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "event_flags", scope: !346, file: !156, line: 140, baseType: !202, size: 16, offset: 368)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "part_tbl", scope: !346, file: !156, line: 142, baseType: !358, size: 128, offset: 384)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !359, line: 296, size: 128, elements: !360)
!359 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!360 = !{!361, !397, !398}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !358, file: !359, line: 297, baseType: !362, size: 32)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !363, line: 29, baseType: !364)
!363 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !363, line: 17, size: 32, elements: !365)
!365 = !{!366}
!366 = !DIDerivedType(tag: DW_TAG_member, scope: !364, file: !363, line: 18, baseType: !367, size: 32)
!367 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !364, file: !363, line: 18, size: 32, elements: !368)
!368 = !{!369}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !367, file: !363, line: 19, baseType: !370, size: 32)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !371, line: 14, size: 32, elements: !372)
!371 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!372 = !{!373}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !370, file: !371, line: 15, baseType: !374, size: 32)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !375, line: 44, baseType: !376)
!375 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !375, line: 14, size: 32, elements: !377)
!377 = !{!378}
!378 = !DIDerivedType(tag: DW_TAG_member, scope: !376, file: !375, line: 15, baseType: !379, size: 32)
!379 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !376, file: !375, line: 15, size: 32, elements: !380)
!380 = !{!381, !386, !391}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !379, file: !375, line: 16, baseType: !382, size: 32)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !194, line: 174, baseType: !383)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !194, line: 172, size: 32, elements: !384)
!384 = !{!385}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !383, file: !194, line: 173, baseType: !123, size: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, scope: !379, file: !375, line: 24, baseType: !387, size: 16)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !379, file: !375, line: 24, size: 16, elements: !388)
!388 = !{!389, !390}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !387, file: !375, line: 25, baseType: !196, size: 8)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !387, file: !375, line: 26, baseType: !196, size: 8, offset: 8)
!391 = !DIDerivedType(tag: DW_TAG_member, scope: !379, file: !375, line: 28, baseType: !392, size: 32)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !379, file: !375, line: 28, size: 32, elements: !393)
!393 = !{!394, !396}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !392, file: !375, line: 29, baseType: !395, size: 16)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !197, line: 19, baseType: !201)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !392, file: !375, line: 30, baseType: !395, size: 16, offset: 16)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !358, file: !359, line: 299, baseType: !193, size: 32, offset: 32)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !358, file: !359, line: 300, baseType: !399, size: 64, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "part0", scope: !346, file: !156, line: 143, baseType: !401, size: 64, offset: 512)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !403, line: 40, size: 7424, elements: !404)
!403 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!404 = !{!405, !407, !408, !409, !5327, !5330, !5331, !5332, !5333, !5334, !5335, !5336, !5337, !5338, !5339, !5340, !5341, !5354, !5355, !5356, !5357, !5358, !5359, !5360, !5367, !5368}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !402, file: !403, line: 41, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !194, line: 131, baseType: !208)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !402, file: !403, line: 42, baseType: !406, size: 64, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !402, file: !403, line: 43, baseType: !345, size: 64, offset: 128)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !402, file: !403, line: 44, baseType: !410, size: 64, offset: 192)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !156, line: 391, size: 7296, elements: !412)
!412 = !{!413, !4675, !4678, !4679, !4682, !4685, !4686, !4792, !4793, !4794, !4795, !4796, !4797, !4798, !4799, !4800, !4801, !4802, !4803, !4804, !5255, !5256, !5257, !5258, !5259, !5260, !5261, !5262, !5263, !5264, !5265, !5266, !5267, !5268, !5301, !5302, !5303, !5306, !5307, !5308, !5309, !5310, !5311, !5312, !5313, !5314, !5315, !5316, !5317, !5318, !5319, !5320, !5321, !5322, !5323, !5324, !5325, !5326}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "last_merge", scope: !411, file: !156, line: 392, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request", file: !88, line: 80, size: 1984, elements: !416)
!416 = !{!417, !418, !421, !4606, !4607, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4636, !4641, !4663, !4672, !4673, !4674}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !415, file: !88, line: 81, baseType: !410, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ctx", scope: !415, file: !88, line: 82, baseType: !419, size: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ctx", file: !156, line: 404, flags: DIFlagFwdDecl)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "mq_hctx", scope: !415, file: !88, line: 83, baseType: !422, size: 64, offset: 128)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_hw_ctx", file: !88, line: 288, size: 4096, elements: !424)
!424 = !{!425, !436, !481, !491, !492, !493, !494, !495, !496, !511, !512, !532, !533, !534, !535, !536, !538, !539, !553, !554, !587, !588, !589, !590, !591, !592, !593, !594, !4603, !4604, !4605}
!425 = !DIDerivedType(tag: DW_TAG_member, scope: !423, file: !88, line: 289, baseType: !426, size: 512, align: 512)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !423, file: !88, line: 289, size: 512, align: 512, elements: !427)
!427 = !{!428, !429, !435}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !426, file: !88, line: 291, baseType: !362, size: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !426, file: !88, line: 299, baseType: !430, size: 128, offset: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !194, line: 190, size: 128, elements: !431)
!431 = !{!432, !434}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !430, file: !194, line: 191, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !430, file: !194, line: 191, baseType: !433, size: 64, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !426, file: !88, line: 304, baseType: !200, size: 64, offset: 192)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "run_work", scope: !423, file: !88, line: 310, baseType: !437, size: 704, offset: 512)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !438, line: 111, size: 704, elements: !439)
!438 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!439 = !{!440, !459, !477, !480}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !437, file: !438, line: 112, baseType: !441, size: 256)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !438, line: 98, size: 256, elements: !442)
!442 = !{!443, !452, !453}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !441, file: !438, line: 99, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !445, line: 13, baseType: !446)
!445 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !194, line: 181, baseType: !447)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !194, line: 179, size: 64, elements: !448)
!448 = !{!449}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !447, file: !194, line: 180, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !197, line: 22, baseType: !451)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !187, line: 30, baseType: !215)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !441, file: !438, line: 100, baseType: !430, size: 128, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !441, file: !438, line: 101, baseType: !454, size: 64, offset: 192)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !438, line: 21, baseType: !455)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{null, !458}
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !437, file: !438, line: 113, baseType: !460, size: 320, offset: 256)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !461, line: 11, size: 320, elements: !462)
!461 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!462 = !{!463, !470, !471, !476}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !460, file: !461, line: 16, baseType: !464, size: 128)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !194, line: 198, size: 128, elements: !465)
!465 = !{!466, !468}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !464, file: !194, line: 199, baseType: !467, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !464, file: !194, line: 199, baseType: !469, size: 64, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !460, file: !461, line: 17, baseType: !200, size: 64, offset: 128)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !460, file: !461, line: 18, baseType: !472, size: 64, offset: 192)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !475}
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !460, file: !461, line: 19, baseType: !205, size: 32, offset: 256)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !437, file: !438, line: 116, baseType: !478, size: 64, offset: 576)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !438, line: 18, flags: DIFlagFwdDecl)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !437, file: !438, line: 117, baseType: !123, size: 32, offset: 640)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !423, file: !88, line: 312, baseType: !482, size: 64, offset: 1216)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !483, line: 913, baseType: !484)
!483 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !485, size: 64, elements: !489)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !483, line: 19, size: 64, elements: !486)
!486 = !{!487}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !485, file: !483, line: 19, baseType: !488, size: 64)
!488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 64, elements: !489)
!489 = !{!490}
!490 = !DISubrange(count: 1)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "next_cpu", scope: !423, file: !88, line: 317, baseType: !123, size: 32, offset: 1280)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "next_cpu_batch", scope: !423, file: !88, line: 322, baseType: !123, size: 32, offset: 1312)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !423, file: !88, line: 325, baseType: !200, size: 64, offset: 1344)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "sched_data", scope: !423, file: !88, line: 331, baseType: !399, size: 64, offset: 1408)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !423, file: !88, line: 335, baseType: !410, size: 64, offset: 1472)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !423, file: !88, line: 337, baseType: !497, size: 64, offset: 1536)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_flush_queue", file: !499, line: 17, size: 512, elements: !500)
!499 = !DIFile(filename: "block/partitions/../blk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "08e4a891c7a7b1c380cd6f0c6d03b93a")
!500 = !{!501, !502, !503, !504, !506, !507, !509, !510}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "mq_flush_lock", scope: !498, file: !499, line: 18, baseType: !362, size: 32)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "flush_pending_idx", scope: !498, file: !499, line: 19, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "flush_running_idx", scope: !498, file: !499, line: 20, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "rq_status", scope: !498, file: !499, line: 21, baseType: !505, size: 8, offset: 40)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_status_t", file: !403, line: 97, baseType: !196)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "flush_pending_since", scope: !498, file: !499, line: 22, baseType: !200, size: 64, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "flush_queue", scope: !498, file: !499, line: 23, baseType: !508, size: 256, offset: 128)
!508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, size: 256, elements: !235)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "flush_data_in_flight", scope: !498, file: !499, line: 24, baseType: !200, size: 64, offset: 384)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "flush_rq", scope: !498, file: !499, line: 25, baseType: !414, size: 64, offset: 448)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !423, file: !88, line: 343, baseType: !399, size: 64, offset: 1600)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_map", scope: !423, file: !88, line: 349, baseType: !513, size: 256, offset: 1664)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbitmap", file: !514, line: 52, size: 256, elements: !515)
!514 = !DIFile(filename: "./include/linux/sbitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c1a10e3a5ba3f1b25200b1abce63f43a")
!515 = !{!516, !517, !518, !519, !522, !530}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !513, file: !514, line: 56, baseType: !7, size: 32)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !513, file: !514, line: 61, baseType: !7, size: 32, offset: 32)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "map_nr", scope: !513, file: !514, line: 66, baseType: !7, size: 32, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "round_robin", scope: !513, file: !514, line: 71, baseType: !520, size: 8, offset: 96)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !194, line: 35, baseType: !521)
!521 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !513, file: !514, line: 76, baseType: !523, size: 64, offset: 128)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbitmap_word", file: !514, line: 29, size: 1024, align: 512, elements: !525)
!525 = !{!526, !527, !528}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !524, file: !514, line: 33, baseType: !200, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "cleared", scope: !524, file: !514, line: 38, baseType: !200, size: 64, align: 512, offset: 512)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "swap_lock", scope: !524, file: !514, line: 43, baseType: !529, size: 32, offset: 576)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !371, line: 23, baseType: !370)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_hint", scope: !513, file: !514, line: 84, baseType: !531, size: 64, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_from", scope: !423, file: !88, line: 355, baseType: !419, size: 64, offset: 1920)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_busy", scope: !423, file: !88, line: 361, baseType: !7, size: 32, offset: 1984)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !423, file: !88, line: 364, baseType: !202, size: 16, offset: 2016)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ctx", scope: !423, file: !88, line: 366, baseType: !202, size: 16, offset: 2032)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "ctxs", scope: !423, file: !88, line: 368, baseType: !537, size: 64, offset: 2048)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_wait_lock", scope: !423, file: !88, line: 371, baseType: !362, size: 32, offset: 2112)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_wait", scope: !423, file: !88, line: 376, baseType: !540, size: 320, offset: 2176)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !541, line: 14, baseType: !542)
!541 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !541, line: 30, size: 320, elements: !543)
!543 = !{!544, !545, !546, !552}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !542, file: !541, line: 31, baseType: !7, size: 32)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !542, file: !541, line: 32, baseType: !399, size: 64, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !542, file: !541, line: 33, baseType: !547, size: 64, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !541, line: 16, baseType: !548)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{!123, !551, !7, !123, !399}
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !542, file: !541, line: 34, baseType: !430, size: 128, offset: 192)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !423, file: !88, line: 382, baseType: !382, size: 32, offset: 2496)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "tags", scope: !423, file: !88, line: 388, baseType: !555, size: 64, offset: 2560)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tags", file: !88, line: 735, size: 1472, elements: !557)
!557 = !{!558, !559, !560, !561, !581, !582, !584, !585, !586}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tags", scope: !556, file: !88, line: 736, baseType: !7, size: 32)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "nr_reserved_tags", scope: !556, file: !88, line: 737, baseType: !7, size: 32, offset: 32)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "active_queues", scope: !556, file: !88, line: 738, baseType: !7, size: 32, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap_tags", scope: !556, file: !88, line: 740, baseType: !562, size: 512, offset: 128)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbitmap_queue", file: !514, line: 109, size: 512, elements: !563)
!563 = !{!564, !565, !566, !567, !577, !578, !579, !580}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "sb", scope: !562, file: !514, line: 113, baseType: !513, size: 256)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "wake_batch", scope: !562, file: !514, line: 119, baseType: !7, size: 32, offset: 256)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "wake_index", scope: !562, file: !514, line: 124, baseType: !382, size: 32, offset: 288)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !562, file: !514, line: 129, baseType: !568, size: 64, offset: 320)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbq_wait_state", file: !514, line: 93, size: 512, align: 512, elements: !570)
!570 = !{!571}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !569, file: !514, line: 97, baseType: !572, size: 192)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !541, line: 41, baseType: !573)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !541, line: 37, size: 192, elements: !574)
!574 = !{!575, !576}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !573, file: !541, line: 38, baseType: !362, size: 32)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !573, file: !541, line: 39, baseType: !430, size: 128, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "ws_active", scope: !562, file: !514, line: 134, baseType: !382, size: 32, offset: 384)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "min_shallow_depth", scope: !562, file: !514, line: 140, baseType: !7, size: 32, offset: 416)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "completion_cnt", scope: !562, file: !514, line: 146, baseType: !382, size: 32, offset: 448)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_cnt", scope: !562, file: !514, line: 151, baseType: !382, size: 32, offset: 480)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "breserved_tags", scope: !556, file: !88, line: 741, baseType: !562, size: 512, offset: 640)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "rqs", scope: !556, file: !88, line: 743, baseType: !583, size: 64, offset: 1152)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "static_rqs", scope: !556, file: !88, line: 744, baseType: !583, size: 64, offset: 1216)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "page_list", scope: !556, file: !88, line: 745, baseType: !430, size: 128, offset: 1280)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !556, file: !88, line: 751, baseType: !362, size: 32, offset: 1408)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "sched_tags", scope: !423, file: !88, line: 394, baseType: !555, size: 64, offset: 2624)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !423, file: !88, line: 397, baseType: !200, size: 64, offset: 2688)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !423, file: !88, line: 400, baseType: !7, size: 32, offset: 2752)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "queue_num", scope: !423, file: !88, line: 402, baseType: !7, size: 32, offset: 2784)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active", scope: !423, file: !88, line: 408, baseType: !382, size: 32, offset: 2816)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_online", scope: !423, file: !88, line: 411, baseType: !464, size: 128, offset: 2880)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !423, file: !88, line: 413, baseType: !464, size: 128, offset: 3008)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !423, file: !88, line: 415, baseType: !595, size: 512, offset: 3136)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !596, line: 64, size: 512, elements: !597)
!596 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!597 = !{!598, !599, !600, !602, !648, !4501, !4593, !4598, !4599, !4600, !4601, !4602}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !595, file: !596, line: 65, baseType: !223, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !595, file: !596, line: 66, baseType: !430, size: 128, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !595, file: !596, line: 67, baseType: !601, size: 64, offset: 192)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !595, file: !596, line: 68, baseType: !603, size: 64, offset: 256)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !596, line: 168, size: 768, elements: !605)
!605 = !{!606, !607, !608, !609}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !604, file: !596, line: 169, baseType: !430, size: 128)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !604, file: !596, line: 170, baseType: !362, size: 32, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !604, file: !596, line: 171, baseType: !595, size: 512, offset: 192)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !604, file: !596, line: 172, baseType: !610, size: 64, offset: 704)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !612)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !596, line: 133, size: 192, elements: !613)
!613 = !{!614, !621, !626}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !612, file: !596, line: 134, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !616)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DISubroutineType(types: !618)
!618 = !{!123, !619}
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !595)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !612, file: !596, line: 135, baseType: !622, size: 64, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !623)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{!223, !619}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !612, file: !596, line: 136, baseType: !627, size: 64, offset: 128)
!627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !628)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!123, !619, !631}
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !596, line: 125, size: 20736, elements: !633)
!633 = !{!634, !638, !642, !643, !647}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !632, file: !596, line: 126, baseType: !635, size: 192)
!635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 192, elements: !636)
!636 = !{!637}
!637 = !DISubrange(count: 3)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !632, file: !596, line: 127, baseType: !639, size: 4096, offset: 192)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 4096, elements: !640)
!640 = !{!641}
!641 = !DISubrange(count: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !632, file: !596, line: 128, baseType: !123, size: 32, offset: 4288)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !632, file: !596, line: 129, baseType: !644, size: 16384, offset: 4320)
!644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 16384, elements: !645)
!645 = !{!646}
!646 = !DISubrange(count: 2048)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !632, file: !596, line: 130, baseType: !123, size: 32, offset: 20704)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !595, file: !596, line: 69, baseType: !649, size: 64, offset: 320)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !651)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !596, line: 116, size: 384, elements: !652)
!652 = !{!653, !657, !681, !4463, !4491, !4495}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !651, file: !596, line: 117, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{null, !601}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !651, file: !596, line: 118, baseType: !658, size: 64, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !660)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !661, line: 254, size: 128, elements: !662)
!661 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!662 = !{!663, !677}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !660, file: !661, line: 255, baseType: !664, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{!667, !601, !671, !230}
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !194, line: 66, baseType: !668)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !211, line: 73, baseType: !669)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !211, line: 15, baseType: !670)
!670 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !661, line: 30, size: 128, elements: !673)
!673 = !{!674, !675}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !672, file: !661, line: 31, baseType: !223, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !672, file: !661, line: 32, baseType: !676, size: 16, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !194, line: 24, baseType: !202)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !660, file: !661, line: 256, baseType: !678, size: 64, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{!667, !601, !671, !223, !209}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !651, file: !596, line: 119, baseType: !682, size: 64, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !685)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !661, line: 84, size: 320, elements: !686)
!686 = !{!687, !688, !692, !4459, !4461}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !685, file: !661, line: 85, baseType: !223, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !685, file: !661, line: 86, baseType: !689, size: 64, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{!676, !601, !671, !123}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !685, file: !661, line: 88, baseType: !693, size: 64, offset: 128)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DISubroutineType(types: !695)
!695 = !{!676, !601, !696, !123}
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !661, line: 175, size: 512, elements: !698)
!698 = !{!699, !700, !701, !702, !4450, !4454, !4455}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !697, file: !661, line: 176, baseType: !672, size: 128)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !697, file: !661, line: 177, baseType: !209, size: 64, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !697, file: !661, line: 178, baseType: !399, size: 64, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !697, file: !661, line: 179, baseType: !703, size: 64, offset: 256)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DISubroutineType(types: !705)
!705 = !{!706}
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !708)
!708 = !{!709, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4444, !4445, !4446, !4447, !4448, !4449}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !707, file: !14, line: 473, baseType: !710, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !712)
!712 = !{!713, !714, !715, !723, !724, !731, !732, !735, !736, !4272, !4273, !4274, !4275, !4276, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4316, !4319, !4320, !4321, !4338, !4339, !4340, !4341}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !711, file: !14, line: 642, baseType: !676, size: 16)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !711, file: !14, line: 643, baseType: !202, size: 16, offset: 16)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !711, file: !14, line: 644, baseType: !716, size: 32, offset: 32)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !717, line: 23, baseType: !718)
!717 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !717, line: 21, size: 32, elements: !719)
!719 = !{!720}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !718, file: !717, line: 22, baseType: !721, size: 32)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !194, line: 37, baseType: !722)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !211, line: 49, baseType: !7)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !711, file: !14, line: 645, baseType: !430, size: 128, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !711, file: !14, line: 646, baseType: !725, size: 32, offset: 192)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !717, line: 28, baseType: !726)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !717, line: 26, size: 32, elements: !727)
!727 = !{!728}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !726, file: !717, line: 27, baseType: !729, size: 32)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !194, line: 38, baseType: !730)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !211, line: 50, baseType: !7)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !711, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !711, file: !14, line: 650, baseType: !733, size: 64, offset: 256)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !711, file: !14, line: 651, baseType: !733, size: 64, offset: 320)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !711, file: !14, line: 654, baseType: !737, size: 64, offset: 384)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !739)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !740)
!740 = !{!741, !4106, !4116, !4120, !4124, !4128, !4132, !4136, !4140, !4144, !4148, !4149, !4153, !4157, !4194, !4223, !4227, !4233, !4237, !4241, !4245, !4249, !4253, !4259, !4263}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !739, file: !14, line: 1967, baseType: !742, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!745, !710, !745, !7}
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !747, line: 82, size: 1536, elements: !748)
!747 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!748 = !{!749, !750, !760, !768, !769, !782, !783, !785, !798, !4090, !4091, !4092, !4093, !4098, !4099, !4100}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !746, file: !747, line: 84, baseType: !7, size: 32)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !746, file: !747, line: 85, baseType: !751, size: 32, offset: 32)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !752, line: 275, baseType: !753)
!752 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !752, line: 275, size: 32, elements: !754)
!754 = !{!755}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !753, file: !752, line: 275, baseType: !756, size: 32)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !752, line: 69, baseType: !757)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !752, line: 64, size: 32, elements: !758)
!758 = !{!759}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !757, file: !752, line: 65, baseType: !7, size: 32)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !746, file: !747, line: 86, baseType: !761, size: 128, offset: 64)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !762, line: 38, size: 128, elements: !763)
!762 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!763 = !{!764, !766}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !761, file: !762, line: 39, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !761, file: !762, line: 39, baseType: !767, size: 64, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !746, file: !747, line: 87, baseType: !745, size: 64, offset: 192)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !746, file: !747, line: 88, baseType: !770, size: 128, offset: 256)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !747, line: 49, size: 128, elements: !771)
!771 = !{!772, !781}
!772 = !DIDerivedType(tag: DW_TAG_member, scope: !770, file: !747, line: 50, baseType: !773, size: 64)
!773 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !770, file: !747, line: 50, size: 64, elements: !774)
!774 = !{!775, !780}
!775 = !DIDerivedType(tag: DW_TAG_member, scope: !773, file: !747, line: 51, baseType: !776, size: 64)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !773, file: !747, line: 51, size: 64, elements: !777)
!777 = !{!778, !779}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !776, file: !747, line: 52, baseType: !205, size: 32)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !776, file: !747, line: 52, baseType: !205, size: 32, offset: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !773, file: !747, line: 54, baseType: !208, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !770, file: !747, line: 56, baseType: !206, size: 64, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !746, file: !747, line: 89, baseType: !710, size: 64, offset: 384)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !746, file: !747, line: 91, baseType: !784, size: 256, offset: 448)
!784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 256, elements: !353)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !746, file: !747, line: 94, baseType: !786, size: 64, offset: 704)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !787, line: 25, size: 64, elements: !788)
!787 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!788 = !{!789}
!789 = !DIDerivedType(tag: DW_TAG_member, scope: !786, file: !787, line: 26, baseType: !790, size: 64)
!790 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !786, file: !787, line: 26, size: 64, elements: !791)
!791 = !{!792, !793}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !790, file: !787, line: 28, baseType: !190, size: 64, align: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, scope: !790, file: !787, line: 30, baseType: !794, size: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !790, file: !787, line: 30, size: 64, elements: !795)
!795 = !{!796, !797}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !794, file: !787, line: 31, baseType: !362, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !794, file: !787, line: 32, baseType: !123, size: 32, offset: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !746, file: !747, line: 95, baseType: !799, size: 64, offset: 768)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !801)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !747, line: 128, size: 1024, align: 512, elements: !802)
!802 = !{!803, !807, !808, !815, !821, !825, !829, !833, !834, !838, !842, !4080, !4084}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !801, file: !747, line: 129, baseType: !804, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{!123, !745, !7}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !801, file: !747, line: 130, baseType: !804, size: 64, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !801, file: !747, line: 131, baseType: !809, size: 64, offset: 128)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{!123, !812, !814}
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !746)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !801, file: !747, line: 132, baseType: !816, size: 64, offset: 192)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{!123, !812, !7, !223, !819}
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !770)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !801, file: !747, line: 134, baseType: !822, size: 64, offset: 256)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{!123, !812}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !801, file: !747, line: 135, baseType: !826, size: 64, offset: 320)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DISubroutineType(types: !828)
!828 = !{!123, !745}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !801, file: !747, line: 136, baseType: !830, size: 64, offset: 384)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{null, !745}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !801, file: !747, line: 137, baseType: !830, size: 64, offset: 448)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !801, file: !747, line: 138, baseType: !835, size: 64, offset: 512)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DISubroutineType(types: !837)
!837 = !{null, !745, !710}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !801, file: !747, line: 139, baseType: !839, size: 64, offset: 576)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!230, !745, !230, !123}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !801, file: !747, line: 140, baseType: !843, size: 64, offset: 640)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{!846, !4079}
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !848, line: 70, size: 256, elements: !849)
!848 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!849 = !{!850, !851, !4075, !4076}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !847, file: !848, line: 71, baseType: !745, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !847, file: !848, line: 72, baseType: !852, size: 64, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !854)
!854 = !{!855, !856, !859, !860, !861, !862, !1286, !2499, !2539, !2624, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2641, !2645, !2646, !2647, !2653, !2656, !2659, !2660, !2661, !2702, !4009, !4010, !4011, !4012, !4013, !4014, !4017, !4018, !4025, !4026, !4027, !4028, !4029, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !853, file: !14, line: 1191, baseType: !430, size: 128)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !853, file: !14, line: 1192, baseType: !857, size: 32, offset: 128)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !194, line: 21, baseType: !858)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !194, line: 18, baseType: !205)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !853, file: !14, line: 1193, baseType: !199, size: 8, offset: 160)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !853, file: !14, line: 1194, baseType: !200, size: 64, offset: 192)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !853, file: !14, line: 1195, baseType: !213, size: 64, offset: 256)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !853, file: !14, line: 1196, baseType: !863, size: 64, offset: 320)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !865)
!865 = !{!866, !867, !868, !874, !878, !882, !886, !1271, !1272, !1276, !1278, !1279, !1280, !1282, !1283, !1284, !1285}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !864, file: !14, line: 2367, baseType: !223, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !864, file: !14, line: 2368, baseType: !123, size: 32, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !864, file: !14, line: 2376, baseType: !869, size: 64, offset: 128)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{!123, !872}
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !848, line: 21, flags: DIFlagFwdDecl)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !864, file: !14, line: 2377, baseType: !875, size: 64, offset: 192)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !877)
!877 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !864, file: !14, line: 2378, baseType: !879, size: 64, offset: 256)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DISubroutineType(types: !881)
!881 = !{!745, !863, !123, !223, !399}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !864, file: !14, line: 2380, baseType: !883, size: 64, offset: 320)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DISubroutineType(types: !885)
!885 = !{null, !852}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !864, file: !14, line: 2381, baseType: !887, size: 64, offset: 384)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !889)
!889 = !{!890, !891, !892, !893, !914, !940, !941, !942, !943, !947, !952, !953, !965, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1035, !1039, !1064, !1085, !1086, !1087, !1088, !1097, !1120, !1121, !1124, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1138, !1139, !1229, !1237, !1238, !1239, !1241, !1245, !1246, !1250, !1251, !1252, !1253, !1255, !1256, !1257, !1264, !1265, !1266, !1270}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !888, file: !6, line: 403, baseType: !5, size: 32)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !888, file: !6, line: 406, baseType: !430, size: 128, offset: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !888, file: !6, line: 409, baseType: !300, size: 448, offset: 192)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !888, file: !6, line: 417, baseType: !894, size: 768, offset: 640)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !895)
!895 = !{!896, !897, !898, !899, !902}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !894, file: !6, line: 46, baseType: !595, size: 512)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !894, file: !6, line: 47, baseType: !887, size: 64, offset: 512)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !894, file: !6, line: 48, baseType: !601, size: 64, offset: 576)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !894, file: !6, line: 49, baseType: !900, size: 64, offset: 640)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !894, file: !6, line: 50, baseType: !903, size: 64, offset: 704)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !905, line: 26, size: 256, elements: !906)
!905 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!906 = !{!907, !908}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !904, file: !905, line: 27, baseType: !7, size: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !904, file: !905, line: 28, baseType: !909, size: 192, offset: 64)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !910, line: 43, size: 192, elements: !911)
!910 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!911 = !{!912, !913}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !909, file: !910, line: 44, baseType: !529, size: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !909, file: !910, line: 45, baseType: !430, size: 128, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !888, file: !6, line: 418, baseType: !915, size: 64, offset: 1408)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !917)
!917 = !{!918, !919, !924, !928, !932, !936}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !916, file: !6, line: 54, baseType: !672, size: 128)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !916, file: !6, line: 55, baseType: !920, size: 64, offset: 128)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DISubroutineType(types: !922)
!922 = !{!667, !915, !923, !230}
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !916, file: !6, line: 57, baseType: !925, size: 64, offset: 192)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DISubroutineType(types: !927)
!927 = !{!667, !915, !923, !223, !209}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !916, file: !6, line: 59, baseType: !929, size: 64, offset: 256)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DISubroutineType(types: !931)
!931 = !{null, !887, !223}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !916, file: !6, line: 60, baseType: !933, size: 64, offset: 320)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DISubroutineType(types: !935)
!935 = !{!123, !887}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !916, file: !6, line: 61, baseType: !937, size: 64, offset: 384)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DISubroutineType(types: !939)
!939 = !{null, !887}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !888, file: !6, line: 419, baseType: !223, size: 64, offset: 1472)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !888, file: !6, line: 420, baseType: !223, size: 64, offset: 1536)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !888, file: !6, line: 421, baseType: !601, size: 64, offset: 1600)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !888, file: !6, line: 424, baseType: !944, size: 64, offset: 1664)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !946)
!946 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !888, file: !6, line: 425, baseType: !948, size: 64, offset: 1728)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !950)
!950 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !197, line: 20, baseType: !951)
!951 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !187, line: 26, baseType: !123)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !888, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !888, file: !6, line: 435, baseType: !954, size: 256, offset: 1856)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !955, line: 66, size: 256, elements: !956)
!955 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!956 = !{!957, !958, !959, !964}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !954, file: !955, line: 67, baseType: !444, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !954, file: !955, line: 68, baseType: !529, size: 32, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !954, file: !955, line: 70, baseType: !960, size: 32, offset: 96)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !961, line: 15, size: 32, elements: !962)
!961 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!962 = !{!963}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !960, file: !961, line: 20, baseType: !382, size: 32)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !954, file: !955, line: 72, baseType: !430, size: 128, offset: 128)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !888, file: !6, line: 437, baseType: !966, size: 64, offset: 2112)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !968, line: 69, size: 320, elements: !969)
!968 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!969 = !{!970, !971, !972, !992, !994, !998, !999}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !967, file: !968, line: 70, baseType: !223, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !967, file: !968, line: 71, baseType: !887, size: 64, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !967, file: !968, line: 72, baseType: !973, size: 64, offset: 128)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !975)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !968, line: 47, size: 256, elements: !976)
!976 = !{!977, !978, !984, !988}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !975, file: !968, line: 49, baseType: !7, size: 32)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !975, file: !968, line: 51, baseType: !979, size: 64, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DISubroutineType(types: !981)
!981 = !{!123, !223, !982}
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !967)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !975, file: !968, line: 53, baseType: !985, size: 64, offset: 128)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DISubroutineType(types: !987)
!987 = !{!123, !230, !982}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !975, file: !968, line: 55, baseType: !989, size: 64, offset: 192)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DISubroutineType(types: !991)
!991 = !{null, !399}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !967, file: !968, line: 73, baseType: !993, size: 16, offset: 192)
!993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !395)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !967, file: !968, line: 74, baseType: !995, size: 8, offset: 208)
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !197, line: 16, baseType: !996)
!996 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !187, line: 20, baseType: !997)
!997 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !967, file: !968, line: 75, baseType: !196, size: 8, offset: 216)
!999 = !DIDerivedType(tag: DW_TAG_member, scope: !967, file: !968, line: 76, baseType: !1000, size: 64, offset: 256)
!1000 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !967, file: !968, line: 76, size: 64, elements: !1001)
!1001 = !{!1002, !1003, !1010}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1000, file: !968, line: 77, baseType: !399, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1000, file: !968, line: 78, baseType: !1004, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1006)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !968, line: 86, size: 128, elements: !1007)
!1007 = !{!1008, !1009}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1006, file: !968, line: 87, baseType: !7, size: 32)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1006, file: !968, line: 88, baseType: !230, size: 64, offset: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1000, file: !968, line: 79, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1013)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !968, line: 92, size: 256, elements: !1014)
!1014 = !{!1015, !1016, !1017, !1018, !1019}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1013, file: !968, line: 94, baseType: !7, size: 32)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1013, file: !968, line: 95, baseType: !7, size: 32, offset: 32)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1013, file: !968, line: 96, baseType: !531, size: 64, offset: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1013, file: !968, line: 97, baseType: !973, size: 64, offset: 128)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1013, file: !968, line: 98, baseType: !399, size: 64, offset: 192)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !888, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !888, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !888, file: !6, line: 442, baseType: !944, size: 64, offset: 2240)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !888, file: !6, line: 443, baseType: !948, size: 64, offset: 2304)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !888, file: !6, line: 444, baseType: !520, size: 8, offset: 2368)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !888, file: !6, line: 451, baseType: !520, size: 8, offset: 2376)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !888, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !888, file: !6, line: 455, baseType: !1028, size: 64, offset: 2432)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1030, line: 23, size: 96, elements: !1031)
!1030 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1031 = !{!1032, !1033, !1034}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1029, file: !1030, line: 24, baseType: !123, size: 32)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1029, file: !1030, line: 24, baseType: !123, size: 32, offset: 32)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1029, file: !1030, line: 24, baseType: !123, size: 32, offset: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !888, file: !6, line: 458, baseType: !1036, size: 64, offset: 2496)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!123}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !888, file: !6, line: 460, baseType: !1040, size: 4032, align: 512, offset: 2560)
!1040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1041, size: 4032, elements: !1062)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !1042)
!1042 = !{!1043, !1044, !1045}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1041, file: !6, line: 363, baseType: !399, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1041, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1041, file: !6, line: 367, baseType: !1046, size: 448, offset: 128)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !1047)
!1047 = !{!1048, !1049}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1046, file: !6, line: 320, baseType: !887, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1046, file: !6, line: 321, baseType: !1050, size: 384, offset: 64)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1051, line: 40, size: 384, elements: !1052)
!1051 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1052 = !{!1053}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1050, file: !1051, line: 41, baseType: !1054, size: 384, align: 64)
!1054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1055, size: 384, align: 64, elements: !235)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1056, line: 5, size: 192, align: 64, elements: !1057)
!1056 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!1057 = !{!1058, !1059, !1061}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1055, file: !1056, line: 6, baseType: !200, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1055, file: !1056, line: 7, baseType: !1060, size: 64, offset: 64)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1055, file: !1056, line: 8, baseType: !1060, size: 64, offset: 128)
!1062 = !{!1063}
!1063 = !DISubrange(count: 7)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !888, file: !6, line: 463, baseType: !1065, size: 192, offset: 6592)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1066, line: 8, size: 192, elements: !1067)
!1066 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1067 = !{!1068, !1069, !1071}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1065, file: !1066, line: 10, baseType: !7, size: 32)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1065, file: !1066, line: 11, baseType: !1070, size: 64, offset: 64)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1065, file: !1066, line: 12, baseType: !1072, size: 64, offset: 128)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1074, line: 59, size: 48, elements: !1075)
!1074 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1075 = !{!1076, !1080, !1081, !1082, !1083, !1084}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1073, file: !1074, line: 60, baseType: !1077, size: 16)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !197, line: 18, baseType: !1078)
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !187, line: 23, baseType: !1079)
!1079 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1073, file: !1074, line: 61, baseType: !1077, size: 16, offset: 16)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1073, file: !1074, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1073, file: !1074, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1073, file: !1074, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1073, file: !1074, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !888, file: !6, line: 465, baseType: !200, size: 64, offset: 6784)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !888, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !888, file: !6, line: 470, baseType: !430, size: 128, offset: 6912)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !888, file: !6, line: 471, baseType: !1089, size: 64, offset: 7040)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1091, line: 33, size: 96, elements: !1092)
!1091 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1092 = !{!1093, !1094, !1095, !1096}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1090, file: !1091, line: 37, baseType: !123, size: 32)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1090, file: !1091, line: 43, baseType: !123, size: 32, offset: 32)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1090, file: !1091, line: 45, baseType: !202, size: 16, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1090, file: !1091, line: 47, baseType: !202, size: 16, offset: 80)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !888, file: !6, line: 476, baseType: !1098, size: 64, offset: 7104)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !1100)
!1100 = !{!1101, !1117, !1118, !1119}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1099, file: !6, line: 379, baseType: !1102, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1104, line: 204, baseType: !1105)
!1104 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1104, line: 197, size: 192, elements: !1106)
!1106 = !{!1107, !1109, !1110, !1111, !1113, !1115}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1105, file: !1104, line: 198, baseType: !1108, size: 32)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1104, line: 21, baseType: !186)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1105, file: !1104, line: 199, baseType: !199, size: 8, offset: 32)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1105, file: !1104, line: 200, baseType: !199, size: 8, offset: 40)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1105, file: !1104, line: 201, baseType: !1112, size: 16, offset: 48)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1104, line: 17, baseType: !201)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1105, file: !1104, line: 202, baseType: !1114, size: 64, offset: 64)
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1104, line: 16, baseType: !190)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1105, file: !1104, line: 203, baseType: !1116, size: 64, offset: 128)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1104, line: 22, baseType: !190)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1099, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1099, file: !6, line: 381, baseType: !230, size: 64, offset: 128)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1099, file: !6, line: 382, baseType: !230, size: 64, offset: 192)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !888, file: !6, line: 477, baseType: !1099, size: 256, offset: 7168)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !888, file: !6, line: 480, baseType: !1122, size: 64, offset: 7424)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !888, file: !6, line: 483, baseType: !1125, size: 64, offset: 7488)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !888, file: !6, line: 488, baseType: !230, size: 64, offset: 7552)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !888, file: !6, line: 492, baseType: !399, size: 64, offset: 7616)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !888, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !888, file: !6, line: 495, baseType: !399, size: 64, offset: 7744)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !888, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !888, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !888, file: !6, line: 500, baseType: !1134, size: 64, offset: 7872)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1136, line: 45, baseType: !1137)
!1136 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !888, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !888, file: !6, line: 504, baseType: !1140, size: 64, offset: 8000)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1143, line: 96, size: 192, elements: !1144)
!1143 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1144 = !{!1145, !1146, !1197, !1201}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1142, file: !1143, line: 97, baseType: !7, size: 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1142, file: !1143, line: 98, baseType: !1147, size: 64, offset: 64)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1143, line: 24, size: 3072, elements: !1149)
!1149 = !{!1150, !1152, !1153, !1154, !1155, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1194, !1195, !1196}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1148, file: !1143, line: 26, baseType: !1151, size: 128)
!1151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 128, elements: !235)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1148, file: !1143, line: 27, baseType: !1151, size: 128, offset: 128)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1148, file: !1143, line: 28, baseType: !123, size: 32, offset: 256)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1148, file: !1143, line: 31, baseType: !362, size: 32, align: 512, offset: 512)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1148, file: !1143, line: 32, baseType: !1156, size: 960, offset: 576)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1157, line: 206, size: 960, elements: !1158)
!1157 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1158 = !{!1159, !1168, !1171, !1173, !1174, !1176}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1156, file: !1157, line: 207, baseType: !1160, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !194, line: 232, size: 128, align: 64, elements: !1162)
!1162 = !{!1163, !1164}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1161, file: !194, line: 233, baseType: !1160, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1161, file: !194, line: 234, baseType: !1165, size: 64, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{null, !1160}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1156, file: !1157, line: 208, baseType: !1169, size: 256, offset: 64)
!1169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1170, size: 256, elements: !321)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1156, file: !1157, line: 209, baseType: !1172, size: 256, offset: 320)
!1172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 256, elements: !321)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1156, file: !1157, line: 213, baseType: !670, size: 64, offset: 576)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1156, file: !1157, line: 215, baseType: !1175, size: 256, offset: 640)
!1175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !670, size: 256, elements: !321)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1156, file: !1157, line: 216, baseType: !196, size: 8, offset: 896)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1148, file: !1143, line: 33, baseType: !200, size: 64, offset: 1536)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1148, file: !1143, line: 34, baseType: !200, size: 64, offset: 1600)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1148, file: !1143, line: 35, baseType: !520, size: 8, offset: 1664)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1148, file: !1143, line: 36, baseType: !460, size: 320, offset: 1728)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1148, file: !1143, line: 37, baseType: !441, size: 256, offset: 2048)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1148, file: !1143, line: 38, baseType: !1161, size: 128, align: 64, offset: 2304)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1148, file: !1143, line: 39, baseType: !1184, size: 64, offset: 2432)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1143, line: 49, size: 768, elements: !1186)
!1186 = !{!1187, !1188, !1189, !1190, !1191, !1192, !1193}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1185, file: !1143, line: 50, baseType: !362, size: 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1185, file: !1143, line: 51, baseType: !1172, size: 256, offset: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1185, file: !1143, line: 53, baseType: !1172, size: 256, offset: 320)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1185, file: !1143, line: 54, baseType: !200, size: 64, offset: 576)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1185, file: !1143, line: 55, baseType: !1184, size: 64, offset: 640)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1185, file: !1143, line: 56, baseType: !123, size: 32, offset: 704)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1185, file: !1143, line: 57, baseType: !123, size: 32, offset: 736)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1148, file: !1143, line: 40, baseType: !200, size: 64, offset: 2496)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1148, file: !1143, line: 42, baseType: !123, size: 32, offset: 2560)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1148, file: !1143, line: 43, baseType: !1141, size: 64, offset: 2624)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1142, file: !1143, line: 99, baseType: !1198, offset: 128)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1199, line: 211, elements: !1200)
!1199 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1200 = !{}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1142, file: !1143, line: 100, baseType: !1202, size: 64, offset: 128)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1143, line: 63, size: 3008, elements: !1204)
!1204 = !{!1205, !1206, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1203, file: !1143, line: 64, baseType: !1184, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1203, file: !1143, line: 65, baseType: !1207, size: 192, offset: 64)
!1207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1184, size: 192, elements: !636)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1203, file: !1143, line: 67, baseType: !123, size: 32, offset: 256)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1203, file: !1143, line: 68, baseType: !954, size: 256, offset: 320)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1203, file: !1143, line: 69, baseType: !362, size: 32, offset: 576)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1203, file: !1143, line: 70, baseType: !954, size: 256, offset: 640)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1203, file: !1143, line: 71, baseType: !200, size: 64, offset: 896)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1203, file: !1143, line: 72, baseType: !200, size: 64, offset: 960)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1203, file: !1143, line: 73, baseType: !200, size: 64, offset: 1024)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1203, file: !1143, line: 74, baseType: !200, size: 64, offset: 1088)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1203, file: !1143, line: 75, baseType: !200, size: 64, offset: 1152)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1203, file: !1143, line: 76, baseType: !200, size: 64, offset: 1216)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1203, file: !1143, line: 77, baseType: !200, size: 64, offset: 1280)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1203, file: !1143, line: 78, baseType: !200, size: 64, offset: 1344)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1203, file: !1143, line: 79, baseType: !520, size: 8, offset: 1408)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1203, file: !1143, line: 80, baseType: !200, size: 64, offset: 1472)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1203, file: !1143, line: 81, baseType: !954, size: 256, offset: 1536)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1203, file: !1143, line: 82, baseType: !904, size: 256, offset: 1792)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1203, file: !1143, line: 84, baseType: !382, size: 32, offset: 2048)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1203, file: !1143, line: 87, baseType: !200, size: 64, offset: 2112)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1203, file: !1143, line: 88, baseType: !200, size: 64, offset: 2176)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1203, file: !1143, line: 89, baseType: !437, size: 704, offset: 2240)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1203, file: !1143, line: 90, baseType: !1141, size: 64, offset: 2944)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !888, file: !6, line: 515, baseType: !1230, size: 64, offset: 8064)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1232, line: 117, size: 128, elements: !1233)
!1232 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1233 = !{!1234, !1235, !1236}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1231, file: !1232, line: 118, baseType: !950, size: 32)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1231, file: !1232, line: 119, baseType: !950, size: 32, offset: 32)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1231, file: !1232, line: 120, baseType: !670, size: 64, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !888, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !888, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !888, file: !6, line: 520, baseType: !1240, size: 64, offset: 8192)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !888, file: !6, line: 523, baseType: !1242, size: 64, offset: 8256)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !888, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !888, file: !6, line: 525, baseType: !1247, size: 64, offset: 8384)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !888, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !888, file: !6, line: 533, baseType: !399, size: 64, offset: 8512)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !888, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !888, file: !6, line: 535, baseType: !1254, size: 64, offset: 8640)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !888, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !888, file: !6, line: 539, baseType: !123, size: 32, offset: 8736)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !888, file: !6, line: 540, baseType: !1258, size: 64, offset: 8768)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1260, line: 32, size: 64, elements: !1261)
!1260 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1261 = !{!1262, !1263}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1259, file: !1260, line: 33, baseType: !950, size: 32)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1259, file: !1260, line: 34, baseType: !950, size: 32, offset: 32)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !888, file: !6, line: 563, baseType: !430, size: 128, offset: 8832)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !888, file: !6, line: 565, baseType: !430, size: 128, offset: 8960)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !888, file: !6, line: 568, baseType: !1267, size: 64, offset: 9088)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{null}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !888, file: !6, line: 570, baseType: !382, size: 32, offset: 9152)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !864, file: !14, line: 2382, baseType: !863, size: 64, offset: 448)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !864, file: !14, line: 2383, baseType: !1273, size: 64, offset: 512)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !194, line: 194, size: 64, elements: !1274)
!1274 = !{!1275}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1273, file: !194, line: 195, baseType: !467, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !864, file: !14, line: 2385, baseType: !1277, offset: 576)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1199, line: 206, elements: !1200)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !864, file: !14, line: 2386, baseType: !1277, offset: 576)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !864, file: !14, line: 2387, baseType: !1277, offset: 576)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !864, file: !14, line: 2388, baseType: !1281, offset: 576)
!1281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1277, elements: !636)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !864, file: !14, line: 2390, baseType: !1277, offset: 576)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !864, file: !14, line: 2391, baseType: !1277, offset: 576)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !864, file: !14, line: 2392, baseType: !1277, offset: 576)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !864, file: !14, line: 2393, baseType: !1277, offset: 576)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !853, file: !14, line: 1197, baseType: !1287, size: 64, offset: 384)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1289)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !1290)
!1290 = !{!1291, !1295, !1299, !1300, !1304, !1310, !1314, !1315, !1316, !1320, !1324, !1328, !1329, !1330, !1336, !1340, !1341, !2424, !2425, !2426, !2427, !2431, !2435, !2482, !2497, !2498}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1289, file: !14, line: 2058, baseType: !1292, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!710, !852}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1289, file: !14, line: 2059, baseType: !1296, size: 64, offset: 64)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{null, !710}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1289, file: !14, line: 2060, baseType: !1296, size: 64, offset: 128)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1289, file: !14, line: 2062, baseType: !1301, size: 64, offset: 192)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{null, !710, !123}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1289, file: !14, line: 2063, baseType: !1305, size: 64, offset: 256)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!123, !710, !1308}
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1289, file: !14, line: 2064, baseType: !1311, size: 64, offset: 320)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{!123, !710}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1289, file: !14, line: 2065, baseType: !1296, size: 64, offset: 384)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1289, file: !14, line: 2066, baseType: !883, size: 64, offset: 448)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1289, file: !14, line: 2067, baseType: !1317, size: 64, offset: 512)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{!123, !852, !123}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1289, file: !14, line: 2068, baseType: !1321, size: 64, offset: 576)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!123, !852, !13}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1289, file: !14, line: 2069, baseType: !1325, size: 64, offset: 640)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!123, !852}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1289, file: !14, line: 2070, baseType: !1321, size: 64, offset: 704)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1289, file: !14, line: 2071, baseType: !1325, size: 64, offset: 768)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1289, file: !14, line: 2072, baseType: !1331, size: 64, offset: 832)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!123, !745, !1334}
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1289, file: !14, line: 2073, baseType: !1337, size: 64, offset: 896)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!123, !852, !1070, !230}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1289, file: !14, line: 2074, baseType: !883, size: 64, offset: 960)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1289, file: !14, line: 2076, baseType: !1342, size: 64, offset: 1024)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!123, !1345, !745}
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1347, line: 17, size: 960, elements: !1348)
!1347 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1348 = !{!1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1379, !1380, !2423}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1346, file: !1347, line: 18, baseType: !230, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1346, file: !1347, line: 19, baseType: !209, size: 64, offset: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1346, file: !1347, line: 20, baseType: !209, size: 64, offset: 128)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1346, file: !1347, line: 21, baseType: !209, size: 64, offset: 192)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1346, file: !1347, line: 22, baseType: !209, size: 64, offset: 256)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1346, file: !1347, line: 23, baseType: !213, size: 64, offset: 320)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1346, file: !1347, line: 24, baseType: !213, size: 64, offset: 384)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1346, file: !1347, line: 25, baseType: !954, size: 256, offset: 448)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1346, file: !1347, line: 26, baseType: !1358, size: 64, offset: 704)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1360)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1347, line: 32, size: 256, elements: !1361)
!1361 = !{!1362, !1367, !1371, !1375}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1360, file: !1347, line: 33, baseType: !1363, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!399, !1345, !1366}
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1360, file: !1347, line: 34, baseType: !1368, size: 64, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{null, !1345, !399}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1360, file: !1347, line: 35, baseType: !1372, size: 64, offset: 128)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!399, !1345, !399, !1366}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1360, file: !1347, line: 36, baseType: !1376, size: 64, offset: 192)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!123, !1345, !399}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1346, file: !1347, line: 27, baseType: !123, size: 32, offset: 768)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1346, file: !1347, line: 28, baseType: !1381, size: 64, offset: 832)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1383)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1384)
!1384 = !{!1385, !1396, !1397, !1399, !1400, !1401, !1402, !1403, !1458, !1654, !1663, !1669, !1670, !2413, !2414, !2415, !2416, !2418, !2419, !2422}
!1385 = !DIDerivedType(tag: DW_TAG_member, scope: !1383, file: !14, line: 995, baseType: !1386, size: 128)
!1386 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1383, file: !14, line: 995, size: 128, elements: !1387)
!1387 = !{!1388, !1394, !1395}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1386, file: !14, line: 996, baseType: !1389, size: 64)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1390, line: 60, size: 64, elements: !1391)
!1390 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1391 = !{!1392}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1389, file: !1390, line: 61, baseType: !1393, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1386, file: !14, line: 997, baseType: !1161, size: 128, align: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1386, file: !14, line: 998, baseType: !7, size: 32)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1383, file: !14, line: 1005, baseType: !362, size: 32, offset: 128)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1383, file: !14, line: 1006, baseType: !1398, size: 32, offset: 160)
!1398 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !194, line: 156, baseType: !7)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1383, file: !14, line: 1007, baseType: !444, size: 64, offset: 192)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1383, file: !14, line: 1008, baseType: !954, size: 256, offset: 256)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1383, file: !14, line: 1009, baseType: !213, size: 64, offset: 512)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1383, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1383, file: !14, line: 1011, baseType: !1404, size: 256, offset: 640)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1405)
!1405 = !{!1406, !1427, !1454, !1455, !1456, !1457}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1404, file: !14, line: 949, baseType: !1407, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1408, line: 34, baseType: !1409)
!1408 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1408, line: 25, size: 64, elements: !1410)
!1410 = !{!1411}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1409, file: !1408, line: 26, baseType: !1412, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1413, line: 27, baseType: !1414)
!1413 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1413, line: 13, size: 64, elements: !1415)
!1415 = !{!1416, !1426}
!1416 = !DIDerivedType(tag: DW_TAG_member, scope: !1414, file: !1413, line: 14, baseType: !1417, size: 32)
!1417 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1414, file: !1413, line: 14, size: 32, elements: !1418)
!1418 = !{!1419, !1420}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1417, file: !1413, line: 15, baseType: !382, size: 32)
!1420 = !DIDerivedType(tag: DW_TAG_member, scope: !1417, file: !1413, line: 16, baseType: !1421, size: 32)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1417, file: !1413, line: 16, size: 32, elements: !1422)
!1422 = !{!1423, !1424}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1421, file: !1413, line: 18, baseType: !196, size: 8)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1421, file: !1413, line: 19, baseType: !1425, size: 24, offset: 8)
!1425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 24, elements: !636)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1414, file: !1413, line: 26, baseType: !374, size: 32, offset: 32)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1404, file: !14, line: 950, baseType: !1428, size: 64, offset: 64)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !19, line: 59, size: 768, elements: !1430)
!1430 = !{!1431, !1437, !1438, !1439, !1441, !1442, !1443, !1444}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1429, file: !19, line: 61, baseType: !1432, size: 32)
!1432 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1433, line: 113, baseType: !1434)
!1433 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1433, line: 111, size: 32, elements: !1435)
!1435 = !{!1436}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1434, file: !1433, line: 112, baseType: !382, size: 32)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1429, file: !19, line: 62, baseType: !7, size: 32, offset: 32)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1429, file: !19, line: 63, baseType: !362, size: 32, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1429, file: !19, line: 65, baseType: !1440, size: 256, offset: 128)
!1440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1273, size: 256, elements: !321)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1429, file: !19, line: 66, baseType: !1273, size: 64, offset: 384)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1429, file: !19, line: 68, baseType: !572, size: 192, offset: 448)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1429, file: !19, line: 69, baseType: !1161, size: 128, align: 64, offset: 640)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1429, file: !19, line: 70, baseType: !1445, offset: 768)
!1445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1446, elements: !1452)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !19, line: 54, size: 128, elements: !1447)
!1447 = !{!1448, !1449}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1446, file: !19, line: 55, baseType: !123, size: 32)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1446, file: !19, line: 56, baseType: !1450, size: 64, offset: 64)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !19, line: 56, flags: DIFlagFwdDecl)
!1452 = !{!1453}
!1453 = !DISubrange(count: -1)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1404, file: !14, line: 951, baseType: !18, size: 32, offset: 128)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1404, file: !14, line: 952, baseType: !716, size: 32, offset: 160)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1404, file: !14, line: 952, baseType: !716, size: 32, offset: 192)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1404, file: !14, line: 953, baseType: !123, size: 32, offset: 224)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1383, file: !14, line: 1012, baseType: !1459, size: 64, offset: 896)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1461)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1462, line: 110, size: 1472, elements: !1463)
!1462 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1463 = !{!1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1480, !1481, !1482, !1483, !1484, !1485, !1599, !1600, !1601, !1602, !1603, !1634, !1637, !1641, !1649}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1461, file: !1462, line: 111, baseType: !444, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1461, file: !1462, line: 112, baseType: !716, size: 32, offset: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1461, file: !1462, line: 113, baseType: !725, size: 32, offset: 96)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1461, file: !1462, line: 114, baseType: !716, size: 32, offset: 128)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1461, file: !1462, line: 115, baseType: !725, size: 32, offset: 160)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1461, file: !1462, line: 116, baseType: !716, size: 32, offset: 192)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1461, file: !1462, line: 117, baseType: !725, size: 32, offset: 224)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1461, file: !1462, line: 118, baseType: !716, size: 32, offset: 256)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1461, file: !1462, line: 119, baseType: !725, size: 32, offset: 288)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1461, file: !1462, line: 120, baseType: !7, size: 32, offset: 320)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1461, file: !1462, line: 121, baseType: !1475, size: 64, offset: 384)
!1475 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1476, line: 24, baseType: !1477)
!1476 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1476, line: 24, size: 64, elements: !1478)
!1478 = !{!1479}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1477, file: !1476, line: 24, baseType: !208, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1461, file: !1462, line: 122, baseType: !1475, size: 64, offset: 448)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1461, file: !1462, line: 123, baseType: !1475, size: 64, offset: 512)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1461, file: !1462, line: 124, baseType: !1475, size: 64, offset: 576)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1461, file: !1462, line: 125, baseType: !1475, size: 64, offset: 640)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1461, file: !1462, line: 127, baseType: !199, size: 8, offset: 704)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1461, file: !1462, line: 129, baseType: !1486, size: 64, offset: 768)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1488, line: 195, size: 1728, elements: !1489)
!1488 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1489 = !{!1490, !1491, !1494, !1499, !1508, !1511, !1512, !1519, !1520, !1521, !1522, !1524, !1525, !1526, !1527, !1528, !1563, !1584}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1487, file: !1488, line: 196, baseType: !1432, size: 32)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1487, file: !1488, line: 197, baseType: !1492, size: 32, offset: 32)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1488, line: 28, baseType: !1493)
!1493 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !194, line: 104, baseType: !950)
!1494 = !DIDerivedType(tag: DW_TAG_member, scope: !1487, file: !1488, line: 198, baseType: !1495, size: 192, offset: 64)
!1495 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1487, file: !1488, line: 198, size: 192, elements: !1496)
!1496 = !{!1497, !1498}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1495, file: !1488, line: 199, baseType: !430, size: 128)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1495, file: !1488, line: 200, baseType: !1055, size: 192, align: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1487, file: !1488, line: 205, baseType: !1500, size: 320, offset: 256)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1501, line: 48, size: 320, elements: !1502)
!1501 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1502 = !{!1503, !1504, !1505, !1506, !1507}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1500, file: !1501, line: 49, baseType: !444, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1500, file: !1501, line: 55, baseType: !444, size: 64, offset: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1500, file: !1501, line: 57, baseType: !960, size: 32, offset: 128)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1500, file: !1501, line: 59, baseType: !529, size: 32, offset: 160)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1500, file: !1501, line: 60, baseType: !430, size: 128, offset: 192)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1487, file: !1488, line: 206, baseType: !1509, size: 64, offset: 576)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1488, line: 206, flags: DIFlagFwdDecl)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1487, file: !1488, line: 207, baseType: !399, size: 64, offset: 640)
!1512 = !DIDerivedType(tag: DW_TAG_member, scope: !1487, file: !1488, line: 208, baseType: !1513, size: 64, offset: 704)
!1513 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1487, file: !1488, line: 208, size: 64, elements: !1514)
!1514 = !{!1515, !1518}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1513, file: !1488, line: 209, baseType: !1516, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1517, line: 8, baseType: !451)
!1517 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1513, file: !1488, line: 210, baseType: !1516, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1487, file: !1488, line: 212, baseType: !1516, size: 64, offset: 768)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1487, file: !1488, line: 213, baseType: !716, size: 32, offset: 832)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1487, file: !1488, line: 214, baseType: !725, size: 32, offset: 864)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1487, file: !1488, line: 215, baseType: !1523, size: 32, offset: 896)
!1523 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1488, line: 31, baseType: !204)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1487, file: !1488, line: 216, baseType: !202, size: 16, offset: 928)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1487, file: !1488, line: 217, baseType: !202, size: 16, offset: 944)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1487, file: !1488, line: 221, baseType: !1079, size: 16, offset: 960)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1487, file: !1488, line: 228, baseType: !200, size: 64, offset: 1024)
!1528 = !DIDerivedType(tag: DW_TAG_member, scope: !1487, file: !1488, line: 245, baseType: !1529, size: 320, offset: 1088)
!1529 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1487, file: !1488, line: 245, size: 320, elements: !1530)
!1530 = !{!1531, !1555}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1529, file: !1488, line: 246, baseType: !1532, size: 320)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1488, line: 114, size: 320, elements: !1533)
!1533 = !{!1534, !1535, !1544, !1547, !1554}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1532, file: !1488, line: 116, baseType: !200, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, scope: !1532, file: !1488, line: 117, baseType: !1536, size: 64, offset: 64)
!1536 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1532, file: !1488, line: 117, size: 64, elements: !1537)
!1537 = !{!1538, !1543}
!1538 = !DIDerivedType(tag: DW_TAG_member, scope: !1536, file: !1488, line: 118, baseType: !1539, size: 64)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1536, file: !1488, line: 118, size: 64, elements: !1540)
!1540 = !{!1541, !1542}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1539, file: !1488, line: 120, baseType: !395, size: 16)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1539, file: !1488, line: 121, baseType: !311, size: 48, offset: 16)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1536, file: !1488, line: 127, baseType: !200, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1532, file: !1488, line: 129, baseType: !1545, size: 64, offset: 128)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1488, line: 102, flags: DIFlagFwdDecl)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1532, file: !1488, line: 130, baseType: !1548, size: 64, offset: 192)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1488, line: 108, size: 192, elements: !1550)
!1550 = !{!1551, !1552, !1553}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1549, file: !1488, line: 109, baseType: !1161, size: 128, align: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1549, file: !1488, line: 110, baseType: !1432, size: 32, offset: 128)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1549, file: !1488, line: 111, baseType: !520, size: 8, offset: 160)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1532, file: !1488, line: 131, baseType: !223, size: 64, offset: 256)
!1555 = !DIDerivedType(tag: DW_TAG_member, scope: !1529, file: !1488, line: 247, baseType: !1556, size: 320)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1529, file: !1488, line: 247, size: 320, elements: !1557)
!1557 = !{!1558, !1559, !1560, !1561, !1562}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1556, file: !1488, line: 248, baseType: !200, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1556, file: !1488, line: 249, baseType: !200, size: 64, offset: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1556, file: !1488, line: 250, baseType: !1545, size: 64, offset: 128)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1556, file: !1488, line: 251, baseType: !1548, size: 64, offset: 192)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1556, file: !1488, line: 252, baseType: !230, size: 64, offset: 256)
!1563 = !DIDerivedType(tag: DW_TAG_member, scope: !1487, file: !1488, line: 260, baseType: !1564, size: 256, offset: 1408)
!1564 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1487, file: !1488, line: 260, size: 256, elements: !1565)
!1565 = !{!1566, !1572}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1564, file: !1488, line: 261, baseType: !1567, size: 256)
!1567 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1488, line: 134, size: 256, elements: !1568)
!1568 = !{!1569, !1570}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1567, file: !1488, line: 135, baseType: !399, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1567, file: !1488, line: 136, baseType: !1571, size: 256)
!1571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 256, elements: !321)
!1572 = !DIDerivedType(tag: DW_TAG_member, scope: !1564, file: !1488, line: 262, baseType: !1573, size: 256)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1564, file: !1488, line: 262, size: 256, elements: !1574)
!1574 = !{!1575, !1576}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1573, file: !1488, line: 264, baseType: !430, size: 128)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1573, file: !1488, line: 265, baseType: !1577, size: 128, offset: 128)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1578, line: 22, size: 128, elements: !1579)
!1578 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1579 = !{!1580, !1583}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1577, file: !1578, line: 23, baseType: !1581, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1578, line: 23, flags: DIFlagFwdDecl)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1577, file: !1578, line: 24, baseType: !200, size: 64, offset: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1487, file: !1488, line: 280, baseType: !1585, size: 64, offset: 1664)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1488, line: 176, size: 192, elements: !1587)
!1587 = !{!1588, !1597, !1598}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1586, file: !1488, line: 177, baseType: !1589, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1488, line: 171, baseType: !1590)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!123, !1486, !1593, !1595, !1486}
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1546)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1567)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1586, file: !1488, line: 178, baseType: !1486, size: 64, offset: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1586, file: !1488, line: 179, baseType: !1545, size: 64, offset: 128)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1461, file: !1462, line: 130, baseType: !1486, size: 64, offset: 832)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1461, file: !1462, line: 131, baseType: !1486, size: 64, offset: 896)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1461, file: !1462, line: 132, baseType: !1486, size: 64, offset: 960)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1461, file: !1462, line: 135, baseType: !399, size: 64, offset: 1024)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1461, file: !1462, line: 137, baseType: !1604, size: 64, offset: 1088)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1606, line: 14, size: 1088, elements: !1607)
!1606 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1607 = !{!1608, !1609, !1618, !1619, !1620, !1621, !1622, !1623}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1605, file: !1606, line: 15, baseType: !1432, size: 32)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1605, file: !1606, line: 17, baseType: !1610, size: 320, offset: 64)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1611, line: 22, size: 320, elements: !1612)
!1611 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1612 = !{!1613, !1614, !1615, !1616}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1610, file: !1611, line: 23, baseType: !529, size: 32)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1610, file: !1611, line: 24, baseType: !450, size: 64, offset: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1610, file: !1611, line: 26, baseType: !430, size: 128, offset: 128)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1610, file: !1611, line: 28, baseType: !1617, size: 64, offset: 256)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1605, file: !1606, line: 19, baseType: !200, size: 64, offset: 384)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1605, file: !1606, line: 20, baseType: !444, size: 64, offset: 448)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1605, file: !1606, line: 23, baseType: !464, size: 128, offset: 512)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1605, file: !1606, line: 24, baseType: !716, size: 32, offset: 640)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1605, file: !1606, line: 29, baseType: !444, size: 64, offset: 704)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1605, file: !1606, line: 36, baseType: !1624, size: 320, offset: 768)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1625, line: 15, size: 320, elements: !1626)
!1625 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1626 = !{!1627, !1628, !1629, !1630, !1631, !1632, !1633}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1624, file: !1625, line: 16, baseType: !529, size: 32)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1624, file: !1625, line: 18, baseType: !123, size: 32, offset: 32)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1624, file: !1625, line: 19, baseType: !123, size: 32, offset: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1624, file: !1625, line: 20, baseType: !123, size: 32, offset: 96)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1624, file: !1625, line: 21, baseType: !123, size: 32, offset: 128)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1624, file: !1625, line: 22, baseType: !200, size: 64, offset: 192)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1624, file: !1625, line: 23, baseType: !200, size: 64, offset: 256)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1461, file: !1462, line: 138, baseType: !1635, size: 64, offset: 1152)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !35, line: 901, flags: DIFlagFwdDecl)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1461, file: !1462, line: 139, baseType: !1638, size: 64, offset: 1216)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1640, line: 16, flags: DIFlagFwdDecl)
!1640 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1461, file: !1462, line: 140, baseType: !1642, size: 64, offset: 1280)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1462, line: 25, size: 64, elements: !1644)
!1644 = !{!1645, !1646, !1647}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1643, file: !1462, line: 26, baseType: !382, size: 32)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1643, file: !1462, line: 27, baseType: !123, size: 32, offset: 32)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1643, file: !1462, line: 28, baseType: !1648, offset: 64)
!1648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !725, elements: !1452)
!1649 = !DIDerivedType(tag: DW_TAG_member, scope: !1461, file: !1462, line: 142, baseType: !1650, size: 128, offset: 1344)
!1650 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1461, file: !1462, line: 142, size: 128, elements: !1651)
!1651 = !{!1652, !1653}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1650, file: !1462, line: 143, baseType: !123, size: 32)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1650, file: !1462, line: 144, baseType: !1161, size: 128, align: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1383, file: !14, line: 1013, baseType: !1655, size: 256, offset: 960)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !1656)
!1656 = !{!1657, !1658, !1659, !1660, !1661, !1662}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1655, file: !14, line: 971, baseType: !200, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1655, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1655, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1655, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1655, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1655, file: !14, line: 976, baseType: !213, size: 64, offset: 192)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1383, file: !14, line: 1014, baseType: !1664, size: 128, offset: 1216)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1665, line: 8, size: 128, elements: !1666)
!1665 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1666 = !{!1667, !1668}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1664, file: !1665, line: 9, baseType: !846, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1664, file: !1665, line: 10, baseType: !745, size: 64, offset: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1383, file: !14, line: 1015, baseType: !710, size: 64, offset: 1344)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1383, file: !14, line: 1016, baseType: !1671, size: 64, offset: 1408)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1673)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !1674)
!1674 = !{!1675, !1676, !1681, !1685, !1689, !2282, !2283, !2296, !2309, !2325, !2329, !2330, !2334, !2335, !2339, !2344, !2345, !2349, !2353, !2359, !2360, !2364, !2365, !2372, !2376, !2380, !2386, !2390, !2394, !2398, !2402, !2403, !2409}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1673, file: !14, line: 1915, baseType: !887, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1673, file: !14, line: 1916, baseType: !1677, size: 64, offset: 64)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!213, !1680, !213, !123}
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1673, file: !14, line: 1917, baseType: !1682, size: 64, offset: 128)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!667, !1680, !230, !209, !1366}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1673, file: !14, line: 1918, baseType: !1686, size: 64, offset: 192)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!667, !1680, !223, !209, !1366}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1673, file: !14, line: 1919, baseType: !1690, size: 64, offset: 256)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!667, !1693, !2225}
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1695)
!1695 = !{!1696, !1697, !1698, !1702, !1703, !1704, !1705}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1694, file: !14, line: 374, baseType: !1680, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1694, file: !14, line: 375, baseType: !213, size: 64, offset: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1694, file: !14, line: 376, baseType: !1699, size: 64, offset: 128)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{null, !1693, !670}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1694, file: !14, line: 377, baseType: !399, size: 64, offset: 192)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1694, file: !14, line: 378, baseType: !123, size: 32, offset: 256)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1694, file: !14, line: 379, baseType: !395, size: 16, offset: 288)
!1705 = !DIDerivedType(tag: DW_TAG_member, scope: !1694, file: !14, line: 380, baseType: !1706, size: 64, offset: 320)
!1706 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1694, file: !14, line: 380, size: 64, elements: !1707)
!1707 = !{!1708, !2221}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1706, file: !14, line: 386, baseType: !1709, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1711, line: 998, size: 448, elements: !1712)
!1711 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1712 = !{!1713, !2219, !2220}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !1710, file: !1711, line: 999, baseType: !1714, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !35, line: 293, size: 1536, elements: !1716)
!1716 = !{!1717, !2186, !2200}
!1717 = !DIDerivedType(tag: DW_TAG_member, scope: !1715, file: !35, line: 295, baseType: !1718, size: 512)
!1718 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1715, file: !35, line: 295, size: 512, elements: !1719)
!1719 = !{!1720, !1746}
!1720 = !DIDerivedType(tag: DW_TAG_member, scope: !1718, file: !35, line: 296, baseType: !1721, size: 448)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1718, file: !35, line: 296, size: 448, elements: !1722)
!1722 = !{!1723, !1724, !1733, !1734, !1735, !1744, !1745}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1721, file: !35, line: 298, baseType: !200, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, scope: !1721, file: !35, line: 299, baseType: !1725, size: 128, offset: 64)
!1725 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1721, file: !35, line: 299, size: 128, elements: !1726)
!1726 = !{!1727, !1728}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1725, file: !35, line: 300, baseType: !430, size: 128)
!1728 = !DIDerivedType(tag: DW_TAG_member, scope: !1725, file: !35, line: 302, baseType: !1729, size: 128)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1725, file: !35, line: 302, size: 128, elements: !1730)
!1730 = !{!1731, !1732}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1729, file: !35, line: 303, baseType: !399, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1729, file: !35, line: 305, baseType: !7, size: 32, offset: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1721, file: !35, line: 310, baseType: !706, size: 64, offset: 192)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1721, file: !35, line: 311, baseType: !200, size: 64, offset: 256)
!1735 = !DIDerivedType(tag: DW_TAG_member, scope: !1721, file: !35, line: 312, baseType: !1736, size: 64, offset: 320)
!1736 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1721, file: !35, line: 312, size: 64, elements: !1737)
!1737 = !{!1738, !1739}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1736, file: !35, line: 313, baseType: !399, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1736, file: !35, line: 314, baseType: !1740, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !35, line: 257, baseType: !1741)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 255, size: 64, elements: !1742)
!1742 = !{!1743}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1741, file: !35, line: 256, baseType: !200, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1721, file: !35, line: 316, baseType: !382, size: 32, offset: 384)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1721, file: !35, line: 317, baseType: !382, size: 32, offset: 416)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1718, file: !35, line: 323, baseType: !1747, size: 512, align: 128)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !35, line: 74, size: 512, align: 128, elements: !1748)
!1748 = !{!1749, !1750, !2180, !2185}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1747, file: !35, line: 75, baseType: !200, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, scope: !1747, file: !35, line: 83, baseType: !1751, size: 320, offset: 64)
!1751 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1747, file: !35, line: 83, size: 320, elements: !1752)
!1752 = !{!1753, !1774, !1788, !1792, !2179}
!1753 = !DIDerivedType(tag: DW_TAG_member, scope: !1751, file: !35, line: 84, baseType: !1754, size: 320)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1751, file: !35, line: 84, size: 320, elements: !1755)
!1755 = !{!1756, !1767, !1768, !1773}
!1756 = !DIDerivedType(tag: DW_TAG_member, scope: !1754, file: !35, line: 90, baseType: !1757, size: 128)
!1757 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1754, file: !35, line: 90, size: 128, elements: !1758)
!1758 = !{!1759, !1760, !1765, !1766}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1757, file: !35, line: 91, baseType: !430, size: 128)
!1760 = !DIDerivedType(tag: DW_TAG_member, scope: !1757, file: !35, line: 94, baseType: !1761, size: 128)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1757, file: !35, line: 94, size: 128, elements: !1762)
!1762 = !{!1763, !1764}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1761, file: !35, line: 96, baseType: !399, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1761, file: !35, line: 98, baseType: !7, size: 32, offset: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1757, file: !35, line: 102, baseType: !430, size: 128)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1757, file: !35, line: 103, baseType: !430, size: 128)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1754, file: !35, line: 106, baseType: !706, size: 64, offset: 128)
!1768 = !DIDerivedType(tag: DW_TAG_member, scope: !1754, file: !35, line: 107, baseType: !1769, size: 64, offset: 192)
!1769 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1754, file: !35, line: 107, size: 64, elements: !1770)
!1770 = !{!1771, !1772}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1769, file: !35, line: 108, baseType: !200, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1769, file: !35, line: 109, baseType: !200, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1754, file: !35, line: 117, baseType: !200, size: 64, offset: 256)
!1774 = !DIDerivedType(tag: DW_TAG_member, scope: !1751, file: !35, line: 119, baseType: !1775, size: 320)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1751, file: !35, line: 119, size: 320, elements: !1776)
!1776 = !{!1777, !1778, !1781, !1782, !1783}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1775, file: !35, line: 124, baseType: !200, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1775, file: !35, line: 125, baseType: !1779, size: 64, offset: 64)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !35, line: 125, flags: DIFlagFwdDecl)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1775, file: !35, line: 126, baseType: !200, size: 64, offset: 128)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1775, file: !35, line: 127, baseType: !200, size: 64, offset: 192)
!1783 = !DIDerivedType(tag: DW_TAG_member, scope: !1775, file: !35, line: 128, baseType: !1784, size: 64, offset: 256)
!1784 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1775, file: !35, line: 128, size: 64, elements: !1785)
!1785 = !{!1786, !1787}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1784, file: !35, line: 133, baseType: !200, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1784, file: !35, line: 138, baseType: !444, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, scope: !1751, file: !35, line: 141, baseType: !1789, size: 64)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1751, file: !35, line: 141, size: 64, elements: !1790)
!1790 = !{!1791}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1789, file: !35, line: 142, baseType: !200, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, scope: !1751, file: !35, line: 144, baseType: !1793, size: 128)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1751, file: !35, line: 144, size: 128, elements: !1794)
!1794 = !{!1795, !2178}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1793, file: !35, line: 146, baseType: !1796, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !27, line: 126, size: 1216, elements: !1798)
!1798 = !{!1799, !1809, !1830, !1831, !1832, !1833, !1834, !2160, !2161, !2162}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1797, file: !27, line: 127, baseType: !1800, size: 384)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !27, line: 21, size: 384, elements: !1801)
!1801 = !{!1802, !1803, !1805, !1806, !1807, !1808}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1800, file: !27, line: 22, baseType: !200, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1800, file: !27, line: 23, baseType: !1804, size: 64, offset: 64)
!1804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1800, file: !27, line: 24, baseType: !1804, size: 64, offset: 128)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1800, file: !27, line: 25, baseType: !200, size: 64, offset: 192)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1800, file: !27, line: 26, baseType: !200, size: 64, offset: 256)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1800, file: !27, line: 27, baseType: !200, size: 64, offset: 320)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1797, file: !27, line: 128, baseType: !1810, size: 128, offset: 384)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1811, line: 105, size: 128, elements: !1812)
!1811 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1812 = !{!1813, !1814}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1810, file: !1811, line: 110, baseType: !200, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1810, file: !1811, line: 118, baseType: !1815, size: 64, offset: 64)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1811, line: 95, size: 448, elements: !1817)
!1817 = !{!1818, !1819, !1825, !1826, !1827, !1828, !1829}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1816, file: !1811, line: 96, baseType: !444, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1816, file: !1811, line: 97, baseType: !1820, size: 64, offset: 64)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1811, line: 60, baseType: !1822)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{null, !1824}
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1816, file: !1811, line: 98, baseType: !1820, size: 64, offset: 128)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1816, file: !1811, line: 99, baseType: !520, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1816, file: !1811, line: 100, baseType: !520, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1816, file: !1811, line: 101, baseType: !1161, size: 128, align: 64, offset: 256)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1816, file: !1811, line: 102, baseType: !1824, size: 64, offset: 384)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1797, file: !27, line: 129, baseType: !904, size: 256, offset: 512)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1797, file: !27, line: 130, baseType: !26, size: 32, offset: 768)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1797, file: !27, line: 131, baseType: !7, size: 32, offset: 800)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1797, file: !27, line: 132, baseType: !200, size: 64, offset: 832)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1797, file: !27, line: 133, baseType: !1835, size: 64, offset: 896)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1837)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !27, line: 77, size: 192, elements: !1838)
!1838 = !{!1839, !1844, !2156}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1837, file: !27, line: 83, baseType: !1840, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{null, !1843}
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1837, file: !27, line: 89, baseType: !1845, size: 64, offset: 64)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!1848, !1849}
!1848 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !35, line: 1184, baseType: !7)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1851, line: 512, size: 896, elements: !1852)
!1851 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1852 = !{!1853, !2123, !2124, !2131, !2138, !2148, !2149, !2150, !2152, !2154}
!1853 = !DIDerivedType(tag: DW_TAG_member, scope: !1850, file: !1851, line: 513, baseType: !1854, size: 320)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1850, file: !1851, line: 513, size: 320, elements: !1855)
!1855 = !{!1856, !2119, !2120, !2121, !2122}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1854, file: !1851, line: 514, baseType: !1857, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !35, line: 625, size: 1344, elements: !1859)
!1859 = !{!1860, !1869, !2024, !2030, !2037, !2038, !2043, !2044, !2049, !2050, !2053, !2112, !2113, !2114, !2115, !2116, !2117}
!1860 = !DIDerivedType(tag: DW_TAG_member, scope: !1858, file: !35, line: 628, baseType: !1861, size: 128)
!1861 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1858, file: !35, line: 628, size: 128, elements: !1862)
!1862 = !{!1863, !1868}
!1863 = !DIDerivedType(tag: DW_TAG_member, scope: !1861, file: !35, line: 629, baseType: !1864, size: 128)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1861, file: !35, line: 629, size: 128, elements: !1865)
!1865 = !{!1866, !1867}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1864, file: !35, line: 631, baseType: !200, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1864, file: !35, line: 632, baseType: !200, size: 64, offset: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1861, file: !35, line: 635, baseType: !1161, size: 128, align: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1858, file: !35, line: 639, baseType: !1870, size: 64, offset: 128)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !35, line: 733, size: 10240, elements: !1872)
!1872 = !{!1873, !2022}
!1873 = !DIDerivedType(tag: DW_TAG_member, scope: !1871, file: !35, line: 734, baseType: !1874, size: 10240)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1871, file: !35, line: 734, size: 10240, elements: !1875)
!1875 = !{!1876, !1880, !1893, !1897, !1898, !1899, !1900, !1901, !1902, !1911, !1912, !1913, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1952, !1954, !1957, !2002, !2003, !2004, !2007, !2008, !2009, !2012, !2013, !2014, !2020, !2021}
!1876 = !DIDerivedType(tag: DW_TAG_member, scope: !1874, file: !35, line: 739, baseType: !1877, size: 512, align: 512)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1874, file: !35, line: 739, size: 512, align: 512, elements: !1878)
!1878 = !{!1879}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1877, file: !35, line: 747, baseType: !382, size: 32)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1874, file: !35, line: 750, baseType: !1881, size: 128, offset: 512)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1882, line: 218, size: 128, elements: !1883)
!1882 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1883 = !{!1884, !1891, !1892}
!1884 = !DIDerivedType(tag: DW_TAG_member, scope: !1881, file: !1882, line: 219, baseType: !1885, size: 32)
!1885 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1881, file: !1882, line: 219, size: 32, elements: !1886)
!1886 = !{!1887, !1888}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1885, file: !1882, line: 220, baseType: !362, size: 32)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1885, file: !1882, line: 221, baseType: !1889)
!1889 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1882, line: 197, baseType: !1890)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1882, line: 197, elements: !1200)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1881, file: !1882, line: 223, baseType: !7, size: 32, offset: 32)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1881, file: !1882, line: 224, baseType: !399, size: 64, offset: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1874, file: !35, line: 752, baseType: !1894, size: 64, offset: 640)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!200, !1680, !200, !200, !200, !200}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1874, file: !35, line: 756, baseType: !200, size: 64, offset: 704)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1874, file: !35, line: 757, baseType: !200, size: 64, offset: 768)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1874, file: !35, line: 760, baseType: !200, size: 64, offset: 832)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1874, file: !35, line: 761, baseType: !200, size: 64, offset: 896)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1874, file: !35, line: 763, baseType: !200, size: 64, offset: 960)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1874, file: !35, line: 764, baseType: !1903, size: 64, offset: 1024)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1905, line: 299, baseType: !1906)
!1905 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1905, line: 299, size: 64, elements: !1907)
!1907 = !{!1908}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1906, file: !1905, line: 299, baseType: !1909, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1910, line: 18, baseType: !200)
!1910 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1874, file: !35, line: 773, baseType: !382, size: 32, offset: 1088)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1874, file: !35, line: 785, baseType: !382, size: 32, offset: 1120)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1874, file: !35, line: 795, baseType: !1914, size: 64, offset: 1152)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !35, line: 726, size: 128, elements: !1916)
!1916 = !{!1917, !1918}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1915, file: !35, line: 727, baseType: !208, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1915, file: !35, line: 728, baseType: !123, size: 32, offset: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1874, file: !35, line: 801, baseType: !200, size: 64, offset: 1216)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1874, file: !35, line: 804, baseType: !444, size: 64, offset: 1280)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1874, file: !35, line: 806, baseType: !123, size: 32, offset: 1344)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1874, file: !35, line: 808, baseType: !362, size: 32, offset: 1376)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1874, file: !35, line: 823, baseType: !1500, size: 320, offset: 1408)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1874, file: !35, line: 825, baseType: !430, size: 128, offset: 1728)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1874, file: !35, line: 845, baseType: !123, size: 32, offset: 1856)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1874, file: !35, line: 849, baseType: !200, size: 64, offset: 1920)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1874, file: !35, line: 850, baseType: !200, size: 64, offset: 1984)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1874, file: !35, line: 852, baseType: !200, size: 64, offset: 2048)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1874, file: !35, line: 853, baseType: !200, size: 64, offset: 2112)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1874, file: !35, line: 854, baseType: !446, size: 64, offset: 2176)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1874, file: !35, line: 855, baseType: !200, size: 64, offset: 2240)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1874, file: !35, line: 856, baseType: !200, size: 64, offset: 2304)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1874, file: !35, line: 857, baseType: !200, size: 64, offset: 2368)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1874, file: !35, line: 858, baseType: !200, size: 64, offset: 2432)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1874, file: !35, line: 865, baseType: !756, size: 32, offset: 2496)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1874, file: !35, line: 867, baseType: !362, size: 32, offset: 2528)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1874, file: !35, line: 869, baseType: !200, size: 64, offset: 2560)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1874, file: !35, line: 869, baseType: !200, size: 64, offset: 2624)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1874, file: !35, line: 869, baseType: !200, size: 64, offset: 2688)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1874, file: !35, line: 869, baseType: !200, size: 64, offset: 2752)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1874, file: !35, line: 870, baseType: !200, size: 64, offset: 2816)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1874, file: !35, line: 870, baseType: !200, size: 64, offset: 2880)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1874, file: !35, line: 870, baseType: !200, size: 64, offset: 2944)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1874, file: !35, line: 871, baseType: !200, size: 64, offset: 3008)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1874, file: !35, line: 871, baseType: !200, size: 64, offset: 3072)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1874, file: !35, line: 871, baseType: !200, size: 64, offset: 3136)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1874, file: !35, line: 871, baseType: !200, size: 64, offset: 3200)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1874, file: !35, line: 873, baseType: !1949, size: 3328, offset: 3264)
!1949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 3328, elements: !1950)
!1950 = !{!1951}
!1951 = !DISubrange(count: 52)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1874, file: !35, line: 875, baseType: !1953, size: 1280, offset: 6592)
!1953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1610, size: 1280, elements: !321)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1874, file: !35, line: 877, baseType: !1955, size: 64, offset: 7872)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !35, line: 877, flags: DIFlagFwdDecl)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1874, file: !35, line: 880, baseType: !1958, size: 1088, offset: 7936)
!1958 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1959, line: 72, baseType: !1960)
!1959 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1959, line: 23, size: 1088, elements: !1961)
!1961 = !{!1962, !1963, !1964, !1965, !1966, !1969, !1970, !1971, !1972, !1999, !2000, !2001}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1960, file: !1959, line: 28, baseType: !208, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1960, file: !1959, line: 38, baseType: !446, size: 64, offset: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1960, file: !1959, line: 40, baseType: !200, size: 64, offset: 128)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1960, file: !1959, line: 43, baseType: !1500, size: 320, offset: 192)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1960, file: !1959, line: 44, baseType: !1967, size: 64, offset: 512)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1959, line: 44, flags: DIFlagFwdDecl)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1960, file: !1959, line: 48, baseType: !200, size: 64, offset: 576)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1960, file: !1959, line: 59, baseType: !954, size: 256, offset: 640)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1960, file: !1959, line: 60, baseType: !399, size: 64, offset: 896)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1960, file: !1959, line: 61, baseType: !1973, size: 64, offset: 960)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1975)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1976, line: 13, size: 1216, elements: !1977)
!1976 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1977 = !{!1978, !1979, !1980, !1981, !1982, !1983, !1984, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1975, file: !1976, line: 14, baseType: !399, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1975, file: !1976, line: 15, baseType: !200, size: 64, offset: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1975, file: !1976, line: 17, baseType: !200, size: 64, offset: 128)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1975, file: !1976, line: 17, baseType: !200, size: 64, offset: 192)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1975, file: !1976, line: 18, baseType: !200, size: 64, offset: 256)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1975, file: !1976, line: 18, baseType: !200, size: 64, offset: 320)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1975, file: !1976, line: 19, baseType: !1985, size: 64, offset: 384)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1975, file: !1976, line: 21, baseType: !670, size: 64, offset: 448)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1975, file: !1976, line: 23, baseType: !670, size: 64, offset: 512)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1975, file: !1976, line: 24, baseType: !670, size: 64, offset: 576)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1975, file: !1976, line: 25, baseType: !670, size: 64, offset: 640)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1975, file: !1976, line: 26, baseType: !670, size: 64, offset: 704)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1975, file: !1976, line: 27, baseType: !670, size: 64, offset: 768)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1975, file: !1976, line: 28, baseType: !670, size: 64, offset: 832)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1975, file: !1976, line: 29, baseType: !670, size: 64, offset: 896)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1975, file: !1976, line: 30, baseType: !670, size: 64, offset: 960)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1975, file: !1976, line: 31, baseType: !670, size: 64, offset: 1024)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1975, file: !1976, line: 32, baseType: !670, size: 64, offset: 1088)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1975, file: !1976, line: 33, baseType: !670, size: 64, offset: 1152)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1960, file: !1959, line: 63, baseType: !382, size: 32, offset: 1024)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1960, file: !1959, line: 69, baseType: !395, size: 16, offset: 1056)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1960, file: !1959, line: 70, baseType: !1077, size: 16, offset: 1072)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1874, file: !35, line: 882, baseType: !200, size: 64, offset: 9024)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1874, file: !35, line: 885, baseType: !362, size: 32, offset: 9088)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1874, file: !35, line: 886, baseType: !2005, size: 64, offset: 9152)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !35, line: 732, flags: DIFlagFwdDecl)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1874, file: !35, line: 901, baseType: !1635, size: 64, offset: 9216)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1874, file: !35, line: 904, baseType: !1680, size: 64, offset: 9280)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1874, file: !35, line: 906, baseType: !2010, size: 64, offset: 9344)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !35, line: 906, flags: DIFlagFwdDecl)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1874, file: !35, line: 930, baseType: !382, size: 32, offset: 9408)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1874, file: !35, line: 933, baseType: !382, size: 32, offset: 9440)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1874, file: !35, line: 935, baseType: !2015, size: 64, offset: 9472)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !2016)
!2016 = !{!2017}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2015, file: !68, line: 104, baseType: !2018, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1874, file: !35, line: 940, baseType: !444, size: 64, offset: 9536)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1874, file: !35, line: 942, baseType: !441, size: 256, offset: 9600)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1871, file: !35, line: 986, baseType: !2023, offset: 10240)
!2023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, elements: !1452)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1858, file: !35, line: 640, baseType: !2025, size: 64, offset: 192)
!2025 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1905, line: 297, baseType: !2026)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1905, line: 297, size: 64, elements: !2027)
!2027 = !{!2028}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2026, file: !1905, line: 297, baseType: !2029, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1910, line: 19, baseType: !200)
!2030 = !DIDerivedType(tag: DW_TAG_member, scope: !1858, file: !35, line: 646, baseType: !2031, size: 64, offset: 256)
!2031 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1858, file: !35, line: 646, size: 64, elements: !2032)
!2032 = !{!2033, !2036}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2031, file: !35, line: 647, baseType: !2034, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2035)
!2035 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !35, line: 542, baseType: !200)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2031, file: !35, line: 648, baseType: !2035, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1858, file: !35, line: 666, baseType: !123, size: 32, offset: 320)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1858, file: !35, line: 667, baseType: !2039, size: 64, offset: 384)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !35, line: 579, size: 320, elements: !2041)
!2041 = !{!2042}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2040, file: !35, line: 580, baseType: !1500, size: 320)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1858, file: !35, line: 670, baseType: !520, size: 8, offset: 448)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1858, file: !35, line: 681, baseType: !2045, size: 256, offset: 512)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1858, file: !35, line: 678, size: 256, elements: !2046)
!2046 = !{!2047, !2048}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2045, file: !35, line: 679, baseType: !1055, size: 192, align: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2045, file: !35, line: 680, baseType: !200, size: 64, offset: 192)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1858, file: !35, line: 689, baseType: !430, size: 128, offset: 768)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1858, file: !35, line: 691, baseType: !2051, size: 64, offset: 896)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !35, line: 691, flags: DIFlagFwdDecl)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1858, file: !35, line: 694, baseType: !2054, size: 64, offset: 960)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2056)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1851, line: 563, size: 1024, elements: !2057)
!2057 = !{!2058, !2062, !2063, !2067, !2071, !2075, !2076, !2080, !2084, !2088, !2089, !2090, !2094, !2098, !2104, !2108}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2056, file: !1851, line: 564, baseType: !2059, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{null, !1857}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2056, file: !1851, line: 569, baseType: !2059, size: 64, offset: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2056, file: !1851, line: 571, baseType: !2064, size: 64, offset: 128)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!123, !1857, !200}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2056, file: !1851, line: 572, baseType: !2068, size: 64, offset: 192)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{!123, !1857}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2056, file: !1851, line: 578, baseType: !2072, size: 64, offset: 256)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{!123, !1857, !200, !200, !200}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2056, file: !1851, line: 580, baseType: !1845, size: 64, offset: 320)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2056, file: !1851, line: 581, baseType: !2077, size: 64, offset: 384)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!1848, !1849, !7}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2056, file: !1851, line: 582, baseType: !2081, size: 64, offset: 448)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DISubroutineType(types: !2083)
!2083 = !{!1848, !1849, !200, !200}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2056, file: !1851, line: 584, baseType: !2085, size: 64, offset: 512)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!200, !1857}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2056, file: !1851, line: 588, baseType: !1845, size: 64, offset: 576)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2056, file: !1851, line: 591, baseType: !1845, size: 64, offset: 640)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2056, file: !1851, line: 597, baseType: !2091, size: 64, offset: 704)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{!123, !1857, !200, !399, !123, !123}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2056, file: !1851, line: 603, baseType: !2095, size: 64, offset: 768)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!223, !1857}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2056, file: !1851, line: 613, baseType: !2099, size: 64, offset: 832)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!123, !1857, !2102}
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !35, line: 717, flags: DIFlagFwdDecl)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2056, file: !1851, line: 625, baseType: !2105, size: 64, offset: 896)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!2102, !1857, !200}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2056, file: !1851, line: 633, baseType: !2109, size: 64, offset: 960)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{!1843, !1857, !200}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1858, file: !35, line: 697, baseType: !200, size: 64, offset: 1024)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1858, file: !35, line: 699, baseType: !1680, size: 64, offset: 1088)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1858, file: !35, line: 700, baseType: !399, size: 64, offset: 1152)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1858, file: !35, line: 711, baseType: !444, size: 64, offset: 1216)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1858, file: !35, line: 717, baseType: !2102, size: 64, offset: 1280)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1858, file: !35, line: 722, baseType: !2118, offset: 1344)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !35, line: 570, elements: !1200)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1854, file: !1851, line: 515, baseType: !193, size: 32, offset: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1854, file: !1851, line: 516, baseType: !200, size: 64, offset: 128)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1854, file: !1851, line: 517, baseType: !200, size: 64, offset: 192)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1854, file: !1851, line: 518, baseType: !200, size: 64, offset: 256)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1850, file: !1851, line: 520, baseType: !34, size: 32, offset: 320)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1850, file: !1851, line: 522, baseType: !2125, size: 64, offset: 384)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1910, line: 22, baseType: !2127)
!2127 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1910, line: 22, size: 64, elements: !2128)
!2128 = !{!2129}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2127, file: !1910, line: 22, baseType: !2130, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1910, line: 15, baseType: !200)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1850, file: !1851, line: 524, baseType: !2132, size: 64, offset: 448)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1905, line: 372, baseType: !2134)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1905, line: 372, size: 64, elements: !2135)
!2135 = !{!2136}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2134, file: !1905, line: 372, baseType: !2137, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1910, line: 16, baseType: !200)
!2138 = !DIDerivedType(tag: DW_TAG_member, scope: !1850, file: !1851, line: 527, baseType: !2139, size: 64, offset: 512)
!2139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1850, file: !1851, line: 527, size: 64, elements: !2140)
!2140 = !{!2141, !2147}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2139, file: !1851, line: 528, baseType: !2142, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1910, line: 21, baseType: !2143)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1910, line: 21, size: 64, elements: !2144)
!2144 = !{!2145}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2143, file: !1910, line: 21, baseType: !2146, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1910, line: 14, baseType: !200)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2139, file: !1851, line: 529, baseType: !2126, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1850, file: !1851, line: 534, baseType: !1843, size: 64, offset: 576)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1850, file: !1851, line: 535, baseType: !1843, size: 64, offset: 640)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1850, file: !1851, line: 541, baseType: !2151, size: 64, offset: 704)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1850, file: !1851, line: 545, baseType: !2153, size: 64, offset: 768)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1850, file: !1851, line: 549, baseType: !2155, size: 64, offset: 832)
!2155 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1905, line: 520, baseType: !1843)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1837, file: !27, line: 100, baseType: !2157, size: 64, offset: 128)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!123, !1796, !200, !200, !123}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1797, file: !27, line: 134, baseType: !399, size: 64, offset: 960)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1797, file: !27, line: 135, baseType: !123, size: 32, offset: 1024)
!2162 = !DIDerivedType(tag: DW_TAG_member, scope: !1797, file: !27, line: 136, baseType: !2163, size: 128, offset: 1088)
!2163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1797, file: !27, line: 136, size: 128, elements: !2164)
!2164 = !{!2165, !2171}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2163, file: !27, line: 137, baseType: !2166, size: 128)
!2166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2167, line: 6, size: 128, elements: !2168)
!2167 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2168 = !{!2169, !2170}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2166, file: !2167, line: 7, baseType: !208, size: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2166, file: !2167, line: 8, baseType: !208, size: 64, offset: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, scope: !2163, file: !27, line: 138, baseType: !2172)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2163, file: !27, line: 138, elements: !2173)
!2173 = !{!2174, !2176}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2172, file: !27, line: 138, baseType: !2175)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2172, file: !27, line: 138, elements: !1200)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2172, file: !27, line: 138, baseType: !2177)
!2177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2166, elements: !1452)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1793, file: !35, line: 147, baseType: !399, size: 64, offset: 64)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1751, file: !35, line: 161, baseType: !1161, size: 128, align: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, scope: !1747, file: !35, line: 164, baseType: !2181, size: 32, offset: 384)
!2181 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1747, file: !35, line: 164, size: 32, elements: !2182)
!2182 = !{!2183, !2184}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2181, file: !35, line: 169, baseType: !382, size: 32)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2181, file: !35, line: 177, baseType: !7, size: 32)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1747, file: !35, line: 181, baseType: !382, size: 32, offset: 416)
!2186 = !DIDerivedType(tag: DW_TAG_member, scope: !1715, file: !35, line: 325, baseType: !2187, size: 512, offset: 512)
!2187 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1715, file: !35, line: 325, size: 512, elements: !2188)
!2188 = !{!2189, !2199}
!2189 = !DIDerivedType(tag: DW_TAG_member, scope: !2187, file: !35, line: 326, baseType: !2190, size: 320)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2187, file: !35, line: 326, size: 320, elements: !2191)
!2191 = !{!2192, !2193, !2194, !2195, !2196, !2197, !2198}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2190, file: !35, line: 327, baseType: !200, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2190, file: !35, line: 328, baseType: !200, size: 64, offset: 64)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2190, file: !35, line: 329, baseType: !200, size: 64, offset: 128)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2190, file: !35, line: 331, baseType: !382, size: 32, offset: 192)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2190, file: !35, line: 332, baseType: !382, size: 32, offset: 224)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2190, file: !35, line: 333, baseType: !382, size: 32, offset: 256)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2190, file: !35, line: 335, baseType: !7, size: 32, offset: 288)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2187, file: !35, line: 339, baseType: !1747, size: 512, align: 128)
!2200 = !DIDerivedType(tag: DW_TAG_member, scope: !1715, file: !35, line: 341, baseType: !2201, size: 512, offset: 1024)
!2201 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1715, file: !35, line: 341, size: 512, elements: !2202)
!2202 = !{!2203, !2212, !2218}
!2203 = !DIDerivedType(tag: DW_TAG_member, scope: !2201, file: !35, line: 342, baseType: !2204, size: 384)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2201, file: !35, line: 342, size: 384, elements: !2205)
!2205 = !{!2206, !2207, !2208, !2209, !2210, !2211}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2204, file: !35, line: 343, baseType: !200, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2204, file: !35, line: 344, baseType: !200, size: 64, offset: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2204, file: !35, line: 346, baseType: !399, size: 64, offset: 128)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2204, file: !35, line: 347, baseType: !399, size: 64, offset: 192)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2204, file: !35, line: 348, baseType: !399, size: 64, offset: 256)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2204, file: !35, line: 349, baseType: !399, size: 64, offset: 320)
!2212 = !DIDerivedType(tag: DW_TAG_member, scope: !2201, file: !35, line: 352, baseType: !2213, size: 256)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2201, file: !35, line: 352, size: 256, elements: !2214)
!2214 = !{!2215, !2216, !2217}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2213, file: !35, line: 353, baseType: !200, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2213, file: !35, line: 354, baseType: !200, size: 64, offset: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2213, file: !35, line: 356, baseType: !430, size: 128, offset: 128)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2201, file: !35, line: 359, baseType: !1747, size: 512, align: 128)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1710, file: !1711, line: 1000, baseType: !123, size: 32, offset: 64)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1710, file: !1711, line: 1001, baseType: !540, size: 320, offset: 128)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1706, file: !14, line: 395, baseType: !2222, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!667, !399}
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2227, line: 41, size: 320, elements: !2228)
!2227 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!2228 = !{!2229, !2230, !2231, !2232, !2233, !2234, !2239, !2277}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !2226, file: !2227, line: 42, baseType: !196, size: 8)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !2226, file: !2227, line: 43, baseType: !520, size: 8, offset: 8)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !2226, file: !2227, line: 44, baseType: !520, size: 8, offset: 16)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !2226, file: !2227, line: 45, baseType: !520, size: 8, offset: 24)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !2226, file: !2227, line: 46, baseType: !520, size: 8, offset: 32)
!2234 = !DIDerivedType(tag: DW_TAG_member, scope: !2226, file: !2227, line: 47, baseType: !2235, size: 64, offset: 64)
!2235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2226, file: !2227, line: 47, size: 64, elements: !2236)
!2236 = !{!2237, !2238}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !2235, file: !2227, line: 48, baseType: !209, size: 64)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !2235, file: !2227, line: 49, baseType: !123, size: 32)
!2239 = !DIDerivedType(tag: DW_TAG_member, scope: !2226, file: !2227, line: 61, baseType: !2240, size: 128, offset: 128)
!2240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2226, file: !2227, line: 61, size: 128, elements: !2241)
!2241 = !{!2242, !2248}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !2240, file: !2227, line: 67, baseType: !2243, size: 128)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !2244, line: 17, size: 128, elements: !2245)
!2244 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!2245 = !{!2246, !2247}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2243, file: !2244, line: 19, baseType: !399, size: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2243, file: !2244, line: 20, baseType: !210, size: 64, offset: 64)
!2248 = !DIDerivedType(tag: DW_TAG_member, scope: !2240, file: !2227, line: 68, baseType: !2249, size: 128)
!2249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2240, file: !2227, line: 68, size: 128, elements: !2250)
!2250 = !{!2251, !2276}
!2251 = !DIDerivedType(tag: DW_TAG_member, scope: !2249, file: !2227, line: 69, baseType: !2252, size: 64)
!2252 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2249, file: !2227, line: 69, size: 64, elements: !2253)
!2253 = !{!2254, !2257, !2264, !2273, !2275}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !2252, file: !2227, line: 71, baseType: !2255, size: 64)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2243)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !2252, file: !2227, line: 72, baseType: !2258, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2260)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !2227, line: 17, size: 128, elements: !2261)
!2261 = !{!2262, !2263}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2260, file: !2227, line: 18, baseType: !399, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2260, file: !2227, line: 19, baseType: !209, size: 64, offset: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !2252, file: !2227, line: 73, baseType: !2265, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2267)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !2268, line: 31, size: 128, elements: !2269)
!2268 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!2269 = !{!2270, !2271, !2272}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !2267, file: !2268, line: 32, baseType: !1843, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !2267, file: !2268, line: 33, baseType: !7, size: 32, offset: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !2267, file: !2268, line: 34, baseType: !7, size: 32, offset: 96)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !2252, file: !2227, line: 74, baseType: !2274, size: 64)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !2252, file: !2227, line: 75, baseType: !399, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2249, file: !2227, line: 77, baseType: !209, size: 64, offset: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, scope: !2226, file: !2227, line: 80, baseType: !2278, size: 64, offset: 256)
!2278 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2226, file: !2227, line: 80, size: 64, elements: !2279)
!2279 = !{!2280, !2281}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !2278, file: !2227, line: 81, baseType: !200, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !2278, file: !2227, line: 82, baseType: !213, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1673, file: !14, line: 1920, baseType: !1690, size: 64, offset: 320)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1673, file: !14, line: 1921, baseType: !2284, size: 64, offset: 384)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!123, !1693, !2287, !7}
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !156, line: 1559, size: 192, elements: !2289)
!2289 = !{!2290, !2291, !2292}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "req_list", scope: !2288, file: !156, line: 1560, baseType: !414, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "need_ts", scope: !2288, file: !156, line: 1561, baseType: !520, size: 8, offset: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2288, file: !156, line: 1562, baseType: !2293, size: 64, offset: 128)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{null, !2287}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1673, file: !14, line: 1923, baseType: !2297, size: 64, offset: 448)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{!123, !1680, !2300}
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !2302)
!2302 = !{!2303, !2308}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2301, file: !14, line: 1859, baseType: !2304, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !2305)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{!520, !2300, !223, !123, !213, !208, !7}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2301, file: !14, line: 1860, baseType: !213, size: 64, offset: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1673, file: !14, line: 1924, baseType: !2310, size: 64, offset: 512)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!2313, !1680, !2314}
!2313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !189, line: 59, baseType: !7)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2316, line: 37, size: 128, elements: !2317)
!2316 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2317 = !{!2318, !2324}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2315, file: !2316, line: 38, baseType: !2319, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2316, line: 31, baseType: !2320)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{null, !1680, !2323, !2314}
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2315, file: !2316, line: 39, baseType: !2313, size: 32, offset: 64)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1673, file: !14, line: 1925, baseType: !2326, size: 64, offset: 576)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{!670, !1680, !7, !200}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1673, file: !14, line: 1926, baseType: !2326, size: 64, offset: 640)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1673, file: !14, line: 1927, baseType: !2331, size: 64, offset: 704)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{!123, !1680, !1857}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1673, file: !14, line: 1928, baseType: !200, size: 64, offset: 768)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1673, file: !14, line: 1929, baseType: !2336, size: 64, offset: 832)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{!123, !710, !1680}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1673, file: !14, line: 1930, baseType: !2340, size: 64, offset: 896)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{!123, !1680, !2343}
!2343 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !399)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1673, file: !14, line: 1931, baseType: !2336, size: 64, offset: 960)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1673, file: !14, line: 1932, baseType: !2346, size: 64, offset: 1024)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!123, !1680, !213, !213, !123}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1673, file: !14, line: 1933, baseType: !2350, size: 64, offset: 1088)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{!123, !123, !1680, !123}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1673, file: !14, line: 1934, baseType: !2354, size: 64, offset: 1152)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!123, !1680, !123, !2357}
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1673, file: !14, line: 1935, baseType: !1894, size: 64, offset: 1216)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1673, file: !14, line: 1936, baseType: !2361, size: 64, offset: 1280)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!123, !123}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1673, file: !14, line: 1937, baseType: !2354, size: 64, offset: 1344)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1673, file: !14, line: 1938, baseType: !2366, size: 64, offset: 1408)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!667, !2369, !1680, !1366, !209, !7}
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !2371, line: 59, flags: DIFlagFwdDecl)
!2371 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1673, file: !14, line: 1939, baseType: !2373, size: 64, offset: 1472)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!667, !1680, !1366, !2369, !209, !7}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1673, file: !14, line: 1940, baseType: !2377, size: 64, offset: 1536)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{null, !1680}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1673, file: !14, line: 1941, baseType: !2381, size: 64, offset: 1600)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!123, !1680, !123, !2384, !2385}
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1673, file: !14, line: 1942, baseType: !2387, size: 64, offset: 1664)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{!670, !1680, !123, !213, !213}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1673, file: !14, line: 1944, baseType: !2391, size: 64, offset: 1728)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{null, !1345, !1680}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1673, file: !14, line: 1948, baseType: !2395, size: 64, offset: 1792)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{!667, !1680, !213, !1680, !213, !209, !7}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1673, file: !14, line: 1950, baseType: !2399, size: 64, offset: 1856)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!213, !1680, !213, !1680, !213, !213, !7}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1673, file: !14, line: 1953, baseType: !2346, size: 64, offset: 1920)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1673, file: !14, line: 1954, baseType: !2404, size: 64, offset: 1984)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!123, !2407, !7}
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1673, file: !14, line: 1955, baseType: !2410, size: 64, offset: 2048)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!123, !2407, !2287, !7}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1383, file: !14, line: 1018, baseType: !208, size: 64, offset: 1472)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1383, file: !14, line: 1020, baseType: !399, size: 64, offset: 1536)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1383, file: !14, line: 1023, baseType: !399, size: 64, offset: 1600)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1383, file: !14, line: 1027, baseType: !2417, size: 64, offset: 1664)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1383, file: !14, line: 1029, baseType: !706, size: 64, offset: 1728)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1383, file: !14, line: 1030, baseType: !2420, size: 32, offset: 1792)
!2420 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2421, line: 8, baseType: !205)
!2421 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1383, file: !14, line: 1031, baseType: !2420, size: 32, offset: 1824)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1346, file: !1347, line: 29, baseType: !399, size: 64, offset: 896)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1289, file: !14, line: 2077, baseType: !1342, size: 64, offset: 1088)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1289, file: !14, line: 2078, baseType: !1342, size: 64, offset: 1152)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1289, file: !14, line: 2079, baseType: !1342, size: 64, offset: 1216)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1289, file: !14, line: 2081, baseType: !2428, size: 64, offset: 1280)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!667, !852, !123, !230, !209, !213}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1289, file: !14, line: 2082, baseType: !2432, size: 64, offset: 1344)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!667, !852, !123, !223, !209, !213}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1289, file: !14, line: 2083, baseType: !2436, size: 64, offset: 1408)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!2439, !710}
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !51, line: 296, size: 1664, elements: !2442)
!2442 = !{!2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2467, !2468, !2469}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2441, file: !51, line: 297, baseType: !464, size: 128)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2441, file: !51, line: 298, baseType: !430, size: 128, offset: 128)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2441, file: !51, line: 299, baseType: !430, size: 128, offset: 256)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2441, file: !51, line: 300, baseType: !430, size: 128, offset: 384)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2441, file: !51, line: 301, baseType: !954, size: 256, offset: 512)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2441, file: !51, line: 302, baseType: !362, size: 32, offset: 768)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2441, file: !51, line: 303, baseType: !382, size: 32, offset: 800)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2441, file: !51, line: 304, baseType: !852, size: 64, offset: 832)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2441, file: !51, line: 305, baseType: !2452, size: 64, offset: 896)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !51, line: 68, size: 64, elements: !2453)
!2453 = !{!2454, !2466}
!2454 = !DIDerivedType(tag: DW_TAG_member, scope: !2452, file: !51, line: 69, baseType: !2455, size: 32)
!2455 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2452, file: !51, line: 69, size: 32, elements: !2456)
!2456 = !{!2457, !2458, !2459}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2455, file: !51, line: 70, baseType: !716, size: 32)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2455, file: !51, line: 71, baseType: !725, size: 32)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2455, file: !51, line: 72, baseType: !2460, size: 32)
!2460 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2461, line: 24, baseType: !2462)
!2461 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2461, line: 22, size: 32, elements: !2463)
!2463 = !{!2464}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2462, file: !2461, line: 23, baseType: !2465, size: 32)
!2465 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2461, line: 20, baseType: !722)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2452, file: !51, line: 74, baseType: !50, size: 32, offset: 32)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2441, file: !51, line: 306, baseType: !213, size: 64, offset: 960)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2441, file: !51, line: 307, baseType: !200, size: 64, offset: 1024)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2441, file: !51, line: 308, baseType: !2470, size: 576, offset: 1088)
!2470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !51, line: 205, size: 576, elements: !2471)
!2471 = !{!2472, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2470, file: !51, line: 206, baseType: !2473, size: 64)
!2473 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !51, line: 66, baseType: !215)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2470, file: !51, line: 207, baseType: !2473, size: 64, offset: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2470, file: !51, line: 208, baseType: !2473, size: 64, offset: 128)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2470, file: !51, line: 209, baseType: !2473, size: 64, offset: 192)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2470, file: !51, line: 210, baseType: !2473, size: 64, offset: 256)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2470, file: !51, line: 211, baseType: !2473, size: 64, offset: 320)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2470, file: !51, line: 212, baseType: !2473, size: 64, offset: 384)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2470, file: !51, line: 213, baseType: !1516, size: 64, offset: 448)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2470, file: !51, line: 214, baseType: !1516, size: 64, offset: 512)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1289, file: !14, line: 2085, baseType: !2483, size: 64, offset: 1472)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{!670, !852, !2486}
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2488, line: 15, size: 256, elements: !2489)
!2488 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2489 = !{!2490, !2491, !2492, !2493, !2494}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2487, file: !2488, line: 16, baseType: !193, size: 32)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2487, file: !2488, line: 19, baseType: !123, size: 32, offset: 32)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2487, file: !2488, line: 26, baseType: !200, size: 64, offset: 64)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2487, file: !2488, line: 33, baseType: !200, size: 64, offset: 128)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2487, file: !2488, line: 36, baseType: !2495, size: 64, offset: 192)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !35, line: 33, flags: DIFlagFwdDecl)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1289, file: !14, line: 2087, baseType: !2483, size: 64, offset: 1536)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1289, file: !14, line: 2089, baseType: !883, size: 64, offset: 1600)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !853, file: !14, line: 1198, baseType: !2500, size: 64, offset: 448)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2502)
!2502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !51, line: 324, size: 704, elements: !2503)
!2503 = !{!2504, !2508, !2512, !2516, !2517, !2518, !2519, !2520, !2525, !2530, !2534}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2502, file: !51, line: 325, baseType: !2505, size: 64)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!123, !2440}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2502, file: !51, line: 326, baseType: !2509, size: 64, offset: 64)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{!2440, !852, !123}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2502, file: !51, line: 327, baseType: !2513, size: 64, offset: 128)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{null, !2440}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2502, file: !51, line: 328, baseType: !2505, size: 64, offset: 192)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2502, file: !51, line: 329, baseType: !2505, size: 64, offset: 256)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2502, file: !51, line: 330, baseType: !2505, size: 64, offset: 320)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2502, file: !51, line: 331, baseType: !1317, size: 64, offset: 384)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2502, file: !51, line: 334, baseType: !2521, size: 64, offset: 448)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{!2524, !710}
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2502, file: !51, line: 335, baseType: !2526, size: 64, offset: 512)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!123, !710, !2529}
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2502, file: !51, line: 337, baseType: !2531, size: 64, offset: 576)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!123, !710, !2524}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2502, file: !51, line: 339, baseType: !2535, size: 64, offset: 640)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!123, !852, !2538}
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !853, file: !14, line: 1199, baseType: !2540, size: 64, offset: 512)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2542)
!2542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !51, line: 430, size: 704, elements: !2543)
!2543 = !{!2544, !2550, !2551, !2555, !2556, !2557, !2572, !2595, !2599, !2600, !2623}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2542, file: !51, line: 431, baseType: !2545, size: 64)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!123, !852, !123, !123, !2548}
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1664)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2542, file: !51, line: 432, baseType: !1317, size: 64, offset: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2542, file: !51, line: 433, baseType: !2552, size: 64, offset: 128)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!123, !852, !7}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2542, file: !51, line: 434, baseType: !2552, size: 64, offset: 192)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2542, file: !51, line: 435, baseType: !1317, size: 64, offset: 256)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2542, file: !51, line: 436, baseType: !2558, size: 64, offset: 320)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!123, !852, !123, !2561}
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !51, line: 417, size: 256, elements: !2563)
!2563 = !{!2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2562, file: !51, line: 418, baseType: !123, size: 32)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2562, file: !51, line: 419, baseType: !7, size: 32, offset: 32)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2562, file: !51, line: 420, baseType: !7, size: 32, offset: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2562, file: !51, line: 422, baseType: !7, size: 32, offset: 96)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2562, file: !51, line: 423, baseType: !7, size: 32, offset: 128)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2562, file: !51, line: 424, baseType: !7, size: 32, offset: 160)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2562, file: !51, line: 425, baseType: !7, size: 32, offset: 192)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2562, file: !51, line: 426, baseType: !7, size: 32, offset: 224)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2542, file: !51, line: 437, baseType: !2573, size: 64, offset: 384)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{!123, !852, !2452, !2576}
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !51, line: 345, size: 960, elements: !2578)
!2578 = !{!2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2577, file: !51, line: 346, baseType: !123, size: 32)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2577, file: !51, line: 347, baseType: !208, size: 64, offset: 64)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2577, file: !51, line: 348, baseType: !208, size: 64, offset: 128)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2577, file: !51, line: 349, baseType: !208, size: 64, offset: 192)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2577, file: !51, line: 350, baseType: !208, size: 64, offset: 256)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2577, file: !51, line: 351, baseType: !208, size: 64, offset: 320)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2577, file: !51, line: 352, baseType: !208, size: 64, offset: 384)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2577, file: !51, line: 353, baseType: !450, size: 64, offset: 448)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2577, file: !51, line: 355, baseType: !450, size: 64, offset: 512)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2577, file: !51, line: 356, baseType: !123, size: 32, offset: 576)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2577, file: !51, line: 357, baseType: !123, size: 32, offset: 608)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2577, file: !51, line: 358, baseType: !208, size: 64, offset: 640)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2577, file: !51, line: 359, baseType: !208, size: 64, offset: 704)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2577, file: !51, line: 360, baseType: !208, size: 64, offset: 768)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2577, file: !51, line: 361, baseType: !450, size: 64, offset: 832)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2577, file: !51, line: 362, baseType: !123, size: 32, offset: 896)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2542, file: !51, line: 438, baseType: !2596, size: 64, offset: 448)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!123, !852, !2538, !2576}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2542, file: !51, line: 440, baseType: !2573, size: 64, offset: 512)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2542, file: !51, line: 441, baseType: !2601, size: 64, offset: 576)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DISubroutineType(types: !2603)
!2603 = !{!123, !852, !2604}
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !51, line: 411, size: 1408, elements: !2606)
!2606 = !{!2607, !2608}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2605, file: !51, line: 412, baseType: !7, size: 32)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2605, file: !51, line: 413, baseType: !2609, size: 1344, offset: 64)
!2609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2610, size: 1344, elements: !636)
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !51, line: 397, size: 448, elements: !2611)
!2611 = !{!2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2622}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2610, file: !51, line: 398, baseType: !7, size: 32)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2610, file: !51, line: 399, baseType: !7, size: 32, offset: 32)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2610, file: !51, line: 401, baseType: !7, size: 32, offset: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2610, file: !51, line: 402, baseType: !7, size: 32, offset: 96)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2610, file: !51, line: 403, baseType: !7, size: 32, offset: 128)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2610, file: !51, line: 404, baseType: !7, size: 32, offset: 160)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2610, file: !51, line: 405, baseType: !7, size: 32, offset: 192)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2610, file: !51, line: 406, baseType: !191, size: 64, offset: 256)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2610, file: !51, line: 407, baseType: !2621, size: 64, offset: 320)
!2621 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !194, line: 132, baseType: !208)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2610, file: !51, line: 408, baseType: !2621, size: 64, offset: 384)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2542, file: !51, line: 442, baseType: !2552, size: 64, offset: 640)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !853, file: !14, line: 1200, baseType: !2625, size: 64, offset: 576)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2627)
!2627 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !853, file: !14, line: 1201, baseType: !200, size: 64, offset: 640)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !853, file: !14, line: 1202, baseType: !200, size: 64, offset: 704)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !853, file: !14, line: 1203, baseType: !200, size: 64, offset: 768)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !853, file: !14, line: 1204, baseType: !745, size: 64, offset: 832)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !853, file: !14, line: 1205, baseType: !1500, size: 320, offset: 896)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !853, file: !14, line: 1206, baseType: !123, size: 32, offset: 1216)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !853, file: !14, line: 1207, baseType: !382, size: 32, offset: 1248)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !853, file: !14, line: 1209, baseType: !399, size: 64, offset: 1280)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !853, file: !14, line: 1211, baseType: !2637, size: 64, offset: 1344)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2640)
!2640 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !853, file: !14, line: 1223, baseType: !2642, size: 64, offset: 1408)
!2642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !762, line: 34, size: 64, elements: !2643)
!2643 = !{!2644}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2642, file: !762, line: 35, baseType: !765, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !853, file: !14, line: 1224, baseType: !430, size: 128, offset: 1472)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !853, file: !14, line: 1225, baseType: !401, size: 64, offset: 1600)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !853, file: !14, line: 1226, baseType: !2648, size: 64, offset: 1664)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !156, line: 1495, size: 128, elements: !2650)
!2650 = !{!2651, !2652}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !2649, file: !156, line: 1496, baseType: !401, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "holder", scope: !2649, file: !156, line: 1497, baseType: !399, size: 64, offset: 64)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !853, file: !14, line: 1227, baseType: !2654, size: 64, offset: 1728)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !853, file: !14, line: 1228, baseType: !2657, size: 64, offset: 1792)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !853, file: !14, line: 1229, baseType: !464, size: 128, offset: 1856)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !853, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !853, file: !14, line: 1231, baseType: !2662, size: 2496, offset: 2048)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !51, line: 521, size: 2496, elements: !2663)
!2663 = !{!2664, !2665, !2666, !2668, !2700}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2662, file: !51, line: 522, baseType: !7, size: 32)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2662, file: !51, line: 523, baseType: !1500, size: 320, offset: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2662, file: !51, line: 524, baseType: !2667, size: 192, offset: 384)
!2667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !710, size: 192, elements: !636)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2662, file: !51, line: 525, baseType: !2669, size: 1728, offset: 576)
!2669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2670, size: 1728, elements: !636)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !51, line: 222, size: 576, elements: !2671)
!2671 = !{!2672, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2670, file: !51, line: 223, baseType: !2673, size: 64)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !51, line: 445, size: 256, elements: !2675)
!2675 = !{!2676, !2677, !2690, !2691}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2674, file: !51, line: 446, baseType: !123, size: 32)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2674, file: !51, line: 447, baseType: !2678, size: 64, offset: 64)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2680)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !51, line: 312, size: 512, elements: !2681)
!2681 = !{!2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2680, file: !51, line: 313, baseType: !1317, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2680, file: !51, line: 314, baseType: !1317, size: 64, offset: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2680, file: !51, line: 315, baseType: !1317, size: 64, offset: 128)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2680, file: !51, line: 316, baseType: !1317, size: 64, offset: 192)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2680, file: !51, line: 317, baseType: !2505, size: 64, offset: 256)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2680, file: !51, line: 318, baseType: !2505, size: 64, offset: 320)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2680, file: !51, line: 319, baseType: !2505, size: 64, offset: 384)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2680, file: !51, line: 320, baseType: !2535, size: 64, offset: 448)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2674, file: !51, line: 448, baseType: !887, size: 64, offset: 128)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2674, file: !51, line: 449, baseType: !2673, size: 64, offset: 192)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2670, file: !51, line: 224, baseType: !123, size: 32, offset: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2670, file: !51, line: 226, baseType: !430, size: 128, offset: 128)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2670, file: !51, line: 227, baseType: !200, size: 64, offset: 256)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2670, file: !51, line: 228, baseType: !7, size: 32, offset: 320)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2670, file: !51, line: 229, baseType: !7, size: 32, offset: 352)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2670, file: !51, line: 230, baseType: !2473, size: 64, offset: 384)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2670, file: !51, line: 231, baseType: !2473, size: 64, offset: 448)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2670, file: !51, line: 232, baseType: !399, size: 64, offset: 512)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2662, file: !51, line: 526, baseType: !2701, size: 192, offset: 2304)
!2701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2678, size: 192, elements: !636)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !853, file: !14, line: 1233, baseType: !2703, size: 2368, offset: 4544)
!2703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !2704)
!2704 = !{!2705, !2706, !2707}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2703, file: !14, line: 1185, baseType: !202, size: 16)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2703, file: !14, line: 1186, baseType: !202, size: 16, offset: 16)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2703, file: !14, line: 1187, baseType: !2708, size: 2304, offset: 64)
!2708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2709, size: 2304, elements: !636)
!2709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2710, line: 12, size: 768, elements: !2711)
!2710 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2711 = !{!2712, !2720, !2721, !4007, !4008}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2709, file: !2710, line: 13, baseType: !2713, size: 384)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2714, line: 17, size: 384, elements: !2715)
!2714 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2715 = !{!2716, !2717, !2718, !2719}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2713, file: !2714, line: 18, baseType: !123, size: 32)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2713, file: !2714, line: 19, baseType: !123, size: 32, offset: 32)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2713, file: !2714, line: 20, baseType: !572, size: 192, offset: 64)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2713, file: !2714, line: 22, baseType: !1161, size: 128, align: 64, offset: 256)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2709, file: !2710, line: 14, baseType: !531, size: 64, offset: 384)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2709, file: !2710, line: 15, baseType: !2722, size: 64, offset: 448)
!2722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2723, line: 16, size: 64, elements: !2724)
!2723 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2724 = !{!2725}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2722, file: !2723, line: 17, baseType: !2726, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !2371, line: 746, size: 58368, elements: !2728)
!2728 = !{!2729, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2809, !2820, !2915, !2919, !2922, !2953, !2954, !2955, !2956, !2960, !2962, !2963, !2964, !2965, !2966, !2967, !2978, !2979, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2996, !2997, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3090, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3138, !3144, !3145, !3146, !3147, !3148, !3152, !3155, !3162, !3167, !3170, !3173, !3176, !3179, !3317, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3355, !3356, !3357, !3366, !3374, !3375, !3376, !3377, !3378, !3383, !3384, !3385, !3388, !3389, !3479, !3490, !3493, !3501, !3504, !3505, !3591, !3592, !3593, !3594, !3595, !3601, !3602, !3603, !3604, !3607, !3608, !3611, !3614, !3615, !3618, !3619, !3620, !3623, !3624, !3625, !3626, !3627, !3628, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3660, !3661, !3667, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3749, !3751, !3752, !3753, !3754, !3755, !3756, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3786, !3787, !3788}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2727, file: !2371, line: 752, baseType: !2730, size: 192)
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2731, line: 56, size: 192, elements: !2732)
!2731 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2732 = !{!2733, !2734, !2735, !2736}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2730, file: !2731, line: 57, baseType: !200, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2730, file: !2731, line: 58, baseType: !200, size: 64, offset: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2730, file: !2731, line: 59, baseType: !205, size: 32, offset: 128)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2730, file: !2731, line: 61, baseType: !205, size: 32, offset: 160)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2727, file: !2371, line: 754, baseType: !7, size: 32, offset: 192)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2727, file: !2371, line: 767, baseType: !399, size: 64, offset: 256)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2727, file: !2371, line: 768, baseType: !1432, size: 32, offset: 320)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2727, file: !2371, line: 770, baseType: !7, size: 32, offset: 352)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2727, file: !2371, line: 771, baseType: !7, size: 32, offset: 384)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2727, file: !2371, line: 774, baseType: !123, size: 32, offset: 416)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2727, file: !2371, line: 775, baseType: !2744, size: 128, offset: 448)
!2744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2745, line: 58, size: 128, elements: !2746)
!2745 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2746 = !{!2747, !2748, !2753, !2754}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2744, file: !2745, line: 59, baseType: !1389, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_member, scope: !2744, file: !2745, line: 60, baseType: !2749, size: 32, offset: 64)
!2749 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2744, file: !2745, line: 60, size: 32, elements: !2750)
!2750 = !{!2751, !2752}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2749, file: !2745, line: 61, baseType: !7, size: 32)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2749, file: !2745, line: 62, baseType: !382, size: 32)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2744, file: !2745, line: 65, baseType: !395, size: 16, offset: 96)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2744, file: !2745, line: 65, baseType: !395, size: 16, offset: 112)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2727, file: !2371, line: 776, baseType: !7, size: 32, offset: 576)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2727, file: !2371, line: 777, baseType: !200, size: 64, offset: 640)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2727, file: !2371, line: 778, baseType: !2726, size: 64, offset: 704)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2727, file: !2371, line: 787, baseType: !123, size: 32, offset: 768)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2727, file: !2371, line: 788, baseType: !123, size: 32, offset: 800)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2727, file: !2371, line: 790, baseType: !123, size: 32, offset: 832)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2727, file: !2371, line: 792, baseType: !123, size: 32, offset: 864)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2727, file: !2371, line: 793, baseType: !123, size: 32, offset: 896)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2727, file: !2371, line: 794, baseType: !123, size: 32, offset: 928)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2727, file: !2371, line: 795, baseType: !7, size: 32, offset: 960)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2727, file: !2371, line: 797, baseType: !2766, size: 2048, offset: 1024)
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !2371, line: 551, size: 2048, elements: !2767)
!2767 = !{!2768, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2788, !2791, !2792, !2793}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2766, file: !2371, line: 553, baseType: !2769, size: 128)
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !2371, line: 411, size: 128, elements: !2770)
!2770 = !{!2771, !2772}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2769, file: !2371, line: 412, baseType: !200, size: 64)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2769, file: !2371, line: 413, baseType: !205, size: 32, offset: 64)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2766, file: !2371, line: 554, baseType: !1055, size: 192, align: 64, offset: 128)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2766, file: !2371, line: 555, baseType: !208, size: 64, offset: 320)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2766, file: !2371, line: 556, baseType: !208, size: 64, offset: 384)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2766, file: !2371, line: 558, baseType: !430, size: 128, offset: 448)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2766, file: !2371, line: 559, baseType: !7, size: 32, offset: 576)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2766, file: !2371, line: 561, baseType: !208, size: 64, offset: 640)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2766, file: !2371, line: 562, baseType: !208, size: 64, offset: 704)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2766, file: !2371, line: 563, baseType: !208, size: 64, offset: 768)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2766, file: !2371, line: 564, baseType: !208, size: 64, offset: 832)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2766, file: !2371, line: 565, baseType: !450, size: 64, offset: 896)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2766, file: !2371, line: 566, baseType: !208, size: 64, offset: 960)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2766, file: !2371, line: 568, baseType: !208, size: 64, offset: 1024)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2766, file: !2371, line: 571, baseType: !123, size: 32, offset: 1088)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2766, file: !2371, line: 572, baseType: !2787, size: 64, offset: 1152)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2766, file: !2371, line: 574, baseType: !2789, size: 64, offset: 1216)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !2371, line: 49, flags: DIFlagFwdDecl)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2766, file: !2371, line: 576, baseType: !2789, size: 64, offset: 1280)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2766, file: !2371, line: 578, baseType: !200, size: 64, offset: 1344)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2766, file: !2371, line: 588, baseType: !2794, size: 512, align: 512, offset: 1536)
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !2371, line: 497, size: 512, align: 512, elements: !2795)
!2795 = !{!2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2794, file: !2371, line: 498, baseType: !208, size: 64)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2794, file: !2371, line: 499, baseType: !208, size: 64, offset: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2794, file: !2371, line: 500, baseType: !208, size: 64, offset: 128)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2794, file: !2371, line: 501, baseType: !205, size: 32, offset: 192)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2794, file: !2371, line: 502, baseType: !205, size: 32, offset: 224)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2794, file: !2371, line: 503, baseType: !200, size: 64, offset: 256)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2794, file: !2371, line: 504, baseType: !200, size: 64, offset: 320)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2794, file: !2371, line: 505, baseType: !200, size: 64, offset: 384)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2794, file: !2371, line: 506, baseType: !2805, size: 64, align: 64, offset: 448)
!2805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !2371, line: 445, size: 64, align: 64, elements: !2806)
!2806 = !{!2807, !2808}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2805, file: !2371, line: 446, baseType: !7, size: 32)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2805, file: !2371, line: 447, baseType: !7, size: 32, offset: 32)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2727, file: !2371, line: 798, baseType: !2810, size: 384, offset: 3072)
!2810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !2371, line: 592, size: 384, elements: !2811)
!2811 = !{!2812, !2813, !2814, !2815, !2816, !2817, !2818}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2810, file: !2371, line: 593, baseType: !430, size: 128)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2810, file: !2371, line: 594, baseType: !200, size: 64, offset: 128)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2810, file: !2371, line: 595, baseType: !200, size: 64, offset: 192)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2810, file: !2371, line: 596, baseType: !7, size: 32, offset: 256)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2810, file: !2371, line: 597, baseType: !202, size: 16, offset: 288)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2810, file: !2371, line: 598, baseType: !202, size: 16, offset: 304)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2810, file: !2371, line: 600, baseType: !2819, size: 64, offset: 320)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2727, file: !2371, line: 799, baseType: !2821, size: 1792, offset: 3456)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !2371, line: 610, size: 1792, elements: !2822)
!2822 = !{!2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2912, !2913}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2821, file: !2371, line: 611, baseType: !1055, size: 192, align: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2821, file: !2371, line: 618, baseType: !208, size: 64, offset: 192)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2821, file: !2371, line: 619, baseType: !208, size: 64, offset: 256)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2821, file: !2371, line: 620, baseType: !208, size: 64, offset: 320)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2821, file: !2371, line: 621, baseType: !208, size: 64, offset: 384)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2821, file: !2371, line: 622, baseType: !208, size: 64, offset: 448)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2821, file: !2371, line: 629, baseType: !450, size: 64, offset: 512)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2821, file: !2371, line: 630, baseType: !208, size: 64, offset: 576)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2821, file: !2371, line: 631, baseType: !7, size: 32, offset: 640)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2821, file: !2371, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2821, file: !2371, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2821, file: !2371, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2821, file: !2371, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2821, file: !2371, line: 662, baseType: !2837, size: 512, offset: 704)
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !57, line: 118, size: 512, elements: !2838)
!2838 = !{!2839, !2847, !2848, !2853, !2908, !2909, !2910, !2911}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2837, file: !57, line: 119, baseType: !2840, size: 256)
!2840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2841, line: 9, size: 256, elements: !2842)
!2841 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2842 = !{!2843, !2844}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2840, file: !2841, line: 10, baseType: !1055, size: 192, align: 64)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2840, file: !2841, line: 11, baseType: !2845, size: 64, offset: 192)
!2845 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2846, line: 29, baseType: !450)
!2846 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2837, file: !57, line: 120, baseType: !2845, size: 64, offset: 256)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2837, file: !57, line: 121, baseType: !2849, size: 64, offset: 320)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = !DISubroutineType(types: !2851)
!2851 = !{!56, !2852}
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2837, file: !57, line: 122, baseType: !2854, size: 64, offset: 384)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !57, line: 159, size: 512, align: 512, elements: !2856)
!2856 = !{!2857, !2882, !2883, !2886, !2891, !2892, !2903, !2907}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2855, file: !57, line: 160, baseType: !2858, size: 64)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !57, line: 215, size: 4608, align: 512, elements: !2860)
!2860 = !{!2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2859, file: !57, line: 216, baseType: !529, size: 32)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2859, file: !57, line: 217, baseType: !7, size: 32, offset: 32)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2859, file: !57, line: 218, baseType: !7, size: 32, offset: 64)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2859, file: !57, line: 219, baseType: !7, size: 32, offset: 96)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2859, file: !57, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2859, file: !57, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2859, file: !57, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2859, file: !57, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2859, file: !57, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2859, file: !57, line: 226, baseType: !7, size: 32, offset: 160)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2859, file: !57, line: 227, baseType: !202, size: 16, offset: 192)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2859, file: !57, line: 228, baseType: !202, size: 16, offset: 208)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2859, file: !57, line: 229, baseType: !7, size: 32, offset: 224)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2859, file: !57, line: 235, baseType: !2845, size: 64, offset: 256)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2859, file: !57, line: 236, baseType: !2852, size: 64, offset: 320)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2859, file: !57, line: 237, baseType: !2845, size: 64, offset: 384)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2859, file: !57, line: 238, baseType: !2852, size: 64, offset: 448)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2859, file: !57, line: 239, baseType: !2879, size: 4096, align: 512, offset: 512)
!2879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2855, size: 4096, align: 512, elements: !2880)
!2880 = !{!2881}
!2881 = !DISubrange(count: 8)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2855, file: !57, line: 161, baseType: !7, size: 32, offset: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2855, file: !57, line: 162, baseType: !2884, size: 32, offset: 96)
!2884 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !194, line: 32, baseType: !2885)
!2885 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !211, line: 96, baseType: !123)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2855, file: !57, line: 163, baseType: !2887, size: 32, offset: 128)
!2887 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !752, line: 274, baseType: !2888)
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !752, line: 274, size: 32, elements: !2889)
!2889 = !{!2890}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2888, file: !752, line: 274, baseType: !756, size: 32)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2855, file: !57, line: 164, baseType: !2852, size: 64, offset: 192)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2855, file: !57, line: 165, baseType: !2893, size: 128, offset: 256)
!2893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2841, line: 14, size: 128, elements: !2894)
!2894 = !{!2895}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2893, file: !2841, line: 15, baseType: !2896, size: 128)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1056, line: 26, size: 128, elements: !2897)
!2897 = !{!2898, !2902}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2896, file: !1056, line: 27, baseType: !2899, size: 64)
!2899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1056, line: 12, size: 64, elements: !2900)
!2900 = !{!2901}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2899, file: !1056, line: 13, baseType: !1060, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2896, file: !1056, line: 28, baseType: !1060, size: 64, offset: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2855, file: !57, line: 166, baseType: !2904, size: 64, offset: 384)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!2845}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2855, file: !57, line: 167, baseType: !2845, size: 64, offset: 448)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2837, file: !57, line: 123, baseType: !196, size: 8, offset: 448)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2837, file: !57, line: 124, baseType: !196, size: 8, offset: 456)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2837, file: !57, line: 125, baseType: !196, size: 8, offset: 464)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2837, file: !57, line: 126, baseType: !196, size: 8, offset: 472)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2821, file: !2371, line: 671, baseType: !2837, size: 512, offset: 1216)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2821, file: !2371, line: 679, baseType: !2914, size: 64, offset: 1728)
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2727, file: !2371, line: 800, baseType: !2916, size: 64, offset: 5248)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2918)
!2918 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !2371, line: 800, flags: DIFlagFwdDecl)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2727, file: !2371, line: 809, baseType: !2920, size: 64, offset: 5312)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !2371, line: 70, flags: DIFlagFwdDecl)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2727, file: !2371, line: 825, baseType: !2923, size: 2048, align: 512, offset: 5632)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !2371, line: 509, size: 2048, align: 512, elements: !2924)
!2924 = !{!2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2923, file: !2371, line: 511, baseType: !208, size: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2923, file: !2371, line: 512, baseType: !208, size: 64, offset: 64)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2923, file: !2371, line: 513, baseType: !208, size: 64, offset: 128)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2923, file: !2371, line: 514, baseType: !208, size: 64, offset: 192)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2923, file: !2371, line: 515, baseType: !208, size: 64, offset: 256)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2923, file: !2371, line: 516, baseType: !208, size: 64, offset: 320)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2923, file: !2371, line: 518, baseType: !208, size: 64, offset: 384)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2923, file: !2371, line: 519, baseType: !208, size: 64, offset: 448)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2923, file: !2371, line: 520, baseType: !450, size: 64, offset: 512)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2923, file: !2371, line: 522, baseType: !208, size: 64, offset: 576)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2923, file: !2371, line: 523, baseType: !208, size: 64, offset: 640)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2923, file: !2371, line: 524, baseType: !450, size: 64, offset: 704)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2923, file: !2371, line: 526, baseType: !450, size: 64, offset: 768)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2923, file: !2371, line: 527, baseType: !208, size: 64, offset: 832)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2923, file: !2371, line: 529, baseType: !208, size: 64, offset: 896)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2923, file: !2371, line: 530, baseType: !208, size: 64, offset: 960)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2923, file: !2371, line: 531, baseType: !208, size: 64, offset: 1024)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2923, file: !2371, line: 532, baseType: !208, size: 64, offset: 1088)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2923, file: !2371, line: 533, baseType: !208, size: 64, offset: 1152)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2923, file: !2371, line: 535, baseType: !208, size: 64, offset: 1216)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2923, file: !2371, line: 536, baseType: !208, size: 64, offset: 1280)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2923, file: !2371, line: 537, baseType: !208, size: 64, offset: 1344)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2923, file: !2371, line: 538, baseType: !208, size: 64, offset: 1408)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2923, file: !2371, line: 539, baseType: !208, size: 64, offset: 1472)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2923, file: !2371, line: 540, baseType: !208, size: 64, offset: 1536)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2923, file: !2371, line: 541, baseType: !208, size: 64, offset: 1600)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2923, file: !2371, line: 542, baseType: !208, size: 64, offset: 1664)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2923, file: !2371, line: 543, baseType: !208, size: 64, offset: 1728)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2727, file: !2371, line: 833, baseType: !7, size: 32, offset: 7680)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2727, file: !2371, line: 836, baseType: !7, size: 32, offset: 7712)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2727, file: !2371, line: 837, baseType: !123, size: 32, offset: 7744)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2727, file: !2371, line: 838, baseType: !2957, size: 64, offset: 7808)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2959)
!2959 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !483, line: 19, baseType: !485)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2727, file: !2371, line: 839, baseType: !2961, size: 64, offset: 7872)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2727, file: !2371, line: 840, baseType: !2959, size: 64, offset: 7936)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2727, file: !2371, line: 841, baseType: !399, size: 64, offset: 8000)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2727, file: !2371, line: 843, baseType: !202, size: 16, offset: 8064)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2727, file: !2371, line: 845, baseType: !202, size: 16, offset: 8080)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2727, file: !2371, line: 848, baseType: !123, size: 32, offset: 8096)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2727, file: !2371, line: 849, baseType: !2968, size: 32, offset: 8128)
!2968 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !2371, line: 718, size: 32, elements: !2969)
!2969 = !{!2970, !2977}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2968, file: !2371, line: 724, baseType: !2971, size: 32)
!2971 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2968, file: !2371, line: 719, size: 32, elements: !2972)
!2972 = !{!2973, !2974, !2975, !2976}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2971, file: !2371, line: 720, baseType: !196, size: 8)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2971, file: !2371, line: 721, baseType: !196, size: 8, offset: 8)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2971, file: !2371, line: 722, baseType: !196, size: 8, offset: 16)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2971, file: !2371, line: 723, baseType: !196, size: 8, offset: 24)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2968, file: !2371, line: 725, baseType: !205, size: 32)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2727, file: !2371, line: 850, baseType: !430, size: 128, offset: 8192)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2727, file: !2371, line: 851, baseType: !2980, size: 64, offset: 8320)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !2371, line: 60, flags: DIFlagFwdDecl)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2727, file: !2371, line: 855, baseType: !200, size: 64, offset: 8384)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2727, file: !2371, line: 856, baseType: !196, size: 8, offset: 8448)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2727, file: !2371, line: 857, baseType: !196, size: 8, offset: 8456)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2727, file: !2371, line: 858, baseType: !123, size: 32, offset: 8480)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2727, file: !2371, line: 859, baseType: !430, size: 128, offset: 8512)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2727, file: !2371, line: 860, baseType: !123, size: 32, offset: 8640)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2727, file: !2371, line: 861, baseType: !430, size: 128, offset: 8704)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2727, file: !2371, line: 873, baseType: !2990, size: 256, offset: 8832)
!2990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !2371, line: 376, size: 256, elements: !2991)
!2991 = !{!2992, !2993, !2994, !2995}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2990, file: !2371, line: 381, baseType: !200, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2990, file: !2371, line: 384, baseType: !191, size: 64, offset: 64)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2990, file: !2371, line: 389, baseType: !191, size: 64, offset: 128)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2990, file: !2371, line: 392, baseType: !191, size: 64, offset: 192)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2727, file: !2371, line: 875, baseType: !430, size: 128, offset: 9088)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2727, file: !2371, line: 877, baseType: !2998, size: 320, offset: 9216)
!2998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2999, line: 86, size: 320, elements: !3000)
!2999 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3000 = !{!3001, !3002, !3003}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2998, file: !2999, line: 87, baseType: !123, size: 32)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2998, file: !2999, line: 88, baseType: !430, size: 128, offset: 64)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2998, file: !2999, line: 89, baseType: !430, size: 128, offset: 192)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2727, file: !2371, line: 878, baseType: !1055, size: 192, align: 64, offset: 9536)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2727, file: !2371, line: 881, baseType: !1870, size: 64, offset: 9728)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2727, file: !2371, line: 882, baseType: !1870, size: 64, offset: 9792)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2727, file: !2371, line: 884, baseType: !123, size: 32, offset: 9856)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2727, file: !2371, line: 885, baseType: !123, size: 32, offset: 9888)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2727, file: !2371, line: 886, baseType: !123, size: 32, offset: 9920)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2727, file: !2371, line: 888, baseType: !123, size: 32, offset: 9952)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2727, file: !2371, line: 890, baseType: !200, size: 64, offset: 9984)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2727, file: !2371, line: 893, baseType: !7, size: 32, offset: 10048)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2727, file: !2371, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2727, file: !2371, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2727, file: !2371, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2727, file: !2371, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2727, file: !2371, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2727, file: !2371, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2727, file: !2371, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2727, file: !2371, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2727, file: !2371, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2727, file: !2371, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2727, file: !2371, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2727, file: !2371, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2727, file: !2371, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2727, file: !2371, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2727, file: !2371, line: 969, baseType: !200, size: 64, offset: 10176)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2727, file: !2371, line: 971, baseType: !3029, size: 448, offset: 10240)
!3029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !3030)
!3030 = !{!3031, !3032, !3037}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3029, file: !62, line: 26, baseType: !200, size: 64)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3029, file: !62, line: 27, baseType: !3033, size: 64, offset: 64)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{!670, !3036}
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_member, scope: !3029, file: !62, line: 28, baseType: !3038, size: 320, offset: 128)
!3038 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3029, file: !62, line: 28, size: 320, elements: !3039)
!3039 = !{!3040, !3050, !3075}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3038, file: !62, line: 37, baseType: !3041, size: 320)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3038, file: !62, line: 30, size: 320, elements: !3042)
!3042 = !{!3043, !3045, !3046, !3047, !3048, !3049}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3041, file: !62, line: 31, baseType: !3044, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3041, file: !62, line: 32, baseType: !205, size: 32, offset: 64)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3041, file: !62, line: 33, baseType: !205, size: 32, offset: 96)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3041, file: !62, line: 34, baseType: !205, size: 32, offset: 128)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3041, file: !62, line: 35, baseType: !208, size: 64, offset: 192)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3041, file: !62, line: 36, baseType: !3044, size: 64, offset: 256)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3038, file: !62, line: 47, baseType: !3051, size: 192)
!3051 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3038, file: !62, line: 39, size: 192, elements: !3052)
!3052 = !{!3053, !3054, !3055, !3074}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3051, file: !62, line: 40, baseType: !2884, size: 32)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3051, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!3055 = !DIDerivedType(tag: DW_TAG_member, scope: !3051, file: !62, line: 42, baseType: !3056, size: 64, offset: 64)
!3056 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3051, file: !62, line: 42, size: 64, elements: !3057)
!3057 = !{!3058, !3066}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3056, file: !62, line: 43, baseType: !3059, size: 64)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3061, line: 7, size: 128, elements: !3062)
!3061 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3062 = !{!3063, !3065}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3060, file: !3061, line: 8, baseType: !3064, size: 64)
!3064 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !211, line: 93, baseType: !215)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3060, file: !3061, line: 9, baseType: !215, size: 64, offset: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3056, file: !62, line: 44, baseType: !3067, size: 64)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3069, line: 7, size: 64, elements: !3070)
!3069 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3070 = !{!3071, !3073}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3068, file: !3069, line: 8, baseType: !3072, size: 32)
!3072 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3069, line: 5, baseType: !950)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3068, file: !3069, line: 9, baseType: !950, size: 32, offset: 32)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3051, file: !62, line: 46, baseType: !208, size: 64, offset: 128)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3038, file: !62, line: 55, baseType: !3076, size: 256)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3038, file: !62, line: 49, size: 256, elements: !3077)
!3077 = !{!3078, !3086, !3087, !3088, !3089}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3076, file: !62, line: 50, baseType: !3079, size: 64)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !3081, line: 36, size: 64, elements: !3082)
!3081 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!3082 = !{!3083, !3084, !3085}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !3080, file: !3081, line: 37, baseType: !123, size: 32)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3080, file: !3081, line: 38, baseType: !1079, size: 16, offset: 32)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !3080, file: !3081, line: 39, baseType: !1079, size: 16, offset: 48)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3076, file: !62, line: 51, baseType: !123, size: 32, offset: 64)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3076, file: !62, line: 52, baseType: !123, size: 32, offset: 96)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3076, file: !62, line: 53, baseType: !200, size: 64, offset: 128)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3076, file: !62, line: 54, baseType: !200, size: 64, offset: 192)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2727, file: !2371, line: 973, baseType: !3091, size: 32, offset: 10688)
!3091 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !194, line: 27, baseType: !3092)
!3092 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !211, line: 28, baseType: !123)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2727, file: !2371, line: 974, baseType: !3091, size: 32, offset: 10720)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2727, file: !2371, line: 978, baseType: !200, size: 64, offset: 10752)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2727, file: !2371, line: 987, baseType: !2726, size: 64, offset: 10816)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2727, file: !2371, line: 990, baseType: !2726, size: 64, offset: 10880)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2727, file: !2371, line: 995, baseType: !430, size: 128, offset: 10944)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2727, file: !2371, line: 996, baseType: !430, size: 128, offset: 11072)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2727, file: !2371, line: 997, baseType: !2726, size: 64, offset: 11200)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2727, file: !2371, line: 1005, baseType: !430, size: 128, offset: 11264)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2727, file: !2371, line: 1006, baseType: !430, size: 128, offset: 11392)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2727, file: !2371, line: 1009, baseType: !1428, size: 64, offset: 11520)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2727, file: !2371, line: 1010, baseType: !3104, size: 512, offset: 11584)
!3104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 512, elements: !321)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2727, file: !2371, line: 1011, baseType: !430, size: 128, offset: 12096)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2727, file: !2371, line: 1012, baseType: !430, size: 128, offset: 12224)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2727, file: !2371, line: 1014, baseType: !903, size: 64, offset: 12352)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2727, file: !2371, line: 1017, baseType: !1070, size: 64, offset: 12416)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2727, file: !2371, line: 1020, baseType: !1070, size: 64, offset: 12480)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2727, file: !2371, line: 1023, baseType: !399, size: 64, offset: 12544)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2727, file: !2371, line: 1025, baseType: !208, size: 64, offset: 12608)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2727, file: !2371, line: 1026, baseType: !208, size: 64, offset: 12672)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2727, file: !2371, line: 1031, baseType: !208, size: 64, offset: 12736)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2727, file: !2371, line: 1032, baseType: !3115, size: 192, offset: 12800)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !2371, line: 324, size: 192, elements: !3116)
!3116 = !{!3117, !3118, !3119}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3115, file: !2371, line: 326, baseType: !208, size: 64)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3115, file: !2371, line: 327, baseType: !208, size: 64, offset: 64)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3115, file: !2371, line: 328, baseType: !529, size: 32, offset: 128)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2727, file: !2371, line: 1041, baseType: !200, size: 64, offset: 12992)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2727, file: !2371, line: 1042, baseType: !200, size: 64, offset: 13056)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2727, file: !2371, line: 1045, baseType: !208, size: 64, offset: 13120)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2727, file: !2371, line: 1048, baseType: !208, size: 64, offset: 13184)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2727, file: !2371, line: 1051, baseType: !200, size: 64, offset: 13248)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2727, file: !2371, line: 1052, baseType: !200, size: 64, offset: 13312)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2727, file: !2371, line: 1055, baseType: !3127, size: 640, offset: 13376)
!3127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3128, line: 132, size: 640, elements: !3129)
!3128 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3129 = !{!3130, !3136, !3137}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3127, file: !3128, line: 133, baseType: !3131, size: 576)
!3131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3132, size: 576, elements: !636)
!3132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3128, line: 117, size: 192, elements: !3133)
!3133 = !{!3134, !3135}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3132, file: !3128, line: 118, baseType: !208, size: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3132, file: !3128, line: 119, baseType: !2893, size: 128, offset: 64)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3127, file: !3128, line: 134, baseType: !7, size: 32, offset: 576)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3127, file: !3128, line: 135, baseType: !7, size: 32, offset: 608)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2727, file: !2371, line: 1058, baseType: !3139, size: 448, offset: 14016)
!3139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3128, line: 144, size: 448, elements: !3140)
!3140 = !{!3141, !3142, !3143}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3139, file: !3128, line: 145, baseType: !1161, size: 128, align: 64)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3139, file: !3128, line: 146, baseType: !954, size: 256, offset: 128)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3139, file: !3128, line: 147, baseType: !7, size: 32, offset: 384)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2727, file: !2371, line: 1064, baseType: !1459, size: 64, offset: 14464)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2727, file: !2371, line: 1067, baseType: !1459, size: 64, offset: 14528)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2727, file: !2371, line: 1070, baseType: !1459, size: 64, offset: 14592)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2727, file: !2371, line: 1074, baseType: !1486, size: 64, offset: 14656)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2727, file: !2371, line: 1084, baseType: !3149, size: 128, offset: 14720)
!3149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 128, elements: !3150)
!3150 = !{!3151}
!3151 = !DISubrange(count: 16)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2727, file: !2371, line: 1086, baseType: !3153, size: 64, offset: 14848)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !2371, line: 55, flags: DIFlagFwdDecl)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2727, file: !2371, line: 1089, baseType: !3156, size: 64, offset: 14912)
!3156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3157, line: 12, size: 64, elements: !3158)
!3157 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3158 = !{!3159}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3156, file: !3157, line: 13, baseType: !3160, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3157, line: 8, flags: DIFlagFwdDecl)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2727, file: !2371, line: 1090, baseType: !3163, size: 128, offset: 14976)
!3163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3164, line: 13, size: 128, elements: !3165)
!3164 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3165 = !{!3166}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3163, file: !3164, line: 14, baseType: !430, size: 128)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2727, file: !2371, line: 1097, baseType: !3168, size: 64, offset: 15104)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !2371, line: 50, flags: DIFlagFwdDecl)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2727, file: !2371, line: 1100, baseType: !3171, size: 64, offset: 15168)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !2371, line: 1100, flags: DIFlagFwdDecl)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2727, file: !2371, line: 1103, baseType: !3174, size: 64, offset: 15232)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !2371, line: 53, flags: DIFlagFwdDecl)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2727, file: !2371, line: 1107, baseType: !3177, size: 64, offset: 15296)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2371, line: 56, flags: DIFlagFwdDecl)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2727, file: !2371, line: 1110, baseType: !3180, size: 64, offset: 15360)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3182, line: 93, size: 8768, elements: !3183)
!3182 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3183 = !{!3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3231, !3240, !3241, !3243, !3244, !3245, !3248, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3286, !3287, !3294, !3304, !3307, !3308, !3311, !3312, !3313, !3314, !3315, !3316}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3181, file: !3182, line: 94, baseType: !1432, size: 32)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3181, file: !3182, line: 95, baseType: !382, size: 32, offset: 32)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3181, file: !3182, line: 96, baseType: !123, size: 32, offset: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3181, file: !3182, line: 97, baseType: !123, size: 32, offset: 96)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3181, file: !3182, line: 98, baseType: !430, size: 128, offset: 128)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3181, file: !3182, line: 100, baseType: !572, size: 192, offset: 256)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3181, file: !3182, line: 103, baseType: !2726, size: 64, offset: 448)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3181, file: !3182, line: 106, baseType: !3192, size: 192, offset: 512)
!3192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1640, line: 32, size: 192, elements: !3193)
!3193 = !{!3194, !3195}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3192, file: !1640, line: 33, baseType: !430, size: 128)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3192, file: !1640, line: 34, baseType: !3196, size: 64, offset: 128)
!3196 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3197, line: 25, baseType: !3198)
!3197 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3198 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3197, line: 23, size: 64, elements: !3199)
!3199 = !{!3200}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3198, file: !3197, line: 24, baseType: !488, size: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3181, file: !3182, line: 109, baseType: !1273, size: 64, offset: 704)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3181, file: !3182, line: 112, baseType: !123, size: 32, offset: 768)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3181, file: !3182, line: 114, baseType: !123, size: 32, offset: 800)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3181, file: !3182, line: 115, baseType: !2726, size: 64, offset: 832)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3181, file: !3182, line: 118, baseType: !123, size: 32, offset: 896)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3181, file: !3182, line: 119, baseType: !7, size: 32, offset: 928)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3181, file: !3182, line: 121, baseType: !3208, size: 64, offset: 960)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3182, line: 80, size: 448, elements: !3210)
!3210 = !{!3211, !3212, !3218}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3209, file: !3182, line: 81, baseType: !382, size: 32)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3209, file: !3182, line: 82, baseType: !3213, size: 128, offset: 64)
!3213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3182, line: 75, size: 128, elements: !3214)
!3214 = !{!3215, !3216}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3213, file: !3182, line: 76, baseType: !2726, size: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3213, file: !3182, line: 77, baseType: !3217, size: 64, offset: 64)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3209, file: !3182, line: 83, baseType: !904, size: 256, offset: 192)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3181, file: !3182, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3181, file: !3182, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3181, file: !3182, line: 138, baseType: !7, size: 32, offset: 1056)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3181, file: !3182, line: 139, baseType: !430, size: 128, offset: 1088)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3181, file: !3182, line: 142, baseType: !2837, size: 512, offset: 1216)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3181, file: !3182, line: 143, baseType: !2845, size: 64, offset: 1728)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3181, file: !3182, line: 150, baseType: !3226, size: 256, offset: 1792)
!3226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3227, size: 256, elements: !235)
!3227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3182, line: 38, size: 128, elements: !3228)
!3228 = !{!3229, !3230}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3227, file: !3182, line: 39, baseType: !208, size: 64)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3227, file: !3182, line: 40, baseType: !208, size: 64, offset: 64)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3181, file: !3182, line: 156, baseType: !3232, size: 192, offset: 2048)
!3232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3182, line: 66, size: 192, elements: !3233)
!3233 = !{!3234}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3232, file: !3182, line: 67, baseType: !3235, size: 192)
!3235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3182, line: 47, size: 192, elements: !3236)
!3236 = !{!3237, !3238, !3239}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3235, file: !3182, line: 48, baseType: !446, size: 64)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3235, file: !3182, line: 49, baseType: !446, size: 64, offset: 64)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3235, file: !3182, line: 50, baseType: !446, size: 64, offset: 128)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3181, file: !3182, line: 160, baseType: !3127, size: 640, offset: 2240)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3181, file: !3182, line: 163, baseType: !3242, size: 256, offset: 2880)
!3242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1428, size: 256, elements: !321)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3181, file: !3182, line: 169, baseType: !1428, size: 64, offset: 3136)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3181, file: !3182, line: 172, baseType: !123, size: 32, offset: 3200)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3181, file: !3182, line: 174, baseType: !3246, size: 64, offset: 3264)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3182, line: 174, flags: DIFlagFwdDecl)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3181, file: !3182, line: 185, baseType: !3249, size: 64, offset: 3328)
!3249 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !752, line: 860, baseType: !3250)
!3250 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !752, line: 853, size: 64, elements: !3251)
!3251 = !{!3252, !3253}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3250, file: !752, line: 858, baseType: !751, size: 32)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3250, file: !752, line: 859, baseType: !362, size: 32, offset: 32)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3181, file: !3182, line: 186, baseType: !208, size: 64, offset: 3392)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3181, file: !3182, line: 186, baseType: !208, size: 64, offset: 3456)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3181, file: !3182, line: 186, baseType: !208, size: 64, offset: 3520)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3181, file: !3182, line: 186, baseType: !208, size: 64, offset: 3584)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3181, file: !3182, line: 187, baseType: !208, size: 64, offset: 3648)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3181, file: !3182, line: 188, baseType: !208, size: 64, offset: 3712)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3181, file: !3182, line: 189, baseType: !3115, size: 192, offset: 3776)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3181, file: !3182, line: 190, baseType: !200, size: 64, offset: 3968)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3181, file: !3182, line: 190, baseType: !200, size: 64, offset: 4032)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3181, file: !3182, line: 190, baseType: !200, size: 64, offset: 4096)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3181, file: !3182, line: 190, baseType: !200, size: 64, offset: 4160)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3181, file: !3182, line: 191, baseType: !200, size: 64, offset: 4224)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3181, file: !3182, line: 191, baseType: !200, size: 64, offset: 4288)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3181, file: !3182, line: 191, baseType: !200, size: 64, offset: 4352)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3181, file: !3182, line: 191, baseType: !200, size: 64, offset: 4416)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3181, file: !3182, line: 192, baseType: !200, size: 64, offset: 4480)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3181, file: !3182, line: 192, baseType: !200, size: 64, offset: 4544)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3181, file: !3182, line: 192, baseType: !200, size: 64, offset: 4608)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3181, file: !3182, line: 192, baseType: !200, size: 64, offset: 4672)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3181, file: !3182, line: 193, baseType: !200, size: 64, offset: 4736)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3181, file: !3182, line: 193, baseType: !200, size: 64, offset: 4800)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3181, file: !3182, line: 194, baseType: !3276, size: 448, offset: 4864)
!3276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3277, line: 12, size: 448, elements: !3278)
!3277 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3278 = !{!3279, !3280, !3281, !3282, !3283, !3284, !3285}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3276, file: !3277, line: 15, baseType: !208, size: 64)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3276, file: !3277, line: 17, baseType: !208, size: 64, offset: 64)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3276, file: !3277, line: 19, baseType: !208, size: 64, offset: 128)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3276, file: !3277, line: 21, baseType: !208, size: 64, offset: 192)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3276, file: !3277, line: 29, baseType: !208, size: 64, offset: 256)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3276, file: !3277, line: 35, baseType: !208, size: 64, offset: 320)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3276, file: !3277, line: 44, baseType: !208, size: 64, offset: 384)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3181, file: !3182, line: 202, baseType: !191, size: 64, offset: 5312)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3181, file: !3182, line: 213, baseType: !3288, size: 2048, offset: 5376)
!3288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3289, size: 2048, elements: !3150)
!3289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3290, line: 43, size: 128, elements: !3291)
!3290 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3291 = !{!3292, !3293}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3289, file: !3290, line: 44, baseType: !212, size: 64)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3289, file: !3290, line: 45, baseType: !212, size: 64, offset: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3181, file: !3182, line: 216, baseType: !3295, size: 448, offset: 7424)
!3295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3182, line: 30, size: 448, elements: !3296)
!3296 = !{!3297, !3298, !3299, !3300, !3301, !3302, !3303}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3295, file: !3182, line: 31, baseType: !123, size: 32)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3295, file: !3182, line: 32, baseType: !670, size: 64, offset: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3295, file: !3182, line: 33, baseType: !200, size: 64, offset: 128)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3295, file: !3182, line: 34, baseType: !208, size: 64, offset: 192)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3295, file: !3182, line: 34, baseType: !208, size: 64, offset: 256)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3295, file: !3182, line: 35, baseType: !200, size: 64, offset: 320)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3295, file: !3182, line: 35, baseType: !200, size: 64, offset: 384)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3181, file: !3182, line: 219, baseType: !3305, size: 64, offset: 7872)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3182, line: 219, flags: DIFlagFwdDecl)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3181, file: !3182, line: 222, baseType: !7, size: 32, offset: 7936)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3181, file: !3182, line: 223, baseType: !3309, size: 64, offset: 8000)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3182, line: 223, flags: DIFlagFwdDecl)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3181, file: !3182, line: 230, baseType: !520, size: 8, offset: 8064)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3181, file: !3182, line: 231, baseType: !1079, size: 16, offset: 8080)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3181, file: !3182, line: 232, baseType: !1079, size: 16, offset: 8096)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3181, file: !3182, line: 234, baseType: !1870, size: 64, offset: 8128)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3181, file: !3182, line: 237, baseType: !954, size: 256, offset: 8192)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3181, file: !3182, line: 243, baseType: !1500, size: 320, offset: 8448)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2727, file: !2371, line: 1111, baseType: !3318, size: 64, offset: 15424)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3182, line: 20, size: 16640, elements: !3320)
!3320 = !{!3321, !3322, !3323, !3324}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3319, file: !3182, line: 21, baseType: !362, size: 32)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3319, file: !3182, line: 22, baseType: !1432, size: 32, offset: 32)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3319, file: !3182, line: 23, baseType: !572, size: 192, offset: 64)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3319, file: !3182, line: 24, baseType: !3325, size: 16384, offset: 256)
!3325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3326, size: 16384, elements: !640)
!3326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1640, line: 51, size: 256, elements: !3327)
!3327 = !{!3328}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3326, file: !1640, line: 52, baseType: !3329, size: 256)
!3329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1640, line: 37, size: 256, elements: !3330)
!3330 = !{!3331, !3338, !3339, !3343}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3329, file: !1640, line: 39, baseType: !3332, size: 64)
!3332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3333, line: 83, baseType: !3334)
!3333 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3333, line: 82, baseType: !3336)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{null, !123}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3329, file: !1640, line: 40, baseType: !200, size: 64, offset: 64)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3329, file: !1640, line: 46, baseType: !3340, size: 64, offset: 128)
!3340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3333, line: 86, baseType: !3341)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3333, line: 85, baseType: !1268)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3329, file: !1640, line: 48, baseType: !3196, size: 64, offset: 192)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2727, file: !2371, line: 1112, baseType: !3196, size: 64, offset: 15488)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2727, file: !2371, line: 1113, baseType: !3196, size: 64, offset: 15552)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2727, file: !2371, line: 1115, baseType: !3196, size: 64, offset: 15616)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2727, file: !2371, line: 1116, baseType: !3192, size: 192, offset: 15680)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2727, file: !2371, line: 1117, baseType: !200, size: 64, offset: 15872)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2727, file: !2371, line: 1118, baseType: !209, size: 64, offset: 15936)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2727, file: !2371, line: 1119, baseType: !7, size: 32, offset: 16000)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2727, file: !2371, line: 1121, baseType: !1160, size: 64, offset: 16064)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2727, file: !2371, line: 1125, baseType: !3353, size: 64, offset: 16128)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !2371, line: 43, flags: DIFlagFwdDecl)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2727, file: !2371, line: 1127, baseType: !716, size: 32, offset: 16192)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2727, file: !2371, line: 1128, baseType: !7, size: 32, offset: 16224)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2727, file: !2371, line: 1130, baseType: !3358, size: 128, offset: 16256)
!3358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3359, line: 37, size: 128, elements: !3360)
!3359 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3360 = !{!3361, !3362, !3363}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3358, file: !3359, line: 38, baseType: !123, size: 32)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3358, file: !3359, line: 39, baseType: !382, size: 32, offset: 32)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3358, file: !3359, line: 40, baseType: !3364, size: 64, offset: 64)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3359, line: 24, flags: DIFlagFwdDecl)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2727, file: !2371, line: 1131, baseType: !3367, size: 256, offset: 16384)
!3367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3368, line: 12, size: 256, elements: !3369)
!3368 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3369 = !{!3370, !3371, !3372, !3373}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3367, file: !3368, line: 13, baseType: !230, size: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3367, file: !3368, line: 14, baseType: !200, size: 64, offset: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3367, file: !3368, line: 15, baseType: !200, size: 64, offset: 128)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3367, file: !3368, line: 16, baseType: !520, size: 8, offset: 192)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2727, file: !2371, line: 1134, baseType: !208, size: 64, offset: 16640)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2727, file: !2371, line: 1135, baseType: !208, size: 64, offset: 16704)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2727, file: !2371, line: 1138, baseType: !362, size: 32, offset: 16768)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2727, file: !2371, line: 1141, baseType: !529, size: 32, offset: 16800)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2727, file: !2371, line: 1143, baseType: !3379, size: 64, offset: 16832)
!3379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !2371, line: 735, size: 64, elements: !3380)
!3380 = !{!3381}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3379, file: !2371, line: 736, baseType: !3382, size: 64)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2727, file: !2371, line: 1147, baseType: !2896, size: 128, offset: 16896)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2727, file: !2371, line: 1149, baseType: !2726, size: 64, offset: 17024)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2727, file: !2371, line: 1151, baseType: !3386, size: 64, offset: 17088)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !2371, line: 1151, flags: DIFlagFwdDecl)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2727, file: !2371, line: 1188, baseType: !399, size: 64, offset: 17152)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2727, file: !2371, line: 1191, baseType: !3390, size: 64, offset: 17216)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !3392, line: 550, size: 128, elements: !3393)
!3392 = !DIFile(filename: "./include/linux/bio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48d164cf34dda85459af1fe5d2b8d08f")
!3393 = !{!3394, !3478}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3391, file: !3392, line: 551, baseType: !3395, size: 64)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio", file: !403, line: 265, size: 960, elements: !3397)
!3397 = !{!3398, !3399, !3400, !3402, !3403, !3404, !3405, !3406, !3413, !3415, !3420, !3421, !3424, !3428, !3429, !3431, !3432, !3433, !3434, !3436, !3476}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "bi_next", scope: !3396, file: !403, line: 266, baseType: !3395, size: 64)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bdev", scope: !3396, file: !403, line: 267, baseType: !401, size: 64, offset: 64)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "bi_opf", scope: !3396, file: !403, line: 268, baseType: !3401, size: 32, offset: 128)
!3401 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_opf_t", file: !403, line: 256, baseType: !186)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "bi_flags", scope: !3396, file: !403, line: 271, baseType: !202, size: 16, offset: 160)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "bi_ioprio", scope: !3396, file: !403, line: 272, baseType: !202, size: 16, offset: 176)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "bi_status", scope: !3396, file: !403, line: 273, baseType: !505, size: 8, offset: 192)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_remaining", scope: !3396, file: !403, line: 274, baseType: !382, size: 32, offset: 224)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iter", scope: !3396, file: !403, line: 276, baseType: !3407, size: 160, align: 32, offset: 256)
!3407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bvec_iter", file: !2268, line: 77, size: 160, align: 32, elements: !3408)
!3408 = !{!3409, !3410, !3411, !3412}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "bi_sector", scope: !3407, file: !2268, line: 78, baseType: !406, size: 64)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "bi_size", scope: !3407, file: !2268, line: 80, baseType: !7, size: 32, offset: 64)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "bi_idx", scope: !3407, file: !2268, line: 82, baseType: !7, size: 32, offset: 96)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bvec_done", scope: !3407, file: !2268, line: 84, baseType: !7, size: 32, offset: 128)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "bi_cookie", scope: !3396, file: !403, line: 278, baseType: !3414, size: 32, offset: 416)
!3414 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_qc_t", file: !403, line: 258, baseType: !7)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "bi_end_io", scope: !3396, file: !403, line: 279, baseType: !3416, size: 64, offset: 448)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_end_io_t", file: !403, line: 20, baseType: !3418)
!3418 = !DISubroutineType(types: !3419)
!3419 = !{null, !3395}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "bi_private", scope: !3396, file: !403, line: 280, baseType: !399, size: 64, offset: 512)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "bi_blkg", scope: !3396, file: !403, line: 288, baseType: !3422, size: 64, offset: 576)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DICompositeType(tag: DW_TAG_structure_type, name: "blkcg_gq", file: !403, line: 288, flags: DIFlagFwdDecl)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "bi_issue", scope: !3396, file: !403, line: 289, baseType: !3425, size: 64, offset: 640)
!3425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_issue", file: !403, line: 228, size: 64, elements: !3426)
!3426 = !{!3427}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3425, file: !403, line: 229, baseType: !208, size: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iocost_cost", scope: !3396, file: !403, line: 291, baseType: !208, size: 64, offset: 704)
!3429 = !DIDerivedType(tag: DW_TAG_member, scope: !3396, file: !403, line: 299, baseType: !3430, offset: 768)
!3430 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3396, file: !403, line: 299, elements: !1200)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "bi_vcnt", scope: !3396, file: !403, line: 305, baseType: !202, size: 16, offset: 768)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "bi_max_vecs", scope: !3396, file: !403, line: 311, baseType: !202, size: 16, offset: 784)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_cnt", scope: !3396, file: !403, line: 313, baseType: !382, size: 32, offset: 800)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "bi_io_vec", scope: !3396, file: !403, line: 315, baseType: !3435, size: 64, offset: 832)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pool", scope: !3396, file: !403, line: 317, baseType: !3437, size: 64, offset: 896)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_set", file: !3392, line: 678, size: 1984, elements: !3439)
!3439 = !{!3440, !3444, !3445, !3448, !3469, !3470, !3471, !3472, !3473, !3474, !3475}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "bio_slab", scope: !3438, file: !3392, line: 679, baseType: !3441, size: 64)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3443, line: 11, flags: DIFlagFwdDecl)
!3443 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "front_pad", scope: !3438, file: !3392, line: 680, baseType: !7, size: 32, offset: 64)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !3438, file: !3392, line: 685, baseType: !3446, size: 64, offset: 128)
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3447 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_alloc_cache", file: !3392, line: 685, flags: DIFlagFwdDecl)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "bio_pool", scope: !3438, file: !3392, line: 687, baseType: !3449, size: 576, offset: 192)
!3449 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_t", file: !3450, line: 26, baseType: !3451)
!3450 = !DIFile(filename: "./include/linux/mempool.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ef8a210e9c9e696cc7d6e9be9316611")
!3451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempool_s", file: !3450, line: 16, size: 576, elements: !3452)
!3452 = !{!3453, !3454, !3455, !3456, !3457, !3458, !3463, !3468}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3451, file: !3450, line: 17, baseType: !362, size: 32)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "min_nr", scope: !3451, file: !3450, line: 18, baseType: !123, size: 32, offset: 32)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "curr_nr", scope: !3451, file: !3450, line: 19, baseType: !123, size: 32, offset: 64)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !3451, file: !3450, line: 20, baseType: !2385, size: 64, offset: 128)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "pool_data", scope: !3451, file: !3450, line: 22, baseType: !399, size: 64, offset: 192)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3451, file: !3450, line: 23, baseType: !3459, size: 64, offset: 256)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_alloc_t", file: !3450, line: 13, baseType: !3461)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{!399, !193, !399}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3451, file: !3450, line: 24, baseType: !3464, size: 64, offset: 320)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_free_t", file: !3450, line: 14, baseType: !3466)
!3466 = !DISubroutineType(types: !3467)
!3467 = !{null, !399, !399}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !3451, file: !3450, line: 25, baseType: !572, size: 192, offset: 384)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_pool", scope: !3438, file: !3392, line: 688, baseType: !3449, size: 576, offset: 768)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "back_pad", scope: !3438, file: !3392, line: 694, baseType: !7, size: 32, offset: 1344)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_lock", scope: !3438, file: !3392, line: 699, baseType: !362, size: 32, offset: 1376)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_list", scope: !3438, file: !3392, line: 700, baseType: !3391, size: 128, offset: 1408)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_work", scope: !3438, file: !3392, line: 701, baseType: !441, size: 256, offset: 1536)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_workqueue", scope: !3438, file: !3392, line: 702, baseType: !478, size: 64, offset: 1792)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !3438, file: !3392, line: 707, baseType: !464, size: 128, offset: 1856)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "bi_inline_vecs", scope: !3396, file: !403, line: 324, baseType: !3477, offset: 960)
!3477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2267, elements: !1452)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !3391, file: !3392, line: 552, baseType: !3395, size: 64, offset: 64)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2727, file: !2371, line: 1194, baseType: !3480, size: 64, offset: 17280)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !156, line: 976, size: 320, elements: !3482)
!3482 = !{!3483, !3484, !3485, !3486, !3487, !3488, !3489}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "mq_list", scope: !3481, file: !156, line: 977, baseType: !414, size: 64)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "cached_rq", scope: !3481, file: !156, line: 980, baseType: !414, size: 64, offset: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ios", scope: !3481, file: !156, line: 981, baseType: !202, size: 16, offset: 128)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "rq_count", scope: !3481, file: !156, line: 983, baseType: !202, size: 16, offset: 144)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "multiple_queues", scope: !3481, file: !156, line: 985, baseType: !520, size: 8, offset: 160)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "has_elevator", scope: !3481, file: !156, line: 986, baseType: !520, size: 8, offset: 168)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !3481, file: !156, line: 988, baseType: !430, size: 128, offset: 192)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2727, file: !2371, line: 1197, baseType: !3491, size: 64, offset: 17344)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !2371, line: 61, flags: DIFlagFwdDecl)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2727, file: !2371, line: 1199, baseType: !3494, size: 64, offset: 17408)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3496, line: 99, size: 128, elements: !3497)
!3496 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3497 = !{!3498, !3499, !3500}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3495, file: !3496, line: 100, baseType: !444, size: 64)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3495, file: !3496, line: 101, baseType: !382, size: 32, offset: 64)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3495, file: !3496, line: 103, baseType: !202, size: 16, offset: 96)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2727, file: !2371, line: 1202, baseType: !3502, size: 64, offset: 17472)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !2371, line: 48, flags: DIFlagFwdDecl)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2727, file: !2371, line: 1205, baseType: !200, size: 64, offset: 17536)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2727, file: !2371, line: 1206, baseType: !3506, size: 64, offset: 17600)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1640, line: 14, baseType: !3508)
!3508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1640, line: 12, size: 384, elements: !3509)
!3509 = !{!3510}
!3510 = !DIDerivedType(tag: DW_TAG_member, scope: !3508, file: !1640, line: 13, baseType: !3511, size: 384)
!3511 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3508, file: !1640, line: 13, size: 384, elements: !3512)
!3512 = !{!3513, !3514, !3515, !3516}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3511, file: !1640, line: 13, baseType: !123, size: 32)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3511, file: !1640, line: 13, baseType: !123, size: 32, offset: 32)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3511, file: !1640, line: 13, baseType: !123, size: 32, offset: 64)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3511, file: !1640, line: 13, baseType: !3517, size: 256, offset: 128)
!3517 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3518, line: 37, size: 256, elements: !3519)
!3518 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3519 = !{!3520, !3525, !3538, !3544, !3553, !3580, !3585}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3517, file: !3518, line: 42, baseType: !3521, size: 64)
!3521 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3517, file: !3518, line: 39, size: 64, elements: !3522)
!3522 = !{!3523, !3524}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3521, file: !3518, line: 40, baseType: !3092, size: 32)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3521, file: !3518, line: 41, baseType: !722, size: 32, offset: 32)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3517, file: !3518, line: 50, baseType: !3526, size: 192)
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3517, file: !3518, line: 45, size: 192, elements: !3527)
!3527 = !{!3528, !3530, !3531, !3537}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3526, file: !3518, line: 46, baseType: !3529, size: 32)
!3529 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !211, line: 95, baseType: !123)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3526, file: !3518, line: 47, baseType: !123, size: 32, offset: 32)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3526, file: !3518, line: 48, baseType: !3532, size: 64, offset: 64)
!3532 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3518, line: 11, baseType: !3533)
!3533 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3518, line: 8, size: 64, elements: !3534)
!3534 = !{!3535, !3536}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3533, file: !3518, line: 9, baseType: !123, size: 32)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3533, file: !3518, line: 10, baseType: !399, size: 64)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3526, file: !3518, line: 49, baseType: !123, size: 32, offset: 128)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3517, file: !3518, line: 57, baseType: !3539, size: 128)
!3539 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3517, file: !3518, line: 53, size: 128, elements: !3540)
!3540 = !{!3541, !3542, !3543}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3539, file: !3518, line: 54, baseType: !3092, size: 32)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3539, file: !3518, line: 55, baseType: !722, size: 32, offset: 32)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3539, file: !3518, line: 56, baseType: !3532, size: 64, offset: 64)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3517, file: !3518, line: 66, baseType: !3545, size: 256)
!3545 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3517, file: !3518, line: 60, size: 256, elements: !3546)
!3546 = !{!3547, !3548, !3549, !3550, !3552}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3545, file: !3518, line: 61, baseType: !3092, size: 32)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3545, file: !3518, line: 62, baseType: !722, size: 32, offset: 32)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3545, file: !3518, line: 63, baseType: !123, size: 32, offset: 64)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3545, file: !3518, line: 64, baseType: !3551, size: 64, offset: 128)
!3551 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !211, line: 94, baseType: !669)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3545, file: !3518, line: 65, baseType: !3551, size: 64, offset: 192)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3517, file: !3518, line: 105, baseType: !3554, size: 256)
!3554 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3517, file: !3518, line: 69, size: 256, elements: !3555)
!3555 = !{!3556, !3557}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3554, file: !3518, line: 70, baseType: !399, size: 64)
!3557 = !DIDerivedType(tag: DW_TAG_member, scope: !3554, file: !3518, line: 79, baseType: !3558, size: 192, offset: 64)
!3558 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3554, file: !3518, line: 79, size: 192, elements: !3559)
!3559 = !{!3560, !3561, !3562, !3569, !3574}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3558, file: !3518, line: 81, baseType: !123, size: 32)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3558, file: !3518, line: 86, baseType: !1079, size: 16)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3558, file: !3518, line: 92, baseType: !3563, size: 192)
!3563 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3558, file: !3518, line: 88, size: 192, elements: !3564)
!3564 = !{!3565, !3567, !3568}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3563, file: !3518, line: 89, baseType: !3566, size: 64)
!3566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 64, elements: !2880)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3563, file: !3518, line: 90, baseType: !399, size: 64, offset: 64)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3563, file: !3518, line: 91, baseType: !399, size: 64, offset: 128)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3558, file: !3518, line: 97, baseType: !3570, size: 96)
!3570 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3558, file: !3518, line: 94, size: 96, elements: !3571)
!3571 = !{!3572, !3573}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3570, file: !3518, line: 95, baseType: !3566, size: 64)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3570, file: !3518, line: 96, baseType: !186, size: 32, offset: 64)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3558, file: !3518, line: 103, baseType: !3575, size: 128)
!3575 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3558, file: !3518, line: 99, size: 128, elements: !3576)
!3576 = !{!3577, !3578, !3579}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3575, file: !3518, line: 100, baseType: !200, size: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3575, file: !3518, line: 101, baseType: !186, size: 32, offset: 64)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3575, file: !3518, line: 102, baseType: !186, size: 32, offset: 96)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3517, file: !3518, line: 111, baseType: !3581, size: 128)
!3581 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3517, file: !3518, line: 108, size: 128, elements: !3582)
!3582 = !{!3583, !3584}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3581, file: !3518, line: 109, baseType: !670, size: 64)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3581, file: !3518, line: 110, baseType: !123, size: 32, offset: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3517, file: !3518, line: 118, baseType: !3586, size: 128)
!3586 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3517, file: !3518, line: 114, size: 128, elements: !3587)
!3587 = !{!3588, !3589, !3590}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3586, file: !3518, line: 115, baseType: !399, size: 64)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3586, file: !3518, line: 116, baseType: !123, size: 32, offset: 64)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3586, file: !3518, line: 117, baseType: !7, size: 32, offset: 96)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2727, file: !2371, line: 1208, baseType: !3276, size: 448, offset: 17664)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2727, file: !2371, line: 1215, baseType: !208, size: 64, offset: 18112)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2727, file: !2371, line: 1217, baseType: !208, size: 64, offset: 18176)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2727, file: !2371, line: 1219, baseType: !208, size: 64, offset: 18240)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2727, file: !2371, line: 1223, baseType: !3596, size: 64, offset: 18304)
!3596 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3597, line: 99, baseType: !3598)
!3597 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3598 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3597, line: 99, size: 64, elements: !3599)
!3599 = !{!3600}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3598, file: !3597, line: 99, baseType: !488, size: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2727, file: !2371, line: 1225, baseType: !751, size: 32, offset: 18368)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2727, file: !2371, line: 1226, baseType: !123, size: 32, offset: 18400)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2727, file: !2371, line: 1227, baseType: !123, size: 32, offset: 18432)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2727, file: !2371, line: 1231, baseType: !3605, size: 64, offset: 18496)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !2371, line: 1231, flags: DIFlagFwdDecl)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2727, file: !2371, line: 1233, baseType: !430, size: 128, offset: 18560)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2727, file: !2371, line: 1240, baseType: !3609, size: 64, offset: 18688)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !2371, line: 62, flags: DIFlagFwdDecl)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2727, file: !2371, line: 1242, baseType: !3612, size: 64, offset: 18752)
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3613 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !2371, line: 1242, flags: DIFlagFwdDecl)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2727, file: !2371, line: 1244, baseType: !430, size: 128, offset: 18816)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2727, file: !2371, line: 1245, baseType: !3616, size: 64, offset: 18944)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !2371, line: 51, flags: DIFlagFwdDecl)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2727, file: !2371, line: 1246, baseType: !954, size: 256, offset: 19008)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2727, file: !2371, line: 1247, baseType: !7, size: 32, offset: 19264)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2727, file: !2371, line: 1250, baseType: !3621, size: 64, offset: 19328)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !2371, line: 57, flags: DIFlagFwdDecl)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2727, file: !2371, line: 1251, baseType: !954, size: 256, offset: 19392)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2727, file: !2371, line: 1252, baseType: !430, size: 128, offset: 19648)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2727, file: !2371, line: 1259, baseType: !2102, size: 64, offset: 19776)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2727, file: !2371, line: 1260, baseType: !1079, size: 16, offset: 19840)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2727, file: !2371, line: 1261, baseType: !1079, size: 16, offset: 19856)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2727, file: !2371, line: 1314, baseType: !3629, size: 64, offset: 19904)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3631, line: 62, size: 256, align: 256, elements: !3632)
!3631 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3632 = !{!3633, !3634, !3635, !3636, !3637, !3638, !3639}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3630, file: !3631, line: 75, baseType: !186, size: 32)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3630, file: !3631, line: 90, baseType: !186, size: 32, offset: 32)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3630, file: !3631, line: 112, baseType: !190, size: 64, offset: 64)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3630, file: !3631, line: 132, baseType: !186, size: 32, offset: 128)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3630, file: !3631, line: 140, baseType: !186, size: 32, offset: 160)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3630, file: !3631, line: 149, baseType: !186, size: 32, offset: 192)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3630, file: !3631, line: 154, baseType: !3640, offset: 224)
!3640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, elements: !1452)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2727, file: !2371, line: 1315, baseType: !205, size: 32, offset: 19968)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2727, file: !2371, line: 1316, baseType: !205, size: 32, offset: 20000)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2727, file: !2371, line: 1321, baseType: !200, size: 64, offset: 20032)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2727, file: !2371, line: 1325, baseType: !123, size: 32, offset: 20096)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2727, file: !2371, line: 1326, baseType: !123, size: 32, offset: 20128)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2727, file: !2371, line: 1327, baseType: !123, size: 32, offset: 20160)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2727, file: !2371, line: 1328, baseType: !123, size: 32, offset: 20192)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2727, file: !2371, line: 1329, baseType: !1161, size: 128, align: 64, offset: 20224)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2727, file: !2371, line: 1332, baseType: !3650, size: 128, offset: 20352)
!3650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3651, line: 51, size: 128, elements: !3652)
!3651 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3652 = !{!3653, !3658, !3659}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3650, file: !3651, line: 60, baseType: !3654, size: 64)
!3654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3655, line: 7, size: 64, elements: !3656)
!3655 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3656 = !{!3657}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3654, file: !3655, line: 12, baseType: !485, size: 64)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3650, file: !3651, line: 63, baseType: !520, size: 8, offset: 64)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3650, file: !3651, line: 70, baseType: !520, size: 8, offset: 72)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2727, file: !2371, line: 1335, baseType: !2369, size: 64, offset: 20480)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2727, file: !2371, line: 1337, baseType: !3662, size: 128, offset: 20544)
!3662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3651, line: 39, size: 128, elements: !3663)
!3663 = !{!3664, !3665, !3666}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3662, file: !3651, line: 40, baseType: !1843, size: 64)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3662, file: !3651, line: 42, baseType: !186, size: 32, offset: 64)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3662, file: !3651, line: 43, baseType: !186, size: 32, offset: 96)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2727, file: !2371, line: 1340, baseType: !3668, size: 64, offset: 20672)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !2371, line: 69, flags: DIFlagFwdDecl)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2727, file: !2371, line: 1351, baseType: !123, size: 32, offset: 20736)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2727, file: !2371, line: 1352, baseType: !123, size: 32, offset: 20768)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2727, file: !2371, line: 1354, baseType: !200, size: 64, offset: 20800)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2727, file: !2371, line: 1364, baseType: !208, size: 64, offset: 20864)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2727, file: !2371, line: 1365, baseType: !208, size: 64, offset: 20928)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2727, file: !2371, line: 1412, baseType: !200, size: 64, offset: 20992)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2727, file: !2371, line: 1453, baseType: !345, size: 64, offset: 21056)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2727, file: !2371, line: 1457, baseType: !3678, size: 64, offset: 21120)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !3680)
!3680 = !{!3681, !3682, !3701, !3704, !3705, !3738, !3748}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3679, file: !68, line: 62, baseType: !67, size: 32)
!3682 = !DIDerivedType(tag: DW_TAG_member, scope: !3679, file: !68, line: 64, baseType: !3683, size: 192, offset: 64)
!3683 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3679, file: !68, line: 64, size: 192, elements: !3684)
!3684 = !{!3685, !3696}
!3685 = !DIDerivedType(tag: DW_TAG_member, scope: !3683, file: !68, line: 65, baseType: !3686, size: 192)
!3686 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3683, file: !68, line: 65, size: 192, elements: !3687)
!3687 = !{!3688, !3695}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3686, file: !68, line: 66, baseType: !3689, size: 128)
!3689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3690, line: 50, size: 128, elements: !3691)
!3690 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3691 = !{!3692, !3693, !3694}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3689, file: !3690, line: 52, baseType: !200, size: 64)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3689, file: !3690, line: 54, baseType: !7, size: 32, offset: 64)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3689, file: !3690, line: 55, baseType: !7, size: 32, offset: 96)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3686, file: !68, line: 67, baseType: !200, size: 64, offset: 128)
!3696 = !DIDerivedType(tag: DW_TAG_member, scope: !3683, file: !68, line: 70, baseType: !3697, size: 192)
!3697 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3683, file: !68, line: 70, size: 192, elements: !3698)
!3698 = !{!3699, !3700}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3697, file: !68, line: 71, baseType: !1161, size: 128, align: 64)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3697, file: !68, line: 72, baseType: !200, size: 64, offset: 128)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3679, file: !68, line: 76, baseType: !3702, size: 64, offset: 256)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3679, file: !68, line: 77, baseType: !200, size: 64, offset: 320)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3679, file: !68, line: 79, baseType: !3706, size: 64, offset: 384)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3690, line: 25, size: 256, elements: !3708)
!3708 = !{!3709, !3715, !3719}
!3709 = !DIDerivedType(tag: DW_TAG_member, scope: !3707, file: !3690, line: 26, baseType: !3710, size: 128)
!3710 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3707, file: !3690, line: 26, size: 128, elements: !3711)
!3711 = !{!3712, !3714}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3710, file: !3690, line: 27, baseType: !3713, size: 128)
!3713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 128, elements: !3150)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3710, file: !3690, line: 28, baseType: !3713, size: 128)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3707, file: !3690, line: 31, baseType: !3716, size: 64, offset: 128)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3718)
!3718 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3690, line: 23, flags: DIFlagFwdDecl)
!3719 = !DIDerivedType(tag: DW_TAG_member, scope: !3707, file: !3690, line: 33, baseType: !3720, size: 64, offset: 192)
!3720 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3707, file: !3690, line: 33, size: 64, elements: !3721)
!3721 = !{!3722, !3728, !3733}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3720, file: !3690, line: 38, baseType: !3723, size: 64)
!3723 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3720, file: !3690, line: 34, size: 64, elements: !3724)
!3724 = !{!3725, !3726, !3727}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3723, file: !3690, line: 35, baseType: !950, size: 32)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3723, file: !3690, line: 36, baseType: !196, size: 8, offset: 32)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3723, file: !3690, line: 37, baseType: !196, size: 8, offset: 40)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3720, file: !3690, line: 42, baseType: !3729, size: 16)
!3729 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3720, file: !3690, line: 39, size: 16, elements: !3730)
!3730 = !{!3731, !3732}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3729, file: !3690, line: 40, baseType: !196, size: 8)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3729, file: !3690, line: 41, baseType: !196, size: 8, offset: 8)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3720, file: !3690, line: 46, baseType: !3734, size: 16)
!3734 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3720, file: !3690, line: 43, size: 16, elements: !3735)
!3735 = !{!3736, !3737}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3734, file: !3690, line: 44, baseType: !196, size: 8)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3734, file: !3690, line: 45, baseType: !196, size: 8, offset: 8)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3679, file: !68, line: 81, baseType: !3739, size: 64, offset: 448)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !3741)
!3741 = !{!3742, !3743, !3744, !3745, !3746, !3747}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3740, file: !68, line: 86, baseType: !3702, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3740, file: !68, line: 87, baseType: !200, size: 64, offset: 64)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3740, file: !68, line: 88, baseType: !200, size: 64, offset: 128)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3740, file: !68, line: 89, baseType: !200, size: 64, offset: 192)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3740, file: !68, line: 90, baseType: !520, size: 8, offset: 256)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3740, file: !68, line: 92, baseType: !3739, size: 64, offset: 320)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3679, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2727, file: !2371, line: 1463, baseType: !3750, offset: 21184)
!3750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !2371, line: 739, elements: !1200)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2727, file: !2371, line: 1470, baseType: !1161, size: 128, align: 64, offset: 21184)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2727, file: !2371, line: 1471, baseType: !1432, size: 32, offset: 21312)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2727, file: !2371, line: 1472, baseType: !123, size: 32, offset: 21344)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2727, file: !2371, line: 1474, baseType: !2726, size: 64, offset: 21376)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2727, file: !2371, line: 1475, baseType: !460, size: 320, offset: 21440)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2727, file: !2371, line: 1478, baseType: !3757, size: 64, offset: 21760)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3759, line: 49, size: 512, elements: !3760)
!3759 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3760 = !{!3761, !3762, !3763, !3764, !3765, !3767, !3768, !3769, !3771}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3758, file: !3759, line: 50, baseType: !3757, size: 64)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3758, file: !3759, line: 51, baseType: !399, size: 64, offset: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3758, file: !3759, line: 52, baseType: !200, size: 64, offset: 128)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3758, file: !3759, line: 53, baseType: !200, size: 64, offset: 192)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3758, file: !3759, line: 54, baseType: !3766, size: 64, offset: 256)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3758, file: !3759, line: 56, baseType: !7, size: 32, offset: 320)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3758, file: !3759, line: 58, baseType: !7, size: 32, offset: 352)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3758, file: !3759, line: 59, baseType: !3770, size: 64, offset: 384)
!3770 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !194, line: 159, baseType: !208)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3758, file: !3759, line: 60, baseType: !1985, size: 64, offset: 448)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2727, file: !2371, line: 1482, baseType: !1432, size: 32, offset: 21824)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2727, file: !2371, line: 1489, baseType: !399, size: 64, offset: 21888)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2727, file: !2371, line: 1504, baseType: !399, size: 64, offset: 21952)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2727, file: !2371, line: 1505, baseType: !190, size: 64, offset: 22016)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2727, file: !2371, line: 1506, baseType: !208, size: 64, offset: 22080)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2727, file: !2371, line: 1507, baseType: !190, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2727, file: !2371, line: 1508, baseType: !190, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2727, file: !2371, line: 1509, baseType: !190, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2727, file: !2371, line: 1510, baseType: !1161, size: 128, align: 64, offset: 22208)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2727, file: !2371, line: 1511, baseType: !123, size: 32, offset: 22336)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2727, file: !2371, line: 1515, baseType: !3783, size: 64, offset: 22400)
!3783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1390, line: 56, size: 64, elements: !3784)
!3784 = !{!3785}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3783, file: !1390, line: 57, baseType: !1393, size: 64)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2727, file: !2371, line: 1518, baseType: !3783, size: 64, offset: 22464)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2727, file: !2371, line: 1528, baseType: !1161, size: 128, align: 64, offset: 22528)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2727, file: !2371, line: 1552, baseType: !3789, size: 35328, offset: 23040)
!3789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3790, line: 430, size: 35328, elements: !3791)
!3790 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3791 = !{!3792, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3821, !3822, !3823, !3824, !3825, !3826, !3829, !3830, !3831, !3832}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3789, file: !3790, line: 432, baseType: !3793, size: 192)
!3793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3794, size: 192, elements: !636)
!3794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3795, line: 16, size: 64, elements: !3796)
!3795 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3796 = !{!3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3794, file: !3795, line: 17, baseType: !395, size: 16)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3794, file: !3795, line: 18, baseType: !395, size: 16, offset: 16)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3794, file: !3795, line: 19, baseType: !395, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3794, file: !3795, line: 19, baseType: !395, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3794, file: !3795, line: 19, baseType: !395, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3794, file: !3795, line: 19, baseType: !395, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3794, file: !3795, line: 19, baseType: !395, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3794, file: !3795, line: 20, baseType: !395, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3794, file: !3795, line: 20, baseType: !395, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3794, file: !3795, line: 20, baseType: !395, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3794, file: !3795, line: 20, baseType: !395, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3794, file: !3795, line: 20, baseType: !395, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3794, file: !3795, line: 20, baseType: !395, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3789, file: !3790, line: 436, baseType: !200, size: 64, offset: 192)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3789, file: !3790, line: 440, baseType: !202, size: 16, offset: 256)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3789, file: !3790, line: 441, baseType: !202, size: 16, offset: 272)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3789, file: !3790, line: 442, baseType: !202, size: 16, offset: 288)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3789, file: !3790, line: 443, baseType: !202, size: 16, offset: 304)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3789, file: !3790, line: 447, baseType: !200, size: 64, offset: 320)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3789, file: !3790, line: 448, baseType: !200, size: 64, offset: 384)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3789, file: !3790, line: 459, baseType: !3818, size: 256, offset: 448)
!3818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3819, size: 256, elements: !321)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3790, line: 428, flags: DIFlagFwdDecl)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3789, file: !3790, line: 461, baseType: !200, size: 64, offset: 704)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3789, file: !3790, line: 463, baseType: !200, size: 64, offset: 768)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3789, file: !3790, line: 465, baseType: !200, size: 64, offset: 832)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3789, file: !3790, line: 466, baseType: !200, size: 64, offset: 896)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3789, file: !3790, line: 467, baseType: !200, size: 64, offset: 960)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3789, file: !3790, line: 473, baseType: !3827, size: 64, offset: 1024)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3790, line: 10, flags: DIFlagFwdDecl)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3789, file: !3790, line: 480, baseType: !200, size: 64, offset: 1088)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3789, file: !3790, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3789, file: !3790, line: 491, baseType: !205, size: 32, offset: 1184)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3789, file: !3790, line: 501, baseType: !3833, size: 33792, offset: 1536)
!3833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3834, line: 448, size: 33792, elements: !3835)
!3834 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3835 = !{!3836, !3837, !3838, !3998, !3999, !4005, !4006}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3833, file: !3834, line: 461, baseType: !7, size: 32)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3833, file: !3834, line: 468, baseType: !200, size: 64, offset: 64)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3833, file: !3834, line: 476, baseType: !3839, size: 64, offset: 128)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3834, line: 356, size: 33280, align: 512, elements: !3841)
!3841 = !{!3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3840, file: !3834, line: 358, baseType: !7, size: 32)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3840, file: !3834, line: 361, baseType: !7, size: 32, offset: 32)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3840, file: !3834, line: 364, baseType: !208, size: 64, offset: 64)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3840, file: !3834, line: 367, baseType: !208, size: 64, offset: 128)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3840, file: !3834, line: 370, baseType: !208, size: 64, offset: 192)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3840, file: !3834, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3840, file: !3834, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3840, file: !3834, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3840, file: !3834, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3840, file: !3834, line: 397, baseType: !3852, size: 32768, offset: 512)
!3852 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3834, line: 348, size: 32768, elements: !3853)
!3853 = !{!3854, !3867, !3904, !3981, !3994}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3852, file: !3834, line: 349, baseType: !3855, size: 896)
!3855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3834, line: 12, size: 896, elements: !3856)
!3856 = !{!3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3866}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3855, file: !3834, line: 13, baseType: !205, size: 32)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3855, file: !3834, line: 14, baseType: !205, size: 32, offset: 32)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3855, file: !3834, line: 15, baseType: !205, size: 32, offset: 64)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3855, file: !3834, line: 16, baseType: !205, size: 32, offset: 96)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3855, file: !3834, line: 17, baseType: !205, size: 32, offset: 128)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3855, file: !3834, line: 18, baseType: !205, size: 32, offset: 160)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3855, file: !3834, line: 19, baseType: !205, size: 32, offset: 192)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3855, file: !3834, line: 22, baseType: !3865, size: 640, offset: 224)
!3865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 640, elements: !259)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3855, file: !3834, line: 25, baseType: !205, size: 32, offset: 864)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3852, file: !3834, line: 350, baseType: !3868, size: 4096, align: 128)
!3868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3834, line: 34, size: 4096, align: 128, elements: !3869)
!3869 = !{!3870, !3871, !3872, !3873, !3874, !3889, !3890, !3891, !3893, !3895, !3899}
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3868, file: !3834, line: 35, baseType: !395, size: 16)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3868, file: !3834, line: 36, baseType: !395, size: 16, offset: 16)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3868, file: !3834, line: 37, baseType: !395, size: 16, offset: 32)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3868, file: !3834, line: 38, baseType: !395, size: 16, offset: 48)
!3874 = !DIDerivedType(tag: DW_TAG_member, scope: !3868, file: !3834, line: 39, baseType: !3875, size: 128, offset: 64)
!3875 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3868, file: !3834, line: 39, size: 128, elements: !3876)
!3876 = !{!3877, !3882}
!3877 = !DIDerivedType(tag: DW_TAG_member, scope: !3875, file: !3834, line: 40, baseType: !3878, size: 128)
!3878 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3875, file: !3834, line: 40, size: 128, elements: !3879)
!3879 = !{!3880, !3881}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3878, file: !3834, line: 41, baseType: !208, size: 64)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3878, file: !3834, line: 42, baseType: !208, size: 64, offset: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, scope: !3875, file: !3834, line: 44, baseType: !3883, size: 128)
!3883 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3875, file: !3834, line: 44, size: 128, elements: !3884)
!3884 = !{!3885, !3886, !3887, !3888}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3883, file: !3834, line: 45, baseType: !205, size: 32)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3883, file: !3834, line: 46, baseType: !205, size: 32, offset: 32)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3883, file: !3834, line: 47, baseType: !205, size: 32, offset: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3883, file: !3834, line: 48, baseType: !205, size: 32, offset: 96)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3868, file: !3834, line: 51, baseType: !205, size: 32, offset: 192)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3868, file: !3834, line: 52, baseType: !205, size: 32, offset: 224)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3868, file: !3834, line: 55, baseType: !3892, size: 1024, offset: 256)
!3892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 1024, elements: !353)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3868, file: !3834, line: 58, baseType: !3894, size: 2048, offset: 1280)
!3894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 2048, elements: !640)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3868, file: !3834, line: 60, baseType: !3896, size: 384, offset: 3328)
!3896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 384, elements: !3897)
!3897 = !{!3898}
!3898 = !DISubrange(count: 12)
!3899 = !DIDerivedType(tag: DW_TAG_member, scope: !3868, file: !3834, line: 62, baseType: !3900, size: 384, offset: 3712)
!3900 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3868, file: !3834, line: 62, size: 384, elements: !3901)
!3901 = !{!3902, !3903}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3900, file: !3834, line: 63, baseType: !3896, size: 384)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3900, file: !3834, line: 64, baseType: !3896, size: 384)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3852, file: !3834, line: 351, baseType: !3905, size: 1088)
!3905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3834, line: 79, size: 1088, elements: !3906)
!3906 = !{!3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3980}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3905, file: !3834, line: 80, baseType: !205, size: 32)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3905, file: !3834, line: 81, baseType: !205, size: 32, offset: 32)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3905, file: !3834, line: 82, baseType: !205, size: 32, offset: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3905, file: !3834, line: 83, baseType: !205, size: 32, offset: 96)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3905, file: !3834, line: 84, baseType: !205, size: 32, offset: 128)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3905, file: !3834, line: 85, baseType: !205, size: 32, offset: 160)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3905, file: !3834, line: 86, baseType: !205, size: 32, offset: 192)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3905, file: !3834, line: 88, baseType: !3865, size: 640, offset: 224)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3905, file: !3834, line: 89, baseType: !196, size: 8, offset: 864)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3905, file: !3834, line: 90, baseType: !196, size: 8, offset: 872)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3905, file: !3834, line: 91, baseType: !196, size: 8, offset: 880)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3905, file: !3834, line: 92, baseType: !196, size: 8, offset: 888)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3905, file: !3834, line: 93, baseType: !196, size: 8, offset: 896)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3905, file: !3834, line: 94, baseType: !196, size: 8, offset: 904)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3905, file: !3834, line: 95, baseType: !3922, size: 64, offset: 960)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3924, line: 11, size: 128, elements: !3925)
!3924 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3925 = !{!3926, !3927}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3923, file: !3924, line: 12, baseType: !670, size: 64)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3923, file: !3924, line: 13, baseType: !3928, size: 64, offset: 64)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3930, line: 103, size: 1344, elements: !3931)
!3930 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3931 = !{!3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3960, !3961, !3962}
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3929, file: !3930, line: 109, baseType: !200, size: 64)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3929, file: !3930, line: 110, baseType: !200, size: 64, offset: 64)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3929, file: !3930, line: 111, baseType: !200, size: 64, offset: 128)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3929, file: !3930, line: 112, baseType: !200, size: 64, offset: 192)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3929, file: !3930, line: 113, baseType: !200, size: 64, offset: 256)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3929, file: !3930, line: 114, baseType: !200, size: 64, offset: 320)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3929, file: !3930, line: 117, baseType: !200, size: 64, offset: 384)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3929, file: !3930, line: 118, baseType: !200, size: 64, offset: 448)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3929, file: !3930, line: 119, baseType: !200, size: 64, offset: 512)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3929, file: !3930, line: 120, baseType: !200, size: 64, offset: 576)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3929, file: !3930, line: 121, baseType: !200, size: 64, offset: 640)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3929, file: !3930, line: 122, baseType: !200, size: 64, offset: 704)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3929, file: !3930, line: 123, baseType: !200, size: 64, offset: 768)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3929, file: !3930, line: 124, baseType: !200, size: 64, offset: 832)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3929, file: !3930, line: 125, baseType: !200, size: 64, offset: 896)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3929, file: !3930, line: 139, baseType: !200, size: 64, offset: 960)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3929, file: !3930, line: 142, baseType: !200, size: 64, offset: 1024)
!3949 = !DIDerivedType(tag: DW_TAG_member, scope: !3929, file: !3930, line: 144, baseType: !3950, size: 64, offset: 1088)
!3950 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3929, file: !3930, line: 144, size: 64, elements: !3951)
!3951 = !{!3952, !3953, !3954}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3950, file: !3930, line: 146, baseType: !395, size: 16)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3950, file: !3930, line: 148, baseType: !208, size: 64)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3950, file: !3930, line: 150, baseType: !3955, size: 64)
!3955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3930, line: 59, size: 64, elements: !3956)
!3956 = !{!3957, !3958, !3959}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3955, file: !3930, line: 61, baseType: !208, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3955, file: !3930, line: 63, baseType: !208, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3955, file: !3930, line: 65, baseType: !208, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3929, file: !3930, line: 153, baseType: !200, size: 64, offset: 1152)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3929, file: !3930, line: 154, baseType: !200, size: 64, offset: 1216)
!3962 = !DIDerivedType(tag: DW_TAG_member, scope: !3929, file: !3930, line: 156, baseType: !3963, size: 64, offset: 1280)
!3963 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3929, file: !3930, line: 156, size: 64, elements: !3964)
!3964 = !{!3965, !3966, !3967}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3963, file: !3930, line: 158, baseType: !395, size: 16)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3963, file: !3930, line: 160, baseType: !208, size: 64)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3963, file: !3930, line: 162, baseType: !3968, size: 64)
!3968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3930, line: 69, size: 64, elements: !3969)
!3969 = !{!3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3968, file: !3930, line: 71, baseType: !208, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3968, file: !3930, line: 73, baseType: !208, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3968, file: !3930, line: 75, baseType: !208, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3968, file: !3930, line: 77, baseType: !208, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3968, file: !3930, line: 80, baseType: !208, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3968, file: !3930, line: 83, baseType: !208, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3968, file: !3930, line: 86, baseType: !208, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3968, file: !3930, line: 88, baseType: !208, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3968, file: !3930, line: 93, baseType: !208, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3968, file: !3930, line: 100, baseType: !208, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3905, file: !3834, line: 96, baseType: !205, size: 32, offset: 1024)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3852, file: !3834, line: 352, baseType: !3982, size: 4608, align: 512)
!3982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3834, line: 333, size: 4608, align: 512, elements: !3983)
!3983 = !{!3984, !3985, !3992}
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3982, file: !3834, line: 334, baseType: !3868, size: 4096, align: 128)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3982, file: !3834, line: 335, baseType: !3986, size: 512, offset: 4096)
!3986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3834, line: 312, size: 512, elements: !3987)
!3987 = !{!3988, !3989, !3990}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3986, file: !3834, line: 313, baseType: !208, size: 64)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3986, file: !3834, line: 314, baseType: !208, size: 64, offset: 64)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3986, file: !3834, line: 315, baseType: !3991, size: 384, offset: 128)
!3991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 384, elements: !312)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3982, file: !3834, line: 336, baseType: !3993, offset: 4608)
!3993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, elements: !1452)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3852, file: !3834, line: 353, baseType: !3995, size: 32768)
!3995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 32768, elements: !3996)
!3996 = !{!3997}
!3997 = !DISubrange(count: 4096)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3833, file: !3834, line: 484, baseType: !3839, size: 64, offset: 192)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3833, file: !3834, line: 491, baseType: !4000, size: 128, offset: 256)
!4000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3834, line: 404, size: 128, elements: !4001)
!4001 = !{!4002, !4003, !4004}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4000, file: !3834, line: 424, baseType: !208, size: 64)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4000, file: !3834, line: 432, baseType: !7, size: 32, offset: 64)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4000, file: !3834, line: 440, baseType: !7, size: 32, offset: 96)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3833, file: !3834, line: 498, baseType: !4000, size: 128, offset: 384)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3833, file: !3834, line: 508, baseType: !3840, size: 33280, align: 512, offset: 512)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2709, file: !2710, line: 16, baseType: !572, size: 192, offset: 512)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2709, file: !2710, line: 17, baseType: !382, size: 32, offset: 704)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !853, file: !14, line: 1240, baseType: !399, size: 64, offset: 6912)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !853, file: !14, line: 1243, baseType: !205, size: 32, offset: 6976)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !853, file: !14, line: 1245, baseType: !1516, size: 64, offset: 7040)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !853, file: !14, line: 1246, baseType: !1516, size: 64, offset: 7104)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !853, file: !14, line: 1248, baseType: !186, size: 32, offset: 7168)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !853, file: !14, line: 1249, baseType: !4015, size: 64, offset: 7232)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !853, file: !14, line: 1252, baseType: !352, size: 256, offset: 7296)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !853, file: !14, line: 1253, baseType: !4019, size: 128, offset: 7552)
!4019 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4020, line: 21, baseType: !4021)
!4020 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4021 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4020, line: 19, size: 128, elements: !4022)
!4022 = !{!4023}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4021, file: !4020, line: 20, baseType: !4024, size: 128)
!4024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 128, elements: !3150)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !853, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !853, file: !14, line: 1261, baseType: !954, size: 256, offset: 7744)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !853, file: !14, line: 1267, baseType: !223, size: 64, offset: 8000)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !853, file: !14, line: 1269, baseType: !799, size: 64, offset: 8064)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !853, file: !14, line: 1271, baseType: !4030, size: 448, offset: 8128)
!4030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2488, line: 63, size: 448, elements: !4031)
!4031 = !{!4032, !4037, !4038, !4039, !4040, !4041, !4042}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4030, file: !2488, line: 64, baseType: !4033, size: 64)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = !DISubroutineType(types: !4035)
!4035 = !{!200, !4036, !2486}
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4030, file: !2488, line: 66, baseType: !4033, size: 64, offset: 64)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4030, file: !2488, line: 69, baseType: !670, size: 64, offset: 128)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4030, file: !2488, line: 70, baseType: !123, size: 32, offset: 192)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4030, file: !2488, line: 71, baseType: !7, size: 32, offset: 224)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4030, file: !2488, line: 74, baseType: !430, size: 128, offset: 256)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4030, file: !2488, line: 85, baseType: !4043, size: 64, offset: 384)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !853, file: !14, line: 1274, baseType: !444, size: 64, offset: 8576)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !853, file: !14, line: 1280, baseType: !444, size: 64, offset: 8640)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !853, file: !14, line: 1283, baseType: !123, size: 32, offset: 8704)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !853, file: !14, line: 1286, baseType: !2420, size: 32, offset: 8736)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !853, file: !14, line: 1289, baseType: !478, size: 64, offset: 8768)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !853, file: !14, line: 1290, baseType: !1273, size: 64, offset: 8832)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !853, file: !14, line: 1297, baseType: !1635, size: 64, offset: 8896)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !853, file: !14, line: 1304, baseType: !4052, size: 64, offset: 8960)
!4052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4053, line: 49, size: 64, elements: !4054)
!4053 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4054 = !{!4055}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4052, file: !4053, line: 50, baseType: !4056, size: 64)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4053, line: 41, size: 512, align: 512, elements: !4058)
!4058 = !{!4059, !4060, !4065}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4057, file: !4053, line: 43, baseType: !362, size: 32)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4057, file: !4053, line: 45, baseType: !4061, size: 192, offset: 64)
!4061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4053, line: 29, size: 192, elements: !4062)
!4062 = !{!4063, !4064}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4061, file: !4053, line: 30, baseType: !430, size: 128)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4061, file: !4053, line: 32, baseType: !670, size: 64, offset: 128)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4057, file: !4053, line: 46, baseType: !670, size: 64, offset: 256)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !853, file: !14, line: 1305, baseType: !4052, size: 64, offset: 9024)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !853, file: !14, line: 1306, baseType: !1161, size: 128, align: 64, offset: 9088)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !853, file: !14, line: 1307, baseType: !441, size: 256, offset: 9216)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !853, file: !14, line: 1309, baseType: !954, size: 256, offset: 9472)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !853, file: !14, line: 1314, baseType: !123, size: 32, offset: 9728)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !853, file: !14, line: 1317, baseType: !362, size: 32, align: 512, offset: 10240)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !853, file: !14, line: 1318, baseType: !430, size: 128, offset: 10304)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !853, file: !14, line: 1320, baseType: !362, size: 32, offset: 10432)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !853, file: !14, line: 1321, baseType: !430, size: 128, offset: 10496)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !847, file: !848, line: 73, baseType: !123, size: 32, offset: 128)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !847, file: !848, line: 74, baseType: !4077, size: 64, offset: 192)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1476, line: 42, flags: DIFlagFwdDecl)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !801, file: !747, line: 141, baseType: !4081, size: 64, offset: 704)
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!123, !2548, !520}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !801, file: !747, line: 142, baseType: !4085, size: 64, offset: 768)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = !DISubroutineType(types: !4087)
!4087 = !{!745, !745, !4088}
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !711)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !746, file: !747, line: 96, baseType: !852, size: 64, offset: 832)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !746, file: !747, line: 97, baseType: !200, size: 64, offset: 896)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !746, file: !747, line: 98, baseType: !399, size: 64, offset: 960)
!4093 = !DIDerivedType(tag: DW_TAG_member, scope: !746, file: !747, line: 100, baseType: !4094, size: 128, offset: 1024)
!4094 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !746, file: !747, line: 100, size: 128, elements: !4095)
!4095 = !{!4096, !4097}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4094, file: !747, line: 101, baseType: !430, size: 128)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4094, file: !747, line: 102, baseType: !2323, size: 64)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !746, file: !747, line: 104, baseType: !430, size: 128, offset: 1152)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !746, file: !747, line: 105, baseType: !430, size: 128, offset: 1280)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !746, file: !747, line: 113, baseType: !4101, size: 128, offset: 1408)
!4101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !746, file: !747, line: 109, size: 128, elements: !4102)
!4102 = !{!4103, !4104, !4105}
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4101, file: !747, line: 110, baseType: !464, size: 128)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4101, file: !747, line: 111, baseType: !761, size: 128)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4101, file: !747, line: 112, baseType: !1161, size: 128, align: 64)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !739, file: !14, line: 1968, baseType: !4107, size: 64, offset: 64)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DISubroutineType(types: !4109)
!4109 = !{!223, !745, !710, !4110}
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4112, line: 10, size: 128, elements: !4113)
!4112 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4113 = !{!4114, !4115}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4111, file: !4112, line: 11, baseType: !989, size: 64)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4111, file: !4112, line: 12, baseType: !399, size: 64, offset: 64)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !739, file: !14, line: 1969, baseType: !4117, size: 64, offset: 128)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DISubroutineType(types: !4119)
!4119 = !{!123, !4077, !710, !123}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !739, file: !14, line: 1970, baseType: !4121, size: 64, offset: 192)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DISubroutineType(types: !4123)
!4123 = !{!733, !710, !123, !520}
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !739, file: !14, line: 1972, baseType: !4125, size: 64, offset: 256)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = !DISubroutineType(types: !4127)
!4127 = !{!123, !745, !230, !123}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !739, file: !14, line: 1974, baseType: !4129, size: 64, offset: 320)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{!123, !4077, !710, !745, !676, !520}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !739, file: !14, line: 1976, baseType: !4133, size: 64, offset: 384)
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4134, size: 64)
!4134 = !DISubroutineType(types: !4135)
!4135 = !{!123, !745, !710, !745}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !739, file: !14, line: 1977, baseType: !4137, size: 64, offset: 448)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{!123, !710, !745}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !739, file: !14, line: 1978, baseType: !4141, size: 64, offset: 512)
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4142 = !DISubroutineType(types: !4143)
!4143 = !{!123, !4077, !710, !745, !223}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !739, file: !14, line: 1980, baseType: !4145, size: 64, offset: 576)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = !DISubroutineType(types: !4147)
!4147 = !{!123, !4077, !710, !745, !676}
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !739, file: !14, line: 1982, baseType: !4137, size: 64, offset: 640)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !739, file: !14, line: 1983, baseType: !4150, size: 64, offset: 704)
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{!123, !4077, !710, !745, !676, !857}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !739, file: !14, line: 1985, baseType: !4154, size: 64, offset: 768)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = !DISubroutineType(types: !4156)
!4156 = !{!123, !4077, !710, !745, !710, !745, !7}
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !739, file: !14, line: 1987, baseType: !4158, size: 64, offset: 832)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = !DISubroutineType(types: !4160)
!4160 = !{!123, !4077, !745, !4161}
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !4163)
!4163 = !{!4164, !4165, !4166, !4176, !4185, !4186, !4191, !4192, !4193}
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4162, file: !14, line: 227, baseType: !7, size: 32)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4162, file: !14, line: 228, baseType: !676, size: 16, offset: 32)
!4166 = !DIDerivedType(tag: DW_TAG_member, scope: !4162, file: !14, line: 241, baseType: !4167, size: 32, offset: 64)
!4167 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4162, file: !14, line: 241, size: 32, elements: !4168)
!4168 = !{!4169, !4170}
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4167, file: !14, line: 242, baseType: !716, size: 32)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4167, file: !14, line: 243, baseType: !4171, size: 32)
!4171 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4172, line: 16, baseType: !4173)
!4172 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4173 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4172, line: 14, size: 32, elements: !4174)
!4174 = !{!4175}
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4173, file: !4172, line: 15, baseType: !721, size: 32)
!4176 = !DIDerivedType(tag: DW_TAG_member, scope: !4162, file: !14, line: 245, baseType: !4177, size: 32, offset: 96)
!4177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4162, file: !14, line: 245, size: 32, elements: !4178)
!4178 = !{!4179, !4180}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4177, file: !14, line: 246, baseType: !725, size: 32)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4177, file: !14, line: 247, baseType: !4181, size: 32)
!4181 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4172, line: 20, baseType: !4182)
!4182 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4172, line: 18, size: 32, elements: !4183)
!4183 = !{!4184}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4182, file: !4172, line: 19, baseType: !729, size: 32)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4162, file: !14, line: 249, baseType: !213, size: 64, offset: 128)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4162, file: !14, line: 250, baseType: !4187, size: 128, offset: 192)
!4187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1517, line: 13, size: 128, elements: !4188)
!4188 = !{!4189, !4190}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4187, file: !1517, line: 14, baseType: !1516, size: 64)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4187, file: !1517, line: 15, baseType: !670, size: 64, offset: 64)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4162, file: !14, line: 251, baseType: !4187, size: 128, offset: 320)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4162, file: !14, line: 252, baseType: !4187, size: 128, offset: 448)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4162, file: !14, line: 259, baseType: !1680, size: 64, offset: 576)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !739, file: !14, line: 1988, baseType: !4195, size: 64, offset: 896)
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4196, size: 64)
!4196 = !DISubroutineType(types: !4197)
!4197 = !{!123, !4077, !2548, !4198, !205, !7}
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4200, line: 22, size: 1280, elements: !4201)
!4200 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4201 = !{!4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222}
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4199, file: !4200, line: 23, baseType: !205, size: 32)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4199, file: !4200, line: 24, baseType: !676, size: 16, offset: 32)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4199, file: !4200, line: 25, baseType: !7, size: 32, offset: 64)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4199, file: !4200, line: 26, baseType: !204, size: 32, offset: 96)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4199, file: !4200, line: 27, baseType: !208, size: 64, offset: 128)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4199, file: !4200, line: 28, baseType: !208, size: 64, offset: 192)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4199, file: !4200, line: 41, baseType: !208, size: 64, offset: 256)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4199, file: !4200, line: 42, baseType: !857, size: 32, offset: 320)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4199, file: !4200, line: 43, baseType: !857, size: 32, offset: 352)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4199, file: !4200, line: 44, baseType: !716, size: 32, offset: 384)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4199, file: !4200, line: 45, baseType: !725, size: 32, offset: 416)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4199, file: !4200, line: 46, baseType: !213, size: 64, offset: 448)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4199, file: !4200, line: 47, baseType: !4187, size: 128, offset: 512)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4199, file: !4200, line: 48, baseType: !4187, size: 128, offset: 640)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4199, file: !4200, line: 49, baseType: !4187, size: 128, offset: 768)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4199, file: !4200, line: 50, baseType: !4187, size: 128, offset: 896)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4199, file: !4200, line: 51, baseType: !208, size: 64, offset: 1024)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4199, file: !4200, line: 52, baseType: !208, size: 64, offset: 1088)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4199, file: !4200, line: 53, baseType: !205, size: 32, offset: 1152)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4199, file: !4200, line: 54, baseType: !205, size: 32, offset: 1184)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4199, file: !4200, line: 55, baseType: !208, size: 64, offset: 1216)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !739, file: !14, line: 1990, baseType: !4224, size: 64, offset: 960)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = !DISubroutineType(types: !4226)
!4226 = !{!667, !745, !230, !209}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !739, file: !14, line: 1991, baseType: !4228, size: 64, offset: 1024)
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4229, size: 64)
!4229 = !DISubroutineType(types: !4230)
!4230 = !{!123, !710, !4231, !208, !208}
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !739, file: !14, line: 1993, baseType: !4234, size: 64, offset: 1088)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = !DISubroutineType(types: !4236)
!4236 = !{!123, !710, !123}
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !739, file: !14, line: 1994, baseType: !4238, size: 64, offset: 1152)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = !DISubroutineType(types: !4240)
!4240 = !{!123, !710, !745, !1680, !7, !676}
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !739, file: !14, line: 1997, baseType: !4242, size: 64, offset: 1216)
!4242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4243, size: 64)
!4243 = !DISubroutineType(types: !4244)
!4244 = !{!123, !4077, !710, !1680, !676}
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !739, file: !14, line: 1999, baseType: !4246, size: 64, offset: 1280)
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = !DISubroutineType(types: !4248)
!4248 = !{!733, !4077, !745, !123}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !739, file: !14, line: 2001, baseType: !4250, size: 64, offset: 1344)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = !DISubroutineType(types: !4252)
!4252 = !{!123, !4077, !745, !733, !123}
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !739, file: !14, line: 2003, baseType: !4254, size: 64, offset: 1408)
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = !DISubroutineType(types: !4256)
!4256 = !{!123, !4077, !745, !4257}
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !739, file: !14, line: 2005, baseType: !4260, size: 64, offset: 1472)
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = !DISubroutineType(types: !4262)
!4262 = !{!123, !745, !4257}
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !739, file: !14, line: 2006, baseType: !4264, size: 64, offset: 1536)
!4264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4265, size: 64)
!4265 = !DISubroutineType(types: !4266)
!4266 = !{!4267, !710}
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !4269)
!4269 = !{!4270, !4271}
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4268, file: !14, line: 3193, baseType: !358, size: 128)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4268, file: !14, line: 3194, baseType: !205, size: 32, offset: 128)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !711, file: !14, line: 655, baseType: !852, size: 64, offset: 448)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !711, file: !14, line: 656, baseType: !706, size: 64, offset: 512)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !711, file: !14, line: 659, baseType: !399, size: 64, offset: 576)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !711, file: !14, line: 663, baseType: !200, size: 64, offset: 640)
!4276 = !DIDerivedType(tag: DW_TAG_member, scope: !711, file: !14, line: 671, baseType: !4277, size: 32, offset: 704)
!4277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !711, file: !14, line: 671, size: 32, elements: !4278)
!4278 = !{!4279, !4281}
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4277, file: !14, line: 672, baseType: !4280, size: 32)
!4280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4277, file: !14, line: 673, baseType: !7, size: 32)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !711, file: !14, line: 675, baseType: !857, size: 32, offset: 736)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !711, file: !14, line: 676, baseType: !213, size: 64, offset: 768)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !711, file: !14, line: 677, baseType: !4187, size: 128, offset: 832)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !711, file: !14, line: 678, baseType: !4187, size: 128, offset: 960)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !711, file: !14, line: 679, baseType: !4187, size: 128, offset: 1088)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !711, file: !14, line: 680, baseType: !362, size: 32, offset: 1216)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !711, file: !14, line: 681, baseType: !202, size: 16, offset: 1248)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !711, file: !14, line: 682, baseType: !196, size: 8, offset: 1264)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !711, file: !14, line: 683, baseType: !196, size: 8, offset: 1272)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !711, file: !14, line: 684, baseType: !2621, size: 64, offset: 1280)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !711, file: !14, line: 691, baseType: !200, size: 64, offset: 1344)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !711, file: !14, line: 692, baseType: !1500, size: 320, offset: 1408)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !711, file: !14, line: 694, baseType: !200, size: 64, offset: 1728)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !711, file: !14, line: 695, baseType: !200, size: 64, offset: 1792)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !711, file: !14, line: 697, baseType: !464, size: 128, offset: 1856)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !711, file: !14, line: 698, baseType: !430, size: 128, offset: 1984)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !711, file: !14, line: 707, baseType: !430, size: 128, offset: 2112)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !711, file: !14, line: 708, baseType: !430, size: 128, offset: 2240)
!4300 = !DIDerivedType(tag: DW_TAG_member, scope: !711, file: !14, line: 709, baseType: !4301, size: 128, offset: 2368)
!4301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !711, file: !14, line: 709, size: 128, elements: !4302)
!4302 = !{!4303, !4304}
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4301, file: !14, line: 710, baseType: !1273, size: 64)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4301, file: !14, line: 711, baseType: !1161, size: 128, align: 64)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !711, file: !14, line: 713, baseType: !446, size: 64, offset: 2496)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !711, file: !14, line: 714, baseType: !446, size: 64, offset: 2560)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !711, file: !14, line: 715, baseType: !382, size: 32, offset: 2624)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !711, file: !14, line: 716, baseType: !382, size: 32, offset: 2656)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !711, file: !14, line: 717, baseType: !382, size: 32, offset: 2688)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !711, file: !14, line: 719, baseType: !382, size: 32, offset: 2720)
!4311 = !DIDerivedType(tag: DW_TAG_member, scope: !711, file: !14, line: 721, baseType: !4312, size: 64, offset: 2752)
!4312 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !711, file: !14, line: 721, size: 64, elements: !4313)
!4313 = !{!4314, !4315}
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4312, file: !14, line: 722, baseType: !1671, size: 64)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4312, file: !14, line: 723, baseType: !1296, size: 64)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !711, file: !14, line: 725, baseType: !4317, size: 64, offset: 2816)
!4317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4318, size: 64)
!4318 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !711, file: !14, line: 726, baseType: !707, size: 1536, align: 64, offset: 2880)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !711, file: !14, line: 727, baseType: !430, size: 128, offset: 4416)
!4321 = !DIDerivedType(tag: DW_TAG_member, scope: !711, file: !14, line: 728, baseType: !4322, size: 64, offset: 4544)
!4322 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !711, file: !14, line: 728, size: 64, elements: !4323)
!4323 = !{!4324, !4325, !4336, !4337}
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4322, file: !14, line: 729, baseType: !2369, size: 64)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4322, file: !14, line: 730, baseType: !4326, size: 64)
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4327, size: 64)
!4327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !4328, line: 14, size: 832, elements: !4329)
!4328 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd3580fb19b1b4d9a4e84334e4ba7aa6")
!4329 = !{!4330, !4331, !4332, !4333, !4334, !4335}
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4327, file: !4328, line: 15, baseType: !595, size: 512)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4327, file: !4328, line: 16, baseType: !887, size: 64, offset: 512)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4327, file: !4328, line: 17, baseType: !1671, size: 64, offset: 576)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4327, file: !4328, line: 18, baseType: !430, size: 128, offset: 640)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4327, file: !4328, line: 19, baseType: !857, size: 32, offset: 768)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4327, file: !4328, line: 20, baseType: !7, size: 32, offset: 800)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4322, file: !14, line: 731, baseType: !230, size: 64)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4322, file: !14, line: 732, baseType: !7, size: 32)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !711, file: !14, line: 735, baseType: !186, size: 32, offset: 4608)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !711, file: !14, line: 738, baseType: !186, size: 32, offset: 4640)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !711, file: !14, line: 739, baseType: !4015, size: 64, offset: 4672)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !711, file: !14, line: 750, baseType: !399, size: 64, offset: 4736)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !707, file: !14, line: 474, baseType: !358, size: 128, offset: 64)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !707, file: !14, line: 475, baseType: !1500, size: 320, offset: 192)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !707, file: !14, line: 476, baseType: !193, size: 32, offset: 512)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !707, file: !14, line: 477, baseType: !382, size: 32, offset: 544)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !707, file: !14, line: 482, baseType: !2896, size: 128, offset: 576)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !707, file: !14, line: 483, baseType: !200, size: 64, offset: 704)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !707, file: !14, line: 484, baseType: !200, size: 64, offset: 768)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !707, file: !14, line: 485, baseType: !4350, size: 64, offset: 832)
!4350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4351, size: 64)
!4351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4352)
!4352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !4353)
!4353 = !{!4354, !4358, !4362, !4366, !4370, !4386, !4390, !4394, !4398, !4402, !4406, !4410, !4411, !4415, !4419, !4423, !4428, !4432, !4439, !4440}
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4352, file: !14, line: 405, baseType: !4355, size: 64)
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4356, size: 64)
!4356 = !DISubroutineType(types: !4357)
!4357 = !{!123, !1843, !1308}
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4352, file: !14, line: 406, baseType: !4359, size: 64, offset: 64)
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = !DISubroutineType(types: !4361)
!4361 = !{!123, !1680, !1714}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4352, file: !14, line: 409, baseType: !4363, size: 64, offset: 128)
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4364, size: 64)
!4364 = !DISubroutineType(types: !4365)
!4365 = !{!123, !706, !1308}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4352, file: !14, line: 412, baseType: !4367, size: 64, offset: 192)
!4367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4368, size: 64)
!4368 = !DISubroutineType(types: !4369)
!4369 = !{!520, !706, !1714}
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4352, file: !14, line: 414, baseType: !4371, size: 64, offset: 256)
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4372, size: 64)
!4372 = !DISubroutineType(types: !4373)
!4373 = !{null, !4374}
!4374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4375, size: 64)
!4375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1711, line: 1276, size: 448, elements: !4376)
!4376 = !{!4377, !4378, !4379, !4381, !4382, !4383, !4384, !4385}
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4375, file: !1711, line: 1277, baseType: !1680, size: 64)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4375, file: !1711, line: 1278, baseType: !706, size: 64, offset: 64)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !4375, file: !1711, line: 1279, baseType: !4380, size: 64, offset: 128)
!4380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !4375, file: !1711, line: 1281, baseType: !200, size: 64, offset: 192)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !4375, file: !1711, line: 1282, baseType: !7, size: 32, offset: 256)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !4375, file: !1711, line: 1283, baseType: !7, size: 32, offset: 288)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !4375, file: !1711, line: 1284, baseType: !520, size: 8, offset: 320)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !4375, file: !1711, line: 1285, baseType: !200, size: 64, offset: 384)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4352, file: !14, line: 416, baseType: !4387, size: 64, offset: 320)
!4387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4388, size: 64)
!4388 = !DISubroutineType(types: !4389)
!4389 = !{!123, !1680, !706, !213, !7, !3766, !2385}
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4352, file: !14, line: 419, baseType: !4391, size: 64, offset: 384)
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4392 = !DISubroutineType(types: !4393)
!4393 = !{!123, !1680, !706, !213, !7, !7, !1843, !399}
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4352, file: !14, line: 424, baseType: !4395, size: 64, offset: 448)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4396 = !DISubroutineType(types: !4397)
!4397 = !{!406, !706, !406}
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4352, file: !14, line: 425, baseType: !4399, size: 64, offset: 512)
!4399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4400, size: 64)
!4400 = !DISubroutineType(types: !4401)
!4401 = !{null, !1714, !209, !209}
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4352, file: !14, line: 426, baseType: !4403, size: 64, offset: 576)
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4404, size: 64)
!4404 = !DISubroutineType(types: !4405)
!4405 = !{!520, !1714, !193}
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4352, file: !14, line: 427, baseType: !4407, size: 64, offset: 640)
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 64)
!4408 = !DISubroutineType(types: !4409)
!4409 = !{null, !1714}
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4352, file: !14, line: 428, baseType: !1690, size: 64, offset: 704)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4352, file: !14, line: 433, baseType: !4412, size: 64, offset: 768)
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4413, size: 64)
!4413 = !DISubroutineType(types: !4414)
!4414 = !{!123, !706, !1714, !1714, !74}
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4352, file: !14, line: 435, baseType: !4416, size: 64, offset: 832)
!4416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4417, size: 64)
!4417 = !DISubroutineType(types: !4418)
!4418 = !{!123, !1714}
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4352, file: !14, line: 436, baseType: !4420, size: 64, offset: 896)
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4421 = !DISubroutineType(types: !4422)
!4422 = !{!520, !1714, !209, !209}
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4352, file: !14, line: 438, baseType: !4424, size: 64, offset: 960)
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = !DISubroutineType(types: !4426)
!4426 = !{null, !1714, !4427, !4427}
!4427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4352, file: !14, line: 439, baseType: !4429, size: 64, offset: 1024)
!4429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4430, size: 64)
!4430 = !DISubroutineType(types: !4431)
!4431 = !{!123, !706, !1843}
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4352, file: !14, line: 442, baseType: !4433, size: 64, offset: 1088)
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4434, size: 64)
!4434 = !DISubroutineType(types: !4435)
!4435 = !{!123, !4436, !1680, !4438}
!4436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4437, size: 64)
!4437 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!4438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4352, file: !14, line: 444, baseType: !2377, size: 64, offset: 1152)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4352, file: !14, line: 445, baseType: !4441, size: 64, offset: 1216)
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!4442 = !DISubroutineType(types: !4443)
!4443 = !{!123, !1693, !2225}
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !707, file: !14, line: 486, baseType: !200, size: 64, offset: 896)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !707, file: !14, line: 487, baseType: !1500, size: 320, offset: 960)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !707, file: !14, line: 488, baseType: !2420, size: 32, offset: 1280)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !707, file: !14, line: 489, baseType: !362, size: 32, offset: 1312)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !707, file: !14, line: 490, baseType: !430, size: 128, offset: 1344)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !707, file: !14, line: 491, baseType: !399, size: 64, offset: 1472)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !697, file: !661, line: 180, baseType: !4451, size: 64, offset: 320)
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64)
!4452 = !DISubroutineType(types: !4453)
!4453 = !{!667, !1680, !601, !696, !230, !213, !209}
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !697, file: !661, line: 182, baseType: !4451, size: 64, offset: 384)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !697, file: !661, line: 184, baseType: !4456, size: 64, offset: 448)
!4456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4457, size: 64)
!4457 = !DISubroutineType(types: !4458)
!4458 = !{!123, !1680, !601, !696, !1857}
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !685, file: !661, line: 90, baseType: !4460, size: 64, offset: 192)
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !685, file: !661, line: 91, baseType: !4462, size: 64, offset: 256)
!4462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !651, file: !596, line: 120, baseType: !4464, size: 64, offset: 192)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = !DISubroutineType(types: !4466)
!4466 = !{!4467, !619}
!4467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4468, size: 64)
!4468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4469)
!4469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !4470)
!4470 = !{!4471, !4472, !4476, !4480, !4486, !4490}
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4469, file: !82, line: 40, baseType: !81, size: 32)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4469, file: !82, line: 41, baseType: !4473, size: 64, offset: 64)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = !DISubroutineType(types: !4475)
!4475 = !{!520}
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4469, file: !82, line: 42, baseType: !4477, size: 64, offset: 128)
!4477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4478, size: 64)
!4478 = !DISubroutineType(types: !4479)
!4479 = !{!399}
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4469, file: !82, line: 43, baseType: !4481, size: 64, offset: 192)
!4481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4482, size: 64)
!4482 = !DISubroutineType(types: !4483)
!4483 = !{!1985, !4484}
!4484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4485, size: 64)
!4485 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4469, file: !82, line: 44, baseType: !4487, size: 64, offset: 256)
!4487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4488, size: 64)
!4488 = !DISubroutineType(types: !4489)
!4489 = !{!1985}
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4469, file: !82, line: 45, baseType: !989, size: 64, offset: 320)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !651, file: !596, line: 121, baseType: !4492, size: 64, offset: 256)
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4493, size: 64)
!4493 = !DISubroutineType(types: !4494)
!4494 = !{!1985, !619}
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !651, file: !596, line: 122, baseType: !4496, size: 64, offset: 320)
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4497 = !DISubroutineType(types: !4498)
!4498 = !{null, !619, !4499, !4500}
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!4500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !595, file: !596, line: 70, baseType: !4502, size: 64, offset: 384)
!4502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4503, size: 64)
!4503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !4504, line: 190, size: 1152, elements: !4505)
!4504 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!4505 = !{!4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4585, !4586, !4587, !4588, !4589, !4592}
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4503, file: !4504, line: 191, baseType: !382, size: 32)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4503, file: !4504, line: 192, baseType: !382, size: 32, offset: 32)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4503, file: !4504, line: 202, baseType: !4502, size: 64, offset: 64)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4503, file: !4504, line: 203, baseType: !223, size: 64, offset: 128)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4503, file: !4504, line: 205, baseType: !1055, size: 192, align: 64, offset: 192)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4503, file: !4504, line: 207, baseType: !1985, size: 64, offset: 384)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4503, file: !4504, line: 208, baseType: !7, size: 32, offset: 448)
!4513 = !DIDerivedType(tag: DW_TAG_member, scope: !4503, file: !4504, line: 209, baseType: !4514, size: 256, offset: 512)
!4514 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4503, file: !4504, line: 209, size: 256, elements: !4515)
!4515 = !{!4516, !4525, !4529}
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4514, file: !4504, line: 210, baseType: !4517, size: 256)
!4517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !4504, line: 153, size: 256, elements: !4518)
!4518 = !{!4519, !4520, !4521, !4524}
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4517, file: !4504, line: 154, baseType: !200, size: 64)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4517, file: !4504, line: 156, baseType: !2899, size: 64, offset: 64)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4517, file: !4504, line: 162, baseType: !4522, size: 64, offset: 128)
!4522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4523, size: 64)
!4523 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !4504, line: 162, flags: DIFlagFwdDecl)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4517, file: !4504, line: 167, baseType: !200, size: 64, offset: 192)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4514, file: !4504, line: 211, baseType: !4526, size: 64)
!4526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !4504, line: 170, size: 64, elements: !4527)
!4527 = !{!4528}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4526, file: !4504, line: 171, baseType: !4502, size: 64)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4514, file: !4504, line: 212, baseType: !4530, size: 256)
!4530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !4504, line: 174, size: 256, elements: !4531)
!4531 = !{!4532, !4580, !4583, !4584}
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4530, file: !4504, line: 175, baseType: !4533, size: 64)
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4534, size: 64)
!4534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4535)
!4535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !4504, line: 271, size: 768, elements: !4536)
!4536 = !{!4537, !4557, !4561, !4562, !4563, !4564, !4565, !4569, !4570, !4571, !4572, !4576}
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4535, file: !4504, line: 276, baseType: !4538, size: 64)
!4538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4539, size: 64)
!4539 = !DISubroutineType(types: !4540)
!4540 = !{!123, !4541}
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !4504, line: 251, size: 1216, elements: !4543)
!4543 = !{!4544, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556}
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4542, file: !4504, line: 253, baseType: !4502, size: 64)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4542, file: !4504, line: 254, baseType: !1680, size: 64, offset: 64)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4542, file: !4504, line: 255, baseType: !1345, size: 64, offset: 128)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4542, file: !4504, line: 256, baseType: !399, size: 64, offset: 192)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4542, file: !4504, line: 259, baseType: !954, size: 256, offset: 256)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4542, file: !4504, line: 260, baseType: !954, size: 256, offset: 512)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4542, file: !4504, line: 261, baseType: !123, size: 32, offset: 768)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4542, file: !4504, line: 262, baseType: !430, size: 128, offset: 832)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4542, file: !4504, line: 263, baseType: !230, size: 64, offset: 960)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4542, file: !4504, line: 265, baseType: !209, size: 64, offset: 1024)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4542, file: !4504, line: 266, baseType: !520, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4542, file: !4504, line: 267, baseType: !520, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4542, file: !4504, line: 268, baseType: !2054, size: 64, offset: 1152)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4535, file: !4504, line: 277, baseType: !4558, size: 64, offset: 64)
!4558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4559, size: 64)
!4559 = !DISubroutineType(types: !4560)
!4560 = !{null, !4541}
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4535, file: !4504, line: 290, baseType: !1376, size: 64, offset: 128)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4535, file: !4504, line: 292, baseType: !1363, size: 64, offset: 192)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4535, file: !4504, line: 293, baseType: !1372, size: 64, offset: 256)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4535, file: !4504, line: 294, baseType: !1368, size: 64, offset: 320)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4535, file: !4504, line: 296, baseType: !4566, size: 64, offset: 384)
!4566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4567, size: 64)
!4567 = !DISubroutineType(types: !4568)
!4568 = !{!667, !4541, !230, !209, !213}
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4535, file: !4504, line: 306, baseType: !209, size: 64, offset: 448)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4535, file: !4504, line: 313, baseType: !520, size: 8, offset: 512)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4535, file: !4504, line: 314, baseType: !4566, size: 64, offset: 576)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4535, file: !4504, line: 317, baseType: !4573, size: 64, offset: 640)
!4573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4574, size: 64)
!4574 = !DISubroutineType(types: !4575)
!4575 = !{!2313, !4541, !2314}
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4535, file: !4504, line: 320, baseType: !4577, size: 64, offset: 704)
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4578, size: 64)
!4578 = !DISubroutineType(types: !4579)
!4579 = !{!123, !4541, !1857}
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4530, file: !4504, line: 176, baseType: !4581, size: 64, offset: 64)
!4581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4582, size: 64)
!4582 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !4504, line: 35, flags: DIFlagFwdDecl)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4530, file: !4504, line: 177, baseType: !213, size: 64, offset: 128)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4530, file: !4504, line: 178, baseType: !4502, size: 64, offset: 192)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4503, file: !4504, line: 215, baseType: !399, size: 64, offset: 768)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4503, file: !4504, line: 221, baseType: !208, size: 64, offset: 832)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4503, file: !4504, line: 223, baseType: !202, size: 16, offset: 896)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4503, file: !4504, line: 224, baseType: !676, size: 16, offset: 912)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4503, file: !4504, line: 225, baseType: !4590, size: 64, offset: 960)
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4591, size: 64)
!4591 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !4504, line: 36, flags: DIFlagFwdDecl)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4503, file: !4504, line: 227, baseType: !1161, size: 128, align: 64, offset: 1024)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !595, file: !596, line: 71, baseType: !4594, size: 32, offset: 448)
!4594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4595, line: 19, size: 32, elements: !4596)
!4595 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4596 = !{!4597}
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4594, file: !4595, line: 20, baseType: !1432, size: 32)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !595, file: !596, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !595, file: !596, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !595, file: !596, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !595, file: !596, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !595, file: !596, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !423, file: !88, line: 422, baseType: !745, size: 64, offset: 3648)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "sched_debugfs_dir", scope: !423, file: !88, line: 424, baseType: !745, size: 64, offset: 3712)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_list", scope: !423, file: !88, line: 431, baseType: !430, size: 128, offset: 3776)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !415, file: !88, line: 85, baseType: !3401, size: 32, offset: 192)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "rq_flags", scope: !415, file: !88, line: 86, baseType: !4608, size: 32, offset: 224)
!4608 = !DIDerivedType(tag: DW_TAG_typedef, name: "req_flags_t", file: !88, line: 27, baseType: !186)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !415, file: !88, line: 88, baseType: !123, size: 32, offset: 256)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "internal_tag", scope: !415, file: !88, line: 89, baseType: !123, size: 32, offset: 288)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !415, file: !88, line: 91, baseType: !7, size: 32, offset: 320)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "__data_len", scope: !415, file: !88, line: 94, baseType: !7, size: 32, offset: 352)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "__sector", scope: !415, file: !88, line: 95, baseType: !406, size: 64, offset: 384)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "bio", scope: !415, file: !88, line: 97, baseType: !3395, size: 64, offset: 448)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "biotail", scope: !415, file: !88, line: 98, baseType: !3395, size: 64, offset: 512)
!4616 = !DIDerivedType(tag: DW_TAG_member, scope: !415, file: !88, line: 100, baseType: !4617, size: 128, offset: 576)
!4617 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !415, file: !88, line: 100, size: 128, elements: !4618)
!4618 = !{!4619, !4620}
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "queuelist", scope: !4617, file: !88, line: 101, baseType: !430, size: 128)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "rq_next", scope: !4617, file: !88, line: 102, baseType: !414, size: 64)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !415, file: !88, line: 105, baseType: !401, size: 64, offset: 704)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_time_ns", scope: !415, file: !88, line: 108, baseType: !208, size: 64, offset: 768)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "start_time_ns", scope: !415, file: !88, line: 111, baseType: !208, size: 64, offset: 832)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "io_start_time_ns", scope: !415, file: !88, line: 113, baseType: !208, size: 64, offset: 896)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "stats_sectors", scope: !415, file: !88, line: 123, baseType: !202, size: 16, offset: 960)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "nr_phys_segments", scope: !415, file: !88, line: 129, baseType: !202, size: 16, offset: 976)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !415, file: !88, line: 140, baseType: !202, size: 16, offset: 992)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !415, file: !88, line: 142, baseType: !87, size: 32, offset: 1024)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !415, file: !88, line: 143, baseType: !382, size: 32, offset: 1056)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !415, file: !88, line: 145, baseType: !200, size: 64, offset: 1088)
!4631 = !DIDerivedType(tag: DW_TAG_member, scope: !415, file: !88, line: 154, baseType: !4632, size: 128, offset: 1152)
!4632 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !415, file: !88, line: 154, size: 128, elements: !4633)
!4633 = !{!4634, !4635}
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4632, file: !88, line: 155, baseType: !464, size: 128)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_list", scope: !4632, file: !88, line: 156, baseType: !1389, size: 64)
!4636 = !DIDerivedType(tag: DW_TAG_member, scope: !415, file: !88, line: 165, baseType: !4637, size: 192, offset: 1280)
!4637 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !415, file: !88, line: 165, size: 192, elements: !4638)
!4638 = !{!4639, !4640}
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !4637, file: !88, line: 166, baseType: !1055, size: 192, align: 64)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "special_vec", scope: !4637, file: !88, line: 167, baseType: !2267, size: 128)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "elv", scope: !415, file: !88, line: 177, baseType: !4642, size: 192, offset: 1472)
!4642 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !415, file: !88, line: 174, size: 192, elements: !4643)
!4643 = !{!4644, !4661}
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "icq", scope: !4642, file: !88, line: 175, baseType: !4645, size: 64)
!4645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4646, size: 64)
!4646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !3496, line: 73, size: 448, elements: !4647)
!4647 = !{!4648, !4649, !4650, !4655, !4660}
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !4646, file: !3496, line: 74, baseType: !410, size: 64)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !4646, file: !3496, line: 75, baseType: !3494, size: 64, offset: 64)
!4650 = !DIDerivedType(tag: DW_TAG_member, scope: !4646, file: !3496, line: 83, baseType: !4651, size: 128, offset: 128)
!4651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4646, file: !3496, line: 83, size: 128, elements: !4652)
!4652 = !{!4653, !4654}
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !4651, file: !3496, line: 84, baseType: !430, size: 128)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !4651, file: !3496, line: 85, baseType: !3441, size: 64)
!4655 = !DIDerivedType(tag: DW_TAG_member, scope: !4646, file: !3496, line: 87, baseType: !4656, size: 128, offset: 256)
!4656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4646, file: !3496, line: 87, size: 128, elements: !4657)
!4657 = !{!4658, !4659}
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !4656, file: !3496, line: 88, baseType: !464, size: 128)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !4656, file: !3496, line: 89, baseType: !1161, size: 128, align: 64)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4646, file: !3496, line: 92, baseType: !7, size: 32, offset: 384)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4642, file: !88, line: 176, baseType: !4662, size: 128, offset: 64)
!4662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 128, elements: !235)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !415, file: !88, line: 182, baseType: !4664, size: 128, offset: 1664)
!4664 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !415, file: !88, line: 179, size: 128, elements: !4665)
!4665 = !{!4666, !4667}
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !4664, file: !88, line: 180, baseType: !7, size: 32)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "saved_end_io", scope: !4664, file: !88, line: 181, baseType: !4668, size: 64, offset: 64)
!4668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4669, size: 64)
!4669 = !DIDerivedType(tag: DW_TAG_typedef, name: "rq_end_io_fn", file: !88, line: 23, baseType: !4670)
!4670 = !DISubroutineType(types: !4671)
!4671 = !{!93, !414, !505}
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_time", scope: !415, file: !88, line: 184, baseType: !208, size: 64, offset: 1792)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "end_io", scope: !415, file: !88, line: 189, baseType: !4668, size: 64, offset: 1856)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "end_io_data", scope: !415, file: !88, line: 190, baseType: !399, size: 64, offset: 1920)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "elevator", scope: !411, file: !156, line: 393, baseType: !4676, size: 64, offset: 64)
!4676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4677, size: 64)
!4677 = !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_queue", file: !156, line: 30, flags: DIFlagFwdDecl)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "q_usage_counter", scope: !411, file: !156, line: 395, baseType: !1810, size: 128, offset: 128)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !411, file: !156, line: 397, baseType: !4680, size: 64, offset: 256)
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4681, size: 64)
!4681 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_queue_stats", file: !156, line: 39, flags: DIFlagFwdDecl)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos", scope: !411, file: !156, line: 398, baseType: !4683, size: 64, offset: 320)
!4683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4684, size: 64)
!4684 = !DICompositeType(tag: DW_TAG_structure_type, name: "rq_qos", file: !156, line: 38, flags: DIFlagFwdDecl)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos_mutex", scope: !411, file: !156, line: 399, baseType: !954, size: 256, offset: 384)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ops", scope: !411, file: !156, line: 401, baseType: !4687, size: 64, offset: 640)
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4689)
!4689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ops", file: !88, line: 537, size: 1152, elements: !4690)
!4690 = !{!4691, !4701, !4705, !4709, !4713, !4717, !4721, !4725, !4729, !4733, !4737, !4741, !4745, !4775, !4779, !4780, !4784, !4788}
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "queue_rq", scope: !4689, file: !88, line: 541, baseType: !4692, size: 64)
!4692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4693, size: 64)
!4693 = !DISubroutineType(types: !4694)
!4694 = !{!505, !422, !4695}
!4695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4696, size: 64)
!4696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4697)
!4697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_queue_data", file: !88, line: 526, size: 128, elements: !4698)
!4698 = !{!4699, !4700}
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "rq", scope: !4697, file: !88, line: 527, baseType: !414, size: 64)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !4697, file: !88, line: 528, baseType: !520, size: 8, offset: 64)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "commit_rqs", scope: !4689, file: !88, line: 551, baseType: !4702, size: 64, offset: 64)
!4702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4703, size: 64)
!4703 = !DISubroutineType(types: !4704)
!4704 = !{null, !422}
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "queue_rqs", scope: !4689, file: !88, line: 559, baseType: !4706, size: 64, offset: 128)
!4706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4707, size: 64)
!4707 = !DISubroutineType(types: !4708)
!4708 = !{null, !583}
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "get_budget", scope: !4689, file: !88, line: 567, baseType: !4710, size: 64, offset: 192)
!4710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4711, size: 64)
!4711 = !DISubroutineType(types: !4712)
!4712 = !{!123, !410}
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "put_budget", scope: !4689, file: !88, line: 572, baseType: !4714, size: 64, offset: 256)
!4714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4715, size: 64)
!4715 = !DISubroutineType(types: !4716)
!4716 = !{null, !410, !123}
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "set_rq_budget_token", scope: !4689, file: !88, line: 577, baseType: !4718, size: 64, offset: 320)
!4718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4719, size: 64)
!4719 = !DISubroutineType(types: !4720)
!4720 = !{null, !414, !123}
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "get_rq_budget_token", scope: !4689, file: !88, line: 581, baseType: !4722, size: 64, offset: 384)
!4722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4723, size: 64)
!4723 = !DISubroutineType(types: !4724)
!4724 = !{!123, !414}
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4689, file: !88, line: 586, baseType: !4726, size: 64, offset: 448)
!4726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4727, size: 64)
!4727 = !DISubroutineType(types: !4728)
!4728 = !{!97, !414}
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4689, file: !88, line: 591, baseType: !4730, size: 64, offset: 512)
!4730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4731, size: 64)
!4731 = !DISubroutineType(types: !4732)
!4732 = !{!123, !422, !2287}
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4689, file: !88, line: 596, baseType: !4734, size: 64, offset: 576)
!4734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4735, size: 64)
!4735 = !DISubroutineType(types: !4736)
!4736 = !{null, !414}
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "init_hctx", scope: !4689, file: !88, line: 603, baseType: !4738, size: 64, offset: 640)
!4738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4739, size: 64)
!4739 = !DISubroutineType(types: !4740)
!4740 = !{!123, !422, !399, !7}
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "exit_hctx", scope: !4689, file: !88, line: 607, baseType: !4742, size: 64, offset: 704)
!4742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4743, size: 64)
!4743 = !DISubroutineType(types: !4744)
!4744 = !{null, !422, !7}
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "init_request", scope: !4689, file: !88, line: 616, baseType: !4746, size: 64, offset: 768)
!4746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4747, size: 64)
!4747 = !DISubroutineType(types: !4748)
!4748 = !{!123, !4749, !414, !7, !7}
!4749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4750, size: 64)
!4750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tag_set", file: !88, line: 498, size: 1344, elements: !4751)
!4751 = !{!4752, !4753, !4760, !4761, !4762, !4763, !4764, !4765, !4766, !4767, !4768, !4769, !4771, !4772, !4773, !4774}
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4750, file: !88, line: 499, baseType: !4687, size: 64)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !4750, file: !88, line: 500, baseType: !4754, size: 384, offset: 64)
!4754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4755, size: 384, elements: !636)
!4755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_queue_map", file: !88, line: 444, size: 128, elements: !4756)
!4756 = !{!4757, !4758, !4759}
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "mq_map", scope: !4755, file: !88, line: 445, baseType: !531, size: 64)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "nr_queues", scope: !4755, file: !88, line: 446, baseType: !7, size: 32, offset: 64)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "queue_offset", scope: !4755, file: !88, line: 447, baseType: !7, size: 32, offset: 96)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "nr_maps", scope: !4750, file: !88, line: 501, baseType: !7, size: 32, offset: 448)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !4750, file: !88, line: 502, baseType: !7, size: 32, offset: 480)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !4750, file: !88, line: 503, baseType: !7, size: 32, offset: 512)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_tags", scope: !4750, file: !88, line: 504, baseType: !7, size: 32, offset: 544)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_size", scope: !4750, file: !88, line: 505, baseType: !7, size: 32, offset: 576)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4750, file: !88, line: 506, baseType: !123, size: 32, offset: 608)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4750, file: !88, line: 507, baseType: !7, size: 32, offset: 640)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4750, file: !88, line: 508, baseType: !7, size: 32, offset: 672)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4750, file: !88, line: 509, baseType: !399, size: 64, offset: 704)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "tags", scope: !4750, file: !88, line: 511, baseType: !4770, size: 64, offset: 768)
!4770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "shared_tags", scope: !4750, file: !88, line: 513, baseType: !555, size: 64, offset: 832)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "tag_list_lock", scope: !4750, file: !88, line: 515, baseType: !954, size: 256, offset: 896)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "tag_list", scope: !4750, file: !88, line: 516, baseType: !430, size: 128, offset: 1152)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "srcu", scope: !4750, file: !88, line: 517, baseType: !1141, size: 64, offset: 1280)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "exit_request", scope: !4689, file: !88, line: 621, baseType: !4776, size: 64, offset: 832)
!4776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4777, size: 64)
!4777 = !DISubroutineType(types: !4778)
!4778 = !{null, !4749, !414, !7}
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_rq", scope: !4689, file: !88, line: 628, baseType: !4734, size: 64, offset: 896)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !4689, file: !88, line: 633, baseType: !4781, size: 64, offset: 960)
!4781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4782, size: 64)
!4782 = !DISubroutineType(types: !4783)
!4783 = !{!520, !410}
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "map_queues", scope: !4689, file: !88, line: 639, baseType: !4785, size: 64, offset: 1024)
!4785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4786, size: 64)
!4786 = !DISubroutineType(types: !4787)
!4787 = !{null, !4749}
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "show_rq", scope: !4689, file: !88, line: 646, baseType: !4789, size: 64, offset: 1088)
!4789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4790, size: 64)
!4790 = !DISubroutineType(types: !4791)
!4791 = !{null, !1345, !414}
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ctx", scope: !411, file: !156, line: 404, baseType: !419, size: 64, offset: 704)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !411, file: !156, line: 406, baseType: !7, size: 32, offset: 768)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_table", scope: !411, file: !156, line: 409, baseType: !358, size: 128, offset: 832)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !411, file: !156, line: 410, baseType: !7, size: 32, offset: 960)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "queuedata", scope: !411, file: !156, line: 416, baseType: !399, size: 64, offset: 1024)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "queue_flags", scope: !411, file: !156, line: 421, baseType: !200, size: 64, offset: 1088)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "pm_only", scope: !411, file: !156, line: 426, baseType: !382, size: 32, offset: 1152)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !411, file: !156, line: 432, baseType: !123, size: 32, offset: 1184)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "queue_lock", scope: !411, file: !156, line: 434, baseType: !362, size: 32, offset: 1216)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "disk", scope: !411, file: !156, line: 436, baseType: !345, size: 64, offset: 1280)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !411, file: !156, line: 438, baseType: !1432, size: 32, offset: 1344)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "mq_kobj", scope: !411, file: !156, line: 443, baseType: !601, size: 64, offset: 1408)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !411, file: !156, line: 450, baseType: !4805, size: 64, offset: 1472)
!4805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4806, size: 64)
!4806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !108, line: 705, size: 5824, elements: !4807)
!4807 = !{!4808, !4809, !4810, !4813, !4814, !4867, !4937, !4938, !4939, !4940, !4941, !4948, !5040, !5053, !5063, !5067, !5069, !5070, !5071, !5075, !5082, !5083, !5086, !5089, !5093, !5197, !5198, !5199, !5200, !5201, !5202, !5232, !5233, !5234, !5237, !5240, !5249, !5250, !5251, !5252, !5253, !5254}
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4806, file: !108, line: 706, baseType: !595, size: 512)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4806, file: !108, line: 707, baseType: !4805, size: 64, offset: 512)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4806, file: !108, line: 709, baseType: !4811, size: 64, offset: 576)
!4811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4812, size: 64)
!4812 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !108, line: 37, flags: DIFlagFwdDecl)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4806, file: !108, line: 711, baseType: !223, size: 64, offset: 640)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4806, file: !108, line: 712, baseType: !4815, size: 64, offset: 704)
!4815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4816, size: 64)
!4816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4817)
!4817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !108, line: 89, size: 384, elements: !4818)
!4818 = !{!4819, !4820, !4821, !4827, !4832, !4836}
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4817, file: !108, line: 90, baseType: !223, size: 64)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4817, file: !108, line: 91, baseType: !682, size: 64, offset: 64)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4817, file: !108, line: 92, baseType: !4822, size: 64, offset: 128)
!4822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4823, size: 64)
!4823 = !DISubroutineType(types: !4824)
!4824 = !{!123, !4825, !631}
!4825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4826, size: 64)
!4826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4806)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4817, file: !108, line: 93, baseType: !4828, size: 64, offset: 192)
!4828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4829, size: 64)
!4829 = !DISubroutineType(types: !4830)
!4830 = !{!230, !4825, !4831, !4499, !4500}
!4831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4817, file: !108, line: 95, baseType: !4833, size: 64, offset: 256)
!4833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4834, size: 64)
!4834 = !DISubroutineType(types: !4835)
!4835 = !{null, !4805}
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4817, file: !108, line: 97, baseType: !4837, size: 64, offset: 320)
!4837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4838, size: 64)
!4838 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4839)
!4839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !115, line: 286, size: 1472, elements: !4840)
!4840 = !{!4841, !4845, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864, !4865, !4866}
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4839, file: !115, line: 287, baseType: !4842, size: 64)
!4842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4843, size: 64)
!4843 = !DISubroutineType(types: !4844)
!4844 = !{!123, !4805}
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4839, file: !115, line: 288, baseType: !4833, size: 64, offset: 64)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4839, file: !115, line: 289, baseType: !4842, size: 64, offset: 128)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4839, file: !115, line: 290, baseType: !4842, size: 64, offset: 192)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4839, file: !115, line: 291, baseType: !4842, size: 64, offset: 256)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4839, file: !115, line: 292, baseType: !4842, size: 64, offset: 320)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4839, file: !115, line: 293, baseType: !4842, size: 64, offset: 384)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4839, file: !115, line: 294, baseType: !4842, size: 64, offset: 448)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4839, file: !115, line: 295, baseType: !4842, size: 64, offset: 512)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4839, file: !115, line: 296, baseType: !4842, size: 64, offset: 576)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4839, file: !115, line: 297, baseType: !4842, size: 64, offset: 640)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4839, file: !115, line: 298, baseType: !4842, size: 64, offset: 704)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4839, file: !115, line: 299, baseType: !4842, size: 64, offset: 768)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4839, file: !115, line: 300, baseType: !4842, size: 64, offset: 832)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4839, file: !115, line: 301, baseType: !4842, size: 64, offset: 896)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4839, file: !115, line: 302, baseType: !4842, size: 64, offset: 960)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4839, file: !115, line: 303, baseType: !4842, size: 64, offset: 1024)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4839, file: !115, line: 304, baseType: !4842, size: 64, offset: 1088)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4839, file: !115, line: 305, baseType: !4842, size: 64, offset: 1152)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4839, file: !115, line: 306, baseType: !4842, size: 64, offset: 1216)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4839, file: !115, line: 307, baseType: !4842, size: 64, offset: 1280)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4839, file: !115, line: 308, baseType: !4842, size: 64, offset: 1344)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4839, file: !115, line: 309, baseType: !4842, size: 64, offset: 1408)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4806, file: !108, line: 714, baseType: !4868, size: 64, offset: 768)
!4868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4869, size: 64)
!4869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4870)
!4870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4871, line: 80, size: 1344, elements: !4872)
!4871 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4872 = !{!4873, !4874, !4875, !4876, !4877, !4878, !4919, !4920, !4921, !4922, !4923, !4924, !4925, !4926, !4927, !4928, !4929, !4930, !4931, !4932, !4936}
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4870, file: !4871, line: 81, baseType: !223, size: 64)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4870, file: !4871, line: 82, baseType: !223, size: 64, offset: 64)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4870, file: !4871, line: 83, baseType: !682, size: 64, offset: 128)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4870, file: !4871, line: 84, baseType: !682, size: 64, offset: 192)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4870, file: !4871, line: 85, baseType: !682, size: 64, offset: 256)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4870, file: !4871, line: 87, baseType: !4879, size: 64, offset: 320)
!4879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4880, size: 64)
!4880 = !DISubroutineType(types: !4881)
!4881 = !{!123, !4805, !4882}
!4882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4883, size: 64)
!4883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !102, line: 96, size: 1152, elements: !4884)
!4884 = !{!4885, !4886, !4887, !4888, !4889, !4890, !4891, !4895, !4899, !4900, !4901, !4902, !4903, !4911, !4912, !4913, !4914, !4915, !4916}
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4883, file: !102, line: 97, baseType: !223, size: 64)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4883, file: !102, line: 98, baseType: !4868, size: 64, offset: 64)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4883, file: !102, line: 100, baseType: !887, size: 64, offset: 128)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4883, file: !102, line: 101, baseType: !223, size: 64, offset: 192)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4883, file: !102, line: 103, baseType: !520, size: 8, offset: 256)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4883, file: !102, line: 104, baseType: !101, size: 32, offset: 288)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4883, file: !102, line: 106, baseType: !4892, size: 64, offset: 320)
!4892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4893, size: 64)
!4893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4894)
!4894 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !102, line: 106, flags: DIFlagFwdDecl)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4883, file: !102, line: 107, baseType: !4896, size: 64, offset: 384)
!4896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4897, size: 64)
!4897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4898)
!4898 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !102, line: 107, flags: DIFlagFwdDecl)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4883, file: !102, line: 109, baseType: !4842, size: 64, offset: 448)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4883, file: !102, line: 110, baseType: !4833, size: 64, offset: 512)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4883, file: !102, line: 111, baseType: !4842, size: 64, offset: 576)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4883, file: !102, line: 112, baseType: !4833, size: 64, offset: 640)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4883, file: !102, line: 113, baseType: !4904, size: 64, offset: 704)
!4904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4905, size: 64)
!4905 = !DISubroutineType(types: !4906)
!4906 = !{!123, !4805, !4907}
!4907 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !115, line: 60, baseType: !4908)
!4908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !115, line: 58, size: 32, elements: !4909)
!4909 = !{!4910}
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4908, file: !115, line: 59, baseType: !123, size: 32)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4883, file: !102, line: 114, baseType: !4842, size: 64, offset: 768)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4883, file: !102, line: 115, baseType: !682, size: 64, offset: 832)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4883, file: !102, line: 116, baseType: !682, size: 64, offset: 896)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4883, file: !102, line: 118, baseType: !4837, size: 64, offset: 960)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4883, file: !102, line: 119, baseType: !4833, size: 64, offset: 1024)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4883, file: !102, line: 121, baseType: !4917, size: 64, offset: 1088)
!4917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4918, size: 64)
!4918 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !102, line: 121, flags: DIFlagFwdDecl)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4870, file: !4871, line: 88, baseType: !4822, size: 64, offset: 384)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4870, file: !4871, line: 89, baseType: !4842, size: 64, offset: 448)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4870, file: !4871, line: 90, baseType: !4833, size: 64, offset: 512)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4870, file: !4871, line: 91, baseType: !4833, size: 64, offset: 576)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4870, file: !4871, line: 92, baseType: !4833, size: 64, offset: 640)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4870, file: !4871, line: 94, baseType: !4842, size: 64, offset: 704)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4870, file: !4871, line: 95, baseType: !4842, size: 64, offset: 768)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4870, file: !4871, line: 97, baseType: !4904, size: 64, offset: 832)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4870, file: !4871, line: 98, baseType: !4842, size: 64, offset: 896)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4870, file: !4871, line: 100, baseType: !4842, size: 64, offset: 960)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4870, file: !4871, line: 102, baseType: !4842, size: 64, offset: 1024)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4870, file: !4871, line: 103, baseType: !4833, size: 64, offset: 1088)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4870, file: !4871, line: 105, baseType: !4837, size: 64, offset: 1152)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4870, file: !4871, line: 107, baseType: !4933, size: 64, offset: 1216)
!4933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4934, size: 64)
!4934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4935)
!4935 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4871, line: 107, flags: DIFlagFwdDecl)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4870, file: !4871, line: 109, baseType: !520, size: 8, offset: 1280)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4806, file: !108, line: 715, baseType: !4882, size: 64, offset: 832)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4806, file: !108, line: 717, baseType: !399, size: 64, offset: 896)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4806, file: !108, line: 719, baseType: !399, size: 64, offset: 960)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4806, file: !108, line: 721, baseType: !954, size: 256, offset: 1024)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4806, file: !108, line: 725, baseType: !4942, size: 448, offset: 1280)
!4942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !108, line: 517, size: 448, elements: !4943)
!4943 = !{!4944, !4945, !4946, !4947}
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4942, file: !108, line: 518, baseType: !430, size: 128)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4942, file: !108, line: 519, baseType: !430, size: 128, offset: 128)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4942, file: !108, line: 520, baseType: !430, size: 128, offset: 256)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4942, file: !108, line: 521, baseType: !107, size: 32, offset: 384)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4806, file: !108, line: 726, baseType: !4949, size: 2496, offset: 1728)
!4949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !115, line: 663, size: 2496, elements: !4950)
!4950 = !{!4951, !4952, !4953, !4954, !4955, !4956, !4957, !4958, !4959, !4960, !4961, !4962, !4963, !4964, !4965, !4966, !4993, !4994, !4995, !4996, !4997, !4998, !4999, !5000, !5001, !5002, !5003, !5004, !5005, !5006, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5018, !5019, !5020, !5021, !5022, !5023, !5024, !5025, !5026, !5027, !5033, !5037}
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4949, file: !115, line: 664, baseType: !4907, size: 32)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4949, file: !115, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4949, file: !115, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4949, file: !115, line: 667, baseType: !520, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4949, file: !115, line: 668, baseType: !520, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4949, file: !115, line: 669, baseType: !520, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4949, file: !115, line: 670, baseType: !520, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4949, file: !115, line: 671, baseType: !520, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4949, file: !115, line: 672, baseType: !520, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4949, file: !115, line: 673, baseType: !520, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4949, file: !115, line: 674, baseType: !520, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4949, file: !115, line: 675, baseType: !205, size: 32, offset: 64)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4949, file: !115, line: 676, baseType: !362, size: 32, offset: 96)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4949, file: !115, line: 678, baseType: !430, size: 128, offset: 128)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4949, file: !115, line: 679, baseType: !904, size: 256, offset: 256)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4949, file: !115, line: 680, baseType: !4967, size: 64, offset: 512)
!4967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4968, size: 64)
!4968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4969, line: 43, size: 1536, elements: !4970)
!4969 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4970 = !{!4971, !4972, !4973, !4974, !4975, !4978, !4979, !4980, !4981, !4982, !4983, !4984, !4985, !4986, !4987, !4988, !4989, !4990, !4991, !4992}
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4968, file: !4969, line: 44, baseType: !223, size: 64)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4968, file: !4969, line: 45, baseType: !123, size: 32, offset: 64)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4968, file: !4969, line: 46, baseType: !430, size: 128, offset: 128)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4968, file: !4969, line: 47, baseType: !362, size: 32, offset: 256)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4968, file: !4969, line: 48, baseType: !4976, size: 64, offset: 320)
!4976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4977, size: 64)
!4977 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !115, line: 629, flags: DIFlagFwdDecl)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4968, file: !4969, line: 49, baseType: !460, size: 320, offset: 384)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4968, file: !4969, line: 50, baseType: !200, size: 64, offset: 704)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4968, file: !4969, line: 51, baseType: !2845, size: 64, offset: 768)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4968, file: !4969, line: 52, baseType: !2845, size: 64, offset: 832)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4968, file: !4969, line: 53, baseType: !2845, size: 64, offset: 896)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4968, file: !4969, line: 54, baseType: !2845, size: 64, offset: 960)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4968, file: !4969, line: 55, baseType: !2845, size: 64, offset: 1024)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4968, file: !4969, line: 56, baseType: !200, size: 64, offset: 1088)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4968, file: !4969, line: 57, baseType: !200, size: 64, offset: 1152)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4968, file: !4969, line: 58, baseType: !200, size: 64, offset: 1216)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4968, file: !4969, line: 59, baseType: !200, size: 64, offset: 1280)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4968, file: !4969, line: 60, baseType: !200, size: 64, offset: 1344)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4968, file: !4969, line: 61, baseType: !4805, size: 64, offset: 1408)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4968, file: !4969, line: 62, baseType: !520, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4968, file: !4969, line: 63, baseType: !520, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4949, file: !115, line: 681, baseType: !520, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4949, file: !115, line: 682, baseType: !520, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4949, file: !115, line: 683, baseType: !520, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4949, file: !115, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4949, file: !115, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4949, file: !115, line: 690, baseType: !2837, size: 512, offset: 640)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4949, file: !115, line: 691, baseType: !208, size: 64, offset: 1152)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4949, file: !115, line: 692, baseType: !441, size: 256, offset: 1216)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4949, file: !115, line: 693, baseType: !572, size: 192, offset: 1472)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4949, file: !115, line: 694, baseType: !4976, size: 64, offset: 1664)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4949, file: !115, line: 695, baseType: !382, size: 32, offset: 1728)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4949, file: !115, line: 696, baseType: !382, size: 32, offset: 1760)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4949, file: !115, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4949, file: !115, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4949, file: !115, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4949, file: !115, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4949, file: !115, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4949, file: !115, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4949, file: !115, line: 703, baseType: !520, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4949, file: !115, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4949, file: !115, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4949, file: !115, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4949, file: !115, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4949, file: !115, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4949, file: !115, line: 709, baseType: !7, size: 32, offset: 1824)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4949, file: !115, line: 710, baseType: !114, size: 32, offset: 1856)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4949, file: !115, line: 711, baseType: !122, size: 32, offset: 1888)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4949, file: !115, line: 712, baseType: !122, size: 32, offset: 1920)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4949, file: !115, line: 713, baseType: !123, size: 32, offset: 1952)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4949, file: !115, line: 714, baseType: !123, size: 32, offset: 1984)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4949, file: !115, line: 715, baseType: !208, size: 64, offset: 2048)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4949, file: !115, line: 716, baseType: !208, size: 64, offset: 2112)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4949, file: !115, line: 717, baseType: !208, size: 64, offset: 2176)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4949, file: !115, line: 718, baseType: !208, size: 64, offset: 2240)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4949, file: !115, line: 720, baseType: !5028, size: 64, offset: 2304)
!5028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5029, size: 64)
!5029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !115, line: 632, size: 64, elements: !5030)
!5030 = !{!5031, !5032}
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5029, file: !115, line: 633, baseType: !362, size: 32)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5029, file: !115, line: 634, baseType: !7, size: 32, offset: 32)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4949, file: !115, line: 721, baseType: !5034, size: 64, offset: 2368)
!5034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5035, size: 64)
!5035 = !DISubroutineType(types: !5036)
!5036 = !{null, !4805, !950}
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4949, file: !115, line: 722, baseType: !5038, size: 64, offset: 2432)
!5038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5039, size: 64)
!5039 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !115, line: 722, flags: DIFlagFwdDecl)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4806, file: !108, line: 727, baseType: !5041, size: 64, offset: 4224)
!5041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5042, size: 64)
!5042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !115, line: 742, size: 1792, elements: !5043)
!5043 = !{!5044, !5045, !5046, !5050, !5051, !5052}
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5042, file: !115, line: 743, baseType: !4839, size: 1472)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5042, file: !115, line: 744, baseType: !4842, size: 64, offset: 1472)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !5042, file: !115, line: 745, baseType: !5047, size: 64, offset: 1536)
!5047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5048, size: 64)
!5048 = !DISubroutineType(types: !5049)
!5049 = !{null, !4805, !520}
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !5042, file: !115, line: 746, baseType: !4842, size: 64, offset: 1600)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !5042, file: !115, line: 747, baseType: !4833, size: 64, offset: 1664)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !5042, file: !115, line: 748, baseType: !4833, size: 64, offset: 1728)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4806, file: !108, line: 736, baseType: !5054, size: 128, offset: 4288)
!5054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !108, line: 529, size: 128, elements: !5055)
!5055 = !{!5056, !5060}
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !5054, file: !108, line: 531, baseType: !5057, size: 64)
!5057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5058, size: 64)
!5058 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !5059, line: 13, flags: DIFlagFwdDecl)
!5059 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5054, file: !108, line: 532, baseType: !5061, size: 64, offset: 64)
!5061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5062, size: 64)
!5062 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !108, line: 49, flags: DIFlagFwdDecl)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4806, file: !108, line: 738, baseType: !5064, size: 64, offset: 4416)
!5064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5065, size: 64)
!5065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5066)
!5066 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !108, line: 738, flags: DIFlagFwdDecl)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4806, file: !108, line: 740, baseType: !5068, size: 64, offset: 4480)
!5068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4806, file: !108, line: 741, baseType: !208, size: 64, offset: 4544)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4806, file: !108, line: 746, baseType: !208, size: 64, offset: 4608)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4806, file: !108, line: 747, baseType: !5072, size: 64, offset: 4672)
!5072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5073, size: 64)
!5073 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5074)
!5074 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !108, line: 747, flags: DIFlagFwdDecl)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4806, file: !108, line: 749, baseType: !5076, size: 64, offset: 4736)
!5076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5077, size: 64)
!5077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !108, line: 428, size: 128, elements: !5078)
!5078 = !{!5079, !5080, !5081}
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !5077, file: !108, line: 433, baseType: !7, size: 32)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !5077, file: !108, line: 434, baseType: !7, size: 32, offset: 32)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !5077, file: !108, line: 435, baseType: !200, size: 64, offset: 64)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4806, file: !108, line: 751, baseType: !430, size: 128, offset: 4800)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4806, file: !108, line: 762, baseType: !5084, size: 64, offset: 4928)
!5084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5085, size: 64)
!5085 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !108, line: 762, flags: DIFlagFwdDecl)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4806, file: !108, line: 770, baseType: !5087, offset: 4992)
!5087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !5088, line: 5, elements: !1200)
!5088 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4806, file: !108, line: 772, baseType: !5090, size: 64, offset: 4992)
!5090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5091, size: 64)
!5091 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !5092, line: 18, flags: DIFlagFwdDecl)
!5092 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4806, file: !108, line: 773, baseType: !5094, size: 64, offset: 5056)
!5094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5095, size: 64)
!5095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !5096, line: 41, size: 512, elements: !5097)
!5096 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!5097 = !{!5098, !5099, !5193, !5194, !5195, !5196}
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !5095, file: !5096, line: 42, baseType: !5094, size: 64)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5095, file: !5096, line: 43, baseType: !5100, size: 64, offset: 64)
!5100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5101, size: 64)
!5101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5102)
!5102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !5096, line: 125, size: 1408, elements: !5103)
!5103 = !{!5104, !5108, !5112, !5118, !5122, !5123, !5128, !5132, !5136, !5140, !5144, !5145, !5149, !5153, !5157, !5168, !5169, !5170, !5171, !5181, !5185, !5189}
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !5102, file: !5096, line: 126, baseType: !5105, size: 64)
!5105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5106, size: 64)
!5106 = !DISubroutineType(types: !5107)
!5107 = !{!5094, !5094}
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !5102, file: !5096, line: 127, baseType: !5109, size: 64, offset: 64)
!5109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5110, size: 64)
!5110 = !DISubroutineType(types: !5111)
!5111 = !{null, !5094}
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !5102, file: !5096, line: 128, baseType: !5113, size: 64, offset: 128)
!5113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5114, size: 64)
!5114 = !DISubroutineType(types: !5115)
!5115 = !{!520, !5116}
!5116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5117, size: 64)
!5117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5095)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !5102, file: !5096, line: 129, baseType: !5119, size: 64, offset: 192)
!5119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5120, size: 64)
!5120 = !DISubroutineType(types: !5121)
!5121 = !{!1985, !5116, !4825}
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !5102, file: !5096, line: 131, baseType: !5113, size: 64, offset: 256)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !5102, file: !5096, line: 133, baseType: !5124, size: 64, offset: 320)
!5124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5125, size: 64)
!5125 = !DISubroutineType(types: !5126)
!5126 = !{!5127, !5116}
!5127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !5096, line: 132, flags: DIFlagFwdDecl)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !5102, file: !5096, line: 134, baseType: !5129, size: 64, offset: 384)
!5129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5130, size: 64)
!5130 = !DISubroutineType(types: !5131)
!5131 = !{!520, !5116, !223}
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !5102, file: !5096, line: 136, baseType: !5133, size: 64, offset: 448)
!5133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5134, size: 64)
!5134 = !DISubroutineType(types: !5135)
!5135 = !{!123, !5116, !223, !7, !399, !209}
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !5102, file: !5096, line: 141, baseType: !5137, size: 64, offset: 512)
!5137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5138, size: 64)
!5138 = !DISubroutineType(types: !5139)
!5139 = !{!123, !5116, !223, !1240, !209}
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !5102, file: !5096, line: 144, baseType: !5141, size: 64, offset: 576)
!5141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5142, size: 64)
!5142 = !DISubroutineType(types: !5143)
!5143 = !{!223, !5116}
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !5102, file: !5096, line: 145, baseType: !5141, size: 64, offset: 640)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !5102, file: !5096, line: 146, baseType: !5146, size: 64, offset: 704)
!5146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5147, size: 64)
!5147 = !DISubroutineType(types: !5148)
!5148 = !{!5094, !5116}
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !5102, file: !5096, line: 148, baseType: !5150, size: 64, offset: 768)
!5150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5151, size: 64)
!5151 = !DISubroutineType(types: !5152)
!5152 = !{!5094, !5116, !5094}
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !5102, file: !5096, line: 151, baseType: !5154, size: 64, offset: 832)
!5154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5155, size: 64)
!5155 = !DISubroutineType(types: !5156)
!5156 = !{!5094, !5116, !223}
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !5102, file: !5096, line: 153, baseType: !5158, size: 64, offset: 896)
!5158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5159, size: 64)
!5159 = !DISubroutineType(types: !5160)
!5160 = !{!123, !5116, !223, !223, !7, !7, !5161}
!5161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5162, size: 64)
!5162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !5096, line: 94, size: 640, elements: !5163)
!5163 = !{!5164, !5165, !5166}
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5162, file: !5096, line: 95, baseType: !5094, size: 64)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !5162, file: !5096, line: 96, baseType: !7, size: 32, offset: 64)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !5162, file: !5096, line: 97, baseType: !5167, size: 512, offset: 128)
!5167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 512, elements: !2880)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !5102, file: !5096, line: 158, baseType: !5150, size: 64, offset: 960)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !5102, file: !5096, line: 161, baseType: !5146, size: 64, offset: 1024)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !5102, file: !5096, line: 163, baseType: !5105, size: 64, offset: 1088)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !5102, file: !5096, line: 164, baseType: !5172, size: 64, offset: 1152)
!5172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5173, size: 64)
!5173 = !DISubroutineType(types: !5174)
!5174 = !{!123, !5116, !5175}
!5175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5176, size: 64)
!5176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !5096, line: 73, size: 128, elements: !5177)
!5177 = !{!5178, !5179, !5180}
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !5176, file: !5096, line: 74, baseType: !7, size: 32)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5176, file: !5096, line: 75, baseType: !7, size: 32, offset: 32)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !5176, file: !5096, line: 76, baseType: !5116, size: 64, offset: 64)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !5102, file: !5096, line: 166, baseType: !5182, size: 64, offset: 1216)
!5182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5183, size: 64)
!5183 = !DISubroutineType(types: !5184)
!5184 = !{!399, !5094, !123}
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !5102, file: !5096, line: 167, baseType: !5186, size: 64, offset: 1280)
!5186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5187, size: 64)
!5187 = !DISubroutineType(types: !5188)
!5188 = !{!123, !5116, !7}
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !5102, file: !5096, line: 168, baseType: !5190, size: 64, offset: 1344)
!5190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5191, size: 64)
!5191 = !DISubroutineType(types: !5192)
!5192 = !{!123, !5094}
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5095, file: !5096, line: 44, baseType: !4805, size: 64, offset: 128)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !5095, file: !5096, line: 45, baseType: !430, size: 128, offset: 192)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !5095, file: !5096, line: 46, baseType: !430, size: 128, offset: 320)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5095, file: !5096, line: 47, baseType: !196, size: 8, offset: 448)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4806, file: !108, line: 776, baseType: !123, size: 32, offset: 5120)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4806, file: !108, line: 778, baseType: !857, size: 32, offset: 5152)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4806, file: !108, line: 779, baseType: !205, size: 32, offset: 5184)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4806, file: !108, line: 781, baseType: !362, size: 32, offset: 5216)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4806, file: !108, line: 782, baseType: !430, size: 128, offset: 5248)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4806, file: !108, line: 784, baseType: !5203, size: 64, offset: 5376)
!5203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5204, size: 64)
!5204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5205)
!5205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !5206, line: 52, size: 768, elements: !5207)
!5206 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!5207 = !{!5208, !5209, !5210, !5211, !5212, !5216, !5220, !5221, !5222, !5223, !5227, !5231}
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5205, file: !5206, line: 53, baseType: !223, size: 64)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !5205, file: !5206, line: 55, baseType: !682, size: 64, offset: 64)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !5205, file: !5206, line: 56, baseType: !682, size: 64, offset: 128)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !5205, file: !5206, line: 58, baseType: !4822, size: 64, offset: 192)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !5205, file: !5206, line: 59, baseType: !5213, size: 64, offset: 256)
!5213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5214, size: 64)
!5214 = !DISubroutineType(types: !5215)
!5215 = !{!230, !4825, !4831}
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !5205, file: !5206, line: 61, baseType: !5217, size: 64, offset: 320)
!5217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5218, size: 64)
!5218 = !DISubroutineType(types: !5219)
!5219 = !{null, !5203}
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !5205, file: !5206, line: 62, baseType: !4833, size: 64, offset: 384)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !5205, file: !5206, line: 64, baseType: !4842, size: 64, offset: 448)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !5205, file: !5206, line: 66, baseType: !4467, size: 64, offset: 512)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !5205, file: !5206, line: 67, baseType: !5224, size: 64, offset: 576)
!5224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5225, size: 64)
!5225 = !DISubroutineType(types: !5226)
!5226 = !{!1985, !4825}
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !5205, file: !5206, line: 69, baseType: !5228, size: 64, offset: 640)
!5228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5229, size: 64)
!5229 = !DISubroutineType(types: !5230)
!5230 = !{null, !4825, !4499, !4500}
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5205, file: !5206, line: 71, baseType: !4837, size: 64, offset: 704)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4806, file: !108, line: 785, baseType: !682, size: 64, offset: 5440)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4806, file: !108, line: 787, baseType: !4833, size: 64, offset: 5504)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4806, file: !108, line: 788, baseType: !5235, size: 64, offset: 5568)
!5235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5236, size: 64)
!5236 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !108, line: 46, flags: DIFlagFwdDecl)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4806, file: !108, line: 789, baseType: !5238, size: 64, offset: 5632)
!5238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5239, size: 64)
!5239 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !108, line: 48, flags: DIFlagFwdDecl)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4806, file: !108, line: 791, baseType: !5241, size: 64, offset: 5696)
!5241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5242, size: 64)
!5242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !108, line: 597, size: 128, elements: !5243)
!5243 = !{!5244, !5245, !5246, !5247, !5248}
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !5242, file: !108, line: 598, baseType: !130, size: 32)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !5242, file: !108, line: 599, baseType: !139, size: 32, offset: 32)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !5242, file: !108, line: 600, baseType: !144, size: 32, offset: 64)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !5242, file: !108, line: 601, baseType: !520, size: 8, offset: 96)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !5242, file: !108, line: 602, baseType: !520, size: 8, offset: 104)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4806, file: !108, line: 793, baseType: !149, size: 32, offset: 5760)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4806, file: !108, line: 795, baseType: !520, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4806, file: !108, line: 796, baseType: !520, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4806, file: !108, line: 797, baseType: !520, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4806, file: !108, line: 798, baseType: !520, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4806, file: !108, line: 799, baseType: !520, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_status", scope: !411, file: !156, line: 451, baseType: !122, size: 32, offset: 1536)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "nr_requests", scope: !411, file: !156, line: 457, baseType: !200, size: 64, offset: 1600)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pad_mask", scope: !411, file: !156, line: 459, baseType: !7, size: 32, offset: 1664)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "rq_timeout", scope: !411, file: !156, line: 466, baseType: !7, size: 32, offset: 1696)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !411, file: !156, line: 468, baseType: !460, size: 320, offset: 1728)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_work", scope: !411, file: !156, line: 469, baseType: !441, size: 256, offset: 2048)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active_requests_shared_tags", scope: !411, file: !156, line: 471, baseType: !382, size: 32, offset: 2304)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "sched_shared_tags", scope: !411, file: !156, line: 473, baseType: !555, size: 64, offset: 2368)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !411, file: !156, line: 475, baseType: !430, size: 128, offset: 2432)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_pols", scope: !411, file: !156, line: 477, baseType: !488, size: 64, offset: 2560)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "root_blkg", scope: !411, file: !156, line: 478, baseType: !3422, size: 64, offset: 2624)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "blkg_list", scope: !411, file: !156, line: 479, baseType: !430, size: 128, offset: 2688)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_mutex", scope: !411, file: !156, line: 480, baseType: !954, size: 256, offset: 2816)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !411, file: !156, line: 483, baseType: !5269, size: 960, offset: 3072)
!5269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_limits", file: !156, line: 300, size: 960, elements: !5270)
!5270 = !{!5271, !5272, !5273, !5274, !5275, !5276, !5277, !5278, !5279, !5280, !5281, !5282, !5283, !5284, !5285, !5286, !5287, !5288, !5289, !5290, !5291, !5292, !5293, !5294, !5295, !5296, !5297, !5298, !5299, !5300}
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "bounce", scope: !5269, file: !156, line: 301, baseType: !155, size: 32)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "seg_boundary_mask", scope: !5269, file: !156, line: 302, baseType: !200, size: 64, offset: 64)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !5269, file: !156, line: 303, baseType: !200, size: 64, offset: 128)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_sectors", scope: !5269, file: !156, line: 305, baseType: !7, size: 32, offset: 192)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "max_dev_sectors", scope: !5269, file: !156, line: 306, baseType: !7, size: 32, offset: 224)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_sectors", scope: !5269, file: !156, line: 307, baseType: !7, size: 32, offset: 256)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !5269, file: !156, line: 308, baseType: !7, size: 32, offset: 288)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "max_user_sectors", scope: !5269, file: !156, line: 309, baseType: !7, size: 32, offset: 320)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !5269, file: !156, line: 310, baseType: !7, size: 32, offset: 352)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "physical_block_size", scope: !5269, file: !156, line: 311, baseType: !7, size: 32, offset: 384)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "logical_block_size", scope: !5269, file: !156, line: 312, baseType: !7, size: 32, offset: 416)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_offset", scope: !5269, file: !156, line: 313, baseType: !7, size: 32, offset: 448)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "io_min", scope: !5269, file: !156, line: 314, baseType: !7, size: 32, offset: 480)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "io_opt", scope: !5269, file: !156, line: 315, baseType: !7, size: 32, offset: 512)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_sectors", scope: !5269, file: !156, line: 316, baseType: !7, size: 32, offset: 544)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_discard_sectors", scope: !5269, file: !156, line: 317, baseType: !7, size: 32, offset: 576)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "max_secure_erase_sectors", scope: !5269, file: !156, line: 318, baseType: !7, size: 32, offset: 608)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_zeroes_sectors", scope: !5269, file: !156, line: 319, baseType: !7, size: 32, offset: 640)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "max_zone_append_sectors", scope: !5269, file: !156, line: 320, baseType: !7, size: 32, offset: 672)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "discard_granularity", scope: !5269, file: !156, line: 321, baseType: !7, size: 32, offset: 704)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "discard_alignment", scope: !5269, file: !156, line: 322, baseType: !7, size: 32, offset: 736)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "zone_write_granularity", scope: !5269, file: !156, line: 323, baseType: !7, size: 32, offset: 768)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "max_segments", scope: !5269, file: !156, line: 325, baseType: !202, size: 16, offset: 800)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "max_integrity_segments", scope: !5269, file: !156, line: 326, baseType: !202, size: 16, offset: 816)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_segments", scope: !5269, file: !156, line: 327, baseType: !202, size: 16, offset: 832)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "misaligned", scope: !5269, file: !156, line: 329, baseType: !199, size: 8, offset: 848)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "discard_misaligned", scope: !5269, file: !156, line: 330, baseType: !199, size: 8, offset: 856)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "raid_partial_stripes_expensive", scope: !5269, file: !156, line: 331, baseType: !199, size: 8, offset: 864)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "zoned", scope: !5269, file: !156, line: 332, baseType: !160, size: 32, offset: 896)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alignment", scope: !5269, file: !156, line: 339, baseType: !7, size: 32, offset: 928)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "required_elevator_features", scope: !411, file: !156, line: 485, baseType: !7, size: 32, offset: 4032)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !411, file: !156, line: 487, baseType: !123, size: 32, offset: 4064)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "blk_trace", scope: !411, file: !156, line: 489, baseType: !5304, size: 64, offset: 4096)
!5304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5305, size: 64)
!5305 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_trace", file: !156, line: 31, flags: DIFlagFwdDecl)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !411, file: !156, line: 494, baseType: !497, size: 64, offset: 4160)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "flush_list", scope: !411, file: !156, line: 495, baseType: !430, size: 128, offset: 4224)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_list", scope: !411, file: !156, line: 497, baseType: !430, size: 128, offset: 4352)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_lock", scope: !411, file: !156, line: 498, baseType: !362, size: 32, offset: 4480)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_work", scope: !411, file: !156, line: 499, baseType: !437, size: 704, offset: 4544)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !411, file: !156, line: 501, baseType: !954, size: 256, offset: 5248)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_dir_lock", scope: !411, file: !156, line: 502, baseType: !954, size: 256, offset: 5504)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_list", scope: !411, file: !156, line: 508, baseType: !430, size: 128, offset: 5760)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_lock", scope: !411, file: !156, line: 509, baseType: !362, size: 32, offset: 5888)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_depth", scope: !411, file: !156, line: 511, baseType: !123, size: 32, offset: 5920)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !411, file: !156, line: 517, baseType: !1161, size: 128, align: 64, offset: 5952)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_wq", scope: !411, file: !156, line: 518, baseType: !572, size: 192, offset: 6080)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_lock", scope: !411, file: !156, line: 523, baseType: !954, size: 256, offset: 6272)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "quiesce_depth", scope: !411, file: !156, line: 525, baseType: !123, size: 32, offset: 6528)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set", scope: !411, file: !156, line: 527, baseType: !4749, size: 64, offset: 6592)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set_list", scope: !411, file: !156, line: 528, baseType: !430, size: 128, offset: 6656)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !411, file: !156, line: 530, baseType: !745, size: 64, offset: 6784)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "sched_debugfs_dir", scope: !411, file: !156, line: 531, baseType: !745, size: 64, offset: 6848)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "rqos_debugfs_dir", scope: !411, file: !156, line: 532, baseType: !745, size: 64, offset: 6912)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !411, file: !156, line: 536, baseType: !954, size: 256, offset: 6976)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "mq_sysfs_init_done", scope: !411, file: !156, line: 538, baseType: !520, size: 8, offset: 7232)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !402, file: !403, line: 45, baseType: !5328, size: 64, offset: 256)
!5328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5329, size: 64)
!5329 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !403, line: 45, flags: DIFlagFwdDecl)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !402, file: !403, line: 46, baseType: !200, size: 64, offset: 320)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !402, file: !403, line: 47, baseType: !520, size: 8, offset: 384)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !402, file: !403, line: 48, baseType: !196, size: 8, offset: 392)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !402, file: !403, line: 49, baseType: !520, size: 8, offset: 400)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !402, file: !403, line: 50, baseType: !520, size: 8, offset: 408)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !402, file: !403, line: 51, baseType: !857, size: 32, offset: 416)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !402, file: !403, line: 52, baseType: !382, size: 32, offset: 448)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !402, file: !403, line: 53, baseType: !362, size: 32, offset: 480)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !402, file: !403, line: 54, baseType: !710, size: 64, offset: 512)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !402, file: !403, line: 55, baseType: !399, size: 64, offset: 576)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !402, file: !403, line: 56, baseType: !399, size: 64, offset: 640)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !402, file: !403, line: 57, baseType: !5342, size: 64, offset: 704)
!5342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5343, size: 64)
!5343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5344)
!5344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !156, line: 1477, size: 128, elements: !5345)
!5345 = !{!5346, !5350}
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dead", scope: !5344, file: !156, line: 1478, baseType: !5347, size: 64)
!5347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5348, size: 64)
!5348 = !DISubroutineType(types: !5349)
!5349 = !{null, !401, !520}
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !5344, file: !156, line: 1483, baseType: !5351, size: 64, offset: 64)
!5351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5352, size: 64)
!5352 = !DISubroutineType(types: !5353)
!5353 = !{null, !401}
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !402, file: !403, line: 58, baseType: !954, size: 256, offset: 768)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !402, file: !403, line: 60, baseType: !123, size: 32, offset: 1024)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !402, file: !403, line: 61, baseType: !123, size: 32, offset: 1056)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !402, file: !403, line: 62, baseType: !601, size: 64, offset: 1088)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !402, file: !403, line: 65, baseType: !954, size: 256, offset: 1152)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !402, file: !403, line: 66, baseType: !852, size: 64, offset: 1408)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !402, file: !403, line: 68, baseType: !5361, size: 64, offset: 1472)
!5361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5362, size: 64)
!5362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !156, line: 63, size: 808, elements: !5363)
!5363 = !{!5364, !5365}
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !5362, file: !156, line: 64, baseType: !273, size: 296)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "volname", scope: !5362, file: !156, line: 65, baseType: !5366, size: 512, offset: 296)
!5366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 512, elements: !640)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !402, file: !403, line: 72, baseType: !520, size: 8, offset: 1536)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !402, file: !403, line: 77, baseType: !4806, size: 5824, offset: 1600)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !346, file: !156, line: 145, baseType: !5370, size: 64, offset: 576)
!5370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5371, size: 64)
!5371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5372)
!5372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device_operations", file: !156, line: 1388, size: 1152, elements: !5373)
!5373 = !{!5374, !5376, !5380, !5385, !5389, !5393, !5394, !5398, !5399, !5405, !5409, !5410, !5414, !5440, !5444, !5448, !5449, !5453}
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "submit_bio", scope: !5372, file: !156, line: 1389, baseType: !5375, size: 64)
!5375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "poll_bio", scope: !5372, file: !156, line: 1390, baseType: !5377, size: 64, offset: 64)
!5377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5378, size: 64)
!5378 = !DISubroutineType(types: !5379)
!5379 = !{!123, !3395, !2287, !7}
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5372, file: !156, line: 1392, baseType: !5381, size: 64, offset: 128)
!5381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5382, size: 64)
!5382 = !DISubroutineType(types: !5383)
!5383 = !{!123, !345, !5384}
!5384 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_mode_t", file: !156, line: 115, baseType: !7)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5372, file: !156, line: 1393, baseType: !5386, size: 64, offset: 192)
!5386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5387, size: 64)
!5387 = !DISubroutineType(types: !5388)
!5388 = !{null, !345}
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !5372, file: !156, line: 1394, baseType: !5390, size: 64, offset: 256)
!5390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5391, size: 64)
!5391 = !DISubroutineType(types: !5392)
!5392 = !{!123, !401, !5384, !7, !200}
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !5372, file: !156, line: 1396, baseType: !5390, size: 64, offset: 320)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "check_events", scope: !5372, file: !156, line: 1398, baseType: !5395, size: 64, offset: 384)
!5395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5396, size: 64)
!5396 = !DISubroutineType(types: !5397)
!5397 = !{!7, !345, !7}
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_native_capacity", scope: !5372, file: !156, line: 1400, baseType: !5386, size: 64, offset: 448)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "getgeo", scope: !5372, file: !156, line: 1401, baseType: !5400, size: 64, offset: 512)
!5400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5401, size: 64)
!5401 = !DISubroutineType(types: !5402)
!5402 = !{!123, !401, !5403}
!5403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5404, size: 64)
!5404 = !DICompositeType(tag: DW_TAG_structure_type, name: "hd_geometry", file: !14, line: 56, flags: DIFlagFwdDecl)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_only", scope: !5372, file: !156, line: 1402, baseType: !5406, size: 64, offset: 576)
!5406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5407, size: 64)
!5407 = !DISubroutineType(types: !5408)
!5408 = !{!123, !401, !520}
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "free_disk", scope: !5372, file: !156, line: 1403, baseType: !5386, size: 64, offset: 640)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "swap_slot_free_notify", scope: !5372, file: !156, line: 1405, baseType: !5411, size: 64, offset: 704)
!5411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5412, size: 64)
!5412 = !DISubroutineType(types: !5413)
!5413 = !{null, !401, !200}
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "report_zones", scope: !5372, file: !156, line: 1406, baseType: !5415, size: 64, offset: 768)
!5415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5416, size: 64)
!5416 = !DISubroutineType(types: !5417)
!5417 = !{!123, !345, !406, !7, !5418, !399}
!5418 = !DIDerivedType(tag: DW_TAG_typedef, name: "report_zones_cb", file: !156, line: 342, baseType: !5419)
!5419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5420, size: 64)
!5420 = !DISubroutineType(types: !5421)
!5421 = !{!123, !5422, !7, !399}
!5422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5423, size: 64)
!5423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_zone", file: !5424, line: 106, size: 512, elements: !5425)
!5424 = !DIFile(filename: "./include/uapi/linux/blkzoned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3d5e7016ed7b437a9c2a308f55db1257")
!5425 = !{!5426, !5427, !5428, !5429, !5430, !5431, !5432, !5433, !5435, !5436}
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5423, file: !5424, line: 107, baseType: !190, size: 64)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5423, file: !5424, line: 108, baseType: !190, size: 64, offset: 64)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !5423, file: !5424, line: 109, baseType: !190, size: 64, offset: 128)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5423, file: !5424, line: 110, baseType: !198, size: 8, offset: 192)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !5423, file: !5424, line: 111, baseType: !198, size: 8, offset: 200)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "non_seq", scope: !5423, file: !5424, line: 112, baseType: !198, size: 8, offset: 208)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5423, file: !5424, line: 113, baseType: !198, size: 8, offset: 216)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !5423, file: !5424, line: 114, baseType: !5434, size: 32, offset: 224)
!5434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 32, elements: !321)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !5423, file: !5424, line: 115, baseType: !190, size: 64, offset: 256)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5423, file: !5424, line: 116, baseType: !5437, size: 192, offset: 320)
!5437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 192, elements: !5438)
!5438 = !{!5439}
!5439 = !DISubrange(count: 24)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !5372, file: !156, line: 1408, baseType: !5441, size: 64, offset: 832)
!5441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5442, size: 64)
!5442 = !DISubroutineType(types: !5443)
!5443 = !{!230, !345, !4831}
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "get_unique_id", scope: !5372, file: !156, line: 1410, baseType: !5445, size: 64, offset: 896)
!5445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5446, size: 64)
!5446 = !DISubroutineType(types: !5447)
!5447 = !{!123, !345, !195, !165}
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5372, file: !156, line: 1412, baseType: !887, size: 64, offset: 960)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "pr_ops", scope: !5372, file: !156, line: 1413, baseType: !5450, size: 64, offset: 1024)
!5450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5451, size: 64)
!5451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5452)
!5452 = !DICompositeType(tag: DW_TAG_structure_type, name: "pr_ops", file: !156, line: 37, flags: DIFlagFwdDecl)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "alternative_gpt_sector", scope: !5372, file: !156, line: 1420, baseType: !5454, size: 64, offset: 1088)
!5454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5455, size: 64)
!5455 = !DISubroutineType(types: !5456)
!5456 = !{!123, !345, !4438}
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !346, file: !156, line: 146, baseType: !410, size: 64, offset: 640)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !346, file: !156, line: 147, baseType: !399, size: 64, offset: 704)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "bio_split", scope: !346, file: !156, line: 149, baseType: !3438, size: 1984, offset: 768)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !346, file: !156, line: 151, baseType: !123, size: 32, offset: 2752)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !346, file: !156, line: 152, baseType: !200, size: 64, offset: 2816)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "open_mutex", scope: !346, file: !156, line: 161, baseType: !954, size: 256, offset: 2880)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "open_partitions", scope: !346, file: !156, line: 162, baseType: !7, size: 32, offset: 3136)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !346, file: !156, line: 164, baseType: !2654, size: 64, offset: 3200)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "queue_kobj", scope: !346, file: !156, line: 165, baseType: !595, size: 512, offset: 3264)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "slave_dir", scope: !346, file: !156, line: 166, baseType: !601, size: 64, offset: 3776)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "slave_bdevs", scope: !346, file: !156, line: 168, baseType: !430, size: 128, offset: 3840)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !346, file: !156, line: 170, baseType: !5469, size: 64, offset: 3968)
!5469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5470, size: 64)
!5470 = !DICompositeType(tag: DW_TAG_structure_type, name: "timer_rand_state", file: !156, line: 170, flags: DIFlagFwdDecl)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "sync_io", scope: !346, file: !156, line: 171, baseType: !382, size: 32, offset: 4032)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "ev", scope: !346, file: !156, line: 172, baseType: !5473, size: 64, offset: 4096)
!5473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5474, size: 64)
!5474 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_events", file: !156, line: 104, flags: DIFlagFwdDecl)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "cdi", scope: !346, file: !156, line: 197, baseType: !5476, size: 64, offset: 4160)
!5476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5477, size: 64)
!5477 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdrom_device_info", file: !156, line: 197, flags: DIFlagFwdDecl)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !346, file: !156, line: 199, baseType: !123, size: 32, offset: 4224)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !346, file: !156, line: 200, baseType: !5480, size: 64, offset: 4288)
!5480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5481, size: 64)
!5481 = !DICompositeType(tag: DW_TAG_structure_type, name: "badblocks", file: !156, line: 105, flags: DIFlagFwdDecl)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "lockdep_map", scope: !346, file: !156, line: 201, baseType: !1198, offset: 4352)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "diskseq", scope: !346, file: !156, line: 202, baseType: !208, size: 64, offset: 4352)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "open_mode", scope: !346, file: !156, line: 203, baseType: !5384, size: 32, offset: 4416)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ranges", scope: !346, file: !156, line: 209, baseType: !5486, size: 64, offset: 4480)
!5486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5487, size: 64)
!5487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_ranges", file: !156, line: 384, size: 576, elements: !5488)
!5488 = !{!5489, !5490, !5491, !5492}
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !5487, file: !156, line: 385, baseType: !595, size: 512)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_registered", scope: !5487, file: !156, line: 386, baseType: !520, size: 8, offset: 512)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ia_ranges", scope: !5487, file: !156, line: 387, baseType: !7, size: 32, offset: 544)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "ia_range", scope: !5487, file: !156, line: 388, baseType: !5493, offset: 576)
!5493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5494, elements: !1452)
!5494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_range", file: !156, line: 378, size: 640, elements: !5495)
!5495 = !{!5496, !5497, !5498}
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !5494, file: !156, line: 379, baseType: !595, size: 512)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "sector", scope: !5494, file: !156, line: 380, baseType: !406, size: 64, offset: 512)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sectors", scope: !5494, file: !156, line: 381, baseType: !406, size: 64, offset: 576)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !342, file: !310, line: 12, baseType: !352, size: 256, offset: 64)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !342, file: !310, line: 19, baseType: !5501, size: 64, offset: 320)
!5501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5502, size: 64)
!5502 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !342, file: !310, line: 13, size: 1024, elements: !5503)
!5503 = !{!5504, !5505, !5506, !5507, !5508}
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !5502, file: !310, line: 14, baseType: !406, size: 64)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5502, file: !310, line: 15, baseType: !406, size: 64, offset: 64)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5502, file: !310, line: 16, baseType: !123, size: 32, offset: 128)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "has_info", scope: !5502, file: !310, line: 17, baseType: !520, size: 8, offset: 160)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5502, file: !310, line: 18, baseType: !5362, size: 808, offset: 168)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !342, file: !310, line: 20, baseType: !123, size: 32, offset: 384)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !342, file: !310, line: 21, baseType: !123, size: 32, offset: 416)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "access_beyond_eod", scope: !342, file: !310, line: 22, baseType: !520, size: 8, offset: 448)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "pp_buf", scope: !342, file: !310, line: 23, baseType: !230, size: 64, offset: 512)
!5513 = !{!5514, !5515, !5540, !5560, !5561, !5562, !5566, !5567, !5568}
!5514 = !DILocalVariable(name: "state", arg: 1, scope: !338, file: !3, line: 713, type: !341)
!5515 = !DILocalVariable(name: "gpt", scope: !338, file: !3, line: 715, type: !5516)
!5516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5517, size: 64)
!5517 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpt_header", file: !5518, line: 76, baseType: !5519)
!5518 = !DIFile(filename: "block/partitions/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2477f2cd7923917f2390d5727d2e0c9a")
!5519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_gpt_header", file: !5518, line: 55, size: 736, elements: !5520)
!5520 = !{!5521, !5522, !5523, !5524, !5525, !5526, !5527, !5528, !5529, !5530, !5536, !5537, !5538, !5539}
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !5519, file: !5518, line: 56, baseType: !192, size: 64)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !5519, file: !5518, line: 57, baseType: !188, size: 32, offset: 64)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !5519, file: !5518, line: 58, baseType: !188, size: 32, offset: 96)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "header_crc32", scope: !5519, file: !5518, line: 59, baseType: !188, size: 32, offset: 128)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !5519, file: !5518, line: 60, baseType: !188, size: 32, offset: 160)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "my_lba", scope: !5519, file: !5518, line: 61, baseType: !192, size: 64, offset: 192)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_lba", scope: !5519, file: !5518, line: 62, baseType: !192, size: 64, offset: 256)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "first_usable_lba", scope: !5519, file: !5518, line: 63, baseType: !192, size: 64, offset: 320)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "last_usable_lba", scope: !5519, file: !5518, line: 64, baseType: !192, size: 64, offset: 384)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "disk_guid", scope: !5519, file: !5518, line: 65, baseType: !5531, size: 128, align: 32, offset: 448)
!5531 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_guid_t", file: !316, line: 74, baseType: !5532, align: 32)
!5532 = !DIDerivedType(tag: DW_TAG_typedef, name: "guid_t", file: !4020, line: 17, baseType: !5533)
!5533 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4020, line: 15, size: 128, elements: !5534)
!5534 = !{!5535}
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !5533, file: !4020, line: 16, baseType: !4024, size: 128)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "partition_entry_lba", scope: !5519, file: !5518, line: 66, baseType: !192, size: 64, offset: 576)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "num_partition_entries", scope: !5519, file: !5518, line: 67, baseType: !188, size: 32, offset: 640)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "sizeof_partition_entry", scope: !5519, file: !5518, line: 68, baseType: !188, size: 32, offset: 672)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "partition_entry_array_crc32", scope: !5519, file: !5518, line: 69, baseType: !188, size: 32, offset: 704)
!5540 = !DILocalVariable(name: "ptes", scope: !338, file: !3, line: 716, type: !5541)
!5541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5542, size: 64)
!5542 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpt_entry", file: !5518, line: 91, baseType: !5543)
!5543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_gpt_entry", file: !5518, line: 84, size: 1024, elements: !5544)
!5544 = !{!5545, !5546, !5547, !5548, !5549, !5556}
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "partition_type_guid", scope: !5543, file: !5518, line: 85, baseType: !5531, size: 128, align: 32)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "unique_partition_guid", scope: !5543, file: !5518, line: 86, baseType: !5531, size: 128, align: 32, offset: 128)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "starting_lba", scope: !5543, file: !5518, line: 87, baseType: !192, size: 64, offset: 256)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "ending_lba", scope: !5543, file: !5518, line: 88, baseType: !192, size: 64, offset: 320)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !5543, file: !5518, line: 89, baseType: !5550, size: 64, offset: 384)
!5550 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpt_entry_attributes", file: !5518, line: 82, baseType: !5551)
!5551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_gpt_entry_attributes", file: !5518, line: 78, size: 64, elements: !5552)
!5552 = !{!5553, !5554, !5555}
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "required_to_function", scope: !5551, file: !5518, line: 79, baseType: !208, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5551, file: !5518, line: 80, baseType: !208, size: 47, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "type_guid_specific", scope: !5551, file: !5518, line: 81, baseType: !208, size: 16, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "partition_name", scope: !5543, file: !5518, line: 90, baseType: !5557, size: 576, offset: 448)
!5557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 576, elements: !5558)
!5558 = !{!5559}
!5559 = !DISubrange(count: 36)
!5560 = !DILocalVariable(name: "i", scope: !338, file: !3, line: 717, type: !205)
!5561 = !DILocalVariable(name: "ssz", scope: !338, file: !3, line: 718, type: !7)
!5562 = !DILocalVariable(name: "info", scope: !5563, file: !3, line: 729, type: !5361)
!5563 = distinct !DILexicalBlock(scope: !5564, file: !3, line: 728, column: 86)
!5564 = distinct !DILexicalBlock(scope: !5565, file: !3, line: 728, column: 2)
!5565 = distinct !DILexicalBlock(scope: !338, file: !3, line: 728, column: 2)
!5566 = !DILocalVariable(name: "label_max", scope: !5563, file: !3, line: 730, type: !7)
!5567 = !DILocalVariable(name: "start", scope: !5563, file: !3, line: 731, type: !208)
!5568 = !DILocalVariable(name: "size", scope: !5563, file: !3, line: 732, type: !208)
!5569 = !DILocation(line: 713, column: 45, scope: !338)
!5570 = !DILocation(line: 715, column: 2, scope: !338)
!5571 = !DILocation(line: 715, column: 14, scope: !338)
!5572 = !DILocation(line: 716, column: 2, scope: !338)
!5573 = !DILocation(line: 716, column: 13, scope: !338)
!5574 = !DILocation(line: 717, column: 2, scope: !338)
!5575 = !DILocation(line: 717, column: 6, scope: !338)
!5576 = !DILocation(line: 718, column: 2, scope: !338)
!5577 = !DILocation(line: 718, column: 11, scope: !338)
!5578 = !DILocation(line: 718, column: 42, scope: !338)
!5579 = !DILocation(line: 718, column: 49, scope: !338)
!5580 = !DILocation(line: 718, column: 55, scope: !338)
!5581 = !DILocation(line: 718, column: 17, scope: !338)
!5582 = !DILocation(line: 718, column: 62, scope: !338)
!5583 = !DILocation(line: 720, column: 22, scope: !5584)
!5584 = distinct !DILexicalBlock(scope: !338, file: !3, line: 720, column: 6)
!5585 = !DILocation(line: 720, column: 7, scope: !5584)
!5586 = !DILocation(line: 720, column: 42, scope: !5584)
!5587 = !DILocation(line: 720, column: 46, scope: !5584)
!5588 = !DILocation(line: 720, column: 50, scope: !5584)
!5589 = !DILocation(line: 720, column: 54, scope: !5584)
!5590 = !DILocation(line: 720, column: 6, scope: !338)
!5591 = !DILocation(line: 721, column: 9, scope: !5592)
!5592 = distinct !DILexicalBlock(scope: !5584, file: !3, line: 720, column: 60)
!5593 = !DILocation(line: 721, column: 3, scope: !5592)
!5594 = !DILocation(line: 722, column: 9, scope: !5592)
!5595 = !DILocation(line: 722, column: 3, scope: !5592)
!5596 = !DILocation(line: 723, column: 3, scope: !5592)
!5597 = !DILocation(line: 726, column: 2, scope: !5598)
!5598 = distinct !DILexicalBlock(scope: !5599, file: !3, line: 726, column: 2)
!5599 = distinct !DILexicalBlock(scope: !338, file: !3, line: 726, column: 2)
!5600 = !DILocation(line: 726, column: 2, scope: !5599)
!5601 = !DILocation(line: 728, column: 9, scope: !5565)
!5602 = !DILocation(line: 728, column: 7, scope: !5565)
!5603 = !DILocation(line: 728, column: 14, scope: !5564)
!5604 = !DILocation(line: 728, column: 18, scope: !5564)
!5605 = !DILocation(line: 728, column: 16, scope: !5564)
!5606 = !DILocation(line: 728, column: 58, scope: !5564)
!5607 = !DILocation(line: 728, column: 61, scope: !5564)
!5608 = !DILocation(line: 728, column: 65, scope: !5564)
!5609 = !DILocation(line: 728, column: 72, scope: !5564)
!5610 = !DILocation(line: 728, column: 77, scope: !5564)
!5611 = !DILocation(line: 728, column: 63, scope: !5564)
!5612 = !DILocation(line: 0, scope: !5564)
!5613 = !DILocation(line: 728, column: 2, scope: !5565)
!5614 = !DILocation(line: 729, column: 3, scope: !5563)
!5615 = !DILocation(line: 729, column: 31, scope: !5563)
!5616 = !DILocation(line: 730, column: 3, scope: !5563)
!5617 = !DILocation(line: 730, column: 12, scope: !5563)
!5618 = !DILocation(line: 731, column: 3, scope: !5563)
!5619 = !DILocation(line: 731, column: 7, scope: !5563)
!5620 = !DILocation(line: 731, column: 15, scope: !5563)
!5621 = !DILocation(line: 732, column: 3, scope: !5563)
!5622 = !DILocation(line: 732, column: 7, scope: !5563)
!5623 = !DILocation(line: 732, column: 14, scope: !5563)
!5624 = !DILocation(line: 733, column: 7, scope: !5563)
!5625 = !DILocation(line: 732, column: 46, scope: !5563)
!5626 = !DILocation(line: 733, column: 41, scope: !5563)
!5627 = !DILocation(line: 735, column: 22, scope: !5628)
!5628 = distinct !DILexicalBlock(scope: !5563, file: !3, line: 735, column: 7)
!5629 = !DILocation(line: 735, column: 27, scope: !5628)
!5630 = !DILocation(line: 735, column: 40, scope: !5628)
!5631 = !DILocation(line: 735, column: 47, scope: !5628)
!5632 = !DILocation(line: 735, column: 31, scope: !5628)
!5633 = !DILocation(line: 735, column: 8, scope: !5628)
!5634 = !DILocation(line: 735, column: 7, scope: !5563)
!5635 = !DILocation(line: 736, column: 4, scope: !5628)
!5636 = !DILocation(line: 738, column: 17, scope: !5563)
!5637 = !DILocation(line: 738, column: 24, scope: !5563)
!5638 = !DILocation(line: 738, column: 25, scope: !5563)
!5639 = !DILocation(line: 738, column: 29, scope: !5563)
!5640 = !DILocation(line: 738, column: 37, scope: !5563)
!5641 = !DILocation(line: 738, column: 35, scope: !5563)
!5642 = !DILocation(line: 738, column: 42, scope: !5563)
!5643 = !DILocation(line: 738, column: 49, scope: !5563)
!5644 = !DILocation(line: 738, column: 47, scope: !5563)
!5645 = !DILocation(line: 738, column: 3, scope: !5563)
!5646 = !DILocation(line: 741, column: 20, scope: !5647)
!5647 = distinct !DILexicalBlock(scope: !5563, file: !3, line: 741, column: 7)
!5648 = !DILocation(line: 741, column: 25, scope: !5647)
!5649 = !DILocation(line: 741, column: 28, scope: !5647)
!5650 = !DILocation(line: 741, column: 49, scope: !5647)
!5651 = !DILocation(line: 741, column: 8, scope: !5647)
!5652 = !DILocation(line: 741, column: 7, scope: !5563)
!5653 = !DILocation(line: 742, column: 4, scope: !5647)
!5654 = !DILocation(line: 742, column: 11, scope: !5647)
!5655 = !DILocation(line: 742, column: 17, scope: !5647)
!5656 = !DILocation(line: 742, column: 19, scope: !5647)
!5657 = !DILocation(line: 742, column: 24, scope: !5647)
!5658 = !DILocation(line: 742, column: 30, scope: !5647)
!5659 = !DILocation(line: 744, column: 11, scope: !5563)
!5660 = !DILocation(line: 744, column: 18, scope: !5563)
!5661 = !DILocation(line: 744, column: 24, scope: !5563)
!5662 = !DILocation(line: 744, column: 26, scope: !5563)
!5663 = !DILocation(line: 744, column: 31, scope: !5563)
!5664 = !DILocation(line: 744, column: 8, scope: !5563)
!5665 = !DILocation(line: 745, column: 20, scope: !5563)
!5666 = !DILocation(line: 745, column: 25, scope: !5563)
!5667 = !DILocation(line: 745, column: 28, scope: !5563)
!5668 = !DILocation(line: 745, column: 51, scope: !5563)
!5669 = !DILocation(line: 745, column: 57, scope: !5563)
!5670 = !DILocation(line: 745, column: 3, scope: !5563)
!5671 = !DILocation(line: 748, column: 13, scope: !5563)
!5672 = !DILocation(line: 750, column: 20, scope: !5563)
!5673 = !DILocation(line: 750, column: 25, scope: !5563)
!5674 = !DILocation(line: 750, column: 28, scope: !5563)
!5675 = !DILocation(line: 750, column: 44, scope: !5563)
!5676 = !DILocation(line: 750, column: 55, scope: !5563)
!5677 = !DILocation(line: 750, column: 61, scope: !5563)
!5678 = !DILocation(line: 750, column: 3, scope: !5563)
!5679 = !DILocation(line: 751, column: 3, scope: !5563)
!5680 = !DILocation(line: 751, column: 10, scope: !5563)
!5681 = !DILocation(line: 751, column: 16, scope: !5563)
!5682 = !DILocation(line: 751, column: 18, scope: !5563)
!5683 = !DILocation(line: 751, column: 23, scope: !5563)
!5684 = !DILocation(line: 751, column: 32, scope: !5563)
!5685 = !DILocation(line: 752, column: 2, scope: !5564)
!5686 = !DILocation(line: 752, column: 2, scope: !5563)
!5687 = !DILocation(line: 728, column: 82, scope: !5564)
!5688 = !DILocation(line: 728, column: 2, scope: !5564)
!5689 = distinct !{!5689, !5613, !5690, !5691, !5692}
!5690 = !DILocation(line: 752, column: 2, scope: !5565)
!5691 = !{!"llvm.loop.mustprogress"}
!5692 = !{!"llvm.loop.unroll.disable"}
!5693 = !DILocation(line: 753, column: 8, scope: !338)
!5694 = !DILocation(line: 753, column: 2, scope: !338)
!5695 = !DILocation(line: 754, column: 8, scope: !338)
!5696 = !DILocation(line: 754, column: 2, scope: !338)
!5697 = !DILocation(line: 755, column: 10, scope: !338)
!5698 = !DILocation(line: 755, column: 17, scope: !338)
!5699 = !DILocation(line: 755, column: 2, scope: !338)
!5700 = !DILocation(line: 756, column: 2, scope: !338)
!5701 = !DILocation(line: 757, column: 1, scope: !338)
!5702 = distinct !DISubprogram(name: "queue_logical_block_size", scope: !156, file: !156, line: 1157, type: !5703, scopeLine: 1158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5707)
!5703 = !DISubroutineType(types: !5704)
!5704 = !{!7, !5705}
!5705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5706, size: 64)
!5706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !411)
!5707 = !{!5708, !5709}
!5708 = !DILocalVariable(name: "q", arg: 1, scope: !5702, file: !156, line: 1157, type: !5705)
!5709 = !DILocalVariable(name: "retval", scope: !5702, file: !156, line: 1159, type: !123)
!5710 = !DILocation(line: 1157, column: 77, scope: !5702)
!5711 = !DILocation(line: 1159, column: 2, scope: !5702)
!5712 = !DILocation(line: 1159, column: 6, scope: !5702)
!5713 = !DILocation(line: 1161, column: 6, scope: !5714)
!5714 = distinct !DILexicalBlock(scope: !5702, file: !156, line: 1161, column: 6)
!5715 = !DILocation(line: 1161, column: 8, scope: !5714)
!5716 = !DILocation(line: 1161, column: 11, scope: !5714)
!5717 = !DILocation(line: 1161, column: 14, scope: !5714)
!5718 = !DILocation(line: 1161, column: 21, scope: !5714)
!5719 = !DILocation(line: 1161, column: 6, scope: !5702)
!5720 = !DILocation(line: 1162, column: 12, scope: !5714)
!5721 = !DILocation(line: 1162, column: 15, scope: !5714)
!5722 = !DILocation(line: 1162, column: 22, scope: !5714)
!5723 = !DILocation(line: 1162, column: 10, scope: !5714)
!5724 = !DILocation(line: 1162, column: 3, scope: !5714)
!5725 = !DILocation(line: 1164, column: 9, scope: !5702)
!5726 = !DILocation(line: 1165, column: 1, scope: !5702)
!5727 = !DILocation(line: 1164, column: 2, scope: !5702)
!5728 = distinct !DISubprogram(name: "find_valid_gpt", scope: !3, file: !3, line: 581, type: !5729, scopeLine: 583, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5733)
!5729 = !DISubroutineType(types: !5730)
!5730 = !{!123, !341, !5731, !5732}
!5731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5516, size: 64)
!5732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5541, size: 64)
!5733 = !{!5734, !5735, !5736, !5737, !5738, !5739, !5740, !5741, !5742, !5743, !5744, !5771, !5772, !5773, !5774, !5775, !5778, !5779}
!5734 = !DILocalVariable(name: "state", arg: 1, scope: !5728, file: !3, line: 581, type: !341)
!5735 = !DILocalVariable(name: "gpt", arg: 2, scope: !5728, file: !3, line: 581, type: !5731)
!5736 = !DILocalVariable(name: "ptes", arg: 3, scope: !5728, file: !3, line: 582, type: !5732)
!5737 = !DILocalVariable(name: "good_pgpt", scope: !5728, file: !3, line: 584, type: !123)
!5738 = !DILocalVariable(name: "good_agpt", scope: !5728, file: !3, line: 584, type: !123)
!5739 = !DILocalVariable(name: "good_pmbr", scope: !5728, file: !3, line: 584, type: !123)
!5740 = !DILocalVariable(name: "pgpt", scope: !5728, file: !3, line: 585, type: !5516)
!5741 = !DILocalVariable(name: "agpt", scope: !5728, file: !3, line: 585, type: !5516)
!5742 = !DILocalVariable(name: "pptes", scope: !5728, file: !3, line: 586, type: !5541)
!5743 = !DILocalVariable(name: "aptes", scope: !5728, file: !3, line: 586, type: !5541)
!5744 = !DILocalVariable(name: "legacymbr", scope: !5728, file: !3, line: 587, type: !5745)
!5745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5746, size: 64)
!5746 = !DIDerivedType(tag: DW_TAG_typedef, name: "legacy_mbr", file: !5518, line: 113, baseType: !5747)
!5747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_legacy_mbr", file: !5518, line: 107, size: 4096, elements: !5748)
!5748 = !{!5749, !5753, !5754, !5755, !5770}
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "boot_code", scope: !5747, file: !5518, line: 108, baseType: !5750, size: 3520)
!5750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 3520, elements: !5751)
!5751 = !{!5752}
!5752 = !DISubrange(count: 440)
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "unique_mbr_signature", scope: !5747, file: !5518, line: 109, baseType: !188, size: 32, offset: 3520)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "unknown", scope: !5747, file: !5518, line: 110, baseType: !203, size: 16, offset: 3552)
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "partition_record", scope: !5747, file: !5518, line: 111, baseType: !5756, size: 512, offset: 3568)
!5756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5757, size: 512, elements: !321)
!5757 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpt_mbr_record", file: !5518, line: 104, baseType: !5758)
!5758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_gpt_mbr_record", file: !5518, line: 93, size: 128, elements: !5759)
!5759 = !{!5760, !5761, !5762, !5763, !5764, !5765, !5766, !5767, !5768, !5769}
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "boot_indicator", scope: !5758, file: !5518, line: 94, baseType: !196, size: 8)
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "start_head", scope: !5758, file: !5518, line: 95, baseType: !196, size: 8, offset: 8)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "start_sector", scope: !5758, file: !5518, line: 96, baseType: !196, size: 8, offset: 16)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "start_track", scope: !5758, file: !5518, line: 97, baseType: !196, size: 8, offset: 24)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "os_type", scope: !5758, file: !5518, line: 98, baseType: !196, size: 8, offset: 32)
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "end_head", scope: !5758, file: !5518, line: 99, baseType: !196, size: 8, offset: 40)
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "end_sector", scope: !5758, file: !5518, line: 100, baseType: !196, size: 8, offset: 48)
!5767 = !DIDerivedType(tag: DW_TAG_member, name: "end_track", scope: !5758, file: !5518, line: 101, baseType: !196, size: 8, offset: 56)
!5768 = !DIDerivedType(tag: DW_TAG_member, name: "starting_lba", scope: !5758, file: !5518, line: 102, baseType: !188, size: 32, offset: 64)
!5769 = !DIDerivedType(tag: DW_TAG_member, name: "size_in_lba", scope: !5758, file: !5518, line: 103, baseType: !188, size: 32, offset: 96)
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !5747, file: !5518, line: 112, baseType: !203, size: 16, offset: 4080)
!5771 = !DILocalVariable(name: "disk", scope: !5728, file: !3, line: 588, type: !345)
!5772 = !DILocalVariable(name: "fops", scope: !5728, file: !3, line: 589, type: !5370)
!5773 = !DILocalVariable(name: "total_sectors", scope: !5728, file: !3, line: 590, type: !406)
!5774 = !DILocalVariable(name: "lastlba", scope: !5728, file: !3, line: 591, type: !208)
!5775 = !DILocalVariable(name: "agpt_sector", scope: !5776, file: !3, line: 625, type: !406)
!5776 = distinct !DILexicalBlock(scope: !5777, file: !3, line: 624, column: 63)
!5777 = distinct !DILexicalBlock(scope: !5728, file: !3, line: 624, column: 6)
!5778 = !DILocalVariable(name: "err", scope: !5776, file: !3, line: 626, type: !123)
!5779 = !DILabel(scope: !5728, name: "fail", file: !3, line: 659)
!5780 = !DILocation(line: 581, column: 53, scope: !5728)
!5781 = !DILocation(line: 581, column: 73, scope: !5728)
!5782 = !DILocation(line: 582, column: 18, scope: !5728)
!5783 = !DILocation(line: 584, column: 2, scope: !5728)
!5784 = !DILocation(line: 584, column: 6, scope: !5728)
!5785 = !DILocation(line: 584, column: 21, scope: !5728)
!5786 = !DILocation(line: 584, column: 36, scope: !5728)
!5787 = !DILocation(line: 585, column: 2, scope: !5728)
!5788 = !DILocation(line: 585, column: 14, scope: !5728)
!5789 = !DILocation(line: 585, column: 28, scope: !5728)
!5790 = !DILocation(line: 586, column: 2, scope: !5728)
!5791 = !DILocation(line: 586, column: 13, scope: !5728)
!5792 = !DILocation(line: 586, column: 28, scope: !5728)
!5793 = !DILocation(line: 587, column: 2, scope: !5728)
!5794 = !DILocation(line: 587, column: 14, scope: !5728)
!5795 = !DILocation(line: 588, column: 2, scope: !5728)
!5796 = !DILocation(line: 588, column: 18, scope: !5728)
!5797 = !DILocation(line: 588, column: 25, scope: !5728)
!5798 = !DILocation(line: 588, column: 32, scope: !5728)
!5799 = !DILocation(line: 589, column: 2, scope: !5728)
!5800 = !DILocation(line: 589, column: 40, scope: !5728)
!5801 = !DILocation(line: 589, column: 47, scope: !5728)
!5802 = !DILocation(line: 589, column: 53, scope: !5728)
!5803 = !DILocation(line: 590, column: 2, scope: !5728)
!5804 = !DILocation(line: 590, column: 11, scope: !5728)
!5805 = !DILocation(line: 590, column: 40, scope: !5728)
!5806 = !DILocation(line: 590, column: 47, scope: !5728)
!5807 = !DILocation(line: 590, column: 27, scope: !5728)
!5808 = !DILocation(line: 591, column: 2, scope: !5728)
!5809 = !DILocation(line: 591, column: 6, scope: !5728)
!5810 = !DILocation(line: 593, column: 7, scope: !5811)
!5811 = distinct !DILexicalBlock(scope: !5728, file: !3, line: 593, column: 6)
!5812 = !DILocation(line: 593, column: 6, scope: !5728)
!5813 = !DILocation(line: 594, column: 3, scope: !5811)
!5814 = !DILocation(line: 596, column: 21, scope: !5728)
!5815 = !DILocation(line: 596, column: 28, scope: !5728)
!5816 = !DILocation(line: 596, column: 12, scope: !5728)
!5817 = !DILocation(line: 596, column: 10, scope: !5728)
!5818 = !DILocation(line: 597, column: 14, scope: !5819)
!5819 = distinct !DILexicalBlock(scope: !5728, file: !3, line: 597, column: 13)
!5820 = !DILocation(line: 597, column: 13, scope: !5728)
!5821 = !DILocation(line: 599, column: 15, scope: !5822)
!5822 = distinct !DILexicalBlock(scope: !5819, file: !3, line: 597, column: 25)
!5823 = !DILocation(line: 599, column: 13, scope: !5822)
!5824 = !DILocation(line: 600, column: 8, scope: !5825)
!5825 = distinct !DILexicalBlock(scope: !5822, file: !3, line: 600, column: 7)
!5826 = !DILocation(line: 600, column: 7, scope: !5822)
!5827 = !DILocation(line: 601, column: 4, scope: !5825)
!5828 = !DILocation(line: 603, column: 12, scope: !5822)
!5829 = !DILocation(line: 603, column: 28, scope: !5822)
!5830 = !DILocation(line: 603, column: 3, scope: !5822)
!5831 = !DILocation(line: 604, column: 29, scope: !5822)
!5832 = !DILocation(line: 604, column: 40, scope: !5822)
!5833 = !DILocation(line: 604, column: 15, scope: !5822)
!5834 = !DILocation(line: 604, column: 13, scope: !5822)
!5835 = !DILocation(line: 605, column: 9, scope: !5822)
!5836 = !DILocation(line: 605, column: 3, scope: !5822)
!5837 = !DILocation(line: 607, column: 8, scope: !5838)
!5838 = distinct !DILexicalBlock(scope: !5822, file: !3, line: 607, column: 7)
!5839 = !DILocation(line: 607, column: 7, scope: !5822)
!5840 = !DILocation(line: 608, column: 4, scope: !5838)
!5841 = !DILocation(line: 610, column: 3, scope: !5842)
!5842 = distinct !DILexicalBlock(scope: !5843, file: !3, line: 610, column: 3)
!5843 = distinct !DILexicalBlock(scope: !5822, file: !3, line: 610, column: 3)
!5844 = !DILocation(line: 610, column: 3, scope: !5843)
!5845 = !DILocation(line: 613, column: 2, scope: !5822)
!5846 = !DILocation(line: 615, column: 27, scope: !5728)
!5847 = !DILocation(line: 615, column: 14, scope: !5728)
!5848 = !DILocation(line: 615, column: 12, scope: !5728)
!5849 = !DILocation(line: 617, column: 13, scope: !5850)
!5850 = distinct !DILexicalBlock(scope: !5728, file: !3, line: 617, column: 13)
!5851 = !DILocation(line: 617, column: 13, scope: !5728)
!5852 = !DILocation(line: 618, column: 28, scope: !5850)
!5853 = !DILocation(line: 619, column: 7, scope: !5850)
!5854 = !DILocation(line: 618, column: 15, scope: !5850)
!5855 = !DILocation(line: 618, column: 13, scope: !5850)
!5856 = !DILocation(line: 618, column: 3, scope: !5850)
!5857 = !DILocation(line: 621, column: 14, scope: !5858)
!5858 = distinct !DILexicalBlock(scope: !5728, file: !3, line: 621, column: 13)
!5859 = !DILocation(line: 621, column: 24, scope: !5858)
!5860 = !DILocation(line: 621, column: 27, scope: !5858)
!5861 = !DILocation(line: 621, column: 13, scope: !5728)
!5862 = !DILocation(line: 622, column: 42, scope: !5858)
!5863 = !DILocation(line: 622, column: 49, scope: !5858)
!5864 = !DILocation(line: 622, column: 29, scope: !5858)
!5865 = !DILocation(line: 622, column: 27, scope: !5858)
!5866 = !DILocation(line: 622, column: 17, scope: !5858)
!5867 = !DILocation(line: 624, column: 7, scope: !5777)
!5868 = !DILocation(line: 624, column: 17, scope: !5777)
!5869 = !DILocation(line: 624, column: 20, scope: !5777)
!5870 = !DILocation(line: 624, column: 30, scope: !5777)
!5871 = !DILocation(line: 624, column: 33, scope: !5777)
!5872 = !DILocation(line: 624, column: 39, scope: !5777)
!5873 = !DILocation(line: 624, column: 6, scope: !5728)
!5874 = !DILocation(line: 625, column: 3, scope: !5776)
!5875 = !DILocation(line: 625, column: 12, scope: !5776)
!5876 = !DILocation(line: 626, column: 3, scope: !5776)
!5877 = !DILocation(line: 626, column: 7, scope: !5776)
!5878 = !DILocation(line: 628, column: 9, scope: !5776)
!5879 = !DILocation(line: 628, column: 15, scope: !5776)
!5880 = !DILocation(line: 628, column: 38, scope: !5776)
!5881 = !DILocation(line: 628, column: 7, scope: !5776)
!5882 = !DILocation(line: 629, column: 8, scope: !5883)
!5883 = distinct !DILexicalBlock(scope: !5776, file: !3, line: 629, column: 7)
!5884 = !DILocation(line: 629, column: 7, scope: !5776)
!5885 = !DILocation(line: 630, column: 29, scope: !5883)
!5886 = !DILocation(line: 630, column: 36, scope: !5883)
!5887 = !DILocation(line: 630, column: 16, scope: !5883)
!5888 = !DILocation(line: 630, column: 14, scope: !5883)
!5889 = !DILocation(line: 630, column: 4, scope: !5883)
!5890 = !DILocation(line: 632, column: 2, scope: !5777)
!5891 = !DILocation(line: 632, column: 2, scope: !5776)
!5892 = !DILocation(line: 635, column: 14, scope: !5893)
!5893 = distinct !DILexicalBlock(scope: !5728, file: !3, line: 635, column: 13)
!5894 = !DILocation(line: 635, column: 24, scope: !5893)
!5895 = !DILocation(line: 635, column: 28, scope: !5893)
!5896 = !DILocation(line: 635, column: 13, scope: !5728)
!5897 = !DILocation(line: 636, column: 17, scope: !5893)
!5898 = !DILocation(line: 638, column: 22, scope: !5728)
!5899 = !DILocation(line: 638, column: 28, scope: !5728)
!5900 = !DILocation(line: 638, column: 34, scope: !5728)
!5901 = !DILocation(line: 638, column: 9, scope: !5728)
!5902 = !DILocation(line: 641, column: 13, scope: !5903)
!5903 = distinct !DILexicalBlock(scope: !5728, file: !3, line: 641, column: 13)
!5904 = !DILocation(line: 641, column: 13, scope: !5728)
!5905 = !DILocation(line: 642, column: 25, scope: !5906)
!5906 = distinct !DILexicalBlock(scope: !5903, file: !3, line: 641, column: 24)
!5907 = !DILocation(line: 642, column: 18, scope: !5906)
!5908 = !DILocation(line: 642, column: 23, scope: !5906)
!5909 = !DILocation(line: 643, column: 25, scope: !5906)
!5910 = !DILocation(line: 643, column: 18, scope: !5906)
!5911 = !DILocation(line: 643, column: 23, scope: !5906)
!5912 = !DILocation(line: 644, column: 23, scope: !5906)
!5913 = !DILocation(line: 644, column: 17, scope: !5906)
!5914 = !DILocation(line: 645, column: 23, scope: !5906)
!5915 = !DILocation(line: 645, column: 17, scope: !5906)
!5916 = !DILocation(line: 646, column: 8, scope: !5917)
!5917 = distinct !DILexicalBlock(scope: !5906, file: !3, line: 646, column: 7)
!5918 = !DILocation(line: 646, column: 7, scope: !5906)
!5919 = !DILocation(line: 647, column: 25, scope: !5920)
!5920 = distinct !DILexicalBlock(scope: !5917, file: !3, line: 647, column: 25)
!5921 = !DILocation(line: 647, column: 25, scope: !5922)
!5922 = distinct !DILexicalBlock(scope: !5920, file: !3, line: 647, column: 25)
!5923 = !DILocation(line: 647, column: 25, scope: !5917)
!5924 = !DILocation(line: 648, column: 17, scope: !5906)
!5925 = !DILocation(line: 650, column: 18, scope: !5926)
!5926 = distinct !DILexicalBlock(scope: !5903, file: !3, line: 650, column: 18)
!5927 = !DILocation(line: 650, column: 18, scope: !5903)
!5928 = !DILocation(line: 651, column: 25, scope: !5929)
!5929 = distinct !DILexicalBlock(scope: !5926, file: !3, line: 650, column: 29)
!5930 = !DILocation(line: 651, column: 18, scope: !5929)
!5931 = !DILocation(line: 651, column: 23, scope: !5929)
!5932 = !DILocation(line: 652, column: 25, scope: !5929)
!5933 = !DILocation(line: 652, column: 18, scope: !5929)
!5934 = !DILocation(line: 652, column: 23, scope: !5929)
!5935 = !DILocation(line: 653, column: 23, scope: !5929)
!5936 = !DILocation(line: 653, column: 17, scope: !5929)
!5937 = !DILocation(line: 654, column: 23, scope: !5929)
!5938 = !DILocation(line: 654, column: 17, scope: !5929)
!5939 = !DILocation(line: 655, column: 3, scope: !5940)
!5940 = distinct !DILexicalBlock(scope: !5929, file: !3, line: 655, column: 3)
!5941 = !DILocation(line: 655, column: 3, scope: !5942)
!5942 = distinct !DILexicalBlock(scope: !5940, file: !3, line: 655, column: 3)
!5943 = !DILocation(line: 656, column: 17, scope: !5929)
!5944 = !DILocation(line: 659, column: 2, scope: !5728)
!5945 = !DILocation(line: 660, column: 15, scope: !5728)
!5946 = !DILocation(line: 660, column: 9, scope: !5728)
!5947 = !DILocation(line: 661, column: 15, scope: !5728)
!5948 = !DILocation(line: 661, column: 9, scope: !5728)
!5949 = !DILocation(line: 662, column: 15, scope: !5728)
!5950 = !DILocation(line: 662, column: 9, scope: !5728)
!5951 = !DILocation(line: 663, column: 15, scope: !5728)
!5952 = !DILocation(line: 663, column: 9, scope: !5728)
!5953 = !DILocation(line: 664, column: 10, scope: !5728)
!5954 = !DILocation(line: 664, column: 14, scope: !5728)
!5955 = !DILocation(line: 665, column: 10, scope: !5728)
!5956 = !DILocation(line: 665, column: 15, scope: !5728)
!5957 = !DILocation(line: 666, column: 9, scope: !5728)
!5958 = !DILocation(line: 667, column: 1, scope: !5728)
!5959 = !DISubprogram(name: "kfree", scope: !176, file: !176, line: 227, type: !5960, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5960 = !DISubroutineType(types: !5961)
!5961 = !{null, !1985}
!5962 = distinct !DISubprogram(name: "is_pte_valid", scope: !3, file: !3, line: 461, type: !5963, scopeLine: 462, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5968)
!5963 = !DISubroutineType(types: !5964)
!5964 = !{!123, !5965, !5967}
!5965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5966, size: 64)
!5966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5542)
!5967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !208)
!5968 = !{!5969, !5970}
!5969 = !DILocalVariable(name: "pte", arg: 1, scope: !5962, file: !3, line: 461, type: !5965)
!5970 = !DILocalVariable(name: "lastlba", arg: 2, scope: !5962, file: !3, line: 461, type: !5967)
!5971 = !DILocation(line: 461, column: 31, scope: !5962)
!5972 = !DILocation(line: 461, column: 46, scope: !5962)
!5973 = !DILocation(line: 463, column: 20, scope: !5974)
!5974 = distinct !DILexicalBlock(scope: !5962, file: !3, line: 463, column: 6)
!5975 = !DILocation(line: 463, column: 25, scope: !5974)
!5976 = !DILocation(line: 463, column: 46, scope: !5974)
!5977 = !DILocation(line: 463, column: 8, scope: !5974)
!5978 = !DILocation(line: 463, column: 58, scope: !5974)
!5979 = !DILocation(line: 464, column: 6, scope: !5974)
!5980 = !DILocation(line: 464, column: 39, scope: !5974)
!5981 = !DILocation(line: 464, column: 37, scope: !5974)
!5982 = !DILocation(line: 464, column: 55, scope: !5974)
!5983 = !DILocation(line: 465, column: 6, scope: !5974)
!5984 = !DILocation(line: 465, column: 39, scope: !5974)
!5985 = !DILocation(line: 465, column: 37, scope: !5974)
!5986 = !DILocation(line: 463, column: 6, scope: !5962)
!5987 = !DILocation(line: 466, column: 3, scope: !5974)
!5988 = !DILocation(line: 467, column: 2, scope: !5962)
!5989 = !DILocation(line: 468, column: 1, scope: !5962)
!5990 = distinct !DISubprogram(name: "last_lba", scope: !3, file: !3, line: 134, type: !5991, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5993)
!5991 = !DISubroutineType(types: !5992)
!5992 = !{!208, !345}
!5993 = !{!5994}
!5994 = !DILocalVariable(name: "disk", arg: 1, scope: !5990, file: !3, line: 134, type: !345)
!5995 = !DILocation(line: 134, column: 37, scope: !5990)
!5996 = !DILocation(line: 136, column: 31, scope: !5990)
!5997 = !DILocation(line: 136, column: 37, scope: !5990)
!5998 = !DILocation(line: 136, column: 17, scope: !5990)
!5999 = !DILocation(line: 137, column: 35, scope: !5990)
!6000 = !DILocation(line: 137, column: 41, scope: !5990)
!6001 = !DILocation(line: 137, column: 10, scope: !5990)
!6002 = !DILocation(line: 136, column: 9, scope: !5990)
!6003 = !DILocation(line: 137, column: 49, scope: !5990)
!6004 = !DILocation(line: 136, column: 2, scope: !5990)
!6005 = distinct !DISubprogram(name: "put_partition", scope: !310, file: !310, line: 37, type: !6006, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6008)
!6006 = !DISubroutineType(types: !6007)
!6007 = !{null, !341, !123, !406, !406}
!6008 = !{!6009, !6010, !6011, !6012, !6013}
!6009 = !DILocalVariable(name: "p", arg: 1, scope: !6005, file: !310, line: 37, type: !341)
!6010 = !DILocalVariable(name: "n", arg: 2, scope: !6005, file: !310, line: 37, type: !123)
!6011 = !DILocalVariable(name: "from", arg: 3, scope: !6005, file: !310, line: 37, type: !406)
!6012 = !DILocalVariable(name: "size", arg: 4, scope: !6005, file: !310, line: 37, type: !406)
!6013 = !DILocalVariable(name: "tmp", scope: !6014, file: !310, line: 40, type: !6016)
!6014 = distinct !DILexicalBlock(scope: !6015, file: !310, line: 39, column: 20)
!6015 = distinct !DILexicalBlock(scope: !6005, file: !310, line: 39, column: 6)
!6016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 352, elements: !6017)
!6017 = !{!6018}
!6018 = !DISubrange(count: 44)
!6019 = !DILocation(line: 37, column: 41, scope: !6005)
!6020 = !DILocation(line: 37, column: 48, scope: !6005)
!6021 = !DILocation(line: 37, column: 60, scope: !6005)
!6022 = !DILocation(line: 37, column: 75, scope: !6005)
!6023 = !DILocation(line: 39, column: 6, scope: !6015)
!6024 = !DILocation(line: 39, column: 10, scope: !6015)
!6025 = !DILocation(line: 39, column: 13, scope: !6015)
!6026 = !DILocation(line: 39, column: 8, scope: !6015)
!6027 = !DILocation(line: 39, column: 6, scope: !6005)
!6028 = !DILocation(line: 40, column: 3, scope: !6014)
!6029 = !DILocation(line: 40, column: 8, scope: !6014)
!6030 = !DILocation(line: 42, column: 22, scope: !6014)
!6031 = !DILocation(line: 42, column: 3, scope: !6014)
!6032 = !DILocation(line: 42, column: 6, scope: !6014)
!6033 = !DILocation(line: 42, column: 12, scope: !6014)
!6034 = !DILocation(line: 42, column: 15, scope: !6014)
!6035 = !DILocation(line: 42, column: 20, scope: !6014)
!6036 = !DILocation(line: 43, column: 22, scope: !6014)
!6037 = !DILocation(line: 43, column: 3, scope: !6014)
!6038 = !DILocation(line: 43, column: 6, scope: !6014)
!6039 = !DILocation(line: 43, column: 12, scope: !6014)
!6040 = !DILocation(line: 43, column: 15, scope: !6014)
!6041 = !DILocation(line: 43, column: 20, scope: !6014)
!6042 = !DILocation(line: 44, column: 12, scope: !6014)
!6043 = !DILocation(line: 44, column: 39, scope: !6014)
!6044 = !DILocation(line: 44, column: 42, scope: !6014)
!6045 = !DILocation(line: 44, column: 48, scope: !6014)
!6046 = !DILocation(line: 44, column: 3, scope: !6014)
!6047 = !DILocation(line: 45, column: 11, scope: !6014)
!6048 = !DILocation(line: 45, column: 14, scope: !6014)
!6049 = !DILocation(line: 45, column: 22, scope: !6014)
!6050 = !DILocation(line: 45, column: 3, scope: !6014)
!6051 = !DILocation(line: 46, column: 2, scope: !6015)
!6052 = !DILocation(line: 46, column: 2, scope: !6014)
!6053 = !DILocation(line: 47, column: 1, scope: !6005)
!6054 = distinct !DISubprogram(name: "efi_guidcmp", scope: !316, file: !316, line: 699, type: !6055, scopeLine: 700, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6057)
!6055 = !DISubroutineType(types: !6056)
!6056 = !{!123, !5531, !5531}
!6057 = !{!6058, !6059}
!6058 = !DILocalVariable(name: "left", arg: 1, scope: !6054, file: !316, line: 699, type: !5531)
!6059 = !DILocalVariable(name: "right", arg: 2, scope: !6054, file: !316, line: 699, type: !5531)
!6060 = !DILocation(line: 699, column: 25, scope: !6054)
!6061 = !DILocation(line: 699, column: 42, scope: !6054)
!6062 = !DILocation(line: 701, column: 9, scope: !6054)
!6063 = !DILocation(line: 701, column: 2, scope: !6054)
!6064 = distinct !DISubprogram(name: "efi_guid_to_str", scope: !316, file: !316, line: 705, type: !6065, scopeLine: 706, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6068)
!6065 = !DISubroutineType(types: !6066)
!6066 = !{!230, !6067, !230}
!6067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5531, size: 64)
!6068 = !{!6069, !6070}
!6069 = !DILocalVariable(name: "guid", arg: 1, scope: !6064, file: !316, line: 705, type: !6067)
!6070 = !DILocalVariable(name: "out", arg: 2, scope: !6064, file: !316, line: 705, type: !230)
!6071 = !DILocation(line: 705, column: 29, scope: !6064)
!6072 = !DILocation(line: 705, column: 41, scope: !6064)
!6073 = !DILocation(line: 707, column: 10, scope: !6064)
!6074 = !DILocation(line: 707, column: 23, scope: !6064)
!6075 = !DILocation(line: 707, column: 29, scope: !6064)
!6076 = !DILocation(line: 707, column: 2, scope: !6064)
!6077 = !DILocation(line: 708, column: 16, scope: !6064)
!6078 = !DILocation(line: 708, column: 9, scope: !6064)
!6079 = distinct !DISubprogram(name: "utf16_le_to_7bit", scope: !3, file: !3, line: 678, type: !6080, scopeLine: 679, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6084)
!6080 = !DISubroutineType(types: !6081)
!6081 = !{null, !6082, !7, !195}
!6082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6083, size: 64)
!6083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!6084 = !{!6085, !6086, !6087, !6088, !6089}
!6085 = !DILocalVariable(name: "in", arg: 1, scope: !6079, file: !3, line: 678, type: !6082)
!6086 = !DILocalVariable(name: "size", arg: 2, scope: !6079, file: !3, line: 678, type: !7)
!6087 = !DILocalVariable(name: "out", arg: 3, scope: !6079, file: !3, line: 678, type: !195)
!6088 = !DILocalVariable(name: "i", scope: !6079, file: !3, line: 680, type: !7)
!6089 = !DILocalVariable(name: "c", scope: !6090, file: !3, line: 685, type: !196)
!6090 = distinct !DILexicalBlock(scope: !6079, file: !3, line: 684, column: 19)
!6091 = !DILocation(line: 678, column: 44, scope: !6079)
!6092 = !DILocation(line: 678, column: 61, scope: !6079)
!6093 = !DILocation(line: 678, column: 71, scope: !6079)
!6094 = !DILocation(line: 680, column: 2, scope: !6079)
!6095 = !DILocation(line: 680, column: 15, scope: !6079)
!6096 = !DILocation(line: 682, column: 2, scope: !6079)
!6097 = !DILocation(line: 682, column: 6, scope: !6079)
!6098 = !DILocation(line: 682, column: 12, scope: !6079)
!6099 = !DILocation(line: 684, column: 2, scope: !6079)
!6100 = !DILocation(line: 684, column: 9, scope: !6079)
!6101 = !DILocation(line: 684, column: 13, scope: !6079)
!6102 = !DILocation(line: 684, column: 11, scope: !6079)
!6103 = !DILocation(line: 685, column: 3, scope: !6090)
!6104 = !DILocation(line: 685, column: 6, scope: !6090)
!6105 = !DILocation(line: 685, column: 10, scope: !6090)
!6106 = !DILocation(line: 685, column: 29, scope: !6090)
!6107 = !DILocation(line: 687, column: 7, scope: !6108)
!6108 = distinct !DILexicalBlock(scope: !6090, file: !3, line: 687, column: 7)
!6109 = !DILocation(line: 687, column: 9, scope: !6108)
!6110 = !DILocation(line: 687, column: 13, scope: !6108)
!6111 = !DILocation(line: 687, column: 7, scope: !6090)
!6112 = !DILocation(line: 688, column: 6, scope: !6108)
!6113 = !DILocation(line: 688, column: 4, scope: !6108)
!6114 = !DILocation(line: 689, column: 12, scope: !6090)
!6115 = !DILocation(line: 689, column: 3, scope: !6090)
!6116 = !DILocation(line: 689, column: 7, scope: !6090)
!6117 = !DILocation(line: 689, column: 10, scope: !6090)
!6118 = !DILocation(line: 690, column: 4, scope: !6090)
!6119 = !DILocation(line: 691, column: 2, scope: !6079)
!6120 = distinct !{!6120, !6099, !6119, !5691, !5692}
!6121 = !DILocation(line: 692, column: 1, scope: !6079)
!6122 = !DISubprogram(name: "strlcat", scope: !6123, file: !6123, line: 85, type: !6124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6123 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!6124 = !DISubroutineType(types: !6125)
!6125 = !{!209, !230, !223, !210}
!6126 = distinct !DISubprogram(name: "get_capacity", scope: !156, file: !156, line: 788, type: !6127, scopeLine: 789, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6129)
!6127 = !DISubroutineType(types: !6128)
!6128 = !{!406, !345}
!6129 = !{!6130}
!6130 = !DILocalVariable(name: "disk", arg: 1, scope: !6126, file: !156, line: 788, type: !345)
!6131 = !DILocation(line: 788, column: 53, scope: !6126)
!6132 = !DILocation(line: 790, column: 25, scope: !6126)
!6133 = !DILocation(line: 790, column: 31, scope: !6126)
!6134 = !DILocation(line: 790, column: 9, scope: !6126)
!6135 = !DILocation(line: 790, column: 2, scope: !6126)
!6136 = distinct !DISubprogram(name: "kzalloc", scope: !176, file: !176, line: 719, type: !6137, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6139)
!6137 = !DISubroutineType(types: !6138)
!6138 = !{!399, !209, !193}
!6139 = !{!6140, !6141}
!6140 = !DILocalVariable(name: "size", arg: 1, scope: !6136, file: !176, line: 719, type: !209)
!6141 = !DILocalVariable(name: "flags", arg: 2, scope: !6136, file: !176, line: 719, type: !193)
!6142 = !DILocation(line: 719, column: 52, scope: !6136)
!6143 = !DILocation(line: 719, column: 64, scope: !6136)
!6144 = !DILocation(line: 721, column: 17, scope: !6136)
!6145 = !DILocation(line: 721, column: 23, scope: !6136)
!6146 = !DILocation(line: 721, column: 29, scope: !6136)
!6147 = !DILocation(line: 721, column: 9, scope: !6136)
!6148 = !DILocation(line: 721, column: 2, scope: !6136)
!6149 = distinct !DISubprogram(name: "read_lba", scope: !3, file: !3, line: 235, type: !6150, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6152)
!6150 = !DISubroutineType(types: !6151)
!6151 = !{!209, !341, !208, !195, !209}
!6152 = !{!6153, !6154, !6155, !6156, !6157, !6158, !6159, !6161, !6166}
!6153 = !DILocalVariable(name: "state", arg: 1, scope: !6149, file: !3, line: 235, type: !341)
!6154 = !DILocalVariable(name: "lba", arg: 2, scope: !6149, file: !3, line: 236, type: !208)
!6155 = !DILocalVariable(name: "buffer", arg: 3, scope: !6149, file: !3, line: 236, type: !195)
!6156 = !DILocalVariable(name: "count", arg: 4, scope: !6149, file: !3, line: 236, type: !209)
!6157 = !DILocalVariable(name: "totalreadcount", scope: !6149, file: !3, line: 238, type: !209)
!6158 = !DILocalVariable(name: "n", scope: !6149, file: !3, line: 239, type: !406)
!6159 = !DILocalVariable(name: "copied", scope: !6160, file: !3, line: 246, type: !123)
!6160 = distinct !DILexicalBlock(scope: !6149, file: !3, line: 245, column: 16)
!6161 = !DILocalVariable(name: "sect", scope: !6160, file: !3, line: 247, type: !6162)
!6162 = !DIDerivedType(tag: DW_TAG_typedef, name: "Sector", file: !310, line: 28, baseType: !6163)
!6163 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !310, line: 26, size: 64, elements: !6164)
!6164 = !{!6165}
!6165 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !6163, file: !310, line: 27, baseType: !1714, size: 64)
!6166 = !DILocalVariable(name: "data", scope: !6160, file: !3, line: 248, type: !6167)
!6167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!6168 = !DILocation(line: 235, column: 50, scope: !6149)
!6169 = !DILocation(line: 236, column: 14, scope: !6149)
!6170 = !DILocation(line: 236, column: 23, scope: !6149)
!6171 = !DILocation(line: 236, column: 38, scope: !6149)
!6172 = !DILocation(line: 238, column: 2, scope: !6149)
!6173 = !DILocation(line: 238, column: 9, scope: !6149)
!6174 = !DILocation(line: 239, column: 2, scope: !6149)
!6175 = !DILocation(line: 239, column: 11, scope: !6149)
!6176 = !DILocation(line: 239, column: 15, scope: !6149)
!6177 = !DILocation(line: 240, column: 29, scope: !6149)
!6178 = !DILocation(line: 240, column: 36, scope: !6149)
!6179 = !DILocation(line: 240, column: 42, scope: !6149)
!6180 = !DILocation(line: 240, column: 4, scope: !6149)
!6181 = !DILocation(line: 240, column: 49, scope: !6149)
!6182 = !DILocation(line: 240, column: 3, scope: !6149)
!6183 = !DILocation(line: 239, column: 19, scope: !6149)
!6184 = !DILocation(line: 242, column: 7, scope: !6185)
!6185 = distinct !DILexicalBlock(scope: !6149, file: !3, line: 242, column: 6)
!6186 = !DILocation(line: 242, column: 14, scope: !6185)
!6187 = !DILocation(line: 242, column: 17, scope: !6185)
!6188 = !DILocation(line: 242, column: 32, scope: !6185)
!6189 = !DILocation(line: 242, column: 39, scope: !6185)
!6190 = !DILocation(line: 242, column: 23, scope: !6185)
!6191 = !DILocation(line: 242, column: 21, scope: !6185)
!6192 = !DILocation(line: 242, column: 6, scope: !6149)
!6193 = !DILocation(line: 243, column: 17, scope: !6185)
!6194 = !DILocation(line: 245, column: 2, scope: !6149)
!6195 = !DILocation(line: 245, column: 9, scope: !6149)
!6196 = !DILocation(line: 246, column: 3, scope: !6160)
!6197 = !DILocation(line: 246, column: 7, scope: !6160)
!6198 = !DILocation(line: 247, column: 3, scope: !6160)
!6199 = !DILocation(line: 247, column: 10, scope: !6160)
!6200 = !DILocation(line: 248, column: 3, scope: !6160)
!6201 = !DILocation(line: 248, column: 18, scope: !6160)
!6202 = !DILocation(line: 248, column: 42, scope: !6160)
!6203 = !DILocation(line: 248, column: 50, scope: !6160)
!6204 = !DILocation(line: 248, column: 25, scope: !6160)
!6205 = !DILocation(line: 249, column: 8, scope: !6206)
!6206 = distinct !DILexicalBlock(scope: !6160, file: !3, line: 249, column: 7)
!6207 = !DILocation(line: 249, column: 7, scope: !6160)
!6208 = !DILocation(line: 250, column: 4, scope: !6206)
!6209 = !DILocation(line: 251, column: 7, scope: !6210)
!6210 = distinct !DILexicalBlock(scope: !6160, file: !3, line: 251, column: 7)
!6211 = !DILocation(line: 251, column: 16, scope: !6210)
!6212 = !DILocation(line: 251, column: 14, scope: !6210)
!6213 = !DILocation(line: 251, column: 7, scope: !6160)
!6214 = !DILocation(line: 252, column: 13, scope: !6210)
!6215 = !DILocation(line: 252, column: 11, scope: !6210)
!6216 = !DILocation(line: 252, column: 4, scope: !6210)
!6217 = !DILocation(line: 253, column: 10, scope: !6160)
!6218 = !DILocation(line: 253, column: 18, scope: !6160)
!6219 = !DILocation(line: 253, column: 24, scope: !6160)
!6220 = !DILocation(line: 253, column: 3, scope: !6160)
!6221 = !DILocation(line: 254, column: 3, scope: !6160)
!6222 = !DILocation(line: 255, column: 13, scope: !6160)
!6223 = !DILocation(line: 255, column: 10, scope: !6160)
!6224 = !DILocation(line: 256, column: 20, scope: !6160)
!6225 = !DILocation(line: 256, column: 18, scope: !6160)
!6226 = !DILocation(line: 257, column: 12, scope: !6160)
!6227 = !DILocation(line: 257, column: 9, scope: !6160)
!6228 = !DILocation(line: 258, column: 2, scope: !6149)
!6229 = distinct !{!6229, !6194, !6228, !5691, !5692}
!6230 = !DILocation(line: 259, column: 9, scope: !6149)
!6231 = !DILocation(line: 259, column: 2, scope: !6149)
!6232 = !DILocation(line: 260, column: 1, scope: !6149)
!6233 = distinct !DISubprogram(name: "is_pmbr_valid", scope: !3, file: !3, line: 172, type: !6234, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6236)
!6234 = !DISubroutineType(types: !6235)
!6235 = !{!123, !5745, !406}
!6236 = !{!6237, !6238, !6239, !6240, !6241, !6242, !6243, !6244}
!6237 = !DILocalVariable(name: "mbr", arg: 1, scope: !6233, file: !3, line: 172, type: !5745)
!6238 = !DILocalVariable(name: "total_sectors", arg: 2, scope: !6233, file: !3, line: 172, type: !406)
!6239 = !DILocalVariable(name: "sz", scope: !6233, file: !3, line: 174, type: !204)
!6240 = !DILocalVariable(name: "i", scope: !6233, file: !3, line: 175, type: !123)
!6241 = !DILocalVariable(name: "part", scope: !6233, file: !3, line: 175, type: !123)
!6242 = !DILocalVariable(name: "ret", scope: !6233, file: !3, line: 175, type: !123)
!6243 = !DILabel(scope: !6233, name: "check_hybrid", file: !3, line: 195)
!6244 = !DILabel(scope: !6233, name: "done", file: !3, line: 221)
!6245 = !DILocation(line: 172, column: 38, scope: !6233)
!6246 = !DILocation(line: 172, column: 52, scope: !6233)
!6247 = !DILocation(line: 174, column: 2, scope: !6233)
!6248 = !DILocation(line: 174, column: 11, scope: !6233)
!6249 = !DILocation(line: 175, column: 2, scope: !6233)
!6250 = !DILocation(line: 175, column: 6, scope: !6233)
!6251 = !DILocation(line: 175, column: 9, scope: !6233)
!6252 = !DILocation(line: 175, column: 19, scope: !6233)
!6253 = !DILocation(line: 177, column: 7, scope: !6254)
!6254 = distinct !DILexicalBlock(scope: !6233, file: !3, line: 177, column: 6)
!6255 = !DILocation(line: 177, column: 11, scope: !6254)
!6256 = !DILocation(line: 177, column: 14, scope: !6254)
!6257 = !DILocation(line: 177, column: 42, scope: !6254)
!6258 = !DILocation(line: 177, column: 6, scope: !6233)
!6259 = !DILocation(line: 178, column: 3, scope: !6254)
!6260 = !DILocation(line: 180, column: 9, scope: !6261)
!6261 = distinct !DILexicalBlock(scope: !6233, file: !3, line: 180, column: 2)
!6262 = !DILocation(line: 180, column: 7, scope: !6261)
!6263 = !DILocation(line: 180, column: 14, scope: !6264)
!6264 = distinct !DILexicalBlock(scope: !6261, file: !3, line: 180, column: 2)
!6265 = !DILocation(line: 180, column: 16, scope: !6264)
!6266 = !DILocation(line: 180, column: 2, scope: !6261)
!6267 = !DILocation(line: 181, column: 26, scope: !6268)
!6268 = distinct !DILexicalBlock(scope: !6264, file: !3, line: 180, column: 26)
!6269 = !DILocation(line: 181, column: 31, scope: !6268)
!6270 = !DILocation(line: 181, column: 48, scope: !6268)
!6271 = !DILocation(line: 181, column: 9, scope: !6268)
!6272 = !DILocation(line: 181, column: 7, scope: !6268)
!6273 = !DILocation(line: 182, column: 7, scope: !6274)
!6274 = distinct !DILexicalBlock(scope: !6268, file: !3, line: 182, column: 7)
!6275 = !DILocation(line: 182, column: 11, scope: !6274)
!6276 = !DILocation(line: 182, column: 7, scope: !6268)
!6277 = !DILocation(line: 183, column: 11, scope: !6278)
!6278 = distinct !DILexicalBlock(scope: !6274, file: !3, line: 182, column: 34)
!6279 = !DILocation(line: 183, column: 9, scope: !6278)
!6280 = !DILocation(line: 189, column: 4, scope: !6278)
!6281 = !DILocation(line: 191, column: 2, scope: !6268)
!6282 = !DILocation(line: 180, column: 22, scope: !6264)
!6283 = !DILocation(line: 180, column: 2, scope: !6264)
!6284 = distinct !{!6284, !6266, !6285, !5691, !5692}
!6285 = !DILocation(line: 191, column: 2, scope: !6261)
!6286 = !DILocation(line: 193, column: 6, scope: !6287)
!6287 = distinct !DILexicalBlock(scope: !6233, file: !3, line: 193, column: 6)
!6288 = !DILocation(line: 193, column: 10, scope: !6287)
!6289 = !DILocation(line: 193, column: 6, scope: !6233)
!6290 = !DILocation(line: 194, column: 3, scope: !6287)
!6291 = !DILocation(line: 193, column: 13, scope: !6287)
!6292 = !DILocation(line: 195, column: 1, scope: !6233)
!6293 = !DILocation(line: 196, column: 9, scope: !6294)
!6294 = distinct !DILexicalBlock(scope: !6233, file: !3, line: 196, column: 2)
!6295 = !DILocation(line: 196, column: 7, scope: !6294)
!6296 = !DILocation(line: 196, column: 14, scope: !6297)
!6297 = distinct !DILexicalBlock(scope: !6294, file: !3, line: 196, column: 2)
!6298 = !DILocation(line: 196, column: 16, scope: !6297)
!6299 = !DILocation(line: 196, column: 2, scope: !6294)
!6300 = !DILocation(line: 197, column: 8, scope: !6301)
!6301 = distinct !DILexicalBlock(scope: !6297, file: !3, line: 197, column: 7)
!6302 = !DILocation(line: 197, column: 13, scope: !6301)
!6303 = !DILocation(line: 197, column: 30, scope: !6301)
!6304 = !DILocation(line: 197, column: 33, scope: !6301)
!6305 = !DILocation(line: 197, column: 41, scope: !6301)
!6306 = !DILocation(line: 198, column: 29, scope: !6301)
!6307 = !DILocation(line: 199, column: 8, scope: !6301)
!6308 = !DILocation(line: 199, column: 13, scope: !6301)
!6309 = !DILocation(line: 199, column: 30, scope: !6301)
!6310 = !DILocation(line: 199, column: 33, scope: !6301)
!6311 = !DILocation(line: 199, column: 41, scope: !6301)
!6312 = !DILocation(line: 197, column: 7, scope: !6297)
!6313 = !DILocation(line: 200, column: 8, scope: !6301)
!6314 = !DILocation(line: 200, column: 4, scope: !6301)
!6315 = !DILocation(line: 199, column: 48, scope: !6301)
!6316 = !DILocation(line: 196, column: 22, scope: !6297)
!6317 = !DILocation(line: 196, column: 2, scope: !6297)
!6318 = distinct !{!6318, !6299, !6319, !5691, !5692}
!6319 = !DILocation(line: 200, column: 10, scope: !6294)
!6320 = !DILocation(line: 214, column: 6, scope: !6321)
!6321 = distinct !DILexicalBlock(scope: !6233, file: !3, line: 214, column: 6)
!6322 = !DILocation(line: 214, column: 10, scope: !6321)
!6323 = !DILocation(line: 214, column: 6, scope: !6233)
!6324 = !DILocation(line: 215, column: 8, scope: !6325)
!6325 = distinct !DILexicalBlock(scope: !6321, file: !3, line: 214, column: 33)
!6326 = !DILocation(line: 215, column: 6, scope: !6325)
!6327 = !DILocation(line: 216, column: 7, scope: !6328)
!6328 = distinct !DILexicalBlock(scope: !6325, file: !3, line: 216, column: 7)
!6329 = !DILocation(line: 216, column: 24, scope: !6328)
!6330 = !DILocation(line: 216, column: 13, scope: !6328)
!6331 = !DILocation(line: 216, column: 38, scope: !6328)
!6332 = !DILocation(line: 216, column: 10, scope: !6328)
!6333 = !DILocation(line: 216, column: 42, scope: !6328)
!6334 = !DILocation(line: 216, column: 45, scope: !6328)
!6335 = !DILocation(line: 216, column: 48, scope: !6328)
!6336 = !DILocation(line: 216, column: 7, scope: !6325)
!6337 = !DILocation(line: 217, column: 4, scope: !6338)
!6338 = distinct !DILexicalBlock(scope: !6339, file: !3, line: 217, column: 4)
!6339 = distinct !DILexicalBlock(scope: !6328, file: !3, line: 217, column: 4)
!6340 = !DILocation(line: 217, column: 4, scope: !6339)
!6341 = !DILocation(line: 217, column: 4, scope: !6328)
!6342 = !DILocation(line: 220, column: 2, scope: !6325)
!6343 = !DILocation(line: 214, column: 13, scope: !6321)
!6344 = !DILocation(line: 221, column: 1, scope: !6233)
!6345 = !DILocation(line: 222, column: 9, scope: !6233)
!6346 = !DILocation(line: 223, column: 1, scope: !6233)
!6347 = !DILocation(line: 222, column: 2, scope: !6233)
!6348 = distinct !DISubprogram(name: "is_gpt_valid", scope: !3, file: !3, line: 335, type: !6349, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6351)
!6349 = !DISubroutineType(types: !6350)
!6350 = !{!123, !341, !208, !5731, !5732}
!6351 = !{!6352, !6353, !6354, !6355, !6356, !6357, !6358, !6359, !6360, !6361}
!6352 = !DILocalVariable(name: "state", arg: 1, scope: !6348, file: !3, line: 335, type: !341)
!6353 = !DILocalVariable(name: "lba", arg: 2, scope: !6348, file: !3, line: 335, type: !208)
!6354 = !DILocalVariable(name: "gpt", arg: 3, scope: !6348, file: !3, line: 336, type: !5731)
!6355 = !DILocalVariable(name: "ptes", arg: 4, scope: !6348, file: !3, line: 336, type: !5732)
!6356 = !DILocalVariable(name: "crc", scope: !6348, file: !3, line: 338, type: !205)
!6357 = !DILocalVariable(name: "origcrc", scope: !6348, file: !3, line: 338, type: !205)
!6358 = !DILocalVariable(name: "lastlba", scope: !6348, file: !3, line: 339, type: !208)
!6359 = !DILocalVariable(name: "pt_size", scope: !6348, file: !3, line: 339, type: !208)
!6360 = !DILabel(scope: !6348, name: "fail_ptes", file: !3, line: 444)
!6361 = !DILabel(scope: !6348, name: "fail", file: !3, line: 447)
!6362 = !DILocation(line: 335, column: 51, scope: !6348)
!6363 = !DILocation(line: 335, column: 62, scope: !6348)
!6364 = !DILocation(line: 336, column: 17, scope: !6348)
!6365 = !DILocation(line: 336, column: 34, scope: !6348)
!6366 = !DILocation(line: 338, column: 2, scope: !6348)
!6367 = !DILocation(line: 338, column: 6, scope: !6348)
!6368 = !DILocation(line: 338, column: 11, scope: !6348)
!6369 = !DILocation(line: 339, column: 2, scope: !6348)
!6370 = !DILocation(line: 339, column: 6, scope: !6348)
!6371 = !DILocation(line: 339, column: 15, scope: !6348)
!6372 = !DILocation(line: 341, column: 7, scope: !6373)
!6373 = distinct !DILexicalBlock(scope: !6348, file: !3, line: 341, column: 6)
!6374 = !DILocation(line: 341, column: 6, scope: !6348)
!6375 = !DILocation(line: 342, column: 3, scope: !6373)
!6376 = !DILocation(line: 343, column: 37, scope: !6377)
!6377 = distinct !DILexicalBlock(scope: !6348, file: !3, line: 343, column: 6)
!6378 = !DILocation(line: 343, column: 44, scope: !6377)
!6379 = !DILocation(line: 343, column: 15, scope: !6377)
!6380 = !DILocation(line: 343, column: 9, scope: !6377)
!6381 = !DILocation(line: 343, column: 13, scope: !6377)
!6382 = !DILocation(line: 343, column: 6, scope: !6348)
!6383 = !DILocation(line: 344, column: 3, scope: !6377)
!6384 = !DILocation(line: 347, column: 6, scope: !6385)
!6385 = distinct !DILexicalBlock(scope: !6348, file: !3, line: 347, column: 6)
!6386 = !DILocation(line: 347, column: 37, scope: !6385)
!6387 = !DILocation(line: 347, column: 6, scope: !6348)
!6388 = !DILocation(line: 348, column: 3, scope: !6389)
!6389 = distinct !DILexicalBlock(scope: !6390, file: !3, line: 348, column: 3)
!6390 = distinct !DILexicalBlock(scope: !6391, file: !3, line: 348, column: 3)
!6391 = distinct !DILexicalBlock(scope: !6385, file: !3, line: 347, column: 62)
!6392 = !DILocation(line: 348, column: 3, scope: !6390)
!6393 = !DILocation(line: 352, column: 3, scope: !6391)
!6394 = !DILocation(line: 356, column: 6, scope: !6395)
!6395 = distinct !DILexicalBlock(scope: !6348, file: !3, line: 356, column: 6)
!6396 = !DILocation(line: 357, column: 29, scope: !6395)
!6397 = !DILocation(line: 357, column: 36, scope: !6395)
!6398 = !DILocation(line: 357, column: 42, scope: !6395)
!6399 = !DILocation(line: 357, column: 4, scope: !6395)
!6400 = !DILocation(line: 356, column: 39, scope: !6395)
!6401 = !DILocation(line: 356, column: 6, scope: !6348)
!6402 = !DILocation(line: 358, column: 3, scope: !6403)
!6403 = distinct !DILexicalBlock(scope: !6404, file: !3, line: 358, column: 3)
!6404 = distinct !DILexicalBlock(scope: !6405, file: !3, line: 358, column: 3)
!6405 = distinct !DILexicalBlock(scope: !6395, file: !3, line: 357, column: 50)
!6406 = !DILocation(line: 358, column: 3, scope: !6404)
!6407 = !DILocation(line: 361, column: 3, scope: !6405)
!6408 = !DILocation(line: 365, column: 6, scope: !6409)
!6409 = distinct !DILexicalBlock(scope: !6348, file: !3, line: 365, column: 6)
!6410 = !DILocation(line: 365, column: 39, scope: !6409)
!6411 = !DILocation(line: 365, column: 6, scope: !6348)
!6412 = !DILocation(line: 366, column: 3, scope: !6413)
!6413 = distinct !DILexicalBlock(scope: !6414, file: !3, line: 366, column: 3)
!6414 = distinct !DILexicalBlock(scope: !6415, file: !3, line: 366, column: 3)
!6415 = distinct !DILexicalBlock(scope: !6409, file: !3, line: 365, column: 61)
!6416 = !DILocation(line: 366, column: 3, scope: !6414)
!6417 = !DILocation(line: 369, column: 3, scope: !6415)
!6418 = !DILocation(line: 373, column: 12, scope: !6348)
!6419 = !DILocation(line: 373, column: 10, scope: !6348)
!6420 = !DILocation(line: 374, column: 4, scope: !6348)
!6421 = !DILocation(line: 374, column: 3, scope: !6348)
!6422 = !DILocation(line: 374, column: 10, scope: !6348)
!6423 = !DILocation(line: 374, column: 23, scope: !6348)
!6424 = !DILocation(line: 375, column: 44, scope: !6348)
!6425 = !DILocation(line: 375, column: 43, scope: !6348)
!6426 = !DILocation(line: 375, column: 50, scope: !6348)
!6427 = !DILocation(line: 375, column: 8, scope: !6348)
!6428 = !DILocation(line: 375, column: 6, scope: !6348)
!6429 = !DILocation(line: 377, column: 6, scope: !6430)
!6430 = distinct !DILexicalBlock(scope: !6348, file: !3, line: 377, column: 6)
!6431 = !DILocation(line: 377, column: 13, scope: !6430)
!6432 = !DILocation(line: 377, column: 10, scope: !6430)
!6433 = !DILocation(line: 377, column: 6, scope: !6348)
!6434 = !DILocation(line: 378, column: 3, scope: !6435)
!6435 = distinct !DILexicalBlock(scope: !6436, file: !3, line: 378, column: 3)
!6436 = distinct !DILexicalBlock(scope: !6437, file: !3, line: 378, column: 3)
!6437 = distinct !DILexicalBlock(scope: !6430, file: !3, line: 377, column: 22)
!6438 = !DILocation(line: 378, column: 3, scope: !6436)
!6439 = !DILocation(line: 380, column: 3, scope: !6437)
!6440 = !DILocation(line: 382, column: 25, scope: !6348)
!6441 = !DILocation(line: 382, column: 4, scope: !6348)
!6442 = !DILocation(line: 382, column: 3, scope: !6348)
!6443 = !DILocation(line: 382, column: 10, scope: !6348)
!6444 = !DILocation(line: 382, column: 23, scope: !6348)
!6445 = !DILocation(line: 386, column: 6, scope: !6446)
!6446 = distinct !DILexicalBlock(scope: !6348, file: !3, line: 386, column: 6)
!6447 = !DILocation(line: 386, column: 37, scope: !6446)
!6448 = !DILocation(line: 386, column: 34, scope: !6446)
!6449 = !DILocation(line: 386, column: 6, scope: !6348)
!6450 = !DILocation(line: 387, column: 3, scope: !6451)
!6451 = distinct !DILexicalBlock(scope: !6452, file: !3, line: 387, column: 3)
!6452 = distinct !DILexicalBlock(scope: !6453, file: !3, line: 387, column: 3)
!6453 = distinct !DILexicalBlock(scope: !6446, file: !3, line: 386, column: 42)
!6454 = !DILocation(line: 387, column: 3, scope: !6452)
!6455 = !DILocation(line: 390, column: 3, scope: !6453)
!6456 = !DILocation(line: 396, column: 21, scope: !6348)
!6457 = !DILocation(line: 396, column: 28, scope: !6348)
!6458 = !DILocation(line: 396, column: 12, scope: !6348)
!6459 = !DILocation(line: 396, column: 10, scope: !6348)
!6460 = !DILocation(line: 397, column: 6, scope: !6461)
!6461 = distinct !DILexicalBlock(scope: !6348, file: !3, line: 397, column: 6)
!6462 = !DILocation(line: 397, column: 46, scope: !6461)
!6463 = !DILocation(line: 397, column: 44, scope: !6461)
!6464 = !DILocation(line: 397, column: 6, scope: !6348)
!6465 = !DILocation(line: 398, column: 3, scope: !6466)
!6466 = distinct !DILexicalBlock(scope: !6467, file: !3, line: 398, column: 3)
!6467 = distinct !DILexicalBlock(scope: !6468, file: !3, line: 398, column: 3)
!6468 = distinct !DILexicalBlock(scope: !6461, file: !3, line: 397, column: 55)
!6469 = !DILocation(line: 398, column: 3, scope: !6467)
!6470 = !DILocation(line: 401, column: 3, scope: !6468)
!6471 = !DILocation(line: 403, column: 6, scope: !6472)
!6472 = distinct !DILexicalBlock(scope: !6348, file: !3, line: 403, column: 6)
!6473 = !DILocation(line: 403, column: 45, scope: !6472)
!6474 = !DILocation(line: 403, column: 43, scope: !6472)
!6475 = !DILocation(line: 403, column: 6, scope: !6348)
!6476 = !DILocation(line: 404, column: 3, scope: !6477)
!6477 = distinct !DILexicalBlock(scope: !6478, file: !3, line: 404, column: 3)
!6478 = distinct !DILexicalBlock(scope: !6479, file: !3, line: 404, column: 3)
!6479 = distinct !DILexicalBlock(scope: !6472, file: !3, line: 403, column: 54)
!6480 = !DILocation(line: 404, column: 3, scope: !6478)
!6481 = !DILocation(line: 407, column: 3, scope: !6479)
!6482 = !DILocation(line: 409, column: 6, scope: !6483)
!6483 = distinct !DILexicalBlock(scope: !6348, file: !3, line: 409, column: 6)
!6484 = !DILocation(line: 409, column: 45, scope: !6483)
!6485 = !DILocation(line: 409, column: 43, scope: !6483)
!6486 = !DILocation(line: 409, column: 6, scope: !6348)
!6487 = !DILocation(line: 410, column: 3, scope: !6488)
!6488 = distinct !DILexicalBlock(scope: !6489, file: !3, line: 410, column: 3)
!6489 = distinct !DILexicalBlock(scope: !6490, file: !3, line: 410, column: 3)
!6490 = distinct !DILexicalBlock(scope: !6483, file: !3, line: 409, column: 84)
!6491 = !DILocation(line: 410, column: 3, scope: !6489)
!6492 = !DILocation(line: 413, column: 3, scope: !6490)
!6493 = !DILocation(line: 416, column: 6, scope: !6494)
!6494 = distinct !DILexicalBlock(scope: !6348, file: !3, line: 416, column: 6)
!6495 = !DILocation(line: 416, column: 50, scope: !6494)
!6496 = !DILocation(line: 416, column: 6, scope: !6348)
!6497 = !DILocation(line: 417, column: 3, scope: !6498)
!6498 = distinct !DILexicalBlock(scope: !6499, file: !3, line: 417, column: 3)
!6499 = distinct !DILexicalBlock(scope: !6500, file: !3, line: 417, column: 3)
!6500 = distinct !DILexicalBlock(scope: !6494, file: !3, line: 416, column: 72)
!6501 = !DILocation(line: 417, column: 3, scope: !6499)
!6502 = !DILocation(line: 418, column: 3, scope: !6500)
!6503 = !DILocation(line: 422, column: 17, scope: !6348)
!6504 = !DILocation(line: 422, column: 12, scope: !6348)
!6505 = !DILocation(line: 423, column: 3, scope: !6348)
!6506 = !DILocation(line: 422, column: 60, scope: !6348)
!6507 = !DILocation(line: 422, column: 10, scope: !6348)
!6508 = !DILocation(line: 424, column: 6, scope: !6509)
!6509 = distinct !DILexicalBlock(scope: !6348, file: !3, line: 424, column: 6)
!6510 = !DILocation(line: 424, column: 14, scope: !6509)
!6511 = !DILocation(line: 424, column: 6, scope: !6348)
!6512 = !DILocation(line: 425, column: 3, scope: !6513)
!6513 = distinct !DILexicalBlock(scope: !6514, file: !3, line: 425, column: 3)
!6514 = distinct !DILexicalBlock(scope: !6515, file: !3, line: 425, column: 3)
!6515 = distinct !DILexicalBlock(scope: !6509, file: !3, line: 424, column: 34)
!6516 = !DILocation(line: 425, column: 3, scope: !6514)
!6517 = !DILocation(line: 427, column: 3, scope: !6515)
!6518 = !DILocation(line: 430, column: 39, scope: !6519)
!6519 = distinct !DILexicalBlock(scope: !6348, file: !3, line: 430, column: 6)
!6520 = !DILocation(line: 430, column: 47, scope: !6519)
!6521 = !DILocation(line: 430, column: 46, scope: !6519)
!6522 = !DILocation(line: 430, column: 16, scope: !6519)
!6523 = !DILocation(line: 430, column: 9, scope: !6519)
!6524 = !DILocation(line: 430, column: 14, scope: !6519)
!6525 = !DILocation(line: 430, column: 6, scope: !6348)
!6526 = !DILocation(line: 431, column: 3, scope: !6519)
!6527 = !DILocation(line: 434, column: 44, scope: !6348)
!6528 = !DILocation(line: 434, column: 43, scope: !6348)
!6529 = !DILocation(line: 434, column: 51, scope: !6348)
!6530 = !DILocation(line: 434, column: 8, scope: !6348)
!6531 = !DILocation(line: 434, column: 6, scope: !6348)
!6532 = !DILocation(line: 436, column: 6, scope: !6533)
!6533 = distinct !DILexicalBlock(scope: !6348, file: !3, line: 436, column: 6)
!6534 = !DILocation(line: 436, column: 13, scope: !6533)
!6535 = !DILocation(line: 436, column: 10, scope: !6533)
!6536 = !DILocation(line: 436, column: 6, scope: !6348)
!6537 = !DILocation(line: 437, column: 3, scope: !6538)
!6538 = distinct !DILexicalBlock(scope: !6539, file: !3, line: 437, column: 3)
!6539 = distinct !DILexicalBlock(scope: !6540, file: !3, line: 437, column: 3)
!6540 = distinct !DILexicalBlock(scope: !6533, file: !3, line: 436, column: 63)
!6541 = !DILocation(line: 437, column: 3, scope: !6539)
!6542 = !DILocation(line: 438, column: 3, scope: !6540)
!6543 = !DILocation(line: 442, column: 2, scope: !6348)
!6544 = !DILocation(line: 444, column: 2, scope: !6348)
!6545 = !DILocation(line: 445, column: 9, scope: !6348)
!6546 = !DILocation(line: 445, column: 8, scope: !6348)
!6547 = !DILocation(line: 445, column: 2, scope: !6348)
!6548 = !DILocation(line: 446, column: 3, scope: !6348)
!6549 = !DILocation(line: 446, column: 8, scope: !6348)
!6550 = !DILocation(line: 446, column: 2, scope: !6348)
!6551 = !DILocation(line: 447, column: 2, scope: !6348)
!6552 = !DILocation(line: 448, column: 9, scope: !6348)
!6553 = !DILocation(line: 448, column: 8, scope: !6348)
!6554 = !DILocation(line: 448, column: 2, scope: !6348)
!6555 = !DILocation(line: 449, column: 3, scope: !6348)
!6556 = !DILocation(line: 449, column: 7, scope: !6348)
!6557 = !DILocation(line: 450, column: 2, scope: !6348)
!6558 = !DILocation(line: 451, column: 1, scope: !6348)
!6559 = distinct !DISubprogram(name: "compare_gpts", scope: !3, file: !3, line: 481, type: !6560, scopeLine: 482, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6562)
!6560 = !DISubroutineType(types: !6561)
!6561 = !{null, !5516, !5516, !208}
!6562 = !{!6563, !6564, !6565, !6566}
!6563 = !DILocalVariable(name: "pgpt", arg: 1, scope: !6559, file: !3, line: 481, type: !5516)
!6564 = !DILocalVariable(name: "agpt", arg: 2, scope: !6559, file: !3, line: 481, type: !5516)
!6565 = !DILocalVariable(name: "lastlba", arg: 3, scope: !6559, file: !3, line: 481, type: !208)
!6566 = !DILocalVariable(name: "error_found", scope: !6559, file: !3, line: 483, type: !123)
!6567 = !DILocation(line: 481, column: 26, scope: !6559)
!6568 = !DILocation(line: 481, column: 44, scope: !6559)
!6569 = !DILocation(line: 481, column: 54, scope: !6559)
!6570 = !DILocation(line: 483, column: 2, scope: !6559)
!6571 = !DILocation(line: 483, column: 6, scope: !6559)
!6572 = !DILocation(line: 484, column: 7, scope: !6573)
!6573 = distinct !DILexicalBlock(scope: !6559, file: !3, line: 484, column: 6)
!6574 = !DILocation(line: 484, column: 12, scope: !6573)
!6575 = !DILocation(line: 484, column: 16, scope: !6573)
!6576 = !DILocation(line: 484, column: 6, scope: !6559)
!6577 = !DILocation(line: 485, column: 3, scope: !6573)
!6578 = !DILocation(line: 486, column: 6, scope: !6579)
!6579 = distinct !DILexicalBlock(scope: !6559, file: !3, line: 486, column: 6)
!6580 = !DILocation(line: 486, column: 35, scope: !6579)
!6581 = !DILocation(line: 486, column: 32, scope: !6579)
!6582 = !DILocation(line: 486, column: 6, scope: !6559)
!6583 = !DILocation(line: 487, column: 3, scope: !6584)
!6584 = distinct !DILexicalBlock(scope: !6585, file: !3, line: 487, column: 3)
!6585 = distinct !DILexicalBlock(scope: !6579, file: !3, line: 486, column: 69)
!6586 = !DILocation(line: 487, column: 3, scope: !6587)
!6587 = distinct !DILexicalBlock(scope: !6584, file: !3, line: 487, column: 3)
!6588 = !DILocation(line: 488, column: 3, scope: !6589)
!6589 = distinct !DILexicalBlock(scope: !6585, file: !3, line: 488, column: 3)
!6590 = !DILocation(line: 488, column: 3, scope: !6591)
!6591 = distinct !DILexicalBlock(scope: !6589, file: !3, line: 488, column: 3)
!6592 = !DILocation(line: 491, column: 14, scope: !6585)
!6593 = !DILocation(line: 492, column: 2, scope: !6585)
!6594 = !DILocation(line: 493, column: 6, scope: !6595)
!6595 = distinct !DILexicalBlock(scope: !6559, file: !3, line: 493, column: 6)
!6596 = !DILocation(line: 493, column: 42, scope: !6595)
!6597 = !DILocation(line: 493, column: 39, scope: !6595)
!6598 = !DILocation(line: 493, column: 6, scope: !6559)
!6599 = !DILocation(line: 494, column: 3, scope: !6600)
!6600 = distinct !DILexicalBlock(scope: !6601, file: !3, line: 494, column: 3)
!6601 = distinct !DILexicalBlock(scope: !6595, file: !3, line: 493, column: 69)
!6602 = !DILocation(line: 494, column: 3, scope: !6603)
!6603 = distinct !DILexicalBlock(scope: !6600, file: !3, line: 494, column: 3)
!6604 = !DILocation(line: 495, column: 3, scope: !6605)
!6605 = distinct !DILexicalBlock(scope: !6601, file: !3, line: 495, column: 3)
!6606 = !DILocation(line: 495, column: 3, scope: !6607)
!6607 = distinct !DILexicalBlock(scope: !6605, file: !3, line: 495, column: 3)
!6608 = !DILocation(line: 498, column: 14, scope: !6601)
!6609 = !DILocation(line: 499, column: 2, scope: !6601)
!6610 = !DILocation(line: 500, column: 6, scope: !6611)
!6611 = distinct !DILexicalBlock(scope: !6559, file: !3, line: 500, column: 6)
!6612 = !DILocation(line: 501, column: 13, scope: !6611)
!6613 = !DILocation(line: 500, column: 42, scope: !6611)
!6614 = !DILocation(line: 500, column: 6, scope: !6559)
!6615 = !DILocation(line: 502, column: 3, scope: !6616)
!6616 = distinct !DILexicalBlock(scope: !6617, file: !3, line: 502, column: 3)
!6617 = distinct !DILexicalBlock(scope: !6611, file: !3, line: 501, column: 50)
!6618 = !DILocation(line: 502, column: 3, scope: !6619)
!6619 = distinct !DILexicalBlock(scope: !6616, file: !3, line: 502, column: 3)
!6620 = !DILocation(line: 503, column: 3, scope: !6621)
!6621 = distinct !DILexicalBlock(scope: !6617, file: !3, line: 503, column: 3)
!6622 = !DILocation(line: 503, column: 3, scope: !6623)
!6623 = distinct !DILexicalBlock(scope: !6621, file: !3, line: 503, column: 3)
!6624 = !DILocation(line: 506, column: 14, scope: !6617)
!6625 = !DILocation(line: 507, column: 2, scope: !6617)
!6626 = !DILocation(line: 508, column: 6, scope: !6627)
!6627 = distinct !DILexicalBlock(scope: !6559, file: !3, line: 508, column: 6)
!6628 = !DILocation(line: 509, column: 13, scope: !6627)
!6629 = !DILocation(line: 508, column: 41, scope: !6627)
!6630 = !DILocation(line: 508, column: 6, scope: !6559)
!6631 = !DILocation(line: 510, column: 3, scope: !6632)
!6632 = distinct !DILexicalBlock(scope: !6633, file: !3, line: 510, column: 3)
!6633 = distinct !DILexicalBlock(scope: !6627, file: !3, line: 509, column: 49)
!6634 = !DILocation(line: 510, column: 3, scope: !6635)
!6635 = distinct !DILexicalBlock(scope: !6632, file: !3, line: 510, column: 3)
!6636 = !DILocation(line: 511, column: 3, scope: !6637)
!6637 = distinct !DILexicalBlock(scope: !6633, file: !3, line: 511, column: 3)
!6638 = !DILocation(line: 511, column: 3, scope: !6639)
!6639 = distinct !DILexicalBlock(scope: !6637, file: !3, line: 511, column: 3)
!6640 = !DILocation(line: 514, column: 14, scope: !6633)
!6641 = !DILocation(line: 515, column: 2, scope: !6633)
!6642 = !DILocation(line: 516, column: 18, scope: !6643)
!6643 = distinct !DILexicalBlock(scope: !6559, file: !3, line: 516, column: 6)
!6644 = !DILocation(line: 516, column: 24, scope: !6643)
!6645 = !DILocation(line: 516, column: 35, scope: !6643)
!6646 = !DILocation(line: 516, column: 41, scope: !6643)
!6647 = !DILocation(line: 516, column: 6, scope: !6643)
!6648 = !DILocation(line: 516, column: 6, scope: !6559)
!6649 = !DILocation(line: 517, column: 3, scope: !6650)
!6650 = distinct !DILexicalBlock(scope: !6651, file: !3, line: 517, column: 3)
!6651 = distinct !DILexicalBlock(scope: !6643, file: !3, line: 516, column: 53)
!6652 = !DILocation(line: 517, column: 3, scope: !6653)
!6653 = distinct !DILexicalBlock(scope: !6650, file: !3, line: 517, column: 3)
!6654 = !DILocation(line: 518, column: 14, scope: !6651)
!6655 = !DILocation(line: 519, column: 2, scope: !6651)
!6656 = !DILocation(line: 520, column: 6, scope: !6657)
!6657 = distinct !DILexicalBlock(scope: !6559, file: !3, line: 520, column: 6)
!6658 = !DILocation(line: 521, column: 13, scope: !6657)
!6659 = !DILocation(line: 520, column: 47, scope: !6657)
!6660 = !DILocation(line: 520, column: 6, scope: !6559)
!6661 = !DILocation(line: 522, column: 3, scope: !6662)
!6662 = distinct !DILexicalBlock(scope: !6663, file: !3, line: 522, column: 3)
!6663 = distinct !DILexicalBlock(scope: !6657, file: !3, line: 521, column: 55)
!6664 = !DILocation(line: 522, column: 3, scope: !6665)
!6665 = distinct !DILexicalBlock(scope: !6662, file: !3, line: 522, column: 3)
!6666 = !DILocation(line: 526, column: 14, scope: !6663)
!6667 = !DILocation(line: 527, column: 2, scope: !6663)
!6668 = !DILocation(line: 528, column: 6, scope: !6669)
!6669 = distinct !DILexicalBlock(scope: !6559, file: !3, line: 528, column: 6)
!6670 = !DILocation(line: 529, column: 13, scope: !6669)
!6671 = !DILocation(line: 528, column: 48, scope: !6669)
!6672 = !DILocation(line: 528, column: 6, scope: !6559)
!6673 = !DILocation(line: 530, column: 3, scope: !6674)
!6674 = distinct !DILexicalBlock(scope: !6675, file: !3, line: 530, column: 3)
!6675 = distinct !DILexicalBlock(scope: !6669, file: !3, line: 529, column: 56)
!6676 = !DILocation(line: 530, column: 3, scope: !6677)
!6677 = distinct !DILexicalBlock(scope: !6674, file: !3, line: 530, column: 3)
!6678 = !DILocation(line: 534, column: 14, scope: !6675)
!6679 = !DILocation(line: 535, column: 2, scope: !6675)
!6680 = !DILocation(line: 536, column: 6, scope: !6681)
!6681 = distinct !DILexicalBlock(scope: !6559, file: !3, line: 536, column: 6)
!6682 = !DILocation(line: 537, column: 13, scope: !6681)
!6683 = !DILocation(line: 536, column: 53, scope: !6681)
!6684 = !DILocation(line: 536, column: 6, scope: !6559)
!6685 = !DILocation(line: 538, column: 3, scope: !6686)
!6686 = distinct !DILexicalBlock(scope: !6687, file: !3, line: 538, column: 3)
!6687 = distinct !DILexicalBlock(scope: !6681, file: !3, line: 537, column: 61)
!6688 = !DILocation(line: 538, column: 3, scope: !6689)
!6689 = distinct !DILexicalBlock(scope: !6686, file: !3, line: 538, column: 3)
!6690 = !DILocation(line: 542, column: 14, scope: !6687)
!6691 = !DILocation(line: 543, column: 2, scope: !6687)
!6692 = !DILocation(line: 544, column: 6, scope: !6693)
!6693 = distinct !DILexicalBlock(scope: !6559, file: !3, line: 544, column: 6)
!6694 = !DILocation(line: 544, column: 42, scope: !6693)
!6695 = !DILocation(line: 544, column: 39, scope: !6693)
!6696 = !DILocation(line: 544, column: 6, scope: !6559)
!6697 = !DILocation(line: 545, column: 3, scope: !6698)
!6698 = distinct !DILexicalBlock(scope: !6699, file: !3, line: 545, column: 3)
!6699 = distinct !DILexicalBlock(scope: !6693, file: !3, line: 544, column: 51)
!6700 = !DILocation(line: 545, column: 3, scope: !6701)
!6701 = distinct !DILexicalBlock(scope: !6698, file: !3, line: 545, column: 3)
!6702 = !DILocation(line: 546, column: 3, scope: !6703)
!6703 = distinct !DILexicalBlock(scope: !6699, file: !3, line: 546, column: 3)
!6704 = !DILocation(line: 546, column: 3, scope: !6705)
!6705 = distinct !DILexicalBlock(scope: !6703, file: !3, line: 546, column: 3)
!6706 = !DILocation(line: 549, column: 14, scope: !6699)
!6707 = !DILocation(line: 550, column: 2, scope: !6699)
!6708 = !DILocation(line: 552, column: 6, scope: !6709)
!6709 = distinct !DILexicalBlock(scope: !6559, file: !3, line: 552, column: 6)
!6710 = !DILocation(line: 552, column: 35, scope: !6709)
!6711 = !DILocation(line: 552, column: 32, scope: !6709)
!6712 = !DILocation(line: 552, column: 6, scope: !6559)
!6713 = !DILocation(line: 553, column: 3, scope: !6714)
!6714 = distinct !DILexicalBlock(scope: !6715, file: !3, line: 553, column: 3)
!6715 = distinct !DILexicalBlock(scope: !6709, file: !3, line: 552, column: 44)
!6716 = !DILocation(line: 553, column: 3, scope: !6717)
!6717 = distinct !DILexicalBlock(scope: !6714, file: !3, line: 553, column: 3)
!6718 = !DILocation(line: 554, column: 3, scope: !6719)
!6719 = distinct !DILexicalBlock(scope: !6715, file: !3, line: 554, column: 3)
!6720 = !DILocation(line: 554, column: 3, scope: !6721)
!6721 = distinct !DILexicalBlock(scope: !6719, file: !3, line: 554, column: 3)
!6722 = !DILocation(line: 557, column: 14, scope: !6715)
!6723 = !DILocation(line: 558, column: 2, scope: !6715)
!6724 = !DILocation(line: 560, column: 6, scope: !6725)
!6725 = distinct !DILexicalBlock(scope: !6559, file: !3, line: 560, column: 6)
!6726 = !DILocation(line: 560, column: 6, scope: !6559)
!6727 = !DILocation(line: 561, column: 3, scope: !6728)
!6728 = distinct !DILexicalBlock(scope: !6725, file: !3, line: 561, column: 3)
!6729 = !DILocation(line: 561, column: 3, scope: !6730)
!6730 = distinct !DILexicalBlock(scope: !6728, file: !3, line: 561, column: 3)
!6731 = !DILocation(line: 561, column: 3, scope: !6725)
!6732 = !DILocation(line: 562, column: 2, scope: !6559)
!6733 = !DILocation(line: 563, column: 1, scope: !6559)
!6734 = !DISubprogram(name: "_printk", scope: !6735, file: !6735, line: 153, type: !6736, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6735 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6736 = !DISubroutineType(types: !6737)
!6737 = !{!123, !223, null}
!6738 = distinct !DISubprogram(name: "bdev_nr_sectors", scope: !156, file: !156, line: 778, type: !6739, scopeLine: 779, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6741)
!6739 = !DISubroutineType(types: !6740)
!6740 = !{!406, !401}
!6741 = !{!6742}
!6742 = !DILocalVariable(name: "bdev", arg: 1, scope: !6738, file: !156, line: 778, type: !401)
!6743 = !DILocation(line: 778, column: 61, scope: !6738)
!6744 = !DILocation(line: 780, column: 9, scope: !6738)
!6745 = !DILocation(line: 780, column: 15, scope: !6738)
!6746 = !DILocation(line: 780, column: 2, scope: !6738)
!6747 = distinct !DISubprogram(name: "kmalloc", scope: !176, file: !176, line: 591, type: !6137, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6748)
!6748 = !{!6749, !6750, !6751}
!6749 = !DILocalVariable(name: "size", arg: 1, scope: !6747, file: !176, line: 591, type: !209)
!6750 = !DILocalVariable(name: "flags", arg: 2, scope: !6747, file: !176, line: 591, type: !193)
!6751 = !DILocalVariable(name: "index", scope: !6752, file: !176, line: 594, type: !7)
!6752 = distinct !DILexicalBlock(scope: !6753, file: !176, line: 593, column: 42)
!6753 = distinct !DILexicalBlock(scope: !6747, file: !176, line: 593, column: 6)
!6754 = !DILocation(line: 591, column: 61, scope: !6747)
!6755 = !DILocation(line: 591, column: 73, scope: !6747)
!6756 = !DILocation(line: 593, column: 27, scope: !6753)
!6757 = !DILocation(line: 593, column: 6, scope: !6753)
!6758 = !DILocation(line: 593, column: 33, scope: !6753)
!6759 = !DILocation(line: 593, column: 36, scope: !6753)
!6760 = !DILocation(line: 593, column: 6, scope: !6747)
!6761 = !DILocation(line: 594, column: 3, scope: !6752)
!6762 = !DILocation(line: 594, column: 16, scope: !6752)
!6763 = !DILocation(line: 596, column: 7, scope: !6764)
!6764 = distinct !DILexicalBlock(scope: !6752, file: !176, line: 596, column: 7)
!6765 = !DILocation(line: 596, column: 12, scope: !6764)
!6766 = !DILocation(line: 596, column: 7, scope: !6752)
!6767 = !DILocation(line: 597, column: 25, scope: !6764)
!6768 = !DILocation(line: 597, column: 31, scope: !6764)
!6769 = !DILocation(line: 597, column: 11, scope: !6764)
!6770 = !DILocation(line: 597, column: 4, scope: !6764)
!6771 = !DILocation(line: 599, column: 11, scope: !6752)
!6772 = !DILocation(line: 599, column: 9, scope: !6752)
!6773 = !DILocation(line: 601, column: 33, scope: !6752)
!6774 = !DILocation(line: 601, column: 40, scope: !6752)
!6775 = !DILocation(line: 601, column: 20, scope: !6752)
!6776 = !DILocation(line: 601, column: 5, scope: !6752)
!6777 = !DILocation(line: 601, column: 51, scope: !6752)
!6778 = !DILocation(line: 602, column: 5, scope: !6752)
!6779 = !DILocation(line: 602, column: 12, scope: !6752)
!6780 = !DILocation(line: 600, column: 10, scope: !6752)
!6781 = !DILocation(line: 600, column: 3, scope: !6752)
!6782 = !DILocation(line: 603, column: 2, scope: !6753)
!6783 = !DILocation(line: 604, column: 19, scope: !6747)
!6784 = !DILocation(line: 604, column: 25, scope: !6747)
!6785 = !DILocation(line: 604, column: 9, scope: !6747)
!6786 = !DILocation(line: 604, column: 2, scope: !6747)
!6787 = !DILocation(line: 605, column: 1, scope: !6747)
!6788 = !DISubprogram(name: "kmalloc_large", scope: !176, file: !176, line: 531, type: !6137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6789 = distinct !DISubprogram(name: "__kmalloc_index", scope: !176, file: !176, line: 444, type: !6790, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6792)
!6790 = !DISubroutineType(types: !6791)
!6791 = !{!7, !209, !520}
!6792 = !{!6793, !6794}
!6793 = !DILocalVariable(name: "size", arg: 1, scope: !6789, file: !176, line: 444, type: !209)
!6794 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6789, file: !176, line: 445, type: !520)
!6795 = !DILocation(line: 444, column: 60, scope: !6789)
!6796 = !DILocation(line: 445, column: 16, scope: !6789)
!6797 = !DILocation(line: 447, column: 7, scope: !6798)
!6798 = distinct !DILexicalBlock(scope: !6789, file: !176, line: 447, column: 6)
!6799 = !DILocation(line: 447, column: 6, scope: !6789)
!6800 = !DILocation(line: 448, column: 3, scope: !6798)
!6801 = !DILocation(line: 450, column: 6, scope: !6802)
!6802 = distinct !DILexicalBlock(scope: !6789, file: !176, line: 450, column: 6)
!6803 = !DILocation(line: 450, column: 11, scope: !6802)
!6804 = !DILocation(line: 450, column: 6, scope: !6789)
!6805 = !DILocation(line: 451, column: 3, scope: !6802)
!6806 = !DILocation(line: 453, column: 32, scope: !6807)
!6807 = distinct !DILexicalBlock(scope: !6789, file: !176, line: 453, column: 6)
!6808 = !DILocation(line: 453, column: 37, scope: !6807)
!6809 = !DILocation(line: 453, column: 42, scope: !6807)
!6810 = !DILocation(line: 453, column: 45, scope: !6807)
!6811 = !DILocation(line: 453, column: 50, scope: !6807)
!6812 = !DILocation(line: 453, column: 6, scope: !6789)
!6813 = !DILocation(line: 454, column: 3, scope: !6807)
!6814 = !DILocation(line: 455, column: 32, scope: !6815)
!6815 = distinct !DILexicalBlock(scope: !6789, file: !176, line: 455, column: 6)
!6816 = !DILocation(line: 455, column: 37, scope: !6815)
!6817 = !DILocation(line: 455, column: 43, scope: !6815)
!6818 = !DILocation(line: 455, column: 46, scope: !6815)
!6819 = !DILocation(line: 455, column: 51, scope: !6815)
!6820 = !DILocation(line: 455, column: 6, scope: !6789)
!6821 = !DILocation(line: 456, column: 3, scope: !6815)
!6822 = !DILocation(line: 457, column: 6, scope: !6823)
!6823 = distinct !DILexicalBlock(scope: !6789, file: !176, line: 457, column: 6)
!6824 = !DILocation(line: 457, column: 11, scope: !6823)
!6825 = !DILocation(line: 457, column: 6, scope: !6789)
!6826 = !DILocation(line: 457, column: 26, scope: !6823)
!6827 = !DILocation(line: 458, column: 6, scope: !6828)
!6828 = distinct !DILexicalBlock(scope: !6789, file: !176, line: 458, column: 6)
!6829 = !DILocation(line: 458, column: 11, scope: !6828)
!6830 = !DILocation(line: 458, column: 6, scope: !6789)
!6831 = !DILocation(line: 458, column: 26, scope: !6828)
!6832 = !DILocation(line: 459, column: 6, scope: !6833)
!6833 = distinct !DILexicalBlock(scope: !6789, file: !176, line: 459, column: 6)
!6834 = !DILocation(line: 459, column: 11, scope: !6833)
!6835 = !DILocation(line: 459, column: 6, scope: !6789)
!6836 = !DILocation(line: 459, column: 26, scope: !6833)
!6837 = !DILocation(line: 460, column: 6, scope: !6838)
!6838 = distinct !DILexicalBlock(scope: !6789, file: !176, line: 460, column: 6)
!6839 = !DILocation(line: 460, column: 11, scope: !6838)
!6840 = !DILocation(line: 460, column: 6, scope: !6789)
!6841 = !DILocation(line: 460, column: 26, scope: !6838)
!6842 = !DILocation(line: 461, column: 6, scope: !6843)
!6843 = distinct !DILexicalBlock(scope: !6789, file: !176, line: 461, column: 6)
!6844 = !DILocation(line: 461, column: 11, scope: !6843)
!6845 = !DILocation(line: 461, column: 6, scope: !6789)
!6846 = !DILocation(line: 461, column: 26, scope: !6843)
!6847 = !DILocation(line: 462, column: 6, scope: !6848)
!6848 = distinct !DILexicalBlock(scope: !6789, file: !176, line: 462, column: 6)
!6849 = !DILocation(line: 462, column: 11, scope: !6848)
!6850 = !DILocation(line: 462, column: 6, scope: !6789)
!6851 = !DILocation(line: 462, column: 26, scope: !6848)
!6852 = !DILocation(line: 463, column: 6, scope: !6853)
!6853 = distinct !DILexicalBlock(scope: !6789, file: !176, line: 463, column: 6)
!6854 = !DILocation(line: 463, column: 11, scope: !6853)
!6855 = !DILocation(line: 463, column: 6, scope: !6789)
!6856 = !DILocation(line: 463, column: 26, scope: !6853)
!6857 = !DILocation(line: 464, column: 6, scope: !6858)
!6858 = distinct !DILexicalBlock(scope: !6789, file: !176, line: 464, column: 6)
!6859 = !DILocation(line: 464, column: 11, scope: !6858)
!6860 = !DILocation(line: 464, column: 6, scope: !6789)
!6861 = !DILocation(line: 464, column: 26, scope: !6858)
!6862 = !DILocation(line: 465, column: 6, scope: !6863)
!6863 = distinct !DILexicalBlock(scope: !6789, file: !176, line: 465, column: 6)
!6864 = !DILocation(line: 465, column: 11, scope: !6863)
!6865 = !DILocation(line: 465, column: 6, scope: !6789)
!6866 = !DILocation(line: 465, column: 26, scope: !6863)
!6867 = !DILocation(line: 466, column: 6, scope: !6868)
!6868 = distinct !DILexicalBlock(scope: !6789, file: !176, line: 466, column: 6)
!6869 = !DILocation(line: 466, column: 11, scope: !6868)
!6870 = !DILocation(line: 466, column: 6, scope: !6789)
!6871 = !DILocation(line: 466, column: 26, scope: !6868)
!6872 = !DILocation(line: 467, column: 6, scope: !6873)
!6873 = distinct !DILexicalBlock(scope: !6789, file: !176, line: 467, column: 6)
!6874 = !DILocation(line: 467, column: 11, scope: !6873)
!6875 = !DILocation(line: 467, column: 6, scope: !6789)
!6876 = !DILocation(line: 467, column: 26, scope: !6873)
!6877 = !DILocation(line: 468, column: 6, scope: !6878)
!6878 = distinct !DILexicalBlock(scope: !6789, file: !176, line: 468, column: 6)
!6879 = !DILocation(line: 468, column: 11, scope: !6878)
!6880 = !DILocation(line: 468, column: 6, scope: !6789)
!6881 = !DILocation(line: 468, column: 26, scope: !6878)
!6882 = !DILocation(line: 469, column: 6, scope: !6883)
!6883 = distinct !DILexicalBlock(scope: !6789, file: !176, line: 469, column: 6)
!6884 = !DILocation(line: 469, column: 11, scope: !6883)
!6885 = !DILocation(line: 469, column: 6, scope: !6789)
!6886 = !DILocation(line: 469, column: 26, scope: !6883)
!6887 = !DILocation(line: 470, column: 6, scope: !6888)
!6888 = distinct !DILexicalBlock(scope: !6789, file: !176, line: 470, column: 6)
!6889 = !DILocation(line: 470, column: 11, scope: !6888)
!6890 = !DILocation(line: 470, column: 6, scope: !6789)
!6891 = !DILocation(line: 470, column: 26, scope: !6888)
!6892 = !DILocation(line: 471, column: 6, scope: !6893)
!6893 = distinct !DILexicalBlock(scope: !6789, file: !176, line: 471, column: 6)
!6894 = !DILocation(line: 471, column: 11, scope: !6893)
!6895 = !DILocation(line: 471, column: 6, scope: !6789)
!6896 = !DILocation(line: 471, column: 26, scope: !6893)
!6897 = !DILocation(line: 472, column: 6, scope: !6898)
!6898 = distinct !DILexicalBlock(scope: !6789, file: !176, line: 472, column: 6)
!6899 = !DILocation(line: 472, column: 11, scope: !6898)
!6900 = !DILocation(line: 472, column: 6, scope: !6789)
!6901 = !DILocation(line: 472, column: 26, scope: !6898)
!6902 = !DILocation(line: 473, column: 6, scope: !6903)
!6903 = distinct !DILexicalBlock(scope: !6789, file: !176, line: 473, column: 6)
!6904 = !DILocation(line: 473, column: 11, scope: !6903)
!6905 = !DILocation(line: 473, column: 6, scope: !6789)
!6906 = !DILocation(line: 473, column: 26, scope: !6903)
!6907 = !DILocation(line: 474, column: 6, scope: !6908)
!6908 = distinct !DILexicalBlock(scope: !6789, file: !176, line: 474, column: 6)
!6909 = !DILocation(line: 474, column: 11, scope: !6908)
!6910 = !DILocation(line: 474, column: 6, scope: !6789)
!6911 = !DILocation(line: 474, column: 27, scope: !6908)
!6912 = !DILocation(line: 475, column: 6, scope: !6913)
!6913 = distinct !DILexicalBlock(scope: !6789, file: !176, line: 475, column: 6)
!6914 = !DILocation(line: 475, column: 11, scope: !6913)
!6915 = !DILocation(line: 475, column: 6, scope: !6789)
!6916 = !DILocation(line: 475, column: 32, scope: !6913)
!6917 = !DILocation(line: 477, column: 50, scope: !6918)
!6918 = distinct !DILexicalBlock(scope: !6789, file: !176, line: 477, column: 6)
!6919 = !{i8 0, i8 2}
!6920 = !DILocation(line: 477, column: 6, scope: !6789)
!6921 = !DILocation(line: 478, column: 3, scope: !6918)
!6922 = !DILocation(line: 478, column: 3, scope: !6923)
!6923 = distinct !DILexicalBlock(scope: !6924, file: !176, line: 478, column: 3)
!6924 = distinct !DILexicalBlock(scope: !6918, file: !176, line: 478, column: 3)
!6925 = !{i32 -2143530373}
!6926 = !DILocation(line: 478, column: 3, scope: !6924)
!6927 = !DILocation(line: 480, column: 3, scope: !6918)
!6928 = !DILocation(line: 480, column: 3, scope: !6929)
!6929 = distinct !DILexicalBlock(scope: !6918, file: !176, line: 480, column: 3)
!6930 = !DILocation(line: 480, column: 3, scope: !6931)
!6931 = distinct !DILexicalBlock(scope: !6929, file: !176, line: 480, column: 3)
!6932 = !DILocation(line: 480, column: 3, scope: !6933)
!6933 = distinct !DILexicalBlock(scope: !6929, file: !176, line: 480, column: 3)
!6934 = !{i64 2151437126, i64 2151437155, i64 2151437201, i64 2151437259, i64 2151437313, i64 2151437367, i64 2151437422, i64 2151437453}
!6935 = !DILocation(line: 483, column: 2, scope: !6789)
!6936 = !DILocation(line: 484, column: 1, scope: !6789)
!6937 = !DISubprogram(name: "kmalloc_trace", scope: !176, file: !176, line: 525, type: !6938, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6938 = !DISubroutineType(types: !6939)
!6939 = !{!399, !3441, !193, !209}
!6940 = distinct !DISubprogram(name: "kmalloc_type", scope: !176, file: !176, line: 401, type: !6941, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6943)
!6941 = !DISubroutineType(types: !6942)
!6942 = !{!175, !193, !200}
!6943 = !{!6944, !6945}
!6944 = !DILocalVariable(name: "flags", arg: 1, scope: !6940, file: !176, line: 401, type: !193)
!6945 = !DILocalVariable(name: "caller", arg: 2, scope: !6940, file: !176, line: 401, type: !200)
!6946 = !DILocation(line: 401, column: 67, scope: !6940)
!6947 = !DILocation(line: 401, column: 88, scope: !6940)
!6948 = !DILocation(line: 407, column: 6, scope: !6949)
!6949 = distinct !DILexicalBlock(scope: !6940, file: !176, line: 407, column: 6)
!6950 = !DILocation(line: 407, column: 6, scope: !6940)
!6951 = !DILocation(line: 413, column: 3, scope: !6949)
!6952 = !DILocation(line: 423, column: 38, scope: !6953)
!6953 = distinct !DILexicalBlock(scope: !6940, file: !176, line: 423, column: 6)
!6954 = !DILocation(line: 423, column: 44, scope: !6953)
!6955 = !DILocation(line: 423, column: 6, scope: !6940)
!6956 = !DILocation(line: 424, column: 3, scope: !6953)
!6957 = !DILocation(line: 426, column: 3, scope: !6958)
!6958 = distinct !DILexicalBlock(scope: !6940, file: !176, line: 425, column: 6)
!6959 = !DILocation(line: 429, column: 1, scope: !6940)
!6960 = !DISubprogram(name: "__kmalloc", scope: !176, file: !176, line: 488, type: !6137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6961 = !DISubprogram(name: "__compiletime_assert_117", scope: !176, file: !176, line: 478, type: !1268, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6962 = !DISubprogram(name: "read_part_sector", scope: !310, file: !310, line: 30, type: !6963, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6963 = !DISubroutineType(types: !6964)
!6964 = !{!399, !341, !406, !6965}
!6965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6162, size: 64)
!6966 = distinct !DISubprogram(name: "put_dev_sector", scope: !310, file: !310, line: 31, type: !6967, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6969)
!6967 = !DISubroutineType(types: !6968)
!6968 = !{null, !6162}
!6969 = !{!6970}
!6970 = !DILocalVariable(name: "p", arg: 1, scope: !6966, file: !310, line: 31, type: !6162)
!6971 = !DILocation(line: 31, column: 42, scope: !6966)
!6972 = !DILocation(line: 33, column: 14, scope: !6966)
!6973 = !DILocation(line: 33, column: 2, scope: !6966)
!6974 = !DILocation(line: 34, column: 1, scope: !6966)
!6975 = distinct !DISubprogram(name: "folio_put", scope: !1851, file: !1851, line: 1478, type: !4408, scopeLine: 1479, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6976)
!6976 = !{!6977}
!6977 = !DILocalVariable(name: "folio", arg: 1, scope: !6975, file: !1851, line: 1478, type: !1714)
!6978 = !DILocation(line: 1478, column: 44, scope: !6975)
!6979 = !DILocation(line: 1480, column: 25, scope: !6980)
!6980 = distinct !DILexicalBlock(scope: !6975, file: !1851, line: 1480, column: 6)
!6981 = !DILocation(line: 1480, column: 6, scope: !6980)
!6982 = !DILocation(line: 1480, column: 6, scope: !6975)
!6983 = !DILocation(line: 1481, column: 15, scope: !6980)
!6984 = !DILocation(line: 1481, column: 3, scope: !6980)
!6985 = !DILocation(line: 1482, column: 1, scope: !6975)
!6986 = distinct !DISubprogram(name: "folio_put_testzero", scope: !1851, file: !1851, line: 1103, type: !4417, scopeLine: 1104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6987)
!6987 = !{!6988}
!6988 = !DILocalVariable(name: "folio", arg: 1, scope: !6986, file: !1851, line: 1103, type: !1714)
!6989 = !DILocation(line: 1103, column: 52, scope: !6986)
!6990 = !DILocation(line: 1105, column: 28, scope: !6986)
!6991 = !DILocation(line: 1105, column: 35, scope: !6986)
!6992 = !DILocation(line: 1105, column: 9, scope: !6986)
!6993 = !DILocation(line: 1105, column: 2, scope: !6986)
!6994 = !DISubprogram(name: "__folio_put", scope: !1851, file: !1851, line: 1283, type: !4408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6995 = distinct !DISubprogram(name: "put_page_testzero", scope: !1851, file: !1851, line: 1097, type: !6996, scopeLine: 1098, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6998)
!6996 = !DISubroutineType(types: !6997)
!6997 = !{!123, !1843}
!6998 = !{!6999}
!6999 = !DILocalVariable(name: "page", arg: 1, scope: !6995, file: !1851, line: 1097, type: !1843)
!7000 = !DILocation(line: 1097, column: 50, scope: !6995)
!7001 = !DILocation(line: 1100, column: 31, scope: !6995)
!7002 = !DILocation(line: 1100, column: 9, scope: !6995)
!7003 = !DILocation(line: 1100, column: 2, scope: !6995)
!7004 = distinct !DISubprogram(name: "page_ref_dec_and_test", scope: !7005, file: !7005, line: 208, type: !6996, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7006)
!7005 = !DIFile(filename: "./include/linux/page_ref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0ed1500ef964c39be8e0b4c715e2a9d4")
!7006 = !{!7007, !7008}
!7007 = !DILocalVariable(name: "page", arg: 1, scope: !7004, file: !7005, line: 208, type: !1843)
!7008 = !DILocalVariable(name: "ret", scope: !7004, file: !7005, line: 210, type: !123)
!7009 = !DILocation(line: 208, column: 54, scope: !7004)
!7010 = !DILocation(line: 210, column: 2, scope: !7004)
!7011 = !DILocation(line: 210, column: 6, scope: !7004)
!7012 = !DILocation(line: 210, column: 33, scope: !7004)
!7013 = !DILocation(line: 210, column: 39, scope: !7004)
!7014 = !DILocation(line: 210, column: 12, scope: !7004)
!7015 = !DILocation(line: 214, column: 9, scope: !7004)
!7016 = !DILocation(line: 215, column: 1, scope: !7004)
!7017 = !DILocation(line: 214, column: 2, scope: !7004)
!7018 = distinct !DISubprogram(name: "atomic_dec_and_test", scope: !7019, file: !7019, line: 1372, type: !7020, scopeLine: 1373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7023)
!7019 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!7020 = !DISubroutineType(types: !7021)
!7021 = !{!520, !7022}
!7022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!7023 = !{!7024}
!7024 = !DILocalVariable(name: "v", arg: 1, scope: !7018, file: !7019, line: 1372, type: !7022)
!7025 = !DILocation(line: 1372, column: 31, scope: !7018)
!7026 = !DILocation(line: 1374, column: 2, scope: !7018)
!7027 = !DILocation(line: 1374, column: 2, scope: !7028)
!7028 = distinct !DILexicalBlock(scope: !7018, file: !7019, line: 1374, column: 2)
!7029 = !DILocation(line: 1375, column: 31, scope: !7018)
!7030 = !DILocation(line: 1375, column: 2, scope: !7018)
!7031 = !DILocation(line: 1376, column: 33, scope: !7018)
!7032 = !DILocation(line: 1376, column: 9, scope: !7018)
!7033 = !DILocation(line: 1376, column: 2, scope: !7018)
!7034 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !7035, file: !7035, line: 94, type: !7036, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7041)
!7035 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!7036 = !DISubroutineType(types: !7037)
!7037 = !{null, !7038, !209}
!7038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7039, size: 64)
!7039 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7040)
!7040 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!7041 = !{!7042, !7043}
!7042 = !DILocalVariable(name: "v", arg: 1, scope: !7034, file: !7035, line: 94, type: !7038)
!7043 = !DILocalVariable(name: "size", arg: 2, scope: !7034, file: !7035, line: 94, type: !209)
!7044 = !DILocation(line: 94, column: 79, scope: !7034)
!7045 = !DILocation(line: 94, column: 89, scope: !7034)
!7046 = !DILocation(line: 96, column: 20, scope: !7034)
!7047 = !DILocation(line: 96, column: 23, scope: !7034)
!7048 = !DILocation(line: 96, column: 2, scope: !7034)
!7049 = !DILocation(line: 97, column: 2, scope: !7034)
!7050 = !DILocation(line: 98, column: 1, scope: !7034)
!7051 = distinct !DISubprogram(name: "raw_atomic_dec_and_test", scope: !7052, file: !7052, line: 2254, type: !7020, scopeLine: 2255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7053)
!7052 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!7053 = !{!7054}
!7054 = !DILocalVariable(name: "v", arg: 1, scope: !7051, file: !7052, line: 2254, type: !7022)
!7055 = !DILocation(line: 2254, column: 35, scope: !7051)
!7056 = !DILocation(line: 2257, column: 34, scope: !7051)
!7057 = !DILocation(line: 2257, column: 9, scope: !7051)
!7058 = !DILocation(line: 2257, column: 2, scope: !7051)
!7059 = distinct !DISubprogram(name: "kasan_check_write", scope: !7060, file: !7060, line: 44, type: !7061, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7063)
!7060 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!7061 = !DISubroutineType(types: !7062)
!7062 = !{!520, !7038, !7}
!7063 = !{!7064, !7065}
!7064 = !DILocalVariable(name: "p", arg: 1, scope: !7059, file: !7060, line: 44, type: !7038)
!7065 = !DILocalVariable(name: "size", arg: 2, scope: !7059, file: !7060, line: 44, type: !7)
!7066 = !DILocation(line: 44, column: 59, scope: !7059)
!7067 = !DILocation(line: 44, column: 75, scope: !7059)
!7068 = !DILocation(line: 46, column: 2, scope: !7059)
!7069 = distinct !DISubprogram(name: "kcsan_check_access", scope: !7070, file: !7070, line: 229, type: !7071, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7073)
!7070 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!7071 = !DISubroutineType(types: !7072)
!7072 = !{null, !7038, !209, !123}
!7073 = !{!7074, !7075, !7076}
!7074 = !DILocalVariable(name: "ptr", arg: 1, scope: !7069, file: !7070, line: 229, type: !7038)
!7075 = !DILocalVariable(name: "size", arg: 2, scope: !7069, file: !7070, line: 229, type: !209)
!7076 = !DILocalVariable(name: "type", arg: 3, scope: !7069, file: !7070, line: 230, type: !123)
!7077 = !DILocation(line: 229, column: 60, scope: !7069)
!7078 = !DILocation(line: 229, column: 72, scope: !7069)
!7079 = !DILocation(line: 230, column: 15, scope: !7069)
!7080 = !DILocation(line: 230, column: 23, scope: !7069)
!7081 = distinct !DISubprogram(name: "arch_atomic_dec_and_test", scope: !7082, file: !7082, line: 65, type: !7020, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7083)
!7082 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!7083 = !{!7084, !7085}
!7084 = !DILocalVariable(name: "v", arg: 1, scope: !7081, file: !7082, line: 65, type: !7022)
!7085 = !DILocalVariable(name: "c", scope: !7086, file: !7082, line: 67, type: !520)
!7086 = distinct !DILexicalBlock(scope: !7081, file: !7082, line: 67, column: 9)
!7087 = !DILocation(line: 65, column: 64, scope: !7081)
!7088 = !DILocation(line: 67, column: 9, scope: !7086)
!7089 = !{i64 2148952870, i64 2148952909, i64 2148952930, i64 2148952967, i64 2148952990, i64 2148952999, i64 2148953073}
!7090 = !DILocation(line: 67, column: 9, scope: !7081)
!7091 = !DILocation(line: 67, column: 2, scope: !7081)
!7092 = distinct !DISubprogram(name: "pmbr_part_valid", scope: !3, file: !3, line: 140, type: !7093, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7096)
!7093 = !DISubroutineType(types: !7094)
!7094 = !{!123, !7095}
!7095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5757, size: 64)
!7096 = !{!7097, !7098}
!7097 = !DILocalVariable(name: "part", arg: 1, scope: !7092, file: !3, line: 140, type: !7095)
!7098 = !DILabel(scope: !7092, name: "invalid", file: !3, line: 150)
!7099 = !DILocation(line: 140, column: 51, scope: !7092)
!7100 = !DILocation(line: 142, column: 6, scope: !7101)
!7101 = distinct !DILexicalBlock(scope: !7092, file: !3, line: 142, column: 6)
!7102 = !DILocation(line: 142, column: 12, scope: !7101)
!7103 = !DILocation(line: 142, column: 20, scope: !7101)
!7104 = !DILocation(line: 142, column: 6, scope: !7092)
!7105 = !DILocation(line: 143, column: 3, scope: !7101)
!7106 = !DILocation(line: 146, column: 6, scope: !7107)
!7107 = distinct !DILexicalBlock(scope: !7092, file: !3, line: 146, column: 6)
!7108 = !DILocation(line: 146, column: 38, scope: !7107)
!7109 = !DILocation(line: 146, column: 6, scope: !7092)
!7110 = !DILocation(line: 147, column: 3, scope: !7107)
!7111 = !DILocation(line: 149, column: 2, scope: !7092)
!7112 = !DILocation(line: 150, column: 1, scope: !7092)
!7113 = !DILocation(line: 151, column: 2, scope: !7092)
!7114 = !DILocation(line: 152, column: 1, scope: !7092)
!7115 = distinct !DISubprogram(name: "alloc_read_gpt_header", scope: !3, file: !3, line: 306, type: !7116, scopeLine: 308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7118)
!7116 = !DISubroutineType(types: !7117)
!7117 = !{!5516, !341, !208}
!7118 = !{!7119, !7120, !7121, !7122}
!7119 = !DILocalVariable(name: "state", arg: 1, scope: !7115, file: !3, line: 306, type: !341)
!7120 = !DILocalVariable(name: "lba", arg: 2, scope: !7115, file: !3, line: 307, type: !208)
!7121 = !DILocalVariable(name: "gpt", scope: !7115, file: !3, line: 309, type: !5516)
!7122 = !DILocalVariable(name: "ssz", scope: !7115, file: !3, line: 310, type: !7)
!7123 = !DILocation(line: 306, column: 68, scope: !7115)
!7124 = !DILocation(line: 307, column: 11, scope: !7115)
!7125 = !DILocation(line: 309, column: 2, scope: !7115)
!7126 = !DILocation(line: 309, column: 14, scope: !7115)
!7127 = !DILocation(line: 310, column: 2, scope: !7115)
!7128 = !DILocation(line: 310, column: 11, scope: !7115)
!7129 = !DILocation(line: 310, column: 42, scope: !7115)
!7130 = !DILocation(line: 310, column: 49, scope: !7115)
!7131 = !DILocation(line: 310, column: 55, scope: !7115)
!7132 = !DILocation(line: 310, column: 17, scope: !7115)
!7133 = !DILocation(line: 312, column: 16, scope: !7115)
!7134 = !DILocation(line: 312, column: 8, scope: !7115)
!7135 = !DILocation(line: 312, column: 6, scope: !7115)
!7136 = !DILocation(line: 313, column: 7, scope: !7137)
!7137 = distinct !DILexicalBlock(scope: !7115, file: !3, line: 313, column: 6)
!7138 = !DILocation(line: 313, column: 6, scope: !7115)
!7139 = !DILocation(line: 314, column: 3, scope: !7137)
!7140 = !DILocation(line: 316, column: 15, scope: !7141)
!7141 = distinct !DILexicalBlock(scope: !7115, file: !3, line: 316, column: 6)
!7142 = !DILocation(line: 316, column: 22, scope: !7141)
!7143 = !DILocation(line: 316, column: 34, scope: !7141)
!7144 = !DILocation(line: 316, column: 39, scope: !7141)
!7145 = !DILocation(line: 316, column: 6, scope: !7141)
!7146 = !DILocation(line: 316, column: 46, scope: !7141)
!7147 = !DILocation(line: 316, column: 44, scope: !7141)
!7148 = !DILocation(line: 316, column: 6, scope: !7115)
!7149 = !DILocation(line: 317, column: 9, scope: !7150)
!7150 = distinct !DILexicalBlock(scope: !7141, file: !3, line: 316, column: 51)
!7151 = !DILocation(line: 317, column: 3, scope: !7150)
!7152 = !DILocation(line: 318, column: 20, scope: !7150)
!7153 = !DILocation(line: 319, column: 3, scope: !7150)
!7154 = !DILocation(line: 322, column: 9, scope: !7115)
!7155 = !DILocation(line: 322, column: 2, scope: !7115)
!7156 = !DILocation(line: 323, column: 1, scope: !7115)
!7157 = distinct !DISubprogram(name: "efi_crc32", scope: !3, file: !3, line: 120, type: !7158, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7160)
!7158 = !DISubroutineType(types: !7159)
!7159 = !{!205, !1985, !200}
!7160 = !{!7161, !7162}
!7161 = !DILocalVariable(name: "buf", arg: 1, scope: !7157, file: !3, line: 120, type: !1985)
!7162 = !DILocalVariable(name: "len", arg: 2, scope: !7157, file: !3, line: 120, type: !200)
!7163 = !DILocation(line: 120, column: 23, scope: !7157)
!7164 = !DILocation(line: 120, column: 42, scope: !7157)
!7165 = !DILocation(line: 122, column: 10, scope: !7157)
!7166 = !DILocation(line: 122, column: 31, scope: !7157)
!7167 = !DILocation(line: 122, column: 9, scope: !7157)
!7168 = !DILocation(line: 122, column: 2, scope: !7157)
!7169 = distinct !DISubprogram(name: "alloc_read_gpt_entries", scope: !3, file: !3, line: 271, type: !7170, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7172)
!7170 = !DISubroutineType(types: !7171)
!7171 = !{!5541, !341, !5516}
!7172 = !{!7173, !7174, !7175, !7176}
!7173 = !DILocalVariable(name: "state", arg: 1, scope: !7169, file: !3, line: 271, type: !341)
!7174 = !DILocalVariable(name: "gpt", arg: 2, scope: !7169, file: !3, line: 272, type: !5516)
!7175 = !DILocalVariable(name: "count", scope: !7169, file: !3, line: 274, type: !209)
!7176 = !DILocalVariable(name: "pte", scope: !7169, file: !3, line: 275, type: !5541)
!7177 = !DILocation(line: 271, column: 68, scope: !7169)
!7178 = !DILocation(line: 272, column: 19, scope: !7169)
!7179 = !DILocation(line: 274, column: 2, scope: !7169)
!7180 = !DILocation(line: 274, column: 9, scope: !7169)
!7181 = !DILocation(line: 275, column: 2, scope: !7169)
!7182 = !DILocation(line: 275, column: 13, scope: !7169)
!7183 = !DILocation(line: 277, column: 7, scope: !7184)
!7184 = distinct !DILexicalBlock(scope: !7169, file: !3, line: 277, column: 6)
!7185 = !DILocation(line: 277, column: 6, scope: !7169)
!7186 = !DILocation(line: 278, column: 3, scope: !7184)
!7187 = !DILocation(line: 280, column: 18, scope: !7169)
!7188 = !DILocation(line: 280, column: 10, scope: !7169)
!7189 = !DILocation(line: 281, column: 17, scope: !7169)
!7190 = !DILocation(line: 280, column: 58, scope: !7169)
!7191 = !DILocation(line: 280, column: 8, scope: !7169)
!7192 = !DILocation(line: 282, column: 7, scope: !7193)
!7193 = distinct !DILexicalBlock(scope: !7169, file: !3, line: 282, column: 6)
!7194 = !DILocation(line: 282, column: 6, scope: !7169)
!7195 = !DILocation(line: 283, column: 3, scope: !7193)
!7196 = !DILocation(line: 284, column: 16, scope: !7169)
!7197 = !DILocation(line: 284, column: 8, scope: !7169)
!7198 = !DILocation(line: 284, column: 6, scope: !7169)
!7199 = !DILocation(line: 285, column: 7, scope: !7200)
!7200 = distinct !DILexicalBlock(scope: !7169, file: !3, line: 285, column: 6)
!7201 = !DILocation(line: 285, column: 6, scope: !7169)
!7202 = !DILocation(line: 286, column: 3, scope: !7200)
!7203 = !DILocation(line: 288, column: 15, scope: !7204)
!7204 = distinct !DILexicalBlock(scope: !7169, file: !3, line: 288, column: 6)
!7205 = !DILocation(line: 288, column: 22, scope: !7204)
!7206 = !DILocation(line: 289, column: 11, scope: !7204)
!7207 = !DILocation(line: 289, column: 16, scope: !7204)
!7208 = !DILocation(line: 288, column: 6, scope: !7204)
!7209 = !DILocation(line: 289, column: 25, scope: !7204)
!7210 = !DILocation(line: 289, column: 23, scope: !7204)
!7211 = !DILocation(line: 288, column: 6, scope: !7169)
!7212 = !DILocation(line: 290, column: 9, scope: !7213)
!7213 = distinct !DILexicalBlock(scope: !7204, file: !3, line: 289, column: 32)
!7214 = !DILocation(line: 290, column: 3, scope: !7213)
!7215 = !DILocation(line: 291, column: 20, scope: !7213)
!7216 = !DILocation(line: 292, column: 3, scope: !7213)
!7217 = !DILocation(line: 294, column: 9, scope: !7169)
!7218 = !DILocation(line: 294, column: 2, scope: !7169)
!7219 = !DILocation(line: 295, column: 1, scope: !7169)
!7220 = !DISubprogram(name: "crc32_le", scope: !7221, file: !7221, line: 11, type: !7222, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7221 = !DIFile(filename: "./include/linux/crc32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "599e6bac06870ac8b267770ea75a1e89")
!7222 = !DISubroutineType(types: !7223)
!7223 = !{!205, !205, !206, !209}
!7224 = distinct !DISubprogram(name: "div_u64", scope: !7225, file: !7225, line: 127, type: !7226, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7228)
!7225 = !DIFile(filename: "./include/linux/math64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d8ed26cb78f71dd5066a07a0684eae84")
!7226 = !DISubroutineType(types: !7227)
!7227 = !{!208, !208, !205}
!7228 = !{!7229, !7230, !7231}
!7229 = !DILocalVariable(name: "dividend", arg: 1, scope: !7224, file: !7225, line: 127, type: !208)
!7230 = !DILocalVariable(name: "divisor", arg: 2, scope: !7224, file: !7225, line: 127, type: !205)
!7231 = !DILocalVariable(name: "remainder", scope: !7224, file: !7225, line: 129, type: !205)
!7232 = !DILocation(line: 127, column: 31, scope: !7224)
!7233 = !DILocation(line: 127, column: 45, scope: !7224)
!7234 = !DILocation(line: 129, column: 2, scope: !7224)
!7235 = !DILocation(line: 129, column: 6, scope: !7224)
!7236 = !DILocation(line: 130, column: 21, scope: !7224)
!7237 = !DILocation(line: 130, column: 31, scope: !7224)
!7238 = !DILocation(line: 130, column: 9, scope: !7224)
!7239 = !DILocation(line: 131, column: 1, scope: !7224)
!7240 = !DILocation(line: 130, column: 2, scope: !7224)
!7241 = distinct !DISubprogram(name: "bdev_nr_bytes", scope: !156, file: !156, line: 783, type: !7242, scopeLine: 784, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7244)
!7242 = !DISubroutineType(types: !7243)
!7243 = !{!213, !401}
!7244 = !{!7245}
!7245 = !DILocalVariable(name: "bdev", arg: 1, scope: !7241, file: !156, line: 783, type: !401)
!7246 = !DILocation(line: 783, column: 57, scope: !7241)
!7247 = !DILocation(line: 785, column: 33, scope: !7241)
!7248 = !DILocation(line: 785, column: 17, scope: !7241)
!7249 = !DILocation(line: 785, column: 39, scope: !7241)
!7250 = !DILocation(line: 785, column: 2, scope: !7241)
!7251 = distinct !DISubprogram(name: "div_u64_rem", scope: !7225, file: !7225, line: 26, type: !7252, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7254)
!7252 = !DISubroutineType(types: !7253)
!7253 = !{!208, !208, !205, !3044}
!7254 = !{!7255, !7256, !7257}
!7255 = !DILocalVariable(name: "dividend", arg: 1, scope: !7251, file: !7225, line: 26, type: !208)
!7256 = !DILocalVariable(name: "divisor", arg: 2, scope: !7251, file: !7225, line: 26, type: !205)
!7257 = !DILocalVariable(name: "remainder", arg: 3, scope: !7251, file: !7225, line: 26, type: !3044)
!7258 = !DILocation(line: 26, column: 35, scope: !7251)
!7259 = !DILocation(line: 26, column: 49, scope: !7251)
!7260 = !DILocation(line: 26, column: 63, scope: !7251)
!7261 = !DILocation(line: 28, column: 15, scope: !7251)
!7262 = !DILocation(line: 28, column: 26, scope: !7251)
!7263 = !DILocation(line: 28, column: 24, scope: !7251)
!7264 = !DILocation(line: 28, column: 3, scope: !7251)
!7265 = !DILocation(line: 28, column: 13, scope: !7251)
!7266 = !DILocation(line: 29, column: 9, scope: !7251)
!7267 = !DILocation(line: 29, column: 20, scope: !7251)
!7268 = !DILocation(line: 29, column: 18, scope: !7251)
!7269 = !DILocation(line: 29, column: 2, scope: !7251)
!7270 = !DISubprogram(name: "snprintf", scope: !7271, file: !7271, line: 12, type: !7272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7271 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!7272 = !DISubroutineType(types: !7273)
!7273 = !{!123, !230, !209, !223, null}
!7274 = !DISubprogram(name: "memcmp", scope: !6123, file: !6123, line: 196, type: !7275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7275 = !DISubroutineType(types: !7276)
!7276 = !{!123, !1985, !1985, !210}
!7277 = !DISubprogram(name: "sprintf", scope: !7271, file: !7271, line: 10, type: !7278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7278 = !DISubroutineType(types: !7279)
!7279 = !{!123, !230, !223, null}
