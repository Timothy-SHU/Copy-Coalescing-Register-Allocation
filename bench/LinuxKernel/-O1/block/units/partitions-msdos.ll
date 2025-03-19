; ModuleID = 'block/partitions/msdos.c'
source_filename = "block/partitions/msdos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.17 = type { i8, ptr }
%struct.Sector = type { ptr }
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
%struct.msdos_partition = type { i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.fat_boot_sector = type { [3 x i8], [8 x i8], [2 x i8], i8, i16, i8, [2 x i8], [2 x i8], i8, i16, i16, i16, i32, i32, %union.anon.13 }
%union.anon.13 = type { %struct.anon.15 }
%struct.anon.15 = type { i32, i16, [2 x i8], i32, i16, i16, [6 x i16], i8, i8, i8, [4 x i8], [11 x i8], [8 x i8] }
%struct.anon.16 = type { i64, i64, i32, i8, %struct.partition_meta_info }
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, %struct.mutex, ptr, ptr, i32, %struct.xarray, i32, ptr, i64, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.refcount_struct, ptr, ptr, i32, i64, i32, i32, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i64], ptr, %struct.list_head, %struct.mutex, %struct.queue_limits, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, ptr, ptr, ptr, %struct.mutex, i8 }
%struct.percpu_ref = type { i64, ptr }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.queue_limits = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.folio = type { %union.anon.18, %union.anon.33, %union.anon.35 }
%union.anon.18 = type { %struct.page }
%struct.page = type { i64, %union.anon.23, %union.anon.32, %struct.atomic_t, [8 x i8] }
%union.anon.23 = type { %struct.anon.24 }
%struct.anon.24 = type { %union.anon.25, ptr, %union.anon.27, i64 }
%union.anon.25 = type { %struct.list_head }
%union.anon.27 = type { i64 }
%union.anon.32 = type { %struct.atomic_t }
%union.anon.33 = type { %struct.page }
%union.anon.35 = type { %struct.page }
%struct.anon.38 = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c" [AIX]\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [3 x i8] c" <\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [3 x i8] c" >\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [5 x i8] c"[DM]\00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [6 x i8] c"[EZD]\00", align 1, !dbg !24
@subtypes = internal global [8 x %struct.anon.17] [%struct.anon.17 { i8 -91, ptr @parse_freebsd }, %struct.anon.17 { i8 -87, ptr @parse_netbsd }, %struct.anon.17 { i8 -90, ptr @parse_openbsd }, %struct.anon.17 { i8 -127, ptr @parse_minix }, %struct.anon.17 { i8 99, ptr @parse_unixware }, %struct.anon.17 { i8 -126, ptr @parse_solaris_x86 }, %struct.anon.17 { i8 -65, ptr @parse_solaris_x86 }, %struct.anon.17 zeroinitializer], align 16, !dbg !29
@.str.6 = private unnamed_addr constant [6 x i8] c" %s%d\00", align 1, !dbg !331
@.str.7 = private unnamed_addr constant [10 x i8] c"%08x-%02x\00", align 1, !dbg !334

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @msdos_partition(ptr noundef %state) #0 align 16 !dbg !5541 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca ptr, align 8
  %sector_size = alloca i64, align 8
  %sect = alloca %struct.Sector, align 8
  %data = alloca ptr, align 8
  %p = alloca ptr, align 8
  %fb = alloca ptr, align 8
  %slot = alloca i32, align 4
  %disksig = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %start = alloca i64, align 8
  %size = alloca i64, align 8
  %n = alloca i64, align 8
  %__UNIQUE_ID___x354 = alloca i64, align 8
  %__UNIQUE_ID___y355 = alloca i64, align 8
  %__UNIQUE_ID___x352 = alloca i64, align 8
  %__UNIQUE_ID___y353 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp72 = alloca i64, align 8
  %id = alloca i8, align 1
  %n119 = alloca i32, align 4
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !5545, metadata !DIExpression()), !dbg !5577
  call void @llvm.lifetime.start.p0(i64 8, ptr %sector_size) #7, !dbg !5578
  call void @llvm.dbg.declare(metadata ptr %sector_size, metadata !5546, metadata !DIExpression()), !dbg !5579
  call void @llvm.lifetime.start.p0(i64 8, ptr %sect) #7, !dbg !5580
  call void @llvm.dbg.declare(metadata ptr %sect, metadata !5547, metadata !DIExpression()), !dbg !5581
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #7, !dbg !5582
  call void @llvm.dbg.declare(metadata ptr %data, metadata !5552, metadata !DIExpression()), !dbg !5583
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #7, !dbg !5584
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5554, metadata !DIExpression()), !dbg !5585
  call void @llvm.lifetime.start.p0(i64 8, ptr %fb) #7, !dbg !5586
  call void @llvm.dbg.declare(metadata ptr %fb, metadata !5555, metadata !DIExpression()), !dbg !5587
  call void @llvm.lifetime.start.p0(i64 4, ptr %slot) #7, !dbg !5588
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !5556, metadata !DIExpression()), !dbg !5589
  call void @llvm.lifetime.start.p0(i64 4, ptr %disksig) #7, !dbg !5590
  call void @llvm.dbg.declare(metadata ptr %disksig, metadata !5557, metadata !DIExpression()), !dbg !5591
  %0 = load ptr, ptr %state.addr, align 8, !dbg !5592
  %disk = getelementptr inbounds %struct.parsed_partitions, ptr %0, i32 0, i32 0, !dbg !5593
  %1 = load ptr, ptr %disk, align 8, !dbg !5593
  %queue = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 9, !dbg !5594
  %2 = load ptr, ptr %queue, align 8, !dbg !5594
  %call = call i32 @queue_logical_block_size(ptr noundef %2) #8, !dbg !5595
  %div = udiv i32 %call, 512, !dbg !5596
  %conv = zext i32 %div to i64, !dbg !5595
  store i64 %conv, ptr %sector_size, align 8, !dbg !5597
  %3 = load ptr, ptr %state.addr, align 8, !dbg !5598
  %call1 = call ptr @read_part_sector(ptr noundef %3, i64 noundef 0, ptr noundef %sect) #8, !dbg !5599
  store ptr %call1, ptr %data, align 8, !dbg !5600
  %4 = load ptr, ptr %data, align 8, !dbg !5601
  %tobool = icmp ne ptr %4, null, !dbg !5601
  br i1 %tobool, label %if.end, label %if.then, !dbg !5603

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !5604
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup161, !dbg !5604

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %state.addr, align 8, !dbg !5605
  %6 = load ptr, ptr %data, align 8, !dbg !5607
  %call2 = call i32 @aix_magic_present(ptr noundef %5, ptr noundef %6) #8, !dbg !5608
  %tobool3 = icmp ne i32 %call2, 0, !dbg !5608
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !5609

if.then4:                                         ; preds = %if.end
  %coerce.dive = getelementptr inbounds %struct.Sector, ptr %sect, i32 0, i32 0, !dbg !5610
  %7 = load ptr, ptr %coerce.dive, align 8, !dbg !5610
  call void @put_dev_sector(ptr %7) #8, !dbg !5610
  %8 = load ptr, ptr %state.addr, align 8, !dbg !5612
  %pp_buf = getelementptr inbounds %struct.parsed_partitions, ptr %8, i32 0, i32 6, !dbg !5613
  %9 = load ptr, ptr %pp_buf, align 8, !dbg !5613
  %call5 = call i64 @strlcat(ptr noundef %9, ptr noundef @.str, i64 noundef 4096) #8, !dbg !5614
  store i32 0, ptr %retval, align 4, !dbg !5615
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup161, !dbg !5615

if.end6:                                          ; preds = %if.end
  %10 = load ptr, ptr %data, align 8, !dbg !5616
  %add.ptr = getelementptr i8, ptr %10, i64 510, !dbg !5618
  %call7 = call i32 @msdos_magic_present(ptr noundef %add.ptr) #8, !dbg !5619
  %tobool8 = icmp ne i32 %call7, 0, !dbg !5619
  br i1 %tobool8, label %if.end11, label %if.then9, !dbg !5620

if.then9:                                         ; preds = %if.end6
  %coerce.dive10 = getelementptr inbounds %struct.Sector, ptr %sect, i32 0, i32 0, !dbg !5621
  %11 = load ptr, ptr %coerce.dive10, align 8, !dbg !5621
  call void @put_dev_sector(ptr %11) #8, !dbg !5621
  store i32 0, ptr %retval, align 4, !dbg !5623
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup161, !dbg !5623

if.end11:                                         ; preds = %if.end6
  %12 = load ptr, ptr %data, align 8, !dbg !5624
  %add.ptr12 = getelementptr i8, ptr %12, i64 446, !dbg !5625
  store ptr %add.ptr12, ptr %p, align 8, !dbg !5626
  store i32 1, ptr %slot, align 4, !dbg !5627
  br label %for.cond, !dbg !5629

for.cond:                                         ; preds = %for.inc, %if.end11
  %13 = load i32, ptr %slot, align 4, !dbg !5630
  %cmp = icmp sle i32 %13, 4, !dbg !5632
  br i1 %cmp, label %for.body, label %for.end, !dbg !5633

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %p, align 8, !dbg !5634
  %boot_ind = getelementptr inbounds %struct.msdos_partition, ptr %14, i32 0, i32 0, !dbg !5637
  %15 = load i8, ptr %boot_ind, align 1, !dbg !5637
  %conv14 = zext i8 %15 to i32, !dbg !5634
  %cmp15 = icmp ne i32 %conv14, 0, !dbg !5638
  br i1 %cmp15, label %land.lhs.true, label %if.end38, !dbg !5639

land.lhs.true:                                    ; preds = %for.body
  %16 = load ptr, ptr %p, align 8, !dbg !5640
  %boot_ind17 = getelementptr inbounds %struct.msdos_partition, ptr %16, i32 0, i32 0, !dbg !5641
  %17 = load i8, ptr %boot_ind17, align 1, !dbg !5641
  %conv18 = zext i8 %17 to i32, !dbg !5640
  %cmp19 = icmp ne i32 %conv18, 128, !dbg !5642
  br i1 %cmp19, label %if.then21, label %if.end38, !dbg !5643

if.then21:                                        ; preds = %land.lhs.true
  %18 = load ptr, ptr %data, align 8, !dbg !5644
  store ptr %18, ptr %fb, align 8, !dbg !5646
  %19 = load i32, ptr %slot, align 4, !dbg !5647
  %cmp22 = icmp eq i32 %19, 1, !dbg !5649
  br i1 %cmp22, label %land.lhs.true24, label %if.else, !dbg !5650

land.lhs.true24:                                  ; preds = %if.then21
  %20 = load ptr, ptr %fb, align 8, !dbg !5651
  %reserved = getelementptr inbounds %struct.fat_boot_sector, ptr %20, i32 0, i32 4, !dbg !5652
  %21 = load i16, ptr %reserved, align 2, !dbg !5652
  %conv25 = zext i16 %21 to i32, !dbg !5651
  %tobool26 = icmp ne i32 %conv25, 0, !dbg !5651
  br i1 %tobool26, label %land.lhs.true27, label %if.else, !dbg !5653

land.lhs.true27:                                  ; preds = %land.lhs.true24
  %22 = load ptr, ptr %fb, align 8, !dbg !5654
  %fats = getelementptr inbounds %struct.fat_boot_sector, ptr %22, i32 0, i32 5, !dbg !5655
  %23 = load i8, ptr %fats, align 4, !dbg !5655
  %conv28 = zext i8 %23 to i32, !dbg !5654
  %tobool29 = icmp ne i32 %conv28, 0, !dbg !5654
  br i1 %tobool29, label %land.lhs.true30, label %if.else, !dbg !5656

land.lhs.true30:                                  ; preds = %land.lhs.true27
  %24 = load ptr, ptr %fb, align 8, !dbg !5657
  %media = getelementptr inbounds %struct.fat_boot_sector, ptr %24, i32 0, i32 8, !dbg !5658
  %25 = load i8, ptr %media, align 1, !dbg !5658
  %call31 = call i32 @fat_valid_media(i8 noundef zeroext %25) #8, !dbg !5659
  %tobool32 = icmp ne i32 %call31, 0, !dbg !5659
  br i1 %tobool32, label %if.then33, label %if.else, !dbg !5660

if.then33:                                        ; preds = %land.lhs.true30
  %26 = load ptr, ptr %state.addr, align 8, !dbg !5661
  %pp_buf34 = getelementptr inbounds %struct.parsed_partitions, ptr %26, i32 0, i32 6, !dbg !5663
  %27 = load ptr, ptr %pp_buf34, align 8, !dbg !5663
  %call35 = call i64 @strlcat(ptr noundef %27, ptr noundef @.str.1, i64 noundef 4096) #8, !dbg !5664
  %coerce.dive36 = getelementptr inbounds %struct.Sector, ptr %sect, i32 0, i32 0, !dbg !5665
  %28 = load ptr, ptr %coerce.dive36, align 8, !dbg !5665
  call void @put_dev_sector(ptr %28) #8, !dbg !5665
  store i32 1, ptr %retval, align 4, !dbg !5666
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup161, !dbg !5666

if.else:                                          ; preds = %land.lhs.true30, %land.lhs.true27, %land.lhs.true24, %if.then21
  %coerce.dive37 = getelementptr inbounds %struct.Sector, ptr %sect, i32 0, i32 0, !dbg !5667
  %29 = load ptr, ptr %coerce.dive37, align 8, !dbg !5667
  call void @put_dev_sector(ptr %29) #8, !dbg !5667
  store i32 0, ptr %retval, align 4, !dbg !5669
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup161, !dbg !5669

if.end38:                                         ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !5670

for.inc:                                          ; preds = %if.end38
  %30 = load i32, ptr %slot, align 4, !dbg !5671
  %inc = add i32 %30, 1, !dbg !5671
  store i32 %inc, ptr %slot, align 4, !dbg !5671
  %31 = load ptr, ptr %p, align 8, !dbg !5672
  %incdec.ptr = getelementptr %struct.msdos_partition, ptr %31, i32 1, !dbg !5672
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !5672
  br label %for.cond, !dbg !5673, !llvm.loop !5674

for.end:                                          ; preds = %for.cond
  %32 = load ptr, ptr %data, align 8, !dbg !5678
  %add.ptr39 = getelementptr i8, ptr %32, i64 446, !dbg !5679
  store ptr %add.ptr39, ptr %p, align 8, !dbg !5680
  store i32 1, ptr %slot, align 4, !dbg !5681
  br label %for.cond40, !dbg !5683

for.cond40:                                       ; preds = %for.inc50, %for.end
  %33 = load i32, ptr %slot, align 4, !dbg !5684
  %cmp41 = icmp sle i32 %33, 4, !dbg !5686
  br i1 %cmp41, label %for.body43, label %for.end53, !dbg !5687

for.body43:                                       ; preds = %for.cond40
  %34 = load ptr, ptr %p, align 8, !dbg !5688
  %sys_ind = getelementptr inbounds %struct.msdos_partition, ptr %34, i32 0, i32 4, !dbg !5691
  %35 = load i8, ptr %sys_ind, align 1, !dbg !5691
  %conv44 = zext i8 %35 to i32, !dbg !5688
  %cmp45 = icmp eq i32 %conv44, 238, !dbg !5692
  br i1 %cmp45, label %if.then47, label %if.end49, !dbg !5693

if.then47:                                        ; preds = %for.body43
  %coerce.dive48 = getelementptr inbounds %struct.Sector, ptr %sect, i32 0, i32 0, !dbg !5694
  %36 = load ptr, ptr %coerce.dive48, align 8, !dbg !5694
  call void @put_dev_sector(ptr %36) #8, !dbg !5694
  store i32 0, ptr %retval, align 4, !dbg !5696
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup161, !dbg !5696

if.end49:                                         ; preds = %for.body43
  br label %for.inc50, !dbg !5697

for.inc50:                                        ; preds = %if.end49
  %37 = load i32, ptr %slot, align 4, !dbg !5698
  %inc51 = add i32 %37, 1, !dbg !5698
  store i32 %inc51, ptr %slot, align 4, !dbg !5698
  %38 = load ptr, ptr %p, align 8, !dbg !5699
  %incdec.ptr52 = getelementptr %struct.msdos_partition, ptr %38, i32 1, !dbg !5699
  store ptr %incdec.ptr52, ptr %p, align 8, !dbg !5699
  br label %for.cond40, !dbg !5700, !llvm.loop !5701

for.end53:                                        ; preds = %for.cond40
  %39 = load ptr, ptr %data, align 8, !dbg !5703
  %add.ptr54 = getelementptr i8, ptr %39, i64 446, !dbg !5704
  store ptr %add.ptr54, ptr %p, align 8, !dbg !5705
  %40 = load ptr, ptr %data, align 8, !dbg !5706
  %add.ptr55 = getelementptr i8, ptr %40, i64 440, !dbg !5707
  %call56 = call i32 @__le32_to_cpup(ptr noundef %add.ptr55) #8, !dbg !5708
  store i32 %call56, ptr %disksig, align 4, !dbg !5709
  %41 = load ptr, ptr %state.addr, align 8, !dbg !5710
  %next = getelementptr inbounds %struct.parsed_partitions, ptr %41, i32 0, i32 3, !dbg !5711
  store i32 5, ptr %next, align 8, !dbg !5712
  store i32 1, ptr %slot, align 4, !dbg !5713
  br label %for.cond57, !dbg !5714

for.cond57:                                       ; preds = %for.inc107, %for.end53
  %42 = load i32, ptr %slot, align 4, !dbg !5715
  %cmp58 = icmp sle i32 %42, 4, !dbg !5716
  br i1 %cmp58, label %for.body60, label %for.end110, !dbg !5717

for.body60:                                       ; preds = %for.cond57
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #7, !dbg !5718
  call void @llvm.dbg.declare(metadata ptr %start, metadata !5558, metadata !DIExpression()), !dbg !5719
  %43 = load ptr, ptr %p, align 8, !dbg !5720
  %call61 = call i64 @start_sect(ptr noundef %43) #8, !dbg !5721
  %44 = load i64, ptr %sector_size, align 8, !dbg !5722
  %mul = mul i64 %call61, %44, !dbg !5723
  store i64 %mul, ptr %start, align 8, !dbg !5719
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #7, !dbg !5724
  call void @llvm.dbg.declare(metadata ptr %size, metadata !5562, metadata !DIExpression()), !dbg !5725
  %45 = load ptr, ptr %p, align 8, !dbg !5726
  %call62 = call i64 @nr_sects(ptr noundef %45) #8, !dbg !5727
  %46 = load i64, ptr %sector_size, align 8, !dbg !5728
  %mul63 = mul i64 %call62, %46, !dbg !5729
  store i64 %mul63, ptr %size, align 8, !dbg !5725
  %47 = load i64, ptr %size, align 8, !dbg !5730
  %tobool64 = icmp ne i64 %47, 0, !dbg !5730
  br i1 %tobool64, label %if.end66, label %if.then65, !dbg !5732

if.then65:                                        ; preds = %for.body60
  store i32 10, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5733

if.end66:                                         ; preds = %for.body60
  %48 = load ptr, ptr %p, align 8, !dbg !5734
  %call67 = call i32 @is_extended_partition(ptr noundef %48) #8, !dbg !5735
  %tobool68 = icmp ne i32 %call67, 0, !dbg !5735
  br i1 %tobool68, label %if.then69, label %if.end83, !dbg !5736

if.then69:                                        ; preds = %if.end66
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #7, !dbg !5737
  call void @llvm.dbg.declare(metadata ptr %n, metadata !5563, metadata !DIExpression()), !dbg !5738
  store i64 2, ptr %n, align 8, !dbg !5738
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x354) #7, !dbg !5739
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x354, metadata !5566, metadata !DIExpression()), !dbg !5739
  %49 = load i64, ptr %size, align 8, !dbg !5739
  store i64 %49, ptr %__UNIQUE_ID___x354, align 8, !dbg !5739
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y355) #7, !dbg !5739
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y355, metadata !5568, metadata !DIExpression()), !dbg !5739
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x352) #7, !dbg !5740
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x352, metadata !5569, metadata !DIExpression()), !dbg !5740
  %50 = load i64, ptr %sector_size, align 8, !dbg !5740
  store i64 %50, ptr %__UNIQUE_ID___x352, align 8, !dbg !5740
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y353) #7, !dbg !5740
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y353, metadata !5571, metadata !DIExpression()), !dbg !5740
  %51 = load i64, ptr %n, align 8, !dbg !5740
  store i64 %51, ptr %__UNIQUE_ID___y353, align 8, !dbg !5740
  %52 = load i64, ptr %__UNIQUE_ID___x352, align 8, !dbg !5740
  %53 = load i64, ptr %__UNIQUE_ID___y353, align 8, !dbg !5740
  %cmp70 = icmp ugt i64 %52, %53, !dbg !5740
  br i1 %cmp70, label %cond.true, label %cond.false, !dbg !5740

cond.true:                                        ; preds = %if.then69
  %54 = load i64, ptr %__UNIQUE_ID___x352, align 8, !dbg !5740
  br label %cond.end, !dbg !5740

cond.false:                                       ; preds = %if.then69
  %55 = load i64, ptr %__UNIQUE_ID___y353, align 8, !dbg !5740
  br label %cond.end, !dbg !5740

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %54, %cond.true ], [ %55, %cond.false ], !dbg !5740
  store i64 %cond, ptr %tmp, align 8, !dbg !5740
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y353) #7, !dbg !5739
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x352) #7, !dbg !5739
  %56 = load i64, ptr %tmp, align 8, !dbg !5740
  store i64 %56, ptr %__UNIQUE_ID___y355, align 8, !dbg !5739
  %57 = load i64, ptr %__UNIQUE_ID___x354, align 8, !dbg !5739
  %58 = load i64, ptr %__UNIQUE_ID___y355, align 8, !dbg !5739
  %cmp73 = icmp ult i64 %57, %58, !dbg !5739
  br i1 %cmp73, label %cond.true75, label %cond.false76, !dbg !5739

cond.true75:                                      ; preds = %cond.end
  %59 = load i64, ptr %__UNIQUE_ID___x354, align 8, !dbg !5739
  br label %cond.end77, !dbg !5739

cond.false76:                                     ; preds = %cond.end
  %60 = load i64, ptr %__UNIQUE_ID___y355, align 8, !dbg !5739
  br label %cond.end77, !dbg !5739

cond.end77:                                       ; preds = %cond.false76, %cond.true75
  %cond78 = phi i64 [ %59, %cond.true75 ], [ %60, %cond.false76 ], !dbg !5739
  store i64 %cond78, ptr %tmp72, align 8, !dbg !5739
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y355) #7, !dbg !5741
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x354) #7, !dbg !5741
  %61 = load i64, ptr %tmp72, align 8, !dbg !5739
  store i64 %61, ptr %n, align 8, !dbg !5742
  %62 = load ptr, ptr %state.addr, align 8, !dbg !5743
  %63 = load i32, ptr %slot, align 4, !dbg !5744
  %64 = load i64, ptr %start, align 8, !dbg !5745
  %65 = load i64, ptr %n, align 8, !dbg !5746
  call void @put_partition(ptr noundef %62, i32 noundef %63, i64 noundef %64, i64 noundef %65) #8, !dbg !5747
  %66 = load ptr, ptr %state.addr, align 8, !dbg !5748
  %pp_buf79 = getelementptr inbounds %struct.parsed_partitions, ptr %66, i32 0, i32 6, !dbg !5749
  %67 = load ptr, ptr %pp_buf79, align 8, !dbg !5749
  %call80 = call i64 @strlcat(ptr noundef %67, ptr noundef @.str.2, i64 noundef 4096) #8, !dbg !5750
  %68 = load ptr, ptr %state.addr, align 8, !dbg !5751
  %69 = load i64, ptr %start, align 8, !dbg !5752
  %70 = load i64, ptr %size, align 8, !dbg !5753
  %71 = load i32, ptr %disksig, align 4, !dbg !5754
  call void @parse_extended(ptr noundef %68, i64 noundef %69, i64 noundef %70, i32 noundef %71) #8, !dbg !5755
  %72 = load ptr, ptr %state.addr, align 8, !dbg !5756
  %pp_buf81 = getelementptr inbounds %struct.parsed_partitions, ptr %72, i32 0, i32 6, !dbg !5757
  %73 = load ptr, ptr %pp_buf81, align 8, !dbg !5757
  %call82 = call i64 @strlcat(ptr noundef %73, ptr noundef @.str.3, i64 noundef 4096) #8, !dbg !5758
  store i32 10, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #7, !dbg !5759
  br label %cleanup

if.end83:                                         ; preds = %if.end66
  %74 = load ptr, ptr %state.addr, align 8, !dbg !5760
  %75 = load i32, ptr %slot, align 4, !dbg !5761
  %76 = load i64, ptr %start, align 8, !dbg !5762
  %77 = load i64, ptr %size, align 8, !dbg !5763
  call void @put_partition(ptr noundef %74, i32 noundef %75, i64 noundef %76, i64 noundef %77) #8, !dbg !5764
  %78 = load ptr, ptr %state.addr, align 8, !dbg !5765
  %79 = load i32, ptr %slot, align 4, !dbg !5766
  %80 = load i32, ptr %disksig, align 4, !dbg !5767
  call void @set_info(ptr noundef %78, i32 noundef %79, i32 noundef %80) #8, !dbg !5768
  %81 = load ptr, ptr %p, align 8, !dbg !5769
  %sys_ind84 = getelementptr inbounds %struct.msdos_partition, ptr %81, i32 0, i32 4, !dbg !5771
  %82 = load i8, ptr %sys_ind84, align 1, !dbg !5771
  %conv85 = zext i8 %82 to i32, !dbg !5769
  %cmp86 = icmp eq i32 %conv85, 253, !dbg !5772
  br i1 %cmp86, label %if.then88, label %if.end89, !dbg !5773

if.then88:                                        ; preds = %if.end83
  %83 = load ptr, ptr %state.addr, align 8, !dbg !5774
  %parts = getelementptr inbounds %struct.parsed_partitions, ptr %83, i32 0, i32 2, !dbg !5775
  %84 = load ptr, ptr %parts, align 8, !dbg !5775
  %85 = load i32, ptr %slot, align 4, !dbg !5776
  %idxprom = sext i32 %85 to i64, !dbg !5774
  %arrayidx = getelementptr %struct.anon.16, ptr %84, i64 %idxprom, !dbg !5774
  %flags = getelementptr inbounds %struct.anon.16, ptr %arrayidx, i32 0, i32 2, !dbg !5777
  store i32 1, ptr %flags, align 8, !dbg !5778
  br label %if.end89, !dbg !5774

if.end89:                                         ; preds = %if.then88, %if.end83
  %86 = load ptr, ptr %p, align 8, !dbg !5779
  %sys_ind90 = getelementptr inbounds %struct.msdos_partition, ptr %86, i32 0, i32 4, !dbg !5781
  %87 = load i8, ptr %sys_ind90, align 1, !dbg !5781
  %conv91 = zext i8 %87 to i32, !dbg !5779
  %cmp92 = icmp eq i32 %conv91, 84, !dbg !5782
  br i1 %cmp92, label %if.then94, label %if.end97, !dbg !5783

if.then94:                                        ; preds = %if.end89
  %88 = load ptr, ptr %state.addr, align 8, !dbg !5784
  %pp_buf95 = getelementptr inbounds %struct.parsed_partitions, ptr %88, i32 0, i32 6, !dbg !5785
  %89 = load ptr, ptr %pp_buf95, align 8, !dbg !5785
  %call96 = call i64 @strlcat(ptr noundef %89, ptr noundef @.str.4, i64 noundef 4096) #8, !dbg !5786
  br label %if.end97, !dbg !5786

if.end97:                                         ; preds = %if.then94, %if.end89
  %90 = load ptr, ptr %p, align 8, !dbg !5787
  %sys_ind98 = getelementptr inbounds %struct.msdos_partition, ptr %90, i32 0, i32 4, !dbg !5789
  %91 = load i8, ptr %sys_ind98, align 1, !dbg !5789
  %conv99 = zext i8 %91 to i32, !dbg !5787
  %cmp100 = icmp eq i32 %conv99, 85, !dbg !5790
  br i1 %cmp100, label %if.then102, label %if.end105, !dbg !5791

if.then102:                                       ; preds = %if.end97
  %92 = load ptr, ptr %state.addr, align 8, !dbg !5792
  %pp_buf103 = getelementptr inbounds %struct.parsed_partitions, ptr %92, i32 0, i32 6, !dbg !5793
  %93 = load ptr, ptr %pp_buf103, align 8, !dbg !5793
  %call104 = call i64 @strlcat(ptr noundef %93, ptr noundef @.str.5, i64 noundef 4096) #8, !dbg !5794
  br label %if.end105, !dbg !5794

if.end105:                                        ; preds = %if.then102, %if.end97
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5795
  br label %cleanup, !dbg !5795

cleanup:                                          ; preds = %if.end105, %cond.end77, %if.then65
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #7, !dbg !5795
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #7, !dbg !5795
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 10, label %for.inc107
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc107, !dbg !5796

for.inc107:                                       ; preds = %cleanup.cont, %cleanup
  %94 = load i32, ptr %slot, align 4, !dbg !5797
  %inc108 = add i32 %94, 1, !dbg !5797
  store i32 %inc108, ptr %slot, align 4, !dbg !5797
  %95 = load ptr, ptr %p, align 8, !dbg !5798
  %incdec.ptr109 = getelementptr %struct.msdos_partition, ptr %95, i32 1, !dbg !5798
  store ptr %incdec.ptr109, ptr %p, align 8, !dbg !5798
  br label %for.cond57, !dbg !5799, !llvm.loop !5800

for.end110:                                       ; preds = %for.cond57
  %96 = load ptr, ptr %state.addr, align 8, !dbg !5802
  %pp_buf111 = getelementptr inbounds %struct.parsed_partitions, ptr %96, i32 0, i32 6, !dbg !5803
  %97 = load ptr, ptr %pp_buf111, align 8, !dbg !5803
  %call112 = call i64 @strlcat(ptr noundef %97, ptr noundef @.str.1, i64 noundef 4096) #8, !dbg !5804
  %98 = load ptr, ptr %data, align 8, !dbg !5805
  %add.ptr113 = getelementptr i8, ptr %98, i64 446, !dbg !5806
  store ptr %add.ptr113, ptr %p, align 8, !dbg !5807
  store i32 1, ptr %slot, align 4, !dbg !5808
  br label %for.cond114, !dbg !5809

for.cond114:                                      ; preds = %for.inc156, %for.end110
  %99 = load i32, ptr %slot, align 4, !dbg !5810
  %cmp115 = icmp sle i32 %99, 4, !dbg !5811
  br i1 %cmp115, label %for.body117, label %for.end159, !dbg !5812

for.body117:                                      ; preds = %for.cond114
  call void @llvm.lifetime.start.p0(i64 1, ptr %id) #7, !dbg !5813
  call void @llvm.dbg.declare(metadata ptr %id, metadata !5572, metadata !DIExpression()), !dbg !5814
  %100 = load ptr, ptr %p, align 8, !dbg !5815
  %sys_ind118 = getelementptr inbounds %struct.msdos_partition, ptr %100, i32 0, i32 4, !dbg !5816
  %101 = load i8, ptr %sys_ind118, align 1, !dbg !5816
  store i8 %101, ptr %id, align 1, !dbg !5814
  call void @llvm.lifetime.start.p0(i64 4, ptr %n119) #7, !dbg !5817
  call void @llvm.dbg.declare(metadata ptr %n119, metadata !5576, metadata !DIExpression()), !dbg !5818
  %102 = load ptr, ptr %p, align 8, !dbg !5819
  %call120 = call i64 @nr_sects(ptr noundef %102) #8, !dbg !5821
  %tobool121 = icmp ne i64 %call120, 0, !dbg !5821
  br i1 %tobool121, label %if.end123, label %if.then122, !dbg !5822

if.then122:                                       ; preds = %for.body117
  store i32 13, ptr %cleanup.dest.slot, align 4
  br label %cleanup152, !dbg !5823

if.end123:                                        ; preds = %for.body117
  store i32 0, ptr %n119, align 4, !dbg !5824
  br label %for.cond124, !dbg !5826

for.cond124:                                      ; preds = %for.inc136, %if.end123
  %103 = load i32, ptr %n119, align 4, !dbg !5827
  %idxprom125 = sext i32 %103 to i64, !dbg !5829
  %arrayidx126 = getelementptr [8 x %struct.anon.17], ptr @subtypes, i64 0, i64 %idxprom125, !dbg !5829
  %parse = getelementptr inbounds %struct.anon.17, ptr %arrayidx126, i32 0, i32 1, !dbg !5830
  %104 = load ptr, ptr %parse, align 8, !dbg !5830
  %tobool127 = icmp ne ptr %104, null, !dbg !5829
  br i1 %tobool127, label %land.rhs, label %land.end, !dbg !5831

land.rhs:                                         ; preds = %for.cond124
  %105 = load i8, ptr %id, align 1, !dbg !5832
  %conv128 = zext i8 %105 to i32, !dbg !5832
  %106 = load i32, ptr %n119, align 4, !dbg !5833
  %idxprom129 = sext i32 %106 to i64, !dbg !5834
  %arrayidx130 = getelementptr [8 x %struct.anon.17], ptr @subtypes, i64 0, i64 %idxprom129, !dbg !5834
  %id131 = getelementptr inbounds %struct.anon.17, ptr %arrayidx130, i32 0, i32 0, !dbg !5835
  %107 = load i8, ptr %id131, align 16, !dbg !5835
  %conv132 = zext i8 %107 to i32, !dbg !5834
  %cmp133 = icmp ne i32 %conv128, %conv132, !dbg !5836
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond124
  %108 = phi i1 [ false, %for.cond124 ], [ %cmp133, %land.rhs ], !dbg !5837
  br i1 %108, label %for.body135, label %for.end138, !dbg !5838

for.body135:                                      ; preds = %land.end
  br label %for.inc136, !dbg !5838

for.inc136:                                       ; preds = %for.body135
  %109 = load i32, ptr %n119, align 4, !dbg !5839
  %inc137 = add i32 %109, 1, !dbg !5839
  store i32 %inc137, ptr %n119, align 4, !dbg !5839
  br label %for.cond124, !dbg !5840, !llvm.loop !5841

for.end138:                                       ; preds = %land.end
  %110 = load i32, ptr %n119, align 4, !dbg !5843
  %idxprom139 = sext i32 %110 to i64, !dbg !5845
  %arrayidx140 = getelementptr [8 x %struct.anon.17], ptr @subtypes, i64 0, i64 %idxprom139, !dbg !5845
  %parse141 = getelementptr inbounds %struct.anon.17, ptr %arrayidx140, i32 0, i32 1, !dbg !5846
  %111 = load ptr, ptr %parse141, align 8, !dbg !5846
  %tobool142 = icmp ne ptr %111, null, !dbg !5845
  br i1 %tobool142, label %if.end144, label %if.then143, !dbg !5847

if.then143:                                       ; preds = %for.end138
  store i32 13, ptr %cleanup.dest.slot, align 4
  br label %cleanup152, !dbg !5848

if.end144:                                        ; preds = %for.end138
  %112 = load i32, ptr %n119, align 4, !dbg !5849
  %idxprom145 = sext i32 %112 to i64, !dbg !5850
  %arrayidx146 = getelementptr [8 x %struct.anon.17], ptr @subtypes, i64 0, i64 %idxprom145, !dbg !5850
  %parse147 = getelementptr inbounds %struct.anon.17, ptr %arrayidx146, i32 0, i32 1, !dbg !5851
  %113 = load ptr, ptr %parse147, align 8, !dbg !5851
  %114 = load ptr, ptr %state.addr, align 8, !dbg !5852
  %115 = load ptr, ptr %p, align 8, !dbg !5853
  %call148 = call i64 @start_sect(ptr noundef %115) #8, !dbg !5854
  %116 = load i64, ptr %sector_size, align 8, !dbg !5855
  %mul149 = mul i64 %call148, %116, !dbg !5856
  %117 = load ptr, ptr %p, align 8, !dbg !5857
  %call150 = call i64 @nr_sects(ptr noundef %117) #8, !dbg !5858
  %118 = load i64, ptr %sector_size, align 8, !dbg !5859
  %mul151 = mul i64 %call150, %118, !dbg !5860
  %119 = load i32, ptr %slot, align 4, !dbg !5861
  call void %113(ptr noundef %114, i64 noundef %mul149, i64 noundef %mul151, i32 noundef %119) #8, !dbg !5850
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5862
  br label %cleanup152, !dbg !5862

cleanup152:                                       ; preds = %if.end144, %if.then143, %if.then122
  call void @llvm.lifetime.end.p0(i64 4, ptr %n119) #7, !dbg !5862
  call void @llvm.lifetime.end.p0(i64 1, ptr %id) #7, !dbg !5862
  %cleanup.dest154 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest154, label %unreachable [
    i32 0, label %cleanup.cont155
    i32 13, label %for.inc156
  ]

cleanup.cont155:                                  ; preds = %cleanup152
  br label %for.inc156, !dbg !5863

for.inc156:                                       ; preds = %cleanup.cont155, %cleanup152
  %120 = load i32, ptr %slot, align 4, !dbg !5864
  %inc157 = add i32 %120, 1, !dbg !5864
  store i32 %inc157, ptr %slot, align 4, !dbg !5864
  %121 = load ptr, ptr %p, align 8, !dbg !5865
  %incdec.ptr158 = getelementptr %struct.msdos_partition, ptr %121, i32 1, !dbg !5865
  store ptr %incdec.ptr158, ptr %p, align 8, !dbg !5865
  br label %for.cond114, !dbg !5866, !llvm.loop !5867

for.end159:                                       ; preds = %for.cond114
  %coerce.dive160 = getelementptr inbounds %struct.Sector, ptr %sect, i32 0, i32 0, !dbg !5869
  %122 = load ptr, ptr %coerce.dive160, align 8, !dbg !5869
  call void @put_dev_sector(ptr %122) #8, !dbg !5869
  store i32 1, ptr %retval, align 4, !dbg !5870
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup161, !dbg !5870

cleanup161:                                       ; preds = %for.end159, %if.then47, %if.else, %if.then33, %if.then9, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %disksig) #7, !dbg !5871
  call void @llvm.lifetime.end.p0(i64 4, ptr %slot) #7, !dbg !5871
  call void @llvm.lifetime.end.p0(i64 8, ptr %fb) #7, !dbg !5871
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #7, !dbg !5871
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #7, !dbg !5871
  call void @llvm.lifetime.end.p0(i64 8, ptr %sect) #7, !dbg !5871
  call void @llvm.lifetime.end.p0(i64 8, ptr %sector_size) #7, !dbg !5871
  %123 = load i32, ptr %retval, align 4, !dbg !5871
  ret i32 %123, !dbg !5871

unreachable:                                      ; preds = %cleanup152, %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @queue_logical_block_size(ptr noundef %q) #3 align 16 !dbg !5872 {
entry:
  %q.addr = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !5878, metadata !DIExpression()), !dbg !5880
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7, !dbg !5881
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !5879, metadata !DIExpression()), !dbg !5882
  store i32 512, ptr %retval1, align 4, !dbg !5882
  %0 = load ptr, ptr %q.addr, align 8, !dbg !5883
  %tobool = icmp ne ptr %0, null, !dbg !5883
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5885

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %q.addr, align 8, !dbg !5886
  %limits = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 33, !dbg !5887
  %logical_block_size = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 10, !dbg !5888
  %2 = load i32, ptr %logical_block_size, align 4, !dbg !5888
  %tobool2 = icmp ne i32 %2, 0, !dbg !5886
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5889

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %q.addr, align 8, !dbg !5890
  %limits3 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 33, !dbg !5891
  %logical_block_size4 = getelementptr inbounds %struct.queue_limits, ptr %limits3, i32 0, i32 10, !dbg !5892
  %4 = load i32, ptr %logical_block_size4, align 4, !dbg !5892
  store i32 %4, ptr %retval1, align 4, !dbg !5893
  br label %if.end, !dbg !5894

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %5 = load i32, ptr %retval1, align 4, !dbg !5895
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7, !dbg !5896
  ret i32 %5, !dbg !5897
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5898 dso_local ptr @read_part_sector(ptr noundef, i64 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @aix_magic_present(ptr noundef %state, ptr noundef %p) #0 align 16 !dbg !5902 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %pt = alloca ptr, align 8
  %sect = alloca %struct.Sector, align 8
  %d = alloca ptr, align 8
  %slot = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !5906, metadata !DIExpression()), !dbg !5913
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5907, metadata !DIExpression()), !dbg !5914
  call void @llvm.lifetime.start.p0(i64 8, ptr %pt) #7, !dbg !5915
  call void @llvm.dbg.declare(metadata ptr %pt, metadata !5908, metadata !DIExpression()), !dbg !5916
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5917
  %add.ptr = getelementptr i8, ptr %0, i64 446, !dbg !5918
  store ptr %add.ptr, ptr %pt, align 8, !dbg !5916
  call void @llvm.lifetime.start.p0(i64 8, ptr %sect) #7, !dbg !5919
  call void @llvm.dbg.declare(metadata ptr %sect, metadata !5909, metadata !DIExpression()), !dbg !5920
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #7, !dbg !5921
  call void @llvm.dbg.declare(metadata ptr %d, metadata !5910, metadata !DIExpression()), !dbg !5922
  call void @llvm.lifetime.start.p0(i64 4, ptr %slot) #7, !dbg !5923
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !5911, metadata !DIExpression()), !dbg !5924
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !5923
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5912, metadata !DIExpression()), !dbg !5925
  store i32 0, ptr %ret, align 4, !dbg !5925
  %1 = load ptr, ptr %p.addr, align 8, !dbg !5926
  %arrayidx = getelementptr i8, ptr %1, i64 0, !dbg !5926
  %2 = load i8, ptr %arrayidx, align 1, !dbg !5926
  %conv = zext i8 %2 to i32, !dbg !5926
  %cmp = icmp eq i32 %conv, 201, !dbg !5928
  br i1 %cmp, label %land.lhs.true, label %if.then, !dbg !5929

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %p.addr, align 8, !dbg !5930
  %arrayidx2 = getelementptr i8, ptr %3, i64 1, !dbg !5930
  %4 = load i8, ptr %arrayidx2, align 1, !dbg !5930
  %conv3 = zext i8 %4 to i32, !dbg !5930
  %cmp4 = icmp eq i32 %conv3, 194, !dbg !5931
  br i1 %cmp4, label %land.lhs.true6, label %if.then, !dbg !5932

land.lhs.true6:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %p.addr, align 8, !dbg !5933
  %arrayidx7 = getelementptr i8, ptr %5, i64 2, !dbg !5933
  %6 = load i8, ptr %arrayidx7, align 1, !dbg !5933
  %conv8 = zext i8 %6 to i32, !dbg !5933
  %cmp9 = icmp eq i32 %conv8, 212, !dbg !5934
  br i1 %cmp9, label %land.lhs.true11, label %if.then, !dbg !5935

land.lhs.true11:                                  ; preds = %land.lhs.true6
  %7 = load ptr, ptr %p.addr, align 8, !dbg !5936
  %arrayidx12 = getelementptr i8, ptr %7, i64 3, !dbg !5936
  %8 = load i8, ptr %arrayidx12, align 1, !dbg !5936
  %conv13 = zext i8 %8 to i32, !dbg !5936
  %cmp14 = icmp eq i32 %conv13, 193, !dbg !5937
  br i1 %cmp14, label %if.end, label %if.then, !dbg !5938

if.then:                                          ; preds = %land.lhs.true11, %land.lhs.true6, %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4, !dbg !5939
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5939

if.end:                                           ; preds = %land.lhs.true11
  store i32 1, ptr %slot, align 4, !dbg !5940
  br label %for.cond, !dbg !5942

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, ptr %slot, align 4, !dbg !5943
  %cmp16 = icmp sle i32 %9, 4, !dbg !5945
  br i1 %cmp16, label %for.body, label %for.end, !dbg !5946

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %pt, align 8, !dbg !5947
  %sys_ind = getelementptr inbounds %struct.msdos_partition, ptr %10, i32 0, i32 4, !dbg !5950
  %11 = load i8, ptr %sys_ind, align 1, !dbg !5950
  %conv18 = zext i8 %11 to i32, !dbg !5947
  %cmp19 = icmp eq i32 %conv18, 130, !dbg !5951
  br i1 %cmp19, label %if.then36, label %lor.lhs.false, !dbg !5952

lor.lhs.false:                                    ; preds = %for.body
  %12 = load ptr, ptr %pt, align 8, !dbg !5953
  %sys_ind21 = getelementptr inbounds %struct.msdos_partition, ptr %12, i32 0, i32 4, !dbg !5954
  %13 = load i8, ptr %sys_ind21, align 1, !dbg !5954
  %conv22 = zext i8 %13 to i32, !dbg !5953
  %cmp23 = icmp eq i32 %conv22, 253, !dbg !5955
  br i1 %cmp23, label %if.then36, label %lor.lhs.false25, !dbg !5956

lor.lhs.false25:                                  ; preds = %lor.lhs.false
  %14 = load ptr, ptr %pt, align 8, !dbg !5957
  %sys_ind26 = getelementptr inbounds %struct.msdos_partition, ptr %14, i32 0, i32 4, !dbg !5958
  %15 = load i8, ptr %sys_ind26, align 1, !dbg !5958
  %conv27 = zext i8 %15 to i32, !dbg !5957
  %cmp28 = icmp eq i32 %conv27, 131, !dbg !5959
  br i1 %cmp28, label %if.then36, label %lor.lhs.false30, !dbg !5960

lor.lhs.false30:                                  ; preds = %lor.lhs.false25
  %16 = load ptr, ptr %pt, align 8, !dbg !5961
  %sys_ind31 = getelementptr inbounds %struct.msdos_partition, ptr %16, i32 0, i32 4, !dbg !5962
  %17 = load i8, ptr %sys_ind31, align 1, !dbg !5962
  %conv32 = zext i8 %17 to i32, !dbg !5961
  %cmp33 = icmp eq i32 %conv32, 142, !dbg !5963
  br i1 %cmp33, label %if.then36, label %lor.lhs.false35, !dbg !5964

lor.lhs.false35:                                  ; preds = %lor.lhs.false30
  %18 = load ptr, ptr %pt, align 8, !dbg !5965
  %call = call i32 @is_extended_partition(ptr noundef %18) #8, !dbg !5966
  %tobool = icmp ne i32 %call, 0, !dbg !5966
  br i1 %tobool, label %if.then36, label %if.end37, !dbg !5967

if.then36:                                        ; preds = %lor.lhs.false35, %lor.lhs.false30, %lor.lhs.false25, %lor.lhs.false, %for.body
  store i32 0, ptr %retval, align 4, !dbg !5968
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5968

if.end37:                                         ; preds = %lor.lhs.false35
  br label %for.inc, !dbg !5969

for.inc:                                          ; preds = %if.end37
  %19 = load i32, ptr %slot, align 4, !dbg !5970
  %inc = add i32 %19, 1, !dbg !5970
  store i32 %inc, ptr %slot, align 4, !dbg !5970
  %20 = load ptr, ptr %pt, align 8, !dbg !5971
  %incdec.ptr = getelementptr %struct.msdos_partition, ptr %20, i32 1, !dbg !5971
  store ptr %incdec.ptr, ptr %pt, align 8, !dbg !5971
  br label %for.cond, !dbg !5972, !llvm.loop !5973

for.end:                                          ; preds = %for.cond
  %21 = load ptr, ptr %state.addr, align 8, !dbg !5975
  %call38 = call ptr @read_part_sector(ptr noundef %21, i64 noundef 7, ptr noundef %sect) #8, !dbg !5976
  store ptr %call38, ptr %d, align 8, !dbg !5977
  %22 = load ptr, ptr %d, align 8, !dbg !5978
  %tobool39 = icmp ne ptr %22, null, !dbg !5978
  br i1 %tobool39, label %if.then40, label %if.end62, !dbg !5980

if.then40:                                        ; preds = %for.end
  %23 = load ptr, ptr %d, align 8, !dbg !5981
  %arrayidx41 = getelementptr i8, ptr %23, i64 0, !dbg !5981
  %24 = load i8, ptr %arrayidx41, align 1, !dbg !5981
  %conv42 = zext i8 %24 to i32, !dbg !5981
  %cmp43 = icmp eq i32 %conv42, 95, !dbg !5984
  br i1 %cmp43, label %land.lhs.true45, label %if.end61, !dbg !5985

land.lhs.true45:                                  ; preds = %if.then40
  %25 = load ptr, ptr %d, align 8, !dbg !5986
  %arrayidx46 = getelementptr i8, ptr %25, i64 1, !dbg !5986
  %26 = load i8, ptr %arrayidx46, align 1, !dbg !5986
  %conv47 = zext i8 %26 to i32, !dbg !5986
  %cmp48 = icmp eq i32 %conv47, 76, !dbg !5987
  br i1 %cmp48, label %land.lhs.true50, label %if.end61, !dbg !5988

land.lhs.true50:                                  ; preds = %land.lhs.true45
  %27 = load ptr, ptr %d, align 8, !dbg !5989
  %arrayidx51 = getelementptr i8, ptr %27, i64 2, !dbg !5989
  %28 = load i8, ptr %arrayidx51, align 1, !dbg !5989
  %conv52 = zext i8 %28 to i32, !dbg !5989
  %cmp53 = icmp eq i32 %conv52, 86, !dbg !5990
  br i1 %cmp53, label %land.lhs.true55, label %if.end61, !dbg !5991

land.lhs.true55:                                  ; preds = %land.lhs.true50
  %29 = load ptr, ptr %d, align 8, !dbg !5992
  %arrayidx56 = getelementptr i8, ptr %29, i64 3, !dbg !5992
  %30 = load i8, ptr %arrayidx56, align 1, !dbg !5992
  %conv57 = zext i8 %30 to i32, !dbg !5992
  %cmp58 = icmp eq i32 %conv57, 77, !dbg !5993
  br i1 %cmp58, label %if.then60, label %if.end61, !dbg !5994

if.then60:                                        ; preds = %land.lhs.true55
  store i32 1, ptr %ret, align 4, !dbg !5995
  br label %if.end61, !dbg !5996

if.end61:                                         ; preds = %if.then60, %land.lhs.true55, %land.lhs.true50, %land.lhs.true45, %if.then40
  %coerce.dive = getelementptr inbounds %struct.Sector, ptr %sect, i32 0, i32 0, !dbg !5997
  %31 = load ptr, ptr %coerce.dive, align 8, !dbg !5997
  call void @put_dev_sector(ptr %31) #8, !dbg !5997
  br label %if.end62, !dbg !5998

if.end62:                                         ; preds = %if.end61, %for.end
  %32 = load i32, ptr %ret, align 4, !dbg !5999
  store i32 %32, ptr %retval, align 4, !dbg !6000
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6000

cleanup:                                          ; preds = %if.end62, %if.then36, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !6001
  call void @llvm.lifetime.end.p0(i64 4, ptr %slot) #7, !dbg !6001
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #7, !dbg !6001
  call void @llvm.lifetime.end.p0(i64 8, ptr %sect) #7, !dbg !6001
  call void @llvm.lifetime.end.p0(i64 8, ptr %pt) #7, !dbg !6001
  %33 = load i32, ptr %retval, align 4, !dbg !6001
  ret i32 %33, !dbg !6001
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_dev_sector(ptr %p.coerce) #3 align 16 !dbg !6002 {
entry:
  %p = alloca %struct.Sector, align 8
  %coerce.dive = getelementptr inbounds %struct.Sector, ptr %p, i32 0, i32 0
  store ptr %p.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6006, metadata !DIExpression()), !dbg !6007
  %v = getelementptr inbounds %struct.Sector, ptr %p, i32 0, i32 0, !dbg !6008
  %0 = load ptr, ptr %v, align 8, !dbg !6008
  call void @folio_put(ptr noundef %0) #8, !dbg !6009
  ret void, !dbg !6010
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6011 dso_local i64 @strlcat(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @msdos_magic_present(ptr noundef %p) #3 align 16 !dbg !6015 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6019, metadata !DIExpression()), !dbg !6020
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6021
  %arrayidx = getelementptr i8, ptr %0, i64 0, !dbg !6021
  %1 = load i8, ptr %arrayidx, align 1, !dbg !6021
  %conv = zext i8 %1 to i32, !dbg !6021
  %cmp = icmp eq i32 %conv, 85, !dbg !6022
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6023

land.rhs:                                         ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8, !dbg !6024
  %arrayidx2 = getelementptr i8, ptr %2, i64 1, !dbg !6024
  %3 = load i8, ptr %arrayidx2, align 1, !dbg !6024
  %conv3 = zext i8 %3 to i32, !dbg !6024
  %cmp4 = icmp eq i32 %conv3, 170, !dbg !6025
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp4, %land.rhs ], !dbg !6026
  %land.ext = zext i1 %4 to i32, !dbg !6023
  ret i32 %land.ext, !dbg !6027
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fat_valid_media(i8 noundef zeroext %media) #3 align 16 !dbg !6028 {
entry:
  %media.addr = alloca i8, align 1
  store i8 %media, ptr %media.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %media.addr, metadata !6033, metadata !DIExpression()), !dbg !6034
  %0 = load i8, ptr %media.addr, align 1, !dbg !6035
  %conv = zext i8 %0 to i32, !dbg !6035
  %cmp = icmp sle i32 248, %conv, !dbg !6036
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !6037

lor.rhs:                                          ; preds = %entry
  %1 = load i8, ptr %media.addr, align 1, !dbg !6038
  %conv2 = zext i8 %1 to i32, !dbg !6038
  %cmp3 = icmp eq i32 %conv2, 240, !dbg !6039
  br label %lor.end, !dbg !6037

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp3, %lor.rhs ]
  %lor.ext = zext i1 %2 to i32, !dbg !6037
  ret i32 %lor.ext, !dbg !6040
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__le32_to_cpup(ptr noundef %p) #5 align 16 !dbg !6041 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6048, metadata !DIExpression()), !dbg !6049
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6050
  %1 = load i32, ptr %0, align 4, !dbg !6051
  ret i32 %1, !dbg !6052
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @start_sect(ptr noundef %p) #3 align 16 !dbg !6053 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6057, metadata !DIExpression()), !dbg !6058
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6059
  %start_sect = getelementptr inbounds %struct.msdos_partition, ptr %0, i32 0, i32 8, !dbg !6060
  %call = call i32 @get_unaligned_le32(ptr noundef %start_sect) #8, !dbg !6061
  %conv = zext i32 %call to i64, !dbg !6062
  ret i64 %conv, !dbg !6063
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @nr_sects(ptr noundef %p) #3 align 16 !dbg !6064 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6066, metadata !DIExpression()), !dbg !6067
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6068
  %nr_sects = getelementptr inbounds %struct.msdos_partition, ptr %0, i32 0, i32 9, !dbg !6069
  %call = call i32 @get_unaligned_le32(ptr noundef %nr_sects) #8, !dbg !6070
  %conv = zext i32 %call to i64, !dbg !6071
  ret i64 %conv, !dbg !6072
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @is_extended_partition(ptr noundef %p) #3 align 16 !dbg !6073 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6077, metadata !DIExpression()), !dbg !6078
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6079
  %sys_ind = getelementptr inbounds %struct.msdos_partition, ptr %0, i32 0, i32 4, !dbg !6080
  %1 = load i8, ptr %sys_ind, align 1, !dbg !6080
  %conv = zext i8 %1 to i32, !dbg !6079
  %cmp = icmp eq i32 %conv, 5, !dbg !6081
  br i1 %cmp, label %lor.end, label %lor.lhs.false, !dbg !6082

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8, !dbg !6083
  %sys_ind2 = getelementptr inbounds %struct.msdos_partition, ptr %2, i32 0, i32 4, !dbg !6084
  %3 = load i8, ptr %sys_ind2, align 1, !dbg !6084
  %conv3 = zext i8 %3 to i32, !dbg !6083
  %cmp4 = icmp eq i32 %conv3, 15, !dbg !6085
  br i1 %cmp4, label %lor.end, label %lor.rhs, !dbg !6086

lor.rhs:                                          ; preds = %lor.lhs.false
  %4 = load ptr, ptr %p.addr, align 8, !dbg !6087
  %sys_ind6 = getelementptr inbounds %struct.msdos_partition, ptr %4, i32 0, i32 4, !dbg !6088
  %5 = load i8, ptr %sys_ind6, align 1, !dbg !6088
  %conv7 = zext i8 %5 to i32, !dbg !6087
  %cmp8 = icmp eq i32 %conv7, 133, !dbg !6089
  br label %lor.end, !dbg !6086

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %6 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp8, %lor.rhs ]
  %lor.ext = zext i1 %6 to i32, !dbg !6086
  ret i32 %lor.ext, !dbg !6090
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_partition(ptr noundef %p, i32 noundef %n, i64 noundef %from, i64 noundef %size) #3 align 16 !dbg !6091 {
entry:
  %p.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %from.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %tmp = alloca [44 x i8], align 16
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6095, metadata !DIExpression()), !dbg !6105
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6096, metadata !DIExpression()), !dbg !6106
  store i64 %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6097, metadata !DIExpression()), !dbg !6107
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6098, metadata !DIExpression()), !dbg !6108
  %0 = load i32, ptr %n.addr, align 4, !dbg !6109
  %1 = load ptr, ptr %p.addr, align 8, !dbg !6110
  %limit = getelementptr inbounds %struct.parsed_partitions, ptr %1, i32 0, i32 4, !dbg !6111
  %2 = load i32, ptr %limit, align 4, !dbg !6111
  %cmp = icmp slt i32 %0, %2, !dbg !6112
  br i1 %cmp, label %if.then, label %if.end, !dbg !6113

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 44, ptr %tmp) #7, !dbg !6114
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !6099, metadata !DIExpression()), !dbg !6115
  %3 = load i64, ptr %from.addr, align 8, !dbg !6116
  %4 = load ptr, ptr %p.addr, align 8, !dbg !6117
  %parts = getelementptr inbounds %struct.parsed_partitions, ptr %4, i32 0, i32 2, !dbg !6118
  %5 = load ptr, ptr %parts, align 8, !dbg !6118
  %6 = load i32, ptr %n.addr, align 4, !dbg !6119
  %idxprom = sext i32 %6 to i64, !dbg !6117
  %arrayidx = getelementptr %struct.anon.16, ptr %5, i64 %idxprom, !dbg !6117
  %from1 = getelementptr inbounds %struct.anon.16, ptr %arrayidx, i32 0, i32 0, !dbg !6120
  store i64 %3, ptr %from1, align 8, !dbg !6121
  %7 = load i64, ptr %size.addr, align 8, !dbg !6122
  %8 = load ptr, ptr %p.addr, align 8, !dbg !6123
  %parts2 = getelementptr inbounds %struct.parsed_partitions, ptr %8, i32 0, i32 2, !dbg !6124
  %9 = load ptr, ptr %parts2, align 8, !dbg !6124
  %10 = load i32, ptr %n.addr, align 4, !dbg !6125
  %idxprom3 = sext i32 %10 to i64, !dbg !6123
  %arrayidx4 = getelementptr %struct.anon.16, ptr %9, i64 %idxprom3, !dbg !6123
  %size5 = getelementptr inbounds %struct.anon.16, ptr %arrayidx4, i32 0, i32 1, !dbg !6126
  store i64 %7, ptr %size5, align 8, !dbg !6127
  %arraydecay = getelementptr inbounds [44 x i8], ptr %tmp, i64 0, i64 0, !dbg !6128
  %11 = load ptr, ptr %p.addr, align 8, !dbg !6129
  %name = getelementptr inbounds %struct.parsed_partitions, ptr %11, i32 0, i32 1, !dbg !6130
  %arraydecay6 = getelementptr inbounds [32 x i8], ptr %name, i64 0, i64 0, !dbg !6129
  %12 = load i32, ptr %n.addr, align 4, !dbg !6131
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 44, ptr noundef @.str.6, ptr noundef %arraydecay6, i32 noundef %12) #8, !dbg !6132
  %13 = load ptr, ptr %p.addr, align 8, !dbg !6133
  %pp_buf = getelementptr inbounds %struct.parsed_partitions, ptr %13, i32 0, i32 6, !dbg !6134
  %14 = load ptr, ptr %pp_buf, align 8, !dbg !6134
  %arraydecay7 = getelementptr inbounds [44 x i8], ptr %tmp, i64 0, i64 0, !dbg !6135
  %call8 = call i64 @strlcat(ptr noundef %14, ptr noundef %arraydecay7, i64 noundef 4096) #8, !dbg !6136
  call void @llvm.lifetime.end.p0(i64 44, ptr %tmp) #7, !dbg !6137
  br label %if.end, !dbg !6138

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6139
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @parse_extended(ptr noundef %state, i64 noundef %first_sector, i64 noundef %first_size, i32 noundef %disksig) #0 align 16 !dbg !6140 {
entry:
  %state.addr = alloca ptr, align 8
  %first_sector.addr = alloca i64, align 8
  %first_size.addr = alloca i64, align 8
  %disksig.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %sect = alloca %struct.Sector, align 8
  %data = alloca ptr, align 8
  %this_sector = alloca i64, align 8
  %this_size = alloca i64, align 8
  %sector_size = alloca i64, align 8
  %loopct = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %offs = alloca i64, align 8
  %size = alloca i64, align 8
  %next16 = alloca i64, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !6144, metadata !DIExpression()), !dbg !6164
  store i64 %first_sector, ptr %first_sector.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %first_sector.addr, metadata !6145, metadata !DIExpression()), !dbg !6165
  store i64 %first_size, ptr %first_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %first_size.addr, metadata !6146, metadata !DIExpression()), !dbg !6166
  store i32 %disksig, ptr %disksig.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %disksig.addr, metadata !6147, metadata !DIExpression()), !dbg !6167
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #7, !dbg !6168
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6148, metadata !DIExpression()), !dbg !6169
  call void @llvm.lifetime.start.p0(i64 8, ptr %sect) #7, !dbg !6170
  call void @llvm.dbg.declare(metadata ptr %sect, metadata !6149, metadata !DIExpression()), !dbg !6171
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #7, !dbg !6172
  call void @llvm.dbg.declare(metadata ptr %data, metadata !6150, metadata !DIExpression()), !dbg !6173
  call void @llvm.lifetime.start.p0(i64 8, ptr %this_sector) #7, !dbg !6174
  call void @llvm.dbg.declare(metadata ptr %this_sector, metadata !6151, metadata !DIExpression()), !dbg !6175
  call void @llvm.lifetime.start.p0(i64 8, ptr %this_size) #7, !dbg !6174
  call void @llvm.dbg.declare(metadata ptr %this_size, metadata !6152, metadata !DIExpression()), !dbg !6176
  call void @llvm.lifetime.start.p0(i64 8, ptr %sector_size) #7, !dbg !6177
  call void @llvm.dbg.declare(metadata ptr %sector_size, metadata !6153, metadata !DIExpression()), !dbg !6178
  call void @llvm.lifetime.start.p0(i64 4, ptr %loopct) #7, !dbg !6179
  call void @llvm.dbg.declare(metadata ptr %loopct, metadata !6154, metadata !DIExpression()), !dbg !6180
  store i32 0, ptr %loopct, align 4, !dbg !6180
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !6181
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6155, metadata !DIExpression()), !dbg !6182
  %0 = load ptr, ptr %state.addr, align 8, !dbg !6183
  %disk = getelementptr inbounds %struct.parsed_partitions, ptr %0, i32 0, i32 0, !dbg !6184
  %1 = load ptr, ptr %disk, align 8, !dbg !6184
  %queue = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 9, !dbg !6185
  %2 = load ptr, ptr %queue, align 8, !dbg !6185
  %call = call i32 @queue_logical_block_size(ptr noundef %2) #8, !dbg !6186
  %div = udiv i32 %call, 512, !dbg !6187
  %conv = zext i32 %div to i64, !dbg !6186
  store i64 %conv, ptr %sector_size, align 8, !dbg !6188
  %3 = load i64, ptr %first_sector.addr, align 8, !dbg !6189
  store i64 %3, ptr %this_sector, align 8, !dbg !6190
  %4 = load i64, ptr %first_size.addr, align 8, !dbg !6191
  store i64 %4, ptr %this_size, align 8, !dbg !6192
  br label %while.cond, !dbg !6193

while.cond:                                       ; preds = %if.end81, %entry
  br label %while.body, !dbg !6193

while.body:                                       ; preds = %while.cond
  %5 = load i32, ptr %loopct, align 4, !dbg !6194
  %inc = add i32 %5, 1, !dbg !6194
  store i32 %inc, ptr %loopct, align 4, !dbg !6194
  %cmp = icmp sgt i32 %inc, 100, !dbg !6196
  br i1 %cmp, label %if.then, label %if.end, !dbg !6197

if.then:                                          ; preds = %while.body
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup88, !dbg !6198

if.end:                                           ; preds = %while.body
  %6 = load ptr, ptr %state.addr, align 8, !dbg !6199
  %next = getelementptr inbounds %struct.parsed_partitions, ptr %6, i32 0, i32 3, !dbg !6201
  %7 = load i32, ptr %next, align 8, !dbg !6201
  %8 = load ptr, ptr %state.addr, align 8, !dbg !6202
  %limit = getelementptr inbounds %struct.parsed_partitions, ptr %8, i32 0, i32 4, !dbg !6203
  %9 = load i32, ptr %limit, align 4, !dbg !6203
  %cmp2 = icmp eq i32 %7, %9, !dbg !6204
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !6205

if.then4:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup88, !dbg !6206

if.end5:                                          ; preds = %if.end
  %10 = load ptr, ptr %state.addr, align 8, !dbg !6207
  %11 = load i64, ptr %this_sector, align 8, !dbg !6208
  %call6 = call ptr @read_part_sector(ptr noundef %10, i64 noundef %11, ptr noundef %sect) #8, !dbg !6209
  store ptr %call6, ptr %data, align 8, !dbg !6210
  %12 = load ptr, ptr %data, align 8, !dbg !6211
  %tobool = icmp ne ptr %12, null, !dbg !6211
  br i1 %tobool, label %if.end8, label %if.then7, !dbg !6213

if.then7:                                         ; preds = %if.end5
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup88, !dbg !6214

if.end8:                                          ; preds = %if.end5
  %13 = load ptr, ptr %data, align 8, !dbg !6215
  %add.ptr = getelementptr i8, ptr %13, i64 510, !dbg !6217
  %call9 = call i32 @msdos_magic_present(ptr noundef %add.ptr) #8, !dbg !6218
  %tobool10 = icmp ne i32 %call9, 0, !dbg !6218
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !6219

if.then11:                                        ; preds = %if.end8
  br label %done, !dbg !6220

if.end12:                                         ; preds = %if.end8
  %14 = load ptr, ptr %data, align 8, !dbg !6221
  %add.ptr13 = getelementptr i8, ptr %14, i64 446, !dbg !6222
  store ptr %add.ptr13, ptr %p, align 8, !dbg !6223
  store i32 0, ptr %i, align 4, !dbg !6224
  br label %for.cond, !dbg !6225

for.cond:                                         ; preds = %for.inc, %if.end12
  %15 = load i32, ptr %i, align 4, !dbg !6226
  %cmp14 = icmp slt i32 %15, 4, !dbg !6227
  br i1 %cmp14, label %for.body, label %for.end, !dbg !6228

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %offs) #7, !dbg !6229
  call void @llvm.dbg.declare(metadata ptr %offs, metadata !6156, metadata !DIExpression()), !dbg !6230
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #7, !dbg !6229
  call void @llvm.dbg.declare(metadata ptr %size, metadata !6161, metadata !DIExpression()), !dbg !6231
  call void @llvm.lifetime.start.p0(i64 8, ptr %next16) #7, !dbg !6229
  call void @llvm.dbg.declare(metadata ptr %next16, metadata !6162, metadata !DIExpression()), !dbg !6232
  %16 = load ptr, ptr %p, align 8, !dbg !6233
  %call17 = call i64 @nr_sects(ptr noundef %16) #8, !dbg !6235
  %tobool18 = icmp ne i64 %call17, 0, !dbg !6235
  br i1 %tobool18, label %lor.lhs.false, label %if.then21, !dbg !6236

lor.lhs.false:                                    ; preds = %for.body
  %17 = load ptr, ptr %p, align 8, !dbg !6237
  %call19 = call i32 @is_extended_partition(ptr noundef %17) #8, !dbg !6238
  %tobool20 = icmp ne i32 %call19, 0, !dbg !6238
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !6239

if.then21:                                        ; preds = %lor.lhs.false, %for.body
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6240

if.end22:                                         ; preds = %lor.lhs.false
  %18 = load ptr, ptr %p, align 8, !dbg !6241
  %call23 = call i64 @start_sect(ptr noundef %18) #8, !dbg !6242
  %19 = load i64, ptr %sector_size, align 8, !dbg !6243
  %mul = mul i64 %call23, %19, !dbg !6244
  store i64 %mul, ptr %offs, align 8, !dbg !6245
  %20 = load ptr, ptr %p, align 8, !dbg !6246
  %call24 = call i64 @nr_sects(ptr noundef %20) #8, !dbg !6247
  %21 = load i64, ptr %sector_size, align 8, !dbg !6248
  %mul25 = mul i64 %call24, %21, !dbg !6249
  store i64 %mul25, ptr %size, align 8, !dbg !6250
  %22 = load i64, ptr %this_sector, align 8, !dbg !6251
  %23 = load i64, ptr %offs, align 8, !dbg !6252
  %add = add i64 %22, %23, !dbg !6253
  store i64 %add, ptr %next16, align 8, !dbg !6254
  %24 = load i32, ptr %i, align 4, !dbg !6255
  %cmp26 = icmp sge i32 %24, 2, !dbg !6257
  br i1 %cmp26, label %if.then28, label %if.end44, !dbg !6258

if.then28:                                        ; preds = %if.end22
  %25 = load i64, ptr %offs, align 8, !dbg !6259
  %26 = load i64, ptr %size, align 8, !dbg !6262
  %add29 = add i64 %25, %26, !dbg !6263
  %27 = load i64, ptr %this_size, align 8, !dbg !6264
  %cmp30 = icmp ugt i64 %add29, %27, !dbg !6265
  br i1 %cmp30, label %if.then32, label %if.end33, !dbg !6266

if.then32:                                        ; preds = %if.then28
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6267

if.end33:                                         ; preds = %if.then28
  %28 = load i64, ptr %next16, align 8, !dbg !6268
  %29 = load i64, ptr %first_sector.addr, align 8, !dbg !6270
  %cmp34 = icmp ult i64 %28, %29, !dbg !6271
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !6272

if.then36:                                        ; preds = %if.end33
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6273

if.end37:                                         ; preds = %if.end33
  %30 = load i64, ptr %next16, align 8, !dbg !6274
  %31 = load i64, ptr %size, align 8, !dbg !6276
  %add38 = add i64 %30, %31, !dbg !6277
  %32 = load i64, ptr %first_sector.addr, align 8, !dbg !6278
  %33 = load i64, ptr %first_size.addr, align 8, !dbg !6279
  %add39 = add i64 %32, %33, !dbg !6280
  %cmp40 = icmp ugt i64 %add38, %add39, !dbg !6281
  br i1 %cmp40, label %if.then42, label %if.end43, !dbg !6282

if.then42:                                        ; preds = %if.end37
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6283

if.end43:                                         ; preds = %if.end37
  br label %if.end44, !dbg !6284

if.end44:                                         ; preds = %if.end43, %if.end22
  %34 = load ptr, ptr %state.addr, align 8, !dbg !6285
  %35 = load ptr, ptr %state.addr, align 8, !dbg !6286
  %next45 = getelementptr inbounds %struct.parsed_partitions, ptr %35, i32 0, i32 3, !dbg !6287
  %36 = load i32, ptr %next45, align 8, !dbg !6287
  %37 = load i64, ptr %next16, align 8, !dbg !6288
  %38 = load i64, ptr %size, align 8, !dbg !6289
  call void @put_partition(ptr noundef %34, i32 noundef %36, i64 noundef %37, i64 noundef %38) #8, !dbg !6290
  %39 = load ptr, ptr %state.addr, align 8, !dbg !6291
  %40 = load ptr, ptr %state.addr, align 8, !dbg !6292
  %next46 = getelementptr inbounds %struct.parsed_partitions, ptr %40, i32 0, i32 3, !dbg !6293
  %41 = load i32, ptr %next46, align 8, !dbg !6293
  %42 = load i32, ptr %disksig.addr, align 4, !dbg !6294
  call void @set_info(ptr noundef %39, i32 noundef %41, i32 noundef %42) #8, !dbg !6295
  %43 = load ptr, ptr %p, align 8, !dbg !6296
  %sys_ind = getelementptr inbounds %struct.msdos_partition, ptr %43, i32 0, i32 4, !dbg !6298
  %44 = load i8, ptr %sys_ind, align 1, !dbg !6298
  %conv47 = zext i8 %44 to i32, !dbg !6296
  %cmp48 = icmp eq i32 %conv47, 253, !dbg !6299
  br i1 %cmp48, label %if.then50, label %if.end52, !dbg !6300

if.then50:                                        ; preds = %if.end44
  %45 = load ptr, ptr %state.addr, align 8, !dbg !6301
  %parts = getelementptr inbounds %struct.parsed_partitions, ptr %45, i32 0, i32 2, !dbg !6302
  %46 = load ptr, ptr %parts, align 8, !dbg !6302
  %47 = load ptr, ptr %state.addr, align 8, !dbg !6303
  %next51 = getelementptr inbounds %struct.parsed_partitions, ptr %47, i32 0, i32 3, !dbg !6304
  %48 = load i32, ptr %next51, align 8, !dbg !6304
  %idxprom = sext i32 %48 to i64, !dbg !6301
  %arrayidx = getelementptr %struct.anon.16, ptr %46, i64 %idxprom, !dbg !6301
  %flags = getelementptr inbounds %struct.anon.16, ptr %arrayidx, i32 0, i32 2, !dbg !6305
  store i32 1, ptr %flags, align 8, !dbg !6306
  br label %if.end52, !dbg !6301

if.end52:                                         ; preds = %if.then50, %if.end44
  store i32 0, ptr %loopct, align 4, !dbg !6307
  %49 = load ptr, ptr %state.addr, align 8, !dbg !6308
  %next53 = getelementptr inbounds %struct.parsed_partitions, ptr %49, i32 0, i32 3, !dbg !6310
  %50 = load i32, ptr %next53, align 8, !dbg !6311
  %inc54 = add i32 %50, 1, !dbg !6311
  store i32 %inc54, ptr %next53, align 8, !dbg !6311
  %51 = load ptr, ptr %state.addr, align 8, !dbg !6312
  %limit55 = getelementptr inbounds %struct.parsed_partitions, ptr %51, i32 0, i32 4, !dbg !6313
  %52 = load i32, ptr %limit55, align 4, !dbg !6313
  %cmp56 = icmp eq i32 %inc54, %52, !dbg !6314
  br i1 %cmp56, label %if.then58, label %if.end59, !dbg !6315

if.then58:                                        ; preds = %if.end52
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6316

if.end59:                                         ; preds = %if.end52
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6317
  br label %cleanup, !dbg !6317

cleanup:                                          ; preds = %if.then58, %if.end59, %if.then42, %if.then36, %if.then32, %if.then21
  call void @llvm.lifetime.end.p0(i64 8, ptr %next16) #7, !dbg !6317
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #7, !dbg !6317
  call void @llvm.lifetime.end.p0(i64 8, ptr %offs) #7, !dbg !6317
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup88 [
    i32 0, label %cleanup.cont
    i32 7, label %for.inc
    i32 4, label %done
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !6318

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %53 = load i32, ptr %i, align 4, !dbg !6319
  %inc62 = add i32 %53, 1, !dbg !6319
  store i32 %inc62, ptr %i, align 4, !dbg !6319
  %54 = load ptr, ptr %p, align 8, !dbg !6320
  %incdec.ptr = getelementptr %struct.msdos_partition, ptr %54, i32 1, !dbg !6320
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !6320
  br label %for.cond, !dbg !6321, !llvm.loop !6322

for.end:                                          ; preds = %for.cond
  %55 = load ptr, ptr %p, align 8, !dbg !6324
  %add.ptr63 = getelementptr %struct.msdos_partition, ptr %55, i64 -4, !dbg !6324
  store ptr %add.ptr63, ptr %p, align 8, !dbg !6324
  store i32 0, ptr %i, align 4, !dbg !6325
  br label %for.cond64, !dbg !6327

for.cond64:                                       ; preds = %for.inc74, %for.end
  %56 = load i32, ptr %i, align 4, !dbg !6328
  %cmp65 = icmp slt i32 %56, 4, !dbg !6330
  br i1 %cmp65, label %for.body67, label %for.end77, !dbg !6331

for.body67:                                       ; preds = %for.cond64
  %57 = load ptr, ptr %p, align 8, !dbg !6332
  %call68 = call i64 @nr_sects(ptr noundef %57) #8, !dbg !6334
  %tobool69 = icmp ne i64 %call68, 0, !dbg !6334
  br i1 %tobool69, label %land.lhs.true, label %if.end73, !dbg !6335

land.lhs.true:                                    ; preds = %for.body67
  %58 = load ptr, ptr %p, align 8, !dbg !6336
  %call70 = call i32 @is_extended_partition(ptr noundef %58) #8, !dbg !6337
  %tobool71 = icmp ne i32 %call70, 0, !dbg !6337
  br i1 %tobool71, label %if.then72, label %if.end73, !dbg !6338

if.then72:                                        ; preds = %land.lhs.true
  br label %for.end77, !dbg !6339

if.end73:                                         ; preds = %land.lhs.true, %for.body67
  br label %for.inc74, !dbg !6340

for.inc74:                                        ; preds = %if.end73
  %59 = load i32, ptr %i, align 4, !dbg !6341
  %inc75 = add i32 %59, 1, !dbg !6341
  store i32 %inc75, ptr %i, align 4, !dbg !6341
  %60 = load ptr, ptr %p, align 8, !dbg !6342
  %incdec.ptr76 = getelementptr %struct.msdos_partition, ptr %60, i32 1, !dbg !6342
  store ptr %incdec.ptr76, ptr %p, align 8, !dbg !6342
  br label %for.cond64, !dbg !6343, !llvm.loop !6344

for.end77:                                        ; preds = %if.then72, %for.cond64
  %61 = load i32, ptr %i, align 4, !dbg !6346
  %cmp78 = icmp eq i32 %61, 4, !dbg !6348
  br i1 %cmp78, label %if.then80, label %if.end81, !dbg !6349

if.then80:                                        ; preds = %for.end77
  br label %done, !dbg !6350

if.end81:                                         ; preds = %for.end77
  %62 = load i64, ptr %first_sector.addr, align 8, !dbg !6351
  %63 = load ptr, ptr %p, align 8, !dbg !6352
  %call82 = call i64 @start_sect(ptr noundef %63) #8, !dbg !6353
  %64 = load i64, ptr %sector_size, align 8, !dbg !6354
  %mul83 = mul i64 %call82, %64, !dbg !6355
  %add84 = add i64 %62, %mul83, !dbg !6356
  store i64 %add84, ptr %this_sector, align 8, !dbg !6357
  %65 = load ptr, ptr %p, align 8, !dbg !6358
  %call85 = call i64 @nr_sects(ptr noundef %65) #8, !dbg !6359
  %66 = load i64, ptr %sector_size, align 8, !dbg !6360
  %mul86 = mul i64 %call85, %66, !dbg !6361
  store i64 %mul86, ptr %this_size, align 8, !dbg !6362
  %coerce.dive = getelementptr inbounds %struct.Sector, ptr %sect, i32 0, i32 0, !dbg !6363
  %67 = load ptr, ptr %coerce.dive, align 8, !dbg !6363
  call void @put_dev_sector(ptr %67) #8, !dbg !6363
  br label %while.cond, !dbg !6193, !llvm.loop !6364

done:                                             ; preds = %cleanup, %if.then80, %if.then11
  call void @llvm.dbg.label(metadata !6163), !dbg !6366
  %coerce.dive87 = getelementptr inbounds %struct.Sector, ptr %sect, i32 0, i32 0, !dbg !6367
  %68 = load ptr, ptr %coerce.dive87, align 8, !dbg !6367
  call void @put_dev_sector(ptr %68) #8, !dbg !6367
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6368
  br label %cleanup88, !dbg !6368

cleanup88:                                        ; preds = %done, %cleanup, %if.then7, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !6368
  call void @llvm.lifetime.end.p0(i64 4, ptr %loopct) #7, !dbg !6368
  call void @llvm.lifetime.end.p0(i64 8, ptr %sector_size) #7, !dbg !6368
  call void @llvm.lifetime.end.p0(i64 8, ptr %this_size) #7, !dbg !6368
  call void @llvm.lifetime.end.p0(i64 8, ptr %this_sector) #7, !dbg !6368
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #7, !dbg !6368
  call void @llvm.lifetime.end.p0(i64 8, ptr %sect) #7, !dbg !6368
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #7, !dbg !6368
  %cleanup.dest96 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest96, label %unreachable [
    i32 0, label %cleanup.cont97
    i32 1, label %cleanup.cont97
  ]

cleanup.cont97:                                   ; preds = %cleanup88, %cleanup88
  ret void, !dbg !6368

unreachable:                                      ; preds = %cleanup88
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_info(ptr noundef %state, i32 noundef %slot, i32 noundef %disksig) #0 align 16 !dbg !6369 {
entry:
  %state.addr = alloca ptr, align 8
  %slot.addr = alloca i32, align 4
  %disksig.addr = alloca i32, align 4
  %info = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !6373, metadata !DIExpression()), !dbg !6377
  store i32 %slot, ptr %slot.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !6374, metadata !DIExpression()), !dbg !6378
  store i32 %disksig, ptr %disksig.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %disksig.addr, metadata !6375, metadata !DIExpression()), !dbg !6379
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #7, !dbg !6380
  call void @llvm.dbg.declare(metadata ptr %info, metadata !6376, metadata !DIExpression()), !dbg !6381
  %0 = load ptr, ptr %state.addr, align 8, !dbg !6382
  %parts = getelementptr inbounds %struct.parsed_partitions, ptr %0, i32 0, i32 2, !dbg !6383
  %1 = load ptr, ptr %parts, align 8, !dbg !6383
  %2 = load i32, ptr %slot.addr, align 4, !dbg !6384
  %idxprom = sext i32 %2 to i64, !dbg !6382
  %arrayidx = getelementptr %struct.anon.16, ptr %1, i64 %idxprom, !dbg !6382
  %info1 = getelementptr inbounds %struct.anon.16, ptr %arrayidx, i32 0, i32 4, !dbg !6385
  store ptr %info1, ptr %info, align 8, !dbg !6381
  %3 = load ptr, ptr %info, align 8, !dbg !6386
  %uuid = getelementptr inbounds %struct.partition_meta_info, ptr %3, i32 0, i32 0, !dbg !6387
  %arraydecay = getelementptr inbounds [37 x i8], ptr %uuid, i64 0, i64 0, !dbg !6386
  %4 = load i32, ptr %disksig.addr, align 4, !dbg !6388
  %5 = load i32, ptr %slot.addr, align 4, !dbg !6389
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 37, ptr noundef @.str.7, i32 noundef %4, i32 noundef %5) #8, !dbg !6390
  %6 = load ptr, ptr %info, align 8, !dbg !6391
  %volname = getelementptr inbounds %struct.partition_meta_info, ptr %6, i32 0, i32 1, !dbg !6392
  %arrayidx2 = getelementptr [64 x i8], ptr %volname, i64 0, i64 0, !dbg !6391
  store i8 0, ptr %arrayidx2, align 1, !dbg !6393
  %7 = load ptr, ptr %state.addr, align 8, !dbg !6394
  %parts3 = getelementptr inbounds %struct.parsed_partitions, ptr %7, i32 0, i32 2, !dbg !6395
  %8 = load ptr, ptr %parts3, align 8, !dbg !6395
  %9 = load i32, ptr %slot.addr, align 4, !dbg !6396
  %idxprom4 = sext i32 %9 to i64, !dbg !6394
  %arrayidx5 = getelementptr %struct.anon.16, ptr %8, i64 %idxprom4, !dbg !6394
  %has_info = getelementptr inbounds %struct.anon.16, ptr %arrayidx5, i32 0, i32 3, !dbg !6397
  store i8 1, ptr %has_info, align 4, !dbg !6398
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #7, !dbg !6399
  ret void, !dbg !6399
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @folio_put(ptr noundef %folio) #3 align 16 !dbg !6400 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6402, metadata !DIExpression()), !dbg !6403
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6404
  %call = call i32 @folio_put_testzero(ptr noundef %0) #8, !dbg !6406
  %tobool = icmp ne i32 %call, 0, !dbg !6406
  br i1 %tobool, label %if.then, label %if.end, !dbg !6407

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %folio.addr, align 8, !dbg !6408
  call void @__folio_put(ptr noundef %1) #8, !dbg !6409
  br label %if.end, !dbg !6409

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6410
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @folio_put_testzero(ptr noundef %folio) #3 align 16 !dbg !6411 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6413, metadata !DIExpression()), !dbg !6414
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6415
  %1 = getelementptr inbounds %struct.folio, ptr %0, i32 0, i32 0, !dbg !6416
  %call = call i32 @put_page_testzero(ptr noundef %1) #8, !dbg !6417
  ret i32 %call, !dbg !6418
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6419 dso_local void @__folio_put(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @put_page_testzero(ptr noundef %page) #3 align 16 !dbg !6420 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6424, metadata !DIExpression()), !dbg !6425
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6426
  %call = call i32 @page_ref_dec_and_test(ptr noundef %0) #8, !dbg !6427
  ret i32 %call, !dbg !6428
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @page_ref_dec_and_test(ptr noundef %page) #3 align 16 !dbg !6429 {
entry:
  %page.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6432, metadata !DIExpression()), !dbg !6434
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !6435
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6433, metadata !DIExpression()), !dbg !6436
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6437
  %_refcount = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 3, !dbg !6438
  %call = call zeroext i1 @atomic_dec_and_test(ptr noundef %_refcount) #8, !dbg !6439
  %conv = zext i1 %call to i32, !dbg !6439
  store i32 %conv, ptr %ret, align 4, !dbg !6436
  %1 = load i32, ptr %ret, align 4, !dbg !6440
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !6441
  ret i32 %1, !dbg !6442
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_dec_and_test(ptr noundef %v) #5 align 16 !dbg !6443 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6449, metadata !DIExpression()), !dbg !6450
  br label %do.body, !dbg !6451

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6452

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6454
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #8, !dbg !6455
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6456
  %call = call zeroext i1 @raw_atomic_dec_and_test(ptr noundef %1) #8, !dbg !6457
  ret i1 %call, !dbg !6458
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !6459 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6467, metadata !DIExpression()), !dbg !6469
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6468, metadata !DIExpression()), !dbg !6470
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6471
  %1 = load i64, ptr %size.addr, align 8, !dbg !6472
  %conv = trunc i64 %1 to i32, !dbg !6472
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #8, !dbg !6473
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6474
  %3 = load i64, ptr %size.addr, align 8, !dbg !6474
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #8, !dbg !6474
  ret void, !dbg !6475
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_dec_and_test(ptr noundef %v) #5 align 16 !dbg !6476 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6479, metadata !DIExpression()), !dbg !6480
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6481
  %call = call zeroext i1 @arch_atomic_dec_and_test(ptr noundef %0) #8, !dbg !6482
  ret i1 %call, !dbg !6483
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !6484 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6489, metadata !DIExpression()), !dbg !6491
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6490, metadata !DIExpression()), !dbg !6492
  ret i1 true, !dbg !6493
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !6494 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6499, metadata !DIExpression()), !dbg !6502
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6500, metadata !DIExpression()), !dbg !6503
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6501, metadata !DIExpression()), !dbg !6504
  ret void, !dbg !6505
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_dec_and_test(ptr noundef %v) #5 align 16 !dbg !6506 {
entry:
  %v.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6509, metadata !DIExpression()), !dbg !6512
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #7, !dbg !6513
  call void @llvm.dbg.declare(metadata ptr %c, metadata !6510, metadata !DIExpression()), !dbg !6513
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6513
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6513
  %1 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decl $0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #7, !dbg !6513, !srcloc !6514
  %2 = icmp ult i8 %1, 2, !dbg !6513
  call void @llvm.assume(i1 %2), !dbg !6513
  store i8 %1, ptr %c, align 1, !dbg !6513
  %3 = load i8, ptr %c, align 1, !dbg !6513, !range !6515, !noundef !1217
  %tobool = trunc i8 %3 to i1, !dbg !6513
  %frombool = zext i1 %tobool to i8, !dbg !6513
  store i8 %frombool, ptr %tmp, align 1, !dbg !6513
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #7, !dbg !6516
  %4 = load i8, ptr %tmp, align 1, !dbg !6513, !range !6515, !noundef !1217
  %tobool1 = trunc i8 %4 to i1, !dbg !6513
  ret i1 %tobool1, !dbg !6517
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_unaligned_le32(ptr noundef %p) #3 align 16 !dbg !317 {
entry:
  %p.addr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !324, metadata !DIExpression()), !dbg !6518
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #7, !dbg !6519
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !325, metadata !DIExpression()), !dbg !6519
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6519
  store ptr %0, ptr %__pptr, align 8, !dbg !6519
  %1 = load ptr, ptr %__pptr, align 8, !dbg !6519
  %x = getelementptr inbounds %struct.anon.38, ptr %1, i32 0, i32 0, !dbg !6519
  %2 = load i32, ptr %x, align 1, !dbg !6519
  store i32 %2, ptr %tmp, align 4, !dbg !6519
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #7, !dbg !6520
  %3 = load i32, ptr %tmp, align 4, !dbg !6519
  ret i32 %3, !dbg !6521
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6522 dso_local i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @parse_freebsd(ptr noundef %state, i64 noundef %offset, i64 noundef %size, i32 noundef %origin) #0 align 16 !dbg !6526 {
entry:
  %state.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %origin.addr = alloca i32, align 4
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !6528, metadata !DIExpression()), !dbg !6532
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !6529, metadata !DIExpression()), !dbg !6533
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6530, metadata !DIExpression()), !dbg !6534
  store i32 %origin, ptr %origin.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %origin.addr, metadata !6531, metadata !DIExpression()), !dbg !6535
  ret void, !dbg !6536
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @parse_netbsd(ptr noundef %state, i64 noundef %offset, i64 noundef %size, i32 noundef %origin) #0 align 16 !dbg !6537 {
entry:
  %state.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %origin.addr = alloca i32, align 4
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !6539, metadata !DIExpression()), !dbg !6543
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !6540, metadata !DIExpression()), !dbg !6544
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6541, metadata !DIExpression()), !dbg !6545
  store i32 %origin, ptr %origin.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %origin.addr, metadata !6542, metadata !DIExpression()), !dbg !6546
  ret void, !dbg !6547
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @parse_openbsd(ptr noundef %state, i64 noundef %offset, i64 noundef %size, i32 noundef %origin) #0 align 16 !dbg !6548 {
entry:
  %state.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %origin.addr = alloca i32, align 4
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !6550, metadata !DIExpression()), !dbg !6554
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !6551, metadata !DIExpression()), !dbg !6555
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6552, metadata !DIExpression()), !dbg !6556
  store i32 %origin, ptr %origin.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %origin.addr, metadata !6553, metadata !DIExpression()), !dbg !6557
  ret void, !dbg !6558
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @parse_minix(ptr noundef %state, i64 noundef %offset, i64 noundef %size, i32 noundef %origin) #0 align 16 !dbg !6559 {
entry:
  %state.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %origin.addr = alloca i32, align 4
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !6561, metadata !DIExpression()), !dbg !6565
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !6562, metadata !DIExpression()), !dbg !6566
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6563, metadata !DIExpression()), !dbg !6567
  store i32 %origin, ptr %origin.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %origin.addr, metadata !6564, metadata !DIExpression()), !dbg !6568
  ret void, !dbg !6569
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @parse_unixware(ptr noundef %state, i64 noundef %offset, i64 noundef %size, i32 noundef %origin) #0 align 16 !dbg !6570 {
entry:
  %state.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %origin.addr = alloca i32, align 4
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !6572, metadata !DIExpression()), !dbg !6576
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !6573, metadata !DIExpression()), !dbg !6577
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6574, metadata !DIExpression()), !dbg !6578
  store i32 %origin, ptr %origin.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %origin.addr, metadata !6575, metadata !DIExpression()), !dbg !6579
  ret void, !dbg !6580
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @parse_solaris_x86(ptr noundef %state, i64 noundef %offset, i64 noundef %size, i32 noundef %origin) #0 align 16 !dbg !6581 {
entry:
  %state.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %origin.addr = alloca i32, align 4
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !6583, metadata !DIExpression()), !dbg !6587
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !6584, metadata !DIExpression()), !dbg !6588
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6585, metadata !DIExpression()), !dbg !6589
  store i32 %origin, ptr %origin.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %origin.addr, metadata !6586, metadata !DIExpression()), !dbg !6590
  ret void, !dbg !6591
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }
attributes #8 = { noredzone }

!llvm.dbg.cu = !{!31}
!llvm.module.flags = !{!5532, !5533, !5534, !5535, !5536, !5537, !5538, !5539}
!llvm.ident = !{!5540}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 605, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "block/partitions/msdos.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "56d29688ecaa8fccc644a17484507fc5")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 7)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 632, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 2)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 681, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 3)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 683, type: !14, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 691, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 5)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 693, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 6)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "subtypes", scope: !31, file: !2, line: 570, type: !339, isLocal: true, isDefinition: true)
!31 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF block/partitions/.msdos.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22block/partitions/msdos\22 -D KBUILD_BASENAME=\22msdos\22 -D KBUILD_MODNAME=\22msdos\22 -D __KBUILD_MODNAME=kmod_msdos -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o block/partitions/msdos.ll block/partitions/msdos.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !32, retainedTypes: !224, globals: !330, splitDebugInlining: false, nameTableKind: None)
!32 = !{!33, !41, !46, !54, !62, !78, !84, !89, !95, !102, !109, !115, !121, !125, !129, !135, !142, !150, !158, !167, !172, !177, !183, !188, !193, !198, !219}
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !34, line: 312, baseType: !35, size: 32, elements: !36)
!34 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!35 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!36 = !{!37, !38, !39, !40}
!37 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!38 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!39 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!40 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !42, line: 2052, baseType: !35, size: 32, elements: !43)
!42 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!43 = !{!44, !45}
!44 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!45 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !47, line: 9, baseType: !35, size: 32, elements: !48)
!47 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!48 = !{!49, !50, !51, !52, !53}
!49 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!50 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!51 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!52 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!53 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !55, line: 68, baseType: !35, size: 32, elements: !56)
!55 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!56 = !{!57, !58, !59, !60, !61}
!57 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!58 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!59 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!60 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!61 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !63, line: 1325, baseType: !35, size: 32, elements: !64)
!63 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!64 = !{!65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77}
!65 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!66 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!67 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!68 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!69 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!70 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!71 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!72 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!73 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!74 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!75 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!76 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!77 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !79, line: 54, baseType: !35, size: 32, elements: !80)
!79 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!80 = !{!81, !82, !83}
!81 = !DIEnumerator(name: "USRQUOTA", value: 0)
!82 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!83 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !85, line: 65, baseType: !35, size: 32, elements: !86)
!85 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!86 = !{!87, !88}
!87 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!88 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !90, line: 16, baseType: !35, size: 32, elements: !91)
!90 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!91 = !{!92, !93, !94}
!92 = !DIEnumerator(name: "TT_NONE", value: 0)
!93 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!94 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !96, line: 51, baseType: !35, size: 32, elements: !97)
!96 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!97 = !{!98, !99, !100, !101}
!98 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!99 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!100 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!101 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !103, line: 15, baseType: !35, size: 32, elements: !104)
!103 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!104 = !{!105, !106, !107, !108}
!105 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!106 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!107 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!108 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !110, line: 26, baseType: !35, size: 32, elements: !111)
!110 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!111 = !{!112, !113, !114}
!112 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!113 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!114 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mq_rq_state", file: !116, line: 68, baseType: !35, size: 32, elements: !117)
!116 = !DIFile(filename: "./include/linux/blk-mq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "62cf1706db3683ee75df9cf32a2cf47d")
!117 = !{!118, !119, !120}
!118 = !DIEnumerator(name: "MQ_RQ_IDLE", value: 0)
!119 = !DIEnumerator(name: "MQ_RQ_IN_FLIGHT", value: 1)
!120 = !DIEnumerator(name: "MQ_RQ_COMPLETE", value: 2)
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rq_end_io_ret", file: !116, line: 18, baseType: !35, size: 32, elements: !122)
!122 = !{!123, !124}
!123 = !DIEnumerator(name: "RQ_END_IO_NONE", value: 0)
!124 = !DIEnumerator(name: "RQ_END_IO_FREE", value: 1)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_eh_timer_return", file: !116, line: 276, baseType: !35, size: 32, elements: !126)
!126 = !{!127, !128}
!127 = !DIEnumerator(name: "BLK_EH_DONE", value: 0)
!128 = !DIEnumerator(name: "BLK_EH_RESET_TIMER", value: 1)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !130, line: 45, baseType: !35, size: 32, elements: !131)
!130 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!131 = !{!132, !133, !134}
!132 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!133 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!134 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !136, line: 487, baseType: !35, size: 32, elements: !137)
!136 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!137 = !{!138, !139, !140, !141}
!138 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!139 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!140 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!141 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!142 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !143, line: 620, baseType: !35, size: 32, elements: !144)
!143 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!144 = !{!145, !146, !147, !148, !149}
!145 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!146 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!147 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!148 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!149 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!150 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !143, line: 597, baseType: !151, size: 32, elements: !152)
!151 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!152 = !{!153, !154, !155, !156, !157}
!153 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!154 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!155 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!156 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!157 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !136, line: 547, baseType: !35, size: 32, elements: !159)
!159 = !{!160, !161, !162, !163, !164, !165, !166}
!160 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!161 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!162 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!163 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!164 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!165 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!166 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!167 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !136, line: 564, baseType: !35, size: 32, elements: !168)
!168 = !{!169, !170, !171}
!169 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!170 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!171 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!172 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !136, line: 577, baseType: !35, size: 32, elements: !173)
!173 = !{!174, !175, !176}
!174 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!175 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!176 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!177 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !136, line: 503, baseType: !35, size: 32, elements: !178)
!178 = !{!179, !180, !181, !182}
!179 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!180 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!181 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!182 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_bounce", file: !184, line: 295, baseType: !35, size: 32, elements: !185)
!184 = !DIFile(filename: "./include/linux/blkdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "802ed60c7d9aff392515db0b7890881d")
!185 = !{!186, !187}
!186 = !DIEnumerator(name: "BLK_BOUNCE_NONE", value: 0)
!187 = !DIEnumerator(name: "BLK_BOUNCE_HIGH", value: 1)
!188 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_zoned_model", file: !184, line: 285, baseType: !35, size: 32, elements: !189)
!189 = !{!190, !191, !192}
!190 = !DIEnumerator(name: "BLK_ZONED_NONE", value: 0)
!191 = !DIEnumerator(name: "BLK_ZONED_HA", value: 1)
!192 = !DIEnumerator(name: "BLK_ZONED_HM", value: 2)
!193 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_unique_id", file: !184, line: 1381, baseType: !35, size: 32, elements: !194)
!194 = !{!195, !196, !197}
!195 = !DIEnumerator(name: "BLK_UID_T10", value: 1)
!196 = !DIEnumerator(name: "BLK_UID_EUI64", value: 2)
!197 = !DIEnumerator(name: "BLK_UID_NAA", value: 3)
!198 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "msdos_sys_ind", file: !199, line: 20, baseType: !35, size: 32, elements: !200)
!199 = !DIFile(filename: "./include/linux/msdos_partition.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "289bfcc9e3b815ded65941600d0b656e")
!200 = !{!201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218}
!201 = !DIEnumerator(name: "DOS_EXTENDED_PARTITION", value: 5)
!202 = !DIEnumerator(name: "LINUX_EXTENDED_PARTITION", value: 133)
!203 = !DIEnumerator(name: "WIN98_EXTENDED_PARTITION", value: 15)
!204 = !DIEnumerator(name: "LINUX_DATA_PARTITION", value: 131)
!205 = !DIEnumerator(name: "LINUX_LVM_PARTITION", value: 142)
!206 = !DIEnumerator(name: "LINUX_RAID_PARTITION", value: 253)
!207 = !DIEnumerator(name: "SOLARIS_X86_PARTITION", value: 130)
!208 = !DIEnumerator(name: "NEW_SOLARIS_X86_PARTITION", value: 191)
!209 = !DIEnumerator(name: "DM6_AUX1PARTITION", value: 81)
!210 = !DIEnumerator(name: "DM6_AUX3PARTITION", value: 83)
!211 = !DIEnumerator(name: "DM6_PARTITION", value: 84)
!212 = !DIEnumerator(name: "EZD_PARTITION", value: 85)
!213 = !DIEnumerator(name: "FREEBSD_PARTITION", value: 165)
!214 = !DIEnumerator(name: "OPENBSD_PARTITION", value: 166)
!215 = !DIEnumerator(name: "NETBSD_PARTITION", value: 169)
!216 = !DIEnumerator(name: "BSDI_PARTITION", value: 183)
!217 = !DIEnumerator(name: "MINIX_PARTITION", value: 129)
!218 = !DIEnumerator(name: "UNIXWARE_PARTITION", value: 99)
!219 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !220, line: 10, baseType: !35, size: 32, elements: !221)
!220 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!221 = !{!222, !223}
!222 = !DIEnumerator(name: "false", value: 0)
!223 = !DIEnumerator(name: "true", value: 1)
!224 = !{!225, !246, !307, !244, !308, !242, !313, !329}
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msdos_partition", file: !199, line: 7, size: 128, elements: !227)
!227 = !{!228, !234, !235, !236, !237, !238, !239, !240, !241, !245}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "boot_ind", scope: !226, file: !199, line: 8, baseType: !229, size: 8)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !230, line: 17, baseType: !231)
!230 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !232, line: 21, baseType: !233)
!232 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!233 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !226, file: !199, line: 9, baseType: !229, size: 8, offset: 8)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "sector", scope: !226, file: !199, line: 10, baseType: !229, size: 8, offset: 16)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "cyl", scope: !226, file: !199, line: 11, baseType: !229, size: 8, offset: 24)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "sys_ind", scope: !226, file: !199, line: 12, baseType: !229, size: 8, offset: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "end_head", scope: !226, file: !199, line: 13, baseType: !229, size: 8, offset: 40)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "end_sector", scope: !226, file: !199, line: 14, baseType: !229, size: 8, offset: 48)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "end_cyl", scope: !226, file: !199, line: 15, baseType: !229, size: 8, offset: 56)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "start_sect", scope: !226, file: !199, line: 16, baseType: !242, size: 32, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !243, line: 38, baseType: !244)
!243 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !232, line: 27, baseType: !35)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sects", scope: !226, file: !199, line: 17, baseType: !242, size: 32, offset: 96)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fat_boot_sector", file: !248, line: 108, size: 736, elements: !249)
!248 = !DIFile(filename: "./include/uapi/linux/msdos_fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c3cb8f933672ca730d2ef7b5cb690cdb")
!249 = !{!250, !252, !256, !258, !259, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "ignored", scope: !247, file: !248, line: 109, baseType: !251, size: 24)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 24, elements: !15)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "system_id", scope: !247, file: !248, line: 110, baseType: !253, size: 64, offset: 24)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 64, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 8)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "sector_size", scope: !247, file: !248, line: 112, baseType: !257, size: 16, offset: 88)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 16, elements: !10)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "sec_per_clus", scope: !247, file: !248, line: 113, baseType: !231, size: 8, offset: 104)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !247, file: !248, line: 114, baseType: !260, size: 16, offset: 112)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !243, line: 36, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !232, line: 24, baseType: !262)
!262 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "fats", scope: !247, file: !248, line: 115, baseType: !231, size: 8, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "dir_entries", scope: !247, file: !248, line: 116, baseType: !257, size: 16, offset: 136)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "sectors", scope: !247, file: !248, line: 117, baseType: !257, size: 16, offset: 152)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "media", scope: !247, file: !248, line: 118, baseType: !231, size: 8, offset: 168)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "fat_length", scope: !247, file: !248, line: 119, baseType: !260, size: 16, offset: 176)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "secs_track", scope: !247, file: !248, line: 120, baseType: !260, size: 16, offset: 192)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !247, file: !248, line: 121, baseType: !260, size: 16, offset: 208)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "hidden", scope: !247, file: !248, line: 122, baseType: !242, size: 32, offset: 224)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "total_sect", scope: !247, file: !248, line: 123, baseType: !242, size: 32, offset: 256)
!272 = !DIDerivedType(tag: DW_TAG_member, scope: !247, file: !248, line: 125, baseType: !273, size: 448, offset: 288)
!273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !247, file: !248, line: 125, size: 448, elements: !274)
!274 = !{!275, !290}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "fat16", scope: !273, file: !248, line: 136, baseType: !276, size: 208)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !273, file: !248, line: 126, size: 208, elements: !277)
!277 = !{!278, !279, !280, !281, !285, !289}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "drive_number", scope: !276, file: !248, line: 128, baseType: !231, size: 8)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !276, file: !248, line: 129, baseType: !231, size: 8, offset: 8)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !276, file: !248, line: 131, baseType: !231, size: 8, offset: 16)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "vol_id", scope: !276, file: !248, line: 132, baseType: !282, size: 32, offset: 24)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 32, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 4)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "vol_label", scope: !276, file: !248, line: 133, baseType: !286, size: 88, offset: 56)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 88, elements: !287)
!287 = !{!288}
!288 = !DISubrange(count: 11)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "fs_type", scope: !276, file: !248, line: 134, baseType: !253, size: 64, offset: 144)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "fat32", scope: !273, file: !248, line: 159, baseType: !291, size: 448)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !273, file: !248, line: 138, size: 448, elements: !292)
!292 = !{!293, !294, !295, !296, !297, !298, !299, !301, !302, !303, !304, !305, !306}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !291, file: !248, line: 140, baseType: !242, size: 32)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !291, file: !248, line: 141, baseType: !260, size: 16, offset: 32)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !291, file: !248, line: 143, baseType: !257, size: 16, offset: 48)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "root_cluster", scope: !291, file: !248, line: 145, baseType: !242, size: 32, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "info_sector", scope: !291, file: !248, line: 147, baseType: !260, size: 16, offset: 96)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "backup_boot", scope: !291, file: !248, line: 148, baseType: !260, size: 16, offset: 112)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !291, file: !248, line: 149, baseType: !300, size: 96, offset: 128)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 96, elements: !27)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "drive_number", scope: !291, file: !248, line: 151, baseType: !231, size: 8, offset: 224)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !291, file: !248, line: 152, baseType: !231, size: 8, offset: 232)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !291, file: !248, line: 154, baseType: !231, size: 8, offset: 240)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "vol_id", scope: !291, file: !248, line: 155, baseType: !282, size: 32, offset: 248)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "vol_label", scope: !291, file: !248, line: 156, baseType: !286, size: 88, offset: 280)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "fs_type", scope: !291, file: !248, line: 157, baseType: !253, size: 64, offset: 368)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !309, line: 131, baseType: !310)
!309 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !230, line: 23, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !232, line: 31, baseType: !312)
!312 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !317, file: !316, line: 32, size: 32, elements: !327)
!316 = !DIFile(filename: "./include/asm-generic/unaligned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "748f8f0540bc62c04225db7eeae0e022")
!317 = distinct !DISubprogram(name: "get_unaligned_le32", scope: !316, file: !316, line: 30, type: !318, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !323)
!318 = !DISubroutineType(types: !319)
!319 = !{!320, !321}
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !230, line: 21, baseType: !244)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!323 = !{!324, !325}
!324 = !DILocalVariable(name: "p", arg: 1, scope: !317, file: !316, line: 30, type: !321)
!325 = !DILocalVariable(name: "__pptr", scope: !326, file: !316, line: 32, type: !313)
!326 = distinct !DILexicalBlock(scope: !317, file: !316, line: 32, column: 9)
!327 = !{!328}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !315, file: !316, line: 32, baseType: !242, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!330 = !{!0, !7, !12, !17, !19, !24, !331, !334, !29}
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(scope: null, file: !333, line: 44, type: !26, isLocal: true, isDefinition: true)
!333 = !DIFile(filename: "block/partitions/check.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72c47c6bdec8fe2cd02c9ca9371c8497")
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(scope: null, file: !2, line: 113, type: !336, isLocal: true, isDefinition: true)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !337)
!337 = !{!338}
!338 = !DISubrange(count: 10)
!339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 1024, elements: !254)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 567, size: 128, elements: !341)
!341 = !{!342, !343}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !340, file: !2, line: 568, baseType: !233, size: 8)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "parse", scope: !340, file: !2, line: 569, baseType: !344, size: 64, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !347, !308, !308, !151}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "parsed_partitions", file: !333, line: 10, size: 576, elements: !349)
!349 = !{!350, !5518, !5519, !5528, !5529, !5530, !5531}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "disk", scope: !348, file: !333, line: 11, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !184, line: 128, size: 4544, elements: !353)
!353 = !{!354, !355, !356, !357, !361, !362, !363, !406, !5388, !5476, !5477, !5478, !5479, !5480, !5481, !5482, !5483, !5484, !5485, !5486, !5487, !5490, !5491, !5494, !5497, !5498, !5501, !5502, !5503, !5504}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !352, file: !184, line: 133, baseType: !151, size: 32)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "first_minor", scope: !352, file: !184, line: 134, baseType: !151, size: 32, offset: 32)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "minors", scope: !352, file: !184, line: 135, baseType: !151, size: 32, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !352, file: !184, line: 137, baseType: !358, size: 256, offset: 96)
!358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !359)
!359 = !{!360}
!360 = !DISubrange(count: 32)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !352, file: !184, line: 139, baseType: !262, size: 16, offset: 352)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "event_flags", scope: !352, file: !184, line: 140, baseType: !262, size: 16, offset: 368)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "part_tbl", scope: !352, file: !184, line: 142, baseType: !364, size: 128, offset: 384)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !365, line: 296, size: 128, elements: !366)
!365 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!366 = !{!367, !403, !405}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !364, file: !365, line: 297, baseType: !368, size: 32)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !369, line: 29, baseType: !370)
!369 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !369, line: 17, size: 32, elements: !371)
!371 = !{!372}
!372 = !DIDerivedType(tag: DW_TAG_member, scope: !370, file: !369, line: 18, baseType: !373, size: 32)
!373 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !370, file: !369, line: 18, size: 32, elements: !374)
!374 = !{!375}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !373, file: !369, line: 19, baseType: !376, size: 32)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !377, line: 14, size: 32, elements: !378)
!377 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!378 = !{!379}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !376, file: !377, line: 15, baseType: !380, size: 32)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !381, line: 44, baseType: !382)
!381 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !381, line: 14, size: 32, elements: !383)
!383 = !{!384}
!384 = !DIDerivedType(tag: DW_TAG_member, scope: !382, file: !381, line: 15, baseType: !385, size: 32)
!385 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !382, file: !381, line: 15, size: 32, elements: !386)
!386 = !{!387, !392, !397}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !385, file: !381, line: 16, baseType: !388, size: 32)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !309, line: 174, baseType: !389)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !309, line: 172, size: 32, elements: !390)
!390 = !{!391}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !389, file: !309, line: 173, baseType: !151, size: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, scope: !385, file: !381, line: 24, baseType: !393, size: 16)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !385, file: !381, line: 24, size: 16, elements: !394)
!394 = !{!395, !396}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !393, file: !381, line: 25, baseType: !229, size: 8)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !393, file: !381, line: 26, baseType: !229, size: 8, offset: 8)
!397 = !DIDerivedType(tag: DW_TAG_member, scope: !385, file: !381, line: 28, baseType: !398, size: 32)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !385, file: !381, line: 28, size: 32, elements: !399)
!399 = !{!400, !402}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !398, file: !381, line: 29, baseType: !401, size: 16)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !230, line: 19, baseType: !261)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !398, file: !381, line: 30, baseType: !401, size: 16, offset: 16)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !364, file: !365, line: 299, baseType: !404, size: 32, offset: 32)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !309, line: 154, baseType: !35)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !364, file: !365, line: 300, baseType: !329, size: 64, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "part0", scope: !352, file: !184, line: 143, baseType: !407, size: 64, offset: 512)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !409, line: 40, size: 7424, elements: !410)
!409 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!410 = !{!411, !412, !413, !414, !5343, !5346, !5347, !5348, !5349, !5350, !5351, !5352, !5353, !5354, !5355, !5356, !5357, !5370, !5371, !5372, !5373, !5374, !5375, !5376, !5386, !5387}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !408, file: !409, line: 41, baseType: !308, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !408, file: !409, line: 42, baseType: !308, size: 64, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !408, file: !409, line: 43, baseType: !351, size: 64, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !408, file: !409, line: 44, baseType: !415, size: 64, offset: 192)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !184, line: 391, size: 7296, elements: !417)
!417 = !{!418, !4691, !4694, !4695, !4698, !4701, !4702, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4815, !4816, !4817, !4818, !4819, !4820, !5271, !5272, !5273, !5274, !5275, !5276, !5277, !5278, !5279, !5280, !5281, !5282, !5283, !5284, !5317, !5318, !5319, !5322, !5323, !5324, !5325, !5326, !5327, !5328, !5329, !5330, !5331, !5332, !5333, !5334, !5335, !5336, !5337, !5338, !5339, !5340, !5341, !5342}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "last_merge", scope: !416, file: !184, line: 392, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request", file: !116, line: 80, size: 1984, elements: !421)
!421 = !{!422, !423, !426, !4622, !4623, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4632, !4637, !4638, !4639, !4640, !4641, !4642, !4643, !4644, !4645, !4646, !4647, !4652, !4657, !4679, !4688, !4689, !4690}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !420, file: !116, line: 81, baseType: !415, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ctx", scope: !420, file: !116, line: 82, baseType: !424, size: 64, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ctx", file: !184, line: 404, flags: DIFlagFwdDecl)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "mq_hctx", scope: !420, file: !116, line: 83, baseType: !427, size: 64, offset: 128)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_hw_ctx", file: !116, line: 288, size: 4096, elements: !429)
!429 = !{!430, !442, !488, !498, !499, !500, !501, !502, !503, !518, !519, !539, !540, !541, !542, !543, !545, !546, !560, !561, !594, !595, !596, !597, !598, !599, !600, !601, !4619, !4620, !4621}
!430 = !DIDerivedType(tag: DW_TAG_member, scope: !428, file: !116, line: 289, baseType: !431, size: 512, align: 512)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !428, file: !116, line: 289, size: 512, align: 512, elements: !432)
!432 = !{!433, !434, !440}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !431, file: !116, line: 291, baseType: !368, size: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !431, file: !116, line: 299, baseType: !435, size: 128, offset: 64)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !309, line: 190, size: 128, elements: !436)
!436 = !{!437, !439}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !435, file: !309, line: 191, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !435, file: !309, line: 191, baseType: !438, size: 64, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !431, file: !116, line: 304, baseType: !441, size: 64, offset: 192)
!441 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "run_work", scope: !428, file: !116, line: 310, baseType: !443, size: 704, offset: 512)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !444, line: 111, size: 704, elements: !445)
!444 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!445 = !{!446, !466, !484, !487}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !443, file: !444, line: 112, baseType: !447, size: 256)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !444, line: 98, size: 256, elements: !448)
!448 = !{!449, !459, !460}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !447, file: !444, line: 99, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !451, line: 13, baseType: !452)
!451 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !309, line: 181, baseType: !453)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !309, line: 179, size: 64, elements: !454)
!454 = !{!455}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !453, file: !309, line: 180, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !230, line: 22, baseType: !457)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !232, line: 30, baseType: !458)
!458 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !447, file: !444, line: 100, baseType: !435, size: 128, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !447, file: !444, line: 101, baseType: !461, size: 64, offset: 192)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !444, line: 21, baseType: !462)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{null, !465}
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !443, file: !444, line: 113, baseType: !467, size: 320, offset: 256)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !468, line: 11, size: 320, elements: !469)
!468 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!469 = !{!470, !477, !478, !483}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !467, file: !468, line: 16, baseType: !471, size: 128)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !309, line: 198, size: 128, elements: !472)
!472 = !{!473, !475}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !471, file: !309, line: 199, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !471, file: !309, line: 199, baseType: !476, size: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !467, file: !468, line: 17, baseType: !441, size: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !467, file: !468, line: 18, baseType: !479, size: 64, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{null, !482}
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !467, file: !468, line: 19, baseType: !320, size: 32, offset: 256)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !443, file: !444, line: 116, baseType: !485, size: 64, offset: 576)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !444, line: 18, flags: DIFlagFwdDecl)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !443, file: !444, line: 117, baseType: !151, size: 32, offset: 640)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !428, file: !116, line: 312, baseType: !489, size: 64, offset: 1216)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !490, line: 913, baseType: !491)
!490 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !492, size: 64, elements: !496)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !490, line: 19, size: 64, elements: !493)
!493 = !{!494}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !492, file: !490, line: 19, baseType: !495, size: 64)
!495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 64, elements: !496)
!496 = !{!497}
!497 = !DISubrange(count: 1)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "next_cpu", scope: !428, file: !116, line: 317, baseType: !151, size: 32, offset: 1280)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "next_cpu_batch", scope: !428, file: !116, line: 322, baseType: !151, size: 32, offset: 1312)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !428, file: !116, line: 325, baseType: !441, size: 64, offset: 1344)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "sched_data", scope: !428, file: !116, line: 331, baseType: !329, size: 64, offset: 1408)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !428, file: !116, line: 335, baseType: !415, size: 64, offset: 1472)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !428, file: !116, line: 337, baseType: !504, size: 64, offset: 1536)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_flush_queue", file: !506, line: 17, size: 512, elements: !507)
!506 = !DIFile(filename: "block/partitions/../blk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "08e4a891c7a7b1c380cd6f0c6d03b93a")
!507 = !{!508, !509, !510, !511, !513, !514, !516, !517}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "mq_flush_lock", scope: !505, file: !506, line: 18, baseType: !368, size: 32)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "flush_pending_idx", scope: !505, file: !506, line: 19, baseType: !35, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "flush_running_idx", scope: !505, file: !506, line: 20, baseType: !35, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "rq_status", scope: !505, file: !506, line: 21, baseType: !512, size: 8, offset: 40)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_status_t", file: !409, line: 97, baseType: !229)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "flush_pending_since", scope: !505, file: !506, line: 22, baseType: !441, size: 64, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "flush_queue", scope: !505, file: !506, line: 23, baseType: !515, size: 256, offset: 128)
!515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 256, elements: !10)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "flush_data_in_flight", scope: !505, file: !506, line: 24, baseType: !441, size: 64, offset: 384)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "flush_rq", scope: !505, file: !506, line: 25, baseType: !419, size: 64, offset: 448)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !428, file: !116, line: 343, baseType: !329, size: 64, offset: 1600)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_map", scope: !428, file: !116, line: 349, baseType: !520, size: 256, offset: 1664)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbitmap", file: !521, line: 52, size: 256, elements: !522)
!521 = !DIFile(filename: "./include/linux/sbitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c1a10e3a5ba3f1b25200b1abce63f43a")
!522 = !{!523, !524, !525, !526, !529, !537}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !520, file: !521, line: 56, baseType: !35, size: 32)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !520, file: !521, line: 61, baseType: !35, size: 32, offset: 32)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "map_nr", scope: !520, file: !521, line: 66, baseType: !35, size: 32, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "round_robin", scope: !520, file: !521, line: 71, baseType: !527, size: 8, offset: 96)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !309, line: 35, baseType: !528)
!528 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !520, file: !521, line: 76, baseType: !530, size: 64, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbitmap_word", file: !521, line: 29, size: 1024, align: 512, elements: !532)
!532 = !{!533, !534, !535}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !531, file: !521, line: 33, baseType: !441, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "cleared", scope: !531, file: !521, line: 38, baseType: !441, size: 64, align: 512, offset: 512)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "swap_lock", scope: !531, file: !521, line: 43, baseType: !536, size: 32, offset: 576)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !377, line: 23, baseType: !376)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_hint", scope: !520, file: !521, line: 84, baseType: !538, size: 64, offset: 192)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_from", scope: !428, file: !116, line: 355, baseType: !424, size: 64, offset: 1920)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_busy", scope: !428, file: !116, line: 361, baseType: !35, size: 32, offset: 1984)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !428, file: !116, line: 364, baseType: !262, size: 16, offset: 2016)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ctx", scope: !428, file: !116, line: 366, baseType: !262, size: 16, offset: 2032)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "ctxs", scope: !428, file: !116, line: 368, baseType: !544, size: 64, offset: 2048)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_wait_lock", scope: !428, file: !116, line: 371, baseType: !368, size: 32, offset: 2112)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_wait", scope: !428, file: !116, line: 376, baseType: !547, size: 320, offset: 2176)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !548, line: 14, baseType: !549)
!548 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !548, line: 30, size: 320, elements: !550)
!550 = !{!551, !552, !553, !559}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !549, file: !548, line: 31, baseType: !35, size: 32)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !549, file: !548, line: 32, baseType: !329, size: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !549, file: !548, line: 33, baseType: !554, size: 64, offset: 128)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !548, line: 16, baseType: !555)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{!151, !558, !35, !151, !329}
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !549, file: !548, line: 34, baseType: !435, size: 128, offset: 192)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !428, file: !116, line: 382, baseType: !388, size: 32, offset: 2496)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "tags", scope: !428, file: !116, line: 388, baseType: !562, size: 64, offset: 2560)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tags", file: !116, line: 735, size: 1472, elements: !564)
!564 = !{!565, !566, !567, !568, !588, !589, !591, !592, !593}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tags", scope: !563, file: !116, line: 736, baseType: !35, size: 32)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "nr_reserved_tags", scope: !563, file: !116, line: 737, baseType: !35, size: 32, offset: 32)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "active_queues", scope: !563, file: !116, line: 738, baseType: !35, size: 32, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap_tags", scope: !563, file: !116, line: 740, baseType: !569, size: 512, offset: 128)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbitmap_queue", file: !521, line: 109, size: 512, elements: !570)
!570 = !{!571, !572, !573, !574, !584, !585, !586, !587}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "sb", scope: !569, file: !521, line: 113, baseType: !520, size: 256)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "wake_batch", scope: !569, file: !521, line: 119, baseType: !35, size: 32, offset: 256)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "wake_index", scope: !569, file: !521, line: 124, baseType: !388, size: 32, offset: 288)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !569, file: !521, line: 129, baseType: !575, size: 64, offset: 320)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbq_wait_state", file: !521, line: 93, size: 512, align: 512, elements: !577)
!577 = !{!578}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !576, file: !521, line: 97, baseType: !579, size: 192)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !548, line: 41, baseType: !580)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !548, line: 37, size: 192, elements: !581)
!581 = !{!582, !583}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !580, file: !548, line: 38, baseType: !368, size: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !580, file: !548, line: 39, baseType: !435, size: 128, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "ws_active", scope: !569, file: !521, line: 134, baseType: !388, size: 32, offset: 384)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "min_shallow_depth", scope: !569, file: !521, line: 140, baseType: !35, size: 32, offset: 416)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "completion_cnt", scope: !569, file: !521, line: 146, baseType: !388, size: 32, offset: 448)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_cnt", scope: !569, file: !521, line: 151, baseType: !388, size: 32, offset: 480)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "breserved_tags", scope: !563, file: !116, line: 741, baseType: !569, size: 512, offset: 640)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "rqs", scope: !563, file: !116, line: 743, baseType: !590, size: 64, offset: 1152)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "static_rqs", scope: !563, file: !116, line: 744, baseType: !590, size: 64, offset: 1216)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "page_list", scope: !563, file: !116, line: 745, baseType: !435, size: 128, offset: 1280)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !563, file: !116, line: 751, baseType: !368, size: 32, offset: 1408)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "sched_tags", scope: !428, file: !116, line: 394, baseType: !562, size: 64, offset: 2624)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !428, file: !116, line: 397, baseType: !441, size: 64, offset: 2688)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !428, file: !116, line: 400, baseType: !35, size: 32, offset: 2752)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "queue_num", scope: !428, file: !116, line: 402, baseType: !35, size: 32, offset: 2784)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active", scope: !428, file: !116, line: 408, baseType: !388, size: 32, offset: 2816)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_online", scope: !428, file: !116, line: 411, baseType: !471, size: 128, offset: 2880)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !428, file: !116, line: 413, baseType: !471, size: 128, offset: 3008)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !428, file: !116, line: 415, baseType: !602, size: 512, offset: 3136)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !603, line: 64, size: 512, elements: !604)
!603 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!604 = !{!605, !608, !609, !611, !656, !4517, !4609, !4614, !4615, !4616, !4617, !4618}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !602, file: !603, line: 65, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !602, file: !603, line: 66, baseType: !435, size: 128, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !602, file: !603, line: 67, baseType: !610, size: 64, offset: 192)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !602, file: !603, line: 68, baseType: !612, size: 64, offset: 256)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !603, line: 168, size: 768, elements: !614)
!614 = !{!615, !616, !617, !618}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !613, file: !603, line: 169, baseType: !435, size: 128)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !613, file: !603, line: 170, baseType: !368, size: 32, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !613, file: !603, line: 171, baseType: !602, size: 512, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !613, file: !603, line: 172, baseType: !619, size: 64, offset: 704)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !621)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !603, line: 133, size: 192, elements: !622)
!622 = !{!623, !630, !635}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !621, file: !603, line: 134, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !625)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!151, !628}
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !602)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !621, file: !603, line: 135, baseType: !631, size: 64, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !632)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{!606, !628}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !621, file: !603, line: 136, baseType: !636, size: 64, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !637)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!151, !628, !640}
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !603, line: 125, size: 20736, elements: !642)
!642 = !{!643, !646, !650, !651, !655}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !641, file: !603, line: 126, baseType: !644, size: 192)
!644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !645, size: 192, elements: !15)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !641, file: !603, line: 127, baseType: !647, size: 4096, offset: 192)
!647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !645, size: 4096, elements: !648)
!648 = !{!649}
!649 = !DISubrange(count: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !641, file: !603, line: 128, baseType: !151, size: 32, offset: 4288)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !641, file: !603, line: 129, baseType: !652, size: 16384, offset: 4320)
!652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !653)
!653 = !{!654}
!654 = !DISubrange(count: 2048)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !641, file: !603, line: 130, baseType: !151, size: 32, offset: 20704)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !602, file: !603, line: 69, baseType: !657, size: 64, offset: 320)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !659)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !603, line: 116, size: 384, elements: !660)
!660 = !{!661, !665, !693, !4479, !4507, !4511}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !659, file: !603, line: 117, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DISubroutineType(types: !664)
!664 = !{null, !610}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !659, file: !603, line: 118, baseType: !666, size: 64, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !668)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !669, line: 254, size: 128, elements: !670)
!669 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!670 = !{!671, !686}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !668, file: !669, line: 255, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{!675, !610, !680, !645}
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !309, line: 66, baseType: !676)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !677, line: 73, baseType: !678)
!677 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !677, line: 15, baseType: !679)
!679 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !669, line: 30, size: 128, elements: !682)
!682 = !{!683, !684}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !681, file: !669, line: 31, baseType: !606, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !681, file: !669, line: 32, baseType: !685, size: 16, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !309, line: 24, baseType: !262)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !668, file: !669, line: 256, baseType: !687, size: 64, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{!675, !610, !680, !606, !690}
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !309, line: 61, baseType: !691)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !677, line: 72, baseType: !692)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !677, line: 16, baseType: !441)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !659, file: !603, line: 119, baseType: !694, size: 64, offset: 128)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !697)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !669, line: 84, size: 320, elements: !698)
!698 = !{!699, !700, !704, !4475, !4477}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !697, file: !669, line: 85, baseType: !606, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !697, file: !669, line: 86, baseType: !701, size: 64, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DISubroutineType(types: !703)
!703 = !{!685, !610, !680, !151}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !697, file: !669, line: 88, baseType: !705, size: 64, offset: 128)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{!685, !610, !708, !151}
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !669, line: 175, size: 512, elements: !710)
!710 = !{!711, !712, !713, !714, !4466, !4470, !4471}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !709, file: !669, line: 176, baseType: !681, size: 128)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !709, file: !669, line: 177, baseType: !690, size: 64, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !709, file: !669, line: 178, baseType: !329, size: 64, offset: 192)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !709, file: !669, line: 179, baseType: !715, size: 64, offset: 256)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DISubroutineType(types: !717)
!717 = !{!718}
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !42, line: 472, size: 1536, align: 64, elements: !720)
!720 = !{!721, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4460, !4461, !4462, !4463, !4464, !4465}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !719, file: !42, line: 473, baseType: !722, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !42, line: 641, size: 4800, elements: !724)
!724 = !{!725, !726, !727, !735, !736, !743, !744, !747, !748, !4288, !4289, !4290, !4291, !4292, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4332, !4335, !4336, !4337, !4354, !4355, !4356, !4357}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !723, file: !42, line: 642, baseType: !685, size: 16)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !723, file: !42, line: 643, baseType: !262, size: 16, offset: 16)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !723, file: !42, line: 644, baseType: !728, size: 32, offset: 32)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !729, line: 23, baseType: !730)
!729 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !729, line: 21, size: 32, elements: !731)
!731 = !{!732}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !730, file: !729, line: 22, baseType: !733, size: 32)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !309, line: 37, baseType: !734)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !677, line: 49, baseType: !35)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !723, file: !42, line: 645, baseType: !435, size: 128, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !723, file: !42, line: 646, baseType: !737, size: 32, offset: 192)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !729, line: 28, baseType: !738)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !729, line: 26, size: 32, elements: !739)
!739 = !{!740}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !738, file: !729, line: 27, baseType: !741, size: 32)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !309, line: 38, baseType: !742)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !677, line: 50, baseType: !35)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !723, file: !42, line: 647, baseType: !35, size: 32, offset: 224)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !723, file: !42, line: 650, baseType: !745, size: 64, offset: 256)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !42, line: 607, flags: DIFlagFwdDecl)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !723, file: !42, line: 651, baseType: !745, size: 64, offset: 320)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !723, file: !42, line: 654, baseType: !749, size: 64, offset: 384)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !751)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !42, line: 1966, size: 2048, align: 512, elements: !752)
!752 = !{!753, !4122, !4132, !4136, !4140, !4144, !4148, !4152, !4156, !4160, !4164, !4165, !4169, !4173, !4210, !4239, !4243, !4249, !4253, !4257, !4261, !4265, !4269, !4275, !4279}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !751, file: !42, line: 1967, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{!757, !722, !757, !35}
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !759, line: 82, size: 1536, elements: !760)
!759 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!760 = !{!761, !762, !772, !780, !781, !796, !797, !799, !812, !4106, !4107, !4108, !4109, !4114, !4115, !4116}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !758, file: !759, line: 84, baseType: !35, size: 32)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !758, file: !759, line: 85, baseType: !763, size: 32, offset: 32)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !764, line: 275, baseType: !765)
!764 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !764, line: 275, size: 32, elements: !766)
!766 = !{!767}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !765, file: !764, line: 275, baseType: !768, size: 32)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !764, line: 69, baseType: !769)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !764, line: 64, size: 32, elements: !770)
!770 = !{!771}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !769, file: !764, line: 65, baseType: !35, size: 32)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !758, file: !759, line: 86, baseType: !773, size: 128, offset: 64)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !774, line: 38, size: 128, elements: !775)
!774 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!775 = !{!776, !778}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !773, file: !774, line: 39, baseType: !777, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !773, file: !774, line: 39, baseType: !779, size: 64, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !758, file: !759, line: 87, baseType: !757, size: 64, offset: 192)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !758, file: !759, line: 88, baseType: !782, size: 128, offset: 256)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !759, line: 49, size: 128, elements: !783)
!783 = !{!784, !793}
!784 = !DIDerivedType(tag: DW_TAG_member, scope: !782, file: !759, line: 50, baseType: !785, size: 64)
!785 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !782, file: !759, line: 50, size: 64, elements: !786)
!786 = !{!787, !792}
!787 = !DIDerivedType(tag: DW_TAG_member, scope: !785, file: !759, line: 51, baseType: !788, size: 64)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !785, file: !759, line: 51, size: 64, elements: !789)
!789 = !{!790, !791}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !788, file: !759, line: 52, baseType: !320, size: 32)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !788, file: !759, line: 52, baseType: !320, size: 32, offset: 32)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !785, file: !759, line: 54, baseType: !310, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !782, file: !759, line: 56, baseType: !794, size: 64, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !758, file: !759, line: 89, baseType: !722, size: 64, offset: 384)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !758, file: !759, line: 91, baseType: !798, size: 256, offset: 448)
!798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 256, elements: !359)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !758, file: !759, line: 94, baseType: !800, size: 64, offset: 704)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !801, line: 25, size: 64, elements: !802)
!801 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!802 = !{!803}
!803 = !DIDerivedType(tag: DW_TAG_member, scope: !800, file: !801, line: 26, baseType: !804, size: 64)
!804 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !800, file: !801, line: 26, size: 64, elements: !805)
!805 = !{!806, !807}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !804, file: !801, line: 28, baseType: !311, size: 64, align: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, scope: !804, file: !801, line: 30, baseType: !808, size: 64)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !804, file: !801, line: 30, size: 64, elements: !809)
!809 = !{!810, !811}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !808, file: !801, line: 31, baseType: !368, size: 32)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !808, file: !801, line: 32, baseType: !151, size: 32, offset: 32)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !758, file: !759, line: 95, baseType: !813, size: 64, offset: 768)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !815)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !759, line: 128, size: 1024, align: 512, elements: !816)
!816 = !{!817, !821, !822, !829, !835, !839, !843, !847, !848, !852, !856, !4096, !4100}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !815, file: !759, line: 129, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{!151, !757, !35}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !815, file: !759, line: 130, baseType: !818, size: 64, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !815, file: !759, line: 131, baseType: !823, size: 64, offset: 128)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DISubroutineType(types: !825)
!825 = !{!151, !826, !828}
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !758)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !815, file: !759, line: 132, baseType: !830, size: 64, offset: 192)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{!151, !826, !35, !606, !833}
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !782)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !815, file: !759, line: 134, baseType: !836, size: 64, offset: 256)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{!151, !826}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !815, file: !759, line: 135, baseType: !840, size: 64, offset: 320)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{!151, !757}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !815, file: !759, line: 136, baseType: !844, size: 64, offset: 384)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DISubroutineType(types: !846)
!846 = !{null, !757}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !815, file: !759, line: 137, baseType: !844, size: 64, offset: 448)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !815, file: !759, line: 138, baseType: !849, size: 64, offset: 512)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{null, !757, !722}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !815, file: !759, line: 139, baseType: !853, size: 64, offset: 576)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!645, !757, !645, !151}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !815, file: !759, line: 140, baseType: !857, size: 64, offset: 640)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{!860, !4095}
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !862, line: 70, size: 256, elements: !863)
!862 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!863 = !{!864, !865, !4091, !4092}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !861, file: !862, line: 71, baseType: !757, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !861, file: !862, line: 72, baseType: !866, size: 64, offset: 64)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !42, line: 1190, size: 10752, elements: !868)
!868 = !{!869, !870, !873, !874, !875, !878, !1303, !2515, !2555, !2640, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2657, !2661, !2662, !2663, !2669, !2672, !2675, !2676, !2677, !2718, !4025, !4026, !4027, !4028, !4029, !4030, !4033, !4034, !4041, !4042, !4043, !4044, !4045, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !867, file: !42, line: 1191, baseType: !435, size: 128)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !867, file: !42, line: 1192, baseType: !871, size: 32, offset: 128)
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !309, line: 21, baseType: !872)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !309, line: 18, baseType: !320)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !867, file: !42, line: 1193, baseType: !233, size: 8, offset: 160)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !867, file: !42, line: 1194, baseType: !441, size: 64, offset: 192)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !867, file: !42, line: 1195, baseType: !876, size: 64, offset: 256)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !309, line: 52, baseType: !877)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !677, line: 88, baseType: !458)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !867, file: !42, line: 1196, baseType: !879, size: 64, offset: 320)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !42, line: 2366, size: 576, elements: !881)
!881 = !{!882, !883, !884, !890, !894, !898, !902, !1288, !1289, !1293, !1295, !1296, !1297, !1299, !1300, !1301, !1302}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !880, file: !42, line: 2367, baseType: !606, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !880, file: !42, line: 2368, baseType: !151, size: 32, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !880, file: !42, line: 2376, baseType: !885, size: 64, offset: 128)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DISubroutineType(types: !887)
!887 = !{!151, !888}
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !862, line: 21, flags: DIFlagFwdDecl)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !880, file: !42, line: 2377, baseType: !891, size: 64, offset: 192)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !893)
!893 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !42, line: 75, flags: DIFlagFwdDecl)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !880, file: !42, line: 2378, baseType: !895, size: 64, offset: 256)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DISubroutineType(types: !897)
!897 = !{!757, !879, !151, !606, !329}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !880, file: !42, line: 2380, baseType: !899, size: 64, offset: 320)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DISubroutineType(types: !901)
!901 = !{null, !866}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !880, file: !42, line: 2381, baseType: !903, size: 64, offset: 384)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !34, line: 402, size: 9216, align: 512, elements: !905)
!905 = !{!906, !907, !908, !912, !933, !959, !960, !961, !962, !966, !971, !972, !984, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1054, !1058, !1081, !1102, !1103, !1104, !1105, !1114, !1137, !1138, !1141, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1155, !1156, !1246, !1254, !1255, !1256, !1258, !1262, !1263, !1267, !1268, !1269, !1270, !1272, !1273, !1274, !1281, !1282, !1283, !1287}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !904, file: !34, line: 403, baseType: !33, size: 32)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !904, file: !34, line: 406, baseType: !435, size: 128, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !904, file: !34, line: 409, baseType: !909, size: 448, offset: 192)
!909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !910)
!910 = !{!911}
!911 = !DISubrange(count: 56)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !904, file: !34, line: 417, baseType: !913, size: 768, offset: 640)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !34, line: 45, size: 768, elements: !914)
!914 = !{!915, !916, !917, !918, !921}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !913, file: !34, line: 46, baseType: !602, size: 512)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !913, file: !34, line: 47, baseType: !903, size: 64, offset: 512)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !913, file: !34, line: 48, baseType: !610, size: 64, offset: 576)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !913, file: !34, line: 49, baseType: !919, size: 64, offset: 640)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !34, line: 49, flags: DIFlagFwdDecl)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !913, file: !34, line: 50, baseType: !922, size: 64, offset: 704)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !924, line: 26, size: 256, elements: !925)
!924 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!925 = !{!926, !927}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !923, file: !924, line: 27, baseType: !35, size: 32)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !923, file: !924, line: 28, baseType: !928, size: 192, offset: 64)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !929, line: 43, size: 192, elements: !930)
!929 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!930 = !{!931, !932}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !928, file: !929, line: 44, baseType: !536, size: 32)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !928, file: !929, line: 45, baseType: !435, size: 128, offset: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !904, file: !34, line: 418, baseType: !934, size: 64, offset: 1408)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !34, line: 53, size: 448, elements: !936)
!936 = !{!937, !938, !943, !947, !951, !955}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !935, file: !34, line: 54, baseType: !681, size: 128)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !935, file: !34, line: 55, baseType: !939, size: 64, offset: 128)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DISubroutineType(types: !941)
!941 = !{!675, !934, !942, !645}
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !935, file: !34, line: 57, baseType: !944, size: 64, offset: 192)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DISubroutineType(types: !946)
!946 = !{!675, !934, !942, !606, !690}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !935, file: !34, line: 59, baseType: !948, size: 64, offset: 256)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{null, !903, !606}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !935, file: !34, line: 60, baseType: !952, size: 64, offset: 320)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DISubroutineType(types: !954)
!954 = !{!151, !903}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !935, file: !34, line: 61, baseType: !956, size: 64, offset: 384)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DISubroutineType(types: !958)
!958 = !{null, !903}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !904, file: !34, line: 419, baseType: !606, size: 64, offset: 1472)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !904, file: !34, line: 420, baseType: !606, size: 64, offset: 1536)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !904, file: !34, line: 421, baseType: !610, size: 64, offset: 1600)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !904, file: !34, line: 424, baseType: !963, size: 64, offset: 1664)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !965)
!965 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !34, line: 424, flags: DIFlagFwdDecl)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !904, file: !34, line: 425, baseType: !967, size: 64, offset: 1728)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !969)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !230, line: 20, baseType: !970)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !232, line: 26, baseType: !151)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !904, file: !34, line: 426, baseType: !35, size: 32, offset: 1792)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !904, file: !34, line: 435, baseType: !973, size: 256, offset: 1856)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !974, line: 66, size: 256, elements: !975)
!974 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!975 = !{!976, !977, !978, !983}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !973, file: !974, line: 67, baseType: !450, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !973, file: !974, line: 68, baseType: !536, size: 32, offset: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !973, file: !974, line: 70, baseType: !979, size: 32, offset: 96)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !980, line: 15, size: 32, elements: !981)
!980 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!981 = !{!982}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !979, file: !980, line: 20, baseType: !388, size: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !973, file: !974, line: 72, baseType: !435, size: 128, offset: 128)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !904, file: !34, line: 437, baseType: !985, size: 64, offset: 2112)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !987, line: 69, size: 320, elements: !988)
!987 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!988 = !{!989, !990, !991, !1011, !1013, !1017, !1018}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !986, file: !987, line: 70, baseType: !606, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !986, file: !987, line: 71, baseType: !903, size: 64, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !986, file: !987, line: 72, baseType: !992, size: 64, offset: 128)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !994)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !987, line: 47, size: 256, elements: !995)
!995 = !{!996, !997, !1003, !1007}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !994, file: !987, line: 49, baseType: !35, size: 32)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !994, file: !987, line: 51, baseType: !998, size: 64, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!151, !606, !1001}
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !986)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !994, file: !987, line: 53, baseType: !1004, size: 64, offset: 128)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!151, !645, !1001}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !994, file: !987, line: 55, baseType: !1008, size: 64, offset: 192)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{null, !329}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !986, file: !987, line: 73, baseType: !1012, size: 16, offset: 192)
!1012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !401)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !986, file: !987, line: 74, baseType: !1014, size: 8, offset: 208)
!1014 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !230, line: 16, baseType: !1015)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !232, line: 20, baseType: !1016)
!1016 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !986, file: !987, line: 75, baseType: !229, size: 8, offset: 216)
!1018 = !DIDerivedType(tag: DW_TAG_member, scope: !986, file: !987, line: 76, baseType: !1019, size: 64, offset: 256)
!1019 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !986, file: !987, line: 76, size: 64, elements: !1020)
!1020 = !{!1021, !1022, !1029}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1019, file: !987, line: 77, baseType: !329, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1019, file: !987, line: 78, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1025)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !987, line: 86, size: 128, elements: !1026)
!1026 = !{!1027, !1028}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1025, file: !987, line: 87, baseType: !35, size: 32)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1025, file: !987, line: 88, baseType: !645, size: 64, offset: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1019, file: !987, line: 79, baseType: !1030, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1032)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !987, line: 92, size: 256, elements: !1033)
!1033 = !{!1034, !1035, !1036, !1037, !1038}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1032, file: !987, line: 94, baseType: !35, size: 32)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1032, file: !987, line: 95, baseType: !35, size: 32, offset: 32)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1032, file: !987, line: 96, baseType: !538, size: 64, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1032, file: !987, line: 97, baseType: !992, size: 64, offset: 128)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1032, file: !987, line: 98, baseType: !329, size: 64, offset: 192)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !904, file: !34, line: 438, baseType: !35, size: 32, offset: 2176)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !904, file: !34, line: 441, baseType: !35, size: 32, offset: 2208)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !904, file: !34, line: 442, baseType: !963, size: 64, offset: 2240)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !904, file: !34, line: 443, baseType: !967, size: 64, offset: 2304)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !904, file: !34, line: 444, baseType: !527, size: 8, offset: 2368)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !904, file: !34, line: 451, baseType: !527, size: 8, offset: 2376)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !904, file: !34, line: 454, baseType: !35, size: 32, offset: 2400)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !904, file: !34, line: 455, baseType: !1047, size: 64, offset: 2432)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1049, line: 23, size: 96, elements: !1050)
!1049 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1050 = !{!1051, !1052, !1053}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1048, file: !1049, line: 24, baseType: !151, size: 32)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1048, file: !1049, line: 24, baseType: !151, size: 32, offset: 32)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1048, file: !1049, line: 24, baseType: !151, size: 32, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !904, file: !34, line: 458, baseType: !1055, size: 64, offset: 2496)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!151}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !904, file: !34, line: 460, baseType: !1059, size: 4032, align: 512, offset: 2560)
!1059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1060, size: 4032, elements: !5)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !34, line: 362, size: 576, elements: !1061)
!1061 = !{!1062, !1063, !1064}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1060, file: !34, line: 363, baseType: !329, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1060, file: !34, line: 364, baseType: !35, size: 32, offset: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1060, file: !34, line: 367, baseType: !1065, size: 448, offset: 128)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !34, line: 319, size: 448, elements: !1066)
!1066 = !{!1067, !1068}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1065, file: !34, line: 320, baseType: !903, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1065, file: !34, line: 321, baseType: !1069, size: 384, offset: 64)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1070, line: 40, size: 384, elements: !1071)
!1070 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1071 = !{!1072}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1069, file: !1070, line: 41, baseType: !1073, size: 384, align: 64)
!1073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1074, size: 384, align: 64, elements: !10)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1075, line: 5, size: 192, align: 64, elements: !1076)
!1075 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!1076 = !{!1077, !1078, !1080}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1074, file: !1075, line: 6, baseType: !441, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1074, file: !1075, line: 7, baseType: !1079, size: 64, offset: 64)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1074, file: !1075, line: 8, baseType: !1079, size: 64, offset: 128)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !904, file: !34, line: 463, baseType: !1082, size: 192, offset: 6592)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1083, line: 8, size: 192, elements: !1084)
!1083 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1084 = !{!1085, !1086, !1088}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1082, file: !1083, line: 10, baseType: !35, size: 32)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1082, file: !1083, line: 11, baseType: !1087, size: 64, offset: 64)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1082, file: !1083, line: 12, baseType: !1089, size: 64, offset: 128)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1091, line: 59, size: 48, elements: !1092)
!1091 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1092 = !{!1093, !1097, !1098, !1099, !1100, !1101}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1090, file: !1091, line: 60, baseType: !1094, size: 16)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !230, line: 18, baseType: !1095)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !232, line: 23, baseType: !1096)
!1096 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1090, file: !1091, line: 61, baseType: !1094, size: 16, offset: 16)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1090, file: !1091, line: 63, baseType: !35, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1090, file: !1091, line: 64, baseType: !35, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1090, file: !1091, line: 65, baseType: !35, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1090, file: !1091, line: 66, baseType: !35, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !904, file: !34, line: 465, baseType: !441, size: 64, offset: 6784)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !904, file: !34, line: 469, baseType: !35, size: 32, offset: 6848)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !904, file: !34, line: 470, baseType: !435, size: 128, offset: 6912)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !904, file: !34, line: 471, baseType: !1106, size: 64, offset: 7040)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1108, line: 33, size: 96, elements: !1109)
!1108 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1109 = !{!1110, !1111, !1112, !1113}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1107, file: !1108, line: 37, baseType: !151, size: 32)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1107, file: !1108, line: 43, baseType: !151, size: 32, offset: 32)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1107, file: !1108, line: 45, baseType: !262, size: 16, offset: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1107, file: !1108, line: 47, baseType: !262, size: 16, offset: 80)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !904, file: !34, line: 476, baseType: !1115, size: 64, offset: 7104)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !34, line: 378, size: 256, elements: !1117)
!1117 = !{!1118, !1134, !1135, !1136}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1116, file: !34, line: 379, baseType: !1119, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1121, line: 204, baseType: !1122)
!1121 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1121, line: 197, size: 192, elements: !1123)
!1123 = !{!1124, !1126, !1127, !1128, !1130, !1132}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1122, file: !1121, line: 198, baseType: !1125, size: 32)
!1125 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1121, line: 21, baseType: !244)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1122, file: !1121, line: 199, baseType: !233, size: 8, offset: 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1122, file: !1121, line: 200, baseType: !233, size: 8, offset: 40)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1122, file: !1121, line: 201, baseType: !1129, size: 16, offset: 48)
!1129 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1121, line: 17, baseType: !261)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1122, file: !1121, line: 202, baseType: !1131, size: 64, offset: 64)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1121, line: 16, baseType: !311)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1122, file: !1121, line: 203, baseType: !1133, size: 64, offset: 128)
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1121, line: 22, baseType: !311)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1116, file: !34, line: 380, baseType: !35, size: 32, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1116, file: !34, line: 381, baseType: !645, size: 64, offset: 128)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1116, file: !34, line: 382, baseType: !645, size: 64, offset: 192)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !904, file: !34, line: 477, baseType: !1116, size: 256, offset: 7168)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !904, file: !34, line: 480, baseType: !1139, size: 64, offset: 7424)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !34, line: 480, flags: DIFlagFwdDecl)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !904, file: !34, line: 483, baseType: !1142, size: 64, offset: 7488)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !34, line: 483, flags: DIFlagFwdDecl)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !904, file: !34, line: 488, baseType: !645, size: 64, offset: 7552)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !904, file: !34, line: 492, baseType: !329, size: 64, offset: 7616)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !904, file: !34, line: 493, baseType: !35, size: 32, offset: 7680)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !904, file: !34, line: 495, baseType: !329, size: 64, offset: 7744)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !904, file: !34, line: 496, baseType: !35, size: 32, offset: 7808)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !904, file: !34, line: 499, baseType: !35, size: 32, offset: 7840)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !904, file: !34, line: 500, baseType: !1151, size: 64, offset: 7872)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1153, line: 45, baseType: !1154)
!1153 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !904, file: !34, line: 503, baseType: !35, size: 32, offset: 7936)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !904, file: !34, line: 504, baseType: !1157, size: 64, offset: 8000)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1160, line: 96, size: 192, elements: !1161)
!1160 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1161 = !{!1162, !1163, !1214, !1218}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1159, file: !1160, line: 97, baseType: !35, size: 32)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1159, file: !1160, line: 98, baseType: !1164, size: 64, offset: 64)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1160, line: 24, size: 3072, elements: !1166)
!1166 = !{!1167, !1169, !1170, !1171, !1172, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1211, !1212, !1213}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1165, file: !1160, line: 26, baseType: !1168, size: 128)
!1168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !450, size: 128, elements: !10)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1165, file: !1160, line: 27, baseType: !1168, size: 128, offset: 128)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1165, file: !1160, line: 28, baseType: !151, size: 32, offset: 256)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1165, file: !1160, line: 31, baseType: !368, size: 32, align: 512, offset: 512)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1165, file: !1160, line: 32, baseType: !1173, size: 960, offset: 576)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1174, line: 206, size: 960, elements: !1175)
!1174 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1175 = !{!1176, !1185, !1188, !1190, !1191, !1193}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1173, file: !1174, line: 207, baseType: !1177, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !309, line: 232, size: 128, align: 64, elements: !1179)
!1179 = !{!1180, !1181}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1178, file: !309, line: 233, baseType: !1177, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1178, file: !309, line: 234, baseType: !1182, size: 64, offset: 64)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{null, !1177}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1173, file: !1174, line: 208, baseType: !1186, size: 256, offset: 64)
!1186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1187, size: 256, elements: !283)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1173, file: !1174, line: 209, baseType: !1189, size: 256, offset: 320)
!1189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 256, elements: !283)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1173, file: !1174, line: 213, baseType: !679, size: 64, offset: 576)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1173, file: !1174, line: 215, baseType: !1192, size: 256, offset: 640)
!1192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !679, size: 256, elements: !283)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1173, file: !1174, line: 216, baseType: !229, size: 8, offset: 896)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1165, file: !1160, line: 33, baseType: !441, size: 64, offset: 1536)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1165, file: !1160, line: 34, baseType: !441, size: 64, offset: 1600)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1165, file: !1160, line: 35, baseType: !527, size: 8, offset: 1664)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1165, file: !1160, line: 36, baseType: !467, size: 320, offset: 1728)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1165, file: !1160, line: 37, baseType: !447, size: 256, offset: 2048)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1165, file: !1160, line: 38, baseType: !1178, size: 128, align: 64, offset: 2304)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1165, file: !1160, line: 39, baseType: !1201, size: 64, offset: 2432)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1160, line: 49, size: 768, elements: !1203)
!1203 = !{!1204, !1205, !1206, !1207, !1208, !1209, !1210}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1202, file: !1160, line: 50, baseType: !368, size: 32)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1202, file: !1160, line: 51, baseType: !1189, size: 256, offset: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1202, file: !1160, line: 53, baseType: !1189, size: 256, offset: 320)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1202, file: !1160, line: 54, baseType: !441, size: 64, offset: 576)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1202, file: !1160, line: 55, baseType: !1201, size: 64, offset: 640)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1202, file: !1160, line: 56, baseType: !151, size: 32, offset: 704)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1202, file: !1160, line: 57, baseType: !151, size: 32, offset: 736)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1165, file: !1160, line: 40, baseType: !441, size: 64, offset: 2496)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1165, file: !1160, line: 42, baseType: !151, size: 32, offset: 2560)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1165, file: !1160, line: 43, baseType: !1158, size: 64, offset: 2624)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1159, file: !1160, line: 99, baseType: !1215, offset: 128)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1216, line: 211, elements: !1217)
!1216 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1217 = !{}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1159, file: !1160, line: 100, baseType: !1219, size: 64, offset: 128)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1160, line: 63, size: 3008, elements: !1221)
!1221 = !{!1222, !1223, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1220, file: !1160, line: 64, baseType: !1201, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1220, file: !1160, line: 65, baseType: !1224, size: 192, offset: 64)
!1224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1201, size: 192, elements: !15)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1220, file: !1160, line: 67, baseType: !151, size: 32, offset: 256)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1220, file: !1160, line: 68, baseType: !973, size: 256, offset: 320)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1220, file: !1160, line: 69, baseType: !368, size: 32, offset: 576)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1220, file: !1160, line: 70, baseType: !973, size: 256, offset: 640)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1220, file: !1160, line: 71, baseType: !441, size: 64, offset: 896)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1220, file: !1160, line: 72, baseType: !441, size: 64, offset: 960)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1220, file: !1160, line: 73, baseType: !441, size: 64, offset: 1024)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1220, file: !1160, line: 74, baseType: !441, size: 64, offset: 1088)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1220, file: !1160, line: 75, baseType: !441, size: 64, offset: 1152)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1220, file: !1160, line: 76, baseType: !441, size: 64, offset: 1216)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1220, file: !1160, line: 77, baseType: !441, size: 64, offset: 1280)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1220, file: !1160, line: 78, baseType: !441, size: 64, offset: 1344)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1220, file: !1160, line: 79, baseType: !527, size: 8, offset: 1408)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1220, file: !1160, line: 80, baseType: !441, size: 64, offset: 1472)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1220, file: !1160, line: 81, baseType: !973, size: 256, offset: 1536)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1220, file: !1160, line: 82, baseType: !923, size: 256, offset: 1792)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1220, file: !1160, line: 84, baseType: !388, size: 32, offset: 2048)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1220, file: !1160, line: 87, baseType: !441, size: 64, offset: 2112)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1220, file: !1160, line: 88, baseType: !441, size: 64, offset: 2176)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1220, file: !1160, line: 89, baseType: !443, size: 704, offset: 2240)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1220, file: !1160, line: 90, baseType: !1158, size: 64, offset: 2944)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !904, file: !34, line: 515, baseType: !1247, size: 64, offset: 8064)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1249, line: 117, size: 128, elements: !1250)
!1249 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1250 = !{!1251, !1252, !1253}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1248, file: !1249, line: 118, baseType: !969, size: 32)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1248, file: !1249, line: 119, baseType: !969, size: 32, offset: 32)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1248, file: !1249, line: 120, baseType: !679, size: 64, offset: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !904, file: !34, line: 516, baseType: !35, size: 32, offset: 8128)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !904, file: !34, line: 519, baseType: !35, size: 32, offset: 8160)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !904, file: !34, line: 520, baseType: !1257, size: 64, offset: 8192)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !904, file: !34, line: 523, baseType: !1259, size: 64, offset: 8256)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !34, line: 523, flags: DIFlagFwdDecl)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !904, file: !34, line: 524, baseType: !35, size: 32, offset: 8320)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !904, file: !34, line: 525, baseType: !1264, size: 64, offset: 8384)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !34, line: 525, flags: DIFlagFwdDecl)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !904, file: !34, line: 526, baseType: !35, size: 32, offset: 8448)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !904, file: !34, line: 533, baseType: !329, size: 64, offset: 8512)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !904, file: !34, line: 534, baseType: !35, size: 32, offset: 8576)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !904, file: !34, line: 535, baseType: !1271, size: 64, offset: 8640)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !904, file: !34, line: 536, baseType: !35, size: 32, offset: 8704)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !904, file: !34, line: 539, baseType: !151, size: 32, offset: 8736)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !904, file: !34, line: 540, baseType: !1275, size: 64, offset: 8768)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1277, line: 32, size: 64, elements: !1278)
!1277 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1278 = !{!1279, !1280}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1276, file: !1277, line: 33, baseType: !969, size: 32)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1276, file: !1277, line: 34, baseType: !969, size: 32, offset: 32)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !904, file: !34, line: 563, baseType: !435, size: 128, offset: 8832)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !904, file: !34, line: 565, baseType: !435, size: 128, offset: 8960)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !904, file: !34, line: 568, baseType: !1284, size: 64, offset: 9088)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{null}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !904, file: !34, line: 570, baseType: !388, size: 32, offset: 9152)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !880, file: !42, line: 2382, baseType: !879, size: 64, offset: 448)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !880, file: !42, line: 2383, baseType: !1290, size: 64, offset: 512)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !309, line: 194, size: 64, elements: !1291)
!1291 = !{!1292}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1290, file: !309, line: 195, baseType: !474, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !880, file: !42, line: 2385, baseType: !1294, offset: 576)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1216, line: 206, elements: !1217)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !880, file: !42, line: 2386, baseType: !1294, offset: 576)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !880, file: !42, line: 2387, baseType: !1294, offset: 576)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !880, file: !42, line: 2388, baseType: !1298, offset: 576)
!1298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1294, elements: !15)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !880, file: !42, line: 2390, baseType: !1294, offset: 576)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !880, file: !42, line: 2391, baseType: !1294, offset: 576)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !880, file: !42, line: 2392, baseType: !1294, offset: 576)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !880, file: !42, line: 2393, baseType: !1294, offset: 576)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !867, file: !42, line: 1197, baseType: !1304, size: 64, offset: 384)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1306)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !42, line: 2057, size: 1664, elements: !1307)
!1307 = !{!1308, !1312, !1316, !1317, !1321, !1327, !1331, !1332, !1333, !1337, !1341, !1345, !1346, !1347, !1353, !1357, !1358, !2440, !2441, !2442, !2443, !2447, !2451, !2498, !2513, !2514}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1306, file: !42, line: 2058, baseType: !1309, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!722, !866}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1306, file: !42, line: 2059, baseType: !1313, size: 64, offset: 64)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{null, !722}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1306, file: !42, line: 2060, baseType: !1313, size: 64, offset: 128)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1306, file: !42, line: 2062, baseType: !1318, size: 64, offset: 192)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{null, !722, !151}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1306, file: !42, line: 2063, baseType: !1322, size: 64, offset: 256)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!151, !722, !1325}
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !42, line: 309, flags: DIFlagFwdDecl)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1306, file: !42, line: 2064, baseType: !1328, size: 64, offset: 320)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!151, !722}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1306, file: !42, line: 2065, baseType: !1313, size: 64, offset: 384)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1306, file: !42, line: 2066, baseType: !899, size: 64, offset: 448)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1306, file: !42, line: 2067, baseType: !1334, size: 64, offset: 512)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!151, !866, !151}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1306, file: !42, line: 2068, baseType: !1338, size: 64, offset: 576)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!151, !866, !41}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1306, file: !42, line: 2069, baseType: !1342, size: 64, offset: 640)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!151, !866}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1306, file: !42, line: 2070, baseType: !1338, size: 64, offset: 704)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1306, file: !42, line: 2071, baseType: !1342, size: 64, offset: 768)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1306, file: !42, line: 2072, baseType: !1348, size: 64, offset: 832)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!151, !757, !1351}
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !42, line: 62, flags: DIFlagFwdDecl)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1306, file: !42, line: 2073, baseType: !1354, size: 64, offset: 896)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!151, !866, !1087, !645}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1306, file: !42, line: 2074, baseType: !899, size: 64, offset: 960)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1306, file: !42, line: 2076, baseType: !1359, size: 64, offset: 1024)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!151, !1362, !757}
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1364, line: 17, size: 960, elements: !1365)
!1364 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1365 = !{!1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1396, !1397, !2439}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1363, file: !1364, line: 18, baseType: !645, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1363, file: !1364, line: 19, baseType: !690, size: 64, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1363, file: !1364, line: 20, baseType: !690, size: 64, offset: 128)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1363, file: !1364, line: 21, baseType: !690, size: 64, offset: 192)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1363, file: !1364, line: 22, baseType: !690, size: 64, offset: 256)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1363, file: !1364, line: 23, baseType: !876, size: 64, offset: 320)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1363, file: !1364, line: 24, baseType: !876, size: 64, offset: 384)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1363, file: !1364, line: 25, baseType: !973, size: 256, offset: 448)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1363, file: !1364, line: 26, baseType: !1375, size: 64, offset: 704)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1377)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1364, line: 32, size: 256, elements: !1378)
!1378 = !{!1379, !1384, !1388, !1392}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1377, file: !1364, line: 33, baseType: !1380, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!329, !1362, !1383}
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1377, file: !1364, line: 34, baseType: !1385, size: 64, offset: 64)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{null, !1362, !329}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1377, file: !1364, line: 35, baseType: !1389, size: 64, offset: 128)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!329, !1362, !329, !1383}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1377, file: !1364, line: 36, baseType: !1393, size: 64, offset: 192)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{!151, !1362, !329}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1363, file: !1364, line: 27, baseType: !151, size: 32, offset: 768)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1363, file: !1364, line: 28, baseType: !1398, size: 64, offset: 832)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1400)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !42, line: 994, size: 1856, align: 64, elements: !1401)
!1401 = !{!1402, !1413, !1414, !1416, !1417, !1418, !1419, !1420, !1475, !1672, !1681, !1687, !1688, !2429, !2430, !2431, !2432, !2434, !2435, !2438}
!1402 = !DIDerivedType(tag: DW_TAG_member, scope: !1400, file: !42, line: 995, baseType: !1403, size: 128)
!1403 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1400, file: !42, line: 995, size: 128, elements: !1404)
!1404 = !{!1405, !1411, !1412}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1403, file: !42, line: 996, baseType: !1406, size: 64)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1407, line: 60, size: 64, elements: !1408)
!1407 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1408 = !{!1409}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1406, file: !1407, line: 61, baseType: !1410, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1403, file: !42, line: 997, baseType: !1178, size: 128, align: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1403, file: !42, line: 998, baseType: !35, size: 32)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1400, file: !42, line: 1005, baseType: !368, size: 32, offset: 128)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1400, file: !42, line: 1006, baseType: !1415, size: 32, offset: 160)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !309, line: 156, baseType: !35)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1400, file: !42, line: 1007, baseType: !450, size: 64, offset: 192)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1400, file: !42, line: 1008, baseType: !973, size: 256, offset: 256)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1400, file: !42, line: 1009, baseType: !876, size: 64, offset: 512)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1400, file: !42, line: 1010, baseType: !35, size: 32, offset: 576)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1400, file: !42, line: 1011, baseType: !1421, size: 256, offset: 640)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !42, line: 948, size: 256, elements: !1422)
!1422 = !{!1423, !1444, !1471, !1472, !1473, !1474}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1421, file: !42, line: 949, baseType: !1424, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1425, line: 34, baseType: !1426)
!1425 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1425, line: 25, size: 64, elements: !1427)
!1427 = !{!1428}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1426, file: !1425, line: 26, baseType: !1429, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1430, line: 27, baseType: !1431)
!1430 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1430, line: 13, size: 64, elements: !1432)
!1432 = !{!1433, !1443}
!1433 = !DIDerivedType(tag: DW_TAG_member, scope: !1431, file: !1430, line: 14, baseType: !1434, size: 32)
!1434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1431, file: !1430, line: 14, size: 32, elements: !1435)
!1435 = !{!1436, !1437}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1434, file: !1430, line: 15, baseType: !388, size: 32)
!1437 = !DIDerivedType(tag: DW_TAG_member, scope: !1434, file: !1430, line: 16, baseType: !1438, size: 32)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1434, file: !1430, line: 16, size: 32, elements: !1439)
!1439 = !{!1440, !1441}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1438, file: !1430, line: 18, baseType: !229, size: 8)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1438, file: !1430, line: 19, baseType: !1442, size: 24, offset: 8)
!1442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 24, elements: !15)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1431, file: !1430, line: 26, baseType: !380, size: 32, offset: 32)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1421, file: !42, line: 950, baseType: !1445, size: 64, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !47, line: 59, size: 768, elements: !1447)
!1447 = !{!1448, !1454, !1455, !1456, !1458, !1459, !1460, !1461}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1446, file: !47, line: 61, baseType: !1449, size: 32)
!1449 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1450, line: 113, baseType: !1451)
!1450 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1450, line: 111, size: 32, elements: !1452)
!1452 = !{!1453}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1451, file: !1450, line: 112, baseType: !388, size: 32)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1446, file: !47, line: 62, baseType: !35, size: 32, offset: 32)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1446, file: !47, line: 63, baseType: !368, size: 32, offset: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1446, file: !47, line: 65, baseType: !1457, size: 256, offset: 128)
!1457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1290, size: 256, elements: !283)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1446, file: !47, line: 66, baseType: !1290, size: 64, offset: 384)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1446, file: !47, line: 68, baseType: !579, size: 192, offset: 448)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1446, file: !47, line: 69, baseType: !1178, size: 128, align: 64, offset: 640)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1446, file: !47, line: 70, baseType: !1462, offset: 768)
!1462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1463, elements: !1469)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !47, line: 54, size: 128, elements: !1464)
!1464 = !{!1465, !1466}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1463, file: !47, line: 55, baseType: !151, size: 32)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1463, file: !47, line: 56, baseType: !1467, size: 64, offset: 64)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !47, line: 56, flags: DIFlagFwdDecl)
!1469 = !{!1470}
!1470 = !DISubrange(count: -1)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1421, file: !42, line: 951, baseType: !46, size: 32, offset: 128)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1421, file: !42, line: 952, baseType: !728, size: 32, offset: 160)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1421, file: !42, line: 952, baseType: !728, size: 32, offset: 192)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1421, file: !42, line: 953, baseType: !151, size: 32, offset: 224)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1400, file: !42, line: 1012, baseType: !1476, size: 64, offset: 896)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1478)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1479, line: 110, size: 1472, elements: !1480)
!1479 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1480 = !{!1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1497, !1498, !1499, !1500, !1501, !1502, !1617, !1618, !1619, !1620, !1621, !1652, !1655, !1659, !1667}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1478, file: !1479, line: 111, baseType: !450, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1478, file: !1479, line: 112, baseType: !728, size: 32, offset: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1478, file: !1479, line: 113, baseType: !737, size: 32, offset: 96)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1478, file: !1479, line: 114, baseType: !728, size: 32, offset: 128)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1478, file: !1479, line: 115, baseType: !737, size: 32, offset: 160)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1478, file: !1479, line: 116, baseType: !728, size: 32, offset: 192)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1478, file: !1479, line: 117, baseType: !737, size: 32, offset: 224)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1478, file: !1479, line: 118, baseType: !728, size: 32, offset: 256)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1478, file: !1479, line: 119, baseType: !737, size: 32, offset: 288)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1478, file: !1479, line: 120, baseType: !35, size: 32, offset: 320)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1478, file: !1479, line: 121, baseType: !1492, size: 64, offset: 384)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1493, line: 24, baseType: !1494)
!1493 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1493, line: 24, size: 64, elements: !1495)
!1495 = !{!1496}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1494, file: !1493, line: 24, baseType: !310, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1478, file: !1479, line: 122, baseType: !1492, size: 64, offset: 448)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1478, file: !1479, line: 123, baseType: !1492, size: 64, offset: 512)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1478, file: !1479, line: 124, baseType: !1492, size: 64, offset: 576)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1478, file: !1479, line: 125, baseType: !1492, size: 64, offset: 640)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1478, file: !1479, line: 127, baseType: !233, size: 8, offset: 704)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1478, file: !1479, line: 129, baseType: !1503, size: 64, offset: 768)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1505, line: 195, size: 1728, elements: !1506)
!1505 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1506 = !{!1507, !1508, !1511, !1516, !1525, !1528, !1529, !1536, !1537, !1538, !1539, !1542, !1543, !1544, !1545, !1546, !1581, !1602}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1504, file: !1505, line: 196, baseType: !1449, size: 32)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1504, file: !1505, line: 197, baseType: !1509, size: 32, offset: 32)
!1509 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1505, line: 28, baseType: !1510)
!1510 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !309, line: 104, baseType: !969)
!1511 = !DIDerivedType(tag: DW_TAG_member, scope: !1504, file: !1505, line: 198, baseType: !1512, size: 192, offset: 64)
!1512 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1504, file: !1505, line: 198, size: 192, elements: !1513)
!1513 = !{!1514, !1515}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1512, file: !1505, line: 199, baseType: !435, size: 128)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1512, file: !1505, line: 200, baseType: !1074, size: 192, align: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1504, file: !1505, line: 205, baseType: !1517, size: 320, offset: 256)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1518, line: 48, size: 320, elements: !1519)
!1518 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1519 = !{!1520, !1521, !1522, !1523, !1524}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1517, file: !1518, line: 49, baseType: !450, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1517, file: !1518, line: 55, baseType: !450, size: 64, offset: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1517, file: !1518, line: 57, baseType: !979, size: 32, offset: 128)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1517, file: !1518, line: 59, baseType: !536, size: 32, offset: 160)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1517, file: !1518, line: 60, baseType: !435, size: 128, offset: 192)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1504, file: !1505, line: 206, baseType: !1526, size: 64, offset: 576)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1505, line: 206, flags: DIFlagFwdDecl)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1504, file: !1505, line: 207, baseType: !329, size: 64, offset: 640)
!1529 = !DIDerivedType(tag: DW_TAG_member, scope: !1504, file: !1505, line: 208, baseType: !1530, size: 64, offset: 704)
!1530 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1504, file: !1505, line: 208, size: 64, elements: !1531)
!1531 = !{!1532, !1535}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1530, file: !1505, line: 209, baseType: !1533, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1534, line: 8, baseType: !457)
!1534 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1530, file: !1505, line: 210, baseType: !1533, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1504, file: !1505, line: 212, baseType: !1533, size: 64, offset: 768)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1504, file: !1505, line: 213, baseType: !728, size: 32, offset: 832)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1504, file: !1505, line: 214, baseType: !737, size: 32, offset: 864)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1504, file: !1505, line: 215, baseType: !1540, size: 32, offset: 896)
!1540 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1505, line: 31, baseType: !1541)
!1541 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !309, line: 110, baseType: !320)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1504, file: !1505, line: 216, baseType: !262, size: 16, offset: 928)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1504, file: !1505, line: 217, baseType: !262, size: 16, offset: 944)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1504, file: !1505, line: 221, baseType: !1096, size: 16, offset: 960)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1504, file: !1505, line: 228, baseType: !441, size: 64, offset: 1024)
!1546 = !DIDerivedType(tag: DW_TAG_member, scope: !1504, file: !1505, line: 245, baseType: !1547, size: 320, offset: 1088)
!1547 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1504, file: !1505, line: 245, size: 320, elements: !1548)
!1548 = !{!1549, !1573}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1547, file: !1505, line: 246, baseType: !1550, size: 320)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1505, line: 114, size: 320, elements: !1551)
!1551 = !{!1552, !1553, !1562, !1565, !1572}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1550, file: !1505, line: 116, baseType: !441, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, scope: !1550, file: !1505, line: 117, baseType: !1554, size: 64, offset: 64)
!1554 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1550, file: !1505, line: 117, size: 64, elements: !1555)
!1555 = !{!1556, !1561}
!1556 = !DIDerivedType(tag: DW_TAG_member, scope: !1554, file: !1505, line: 118, baseType: !1557, size: 64)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1554, file: !1505, line: 118, size: 64, elements: !1558)
!1558 = !{!1559, !1560}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1557, file: !1505, line: 120, baseType: !401, size: 16)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1557, file: !1505, line: 121, baseType: !26, size: 48, offset: 16)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1554, file: !1505, line: 127, baseType: !441, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1550, file: !1505, line: 129, baseType: !1563, size: 64, offset: 128)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1505, line: 102, flags: DIFlagFwdDecl)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1550, file: !1505, line: 130, baseType: !1566, size: 64, offset: 192)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1505, line: 108, size: 192, elements: !1568)
!1568 = !{!1569, !1570, !1571}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1567, file: !1505, line: 109, baseType: !1178, size: 128, align: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1567, file: !1505, line: 110, baseType: !1449, size: 32, offset: 128)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1567, file: !1505, line: 111, baseType: !527, size: 8, offset: 160)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1550, file: !1505, line: 131, baseType: !606, size: 64, offset: 256)
!1573 = !DIDerivedType(tag: DW_TAG_member, scope: !1547, file: !1505, line: 247, baseType: !1574, size: 320)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1547, file: !1505, line: 247, size: 320, elements: !1575)
!1575 = !{!1576, !1577, !1578, !1579, !1580}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1574, file: !1505, line: 248, baseType: !441, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1574, file: !1505, line: 249, baseType: !441, size: 64, offset: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1574, file: !1505, line: 250, baseType: !1563, size: 64, offset: 128)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1574, file: !1505, line: 251, baseType: !1566, size: 64, offset: 192)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1574, file: !1505, line: 252, baseType: !645, size: 64, offset: 256)
!1581 = !DIDerivedType(tag: DW_TAG_member, scope: !1504, file: !1505, line: 260, baseType: !1582, size: 256, offset: 1408)
!1582 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1504, file: !1505, line: 260, size: 256, elements: !1583)
!1583 = !{!1584, !1590}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1582, file: !1505, line: 261, baseType: !1585, size: 256)
!1585 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1505, line: 134, size: 256, elements: !1586)
!1586 = !{!1587, !1588}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1585, file: !1505, line: 135, baseType: !329, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1585, file: !1505, line: 136, baseType: !1589, size: 256)
!1589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 256, elements: !283)
!1590 = !DIDerivedType(tag: DW_TAG_member, scope: !1582, file: !1505, line: 262, baseType: !1591, size: 256)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1582, file: !1505, line: 262, size: 256, elements: !1592)
!1592 = !{!1593, !1594}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1591, file: !1505, line: 264, baseType: !435, size: 128)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1591, file: !1505, line: 265, baseType: !1595, size: 128, offset: 128)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1596, line: 22, size: 128, elements: !1597)
!1596 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1597 = !{!1598, !1601}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1595, file: !1596, line: 23, baseType: !1599, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1596, line: 23, flags: DIFlagFwdDecl)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1595, file: !1596, line: 24, baseType: !441, size: 64, offset: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1504, file: !1505, line: 280, baseType: !1603, size: 64, offset: 1664)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1505, line: 176, size: 192, elements: !1605)
!1605 = !{!1606, !1615, !1616}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1604, file: !1505, line: 177, baseType: !1607, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1505, line: 171, baseType: !1608)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!151, !1503, !1611, !1613, !1503}
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1564)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1585)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1604, file: !1505, line: 178, baseType: !1503, size: 64, offset: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1604, file: !1505, line: 179, baseType: !1563, size: 64, offset: 128)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1478, file: !1479, line: 130, baseType: !1503, size: 64, offset: 832)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1478, file: !1479, line: 131, baseType: !1503, size: 64, offset: 896)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1478, file: !1479, line: 132, baseType: !1503, size: 64, offset: 960)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1478, file: !1479, line: 135, baseType: !329, size: 64, offset: 1024)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1478, file: !1479, line: 137, baseType: !1622, size: 64, offset: 1088)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1624, line: 14, size: 1088, elements: !1625)
!1624 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1625 = !{!1626, !1627, !1636, !1637, !1638, !1639, !1640, !1641}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1623, file: !1624, line: 15, baseType: !1449, size: 32)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1623, file: !1624, line: 17, baseType: !1628, size: 320, offset: 64)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1629, line: 22, size: 320, elements: !1630)
!1629 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1630 = !{!1631, !1632, !1633, !1634}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1628, file: !1629, line: 23, baseType: !536, size: 32)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1628, file: !1629, line: 24, baseType: !456, size: 64, offset: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1628, file: !1629, line: 26, baseType: !435, size: 128, offset: 128)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1628, file: !1629, line: 28, baseType: !1635, size: 64, offset: 256)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1623, file: !1624, line: 19, baseType: !441, size: 64, offset: 384)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1623, file: !1624, line: 20, baseType: !450, size: 64, offset: 448)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1623, file: !1624, line: 23, baseType: !471, size: 128, offset: 512)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1623, file: !1624, line: 24, baseType: !728, size: 32, offset: 640)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1623, file: !1624, line: 29, baseType: !450, size: 64, offset: 704)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1623, file: !1624, line: 36, baseType: !1642, size: 320, offset: 768)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1643, line: 15, size: 320, elements: !1644)
!1643 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1644 = !{!1645, !1646, !1647, !1648, !1649, !1650, !1651}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1642, file: !1643, line: 16, baseType: !536, size: 32)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1642, file: !1643, line: 18, baseType: !151, size: 32, offset: 32)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1642, file: !1643, line: 19, baseType: !151, size: 32, offset: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1642, file: !1643, line: 20, baseType: !151, size: 32, offset: 96)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1642, file: !1643, line: 21, baseType: !151, size: 32, offset: 128)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1642, file: !1643, line: 22, baseType: !441, size: 64, offset: 192)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1642, file: !1643, line: 23, baseType: !441, size: 64, offset: 256)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1478, file: !1479, line: 138, baseType: !1653, size: 64, offset: 1152)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !63, line: 901, flags: DIFlagFwdDecl)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1478, file: !1479, line: 139, baseType: !1656, size: 64, offset: 1216)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1658, line: 16, flags: DIFlagFwdDecl)
!1658 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1478, file: !1479, line: 140, baseType: !1660, size: 64, offset: 1280)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1479, line: 25, size: 64, elements: !1662)
!1662 = !{!1663, !1664, !1665}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1661, file: !1479, line: 26, baseType: !388, size: 32)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1661, file: !1479, line: 27, baseType: !151, size: 32, offset: 32)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1661, file: !1479, line: 28, baseType: !1666, offset: 64)
!1666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !737, elements: !1469)
!1667 = !DIDerivedType(tag: DW_TAG_member, scope: !1478, file: !1479, line: 142, baseType: !1668, size: 128, offset: 1344)
!1668 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1478, file: !1479, line: 142, size: 128, elements: !1669)
!1669 = !{!1670, !1671}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1668, file: !1479, line: 143, baseType: !151, size: 32)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1668, file: !1479, line: 144, baseType: !1178, size: 128, align: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1400, file: !42, line: 1013, baseType: !1673, size: 256, offset: 960)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !42, line: 970, size: 256, elements: !1674)
!1674 = !{!1675, !1676, !1677, !1678, !1679, !1680}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1673, file: !42, line: 971, baseType: !441, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1673, file: !42, line: 972, baseType: !35, size: 32, offset: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1673, file: !42, line: 973, baseType: !35, size: 32, offset: 96)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1673, file: !42, line: 974, baseType: !35, size: 32, offset: 128)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1673, file: !42, line: 975, baseType: !35, size: 32, offset: 160)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1673, file: !42, line: 976, baseType: !876, size: 64, offset: 192)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1400, file: !42, line: 1014, baseType: !1682, size: 128, offset: 1216)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1683, line: 8, size: 128, elements: !1684)
!1683 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1684 = !{!1685, !1686}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1682, file: !1683, line: 9, baseType: !860, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1682, file: !1683, line: 10, baseType: !757, size: 64, offset: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1400, file: !42, line: 1015, baseType: !722, size: 64, offset: 1344)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1400, file: !42, line: 1016, baseType: !1689, size: 64, offset: 1408)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1691)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !42, line: 1914, size: 2112, elements: !1692)
!1692 = !{!1693, !1694, !1699, !1703, !1707, !2298, !2299, !2312, !2325, !2341, !2345, !2346, !2350, !2351, !2355, !2360, !2361, !2365, !2369, !2375, !2376, !2380, !2381, !2388, !2392, !2396, !2402, !2406, !2410, !2414, !2418, !2419, !2425}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1691, file: !42, line: 1915, baseType: !903, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1691, file: !42, line: 1916, baseType: !1695, size: 64, offset: 64)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!876, !1698, !876, !151}
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1691, file: !42, line: 1917, baseType: !1700, size: 64, offset: 128)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!675, !1698, !645, !690, !1383}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1691, file: !42, line: 1918, baseType: !1704, size: 64, offset: 192)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!675, !1698, !606, !690, !1383}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1691, file: !42, line: 1919, baseType: !1708, size: 64, offset: 256)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!675, !1711, !2241}
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !42, line: 373, size: 384, elements: !1713)
!1713 = !{!1714, !1715, !1716, !1720, !1721, !1722, !1723}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1712, file: !42, line: 374, baseType: !1698, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1712, file: !42, line: 375, baseType: !876, size: 64, offset: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1712, file: !42, line: 376, baseType: !1717, size: 64, offset: 128)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{null, !1711, !679}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1712, file: !42, line: 377, baseType: !329, size: 64, offset: 192)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1712, file: !42, line: 378, baseType: !151, size: 32, offset: 256)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1712, file: !42, line: 379, baseType: !401, size: 16, offset: 288)
!1723 = !DIDerivedType(tag: DW_TAG_member, scope: !1712, file: !42, line: 380, baseType: !1724, size: 64, offset: 320)
!1724 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1712, file: !42, line: 380, size: 64, elements: !1725)
!1725 = !{!1726, !2237}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1724, file: !42, line: 386, baseType: !1727, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1729, line: 998, size: 448, elements: !1730)
!1729 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1730 = !{!1731, !2235, !2236}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !1728, file: !1729, line: 999, baseType: !1732, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !63, line: 293, size: 1536, elements: !1734)
!1734 = !{!1735, !2202, !2216}
!1735 = !DIDerivedType(tag: DW_TAG_member, scope: !1733, file: !63, line: 295, baseType: !1736, size: 512)
!1736 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1733, file: !63, line: 295, size: 512, elements: !1737)
!1737 = !{!1738, !1764}
!1738 = !DIDerivedType(tag: DW_TAG_member, scope: !1736, file: !63, line: 296, baseType: !1739, size: 448)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1736, file: !63, line: 296, size: 448, elements: !1740)
!1740 = !{!1741, !1742, !1751, !1752, !1753, !1762, !1763}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1739, file: !63, line: 298, baseType: !441, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, scope: !1739, file: !63, line: 299, baseType: !1743, size: 128, offset: 64)
!1743 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1739, file: !63, line: 299, size: 128, elements: !1744)
!1744 = !{!1745, !1746}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1743, file: !63, line: 300, baseType: !435, size: 128)
!1746 = !DIDerivedType(tag: DW_TAG_member, scope: !1743, file: !63, line: 302, baseType: !1747, size: 128)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1743, file: !63, line: 302, size: 128, elements: !1748)
!1748 = !{!1749, !1750}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1747, file: !63, line: 303, baseType: !329, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1747, file: !63, line: 305, baseType: !35, size: 32, offset: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1739, file: !63, line: 310, baseType: !718, size: 64, offset: 192)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1739, file: !63, line: 311, baseType: !441, size: 64, offset: 256)
!1753 = !DIDerivedType(tag: DW_TAG_member, scope: !1739, file: !63, line: 312, baseType: !1754, size: 64, offset: 320)
!1754 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1739, file: !63, line: 312, size: 64, elements: !1755)
!1755 = !{!1756, !1757}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1754, file: !63, line: 313, baseType: !329, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1754, file: !63, line: 314, baseType: !1758, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !63, line: 257, baseType: !1759)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !63, line: 255, size: 64, elements: !1760)
!1760 = !{!1761}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1759, file: !63, line: 256, baseType: !441, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1739, file: !63, line: 316, baseType: !388, size: 32, offset: 384)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1739, file: !63, line: 317, baseType: !388, size: 32, offset: 416)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1736, file: !63, line: 323, baseType: !1765, size: 512, align: 128)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !63, line: 74, size: 512, align: 128, elements: !1766)
!1766 = !{!1767, !1768, !2196, !2201}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1765, file: !63, line: 75, baseType: !441, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, scope: !1765, file: !63, line: 83, baseType: !1769, size: 320, offset: 64)
!1769 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1765, file: !63, line: 83, size: 320, elements: !1770)
!1770 = !{!1771, !1792, !1806, !1810, !2195}
!1771 = !DIDerivedType(tag: DW_TAG_member, scope: !1769, file: !63, line: 84, baseType: !1772, size: 320)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1769, file: !63, line: 84, size: 320, elements: !1773)
!1773 = !{!1774, !1785, !1786, !1791}
!1774 = !DIDerivedType(tag: DW_TAG_member, scope: !1772, file: !63, line: 90, baseType: !1775, size: 128)
!1775 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1772, file: !63, line: 90, size: 128, elements: !1776)
!1776 = !{!1777, !1778, !1783, !1784}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1775, file: !63, line: 91, baseType: !435, size: 128)
!1778 = !DIDerivedType(tag: DW_TAG_member, scope: !1775, file: !63, line: 94, baseType: !1779, size: 128)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1775, file: !63, line: 94, size: 128, elements: !1780)
!1780 = !{!1781, !1782}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1779, file: !63, line: 96, baseType: !329, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1779, file: !63, line: 98, baseType: !35, size: 32, offset: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1775, file: !63, line: 102, baseType: !435, size: 128)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1775, file: !63, line: 103, baseType: !435, size: 128)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1772, file: !63, line: 106, baseType: !718, size: 64, offset: 128)
!1786 = !DIDerivedType(tag: DW_TAG_member, scope: !1772, file: !63, line: 107, baseType: !1787, size: 64, offset: 192)
!1787 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1772, file: !63, line: 107, size: 64, elements: !1788)
!1788 = !{!1789, !1790}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1787, file: !63, line: 108, baseType: !441, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1787, file: !63, line: 109, baseType: !441, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1772, file: !63, line: 117, baseType: !441, size: 64, offset: 256)
!1792 = !DIDerivedType(tag: DW_TAG_member, scope: !1769, file: !63, line: 119, baseType: !1793, size: 320)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1769, file: !63, line: 119, size: 320, elements: !1794)
!1794 = !{!1795, !1796, !1799, !1800, !1801}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1793, file: !63, line: 124, baseType: !441, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1793, file: !63, line: 125, baseType: !1797, size: 64, offset: 64)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !63, line: 125, flags: DIFlagFwdDecl)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1793, file: !63, line: 126, baseType: !441, size: 64, offset: 128)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1793, file: !63, line: 127, baseType: !441, size: 64, offset: 192)
!1801 = !DIDerivedType(tag: DW_TAG_member, scope: !1793, file: !63, line: 128, baseType: !1802, size: 64, offset: 256)
!1802 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1793, file: !63, line: 128, size: 64, elements: !1803)
!1803 = !{!1804, !1805}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1802, file: !63, line: 133, baseType: !441, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1802, file: !63, line: 138, baseType: !450, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, scope: !1769, file: !63, line: 141, baseType: !1807, size: 64)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1769, file: !63, line: 141, size: 64, elements: !1808)
!1808 = !{!1809}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1807, file: !63, line: 142, baseType: !441, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, scope: !1769, file: !63, line: 144, baseType: !1811, size: 128)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1769, file: !63, line: 144, size: 128, elements: !1812)
!1812 = !{!1813, !2194}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1811, file: !63, line: 146, baseType: !1814, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !55, line: 126, size: 1216, elements: !1816)
!1816 = !{!1817, !1827, !1848, !1849, !1850, !1851, !1852, !2176, !2177, !2178}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1815, file: !55, line: 127, baseType: !1818, size: 384)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !55, line: 21, size: 384, elements: !1819)
!1819 = !{!1820, !1821, !1823, !1824, !1825, !1826}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1818, file: !55, line: 22, baseType: !441, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1818, file: !55, line: 23, baseType: !1822, size: 64, offset: 64)
!1822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !441)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1818, file: !55, line: 24, baseType: !1822, size: 64, offset: 128)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1818, file: !55, line: 25, baseType: !441, size: 64, offset: 192)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1818, file: !55, line: 26, baseType: !441, size: 64, offset: 256)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1818, file: !55, line: 27, baseType: !441, size: 64, offset: 320)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1815, file: !55, line: 128, baseType: !1828, size: 128, offset: 384)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1829, line: 105, size: 128, elements: !1830)
!1829 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1830 = !{!1831, !1832}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1828, file: !1829, line: 110, baseType: !441, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1828, file: !1829, line: 118, baseType: !1833, size: 64, offset: 64)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1829, line: 95, size: 448, elements: !1835)
!1835 = !{!1836, !1837, !1843, !1844, !1845, !1846, !1847}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1834, file: !1829, line: 96, baseType: !450, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1834, file: !1829, line: 97, baseType: !1838, size: 64, offset: 64)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1829, line: 60, baseType: !1840)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{null, !1842}
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1834, file: !1829, line: 98, baseType: !1838, size: 64, offset: 128)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1834, file: !1829, line: 99, baseType: !527, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1834, file: !1829, line: 100, baseType: !527, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1834, file: !1829, line: 101, baseType: !1178, size: 128, align: 64, offset: 256)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1834, file: !1829, line: 102, baseType: !1842, size: 64, offset: 384)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1815, file: !55, line: 129, baseType: !923, size: 256, offset: 512)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1815, file: !55, line: 130, baseType: !54, size: 32, offset: 768)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1815, file: !55, line: 131, baseType: !35, size: 32, offset: 800)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1815, file: !55, line: 132, baseType: !441, size: 64, offset: 832)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1815, file: !55, line: 133, baseType: !1853, size: 64, offset: 896)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1855)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !55, line: 77, size: 192, elements: !1856)
!1856 = !{!1857, !1862, !2172}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1855, file: !55, line: 83, baseType: !1858, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{null, !1861}
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1855, file: !55, line: 89, baseType: !1863, size: 64, offset: 64)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{!1866, !1867}
!1866 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !63, line: 1184, baseType: !35)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1869, line: 512, size: 896, elements: !1870)
!1869 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1870 = !{!1871, !2139, !2140, !2147, !2154, !2164, !2165, !2166, !2168, !2170}
!1871 = !DIDerivedType(tag: DW_TAG_member, scope: !1868, file: !1869, line: 513, baseType: !1872, size: 320)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1868, file: !1869, line: 513, size: 320, elements: !1873)
!1873 = !{!1874, !2135, !2136, !2137, !2138}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1872, file: !1869, line: 514, baseType: !1875, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !63, line: 625, size: 1344, elements: !1877)
!1877 = !{!1878, !1887, !2040, !2046, !2053, !2054, !2059, !2060, !2065, !2066, !2069, !2128, !2129, !2130, !2131, !2132, !2133}
!1878 = !DIDerivedType(tag: DW_TAG_member, scope: !1876, file: !63, line: 628, baseType: !1879, size: 128)
!1879 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1876, file: !63, line: 628, size: 128, elements: !1880)
!1880 = !{!1881, !1886}
!1881 = !DIDerivedType(tag: DW_TAG_member, scope: !1879, file: !63, line: 629, baseType: !1882, size: 128)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1879, file: !63, line: 629, size: 128, elements: !1883)
!1883 = !{!1884, !1885}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1882, file: !63, line: 631, baseType: !441, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1882, file: !63, line: 632, baseType: !441, size: 64, offset: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1879, file: !63, line: 635, baseType: !1178, size: 128, align: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1876, file: !63, line: 639, baseType: !1888, size: 64, offset: 128)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !63, line: 733, size: 10240, elements: !1890)
!1890 = !{!1891, !2038}
!1891 = !DIDerivedType(tag: DW_TAG_member, scope: !1889, file: !63, line: 734, baseType: !1892, size: 10240)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1889, file: !63, line: 734, size: 10240, elements: !1893)
!1893 = !{!1894, !1898, !1911, !1915, !1916, !1917, !1918, !1919, !1920, !1929, !1930, !1931, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1970, !1972, !1975, !2018, !2019, !2020, !2023, !2024, !2025, !2028, !2029, !2030, !2036, !2037}
!1894 = !DIDerivedType(tag: DW_TAG_member, scope: !1892, file: !63, line: 739, baseType: !1895, size: 512, align: 512)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1892, file: !63, line: 739, size: 512, align: 512, elements: !1896)
!1896 = !{!1897}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1895, file: !63, line: 747, baseType: !388, size: 32)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1892, file: !63, line: 750, baseType: !1899, size: 128, offset: 512)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1900, line: 218, size: 128, elements: !1901)
!1900 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1901 = !{!1902, !1909, !1910}
!1902 = !DIDerivedType(tag: DW_TAG_member, scope: !1899, file: !1900, line: 219, baseType: !1903, size: 32)
!1903 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1899, file: !1900, line: 219, size: 32, elements: !1904)
!1904 = !{!1905, !1906}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1903, file: !1900, line: 220, baseType: !368, size: 32)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1903, file: !1900, line: 221, baseType: !1907)
!1907 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1900, line: 197, baseType: !1908)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1900, line: 197, elements: !1217)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1899, file: !1900, line: 223, baseType: !35, size: 32, offset: 32)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1899, file: !1900, line: 224, baseType: !329, size: 64, offset: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1892, file: !63, line: 752, baseType: !1912, size: 64, offset: 640)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!441, !1698, !441, !441, !441, !441}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1892, file: !63, line: 756, baseType: !441, size: 64, offset: 704)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1892, file: !63, line: 757, baseType: !441, size: 64, offset: 768)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1892, file: !63, line: 760, baseType: !441, size: 64, offset: 832)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1892, file: !63, line: 761, baseType: !441, size: 64, offset: 896)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1892, file: !63, line: 763, baseType: !441, size: 64, offset: 960)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1892, file: !63, line: 764, baseType: !1921, size: 64, offset: 1024)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1923, line: 299, baseType: !1924)
!1923 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1923, line: 299, size: 64, elements: !1925)
!1925 = !{!1926}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1924, file: !1923, line: 299, baseType: !1927, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1928, line: 18, baseType: !441)
!1928 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1892, file: !63, line: 773, baseType: !388, size: 32, offset: 1088)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1892, file: !63, line: 785, baseType: !388, size: 32, offset: 1120)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1892, file: !63, line: 795, baseType: !1932, size: 64, offset: 1152)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !63, line: 726, size: 128, elements: !1934)
!1934 = !{!1935, !1936}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1933, file: !63, line: 727, baseType: !310, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1933, file: !63, line: 728, baseType: !151, size: 32, offset: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1892, file: !63, line: 801, baseType: !441, size: 64, offset: 1216)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1892, file: !63, line: 804, baseType: !450, size: 64, offset: 1280)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1892, file: !63, line: 806, baseType: !151, size: 32, offset: 1344)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1892, file: !63, line: 808, baseType: !368, size: 32, offset: 1376)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1892, file: !63, line: 823, baseType: !1517, size: 320, offset: 1408)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1892, file: !63, line: 825, baseType: !435, size: 128, offset: 1728)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1892, file: !63, line: 845, baseType: !151, size: 32, offset: 1856)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1892, file: !63, line: 849, baseType: !441, size: 64, offset: 1920)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1892, file: !63, line: 850, baseType: !441, size: 64, offset: 1984)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1892, file: !63, line: 852, baseType: !441, size: 64, offset: 2048)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1892, file: !63, line: 853, baseType: !441, size: 64, offset: 2112)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1892, file: !63, line: 854, baseType: !452, size: 64, offset: 2176)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1892, file: !63, line: 855, baseType: !441, size: 64, offset: 2240)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1892, file: !63, line: 856, baseType: !441, size: 64, offset: 2304)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1892, file: !63, line: 857, baseType: !441, size: 64, offset: 2368)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1892, file: !63, line: 858, baseType: !441, size: 64, offset: 2432)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1892, file: !63, line: 865, baseType: !768, size: 32, offset: 2496)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1892, file: !63, line: 867, baseType: !368, size: 32, offset: 2528)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1892, file: !63, line: 869, baseType: !441, size: 64, offset: 2560)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1892, file: !63, line: 869, baseType: !441, size: 64, offset: 2624)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1892, file: !63, line: 869, baseType: !441, size: 64, offset: 2688)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1892, file: !63, line: 869, baseType: !441, size: 64, offset: 2752)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1892, file: !63, line: 870, baseType: !441, size: 64, offset: 2816)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1892, file: !63, line: 870, baseType: !441, size: 64, offset: 2880)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1892, file: !63, line: 870, baseType: !441, size: 64, offset: 2944)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1892, file: !63, line: 871, baseType: !441, size: 64, offset: 3008)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1892, file: !63, line: 871, baseType: !441, size: 64, offset: 3072)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1892, file: !63, line: 871, baseType: !441, size: 64, offset: 3136)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1892, file: !63, line: 871, baseType: !441, size: 64, offset: 3200)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1892, file: !63, line: 873, baseType: !1967, size: 3328, offset: 3264)
!1967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 3328, elements: !1968)
!1968 = !{!1969}
!1969 = !DISubrange(count: 52)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1892, file: !63, line: 875, baseType: !1971, size: 1280, offset: 6592)
!1971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1628, size: 1280, elements: !283)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1892, file: !63, line: 877, baseType: !1973, size: 64, offset: 7872)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !63, line: 877, flags: DIFlagFwdDecl)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1892, file: !63, line: 880, baseType: !1976, size: 1088, offset: 7936)
!1976 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1977, line: 72, baseType: !1978)
!1977 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1977, line: 23, size: 1088, elements: !1979)
!1979 = !{!1980, !1981, !1982, !1983, !1984, !1987, !1988, !1989, !1990, !2015, !2016, !2017}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1978, file: !1977, line: 28, baseType: !310, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1978, file: !1977, line: 38, baseType: !452, size: 64, offset: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1978, file: !1977, line: 40, baseType: !441, size: 64, offset: 128)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1978, file: !1977, line: 43, baseType: !1517, size: 320, offset: 192)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1978, file: !1977, line: 44, baseType: !1985, size: 64, offset: 512)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1977, line: 44, flags: DIFlagFwdDecl)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1978, file: !1977, line: 48, baseType: !441, size: 64, offset: 576)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1978, file: !1977, line: 59, baseType: !973, size: 256, offset: 640)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1978, file: !1977, line: 60, baseType: !329, size: 64, offset: 896)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1978, file: !1977, line: 61, baseType: !1991, size: 64, offset: 960)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1993)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1994, line: 13, size: 1216, elements: !1995)
!1994 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1995 = !{!1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1993, file: !1994, line: 14, baseType: !329, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1993, file: !1994, line: 15, baseType: !441, size: 64, offset: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1993, file: !1994, line: 17, baseType: !441, size: 64, offset: 128)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1993, file: !1994, line: 17, baseType: !441, size: 64, offset: 192)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1993, file: !1994, line: 18, baseType: !441, size: 64, offset: 256)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1993, file: !1994, line: 18, baseType: !441, size: 64, offset: 320)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1993, file: !1994, line: 19, baseType: !321, size: 64, offset: 384)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1993, file: !1994, line: 21, baseType: !679, size: 64, offset: 448)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1993, file: !1994, line: 23, baseType: !679, size: 64, offset: 512)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1993, file: !1994, line: 24, baseType: !679, size: 64, offset: 576)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1993, file: !1994, line: 25, baseType: !679, size: 64, offset: 640)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1993, file: !1994, line: 26, baseType: !679, size: 64, offset: 704)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1993, file: !1994, line: 27, baseType: !679, size: 64, offset: 768)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1993, file: !1994, line: 28, baseType: !679, size: 64, offset: 832)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1993, file: !1994, line: 29, baseType: !679, size: 64, offset: 896)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1993, file: !1994, line: 30, baseType: !679, size: 64, offset: 960)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1993, file: !1994, line: 31, baseType: !679, size: 64, offset: 1024)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1993, file: !1994, line: 32, baseType: !679, size: 64, offset: 1088)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1993, file: !1994, line: 33, baseType: !679, size: 64, offset: 1152)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1978, file: !1977, line: 63, baseType: !388, size: 32, offset: 1024)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1978, file: !1977, line: 69, baseType: !401, size: 16, offset: 1056)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1978, file: !1977, line: 70, baseType: !1094, size: 16, offset: 1072)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1892, file: !63, line: 882, baseType: !441, size: 64, offset: 9024)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1892, file: !63, line: 885, baseType: !368, size: 32, offset: 9088)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1892, file: !63, line: 886, baseType: !2021, size: 64, offset: 9152)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !63, line: 732, flags: DIFlagFwdDecl)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1892, file: !63, line: 901, baseType: !1653, size: 64, offset: 9216)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1892, file: !63, line: 904, baseType: !1698, size: 64, offset: 9280)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1892, file: !63, line: 906, baseType: !2026, size: 64, offset: 9344)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !63, line: 906, flags: DIFlagFwdDecl)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1892, file: !63, line: 930, baseType: !388, size: 32, offset: 9408)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1892, file: !63, line: 933, baseType: !388, size: 32, offset: 9440)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1892, file: !63, line: 935, baseType: !2031, size: 64, offset: 9472)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !96, line: 103, size: 64, elements: !2032)
!2032 = !{!2033}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2031, file: !96, line: 104, baseType: !2034, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !96, line: 101, flags: DIFlagFwdDecl)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1892, file: !63, line: 940, baseType: !450, size: 64, offset: 9536)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1892, file: !63, line: 942, baseType: !447, size: 256, offset: 9600)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1889, file: !63, line: 986, baseType: !2039, offset: 10240)
!2039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, elements: !1469)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1876, file: !63, line: 640, baseType: !2041, size: 64, offset: 192)
!2041 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1923, line: 297, baseType: !2042)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1923, line: 297, size: 64, elements: !2043)
!2043 = !{!2044}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2042, file: !1923, line: 297, baseType: !2045, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1928, line: 19, baseType: !441)
!2046 = !DIDerivedType(tag: DW_TAG_member, scope: !1876, file: !63, line: 646, baseType: !2047, size: 64, offset: 256)
!2047 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1876, file: !63, line: 646, size: 64, elements: !2048)
!2048 = !{!2049, !2052}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2047, file: !63, line: 647, baseType: !2050, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2051)
!2051 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !63, line: 542, baseType: !441)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2047, file: !63, line: 648, baseType: !2051, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1876, file: !63, line: 666, baseType: !151, size: 32, offset: 320)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1876, file: !63, line: 667, baseType: !2055, size: 64, offset: 384)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !63, line: 579, size: 320, elements: !2057)
!2057 = !{!2058}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2056, file: !63, line: 580, baseType: !1517, size: 320)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1876, file: !63, line: 670, baseType: !527, size: 8, offset: 448)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1876, file: !63, line: 681, baseType: !2061, size: 256, offset: 512)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1876, file: !63, line: 678, size: 256, elements: !2062)
!2062 = !{!2063, !2064}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2061, file: !63, line: 679, baseType: !1074, size: 192, align: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2061, file: !63, line: 680, baseType: !441, size: 64, offset: 192)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1876, file: !63, line: 689, baseType: !435, size: 128, offset: 768)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1876, file: !63, line: 691, baseType: !2067, size: 64, offset: 896)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !63, line: 691, flags: DIFlagFwdDecl)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1876, file: !63, line: 694, baseType: !2070, size: 64, offset: 960)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2072)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1869, line: 563, size: 1024, elements: !2073)
!2073 = !{!2074, !2078, !2079, !2083, !2087, !2091, !2092, !2096, !2100, !2104, !2105, !2106, !2110, !2114, !2120, !2124}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2072, file: !1869, line: 564, baseType: !2075, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{null, !1875}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2072, file: !1869, line: 569, baseType: !2075, size: 64, offset: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2072, file: !1869, line: 571, baseType: !2080, size: 64, offset: 128)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!151, !1875, !441}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2072, file: !1869, line: 572, baseType: !2084, size: 64, offset: 192)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!151, !1875}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2072, file: !1869, line: 578, baseType: !2088, size: 64, offset: 256)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{!151, !1875, !441, !441, !441}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2072, file: !1869, line: 580, baseType: !1863, size: 64, offset: 320)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2072, file: !1869, line: 581, baseType: !2093, size: 64, offset: 384)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!1866, !1867, !35}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2072, file: !1869, line: 582, baseType: !2097, size: 64, offset: 448)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!1866, !1867, !441, !441}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2072, file: !1869, line: 584, baseType: !2101, size: 64, offset: 512)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!441, !1875}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2072, file: !1869, line: 588, baseType: !1863, size: 64, offset: 576)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2072, file: !1869, line: 591, baseType: !1863, size: 64, offset: 640)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2072, file: !1869, line: 597, baseType: !2107, size: 64, offset: 704)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{!151, !1875, !441, !329, !151, !151}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2072, file: !1869, line: 603, baseType: !2111, size: 64, offset: 768)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!606, !1875}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2072, file: !1869, line: 613, baseType: !2115, size: 64, offset: 832)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!151, !1875, !2118}
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !63, line: 717, flags: DIFlagFwdDecl)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2072, file: !1869, line: 625, baseType: !2121, size: 64, offset: 896)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!2118, !1875, !441}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2072, file: !1869, line: 633, baseType: !2125, size: 64, offset: 960)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!1861, !1875, !441}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1876, file: !63, line: 697, baseType: !441, size: 64, offset: 1024)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1876, file: !63, line: 699, baseType: !1698, size: 64, offset: 1088)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1876, file: !63, line: 700, baseType: !329, size: 64, offset: 1152)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1876, file: !63, line: 711, baseType: !450, size: 64, offset: 1216)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1876, file: !63, line: 717, baseType: !2118, size: 64, offset: 1280)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1876, file: !63, line: 722, baseType: !2134, offset: 1344)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !63, line: 570, elements: !1217)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1872, file: !1869, line: 515, baseType: !404, size: 32, offset: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1872, file: !1869, line: 516, baseType: !441, size: 64, offset: 128)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1872, file: !1869, line: 517, baseType: !441, size: 64, offset: 192)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1872, file: !1869, line: 518, baseType: !441, size: 64, offset: 256)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1868, file: !1869, line: 520, baseType: !62, size: 32, offset: 320)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1868, file: !1869, line: 522, baseType: !2141, size: 64, offset: 384)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1928, line: 22, baseType: !2143)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1928, line: 22, size: 64, elements: !2144)
!2144 = !{!2145}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2143, file: !1928, line: 22, baseType: !2146, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1928, line: 15, baseType: !441)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1868, file: !1869, line: 524, baseType: !2148, size: 64, offset: 448)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1923, line: 372, baseType: !2150)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1923, line: 372, size: 64, elements: !2151)
!2151 = !{!2152}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2150, file: !1923, line: 372, baseType: !2153, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1928, line: 16, baseType: !441)
!2154 = !DIDerivedType(tag: DW_TAG_member, scope: !1868, file: !1869, line: 527, baseType: !2155, size: 64, offset: 512)
!2155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1868, file: !1869, line: 527, size: 64, elements: !2156)
!2156 = !{!2157, !2163}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2155, file: !1869, line: 528, baseType: !2158, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1928, line: 21, baseType: !2159)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1928, line: 21, size: 64, elements: !2160)
!2160 = !{!2161}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2159, file: !1928, line: 21, baseType: !2162, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1928, line: 14, baseType: !441)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2155, file: !1869, line: 529, baseType: !2142, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1868, file: !1869, line: 534, baseType: !1861, size: 64, offset: 576)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1868, file: !1869, line: 535, baseType: !1861, size: 64, offset: 640)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1868, file: !1869, line: 541, baseType: !2167, size: 64, offset: 704)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1868, file: !1869, line: 545, baseType: !2169, size: 64, offset: 768)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1868, file: !1869, line: 549, baseType: !2171, size: 64, offset: 832)
!2171 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1923, line: 520, baseType: !1861)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1855, file: !55, line: 100, baseType: !2173, size: 64, offset: 128)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!151, !1814, !441, !441, !151}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1815, file: !55, line: 134, baseType: !329, size: 64, offset: 960)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1815, file: !55, line: 135, baseType: !151, size: 32, offset: 1024)
!2178 = !DIDerivedType(tag: DW_TAG_member, scope: !1815, file: !55, line: 136, baseType: !2179, size: 128, offset: 1088)
!2179 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1815, file: !55, line: 136, size: 128, elements: !2180)
!2180 = !{!2181, !2187}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2179, file: !55, line: 137, baseType: !2182, size: 128)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2183, line: 6, size: 128, elements: !2184)
!2183 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2184 = !{!2185, !2186}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2182, file: !2183, line: 7, baseType: !310, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2182, file: !2183, line: 8, baseType: !310, size: 64, offset: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, scope: !2179, file: !55, line: 138, baseType: !2188)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2179, file: !55, line: 138, elements: !2189)
!2189 = !{!2190, !2192}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2188, file: !55, line: 138, baseType: !2191)
!2191 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2188, file: !55, line: 138, elements: !1217)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2188, file: !55, line: 138, baseType: !2193)
!2193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2182, elements: !1469)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1811, file: !63, line: 147, baseType: !329, size: 64, offset: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1769, file: !63, line: 161, baseType: !1178, size: 128, align: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, scope: !1765, file: !63, line: 164, baseType: !2197, size: 32, offset: 384)
!2197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1765, file: !63, line: 164, size: 32, elements: !2198)
!2198 = !{!2199, !2200}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2197, file: !63, line: 169, baseType: !388, size: 32)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2197, file: !63, line: 177, baseType: !35, size: 32)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1765, file: !63, line: 181, baseType: !388, size: 32, offset: 416)
!2202 = !DIDerivedType(tag: DW_TAG_member, scope: !1733, file: !63, line: 325, baseType: !2203, size: 512, offset: 512)
!2203 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1733, file: !63, line: 325, size: 512, elements: !2204)
!2204 = !{!2205, !2215}
!2205 = !DIDerivedType(tag: DW_TAG_member, scope: !2203, file: !63, line: 326, baseType: !2206, size: 320)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2203, file: !63, line: 326, size: 320, elements: !2207)
!2207 = !{!2208, !2209, !2210, !2211, !2212, !2213, !2214}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2206, file: !63, line: 327, baseType: !441, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2206, file: !63, line: 328, baseType: !441, size: 64, offset: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2206, file: !63, line: 329, baseType: !441, size: 64, offset: 128)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2206, file: !63, line: 331, baseType: !388, size: 32, offset: 192)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2206, file: !63, line: 332, baseType: !388, size: 32, offset: 224)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2206, file: !63, line: 333, baseType: !388, size: 32, offset: 256)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2206, file: !63, line: 335, baseType: !35, size: 32, offset: 288)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2203, file: !63, line: 339, baseType: !1765, size: 512, align: 128)
!2216 = !DIDerivedType(tag: DW_TAG_member, scope: !1733, file: !63, line: 341, baseType: !2217, size: 512, offset: 1024)
!2217 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1733, file: !63, line: 341, size: 512, elements: !2218)
!2218 = !{!2219, !2228, !2234}
!2219 = !DIDerivedType(tag: DW_TAG_member, scope: !2217, file: !63, line: 342, baseType: !2220, size: 384)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2217, file: !63, line: 342, size: 384, elements: !2221)
!2221 = !{!2222, !2223, !2224, !2225, !2226, !2227}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2220, file: !63, line: 343, baseType: !441, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2220, file: !63, line: 344, baseType: !441, size: 64, offset: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2220, file: !63, line: 346, baseType: !329, size: 64, offset: 128)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2220, file: !63, line: 347, baseType: !329, size: 64, offset: 192)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2220, file: !63, line: 348, baseType: !329, size: 64, offset: 256)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2220, file: !63, line: 349, baseType: !329, size: 64, offset: 320)
!2228 = !DIDerivedType(tag: DW_TAG_member, scope: !2217, file: !63, line: 352, baseType: !2229, size: 256)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2217, file: !63, line: 352, size: 256, elements: !2230)
!2230 = !{!2231, !2232, !2233}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2229, file: !63, line: 353, baseType: !441, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2229, file: !63, line: 354, baseType: !441, size: 64, offset: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2229, file: !63, line: 356, baseType: !435, size: 128, offset: 128)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2217, file: !63, line: 359, baseType: !1765, size: 512, align: 128)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1728, file: !1729, line: 1000, baseType: !151, size: 32, offset: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1728, file: !1729, line: 1001, baseType: !547, size: 320, offset: 128)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1724, file: !42, line: 395, baseType: !2238, size: 64)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!675, !329}
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2243, line: 41, size: 320, elements: !2244)
!2243 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!2244 = !{!2245, !2246, !2247, !2248, !2249, !2250, !2255, !2293}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !2242, file: !2243, line: 42, baseType: !229, size: 8)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !2242, file: !2243, line: 43, baseType: !527, size: 8, offset: 8)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !2242, file: !2243, line: 44, baseType: !527, size: 8, offset: 16)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !2242, file: !2243, line: 45, baseType: !527, size: 8, offset: 24)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !2242, file: !2243, line: 46, baseType: !527, size: 8, offset: 32)
!2250 = !DIDerivedType(tag: DW_TAG_member, scope: !2242, file: !2243, line: 47, baseType: !2251, size: 64, offset: 64)
!2251 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2242, file: !2243, line: 47, size: 64, elements: !2252)
!2252 = !{!2253, !2254}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !2251, file: !2243, line: 48, baseType: !690, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !2251, file: !2243, line: 49, baseType: !151, size: 32)
!2255 = !DIDerivedType(tag: DW_TAG_member, scope: !2242, file: !2243, line: 61, baseType: !2256, size: 128, offset: 128)
!2256 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2242, file: !2243, line: 61, size: 128, elements: !2257)
!2257 = !{!2258, !2264}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !2256, file: !2243, line: 67, baseType: !2259, size: 128)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !2260, line: 17, size: 128, elements: !2261)
!2260 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!2261 = !{!2262, !2263}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2259, file: !2260, line: 19, baseType: !329, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2259, file: !2260, line: 20, baseType: !691, size: 64, offset: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, scope: !2256, file: !2243, line: 68, baseType: !2265, size: 128)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2256, file: !2243, line: 68, size: 128, elements: !2266)
!2266 = !{!2267, !2292}
!2267 = !DIDerivedType(tag: DW_TAG_member, scope: !2265, file: !2243, line: 69, baseType: !2268, size: 64)
!2268 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2265, file: !2243, line: 69, size: 64, elements: !2269)
!2269 = !{!2270, !2273, !2280, !2289, !2291}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !2268, file: !2243, line: 71, baseType: !2271, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2259)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !2268, file: !2243, line: 72, baseType: !2274, size: 64)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2276)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !2243, line: 17, size: 128, elements: !2277)
!2277 = !{!2278, !2279}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2276, file: !2243, line: 18, baseType: !329, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2276, file: !2243, line: 19, baseType: !690, size: 64, offset: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !2268, file: !2243, line: 73, baseType: !2281, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2283)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !2284, line: 31, size: 128, elements: !2285)
!2284 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!2285 = !{!2286, !2287, !2288}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !2283, file: !2284, line: 32, baseType: !1861, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !2283, file: !2284, line: 33, baseType: !35, size: 32, offset: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !2283, file: !2284, line: 34, baseType: !35, size: 32, offset: 96)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !2268, file: !2243, line: 74, baseType: !2290, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !2268, file: !2243, line: 75, baseType: !329, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2265, file: !2243, line: 77, baseType: !690, size: 64, offset: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, scope: !2242, file: !2243, line: 80, baseType: !2294, size: 64, offset: 256)
!2294 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2242, file: !2243, line: 80, size: 64, elements: !2295)
!2295 = !{!2296, !2297}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !2294, file: !2243, line: 81, baseType: !441, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !2294, file: !2243, line: 82, baseType: !876, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1691, file: !42, line: 1920, baseType: !1708, size: 64, offset: 320)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1691, file: !42, line: 1921, baseType: !2300, size: 64, offset: 384)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!151, !1711, !2303, !35}
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !184, line: 1559, size: 192, elements: !2305)
!2305 = !{!2306, !2307, !2308}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "req_list", scope: !2304, file: !184, line: 1560, baseType: !419, size: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "need_ts", scope: !2304, file: !184, line: 1561, baseType: !527, size: 8, offset: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2304, file: !184, line: 1562, baseType: !2309, size: 64, offset: 128)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{null, !2303}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1691, file: !42, line: 1923, baseType: !2313, size: 64, offset: 448)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{!151, !1698, !2316}
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !42, line: 1858, size: 128, elements: !2318)
!2318 = !{!2319, !2324}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2317, file: !42, line: 1859, baseType: !2320, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !42, line: 1855, baseType: !2321)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{!527, !2316, !606, !151, !876, !310, !35}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2317, file: !42, line: 1860, baseType: !876, size: 64, offset: 64)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1691, file: !42, line: 1924, baseType: !2326, size: 64, offset: 512)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{!2329, !1698, !2330}
!2329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !243, line: 59, baseType: !35)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2332, line: 37, size: 128, elements: !2333)
!2332 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2333 = !{!2334, !2340}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2331, file: !2332, line: 38, baseType: !2335, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2332, line: 31, baseType: !2336)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{null, !1698, !2339, !2330}
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2331, file: !2332, line: 39, baseType: !2329, size: 32, offset: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1691, file: !42, line: 1925, baseType: !2342, size: 64, offset: 576)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{!679, !1698, !35, !441}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1691, file: !42, line: 1926, baseType: !2342, size: 64, offset: 640)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1691, file: !42, line: 1927, baseType: !2347, size: 64, offset: 704)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{!151, !1698, !1875}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1691, file: !42, line: 1928, baseType: !441, size: 64, offset: 768)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1691, file: !42, line: 1929, baseType: !2352, size: 64, offset: 832)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!151, !722, !1698}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1691, file: !42, line: 1930, baseType: !2356, size: 64, offset: 896)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!151, !1698, !2359}
!2359 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !42, line: 1061, baseType: !329)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1691, file: !42, line: 1931, baseType: !2352, size: 64, offset: 960)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1691, file: !42, line: 1932, baseType: !2362, size: 64, offset: 1024)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{!151, !1698, !876, !876, !151}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1691, file: !42, line: 1933, baseType: !2366, size: 64, offset: 1088)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!151, !151, !1698, !151}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1691, file: !42, line: 1934, baseType: !2370, size: 64, offset: 1152)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!151, !1698, !151, !2373}
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !42, line: 1063, flags: DIFlagFwdDecl)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1691, file: !42, line: 1935, baseType: !1912, size: 64, offset: 1216)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1691, file: !42, line: 1936, baseType: !2377, size: 64, offset: 1280)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!151, !151}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1691, file: !42, line: 1937, baseType: !2370, size: 64, offset: 1344)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1691, file: !42, line: 1938, baseType: !2382, size: 64, offset: 1408)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!675, !2385, !1698, !1383, !690, !35}
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !2387, line: 59, flags: DIFlagFwdDecl)
!2387 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1691, file: !42, line: 1939, baseType: !2389, size: 64, offset: 1472)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!675, !1698, !1383, !2385, !690, !35}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1691, file: !42, line: 1940, baseType: !2393, size: 64, offset: 1536)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{null, !1698}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1691, file: !42, line: 1941, baseType: !2397, size: 64, offset: 1600)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!151, !1698, !151, !2400, !2401}
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1691, file: !42, line: 1942, baseType: !2403, size: 64, offset: 1664)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!679, !1698, !151, !876, !876}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1691, file: !42, line: 1944, baseType: !2407, size: 64, offset: 1728)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{null, !1362, !1698}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1691, file: !42, line: 1948, baseType: !2411, size: 64, offset: 1792)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!675, !1698, !876, !1698, !876, !690, !35}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1691, file: !42, line: 1950, baseType: !2415, size: 64, offset: 1856)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!876, !1698, !876, !1698, !876, !876, !35}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1691, file: !42, line: 1953, baseType: !2362, size: 64, offset: 1920)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1691, file: !42, line: 1954, baseType: !2420, size: 64, offset: 1984)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!151, !2423, !35}
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !42, line: 1911, flags: DIFlagFwdDecl)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1691, file: !42, line: 1955, baseType: !2426, size: 64, offset: 2048)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!151, !2423, !2303, !35}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1400, file: !42, line: 1018, baseType: !310, size: 64, offset: 1472)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1400, file: !42, line: 1020, baseType: !329, size: 64, offset: 1536)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1400, file: !42, line: 1023, baseType: !329, size: 64, offset: 1600)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1400, file: !42, line: 1027, baseType: !2433, size: 64, offset: 1664)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1400, file: !42, line: 1029, baseType: !718, size: 64, offset: 1728)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1400, file: !42, line: 1030, baseType: !2436, size: 32, offset: 1792)
!2436 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2437, line: 8, baseType: !320)
!2437 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1400, file: !42, line: 1031, baseType: !2436, size: 32, offset: 1824)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1363, file: !1364, line: 29, baseType: !329, size: 64, offset: 896)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1306, file: !42, line: 2077, baseType: !1359, size: 64, offset: 1088)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1306, file: !42, line: 2078, baseType: !1359, size: 64, offset: 1152)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1306, file: !42, line: 2079, baseType: !1359, size: 64, offset: 1216)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1306, file: !42, line: 2081, baseType: !2444, size: 64, offset: 1280)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!675, !866, !151, !645, !690, !876}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1306, file: !42, line: 2082, baseType: !2448, size: 64, offset: 1344)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!675, !866, !151, !606, !690, !876}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1306, file: !42, line: 2083, baseType: !2452, size: 64, offset: 1408)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!2455, !722}
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !79, line: 296, size: 1664, elements: !2458)
!2458 = !{!2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2483, !2484, !2485}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2457, file: !79, line: 297, baseType: !471, size: 128)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2457, file: !79, line: 298, baseType: !435, size: 128, offset: 128)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2457, file: !79, line: 299, baseType: !435, size: 128, offset: 256)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2457, file: !79, line: 300, baseType: !435, size: 128, offset: 384)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2457, file: !79, line: 301, baseType: !973, size: 256, offset: 512)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2457, file: !79, line: 302, baseType: !368, size: 32, offset: 768)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2457, file: !79, line: 303, baseType: !388, size: 32, offset: 800)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2457, file: !79, line: 304, baseType: !866, size: 64, offset: 832)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2457, file: !79, line: 305, baseType: !2468, size: 64, offset: 896)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !79, line: 68, size: 64, elements: !2469)
!2469 = !{!2470, !2482}
!2470 = !DIDerivedType(tag: DW_TAG_member, scope: !2468, file: !79, line: 69, baseType: !2471, size: 32)
!2471 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2468, file: !79, line: 69, size: 32, elements: !2472)
!2472 = !{!2473, !2474, !2475}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2471, file: !79, line: 70, baseType: !728, size: 32)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2471, file: !79, line: 71, baseType: !737, size: 32)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2471, file: !79, line: 72, baseType: !2476, size: 32)
!2476 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2477, line: 24, baseType: !2478)
!2477 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2478 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2477, line: 22, size: 32, elements: !2479)
!2479 = !{!2480}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2478, file: !2477, line: 23, baseType: !2481, size: 32)
!2481 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2477, line: 20, baseType: !734)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2468, file: !79, line: 74, baseType: !78, size: 32, offset: 32)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2457, file: !79, line: 306, baseType: !876, size: 64, offset: 960)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2457, file: !79, line: 307, baseType: !441, size: 64, offset: 1024)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2457, file: !79, line: 308, baseType: !2486, size: 576, offset: 1088)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !79, line: 205, size: 576, elements: !2487)
!2487 = !{!2488, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2486, file: !79, line: 206, baseType: !2489, size: 64)
!2489 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !79, line: 66, baseType: !458)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2486, file: !79, line: 207, baseType: !2489, size: 64, offset: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2486, file: !79, line: 208, baseType: !2489, size: 64, offset: 128)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2486, file: !79, line: 209, baseType: !2489, size: 64, offset: 192)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2486, file: !79, line: 210, baseType: !2489, size: 64, offset: 256)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2486, file: !79, line: 211, baseType: !2489, size: 64, offset: 320)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2486, file: !79, line: 212, baseType: !2489, size: 64, offset: 384)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2486, file: !79, line: 213, baseType: !1533, size: 64, offset: 448)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2486, file: !79, line: 214, baseType: !1533, size: 64, offset: 512)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1306, file: !42, line: 2085, baseType: !2499, size: 64, offset: 1472)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!679, !866, !2502}
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2504, line: 15, size: 256, elements: !2505)
!2504 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2505 = !{!2506, !2507, !2508, !2509, !2510}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2503, file: !2504, line: 16, baseType: !404, size: 32)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2503, file: !2504, line: 19, baseType: !151, size: 32, offset: 32)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2503, file: !2504, line: 26, baseType: !441, size: 64, offset: 64)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2503, file: !2504, line: 33, baseType: !441, size: 64, offset: 128)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2503, file: !2504, line: 36, baseType: !2511, size: 64, offset: 192)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !63, line: 33, flags: DIFlagFwdDecl)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1306, file: !42, line: 2087, baseType: !2499, size: 64, offset: 1536)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1306, file: !42, line: 2089, baseType: !899, size: 64, offset: 1600)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !867, file: !42, line: 1198, baseType: !2516, size: 64, offset: 448)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2518)
!2518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !79, line: 324, size: 704, elements: !2519)
!2519 = !{!2520, !2524, !2528, !2532, !2533, !2534, !2535, !2536, !2541, !2546, !2550}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2518, file: !79, line: 325, baseType: !2521, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{!151, !2456}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2518, file: !79, line: 326, baseType: !2525, size: 64, offset: 64)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{!2456, !866, !151}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2518, file: !79, line: 327, baseType: !2529, size: 64, offset: 128)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{null, !2456}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2518, file: !79, line: 328, baseType: !2521, size: 64, offset: 192)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2518, file: !79, line: 329, baseType: !2521, size: 64, offset: 256)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2518, file: !79, line: 330, baseType: !2521, size: 64, offset: 320)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2518, file: !79, line: 331, baseType: !1334, size: 64, offset: 384)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2518, file: !79, line: 334, baseType: !2537, size: 64, offset: 448)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!2540, !722}
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2518, file: !79, line: 335, baseType: !2542, size: 64, offset: 512)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!151, !722, !2545}
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2518, file: !79, line: 337, baseType: !2547, size: 64, offset: 576)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!151, !722, !2540}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2518, file: !79, line: 339, baseType: !2551, size: 64, offset: 640)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{!151, !866, !2554}
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !867, file: !42, line: 1199, baseType: !2556, size: 64, offset: 512)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2558)
!2558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !79, line: 430, size: 704, elements: !2559)
!2559 = !{!2560, !2566, !2567, !2571, !2572, !2573, !2588, !2611, !2615, !2616, !2639}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2558, file: !79, line: 431, baseType: !2561, size: 64)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{!151, !866, !151, !151, !2564}
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1682)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2558, file: !79, line: 432, baseType: !1334, size: 64, offset: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2558, file: !79, line: 433, baseType: !2568, size: 64, offset: 128)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{!151, !866, !35}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2558, file: !79, line: 434, baseType: !2568, size: 64, offset: 192)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2558, file: !79, line: 435, baseType: !1334, size: 64, offset: 256)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2558, file: !79, line: 436, baseType: !2574, size: 64, offset: 320)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!151, !866, !151, !2577}
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !79, line: 417, size: 256, elements: !2579)
!2579 = !{!2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2578, file: !79, line: 418, baseType: !151, size: 32)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2578, file: !79, line: 419, baseType: !35, size: 32, offset: 32)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2578, file: !79, line: 420, baseType: !35, size: 32, offset: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2578, file: !79, line: 422, baseType: !35, size: 32, offset: 96)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2578, file: !79, line: 423, baseType: !35, size: 32, offset: 128)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2578, file: !79, line: 424, baseType: !35, size: 32, offset: 160)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2578, file: !79, line: 425, baseType: !35, size: 32, offset: 192)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2578, file: !79, line: 426, baseType: !35, size: 32, offset: 224)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2558, file: !79, line: 437, baseType: !2589, size: 64, offset: 384)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{!151, !866, !2468, !2592}
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !79, line: 345, size: 960, elements: !2594)
!2594 = !{!2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2593, file: !79, line: 346, baseType: !151, size: 32)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2593, file: !79, line: 347, baseType: !310, size: 64, offset: 64)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2593, file: !79, line: 348, baseType: !310, size: 64, offset: 128)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2593, file: !79, line: 349, baseType: !310, size: 64, offset: 192)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2593, file: !79, line: 350, baseType: !310, size: 64, offset: 256)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2593, file: !79, line: 351, baseType: !310, size: 64, offset: 320)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2593, file: !79, line: 352, baseType: !310, size: 64, offset: 384)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2593, file: !79, line: 353, baseType: !456, size: 64, offset: 448)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2593, file: !79, line: 355, baseType: !456, size: 64, offset: 512)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2593, file: !79, line: 356, baseType: !151, size: 32, offset: 576)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2593, file: !79, line: 357, baseType: !151, size: 32, offset: 608)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2593, file: !79, line: 358, baseType: !310, size: 64, offset: 640)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2593, file: !79, line: 359, baseType: !310, size: 64, offset: 704)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2593, file: !79, line: 360, baseType: !310, size: 64, offset: 768)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2593, file: !79, line: 361, baseType: !456, size: 64, offset: 832)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2593, file: !79, line: 362, baseType: !151, size: 32, offset: 896)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2558, file: !79, line: 438, baseType: !2612, size: 64, offset: 448)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{!151, !866, !2554, !2592}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2558, file: !79, line: 440, baseType: !2589, size: 64, offset: 512)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2558, file: !79, line: 441, baseType: !2617, size: 64, offset: 576)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DISubroutineType(types: !2619)
!2619 = !{!151, !866, !2620}
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !79, line: 411, size: 1408, elements: !2622)
!2622 = !{!2623, !2624}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2621, file: !79, line: 412, baseType: !35, size: 32)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2621, file: !79, line: 413, baseType: !2625, size: 1344, offset: 64)
!2625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2626, size: 1344, elements: !15)
!2626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !79, line: 397, size: 448, elements: !2627)
!2627 = !{!2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2638}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2626, file: !79, line: 398, baseType: !35, size: 32)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2626, file: !79, line: 399, baseType: !35, size: 32, offset: 32)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2626, file: !79, line: 401, baseType: !35, size: 32, offset: 64)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2626, file: !79, line: 402, baseType: !35, size: 32, offset: 96)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2626, file: !79, line: 403, baseType: !35, size: 32, offset: 128)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2626, file: !79, line: 404, baseType: !35, size: 32, offset: 160)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2626, file: !79, line: 405, baseType: !35, size: 32, offset: 192)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2626, file: !79, line: 406, baseType: !312, size: 64, offset: 256)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2626, file: !79, line: 407, baseType: !2637, size: 64, offset: 320)
!2637 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !309, line: 132, baseType: !310)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2626, file: !79, line: 408, baseType: !2637, size: 64, offset: 384)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2558, file: !79, line: 442, baseType: !2568, size: 64, offset: 640)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !867, file: !42, line: 1200, baseType: !2641, size: 64, offset: 576)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2643)
!2643 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !42, line: 54, flags: DIFlagFwdDecl)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !867, file: !42, line: 1201, baseType: !441, size: 64, offset: 640)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !867, file: !42, line: 1202, baseType: !441, size: 64, offset: 704)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !867, file: !42, line: 1203, baseType: !441, size: 64, offset: 768)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !867, file: !42, line: 1204, baseType: !757, size: 64, offset: 832)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !867, file: !42, line: 1205, baseType: !1517, size: 320, offset: 896)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !867, file: !42, line: 1206, baseType: !151, size: 32, offset: 1216)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !867, file: !42, line: 1207, baseType: !388, size: 32, offset: 1248)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !867, file: !42, line: 1209, baseType: !329, size: 64, offset: 1280)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !867, file: !42, line: 1211, baseType: !2653, size: 64, offset: 1344)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2656)
!2656 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !42, line: 1211, flags: DIFlagFwdDecl)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !867, file: !42, line: 1223, baseType: !2658, size: 64, offset: 1408)
!2658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !774, line: 34, size: 64, elements: !2659)
!2659 = !{!2660}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2658, file: !774, line: 35, baseType: !777, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !867, file: !42, line: 1224, baseType: !435, size: 128, offset: 1472)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !867, file: !42, line: 1225, baseType: !407, size: 64, offset: 1600)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !867, file: !42, line: 1226, baseType: !2664, size: 64, offset: 1664)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !184, line: 1495, size: 128, elements: !2666)
!2666 = !{!2667, !2668}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !2665, file: !184, line: 1496, baseType: !407, size: 64)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "holder", scope: !2665, file: !184, line: 1497, baseType: !329, size: 64, offset: 64)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !867, file: !42, line: 1227, baseType: !2670, size: 64, offset: 1728)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !42, line: 50, flags: DIFlagFwdDecl)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !867, file: !42, line: 1228, baseType: !2673, size: 64, offset: 1792)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !42, line: 1228, flags: DIFlagFwdDecl)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !867, file: !42, line: 1229, baseType: !471, size: 128, offset: 1856)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !867, file: !42, line: 1230, baseType: !35, size: 32, offset: 1984)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !867, file: !42, line: 1231, baseType: !2678, size: 2496, offset: 2048)
!2678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !79, line: 521, size: 2496, elements: !2679)
!2679 = !{!2680, !2681, !2682, !2684, !2716}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2678, file: !79, line: 522, baseType: !35, size: 32)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2678, file: !79, line: 523, baseType: !1517, size: 320, offset: 64)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2678, file: !79, line: 524, baseType: !2683, size: 192, offset: 384)
!2683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !722, size: 192, elements: !15)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2678, file: !79, line: 525, baseType: !2685, size: 1728, offset: 576)
!2685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2686, size: 1728, elements: !15)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !79, line: 222, size: 576, elements: !2687)
!2687 = !{!2688, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2686, file: !79, line: 223, baseType: !2689, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !79, line: 445, size: 256, elements: !2691)
!2691 = !{!2692, !2693, !2706, !2707}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2690, file: !79, line: 446, baseType: !151, size: 32)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2690, file: !79, line: 447, baseType: !2694, size: 64, offset: 64)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2696)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !79, line: 312, size: 512, elements: !2697)
!2697 = !{!2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2696, file: !79, line: 313, baseType: !1334, size: 64)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2696, file: !79, line: 314, baseType: !1334, size: 64, offset: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2696, file: !79, line: 315, baseType: !1334, size: 64, offset: 128)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2696, file: !79, line: 316, baseType: !1334, size: 64, offset: 192)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2696, file: !79, line: 317, baseType: !2521, size: 64, offset: 256)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2696, file: !79, line: 318, baseType: !2521, size: 64, offset: 320)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2696, file: !79, line: 319, baseType: !2521, size: 64, offset: 384)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2696, file: !79, line: 320, baseType: !2551, size: 64, offset: 448)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2690, file: !79, line: 448, baseType: !903, size: 64, offset: 128)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2690, file: !79, line: 449, baseType: !2689, size: 64, offset: 192)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2686, file: !79, line: 224, baseType: !151, size: 32, offset: 64)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2686, file: !79, line: 226, baseType: !435, size: 128, offset: 128)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2686, file: !79, line: 227, baseType: !441, size: 64, offset: 256)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2686, file: !79, line: 228, baseType: !35, size: 32, offset: 320)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2686, file: !79, line: 229, baseType: !35, size: 32, offset: 352)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2686, file: !79, line: 230, baseType: !2489, size: 64, offset: 384)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2686, file: !79, line: 231, baseType: !2489, size: 64, offset: 448)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2686, file: !79, line: 232, baseType: !329, size: 64, offset: 512)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2678, file: !79, line: 526, baseType: !2717, size: 192, offset: 2304)
!2717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2694, size: 192, elements: !15)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !867, file: !42, line: 1233, baseType: !2719, size: 2368, offset: 4544)
!2719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !42, line: 1184, size: 2368, elements: !2720)
!2720 = !{!2721, !2722, !2723}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2719, file: !42, line: 1185, baseType: !262, size: 16)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2719, file: !42, line: 1186, baseType: !262, size: 16, offset: 16)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2719, file: !42, line: 1187, baseType: !2724, size: 2304, offset: 64)
!2724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2725, size: 2304, elements: !15)
!2725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2726, line: 12, size: 768, elements: !2727)
!2726 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2727 = !{!2728, !2736, !2737, !4023, !4024}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2725, file: !2726, line: 13, baseType: !2729, size: 384)
!2729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2730, line: 17, size: 384, elements: !2731)
!2730 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2731 = !{!2732, !2733, !2734, !2735}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2729, file: !2730, line: 18, baseType: !151, size: 32)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2729, file: !2730, line: 19, baseType: !151, size: 32, offset: 32)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2729, file: !2730, line: 20, baseType: !579, size: 192, offset: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2729, file: !2730, line: 22, baseType: !1178, size: 128, align: 64, offset: 256)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2725, file: !2726, line: 14, baseType: !538, size: 64, offset: 384)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2725, file: !2726, line: 15, baseType: !2738, size: 64, offset: 448)
!2738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2739, line: 16, size: 64, elements: !2740)
!2739 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2740 = !{!2741}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2738, file: !2739, line: 17, baseType: !2742, size: 64)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !2387, line: 746, size: 58368, elements: !2744)
!2744 = !{!2745, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2825, !2836, !2929, !2933, !2936, !2967, !2968, !2969, !2970, !2974, !2976, !2977, !2978, !2979, !2980, !2981, !2992, !2993, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3010, !3011, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3104, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3152, !3158, !3159, !3160, !3161, !3162, !3166, !3169, !3176, !3181, !3184, !3187, !3190, !3193, !3331, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3369, !3370, !3371, !3380, !3388, !3389, !3390, !3391, !3392, !3397, !3398, !3399, !3402, !3403, !3493, !3504, !3507, !3515, !3518, !3519, !3605, !3606, !3607, !3608, !3609, !3615, !3616, !3617, !3618, !3621, !3622, !3625, !3628, !3629, !3632, !3633, !3634, !3637, !3638, !3639, !3640, !3641, !3642, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3674, !3675, !3681, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3763, !3765, !3766, !3767, !3768, !3769, !3770, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3800, !3801, !3802}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2743, file: !2387, line: 752, baseType: !2746, size: 192)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2747, line: 56, size: 192, elements: !2748)
!2747 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2748 = !{!2749, !2750, !2751, !2752}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2746, file: !2747, line: 57, baseType: !441, size: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2746, file: !2747, line: 58, baseType: !441, size: 64, offset: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2746, file: !2747, line: 59, baseType: !320, size: 32, offset: 128)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2746, file: !2747, line: 61, baseType: !320, size: 32, offset: 160)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2743, file: !2387, line: 754, baseType: !35, size: 32, offset: 192)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2743, file: !2387, line: 767, baseType: !329, size: 64, offset: 256)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2743, file: !2387, line: 768, baseType: !1449, size: 32, offset: 320)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2743, file: !2387, line: 770, baseType: !35, size: 32, offset: 352)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2743, file: !2387, line: 771, baseType: !35, size: 32, offset: 384)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2743, file: !2387, line: 774, baseType: !151, size: 32, offset: 416)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2743, file: !2387, line: 775, baseType: !2760, size: 128, offset: 448)
!2760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2761, line: 58, size: 128, elements: !2762)
!2761 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2762 = !{!2763, !2764, !2769, !2770}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2760, file: !2761, line: 59, baseType: !1406, size: 64)
!2764 = !DIDerivedType(tag: DW_TAG_member, scope: !2760, file: !2761, line: 60, baseType: !2765, size: 32, offset: 64)
!2765 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2760, file: !2761, line: 60, size: 32, elements: !2766)
!2766 = !{!2767, !2768}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2765, file: !2761, line: 61, baseType: !35, size: 32)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2765, file: !2761, line: 62, baseType: !388, size: 32)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2760, file: !2761, line: 65, baseType: !401, size: 16, offset: 96)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2760, file: !2761, line: 65, baseType: !401, size: 16, offset: 112)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2743, file: !2387, line: 776, baseType: !35, size: 32, offset: 576)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2743, file: !2387, line: 777, baseType: !441, size: 64, offset: 640)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2743, file: !2387, line: 778, baseType: !2742, size: 64, offset: 704)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2743, file: !2387, line: 787, baseType: !151, size: 32, offset: 768)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2743, file: !2387, line: 788, baseType: !151, size: 32, offset: 800)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2743, file: !2387, line: 790, baseType: !151, size: 32, offset: 832)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2743, file: !2387, line: 792, baseType: !151, size: 32, offset: 864)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2743, file: !2387, line: 793, baseType: !151, size: 32, offset: 896)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2743, file: !2387, line: 794, baseType: !151, size: 32, offset: 928)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2743, file: !2387, line: 795, baseType: !35, size: 32, offset: 960)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2743, file: !2387, line: 797, baseType: !2782, size: 2048, offset: 1024)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !2387, line: 551, size: 2048, elements: !2783)
!2783 = !{!2784, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2804, !2807, !2808, !2809}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2782, file: !2387, line: 553, baseType: !2785, size: 128)
!2785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !2387, line: 411, size: 128, elements: !2786)
!2786 = !{!2787, !2788}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2785, file: !2387, line: 412, baseType: !441, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2785, file: !2387, line: 413, baseType: !320, size: 32, offset: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2782, file: !2387, line: 554, baseType: !1074, size: 192, align: 64, offset: 128)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2782, file: !2387, line: 555, baseType: !310, size: 64, offset: 320)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2782, file: !2387, line: 556, baseType: !310, size: 64, offset: 384)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2782, file: !2387, line: 558, baseType: !435, size: 128, offset: 448)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2782, file: !2387, line: 559, baseType: !35, size: 32, offset: 576)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2782, file: !2387, line: 561, baseType: !310, size: 64, offset: 640)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2782, file: !2387, line: 562, baseType: !310, size: 64, offset: 704)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2782, file: !2387, line: 563, baseType: !310, size: 64, offset: 768)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2782, file: !2387, line: 564, baseType: !310, size: 64, offset: 832)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2782, file: !2387, line: 565, baseType: !456, size: 64, offset: 896)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2782, file: !2387, line: 566, baseType: !310, size: 64, offset: 960)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2782, file: !2387, line: 568, baseType: !310, size: 64, offset: 1024)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2782, file: !2387, line: 571, baseType: !151, size: 32, offset: 1088)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2782, file: !2387, line: 572, baseType: !2803, size: 64, offset: 1152)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2782, file: !2387, line: 574, baseType: !2805, size: 64, offset: 1216)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !2387, line: 49, flags: DIFlagFwdDecl)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2782, file: !2387, line: 576, baseType: !2805, size: 64, offset: 1280)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2782, file: !2387, line: 578, baseType: !441, size: 64, offset: 1344)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2782, file: !2387, line: 588, baseType: !2810, size: 512, align: 512, offset: 1536)
!2810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !2387, line: 497, size: 512, align: 512, elements: !2811)
!2811 = !{!2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2810, file: !2387, line: 498, baseType: !310, size: 64)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2810, file: !2387, line: 499, baseType: !310, size: 64, offset: 64)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2810, file: !2387, line: 500, baseType: !310, size: 64, offset: 128)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2810, file: !2387, line: 501, baseType: !320, size: 32, offset: 192)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2810, file: !2387, line: 502, baseType: !320, size: 32, offset: 224)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2810, file: !2387, line: 503, baseType: !441, size: 64, offset: 256)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2810, file: !2387, line: 504, baseType: !441, size: 64, offset: 320)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2810, file: !2387, line: 505, baseType: !441, size: 64, offset: 384)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2810, file: !2387, line: 506, baseType: !2821, size: 64, align: 64, offset: 448)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !2387, line: 445, size: 64, align: 64, elements: !2822)
!2822 = !{!2823, !2824}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2821, file: !2387, line: 446, baseType: !35, size: 32)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2821, file: !2387, line: 447, baseType: !35, size: 32, offset: 32)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2743, file: !2387, line: 798, baseType: !2826, size: 384, offset: 3072)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !2387, line: 592, size: 384, elements: !2827)
!2827 = !{!2828, !2829, !2830, !2831, !2832, !2833, !2834}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2826, file: !2387, line: 593, baseType: !435, size: 128)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2826, file: !2387, line: 594, baseType: !441, size: 64, offset: 128)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2826, file: !2387, line: 595, baseType: !441, size: 64, offset: 192)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2826, file: !2387, line: 596, baseType: !35, size: 32, offset: 256)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2826, file: !2387, line: 597, baseType: !262, size: 16, offset: 288)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2826, file: !2387, line: 598, baseType: !262, size: 16, offset: 304)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2826, file: !2387, line: 600, baseType: !2835, size: 64, offset: 320)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2743, file: !2387, line: 799, baseType: !2837, size: 1792, offset: 3456)
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !2387, line: 610, size: 1792, elements: !2838)
!2838 = !{!2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2926, !2927}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2837, file: !2387, line: 611, baseType: !1074, size: 192, align: 64)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2837, file: !2387, line: 618, baseType: !310, size: 64, offset: 192)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2837, file: !2387, line: 619, baseType: !310, size: 64, offset: 256)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2837, file: !2387, line: 620, baseType: !310, size: 64, offset: 320)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2837, file: !2387, line: 621, baseType: !310, size: 64, offset: 384)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2837, file: !2387, line: 622, baseType: !310, size: 64, offset: 448)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2837, file: !2387, line: 629, baseType: !456, size: 64, offset: 512)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2837, file: !2387, line: 630, baseType: !310, size: 64, offset: 576)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2837, file: !2387, line: 631, baseType: !35, size: 32, offset: 640)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2837, file: !2387, line: 653, baseType: !35, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2837, file: !2387, line: 654, baseType: !35, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2837, file: !2387, line: 655, baseType: !35, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2837, file: !2387, line: 656, baseType: !35, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2837, file: !2387, line: 662, baseType: !2853, size: 512, offset: 704)
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !85, line: 118, size: 512, elements: !2854)
!2854 = !{!2855, !2863, !2864, !2869, !2922, !2923, !2924, !2925}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2853, file: !85, line: 119, baseType: !2856, size: 256)
!2856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2857, line: 9, size: 256, elements: !2858)
!2857 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2858 = !{!2859, !2860}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2856, file: !2857, line: 10, baseType: !1074, size: 192, align: 64)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2856, file: !2857, line: 11, baseType: !2861, size: 64, offset: 192)
!2861 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2862, line: 29, baseType: !456)
!2862 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2853, file: !85, line: 120, baseType: !2861, size: 64, offset: 256)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2853, file: !85, line: 121, baseType: !2865, size: 64, offset: 320)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{!84, !2868}
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2853, file: !85, line: 122, baseType: !2870, size: 64, offset: 384)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !85, line: 159, size: 512, align: 512, elements: !2872)
!2872 = !{!2873, !2896, !2897, !2900, !2905, !2906, !2917, !2921}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2871, file: !85, line: 160, baseType: !2874, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !85, line: 215, size: 4608, align: 512, elements: !2876)
!2876 = !{!2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2875, file: !85, line: 216, baseType: !536, size: 32)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2875, file: !85, line: 217, baseType: !35, size: 32, offset: 32)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2875, file: !85, line: 218, baseType: !35, size: 32, offset: 64)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2875, file: !85, line: 219, baseType: !35, size: 32, offset: 96)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2875, file: !85, line: 220, baseType: !35, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2875, file: !85, line: 221, baseType: !35, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2875, file: !85, line: 222, baseType: !35, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2875, file: !85, line: 223, baseType: !35, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2875, file: !85, line: 224, baseType: !35, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2875, file: !85, line: 226, baseType: !35, size: 32, offset: 160)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2875, file: !85, line: 227, baseType: !262, size: 16, offset: 192)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2875, file: !85, line: 228, baseType: !262, size: 16, offset: 208)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2875, file: !85, line: 229, baseType: !35, size: 32, offset: 224)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2875, file: !85, line: 235, baseType: !2861, size: 64, offset: 256)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2875, file: !85, line: 236, baseType: !2868, size: 64, offset: 320)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2875, file: !85, line: 237, baseType: !2861, size: 64, offset: 384)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2875, file: !85, line: 238, baseType: !2868, size: 64, offset: 448)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2875, file: !85, line: 239, baseType: !2895, size: 4096, align: 512, offset: 512)
!2895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2871, size: 4096, align: 512, elements: !254)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2871, file: !85, line: 161, baseType: !35, size: 32, offset: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2871, file: !85, line: 162, baseType: !2898, size: 32, offset: 96)
!2898 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !309, line: 32, baseType: !2899)
!2899 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !677, line: 96, baseType: !151)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2871, file: !85, line: 163, baseType: !2901, size: 32, offset: 128)
!2901 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !764, line: 274, baseType: !2902)
!2902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !764, line: 274, size: 32, elements: !2903)
!2903 = !{!2904}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2902, file: !764, line: 274, baseType: !768, size: 32)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2871, file: !85, line: 164, baseType: !2868, size: 64, offset: 192)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2871, file: !85, line: 165, baseType: !2907, size: 128, offset: 256)
!2907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2857, line: 14, size: 128, elements: !2908)
!2908 = !{!2909}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2907, file: !2857, line: 15, baseType: !2910, size: 128)
!2910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1075, line: 26, size: 128, elements: !2911)
!2911 = !{!2912, !2916}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2910, file: !1075, line: 27, baseType: !2913, size: 64)
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1075, line: 12, size: 64, elements: !2914)
!2914 = !{!2915}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2913, file: !1075, line: 13, baseType: !1079, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2910, file: !1075, line: 28, baseType: !1079, size: 64, offset: 64)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2871, file: !85, line: 166, baseType: !2918, size: 64, offset: 384)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{!2861}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2871, file: !85, line: 167, baseType: !2861, size: 64, offset: 448)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2853, file: !85, line: 123, baseType: !229, size: 8, offset: 448)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2853, file: !85, line: 124, baseType: !229, size: 8, offset: 456)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2853, file: !85, line: 125, baseType: !229, size: 8, offset: 464)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2853, file: !85, line: 126, baseType: !229, size: 8, offset: 472)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2837, file: !2387, line: 671, baseType: !2853, size: 512, offset: 1216)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2837, file: !2387, line: 679, baseType: !2928, size: 64, offset: 1728)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2743, file: !2387, line: 800, baseType: !2930, size: 64, offset: 5248)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2932)
!2932 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !2387, line: 800, flags: DIFlagFwdDecl)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2743, file: !2387, line: 809, baseType: !2934, size: 64, offset: 5312)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !2387, line: 70, flags: DIFlagFwdDecl)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2743, file: !2387, line: 825, baseType: !2937, size: 2048, align: 512, offset: 5632)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !2387, line: 509, size: 2048, align: 512, elements: !2938)
!2938 = !{!2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2937, file: !2387, line: 511, baseType: !310, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2937, file: !2387, line: 512, baseType: !310, size: 64, offset: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2937, file: !2387, line: 513, baseType: !310, size: 64, offset: 128)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2937, file: !2387, line: 514, baseType: !310, size: 64, offset: 192)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2937, file: !2387, line: 515, baseType: !310, size: 64, offset: 256)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2937, file: !2387, line: 516, baseType: !310, size: 64, offset: 320)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2937, file: !2387, line: 518, baseType: !310, size: 64, offset: 384)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2937, file: !2387, line: 519, baseType: !310, size: 64, offset: 448)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2937, file: !2387, line: 520, baseType: !456, size: 64, offset: 512)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2937, file: !2387, line: 522, baseType: !310, size: 64, offset: 576)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2937, file: !2387, line: 523, baseType: !310, size: 64, offset: 640)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2937, file: !2387, line: 524, baseType: !456, size: 64, offset: 704)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2937, file: !2387, line: 526, baseType: !456, size: 64, offset: 768)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2937, file: !2387, line: 527, baseType: !310, size: 64, offset: 832)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2937, file: !2387, line: 529, baseType: !310, size: 64, offset: 896)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2937, file: !2387, line: 530, baseType: !310, size: 64, offset: 960)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2937, file: !2387, line: 531, baseType: !310, size: 64, offset: 1024)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2937, file: !2387, line: 532, baseType: !310, size: 64, offset: 1088)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2937, file: !2387, line: 533, baseType: !310, size: 64, offset: 1152)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2937, file: !2387, line: 535, baseType: !310, size: 64, offset: 1216)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2937, file: !2387, line: 536, baseType: !310, size: 64, offset: 1280)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2937, file: !2387, line: 537, baseType: !310, size: 64, offset: 1344)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2937, file: !2387, line: 538, baseType: !310, size: 64, offset: 1408)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2937, file: !2387, line: 539, baseType: !310, size: 64, offset: 1472)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2937, file: !2387, line: 540, baseType: !310, size: 64, offset: 1536)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2937, file: !2387, line: 541, baseType: !310, size: 64, offset: 1600)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2937, file: !2387, line: 542, baseType: !310, size: 64, offset: 1664)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2937, file: !2387, line: 543, baseType: !310, size: 64, offset: 1728)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2743, file: !2387, line: 833, baseType: !35, size: 32, offset: 7680)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2743, file: !2387, line: 836, baseType: !35, size: 32, offset: 7712)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2743, file: !2387, line: 837, baseType: !151, size: 32, offset: 7744)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2743, file: !2387, line: 838, baseType: !2971, size: 64, offset: 7808)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2973)
!2973 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !490, line: 19, baseType: !492)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2743, file: !2387, line: 839, baseType: !2975, size: 64, offset: 7872)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2743, file: !2387, line: 840, baseType: !2973, size: 64, offset: 7936)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2743, file: !2387, line: 841, baseType: !329, size: 64, offset: 8000)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2743, file: !2387, line: 843, baseType: !262, size: 16, offset: 8064)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2743, file: !2387, line: 845, baseType: !262, size: 16, offset: 8080)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2743, file: !2387, line: 848, baseType: !151, size: 32, offset: 8096)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2743, file: !2387, line: 849, baseType: !2982, size: 32, offset: 8128)
!2982 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !2387, line: 718, size: 32, elements: !2983)
!2983 = !{!2984, !2991}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2982, file: !2387, line: 724, baseType: !2985, size: 32)
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2982, file: !2387, line: 719, size: 32, elements: !2986)
!2986 = !{!2987, !2988, !2989, !2990}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2985, file: !2387, line: 720, baseType: !229, size: 8)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2985, file: !2387, line: 721, baseType: !229, size: 8, offset: 8)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2985, file: !2387, line: 722, baseType: !229, size: 8, offset: 16)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2985, file: !2387, line: 723, baseType: !229, size: 8, offset: 24)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2982, file: !2387, line: 725, baseType: !320, size: 32)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2743, file: !2387, line: 850, baseType: !435, size: 128, offset: 8192)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2743, file: !2387, line: 851, baseType: !2994, size: 64, offset: 8320)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !2387, line: 60, flags: DIFlagFwdDecl)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2743, file: !2387, line: 855, baseType: !441, size: 64, offset: 8384)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2743, file: !2387, line: 856, baseType: !229, size: 8, offset: 8448)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2743, file: !2387, line: 857, baseType: !229, size: 8, offset: 8456)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2743, file: !2387, line: 858, baseType: !151, size: 32, offset: 8480)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2743, file: !2387, line: 859, baseType: !435, size: 128, offset: 8512)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2743, file: !2387, line: 860, baseType: !151, size: 32, offset: 8640)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2743, file: !2387, line: 861, baseType: !435, size: 128, offset: 8704)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2743, file: !2387, line: 873, baseType: !3004, size: 256, offset: 8832)
!3004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !2387, line: 376, size: 256, elements: !3005)
!3005 = !{!3006, !3007, !3008, !3009}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3004, file: !2387, line: 381, baseType: !441, size: 64)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3004, file: !2387, line: 384, baseType: !312, size: 64, offset: 64)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3004, file: !2387, line: 389, baseType: !312, size: 64, offset: 128)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3004, file: !2387, line: 392, baseType: !312, size: 64, offset: 192)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2743, file: !2387, line: 875, baseType: !435, size: 128, offset: 9088)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2743, file: !2387, line: 877, baseType: !3012, size: 320, offset: 9216)
!3012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3013, line: 86, size: 320, elements: !3014)
!3013 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3014 = !{!3015, !3016, !3017}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3012, file: !3013, line: 87, baseType: !151, size: 32)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3012, file: !3013, line: 88, baseType: !435, size: 128, offset: 64)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3012, file: !3013, line: 89, baseType: !435, size: 128, offset: 192)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2743, file: !2387, line: 878, baseType: !1074, size: 192, align: 64, offset: 9536)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2743, file: !2387, line: 881, baseType: !1888, size: 64, offset: 9728)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2743, file: !2387, line: 882, baseType: !1888, size: 64, offset: 9792)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2743, file: !2387, line: 884, baseType: !151, size: 32, offset: 9856)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2743, file: !2387, line: 885, baseType: !151, size: 32, offset: 9888)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2743, file: !2387, line: 886, baseType: !151, size: 32, offset: 9920)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2743, file: !2387, line: 888, baseType: !151, size: 32, offset: 9952)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2743, file: !2387, line: 890, baseType: !441, size: 64, offset: 9984)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2743, file: !2387, line: 893, baseType: !35, size: 32, offset: 10048)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2743, file: !2387, line: 896, baseType: !35, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2743, file: !2387, line: 897, baseType: !35, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2743, file: !2387, line: 898, baseType: !35, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2743, file: !2387, line: 899, baseType: !35, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2743, file: !2387, line: 919, baseType: !35, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2743, file: !2387, line: 922, baseType: !35, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2743, file: !2387, line: 923, baseType: !35, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2743, file: !2387, line: 925, baseType: !35, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2743, file: !2387, line: 939, baseType: !35, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2743, file: !2387, line: 941, baseType: !35, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2743, file: !2387, line: 944, baseType: !35, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2743, file: !2387, line: 956, baseType: !35, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2743, file: !2387, line: 962, baseType: !35, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2743, file: !2387, line: 966, baseType: !35, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2743, file: !2387, line: 969, baseType: !441, size: 64, offset: 10176)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2743, file: !2387, line: 971, baseType: !3043, size: 448, offset: 10240)
!3043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !90, line: 25, size: 448, elements: !3044)
!3044 = !{!3045, !3046, !3051}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3043, file: !90, line: 26, baseType: !441, size: 64)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3043, file: !90, line: 27, baseType: !3047, size: 64, offset: 64)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{!679, !3050}
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, scope: !3043, file: !90, line: 28, baseType: !3052, size: 320, offset: 128)
!3052 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3043, file: !90, line: 28, size: 320, elements: !3053)
!3053 = !{!3054, !3064, !3089}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3052, file: !90, line: 37, baseType: !3055, size: 320)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3052, file: !90, line: 30, size: 320, elements: !3056)
!3056 = !{!3057, !3059, !3060, !3061, !3062, !3063}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3055, file: !90, line: 31, baseType: !3058, size: 64)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3055, file: !90, line: 32, baseType: !320, size: 32, offset: 64)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3055, file: !90, line: 33, baseType: !320, size: 32, offset: 96)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3055, file: !90, line: 34, baseType: !320, size: 32, offset: 128)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3055, file: !90, line: 35, baseType: !310, size: 64, offset: 192)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3055, file: !90, line: 36, baseType: !3058, size: 64, offset: 256)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3052, file: !90, line: 47, baseType: !3065, size: 192)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3052, file: !90, line: 39, size: 192, elements: !3066)
!3066 = !{!3067, !3068, !3069, !3088}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3065, file: !90, line: 40, baseType: !2898, size: 32)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3065, file: !90, line: 41, baseType: !89, size: 32, offset: 32)
!3069 = !DIDerivedType(tag: DW_TAG_member, scope: !3065, file: !90, line: 42, baseType: !3070, size: 64, offset: 64)
!3070 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3065, file: !90, line: 42, size: 64, elements: !3071)
!3071 = !{!3072, !3080}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3070, file: !90, line: 43, baseType: !3073, size: 64)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3075, line: 7, size: 128, elements: !3076)
!3075 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3076 = !{!3077, !3079}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3074, file: !3075, line: 8, baseType: !3078, size: 64)
!3078 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !677, line: 93, baseType: !458)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3074, file: !3075, line: 9, baseType: !458, size: 64, offset: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3070, file: !90, line: 44, baseType: !3081, size: 64)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3083, line: 7, size: 64, elements: !3084)
!3083 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3084 = !{!3085, !3087}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3082, file: !3083, line: 8, baseType: !3086, size: 32)
!3086 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3083, line: 5, baseType: !969)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3082, file: !3083, line: 9, baseType: !969, size: 32, offset: 32)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3065, file: !90, line: 46, baseType: !310, size: 64, offset: 128)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3052, file: !90, line: 55, baseType: !3090, size: 256)
!3090 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3052, file: !90, line: 49, size: 256, elements: !3091)
!3091 = !{!3092, !3100, !3101, !3102, !3103}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3090, file: !90, line: 50, baseType: !3093, size: 64)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !3095, line: 36, size: 64, elements: !3096)
!3095 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!3096 = !{!3097, !3098, !3099}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !3094, file: !3095, line: 37, baseType: !151, size: 32)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3094, file: !3095, line: 38, baseType: !1096, size: 16, offset: 32)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !3094, file: !3095, line: 39, baseType: !1096, size: 16, offset: 48)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3090, file: !90, line: 51, baseType: !151, size: 32, offset: 64)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3090, file: !90, line: 52, baseType: !151, size: 32, offset: 96)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3090, file: !90, line: 53, baseType: !441, size: 64, offset: 128)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3090, file: !90, line: 54, baseType: !441, size: 64, offset: 192)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2743, file: !2387, line: 973, baseType: !3105, size: 32, offset: 10688)
!3105 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !309, line: 27, baseType: !3106)
!3106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !677, line: 28, baseType: !151)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2743, file: !2387, line: 974, baseType: !3105, size: 32, offset: 10720)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2743, file: !2387, line: 978, baseType: !441, size: 64, offset: 10752)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2743, file: !2387, line: 987, baseType: !2742, size: 64, offset: 10816)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2743, file: !2387, line: 990, baseType: !2742, size: 64, offset: 10880)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2743, file: !2387, line: 995, baseType: !435, size: 128, offset: 10944)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2743, file: !2387, line: 996, baseType: !435, size: 128, offset: 11072)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2743, file: !2387, line: 997, baseType: !2742, size: 64, offset: 11200)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2743, file: !2387, line: 1005, baseType: !435, size: 128, offset: 11264)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2743, file: !2387, line: 1006, baseType: !435, size: 128, offset: 11392)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2743, file: !2387, line: 1009, baseType: !1445, size: 64, offset: 11520)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2743, file: !2387, line: 1010, baseType: !3118, size: 512, offset: 11584)
!3118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !471, size: 512, elements: !283)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2743, file: !2387, line: 1011, baseType: !435, size: 128, offset: 12096)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2743, file: !2387, line: 1012, baseType: !435, size: 128, offset: 12224)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2743, file: !2387, line: 1014, baseType: !922, size: 64, offset: 12352)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2743, file: !2387, line: 1017, baseType: !1087, size: 64, offset: 12416)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2743, file: !2387, line: 1020, baseType: !1087, size: 64, offset: 12480)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2743, file: !2387, line: 1023, baseType: !329, size: 64, offset: 12544)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2743, file: !2387, line: 1025, baseType: !310, size: 64, offset: 12608)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2743, file: !2387, line: 1026, baseType: !310, size: 64, offset: 12672)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2743, file: !2387, line: 1031, baseType: !310, size: 64, offset: 12736)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2743, file: !2387, line: 1032, baseType: !3129, size: 192, offset: 12800)
!3129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !2387, line: 324, size: 192, elements: !3130)
!3130 = !{!3131, !3132, !3133}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3129, file: !2387, line: 326, baseType: !310, size: 64)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3129, file: !2387, line: 327, baseType: !310, size: 64, offset: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3129, file: !2387, line: 328, baseType: !536, size: 32, offset: 128)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2743, file: !2387, line: 1041, baseType: !441, size: 64, offset: 12992)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2743, file: !2387, line: 1042, baseType: !441, size: 64, offset: 13056)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2743, file: !2387, line: 1045, baseType: !310, size: 64, offset: 13120)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2743, file: !2387, line: 1048, baseType: !310, size: 64, offset: 13184)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2743, file: !2387, line: 1051, baseType: !441, size: 64, offset: 13248)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2743, file: !2387, line: 1052, baseType: !441, size: 64, offset: 13312)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2743, file: !2387, line: 1055, baseType: !3141, size: 640, offset: 13376)
!3141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3142, line: 132, size: 640, elements: !3143)
!3142 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3143 = !{!3144, !3150, !3151}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3141, file: !3142, line: 133, baseType: !3145, size: 576)
!3145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3146, size: 576, elements: !15)
!3146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3142, line: 117, size: 192, elements: !3147)
!3147 = !{!3148, !3149}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3146, file: !3142, line: 118, baseType: !310, size: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3146, file: !3142, line: 119, baseType: !2907, size: 128, offset: 64)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3141, file: !3142, line: 134, baseType: !35, size: 32, offset: 576)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3141, file: !3142, line: 135, baseType: !35, size: 32, offset: 608)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2743, file: !2387, line: 1058, baseType: !3153, size: 448, offset: 14016)
!3153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3142, line: 144, size: 448, elements: !3154)
!3154 = !{!3155, !3156, !3157}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3153, file: !3142, line: 145, baseType: !1178, size: 128, align: 64)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3153, file: !3142, line: 146, baseType: !973, size: 256, offset: 128)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3153, file: !3142, line: 147, baseType: !35, size: 32, offset: 384)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2743, file: !2387, line: 1064, baseType: !1476, size: 64, offset: 14464)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2743, file: !2387, line: 1067, baseType: !1476, size: 64, offset: 14528)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2743, file: !2387, line: 1070, baseType: !1476, size: 64, offset: 14592)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2743, file: !2387, line: 1074, baseType: !1503, size: 64, offset: 14656)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2743, file: !2387, line: 1084, baseType: !3163, size: 128, offset: 14720)
!3163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !3164)
!3164 = !{!3165}
!3165 = !DISubrange(count: 16)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2743, file: !2387, line: 1086, baseType: !3167, size: 64, offset: 14848)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !2387, line: 55, flags: DIFlagFwdDecl)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2743, file: !2387, line: 1089, baseType: !3170, size: 64, offset: 14912)
!3170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3171, line: 12, size: 64, elements: !3172)
!3171 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3172 = !{!3173}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3170, file: !3171, line: 13, baseType: !3174, size: 64)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3171, line: 8, flags: DIFlagFwdDecl)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2743, file: !2387, line: 1090, baseType: !3177, size: 128, offset: 14976)
!3177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3178, line: 13, size: 128, elements: !3179)
!3178 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3179 = !{!3180}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3177, file: !3178, line: 14, baseType: !435, size: 128)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2743, file: !2387, line: 1097, baseType: !3182, size: 64, offset: 15104)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !2387, line: 50, flags: DIFlagFwdDecl)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2743, file: !2387, line: 1100, baseType: !3185, size: 64, offset: 15168)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !2387, line: 1100, flags: DIFlagFwdDecl)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2743, file: !2387, line: 1103, baseType: !3188, size: 64, offset: 15232)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !2387, line: 53, flags: DIFlagFwdDecl)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2743, file: !2387, line: 1107, baseType: !3191, size: 64, offset: 15296)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2387, line: 56, flags: DIFlagFwdDecl)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2743, file: !2387, line: 1110, baseType: !3194, size: 64, offset: 15360)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3196, line: 93, size: 8768, elements: !3197)
!3196 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3197 = !{!3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3245, !3254, !3255, !3257, !3258, !3259, !3262, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3300, !3301, !3308, !3318, !3321, !3322, !3325, !3326, !3327, !3328, !3329, !3330}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3195, file: !3196, line: 94, baseType: !1449, size: 32)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3195, file: !3196, line: 95, baseType: !388, size: 32, offset: 32)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3195, file: !3196, line: 96, baseType: !151, size: 32, offset: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3195, file: !3196, line: 97, baseType: !151, size: 32, offset: 96)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3195, file: !3196, line: 98, baseType: !435, size: 128, offset: 128)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3195, file: !3196, line: 100, baseType: !579, size: 192, offset: 256)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3195, file: !3196, line: 103, baseType: !2742, size: 64, offset: 448)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3195, file: !3196, line: 106, baseType: !3206, size: 192, offset: 512)
!3206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1658, line: 32, size: 192, elements: !3207)
!3207 = !{!3208, !3209}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3206, file: !1658, line: 33, baseType: !435, size: 128)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3206, file: !1658, line: 34, baseType: !3210, size: 64, offset: 128)
!3210 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3211, line: 25, baseType: !3212)
!3211 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3212 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3211, line: 23, size: 64, elements: !3213)
!3213 = !{!3214}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3212, file: !3211, line: 24, baseType: !495, size: 64)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3195, file: !3196, line: 109, baseType: !1290, size: 64, offset: 704)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3195, file: !3196, line: 112, baseType: !151, size: 32, offset: 768)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3195, file: !3196, line: 114, baseType: !151, size: 32, offset: 800)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3195, file: !3196, line: 115, baseType: !2742, size: 64, offset: 832)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3195, file: !3196, line: 118, baseType: !151, size: 32, offset: 896)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3195, file: !3196, line: 119, baseType: !35, size: 32, offset: 928)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3195, file: !3196, line: 121, baseType: !3222, size: 64, offset: 960)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3196, line: 80, size: 448, elements: !3224)
!3224 = !{!3225, !3226, !3232}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3223, file: !3196, line: 81, baseType: !388, size: 32)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3223, file: !3196, line: 82, baseType: !3227, size: 128, offset: 64)
!3227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3196, line: 75, size: 128, elements: !3228)
!3228 = !{!3229, !3230}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3227, file: !3196, line: 76, baseType: !2742, size: 64)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3227, file: !3196, line: 77, baseType: !3231, size: 64, offset: 64)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3223, file: !3196, line: 83, baseType: !923, size: 256, offset: 192)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3195, file: !3196, line: 132, baseType: !35, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3195, file: !3196, line: 133, baseType: !35, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3195, file: !3196, line: 138, baseType: !35, size: 32, offset: 1056)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3195, file: !3196, line: 139, baseType: !435, size: 128, offset: 1088)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3195, file: !3196, line: 142, baseType: !2853, size: 512, offset: 1216)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3195, file: !3196, line: 143, baseType: !2861, size: 64, offset: 1728)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3195, file: !3196, line: 150, baseType: !3240, size: 256, offset: 1792)
!3240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3241, size: 256, elements: !10)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3196, line: 38, size: 128, elements: !3242)
!3242 = !{!3243, !3244}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3241, file: !3196, line: 39, baseType: !310, size: 64)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3241, file: !3196, line: 40, baseType: !310, size: 64, offset: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3195, file: !3196, line: 156, baseType: !3246, size: 192, offset: 2048)
!3246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3196, line: 66, size: 192, elements: !3247)
!3247 = !{!3248}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3246, file: !3196, line: 67, baseType: !3249, size: 192)
!3249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3196, line: 47, size: 192, elements: !3250)
!3250 = !{!3251, !3252, !3253}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3249, file: !3196, line: 48, baseType: !452, size: 64)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3249, file: !3196, line: 49, baseType: !452, size: 64, offset: 64)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3249, file: !3196, line: 50, baseType: !452, size: 64, offset: 128)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3195, file: !3196, line: 160, baseType: !3141, size: 640, offset: 2240)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3195, file: !3196, line: 163, baseType: !3256, size: 256, offset: 2880)
!3256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1445, size: 256, elements: !283)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3195, file: !3196, line: 169, baseType: !1445, size: 64, offset: 3136)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3195, file: !3196, line: 172, baseType: !151, size: 32, offset: 3200)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3195, file: !3196, line: 174, baseType: !3260, size: 64, offset: 3264)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3196, line: 174, flags: DIFlagFwdDecl)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3195, file: !3196, line: 185, baseType: !3263, size: 64, offset: 3328)
!3263 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !764, line: 860, baseType: !3264)
!3264 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !764, line: 853, size: 64, elements: !3265)
!3265 = !{!3266, !3267}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3264, file: !764, line: 858, baseType: !763, size: 32)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3264, file: !764, line: 859, baseType: !368, size: 32, offset: 32)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3195, file: !3196, line: 186, baseType: !310, size: 64, offset: 3392)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3195, file: !3196, line: 186, baseType: !310, size: 64, offset: 3456)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3195, file: !3196, line: 186, baseType: !310, size: 64, offset: 3520)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3195, file: !3196, line: 186, baseType: !310, size: 64, offset: 3584)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3195, file: !3196, line: 187, baseType: !310, size: 64, offset: 3648)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3195, file: !3196, line: 188, baseType: !310, size: 64, offset: 3712)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3195, file: !3196, line: 189, baseType: !3129, size: 192, offset: 3776)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3195, file: !3196, line: 190, baseType: !441, size: 64, offset: 3968)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3195, file: !3196, line: 190, baseType: !441, size: 64, offset: 4032)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3195, file: !3196, line: 190, baseType: !441, size: 64, offset: 4096)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3195, file: !3196, line: 190, baseType: !441, size: 64, offset: 4160)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3195, file: !3196, line: 191, baseType: !441, size: 64, offset: 4224)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3195, file: !3196, line: 191, baseType: !441, size: 64, offset: 4288)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3195, file: !3196, line: 191, baseType: !441, size: 64, offset: 4352)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3195, file: !3196, line: 191, baseType: !441, size: 64, offset: 4416)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3195, file: !3196, line: 192, baseType: !441, size: 64, offset: 4480)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3195, file: !3196, line: 192, baseType: !441, size: 64, offset: 4544)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3195, file: !3196, line: 192, baseType: !441, size: 64, offset: 4608)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3195, file: !3196, line: 192, baseType: !441, size: 64, offset: 4672)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3195, file: !3196, line: 193, baseType: !441, size: 64, offset: 4736)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3195, file: !3196, line: 193, baseType: !441, size: 64, offset: 4800)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3195, file: !3196, line: 194, baseType: !3290, size: 448, offset: 4864)
!3290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3291, line: 12, size: 448, elements: !3292)
!3291 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3292 = !{!3293, !3294, !3295, !3296, !3297, !3298, !3299}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3290, file: !3291, line: 15, baseType: !310, size: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3290, file: !3291, line: 17, baseType: !310, size: 64, offset: 64)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3290, file: !3291, line: 19, baseType: !310, size: 64, offset: 128)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3290, file: !3291, line: 21, baseType: !310, size: 64, offset: 192)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3290, file: !3291, line: 29, baseType: !310, size: 64, offset: 256)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3290, file: !3291, line: 35, baseType: !310, size: 64, offset: 320)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3290, file: !3291, line: 44, baseType: !310, size: 64, offset: 384)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3195, file: !3196, line: 202, baseType: !312, size: 64, offset: 5312)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3195, file: !3196, line: 213, baseType: !3302, size: 2048, offset: 5376)
!3302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3303, size: 2048, elements: !3164)
!3303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3304, line: 43, size: 128, elements: !3305)
!3304 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3305 = !{!3306, !3307}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3303, file: !3304, line: 44, baseType: !692, size: 64)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3303, file: !3304, line: 45, baseType: !692, size: 64, offset: 64)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3195, file: !3196, line: 216, baseType: !3309, size: 448, offset: 7424)
!3309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3196, line: 30, size: 448, elements: !3310)
!3310 = !{!3311, !3312, !3313, !3314, !3315, !3316, !3317}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3309, file: !3196, line: 31, baseType: !151, size: 32)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3309, file: !3196, line: 32, baseType: !679, size: 64, offset: 64)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3309, file: !3196, line: 33, baseType: !441, size: 64, offset: 128)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3309, file: !3196, line: 34, baseType: !310, size: 64, offset: 192)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3309, file: !3196, line: 34, baseType: !310, size: 64, offset: 256)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3309, file: !3196, line: 35, baseType: !441, size: 64, offset: 320)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3309, file: !3196, line: 35, baseType: !441, size: 64, offset: 384)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3195, file: !3196, line: 219, baseType: !3319, size: 64, offset: 7872)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3196, line: 219, flags: DIFlagFwdDecl)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3195, file: !3196, line: 222, baseType: !35, size: 32, offset: 7936)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3195, file: !3196, line: 223, baseType: !3323, size: 64, offset: 8000)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3196, line: 223, flags: DIFlagFwdDecl)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3195, file: !3196, line: 230, baseType: !527, size: 8, offset: 8064)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3195, file: !3196, line: 231, baseType: !1096, size: 16, offset: 8080)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3195, file: !3196, line: 232, baseType: !1096, size: 16, offset: 8096)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3195, file: !3196, line: 234, baseType: !1888, size: 64, offset: 8128)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3195, file: !3196, line: 237, baseType: !973, size: 256, offset: 8192)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3195, file: !3196, line: 243, baseType: !1517, size: 320, offset: 8448)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2743, file: !2387, line: 1111, baseType: !3332, size: 64, offset: 15424)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3196, line: 20, size: 16640, elements: !3334)
!3334 = !{!3335, !3336, !3337, !3338}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3333, file: !3196, line: 21, baseType: !368, size: 32)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3333, file: !3196, line: 22, baseType: !1449, size: 32, offset: 32)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3333, file: !3196, line: 23, baseType: !579, size: 192, offset: 64)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3333, file: !3196, line: 24, baseType: !3339, size: 16384, offset: 256)
!3339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3340, size: 16384, elements: !648)
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1658, line: 51, size: 256, elements: !3341)
!3341 = !{!3342}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3340, file: !1658, line: 52, baseType: !3343, size: 256)
!3343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1658, line: 37, size: 256, elements: !3344)
!3344 = !{!3345, !3352, !3353, !3357}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3343, file: !1658, line: 39, baseType: !3346, size: 64)
!3346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3347, line: 83, baseType: !3348)
!3347 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3347, line: 82, baseType: !3350)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{null, !151}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3343, file: !1658, line: 40, baseType: !441, size: 64, offset: 64)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3343, file: !1658, line: 46, baseType: !3354, size: 64, offset: 128)
!3354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3347, line: 86, baseType: !3355)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3347, line: 85, baseType: !1285)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3343, file: !1658, line: 48, baseType: !3210, size: 64, offset: 192)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2743, file: !2387, line: 1112, baseType: !3210, size: 64, offset: 15488)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2743, file: !2387, line: 1113, baseType: !3210, size: 64, offset: 15552)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2743, file: !2387, line: 1115, baseType: !3210, size: 64, offset: 15616)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2743, file: !2387, line: 1116, baseType: !3206, size: 192, offset: 15680)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2743, file: !2387, line: 1117, baseType: !441, size: 64, offset: 15872)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2743, file: !2387, line: 1118, baseType: !690, size: 64, offset: 15936)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2743, file: !2387, line: 1119, baseType: !35, size: 32, offset: 16000)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2743, file: !2387, line: 1121, baseType: !1177, size: 64, offset: 16064)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2743, file: !2387, line: 1125, baseType: !3367, size: 64, offset: 16128)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !2387, line: 43, flags: DIFlagFwdDecl)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2743, file: !2387, line: 1127, baseType: !728, size: 32, offset: 16192)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2743, file: !2387, line: 1128, baseType: !35, size: 32, offset: 16224)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2743, file: !2387, line: 1130, baseType: !3372, size: 128, offset: 16256)
!3372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3373, line: 37, size: 128, elements: !3374)
!3373 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3374 = !{!3375, !3376, !3377}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3372, file: !3373, line: 38, baseType: !151, size: 32)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3372, file: !3373, line: 39, baseType: !388, size: 32, offset: 32)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3372, file: !3373, line: 40, baseType: !3378, size: 64, offset: 64)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3373, line: 24, flags: DIFlagFwdDecl)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2743, file: !2387, line: 1131, baseType: !3381, size: 256, offset: 16384)
!3381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3382, line: 12, size: 256, elements: !3383)
!3382 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3383 = !{!3384, !3385, !3386, !3387}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3381, file: !3382, line: 13, baseType: !645, size: 64)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3381, file: !3382, line: 14, baseType: !441, size: 64, offset: 64)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3381, file: !3382, line: 15, baseType: !441, size: 64, offset: 128)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3381, file: !3382, line: 16, baseType: !527, size: 8, offset: 192)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2743, file: !2387, line: 1134, baseType: !310, size: 64, offset: 16640)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2743, file: !2387, line: 1135, baseType: !310, size: 64, offset: 16704)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2743, file: !2387, line: 1138, baseType: !368, size: 32, offset: 16768)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2743, file: !2387, line: 1141, baseType: !536, size: 32, offset: 16800)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2743, file: !2387, line: 1143, baseType: !3393, size: 64, offset: 16832)
!3393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !2387, line: 735, size: 64, elements: !3394)
!3394 = !{!3395}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3393, file: !2387, line: 736, baseType: !3396, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2743, file: !2387, line: 1147, baseType: !2910, size: 128, offset: 16896)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2743, file: !2387, line: 1149, baseType: !2742, size: 64, offset: 17024)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2743, file: !2387, line: 1151, baseType: !3400, size: 64, offset: 17088)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !2387, line: 1151, flags: DIFlagFwdDecl)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2743, file: !2387, line: 1188, baseType: !329, size: 64, offset: 17152)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2743, file: !2387, line: 1191, baseType: !3404, size: 64, offset: 17216)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !3406, line: 550, size: 128, elements: !3407)
!3406 = !DIFile(filename: "./include/linux/bio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48d164cf34dda85459af1fe5d2b8d08f")
!3407 = !{!3408, !3492}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3405, file: !3406, line: 551, baseType: !3409, size: 64)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio", file: !409, line: 265, size: 960, elements: !3411)
!3411 = !{!3412, !3413, !3414, !3416, !3417, !3418, !3419, !3420, !3427, !3429, !3434, !3435, !3438, !3442, !3443, !3445, !3446, !3447, !3448, !3450, !3490}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "bi_next", scope: !3410, file: !409, line: 266, baseType: !3409, size: 64)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bdev", scope: !3410, file: !409, line: 267, baseType: !407, size: 64, offset: 64)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "bi_opf", scope: !3410, file: !409, line: 268, baseType: !3415, size: 32, offset: 128)
!3415 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_opf_t", file: !409, line: 256, baseType: !244)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "bi_flags", scope: !3410, file: !409, line: 271, baseType: !262, size: 16, offset: 160)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "bi_ioprio", scope: !3410, file: !409, line: 272, baseType: !262, size: 16, offset: 176)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "bi_status", scope: !3410, file: !409, line: 273, baseType: !512, size: 8, offset: 192)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_remaining", scope: !3410, file: !409, line: 274, baseType: !388, size: 32, offset: 224)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iter", scope: !3410, file: !409, line: 276, baseType: !3421, size: 160, align: 32, offset: 256)
!3421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bvec_iter", file: !2284, line: 77, size: 160, align: 32, elements: !3422)
!3422 = !{!3423, !3424, !3425, !3426}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "bi_sector", scope: !3421, file: !2284, line: 78, baseType: !308, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "bi_size", scope: !3421, file: !2284, line: 80, baseType: !35, size: 32, offset: 64)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "bi_idx", scope: !3421, file: !2284, line: 82, baseType: !35, size: 32, offset: 96)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bvec_done", scope: !3421, file: !2284, line: 84, baseType: !35, size: 32, offset: 128)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "bi_cookie", scope: !3410, file: !409, line: 278, baseType: !3428, size: 32, offset: 416)
!3428 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_qc_t", file: !409, line: 258, baseType: !35)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "bi_end_io", scope: !3410, file: !409, line: 279, baseType: !3430, size: 64, offset: 448)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_end_io_t", file: !409, line: 20, baseType: !3432)
!3432 = !DISubroutineType(types: !3433)
!3433 = !{null, !3409}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "bi_private", scope: !3410, file: !409, line: 280, baseType: !329, size: 64, offset: 512)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "bi_blkg", scope: !3410, file: !409, line: 288, baseType: !3436, size: 64, offset: 576)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = !DICompositeType(tag: DW_TAG_structure_type, name: "blkcg_gq", file: !409, line: 288, flags: DIFlagFwdDecl)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "bi_issue", scope: !3410, file: !409, line: 289, baseType: !3439, size: 64, offset: 640)
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_issue", file: !409, line: 228, size: 64, elements: !3440)
!3440 = !{!3441}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3439, file: !409, line: 229, baseType: !310, size: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iocost_cost", scope: !3410, file: !409, line: 291, baseType: !310, size: 64, offset: 704)
!3443 = !DIDerivedType(tag: DW_TAG_member, scope: !3410, file: !409, line: 299, baseType: !3444, offset: 768)
!3444 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3410, file: !409, line: 299, elements: !1217)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "bi_vcnt", scope: !3410, file: !409, line: 305, baseType: !262, size: 16, offset: 768)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "bi_max_vecs", scope: !3410, file: !409, line: 311, baseType: !262, size: 16, offset: 784)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_cnt", scope: !3410, file: !409, line: 313, baseType: !388, size: 32, offset: 800)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "bi_io_vec", scope: !3410, file: !409, line: 315, baseType: !3449, size: 64, offset: 832)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pool", scope: !3410, file: !409, line: 317, baseType: !3451, size: 64, offset: 896)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_set", file: !3406, line: 678, size: 1984, elements: !3453)
!3453 = !{!3454, !3458, !3459, !3462, !3483, !3484, !3485, !3486, !3487, !3488, !3489}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "bio_slab", scope: !3452, file: !3406, line: 679, baseType: !3455, size: 64)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3457, line: 11, flags: DIFlagFwdDecl)
!3457 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "front_pad", scope: !3452, file: !3406, line: 680, baseType: !35, size: 32, offset: 64)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !3452, file: !3406, line: 685, baseType: !3460, size: 64, offset: 128)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_alloc_cache", file: !3406, line: 685, flags: DIFlagFwdDecl)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "bio_pool", scope: !3452, file: !3406, line: 687, baseType: !3463, size: 576, offset: 192)
!3463 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_t", file: !3464, line: 26, baseType: !3465)
!3464 = !DIFile(filename: "./include/linux/mempool.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ef8a210e9c9e696cc7d6e9be9316611")
!3465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempool_s", file: !3464, line: 16, size: 576, elements: !3466)
!3466 = !{!3467, !3468, !3469, !3470, !3471, !3472, !3477, !3482}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3465, file: !3464, line: 17, baseType: !368, size: 32)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "min_nr", scope: !3465, file: !3464, line: 18, baseType: !151, size: 32, offset: 32)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "curr_nr", scope: !3465, file: !3464, line: 19, baseType: !151, size: 32, offset: 64)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !3465, file: !3464, line: 20, baseType: !2401, size: 64, offset: 128)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "pool_data", scope: !3465, file: !3464, line: 22, baseType: !329, size: 64, offset: 192)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3465, file: !3464, line: 23, baseType: !3473, size: 64, offset: 256)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_alloc_t", file: !3464, line: 13, baseType: !3475)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{!329, !404, !329}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3465, file: !3464, line: 24, baseType: !3478, size: 64, offset: 320)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_free_t", file: !3464, line: 14, baseType: !3480)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{null, !329, !329}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !3465, file: !3464, line: 25, baseType: !579, size: 192, offset: 384)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_pool", scope: !3452, file: !3406, line: 688, baseType: !3463, size: 576, offset: 768)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "back_pad", scope: !3452, file: !3406, line: 694, baseType: !35, size: 32, offset: 1344)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_lock", scope: !3452, file: !3406, line: 699, baseType: !368, size: 32, offset: 1376)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_list", scope: !3452, file: !3406, line: 700, baseType: !3405, size: 128, offset: 1408)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_work", scope: !3452, file: !3406, line: 701, baseType: !447, size: 256, offset: 1536)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_workqueue", scope: !3452, file: !3406, line: 702, baseType: !485, size: 64, offset: 1792)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !3452, file: !3406, line: 707, baseType: !471, size: 128, offset: 1856)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "bi_inline_vecs", scope: !3410, file: !409, line: 324, baseType: !3491, offset: 960)
!3491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2283, elements: !1469)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !3405, file: !3406, line: 552, baseType: !3409, size: 64, offset: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2743, file: !2387, line: 1194, baseType: !3494, size: 64, offset: 17280)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !184, line: 976, size: 320, elements: !3496)
!3496 = !{!3497, !3498, !3499, !3500, !3501, !3502, !3503}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "mq_list", scope: !3495, file: !184, line: 977, baseType: !419, size: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "cached_rq", scope: !3495, file: !184, line: 980, baseType: !419, size: 64, offset: 64)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ios", scope: !3495, file: !184, line: 981, baseType: !262, size: 16, offset: 128)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "rq_count", scope: !3495, file: !184, line: 983, baseType: !262, size: 16, offset: 144)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "multiple_queues", scope: !3495, file: !184, line: 985, baseType: !527, size: 8, offset: 160)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "has_elevator", scope: !3495, file: !184, line: 986, baseType: !527, size: 8, offset: 168)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !3495, file: !184, line: 988, baseType: !435, size: 128, offset: 192)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2743, file: !2387, line: 1197, baseType: !3505, size: 64, offset: 17344)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !2387, line: 61, flags: DIFlagFwdDecl)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2743, file: !2387, line: 1199, baseType: !3508, size: 64, offset: 17408)
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3510, line: 99, size: 128, elements: !3511)
!3510 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3511 = !{!3512, !3513, !3514}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3509, file: !3510, line: 100, baseType: !450, size: 64)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3509, file: !3510, line: 101, baseType: !388, size: 32, offset: 64)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3509, file: !3510, line: 103, baseType: !262, size: 16, offset: 96)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2743, file: !2387, line: 1202, baseType: !3516, size: 64, offset: 17472)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !2387, line: 48, flags: DIFlagFwdDecl)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2743, file: !2387, line: 1205, baseType: !441, size: 64, offset: 17536)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2743, file: !2387, line: 1206, baseType: !3520, size: 64, offset: 17600)
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1658, line: 14, baseType: !3522)
!3522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1658, line: 12, size: 384, elements: !3523)
!3523 = !{!3524}
!3524 = !DIDerivedType(tag: DW_TAG_member, scope: !3522, file: !1658, line: 13, baseType: !3525, size: 384)
!3525 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3522, file: !1658, line: 13, size: 384, elements: !3526)
!3526 = !{!3527, !3528, !3529, !3530}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3525, file: !1658, line: 13, baseType: !151, size: 32)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3525, file: !1658, line: 13, baseType: !151, size: 32, offset: 32)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3525, file: !1658, line: 13, baseType: !151, size: 32, offset: 64)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3525, file: !1658, line: 13, baseType: !3531, size: 256, offset: 128)
!3531 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3532, line: 37, size: 256, elements: !3533)
!3532 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3533 = !{!3534, !3539, !3552, !3558, !3567, !3594, !3599}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3531, file: !3532, line: 42, baseType: !3535, size: 64)
!3535 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3531, file: !3532, line: 39, size: 64, elements: !3536)
!3536 = !{!3537, !3538}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3535, file: !3532, line: 40, baseType: !3106, size: 32)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3535, file: !3532, line: 41, baseType: !734, size: 32, offset: 32)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3531, file: !3532, line: 50, baseType: !3540, size: 192)
!3540 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3531, file: !3532, line: 45, size: 192, elements: !3541)
!3541 = !{!3542, !3544, !3545, !3551}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3540, file: !3532, line: 46, baseType: !3543, size: 32)
!3543 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !677, line: 95, baseType: !151)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3540, file: !3532, line: 47, baseType: !151, size: 32, offset: 32)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3540, file: !3532, line: 48, baseType: !3546, size: 64, offset: 64)
!3546 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3532, line: 11, baseType: !3547)
!3547 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3532, line: 8, size: 64, elements: !3548)
!3548 = !{!3549, !3550}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3547, file: !3532, line: 9, baseType: !151, size: 32)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3547, file: !3532, line: 10, baseType: !329, size: 64)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3540, file: !3532, line: 49, baseType: !151, size: 32, offset: 128)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3531, file: !3532, line: 57, baseType: !3553, size: 128)
!3553 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3531, file: !3532, line: 53, size: 128, elements: !3554)
!3554 = !{!3555, !3556, !3557}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3553, file: !3532, line: 54, baseType: !3106, size: 32)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3553, file: !3532, line: 55, baseType: !734, size: 32, offset: 32)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3553, file: !3532, line: 56, baseType: !3546, size: 64, offset: 64)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3531, file: !3532, line: 66, baseType: !3559, size: 256)
!3559 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3531, file: !3532, line: 60, size: 256, elements: !3560)
!3560 = !{!3561, !3562, !3563, !3564, !3566}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3559, file: !3532, line: 61, baseType: !3106, size: 32)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3559, file: !3532, line: 62, baseType: !734, size: 32, offset: 32)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3559, file: !3532, line: 63, baseType: !151, size: 32, offset: 64)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3559, file: !3532, line: 64, baseType: !3565, size: 64, offset: 128)
!3565 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !677, line: 94, baseType: !678)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3559, file: !3532, line: 65, baseType: !3565, size: 64, offset: 192)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3531, file: !3532, line: 105, baseType: !3568, size: 256)
!3568 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3531, file: !3532, line: 69, size: 256, elements: !3569)
!3569 = !{!3570, !3571}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3568, file: !3532, line: 70, baseType: !329, size: 64)
!3571 = !DIDerivedType(tag: DW_TAG_member, scope: !3568, file: !3532, line: 79, baseType: !3572, size: 192, offset: 64)
!3572 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3568, file: !3532, line: 79, size: 192, elements: !3573)
!3573 = !{!3574, !3575, !3576, !3583, !3588}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3572, file: !3532, line: 81, baseType: !151, size: 32)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3572, file: !3532, line: 86, baseType: !1096, size: 16)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3572, file: !3532, line: 92, baseType: !3577, size: 192)
!3577 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3572, file: !3532, line: 88, size: 192, elements: !3578)
!3578 = !{!3579, !3581, !3582}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3577, file: !3532, line: 89, baseType: !3580, size: 64)
!3580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !254)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3577, file: !3532, line: 90, baseType: !329, size: 64, offset: 64)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3577, file: !3532, line: 91, baseType: !329, size: 64, offset: 128)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3572, file: !3532, line: 97, baseType: !3584, size: 96)
!3584 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3572, file: !3532, line: 94, size: 96, elements: !3585)
!3585 = !{!3586, !3587}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3584, file: !3532, line: 95, baseType: !3580, size: 64)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3584, file: !3532, line: 96, baseType: !244, size: 32, offset: 64)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3572, file: !3532, line: 103, baseType: !3589, size: 128)
!3589 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3572, file: !3532, line: 99, size: 128, elements: !3590)
!3590 = !{!3591, !3592, !3593}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3589, file: !3532, line: 100, baseType: !441, size: 64)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3589, file: !3532, line: 101, baseType: !244, size: 32, offset: 64)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3589, file: !3532, line: 102, baseType: !244, size: 32, offset: 96)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3531, file: !3532, line: 111, baseType: !3595, size: 128)
!3595 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3531, file: !3532, line: 108, size: 128, elements: !3596)
!3596 = !{!3597, !3598}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3595, file: !3532, line: 109, baseType: !679, size: 64)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3595, file: !3532, line: 110, baseType: !151, size: 32, offset: 64)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3531, file: !3532, line: 118, baseType: !3600, size: 128)
!3600 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3531, file: !3532, line: 114, size: 128, elements: !3601)
!3601 = !{!3602, !3603, !3604}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3600, file: !3532, line: 115, baseType: !329, size: 64)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3600, file: !3532, line: 116, baseType: !151, size: 32, offset: 64)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3600, file: !3532, line: 117, baseType: !35, size: 32, offset: 96)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2743, file: !2387, line: 1208, baseType: !3290, size: 448, offset: 17664)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2743, file: !2387, line: 1215, baseType: !310, size: 64, offset: 18112)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2743, file: !2387, line: 1217, baseType: !310, size: 64, offset: 18176)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2743, file: !2387, line: 1219, baseType: !310, size: 64, offset: 18240)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2743, file: !2387, line: 1223, baseType: !3610, size: 64, offset: 18304)
!3610 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3611, line: 99, baseType: !3612)
!3611 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3612 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3611, line: 99, size: 64, elements: !3613)
!3613 = !{!3614}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3612, file: !3611, line: 99, baseType: !495, size: 64)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2743, file: !2387, line: 1225, baseType: !763, size: 32, offset: 18368)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2743, file: !2387, line: 1226, baseType: !151, size: 32, offset: 18400)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2743, file: !2387, line: 1227, baseType: !151, size: 32, offset: 18432)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2743, file: !2387, line: 1231, baseType: !3619, size: 64, offset: 18496)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !2387, line: 1231, flags: DIFlagFwdDecl)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2743, file: !2387, line: 1233, baseType: !435, size: 128, offset: 18560)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2743, file: !2387, line: 1240, baseType: !3623, size: 64, offset: 18688)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !2387, line: 62, flags: DIFlagFwdDecl)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2743, file: !2387, line: 1242, baseType: !3626, size: 64, offset: 18752)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !2387, line: 1242, flags: DIFlagFwdDecl)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2743, file: !2387, line: 1244, baseType: !435, size: 128, offset: 18816)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2743, file: !2387, line: 1245, baseType: !3630, size: 64, offset: 18944)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !2387, line: 51, flags: DIFlagFwdDecl)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2743, file: !2387, line: 1246, baseType: !973, size: 256, offset: 19008)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2743, file: !2387, line: 1247, baseType: !35, size: 32, offset: 19264)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2743, file: !2387, line: 1250, baseType: !3635, size: 64, offset: 19328)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !2387, line: 57, flags: DIFlagFwdDecl)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2743, file: !2387, line: 1251, baseType: !973, size: 256, offset: 19392)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2743, file: !2387, line: 1252, baseType: !435, size: 128, offset: 19648)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2743, file: !2387, line: 1259, baseType: !2118, size: 64, offset: 19776)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2743, file: !2387, line: 1260, baseType: !1096, size: 16, offset: 19840)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2743, file: !2387, line: 1261, baseType: !1096, size: 16, offset: 19856)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2743, file: !2387, line: 1314, baseType: !3643, size: 64, offset: 19904)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3645, line: 62, size: 256, align: 256, elements: !3646)
!3645 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3646 = !{!3647, !3648, !3649, !3650, !3651, !3652, !3653}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3644, file: !3645, line: 75, baseType: !244, size: 32)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3644, file: !3645, line: 90, baseType: !244, size: 32, offset: 32)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3644, file: !3645, line: 112, baseType: !311, size: 64, offset: 64)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3644, file: !3645, line: 132, baseType: !244, size: 32, offset: 128)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3644, file: !3645, line: 140, baseType: !244, size: 32, offset: 160)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3644, file: !3645, line: 149, baseType: !244, size: 32, offset: 192)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3644, file: !3645, line: 154, baseType: !3654, offset: 224)
!3654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !1469)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2743, file: !2387, line: 1315, baseType: !320, size: 32, offset: 19968)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2743, file: !2387, line: 1316, baseType: !320, size: 32, offset: 20000)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2743, file: !2387, line: 1321, baseType: !441, size: 64, offset: 20032)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2743, file: !2387, line: 1325, baseType: !151, size: 32, offset: 20096)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2743, file: !2387, line: 1326, baseType: !151, size: 32, offset: 20128)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2743, file: !2387, line: 1327, baseType: !151, size: 32, offset: 20160)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2743, file: !2387, line: 1328, baseType: !151, size: 32, offset: 20192)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2743, file: !2387, line: 1329, baseType: !1178, size: 128, align: 64, offset: 20224)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2743, file: !2387, line: 1332, baseType: !3664, size: 128, offset: 20352)
!3664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3665, line: 51, size: 128, elements: !3666)
!3665 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3666 = !{!3667, !3672, !3673}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3664, file: !3665, line: 60, baseType: !3668, size: 64)
!3668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3669, line: 7, size: 64, elements: !3670)
!3669 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3670 = !{!3671}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3668, file: !3669, line: 12, baseType: !492, size: 64)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3664, file: !3665, line: 63, baseType: !527, size: 8, offset: 64)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3664, file: !3665, line: 70, baseType: !527, size: 8, offset: 72)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2743, file: !2387, line: 1335, baseType: !2385, size: 64, offset: 20480)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2743, file: !2387, line: 1337, baseType: !3676, size: 128, offset: 20544)
!3676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3665, line: 39, size: 128, elements: !3677)
!3677 = !{!3678, !3679, !3680}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3676, file: !3665, line: 40, baseType: !1861, size: 64)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3676, file: !3665, line: 42, baseType: !244, size: 32, offset: 64)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3676, file: !3665, line: 43, baseType: !244, size: 32, offset: 96)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2743, file: !2387, line: 1340, baseType: !3682, size: 64, offset: 20672)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !2387, line: 69, flags: DIFlagFwdDecl)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2743, file: !2387, line: 1351, baseType: !151, size: 32, offset: 20736)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2743, file: !2387, line: 1352, baseType: !151, size: 32, offset: 20768)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2743, file: !2387, line: 1354, baseType: !441, size: 64, offset: 20800)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2743, file: !2387, line: 1364, baseType: !310, size: 64, offset: 20864)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2743, file: !2387, line: 1365, baseType: !310, size: 64, offset: 20928)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2743, file: !2387, line: 1412, baseType: !441, size: 64, offset: 20992)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2743, file: !2387, line: 1453, baseType: !351, size: 64, offset: 21056)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2743, file: !2387, line: 1457, baseType: !3692, size: 64, offset: 21120)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !96, line: 61, size: 576, elements: !3694)
!3694 = !{!3695, !3696, !3715, !3718, !3719, !3752, !3762}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3693, file: !96, line: 62, baseType: !95, size: 32)
!3696 = !DIDerivedType(tag: DW_TAG_member, scope: !3693, file: !96, line: 64, baseType: !3697, size: 192, offset: 64)
!3697 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3693, file: !96, line: 64, size: 192, elements: !3698)
!3698 = !{!3699, !3710}
!3699 = !DIDerivedType(tag: DW_TAG_member, scope: !3697, file: !96, line: 65, baseType: !3700, size: 192)
!3700 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3697, file: !96, line: 65, size: 192, elements: !3701)
!3701 = !{!3702, !3709}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3700, file: !96, line: 66, baseType: !3703, size: 128)
!3703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3704, line: 50, size: 128, elements: !3705)
!3704 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3705 = !{!3706, !3707, !3708}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3703, file: !3704, line: 52, baseType: !441, size: 64)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3703, file: !3704, line: 54, baseType: !35, size: 32, offset: 64)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3703, file: !3704, line: 55, baseType: !35, size: 32, offset: 96)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3700, file: !96, line: 67, baseType: !441, size: 64, offset: 128)
!3710 = !DIDerivedType(tag: DW_TAG_member, scope: !3697, file: !96, line: 70, baseType: !3711, size: 192)
!3711 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3697, file: !96, line: 70, size: 192, elements: !3712)
!3712 = !{!3713, !3714}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3711, file: !96, line: 71, baseType: !1178, size: 128, align: 64)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3711, file: !96, line: 72, baseType: !441, size: 64, offset: 128)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3693, file: !96, line: 76, baseType: !3716, size: 64, offset: 256)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !96, line: 76, flags: DIFlagFwdDecl)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3693, file: !96, line: 77, baseType: !441, size: 64, offset: 320)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3693, file: !96, line: 79, baseType: !3720, size: 64, offset: 384)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3704, line: 25, size: 256, elements: !3722)
!3722 = !{!3723, !3729, !3733}
!3723 = !DIDerivedType(tag: DW_TAG_member, scope: !3721, file: !3704, line: 26, baseType: !3724, size: 128)
!3724 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3721, file: !3704, line: 26, size: 128, elements: !3725)
!3725 = !{!3726, !3728}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3724, file: !3704, line: 27, baseType: !3727, size: 128)
!3727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 128, elements: !3164)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3724, file: !3704, line: 28, baseType: !3727, size: 128)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3721, file: !3704, line: 31, baseType: !3730, size: 64, offset: 128)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3732)
!3732 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3704, line: 23, flags: DIFlagFwdDecl)
!3733 = !DIDerivedType(tag: DW_TAG_member, scope: !3721, file: !3704, line: 33, baseType: !3734, size: 64, offset: 192)
!3734 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3721, file: !3704, line: 33, size: 64, elements: !3735)
!3735 = !{!3736, !3742, !3747}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3734, file: !3704, line: 38, baseType: !3737, size: 64)
!3737 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3734, file: !3704, line: 34, size: 64, elements: !3738)
!3738 = !{!3739, !3740, !3741}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3737, file: !3704, line: 35, baseType: !969, size: 32)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3737, file: !3704, line: 36, baseType: !229, size: 8, offset: 32)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3737, file: !3704, line: 37, baseType: !229, size: 8, offset: 40)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3734, file: !3704, line: 42, baseType: !3743, size: 16)
!3743 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3734, file: !3704, line: 39, size: 16, elements: !3744)
!3744 = !{!3745, !3746}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3743, file: !3704, line: 40, baseType: !229, size: 8)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3743, file: !3704, line: 41, baseType: !229, size: 8, offset: 8)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3734, file: !3704, line: 46, baseType: !3748, size: 16)
!3748 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3734, file: !3704, line: 43, size: 16, elements: !3749)
!3749 = !{!3750, !3751}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3748, file: !3704, line: 44, baseType: !229, size: 8)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3748, file: !3704, line: 45, baseType: !229, size: 8, offset: 8)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3693, file: !96, line: 81, baseType: !3753, size: 64, offset: 448)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !96, line: 85, size: 384, elements: !3755)
!3755 = !{!3756, !3757, !3758, !3759, !3760, !3761}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3754, file: !96, line: 86, baseType: !3716, size: 64)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3754, file: !96, line: 87, baseType: !441, size: 64, offset: 64)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3754, file: !96, line: 88, baseType: !441, size: 64, offset: 128)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3754, file: !96, line: 89, baseType: !441, size: 64, offset: 192)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3754, file: !96, line: 90, baseType: !527, size: 8, offset: 256)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3754, file: !96, line: 92, baseType: !3753, size: 64, offset: 320)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3693, file: !96, line: 82, baseType: !35, size: 32, offset: 512)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2743, file: !2387, line: 1463, baseType: !3764, offset: 21184)
!3764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !2387, line: 739, elements: !1217)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2743, file: !2387, line: 1470, baseType: !1178, size: 128, align: 64, offset: 21184)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2743, file: !2387, line: 1471, baseType: !1449, size: 32, offset: 21312)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2743, file: !2387, line: 1472, baseType: !151, size: 32, offset: 21344)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2743, file: !2387, line: 1474, baseType: !2742, size: 64, offset: 21376)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2743, file: !2387, line: 1475, baseType: !467, size: 320, offset: 21440)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2743, file: !2387, line: 1478, baseType: !3771, size: 64, offset: 21760)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3773, line: 49, size: 512, elements: !3774)
!3773 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3774 = !{!3775, !3776, !3777, !3778, !3779, !3781, !3782, !3783, !3785}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3772, file: !3773, line: 50, baseType: !3771, size: 64)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3772, file: !3773, line: 51, baseType: !329, size: 64, offset: 64)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3772, file: !3773, line: 52, baseType: !441, size: 64, offset: 128)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3772, file: !3773, line: 53, baseType: !441, size: 64, offset: 192)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3772, file: !3773, line: 54, baseType: !3780, size: 64, offset: 256)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3772, file: !3773, line: 56, baseType: !35, size: 32, offset: 320)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3772, file: !3773, line: 58, baseType: !35, size: 32, offset: 352)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3772, file: !3773, line: 59, baseType: !3784, size: 64, offset: 384)
!3784 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !309, line: 159, baseType: !310)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3772, file: !3773, line: 60, baseType: !321, size: 64, offset: 448)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2743, file: !2387, line: 1482, baseType: !1449, size: 32, offset: 21824)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2743, file: !2387, line: 1489, baseType: !329, size: 64, offset: 21888)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2743, file: !2387, line: 1504, baseType: !329, size: 64, offset: 21952)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2743, file: !2387, line: 1505, baseType: !311, size: 64, offset: 22016)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2743, file: !2387, line: 1506, baseType: !310, size: 64, offset: 22080)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2743, file: !2387, line: 1507, baseType: !311, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2743, file: !2387, line: 1508, baseType: !311, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2743, file: !2387, line: 1509, baseType: !311, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2743, file: !2387, line: 1510, baseType: !1178, size: 128, align: 64, offset: 22208)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2743, file: !2387, line: 1511, baseType: !151, size: 32, offset: 22336)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2743, file: !2387, line: 1515, baseType: !3797, size: 64, offset: 22400)
!3797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1407, line: 56, size: 64, elements: !3798)
!3798 = !{!3799}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3797, file: !1407, line: 57, baseType: !1410, size: 64)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2743, file: !2387, line: 1518, baseType: !3797, size: 64, offset: 22464)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2743, file: !2387, line: 1528, baseType: !1178, size: 128, align: 64, offset: 22528)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2743, file: !2387, line: 1552, baseType: !3803, size: 35328, offset: 23040)
!3803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3804, line: 430, size: 35328, elements: !3805)
!3804 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3805 = !{!3806, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3835, !3836, !3837, !3838, !3839, !3840, !3843, !3844, !3845, !3846}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3803, file: !3804, line: 432, baseType: !3807, size: 192)
!3807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3808, size: 192, elements: !15)
!3808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3809, line: 16, size: 64, elements: !3810)
!3809 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3810 = !{!3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3808, file: !3809, line: 17, baseType: !401, size: 16)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3808, file: !3809, line: 18, baseType: !401, size: 16, offset: 16)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3808, file: !3809, line: 19, baseType: !401, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3808, file: !3809, line: 19, baseType: !401, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3808, file: !3809, line: 19, baseType: !401, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3808, file: !3809, line: 19, baseType: !401, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3808, file: !3809, line: 19, baseType: !401, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3808, file: !3809, line: 20, baseType: !401, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3808, file: !3809, line: 20, baseType: !401, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3808, file: !3809, line: 20, baseType: !401, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3808, file: !3809, line: 20, baseType: !401, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3808, file: !3809, line: 20, baseType: !401, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3808, file: !3809, line: 20, baseType: !401, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3803, file: !3804, line: 436, baseType: !441, size: 64, offset: 192)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3803, file: !3804, line: 440, baseType: !262, size: 16, offset: 256)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3803, file: !3804, line: 441, baseType: !262, size: 16, offset: 272)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3803, file: !3804, line: 442, baseType: !262, size: 16, offset: 288)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3803, file: !3804, line: 443, baseType: !262, size: 16, offset: 304)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3803, file: !3804, line: 447, baseType: !441, size: 64, offset: 320)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3803, file: !3804, line: 448, baseType: !441, size: 64, offset: 384)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3803, file: !3804, line: 459, baseType: !3832, size: 256, offset: 448)
!3832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3833, size: 256, elements: !283)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3804, line: 428, flags: DIFlagFwdDecl)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3803, file: !3804, line: 461, baseType: !441, size: 64, offset: 704)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3803, file: !3804, line: 463, baseType: !441, size: 64, offset: 768)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3803, file: !3804, line: 465, baseType: !441, size: 64, offset: 832)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3803, file: !3804, line: 466, baseType: !441, size: 64, offset: 896)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3803, file: !3804, line: 467, baseType: !441, size: 64, offset: 960)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3803, file: !3804, line: 473, baseType: !3841, size: 64, offset: 1024)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3804, line: 10, flags: DIFlagFwdDecl)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3803, file: !3804, line: 480, baseType: !441, size: 64, offset: 1088)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3803, file: !3804, line: 482, baseType: !35, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3803, file: !3804, line: 491, baseType: !320, size: 32, offset: 1184)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3803, file: !3804, line: 501, baseType: !3847, size: 33792, offset: 1536)
!3847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3848, line: 448, size: 33792, elements: !3849)
!3848 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3849 = !{!3850, !3851, !3852, !4014, !4015, !4021, !4022}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3847, file: !3848, line: 461, baseType: !35, size: 32)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3847, file: !3848, line: 468, baseType: !441, size: 64, offset: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3847, file: !3848, line: 476, baseType: !3853, size: 64, offset: 128)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3848, line: 356, size: 33280, align: 512, elements: !3855)
!3855 = !{!3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3854, file: !3848, line: 358, baseType: !35, size: 32)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3854, file: !3848, line: 361, baseType: !35, size: 32, offset: 32)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3854, file: !3848, line: 364, baseType: !310, size: 64, offset: 64)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3854, file: !3848, line: 367, baseType: !310, size: 64, offset: 128)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3854, file: !3848, line: 370, baseType: !310, size: 64, offset: 192)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3854, file: !3848, line: 373, baseType: !35, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3854, file: !3848, line: 376, baseType: !35, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3854, file: !3848, line: 391, baseType: !35, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3854, file: !3848, line: 394, baseType: !35, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3854, file: !3848, line: 397, baseType: !3866, size: 32768, offset: 512)
!3866 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3848, line: 348, size: 32768, elements: !3867)
!3867 = !{!3868, !3883, !3920, !3997, !4010}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3866, file: !3848, line: 349, baseType: !3869, size: 896)
!3869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3848, line: 12, size: 896, elements: !3870)
!3870 = !{!3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3882}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3869, file: !3848, line: 13, baseType: !320, size: 32)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3869, file: !3848, line: 14, baseType: !320, size: 32, offset: 32)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3869, file: !3848, line: 15, baseType: !320, size: 32, offset: 64)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3869, file: !3848, line: 16, baseType: !320, size: 32, offset: 96)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3869, file: !3848, line: 17, baseType: !320, size: 32, offset: 128)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3869, file: !3848, line: 18, baseType: !320, size: 32, offset: 160)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3869, file: !3848, line: 19, baseType: !320, size: 32, offset: 192)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3869, file: !3848, line: 22, baseType: !3879, size: 640, offset: 224)
!3879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 640, elements: !3880)
!3880 = !{!3881}
!3881 = !DISubrange(count: 20)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3869, file: !3848, line: 25, baseType: !320, size: 32, offset: 864)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3866, file: !3848, line: 350, baseType: !3884, size: 4096, align: 128)
!3884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3848, line: 34, size: 4096, align: 128, elements: !3885)
!3885 = !{!3886, !3887, !3888, !3889, !3890, !3905, !3906, !3907, !3909, !3911, !3915}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3884, file: !3848, line: 35, baseType: !401, size: 16)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3884, file: !3848, line: 36, baseType: !401, size: 16, offset: 16)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3884, file: !3848, line: 37, baseType: !401, size: 16, offset: 32)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3884, file: !3848, line: 38, baseType: !401, size: 16, offset: 48)
!3890 = !DIDerivedType(tag: DW_TAG_member, scope: !3884, file: !3848, line: 39, baseType: !3891, size: 128, offset: 64)
!3891 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3884, file: !3848, line: 39, size: 128, elements: !3892)
!3892 = !{!3893, !3898}
!3893 = !DIDerivedType(tag: DW_TAG_member, scope: !3891, file: !3848, line: 40, baseType: !3894, size: 128)
!3894 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3891, file: !3848, line: 40, size: 128, elements: !3895)
!3895 = !{!3896, !3897}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3894, file: !3848, line: 41, baseType: !310, size: 64)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3894, file: !3848, line: 42, baseType: !310, size: 64, offset: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, scope: !3891, file: !3848, line: 44, baseType: !3899, size: 128)
!3899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3891, file: !3848, line: 44, size: 128, elements: !3900)
!3900 = !{!3901, !3902, !3903, !3904}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3899, file: !3848, line: 45, baseType: !320, size: 32)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3899, file: !3848, line: 46, baseType: !320, size: 32, offset: 32)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3899, file: !3848, line: 47, baseType: !320, size: 32, offset: 64)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3899, file: !3848, line: 48, baseType: !320, size: 32, offset: 96)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3884, file: !3848, line: 51, baseType: !320, size: 32, offset: 192)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3884, file: !3848, line: 52, baseType: !320, size: 32, offset: 224)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3884, file: !3848, line: 55, baseType: !3908, size: 1024, offset: 256)
!3908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 1024, elements: !359)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3884, file: !3848, line: 58, baseType: !3910, size: 2048, offset: 1280)
!3910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 2048, elements: !648)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3884, file: !3848, line: 60, baseType: !3912, size: 384, offset: 3328)
!3912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 384, elements: !3913)
!3913 = !{!3914}
!3914 = !DISubrange(count: 12)
!3915 = !DIDerivedType(tag: DW_TAG_member, scope: !3884, file: !3848, line: 62, baseType: !3916, size: 384, offset: 3712)
!3916 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3884, file: !3848, line: 62, size: 384, elements: !3917)
!3917 = !{!3918, !3919}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3916, file: !3848, line: 63, baseType: !3912, size: 384)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3916, file: !3848, line: 64, baseType: !3912, size: 384)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3866, file: !3848, line: 351, baseType: !3921, size: 1088)
!3921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3848, line: 79, size: 1088, elements: !3922)
!3922 = !{!3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3996}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3921, file: !3848, line: 80, baseType: !320, size: 32)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3921, file: !3848, line: 81, baseType: !320, size: 32, offset: 32)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3921, file: !3848, line: 82, baseType: !320, size: 32, offset: 64)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3921, file: !3848, line: 83, baseType: !320, size: 32, offset: 96)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3921, file: !3848, line: 84, baseType: !320, size: 32, offset: 128)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3921, file: !3848, line: 85, baseType: !320, size: 32, offset: 160)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3921, file: !3848, line: 86, baseType: !320, size: 32, offset: 192)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3921, file: !3848, line: 88, baseType: !3879, size: 640, offset: 224)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3921, file: !3848, line: 89, baseType: !229, size: 8, offset: 864)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3921, file: !3848, line: 90, baseType: !229, size: 8, offset: 872)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3921, file: !3848, line: 91, baseType: !229, size: 8, offset: 880)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3921, file: !3848, line: 92, baseType: !229, size: 8, offset: 888)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3921, file: !3848, line: 93, baseType: !229, size: 8, offset: 896)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3921, file: !3848, line: 94, baseType: !229, size: 8, offset: 904)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3921, file: !3848, line: 95, baseType: !3938, size: 64, offset: 960)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3940, line: 11, size: 128, elements: !3941)
!3940 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3941 = !{!3942, !3943}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3939, file: !3940, line: 12, baseType: !679, size: 64)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3939, file: !3940, line: 13, baseType: !3944, size: 64, offset: 64)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3946, line: 103, size: 1344, elements: !3947)
!3946 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3947 = !{!3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3976, !3977, !3978}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3945, file: !3946, line: 109, baseType: !441, size: 64)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3945, file: !3946, line: 110, baseType: !441, size: 64, offset: 64)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3945, file: !3946, line: 111, baseType: !441, size: 64, offset: 128)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3945, file: !3946, line: 112, baseType: !441, size: 64, offset: 192)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3945, file: !3946, line: 113, baseType: !441, size: 64, offset: 256)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3945, file: !3946, line: 114, baseType: !441, size: 64, offset: 320)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3945, file: !3946, line: 117, baseType: !441, size: 64, offset: 384)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3945, file: !3946, line: 118, baseType: !441, size: 64, offset: 448)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3945, file: !3946, line: 119, baseType: !441, size: 64, offset: 512)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3945, file: !3946, line: 120, baseType: !441, size: 64, offset: 576)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3945, file: !3946, line: 121, baseType: !441, size: 64, offset: 640)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3945, file: !3946, line: 122, baseType: !441, size: 64, offset: 704)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3945, file: !3946, line: 123, baseType: !441, size: 64, offset: 768)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3945, file: !3946, line: 124, baseType: !441, size: 64, offset: 832)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3945, file: !3946, line: 125, baseType: !441, size: 64, offset: 896)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3945, file: !3946, line: 139, baseType: !441, size: 64, offset: 960)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3945, file: !3946, line: 142, baseType: !441, size: 64, offset: 1024)
!3965 = !DIDerivedType(tag: DW_TAG_member, scope: !3945, file: !3946, line: 144, baseType: !3966, size: 64, offset: 1088)
!3966 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3945, file: !3946, line: 144, size: 64, elements: !3967)
!3967 = !{!3968, !3969, !3970}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3966, file: !3946, line: 146, baseType: !401, size: 16)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3966, file: !3946, line: 148, baseType: !310, size: 64)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3966, file: !3946, line: 150, baseType: !3971, size: 64)
!3971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3946, line: 59, size: 64, elements: !3972)
!3972 = !{!3973, !3974, !3975}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3971, file: !3946, line: 61, baseType: !310, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3971, file: !3946, line: 63, baseType: !310, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3971, file: !3946, line: 65, baseType: !310, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3945, file: !3946, line: 153, baseType: !441, size: 64, offset: 1152)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3945, file: !3946, line: 154, baseType: !441, size: 64, offset: 1216)
!3978 = !DIDerivedType(tag: DW_TAG_member, scope: !3945, file: !3946, line: 156, baseType: !3979, size: 64, offset: 1280)
!3979 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3945, file: !3946, line: 156, size: 64, elements: !3980)
!3980 = !{!3981, !3982, !3983}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3979, file: !3946, line: 158, baseType: !401, size: 16)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3979, file: !3946, line: 160, baseType: !310, size: 64)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3979, file: !3946, line: 162, baseType: !3984, size: 64)
!3984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3946, line: 69, size: 64, elements: !3985)
!3985 = !{!3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3984, file: !3946, line: 71, baseType: !310, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3984, file: !3946, line: 73, baseType: !310, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3984, file: !3946, line: 75, baseType: !310, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3984, file: !3946, line: 77, baseType: !310, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3984, file: !3946, line: 80, baseType: !310, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3984, file: !3946, line: 83, baseType: !310, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3984, file: !3946, line: 86, baseType: !310, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3984, file: !3946, line: 88, baseType: !310, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3984, file: !3946, line: 93, baseType: !310, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3984, file: !3946, line: 100, baseType: !310, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3921, file: !3848, line: 96, baseType: !320, size: 32, offset: 1024)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3866, file: !3848, line: 352, baseType: !3998, size: 4608, align: 512)
!3998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3848, line: 333, size: 4608, align: 512, elements: !3999)
!3999 = !{!4000, !4001, !4008}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3998, file: !3848, line: 334, baseType: !3884, size: 4096, align: 128)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3998, file: !3848, line: 335, baseType: !4002, size: 512, offset: 4096)
!4002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3848, line: 312, size: 512, elements: !4003)
!4003 = !{!4004, !4005, !4006}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4002, file: !3848, line: 313, baseType: !310, size: 64)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4002, file: !3848, line: 314, baseType: !310, size: 64, offset: 64)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4002, file: !3848, line: 315, baseType: !4007, size: 384, offset: 128)
!4007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 384, elements: !27)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3998, file: !3848, line: 336, baseType: !4009, offset: 4608)
!4009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, elements: !1469)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3866, file: !3848, line: 353, baseType: !4011, size: 32768)
!4011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 32768, elements: !4012)
!4012 = !{!4013}
!4013 = !DISubrange(count: 4096)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3847, file: !3848, line: 484, baseType: !3853, size: 64, offset: 192)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3847, file: !3848, line: 491, baseType: !4016, size: 128, offset: 256)
!4016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3848, line: 404, size: 128, elements: !4017)
!4017 = !{!4018, !4019, !4020}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4016, file: !3848, line: 424, baseType: !310, size: 64)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4016, file: !3848, line: 432, baseType: !35, size: 32, offset: 64)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4016, file: !3848, line: 440, baseType: !35, size: 32, offset: 96)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3847, file: !3848, line: 498, baseType: !4016, size: 128, offset: 384)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3847, file: !3848, line: 508, baseType: !3854, size: 33280, align: 512, offset: 512)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2725, file: !2726, line: 16, baseType: !579, size: 192, offset: 512)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2725, file: !2726, line: 17, baseType: !388, size: 32, offset: 704)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !867, file: !42, line: 1240, baseType: !329, size: 64, offset: 6912)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !867, file: !42, line: 1243, baseType: !320, size: 32, offset: 6976)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !867, file: !42, line: 1245, baseType: !1533, size: 64, offset: 7040)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !867, file: !42, line: 1246, baseType: !1533, size: 64, offset: 7104)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !867, file: !42, line: 1248, baseType: !244, size: 32, offset: 7168)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !867, file: !42, line: 1249, baseType: !4031, size: 64, offset: 7232)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !42, line: 634, flags: DIFlagFwdDecl)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !867, file: !42, line: 1252, baseType: !358, size: 256, offset: 7296)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !867, file: !42, line: 1253, baseType: !4035, size: 128, offset: 7552)
!4035 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4036, line: 21, baseType: !4037)
!4036 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4037 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4036, line: 19, size: 128, elements: !4038)
!4038 = !{!4039}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4037, file: !4036, line: 20, baseType: !4040, size: 128)
!4040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 128, elements: !3164)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !867, file: !42, line: 1255, baseType: !35, size: 32, offset: 7680)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !867, file: !42, line: 1261, baseType: !973, size: 256, offset: 7744)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !867, file: !42, line: 1267, baseType: !606, size: 64, offset: 8000)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !867, file: !42, line: 1269, baseType: !813, size: 64, offset: 8064)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !867, file: !42, line: 1271, baseType: !4046, size: 448, offset: 8128)
!4046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2504, line: 63, size: 448, elements: !4047)
!4047 = !{!4048, !4053, !4054, !4055, !4056, !4057, !4058}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4046, file: !2504, line: 64, baseType: !4049, size: 64)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!441, !4052, !2502}
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4046, file: !2504, line: 66, baseType: !4049, size: 64, offset: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4046, file: !2504, line: 69, baseType: !679, size: 64, offset: 128)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4046, file: !2504, line: 70, baseType: !151, size: 32, offset: 192)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4046, file: !2504, line: 71, baseType: !35, size: 32, offset: 224)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4046, file: !2504, line: 74, baseType: !435, size: 128, offset: 256)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4046, file: !2504, line: 85, baseType: !4059, size: 64, offset: 384)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !867, file: !42, line: 1274, baseType: !450, size: 64, offset: 8576)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !867, file: !42, line: 1280, baseType: !450, size: 64, offset: 8640)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !867, file: !42, line: 1283, baseType: !151, size: 32, offset: 8704)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !867, file: !42, line: 1286, baseType: !2436, size: 32, offset: 8736)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !867, file: !42, line: 1289, baseType: !485, size: 64, offset: 8768)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !867, file: !42, line: 1290, baseType: !1290, size: 64, offset: 8832)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !867, file: !42, line: 1297, baseType: !1653, size: 64, offset: 8896)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !867, file: !42, line: 1304, baseType: !4068, size: 64, offset: 8960)
!4068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4069, line: 49, size: 64, elements: !4070)
!4069 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4070 = !{!4071}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4068, file: !4069, line: 50, baseType: !4072, size: 64)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4069, line: 41, size: 512, align: 512, elements: !4074)
!4074 = !{!4075, !4076, !4081}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4073, file: !4069, line: 43, baseType: !368, size: 32)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4073, file: !4069, line: 45, baseType: !4077, size: 192, offset: 64)
!4077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4069, line: 29, size: 192, elements: !4078)
!4078 = !{!4079, !4080}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4077, file: !4069, line: 30, baseType: !435, size: 128)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4077, file: !4069, line: 32, baseType: !679, size: 64, offset: 128)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4073, file: !4069, line: 46, baseType: !679, size: 64, offset: 256)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !867, file: !42, line: 1305, baseType: !4068, size: 64, offset: 9024)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !867, file: !42, line: 1306, baseType: !1178, size: 128, align: 64, offset: 9088)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !867, file: !42, line: 1307, baseType: !447, size: 256, offset: 9216)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !867, file: !42, line: 1309, baseType: !973, size: 256, offset: 9472)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !867, file: !42, line: 1314, baseType: !151, size: 32, offset: 9728)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !867, file: !42, line: 1317, baseType: !368, size: 32, align: 512, offset: 10240)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !867, file: !42, line: 1318, baseType: !435, size: 128, offset: 10304)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !867, file: !42, line: 1320, baseType: !368, size: 32, offset: 10432)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !867, file: !42, line: 1321, baseType: !435, size: 128, offset: 10496)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !861, file: !862, line: 73, baseType: !151, size: 32, offset: 128)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !861, file: !862, line: 74, baseType: !4093, size: 64, offset: 192)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1493, line: 42, flags: DIFlagFwdDecl)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !815, file: !759, line: 141, baseType: !4097, size: 64, offset: 704)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = !DISubroutineType(types: !4099)
!4099 = !{!151, !2564, !527}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !815, file: !759, line: 142, baseType: !4101, size: 64, offset: 768)
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64)
!4102 = !DISubroutineType(types: !4103)
!4103 = !{!757, !757, !4104}
!4104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4105, size: 64)
!4105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !723)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !758, file: !759, line: 96, baseType: !866, size: 64, offset: 832)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !758, file: !759, line: 97, baseType: !441, size: 64, offset: 896)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !758, file: !759, line: 98, baseType: !329, size: 64, offset: 960)
!4109 = !DIDerivedType(tag: DW_TAG_member, scope: !758, file: !759, line: 100, baseType: !4110, size: 128, offset: 1024)
!4110 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !758, file: !759, line: 100, size: 128, elements: !4111)
!4111 = !{!4112, !4113}
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4110, file: !759, line: 101, baseType: !435, size: 128)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4110, file: !759, line: 102, baseType: !2339, size: 64)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !758, file: !759, line: 104, baseType: !435, size: 128, offset: 1152)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !758, file: !759, line: 105, baseType: !435, size: 128, offset: 1280)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !758, file: !759, line: 113, baseType: !4117, size: 128, offset: 1408)
!4117 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !758, file: !759, line: 109, size: 128, elements: !4118)
!4118 = !{!4119, !4120, !4121}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4117, file: !759, line: 110, baseType: !471, size: 128)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4117, file: !759, line: 111, baseType: !773, size: 128)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4117, file: !759, line: 112, baseType: !1178, size: 128, align: 64)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !751, file: !42, line: 1968, baseType: !4123, size: 64, offset: 64)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{!606, !757, !722, !4126}
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4128, line: 10, size: 128, elements: !4129)
!4128 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4129 = !{!4130, !4131}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4127, file: !4128, line: 11, baseType: !1008, size: 64)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4127, file: !4128, line: 12, baseType: !329, size: 64, offset: 64)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !751, file: !42, line: 1969, baseType: !4133, size: 64, offset: 128)
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4134, size: 64)
!4134 = !DISubroutineType(types: !4135)
!4135 = !{!151, !4093, !722, !151}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !751, file: !42, line: 1970, baseType: !4137, size: 64, offset: 192)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{!745, !722, !151, !527}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !751, file: !42, line: 1972, baseType: !4141, size: 64, offset: 256)
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4142 = !DISubroutineType(types: !4143)
!4143 = !{!151, !757, !645, !151}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !751, file: !42, line: 1974, baseType: !4145, size: 64, offset: 320)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = !DISubroutineType(types: !4147)
!4147 = !{!151, !4093, !722, !757, !685, !527}
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !751, file: !42, line: 1976, baseType: !4149, size: 64, offset: 384)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = !DISubroutineType(types: !4151)
!4151 = !{!151, !757, !722, !757}
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !751, file: !42, line: 1977, baseType: !4153, size: 64, offset: 448)
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4154 = !DISubroutineType(types: !4155)
!4155 = !{!151, !722, !757}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !751, file: !42, line: 1978, baseType: !4157, size: 64, offset: 512)
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4158 = !DISubroutineType(types: !4159)
!4159 = !{!151, !4093, !722, !757, !606}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !751, file: !42, line: 1980, baseType: !4161, size: 64, offset: 576)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = !DISubroutineType(types: !4163)
!4163 = !{!151, !4093, !722, !757, !685}
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !751, file: !42, line: 1982, baseType: !4153, size: 64, offset: 640)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !751, file: !42, line: 1983, baseType: !4166, size: 64, offset: 704)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DISubroutineType(types: !4168)
!4168 = !{!151, !4093, !722, !757, !685, !871}
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !751, file: !42, line: 1985, baseType: !4170, size: 64, offset: 768)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{!151, !4093, !722, !757, !722, !757, !35}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !751, file: !42, line: 1987, baseType: !4174, size: 64, offset: 832)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = !DISubroutineType(types: !4176)
!4176 = !{!151, !4093, !757, !4177}
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !42, line: 226, size: 640, elements: !4179)
!4179 = !{!4180, !4181, !4182, !4192, !4201, !4202, !4207, !4208, !4209}
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4178, file: !42, line: 227, baseType: !35, size: 32)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4178, file: !42, line: 228, baseType: !685, size: 16, offset: 32)
!4182 = !DIDerivedType(tag: DW_TAG_member, scope: !4178, file: !42, line: 241, baseType: !4183, size: 32, offset: 64)
!4183 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4178, file: !42, line: 241, size: 32, elements: !4184)
!4184 = !{!4185, !4186}
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4183, file: !42, line: 242, baseType: !728, size: 32)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4183, file: !42, line: 243, baseType: !4187, size: 32)
!4187 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4188, line: 16, baseType: !4189)
!4188 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4189 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4188, line: 14, size: 32, elements: !4190)
!4190 = !{!4191}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4189, file: !4188, line: 15, baseType: !733, size: 32)
!4192 = !DIDerivedType(tag: DW_TAG_member, scope: !4178, file: !42, line: 245, baseType: !4193, size: 32, offset: 96)
!4193 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4178, file: !42, line: 245, size: 32, elements: !4194)
!4194 = !{!4195, !4196}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4193, file: !42, line: 246, baseType: !737, size: 32)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4193, file: !42, line: 247, baseType: !4197, size: 32)
!4197 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4188, line: 20, baseType: !4198)
!4198 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4188, line: 18, size: 32, elements: !4199)
!4199 = !{!4200}
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4198, file: !4188, line: 19, baseType: !741, size: 32)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4178, file: !42, line: 249, baseType: !876, size: 64, offset: 128)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4178, file: !42, line: 250, baseType: !4203, size: 128, offset: 192)
!4203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1534, line: 13, size: 128, elements: !4204)
!4204 = !{!4205, !4206}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4203, file: !1534, line: 14, baseType: !1533, size: 64)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4203, file: !1534, line: 15, baseType: !679, size: 64, offset: 64)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4178, file: !42, line: 251, baseType: !4203, size: 128, offset: 320)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4178, file: !42, line: 252, baseType: !4203, size: 128, offset: 448)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4178, file: !42, line: 259, baseType: !1698, size: 64, offset: 576)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !751, file: !42, line: 1988, baseType: !4211, size: 64, offset: 896)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = !DISubroutineType(types: !4213)
!4213 = !{!151, !4093, !2564, !4214, !320, !35}
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4216, line: 22, size: 1280, elements: !4217)
!4216 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4217 = !{!4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238}
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4215, file: !4216, line: 23, baseType: !320, size: 32)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4215, file: !4216, line: 24, baseType: !685, size: 16, offset: 32)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4215, file: !4216, line: 25, baseType: !35, size: 32, offset: 64)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4215, file: !4216, line: 26, baseType: !1541, size: 32, offset: 96)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4215, file: !4216, line: 27, baseType: !310, size: 64, offset: 128)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4215, file: !4216, line: 28, baseType: !310, size: 64, offset: 192)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4215, file: !4216, line: 41, baseType: !310, size: 64, offset: 256)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4215, file: !4216, line: 42, baseType: !871, size: 32, offset: 320)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4215, file: !4216, line: 43, baseType: !871, size: 32, offset: 352)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4215, file: !4216, line: 44, baseType: !728, size: 32, offset: 384)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4215, file: !4216, line: 45, baseType: !737, size: 32, offset: 416)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4215, file: !4216, line: 46, baseType: !876, size: 64, offset: 448)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4215, file: !4216, line: 47, baseType: !4203, size: 128, offset: 512)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4215, file: !4216, line: 48, baseType: !4203, size: 128, offset: 640)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4215, file: !4216, line: 49, baseType: !4203, size: 128, offset: 768)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4215, file: !4216, line: 50, baseType: !4203, size: 128, offset: 896)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4215, file: !4216, line: 51, baseType: !310, size: 64, offset: 1024)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4215, file: !4216, line: 52, baseType: !310, size: 64, offset: 1088)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4215, file: !4216, line: 53, baseType: !320, size: 32, offset: 1152)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4215, file: !4216, line: 54, baseType: !320, size: 32, offset: 1184)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4215, file: !4216, line: 55, baseType: !310, size: 64, offset: 1216)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !751, file: !42, line: 1990, baseType: !4240, size: 64, offset: 960)
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4241, size: 64)
!4241 = !DISubroutineType(types: !4242)
!4242 = !{!675, !757, !645, !690}
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !751, file: !42, line: 1991, baseType: !4244, size: 64, offset: 1024)
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4245 = !DISubroutineType(types: !4246)
!4246 = !{!151, !722, !4247, !310, !310}
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4248 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !42, line: 55, flags: DIFlagFwdDecl)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !751, file: !42, line: 1993, baseType: !4250, size: 64, offset: 1088)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = !DISubroutineType(types: !4252)
!4252 = !{!151, !722, !151}
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !751, file: !42, line: 1994, baseType: !4254, size: 64, offset: 1152)
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = !DISubroutineType(types: !4256)
!4256 = !{!151, !722, !757, !1698, !35, !685}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !751, file: !42, line: 1997, baseType: !4258, size: 64, offset: 1216)
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = !DISubroutineType(types: !4260)
!4260 = !{!151, !4093, !722, !1698, !685}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !751, file: !42, line: 1999, baseType: !4262, size: 64, offset: 1280)
!4262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4263, size: 64)
!4263 = !DISubroutineType(types: !4264)
!4264 = !{!745, !4093, !757, !151}
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !751, file: !42, line: 2001, baseType: !4266, size: 64, offset: 1344)
!4266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4267, size: 64)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{!151, !4093, !757, !745, !151}
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !751, file: !42, line: 2003, baseType: !4270, size: 64, offset: 1408)
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = !DISubroutineType(types: !4272)
!4272 = !{!151, !4093, !757, !4273}
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !42, line: 76, flags: DIFlagFwdDecl)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !751, file: !42, line: 2005, baseType: !4276, size: 64, offset: 1472)
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4277, size: 64)
!4277 = !DISubroutineType(types: !4278)
!4278 = !{!151, !757, !4273}
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !751, file: !42, line: 2006, baseType: !4280, size: 64, offset: 1536)
!4280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4281, size: 64)
!4281 = !DISubroutineType(types: !4282)
!4282 = !{!4283, !722}
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4284, size: 64)
!4284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !42, line: 3192, size: 192, elements: !4285)
!4285 = !{!4286, !4287}
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4284, file: !42, line: 3193, baseType: !364, size: 128)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4284, file: !42, line: 3194, baseType: !320, size: 32, offset: 128)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !723, file: !42, line: 655, baseType: !866, size: 64, offset: 448)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !723, file: !42, line: 656, baseType: !718, size: 64, offset: 512)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !723, file: !42, line: 659, baseType: !329, size: 64, offset: 576)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !723, file: !42, line: 663, baseType: !441, size: 64, offset: 640)
!4292 = !DIDerivedType(tag: DW_TAG_member, scope: !723, file: !42, line: 671, baseType: !4293, size: 32, offset: 704)
!4293 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !723, file: !42, line: 671, size: 32, elements: !4294)
!4294 = !{!4295, !4297}
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4293, file: !42, line: 672, baseType: !4296, size: 32)
!4296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4293, file: !42, line: 673, baseType: !35, size: 32)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !723, file: !42, line: 675, baseType: !871, size: 32, offset: 736)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !723, file: !42, line: 676, baseType: !876, size: 64, offset: 768)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !723, file: !42, line: 677, baseType: !4203, size: 128, offset: 832)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !723, file: !42, line: 678, baseType: !4203, size: 128, offset: 960)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !723, file: !42, line: 679, baseType: !4203, size: 128, offset: 1088)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !723, file: !42, line: 680, baseType: !368, size: 32, offset: 1216)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !723, file: !42, line: 681, baseType: !262, size: 16, offset: 1248)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !723, file: !42, line: 682, baseType: !229, size: 8, offset: 1264)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !723, file: !42, line: 683, baseType: !229, size: 8, offset: 1272)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !723, file: !42, line: 684, baseType: !2637, size: 64, offset: 1280)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !723, file: !42, line: 691, baseType: !441, size: 64, offset: 1344)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !723, file: !42, line: 692, baseType: !1517, size: 320, offset: 1408)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !723, file: !42, line: 694, baseType: !441, size: 64, offset: 1728)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !723, file: !42, line: 695, baseType: !441, size: 64, offset: 1792)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !723, file: !42, line: 697, baseType: !471, size: 128, offset: 1856)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !723, file: !42, line: 698, baseType: !435, size: 128, offset: 1984)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !723, file: !42, line: 707, baseType: !435, size: 128, offset: 2112)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !723, file: !42, line: 708, baseType: !435, size: 128, offset: 2240)
!4316 = !DIDerivedType(tag: DW_TAG_member, scope: !723, file: !42, line: 709, baseType: !4317, size: 128, offset: 2368)
!4317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !723, file: !42, line: 709, size: 128, elements: !4318)
!4318 = !{!4319, !4320}
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4317, file: !42, line: 710, baseType: !1290, size: 64)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4317, file: !42, line: 711, baseType: !1178, size: 128, align: 64)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !723, file: !42, line: 713, baseType: !452, size: 64, offset: 2496)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !723, file: !42, line: 714, baseType: !452, size: 64, offset: 2560)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !723, file: !42, line: 715, baseType: !388, size: 32, offset: 2624)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !723, file: !42, line: 716, baseType: !388, size: 32, offset: 2656)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !723, file: !42, line: 717, baseType: !388, size: 32, offset: 2688)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !723, file: !42, line: 719, baseType: !388, size: 32, offset: 2720)
!4327 = !DIDerivedType(tag: DW_TAG_member, scope: !723, file: !42, line: 721, baseType: !4328, size: 64, offset: 2752)
!4328 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !723, file: !42, line: 721, size: 64, elements: !4329)
!4329 = !{!4330, !4331}
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4328, file: !42, line: 722, baseType: !1689, size: 64)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4328, file: !42, line: 723, baseType: !1313, size: 64)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !723, file: !42, line: 725, baseType: !4333, size: 64, offset: 2816)
!4333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4334, size: 64)
!4334 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !42, line: 725, flags: DIFlagFwdDecl)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !723, file: !42, line: 726, baseType: !719, size: 1536, align: 64, offset: 2880)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !723, file: !42, line: 727, baseType: !435, size: 128, offset: 4416)
!4337 = !DIDerivedType(tag: DW_TAG_member, scope: !723, file: !42, line: 728, baseType: !4338, size: 64, offset: 4544)
!4338 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !723, file: !42, line: 728, size: 64, elements: !4339)
!4339 = !{!4340, !4341, !4352, !4353}
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4338, file: !42, line: 729, baseType: !2385, size: 64)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4338, file: !42, line: 730, baseType: !4342, size: 64)
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !4344, line: 14, size: 832, elements: !4345)
!4344 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd3580fb19b1b4d9a4e84334e4ba7aa6")
!4345 = !{!4346, !4347, !4348, !4349, !4350, !4351}
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4343, file: !4344, line: 15, baseType: !602, size: 512)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4343, file: !4344, line: 16, baseType: !903, size: 64, offset: 512)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4343, file: !4344, line: 17, baseType: !1689, size: 64, offset: 576)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4343, file: !4344, line: 18, baseType: !435, size: 128, offset: 640)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4343, file: !4344, line: 19, baseType: !871, size: 32, offset: 768)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4343, file: !4344, line: 20, baseType: !35, size: 32, offset: 800)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4338, file: !42, line: 731, baseType: !645, size: 64)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4338, file: !42, line: 732, baseType: !35, size: 32)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !723, file: !42, line: 735, baseType: !244, size: 32, offset: 4608)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !723, file: !42, line: 738, baseType: !244, size: 32, offset: 4640)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !723, file: !42, line: 739, baseType: !4031, size: 64, offset: 4672)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !723, file: !42, line: 750, baseType: !329, size: 64, offset: 4736)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !719, file: !42, line: 474, baseType: !364, size: 128, offset: 64)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !719, file: !42, line: 475, baseType: !1517, size: 320, offset: 192)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !719, file: !42, line: 476, baseType: !404, size: 32, offset: 512)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !719, file: !42, line: 477, baseType: !388, size: 32, offset: 544)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !719, file: !42, line: 482, baseType: !2910, size: 128, offset: 576)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !719, file: !42, line: 483, baseType: !441, size: 64, offset: 704)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !719, file: !42, line: 484, baseType: !441, size: 64, offset: 768)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !719, file: !42, line: 485, baseType: !4366, size: 64, offset: 832)
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4367, size: 64)
!4367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4368)
!4368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !42, line: 404, size: 1280, elements: !4369)
!4369 = !{!4370, !4374, !4378, !4382, !4386, !4402, !4406, !4410, !4414, !4418, !4422, !4426, !4427, !4431, !4435, !4439, !4444, !4448, !4455, !4456}
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4368, file: !42, line: 405, baseType: !4371, size: 64)
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4372, size: 64)
!4372 = !DISubroutineType(types: !4373)
!4373 = !{!151, !1861, !1325}
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4368, file: !42, line: 406, baseType: !4375, size: 64, offset: 64)
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64)
!4376 = !DISubroutineType(types: !4377)
!4377 = !{!151, !1698, !1732}
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4368, file: !42, line: 409, baseType: !4379, size: 64, offset: 128)
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64)
!4380 = !DISubroutineType(types: !4381)
!4381 = !{!151, !718, !1325}
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4368, file: !42, line: 412, baseType: !4383, size: 64, offset: 192)
!4383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4384, size: 64)
!4384 = !DISubroutineType(types: !4385)
!4385 = !{!527, !718, !1732}
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4368, file: !42, line: 414, baseType: !4387, size: 64, offset: 256)
!4387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4388, size: 64)
!4388 = !DISubroutineType(types: !4389)
!4389 = !{null, !4390}
!4390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4391, size: 64)
!4391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1729, line: 1276, size: 448, elements: !4392)
!4392 = !{!4393, !4394, !4395, !4397, !4398, !4399, !4400, !4401}
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4391, file: !1729, line: 1277, baseType: !1698, size: 64)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4391, file: !1729, line: 1278, baseType: !718, size: 64, offset: 64)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !4391, file: !1729, line: 1279, baseType: !4396, size: 64, offset: 128)
!4396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !4391, file: !1729, line: 1281, baseType: !441, size: 64, offset: 192)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !4391, file: !1729, line: 1282, baseType: !35, size: 32, offset: 256)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !4391, file: !1729, line: 1283, baseType: !35, size: 32, offset: 288)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !4391, file: !1729, line: 1284, baseType: !527, size: 8, offset: 320)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !4391, file: !1729, line: 1285, baseType: !441, size: 64, offset: 384)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4368, file: !42, line: 416, baseType: !4403, size: 64, offset: 320)
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4404, size: 64)
!4404 = !DISubroutineType(types: !4405)
!4405 = !{!151, !1698, !718, !876, !35, !3780, !2401}
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4368, file: !42, line: 419, baseType: !4407, size: 64, offset: 384)
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 64)
!4408 = !DISubroutineType(types: !4409)
!4409 = !{!151, !1698, !718, !876, !35, !35, !1861, !329}
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4368, file: !42, line: 424, baseType: !4411, size: 64, offset: 448)
!4411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4412, size: 64)
!4412 = !DISubroutineType(types: !4413)
!4413 = !{!308, !718, !308}
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4368, file: !42, line: 425, baseType: !4415, size: 64, offset: 512)
!4415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4416, size: 64)
!4416 = !DISubroutineType(types: !4417)
!4417 = !{null, !1732, !690, !690}
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4368, file: !42, line: 426, baseType: !4419, size: 64, offset: 576)
!4419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4420, size: 64)
!4420 = !DISubroutineType(types: !4421)
!4421 = !{!527, !1732, !404}
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4368, file: !42, line: 427, baseType: !4423, size: 64, offset: 640)
!4423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4424, size: 64)
!4424 = !DISubroutineType(types: !4425)
!4425 = !{null, !1732}
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4368, file: !42, line: 428, baseType: !1708, size: 64, offset: 704)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4368, file: !42, line: 433, baseType: !4428, size: 64, offset: 768)
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 64)
!4429 = !DISubroutineType(types: !4430)
!4430 = !{!151, !718, !1732, !1732, !102}
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4368, file: !42, line: 435, baseType: !4432, size: 64, offset: 832)
!4432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4433, size: 64)
!4433 = !DISubroutineType(types: !4434)
!4434 = !{!151, !1732}
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4368, file: !42, line: 436, baseType: !4436, size: 64, offset: 896)
!4436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4437, size: 64)
!4437 = !DISubroutineType(types: !4438)
!4438 = !{!527, !1732, !690, !690}
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4368, file: !42, line: 438, baseType: !4440, size: 64, offset: 960)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{null, !1732, !4443, !4443}
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4368, file: !42, line: 439, baseType: !4445, size: 64, offset: 1024)
!4445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4446, size: 64)
!4446 = !DISubroutineType(types: !4447)
!4447 = !{!151, !718, !1861}
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4368, file: !42, line: 442, baseType: !4449, size: 64, offset: 1088)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = !DISubroutineType(types: !4451)
!4451 = !{!151, !4452, !1698, !4454}
!4452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4453, size: 64)
!4453 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !42, line: 66, flags: DIFlagFwdDecl)
!4454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4368, file: !42, line: 444, baseType: !2393, size: 64, offset: 1152)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4368, file: !42, line: 445, baseType: !4457, size: 64, offset: 1216)
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4458 = !DISubroutineType(types: !4459)
!4459 = !{!151, !1711, !2241}
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !719, file: !42, line: 486, baseType: !441, size: 64, offset: 896)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !719, file: !42, line: 487, baseType: !1517, size: 320, offset: 960)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !719, file: !42, line: 488, baseType: !2436, size: 32, offset: 1280)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !719, file: !42, line: 489, baseType: !368, size: 32, offset: 1312)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !719, file: !42, line: 490, baseType: !435, size: 128, offset: 1344)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !719, file: !42, line: 491, baseType: !329, size: 64, offset: 1472)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !709, file: !669, line: 180, baseType: !4467, size: 64, offset: 320)
!4467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4468, size: 64)
!4468 = !DISubroutineType(types: !4469)
!4469 = !{!675, !1698, !610, !708, !645, !876, !690}
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !709, file: !669, line: 182, baseType: !4467, size: 64, offset: 384)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !709, file: !669, line: 184, baseType: !4472, size: 64, offset: 448)
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4473 = !DISubroutineType(types: !4474)
!4474 = !{!151, !1698, !610, !708, !1875}
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !697, file: !669, line: 90, baseType: !4476, size: 64, offset: 192)
!4476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !697, file: !669, line: 91, baseType: !4478, size: 64, offset: 256)
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !659, file: !603, line: 120, baseType: !4480, size: 64, offset: 192)
!4480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4481, size: 64)
!4481 = !DISubroutineType(types: !4482)
!4482 = !{!4483, !628}
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4485)
!4485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !110, line: 39, size: 384, elements: !4486)
!4486 = !{!4487, !4488, !4492, !4496, !4502, !4506}
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4485, file: !110, line: 40, baseType: !109, size: 32)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4485, file: !110, line: 41, baseType: !4489, size: 64, offset: 64)
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4490, size: 64)
!4490 = !DISubroutineType(types: !4491)
!4491 = !{!527}
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4485, file: !110, line: 42, baseType: !4493, size: 64, offset: 128)
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4494, size: 64)
!4494 = !DISubroutineType(types: !4495)
!4495 = !{!329}
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4485, file: !110, line: 43, baseType: !4497, size: 64, offset: 192)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = !DISubroutineType(types: !4499)
!4499 = !{!321, !4500}
!4500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4501, size: 64)
!4501 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !110, line: 19, flags: DIFlagFwdDecl)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4485, file: !110, line: 44, baseType: !4503, size: 64, offset: 256)
!4503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4504, size: 64)
!4504 = !DISubroutineType(types: !4505)
!4505 = !{!321}
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4485, file: !110, line: 45, baseType: !1008, size: 64, offset: 320)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !659, file: !603, line: 121, baseType: !4508, size: 64, offset: 256)
!4508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4509, size: 64)
!4509 = !DISubroutineType(types: !4510)
!4510 = !{!321, !628}
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !659, file: !603, line: 122, baseType: !4512, size: 64, offset: 320)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = !DISubroutineType(types: !4514)
!4514 = !{null, !628, !4515, !4516}
!4515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!4516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !602, file: !603, line: 70, baseType: !4518, size: 64, offset: 384)
!4518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4519, size: 64)
!4519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !4520, line: 190, size: 1152, elements: !4521)
!4520 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!4521 = !{!4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4601, !4602, !4603, !4604, !4605, !4608}
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4519, file: !4520, line: 191, baseType: !388, size: 32)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4519, file: !4520, line: 192, baseType: !388, size: 32, offset: 32)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4519, file: !4520, line: 202, baseType: !4518, size: 64, offset: 64)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4519, file: !4520, line: 203, baseType: !606, size: 64, offset: 128)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4519, file: !4520, line: 205, baseType: !1074, size: 192, align: 64, offset: 192)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4519, file: !4520, line: 207, baseType: !321, size: 64, offset: 384)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4519, file: !4520, line: 208, baseType: !35, size: 32, offset: 448)
!4529 = !DIDerivedType(tag: DW_TAG_member, scope: !4519, file: !4520, line: 209, baseType: !4530, size: 256, offset: 512)
!4530 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4519, file: !4520, line: 209, size: 256, elements: !4531)
!4531 = !{!4532, !4541, !4545}
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4530, file: !4520, line: 210, baseType: !4533, size: 256)
!4533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !4520, line: 153, size: 256, elements: !4534)
!4534 = !{!4535, !4536, !4537, !4540}
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4533, file: !4520, line: 154, baseType: !441, size: 64)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4533, file: !4520, line: 156, baseType: !2913, size: 64, offset: 64)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4533, file: !4520, line: 162, baseType: !4538, size: 64, offset: 128)
!4538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4539, size: 64)
!4539 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !4520, line: 162, flags: DIFlagFwdDecl)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4533, file: !4520, line: 167, baseType: !441, size: 64, offset: 192)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4530, file: !4520, line: 211, baseType: !4542, size: 64)
!4542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !4520, line: 170, size: 64, elements: !4543)
!4543 = !{!4544}
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4542, file: !4520, line: 171, baseType: !4518, size: 64)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4530, file: !4520, line: 212, baseType: !4546, size: 256)
!4546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !4520, line: 174, size: 256, elements: !4547)
!4547 = !{!4548, !4596, !4599, !4600}
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4546, file: !4520, line: 175, baseType: !4549, size: 64)
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4550, size: 64)
!4550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4551)
!4551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !4520, line: 271, size: 768, elements: !4552)
!4552 = !{!4553, !4573, !4577, !4578, !4579, !4580, !4581, !4585, !4586, !4587, !4588, !4592}
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4551, file: !4520, line: 276, baseType: !4554, size: 64)
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4555, size: 64)
!4555 = !DISubroutineType(types: !4556)
!4556 = !{!151, !4557}
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !4520, line: 251, size: 1216, elements: !4559)
!4559 = !{!4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572}
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4558, file: !4520, line: 253, baseType: !4518, size: 64)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4558, file: !4520, line: 254, baseType: !1698, size: 64, offset: 64)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4558, file: !4520, line: 255, baseType: !1362, size: 64, offset: 128)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4558, file: !4520, line: 256, baseType: !329, size: 64, offset: 192)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4558, file: !4520, line: 259, baseType: !973, size: 256, offset: 256)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4558, file: !4520, line: 260, baseType: !973, size: 256, offset: 512)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4558, file: !4520, line: 261, baseType: !151, size: 32, offset: 768)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4558, file: !4520, line: 262, baseType: !435, size: 128, offset: 832)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4558, file: !4520, line: 263, baseType: !645, size: 64, offset: 960)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4558, file: !4520, line: 265, baseType: !690, size: 64, offset: 1024)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4558, file: !4520, line: 266, baseType: !527, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4558, file: !4520, line: 267, baseType: !527, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4558, file: !4520, line: 268, baseType: !2070, size: 64, offset: 1152)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4551, file: !4520, line: 277, baseType: !4574, size: 64, offset: 64)
!4574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!4575 = !DISubroutineType(types: !4576)
!4576 = !{null, !4557}
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4551, file: !4520, line: 290, baseType: !1393, size: 64, offset: 128)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4551, file: !4520, line: 292, baseType: !1380, size: 64, offset: 192)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4551, file: !4520, line: 293, baseType: !1389, size: 64, offset: 256)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4551, file: !4520, line: 294, baseType: !1385, size: 64, offset: 320)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4551, file: !4520, line: 296, baseType: !4582, size: 64, offset: 384)
!4582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4583, size: 64)
!4583 = !DISubroutineType(types: !4584)
!4584 = !{!675, !4557, !645, !690, !876}
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4551, file: !4520, line: 306, baseType: !690, size: 64, offset: 448)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4551, file: !4520, line: 313, baseType: !527, size: 8, offset: 512)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4551, file: !4520, line: 314, baseType: !4582, size: 64, offset: 576)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4551, file: !4520, line: 317, baseType: !4589, size: 64, offset: 640)
!4589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4590, size: 64)
!4590 = !DISubroutineType(types: !4591)
!4591 = !{!2329, !4557, !2330}
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4551, file: !4520, line: 320, baseType: !4593, size: 64, offset: 704)
!4593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4594, size: 64)
!4594 = !DISubroutineType(types: !4595)
!4595 = !{!151, !4557, !1875}
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4546, file: !4520, line: 176, baseType: !4597, size: 64, offset: 64)
!4597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4598, size: 64)
!4598 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !4520, line: 35, flags: DIFlagFwdDecl)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4546, file: !4520, line: 177, baseType: !876, size: 64, offset: 128)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4546, file: !4520, line: 178, baseType: !4518, size: 64, offset: 192)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4519, file: !4520, line: 215, baseType: !329, size: 64, offset: 768)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4519, file: !4520, line: 221, baseType: !310, size: 64, offset: 832)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4519, file: !4520, line: 223, baseType: !262, size: 16, offset: 896)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4519, file: !4520, line: 224, baseType: !685, size: 16, offset: 912)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4519, file: !4520, line: 225, baseType: !4606, size: 64, offset: 960)
!4606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4607, size: 64)
!4607 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !4520, line: 36, flags: DIFlagFwdDecl)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4519, file: !4520, line: 227, baseType: !1178, size: 128, align: 64, offset: 1024)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !602, file: !603, line: 71, baseType: !4610, size: 32, offset: 448)
!4610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4611, line: 19, size: 32, elements: !4612)
!4611 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4612 = !{!4613}
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4610, file: !4611, line: 20, baseType: !1449, size: 32)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !602, file: !603, line: 73, baseType: !35, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !602, file: !603, line: 74, baseType: !35, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !602, file: !603, line: 75, baseType: !35, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !602, file: !603, line: 76, baseType: !35, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !602, file: !603, line: 77, baseType: !35, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !428, file: !116, line: 422, baseType: !757, size: 64, offset: 3648)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "sched_debugfs_dir", scope: !428, file: !116, line: 424, baseType: !757, size: 64, offset: 3712)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_list", scope: !428, file: !116, line: 431, baseType: !435, size: 128, offset: 3776)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !420, file: !116, line: 85, baseType: !3415, size: 32, offset: 192)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "rq_flags", scope: !420, file: !116, line: 86, baseType: !4624, size: 32, offset: 224)
!4624 = !DIDerivedType(tag: DW_TAG_typedef, name: "req_flags_t", file: !116, line: 27, baseType: !244)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !420, file: !116, line: 88, baseType: !151, size: 32, offset: 256)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "internal_tag", scope: !420, file: !116, line: 89, baseType: !151, size: 32, offset: 288)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !420, file: !116, line: 91, baseType: !35, size: 32, offset: 320)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "__data_len", scope: !420, file: !116, line: 94, baseType: !35, size: 32, offset: 352)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "__sector", scope: !420, file: !116, line: 95, baseType: !308, size: 64, offset: 384)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "bio", scope: !420, file: !116, line: 97, baseType: !3409, size: 64, offset: 448)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "biotail", scope: !420, file: !116, line: 98, baseType: !3409, size: 64, offset: 512)
!4632 = !DIDerivedType(tag: DW_TAG_member, scope: !420, file: !116, line: 100, baseType: !4633, size: 128, offset: 576)
!4633 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !420, file: !116, line: 100, size: 128, elements: !4634)
!4634 = !{!4635, !4636}
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "queuelist", scope: !4633, file: !116, line: 101, baseType: !435, size: 128)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "rq_next", scope: !4633, file: !116, line: 102, baseType: !419, size: 64)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !420, file: !116, line: 105, baseType: !407, size: 64, offset: 704)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_time_ns", scope: !420, file: !116, line: 108, baseType: !310, size: 64, offset: 768)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "start_time_ns", scope: !420, file: !116, line: 111, baseType: !310, size: 64, offset: 832)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "io_start_time_ns", scope: !420, file: !116, line: 113, baseType: !310, size: 64, offset: 896)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "stats_sectors", scope: !420, file: !116, line: 123, baseType: !262, size: 16, offset: 960)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "nr_phys_segments", scope: !420, file: !116, line: 129, baseType: !262, size: 16, offset: 976)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !420, file: !116, line: 140, baseType: !262, size: 16, offset: 992)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !420, file: !116, line: 142, baseType: !115, size: 32, offset: 1024)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !420, file: !116, line: 143, baseType: !388, size: 32, offset: 1056)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !420, file: !116, line: 145, baseType: !441, size: 64, offset: 1088)
!4647 = !DIDerivedType(tag: DW_TAG_member, scope: !420, file: !116, line: 154, baseType: !4648, size: 128, offset: 1152)
!4648 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !420, file: !116, line: 154, size: 128, elements: !4649)
!4649 = !{!4650, !4651}
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4648, file: !116, line: 155, baseType: !471, size: 128)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_list", scope: !4648, file: !116, line: 156, baseType: !1406, size: 64)
!4652 = !DIDerivedType(tag: DW_TAG_member, scope: !420, file: !116, line: 165, baseType: !4653, size: 192, offset: 1280)
!4653 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !420, file: !116, line: 165, size: 192, elements: !4654)
!4654 = !{!4655, !4656}
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !4653, file: !116, line: 166, baseType: !1074, size: 192, align: 64)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "special_vec", scope: !4653, file: !116, line: 167, baseType: !2283, size: 128)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "elv", scope: !420, file: !116, line: 177, baseType: !4658, size: 192, offset: 1472)
!4658 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !420, file: !116, line: 174, size: 192, elements: !4659)
!4659 = !{!4660, !4677}
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "icq", scope: !4658, file: !116, line: 175, baseType: !4661, size: 64)
!4661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4662, size: 64)
!4662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !3510, line: 73, size: 448, elements: !4663)
!4663 = !{!4664, !4665, !4666, !4671, !4676}
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !4662, file: !3510, line: 74, baseType: !415, size: 64)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !4662, file: !3510, line: 75, baseType: !3508, size: 64, offset: 64)
!4666 = !DIDerivedType(tag: DW_TAG_member, scope: !4662, file: !3510, line: 83, baseType: !4667, size: 128, offset: 128)
!4667 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4662, file: !3510, line: 83, size: 128, elements: !4668)
!4668 = !{!4669, !4670}
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !4667, file: !3510, line: 84, baseType: !435, size: 128)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !4667, file: !3510, line: 85, baseType: !3455, size: 64)
!4671 = !DIDerivedType(tag: DW_TAG_member, scope: !4662, file: !3510, line: 87, baseType: !4672, size: 128, offset: 256)
!4672 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4662, file: !3510, line: 87, size: 128, elements: !4673)
!4673 = !{!4674, !4675}
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !4672, file: !3510, line: 88, baseType: !471, size: 128)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !4672, file: !3510, line: 89, baseType: !1178, size: 128, align: 64)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4662, file: !3510, line: 92, baseType: !35, size: 32, offset: 384)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4658, file: !116, line: 176, baseType: !4678, size: 128, offset: 64)
!4678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 128, elements: !10)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !420, file: !116, line: 182, baseType: !4680, size: 128, offset: 1664)
!4680 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !420, file: !116, line: 179, size: 128, elements: !4681)
!4681 = !{!4682, !4683}
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !4680, file: !116, line: 180, baseType: !35, size: 32)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "saved_end_io", scope: !4680, file: !116, line: 181, baseType: !4684, size: 64, offset: 64)
!4684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4685, size: 64)
!4685 = !DIDerivedType(tag: DW_TAG_typedef, name: "rq_end_io_fn", file: !116, line: 23, baseType: !4686)
!4686 = !DISubroutineType(types: !4687)
!4687 = !{!121, !419, !512}
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_time", scope: !420, file: !116, line: 184, baseType: !310, size: 64, offset: 1792)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "end_io", scope: !420, file: !116, line: 189, baseType: !4684, size: 64, offset: 1856)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "end_io_data", scope: !420, file: !116, line: 190, baseType: !329, size: 64, offset: 1920)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "elevator", scope: !416, file: !184, line: 393, baseType: !4692, size: 64, offset: 64)
!4692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4693, size: 64)
!4693 = !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_queue", file: !184, line: 30, flags: DIFlagFwdDecl)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "q_usage_counter", scope: !416, file: !184, line: 395, baseType: !1828, size: 128, offset: 128)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !416, file: !184, line: 397, baseType: !4696, size: 64, offset: 256)
!4696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4697, size: 64)
!4697 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_queue_stats", file: !184, line: 39, flags: DIFlagFwdDecl)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos", scope: !416, file: !184, line: 398, baseType: !4699, size: 64, offset: 320)
!4699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4700, size: 64)
!4700 = !DICompositeType(tag: DW_TAG_structure_type, name: "rq_qos", file: !184, line: 38, flags: DIFlagFwdDecl)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos_mutex", scope: !416, file: !184, line: 399, baseType: !973, size: 256, offset: 384)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ops", scope: !416, file: !184, line: 401, baseType: !4703, size: 64, offset: 640)
!4703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4704, size: 64)
!4704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4705)
!4705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ops", file: !116, line: 537, size: 1152, elements: !4706)
!4706 = !{!4707, !4717, !4721, !4725, !4729, !4733, !4737, !4741, !4745, !4749, !4753, !4757, !4761, !4791, !4795, !4796, !4800, !4804}
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "queue_rq", scope: !4705, file: !116, line: 541, baseType: !4708, size: 64)
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4709, size: 64)
!4709 = !DISubroutineType(types: !4710)
!4710 = !{!512, !427, !4711}
!4711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4712, size: 64)
!4712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4713)
!4713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_queue_data", file: !116, line: 526, size: 128, elements: !4714)
!4714 = !{!4715, !4716}
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "rq", scope: !4713, file: !116, line: 527, baseType: !419, size: 64)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !4713, file: !116, line: 528, baseType: !527, size: 8, offset: 64)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "commit_rqs", scope: !4705, file: !116, line: 551, baseType: !4718, size: 64, offset: 64)
!4718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4719, size: 64)
!4719 = !DISubroutineType(types: !4720)
!4720 = !{null, !427}
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "queue_rqs", scope: !4705, file: !116, line: 559, baseType: !4722, size: 64, offset: 128)
!4722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4723, size: 64)
!4723 = !DISubroutineType(types: !4724)
!4724 = !{null, !590}
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "get_budget", scope: !4705, file: !116, line: 567, baseType: !4726, size: 64, offset: 192)
!4726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4727, size: 64)
!4727 = !DISubroutineType(types: !4728)
!4728 = !{!151, !415}
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "put_budget", scope: !4705, file: !116, line: 572, baseType: !4730, size: 64, offset: 256)
!4730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4731, size: 64)
!4731 = !DISubroutineType(types: !4732)
!4732 = !{null, !415, !151}
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "set_rq_budget_token", scope: !4705, file: !116, line: 577, baseType: !4734, size: 64, offset: 320)
!4734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4735, size: 64)
!4735 = !DISubroutineType(types: !4736)
!4736 = !{null, !419, !151}
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "get_rq_budget_token", scope: !4705, file: !116, line: 581, baseType: !4738, size: 64, offset: 384)
!4738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4739, size: 64)
!4739 = !DISubroutineType(types: !4740)
!4740 = !{!151, !419}
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4705, file: !116, line: 586, baseType: !4742, size: 64, offset: 448)
!4742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4743, size: 64)
!4743 = !DISubroutineType(types: !4744)
!4744 = !{!125, !419}
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4705, file: !116, line: 591, baseType: !4746, size: 64, offset: 512)
!4746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4747, size: 64)
!4747 = !DISubroutineType(types: !4748)
!4748 = !{!151, !427, !2303}
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4705, file: !116, line: 596, baseType: !4750, size: 64, offset: 576)
!4750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4751, size: 64)
!4751 = !DISubroutineType(types: !4752)
!4752 = !{null, !419}
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "init_hctx", scope: !4705, file: !116, line: 603, baseType: !4754, size: 64, offset: 640)
!4754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4755, size: 64)
!4755 = !DISubroutineType(types: !4756)
!4756 = !{!151, !427, !329, !35}
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "exit_hctx", scope: !4705, file: !116, line: 607, baseType: !4758, size: 64, offset: 704)
!4758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4759, size: 64)
!4759 = !DISubroutineType(types: !4760)
!4760 = !{null, !427, !35}
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "init_request", scope: !4705, file: !116, line: 616, baseType: !4762, size: 64, offset: 768)
!4762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4763, size: 64)
!4763 = !DISubroutineType(types: !4764)
!4764 = !{!151, !4765, !419, !35, !35}
!4765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4766, size: 64)
!4766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tag_set", file: !116, line: 498, size: 1344, elements: !4767)
!4767 = !{!4768, !4769, !4776, !4777, !4778, !4779, !4780, !4781, !4782, !4783, !4784, !4785, !4787, !4788, !4789, !4790}
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4766, file: !116, line: 499, baseType: !4703, size: 64)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !4766, file: !116, line: 500, baseType: !4770, size: 384, offset: 64)
!4770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4771, size: 384, elements: !15)
!4771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_queue_map", file: !116, line: 444, size: 128, elements: !4772)
!4772 = !{!4773, !4774, !4775}
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "mq_map", scope: !4771, file: !116, line: 445, baseType: !538, size: 64)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "nr_queues", scope: !4771, file: !116, line: 446, baseType: !35, size: 32, offset: 64)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "queue_offset", scope: !4771, file: !116, line: 447, baseType: !35, size: 32, offset: 96)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "nr_maps", scope: !4766, file: !116, line: 501, baseType: !35, size: 32, offset: 448)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !4766, file: !116, line: 502, baseType: !35, size: 32, offset: 480)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !4766, file: !116, line: 503, baseType: !35, size: 32, offset: 512)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_tags", scope: !4766, file: !116, line: 504, baseType: !35, size: 32, offset: 544)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_size", scope: !4766, file: !116, line: 505, baseType: !35, size: 32, offset: 576)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4766, file: !116, line: 506, baseType: !151, size: 32, offset: 608)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4766, file: !116, line: 507, baseType: !35, size: 32, offset: 640)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4766, file: !116, line: 508, baseType: !35, size: 32, offset: 672)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4766, file: !116, line: 509, baseType: !329, size: 64, offset: 704)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "tags", scope: !4766, file: !116, line: 511, baseType: !4786, size: 64, offset: 768)
!4786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "shared_tags", scope: !4766, file: !116, line: 513, baseType: !562, size: 64, offset: 832)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "tag_list_lock", scope: !4766, file: !116, line: 515, baseType: !973, size: 256, offset: 896)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "tag_list", scope: !4766, file: !116, line: 516, baseType: !435, size: 128, offset: 1152)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "srcu", scope: !4766, file: !116, line: 517, baseType: !1158, size: 64, offset: 1280)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "exit_request", scope: !4705, file: !116, line: 621, baseType: !4792, size: 64, offset: 832)
!4792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4793, size: 64)
!4793 = !DISubroutineType(types: !4794)
!4794 = !{null, !4765, !419, !35}
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_rq", scope: !4705, file: !116, line: 628, baseType: !4750, size: 64, offset: 896)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !4705, file: !116, line: 633, baseType: !4797, size: 64, offset: 960)
!4797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4798, size: 64)
!4798 = !DISubroutineType(types: !4799)
!4799 = !{!527, !415}
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "map_queues", scope: !4705, file: !116, line: 639, baseType: !4801, size: 64, offset: 1024)
!4801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4802, size: 64)
!4802 = !DISubroutineType(types: !4803)
!4803 = !{null, !4765}
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "show_rq", scope: !4705, file: !116, line: 646, baseType: !4805, size: 64, offset: 1088)
!4805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4806, size: 64)
!4806 = !DISubroutineType(types: !4807)
!4807 = !{null, !1362, !419}
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ctx", scope: !416, file: !184, line: 404, baseType: !424, size: 64, offset: 704)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !416, file: !184, line: 406, baseType: !35, size: 32, offset: 768)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_table", scope: !416, file: !184, line: 409, baseType: !364, size: 128, offset: 832)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !416, file: !184, line: 410, baseType: !35, size: 32, offset: 960)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "queuedata", scope: !416, file: !184, line: 416, baseType: !329, size: 64, offset: 1024)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "queue_flags", scope: !416, file: !184, line: 421, baseType: !441, size: 64, offset: 1088)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "pm_only", scope: !416, file: !184, line: 426, baseType: !388, size: 32, offset: 1152)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !416, file: !184, line: 432, baseType: !151, size: 32, offset: 1184)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "queue_lock", scope: !416, file: !184, line: 434, baseType: !368, size: 32, offset: 1216)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "disk", scope: !416, file: !184, line: 436, baseType: !351, size: 64, offset: 1280)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !416, file: !184, line: 438, baseType: !1449, size: 32, offset: 1344)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "mq_kobj", scope: !416, file: !184, line: 443, baseType: !610, size: 64, offset: 1408)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !416, file: !184, line: 450, baseType: !4821, size: 64, offset: 1472)
!4821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4822, size: 64)
!4822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !136, line: 705, size: 5824, elements: !4823)
!4823 = !{!4824, !4825, !4826, !4829, !4830, !4883, !4953, !4954, !4955, !4956, !4957, !4964, !5056, !5069, !5079, !5083, !5085, !5086, !5087, !5091, !5098, !5099, !5102, !5105, !5109, !5213, !5214, !5215, !5216, !5217, !5218, !5248, !5249, !5250, !5253, !5256, !5265, !5266, !5267, !5268, !5269, !5270}
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4822, file: !136, line: 706, baseType: !602, size: 512)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4822, file: !136, line: 707, baseType: !4821, size: 64, offset: 512)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4822, file: !136, line: 709, baseType: !4827, size: 64, offset: 576)
!4827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4828, size: 64)
!4828 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !136, line: 37, flags: DIFlagFwdDecl)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4822, file: !136, line: 711, baseType: !606, size: 64, offset: 640)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4822, file: !136, line: 712, baseType: !4831, size: 64, offset: 704)
!4831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4832, size: 64)
!4832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4833)
!4833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !136, line: 89, size: 384, elements: !4834)
!4834 = !{!4835, !4836, !4837, !4843, !4848, !4852}
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4833, file: !136, line: 90, baseType: !606, size: 64)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4833, file: !136, line: 91, baseType: !694, size: 64, offset: 64)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4833, file: !136, line: 92, baseType: !4838, size: 64, offset: 128)
!4838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4839, size: 64)
!4839 = !DISubroutineType(types: !4840)
!4840 = !{!151, !4841, !640}
!4841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4842, size: 64)
!4842 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4822)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4833, file: !136, line: 93, baseType: !4844, size: 64, offset: 192)
!4844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4845, size: 64)
!4845 = !DISubroutineType(types: !4846)
!4846 = !{!645, !4841, !4847, !4515, !4516}
!4847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4833, file: !136, line: 95, baseType: !4849, size: 64, offset: 256)
!4849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4850, size: 64)
!4850 = !DISubroutineType(types: !4851)
!4851 = !{null, !4821}
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4833, file: !136, line: 97, baseType: !4853, size: 64, offset: 320)
!4853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4854, size: 64)
!4854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4855)
!4855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !143, line: 286, size: 1472, elements: !4856)
!4856 = !{!4857, !4861, !4862, !4863, !4864, !4865, !4866, !4867, !4868, !4869, !4870, !4871, !4872, !4873, !4874, !4875, !4876, !4877, !4878, !4879, !4880, !4881, !4882}
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4855, file: !143, line: 287, baseType: !4858, size: 64)
!4858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4859, size: 64)
!4859 = !DISubroutineType(types: !4860)
!4860 = !{!151, !4821}
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4855, file: !143, line: 288, baseType: !4849, size: 64, offset: 64)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4855, file: !143, line: 289, baseType: !4858, size: 64, offset: 128)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4855, file: !143, line: 290, baseType: !4858, size: 64, offset: 192)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4855, file: !143, line: 291, baseType: !4858, size: 64, offset: 256)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4855, file: !143, line: 292, baseType: !4858, size: 64, offset: 320)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4855, file: !143, line: 293, baseType: !4858, size: 64, offset: 384)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4855, file: !143, line: 294, baseType: !4858, size: 64, offset: 448)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4855, file: !143, line: 295, baseType: !4858, size: 64, offset: 512)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4855, file: !143, line: 296, baseType: !4858, size: 64, offset: 576)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4855, file: !143, line: 297, baseType: !4858, size: 64, offset: 640)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4855, file: !143, line: 298, baseType: !4858, size: 64, offset: 704)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4855, file: !143, line: 299, baseType: !4858, size: 64, offset: 768)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4855, file: !143, line: 300, baseType: !4858, size: 64, offset: 832)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4855, file: !143, line: 301, baseType: !4858, size: 64, offset: 896)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4855, file: !143, line: 302, baseType: !4858, size: 64, offset: 960)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4855, file: !143, line: 303, baseType: !4858, size: 64, offset: 1024)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4855, file: !143, line: 304, baseType: !4858, size: 64, offset: 1088)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4855, file: !143, line: 305, baseType: !4858, size: 64, offset: 1152)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4855, file: !143, line: 306, baseType: !4858, size: 64, offset: 1216)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4855, file: !143, line: 307, baseType: !4858, size: 64, offset: 1280)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4855, file: !143, line: 308, baseType: !4858, size: 64, offset: 1344)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4855, file: !143, line: 309, baseType: !4858, size: 64, offset: 1408)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4822, file: !136, line: 714, baseType: !4884, size: 64, offset: 768)
!4884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4885, size: 64)
!4885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4886)
!4886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4887, line: 80, size: 1344, elements: !4888)
!4887 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4888 = !{!4889, !4890, !4891, !4892, !4893, !4894, !4935, !4936, !4937, !4938, !4939, !4940, !4941, !4942, !4943, !4944, !4945, !4946, !4947, !4948, !4952}
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4886, file: !4887, line: 81, baseType: !606, size: 64)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4886, file: !4887, line: 82, baseType: !606, size: 64, offset: 64)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4886, file: !4887, line: 83, baseType: !694, size: 64, offset: 128)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4886, file: !4887, line: 84, baseType: !694, size: 64, offset: 192)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4886, file: !4887, line: 85, baseType: !694, size: 64, offset: 256)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4886, file: !4887, line: 87, baseType: !4895, size: 64, offset: 320)
!4895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4896, size: 64)
!4896 = !DISubroutineType(types: !4897)
!4897 = !{!151, !4821, !4898}
!4898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4899, size: 64)
!4899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !130, line: 96, size: 1152, elements: !4900)
!4900 = !{!4901, !4902, !4903, !4904, !4905, !4906, !4907, !4911, !4915, !4916, !4917, !4918, !4919, !4927, !4928, !4929, !4930, !4931, !4932}
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4899, file: !130, line: 97, baseType: !606, size: 64)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4899, file: !130, line: 98, baseType: !4884, size: 64, offset: 64)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4899, file: !130, line: 100, baseType: !903, size: 64, offset: 128)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4899, file: !130, line: 101, baseType: !606, size: 64, offset: 192)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4899, file: !130, line: 103, baseType: !527, size: 8, offset: 256)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4899, file: !130, line: 104, baseType: !129, size: 32, offset: 288)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4899, file: !130, line: 106, baseType: !4908, size: 64, offset: 320)
!4908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4909, size: 64)
!4909 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4910)
!4910 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !130, line: 106, flags: DIFlagFwdDecl)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4899, file: !130, line: 107, baseType: !4912, size: 64, offset: 384)
!4912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4913, size: 64)
!4913 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4914)
!4914 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !130, line: 107, flags: DIFlagFwdDecl)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4899, file: !130, line: 109, baseType: !4858, size: 64, offset: 448)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4899, file: !130, line: 110, baseType: !4849, size: 64, offset: 512)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4899, file: !130, line: 111, baseType: !4858, size: 64, offset: 576)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4899, file: !130, line: 112, baseType: !4849, size: 64, offset: 640)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4899, file: !130, line: 113, baseType: !4920, size: 64, offset: 704)
!4920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4921, size: 64)
!4921 = !DISubroutineType(types: !4922)
!4922 = !{!151, !4821, !4923}
!4923 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !143, line: 60, baseType: !4924)
!4924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !143, line: 58, size: 32, elements: !4925)
!4925 = !{!4926}
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4924, file: !143, line: 59, baseType: !151, size: 32)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4899, file: !130, line: 114, baseType: !4858, size: 64, offset: 768)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4899, file: !130, line: 115, baseType: !694, size: 64, offset: 832)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4899, file: !130, line: 116, baseType: !694, size: 64, offset: 896)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4899, file: !130, line: 118, baseType: !4853, size: 64, offset: 960)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4899, file: !130, line: 119, baseType: !4849, size: 64, offset: 1024)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4899, file: !130, line: 121, baseType: !4933, size: 64, offset: 1088)
!4933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4934, size: 64)
!4934 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !130, line: 121, flags: DIFlagFwdDecl)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4886, file: !4887, line: 88, baseType: !4838, size: 64, offset: 384)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4886, file: !4887, line: 89, baseType: !4858, size: 64, offset: 448)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4886, file: !4887, line: 90, baseType: !4849, size: 64, offset: 512)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4886, file: !4887, line: 91, baseType: !4849, size: 64, offset: 576)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4886, file: !4887, line: 92, baseType: !4849, size: 64, offset: 640)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4886, file: !4887, line: 94, baseType: !4858, size: 64, offset: 704)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4886, file: !4887, line: 95, baseType: !4858, size: 64, offset: 768)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4886, file: !4887, line: 97, baseType: !4920, size: 64, offset: 832)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4886, file: !4887, line: 98, baseType: !4858, size: 64, offset: 896)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4886, file: !4887, line: 100, baseType: !4858, size: 64, offset: 960)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4886, file: !4887, line: 102, baseType: !4858, size: 64, offset: 1024)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4886, file: !4887, line: 103, baseType: !4849, size: 64, offset: 1088)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4886, file: !4887, line: 105, baseType: !4853, size: 64, offset: 1152)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4886, file: !4887, line: 107, baseType: !4949, size: 64, offset: 1216)
!4949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4950, size: 64)
!4950 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4951)
!4951 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4887, line: 107, flags: DIFlagFwdDecl)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4886, file: !4887, line: 109, baseType: !527, size: 8, offset: 1280)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4822, file: !136, line: 715, baseType: !4898, size: 64, offset: 832)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4822, file: !136, line: 717, baseType: !329, size: 64, offset: 896)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4822, file: !136, line: 719, baseType: !329, size: 64, offset: 960)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4822, file: !136, line: 721, baseType: !973, size: 256, offset: 1024)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4822, file: !136, line: 725, baseType: !4958, size: 448, offset: 1280)
!4958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !136, line: 517, size: 448, elements: !4959)
!4959 = !{!4960, !4961, !4962, !4963}
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4958, file: !136, line: 518, baseType: !435, size: 128)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4958, file: !136, line: 519, baseType: !435, size: 128, offset: 128)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4958, file: !136, line: 520, baseType: !435, size: 128, offset: 256)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4958, file: !136, line: 521, baseType: !135, size: 32, offset: 384)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4822, file: !136, line: 726, baseType: !4965, size: 2496, offset: 1728)
!4965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !143, line: 663, size: 2496, elements: !4966)
!4966 = !{!4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4979, !4980, !4981, !4982, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5018, !5019, !5020, !5021, !5022, !5023, !5024, !5025, !5026, !5027, !5028, !5029, !5030, !5031, !5032, !5033, !5034, !5035, !5036, !5037, !5038, !5039, !5040, !5041, !5042, !5043, !5049, !5053}
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4965, file: !143, line: 664, baseType: !4923, size: 32)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4965, file: !143, line: 665, baseType: !35, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4965, file: !143, line: 666, baseType: !35, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4965, file: !143, line: 667, baseType: !527, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4965, file: !143, line: 668, baseType: !527, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4965, file: !143, line: 669, baseType: !527, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4965, file: !143, line: 670, baseType: !527, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4965, file: !143, line: 671, baseType: !527, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4965, file: !143, line: 672, baseType: !527, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4965, file: !143, line: 673, baseType: !527, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4965, file: !143, line: 674, baseType: !527, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4965, file: !143, line: 675, baseType: !320, size: 32, offset: 64)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4965, file: !143, line: 676, baseType: !368, size: 32, offset: 96)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4965, file: !143, line: 678, baseType: !435, size: 128, offset: 128)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4965, file: !143, line: 679, baseType: !923, size: 256, offset: 256)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4965, file: !143, line: 680, baseType: !4983, size: 64, offset: 512)
!4983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4984, size: 64)
!4984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4985, line: 43, size: 1536, elements: !4986)
!4985 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4986 = !{!4987, !4988, !4989, !4990, !4991, !4994, !4995, !4996, !4997, !4998, !4999, !5000, !5001, !5002, !5003, !5004, !5005, !5006, !5007, !5008}
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4984, file: !4985, line: 44, baseType: !606, size: 64)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4984, file: !4985, line: 45, baseType: !151, size: 32, offset: 64)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4984, file: !4985, line: 46, baseType: !435, size: 128, offset: 128)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4984, file: !4985, line: 47, baseType: !368, size: 32, offset: 256)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4984, file: !4985, line: 48, baseType: !4992, size: 64, offset: 320)
!4992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4993, size: 64)
!4993 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !143, line: 629, flags: DIFlagFwdDecl)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4984, file: !4985, line: 49, baseType: !467, size: 320, offset: 384)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4984, file: !4985, line: 50, baseType: !441, size: 64, offset: 704)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4984, file: !4985, line: 51, baseType: !2861, size: 64, offset: 768)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4984, file: !4985, line: 52, baseType: !2861, size: 64, offset: 832)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4984, file: !4985, line: 53, baseType: !2861, size: 64, offset: 896)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4984, file: !4985, line: 54, baseType: !2861, size: 64, offset: 960)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4984, file: !4985, line: 55, baseType: !2861, size: 64, offset: 1024)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4984, file: !4985, line: 56, baseType: !441, size: 64, offset: 1088)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4984, file: !4985, line: 57, baseType: !441, size: 64, offset: 1152)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4984, file: !4985, line: 58, baseType: !441, size: 64, offset: 1216)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4984, file: !4985, line: 59, baseType: !441, size: 64, offset: 1280)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4984, file: !4985, line: 60, baseType: !441, size: 64, offset: 1344)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4984, file: !4985, line: 61, baseType: !4821, size: 64, offset: 1408)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4984, file: !4985, line: 62, baseType: !527, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4984, file: !4985, line: 63, baseType: !527, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4965, file: !143, line: 681, baseType: !527, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4965, file: !143, line: 682, baseType: !527, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4965, file: !143, line: 683, baseType: !527, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4965, file: !143, line: 684, baseType: !35, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4965, file: !143, line: 685, baseType: !35, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4965, file: !143, line: 690, baseType: !2853, size: 512, offset: 640)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4965, file: !143, line: 691, baseType: !310, size: 64, offset: 1152)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4965, file: !143, line: 692, baseType: !447, size: 256, offset: 1216)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4965, file: !143, line: 693, baseType: !579, size: 192, offset: 1472)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4965, file: !143, line: 694, baseType: !4992, size: 64, offset: 1664)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4965, file: !143, line: 695, baseType: !388, size: 32, offset: 1728)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4965, file: !143, line: 696, baseType: !388, size: 32, offset: 1760)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4965, file: !143, line: 697, baseType: !35, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4965, file: !143, line: 698, baseType: !35, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4965, file: !143, line: 699, baseType: !35, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4965, file: !143, line: 700, baseType: !35, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4965, file: !143, line: 701, baseType: !35, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4965, file: !143, line: 702, baseType: !35, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4965, file: !143, line: 703, baseType: !527, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4965, file: !143, line: 704, baseType: !35, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4965, file: !143, line: 705, baseType: !35, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4965, file: !143, line: 706, baseType: !35, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4965, file: !143, line: 707, baseType: !35, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4965, file: !143, line: 708, baseType: !35, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4965, file: !143, line: 709, baseType: !35, size: 32, offset: 1824)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4965, file: !143, line: 710, baseType: !142, size: 32, offset: 1856)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4965, file: !143, line: 711, baseType: !150, size: 32, offset: 1888)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4965, file: !143, line: 712, baseType: !150, size: 32, offset: 1920)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4965, file: !143, line: 713, baseType: !151, size: 32, offset: 1952)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4965, file: !143, line: 714, baseType: !151, size: 32, offset: 1984)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4965, file: !143, line: 715, baseType: !310, size: 64, offset: 2048)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4965, file: !143, line: 716, baseType: !310, size: 64, offset: 2112)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4965, file: !143, line: 717, baseType: !310, size: 64, offset: 2176)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4965, file: !143, line: 718, baseType: !310, size: 64, offset: 2240)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4965, file: !143, line: 720, baseType: !5044, size: 64, offset: 2304)
!5044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5045, size: 64)
!5045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !143, line: 632, size: 64, elements: !5046)
!5046 = !{!5047, !5048}
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5045, file: !143, line: 633, baseType: !368, size: 32)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5045, file: !143, line: 634, baseType: !35, size: 32, offset: 32)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4965, file: !143, line: 721, baseType: !5050, size: 64, offset: 2368)
!5050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5051, size: 64)
!5051 = !DISubroutineType(types: !5052)
!5052 = !{null, !4821, !969}
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4965, file: !143, line: 722, baseType: !5054, size: 64, offset: 2432)
!5054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5055, size: 64)
!5055 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !143, line: 722, flags: DIFlagFwdDecl)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4822, file: !136, line: 727, baseType: !5057, size: 64, offset: 4224)
!5057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5058, size: 64)
!5058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !143, line: 742, size: 1792, elements: !5059)
!5059 = !{!5060, !5061, !5062, !5066, !5067, !5068}
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5058, file: !143, line: 743, baseType: !4855, size: 1472)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5058, file: !143, line: 744, baseType: !4858, size: 64, offset: 1472)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !5058, file: !143, line: 745, baseType: !5063, size: 64, offset: 1536)
!5063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5064, size: 64)
!5064 = !DISubroutineType(types: !5065)
!5065 = !{null, !4821, !527}
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !5058, file: !143, line: 746, baseType: !4858, size: 64, offset: 1600)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !5058, file: !143, line: 747, baseType: !4849, size: 64, offset: 1664)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !5058, file: !143, line: 748, baseType: !4849, size: 64, offset: 1728)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4822, file: !136, line: 736, baseType: !5070, size: 128, offset: 4288)
!5070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !136, line: 529, size: 128, elements: !5071)
!5071 = !{!5072, !5076}
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !5070, file: !136, line: 531, baseType: !5073, size: 64)
!5073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5074, size: 64)
!5074 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !5075, line: 13, flags: DIFlagFwdDecl)
!5075 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5070, file: !136, line: 532, baseType: !5077, size: 64, offset: 64)
!5077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5078, size: 64)
!5078 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !136, line: 49, flags: DIFlagFwdDecl)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4822, file: !136, line: 738, baseType: !5080, size: 64, offset: 4416)
!5080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5081, size: 64)
!5081 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5082)
!5082 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !136, line: 738, flags: DIFlagFwdDecl)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4822, file: !136, line: 740, baseType: !5084, size: 64, offset: 4480)
!5084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4822, file: !136, line: 741, baseType: !310, size: 64, offset: 4544)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4822, file: !136, line: 746, baseType: !310, size: 64, offset: 4608)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4822, file: !136, line: 747, baseType: !5088, size: 64, offset: 4672)
!5088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5089, size: 64)
!5089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5090)
!5090 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !136, line: 747, flags: DIFlagFwdDecl)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4822, file: !136, line: 749, baseType: !5092, size: 64, offset: 4736)
!5092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5093, size: 64)
!5093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !136, line: 428, size: 128, elements: !5094)
!5094 = !{!5095, !5096, !5097}
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !5093, file: !136, line: 433, baseType: !35, size: 32)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !5093, file: !136, line: 434, baseType: !35, size: 32, offset: 32)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !5093, file: !136, line: 435, baseType: !441, size: 64, offset: 64)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4822, file: !136, line: 751, baseType: !435, size: 128, offset: 4800)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4822, file: !136, line: 762, baseType: !5100, size: 64, offset: 4928)
!5100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5101, size: 64)
!5101 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !136, line: 762, flags: DIFlagFwdDecl)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4822, file: !136, line: 770, baseType: !5103, offset: 4992)
!5103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !5104, line: 5, elements: !1217)
!5104 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4822, file: !136, line: 772, baseType: !5106, size: 64, offset: 4992)
!5106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5107, size: 64)
!5107 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !5108, line: 18, flags: DIFlagFwdDecl)
!5108 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4822, file: !136, line: 773, baseType: !5110, size: 64, offset: 5056)
!5110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5111, size: 64)
!5111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !5112, line: 41, size: 512, elements: !5113)
!5112 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!5113 = !{!5114, !5115, !5209, !5210, !5211, !5212}
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !5111, file: !5112, line: 42, baseType: !5110, size: 64)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5111, file: !5112, line: 43, baseType: !5116, size: 64, offset: 64)
!5116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5117, size: 64)
!5117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5118)
!5118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !5112, line: 125, size: 1408, elements: !5119)
!5119 = !{!5120, !5124, !5128, !5134, !5138, !5139, !5144, !5148, !5152, !5156, !5160, !5161, !5165, !5169, !5173, !5184, !5185, !5186, !5187, !5197, !5201, !5205}
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !5118, file: !5112, line: 126, baseType: !5121, size: 64)
!5121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5122, size: 64)
!5122 = !DISubroutineType(types: !5123)
!5123 = !{!5110, !5110}
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !5118, file: !5112, line: 127, baseType: !5125, size: 64, offset: 64)
!5125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5126, size: 64)
!5126 = !DISubroutineType(types: !5127)
!5127 = !{null, !5110}
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !5118, file: !5112, line: 128, baseType: !5129, size: 64, offset: 128)
!5129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5130, size: 64)
!5130 = !DISubroutineType(types: !5131)
!5131 = !{!527, !5132}
!5132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5133, size: 64)
!5133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5111)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !5118, file: !5112, line: 129, baseType: !5135, size: 64, offset: 192)
!5135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5136, size: 64)
!5136 = !DISubroutineType(types: !5137)
!5137 = !{!321, !5132, !4841}
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !5118, file: !5112, line: 131, baseType: !5129, size: 64, offset: 256)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !5118, file: !5112, line: 133, baseType: !5140, size: 64, offset: 320)
!5140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5141, size: 64)
!5141 = !DISubroutineType(types: !5142)
!5142 = !{!5143, !5132}
!5143 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !5112, line: 132, flags: DIFlagFwdDecl)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !5118, file: !5112, line: 134, baseType: !5145, size: 64, offset: 384)
!5145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5146, size: 64)
!5146 = !DISubroutineType(types: !5147)
!5147 = !{!527, !5132, !606}
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !5118, file: !5112, line: 136, baseType: !5149, size: 64, offset: 448)
!5149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5150, size: 64)
!5150 = !DISubroutineType(types: !5151)
!5151 = !{!151, !5132, !606, !35, !329, !690}
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !5118, file: !5112, line: 141, baseType: !5153, size: 64, offset: 512)
!5153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5154, size: 64)
!5154 = !DISubroutineType(types: !5155)
!5155 = !{!151, !5132, !606, !1257, !690}
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !5118, file: !5112, line: 144, baseType: !5157, size: 64, offset: 576)
!5157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5158, size: 64)
!5158 = !DISubroutineType(types: !5159)
!5159 = !{!606, !5132}
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !5118, file: !5112, line: 145, baseType: !5157, size: 64, offset: 640)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !5118, file: !5112, line: 146, baseType: !5162, size: 64, offset: 704)
!5162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5163, size: 64)
!5163 = !DISubroutineType(types: !5164)
!5164 = !{!5110, !5132}
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !5118, file: !5112, line: 148, baseType: !5166, size: 64, offset: 768)
!5166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5167, size: 64)
!5167 = !DISubroutineType(types: !5168)
!5168 = !{!5110, !5132, !5110}
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !5118, file: !5112, line: 151, baseType: !5170, size: 64, offset: 832)
!5170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5171, size: 64)
!5171 = !DISubroutineType(types: !5172)
!5172 = !{!5110, !5132, !606}
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !5118, file: !5112, line: 153, baseType: !5174, size: 64, offset: 896)
!5174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5175, size: 64)
!5175 = !DISubroutineType(types: !5176)
!5176 = !{!151, !5132, !606, !606, !35, !35, !5177}
!5177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5178, size: 64)
!5178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !5112, line: 94, size: 640, elements: !5179)
!5179 = !{!5180, !5181, !5182}
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5178, file: !5112, line: 95, baseType: !5110, size: 64)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !5178, file: !5112, line: 96, baseType: !35, size: 32, offset: 64)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !5178, file: !5112, line: 97, baseType: !5183, size: 512, offset: 128)
!5183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 512, elements: !254)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !5118, file: !5112, line: 158, baseType: !5166, size: 64, offset: 960)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !5118, file: !5112, line: 161, baseType: !5162, size: 64, offset: 1024)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !5118, file: !5112, line: 163, baseType: !5121, size: 64, offset: 1088)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !5118, file: !5112, line: 164, baseType: !5188, size: 64, offset: 1152)
!5188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5189, size: 64)
!5189 = !DISubroutineType(types: !5190)
!5190 = !{!151, !5132, !5191}
!5191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5192, size: 64)
!5192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !5112, line: 73, size: 128, elements: !5193)
!5193 = !{!5194, !5195, !5196}
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !5192, file: !5112, line: 74, baseType: !35, size: 32)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5192, file: !5112, line: 75, baseType: !35, size: 32, offset: 32)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !5192, file: !5112, line: 76, baseType: !5132, size: 64, offset: 64)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !5118, file: !5112, line: 166, baseType: !5198, size: 64, offset: 1216)
!5198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5199, size: 64)
!5199 = !DISubroutineType(types: !5200)
!5200 = !{!329, !5110, !151}
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !5118, file: !5112, line: 167, baseType: !5202, size: 64, offset: 1280)
!5202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5203, size: 64)
!5203 = !DISubroutineType(types: !5204)
!5204 = !{!151, !5132, !35}
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !5118, file: !5112, line: 168, baseType: !5206, size: 64, offset: 1344)
!5206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5207, size: 64)
!5207 = !DISubroutineType(types: !5208)
!5208 = !{!151, !5110}
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5111, file: !5112, line: 44, baseType: !4821, size: 64, offset: 128)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !5111, file: !5112, line: 45, baseType: !435, size: 128, offset: 192)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !5111, file: !5112, line: 46, baseType: !435, size: 128, offset: 320)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5111, file: !5112, line: 47, baseType: !229, size: 8, offset: 448)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4822, file: !136, line: 776, baseType: !151, size: 32, offset: 5120)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4822, file: !136, line: 778, baseType: !871, size: 32, offset: 5152)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4822, file: !136, line: 779, baseType: !320, size: 32, offset: 5184)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4822, file: !136, line: 781, baseType: !368, size: 32, offset: 5216)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4822, file: !136, line: 782, baseType: !435, size: 128, offset: 5248)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4822, file: !136, line: 784, baseType: !5219, size: 64, offset: 5376)
!5219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5220, size: 64)
!5220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5221)
!5221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !5222, line: 52, size: 768, elements: !5223)
!5222 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!5223 = !{!5224, !5225, !5226, !5227, !5228, !5232, !5236, !5237, !5238, !5239, !5243, !5247}
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5221, file: !5222, line: 53, baseType: !606, size: 64)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !5221, file: !5222, line: 55, baseType: !694, size: 64, offset: 64)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !5221, file: !5222, line: 56, baseType: !694, size: 64, offset: 128)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !5221, file: !5222, line: 58, baseType: !4838, size: 64, offset: 192)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !5221, file: !5222, line: 59, baseType: !5229, size: 64, offset: 256)
!5229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5230, size: 64)
!5230 = !DISubroutineType(types: !5231)
!5231 = !{!645, !4841, !4847}
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !5221, file: !5222, line: 61, baseType: !5233, size: 64, offset: 320)
!5233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5234, size: 64)
!5234 = !DISubroutineType(types: !5235)
!5235 = !{null, !5219}
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !5221, file: !5222, line: 62, baseType: !4849, size: 64, offset: 384)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !5221, file: !5222, line: 64, baseType: !4858, size: 64, offset: 448)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !5221, file: !5222, line: 66, baseType: !4483, size: 64, offset: 512)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !5221, file: !5222, line: 67, baseType: !5240, size: 64, offset: 576)
!5240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5241, size: 64)
!5241 = !DISubroutineType(types: !5242)
!5242 = !{!321, !4841}
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !5221, file: !5222, line: 69, baseType: !5244, size: 64, offset: 640)
!5244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5245, size: 64)
!5245 = !DISubroutineType(types: !5246)
!5246 = !{null, !4841, !4515, !4516}
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5221, file: !5222, line: 71, baseType: !4853, size: 64, offset: 704)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4822, file: !136, line: 785, baseType: !694, size: 64, offset: 5440)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4822, file: !136, line: 787, baseType: !4849, size: 64, offset: 5504)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4822, file: !136, line: 788, baseType: !5251, size: 64, offset: 5568)
!5251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5252, size: 64)
!5252 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !136, line: 46, flags: DIFlagFwdDecl)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4822, file: !136, line: 789, baseType: !5254, size: 64, offset: 5632)
!5254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5255, size: 64)
!5255 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !136, line: 48, flags: DIFlagFwdDecl)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4822, file: !136, line: 791, baseType: !5257, size: 64, offset: 5696)
!5257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5258, size: 64)
!5258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !136, line: 597, size: 128, elements: !5259)
!5259 = !{!5260, !5261, !5262, !5263, !5264}
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !5258, file: !136, line: 598, baseType: !158, size: 32)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !5258, file: !136, line: 599, baseType: !167, size: 32, offset: 32)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !5258, file: !136, line: 600, baseType: !172, size: 32, offset: 64)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !5258, file: !136, line: 601, baseType: !527, size: 8, offset: 96)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !5258, file: !136, line: 602, baseType: !527, size: 8, offset: 104)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4822, file: !136, line: 793, baseType: !177, size: 32, offset: 5760)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4822, file: !136, line: 795, baseType: !527, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4822, file: !136, line: 796, baseType: !527, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4822, file: !136, line: 797, baseType: !527, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4822, file: !136, line: 798, baseType: !527, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4822, file: !136, line: 799, baseType: !527, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_status", scope: !416, file: !184, line: 451, baseType: !150, size: 32, offset: 1536)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "nr_requests", scope: !416, file: !184, line: 457, baseType: !441, size: 64, offset: 1600)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pad_mask", scope: !416, file: !184, line: 459, baseType: !35, size: 32, offset: 1664)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "rq_timeout", scope: !416, file: !184, line: 466, baseType: !35, size: 32, offset: 1696)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !416, file: !184, line: 468, baseType: !467, size: 320, offset: 1728)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_work", scope: !416, file: !184, line: 469, baseType: !447, size: 256, offset: 2048)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active_requests_shared_tags", scope: !416, file: !184, line: 471, baseType: !388, size: 32, offset: 2304)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "sched_shared_tags", scope: !416, file: !184, line: 473, baseType: !562, size: 64, offset: 2368)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !416, file: !184, line: 475, baseType: !435, size: 128, offset: 2432)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_pols", scope: !416, file: !184, line: 477, baseType: !495, size: 64, offset: 2560)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "root_blkg", scope: !416, file: !184, line: 478, baseType: !3436, size: 64, offset: 2624)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "blkg_list", scope: !416, file: !184, line: 479, baseType: !435, size: 128, offset: 2688)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_mutex", scope: !416, file: !184, line: 480, baseType: !973, size: 256, offset: 2816)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !416, file: !184, line: 483, baseType: !5285, size: 960, offset: 3072)
!5285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_limits", file: !184, line: 300, size: 960, elements: !5286)
!5286 = !{!5287, !5288, !5289, !5290, !5291, !5292, !5293, !5294, !5295, !5296, !5297, !5298, !5299, !5300, !5301, !5302, !5303, !5304, !5305, !5306, !5307, !5308, !5309, !5310, !5311, !5312, !5313, !5314, !5315, !5316}
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "bounce", scope: !5285, file: !184, line: 301, baseType: !183, size: 32)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "seg_boundary_mask", scope: !5285, file: !184, line: 302, baseType: !441, size: 64, offset: 64)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !5285, file: !184, line: 303, baseType: !441, size: 64, offset: 128)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_sectors", scope: !5285, file: !184, line: 305, baseType: !35, size: 32, offset: 192)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "max_dev_sectors", scope: !5285, file: !184, line: 306, baseType: !35, size: 32, offset: 224)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_sectors", scope: !5285, file: !184, line: 307, baseType: !35, size: 32, offset: 256)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !5285, file: !184, line: 308, baseType: !35, size: 32, offset: 288)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "max_user_sectors", scope: !5285, file: !184, line: 309, baseType: !35, size: 32, offset: 320)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !5285, file: !184, line: 310, baseType: !35, size: 32, offset: 352)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "physical_block_size", scope: !5285, file: !184, line: 311, baseType: !35, size: 32, offset: 384)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "logical_block_size", scope: !5285, file: !184, line: 312, baseType: !35, size: 32, offset: 416)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_offset", scope: !5285, file: !184, line: 313, baseType: !35, size: 32, offset: 448)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "io_min", scope: !5285, file: !184, line: 314, baseType: !35, size: 32, offset: 480)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "io_opt", scope: !5285, file: !184, line: 315, baseType: !35, size: 32, offset: 512)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_sectors", scope: !5285, file: !184, line: 316, baseType: !35, size: 32, offset: 544)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_discard_sectors", scope: !5285, file: !184, line: 317, baseType: !35, size: 32, offset: 576)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "max_secure_erase_sectors", scope: !5285, file: !184, line: 318, baseType: !35, size: 32, offset: 608)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_zeroes_sectors", scope: !5285, file: !184, line: 319, baseType: !35, size: 32, offset: 640)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "max_zone_append_sectors", scope: !5285, file: !184, line: 320, baseType: !35, size: 32, offset: 672)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "discard_granularity", scope: !5285, file: !184, line: 321, baseType: !35, size: 32, offset: 704)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "discard_alignment", scope: !5285, file: !184, line: 322, baseType: !35, size: 32, offset: 736)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "zone_write_granularity", scope: !5285, file: !184, line: 323, baseType: !35, size: 32, offset: 768)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "max_segments", scope: !5285, file: !184, line: 325, baseType: !262, size: 16, offset: 800)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "max_integrity_segments", scope: !5285, file: !184, line: 326, baseType: !262, size: 16, offset: 816)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_segments", scope: !5285, file: !184, line: 327, baseType: !262, size: 16, offset: 832)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "misaligned", scope: !5285, file: !184, line: 329, baseType: !233, size: 8, offset: 848)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "discard_misaligned", scope: !5285, file: !184, line: 330, baseType: !233, size: 8, offset: 856)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "raid_partial_stripes_expensive", scope: !5285, file: !184, line: 331, baseType: !233, size: 8, offset: 864)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "zoned", scope: !5285, file: !184, line: 332, baseType: !188, size: 32, offset: 896)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alignment", scope: !5285, file: !184, line: 339, baseType: !35, size: 32, offset: 928)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "required_elevator_features", scope: !416, file: !184, line: 485, baseType: !35, size: 32, offset: 4032)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !416, file: !184, line: 487, baseType: !151, size: 32, offset: 4064)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "blk_trace", scope: !416, file: !184, line: 489, baseType: !5320, size: 64, offset: 4096)
!5320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5321, size: 64)
!5321 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_trace", file: !184, line: 31, flags: DIFlagFwdDecl)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !416, file: !184, line: 494, baseType: !504, size: 64, offset: 4160)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "flush_list", scope: !416, file: !184, line: 495, baseType: !435, size: 128, offset: 4224)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_list", scope: !416, file: !184, line: 497, baseType: !435, size: 128, offset: 4352)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_lock", scope: !416, file: !184, line: 498, baseType: !368, size: 32, offset: 4480)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_work", scope: !416, file: !184, line: 499, baseType: !443, size: 704, offset: 4544)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !416, file: !184, line: 501, baseType: !973, size: 256, offset: 5248)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_dir_lock", scope: !416, file: !184, line: 502, baseType: !973, size: 256, offset: 5504)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_list", scope: !416, file: !184, line: 508, baseType: !435, size: 128, offset: 5760)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_lock", scope: !416, file: !184, line: 509, baseType: !368, size: 32, offset: 5888)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_depth", scope: !416, file: !184, line: 511, baseType: !151, size: 32, offset: 5920)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !416, file: !184, line: 517, baseType: !1178, size: 128, align: 64, offset: 5952)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_wq", scope: !416, file: !184, line: 518, baseType: !579, size: 192, offset: 6080)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_lock", scope: !416, file: !184, line: 523, baseType: !973, size: 256, offset: 6272)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "quiesce_depth", scope: !416, file: !184, line: 525, baseType: !151, size: 32, offset: 6528)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set", scope: !416, file: !184, line: 527, baseType: !4765, size: 64, offset: 6592)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set_list", scope: !416, file: !184, line: 528, baseType: !435, size: 128, offset: 6656)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !416, file: !184, line: 530, baseType: !757, size: 64, offset: 6784)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "sched_debugfs_dir", scope: !416, file: !184, line: 531, baseType: !757, size: 64, offset: 6848)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "rqos_debugfs_dir", scope: !416, file: !184, line: 532, baseType: !757, size: 64, offset: 6912)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !416, file: !184, line: 536, baseType: !973, size: 256, offset: 6976)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "mq_sysfs_init_done", scope: !416, file: !184, line: 538, baseType: !527, size: 8, offset: 7232)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !408, file: !409, line: 45, baseType: !5344, size: 64, offset: 256)
!5344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5345, size: 64)
!5345 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !409, line: 45, flags: DIFlagFwdDecl)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !408, file: !409, line: 46, baseType: !441, size: 64, offset: 320)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !408, file: !409, line: 47, baseType: !527, size: 8, offset: 384)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !408, file: !409, line: 48, baseType: !229, size: 8, offset: 392)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !408, file: !409, line: 49, baseType: !527, size: 8, offset: 400)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !408, file: !409, line: 50, baseType: !527, size: 8, offset: 408)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !408, file: !409, line: 51, baseType: !871, size: 32, offset: 416)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !408, file: !409, line: 52, baseType: !388, size: 32, offset: 448)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !408, file: !409, line: 53, baseType: !368, size: 32, offset: 480)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !408, file: !409, line: 54, baseType: !722, size: 64, offset: 512)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !408, file: !409, line: 55, baseType: !329, size: 64, offset: 576)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !408, file: !409, line: 56, baseType: !329, size: 64, offset: 640)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !408, file: !409, line: 57, baseType: !5358, size: 64, offset: 704)
!5358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5359, size: 64)
!5359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5360)
!5360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !184, line: 1477, size: 128, elements: !5361)
!5361 = !{!5362, !5366}
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dead", scope: !5360, file: !184, line: 1478, baseType: !5363, size: 64)
!5363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5364, size: 64)
!5364 = !DISubroutineType(types: !5365)
!5365 = !{null, !407, !527}
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !5360, file: !184, line: 1483, baseType: !5367, size: 64, offset: 64)
!5367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5368, size: 64)
!5368 = !DISubroutineType(types: !5369)
!5369 = !{null, !407}
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !408, file: !409, line: 58, baseType: !973, size: 256, offset: 768)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !408, file: !409, line: 60, baseType: !151, size: 32, offset: 1024)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !408, file: !409, line: 61, baseType: !151, size: 32, offset: 1056)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !408, file: !409, line: 62, baseType: !610, size: 64, offset: 1088)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !408, file: !409, line: 65, baseType: !973, size: 256, offset: 1152)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !408, file: !409, line: 66, baseType: !866, size: 64, offset: 1408)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !408, file: !409, line: 68, baseType: !5377, size: 64, offset: 1472)
!5377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5378, size: 64)
!5378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !184, line: 63, size: 808, elements: !5379)
!5379 = !{!5380, !5384}
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !5378, file: !184, line: 64, baseType: !5381, size: 296)
!5381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !5382)
!5382 = !{!5383}
!5383 = !DISubrange(count: 37)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "volname", scope: !5378, file: !184, line: 65, baseType: !5385, size: 512, offset: 296)
!5385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 512, elements: !648)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !408, file: !409, line: 72, baseType: !527, size: 8, offset: 1536)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !408, file: !409, line: 77, baseType: !4822, size: 5824, offset: 1600)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !352, file: !184, line: 145, baseType: !5389, size: 64, offset: 576)
!5389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5390, size: 64)
!5390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5391)
!5391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device_operations", file: !184, line: 1388, size: 1152, elements: !5392)
!5392 = !{!5393, !5395, !5399, !5404, !5408, !5412, !5413, !5417, !5418, !5424, !5428, !5429, !5433, !5458, !5462, !5467, !5468, !5472}
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "submit_bio", scope: !5391, file: !184, line: 1389, baseType: !5394, size: 64)
!5394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "poll_bio", scope: !5391, file: !184, line: 1390, baseType: !5396, size: 64, offset: 64)
!5396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5397, size: 64)
!5397 = !DISubroutineType(types: !5398)
!5398 = !{!151, !3409, !2303, !35}
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5391, file: !184, line: 1392, baseType: !5400, size: 64, offset: 128)
!5400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5401, size: 64)
!5401 = !DISubroutineType(types: !5402)
!5402 = !{!151, !351, !5403}
!5403 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_mode_t", file: !184, line: 115, baseType: !35)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5391, file: !184, line: 1393, baseType: !5405, size: 64, offset: 192)
!5405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5406, size: 64)
!5406 = !DISubroutineType(types: !5407)
!5407 = !{null, !351}
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !5391, file: !184, line: 1394, baseType: !5409, size: 64, offset: 256)
!5409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5410, size: 64)
!5410 = !DISubroutineType(types: !5411)
!5411 = !{!151, !407, !5403, !35, !441}
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !5391, file: !184, line: 1396, baseType: !5409, size: 64, offset: 320)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "check_events", scope: !5391, file: !184, line: 1398, baseType: !5414, size: 64, offset: 384)
!5414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5415, size: 64)
!5415 = !DISubroutineType(types: !5416)
!5416 = !{!35, !351, !35}
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_native_capacity", scope: !5391, file: !184, line: 1400, baseType: !5405, size: 64, offset: 448)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "getgeo", scope: !5391, file: !184, line: 1401, baseType: !5419, size: 64, offset: 512)
!5419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5420, size: 64)
!5420 = !DISubroutineType(types: !5421)
!5421 = !{!151, !407, !5422}
!5422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5423, size: 64)
!5423 = !DICompositeType(tag: DW_TAG_structure_type, name: "hd_geometry", file: !42, line: 56, flags: DIFlagFwdDecl)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_only", scope: !5391, file: !184, line: 1402, baseType: !5425, size: 64, offset: 576)
!5425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5426, size: 64)
!5426 = !DISubroutineType(types: !5427)
!5427 = !{!151, !407, !527}
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "free_disk", scope: !5391, file: !184, line: 1403, baseType: !5405, size: 64, offset: 640)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "swap_slot_free_notify", scope: !5391, file: !184, line: 1405, baseType: !5430, size: 64, offset: 704)
!5430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5431, size: 64)
!5431 = !DISubroutineType(types: !5432)
!5432 = !{null, !407, !441}
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "report_zones", scope: !5391, file: !184, line: 1406, baseType: !5434, size: 64, offset: 768)
!5434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5435, size: 64)
!5435 = !DISubroutineType(types: !5436)
!5436 = !{!151, !351, !308, !35, !5437, !329}
!5437 = !DIDerivedType(tag: DW_TAG_typedef, name: "report_zones_cb", file: !184, line: 342, baseType: !5438)
!5438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5439, size: 64)
!5439 = !DISubroutineType(types: !5440)
!5440 = !{!151, !5441, !35, !329}
!5441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5442, size: 64)
!5442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_zone", file: !5443, line: 106, size: 512, elements: !5444)
!5443 = !DIFile(filename: "./include/uapi/linux/blkzoned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3d5e7016ed7b437a9c2a308f55db1257")
!5444 = !{!5445, !5446, !5447, !5448, !5449, !5450, !5451, !5452, !5453, !5454}
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5442, file: !5443, line: 107, baseType: !311, size: 64)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5442, file: !5443, line: 108, baseType: !311, size: 64, offset: 64)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !5442, file: !5443, line: 109, baseType: !311, size: 64, offset: 128)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5442, file: !5443, line: 110, baseType: !231, size: 8, offset: 192)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !5442, file: !5443, line: 111, baseType: !231, size: 8, offset: 200)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "non_seq", scope: !5442, file: !5443, line: 112, baseType: !231, size: 8, offset: 208)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5442, file: !5443, line: 113, baseType: !231, size: 8, offset: 216)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !5442, file: !5443, line: 114, baseType: !282, size: 32, offset: 224)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !5442, file: !5443, line: 115, baseType: !311, size: 64, offset: 256)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5442, file: !5443, line: 116, baseType: !5455, size: 192, offset: 320)
!5455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 192, elements: !5456)
!5456 = !{!5457}
!5457 = !DISubrange(count: 24)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !5391, file: !184, line: 1408, baseType: !5459, size: 64, offset: 832)
!5459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5460, size: 64)
!5460 = !DISubroutineType(types: !5461)
!5461 = !{!645, !351, !4847}
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "get_unique_id", scope: !5391, file: !184, line: 1410, baseType: !5463, size: 64, offset: 896)
!5463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5464, size: 64)
!5464 = !DISubroutineType(types: !5465)
!5465 = !{!151, !351, !5466, !193}
!5466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5391, file: !184, line: 1412, baseType: !903, size: 64, offset: 960)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "pr_ops", scope: !5391, file: !184, line: 1413, baseType: !5469, size: 64, offset: 1024)
!5469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5470, size: 64)
!5470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5471)
!5471 = !DICompositeType(tag: DW_TAG_structure_type, name: "pr_ops", file: !184, line: 37, flags: DIFlagFwdDecl)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "alternative_gpt_sector", scope: !5391, file: !184, line: 1420, baseType: !5473, size: 64, offset: 1088)
!5473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5474, size: 64)
!5474 = !DISubroutineType(types: !5475)
!5475 = !{!151, !351, !4454}
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !352, file: !184, line: 146, baseType: !415, size: 64, offset: 640)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !352, file: !184, line: 147, baseType: !329, size: 64, offset: 704)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "bio_split", scope: !352, file: !184, line: 149, baseType: !3452, size: 1984, offset: 768)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !352, file: !184, line: 151, baseType: !151, size: 32, offset: 2752)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !352, file: !184, line: 152, baseType: !441, size: 64, offset: 2816)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "open_mutex", scope: !352, file: !184, line: 161, baseType: !973, size: 256, offset: 2880)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "open_partitions", scope: !352, file: !184, line: 162, baseType: !35, size: 32, offset: 3136)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !352, file: !184, line: 164, baseType: !2670, size: 64, offset: 3200)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "queue_kobj", scope: !352, file: !184, line: 165, baseType: !602, size: 512, offset: 3264)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "slave_dir", scope: !352, file: !184, line: 166, baseType: !610, size: 64, offset: 3776)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "slave_bdevs", scope: !352, file: !184, line: 168, baseType: !435, size: 128, offset: 3840)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !352, file: !184, line: 170, baseType: !5488, size: 64, offset: 3968)
!5488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5489, size: 64)
!5489 = !DICompositeType(tag: DW_TAG_structure_type, name: "timer_rand_state", file: !184, line: 170, flags: DIFlagFwdDecl)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "sync_io", scope: !352, file: !184, line: 171, baseType: !388, size: 32, offset: 4032)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "ev", scope: !352, file: !184, line: 172, baseType: !5492, size: 64, offset: 4096)
!5492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5493, size: 64)
!5493 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_events", file: !184, line: 104, flags: DIFlagFwdDecl)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "cdi", scope: !352, file: !184, line: 197, baseType: !5495, size: 64, offset: 4160)
!5495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5496, size: 64)
!5496 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdrom_device_info", file: !184, line: 197, flags: DIFlagFwdDecl)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !352, file: !184, line: 199, baseType: !151, size: 32, offset: 4224)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !352, file: !184, line: 200, baseType: !5499, size: 64, offset: 4288)
!5499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5500, size: 64)
!5500 = !DICompositeType(tag: DW_TAG_structure_type, name: "badblocks", file: !184, line: 105, flags: DIFlagFwdDecl)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "lockdep_map", scope: !352, file: !184, line: 201, baseType: !1215, offset: 4352)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "diskseq", scope: !352, file: !184, line: 202, baseType: !310, size: 64, offset: 4352)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "open_mode", scope: !352, file: !184, line: 203, baseType: !5403, size: 32, offset: 4416)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ranges", scope: !352, file: !184, line: 209, baseType: !5505, size: 64, offset: 4480)
!5505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5506, size: 64)
!5506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_ranges", file: !184, line: 384, size: 576, elements: !5507)
!5507 = !{!5508, !5509, !5510, !5511}
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !5506, file: !184, line: 385, baseType: !602, size: 512)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_registered", scope: !5506, file: !184, line: 386, baseType: !527, size: 8, offset: 512)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ia_ranges", scope: !5506, file: !184, line: 387, baseType: !35, size: 32, offset: 544)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "ia_range", scope: !5506, file: !184, line: 388, baseType: !5512, offset: 576)
!5512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5513, elements: !1469)
!5513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_range", file: !184, line: 378, size: 640, elements: !5514)
!5514 = !{!5515, !5516, !5517}
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !5513, file: !184, line: 379, baseType: !602, size: 512)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "sector", scope: !5513, file: !184, line: 380, baseType: !308, size: 64, offset: 512)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sectors", scope: !5513, file: !184, line: 381, baseType: !308, size: 64, offset: 576)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !348, file: !333, line: 12, baseType: !358, size: 256, offset: 64)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !348, file: !333, line: 19, baseType: !5520, size: 64, offset: 320)
!5520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5521, size: 64)
!5521 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !348, file: !333, line: 13, size: 1024, elements: !5522)
!5522 = !{!5523, !5524, !5525, !5526, !5527}
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !5521, file: !333, line: 14, baseType: !308, size: 64)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5521, file: !333, line: 15, baseType: !308, size: 64, offset: 64)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5521, file: !333, line: 16, baseType: !151, size: 32, offset: 128)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "has_info", scope: !5521, file: !333, line: 17, baseType: !527, size: 8, offset: 160)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5521, file: !333, line: 18, baseType: !5378, size: 808, offset: 168)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !348, file: !333, line: 20, baseType: !151, size: 32, offset: 384)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !348, file: !333, line: 21, baseType: !151, size: 32, offset: 416)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "access_beyond_eod", scope: !348, file: !333, line: 22, baseType: !527, size: 8, offset: 448)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "pp_buf", scope: !348, file: !333, line: 23, baseType: !645, size: 64, offset: 512)
!5532 = !{i32 7, !"Dwarf Version", i32 5}
!5533 = !{i32 2, !"Debug Info Version", i32 3}
!5534 = !{i32 1, !"wchar_size", i32 2}
!5535 = !{i32 8, !"cf-protection-branch", i32 1}
!5536 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5537 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5538 = !{i32 1, !"Code Model", i32 2}
!5539 = !{i32 1, !"override-stack-alignment", i32 8}
!5540 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5541 = distinct !DISubprogram(name: "msdos_partition", scope: !2, file: !2, line: 581, type: !5542, scopeLine: 582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !5544)
!5542 = !DISubroutineType(types: !5543)
!5543 = !{!151, !347}
!5544 = !{!5545, !5546, !5547, !5552, !5554, !5555, !5556, !5557, !5558, !5562, !5563, !5566, !5568, !5569, !5571, !5572, !5576}
!5545 = !DILocalVariable(name: "state", arg: 1, scope: !5541, file: !2, line: 581, type: !347)
!5546 = !DILocalVariable(name: "sector_size", scope: !5541, file: !2, line: 583, type: !308)
!5547 = !DILocalVariable(name: "sect", scope: !5541, file: !2, line: 584, type: !5548)
!5548 = !DIDerivedType(tag: DW_TAG_typedef, name: "Sector", file: !333, line: 28, baseType: !5549)
!5549 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !333, line: 26, size: 64, elements: !5550)
!5550 = !{!5551}
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !5549, file: !333, line: 27, baseType: !1732, size: 64)
!5552 = !DILocalVariable(name: "data", scope: !5541, file: !2, line: 585, type: !5553)
!5553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!5554 = !DILocalVariable(name: "p", scope: !5541, file: !2, line: 586, type: !225)
!5555 = !DILocalVariable(name: "fb", scope: !5541, file: !2, line: 587, type: !246)
!5556 = !DILocalVariable(name: "slot", scope: !5541, file: !2, line: 588, type: !151)
!5557 = !DILocalVariable(name: "disksig", scope: !5541, file: !2, line: 589, type: !320)
!5558 = !DILocalVariable(name: "start", scope: !5559, file: !2, line: 664, type: !308)
!5559 = distinct !DILexicalBlock(scope: !5560, file: !2, line: 663, column: 43)
!5560 = distinct !DILexicalBlock(scope: !5561, file: !2, line: 663, column: 2)
!5561 = distinct !DILexicalBlock(scope: !5541, file: !2, line: 663, column: 2)
!5562 = !DILocalVariable(name: "size", scope: !5559, file: !2, line: 665, type: !308)
!5563 = !DILocalVariable(name: "n", scope: !5564, file: !2, line: 676, type: !308)
!5564 = distinct !DILexicalBlock(scope: !5565, file: !2, line: 669, column: 33)
!5565 = distinct !DILexicalBlock(scope: !5559, file: !2, line: 669, column: 7)
!5566 = !DILocalVariable(name: "__UNIQUE_ID___x354", scope: !5567, file: !2, line: 678, type: !308)
!5567 = distinct !DILexicalBlock(scope: !5564, file: !2, line: 678, column: 8)
!5568 = !DILocalVariable(name: "__UNIQUE_ID___y355", scope: !5567, file: !2, line: 678, type: !308)
!5569 = !DILocalVariable(name: "__UNIQUE_ID___x352", scope: !5570, file: !2, line: 678, type: !308)
!5570 = distinct !DILexicalBlock(scope: !5567, file: !2, line: 678, column: 8)
!5571 = !DILocalVariable(name: "__UNIQUE_ID___y353", scope: !5570, file: !2, line: 678, type: !308)
!5572 = !DILocalVariable(name: "id", scope: !5573, file: !2, line: 701, type: !233)
!5573 = distinct !DILexicalBlock(scope: !5574, file: !2, line: 700, column: 43)
!5574 = distinct !DILexicalBlock(scope: !5575, file: !2, line: 700, column: 2)
!5575 = distinct !DILexicalBlock(scope: !5541, file: !2, line: 700, column: 2)
!5576 = !DILocalVariable(name: "n", scope: !5573, file: !2, line: 702, type: !151)
!5577 = !DILocation(line: 581, column: 47, scope: !5541)
!5578 = !DILocation(line: 583, column: 2, scope: !5541)
!5579 = !DILocation(line: 583, column: 11, scope: !5541)
!5580 = !DILocation(line: 584, column: 2, scope: !5541)
!5581 = !DILocation(line: 584, column: 9, scope: !5541)
!5582 = !DILocation(line: 585, column: 2, scope: !5541)
!5583 = !DILocation(line: 585, column: 17, scope: !5541)
!5584 = !DILocation(line: 586, column: 2, scope: !5541)
!5585 = !DILocation(line: 586, column: 26, scope: !5541)
!5586 = !DILocation(line: 587, column: 2, scope: !5541)
!5587 = !DILocation(line: 587, column: 26, scope: !5541)
!5588 = !DILocation(line: 588, column: 2, scope: !5541)
!5589 = !DILocation(line: 588, column: 6, scope: !5541)
!5590 = !DILocation(line: 589, column: 2, scope: !5541)
!5591 = !DILocation(line: 589, column: 6, scope: !5541)
!5592 = !DILocation(line: 591, column: 41, scope: !5541)
!5593 = !DILocation(line: 591, column: 48, scope: !5541)
!5594 = !DILocation(line: 591, column: 54, scope: !5541)
!5595 = !DILocation(line: 591, column: 16, scope: !5541)
!5596 = !DILocation(line: 591, column: 61, scope: !5541)
!5597 = !DILocation(line: 591, column: 14, scope: !5541)
!5598 = !DILocation(line: 592, column: 26, scope: !5541)
!5599 = !DILocation(line: 592, column: 9, scope: !5541)
!5600 = !DILocation(line: 592, column: 7, scope: !5541)
!5601 = !DILocation(line: 593, column: 7, scope: !5602)
!5602 = distinct !DILexicalBlock(scope: !5541, file: !2, line: 593, column: 6)
!5603 = !DILocation(line: 593, column: 6, scope: !5541)
!5604 = !DILocation(line: 594, column: 3, scope: !5602)
!5605 = !DILocation(line: 600, column: 24, scope: !5606)
!5606 = distinct !DILexicalBlock(scope: !5541, file: !2, line: 600, column: 6)
!5607 = !DILocation(line: 600, column: 31, scope: !5606)
!5608 = !DILocation(line: 600, column: 6, scope: !5606)
!5609 = !DILocation(line: 600, column: 6, scope: !5541)
!5610 = !DILocation(line: 601, column: 3, scope: !5611)
!5611 = distinct !DILexicalBlock(scope: !5606, file: !2, line: 600, column: 38)
!5612 = !DILocation(line: 605, column: 11, scope: !5611)
!5613 = !DILocation(line: 605, column: 18, scope: !5611)
!5614 = !DILocation(line: 605, column: 3, scope: !5611)
!5615 = !DILocation(line: 606, column: 3, scope: !5611)
!5616 = !DILocation(line: 610, column: 27, scope: !5617)
!5617 = distinct !DILexicalBlock(scope: !5541, file: !2, line: 610, column: 6)
!5618 = !DILocation(line: 610, column: 32, scope: !5617)
!5619 = !DILocation(line: 610, column: 7, scope: !5617)
!5620 = !DILocation(line: 610, column: 6, scope: !5541)
!5621 = !DILocation(line: 611, column: 3, scope: !5622)
!5622 = distinct !DILexicalBlock(scope: !5617, file: !2, line: 610, column: 40)
!5623 = !DILocation(line: 612, column: 3, scope: !5622)
!5624 = !DILocation(line: 621, column: 34, scope: !5541)
!5625 = !DILocation(line: 621, column: 39, scope: !5541)
!5626 = !DILocation(line: 621, column: 4, scope: !5541)
!5627 = !DILocation(line: 622, column: 12, scope: !5628)
!5628 = distinct !DILexicalBlock(scope: !5541, file: !2, line: 622, column: 2)
!5629 = !DILocation(line: 622, column: 7, scope: !5628)
!5630 = !DILocation(line: 622, column: 17, scope: !5631)
!5631 = distinct !DILexicalBlock(scope: !5628, file: !2, line: 622, column: 2)
!5632 = !DILocation(line: 622, column: 22, scope: !5631)
!5633 = !DILocation(line: 622, column: 2, scope: !5628)
!5634 = !DILocation(line: 623, column: 7, scope: !5635)
!5635 = distinct !DILexicalBlock(scope: !5636, file: !2, line: 623, column: 7)
!5636 = distinct !DILexicalBlock(scope: !5631, file: !2, line: 622, column: 41)
!5637 = !DILocation(line: 623, column: 10, scope: !5635)
!5638 = !DILocation(line: 623, column: 19, scope: !5635)
!5639 = !DILocation(line: 623, column: 24, scope: !5635)
!5640 = !DILocation(line: 623, column: 27, scope: !5635)
!5641 = !DILocation(line: 623, column: 30, scope: !5635)
!5642 = !DILocation(line: 623, column: 39, scope: !5635)
!5643 = !DILocation(line: 623, column: 7, scope: !5636)
!5644 = !DILocation(line: 629, column: 36, scope: !5645)
!5645 = distinct !DILexicalBlock(scope: !5635, file: !2, line: 623, column: 48)
!5646 = !DILocation(line: 629, column: 7, scope: !5645)
!5647 = !DILocation(line: 630, column: 8, scope: !5648)
!5648 = distinct !DILexicalBlock(scope: !5645, file: !2, line: 630, column: 8)
!5649 = !DILocation(line: 630, column: 13, scope: !5648)
!5650 = !DILocation(line: 630, column: 18, scope: !5648)
!5651 = !DILocation(line: 630, column: 21, scope: !5648)
!5652 = !DILocation(line: 630, column: 25, scope: !5648)
!5653 = !DILocation(line: 630, column: 34, scope: !5648)
!5654 = !DILocation(line: 630, column: 37, scope: !5648)
!5655 = !DILocation(line: 630, column: 41, scope: !5648)
!5656 = !DILocation(line: 631, column: 5, scope: !5648)
!5657 = !DILocation(line: 631, column: 24, scope: !5648)
!5658 = !DILocation(line: 631, column: 28, scope: !5648)
!5659 = !DILocation(line: 631, column: 8, scope: !5648)
!5660 = !DILocation(line: 630, column: 8, scope: !5645)
!5661 = !DILocation(line: 632, column: 13, scope: !5662)
!5662 = distinct !DILexicalBlock(scope: !5648, file: !2, line: 631, column: 36)
!5663 = !DILocation(line: 632, column: 20, scope: !5662)
!5664 = !DILocation(line: 632, column: 5, scope: !5662)
!5665 = !DILocation(line: 633, column: 5, scope: !5662)
!5666 = !DILocation(line: 634, column: 5, scope: !5662)
!5667 = !DILocation(line: 636, column: 5, scope: !5668)
!5668 = distinct !DILexicalBlock(scope: !5648, file: !2, line: 635, column: 11)
!5669 = !DILocation(line: 637, column: 5, scope: !5668)
!5670 = !DILocation(line: 640, column: 2, scope: !5636)
!5671 = !DILocation(line: 622, column: 32, scope: !5631)
!5672 = !DILocation(line: 622, column: 37, scope: !5631)
!5673 = !DILocation(line: 622, column: 2, scope: !5631)
!5674 = distinct !{!5674, !5633, !5675, !5676, !5677}
!5675 = !DILocation(line: 640, column: 2, scope: !5628)
!5676 = !{!"llvm.loop.mustprogress"}
!5677 = !{!"llvm.loop.unroll.disable"}
!5678 = !DILocation(line: 643, column: 34, scope: !5541)
!5679 = !DILocation(line: 643, column: 39, scope: !5541)
!5680 = !DILocation(line: 643, column: 4, scope: !5541)
!5681 = !DILocation(line: 644, column: 12, scope: !5682)
!5682 = distinct !DILexicalBlock(scope: !5541, file: !2, line: 644, column: 2)
!5683 = !DILocation(line: 644, column: 7, scope: !5682)
!5684 = !DILocation(line: 644, column: 18, scope: !5685)
!5685 = distinct !DILexicalBlock(scope: !5682, file: !2, line: 644, column: 2)
!5686 = !DILocation(line: 644, column: 23, scope: !5685)
!5687 = !DILocation(line: 644, column: 2, scope: !5682)
!5688 = !DILocation(line: 646, column: 7, scope: !5689)
!5689 = distinct !DILexicalBlock(scope: !5690, file: !2, line: 646, column: 7)
!5690 = distinct !DILexicalBlock(scope: !5685, file: !2, line: 644, column: 43)
!5691 = !DILocation(line: 646, column: 10, scope: !5689)
!5692 = !DILocation(line: 646, column: 18, scope: !5689)
!5693 = !DILocation(line: 646, column: 7, scope: !5690)
!5694 = !DILocation(line: 647, column: 4, scope: !5695)
!5695 = distinct !DILexicalBlock(scope: !5689, file: !2, line: 646, column: 46)
!5696 = !DILocation(line: 648, column: 4, scope: !5695)
!5697 = !DILocation(line: 650, column: 2, scope: !5690)
!5698 = !DILocation(line: 644, column: 34, scope: !5685)
!5699 = !DILocation(line: 644, column: 39, scope: !5685)
!5700 = !DILocation(line: 644, column: 2, scope: !5685)
!5701 = distinct !{!5701, !5687, !5702, !5676, !5677}
!5702 = !DILocation(line: 650, column: 2, scope: !5682)
!5703 = !DILocation(line: 652, column: 34, scope: !5541)
!5704 = !DILocation(line: 652, column: 39, scope: !5541)
!5705 = !DILocation(line: 652, column: 4, scope: !5541)
!5706 = !DILocation(line: 654, column: 36, scope: !5541)
!5707 = !DILocation(line: 654, column: 41, scope: !5541)
!5708 = !DILocation(line: 654, column: 12, scope: !5541)
!5709 = !DILocation(line: 654, column: 10, scope: !5541)
!5710 = !DILocation(line: 662, column: 2, scope: !5541)
!5711 = !DILocation(line: 662, column: 9, scope: !5541)
!5712 = !DILocation(line: 662, column: 14, scope: !5541)
!5713 = !DILocation(line: 663, column: 12, scope: !5561)
!5714 = !DILocation(line: 663, column: 7, scope: !5561)
!5715 = !DILocation(line: 663, column: 18, scope: !5560)
!5716 = !DILocation(line: 663, column: 23, scope: !5560)
!5717 = !DILocation(line: 663, column: 2, scope: !5561)
!5718 = !DILocation(line: 664, column: 3, scope: !5559)
!5719 = !DILocation(line: 664, column: 12, scope: !5559)
!5720 = !DILocation(line: 664, column: 31, scope: !5559)
!5721 = !DILocation(line: 664, column: 20, scope: !5559)
!5722 = !DILocation(line: 664, column: 34, scope: !5559)
!5723 = !DILocation(line: 664, column: 33, scope: !5559)
!5724 = !DILocation(line: 665, column: 3, scope: !5559)
!5725 = !DILocation(line: 665, column: 12, scope: !5559)
!5726 = !DILocation(line: 665, column: 28, scope: !5559)
!5727 = !DILocation(line: 665, column: 19, scope: !5559)
!5728 = !DILocation(line: 665, column: 31, scope: !5559)
!5729 = !DILocation(line: 665, column: 30, scope: !5559)
!5730 = !DILocation(line: 667, column: 8, scope: !5731)
!5731 = distinct !DILexicalBlock(scope: !5559, file: !2, line: 667, column: 7)
!5732 = !DILocation(line: 667, column: 7, scope: !5559)
!5733 = !DILocation(line: 668, column: 4, scope: !5731)
!5734 = !DILocation(line: 669, column: 29, scope: !5565)
!5735 = !DILocation(line: 669, column: 7, scope: !5565)
!5736 = !DILocation(line: 669, column: 7, scope: !5559)
!5737 = !DILocation(line: 676, column: 4, scope: !5564)
!5738 = !DILocation(line: 676, column: 13, scope: !5564)
!5739 = !DILocation(line: 678, column: 8, scope: !5567)
!5740 = !DILocation(line: 678, column: 8, scope: !5570)
!5741 = !DILocation(line: 678, column: 8, scope: !5564)
!5742 = !DILocation(line: 678, column: 6, scope: !5564)
!5743 = !DILocation(line: 679, column: 18, scope: !5564)
!5744 = !DILocation(line: 679, column: 25, scope: !5564)
!5745 = !DILocation(line: 679, column: 31, scope: !5564)
!5746 = !DILocation(line: 679, column: 38, scope: !5564)
!5747 = !DILocation(line: 679, column: 4, scope: !5564)
!5748 = !DILocation(line: 681, column: 12, scope: !5564)
!5749 = !DILocation(line: 681, column: 19, scope: !5564)
!5750 = !DILocation(line: 681, column: 4, scope: !5564)
!5751 = !DILocation(line: 682, column: 19, scope: !5564)
!5752 = !DILocation(line: 682, column: 26, scope: !5564)
!5753 = !DILocation(line: 682, column: 33, scope: !5564)
!5754 = !DILocation(line: 682, column: 39, scope: !5564)
!5755 = !DILocation(line: 682, column: 4, scope: !5564)
!5756 = !DILocation(line: 683, column: 12, scope: !5564)
!5757 = !DILocation(line: 683, column: 19, scope: !5564)
!5758 = !DILocation(line: 683, column: 4, scope: !5564)
!5759 = !DILocation(line: 685, column: 3, scope: !5565)
!5760 = !DILocation(line: 686, column: 17, scope: !5559)
!5761 = !DILocation(line: 686, column: 24, scope: !5559)
!5762 = !DILocation(line: 686, column: 30, scope: !5559)
!5763 = !DILocation(line: 686, column: 37, scope: !5559)
!5764 = !DILocation(line: 686, column: 3, scope: !5559)
!5765 = !DILocation(line: 687, column: 12, scope: !5559)
!5766 = !DILocation(line: 687, column: 19, scope: !5559)
!5767 = !DILocation(line: 687, column: 25, scope: !5559)
!5768 = !DILocation(line: 687, column: 3, scope: !5559)
!5769 = !DILocation(line: 688, column: 7, scope: !5770)
!5770 = distinct !DILexicalBlock(scope: !5559, file: !2, line: 688, column: 7)
!5771 = !DILocation(line: 688, column: 10, scope: !5770)
!5772 = !DILocation(line: 688, column: 18, scope: !5770)
!5773 = !DILocation(line: 688, column: 7, scope: !5559)
!5774 = !DILocation(line: 689, column: 4, scope: !5770)
!5775 = !DILocation(line: 689, column: 11, scope: !5770)
!5776 = !DILocation(line: 689, column: 17, scope: !5770)
!5777 = !DILocation(line: 689, column: 23, scope: !5770)
!5778 = !DILocation(line: 689, column: 29, scope: !5770)
!5779 = !DILocation(line: 690, column: 7, scope: !5780)
!5780 = distinct !DILexicalBlock(scope: !5559, file: !2, line: 690, column: 7)
!5781 = !DILocation(line: 690, column: 10, scope: !5780)
!5782 = !DILocation(line: 690, column: 18, scope: !5780)
!5783 = !DILocation(line: 690, column: 7, scope: !5559)
!5784 = !DILocation(line: 691, column: 12, scope: !5780)
!5785 = !DILocation(line: 691, column: 19, scope: !5780)
!5786 = !DILocation(line: 691, column: 4, scope: !5780)
!5787 = !DILocation(line: 692, column: 7, scope: !5788)
!5788 = distinct !DILexicalBlock(scope: !5559, file: !2, line: 692, column: 7)
!5789 = !DILocation(line: 692, column: 10, scope: !5788)
!5790 = !DILocation(line: 692, column: 18, scope: !5788)
!5791 = !DILocation(line: 692, column: 7, scope: !5559)
!5792 = !DILocation(line: 693, column: 12, scope: !5788)
!5793 = !DILocation(line: 693, column: 19, scope: !5788)
!5794 = !DILocation(line: 693, column: 4, scope: !5788)
!5795 = !DILocation(line: 694, column: 2, scope: !5560)
!5796 = !DILocation(line: 694, column: 2, scope: !5559)
!5797 = !DILocation(line: 663, column: 34, scope: !5560)
!5798 = !DILocation(line: 663, column: 39, scope: !5560)
!5799 = !DILocation(line: 663, column: 2, scope: !5560)
!5800 = distinct !{!5800, !5717, !5801, !5676, !5677}
!5801 = !DILocation(line: 694, column: 2, scope: !5561)
!5802 = !DILocation(line: 696, column: 10, scope: !5541)
!5803 = !DILocation(line: 696, column: 17, scope: !5541)
!5804 = !DILocation(line: 696, column: 2, scope: !5541)
!5805 = !DILocation(line: 699, column: 42, scope: !5541)
!5806 = !DILocation(line: 699, column: 40, scope: !5541)
!5807 = !DILocation(line: 699, column: 4, scope: !5541)
!5808 = !DILocation(line: 700, column: 12, scope: !5575)
!5809 = !DILocation(line: 700, column: 7, scope: !5575)
!5810 = !DILocation(line: 700, column: 18, scope: !5574)
!5811 = !DILocation(line: 700, column: 23, scope: !5574)
!5812 = !DILocation(line: 700, column: 2, scope: !5575)
!5813 = !DILocation(line: 701, column: 3, scope: !5573)
!5814 = !DILocation(line: 701, column: 17, scope: !5573)
!5815 = !DILocation(line: 701, column: 22, scope: !5573)
!5816 = !DILocation(line: 701, column: 25, scope: !5573)
!5817 = !DILocation(line: 702, column: 3, scope: !5573)
!5818 = !DILocation(line: 702, column: 7, scope: !5573)
!5819 = !DILocation(line: 704, column: 17, scope: !5820)
!5820 = distinct !DILexicalBlock(scope: !5573, file: !2, line: 704, column: 7)
!5821 = !DILocation(line: 704, column: 8, scope: !5820)
!5822 = !DILocation(line: 704, column: 7, scope: !5573)
!5823 = !DILocation(line: 705, column: 4, scope: !5820)
!5824 = !DILocation(line: 707, column: 10, scope: !5825)
!5825 = distinct !DILexicalBlock(scope: !5573, file: !2, line: 707, column: 3)
!5826 = !DILocation(line: 707, column: 8, scope: !5825)
!5827 = !DILocation(line: 707, column: 24, scope: !5828)
!5828 = distinct !DILexicalBlock(scope: !5825, file: !2, line: 707, column: 3)
!5829 = !DILocation(line: 707, column: 15, scope: !5828)
!5830 = !DILocation(line: 707, column: 27, scope: !5828)
!5831 = !DILocation(line: 707, column: 33, scope: !5828)
!5832 = !DILocation(line: 707, column: 36, scope: !5828)
!5833 = !DILocation(line: 707, column: 51, scope: !5828)
!5834 = !DILocation(line: 707, column: 42, scope: !5828)
!5835 = !DILocation(line: 707, column: 54, scope: !5828)
!5836 = !DILocation(line: 707, column: 39, scope: !5828)
!5837 = !DILocation(line: 0, scope: !5828)
!5838 = !DILocation(line: 707, column: 3, scope: !5825)
!5839 = !DILocation(line: 707, column: 59, scope: !5828)
!5840 = !DILocation(line: 707, column: 3, scope: !5828)
!5841 = distinct !{!5841, !5838, !5842, !5676, !5677}
!5842 = !DILocation(line: 708, column: 4, scope: !5825)
!5843 = !DILocation(line: 710, column: 17, scope: !5844)
!5844 = distinct !DILexicalBlock(scope: !5573, file: !2, line: 710, column: 7)
!5845 = !DILocation(line: 710, column: 8, scope: !5844)
!5846 = !DILocation(line: 710, column: 20, scope: !5844)
!5847 = !DILocation(line: 710, column: 7, scope: !5573)
!5848 = !DILocation(line: 711, column: 4, scope: !5844)
!5849 = !DILocation(line: 712, column: 12, scope: !5573)
!5850 = !DILocation(line: 712, column: 3, scope: !5573)
!5851 = !DILocation(line: 712, column: 15, scope: !5573)
!5852 = !DILocation(line: 712, column: 21, scope: !5573)
!5853 = !DILocation(line: 712, column: 39, scope: !5573)
!5854 = !DILocation(line: 712, column: 28, scope: !5573)
!5855 = !DILocation(line: 712, column: 44, scope: !5573)
!5856 = !DILocation(line: 712, column: 42, scope: !5573)
!5857 = !DILocation(line: 713, column: 16, scope: !5573)
!5858 = !DILocation(line: 713, column: 7, scope: !5573)
!5859 = !DILocation(line: 713, column: 21, scope: !5573)
!5860 = !DILocation(line: 713, column: 19, scope: !5573)
!5861 = !DILocation(line: 713, column: 34, scope: !5573)
!5862 = !DILocation(line: 714, column: 2, scope: !5574)
!5863 = !DILocation(line: 714, column: 2, scope: !5573)
!5864 = !DILocation(line: 700, column: 34, scope: !5574)
!5865 = !DILocation(line: 700, column: 39, scope: !5574)
!5866 = !DILocation(line: 700, column: 2, scope: !5574)
!5867 = distinct !{!5867, !5812, !5868, !5676, !5677}
!5868 = !DILocation(line: 714, column: 2, scope: !5575)
!5869 = !DILocation(line: 715, column: 2, scope: !5541)
!5870 = !DILocation(line: 716, column: 2, scope: !5541)
!5871 = !DILocation(line: 717, column: 1, scope: !5541)
!5872 = distinct !DISubprogram(name: "queue_logical_block_size", scope: !184, file: !184, line: 1157, type: !5873, scopeLine: 1158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !5877)
!5873 = !DISubroutineType(types: !5874)
!5874 = !{!35, !5875}
!5875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5876, size: 64)
!5876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !416)
!5877 = !{!5878, !5879}
!5878 = !DILocalVariable(name: "q", arg: 1, scope: !5872, file: !184, line: 1157, type: !5875)
!5879 = !DILocalVariable(name: "retval", scope: !5872, file: !184, line: 1159, type: !151)
!5880 = !DILocation(line: 1157, column: 77, scope: !5872)
!5881 = !DILocation(line: 1159, column: 2, scope: !5872)
!5882 = !DILocation(line: 1159, column: 6, scope: !5872)
!5883 = !DILocation(line: 1161, column: 6, scope: !5884)
!5884 = distinct !DILexicalBlock(scope: !5872, file: !184, line: 1161, column: 6)
!5885 = !DILocation(line: 1161, column: 8, scope: !5884)
!5886 = !DILocation(line: 1161, column: 11, scope: !5884)
!5887 = !DILocation(line: 1161, column: 14, scope: !5884)
!5888 = !DILocation(line: 1161, column: 21, scope: !5884)
!5889 = !DILocation(line: 1161, column: 6, scope: !5872)
!5890 = !DILocation(line: 1162, column: 12, scope: !5884)
!5891 = !DILocation(line: 1162, column: 15, scope: !5884)
!5892 = !DILocation(line: 1162, column: 22, scope: !5884)
!5893 = !DILocation(line: 1162, column: 10, scope: !5884)
!5894 = !DILocation(line: 1162, column: 3, scope: !5884)
!5895 = !DILocation(line: 1164, column: 9, scope: !5872)
!5896 = !DILocation(line: 1165, column: 1, scope: !5872)
!5897 = !DILocation(line: 1164, column: 2, scope: !5872)
!5898 = !DISubprogram(name: "read_part_sector", scope: !333, file: !333, line: 30, type: !5899, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5899 = !DISubroutineType(types: !5900)
!5900 = !{!329, !347, !308, !5901}
!5901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5548, size: 64)
!5902 = distinct !DISubprogram(name: "aix_magic_present", scope: !2, file: !2, line: 72, type: !5903, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !5905)
!5903 = !DISubroutineType(types: !5904)
!5904 = !{!151, !347, !5553}
!5905 = !{!5906, !5907, !5908, !5909, !5910, !5911, !5912}
!5906 = !DILocalVariable(name: "state", arg: 1, scope: !5902, file: !2, line: 72, type: !347)
!5907 = !DILocalVariable(name: "p", arg: 2, scope: !5902, file: !2, line: 72, type: !5553)
!5908 = !DILocalVariable(name: "pt", scope: !5902, file: !2, line: 74, type: !225)
!5909 = !DILocalVariable(name: "sect", scope: !5902, file: !2, line: 75, type: !5548)
!5910 = !DILocalVariable(name: "d", scope: !5902, file: !2, line: 76, type: !5553)
!5911 = !DILocalVariable(name: "slot", scope: !5902, file: !2, line: 77, type: !151)
!5912 = !DILocalVariable(name: "ret", scope: !5902, file: !2, line: 77, type: !151)
!5913 = !DILocation(line: 72, column: 56, scope: !5902)
!5914 = !DILocation(line: 72, column: 78, scope: !5902)
!5915 = !DILocation(line: 74, column: 2, scope: !5902)
!5916 = !DILocation(line: 74, column: 26, scope: !5902)
!5917 = !DILocation(line: 74, column: 59, scope: !5902)
!5918 = !DILocation(line: 74, column: 61, scope: !5902)
!5919 = !DILocation(line: 75, column: 2, scope: !5902)
!5920 = !DILocation(line: 75, column: 9, scope: !5902)
!5921 = !DILocation(line: 76, column: 2, scope: !5902)
!5922 = !DILocation(line: 76, column: 17, scope: !5902)
!5923 = !DILocation(line: 77, column: 2, scope: !5902)
!5924 = !DILocation(line: 77, column: 6, scope: !5902)
!5925 = !DILocation(line: 77, column: 12, scope: !5902)
!5926 = !DILocation(line: 79, column: 8, scope: !5927)
!5927 = distinct !DILexicalBlock(scope: !5902, file: !2, line: 79, column: 6)
!5928 = !DILocation(line: 79, column: 13, scope: !5927)
!5929 = !DILocation(line: 79, column: 33, scope: !5927)
!5930 = !DILocation(line: 80, column: 3, scope: !5927)
!5931 = !DILocation(line: 80, column: 8, scope: !5927)
!5932 = !DILocation(line: 80, column: 28, scope: !5927)
!5933 = !DILocation(line: 81, column: 3, scope: !5927)
!5934 = !DILocation(line: 81, column: 8, scope: !5927)
!5935 = !DILocation(line: 81, column: 28, scope: !5927)
!5936 = !DILocation(line: 82, column: 3, scope: !5927)
!5937 = !DILocation(line: 82, column: 8, scope: !5927)
!5938 = !DILocation(line: 79, column: 6, scope: !5902)
!5939 = !DILocation(line: 83, column: 3, scope: !5927)
!5940 = !DILocation(line: 91, column: 12, scope: !5941)
!5941 = distinct !DILexicalBlock(scope: !5902, file: !2, line: 91, column: 2)
!5942 = !DILocation(line: 91, column: 7, scope: !5941)
!5943 = !DILocation(line: 91, column: 17, scope: !5944)
!5944 = distinct !DILexicalBlock(scope: !5941, file: !2, line: 91, column: 2)
!5945 = !DILocation(line: 91, column: 22, scope: !5944)
!5946 = !DILocation(line: 91, column: 2, scope: !5941)
!5947 = !DILocation(line: 92, column: 7, scope: !5948)
!5948 = distinct !DILexicalBlock(scope: !5949, file: !2, line: 92, column: 7)
!5949 = distinct !DILexicalBlock(scope: !5944, file: !2, line: 91, column: 42)
!5950 = !DILocation(line: 92, column: 11, scope: !5948)
!5951 = !DILocation(line: 92, column: 19, scope: !5948)
!5952 = !DILocation(line: 92, column: 44, scope: !5948)
!5953 = !DILocation(line: 93, column: 7, scope: !5948)
!5954 = !DILocation(line: 93, column: 11, scope: !5948)
!5955 = !DILocation(line: 93, column: 19, scope: !5948)
!5956 = !DILocation(line: 93, column: 43, scope: !5948)
!5957 = !DILocation(line: 94, column: 7, scope: !5948)
!5958 = !DILocation(line: 94, column: 11, scope: !5948)
!5959 = !DILocation(line: 94, column: 19, scope: !5948)
!5960 = !DILocation(line: 94, column: 43, scope: !5948)
!5961 = !DILocation(line: 95, column: 7, scope: !5948)
!5962 = !DILocation(line: 95, column: 11, scope: !5948)
!5963 = !DILocation(line: 95, column: 19, scope: !5948)
!5964 = !DILocation(line: 95, column: 42, scope: !5948)
!5965 = !DILocation(line: 96, column: 29, scope: !5948)
!5966 = !DILocation(line: 96, column: 7, scope: !5948)
!5967 = !DILocation(line: 92, column: 7, scope: !5949)
!5968 = !DILocation(line: 97, column: 4, scope: !5948)
!5969 = !DILocation(line: 98, column: 2, scope: !5949)
!5970 = !DILocation(line: 91, column: 32, scope: !5944)
!5971 = !DILocation(line: 91, column: 38, scope: !5944)
!5972 = !DILocation(line: 91, column: 2, scope: !5944)
!5973 = distinct !{!5973, !5946, !5974, !5676, !5677}
!5974 = !DILocation(line: 98, column: 2, scope: !5941)
!5975 = !DILocation(line: 99, column: 23, scope: !5902)
!5976 = !DILocation(line: 99, column: 6, scope: !5902)
!5977 = !DILocation(line: 99, column: 4, scope: !5902)
!5978 = !DILocation(line: 100, column: 6, scope: !5979)
!5979 = distinct !DILexicalBlock(scope: !5902, file: !2, line: 100, column: 6)
!5980 = !DILocation(line: 100, column: 6, scope: !5902)
!5981 = !DILocation(line: 101, column: 7, scope: !5982)
!5982 = distinct !DILexicalBlock(scope: !5983, file: !2, line: 101, column: 7)
!5983 = distinct !DILexicalBlock(scope: !5979, file: !2, line: 100, column: 9)
!5984 = !DILocation(line: 101, column: 12, scope: !5982)
!5985 = !DILocation(line: 101, column: 19, scope: !5982)
!5986 = !DILocation(line: 101, column: 22, scope: !5982)
!5987 = !DILocation(line: 101, column: 27, scope: !5982)
!5988 = !DILocation(line: 101, column: 34, scope: !5982)
!5989 = !DILocation(line: 101, column: 37, scope: !5982)
!5990 = !DILocation(line: 101, column: 42, scope: !5982)
!5991 = !DILocation(line: 101, column: 49, scope: !5982)
!5992 = !DILocation(line: 101, column: 52, scope: !5982)
!5993 = !DILocation(line: 101, column: 57, scope: !5982)
!5994 = !DILocation(line: 101, column: 7, scope: !5983)
!5995 = !DILocation(line: 102, column: 8, scope: !5982)
!5996 = !DILocation(line: 102, column: 4, scope: !5982)
!5997 = !DILocation(line: 103, column: 3, scope: !5983)
!5998 = !DILocation(line: 104, column: 2, scope: !5983)
!5999 = !DILocation(line: 105, column: 9, scope: !5902)
!6000 = !DILocation(line: 105, column: 2, scope: !5902)
!6001 = !DILocation(line: 106, column: 1, scope: !5902)
!6002 = distinct !DISubprogram(name: "put_dev_sector", scope: !333, file: !333, line: 31, type: !6003, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !6005)
!6003 = !DISubroutineType(types: !6004)
!6004 = !{null, !5548}
!6005 = !{!6006}
!6006 = !DILocalVariable(name: "p", arg: 1, scope: !6002, file: !333, line: 31, type: !5548)
!6007 = !DILocation(line: 31, column: 42, scope: !6002)
!6008 = !DILocation(line: 33, column: 14, scope: !6002)
!6009 = !DILocation(line: 33, column: 2, scope: !6002)
!6010 = !DILocation(line: 34, column: 1, scope: !6002)
!6011 = !DISubprogram(name: "strlcat", scope: !6012, file: !6012, line: 85, type: !6013, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6012 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!6013 = !DISubroutineType(types: !6014)
!6014 = !{!690, !645, !606, !691}
!6015 = distinct !DISubprogram(name: "msdos_magic_present", scope: !2, file: !2, line: 62, type: !6016, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !6018)
!6016 = !DISubroutineType(types: !6017)
!6017 = !{!151, !5553}
!6018 = !{!6019}
!6019 = !DILocalVariable(name: "p", arg: 1, scope: !6015, file: !2, line: 62, type: !5553)
!6020 = !DILocation(line: 62, column: 36, scope: !6015)
!6021 = !DILocation(line: 64, column: 10, scope: !6015)
!6022 = !DILocation(line: 64, column: 15, scope: !6015)
!6023 = !DILocation(line: 64, column: 37, scope: !6015)
!6024 = !DILocation(line: 64, column: 40, scope: !6015)
!6025 = !DILocation(line: 64, column: 45, scope: !6015)
!6026 = !DILocation(line: 0, scope: !6015)
!6027 = !DILocation(line: 64, column: 2, scope: !6015)
!6028 = distinct !DISubprogram(name: "fat_valid_media", scope: !6029, file: !6029, line: 8, type: !6030, scopeLine: 9, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !6032)
!6029 = !DIFile(filename: "./include/linux/msdos_fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12f444193254a4487b809a1416435e94")
!6030 = !DISubroutineType(types: !6031)
!6031 = !{!151, !229}
!6032 = !{!6033}
!6033 = !DILocalVariable(name: "media", arg: 1, scope: !6028, file: !6029, line: 8, type: !229)
!6034 = !DILocation(line: 8, column: 38, scope: !6028)
!6035 = !DILocation(line: 10, column: 17, scope: !6028)
!6036 = !DILocation(line: 10, column: 14, scope: !6028)
!6037 = !DILocation(line: 10, column: 23, scope: !6028)
!6038 = !DILocation(line: 10, column: 26, scope: !6028)
!6039 = !DILocation(line: 10, column: 32, scope: !6028)
!6040 = !DILocation(line: 10, column: 2, scope: !6028)
!6041 = distinct !DISubprogram(name: "__le32_to_cpup", scope: !6042, file: !6042, line: 57, type: !6043, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !6047)
!6042 = !DIFile(filename: "./include/uapi/linux/byteorder/little_endian.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e83ca9c46c7eccd1fa31a0d39b270d0a")
!6043 = !DISubroutineType(types: !6044)
!6044 = !{!244, !6045}
!6045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6046, size: 64)
!6046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!6047 = !{!6048}
!6048 = !DILocalVariable(name: "p", arg: 1, scope: !6041, file: !6042, line: 57, type: !6045)
!6049 = !DILocation(line: 57, column: 59, scope: !6041)
!6050 = !DILocation(line: 59, column: 25, scope: !6041)
!6051 = !DILocation(line: 59, column: 24, scope: !6041)
!6052 = !DILocation(line: 59, column: 2, scope: !6041)
!6053 = distinct !DISubprogram(name: "start_sect", scope: !2, file: !2, line: 46, type: !6054, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !6056)
!6054 = !DISubroutineType(types: !6055)
!6055 = !{!308, !225}
!6056 = !{!6057}
!6057 = !DILocalVariable(name: "p", arg: 1, scope: !6053, file: !2, line: 46, type: !225)
!6058 = !DILocation(line: 46, column: 59, scope: !6053)
!6059 = !DILocation(line: 48, column: 39, scope: !6053)
!6060 = !DILocation(line: 48, column: 42, scope: !6053)
!6061 = !DILocation(line: 48, column: 19, scope: !6053)
!6062 = !DILocation(line: 48, column: 9, scope: !6053)
!6063 = !DILocation(line: 48, column: 2, scope: !6053)
!6064 = distinct !DISubprogram(name: "nr_sects", scope: !2, file: !2, line: 41, type: !6054, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !6065)
!6065 = !{!6066}
!6066 = !DILocalVariable(name: "p", arg: 1, scope: !6064, file: !2, line: 41, type: !225)
!6067 = !DILocation(line: 41, column: 57, scope: !6064)
!6068 = !DILocation(line: 43, column: 39, scope: !6064)
!6069 = !DILocation(line: 43, column: 42, scope: !6064)
!6070 = !DILocation(line: 43, column: 19, scope: !6064)
!6071 = !DILocation(line: 43, column: 9, scope: !6064)
!6072 = !DILocation(line: 43, column: 2, scope: !6064)
!6073 = distinct !DISubprogram(name: "is_extended_partition", scope: !2, file: !2, line: 51, type: !6074, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !6076)
!6074 = !DISubroutineType(types: !6075)
!6075 = !{!151, !225}
!6076 = !{!6077}
!6077 = !DILocalVariable(name: "p", arg: 1, scope: !6073, file: !2, line: 51, type: !225)
!6078 = !DILocation(line: 51, column: 65, scope: !6073)
!6079 = !DILocation(line: 53, column: 10, scope: !6073)
!6080 = !DILocation(line: 53, column: 13, scope: !6073)
!6081 = !DILocation(line: 53, column: 21, scope: !6073)
!6082 = !DILocation(line: 53, column: 47, scope: !6073)
!6083 = !DILocation(line: 54, column: 3, scope: !6073)
!6084 = !DILocation(line: 54, column: 6, scope: !6073)
!6085 = !DILocation(line: 54, column: 14, scope: !6073)
!6086 = !DILocation(line: 54, column: 42, scope: !6073)
!6087 = !DILocation(line: 55, column: 3, scope: !6073)
!6088 = !DILocation(line: 55, column: 6, scope: !6073)
!6089 = !DILocation(line: 55, column: 14, scope: !6073)
!6090 = !DILocation(line: 53, column: 2, scope: !6073)
!6091 = distinct !DISubprogram(name: "put_partition", scope: !333, file: !333, line: 37, type: !6092, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !6094)
!6092 = !DISubroutineType(types: !6093)
!6093 = !{null, !347, !151, !308, !308}
!6094 = !{!6095, !6096, !6097, !6098, !6099}
!6095 = !DILocalVariable(name: "p", arg: 1, scope: !6091, file: !333, line: 37, type: !347)
!6096 = !DILocalVariable(name: "n", arg: 2, scope: !6091, file: !333, line: 37, type: !151)
!6097 = !DILocalVariable(name: "from", arg: 3, scope: !6091, file: !333, line: 37, type: !308)
!6098 = !DILocalVariable(name: "size", arg: 4, scope: !6091, file: !333, line: 37, type: !308)
!6099 = !DILocalVariable(name: "tmp", scope: !6100, file: !333, line: 40, type: !6102)
!6100 = distinct !DILexicalBlock(scope: !6101, file: !333, line: 39, column: 20)
!6101 = distinct !DILexicalBlock(scope: !6091, file: !333, line: 39, column: 6)
!6102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !6103)
!6103 = !{!6104}
!6104 = !DISubrange(count: 44)
!6105 = !DILocation(line: 37, column: 41, scope: !6091)
!6106 = !DILocation(line: 37, column: 48, scope: !6091)
!6107 = !DILocation(line: 37, column: 60, scope: !6091)
!6108 = !DILocation(line: 37, column: 75, scope: !6091)
!6109 = !DILocation(line: 39, column: 6, scope: !6101)
!6110 = !DILocation(line: 39, column: 10, scope: !6101)
!6111 = !DILocation(line: 39, column: 13, scope: !6101)
!6112 = !DILocation(line: 39, column: 8, scope: !6101)
!6113 = !DILocation(line: 39, column: 6, scope: !6091)
!6114 = !DILocation(line: 40, column: 3, scope: !6100)
!6115 = !DILocation(line: 40, column: 8, scope: !6100)
!6116 = !DILocation(line: 42, column: 22, scope: !6100)
!6117 = !DILocation(line: 42, column: 3, scope: !6100)
!6118 = !DILocation(line: 42, column: 6, scope: !6100)
!6119 = !DILocation(line: 42, column: 12, scope: !6100)
!6120 = !DILocation(line: 42, column: 15, scope: !6100)
!6121 = !DILocation(line: 42, column: 20, scope: !6100)
!6122 = !DILocation(line: 43, column: 22, scope: !6100)
!6123 = !DILocation(line: 43, column: 3, scope: !6100)
!6124 = !DILocation(line: 43, column: 6, scope: !6100)
!6125 = !DILocation(line: 43, column: 12, scope: !6100)
!6126 = !DILocation(line: 43, column: 15, scope: !6100)
!6127 = !DILocation(line: 43, column: 20, scope: !6100)
!6128 = !DILocation(line: 44, column: 12, scope: !6100)
!6129 = !DILocation(line: 44, column: 39, scope: !6100)
!6130 = !DILocation(line: 44, column: 42, scope: !6100)
!6131 = !DILocation(line: 44, column: 48, scope: !6100)
!6132 = !DILocation(line: 44, column: 3, scope: !6100)
!6133 = !DILocation(line: 45, column: 11, scope: !6100)
!6134 = !DILocation(line: 45, column: 14, scope: !6100)
!6135 = !DILocation(line: 45, column: 22, scope: !6100)
!6136 = !DILocation(line: 45, column: 3, scope: !6100)
!6137 = !DILocation(line: 46, column: 2, scope: !6101)
!6138 = !DILocation(line: 46, column: 2, scope: !6100)
!6139 = !DILocation(line: 47, column: 1, scope: !6091)
!6140 = distinct !DISubprogram(name: "parse_extended", scope: !2, file: !2, line: 130, type: !6141, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !6143)
!6141 = !DISubroutineType(types: !6142)
!6142 = !{null, !347, !308, !308, !320}
!6143 = !{!6144, !6145, !6146, !6147, !6148, !6149, !6150, !6151, !6152, !6153, !6154, !6155, !6156, !6161, !6162, !6163}
!6144 = !DILocalVariable(name: "state", arg: 1, scope: !6140, file: !2, line: 130, type: !347)
!6145 = !DILocalVariable(name: "first_sector", arg: 2, scope: !6140, file: !2, line: 131, type: !308)
!6146 = !DILocalVariable(name: "first_size", arg: 3, scope: !6140, file: !2, line: 131, type: !308)
!6147 = !DILocalVariable(name: "disksig", arg: 4, scope: !6140, file: !2, line: 132, type: !320)
!6148 = !DILocalVariable(name: "p", scope: !6140, file: !2, line: 134, type: !225)
!6149 = !DILocalVariable(name: "sect", scope: !6140, file: !2, line: 135, type: !5548)
!6150 = !DILocalVariable(name: "data", scope: !6140, file: !2, line: 136, type: !5553)
!6151 = !DILocalVariable(name: "this_sector", scope: !6140, file: !2, line: 137, type: !308)
!6152 = !DILocalVariable(name: "this_size", scope: !6140, file: !2, line: 137, type: !308)
!6153 = !DILocalVariable(name: "sector_size", scope: !6140, file: !2, line: 138, type: !308)
!6154 = !DILocalVariable(name: "loopct", scope: !6140, file: !2, line: 139, type: !151)
!6155 = !DILocalVariable(name: "i", scope: !6140, file: !2, line: 141, type: !151)
!6156 = !DILocalVariable(name: "offs", scope: !6157, file: !2, line: 174, type: !308)
!6157 = distinct !DILexicalBlock(scope: !6158, file: !2, line: 173, column: 32)
!6158 = distinct !DILexicalBlock(scope: !6159, file: !2, line: 173, column: 3)
!6159 = distinct !DILexicalBlock(scope: !6160, file: !2, line: 173, column: 3)
!6160 = distinct !DILexicalBlock(scope: !6140, file: !2, line: 147, column: 12)
!6161 = !DILocalVariable(name: "size", scope: !6157, file: !2, line: 174, type: !308)
!6162 = !DILocalVariable(name: "next", scope: !6157, file: !2, line: 174, type: !308)
!6163 = !DILabel(scope: !6140, name: "done", file: !2, line: 219)
!6164 = !DILocation(line: 130, column: 54, scope: !6140)
!6165 = !DILocation(line: 131, column: 16, scope: !6140)
!6166 = !DILocation(line: 131, column: 39, scope: !6140)
!6167 = !DILocation(line: 132, column: 11, scope: !6140)
!6168 = !DILocation(line: 134, column: 2, scope: !6140)
!6169 = !DILocation(line: 134, column: 26, scope: !6140)
!6170 = !DILocation(line: 135, column: 2, scope: !6140)
!6171 = !DILocation(line: 135, column: 9, scope: !6140)
!6172 = !DILocation(line: 136, column: 2, scope: !6140)
!6173 = !DILocation(line: 136, column: 17, scope: !6140)
!6174 = !DILocation(line: 137, column: 2, scope: !6140)
!6175 = !DILocation(line: 137, column: 11, scope: !6140)
!6176 = !DILocation(line: 137, column: 24, scope: !6140)
!6177 = !DILocation(line: 138, column: 2, scope: !6140)
!6178 = !DILocation(line: 138, column: 11, scope: !6140)
!6179 = !DILocation(line: 139, column: 2, scope: !6140)
!6180 = !DILocation(line: 139, column: 6, scope: !6140)
!6181 = !DILocation(line: 141, column: 2, scope: !6140)
!6182 = !DILocation(line: 141, column: 6, scope: !6140)
!6183 = !DILocation(line: 143, column: 41, scope: !6140)
!6184 = !DILocation(line: 143, column: 48, scope: !6140)
!6185 = !DILocation(line: 143, column: 54, scope: !6140)
!6186 = !DILocation(line: 143, column: 16, scope: !6140)
!6187 = !DILocation(line: 143, column: 61, scope: !6140)
!6188 = !DILocation(line: 143, column: 14, scope: !6140)
!6189 = !DILocation(line: 144, column: 16, scope: !6140)
!6190 = !DILocation(line: 144, column: 14, scope: !6140)
!6191 = !DILocation(line: 145, column: 14, scope: !6140)
!6192 = !DILocation(line: 145, column: 12, scope: !6140)
!6193 = !DILocation(line: 147, column: 2, scope: !6140)
!6194 = !DILocation(line: 148, column: 7, scope: !6195)
!6195 = distinct !DILexicalBlock(scope: !6160, file: !2, line: 148, column: 7)
!6196 = !DILocation(line: 148, column: 16, scope: !6195)
!6197 = !DILocation(line: 148, column: 7, scope: !6160)
!6198 = !DILocation(line: 149, column: 4, scope: !6195)
!6199 = !DILocation(line: 150, column: 7, scope: !6200)
!6200 = distinct !DILexicalBlock(scope: !6160, file: !2, line: 150, column: 7)
!6201 = !DILocation(line: 150, column: 14, scope: !6200)
!6202 = !DILocation(line: 150, column: 22, scope: !6200)
!6203 = !DILocation(line: 150, column: 29, scope: !6200)
!6204 = !DILocation(line: 150, column: 19, scope: !6200)
!6205 = !DILocation(line: 150, column: 7, scope: !6160)
!6206 = !DILocation(line: 151, column: 4, scope: !6200)
!6207 = !DILocation(line: 152, column: 27, scope: !6160)
!6208 = !DILocation(line: 152, column: 34, scope: !6160)
!6209 = !DILocation(line: 152, column: 10, scope: !6160)
!6210 = !DILocation(line: 152, column: 8, scope: !6160)
!6211 = !DILocation(line: 153, column: 8, scope: !6212)
!6212 = distinct !DILexicalBlock(scope: !6160, file: !2, line: 153, column: 7)
!6213 = !DILocation(line: 153, column: 7, scope: !6160)
!6214 = !DILocation(line: 154, column: 4, scope: !6212)
!6215 = !DILocation(line: 156, column: 28, scope: !6216)
!6216 = distinct !DILexicalBlock(scope: !6160, file: !2, line: 156, column: 7)
!6217 = !DILocation(line: 156, column: 33, scope: !6216)
!6218 = !DILocation(line: 156, column: 8, scope: !6216)
!6219 = !DILocation(line: 156, column: 7, scope: !6160)
!6220 = !DILocation(line: 157, column: 4, scope: !6216)
!6221 = !DILocation(line: 159, column: 35, scope: !6160)
!6222 = !DILocation(line: 159, column: 40, scope: !6160)
!6223 = !DILocation(line: 159, column: 5, scope: !6160)
!6224 = !DILocation(line: 173, column: 10, scope: !6159)
!6225 = !DILocation(line: 173, column: 8, scope: !6159)
!6226 = !DILocation(line: 173, column: 15, scope: !6158)
!6227 = !DILocation(line: 173, column: 17, scope: !6158)
!6228 = !DILocation(line: 173, column: 3, scope: !6159)
!6229 = !DILocation(line: 174, column: 4, scope: !6157)
!6230 = !DILocation(line: 174, column: 13, scope: !6157)
!6231 = !DILocation(line: 174, column: 19, scope: !6157)
!6232 = !DILocation(line: 174, column: 25, scope: !6157)
!6233 = !DILocation(line: 176, column: 18, scope: !6234)
!6234 = distinct !DILexicalBlock(scope: !6157, file: !2, line: 176, column: 8)
!6235 = !DILocation(line: 176, column: 9, scope: !6234)
!6236 = !DILocation(line: 176, column: 21, scope: !6234)
!6237 = !DILocation(line: 176, column: 46, scope: !6234)
!6238 = !DILocation(line: 176, column: 24, scope: !6234)
!6239 = !DILocation(line: 176, column: 8, scope: !6157)
!6240 = !DILocation(line: 177, column: 5, scope: !6234)
!6241 = !DILocation(line: 181, column: 22, scope: !6157)
!6242 = !DILocation(line: 181, column: 11, scope: !6157)
!6243 = !DILocation(line: 181, column: 25, scope: !6157)
!6244 = !DILocation(line: 181, column: 24, scope: !6157)
!6245 = !DILocation(line: 181, column: 9, scope: !6157)
!6246 = !DILocation(line: 182, column: 20, scope: !6157)
!6247 = !DILocation(line: 182, column: 11, scope: !6157)
!6248 = !DILocation(line: 182, column: 23, scope: !6157)
!6249 = !DILocation(line: 182, column: 22, scope: !6157)
!6250 = !DILocation(line: 182, column: 9, scope: !6157)
!6251 = !DILocation(line: 183, column: 11, scope: !6157)
!6252 = !DILocation(line: 183, column: 25, scope: !6157)
!6253 = !DILocation(line: 183, column: 23, scope: !6157)
!6254 = !DILocation(line: 183, column: 9, scope: !6157)
!6255 = !DILocation(line: 184, column: 8, scope: !6256)
!6256 = distinct !DILexicalBlock(scope: !6157, file: !2, line: 184, column: 8)
!6257 = !DILocation(line: 184, column: 10, scope: !6256)
!6258 = !DILocation(line: 184, column: 8, scope: !6157)
!6259 = !DILocation(line: 185, column: 9, scope: !6260)
!6260 = distinct !DILexicalBlock(scope: !6261, file: !2, line: 185, column: 9)
!6261 = distinct !DILexicalBlock(scope: !6256, file: !2, line: 184, column: 16)
!6262 = !DILocation(line: 185, column: 16, scope: !6260)
!6263 = !DILocation(line: 185, column: 14, scope: !6260)
!6264 = !DILocation(line: 185, column: 23, scope: !6260)
!6265 = !DILocation(line: 185, column: 21, scope: !6260)
!6266 = !DILocation(line: 185, column: 9, scope: !6261)
!6267 = !DILocation(line: 186, column: 6, scope: !6260)
!6268 = !DILocation(line: 187, column: 9, scope: !6269)
!6269 = distinct !DILexicalBlock(scope: !6261, file: !2, line: 187, column: 9)
!6270 = !DILocation(line: 187, column: 16, scope: !6269)
!6271 = !DILocation(line: 187, column: 14, scope: !6269)
!6272 = !DILocation(line: 187, column: 9, scope: !6261)
!6273 = !DILocation(line: 188, column: 6, scope: !6269)
!6274 = !DILocation(line: 189, column: 9, scope: !6275)
!6275 = distinct !DILexicalBlock(scope: !6261, file: !2, line: 189, column: 9)
!6276 = !DILocation(line: 189, column: 16, scope: !6275)
!6277 = !DILocation(line: 189, column: 14, scope: !6275)
!6278 = !DILocation(line: 189, column: 23, scope: !6275)
!6279 = !DILocation(line: 189, column: 38, scope: !6275)
!6280 = !DILocation(line: 189, column: 36, scope: !6275)
!6281 = !DILocation(line: 189, column: 21, scope: !6275)
!6282 = !DILocation(line: 189, column: 9, scope: !6261)
!6283 = !DILocation(line: 190, column: 6, scope: !6275)
!6284 = !DILocation(line: 191, column: 4, scope: !6261)
!6285 = !DILocation(line: 193, column: 18, scope: !6157)
!6286 = !DILocation(line: 193, column: 25, scope: !6157)
!6287 = !DILocation(line: 193, column: 32, scope: !6157)
!6288 = !DILocation(line: 193, column: 38, scope: !6157)
!6289 = !DILocation(line: 193, column: 44, scope: !6157)
!6290 = !DILocation(line: 193, column: 4, scope: !6157)
!6291 = !DILocation(line: 194, column: 13, scope: !6157)
!6292 = !DILocation(line: 194, column: 20, scope: !6157)
!6293 = !DILocation(line: 194, column: 27, scope: !6157)
!6294 = !DILocation(line: 194, column: 33, scope: !6157)
!6295 = !DILocation(line: 194, column: 4, scope: !6157)
!6296 = !DILocation(line: 195, column: 8, scope: !6297)
!6297 = distinct !DILexicalBlock(scope: !6157, file: !2, line: 195, column: 8)
!6298 = !DILocation(line: 195, column: 11, scope: !6297)
!6299 = !DILocation(line: 195, column: 19, scope: !6297)
!6300 = !DILocation(line: 195, column: 8, scope: !6157)
!6301 = !DILocation(line: 196, column: 5, scope: !6297)
!6302 = !DILocation(line: 196, column: 12, scope: !6297)
!6303 = !DILocation(line: 196, column: 18, scope: !6297)
!6304 = !DILocation(line: 196, column: 25, scope: !6297)
!6305 = !DILocation(line: 196, column: 31, scope: !6297)
!6306 = !DILocation(line: 196, column: 37, scope: !6297)
!6307 = !DILocation(line: 197, column: 11, scope: !6157)
!6308 = !DILocation(line: 198, column: 10, scope: !6309)
!6309 = distinct !DILexicalBlock(scope: !6157, file: !2, line: 198, column: 8)
!6310 = !DILocation(line: 198, column: 17, scope: !6309)
!6311 = !DILocation(line: 198, column: 8, scope: !6309)
!6312 = !DILocation(line: 198, column: 25, scope: !6309)
!6313 = !DILocation(line: 198, column: 32, scope: !6309)
!6314 = !DILocation(line: 198, column: 22, scope: !6309)
!6315 = !DILocation(line: 198, column: 8, scope: !6157)
!6316 = !DILocation(line: 199, column: 5, scope: !6309)
!6317 = !DILocation(line: 200, column: 3, scope: !6158)
!6318 = !DILocation(line: 200, column: 3, scope: !6157)
!6319 = !DILocation(line: 173, column: 23, scope: !6158)
!6320 = !DILocation(line: 173, column: 28, scope: !6158)
!6321 = !DILocation(line: 173, column: 3, scope: !6158)
!6322 = distinct !{!6322, !6228, !6323, !5676, !5677}
!6323 = !DILocation(line: 200, column: 3, scope: !6159)
!6324 = !DILocation(line: 208, column: 5, scope: !6160)
!6325 = !DILocation(line: 209, column: 10, scope: !6326)
!6326 = distinct !DILexicalBlock(scope: !6160, file: !2, line: 209, column: 3)
!6327 = !DILocation(line: 209, column: 8, scope: !6326)
!6328 = !DILocation(line: 209, column: 15, scope: !6329)
!6329 = distinct !DILexicalBlock(scope: !6326, file: !2, line: 209, column: 3)
!6330 = !DILocation(line: 209, column: 17, scope: !6329)
!6331 = !DILocation(line: 209, column: 3, scope: !6326)
!6332 = !DILocation(line: 210, column: 17, scope: !6333)
!6333 = distinct !DILexicalBlock(scope: !6329, file: !2, line: 210, column: 8)
!6334 = !DILocation(line: 210, column: 8, scope: !6333)
!6335 = !DILocation(line: 210, column: 20, scope: !6333)
!6336 = !DILocation(line: 210, column: 45, scope: !6333)
!6337 = !DILocation(line: 210, column: 23, scope: !6333)
!6338 = !DILocation(line: 210, column: 8, scope: !6329)
!6339 = !DILocation(line: 211, column: 5, scope: !6333)
!6340 = !DILocation(line: 210, column: 46, scope: !6333)
!6341 = !DILocation(line: 209, column: 23, scope: !6329)
!6342 = !DILocation(line: 209, column: 28, scope: !6329)
!6343 = !DILocation(line: 209, column: 3, scope: !6329)
!6344 = distinct !{!6344, !6331, !6345, !5676, !5677}
!6345 = !DILocation(line: 211, column: 5, scope: !6326)
!6346 = !DILocation(line: 212, column: 7, scope: !6347)
!6347 = distinct !DILexicalBlock(scope: !6160, file: !2, line: 212, column: 7)
!6348 = !DILocation(line: 212, column: 9, scope: !6347)
!6349 = !DILocation(line: 212, column: 7, scope: !6160)
!6350 = !DILocation(line: 213, column: 4, scope: !6347)
!6351 = !DILocation(line: 215, column: 17, scope: !6160)
!6352 = !DILocation(line: 215, column: 43, scope: !6160)
!6353 = !DILocation(line: 215, column: 32, scope: !6160)
!6354 = !DILocation(line: 215, column: 48, scope: !6160)
!6355 = !DILocation(line: 215, column: 46, scope: !6160)
!6356 = !DILocation(line: 215, column: 30, scope: !6160)
!6357 = !DILocation(line: 215, column: 15, scope: !6160)
!6358 = !DILocation(line: 216, column: 24, scope: !6160)
!6359 = !DILocation(line: 216, column: 15, scope: !6160)
!6360 = !DILocation(line: 216, column: 29, scope: !6160)
!6361 = !DILocation(line: 216, column: 27, scope: !6160)
!6362 = !DILocation(line: 216, column: 13, scope: !6160)
!6363 = !DILocation(line: 217, column: 3, scope: !6160)
!6364 = distinct !{!6364, !6193, !6365, !5677}
!6365 = !DILocation(line: 218, column: 2, scope: !6140)
!6366 = !DILocation(line: 219, column: 1, scope: !6140)
!6367 = !DILocation(line: 220, column: 2, scope: !6140)
!6368 = !DILocation(line: 221, column: 1, scope: !6140)
!6369 = distinct !DISubprogram(name: "set_info", scope: !2, file: !2, line: 108, type: !6370, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !6372)
!6370 = !DISubroutineType(types: !6371)
!6371 = !{null, !347, !151, !320}
!6372 = !{!6373, !6374, !6375, !6376}
!6373 = !DILocalVariable(name: "state", arg: 1, scope: !6369, file: !2, line: 108, type: !347)
!6374 = !DILocalVariable(name: "slot", arg: 2, scope: !6369, file: !2, line: 108, type: !151)
!6375 = !DILocalVariable(name: "disksig", arg: 3, scope: !6369, file: !2, line: 109, type: !320)
!6376 = !DILocalVariable(name: "info", scope: !6369, file: !2, line: 111, type: !5377)
!6377 = !DILocation(line: 108, column: 48, scope: !6369)
!6378 = !DILocation(line: 108, column: 59, scope: !6369)
!6379 = !DILocation(line: 109, column: 12, scope: !6369)
!6380 = !DILocation(line: 111, column: 2, scope: !6369)
!6381 = !DILocation(line: 111, column: 30, scope: !6369)
!6382 = !DILocation(line: 111, column: 38, scope: !6369)
!6383 = !DILocation(line: 111, column: 45, scope: !6369)
!6384 = !DILocation(line: 111, column: 51, scope: !6369)
!6385 = !DILocation(line: 111, column: 57, scope: !6369)
!6386 = !DILocation(line: 113, column: 11, scope: !6369)
!6387 = !DILocation(line: 113, column: 17, scope: !6369)
!6388 = !DILocation(line: 113, column: 56, scope: !6369)
!6389 = !DILocation(line: 114, column: 4, scope: !6369)
!6390 = !DILocation(line: 113, column: 2, scope: !6369)
!6391 = !DILocation(line: 115, column: 2, scope: !6369)
!6392 = !DILocation(line: 115, column: 8, scope: !6369)
!6393 = !DILocation(line: 115, column: 19, scope: !6369)
!6394 = !DILocation(line: 116, column: 2, scope: !6369)
!6395 = !DILocation(line: 116, column: 9, scope: !6369)
!6396 = !DILocation(line: 116, column: 15, scope: !6369)
!6397 = !DILocation(line: 116, column: 21, scope: !6369)
!6398 = !DILocation(line: 116, column: 30, scope: !6369)
!6399 = !DILocation(line: 117, column: 1, scope: !6369)
!6400 = distinct !DISubprogram(name: "folio_put", scope: !1869, file: !1869, line: 1478, type: !4424, scopeLine: 1479, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !6401)
!6401 = !{!6402}
!6402 = !DILocalVariable(name: "folio", arg: 1, scope: !6400, file: !1869, line: 1478, type: !1732)
!6403 = !DILocation(line: 1478, column: 44, scope: !6400)
!6404 = !DILocation(line: 1480, column: 25, scope: !6405)
!6405 = distinct !DILexicalBlock(scope: !6400, file: !1869, line: 1480, column: 6)
!6406 = !DILocation(line: 1480, column: 6, scope: !6405)
!6407 = !DILocation(line: 1480, column: 6, scope: !6400)
!6408 = !DILocation(line: 1481, column: 15, scope: !6405)
!6409 = !DILocation(line: 1481, column: 3, scope: !6405)
!6410 = !DILocation(line: 1482, column: 1, scope: !6400)
!6411 = distinct !DISubprogram(name: "folio_put_testzero", scope: !1869, file: !1869, line: 1103, type: !4433, scopeLine: 1104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !6412)
!6412 = !{!6413}
!6413 = !DILocalVariable(name: "folio", arg: 1, scope: !6411, file: !1869, line: 1103, type: !1732)
!6414 = !DILocation(line: 1103, column: 52, scope: !6411)
!6415 = !DILocation(line: 1105, column: 28, scope: !6411)
!6416 = !DILocation(line: 1105, column: 35, scope: !6411)
!6417 = !DILocation(line: 1105, column: 9, scope: !6411)
!6418 = !DILocation(line: 1105, column: 2, scope: !6411)
!6419 = !DISubprogram(name: "__folio_put", scope: !1869, file: !1869, line: 1283, type: !4424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6420 = distinct !DISubprogram(name: "put_page_testzero", scope: !1869, file: !1869, line: 1097, type: !6421, scopeLine: 1098, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !6423)
!6421 = !DISubroutineType(types: !6422)
!6422 = !{!151, !1861}
!6423 = !{!6424}
!6424 = !DILocalVariable(name: "page", arg: 1, scope: !6420, file: !1869, line: 1097, type: !1861)
!6425 = !DILocation(line: 1097, column: 50, scope: !6420)
!6426 = !DILocation(line: 1100, column: 31, scope: !6420)
!6427 = !DILocation(line: 1100, column: 9, scope: !6420)
!6428 = !DILocation(line: 1100, column: 2, scope: !6420)
!6429 = distinct !DISubprogram(name: "page_ref_dec_and_test", scope: !6430, file: !6430, line: 208, type: !6421, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !6431)
!6430 = !DIFile(filename: "./include/linux/page_ref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0ed1500ef964c39be8e0b4c715e2a9d4")
!6431 = !{!6432, !6433}
!6432 = !DILocalVariable(name: "page", arg: 1, scope: !6429, file: !6430, line: 208, type: !1861)
!6433 = !DILocalVariable(name: "ret", scope: !6429, file: !6430, line: 210, type: !151)
!6434 = !DILocation(line: 208, column: 54, scope: !6429)
!6435 = !DILocation(line: 210, column: 2, scope: !6429)
!6436 = !DILocation(line: 210, column: 6, scope: !6429)
!6437 = !DILocation(line: 210, column: 33, scope: !6429)
!6438 = !DILocation(line: 210, column: 39, scope: !6429)
!6439 = !DILocation(line: 210, column: 12, scope: !6429)
!6440 = !DILocation(line: 214, column: 9, scope: !6429)
!6441 = !DILocation(line: 215, column: 1, scope: !6429)
!6442 = !DILocation(line: 214, column: 2, scope: !6429)
!6443 = distinct !DISubprogram(name: "atomic_dec_and_test", scope: !6444, file: !6444, line: 1372, type: !6445, scopeLine: 1373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !6448)
!6444 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6445 = !DISubroutineType(types: !6446)
!6446 = !{!527, !6447}
!6447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!6448 = !{!6449}
!6449 = !DILocalVariable(name: "v", arg: 1, scope: !6443, file: !6444, line: 1372, type: !6447)
!6450 = !DILocation(line: 1372, column: 31, scope: !6443)
!6451 = !DILocation(line: 1374, column: 2, scope: !6443)
!6452 = !DILocation(line: 1374, column: 2, scope: !6453)
!6453 = distinct !DILexicalBlock(scope: !6443, file: !6444, line: 1374, column: 2)
!6454 = !DILocation(line: 1375, column: 31, scope: !6443)
!6455 = !DILocation(line: 1375, column: 2, scope: !6443)
!6456 = !DILocation(line: 1376, column: 33, scope: !6443)
!6457 = !DILocation(line: 1376, column: 9, scope: !6443)
!6458 = !DILocation(line: 1376, column: 2, scope: !6443)
!6459 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6460, file: !6460, line: 94, type: !6461, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !6466)
!6460 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6461 = !DISubroutineType(types: !6462)
!6462 = !{null, !6463, !690}
!6463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6464, size: 64)
!6464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6465)
!6465 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6466 = !{!6467, !6468}
!6467 = !DILocalVariable(name: "v", arg: 1, scope: !6459, file: !6460, line: 94, type: !6463)
!6468 = !DILocalVariable(name: "size", arg: 2, scope: !6459, file: !6460, line: 94, type: !690)
!6469 = !DILocation(line: 94, column: 79, scope: !6459)
!6470 = !DILocation(line: 94, column: 89, scope: !6459)
!6471 = !DILocation(line: 96, column: 20, scope: !6459)
!6472 = !DILocation(line: 96, column: 23, scope: !6459)
!6473 = !DILocation(line: 96, column: 2, scope: !6459)
!6474 = !DILocation(line: 97, column: 2, scope: !6459)
!6475 = !DILocation(line: 98, column: 1, scope: !6459)
!6476 = distinct !DISubprogram(name: "raw_atomic_dec_and_test", scope: !6477, file: !6477, line: 2254, type: !6445, scopeLine: 2255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !6478)
!6477 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6478 = !{!6479}
!6479 = !DILocalVariable(name: "v", arg: 1, scope: !6476, file: !6477, line: 2254, type: !6447)
!6480 = !DILocation(line: 2254, column: 35, scope: !6476)
!6481 = !DILocation(line: 2257, column: 34, scope: !6476)
!6482 = !DILocation(line: 2257, column: 9, scope: !6476)
!6483 = !DILocation(line: 2257, column: 2, scope: !6476)
!6484 = distinct !DISubprogram(name: "kasan_check_write", scope: !6485, file: !6485, line: 44, type: !6486, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !6488)
!6485 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6486 = !DISubroutineType(types: !6487)
!6487 = !{!527, !6463, !35}
!6488 = !{!6489, !6490}
!6489 = !DILocalVariable(name: "p", arg: 1, scope: !6484, file: !6485, line: 44, type: !6463)
!6490 = !DILocalVariable(name: "size", arg: 2, scope: !6484, file: !6485, line: 44, type: !35)
!6491 = !DILocation(line: 44, column: 59, scope: !6484)
!6492 = !DILocation(line: 44, column: 75, scope: !6484)
!6493 = !DILocation(line: 46, column: 2, scope: !6484)
!6494 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6495, file: !6495, line: 229, type: !6496, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !6498)
!6495 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6496 = !DISubroutineType(types: !6497)
!6497 = !{null, !6463, !690, !151}
!6498 = !{!6499, !6500, !6501}
!6499 = !DILocalVariable(name: "ptr", arg: 1, scope: !6494, file: !6495, line: 229, type: !6463)
!6500 = !DILocalVariable(name: "size", arg: 2, scope: !6494, file: !6495, line: 229, type: !690)
!6501 = !DILocalVariable(name: "type", arg: 3, scope: !6494, file: !6495, line: 230, type: !151)
!6502 = !DILocation(line: 229, column: 60, scope: !6494)
!6503 = !DILocation(line: 229, column: 72, scope: !6494)
!6504 = !DILocation(line: 230, column: 15, scope: !6494)
!6505 = !DILocation(line: 230, column: 23, scope: !6494)
!6506 = distinct !DISubprogram(name: "arch_atomic_dec_and_test", scope: !6507, file: !6507, line: 65, type: !6445, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !6508)
!6507 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6508 = !{!6509, !6510}
!6509 = !DILocalVariable(name: "v", arg: 1, scope: !6506, file: !6507, line: 65, type: !6447)
!6510 = !DILocalVariable(name: "c", scope: !6511, file: !6507, line: 67, type: !527)
!6511 = distinct !DILexicalBlock(scope: !6506, file: !6507, line: 67, column: 9)
!6512 = !DILocation(line: 65, column: 64, scope: !6506)
!6513 = !DILocation(line: 67, column: 9, scope: !6511)
!6514 = !{i64 2149109609, i64 2149109648, i64 2149109669, i64 2149109706, i64 2149109729, i64 2149109738, i64 2149109812}
!6515 = !{i8 0, i8 2}
!6516 = !DILocation(line: 67, column: 9, scope: !6506)
!6517 = !DILocation(line: 67, column: 2, scope: !6506)
!6518 = !DILocation(line: 30, column: 50, scope: !317)
!6519 = !DILocation(line: 32, column: 9, scope: !326)
!6520 = !DILocation(line: 32, column: 9, scope: !317)
!6521 = !DILocation(line: 32, column: 2, scope: !317)
!6522 = !DISubprogram(name: "snprintf", scope: !6523, file: !6523, line: 12, type: !6524, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6523 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!6524 = !DISubroutineType(types: !6525)
!6525 = !{!151, !645, !690, !606, null}
!6526 = distinct !DISubprogram(name: "parse_freebsd", scope: !2, file: !2, line: 409, type: !345, scopeLine: 411, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !6527)
!6527 = !{!6528, !6529, !6530, !6531}
!6528 = !DILocalVariable(name: "state", arg: 1, scope: !6526, file: !2, line: 409, type: !347)
!6529 = !DILocalVariable(name: "offset", arg: 2, scope: !6526, file: !2, line: 410, type: !308)
!6530 = !DILocalVariable(name: "size", arg: 3, scope: !6526, file: !2, line: 410, type: !308)
!6531 = !DILocalVariable(name: "origin", arg: 4, scope: !6526, file: !2, line: 410, type: !151)
!6532 = !DILocation(line: 409, column: 53, scope: !6526)
!6533 = !DILocation(line: 410, column: 15, scope: !6526)
!6534 = !DILocation(line: 410, column: 32, scope: !6526)
!6535 = !DILocation(line: 410, column: 42, scope: !6526)
!6536 = !DILocation(line: 415, column: 1, scope: !6526)
!6537 = distinct !DISubprogram(name: "parse_netbsd", scope: !2, file: !2, line: 417, type: !345, scopeLine: 419, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !6538)
!6538 = !{!6539, !6540, !6541, !6542}
!6539 = !DILocalVariable(name: "state", arg: 1, scope: !6537, file: !2, line: 417, type: !347)
!6540 = !DILocalVariable(name: "offset", arg: 2, scope: !6537, file: !2, line: 418, type: !308)
!6541 = !DILocalVariable(name: "size", arg: 3, scope: !6537, file: !2, line: 418, type: !308)
!6542 = !DILocalVariable(name: "origin", arg: 4, scope: !6537, file: !2, line: 418, type: !151)
!6543 = !DILocation(line: 417, column: 52, scope: !6537)
!6544 = !DILocation(line: 418, column: 14, scope: !6537)
!6545 = !DILocation(line: 418, column: 31, scope: !6537)
!6546 = !DILocation(line: 418, column: 41, scope: !6537)
!6547 = !DILocation(line: 423, column: 1, scope: !6537)
!6548 = distinct !DISubprogram(name: "parse_openbsd", scope: !2, file: !2, line: 425, type: !345, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !6549)
!6549 = !{!6550, !6551, !6552, !6553}
!6550 = !DILocalVariable(name: "state", arg: 1, scope: !6548, file: !2, line: 425, type: !347)
!6551 = !DILocalVariable(name: "offset", arg: 2, scope: !6548, file: !2, line: 426, type: !308)
!6552 = !DILocalVariable(name: "size", arg: 3, scope: !6548, file: !2, line: 426, type: !308)
!6553 = !DILocalVariable(name: "origin", arg: 4, scope: !6548, file: !2, line: 426, type: !151)
!6554 = !DILocation(line: 425, column: 53, scope: !6548)
!6555 = !DILocation(line: 426, column: 15, scope: !6548)
!6556 = !DILocation(line: 426, column: 32, scope: !6548)
!6557 = !DILocation(line: 426, column: 42, scope: !6548)
!6558 = !DILocation(line: 432, column: 1, scope: !6548)
!6559 = distinct !DISubprogram(name: "parse_minix", scope: !2, file: !2, line: 529, type: !345, scopeLine: 531, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !6560)
!6560 = !{!6561, !6562, !6563, !6564}
!6561 = !DILocalVariable(name: "state", arg: 1, scope: !6559, file: !2, line: 529, type: !347)
!6562 = !DILocalVariable(name: "offset", arg: 2, scope: !6559, file: !2, line: 530, type: !308)
!6563 = !DILocalVariable(name: "size", arg: 3, scope: !6559, file: !2, line: 530, type: !308)
!6564 = !DILocalVariable(name: "origin", arg: 4, scope: !6559, file: !2, line: 530, type: !151)
!6565 = !DILocation(line: 529, column: 51, scope: !6559)
!6566 = !DILocation(line: 530, column: 13, scope: !6559)
!6567 = !DILocation(line: 530, column: 30, scope: !6559)
!6568 = !DILocation(line: 530, column: 40, scope: !6559)
!6569 = !DILocation(line: 565, column: 1, scope: !6559)
!6570 = distinct !DISubprogram(name: "parse_unixware", scope: !2, file: !2, line: 483, type: !345, scopeLine: 485, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !6571)
!6571 = !{!6572, !6573, !6574, !6575}
!6572 = !DILocalVariable(name: "state", arg: 1, scope: !6570, file: !2, line: 483, type: !347)
!6573 = !DILocalVariable(name: "offset", arg: 2, scope: !6570, file: !2, line: 484, type: !308)
!6574 = !DILocalVariable(name: "size", arg: 3, scope: !6570, file: !2, line: 484, type: !308)
!6575 = !DILocalVariable(name: "origin", arg: 4, scope: !6570, file: !2, line: 484, type: !151)
!6576 = !DILocation(line: 483, column: 54, scope: !6570)
!6577 = !DILocation(line: 484, column: 16, scope: !6570)
!6578 = !DILocation(line: 484, column: 33, scope: !6570)
!6579 = !DILocation(line: 484, column: 43, scope: !6570)
!6580 = !DILocation(line: 520, column: 1, scope: !6570)
!6581 = distinct !DISubprogram(name: "parse_solaris_x86", scope: !2, file: !2, line: 250, type: !345, scopeLine: 252, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !6582)
!6582 = !{!6583, !6584, !6585, !6586}
!6583 = !DILocalVariable(name: "state", arg: 1, scope: !6581, file: !2, line: 250, type: !347)
!6584 = !DILocalVariable(name: "offset", arg: 2, scope: !6581, file: !2, line: 251, type: !308)
!6585 = !DILocalVariable(name: "size", arg: 3, scope: !6581, file: !2, line: 251, type: !308)
!6586 = !DILocalVariable(name: "origin", arg: 4, scope: !6581, file: !2, line: 251, type: !151)
!6587 = !DILocation(line: 250, column: 57, scope: !6581)
!6588 = !DILocation(line: 251, column: 19, scope: !6581)
!6589 = !DILocation(line: 251, column: 36, scope: !6581)
!6590 = !DILocation(line: 251, column: 46, scope: !6581)
!6591 = !DILocation(line: 300, column: 1, scope: !6581)
