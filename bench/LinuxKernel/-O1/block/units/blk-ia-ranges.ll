; ModuleID = 'block/blk-ia-ranges.c'
source_filename = "block/blk-ia-ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_disk_alloc_independent_access_ranges: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad disk_alloc_independent_access_ranges ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_disk_set_independent_access_ranges: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad disk_set_independent_access_ranges ; .previous"

%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.blk_ia_range_sysfs_entry = type { %struct.attribute, ptr }
%struct.attribute = type { ptr, i16 }
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
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, %struct.mutex, ptr, ptr, i32, %struct.xarray, i32, ptr, i64, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.refcount_struct, ptr, ptr, i32, i64, i32, i32, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i64], ptr, %struct.list_head, %struct.mutex, %struct.queue_limits, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, ptr, ptr, ptr, %struct.mutex, i8 }
%struct.percpu_ref = type { i64, ptr }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.queue_limits = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.blk_independent_access_ranges = type { %struct.kobject, i8, i32, [0 x %struct.blk_independent_access_range] }
%struct.blk_independent_access_range = type { %struct.kobject, i64, i64 }
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

@.str = private unnamed_addr constant [22 x i8] c"block/blk-ia-ranges.c\00", align 1, !dbg !0
@blk_ia_ranges_ktype = internal constant %struct.kobj_type { ptr @blk_ia_ranges_sysfs_release, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !7
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !5343
@.str.2 = private unnamed_addr constant [26 x i8] c"independent_access_ranges\00", align 1, !dbg !5346
@blk_ia_range_ktype = internal constant %struct.kobj_type { ptr @blk_ia_range_sysfs_nop_release, ptr @blk_ia_range_sysfs_ops, ptr @blk_ia_range_groups, ptr null, ptr null, ptr null }, align 8, !dbg !5357
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1, !dbg !5351
@__UNIQUE_ID___addressable_disk_alloc_independent_access_ranges348 = internal global ptr @disk_alloc_independent_access_ranges, section ".discard.addressable", align 8, !dbg !5353
@__UNIQUE_ID___addressable_disk_set_independent_access_ranges349 = internal global ptr @disk_set_independent_access_ranges, section ".discard.addressable", align 8, !dbg !5355
@blk_ia_range_sysfs_ops = internal constant %struct.sysfs_ops { ptr @blk_ia_range_sysfs_show, ptr null }, align 8, !dbg !5359
@blk_ia_range_groups = internal global [2 x ptr] [ptr @blk_ia_range_group, ptr null], align 16, !dbg !5361
@blk_ia_range_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @blk_ia_range_attrs, ptr null }, align 8, !dbg !5364
@blk_ia_range_attrs = internal global [3 x ptr] [ptr @blk_ia_range_sector_entry, ptr @blk_ia_range_nr_sectors_entry, ptr null], align 16, !dbg !5366
@blk_ia_range_sector_entry = internal global %struct.blk_ia_range_sysfs_entry { %struct.attribute { ptr @.str.4, i16 292 }, ptr @blk_ia_range_sector_show }, align 8, !dbg !5372
@blk_ia_range_nr_sectors_entry = internal global %struct.blk_ia_range_sysfs_entry { %struct.attribute { ptr @.str.6, i16 292 }, ptr @blk_ia_range_nr_sectors_show }, align 8, !dbg !5381
@.str.4 = private unnamed_addr constant [7 x i8] c"sector\00", align 1, !dbg !5369
@.str.5 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1, !dbg !5374
@.str.6 = private unnamed_addr constant [11 x i8] c"nr_sectors\00", align 1, !dbg !5376
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.7 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5383
@.str.8 = private unnamed_addr constant [52 x i8] c"\014Invalid non-contiguous independent access ranges\0A\00", align 1, !dbg !5388
@.str.9 = private unnamed_addr constant [56 x i8] c"\014Independent access ranges do not match disk capacity\0A\00", align 1, !dbg !5391
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_disk_alloc_independent_access_ranges348, ptr @__UNIQUE_ID___addressable_disk_set_independent_access_ranges349], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @disk_register_independent_access_ranges(ptr noundef %disk) #0 align 16 !dbg !5402 {
entry:
  %retval = alloca i32, align 4
  %disk.addr = alloca ptr, align 8
  %iars = alloca ptr, align 8
  %q = alloca ptr, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %disk, ptr %disk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %disk.addr, metadata !5406, metadata !DIExpression()), !dbg !5416
  call void @llvm.lifetime.start.p0(i64 8, ptr %iars) #15, !dbg !5417
  call void @llvm.dbg.declare(metadata ptr %iars, metadata !5407, metadata !DIExpression()), !dbg !5418
  %0 = load ptr, ptr %disk.addr, align 8, !dbg !5419
  %ia_ranges = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 29, !dbg !5420
  %1 = load ptr, ptr %ia_ranges, align 8, !dbg !5420
  store ptr %1, ptr %iars, align 8, !dbg !5418
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #15, !dbg !5421
  call void @llvm.dbg.declare(metadata ptr %q, metadata !5408, metadata !DIExpression()), !dbg !5422
  %2 = load ptr, ptr %disk.addr, align 8, !dbg !5423
  %queue = getelementptr inbounds %struct.gendisk, ptr %2, i32 0, i32 9, !dbg !5424
  %3 = load ptr, ptr %queue, align 8, !dbg !5424
  store ptr %3, ptr %q, align 8, !dbg !5422
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !5425
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5409, metadata !DIExpression()), !dbg !5426
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !5425
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5410, metadata !DIExpression()), !dbg !5427
  br label %do.body, !dbg !5428

do.body:                                          ; preds = %entry
  %4 = load ptr, ptr %q, align 8, !dbg !5429
  %sysfs_dir_lock = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 43, !dbg !5429
  br label %do.cond, !dbg !5429

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5429

do.end:                                           ; preds = %do.cond
  br label %do.body1, !dbg !5431

do.body1:                                         ; preds = %do.end
  %5 = load ptr, ptr %q, align 8, !dbg !5432
  %sysfs_lock = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 42, !dbg !5432
  br label %do.cond2, !dbg !5432

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !5432

do.end3:                                          ; preds = %do.cond2
  %6 = load ptr, ptr %iars, align 8, !dbg !5434
  %tobool = icmp ne ptr %6, null, !dbg !5434
  br i1 %tobool, label %if.end, label %if.then, !dbg !5436

if.then:                                          ; preds = %do.end3
  store i32 0, ptr %retval, align 4, !dbg !5437
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5437

if.end:                                           ; preds = %do.end3
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !5438
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5411, metadata !DIExpression()), !dbg !5438
  %7 = load ptr, ptr %iars, align 8, !dbg !5438
  %sysfs_registered = getelementptr inbounds %struct.blk_independent_access_ranges, ptr %7, i32 0, i32 1, !dbg !5438
  %8 = load i8, ptr %sysfs_registered, align 8, !dbg !5438, !range !5439, !noundef !921
  %tobool4 = trunc i8 %8 to i1, !dbg !5438
  %lnot = xor i1 %tobool4, true, !dbg !5438
  %lnot5 = xor i1 %lnot, true, !dbg !5438
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !5438
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5438
  %9 = load i32, ptr %__ret_warn_on, align 4, !dbg !5440
  %tobool6 = icmp ne i32 %9, 0, !dbg !5440
  %lnot7 = xor i1 %tobool6, true, !dbg !5440
  %lnot9 = xor i1 %lnot7, true, !dbg !5440
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !5440
  %conv = sext i32 %lnot.ext10 to i64, !dbg !5440
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5440
  %tobool11 = icmp ne i64 %expval, 0, !dbg !5440
  br i1 %tobool11, label %if.then12, label %if.end25, !dbg !5438

if.then12:                                        ; preds = %if.end
  br label %do.body13, !dbg !5440

do.body13:                                        ; preds = %if.then12
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !5441
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5413, metadata !DIExpression()), !dbg !5441
  store i32 2305, ptr %__flags, align 4, !dbg !5441
  br label %do.body14, !dbg !5441

do.body14:                                        ; preds = %do.body13
  br label %do.cond15, !dbg !5442

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !5442

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !5441

do.body17:                                        ; preds = %do.end16
  %10 = load i32, ptr %__flags, align 4, !dbg !5444
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 124, i32 %10, i64 12) #15, !dbg !5444, !srcloc !5446
  br label %do.cond18, !dbg !5444

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !5444

do.end19:                                         ; preds = %do.cond18
  br label %do.body20, !dbg !5441

do.body20:                                        ; preds = %do.end19
  br label %do.cond21, !dbg !5447

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !5447

do.end22:                                         ; preds = %do.cond21
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !5440
  br label %do.cond23, !dbg !5441

do.cond23:                                        ; preds = %do.end22
  br label %do.end24, !dbg !5441

do.end24:                                         ; preds = %do.cond23
  br label %if.end25, !dbg !5441

if.end25:                                         ; preds = %do.end24, %if.end
  %11 = load i32, ptr %__ret_warn_on, align 4, !dbg !5438
  %tobool26 = icmp ne i32 %11, 0, !dbg !5438
  %lnot27 = xor i1 %tobool26, true, !dbg !5438
  %lnot29 = xor i1 %lnot27, true, !dbg !5438
  %lnot.ext30 = zext i1 %lnot29 to i32, !dbg !5438
  %conv31 = sext i32 %lnot.ext30 to i64, !dbg !5438
  %expval32 = call i64 @llvm.expect.i64(i64 %conv31, i64 0), !dbg !5438
  store i64 %expval32, ptr %tmp, align 8, !dbg !5440
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !5449
  %12 = load i64, ptr %tmp, align 8, !dbg !5438
  %13 = load ptr, ptr %iars, align 8, !dbg !5450
  %kobj = getelementptr inbounds %struct.blk_independent_access_ranges, ptr %13, i32 0, i32 0, !dbg !5451
  %14 = load ptr, ptr %disk.addr, align 8, !dbg !5452
  %queue_kobj = getelementptr inbounds %struct.gendisk, ptr %14, i32 0, i32 17, !dbg !5453
  %call = call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %kobj, ptr noundef @blk_ia_ranges_ktype, ptr noundef %queue_kobj, ptr noundef @.str.1, ptr noundef @.str.2) #16, !dbg !5454
  store i32 %call, ptr %ret, align 4, !dbg !5455
  %15 = load i32, ptr %ret, align 4, !dbg !5456
  %tobool33 = icmp ne i32 %15, 0, !dbg !5456
  br i1 %tobool33, label %if.then34, label %if.end37, !dbg !5458

if.then34:                                        ; preds = %if.end25
  %16 = load ptr, ptr %disk.addr, align 8, !dbg !5459
  %ia_ranges35 = getelementptr inbounds %struct.gendisk, ptr %16, i32 0, i32 29, !dbg !5461
  store ptr null, ptr %ia_ranges35, align 8, !dbg !5462
  %17 = load ptr, ptr %iars, align 8, !dbg !5463
  %kobj36 = getelementptr inbounds %struct.blk_independent_access_ranges, ptr %17, i32 0, i32 0, !dbg !5464
  call void @kobject_put(ptr noundef %kobj36) #16, !dbg !5465
  %18 = load i32, ptr %ret, align 4, !dbg !5466
  store i32 %18, ptr %retval, align 4, !dbg !5467
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5467

if.end37:                                         ; preds = %if.end25
  store i32 0, ptr %i, align 4, !dbg !5468
  br label %for.cond, !dbg !5470

for.cond:                                         ; preds = %for.inc, %if.end37
  %19 = load i32, ptr %i, align 4, !dbg !5471
  %20 = load ptr, ptr %iars, align 8, !dbg !5473
  %nr_ia_ranges = getelementptr inbounds %struct.blk_independent_access_ranges, ptr %20, i32 0, i32 2, !dbg !5474
  %21 = load i32, ptr %nr_ia_ranges, align 4, !dbg !5474
  %cmp = icmp ult i32 %19, %21, !dbg !5475
  br i1 %cmp, label %for.body, label %for.end, !dbg !5476

for.body:                                         ; preds = %for.cond
  %22 = load ptr, ptr %iars, align 8, !dbg !5477
  %ia_range = getelementptr inbounds %struct.blk_independent_access_ranges, ptr %22, i32 0, i32 3, !dbg !5479
  %23 = load i32, ptr %i, align 4, !dbg !5480
  %idxprom = sext i32 %23 to i64, !dbg !5477
  %arrayidx = getelementptr [0 x %struct.blk_independent_access_range], ptr %ia_range, i64 0, i64 %idxprom, !dbg !5477
  %kobj39 = getelementptr inbounds %struct.blk_independent_access_range, ptr %arrayidx, i32 0, i32 0, !dbg !5481
  %24 = load ptr, ptr %iars, align 8, !dbg !5482
  %kobj40 = getelementptr inbounds %struct.blk_independent_access_ranges, ptr %24, i32 0, i32 0, !dbg !5483
  %25 = load i32, ptr %i, align 4, !dbg !5484
  %call41 = call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %kobj39, ptr noundef @blk_ia_range_ktype, ptr noundef %kobj40, ptr noundef @.str.3, i32 noundef %25) #16, !dbg !5485
  store i32 %call41, ptr %ret, align 4, !dbg !5486
  %26 = load i32, ptr %ret, align 4, !dbg !5487
  %tobool42 = icmp ne i32 %26, 0, !dbg !5487
  br i1 %tobool42, label %if.then43, label %if.end52, !dbg !5489

if.then43:                                        ; preds = %for.body
  br label %while.cond, !dbg !5490

while.cond:                                       ; preds = %while.body, %if.then43
  %27 = load i32, ptr %i, align 4, !dbg !5492
  %dec = add i32 %27, -1, !dbg !5492
  store i32 %dec, ptr %i, align 4, !dbg !5492
  %cmp44 = icmp sge i32 %dec, 0, !dbg !5493
  br i1 %cmp44, label %while.body, label %while.end, !dbg !5490

while.body:                                       ; preds = %while.cond
  %28 = load ptr, ptr %iars, align 8, !dbg !5494
  %ia_range46 = getelementptr inbounds %struct.blk_independent_access_ranges, ptr %28, i32 0, i32 3, !dbg !5495
  %29 = load i32, ptr %i, align 4, !dbg !5496
  %idxprom47 = sext i32 %29 to i64, !dbg !5494
  %arrayidx48 = getelementptr [0 x %struct.blk_independent_access_range], ptr %ia_range46, i64 0, i64 %idxprom47, !dbg !5494
  %kobj49 = getelementptr inbounds %struct.blk_independent_access_range, ptr %arrayidx48, i32 0, i32 0, !dbg !5497
  call void @kobject_del(ptr noundef %kobj49) #16, !dbg !5498
  br label %while.cond, !dbg !5490, !llvm.loop !5499

while.end:                                        ; preds = %while.cond
  %30 = load ptr, ptr %iars, align 8, !dbg !5503
  %kobj50 = getelementptr inbounds %struct.blk_independent_access_ranges, ptr %30, i32 0, i32 0, !dbg !5504
  call void @kobject_del(ptr noundef %kobj50) #16, !dbg !5505
  %31 = load ptr, ptr %iars, align 8, !dbg !5506
  %kobj51 = getelementptr inbounds %struct.blk_independent_access_ranges, ptr %31, i32 0, i32 0, !dbg !5507
  call void @kobject_put(ptr noundef %kobj51) #16, !dbg !5508
  %32 = load i32, ptr %ret, align 4, !dbg !5509
  store i32 %32, ptr %retval, align 4, !dbg !5510
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5510

if.end52:                                         ; preds = %for.body
  br label %for.inc, !dbg !5511

for.inc:                                          ; preds = %if.end52
  %33 = load i32, ptr %i, align 4, !dbg !5512
  %inc = add i32 %33, 1, !dbg !5512
  store i32 %inc, ptr %i, align 4, !dbg !5512
  br label %for.cond, !dbg !5513, !llvm.loop !5514

for.end:                                          ; preds = %for.cond
  %34 = load ptr, ptr %iars, align 8, !dbg !5516
  %sysfs_registered53 = getelementptr inbounds %struct.blk_independent_access_ranges, ptr %34, i32 0, i32 1, !dbg !5517
  store i8 1, ptr %sysfs_registered53, align 8, !dbg !5518
  store i32 0, ptr %retval, align 4, !dbg !5519
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5519

cleanup:                                          ; preds = %for.end, %while.end, %if.then34, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !5520
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !5520
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #15, !dbg !5520
  call void @llvm.lifetime.end.p0(i64 8, ptr %iars) #15, !dbg !5520
  %35 = load i32, ptr %retval, align 4, !dbg !5520
  ret i32 %35, !dbg !5520
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5521 dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5524 dso_local void @kobject_put(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5525 dso_local void @kobject_del(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @disk_unregister_independent_access_ranges(ptr noundef %disk) #0 align 16 !dbg !5526 {
entry:
  %disk.addr = alloca ptr, align 8
  %q = alloca ptr, align 8
  %iars = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %disk, ptr %disk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %disk.addr, metadata !5528, metadata !DIExpression()), !dbg !5532
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #15, !dbg !5533
  call void @llvm.dbg.declare(metadata ptr %q, metadata !5529, metadata !DIExpression()), !dbg !5534
  %0 = load ptr, ptr %disk.addr, align 8, !dbg !5535
  %queue = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 9, !dbg !5536
  %1 = load ptr, ptr %queue, align 8, !dbg !5536
  store ptr %1, ptr %q, align 8, !dbg !5534
  call void @llvm.lifetime.start.p0(i64 8, ptr %iars) #15, !dbg !5537
  call void @llvm.dbg.declare(metadata ptr %iars, metadata !5530, metadata !DIExpression()), !dbg !5538
  %2 = load ptr, ptr %disk.addr, align 8, !dbg !5539
  %ia_ranges = getelementptr inbounds %struct.gendisk, ptr %2, i32 0, i32 29, !dbg !5540
  %3 = load ptr, ptr %ia_ranges, align 8, !dbg !5540
  store ptr %3, ptr %iars, align 8, !dbg !5538
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !5541
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5531, metadata !DIExpression()), !dbg !5542
  br label %do.body, !dbg !5543

do.body:                                          ; preds = %entry
  %4 = load ptr, ptr %q, align 8, !dbg !5544
  %sysfs_dir_lock = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 43, !dbg !5544
  br label %do.cond, !dbg !5544

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5544

do.end:                                           ; preds = %do.cond
  br label %do.body1, !dbg !5546

do.body1:                                         ; preds = %do.end
  %5 = load ptr, ptr %q, align 8, !dbg !5547
  %sysfs_lock = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 42, !dbg !5547
  br label %do.cond2, !dbg !5547

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !5547

do.end3:                                          ; preds = %do.cond2
  %6 = load ptr, ptr %iars, align 8, !dbg !5549
  %tobool = icmp ne ptr %6, null, !dbg !5549
  br i1 %tobool, label %if.end, label %if.then, !dbg !5551

if.then:                                          ; preds = %do.end3
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5552

if.end:                                           ; preds = %do.end3
  %7 = load ptr, ptr %iars, align 8, !dbg !5553
  %sysfs_registered = getelementptr inbounds %struct.blk_independent_access_ranges, ptr %7, i32 0, i32 1, !dbg !5555
  %8 = load i8, ptr %sysfs_registered, align 8, !dbg !5555, !range !5439, !noundef !921
  %tobool4 = trunc i8 %8 to i1, !dbg !5555
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !5556

if.then5:                                         ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !5557
  br label %for.cond, !dbg !5560

for.cond:                                         ; preds = %for.inc, %if.then5
  %9 = load i32, ptr %i, align 4, !dbg !5561
  %10 = load ptr, ptr %iars, align 8, !dbg !5563
  %nr_ia_ranges = getelementptr inbounds %struct.blk_independent_access_ranges, ptr %10, i32 0, i32 2, !dbg !5564
  %11 = load i32, ptr %nr_ia_ranges, align 4, !dbg !5564
  %cmp = icmp ult i32 %9, %11, !dbg !5565
  br i1 %cmp, label %for.body, label %for.end, !dbg !5566

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %iars, align 8, !dbg !5567
  %ia_range = getelementptr inbounds %struct.blk_independent_access_ranges, ptr %12, i32 0, i32 3, !dbg !5568
  %13 = load i32, ptr %i, align 4, !dbg !5569
  %idxprom = sext i32 %13 to i64, !dbg !5567
  %arrayidx = getelementptr [0 x %struct.blk_independent_access_range], ptr %ia_range, i64 0, i64 %idxprom, !dbg !5567
  %kobj = getelementptr inbounds %struct.blk_independent_access_range, ptr %arrayidx, i32 0, i32 0, !dbg !5570
  call void @kobject_del(ptr noundef %kobj) #16, !dbg !5571
  br label %for.inc, !dbg !5571

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4, !dbg !5572
  %inc = add i32 %14, 1, !dbg !5572
  store i32 %inc, ptr %i, align 4, !dbg !5572
  br label %for.cond, !dbg !5573, !llvm.loop !5574

for.end:                                          ; preds = %for.cond
  %15 = load ptr, ptr %iars, align 8, !dbg !5576
  %kobj6 = getelementptr inbounds %struct.blk_independent_access_ranges, ptr %15, i32 0, i32 0, !dbg !5577
  call void @kobject_del(ptr noundef %kobj6) #16, !dbg !5578
  %16 = load ptr, ptr %iars, align 8, !dbg !5579
  %kobj7 = getelementptr inbounds %struct.blk_independent_access_ranges, ptr %16, i32 0, i32 0, !dbg !5580
  call void @kobject_put(ptr noundef %kobj7) #16, !dbg !5581
  br label %if.end8, !dbg !5582

if.else:                                          ; preds = %if.end
  %17 = load ptr, ptr %iars, align 8, !dbg !5583
  call void @kfree(ptr noundef %17) #16, !dbg !5585
  br label %if.end8

if.end8:                                          ; preds = %if.else, %for.end
  %18 = load ptr, ptr %disk.addr, align 8, !dbg !5586
  %ia_ranges9 = getelementptr inbounds %struct.gendisk, ptr %18, i32 0, i32 29, !dbg !5587
  store ptr null, ptr %ia_ranges9, align 8, !dbg !5588
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5589
  br label %cleanup, !dbg !5589

cleanup:                                          ; preds = %if.end8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !5589
  call void @llvm.lifetime.end.p0(i64 8, ptr %iars) #15, !dbg !5589
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #15, !dbg !5589
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5589

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5590 dso_local void @kfree(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @disk_alloc_independent_access_ranges(ptr noundef %disk, i32 noundef %nr_ia_ranges) #0 align 16 !dbg !5593 {
entry:
  %disk.addr = alloca ptr, align 8
  %nr_ia_ranges.addr = alloca i32, align 4
  %iars = alloca ptr, align 8
  store ptr %disk, ptr %disk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %disk.addr, metadata !5597, metadata !DIExpression()), !dbg !5600
  store i32 %nr_ia_ranges, ptr %nr_ia_ranges.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr_ia_ranges.addr, metadata !5598, metadata !DIExpression()), !dbg !5601
  call void @llvm.lifetime.start.p0(i64 8, ptr %iars) #15, !dbg !5602
  call void @llvm.dbg.declare(metadata ptr %iars, metadata !5599, metadata !DIExpression()), !dbg !5603
  %0 = load i32, ptr %nr_ia_ranges.addr, align 4, !dbg !5604
  %conv = sext i32 %0 to i64, !dbg !5604
  %call = call i64 @size_mul(i64 noundef %conv, i64 noundef 80) #16, !dbg !5604
  %call1 = call i64 @size_add(i64 noundef 72, i64 noundef %call) #16, !dbg !5604
  %1 = load ptr, ptr %disk.addr, align 8, !dbg !5605
  %queue = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 9, !dbg !5606
  %2 = load ptr, ptr %queue, align 8, !dbg !5606
  %node = getelementptr inbounds %struct.request_queue, ptr %2, i32 0, i32 35, !dbg !5607
  %3 = load i32, ptr %node, align 4, !dbg !5607
  %call2 = call noalias ptr @kzalloc_node(i64 noundef %call1, i32 noundef 3264, i32 noundef %3) #17, !dbg !5608
  store ptr %call2, ptr %iars, align 8, !dbg !5609
  %4 = load ptr, ptr %iars, align 8, !dbg !5610
  %tobool = icmp ne ptr %4, null, !dbg !5610
  br i1 %tobool, label %if.then, label %if.end, !dbg !5612

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %nr_ia_ranges.addr, align 4, !dbg !5613
  %6 = load ptr, ptr %iars, align 8, !dbg !5614
  %nr_ia_ranges3 = getelementptr inbounds %struct.blk_independent_access_ranges, ptr %6, i32 0, i32 2, !dbg !5615
  store i32 %5, ptr %nr_ia_ranges3, align 4, !dbg !5616
  br label %if.end, !dbg !5614

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %iars, align 8, !dbg !5617
  call void @llvm.lifetime.end.p0(i64 8, ptr %iars) #15, !dbg !5618
  ret ptr %7, !dbg !5619
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc_node(i64 noundef %size, i32 noundef %flags, i32 noundef %node) #5 align 16 !dbg !5620 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %node.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5624, metadata !DIExpression()), !dbg !5627
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5625, metadata !DIExpression()), !dbg !5628
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !5626, metadata !DIExpression()), !dbg !5629
  %0 = load i64, ptr %size.addr, align 8, !dbg !5630
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5631
  %or = or i32 %1, 256, !dbg !5632
  %2 = load i32, ptr %node.addr, align 4, !dbg !5633
  %call = call noalias ptr @kmalloc_node(i64 noundef %0, i32 noundef %or, i32 noundef %2) #17, !dbg !5634
  ret ptr %call, !dbg !5635
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @size_add(i64 noundef %addend1, i64 noundef %addend2) #6 align 16 !dbg !5636 {
entry:
  %retval = alloca i64, align 8
  %addend1.addr = alloca i64, align 8
  %addend2.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %addend1, ptr %addend1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addend1.addr, metadata !5641, metadata !DIExpression()), !dbg !5644
  store i64 %addend2, ptr %addend2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addend2.addr, metadata !5642, metadata !DIExpression()), !dbg !5645
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #15, !dbg !5646
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !5643, metadata !DIExpression()), !dbg !5647
  %0 = load i64, ptr %addend1.addr, align 8, !dbg !5648
  %1 = load i64, ptr %addend2.addr, align 8, !dbg !5648
  %2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %0, i64 %1), !dbg !5648
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !5648
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !5648
  store i64 %4, ptr %bytes, align 8, !dbg !5648
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #16, !dbg !5648
  br i1 %call, label %if.then, label %if.end, !dbg !5650

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !5651
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5651

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !5652
  store i64 %5, ptr %retval, align 8, !dbg !5653
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5653

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #15, !dbg !5654
  %6 = load i64, ptr %retval, align 8, !dbg !5654
  ret i64 %6, !dbg !5654
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @size_mul(i64 noundef %factor1, i64 noundef %factor2) #6 align 16 !dbg !5655 {
entry:
  %retval = alloca i64, align 8
  %factor1.addr = alloca i64, align 8
  %factor2.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %factor1, ptr %factor1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %factor1.addr, metadata !5657, metadata !DIExpression()), !dbg !5660
  store i64 %factor2, ptr %factor2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %factor2.addr, metadata !5658, metadata !DIExpression()), !dbg !5661
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #15, !dbg !5662
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !5659, metadata !DIExpression()), !dbg !5663
  %0 = load i64, ptr %factor1.addr, align 8, !dbg !5664
  %1 = load i64, ptr %factor2.addr, align 8, !dbg !5664
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !5664
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !5664
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !5664
  store i64 %4, ptr %bytes, align 8, !dbg !5664
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #16, !dbg !5664
  br i1 %call, label %if.then, label %if.end, !dbg !5666

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !5667
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5667

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !5668
  store i64 %5, ptr %retval, align 8, !dbg !5669
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5669

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #15, !dbg !5670
  %6 = load i64, ptr %retval, align 8, !dbg !5670
  ret i64 %6, !dbg !5670
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @disk_set_independent_access_ranges(ptr noundef %disk, ptr noundef %iars) #0 align 16 !dbg !5671 {
entry:
  %disk.addr = alloca ptr, align 8
  %iars.addr = alloca ptr, align 8
  %q = alloca ptr, align 8
  store ptr %disk, ptr %disk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %disk.addr, metadata !5675, metadata !DIExpression()), !dbg !5679
  store ptr %iars, ptr %iars.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iars.addr, metadata !5676, metadata !DIExpression()), !dbg !5680
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #15, !dbg !5681
  call void @llvm.dbg.declare(metadata ptr %q, metadata !5677, metadata !DIExpression()), !dbg !5682
  %0 = load ptr, ptr %disk.addr, align 8, !dbg !5683
  %queue = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 9, !dbg !5684
  %1 = load ptr, ptr %queue, align 8, !dbg !5684
  store ptr %1, ptr %q, align 8, !dbg !5682
  %2 = load ptr, ptr %q, align 8, !dbg !5685
  %sysfs_dir_lock = getelementptr inbounds %struct.request_queue, ptr %2, i32 0, i32 43, !dbg !5686
  call void @mutex_lock(ptr noundef %sysfs_dir_lock) #16, !dbg !5687
  %3 = load ptr, ptr %q, align 8, !dbg !5688
  %sysfs_lock = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 42, !dbg !5689
  call void @mutex_lock(ptr noundef %sysfs_lock) #16, !dbg !5690
  %4 = load ptr, ptr %iars.addr, align 8, !dbg !5691
  %tobool = icmp ne ptr %4, null, !dbg !5691
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5693

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %disk.addr, align 8, !dbg !5694
  %6 = load ptr, ptr %iars.addr, align 8, !dbg !5695
  %call = call zeroext i1 @disk_check_ia_ranges(ptr noundef %5, ptr noundef %6) #16, !dbg !5696
  br i1 %call, label %if.end, label %if.then, !dbg !5697

if.then:                                          ; preds = %land.lhs.true
  %7 = load ptr, ptr %iars.addr, align 8, !dbg !5698
  call void @kfree(ptr noundef %7) #16, !dbg !5700
  store ptr null, ptr %iars.addr, align 8, !dbg !5701
  br label %if.end, !dbg !5702

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %8 = load ptr, ptr %iars.addr, align 8, !dbg !5703
  %tobool1 = icmp ne ptr %8, null, !dbg !5703
  br i1 %tobool1, label %land.lhs.true2, label %if.end5, !dbg !5705

land.lhs.true2:                                   ; preds = %if.end
  %9 = load ptr, ptr %disk.addr, align 8, !dbg !5706
  %10 = load ptr, ptr %iars.addr, align 8, !dbg !5707
  %call3 = call zeroext i1 @disk_ia_ranges_changed(ptr noundef %9, ptr noundef %10) #16, !dbg !5708
  br i1 %call3, label %if.end5, label %if.then4, !dbg !5709

if.then4:                                         ; preds = %land.lhs.true2
  %11 = load ptr, ptr %iars.addr, align 8, !dbg !5710
  call void @kfree(ptr noundef %11) #16, !dbg !5712
  br label %unlock, !dbg !5713

if.end5:                                          ; preds = %land.lhs.true2, %if.end
  %12 = load ptr, ptr %disk.addr, align 8, !dbg !5714
  call void @disk_unregister_independent_access_ranges(ptr noundef %12) #16, !dbg !5715
  %13 = load ptr, ptr %iars.addr, align 8, !dbg !5716
  %14 = load ptr, ptr %disk.addr, align 8, !dbg !5717
  %ia_ranges = getelementptr inbounds %struct.gendisk, ptr %14, i32 0, i32 29, !dbg !5718
  store ptr %13, ptr %ia_ranges, align 8, !dbg !5719
  %15 = load ptr, ptr %q, align 8, !dbg !5720
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %15, i32 0, i32 12, !dbg !5720
  %16 = ptrtoint ptr %queue_flags to i64, !dbg !5720
  %cmp = icmp ne i64 %16, 0, !dbg !5720
  %conv = zext i1 %cmp to i32, !dbg !5720
  %17 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5720
  br i1 %17, label %land.lhs.true6, label %cond.false, !dbg !5720

land.lhs.true6:                                   ; preds = %if.end5
  %18 = load ptr, ptr %q, align 8, !dbg !5720
  %queue_flags7 = getelementptr inbounds %struct.request_queue, ptr %18, i32 0, i32 12, !dbg !5720
  %19 = ptrtoint ptr %queue_flags7 to i64, !dbg !5720
  %cmp8 = icmp ne i64 %19, 0, !dbg !5720
  br i1 %cmp8, label %land.lhs.true10, label %cond.false, !dbg !5720

land.lhs.true10:                                  ; preds = %land.lhs.true6
  %20 = load ptr, ptr %q, align 8, !dbg !5720
  %queue_flags11 = getelementptr inbounds %struct.request_queue, ptr %20, i32 0, i32 12, !dbg !5720
  %21 = load i64, ptr %queue_flags11, align 8, !dbg !5720
  %22 = call i1 @llvm.is.constant.i64(i64 %21), !dbg !5720
  br i1 %22, label %cond.true, label %cond.false, !dbg !5722

cond.true:                                        ; preds = %land.lhs.true10
  %23 = load ptr, ptr %q, align 8, !dbg !5720
  %queue_flags12 = getelementptr inbounds %struct.request_queue, ptr %23, i32 0, i32 12, !dbg !5720
  %call13 = call zeroext i1 @const_test_bit(i64 noundef 22, ptr noundef %queue_flags12) #16, !dbg !5720
  br i1 %call13, label %if.then18, label %if.end20, !dbg !5720

cond.false:                                       ; preds = %land.lhs.true10, %land.lhs.true6, %if.end5
  %24 = load ptr, ptr %q, align 8, !dbg !5720
  %queue_flags15 = getelementptr inbounds %struct.request_queue, ptr %24, i32 0, i32 12, !dbg !5720
  %call16 = call zeroext i1 @_test_bit(i64 noundef 22, ptr noundef %queue_flags15) #16, !dbg !5720
  br i1 %call16, label %if.then18, label %if.end20, !dbg !5722

if.then18:                                        ; preds = %cond.false, %cond.true
  %25 = load ptr, ptr %disk.addr, align 8, !dbg !5723
  %call19 = call i32 @disk_register_independent_access_ranges(ptr noundef %25) #16, !dbg !5724
  br label %if.end20, !dbg !5724

if.end20:                                         ; preds = %if.then18, %cond.false, %cond.true
  br label %unlock, !dbg !5720

unlock:                                           ; preds = %if.end20, %if.then4
  call void @llvm.dbg.label(metadata !5678), !dbg !5725
  %26 = load ptr, ptr %q, align 8, !dbg !5726
  %sysfs_lock21 = getelementptr inbounds %struct.request_queue, ptr %26, i32 0, i32 42, !dbg !5727
  call void @mutex_unlock(ptr noundef %sysfs_lock21) #16, !dbg !5728
  %27 = load ptr, ptr %q, align 8, !dbg !5729
  %sysfs_dir_lock22 = getelementptr inbounds %struct.request_queue, ptr %27, i32 0, i32 43, !dbg !5730
  call void @mutex_unlock(ptr noundef %sysfs_dir_lock22) #16, !dbg !5731
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #15, !dbg !5732
  ret void, !dbg !5732
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5733 dso_local void @mutex_lock(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @disk_check_ia_ranges(ptr noundef %disk, ptr noundef %iars) #0 align 16 !dbg !5737 {
entry:
  %retval = alloca i1, align 1
  %disk.addr = alloca ptr, align 8
  %iars.addr = alloca ptr, align 8
  %iar = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %capacity = alloca i64, align 8
  %sector = alloca i64, align 8
  %i = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp18 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp40 = alloca i32, align 4
  %__tmp = alloca i64, align 8
  %__tmp54 = alloca i64, align 8
  %tmp68 = alloca i32, align 4
  store ptr %disk, ptr %disk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %disk.addr, metadata !5741, metadata !DIExpression()), !dbg !5763
  store ptr %iars, ptr %iars.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iars.addr, metadata !5742, metadata !DIExpression()), !dbg !5764
  call void @llvm.lifetime.start.p0(i64 8, ptr %iar) #15, !dbg !5765
  call void @llvm.dbg.declare(metadata ptr %iar, metadata !5743, metadata !DIExpression()), !dbg !5766
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #15, !dbg !5765
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !5744, metadata !DIExpression()), !dbg !5767
  call void @llvm.lifetime.start.p0(i64 8, ptr %capacity) #15, !dbg !5768
  call void @llvm.dbg.declare(metadata ptr %capacity, metadata !5745, metadata !DIExpression()), !dbg !5769
  %0 = load ptr, ptr %disk.addr, align 8, !dbg !5770
  %call = call i64 @get_capacity(ptr noundef %0) #16, !dbg !5771
  store i64 %call, ptr %capacity, align 8, !dbg !5769
  call void @llvm.lifetime.start.p0(i64 8, ptr %sector) #15, !dbg !5772
  call void @llvm.dbg.declare(metadata ptr %sector, metadata !5746, metadata !DIExpression()), !dbg !5773
  store i64 0, ptr %sector, align 8, !dbg !5773
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !5774
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5747, metadata !DIExpression()), !dbg !5775
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !5776
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5748, metadata !DIExpression()), !dbg !5776
  %1 = load ptr, ptr %iars.addr, align 8, !dbg !5776
  %nr_ia_ranges = getelementptr inbounds %struct.blk_independent_access_ranges, ptr %1, i32 0, i32 2, !dbg !5776
  %2 = load i32, ptr %nr_ia_ranges, align 4, !dbg !5776
  %tobool = icmp ne i32 %2, 0, !dbg !5776
  %lnot = xor i1 %tobool, true, !dbg !5776
  %lnot1 = xor i1 %lnot, true, !dbg !5776
  %lnot2 = xor i1 %lnot1, true, !dbg !5776
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5776
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5776
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !5777
  %tobool3 = icmp ne i32 %3, 0, !dbg !5777
  %lnot4 = xor i1 %tobool3, true, !dbg !5777
  %lnot6 = xor i1 %lnot4, true, !dbg !5777
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !5777
  %conv = sext i32 %lnot.ext7 to i64, !dbg !5777
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5777
  %tobool8 = icmp ne i64 %expval, 0, !dbg !5777
  br i1 %tobool8, label %if.then, label %if.end, !dbg !5776

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5777

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !5778
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5751, metadata !DIExpression()), !dbg !5778
  store i32 2307, ptr %__flags, align 4, !dbg !5778
  br label %do.body9, !dbg !5778

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !5779

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !5779

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !5778

do.body10:                                        ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !5781
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 201, i32 %4, i64 12) #15, !dbg !5781, !srcloc !5783
  br label %do.cond11, !dbg !5781

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !5781

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !5778

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !5784

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !5784

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !5777
  br label %do.cond16, !dbg !5778

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !5778

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !5778

if.end:                                           ; preds = %do.end17, %entry
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !5776
  %tobool19 = icmp ne i32 %5, 0, !dbg !5776
  %lnot20 = xor i1 %tobool19, true, !dbg !5776
  %lnot22 = xor i1 %lnot20, true, !dbg !5776
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !5776
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !5776
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !5776
  store i64 %expval25, ptr %tmp18, align 8, !dbg !5777
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !5786
  %6 = load i64, ptr %tmp18, align 8, !dbg !5776
  %tobool26 = icmp ne i64 %6, 0, !dbg !5786
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !5787

if.then27:                                        ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !5788
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5788

if.end28:                                         ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !5789
  br label %for.cond, !dbg !5790

for.cond:                                         ; preds = %for.inc, %if.end28
  %7 = load i32, ptr %i, align 4, !dbg !5791
  %8 = load ptr, ptr %iars.addr, align 8, !dbg !5792
  %nr_ia_ranges29 = getelementptr inbounds %struct.blk_independent_access_ranges, ptr %8, i32 0, i32 2, !dbg !5793
  %9 = load i32, ptr %nr_ia_ranges29, align 4, !dbg !5793
  %cmp = icmp ult i32 %7, %9, !dbg !5794
  br i1 %cmp, label %for.body, label %for.end, !dbg !5795

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %iars.addr, align 8, !dbg !5796
  %11 = load i64, ptr %sector, align 8, !dbg !5797
  %call31 = call ptr @disk_find_ia_range(ptr noundef %10, i64 noundef %11) #16, !dbg !5798
  store ptr %call31, ptr %tmp, align 8, !dbg !5799
  %12 = load ptr, ptr %tmp, align 8, !dbg !5800
  %tobool32 = icmp ne ptr %12, null, !dbg !5800
  br i1 %tobool32, label %lor.lhs.false, label %if.then36, !dbg !5802

lor.lhs.false:                                    ; preds = %for.body
  %13 = load ptr, ptr %tmp, align 8, !dbg !5803
  %sector33 = getelementptr inbounds %struct.blk_independent_access_range, ptr %13, i32 0, i32 1, !dbg !5804
  %14 = load i64, ptr %sector33, align 8, !dbg !5804
  %15 = load i64, ptr %sector, align 8, !dbg !5805
  %cmp34 = icmp ne i64 %14, %15, !dbg !5806
  br i1 %cmp34, label %if.then36, label %if.end42, !dbg !5807

if.then36:                                        ; preds = %lor.lhs.false, %for.body
  br label %do.body37, !dbg !5808

do.body37:                                        ; preds = %if.then36
  br label %do.cond38, !dbg !5811

do.cond38:                                        ; preds = %do.body37
  br label %do.end39, !dbg !5811

do.end39:                                         ; preds = %do.cond38
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef @.str.8) #18, !dbg !5808
  store i32 %call41, ptr %tmp40, align 4, !dbg !5811
  %16 = load i32, ptr %tmp40, align 4, !dbg !5808
  store i1 false, ptr %retval, align 1, !dbg !5813
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5813

if.end42:                                         ; preds = %lor.lhs.false
  %17 = load ptr, ptr %iars.addr, align 8, !dbg !5814
  %ia_range = getelementptr inbounds %struct.blk_independent_access_ranges, ptr %17, i32 0, i32 3, !dbg !5815
  %18 = load i32, ptr %i, align 4, !dbg !5816
  %idxprom = sext i32 %18 to i64, !dbg !5814
  %arrayidx = getelementptr [0 x %struct.blk_independent_access_range], ptr %ia_range, i64 0, i64 %idxprom, !dbg !5814
  store ptr %arrayidx, ptr %iar, align 8, !dbg !5817
  %19 = load ptr, ptr %tmp, align 8, !dbg !5818
  %20 = load ptr, ptr %iar, align 8, !dbg !5819
  %cmp43 = icmp ne ptr %19, %20, !dbg !5820
  br i1 %cmp43, label %if.then45, label %if.end60, !dbg !5821

if.then45:                                        ; preds = %if.end42
  br label %do.body46, !dbg !5822

do.body46:                                        ; preds = %if.then45
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #15, !dbg !5823
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !5754, metadata !DIExpression()), !dbg !5823
  %21 = load ptr, ptr %iar, align 8, !dbg !5823
  %sector47 = getelementptr inbounds %struct.blk_independent_access_range, ptr %21, i32 0, i32 1, !dbg !5823
  %22 = load i64, ptr %sector47, align 8, !dbg !5823
  store i64 %22, ptr %__tmp, align 8, !dbg !5823
  %23 = load ptr, ptr %tmp, align 8, !dbg !5823
  %sector48 = getelementptr inbounds %struct.blk_independent_access_range, ptr %23, i32 0, i32 1, !dbg !5823
  %24 = load i64, ptr %sector48, align 8, !dbg !5823
  %25 = load ptr, ptr %iar, align 8, !dbg !5823
  %sector49 = getelementptr inbounds %struct.blk_independent_access_range, ptr %25, i32 0, i32 1, !dbg !5823
  store i64 %24, ptr %sector49, align 8, !dbg !5823
  %26 = load i64, ptr %__tmp, align 8, !dbg !5823
  %27 = load ptr, ptr %tmp, align 8, !dbg !5823
  %sector50 = getelementptr inbounds %struct.blk_independent_access_range, ptr %27, i32 0, i32 1, !dbg !5823
  store i64 %26, ptr %sector50, align 8, !dbg !5823
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #15, !dbg !5822
  br label %do.cond51, !dbg !5823

do.cond51:                                        ; preds = %do.body46
  br label %do.end52, !dbg !5823

do.end52:                                         ; preds = %do.cond51
  br label %do.body53, !dbg !5824

do.body53:                                        ; preds = %do.end52
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp54) #15, !dbg !5825
  call void @llvm.dbg.declare(metadata ptr %__tmp54, metadata !5761, metadata !DIExpression()), !dbg !5825
  %28 = load ptr, ptr %iar, align 8, !dbg !5825
  %nr_sectors = getelementptr inbounds %struct.blk_independent_access_range, ptr %28, i32 0, i32 2, !dbg !5825
  %29 = load i64, ptr %nr_sectors, align 8, !dbg !5825
  store i64 %29, ptr %__tmp54, align 8, !dbg !5825
  %30 = load ptr, ptr %tmp, align 8, !dbg !5825
  %nr_sectors55 = getelementptr inbounds %struct.blk_independent_access_range, ptr %30, i32 0, i32 2, !dbg !5825
  %31 = load i64, ptr %nr_sectors55, align 8, !dbg !5825
  %32 = load ptr, ptr %iar, align 8, !dbg !5825
  %nr_sectors56 = getelementptr inbounds %struct.blk_independent_access_range, ptr %32, i32 0, i32 2, !dbg !5825
  store i64 %31, ptr %nr_sectors56, align 8, !dbg !5825
  %33 = load i64, ptr %__tmp54, align 8, !dbg !5825
  %34 = load ptr, ptr %tmp, align 8, !dbg !5825
  %nr_sectors57 = getelementptr inbounds %struct.blk_independent_access_range, ptr %34, i32 0, i32 2, !dbg !5825
  store i64 %33, ptr %nr_sectors57, align 8, !dbg !5825
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp54) #15, !dbg !5824
  br label %do.cond58, !dbg !5825

do.cond58:                                        ; preds = %do.body53
  br label %do.end59, !dbg !5825

do.end59:                                         ; preds = %do.cond58
  br label %if.end60, !dbg !5826

if.end60:                                         ; preds = %do.end59, %if.end42
  %35 = load ptr, ptr %iar, align 8, !dbg !5827
  %nr_sectors61 = getelementptr inbounds %struct.blk_independent_access_range, ptr %35, i32 0, i32 2, !dbg !5828
  %36 = load i64, ptr %nr_sectors61, align 8, !dbg !5828
  %37 = load i64, ptr %sector, align 8, !dbg !5829
  %add = add i64 %37, %36, !dbg !5829
  store i64 %add, ptr %sector, align 8, !dbg !5829
  br label %for.inc, !dbg !5830

for.inc:                                          ; preds = %if.end60
  %38 = load i32, ptr %i, align 4, !dbg !5831
  %inc = add i32 %38, 1, !dbg !5831
  store i32 %inc, ptr %i, align 4, !dbg !5831
  br label %for.cond, !dbg !5832, !llvm.loop !5833

for.end:                                          ; preds = %for.cond
  %39 = load i64, ptr %sector, align 8, !dbg !5835
  %40 = load i64, ptr %capacity, align 8, !dbg !5837
  %cmp62 = icmp ne i64 %39, %40, !dbg !5838
  br i1 %cmp62, label %if.then64, label %if.end70, !dbg !5839

if.then64:                                        ; preds = %for.end
  br label %do.body65, !dbg !5840

do.body65:                                        ; preds = %if.then64
  br label %do.cond66, !dbg !5843

do.cond66:                                        ; preds = %do.body65
  br label %do.end67, !dbg !5843

do.end67:                                         ; preds = %do.cond66
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef @.str.9) #18, !dbg !5840
  store i32 %call69, ptr %tmp68, align 4, !dbg !5843
  %41 = load i32, ptr %tmp68, align 4, !dbg !5840
  store i1 false, ptr %retval, align 1, !dbg !5845
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5845

if.end70:                                         ; preds = %for.end
  store i1 true, ptr %retval, align 1, !dbg !5846
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5846

cleanup:                                          ; preds = %if.end70, %do.end67, %do.end39, %if.then27
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !5847
  call void @llvm.lifetime.end.p0(i64 8, ptr %sector) #15, !dbg !5847
  call void @llvm.lifetime.end.p0(i64 8, ptr %capacity) #15, !dbg !5847
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #15, !dbg !5847
  call void @llvm.lifetime.end.p0(i64 8, ptr %iar) #15, !dbg !5847
  %42 = load i1, ptr %retval, align 1, !dbg !5847
  ret i1 %42, !dbg !5847
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @disk_ia_ranges_changed(ptr noundef %disk, ptr noundef %new) #0 align 16 !dbg !5848 {
entry:
  %retval = alloca i1, align 1
  %disk.addr = alloca ptr, align 8
  %new.addr = alloca ptr, align 8
  %old = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %disk, ptr %disk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %disk.addr, metadata !5850, metadata !DIExpression()), !dbg !5854
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5851, metadata !DIExpression()), !dbg !5855
  call void @llvm.lifetime.start.p0(i64 8, ptr %old) #15, !dbg !5856
  call void @llvm.dbg.declare(metadata ptr %old, metadata !5852, metadata !DIExpression()), !dbg !5857
  %0 = load ptr, ptr %disk.addr, align 8, !dbg !5858
  %ia_ranges = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 29, !dbg !5859
  %1 = load ptr, ptr %ia_ranges, align 8, !dbg !5859
  store ptr %1, ptr %old, align 8, !dbg !5857
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !5860
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5853, metadata !DIExpression()), !dbg !5861
  %2 = load ptr, ptr %old, align 8, !dbg !5862
  %tobool = icmp ne ptr %2, null, !dbg !5862
  br i1 %tobool, label %if.end, label %if.then, !dbg !5864

if.then:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !5865
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5865

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %old, align 8, !dbg !5866
  %nr_ia_ranges = getelementptr inbounds %struct.blk_independent_access_ranges, ptr %3, i32 0, i32 2, !dbg !5868
  %4 = load i32, ptr %nr_ia_ranges, align 4, !dbg !5868
  %5 = load ptr, ptr %new.addr, align 8, !dbg !5869
  %nr_ia_ranges1 = getelementptr inbounds %struct.blk_independent_access_ranges, ptr %5, i32 0, i32 2, !dbg !5870
  %6 = load i32, ptr %nr_ia_ranges1, align 4, !dbg !5870
  %cmp = icmp ne i32 %4, %6, !dbg !5871
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5872

if.then2:                                         ; preds = %if.end
  store i1 true, ptr %retval, align 1, !dbg !5873
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5873

if.end3:                                          ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !5874
  br label %for.cond, !dbg !5876

for.cond:                                         ; preds = %for.inc, %if.end3
  %7 = load i32, ptr %i, align 4, !dbg !5877
  %8 = load ptr, ptr %old, align 8, !dbg !5879
  %nr_ia_ranges4 = getelementptr inbounds %struct.blk_independent_access_ranges, ptr %8, i32 0, i32 2, !dbg !5880
  %9 = load i32, ptr %nr_ia_ranges4, align 4, !dbg !5880
  %cmp5 = icmp ult i32 %7, %9, !dbg !5881
  br i1 %cmp5, label %for.body, label %for.end, !dbg !5882

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %new.addr, align 8, !dbg !5883
  %ia_range = getelementptr inbounds %struct.blk_independent_access_ranges, ptr %10, i32 0, i32 3, !dbg !5886
  %11 = load i32, ptr %i, align 4, !dbg !5887
  %idxprom = sext i32 %11 to i64, !dbg !5883
  %arrayidx = getelementptr [0 x %struct.blk_independent_access_range], ptr %ia_range, i64 0, i64 %idxprom, !dbg !5883
  %sector = getelementptr inbounds %struct.blk_independent_access_range, ptr %arrayidx, i32 0, i32 1, !dbg !5888
  %12 = load i64, ptr %sector, align 8, !dbg !5888
  %13 = load ptr, ptr %old, align 8, !dbg !5889
  %ia_range6 = getelementptr inbounds %struct.blk_independent_access_ranges, ptr %13, i32 0, i32 3, !dbg !5890
  %14 = load i32, ptr %i, align 4, !dbg !5891
  %idxprom7 = sext i32 %14 to i64, !dbg !5889
  %arrayidx8 = getelementptr [0 x %struct.blk_independent_access_range], ptr %ia_range6, i64 0, i64 %idxprom7, !dbg !5889
  %sector9 = getelementptr inbounds %struct.blk_independent_access_range, ptr %arrayidx8, i32 0, i32 1, !dbg !5892
  %15 = load i64, ptr %sector9, align 8, !dbg !5892
  %cmp10 = icmp ne i64 %12, %15, !dbg !5893
  br i1 %cmp10, label %if.then19, label %lor.lhs.false, !dbg !5894

lor.lhs.false:                                    ; preds = %for.body
  %16 = load ptr, ptr %new.addr, align 8, !dbg !5895
  %ia_range11 = getelementptr inbounds %struct.blk_independent_access_ranges, ptr %16, i32 0, i32 3, !dbg !5896
  %17 = load i32, ptr %i, align 4, !dbg !5897
  %idxprom12 = sext i32 %17 to i64, !dbg !5895
  %arrayidx13 = getelementptr [0 x %struct.blk_independent_access_range], ptr %ia_range11, i64 0, i64 %idxprom12, !dbg !5895
  %nr_sectors = getelementptr inbounds %struct.blk_independent_access_range, ptr %arrayidx13, i32 0, i32 2, !dbg !5898
  %18 = load i64, ptr %nr_sectors, align 8, !dbg !5898
  %19 = load ptr, ptr %old, align 8, !dbg !5899
  %ia_range14 = getelementptr inbounds %struct.blk_independent_access_ranges, ptr %19, i32 0, i32 3, !dbg !5900
  %20 = load i32, ptr %i, align 4, !dbg !5901
  %idxprom15 = sext i32 %20 to i64, !dbg !5899
  %arrayidx16 = getelementptr [0 x %struct.blk_independent_access_range], ptr %ia_range14, i64 0, i64 %idxprom15, !dbg !5899
  %nr_sectors17 = getelementptr inbounds %struct.blk_independent_access_range, ptr %arrayidx16, i32 0, i32 2, !dbg !5902
  %21 = load i64, ptr %nr_sectors17, align 8, !dbg !5902
  %cmp18 = icmp ne i64 %18, %21, !dbg !5903
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5904

if.then19:                                        ; preds = %lor.lhs.false, %for.body
  store i1 true, ptr %retval, align 1, !dbg !5905
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5905

if.end20:                                         ; preds = %lor.lhs.false
  br label %for.inc, !dbg !5906

for.inc:                                          ; preds = %if.end20
  %22 = load i32, ptr %i, align 4, !dbg !5907
  %inc = add i32 %22, 1, !dbg !5907
  store i32 %inc, ptr %i, align 4, !dbg !5907
  br label %for.cond, !dbg !5908, !llvm.loop !5909

for.end:                                          ; preds = %for.cond
  store i1 false, ptr %retval, align 1, !dbg !5911
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5911

cleanup:                                          ; preds = %for.end, %if.then19, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !5912
  call void @llvm.lifetime.end.p0(i64 8, ptr %old) #15, !dbg !5912
  %23 = load i1, ptr %retval, align 1, !dbg !5912
  ret i1 %23, !dbg !5912
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #7

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !5913 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5921, metadata !DIExpression()), !dbg !5926
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5922, metadata !DIExpression()), !dbg !5927
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !5928
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5923, metadata !DIExpression()), !dbg !5929
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5930
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5931
  %div = udiv i64 %1, 64, !dbg !5931
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5932
  store ptr %add.ptr, ptr %p, align 8, !dbg !5929
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #15, !dbg !5933
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5924, metadata !DIExpression()), !dbg !5934
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5935
  %rem = urem i64 %2, 64, !dbg !5935
  %shl = shl i64 1, %rem, !dbg !5935
  store i64 %shl, ptr %mask, align 8, !dbg !5934
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #15, !dbg !5936
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5925, metadata !DIExpression()), !dbg !5937
  %3 = load ptr, ptr %p, align 8, !dbg !5938
  %4 = load i64, ptr %3, align 8, !dbg !5939
  store i64 %4, ptr %val, align 8, !dbg !5937
  %5 = load i64, ptr %val, align 8, !dbg !5940
  %6 = load i64, ptr %mask, align 8, !dbg !5941
  %and = and i64 %5, %6, !dbg !5942
  %tobool = icmp ne i64 %and, 0, !dbg !5943
  %lnot = xor i1 %tobool, true, !dbg !5943
  %lnot1 = xor i1 %lnot, true, !dbg !5944
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #15, !dbg !5945
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #15, !dbg !5945
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !5945
  ret i1 %lnot1, !dbg !5946
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !5947 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5950, metadata !DIExpression()), !dbg !5952
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5951, metadata !DIExpression()), !dbg !5953
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5954
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5955
  %div = udiv i64 %1, 64, !dbg !5955
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5956
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #16, !dbg !5957
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5958
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5959
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #16, !dbg !5960
  ret i1 %call, !dbg !5961
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5962 dso_local void @mutex_unlock(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @blk_ia_ranges_sysfs_release(ptr noundef %kobj) #0 align 16 !dbg !5963 {
entry:
  %kobj.addr = alloca ptr, align 8
  %iars = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5965, metadata !DIExpression()), !dbg !5969
  call void @llvm.lifetime.start.p0(i64 8, ptr %iars) #15, !dbg !5970
  call void @llvm.dbg.declare(metadata ptr %iars, metadata !5966, metadata !DIExpression()), !dbg !5971
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5972
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5967, metadata !DIExpression()), !dbg !5972
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5972
  store ptr %0, ptr %__mptr, align 8, !dbg !5972
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5972
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5972
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5972
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5973
  %2 = load ptr, ptr %tmp, align 8, !dbg !5972
  store ptr %2, ptr %iars, align 8, !dbg !5971
  %3 = load ptr, ptr %iars, align 8, !dbg !5974
  call void @kfree(ptr noundef %3) #16, !dbg !5975
  call void @llvm.lifetime.end.p0(i64 8, ptr %iars) #15, !dbg !5976
  ret void, !dbg !5976
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @blk_ia_range_sysfs_nop_release(ptr noundef %kobj) #0 align 16 !dbg !5977 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5979, metadata !DIExpression()), !dbg !5980
  ret void, !dbg !5981
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @blk_ia_range_sysfs_show(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !5982 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %iar = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5984, metadata !DIExpression()), !dbg !5993
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5985, metadata !DIExpression()), !dbg !5994
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5986, metadata !DIExpression()), !dbg !5995
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #15, !dbg !5996
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !5987, metadata !DIExpression()), !dbg !5997
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5998
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5988, metadata !DIExpression()), !dbg !5998
  %0 = load ptr, ptr %attr.addr, align 8, !dbg !5998
  store ptr %0, ptr %__mptr, align 8, !dbg !5998
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5998
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5998
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5998
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5999
  %2 = load ptr, ptr %tmp, align 8, !dbg !5998
  store ptr %2, ptr %entry1, align 8, !dbg !5997
  call void @llvm.lifetime.start.p0(i64 8, ptr %iar) #15, !dbg !6000
  call void @llvm.dbg.declare(metadata ptr %iar, metadata !5990, metadata !DIExpression()), !dbg !6001
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #15, !dbg !6002
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !5991, metadata !DIExpression()), !dbg !6002
  %3 = load ptr, ptr %kobj.addr, align 8, !dbg !6002
  store ptr %3, ptr %__mptr2, align 8, !dbg !6002
  %4 = load ptr, ptr %__mptr2, align 8, !dbg !6002
  %add.ptr4 = getelementptr i8, ptr %4, i64 0, !dbg !6002
  store ptr %add.ptr4, ptr %tmp3, align 8, !dbg !6002
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #15, !dbg !6003
  %5 = load ptr, ptr %tmp3, align 8, !dbg !6002
  store ptr %5, ptr %iar, align 8, !dbg !6001
  %6 = load ptr, ptr %entry1, align 8, !dbg !6004
  %show = getelementptr inbounds %struct.blk_ia_range_sysfs_entry, ptr %6, i32 0, i32 1, !dbg !6005
  %7 = load ptr, ptr %show, align 8, !dbg !6005
  %8 = load ptr, ptr %iar, align 8, !dbg !6006
  %9 = load ptr, ptr %buf.addr, align 8, !dbg !6007
  %call = call i64 %7(ptr noundef %8, ptr noundef %9) #16, !dbg !6004
  call void @llvm.lifetime.end.p0(i64 8, ptr %iar) #15, !dbg !6008
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #15, !dbg !6008
  ret i64 %call, !dbg !6009
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @blk_ia_range_sector_show(ptr noundef %iar, ptr noundef %buf) #0 align 16 !dbg !6010 {
entry:
  %iar.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %iar, ptr %iar.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iar.addr, metadata !6012, metadata !DIExpression()), !dbg !6014
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6013, metadata !DIExpression()), !dbg !6015
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !6016
  %1 = load ptr, ptr %iar.addr, align 8, !dbg !6017
  %sector = getelementptr inbounds %struct.blk_independent_access_range, ptr %1, i32 0, i32 1, !dbg !6018
  %2 = load i64, ptr %sector, align 8, !dbg !6018
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.5, i64 noundef %2) #16, !dbg !6019
  %conv = sext i32 %call to i64, !dbg !6019
  ret i64 %conv, !dbg !6020
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6021 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @blk_ia_range_nr_sectors_show(ptr noundef %iar, ptr noundef %buf) #0 align 16 !dbg !6025 {
entry:
  %iar.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %iar, ptr %iar.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iar.addr, metadata !6027, metadata !DIExpression()), !dbg !6029
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6028, metadata !DIExpression()), !dbg !6030
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !6031
  %1 = load ptr, ptr %iar.addr, align 8, !dbg !6032
  %nr_sectors = getelementptr inbounds %struct.blk_independent_access_range, ptr %1, i32 0, i32 2, !dbg !6033
  %2 = load i64, ptr %nr_sectors, align 8, !dbg !6033
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.5, i64 noundef %2) #16, !dbg !6034
  %conv = sext i32 %call to i64, !dbg !6034
  ret i64 %conv, !dbg !6035
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc_node(i64 noundef %size, i32 noundef %flags, i32 noundef %node) #9 align 16 !dbg !6036 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %node.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6038, metadata !DIExpression()), !dbg !6044
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6039, metadata !DIExpression()), !dbg !6045
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !6040, metadata !DIExpression()), !dbg !6046
  %0 = load i64, ptr %size.addr, align 8, !dbg !6047
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6048
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6049

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6050
  %tobool = icmp ne i64 %2, 0, !dbg !6050
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6051

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !6052
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6041, metadata !DIExpression()), !dbg !6053
  %3 = load i64, ptr %size.addr, align 8, !dbg !6054
  %cmp = icmp ugt i64 %3, 8192, !dbg !6056
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6057

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6058
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6059
  %6 = load i32, ptr %node.addr, align 4, !dbg !6060
  %call = call noalias align 4096 ptr @kmalloc_large_node(i64 noundef %4, i32 noundef %5, i32 noundef %6) #17, !dbg !6061
  store ptr %call, ptr %retval, align 8, !dbg !6062
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6062

if.end:                                           ; preds = %if.then
  %7 = load i64, ptr %size.addr, align 8, !dbg !6063
  %call2 = call i32 @__kmalloc_index(i64 noundef %7, i1 noundef zeroext true) #16, !dbg !6063
  store i32 %call2, ptr %index, align 4, !dbg !6064
  %8 = load i32, ptr %flags.addr, align 4, !dbg !6065
  %9 = call ptr @llvm.returnaddress(i32 0), !dbg !6066
  %10 = ptrtoint ptr %9 to i64, !dbg !6066
  %call3 = call i32 @kmalloc_type(i32 noundef %8, i64 noundef %10) #16, !dbg !6067
  %idxprom = zext i32 %call3 to i64, !dbg !6068
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6068
  %11 = load i32, ptr %index, align 4, !dbg !6069
  %idxprom4 = zext i32 %11 to i64, !dbg !6068
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6068
  %12 = load ptr, ptr %arrayidx5, align 8, !dbg !6068
  %13 = load i32, ptr %flags.addr, align 4, !dbg !6070
  %14 = load i32, ptr %node.addr, align 4, !dbg !6071
  %15 = load i64, ptr %size.addr, align 8, !dbg !6072
  %call6 = call noalias align 8 ptr @kmalloc_node_trace(ptr noundef %12, i32 noundef %13, i32 noundef %14, i64 noundef %15) #19, !dbg !6073
  store ptr %call6, ptr %retval, align 8, !dbg !6074
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6074

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !6075
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %16 = load i64, ptr %size.addr, align 8, !dbg !6076
  %17 = load i32, ptr %flags.addr, align 4, !dbg !6077
  %18 = load i32, ptr %node.addr, align 4, !dbg !6078
  %call8 = call noalias align 8 ptr @__kmalloc_node(i64 noundef %16, i32 noundef %17, i32 noundef %18) #17, !dbg !6079
  store ptr %call8, ptr %retval, align 8, !dbg !6080
  br label %return, !dbg !6080

return:                                           ; preds = %if.end7, %cleanup
  %19 = load ptr, ptr %retval, align 8, !dbg !6081
  ret ptr %19, !dbg !6081
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6082 dso_local noalias ptr @kmalloc_large_node(i64 noundef, i32 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #8 align 16 !dbg !6083 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6087, metadata !DIExpression()), !dbg !6089
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6088, metadata !DIExpression()), !dbg !6090
  %0 = load i64, ptr %size.addr, align 8, !dbg !6091
  %tobool = icmp ne i64 %0, 0, !dbg !6091
  br i1 %tobool, label %if.end, label %if.then, !dbg !6093

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6094
  br label %return, !dbg !6094

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6095
  %cmp = icmp ule i64 %1, 8, !dbg !6097
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6098

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6099
  br label %return, !dbg !6099

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6100
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6102
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6103

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6104
  %cmp4 = icmp ule i64 %3, 96, !dbg !6105
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6106

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6107
  br label %return, !dbg !6107

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6108
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6110
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6111

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6112
  %cmp9 = icmp ule i64 %5, 192, !dbg !6113
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6114

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6115
  br label %return, !dbg !6115

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6116
  %cmp12 = icmp ule i64 %6, 8, !dbg !6118
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6119

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6120
  br label %return, !dbg !6120

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6121
  %cmp15 = icmp ule i64 %7, 16, !dbg !6123
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6124

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6125
  br label %return, !dbg !6125

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6126
  %cmp18 = icmp ule i64 %8, 32, !dbg !6128
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6129

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6130
  br label %return, !dbg !6130

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6131
  %cmp21 = icmp ule i64 %9, 64, !dbg !6133
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6134

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6135
  br label %return, !dbg !6135

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6136
  %cmp24 = icmp ule i64 %10, 128, !dbg !6138
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6139

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6140
  br label %return, !dbg !6140

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6141
  %cmp27 = icmp ule i64 %11, 256, !dbg !6143
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6144

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6145
  br label %return, !dbg !6145

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6146
  %cmp30 = icmp ule i64 %12, 512, !dbg !6148
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6149

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6150
  br label %return, !dbg !6150

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6151
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6153
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6154

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6155
  br label %return, !dbg !6155

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6156
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6158
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6159

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6160
  br label %return, !dbg !6160

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6161
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6163
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6164

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6165
  br label %return, !dbg !6165

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6166
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6168
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6169

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6170
  br label %return, !dbg !6170

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6171
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6173
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6174

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6175
  br label %return, !dbg !6175

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6176
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6178
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6179

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6180
  br label %return, !dbg !6180

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6181
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6183
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6184

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6185
  br label %return, !dbg !6185

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6186
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6188
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6189

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6190
  br label %return, !dbg !6190

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6191
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6193
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6194

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6195
  br label %return, !dbg !6195

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6196
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6198
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6199

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6200
  br label %return, !dbg !6200

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6201
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6203
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6204

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6205
  br label %return, !dbg !6205

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6206
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6208
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6209

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6210
  br label %return, !dbg !6210

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6211, !range !5439, !noundef !921
  %tobool69 = trunc i8 %25 to i1, !dbg !6211
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6213

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6214

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #20, !dbg !6215, !srcloc !6218
  unreachable, !dbg !6215

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6219

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6220

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6221

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6223

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6221

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.7, i32 480, i32 0, i64 12) #15, !dbg !6225, !srcloc !6227
  br label %do.end75, !dbg !6225

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6221

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6228
  br label %return, !dbg !6228

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6229
  ret i32 %26, !dbg !6229
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(3)
declare !dbg !6230 dso_local noalias ptr @kmalloc_node_trace(ptr noundef, i32 noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #8 align 16 !dbg !6233 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6237, metadata !DIExpression()), !dbg !6239
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6238, metadata !DIExpression()), !dbg !6240
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6241
  %and = and i32 %0, 17, !dbg !6241
  %cmp = icmp eq i32 %and, 0, !dbg !6241
  %lnot = xor i1 %cmp, true, !dbg !6241
  %lnot1 = xor i1 %lnot, true, !dbg !6241
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6241
  %conv = sext i32 %lnot.ext to i64, !dbg !6241
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6241
  %tobool = icmp ne i64 %expval, 0, !dbg !6241
  br i1 %tobool, label %if.then, label %if.end, !dbg !6243

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6244
  br label %return, !dbg !6244

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6245
  %and2 = and i32 %1, 1, !dbg !6247
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6247
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6248

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6249
  br label %return, !dbg !6249

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6250
  br label %return, !dbg !6250

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6252
  ret i32 %2, !dbg !6252
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #3

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6253 dso_local noalias ptr @__kmalloc_node(i64 noundef, i32 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6254 dso_local void @__compiletime_assert_245() #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #6 align 16 !dbg !6255 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !6259, metadata !DIExpression()), !dbg !6260
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !6261, !range !5439, !noundef !921
  %tobool = trunc i8 %0 to i1, !dbg !6261
  %lnot = xor i1 %tobool, true, !dbg !6261
  %lnot1 = xor i1 %lnot, true, !dbg !6261
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6261
  %conv = sext i32 %lnot.ext to i64, !dbg !6261
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6261
  %tobool2 = icmp ne i64 %expval, 0, !dbg !6261
  ret i1 %tobool2, !dbg !6262
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @get_capacity(ptr noundef %disk) #6 align 16 !dbg !6263 {
entry:
  %disk.addr = alloca ptr, align 8
  store ptr %disk, ptr %disk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %disk.addr, metadata !6267, metadata !DIExpression()), !dbg !6268
  %0 = load ptr, ptr %disk.addr, align 8, !dbg !6269
  %part0 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 7, !dbg !6270
  %1 = load ptr, ptr %part0, align 8, !dbg !6270
  %call = call i64 @bdev_nr_sectors(ptr noundef %1) #16, !dbg !6271
  ret i64 %call, !dbg !6272
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @disk_find_ia_range(ptr noundef %iars, i64 noundef %sector) #0 align 16 !dbg !6273 {
entry:
  %retval = alloca ptr, align 8
  %iars.addr = alloca ptr, align 8
  %sector.addr = alloca i64, align 8
  %iar = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %iars, ptr %iars.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iars.addr, metadata !6277, metadata !DIExpression()), !dbg !6281
  store i64 %sector, ptr %sector.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sector.addr, metadata !6278, metadata !DIExpression()), !dbg !6282
  call void @llvm.lifetime.start.p0(i64 8, ptr %iar) #15, !dbg !6283
  call void @llvm.dbg.declare(metadata ptr %iar, metadata !6279, metadata !DIExpression()), !dbg !6284
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !6285
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6280, metadata !DIExpression()), !dbg !6286
  store i32 0, ptr %i, align 4, !dbg !6287
  br label %for.cond, !dbg !6289

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !6290
  %1 = load ptr, ptr %iars.addr, align 8, !dbg !6292
  %nr_ia_ranges = getelementptr inbounds %struct.blk_independent_access_ranges, ptr %1, i32 0, i32 2, !dbg !6293
  %2 = load i32, ptr %nr_ia_ranges, align 4, !dbg !6293
  %cmp = icmp ult i32 %0, %2, !dbg !6294
  br i1 %cmp, label %for.body, label %for.end, !dbg !6295

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %iars.addr, align 8, !dbg !6296
  %ia_range = getelementptr inbounds %struct.blk_independent_access_ranges, ptr %3, i32 0, i32 3, !dbg !6298
  %4 = load i32, ptr %i, align 4, !dbg !6299
  %idxprom = sext i32 %4 to i64, !dbg !6296
  %arrayidx = getelementptr [0 x %struct.blk_independent_access_range], ptr %ia_range, i64 0, i64 %idxprom, !dbg !6296
  store ptr %arrayidx, ptr %iar, align 8, !dbg !6300
  %5 = load i64, ptr %sector.addr, align 8, !dbg !6301
  %6 = load ptr, ptr %iar, align 8, !dbg !6303
  %sector1 = getelementptr inbounds %struct.blk_independent_access_range, ptr %6, i32 0, i32 1, !dbg !6304
  %7 = load i64, ptr %sector1, align 8, !dbg !6304
  %cmp2 = icmp uge i64 %5, %7, !dbg !6305
  br i1 %cmp2, label %land.lhs.true, label %if.end, !dbg !6306

land.lhs.true:                                    ; preds = %for.body
  %8 = load i64, ptr %sector.addr, align 8, !dbg !6307
  %9 = load ptr, ptr %iar, align 8, !dbg !6308
  %sector3 = getelementptr inbounds %struct.blk_independent_access_range, ptr %9, i32 0, i32 1, !dbg !6309
  %10 = load i64, ptr %sector3, align 8, !dbg !6309
  %11 = load ptr, ptr %iar, align 8, !dbg !6310
  %nr_sectors = getelementptr inbounds %struct.blk_independent_access_range, ptr %11, i32 0, i32 2, !dbg !6311
  %12 = load i64, ptr %nr_sectors, align 8, !dbg !6311
  %add = add i64 %10, %12, !dbg !6312
  %cmp4 = icmp ult i64 %8, %add, !dbg !6313
  br i1 %cmp4, label %if.then, label %if.end, !dbg !6314

if.then:                                          ; preds = %land.lhs.true
  %13 = load ptr, ptr %iar, align 8, !dbg !6315
  store ptr %13, ptr %retval, align 8, !dbg !6316
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6316

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !6317

for.inc:                                          ; preds = %if.end
  %14 = load i32, ptr %i, align 4, !dbg !6318
  %inc = add i32 %14, 1, !dbg !6318
  store i32 %inc, ptr %i, align 4, !dbg !6318
  br label %for.cond, !dbg !6319, !llvm.loop !6320

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !6322
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6322

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !6323
  call void @llvm.lifetime.end.p0(i64 8, ptr %iar) #15, !dbg !6323
  %15 = load ptr, ptr %retval, align 8, !dbg !6323
  ret ptr %15, !dbg !6323
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6324 dso_local i32 @_printk(ptr noundef, ...) #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @bdev_nr_sectors(ptr noundef %bdev) #6 align 16 !dbg !6328 {
entry:
  %bdev.addr = alloca ptr, align 8
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !6332, metadata !DIExpression()), !dbg !6333
  %0 = load ptr, ptr %bdev.addr, align 8, !dbg !6334
  %bd_nr_sectors = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 1, !dbg !6335
  %1 = load i64, ptr %bd_nr_sectors, align 8, !dbg !6335
  ret i64 %1, !dbg !6336
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #8 align 16 !dbg !6337 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6345, metadata !DIExpression()), !dbg !6347
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6346, metadata !DIExpression()), !dbg !6348
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6349
  %1 = load i64, ptr %size.addr, align 8, !dbg !6350
  %conv = trunc i64 %1 to i32, !dbg !6350
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #16, !dbg !6351
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6352
  %3 = load i64, ptr %size.addr, align 8, !dbg !6352
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #16, !dbg !6352
  ret void, !dbg !6353
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !6354 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6357, metadata !DIExpression()), !dbg !6359
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6358, metadata !DIExpression()), !dbg !6360
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6361
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6362
  br i1 %1, label %cond.true, label %cond.false, !dbg !6362

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6363
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6364
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #16, !dbg !6365
  %conv = zext i1 %call to i32, !dbg !6365
  br label %cond.end, !dbg !6362

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6366
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6367
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #16, !dbg !6368
  %conv2 = zext i1 %call1 to i32, !dbg !6368
  br label %cond.end, !dbg !6362

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6362
  %tobool = icmp ne i32 %cond, 0, !dbg !6362
  ret i1 %tobool, !dbg !6369
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !6370 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6375, metadata !DIExpression()), !dbg !6377
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6376, metadata !DIExpression()), !dbg !6378
  ret i1 true, !dbg !6379
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !6380 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6385, metadata !DIExpression()), !dbg !6388
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6386, metadata !DIExpression()), !dbg !6389
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6387, metadata !DIExpression()), !dbg !6390
  ret void, !dbg !6391
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !6392 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6396, metadata !DIExpression()), !dbg !6398
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6397, metadata !DIExpression()), !dbg !6399
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6400
  %and = and i64 %0, 63, !dbg !6401
  %shl = shl i64 1, %and, !dbg !6402
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6403
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6404
  %shr = ashr i64 %2, 6, !dbg !6405
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6403
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6403
  %and1 = and i64 %shl, %3, !dbg !6406
  %cmp = icmp ne i64 %and1, 0, !dbg !6407
  ret i1 %cmp, !dbg !6408
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !6409 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6411, metadata !DIExpression()), !dbg !6414
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6412, metadata !DIExpression()), !dbg !6415
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #15, !dbg !6416
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6413, metadata !DIExpression()), !dbg !6417
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6418
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6419
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #15, !dbg !6420, !srcloc !6421
  %3 = icmp ult i8 %2, 2, !dbg !6420
  call void @llvm.assume(i1 %3), !dbg !6420
  store i8 %2, ptr %oldbit, align 1, !dbg !6420
  %4 = load i8, ptr %oldbit, align 1, !dbg !6422, !range !5439, !noundef !921
  %tobool = trunc i8 %4 to i1, !dbg !6422
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #15, !dbg !6423
  ret i1 %tobool, !dbg !6424
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(3) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { cold noredzone }
attributes #19 = { noredzone allocsize(3) }
attributes #20 = { noredzone noreturn }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!5393, !5394, !5395, !5396, !5397, !5398, !5399, !5400}
!llvm.ident = !{!5401}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 124, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "block/blk-ia-ranges.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2810aef650f6ac152f185b6185782c2f")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 22)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "blk_ia_ranges_ktype", scope: !9, file: !2, line: 97, type: !308, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF block/.blk-ia-ranges.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22block/blk-ia-ranges\22 -D KBUILD_BASENAME=\22blk_ia_ranges\22 -D KBUILD_MODNAME=\22blk_ia_ranges\22 -D __KBUILD_MODNAME=kmod_blk_ia_ranges -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o block/blk-ia-ranges.ll block/blk-ia-ranges.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !191, globals: !5342, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !19, !24, !30, !35, !43, !51, !67, !73, !80, !87, !93, !99, !103, !107, !113, !120, !128, !136, !145, !150, !155, !161, !166, !171, !176, !181}
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
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !31, line: 65, baseType: !13, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!32 = !{!33, !34}
!33 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!34 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !36, line: 9, baseType: !13, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!37 = !{!38, !39, !40, !41, !42}
!38 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!39 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!40 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!41 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!42 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !44, line: 68, baseType: !13, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!45 = !{!46, !47, !48, !49, !50}
!46 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!47 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!48 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!49 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!50 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !52, line: 1325, baseType: !13, size: 32, elements: !53)
!52 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!53 = !{!54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66}
!54 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!55 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!56 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!57 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!58 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!59 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!60 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!61 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!62 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!63 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!64 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!65 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!66 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !68, line: 16, baseType: !13, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!69 = !{!70, !71, !72}
!70 = !DIEnumerator(name: "TT_NONE", value: 0)
!71 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!72 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !74, line: 51, baseType: !13, size: 32, elements: !75)
!74 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!75 = !{!76, !77, !78, !79}
!76 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!77 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!78 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!79 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !81, line: 15, baseType: !13, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!82 = !{!83, !84, !85, !86}
!83 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!84 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!85 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!86 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !88, line: 26, baseType: !13, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!89 = !{!90, !91, !92}
!90 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!91 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!92 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mq_rq_state", file: !94, line: 68, baseType: !13, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/blk-mq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "62cf1706db3683ee75df9cf32a2cf47d")
!95 = !{!96, !97, !98}
!96 = !DIEnumerator(name: "MQ_RQ_IDLE", value: 0)
!97 = !DIEnumerator(name: "MQ_RQ_IN_FLIGHT", value: 1)
!98 = !DIEnumerator(name: "MQ_RQ_COMPLETE", value: 2)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rq_end_io_ret", file: !94, line: 18, baseType: !13, size: 32, elements: !100)
!100 = !{!101, !102}
!101 = !DIEnumerator(name: "RQ_END_IO_NONE", value: 0)
!102 = !DIEnumerator(name: "RQ_END_IO_FREE", value: 1)
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_eh_timer_return", file: !94, line: 276, baseType: !13, size: 32, elements: !104)
!104 = !{!105, !106}
!105 = !DIEnumerator(name: "BLK_EH_DONE", value: 0)
!106 = !DIEnumerator(name: "BLK_EH_RESET_TIMER", value: 1)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !108, line: 45, baseType: !13, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!109 = !{!110, !111, !112}
!110 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!111 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!112 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !114, line: 487, baseType: !13, size: 32, elements: !115)
!114 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!115 = !{!116, !117, !118, !119}
!116 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!117 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!118 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!119 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !121, line: 620, baseType: !13, size: 32, elements: !122)
!121 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!122 = !{!123, !124, !125, !126, !127}
!123 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!124 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!125 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!126 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!127 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !121, line: 597, baseType: !129, size: 32, elements: !130)
!129 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!130 = !{!131, !132, !133, !134, !135}
!131 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!132 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!133 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!134 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!135 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !114, line: 547, baseType: !13, size: 32, elements: !137)
!137 = !{!138, !139, !140, !141, !142, !143, !144}
!138 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!139 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!140 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!141 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!142 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!143 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!144 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!145 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !114, line: 564, baseType: !13, size: 32, elements: !146)
!146 = !{!147, !148, !149}
!147 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!148 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!149 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!150 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !114, line: 577, baseType: !13, size: 32, elements: !151)
!151 = !{!152, !153, !154}
!152 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!153 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!154 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!155 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !114, line: 503, baseType: !13, size: 32, elements: !156)
!156 = !{!157, !158, !159, !160}
!157 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!158 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!159 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!160 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!161 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_bounce", file: !162, line: 295, baseType: !13, size: 32, elements: !163)
!162 = !DIFile(filename: "./include/linux/blkdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "802ed60c7d9aff392515db0b7890881d")
!163 = !{!164, !165}
!164 = !DIEnumerator(name: "BLK_BOUNCE_NONE", value: 0)
!165 = !DIEnumerator(name: "BLK_BOUNCE_HIGH", value: 1)
!166 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_zoned_model", file: !162, line: 285, baseType: !13, size: 32, elements: !167)
!167 = !{!168, !169, !170}
!168 = !DIEnumerator(name: "BLK_ZONED_NONE", value: 0)
!169 = !DIEnumerator(name: "BLK_ZONED_HA", value: 1)
!170 = !DIEnumerator(name: "BLK_ZONED_HM", value: 2)
!171 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_unique_id", file: !162, line: 1381, baseType: !13, size: 32, elements: !172)
!172 = !{!173, !174, !175}
!173 = !DIEnumerator(name: "BLK_UID_T10", value: 1)
!174 = !DIEnumerator(name: "BLK_UID_EUI64", value: 2)
!175 = !DIEnumerator(name: "BLK_UID_NAA", value: 3)
!176 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !177, line: 10, baseType: !13, size: 32, elements: !178)
!177 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!178 = !{!179, !180}
!179 = !DIEnumerator(name: "false", value: 0)
!180 = !DIEnumerator(name: "true", value: 1)
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !182, line: 364, baseType: !13, size: 32, elements: !183)
!182 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!183 = !{!184, !185, !186, !187, !188, !189, !190}
!184 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!185 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!186 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!187 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!188 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!189 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!190 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!191 = !{!129, !192, !194, !195, !197, !199, !5333, !5341, !196, !340, !983}
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !193, line: 154, baseType: !13)
!193 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !193, line: 42, baseType: !196)
!196 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_ranges", file: !162, line: 384, size: 576, elements: !201)
!201 = !{!202, !5324, !5325, !5326}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !200, file: !162, line: 385, baseType: !203, size: 512)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !204, line: 64, size: 512, elements: !205)
!204 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!205 = !{!206, !209, !215, !217, !306, !5210, !5314, !5319, !5320, !5321, !5322, !5323}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !203, file: !204, line: 65, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !203, file: !204, line: 66, baseType: !210, size: 128, offset: 64)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !193, line: 190, size: 128, elements: !211)
!211 = !{!212, !214}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !210, file: !193, line: 191, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !210, file: !193, line: 191, baseType: !213, size: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !203, file: !204, line: 67, baseType: !216, size: 64, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !203, file: !204, line: 68, baseType: !218, size: 64, offset: 256)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !204, line: 168, size: 768, elements: !220)
!220 = !{!221, !222, !265, !266}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !219, file: !204, line: 169, baseType: !210, size: 128)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !219, file: !204, line: 170, baseType: !223, size: 32, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !224, line: 29, baseType: !225)
!224 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !224, line: 17, size: 32, elements: !226)
!226 = !{!227}
!227 = !DIDerivedType(tag: DW_TAG_member, scope: !225, file: !224, line: 18, baseType: !228, size: 32)
!228 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !225, file: !224, line: 18, size: 32, elements: !229)
!229 = !{!230}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !228, file: !224, line: 19, baseType: !231, size: 32)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !232, line: 14, size: 32, elements: !233)
!232 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!233 = !{!234}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !231, file: !232, line: 15, baseType: !235, size: 32)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !236, line: 44, baseType: !237)
!236 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !236, line: 14, size: 32, elements: !238)
!238 = !{!239}
!239 = !DIDerivedType(tag: DW_TAG_member, scope: !237, file: !236, line: 15, baseType: !240, size: 32)
!240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !237, file: !236, line: 15, size: 32, elements: !241)
!241 = !{!242, !247, !257}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !240, file: !236, line: 16, baseType: !243, size: 32)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !193, line: 174, baseType: !244)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !193, line: 172, size: 32, elements: !245)
!245 = !{!246}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !244, file: !193, line: 173, baseType: !129, size: 32)
!247 = !DIDerivedType(tag: DW_TAG_member, scope: !240, file: !236, line: 24, baseType: !248, size: 16)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !240, file: !236, line: 24, size: 16, elements: !249)
!249 = !{!250, !256}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !248, file: !236, line: 25, baseType: !251, size: 8)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !252, line: 17, baseType: !253)
!252 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !254, line: 21, baseType: !255)
!254 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!255 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !248, file: !236, line: 26, baseType: !251, size: 8, offset: 8)
!257 = !DIDerivedType(tag: DW_TAG_member, scope: !240, file: !236, line: 28, baseType: !258, size: 32)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !240, file: !236, line: 28, size: 32, elements: !259)
!259 = !{!260, !264}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !258, file: !236, line: 29, baseType: !261, size: 16)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !252, line: 19, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !254, line: 24, baseType: !263)
!263 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !258, file: !236, line: 30, baseType: !261, size: 16, offset: 16)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !219, file: !204, line: 171, baseType: !203, size: 512, offset: 192)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !219, file: !204, line: 172, baseType: !267, size: 64, offset: 704)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !269)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !204, line: 133, size: 192, elements: !270)
!270 = !{!271, !278, !283}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !269, file: !204, line: 134, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !273)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{!129, !276}
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !269, file: !204, line: 135, baseType: !279, size: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{!207, !276}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !269, file: !204, line: 136, baseType: !284, size: 64, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!129, !276, !288}
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !204, line: 125, size: 20736, elements: !290)
!290 = !{!291, !296, !300, !301, !305}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !289, file: !204, line: 126, baseType: !292, size: 192)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 192, elements: !294)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!294 = !{!295}
!295 = !DISubrange(count: 3)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !289, file: !204, line: 127, baseType: !297, size: 4096, offset: 192)
!297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 4096, elements: !298)
!298 = !{!299}
!299 = !DISubrange(count: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !289, file: !204, line: 128, baseType: !129, size: 32, offset: 4288)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !289, file: !204, line: 129, baseType: !302, size: 16384, offset: 4320)
!302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !303)
!303 = !{!304}
!304 = !DISubrange(count: 2048)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !289, file: !204, line: 130, baseType: !129, size: 32, offset: 20704)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !203, file: !204, line: 69, baseType: !307, size: 64, offset: 320)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !309)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !204, line: 116, size: 384, elements: !310)
!310 = !{!311, !315, !343, !5198, !5202, !5206}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !309, file: !204, line: 117, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{null, !216}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !309, file: !204, line: 118, baseType: !316, size: 64, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !318)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !319, line: 254, size: 128, elements: !320)
!319 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!320 = !{!321, !336}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !318, file: !319, line: 255, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!325, !216, !330, !293}
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !193, line: 66, baseType: !326)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !327, line: 73, baseType: !328)
!327 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !327, line: 15, baseType: !329)
!329 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !319, line: 30, size: 128, elements: !332)
!332 = !{!333, !334}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !331, file: !319, line: 31, baseType: !207, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !331, file: !319, line: 32, baseType: !335, size: 16, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !193, line: 24, baseType: !263)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !318, file: !319, line: 256, baseType: !337, size: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{!325, !216, !330, !207, !340}
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !193, line: 61, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !327, line: 72, baseType: !342)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !327, line: 16, baseType: !196)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !309, file: !204, line: 119, baseType: !344, size: 64, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !347)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !319, line: 84, size: 320, elements: !348)
!348 = !{!349, !350, !354, !5194, !5196}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !347, file: !319, line: 85, baseType: !207, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !347, file: !319, line: 86, baseType: !351, size: 64, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{!335, !216, !330, !129}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !347, file: !319, line: 88, baseType: !355, size: 64, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!335, !216, !358, !129}
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !319, line: 175, size: 512, elements: !360)
!360 = !{!361, !362, !363, !364, !5185, !5189, !5190}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !359, file: !319, line: 176, baseType: !331, size: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !359, file: !319, line: 177, baseType: !340, size: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !359, file: !319, line: 178, baseType: !194, size: 64, offset: 192)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !359, file: !319, line: 179, baseType: !365, size: 64, offset: 256)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{!368}
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !20, line: 472, size: 1536, align: 64, elements: !370)
!370 = !{!371, !5022, !5023, !5024, !5025, !5026, !5027, !5028, !5029, !5179, !5180, !5181, !5182, !5183, !5184}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !369, file: !20, line: 473, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !20, line: 641, size: 4800, elements: !374)
!374 = !{!375, !376, !377, !385, !386, !393, !394, !397, !398, !4960, !4961, !4962, !4963, !4964, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4979, !4980, !4981, !4982, !4983, !4984, !4985, !4986, !4987, !4988, !4993, !4994, !4995, !4996, !4997, !4998, !4999, !5004, !5007, !5008, !5009, !5018, !5019, !5020, !5021}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !373, file: !20, line: 642, baseType: !335, size: 16)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !373, file: !20, line: 643, baseType: !263, size: 16, offset: 16)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !373, file: !20, line: 644, baseType: !378, size: 32, offset: 32)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !379, line: 23, baseType: !380)
!379 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !379, line: 21, size: 32, elements: !381)
!381 = !{!382}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !380, file: !379, line: 22, baseType: !383, size: 32)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !193, line: 37, baseType: !384)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !327, line: 49, baseType: !13)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !373, file: !20, line: 645, baseType: !210, size: 128, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !373, file: !20, line: 646, baseType: !387, size: 32, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !379, line: 28, baseType: !388)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !379, line: 26, size: 32, elements: !389)
!389 = !{!390}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !388, file: !379, line: 27, baseType: !391, size: 32)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !193, line: 38, baseType: !392)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !327, line: 50, baseType: !13)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !373, file: !20, line: 647, baseType: !13, size: 32, offset: 224)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !373, file: !20, line: 650, baseType: !395, size: 64, offset: 256)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !20, line: 607, flags: DIFlagFwdDecl)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !373, file: !20, line: 651, baseType: !395, size: 64, offset: 320)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !373, file: !20, line: 654, baseType: !399, size: 64, offset: 384)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !401)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !20, line: 1966, size: 2048, align: 512, elements: !402)
!402 = !{!403, !4794, !4804, !4808, !4812, !4816, !4820, !4824, !4828, !4832, !4836, !4837, !4841, !4845, !4882, !4911, !4915, !4921, !4925, !4929, !4933, !4937, !4941, !4947, !4951}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !401, file: !20, line: 1967, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DISubroutineType(types: !406)
!406 = !{!407, !372, !407, !13}
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !409, line: 82, size: 1536, elements: !410)
!409 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!410 = !{!411, !412, !422, !430, !431, !451, !452, !456, !469, !4777, !4778, !4779, !4780, !4786, !4787, !4788}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !408, file: !409, line: 84, baseType: !13, size: 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !408, file: !409, line: 85, baseType: !413, size: 32, offset: 32)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !414, line: 275, baseType: !415)
!414 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !414, line: 275, size: 32, elements: !416)
!416 = !{!417}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !415, file: !414, line: 275, baseType: !418, size: 32)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !414, line: 69, baseType: !419)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !414, line: 64, size: 32, elements: !420)
!420 = !{!421}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !419, file: !414, line: 65, baseType: !13, size: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !408, file: !409, line: 86, baseType: !423, size: 128, offset: 64)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !424, line: 38, size: 128, elements: !425)
!424 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!425 = !{!426, !428}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !423, file: !424, line: 39, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !423, file: !424, line: 39, baseType: !429, size: 64, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !408, file: !409, line: 87, baseType: !407, size: 64, offset: 192)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !408, file: !409, line: 88, baseType: !432, size: 128, offset: 256)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !409, line: 49, size: 128, elements: !433)
!433 = !{!434, !448}
!434 = !DIDerivedType(tag: DW_TAG_member, scope: !432, file: !409, line: 50, baseType: !435, size: 64)
!435 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !432, file: !409, line: 50, size: 64, elements: !436)
!436 = !{!437, !444}
!437 = !DIDerivedType(tag: DW_TAG_member, scope: !435, file: !409, line: 51, baseType: !438, size: 64)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !435, file: !409, line: 51, size: 64, elements: !439)
!439 = !{!440, !443}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !438, file: !409, line: 52, baseType: !441, size: 32)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !252, line: 21, baseType: !442)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !254, line: 27, baseType: !13)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !438, file: !409, line: 52, baseType: !441, size: 32, offset: 32)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !435, file: !409, line: 54, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !252, line: 23, baseType: !446)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !254, line: 31, baseType: !447)
!447 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !432, file: !409, line: 56, baseType: !449, size: 64, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !255)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !408, file: !409, line: 89, baseType: !372, size: 64, offset: 384)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !408, file: !409, line: 91, baseType: !453, size: 256, offset: 448)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, size: 256, elements: !454)
!454 = !{!455}
!455 = !DISubrange(count: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !408, file: !409, line: 94, baseType: !457, size: 64, offset: 704)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !458, line: 25, size: 64, elements: !459)
!458 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!459 = !{!460}
!460 = !DIDerivedType(tag: DW_TAG_member, scope: !457, file: !458, line: 26, baseType: !461, size: 64)
!461 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !457, file: !458, line: 26, size: 64, elements: !462)
!462 = !{!463, !464}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !461, file: !458, line: 28, baseType: !446, size: 64, align: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, scope: !461, file: !458, line: 30, baseType: !465, size: 64)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !461, file: !458, line: 30, size: 64, elements: !466)
!466 = !{!467, !468}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !465, file: !458, line: 31, baseType: !223, size: 32)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !465, file: !458, line: 32, baseType: !129, size: 32, offset: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !408, file: !409, line: 95, baseType: !470, size: 64, offset: 768)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !472)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !409, line: 128, size: 1024, align: 512, elements: !473)
!473 = !{!474, !478, !479, !486, !492, !496, !500, !504, !505, !509, !513, !4767, !4771}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !472, file: !409, line: 129, baseType: !475, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!129, !407, !13}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !472, file: !409, line: 130, baseType: !475, size: 64, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !472, file: !409, line: 131, baseType: !480, size: 64, offset: 128)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!129, !483, !485}
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !408)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !472, file: !409, line: 132, baseType: !487, size: 64, offset: 192)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!129, !483, !13, !207, !490}
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !432)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !472, file: !409, line: 134, baseType: !493, size: 64, offset: 256)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!129, !483}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !472, file: !409, line: 135, baseType: !497, size: 64, offset: 320)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{!129, !407}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !472, file: !409, line: 136, baseType: !501, size: 64, offset: 384)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{null, !407}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !472, file: !409, line: 137, baseType: !501, size: 64, offset: 448)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !472, file: !409, line: 138, baseType: !506, size: 64, offset: 512)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{null, !407, !372}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !472, file: !409, line: 139, baseType: !510, size: 64, offset: 576)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!293, !407, !293, !129}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !472, file: !409, line: 140, baseType: !514, size: 64, offset: 640)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!517, !4766}
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !519, line: 70, size: 256, elements: !520)
!519 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!520 = !{!521, !522, !4762, !4763}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !518, file: !519, line: 71, baseType: !407, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !518, file: !519, line: 72, baseType: !523, size: 64, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !20, line: 1190, size: 10752, elements: !525)
!525 = !{!526, !527, !530, !531, !532, !536, !1015, !1154, !1194, !1284, !1288, !1289, !1290, !1291, !1292, !1301, !1302, !1303, !1304, !1309, !1313, !1314, !3509, !3515, !3516, !3519, !3520, !3521, !3562, !4696, !4697, !4698, !4699, !4700, !4701, !4704, !4705, !4712, !4713, !4714, !4715, !4716, !4731, !4732, !4733, !4734, !4735, !4736, !4737, !4738, !4753, !4754, !4755, !4756, !4757, !4758, !4759, !4760, !4761}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !524, file: !20, line: 1191, baseType: !210, size: 128)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !524, file: !20, line: 1192, baseType: !528, size: 32, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !193, line: 21, baseType: !529)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !193, line: 18, baseType: !441)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !524, file: !20, line: 1193, baseType: !255, size: 8, offset: 160)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !524, file: !20, line: 1194, baseType: !196, size: 64, offset: 192)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !524, file: !20, line: 1195, baseType: !533, size: 64, offset: 256)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !193, line: 52, baseType: !534)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !327, line: 88, baseType: !535)
!535 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !524, file: !20, line: 1196, baseType: !537, size: 64, offset: 320)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !20, line: 2366, size: 576, elements: !539)
!539 = !{!540, !541, !542, !548, !552, !556, !560, !1000, !1001, !1005, !1007, !1008, !1009, !1011, !1012, !1013, !1014}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !538, file: !20, line: 2367, baseType: !207, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !538, file: !20, line: 2368, baseType: !129, size: 32, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !538, file: !20, line: 2376, baseType: !543, size: 64, offset: 128)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{!129, !546}
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !519, line: 21, flags: DIFlagFwdDecl)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !538, file: !20, line: 2377, baseType: !549, size: 64, offset: 192)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !551)
!551 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !20, line: 75, flags: DIFlagFwdDecl)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !538, file: !20, line: 2378, baseType: !553, size: 64, offset: 256)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{!407, !537, !129, !207, !194}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !538, file: !20, line: 2380, baseType: !557, size: 64, offset: 320)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{null, !523}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !538, file: !20, line: 2381, baseType: !561, size: 64, offset: 384)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !12, line: 402, size: 9216, align: 512, elements: !563)
!563 = !{!564, !565, !566, !570, !592, !618, !619, !620, !621, !625, !630, !631, !651, !707, !708, !709, !710, !711, !714, !715, !716, !724, !728, !755, !776, !777, !778, !779, !788, !811, !812, !815, !818, !819, !820, !821, !822, !823, !824, !829, !830, !958, !966, !967, !968, !970, !974, !975, !979, !980, !981, !982, !984, !985, !986, !993, !994, !995, !999}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !562, file: !12, line: 403, baseType: !11, size: 32)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !562, file: !12, line: 406, baseType: !210, size: 128, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !562, file: !12, line: 409, baseType: !567, size: 448, offset: 192)
!567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !568)
!568 = !{!569}
!569 = !DISubrange(count: 56)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !562, file: !12, line: 417, baseType: !571, size: 768, offset: 640)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !12, line: 45, size: 768, elements: !572)
!572 = !{!573, !574, !575, !576, !579}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !571, file: !12, line: 46, baseType: !203, size: 512)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !571, file: !12, line: 47, baseType: !561, size: 64, offset: 512)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !571, file: !12, line: 48, baseType: !216, size: 64, offset: 576)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !571, file: !12, line: 49, baseType: !577, size: 64, offset: 640)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !12, line: 49, flags: DIFlagFwdDecl)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !571, file: !12, line: 50, baseType: !580, size: 64, offset: 704)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !582, line: 26, size: 256, elements: !583)
!582 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!583 = !{!584, !585}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !581, file: !582, line: 27, baseType: !13, size: 32)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !581, file: !582, line: 28, baseType: !586, size: 192, offset: 64)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !587, line: 43, size: 192, elements: !588)
!587 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!588 = !{!589, !591}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !586, file: !587, line: 44, baseType: !590, size: 32)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !232, line: 23, baseType: !231)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !586, file: !587, line: 45, baseType: !210, size: 128, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !562, file: !12, line: 418, baseType: !593, size: 64, offset: 1408)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !12, line: 53, size: 448, elements: !595)
!595 = !{!596, !597, !602, !606, !610, !614}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !594, file: !12, line: 54, baseType: !331, size: 128)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !594, file: !12, line: 55, baseType: !598, size: 64, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{!325, !593, !601, !293}
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !594, file: !12, line: 57, baseType: !603, size: 64, offset: 192)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{!325, !593, !601, !207, !340}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !594, file: !12, line: 59, baseType: !607, size: 64, offset: 256)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DISubroutineType(types: !609)
!609 = !{null, !561, !207}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !594, file: !12, line: 60, baseType: !611, size: 64, offset: 320)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{!129, !561}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !594, file: !12, line: 61, baseType: !615, size: 64, offset: 384)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{null, !561}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !562, file: !12, line: 419, baseType: !207, size: 64, offset: 1472)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !562, file: !12, line: 420, baseType: !207, size: 64, offset: 1536)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !562, file: !12, line: 421, baseType: !216, size: 64, offset: 1600)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !562, file: !12, line: 424, baseType: !622, size: 64, offset: 1664)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !624)
!624 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !12, line: 424, flags: DIFlagFwdDecl)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !562, file: !12, line: 425, baseType: !626, size: 64, offset: 1728)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !628)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !252, line: 20, baseType: !629)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !254, line: 26, baseType: !129)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !562, file: !12, line: 426, baseType: !13, size: 32, offset: 1792)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !562, file: !12, line: 435, baseType: !632, size: 256, offset: 1856)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !633, line: 66, size: 256, elements: !634)
!633 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!634 = !{!635, !644, !645, !650}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !632, file: !633, line: 67, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !637, line: 13, baseType: !638)
!637 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !193, line: 181, baseType: !639)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !193, line: 179, size: 64, elements: !640)
!640 = !{!641}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !639, file: !193, line: 180, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !252, line: 22, baseType: !643)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !254, line: 30, baseType: !535)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !632, file: !633, line: 68, baseType: !590, size: 32, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !632, file: !633, line: 70, baseType: !646, size: 32, offset: 96)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !647, line: 15, size: 32, elements: !648)
!647 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!648 = !{!649}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !646, file: !647, line: 20, baseType: !243, size: 32)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !632, file: !633, line: 72, baseType: !210, size: 128, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !562, file: !12, line: 437, baseType: !652, size: 64, offset: 2112)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !654, line: 69, size: 320, elements: !655)
!654 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!655 = !{!656, !657, !658, !678, !680, !684, !685}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !653, file: !654, line: 70, baseType: !207, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !653, file: !654, line: 71, baseType: !561, size: 64, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !653, file: !654, line: 72, baseType: !659, size: 64, offset: 128)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !661)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !654, line: 47, size: 256, elements: !662)
!662 = !{!663, !664, !670, !674}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !661, file: !654, line: 49, baseType: !13, size: 32)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !661, file: !654, line: 51, baseType: !665, size: 64, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!129, !207, !668}
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !653)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !661, file: !654, line: 53, baseType: !671, size: 64, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{!129, !293, !668}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !661, file: !654, line: 55, baseType: !675, size: 64, offset: 192)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DISubroutineType(types: !677)
!677 = !{null, !194}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !653, file: !654, line: 73, baseType: !679, size: 16, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !653, file: !654, line: 74, baseType: !681, size: 8, offset: 208)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !252, line: 16, baseType: !682)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !254, line: 20, baseType: !683)
!683 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !653, file: !654, line: 75, baseType: !251, size: 8, offset: 216)
!685 = !DIDerivedType(tag: DW_TAG_member, scope: !653, file: !654, line: 76, baseType: !686, size: 64, offset: 256)
!686 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !653, file: !654, line: 76, size: 64, elements: !687)
!687 = !{!688, !689, !696}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !686, file: !654, line: 77, baseType: !194, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !686, file: !654, line: 78, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !692)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !654, line: 86, size: 128, elements: !693)
!693 = !{!694, !695}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !692, file: !654, line: 87, baseType: !13, size: 32)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !692, file: !654, line: 88, baseType: !293, size: 64, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !686, file: !654, line: 79, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !699)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !654, line: 92, size: 256, elements: !700)
!700 = !{!701, !702, !703, !705, !706}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !699, file: !654, line: 94, baseType: !13, size: 32)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !699, file: !654, line: 95, baseType: !13, size: 32, offset: 32)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !699, file: !654, line: 96, baseType: !704, size: 64, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !699, file: !654, line: 97, baseType: !659, size: 64, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !699, file: !654, line: 98, baseType: !194, size: 64, offset: 192)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !562, file: !12, line: 438, baseType: !13, size: 32, offset: 2176)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !562, file: !12, line: 441, baseType: !13, size: 32, offset: 2208)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !562, file: !12, line: 442, baseType: !622, size: 64, offset: 2240)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !562, file: !12, line: 443, baseType: !626, size: 64, offset: 2304)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !562, file: !12, line: 444, baseType: !712, size: 8, offset: 2368)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !193, line: 35, baseType: !713)
!713 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !562, file: !12, line: 451, baseType: !712, size: 8, offset: 2376)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !562, file: !12, line: 454, baseType: !13, size: 32, offset: 2400)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !562, file: !12, line: 455, baseType: !717, size: 64, offset: 2432)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !719, line: 23, size: 96, elements: !720)
!719 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!720 = !{!721, !722, !723}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !718, file: !719, line: 24, baseType: !129, size: 32)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !718, file: !719, line: 24, baseType: !129, size: 32, offset: 32)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !718, file: !719, line: 24, baseType: !129, size: 32, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !562, file: !12, line: 458, baseType: !725, size: 64, offset: 2496)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{!129}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !562, file: !12, line: 460, baseType: !729, size: 4032, align: 512, offset: 2560)
!729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !730, size: 4032, elements: !753)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !12, line: 362, size: 576, elements: !731)
!731 = !{!732, !733, !734}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !730, file: !12, line: 363, baseType: !194, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !730, file: !12, line: 364, baseType: !13, size: 32, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !730, file: !12, line: 367, baseType: !735, size: 448, offset: 128)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !12, line: 319, size: 448, elements: !736)
!736 = !{!737, !738}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !735, file: !12, line: 320, baseType: !561, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !735, file: !12, line: 321, baseType: !739, size: 384, offset: 64)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !740, line: 40, size: 384, elements: !741)
!740 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!741 = !{!742}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !739, file: !740, line: 41, baseType: !743, size: 384, align: 64)
!743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !744, size: 384, align: 64, elements: !751)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !745, line: 5, size: 192, align: 64, elements: !746)
!745 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!746 = !{!747, !748, !750}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !744, file: !745, line: 6, baseType: !196, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !744, file: !745, line: 7, baseType: !749, size: 64, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !744, file: !745, line: 8, baseType: !749, size: 64, offset: 128)
!751 = !{!752}
!752 = !DISubrange(count: 2)
!753 = !{!754}
!754 = !DISubrange(count: 7)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !562, file: !12, line: 463, baseType: !756, size: 192, offset: 6592)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !757, line: 8, size: 192, elements: !758)
!757 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!758 = !{!759, !760, !762}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !756, file: !757, line: 10, baseType: !13, size: 32)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !756, file: !757, line: 11, baseType: !761, size: 64, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !756, file: !757, line: 12, baseType: !763, size: 64, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !765, line: 59, size: 48, elements: !766)
!765 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!766 = !{!767, !771, !772, !773, !774, !775}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !764, file: !765, line: 60, baseType: !768, size: 16)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !252, line: 18, baseType: !769)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !254, line: 23, baseType: !770)
!770 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !764, file: !765, line: 61, baseType: !768, size: 16, offset: 16)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !764, file: !765, line: 63, baseType: !13, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !764, file: !765, line: 64, baseType: !13, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !764, file: !765, line: 65, baseType: !13, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !764, file: !765, line: 66, baseType: !13, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !562, file: !12, line: 465, baseType: !196, size: 64, offset: 6784)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !562, file: !12, line: 469, baseType: !13, size: 32, offset: 6848)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !562, file: !12, line: 470, baseType: !210, size: 128, offset: 6912)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !562, file: !12, line: 471, baseType: !780, size: 64, offset: 7040)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !782, line: 33, size: 96, elements: !783)
!782 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!783 = !{!784, !785, !786, !787}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !781, file: !782, line: 37, baseType: !129, size: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !781, file: !782, line: 43, baseType: !129, size: 32, offset: 32)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !781, file: !782, line: 45, baseType: !263, size: 16, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !781, file: !782, line: 47, baseType: !263, size: 16, offset: 80)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !562, file: !12, line: 476, baseType: !789, size: 64, offset: 7104)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !12, line: 378, size: 256, elements: !791)
!791 = !{!792, !808, !809, !810}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !790, file: !12, line: 379, baseType: !793, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !795, line: 204, baseType: !796)
!795 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !795, line: 197, size: 192, elements: !797)
!797 = !{!798, !800, !801, !802, !804, !806}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !796, file: !795, line: 198, baseType: !799, size: 32)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !795, line: 21, baseType: !442)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !796, file: !795, line: 199, baseType: !255, size: 8, offset: 32)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !796, file: !795, line: 200, baseType: !255, size: 8, offset: 40)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !796, file: !795, line: 201, baseType: !803, size: 16, offset: 48)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !795, line: 17, baseType: !262)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !796, file: !795, line: 202, baseType: !805, size: 64, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !795, line: 16, baseType: !446)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !796, file: !795, line: 203, baseType: !807, size: 64, offset: 128)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !795, line: 22, baseType: !446)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !790, file: !12, line: 380, baseType: !13, size: 32, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !790, file: !12, line: 381, baseType: !293, size: 64, offset: 128)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !790, file: !12, line: 382, baseType: !293, size: 64, offset: 192)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !562, file: !12, line: 477, baseType: !790, size: 256, offset: 7168)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !562, file: !12, line: 480, baseType: !813, size: 64, offset: 7424)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !12, line: 480, flags: DIFlagFwdDecl)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !562, file: !12, line: 483, baseType: !816, size: 64, offset: 7488)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !12, line: 483, flags: DIFlagFwdDecl)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !562, file: !12, line: 488, baseType: !293, size: 64, offset: 7552)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !562, file: !12, line: 492, baseType: !194, size: 64, offset: 7616)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !562, file: !12, line: 493, baseType: !13, size: 32, offset: 7680)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !562, file: !12, line: 495, baseType: !194, size: 64, offset: 7744)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !562, file: !12, line: 496, baseType: !13, size: 32, offset: 7808)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !562, file: !12, line: 499, baseType: !13, size: 32, offset: 7840)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !562, file: !12, line: 500, baseType: !825, size: 64, offset: 7872)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !827, line: 45, baseType: !828)
!827 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !562, file: !12, line: 503, baseType: !13, size: 32, offset: 7936)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !562, file: !12, line: 504, baseType: !831, size: 64, offset: 8000)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !834, line: 96, size: 192, elements: !835)
!834 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!835 = !{!836, !837, !918, !922}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !833, file: !834, line: 97, baseType: !13, size: 32)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !833, file: !834, line: 98, baseType: !838, size: 64, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !834, line: 24, size: 3072, elements: !840)
!840 = !{!841, !843, !844, !845, !846, !870, !871, !872, !873, !891, !903, !904, !915, !916, !917}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !839, file: !834, line: 26, baseType: !842, size: 128)
!842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !636, size: 128, elements: !751)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !839, file: !834, line: 27, baseType: !842, size: 128, offset: 128)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !839, file: !834, line: 28, baseType: !129, size: 32, offset: 256)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !839, file: !834, line: 31, baseType: !223, size: 32, align: 512, offset: 512)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !839, file: !834, line: 32, baseType: !847, size: 960, offset: 576)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !848, line: 206, size: 960, elements: !849)
!848 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!849 = !{!850, !859, !864, !866, !867, !869}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !847, file: !848, line: 207, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !193, line: 232, size: 128, align: 64, elements: !853)
!853 = !{!854, !855}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !852, file: !193, line: 233, baseType: !851, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !852, file: !193, line: 234, baseType: !856, size: 64, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{null, !851}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !847, file: !848, line: 208, baseType: !860, size: 256, offset: 64)
!860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !861, size: 256, elements: !862)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!862 = !{!863}
!863 = !DISubrange(count: 4)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !847, file: !848, line: 209, baseType: !865, size: 256, offset: 320)
!865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 256, elements: !862)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !847, file: !848, line: 213, baseType: !329, size: 64, offset: 576)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !847, file: !848, line: 215, baseType: !868, size: 256, offset: 640)
!868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 256, elements: !862)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !847, file: !848, line: 216, baseType: !251, size: 8, offset: 896)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !839, file: !834, line: 33, baseType: !196, size: 64, offset: 1536)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !839, file: !834, line: 34, baseType: !196, size: 64, offset: 1600)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !839, file: !834, line: 35, baseType: !712, size: 8, offset: 1664)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !839, file: !834, line: 36, baseType: !874, size: 320, offset: 1728)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !875, line: 11, size: 320, elements: !876)
!875 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!876 = !{!877, !884, !885, !890}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !874, file: !875, line: 16, baseType: !878, size: 128)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !193, line: 198, size: 128, elements: !879)
!879 = !{!880, !882}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !878, file: !193, line: 199, baseType: !881, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !878, file: !193, line: 199, baseType: !883, size: 64, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !874, file: !875, line: 17, baseType: !196, size: 64, offset: 128)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !874, file: !875, line: 18, baseType: !886, size: 64, offset: 192)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{null, !889}
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !874, file: !875, line: 19, baseType: !441, size: 32, offset: 256)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !839, file: !834, line: 37, baseType: !892, size: 256, offset: 2048)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !893, line: 98, size: 256, elements: !894)
!893 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!894 = !{!895, !896, !897}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !892, file: !893, line: 99, baseType: !636, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !892, file: !893, line: 100, baseType: !210, size: 128, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !892, file: !893, line: 101, baseType: !898, size: 64, offset: 192)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !893, line: 21, baseType: !899)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DISubroutineType(types: !901)
!901 = !{null, !902}
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !839, file: !834, line: 38, baseType: !852, size: 128, align: 64, offset: 2304)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !839, file: !834, line: 39, baseType: !905, size: 64, offset: 2432)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !834, line: 49, size: 768, elements: !907)
!907 = !{!908, !909, !910, !911, !912, !913, !914}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !906, file: !834, line: 50, baseType: !223, size: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !906, file: !834, line: 51, baseType: !865, size: 256, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !906, file: !834, line: 53, baseType: !865, size: 256, offset: 320)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !906, file: !834, line: 54, baseType: !196, size: 64, offset: 576)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !906, file: !834, line: 55, baseType: !905, size: 64, offset: 640)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !906, file: !834, line: 56, baseType: !129, size: 32, offset: 704)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !906, file: !834, line: 57, baseType: !129, size: 32, offset: 736)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !839, file: !834, line: 40, baseType: !196, size: 64, offset: 2496)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !839, file: !834, line: 42, baseType: !129, size: 32, offset: 2560)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !839, file: !834, line: 43, baseType: !832, size: 64, offset: 2624)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !833, file: !834, line: 99, baseType: !919, offset: 128)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !920, line: 211, elements: !921)
!920 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!921 = !{}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !833, file: !834, line: 100, baseType: !923, size: 64, offset: 128)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !834, line: 63, size: 3008, elements: !925)
!925 = !{!926, !927, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !957}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !924, file: !834, line: 64, baseType: !905, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !924, file: !834, line: 65, baseType: !928, size: 192, offset: 64)
!928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !905, size: 192, elements: !294)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !924, file: !834, line: 67, baseType: !129, size: 32, offset: 256)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !924, file: !834, line: 68, baseType: !632, size: 256, offset: 320)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !924, file: !834, line: 69, baseType: !223, size: 32, offset: 576)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !924, file: !834, line: 70, baseType: !632, size: 256, offset: 640)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !924, file: !834, line: 71, baseType: !196, size: 64, offset: 896)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !924, file: !834, line: 72, baseType: !196, size: 64, offset: 960)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !924, file: !834, line: 73, baseType: !196, size: 64, offset: 1024)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !924, file: !834, line: 74, baseType: !196, size: 64, offset: 1088)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !924, file: !834, line: 75, baseType: !196, size: 64, offset: 1152)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !924, file: !834, line: 76, baseType: !196, size: 64, offset: 1216)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !924, file: !834, line: 77, baseType: !196, size: 64, offset: 1280)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !924, file: !834, line: 78, baseType: !196, size: 64, offset: 1344)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !924, file: !834, line: 79, baseType: !712, size: 8, offset: 1408)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !924, file: !834, line: 80, baseType: !196, size: 64, offset: 1472)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !924, file: !834, line: 81, baseType: !632, size: 256, offset: 1536)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !924, file: !834, line: 82, baseType: !581, size: 256, offset: 1792)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !924, file: !834, line: 84, baseType: !243, size: 32, offset: 2048)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !924, file: !834, line: 87, baseType: !196, size: 64, offset: 2112)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !924, file: !834, line: 88, baseType: !196, size: 64, offset: 2176)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !924, file: !834, line: 89, baseType: !949, size: 704, offset: 2240)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !893, line: 111, size: 704, elements: !950)
!950 = !{!951, !952, !953, !956}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !949, file: !893, line: 112, baseType: !892, size: 256)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !949, file: !893, line: 113, baseType: !874, size: 320, offset: 256)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !949, file: !893, line: 116, baseType: !954, size: 64, offset: 576)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !893, line: 18, flags: DIFlagFwdDecl)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !949, file: !893, line: 117, baseType: !129, size: 32, offset: 640)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !924, file: !834, line: 90, baseType: !832, size: 64, offset: 2944)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !562, file: !12, line: 515, baseType: !959, size: 64, offset: 8064)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !961, line: 117, size: 128, elements: !962)
!961 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!962 = !{!963, !964, !965}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !960, file: !961, line: 118, baseType: !628, size: 32)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !960, file: !961, line: 119, baseType: !628, size: 32, offset: 32)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !960, file: !961, line: 120, baseType: !329, size: 64, offset: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !562, file: !12, line: 516, baseType: !13, size: 32, offset: 8128)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !562, file: !12, line: 519, baseType: !13, size: 32, offset: 8160)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !562, file: !12, line: 520, baseType: !969, size: 64, offset: 8192)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !562, file: !12, line: 523, baseType: !971, size: 64, offset: 8256)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !12, line: 523, flags: DIFlagFwdDecl)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !562, file: !12, line: 524, baseType: !13, size: 32, offset: 8320)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !562, file: !12, line: 525, baseType: !976, size: 64, offset: 8384)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !12, line: 525, flags: DIFlagFwdDecl)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !562, file: !12, line: 526, baseType: !13, size: 32, offset: 8448)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !562, file: !12, line: 533, baseType: !194, size: 64, offset: 8512)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !562, file: !12, line: 534, baseType: !13, size: 32, offset: 8576)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !562, file: !12, line: 535, baseType: !983, size: 64, offset: 8640)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !562, file: !12, line: 536, baseType: !13, size: 32, offset: 8704)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !562, file: !12, line: 539, baseType: !129, size: 32, offset: 8736)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !562, file: !12, line: 540, baseType: !987, size: 64, offset: 8768)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !989, line: 32, size: 64, elements: !990)
!989 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!990 = !{!991, !992}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !988, file: !989, line: 33, baseType: !628, size: 32)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !988, file: !989, line: 34, baseType: !628, size: 32, offset: 32)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !562, file: !12, line: 563, baseType: !210, size: 128, offset: 8832)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !562, file: !12, line: 565, baseType: !210, size: 128, offset: 8960)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !562, file: !12, line: 568, baseType: !996, size: 64, offset: 9088)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(types: !998)
!998 = !{null}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !562, file: !12, line: 570, baseType: !243, size: 32, offset: 9152)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !538, file: !20, line: 2382, baseType: !537, size: 64, offset: 448)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !538, file: !20, line: 2383, baseType: !1002, size: 64, offset: 512)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !193, line: 194, size: 64, elements: !1003)
!1003 = !{!1004}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1002, file: !193, line: 195, baseType: !881, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !538, file: !20, line: 2385, baseType: !1006, offset: 576)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !920, line: 206, elements: !921)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !538, file: !20, line: 2386, baseType: !1006, offset: 576)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !538, file: !20, line: 2387, baseType: !1006, offset: 576)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !538, file: !20, line: 2388, baseType: !1010, offset: 576)
!1010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1006, elements: !294)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !538, file: !20, line: 2390, baseType: !1006, offset: 576)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !538, file: !20, line: 2391, baseType: !1006, offset: 576)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !538, file: !20, line: 2392, baseType: !1006, offset: 576)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !538, file: !20, line: 2393, baseType: !1006, offset: 576)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !524, file: !20, line: 1197, baseType: !1016, size: 64, offset: 384)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1018)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !20, line: 2057, size: 1664, elements: !1019)
!1019 = !{!1020, !1024, !1028, !1029, !1033, !1039, !1043, !1044, !1045, !1049, !1053, !1057, !1058, !1059, !1065, !1069, !1070, !1077, !1078, !1079, !1080, !1084, !1088, !1137, !1152, !1153}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1018, file: !20, line: 2058, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!372, !523}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1018, file: !20, line: 2059, baseType: !1025, size: 64, offset: 64)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{null, !372}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1018, file: !20, line: 2060, baseType: !1025, size: 64, offset: 128)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1018, file: !20, line: 2062, baseType: !1030, size: 64, offset: 192)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{null, !372, !129}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1018, file: !20, line: 2063, baseType: !1034, size: 64, offset: 256)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!129, !372, !1037}
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !20, line: 309, flags: DIFlagFwdDecl)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1018, file: !20, line: 2064, baseType: !1040, size: 64, offset: 320)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!129, !372}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1018, file: !20, line: 2065, baseType: !1025, size: 64, offset: 384)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1018, file: !20, line: 2066, baseType: !557, size: 64, offset: 448)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1018, file: !20, line: 2067, baseType: !1046, size: 64, offset: 512)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!129, !523, !129}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1018, file: !20, line: 2068, baseType: !1050, size: 64, offset: 576)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!129, !523, !19}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1018, file: !20, line: 2069, baseType: !1054, size: 64, offset: 640)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!129, !523}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1018, file: !20, line: 2070, baseType: !1050, size: 64, offset: 704)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1018, file: !20, line: 2071, baseType: !1054, size: 64, offset: 768)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1018, file: !20, line: 2072, baseType: !1060, size: 64, offset: 832)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!129, !407, !1063}
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !20, line: 62, flags: DIFlagFwdDecl)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1018, file: !20, line: 2073, baseType: !1066, size: 64, offset: 896)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!129, !523, !761, !293}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1018, file: !20, line: 2074, baseType: !557, size: 64, offset: 960)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1018, file: !20, line: 2076, baseType: !1071, size: 64, offset: 1024)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!129, !1074, !407}
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1076, line: 66, flags: DIFlagFwdDecl)
!1076 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1018, file: !20, line: 2077, baseType: !1071, size: 64, offset: 1088)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1018, file: !20, line: 2078, baseType: !1071, size: 64, offset: 1152)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1018, file: !20, line: 2079, baseType: !1071, size: 64, offset: 1216)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1018, file: !20, line: 2081, baseType: !1081, size: 64, offset: 1280)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!325, !523, !129, !293, !340, !533}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1018, file: !20, line: 2082, baseType: !1085, size: 64, offset: 1344)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!325, !523, !129, !207, !340, !533}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1018, file: !20, line: 2083, baseType: !1089, size: 64, offset: 1408)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!1092, !372}
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !25, line: 296, size: 1664, elements: !1095)
!1095 = !{!1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1120, !1121, !1122}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1094, file: !25, line: 297, baseType: !878, size: 128)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1094, file: !25, line: 298, baseType: !210, size: 128, offset: 128)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1094, file: !25, line: 299, baseType: !210, size: 128, offset: 256)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1094, file: !25, line: 300, baseType: !210, size: 128, offset: 384)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1094, file: !25, line: 301, baseType: !632, size: 256, offset: 512)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1094, file: !25, line: 302, baseType: !223, size: 32, offset: 768)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1094, file: !25, line: 303, baseType: !243, size: 32, offset: 800)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1094, file: !25, line: 304, baseType: !523, size: 64, offset: 832)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1094, file: !25, line: 305, baseType: !1105, size: 64, offset: 896)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !25, line: 68, size: 64, elements: !1106)
!1106 = !{!1107, !1119}
!1107 = !DIDerivedType(tag: DW_TAG_member, scope: !1105, file: !25, line: 69, baseType: !1108, size: 32)
!1108 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1105, file: !25, line: 69, size: 32, elements: !1109)
!1109 = !{!1110, !1111, !1112}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1108, file: !25, line: 70, baseType: !378, size: 32)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1108, file: !25, line: 71, baseType: !387, size: 32)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1108, file: !25, line: 72, baseType: !1113, size: 32)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1114, line: 24, baseType: !1115)
!1114 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1114, line: 22, size: 32, elements: !1116)
!1116 = !{!1117}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1115, file: !1114, line: 23, baseType: !1118, size: 32)
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1114, line: 20, baseType: !384)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1105, file: !25, line: 74, baseType: !24, size: 32, offset: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1094, file: !25, line: 306, baseType: !533, size: 64, offset: 960)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1094, file: !25, line: 307, baseType: !196, size: 64, offset: 1024)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1094, file: !25, line: 308, baseType: !1123, size: 576, offset: 1088)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !25, line: 205, size: 576, elements: !1124)
!1124 = !{!1125, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1136}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1123, file: !25, line: 206, baseType: !1126, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !25, line: 66, baseType: !535)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1123, file: !25, line: 207, baseType: !1126, size: 64, offset: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1123, file: !25, line: 208, baseType: !1126, size: 64, offset: 128)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1123, file: !25, line: 209, baseType: !1126, size: 64, offset: 192)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1123, file: !25, line: 210, baseType: !1126, size: 64, offset: 256)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1123, file: !25, line: 211, baseType: !1126, size: 64, offset: 320)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1123, file: !25, line: 212, baseType: !1126, size: 64, offset: 384)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1123, file: !25, line: 213, baseType: !1134, size: 64, offset: 448)
!1134 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1135, line: 8, baseType: !643)
!1135 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1123, file: !25, line: 214, baseType: !1134, size: 64, offset: 512)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1018, file: !20, line: 2085, baseType: !1138, size: 64, offset: 1472)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!329, !523, !1141}
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1143, line: 15, size: 256, elements: !1144)
!1143 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1144 = !{!1145, !1146, !1147, !1148, !1149}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1142, file: !1143, line: 16, baseType: !192, size: 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1142, file: !1143, line: 19, baseType: !129, size: 32, offset: 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1142, file: !1143, line: 26, baseType: !196, size: 64, offset: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1142, file: !1143, line: 33, baseType: !196, size: 64, offset: 128)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1142, file: !1143, line: 36, baseType: !1150, size: 64, offset: 192)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1143, line: 36, flags: DIFlagFwdDecl)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1018, file: !20, line: 2087, baseType: !1138, size: 64, offset: 1536)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1018, file: !20, line: 2089, baseType: !557, size: 64, offset: 1600)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !524, file: !20, line: 1198, baseType: !1155, size: 64, offset: 448)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1157)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !25, line: 324, size: 704, elements: !1158)
!1158 = !{!1159, !1163, !1167, !1171, !1172, !1173, !1174, !1175, !1180, !1185, !1189}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1157, file: !25, line: 325, baseType: !1160, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!129, !1093}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1157, file: !25, line: 326, baseType: !1164, size: 64, offset: 64)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!1093, !523, !129}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1157, file: !25, line: 327, baseType: !1168, size: 64, offset: 128)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{null, !1093}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1157, file: !25, line: 328, baseType: !1160, size: 64, offset: 192)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1157, file: !25, line: 329, baseType: !1160, size: 64, offset: 256)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1157, file: !25, line: 330, baseType: !1160, size: 64, offset: 320)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1157, file: !25, line: 331, baseType: !1046, size: 64, offset: 384)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1157, file: !25, line: 334, baseType: !1176, size: 64, offset: 448)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!1179, !372}
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1157, file: !25, line: 335, baseType: !1181, size: 64, offset: 512)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!129, !372, !1184}
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1157, file: !25, line: 337, baseType: !1186, size: 64, offset: 576)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!129, !372, !1179}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1157, file: !25, line: 339, baseType: !1190, size: 64, offset: 640)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!129, !523, !1193}
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !524, file: !20, line: 1199, baseType: !1195, size: 64, offset: 512)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1197)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !25, line: 430, size: 704, elements: !1198)
!1198 = !{!1199, !1210, !1211, !1215, !1216, !1217, !1232, !1255, !1259, !1260, !1283}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1197, file: !25, line: 431, baseType: !1200, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!129, !523, !129, !129, !1203}
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1205)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1206, line: 8, size: 128, elements: !1207)
!1206 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1207 = !{!1208, !1209}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1205, file: !1206, line: 9, baseType: !517, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1205, file: !1206, line: 10, baseType: !407, size: 64, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1197, file: !25, line: 432, baseType: !1046, size: 64, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1197, file: !25, line: 433, baseType: !1212, size: 64, offset: 128)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!129, !523, !13}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1197, file: !25, line: 434, baseType: !1212, size: 64, offset: 192)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1197, file: !25, line: 435, baseType: !1046, size: 64, offset: 256)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1197, file: !25, line: 436, baseType: !1218, size: 64, offset: 320)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!129, !523, !129, !1221}
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !25, line: 417, size: 256, elements: !1223)
!1223 = !{!1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1222, file: !25, line: 418, baseType: !129, size: 32)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1222, file: !25, line: 419, baseType: !13, size: 32, offset: 32)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1222, file: !25, line: 420, baseType: !13, size: 32, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1222, file: !25, line: 422, baseType: !13, size: 32, offset: 96)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1222, file: !25, line: 423, baseType: !13, size: 32, offset: 128)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1222, file: !25, line: 424, baseType: !13, size: 32, offset: 160)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1222, file: !25, line: 425, baseType: !13, size: 32, offset: 192)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1222, file: !25, line: 426, baseType: !13, size: 32, offset: 224)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1197, file: !25, line: 437, baseType: !1233, size: 64, offset: 384)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!129, !523, !1105, !1236}
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !25, line: 345, size: 960, elements: !1238)
!1238 = !{!1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1237, file: !25, line: 346, baseType: !129, size: 32)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1237, file: !25, line: 347, baseType: !445, size: 64, offset: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1237, file: !25, line: 348, baseType: !445, size: 64, offset: 128)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1237, file: !25, line: 349, baseType: !445, size: 64, offset: 192)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1237, file: !25, line: 350, baseType: !445, size: 64, offset: 256)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1237, file: !25, line: 351, baseType: !445, size: 64, offset: 320)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1237, file: !25, line: 352, baseType: !445, size: 64, offset: 384)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1237, file: !25, line: 353, baseType: !642, size: 64, offset: 448)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1237, file: !25, line: 355, baseType: !642, size: 64, offset: 512)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1237, file: !25, line: 356, baseType: !129, size: 32, offset: 576)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1237, file: !25, line: 357, baseType: !129, size: 32, offset: 608)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1237, file: !25, line: 358, baseType: !445, size: 64, offset: 640)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1237, file: !25, line: 359, baseType: !445, size: 64, offset: 704)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1237, file: !25, line: 360, baseType: !445, size: 64, offset: 768)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1237, file: !25, line: 361, baseType: !642, size: 64, offset: 832)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1237, file: !25, line: 362, baseType: !129, size: 32, offset: 896)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1197, file: !25, line: 438, baseType: !1256, size: 64, offset: 448)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!129, !523, !1193, !1236}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1197, file: !25, line: 440, baseType: !1233, size: 64, offset: 512)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1197, file: !25, line: 441, baseType: !1261, size: 64, offset: 576)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!129, !523, !1264}
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !25, line: 411, size: 1408, elements: !1266)
!1266 = !{!1267, !1268}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1265, file: !25, line: 412, baseType: !13, size: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1265, file: !25, line: 413, baseType: !1269, size: 1344, offset: 64)
!1269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1270, size: 1344, elements: !294)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !25, line: 397, size: 448, elements: !1271)
!1271 = !{!1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1282}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1270, file: !25, line: 398, baseType: !13, size: 32)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1270, file: !25, line: 399, baseType: !13, size: 32, offset: 32)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1270, file: !25, line: 401, baseType: !13, size: 32, offset: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1270, file: !25, line: 402, baseType: !13, size: 32, offset: 96)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1270, file: !25, line: 403, baseType: !13, size: 32, offset: 128)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1270, file: !25, line: 404, baseType: !13, size: 32, offset: 160)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1270, file: !25, line: 405, baseType: !13, size: 32, offset: 192)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1270, file: !25, line: 406, baseType: !447, size: 64, offset: 256)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1270, file: !25, line: 407, baseType: !1281, size: 64, offset: 320)
!1281 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !193, line: 132, baseType: !445)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1270, file: !25, line: 408, baseType: !1281, size: 64, offset: 384)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1197, file: !25, line: 442, baseType: !1212, size: 64, offset: 640)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !524, file: !20, line: 1200, baseType: !1285, size: 64, offset: 576)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1287)
!1287 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !20, line: 54, flags: DIFlagFwdDecl)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !524, file: !20, line: 1201, baseType: !196, size: 64, offset: 640)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !524, file: !20, line: 1202, baseType: !196, size: 64, offset: 704)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !524, file: !20, line: 1203, baseType: !196, size: 64, offset: 768)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !524, file: !20, line: 1204, baseType: !407, size: 64, offset: 832)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !524, file: !20, line: 1205, baseType: !1293, size: 320, offset: 896)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1294, line: 48, size: 320, elements: !1295)
!1294 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1295 = !{!1296, !1297, !1298, !1299, !1300}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1293, file: !1294, line: 49, baseType: !636, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1293, file: !1294, line: 55, baseType: !636, size: 64, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1293, file: !1294, line: 57, baseType: !646, size: 32, offset: 128)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1293, file: !1294, line: 59, baseType: !590, size: 32, offset: 160)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1293, file: !1294, line: 60, baseType: !210, size: 128, offset: 192)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !524, file: !20, line: 1206, baseType: !129, size: 32, offset: 1216)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !524, file: !20, line: 1207, baseType: !243, size: 32, offset: 1248)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !524, file: !20, line: 1209, baseType: !194, size: 64, offset: 1280)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !524, file: !20, line: 1211, baseType: !1305, size: 64, offset: 1344)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1308)
!1308 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !20, line: 1211, flags: DIFlagFwdDecl)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !524, file: !20, line: 1223, baseType: !1310, size: 64, offset: 1408)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !424, line: 34, size: 64, elements: !1311)
!1311 = !{!1312}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1310, file: !424, line: 35, baseType: !427, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !524, file: !20, line: 1224, baseType: !210, size: 128, offset: 1472)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !524, file: !20, line: 1225, baseType: !1315, size: 64, offset: 1600)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !1317, line: 40, size: 7424, elements: !1318)
!1317 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!1318 = !{!1319, !1321, !1322, !3463, !3464, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3507, !3508}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !1316, file: !1317, line: 41, baseType: !1320, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !193, line: 131, baseType: !445)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !1316, file: !1317, line: 42, baseType: !1320, size: 64, offset: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !1316, file: !1317, line: 43, baseType: !1323, size: 64, offset: 128)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !162, line: 128, size: 4544, elements: !1325)
!1325 = !{!1326, !1327, !1328, !1329, !1331, !1332, !1333, !1340, !1341, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3442, !3443, !3444, !3445, !3448, !3449, !3452, !3455, !3456, !3459, !3460, !3461, !3462}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !1324, file: !162, line: 133, baseType: !129, size: 32)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "first_minor", scope: !1324, file: !162, line: 134, baseType: !129, size: 32, offset: 32)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "minors", scope: !1324, file: !162, line: 135, baseType: !129, size: 32, offset: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !1324, file: !162, line: 137, baseType: !1330, size: 256, offset: 96)
!1330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !454)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1324, file: !162, line: 139, baseType: !263, size: 16, offset: 352)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "event_flags", scope: !1324, file: !162, line: 140, baseType: !263, size: 16, offset: 368)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "part_tbl", scope: !1324, file: !162, line: 142, baseType: !1334, size: 128, offset: 384)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1335, line: 296, size: 128, elements: !1336)
!1335 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1336 = !{!1337, !1338, !1339}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1334, file: !1335, line: 297, baseType: !223, size: 32)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1334, file: !1335, line: 299, baseType: !192, size: 32, offset: 32)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1334, file: !1335, line: 300, baseType: !194, size: 64, offset: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "part0", scope: !1324, file: !162, line: 143, baseType: !1315, size: 64, offset: 512)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !1324, file: !162, line: 145, baseType: !1342, size: 64, offset: 576)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1344)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device_operations", file: !162, line: 1388, size: 1152, elements: !1345)
!1345 = !{!1346, !3349, !3353, !3358, !3362, !3366, !3367, !3371, !3372, !3378, !3382, !3383, !3387, !3413, !3417, !3422, !3423, !3427}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "submit_bio", scope: !1344, file: !162, line: 1389, baseType: !1347, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{null, !1350}
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio", file: !1317, line: 265, size: 960, elements: !1352)
!1352 = !{!1353, !1354, !1355, !1357, !1358, !1359, !1361, !1362, !1370, !1372, !1375, !1376, !1379, !1383, !1384, !1386, !1387, !1388, !1389, !3305, !3347}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "bi_next", scope: !1351, file: !1317, line: 266, baseType: !1350, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bdev", scope: !1351, file: !1317, line: 267, baseType: !1315, size: 64, offset: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "bi_opf", scope: !1351, file: !1317, line: 268, baseType: !1356, size: 32, offset: 128)
!1356 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_opf_t", file: !1317, line: 256, baseType: !442)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "bi_flags", scope: !1351, file: !1317, line: 271, baseType: !263, size: 16, offset: 160)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "bi_ioprio", scope: !1351, file: !1317, line: 272, baseType: !263, size: 16, offset: 176)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "bi_status", scope: !1351, file: !1317, line: 273, baseType: !1360, size: 8, offset: 192)
!1360 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_status_t", file: !1317, line: 97, baseType: !251)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_remaining", scope: !1351, file: !1317, line: 274, baseType: !243, size: 32, offset: 224)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iter", scope: !1351, file: !1317, line: 276, baseType: !1363, size: 160, align: 32, offset: 256)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bvec_iter", file: !1364, line: 77, size: 160, align: 32, elements: !1365)
!1364 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!1365 = !{!1366, !1367, !1368, !1369}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "bi_sector", scope: !1363, file: !1364, line: 78, baseType: !1320, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "bi_size", scope: !1363, file: !1364, line: 80, baseType: !13, size: 32, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "bi_idx", scope: !1363, file: !1364, line: 82, baseType: !13, size: 32, offset: 96)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bvec_done", scope: !1363, file: !1364, line: 84, baseType: !13, size: 32, offset: 128)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "bi_cookie", scope: !1351, file: !1317, line: 278, baseType: !1371, size: 32, offset: 416)
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_qc_t", file: !1317, line: 258, baseType: !13)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "bi_end_io", scope: !1351, file: !1317, line: 279, baseType: !1373, size: 64, offset: 448)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_end_io_t", file: !1317, line: 20, baseType: !1348)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "bi_private", scope: !1351, file: !1317, line: 280, baseType: !194, size: 64, offset: 512)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "bi_blkg", scope: !1351, file: !1317, line: 288, baseType: !1377, size: 64, offset: 576)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DICompositeType(tag: DW_TAG_structure_type, name: "blkcg_gq", file: !1317, line: 288, flags: DIFlagFwdDecl)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "bi_issue", scope: !1351, file: !1317, line: 289, baseType: !1380, size: 64, offset: 640)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_issue", file: !1317, line: 228, size: 64, elements: !1381)
!1381 = !{!1382}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1380, file: !1317, line: 229, baseType: !445, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iocost_cost", scope: !1351, file: !1317, line: 291, baseType: !445, size: 64, offset: 704)
!1384 = !DIDerivedType(tag: DW_TAG_member, scope: !1351, file: !1317, line: 299, baseType: !1385, offset: 768)
!1385 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1351, file: !1317, line: 299, elements: !921)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "bi_vcnt", scope: !1351, file: !1317, line: 305, baseType: !263, size: 16, offset: 768)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "bi_max_vecs", scope: !1351, file: !1317, line: 311, baseType: !263, size: 16, offset: 784)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_cnt", scope: !1351, file: !1317, line: 313, baseType: !243, size: 32, offset: 800)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "bi_io_vec", scope: !1351, file: !1317, line: 315, baseType: !1390, size: 64, offset: 832)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1364, line: 31, size: 128, elements: !1392)
!1392 = !{!1393, !3303, !3304}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !1391, file: !1364, line: 32, baseType: !1394, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !52, line: 74, size: 512, align: 128, elements: !1396)
!1396 = !{!1397, !1398, !3297, !3302}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1395, file: !52, line: 75, baseType: !196, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, scope: !1395, file: !52, line: 83, baseType: !1399, size: 320, offset: 64)
!1399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1395, file: !52, line: 83, size: 320, elements: !1400)
!1400 = !{!1401, !1422, !1436, !1440, !3296}
!1401 = !DIDerivedType(tag: DW_TAG_member, scope: !1399, file: !52, line: 84, baseType: !1402, size: 320)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1399, file: !52, line: 84, size: 320, elements: !1403)
!1403 = !{!1404, !1415, !1416, !1421}
!1404 = !DIDerivedType(tag: DW_TAG_member, scope: !1402, file: !52, line: 90, baseType: !1405, size: 128)
!1405 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1402, file: !52, line: 90, size: 128, elements: !1406)
!1406 = !{!1407, !1408, !1413, !1414}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1405, file: !52, line: 91, baseType: !210, size: 128)
!1408 = !DIDerivedType(tag: DW_TAG_member, scope: !1405, file: !52, line: 94, baseType: !1409, size: 128)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1405, file: !52, line: 94, size: 128, elements: !1410)
!1410 = !{!1411, !1412}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1409, file: !52, line: 96, baseType: !194, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1409, file: !52, line: 98, baseType: !13, size: 32, offset: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1405, file: !52, line: 102, baseType: !210, size: 128)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1405, file: !52, line: 103, baseType: !210, size: 128)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1402, file: !52, line: 106, baseType: !368, size: 64, offset: 128)
!1416 = !DIDerivedType(tag: DW_TAG_member, scope: !1402, file: !52, line: 107, baseType: !1417, size: 64, offset: 192)
!1417 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1402, file: !52, line: 107, size: 64, elements: !1418)
!1418 = !{!1419, !1420}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1417, file: !52, line: 108, baseType: !196, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1417, file: !52, line: 109, baseType: !196, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1402, file: !52, line: 117, baseType: !196, size: 64, offset: 256)
!1422 = !DIDerivedType(tag: DW_TAG_member, scope: !1399, file: !52, line: 119, baseType: !1423, size: 320)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1399, file: !52, line: 119, size: 320, elements: !1424)
!1424 = !{!1425, !1426, !1429, !1430, !1431}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1423, file: !52, line: 124, baseType: !196, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1423, file: !52, line: 125, baseType: !1427, size: 64, offset: 64)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !52, line: 125, flags: DIFlagFwdDecl)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1423, file: !52, line: 126, baseType: !196, size: 64, offset: 128)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1423, file: !52, line: 127, baseType: !196, size: 64, offset: 192)
!1431 = !DIDerivedType(tag: DW_TAG_member, scope: !1423, file: !52, line: 128, baseType: !1432, size: 64, offset: 256)
!1432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1423, file: !52, line: 128, size: 64, elements: !1433)
!1433 = !{!1434, !1435}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1432, file: !52, line: 133, baseType: !196, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1432, file: !52, line: 138, baseType: !636, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, scope: !1399, file: !52, line: 141, baseType: !1437, size: 64)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1399, file: !52, line: 141, size: 64, elements: !1438)
!1438 = !{!1439}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1437, file: !52, line: 142, baseType: !196, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, scope: !1399, file: !52, line: 144, baseType: !1441, size: 128)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1399, file: !52, line: 144, size: 128, elements: !1442)
!1442 = !{!1443, !3295}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1441, file: !52, line: 146, baseType: !1444, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !44, line: 126, size: 1216, elements: !1446)
!1446 = !{!1447, !1456, !1477, !1478, !1479, !1480, !1481, !3277, !3278, !3279}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1445, file: !44, line: 127, baseType: !1448, size: 384)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !44, line: 21, size: 384, elements: !1449)
!1449 = !{!1450, !1451, !1452, !1453, !1454, !1455}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1448, file: !44, line: 22, baseType: !196, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1448, file: !44, line: 23, baseType: !198, size: 64, offset: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1448, file: !44, line: 24, baseType: !198, size: 64, offset: 128)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1448, file: !44, line: 25, baseType: !196, size: 64, offset: 192)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1448, file: !44, line: 26, baseType: !196, size: 64, offset: 256)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1448, file: !44, line: 27, baseType: !196, size: 64, offset: 320)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1445, file: !44, line: 128, baseType: !1457, size: 128, offset: 384)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1458, line: 105, size: 128, elements: !1459)
!1458 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1459 = !{!1460, !1461}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1457, file: !1458, line: 110, baseType: !196, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1457, file: !1458, line: 118, baseType: !1462, size: 64, offset: 64)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1458, line: 95, size: 448, elements: !1464)
!1464 = !{!1465, !1466, !1472, !1473, !1474, !1475, !1476}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1463, file: !1458, line: 96, baseType: !636, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1463, file: !1458, line: 97, baseType: !1467, size: 64, offset: 64)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1458, line: 60, baseType: !1469)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{null, !1471}
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1463, file: !1458, line: 98, baseType: !1467, size: 64, offset: 128)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1463, file: !1458, line: 99, baseType: !712, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1463, file: !1458, line: 100, baseType: !712, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1463, file: !1458, line: 101, baseType: !852, size: 128, align: 64, offset: 256)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1463, file: !1458, line: 102, baseType: !1471, size: 64, offset: 384)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1445, file: !44, line: 129, baseType: !581, size: 256, offset: 512)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1445, file: !44, line: 130, baseType: !43, size: 32, offset: 768)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1445, file: !44, line: 131, baseType: !13, size: 32, offset: 800)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1445, file: !44, line: 132, baseType: !196, size: 64, offset: 832)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1445, file: !44, line: 133, baseType: !1482, size: 64, offset: 896)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1484)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !44, line: 77, size: 192, elements: !1485)
!1485 = !{!1486, !1490, !3273}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1484, file: !44, line: 83, baseType: !1487, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{null, !1394}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1484, file: !44, line: 89, baseType: !1491, size: 64, offset: 64)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!1494, !1495}
!1494 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !52, line: 1184, baseType: !13)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1497, line: 512, size: 896, elements: !1498)
!1497 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1498 = !{!1499, !3240, !3241, !3248, !3255, !3265, !3266, !3267, !3269, !3271}
!1499 = !DIDerivedType(tag: DW_TAG_member, scope: !1496, file: !1497, line: 513, baseType: !1500, size: 320)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1496, file: !1497, line: 513, size: 320, elements: !1501)
!1501 = !{!1502, !3236, !3237, !3238, !3239}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1500, file: !1497, line: 514, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !52, line: 625, size: 1344, elements: !1505)
!1505 = !{!1506, !1515, !3141, !3147, !3154, !3155, !3160, !3161, !3166, !3167, !3170, !3229, !3230, !3231, !3232, !3233, !3234}
!1506 = !DIDerivedType(tag: DW_TAG_member, scope: !1504, file: !52, line: 628, baseType: !1507, size: 128)
!1507 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1504, file: !52, line: 628, size: 128, elements: !1508)
!1508 = !{!1509, !1514}
!1509 = !DIDerivedType(tag: DW_TAG_member, scope: !1507, file: !52, line: 629, baseType: !1510, size: 128)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1507, file: !52, line: 629, size: 128, elements: !1511)
!1511 = !{!1512, !1513}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1510, file: !52, line: 631, baseType: !196, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1510, file: !52, line: 632, baseType: !196, size: 64, offset: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1507, file: !52, line: 635, baseType: !852, size: 128, align: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1504, file: !52, line: 639, baseType: !1516, size: 64, offset: 128)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !52, line: 733, size: 10240, elements: !1518)
!1518 = !{!1519, !3139}
!1519 = !DIDerivedType(tag: DW_TAG_member, scope: !1517, file: !52, line: 734, baseType: !1520, size: 10240)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1517, file: !52, line: 734, size: 10240, elements: !1521)
!1521 = !{!1522, !1526, !1539, !3016, !3017, !3018, !3019, !3020, !3021, !3030, !3031, !3032, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3071, !3073, !3076, !3119, !3120, !3121, !3124, !3125, !3126, !3129, !3130, !3131, !3137, !3138}
!1522 = !DIDerivedType(tag: DW_TAG_member, scope: !1520, file: !52, line: 739, baseType: !1523, size: 512, align: 512)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1520, file: !52, line: 739, size: 512, align: 512, elements: !1524)
!1524 = !{!1525}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1523, file: !52, line: 747, baseType: !243, size: 32)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1520, file: !52, line: 750, baseType: !1527, size: 128, offset: 512)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1528, line: 218, size: 128, elements: !1529)
!1528 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1529 = !{!1530, !1537, !1538}
!1530 = !DIDerivedType(tag: DW_TAG_member, scope: !1527, file: !1528, line: 219, baseType: !1531, size: 32)
!1531 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1527, file: !1528, line: 219, size: 32, elements: !1532)
!1532 = !{!1533, !1534}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1531, file: !1528, line: 220, baseType: !223, size: 32)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1531, file: !1528, line: 221, baseType: !1535)
!1535 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1528, line: 197, baseType: !1536)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1528, line: 197, elements: !921)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1527, file: !1528, line: 223, baseType: !13, size: 32, offset: 32)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1527, file: !1528, line: 224, baseType: !194, size: 64, offset: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1520, file: !52, line: 752, baseType: !1540, size: 64, offset: 640)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!196, !1543, !196, !196, !196, !196}
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !20, line: 994, size: 1856, align: 64, elements: !1545)
!1545 = !{!1546, !1557, !1558, !1560, !1561, !1562, !1563, !1564, !1625, !1815, !1824, !1825, !1826, !3006, !3007, !3008, !3009, !3011, !3012, !3015}
!1546 = !DIDerivedType(tag: DW_TAG_member, scope: !1544, file: !20, line: 995, baseType: !1547, size: 128)
!1547 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1544, file: !20, line: 995, size: 128, elements: !1548)
!1548 = !{!1549, !1555, !1556}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1547, file: !20, line: 996, baseType: !1550, size: 64)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1551, line: 60, size: 64, elements: !1552)
!1551 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1552 = !{!1553}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1550, file: !1551, line: 61, baseType: !1554, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1547, file: !20, line: 997, baseType: !852, size: 128, align: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1547, file: !20, line: 998, baseType: !13, size: 32)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1544, file: !20, line: 1005, baseType: !223, size: 32, offset: 128)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1544, file: !20, line: 1006, baseType: !1559, size: 32, offset: 160)
!1559 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !193, line: 156, baseType: !13)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1544, file: !20, line: 1007, baseType: !636, size: 64, offset: 192)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1544, file: !20, line: 1008, baseType: !632, size: 256, offset: 256)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1544, file: !20, line: 1009, baseType: !533, size: 64, offset: 512)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1544, file: !20, line: 1010, baseType: !13, size: 32, offset: 576)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1544, file: !20, line: 1011, baseType: !1565, size: 256, offset: 640)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !20, line: 948, size: 256, elements: !1566)
!1566 = !{!1567, !1588, !1621, !1622, !1623, !1624}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1565, file: !20, line: 949, baseType: !1568, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1569, line: 34, baseType: !1570)
!1569 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1569, line: 25, size: 64, elements: !1571)
!1571 = !{!1572}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1570, file: !1569, line: 26, baseType: !1573, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1574, line: 27, baseType: !1575)
!1574 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1574, line: 13, size: 64, elements: !1576)
!1576 = !{!1577, !1587}
!1577 = !DIDerivedType(tag: DW_TAG_member, scope: !1575, file: !1574, line: 14, baseType: !1578, size: 32)
!1578 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1575, file: !1574, line: 14, size: 32, elements: !1579)
!1579 = !{!1580, !1581}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1578, file: !1574, line: 15, baseType: !243, size: 32)
!1581 = !DIDerivedType(tag: DW_TAG_member, scope: !1578, file: !1574, line: 16, baseType: !1582, size: 32)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1578, file: !1574, line: 16, size: 32, elements: !1583)
!1583 = !{!1584, !1585}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1582, file: !1574, line: 18, baseType: !251, size: 8)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1582, file: !1574, line: 19, baseType: !1586, size: 24, offset: 8)
!1586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 24, elements: !294)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1575, file: !1574, line: 26, baseType: !235, size: 32, offset: 32)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1565, file: !20, line: 950, baseType: !1589, size: 64, offset: 64)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !36, line: 59, size: 768, elements: !1591)
!1591 = !{!1592, !1598, !1599, !1600, !1602, !1603, !1610, !1611}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1590, file: !36, line: 61, baseType: !1593, size: 32)
!1593 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1594, line: 113, baseType: !1595)
!1594 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1594, line: 111, size: 32, elements: !1596)
!1596 = !{!1597}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1595, file: !1594, line: 112, baseType: !243, size: 32)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1590, file: !36, line: 62, baseType: !13, size: 32, offset: 32)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1590, file: !36, line: 63, baseType: !223, size: 32, offset: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1590, file: !36, line: 65, baseType: !1601, size: 256, offset: 128)
!1601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1002, size: 256, elements: !862)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1590, file: !36, line: 66, baseType: !1002, size: 64, offset: 384)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1590, file: !36, line: 68, baseType: !1604, size: 192, offset: 448)
!1604 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1605, line: 41, baseType: !1606)
!1605 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1605, line: 37, size: 192, elements: !1607)
!1607 = !{!1608, !1609}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1606, file: !1605, line: 38, baseType: !223, size: 32)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1606, file: !1605, line: 39, baseType: !210, size: 128, offset: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1590, file: !36, line: 69, baseType: !852, size: 128, align: 64, offset: 640)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1590, file: !36, line: 70, baseType: !1612, offset: 768)
!1612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1613, elements: !1619)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !36, line: 54, size: 128, elements: !1614)
!1614 = !{!1615, !1616}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1613, file: !36, line: 55, baseType: !129, size: 32)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1613, file: !36, line: 56, baseType: !1617, size: 64, offset: 64)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !36, line: 56, flags: DIFlagFwdDecl)
!1619 = !{!1620}
!1620 = !DISubrange(count: -1)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1565, file: !20, line: 951, baseType: !35, size: 32, offset: 128)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1565, file: !20, line: 952, baseType: !378, size: 32, offset: 160)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1565, file: !20, line: 952, baseType: !378, size: 32, offset: 192)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1565, file: !20, line: 953, baseType: !129, size: 32, offset: 224)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1544, file: !20, line: 1012, baseType: !1626, size: 64, offset: 896)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1628)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1629, line: 110, size: 1472, elements: !1630)
!1629 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1630 = !{!1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1647, !1648, !1649, !1650, !1651, !1652, !1760, !1761, !1762, !1763, !1764, !1795, !1798, !1802, !1810}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1628, file: !1629, line: 111, baseType: !636, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1628, file: !1629, line: 112, baseType: !378, size: 32, offset: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1628, file: !1629, line: 113, baseType: !387, size: 32, offset: 96)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1628, file: !1629, line: 114, baseType: !378, size: 32, offset: 128)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1628, file: !1629, line: 115, baseType: !387, size: 32, offset: 160)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1628, file: !1629, line: 116, baseType: !378, size: 32, offset: 192)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1628, file: !1629, line: 117, baseType: !387, size: 32, offset: 224)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1628, file: !1629, line: 118, baseType: !378, size: 32, offset: 256)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1628, file: !1629, line: 119, baseType: !387, size: 32, offset: 288)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1628, file: !1629, line: 120, baseType: !13, size: 32, offset: 320)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1628, file: !1629, line: 121, baseType: !1642, size: 64, offset: 384)
!1642 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1643, line: 24, baseType: !1644)
!1643 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1643, line: 24, size: 64, elements: !1645)
!1645 = !{!1646}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1644, file: !1643, line: 24, baseType: !445, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1628, file: !1629, line: 122, baseType: !1642, size: 64, offset: 448)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1628, file: !1629, line: 123, baseType: !1642, size: 64, offset: 512)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1628, file: !1629, line: 124, baseType: !1642, size: 64, offset: 576)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1628, file: !1629, line: 125, baseType: !1642, size: 64, offset: 640)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1628, file: !1629, line: 127, baseType: !255, size: 8, offset: 704)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1628, file: !1629, line: 129, baseType: !1653, size: 64, offset: 768)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1655, line: 195, size: 1728, elements: !1656)
!1655 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1656 = !{!1657, !1658, !1661, !1666, !1667, !1670, !1671, !1676, !1677, !1678, !1679, !1682, !1683, !1684, !1685, !1686, !1724, !1745}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1654, file: !1655, line: 196, baseType: !1593, size: 32)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1654, file: !1655, line: 197, baseType: !1659, size: 32, offset: 32)
!1659 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1655, line: 28, baseType: !1660)
!1660 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !193, line: 104, baseType: !628)
!1661 = !DIDerivedType(tag: DW_TAG_member, scope: !1654, file: !1655, line: 198, baseType: !1662, size: 192, offset: 64)
!1662 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1654, file: !1655, line: 198, size: 192, elements: !1663)
!1663 = !{!1664, !1665}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1662, file: !1655, line: 199, baseType: !210, size: 128)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1662, file: !1655, line: 200, baseType: !744, size: 192, align: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1654, file: !1655, line: 205, baseType: !1293, size: 320, offset: 256)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1654, file: !1655, line: 206, baseType: !1668, size: 64, offset: 576)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1655, line: 206, flags: DIFlagFwdDecl)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1654, file: !1655, line: 207, baseType: !194, size: 64, offset: 640)
!1671 = !DIDerivedType(tag: DW_TAG_member, scope: !1654, file: !1655, line: 208, baseType: !1672, size: 64, offset: 704)
!1672 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1654, file: !1655, line: 208, size: 64, elements: !1673)
!1673 = !{!1674, !1675}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1672, file: !1655, line: 209, baseType: !1134, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1672, file: !1655, line: 210, baseType: !1134, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1654, file: !1655, line: 212, baseType: !1134, size: 64, offset: 768)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1654, file: !1655, line: 213, baseType: !378, size: 32, offset: 832)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1654, file: !1655, line: 214, baseType: !387, size: 32, offset: 864)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1654, file: !1655, line: 215, baseType: !1680, size: 32, offset: 896)
!1680 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1655, line: 31, baseType: !1681)
!1681 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !193, line: 110, baseType: !441)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1654, file: !1655, line: 216, baseType: !263, size: 16, offset: 928)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1654, file: !1655, line: 217, baseType: !263, size: 16, offset: 944)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1654, file: !1655, line: 221, baseType: !770, size: 16, offset: 960)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1654, file: !1655, line: 228, baseType: !196, size: 64, offset: 1024)
!1686 = !DIDerivedType(tag: DW_TAG_member, scope: !1654, file: !1655, line: 245, baseType: !1687, size: 320, offset: 1088)
!1687 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1654, file: !1655, line: 245, size: 320, elements: !1688)
!1688 = !{!1689, !1716}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1687, file: !1655, line: 246, baseType: !1690, size: 320)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1655, line: 114, size: 320, elements: !1691)
!1691 = !{!1692, !1693, !1705, !1708, !1715}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1690, file: !1655, line: 116, baseType: !196, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, scope: !1690, file: !1655, line: 117, baseType: !1694, size: 64, offset: 64)
!1694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1690, file: !1655, line: 117, size: 64, elements: !1695)
!1695 = !{!1696, !1704}
!1696 = !DIDerivedType(tag: DW_TAG_member, scope: !1694, file: !1655, line: 118, baseType: !1697, size: 64)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1694, file: !1655, line: 118, size: 64, elements: !1698)
!1698 = !{!1699, !1700}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1697, file: !1655, line: 120, baseType: !261, size: 16)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1697, file: !1655, line: 121, baseType: !1701, size: 48, offset: 16)
!1701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !1702)
!1702 = !{!1703}
!1703 = !DISubrange(count: 6)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1694, file: !1655, line: 127, baseType: !196, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1690, file: !1655, line: 129, baseType: !1706, size: 64, offset: 128)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1655, line: 102, flags: DIFlagFwdDecl)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1690, file: !1655, line: 130, baseType: !1709, size: 64, offset: 192)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1655, line: 108, size: 192, elements: !1711)
!1711 = !{!1712, !1713, !1714}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1710, file: !1655, line: 109, baseType: !852, size: 128, align: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1710, file: !1655, line: 110, baseType: !1593, size: 32, offset: 128)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1710, file: !1655, line: 111, baseType: !712, size: 8, offset: 160)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1690, file: !1655, line: 131, baseType: !207, size: 64, offset: 256)
!1716 = !DIDerivedType(tag: DW_TAG_member, scope: !1687, file: !1655, line: 247, baseType: !1717, size: 320)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1687, file: !1655, line: 247, size: 320, elements: !1718)
!1718 = !{!1719, !1720, !1721, !1722, !1723}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1717, file: !1655, line: 248, baseType: !196, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1717, file: !1655, line: 249, baseType: !196, size: 64, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1717, file: !1655, line: 250, baseType: !1706, size: 64, offset: 128)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1717, file: !1655, line: 251, baseType: !1709, size: 64, offset: 192)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1717, file: !1655, line: 252, baseType: !293, size: 64, offset: 256)
!1724 = !DIDerivedType(tag: DW_TAG_member, scope: !1654, file: !1655, line: 260, baseType: !1725, size: 256, offset: 1408)
!1725 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1654, file: !1655, line: 260, size: 256, elements: !1726)
!1726 = !{!1727, !1733}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1725, file: !1655, line: 261, baseType: !1728, size: 256)
!1728 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1655, line: 134, size: 256, elements: !1729)
!1729 = !{!1730, !1731}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1728, file: !1655, line: 135, baseType: !194, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1728, file: !1655, line: 136, baseType: !1732, size: 256)
!1732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 256, elements: !862)
!1733 = !DIDerivedType(tag: DW_TAG_member, scope: !1725, file: !1655, line: 262, baseType: !1734, size: 256)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1725, file: !1655, line: 262, size: 256, elements: !1735)
!1735 = !{!1736, !1737}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1734, file: !1655, line: 264, baseType: !210, size: 128)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1734, file: !1655, line: 265, baseType: !1738, size: 128, offset: 128)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1739, line: 22, size: 128, elements: !1740)
!1739 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1740 = !{!1741, !1744}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1738, file: !1739, line: 23, baseType: !1742, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1739, line: 23, flags: DIFlagFwdDecl)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1738, file: !1739, line: 24, baseType: !196, size: 64, offset: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1654, file: !1655, line: 280, baseType: !1746, size: 64, offset: 1664)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1655, line: 176, size: 192, elements: !1748)
!1748 = !{!1749, !1758, !1759}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1747, file: !1655, line: 177, baseType: !1750, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1655, line: 171, baseType: !1751)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{!129, !1653, !1754, !1756, !1653}
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1707)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1728)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1747, file: !1655, line: 178, baseType: !1653, size: 64, offset: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1747, file: !1655, line: 179, baseType: !1706, size: 64, offset: 128)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1628, file: !1629, line: 130, baseType: !1653, size: 64, offset: 832)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1628, file: !1629, line: 131, baseType: !1653, size: 64, offset: 896)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1628, file: !1629, line: 132, baseType: !1653, size: 64, offset: 960)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1628, file: !1629, line: 135, baseType: !194, size: 64, offset: 1024)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1628, file: !1629, line: 137, baseType: !1765, size: 64, offset: 1088)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1767, line: 14, size: 1088, elements: !1768)
!1767 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1768 = !{!1769, !1770, !1779, !1780, !1781, !1782, !1783, !1784}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1766, file: !1767, line: 15, baseType: !1593, size: 32)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1766, file: !1767, line: 17, baseType: !1771, size: 320, offset: 64)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1772, line: 22, size: 320, elements: !1773)
!1772 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1773 = !{!1774, !1775, !1776, !1777}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1771, file: !1772, line: 23, baseType: !590, size: 32)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1771, file: !1772, line: 24, baseType: !642, size: 64, offset: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1771, file: !1772, line: 26, baseType: !210, size: 128, offset: 128)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1771, file: !1772, line: 28, baseType: !1778, size: 64, offset: 256)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1766, file: !1767, line: 19, baseType: !196, size: 64, offset: 384)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1766, file: !1767, line: 20, baseType: !636, size: 64, offset: 448)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1766, file: !1767, line: 23, baseType: !878, size: 128, offset: 512)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1766, file: !1767, line: 24, baseType: !378, size: 32, offset: 640)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1766, file: !1767, line: 29, baseType: !636, size: 64, offset: 704)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1766, file: !1767, line: 36, baseType: !1785, size: 320, offset: 768)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1786, line: 15, size: 320, elements: !1787)
!1786 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1787 = !{!1788, !1789, !1790, !1791, !1792, !1793, !1794}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1785, file: !1786, line: 16, baseType: !590, size: 32)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1785, file: !1786, line: 18, baseType: !129, size: 32, offset: 32)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1785, file: !1786, line: 19, baseType: !129, size: 32, offset: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1785, file: !1786, line: 20, baseType: !129, size: 32, offset: 96)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1785, file: !1786, line: 21, baseType: !129, size: 32, offset: 128)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1785, file: !1786, line: 22, baseType: !196, size: 64, offset: 192)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1785, file: !1786, line: 23, baseType: !196, size: 64, offset: 256)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1628, file: !1629, line: 138, baseType: !1796, size: 64, offset: 1152)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !379, line: 18, flags: DIFlagFwdDecl)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1628, file: !1629, line: 139, baseType: !1799, size: 64, offset: 1216)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1801, line: 16, flags: DIFlagFwdDecl)
!1801 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1628, file: !1629, line: 140, baseType: !1803, size: 64, offset: 1280)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1629, line: 25, size: 64, elements: !1805)
!1805 = !{!1806, !1807, !1808}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1804, file: !1629, line: 26, baseType: !243, size: 32)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1804, file: !1629, line: 27, baseType: !129, size: 32, offset: 32)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1804, file: !1629, line: 28, baseType: !1809, offset: 64)
!1809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, elements: !1619)
!1810 = !DIDerivedType(tag: DW_TAG_member, scope: !1628, file: !1629, line: 142, baseType: !1811, size: 128, offset: 1344)
!1811 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1628, file: !1629, line: 142, size: 128, elements: !1812)
!1812 = !{!1813, !1814}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1811, file: !1629, line: 143, baseType: !129, size: 32)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1811, file: !1629, line: 144, baseType: !852, size: 128, align: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1544, file: !20, line: 1013, baseType: !1816, size: 256, offset: 960)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !20, line: 970, size: 256, elements: !1817)
!1817 = !{!1818, !1819, !1820, !1821, !1822, !1823}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1816, file: !20, line: 971, baseType: !196, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1816, file: !20, line: 972, baseType: !13, size: 32, offset: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1816, file: !20, line: 973, baseType: !13, size: 32, offset: 96)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1816, file: !20, line: 974, baseType: !13, size: 32, offset: 128)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1816, file: !20, line: 975, baseType: !13, size: 32, offset: 160)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1816, file: !20, line: 976, baseType: !533, size: 64, offset: 192)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1544, file: !20, line: 1014, baseType: !1205, size: 128, offset: 1216)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1544, file: !20, line: 1015, baseType: !372, size: 64, offset: 1344)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1544, file: !20, line: 1016, baseType: !1827, size: 64, offset: 1408)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1829)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !20, line: 1914, size: 2112, elements: !1830)
!1830 = !{!1831, !1832, !1836, !1841, !1845, !1922, !1923, !2898, !2911, !2919, !2923, !2924, !2928, !2929, !2933, !2938, !2939, !2943, !2947, !2953, !2954, !2958, !2959, !2965, !2969, !2973, !2979, !2983, !2987, !2991, !2995, !2996, !3002}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1829, file: !20, line: 1915, baseType: !561, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1829, file: !20, line: 1916, baseType: !1833, size: 64, offset: 64)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!533, !1543, !533, !129}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1829, file: !20, line: 1917, baseType: !1837, size: 64, offset: 128)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{!325, !1543, !293, !340, !1840}
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1829, file: !20, line: 1918, baseType: !1842, size: 64, offset: 192)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!325, !1543, !207, !340, !1840}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1829, file: !20, line: 1919, baseType: !1846, size: 64, offset: 256)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!325, !1849, !1871}
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !20, line: 373, size: 384, elements: !1851)
!1851 = !{!1852, !1853, !1854, !1858, !1859, !1860, !1861}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1850, file: !20, line: 374, baseType: !1543, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1850, file: !20, line: 375, baseType: !533, size: 64, offset: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1850, file: !20, line: 376, baseType: !1855, size: 64, offset: 128)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{null, !1849, !329}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1850, file: !20, line: 377, baseType: !194, size: 64, offset: 192)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1850, file: !20, line: 378, baseType: !129, size: 32, offset: 256)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1850, file: !20, line: 379, baseType: !261, size: 16, offset: 288)
!1861 = !DIDerivedType(tag: DW_TAG_member, scope: !1850, file: !20, line: 380, baseType: !1862, size: 64, offset: 320)
!1862 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1850, file: !20, line: 380, size: 64, elements: !1863)
!1863 = !{!1864, !1867}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1862, file: !20, line: 386, baseType: !1865, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !20, line: 386, flags: DIFlagFwdDecl)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1862, file: !20, line: 395, baseType: !1868, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!325, !194}
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1873, line: 41, size: 320, elements: !1874)
!1873 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1874 = !{!1875, !1876, !1877, !1878, !1879, !1880, !1885, !1917}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1872, file: !1873, line: 42, baseType: !251, size: 8)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1872, file: !1873, line: 43, baseType: !712, size: 8, offset: 8)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1872, file: !1873, line: 44, baseType: !712, size: 8, offset: 16)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1872, file: !1873, line: 45, baseType: !712, size: 8, offset: 24)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1872, file: !1873, line: 46, baseType: !712, size: 8, offset: 32)
!1880 = !DIDerivedType(tag: DW_TAG_member, scope: !1872, file: !1873, line: 47, baseType: !1881, size: 64, offset: 64)
!1881 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1872, file: !1873, line: 47, size: 64, elements: !1882)
!1882 = !{!1883, !1884}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1881, file: !1873, line: 48, baseType: !340, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1881, file: !1873, line: 49, baseType: !129, size: 32)
!1885 = !DIDerivedType(tag: DW_TAG_member, scope: !1872, file: !1873, line: 61, baseType: !1886, size: 128, offset: 128)
!1886 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1872, file: !1873, line: 61, size: 128, elements: !1887)
!1887 = !{!1888, !1894}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1886, file: !1873, line: 67, baseType: !1889, size: 128)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1890, line: 17, size: 128, elements: !1891)
!1890 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1891 = !{!1892, !1893}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1889, file: !1890, line: 19, baseType: !194, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1889, file: !1890, line: 20, baseType: !341, size: 64, offset: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, scope: !1886, file: !1873, line: 68, baseType: !1895, size: 128)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1886, file: !1873, line: 68, size: 128, elements: !1896)
!1896 = !{!1897, !1916}
!1897 = !DIDerivedType(tag: DW_TAG_member, scope: !1895, file: !1873, line: 69, baseType: !1898, size: 64)
!1898 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1895, file: !1873, line: 69, size: 64, elements: !1899)
!1899 = !{!1900, !1903, !1910, !1913, !1915}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1898, file: !1873, line: 71, baseType: !1901, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1889)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1898, file: !1873, line: 72, baseType: !1904, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1906)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1873, line: 17, size: 128, elements: !1907)
!1907 = !{!1908, !1909}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1906, file: !1873, line: 18, baseType: !194, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1906, file: !1873, line: 19, baseType: !340, size: 64, offset: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1898, file: !1873, line: 73, baseType: !1911, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1391)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1898, file: !1873, line: 74, baseType: !1914, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1898, file: !1873, line: 75, baseType: !194, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1895, file: !1873, line: 77, baseType: !340, size: 64, offset: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, scope: !1872, file: !1873, line: 80, baseType: !1918, size: 64, offset: 256)
!1918 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1872, file: !1873, line: 80, size: 64, elements: !1919)
!1919 = !{!1920, !1921}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1918, file: !1873, line: 81, baseType: !196, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1918, file: !1873, line: 82, baseType: !533, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1829, file: !20, line: 1920, baseType: !1846, size: 64, offset: 320)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1829, file: !20, line: 1921, baseType: !1924, size: 64, offset: 384)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!129, !1849, !1927, !13}
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !162, line: 1559, size: 192, elements: !1929)
!1929 = !{!1930, !2893, !2894}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "req_list", scope: !1928, file: !162, line: 1560, baseType: !1931, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request", file: !94, line: 80, size: 1984, elements: !1933)
!1933 = !{!1934, !2812, !2813, !2814, !2815, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2844, !2849, !2881, !2890, !2891, !2892}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1932, file: !94, line: 81, baseType: !1935, size: 64)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !162, line: 391, size: 7296, elements: !1937)
!1937 = !{!1938, !1939, !1942, !1943, !1946, !1949, !1950, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2786, !2787, !2788, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "last_merge", scope: !1936, file: !162, line: 392, baseType: !1931, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "elevator", scope: !1936, file: !162, line: 393, baseType: !1940, size: 64, offset: 64)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_queue", file: !162, line: 30, flags: DIFlagFwdDecl)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "q_usage_counter", scope: !1936, file: !162, line: 395, baseType: !1457, size: 128, offset: 128)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1936, file: !162, line: 397, baseType: !1944, size: 64, offset: 256)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_queue_stats", file: !162, line: 39, flags: DIFlagFwdDecl)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos", scope: !1936, file: !162, line: 398, baseType: !1947, size: 64, offset: 320)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DICompositeType(tag: DW_TAG_structure_type, name: "rq_qos", file: !162, line: 38, flags: DIFlagFwdDecl)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos_mutex", scope: !1936, file: !162, line: 399, baseType: !632, size: 256, offset: 384)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ops", scope: !1936, file: !162, line: 401, baseType: !1951, size: 64, offset: 640)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1953)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ops", file: !94, line: 537, size: 1152, elements: !1954)
!1954 = !{!1955, !2083, !2087, !2091, !2095, !2099, !2103, !2107, !2111, !2115, !2119, !2123, !2127, !2157, !2161, !2162, !2166, !2170}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "queue_rq", scope: !1953, file: !94, line: 541, baseType: !1956, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!1360, !1959, !2077}
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_hw_ctx", file: !94, line: 288, size: 4096, elements: !1961)
!1961 = !{!1962, !1968, !1969, !1979, !1980, !1981, !1982, !1983, !1984, !1998, !1999, !2015, !2018, !2019, !2020, !2021, !2023, !2024, !2037, !2038, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076}
!1962 = !DIDerivedType(tag: DW_TAG_member, scope: !1960, file: !94, line: 289, baseType: !1963, size: 512, align: 512)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1960, file: !94, line: 289, size: 512, align: 512, elements: !1964)
!1964 = !{!1965, !1966, !1967}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1963, file: !94, line: 291, baseType: !223, size: 32)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !1963, file: !94, line: 299, baseType: !210, size: 128, offset: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1963, file: !94, line: 304, baseType: !196, size: 64, offset: 192)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "run_work", scope: !1960, file: !94, line: 310, baseType: !949, size: 704, offset: 512)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1960, file: !94, line: 312, baseType: !1970, size: 64, offset: 1216)
!1970 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !1971, line: 913, baseType: !1972)
!1971 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1973, size: 64, elements: !1977)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1971, line: 19, size: 64, elements: !1974)
!1974 = !{!1975}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1973, file: !1971, line: 19, baseType: !1976, size: 64)
!1976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 64, elements: !1977)
!1977 = !{!1978}
!1978 = !DISubrange(count: 1)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "next_cpu", scope: !1960, file: !94, line: 317, baseType: !129, size: 32, offset: 1280)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "next_cpu_batch", scope: !1960, file: !94, line: 322, baseType: !129, size: 32, offset: 1312)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1960, file: !94, line: 325, baseType: !196, size: 64, offset: 1344)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "sched_data", scope: !1960, file: !94, line: 331, baseType: !194, size: 64, offset: 1408)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !1960, file: !94, line: 335, baseType: !1935, size: 64, offset: 1472)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !1960, file: !94, line: 337, baseType: !1985, size: 64, offset: 1536)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_flush_queue", file: !1987, line: 17, size: 512, elements: !1988)
!1987 = !DIFile(filename: "block/blk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "08e4a891c7a7b1c380cd6f0c6d03b93a")
!1988 = !{!1989, !1990, !1991, !1992, !1993, !1994, !1996, !1997}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "mq_flush_lock", scope: !1986, file: !1987, line: 18, baseType: !223, size: 32)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "flush_pending_idx", scope: !1986, file: !1987, line: 19, baseType: !13, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "flush_running_idx", scope: !1986, file: !1987, line: 20, baseType: !13, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "rq_status", scope: !1986, file: !1987, line: 21, baseType: !1360, size: 8, offset: 40)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "flush_pending_since", scope: !1986, file: !1987, line: 22, baseType: !196, size: 64, offset: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "flush_queue", scope: !1986, file: !1987, line: 23, baseType: !1995, size: 256, offset: 128)
!1995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 256, elements: !751)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "flush_data_in_flight", scope: !1986, file: !1987, line: 24, baseType: !196, size: 64, offset: 384)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "flush_rq", scope: !1986, file: !1987, line: 25, baseType: !1931, size: 64, offset: 448)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1960, file: !94, line: 343, baseType: !194, size: 64, offset: 1600)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_map", scope: !1960, file: !94, line: 349, baseType: !2000, size: 256, offset: 1664)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbitmap", file: !2001, line: 52, size: 256, elements: !2002)
!2001 = !DIFile(filename: "./include/linux/sbitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c1a10e3a5ba3f1b25200b1abce63f43a")
!2002 = !{!2003, !2004, !2005, !2006, !2007, !2014}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2000, file: !2001, line: 56, baseType: !13, size: 32)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !2000, file: !2001, line: 61, baseType: !13, size: 32, offset: 32)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "map_nr", scope: !2000, file: !2001, line: 66, baseType: !13, size: 32, offset: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "round_robin", scope: !2000, file: !2001, line: 71, baseType: !712, size: 8, offset: 96)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !2000, file: !2001, line: 76, baseType: !2008, size: 64, offset: 128)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbitmap_word", file: !2001, line: 29, size: 1024, align: 512, elements: !2010)
!2010 = !{!2011, !2012, !2013}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !2009, file: !2001, line: 33, baseType: !196, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "cleared", scope: !2009, file: !2001, line: 38, baseType: !196, size: 64, align: 512, offset: 512)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "swap_lock", scope: !2009, file: !2001, line: 43, baseType: !590, size: 32, offset: 576)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_hint", scope: !2000, file: !2001, line: 84, baseType: !704, size: 64, offset: 192)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_from", scope: !1960, file: !94, line: 355, baseType: !2016, size: 64, offset: 1920)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ctx", file: !162, line: 404, flags: DIFlagFwdDecl)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_busy", scope: !1960, file: !94, line: 361, baseType: !13, size: 32, offset: 1984)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1960, file: !94, line: 364, baseType: !263, size: 16, offset: 2016)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ctx", scope: !1960, file: !94, line: 366, baseType: !263, size: 16, offset: 2032)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "ctxs", scope: !1960, file: !94, line: 368, baseType: !2022, size: 64, offset: 2048)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_wait_lock", scope: !1960, file: !94, line: 371, baseType: !223, size: 32, offset: 2112)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_wait", scope: !1960, file: !94, line: 376, baseType: !2025, size: 320, offset: 2176)
!2025 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !1605, line: 14, baseType: !2026)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !1605, line: 30, size: 320, elements: !2027)
!2027 = !{!2028, !2029, !2030, !2036}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2026, file: !1605, line: 31, baseType: !13, size: 32)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2026, file: !1605, line: 32, baseType: !194, size: 64, offset: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2026, file: !1605, line: 33, baseType: !2031, size: 64, offset: 128)
!2031 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !1605, line: 16, baseType: !2032)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{!129, !2035, !13, !129, !194}
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2026, file: !1605, line: 34, baseType: !210, size: 128, offset: 192)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !1960, file: !94, line: 382, baseType: !243, size: 32, offset: 2496)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "tags", scope: !1960, file: !94, line: 388, baseType: !2039, size: 64, offset: 2560)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tags", file: !94, line: 735, size: 1472, elements: !2041)
!2041 = !{!2042, !2043, !2044, !2045, !2060, !2061, !2063, !2064, !2065}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tags", scope: !2040, file: !94, line: 736, baseType: !13, size: 32)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "nr_reserved_tags", scope: !2040, file: !94, line: 737, baseType: !13, size: 32, offset: 32)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "active_queues", scope: !2040, file: !94, line: 738, baseType: !13, size: 32, offset: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap_tags", scope: !2040, file: !94, line: 740, baseType: !2046, size: 512, offset: 128)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbitmap_queue", file: !2001, line: 109, size: 512, elements: !2047)
!2047 = !{!2048, !2049, !2050, !2051, !2056, !2057, !2058, !2059}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "sb", scope: !2046, file: !2001, line: 113, baseType: !2000, size: 256)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "wake_batch", scope: !2046, file: !2001, line: 119, baseType: !13, size: 32, offset: 256)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "wake_index", scope: !2046, file: !2001, line: 124, baseType: !243, size: 32, offset: 288)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !2046, file: !2001, line: 129, baseType: !2052, size: 64, offset: 320)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbq_wait_state", file: !2001, line: 93, size: 512, align: 512, elements: !2054)
!2054 = !{!2055}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2053, file: !2001, line: 97, baseType: !1604, size: 192)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "ws_active", scope: !2046, file: !2001, line: 134, baseType: !243, size: 32, offset: 384)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "min_shallow_depth", scope: !2046, file: !2001, line: 140, baseType: !13, size: 32, offset: 416)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "completion_cnt", scope: !2046, file: !2001, line: 146, baseType: !243, size: 32, offset: 448)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_cnt", scope: !2046, file: !2001, line: 151, baseType: !243, size: 32, offset: 480)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "breserved_tags", scope: !2040, file: !94, line: 741, baseType: !2046, size: 512, offset: 640)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "rqs", scope: !2040, file: !94, line: 743, baseType: !2062, size: 64, offset: 1152)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "static_rqs", scope: !2040, file: !94, line: 744, baseType: !2062, size: 64, offset: 1216)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "page_list", scope: !2040, file: !94, line: 745, baseType: !210, size: 128, offset: 1280)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2040, file: !94, line: 751, baseType: !223, size: 32, offset: 1408)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "sched_tags", scope: !1960, file: !94, line: 394, baseType: !2039, size: 64, offset: 2624)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !1960, file: !94, line: 397, baseType: !196, size: 64, offset: 2688)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !1960, file: !94, line: 400, baseType: !13, size: 32, offset: 2752)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "queue_num", scope: !1960, file: !94, line: 402, baseType: !13, size: 32, offset: 2784)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active", scope: !1960, file: !94, line: 408, baseType: !243, size: 32, offset: 2816)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_online", scope: !1960, file: !94, line: 411, baseType: !878, size: 128, offset: 2880)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !1960, file: !94, line: 413, baseType: !878, size: 128, offset: 3008)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1960, file: !94, line: 415, baseType: !203, size: 512, offset: 3136)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !1960, file: !94, line: 422, baseType: !407, size: 64, offset: 3648)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "sched_debugfs_dir", scope: !1960, file: !94, line: 424, baseType: !407, size: 64, offset: 3712)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_list", scope: !1960, file: !94, line: 431, baseType: !210, size: 128, offset: 3776)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2079)
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_queue_data", file: !94, line: 526, size: 128, elements: !2080)
!2080 = !{!2081, !2082}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "rq", scope: !2079, file: !94, line: 527, baseType: !1931, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !2079, file: !94, line: 528, baseType: !712, size: 8, offset: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "commit_rqs", scope: !1953, file: !94, line: 551, baseType: !2084, size: 64, offset: 64)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{null, !1959}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "queue_rqs", scope: !1953, file: !94, line: 559, baseType: !2088, size: 64, offset: 128)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{null, !2062}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "get_budget", scope: !1953, file: !94, line: 567, baseType: !2092, size: 64, offset: 192)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!129, !1935}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "put_budget", scope: !1953, file: !94, line: 572, baseType: !2096, size: 64, offset: 256)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{null, !1935, !129}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "set_rq_budget_token", scope: !1953, file: !94, line: 577, baseType: !2100, size: 64, offset: 320)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{null, !1931, !129}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "get_rq_budget_token", scope: !1953, file: !94, line: 581, baseType: !2104, size: 64, offset: 384)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{!129, !1931}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1953, file: !94, line: 586, baseType: !2108, size: 64, offset: 448)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!103, !1931}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1953, file: !94, line: 591, baseType: !2112, size: 64, offset: 512)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!129, !1959, !1927}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1953, file: !94, line: 596, baseType: !2116, size: 64, offset: 576)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{null, !1931}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "init_hctx", scope: !1953, file: !94, line: 603, baseType: !2120, size: 64, offset: 640)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!129, !1959, !194, !13}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "exit_hctx", scope: !1953, file: !94, line: 607, baseType: !2124, size: 64, offset: 704)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{null, !1959, !13}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "init_request", scope: !1953, file: !94, line: 616, baseType: !2128, size: 64, offset: 768)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!129, !2131, !1931, !13, !13}
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tag_set", file: !94, line: 498, size: 1344, elements: !2133)
!2133 = !{!2134, !2135, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2153, !2154, !2155, !2156}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2132, file: !94, line: 499, baseType: !1951, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !2132, file: !94, line: 500, baseType: !2136, size: 384, offset: 64)
!2136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2137, size: 384, elements: !294)
!2137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_queue_map", file: !94, line: 444, size: 128, elements: !2138)
!2138 = !{!2139, !2140, !2141}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "mq_map", scope: !2137, file: !94, line: 445, baseType: !704, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "nr_queues", scope: !2137, file: !94, line: 446, baseType: !13, size: 32, offset: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "queue_offset", scope: !2137, file: !94, line: 447, baseType: !13, size: 32, offset: 96)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "nr_maps", scope: !2132, file: !94, line: 501, baseType: !13, size: 32, offset: 448)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !2132, file: !94, line: 502, baseType: !13, size: 32, offset: 480)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !2132, file: !94, line: 503, baseType: !13, size: 32, offset: 512)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_tags", scope: !2132, file: !94, line: 504, baseType: !13, size: 32, offset: 544)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_size", scope: !2132, file: !94, line: 505, baseType: !13, size: 32, offset: 576)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2132, file: !94, line: 506, baseType: !129, size: 32, offset: 608)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2132, file: !94, line: 507, baseType: !13, size: 32, offset: 640)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2132, file: !94, line: 508, baseType: !13, size: 32, offset: 672)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2132, file: !94, line: 509, baseType: !194, size: 64, offset: 704)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "tags", scope: !2132, file: !94, line: 511, baseType: !2152, size: 64, offset: 768)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "shared_tags", scope: !2132, file: !94, line: 513, baseType: !2039, size: 64, offset: 832)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "tag_list_lock", scope: !2132, file: !94, line: 515, baseType: !632, size: 256, offset: 896)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "tag_list", scope: !2132, file: !94, line: 516, baseType: !210, size: 128, offset: 1152)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "srcu", scope: !2132, file: !94, line: 517, baseType: !832, size: 64, offset: 1280)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "exit_request", scope: !1953, file: !94, line: 621, baseType: !2158, size: 64, offset: 832)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{null, !2131, !1931, !13}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_rq", scope: !1953, file: !94, line: 628, baseType: !2116, size: 64, offset: 896)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !1953, file: !94, line: 633, baseType: !2163, size: 64, offset: 960)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!712, !1935}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "map_queues", scope: !1953, file: !94, line: 639, baseType: !2167, size: 64, offset: 1024)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = !DISubroutineType(types: !2169)
!2169 = !{null, !2131}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "show_rq", scope: !1953, file: !94, line: 646, baseType: !2171, size: 64, offset: 1088)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{null, !1074, !1931}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ctx", scope: !1936, file: !162, line: 404, baseType: !2016, size: 64, offset: 704)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !1936, file: !162, line: 406, baseType: !13, size: 32, offset: 768)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_table", scope: !1936, file: !162, line: 409, baseType: !1334, size: 128, offset: 832)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !1936, file: !162, line: 410, baseType: !13, size: 32, offset: 960)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "queuedata", scope: !1936, file: !162, line: 416, baseType: !194, size: 64, offset: 1024)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "queue_flags", scope: !1936, file: !162, line: 421, baseType: !196, size: 64, offset: 1088)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "pm_only", scope: !1936, file: !162, line: 426, baseType: !243, size: 32, offset: 1152)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1936, file: !162, line: 432, baseType: !129, size: 32, offset: 1184)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "queue_lock", scope: !1936, file: !162, line: 434, baseType: !223, size: 32, offset: 1216)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "disk", scope: !1936, file: !162, line: 436, baseType: !1323, size: 64, offset: 1280)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1936, file: !162, line: 438, baseType: !1593, size: 32, offset: 1344)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "mq_kobj", scope: !1936, file: !162, line: 443, baseType: !216, size: 64, offset: 1408)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1936, file: !162, line: 450, baseType: !2187, size: 64, offset: 1472)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !114, line: 705, size: 5824, elements: !2189)
!2189 = !{!2190, !2191, !2192, !2195, !2196, !2251, !2321, !2322, !2323, !2324, !2325, !2332, !2499, !2512, !2522, !2526, !2528, !2529, !2530, !2534, !2541, !2542, !2545, !2548, !2552, !2658, !2659, !2660, !2661, !2662, !2663, !2717, !2718, !2719, !2722, !2725, !2734, !2735, !2736, !2737, !2738, !2739}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2188, file: !114, line: 706, baseType: !203, size: 512)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2188, file: !114, line: 707, baseType: !2187, size: 64, offset: 512)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2188, file: !114, line: 709, baseType: !2193, size: 64, offset: 576)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !114, line: 37, flags: DIFlagFwdDecl)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2188, file: !114, line: 711, baseType: !207, size: 64, offset: 640)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2188, file: !114, line: 712, baseType: !2197, size: 64, offset: 704)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2199)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !114, line: 89, size: 384, elements: !2200)
!2200 = !{!2201, !2202, !2203, !2209, !2216, !2220}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2199, file: !114, line: 90, baseType: !207, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2199, file: !114, line: 91, baseType: !344, size: 64, offset: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2199, file: !114, line: 92, baseType: !2204, size: 64, offset: 128)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!129, !2207, !288}
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2188)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2199, file: !114, line: 93, baseType: !2210, size: 64, offset: 192)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!293, !2207, !2213, !2214, !2215}
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2199, file: !114, line: 95, baseType: !2217, size: 64, offset: 256)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{null, !2187}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2199, file: !114, line: 97, baseType: !2221, size: 64, offset: 320)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2223)
!2223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !121, line: 286, size: 1472, elements: !2224)
!2224 = !{!2225, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2223, file: !121, line: 287, baseType: !2226, size: 64)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!129, !2187}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2223, file: !121, line: 288, baseType: !2217, size: 64, offset: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2223, file: !121, line: 289, baseType: !2226, size: 64, offset: 128)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2223, file: !121, line: 290, baseType: !2226, size: 64, offset: 192)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2223, file: !121, line: 291, baseType: !2226, size: 64, offset: 256)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2223, file: !121, line: 292, baseType: !2226, size: 64, offset: 320)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2223, file: !121, line: 293, baseType: !2226, size: 64, offset: 384)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2223, file: !121, line: 294, baseType: !2226, size: 64, offset: 448)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2223, file: !121, line: 295, baseType: !2226, size: 64, offset: 512)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2223, file: !121, line: 296, baseType: !2226, size: 64, offset: 576)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2223, file: !121, line: 297, baseType: !2226, size: 64, offset: 640)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2223, file: !121, line: 298, baseType: !2226, size: 64, offset: 704)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2223, file: !121, line: 299, baseType: !2226, size: 64, offset: 768)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2223, file: !121, line: 300, baseType: !2226, size: 64, offset: 832)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2223, file: !121, line: 301, baseType: !2226, size: 64, offset: 896)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2223, file: !121, line: 302, baseType: !2226, size: 64, offset: 960)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2223, file: !121, line: 303, baseType: !2226, size: 64, offset: 1024)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2223, file: !121, line: 304, baseType: !2226, size: 64, offset: 1088)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2223, file: !121, line: 305, baseType: !2226, size: 64, offset: 1152)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2223, file: !121, line: 306, baseType: !2226, size: 64, offset: 1216)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2223, file: !121, line: 307, baseType: !2226, size: 64, offset: 1280)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2223, file: !121, line: 308, baseType: !2226, size: 64, offset: 1344)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2223, file: !121, line: 309, baseType: !2226, size: 64, offset: 1408)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2188, file: !114, line: 714, baseType: !2252, size: 64, offset: 768)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2254)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2255, line: 80, size: 1344, elements: !2256)
!2255 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2256 = !{!2257, !2258, !2259, !2260, !2261, !2262, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2320}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2254, file: !2255, line: 81, baseType: !207, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2254, file: !2255, line: 82, baseType: !207, size: 64, offset: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2254, file: !2255, line: 83, baseType: !344, size: 64, offset: 128)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2254, file: !2255, line: 84, baseType: !344, size: 64, offset: 192)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2254, file: !2255, line: 85, baseType: !344, size: 64, offset: 256)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2254, file: !2255, line: 87, baseType: !2263, size: 64, offset: 320)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!129, !2187, !2266}
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !108, line: 96, size: 1152, elements: !2268)
!2268 = !{!2269, !2270, !2271, !2272, !2273, !2274, !2275, !2279, !2283, !2284, !2285, !2286, !2287, !2295, !2296, !2297, !2298, !2299, !2300}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2267, file: !108, line: 97, baseType: !207, size: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2267, file: !108, line: 98, baseType: !2252, size: 64, offset: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2267, file: !108, line: 100, baseType: !561, size: 64, offset: 128)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2267, file: !108, line: 101, baseType: !207, size: 64, offset: 192)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2267, file: !108, line: 103, baseType: !712, size: 8, offset: 256)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2267, file: !108, line: 104, baseType: !107, size: 32, offset: 288)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2267, file: !108, line: 106, baseType: !2276, size: 64, offset: 320)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2278)
!2278 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !108, line: 106, flags: DIFlagFwdDecl)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2267, file: !108, line: 107, baseType: !2280, size: 64, offset: 384)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2282)
!2282 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !108, line: 107, flags: DIFlagFwdDecl)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2267, file: !108, line: 109, baseType: !2226, size: 64, offset: 448)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2267, file: !108, line: 110, baseType: !2217, size: 64, offset: 512)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2267, file: !108, line: 111, baseType: !2226, size: 64, offset: 576)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2267, file: !108, line: 112, baseType: !2217, size: 64, offset: 640)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2267, file: !108, line: 113, baseType: !2288, size: 64, offset: 704)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!129, !2187, !2291}
!2291 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !121, line: 60, baseType: !2292)
!2292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !121, line: 58, size: 32, elements: !2293)
!2293 = !{!2294}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2292, file: !121, line: 59, baseType: !129, size: 32)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2267, file: !108, line: 114, baseType: !2226, size: 64, offset: 768)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2267, file: !108, line: 115, baseType: !344, size: 64, offset: 832)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2267, file: !108, line: 116, baseType: !344, size: 64, offset: 896)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2267, file: !108, line: 118, baseType: !2221, size: 64, offset: 960)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2267, file: !108, line: 119, baseType: !2217, size: 64, offset: 1024)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2267, file: !108, line: 121, baseType: !2301, size: 64, offset: 1088)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !108, line: 121, flags: DIFlagFwdDecl)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2254, file: !2255, line: 88, baseType: !2204, size: 64, offset: 384)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2254, file: !2255, line: 89, baseType: !2226, size: 64, offset: 448)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2254, file: !2255, line: 90, baseType: !2217, size: 64, offset: 512)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2254, file: !2255, line: 91, baseType: !2217, size: 64, offset: 576)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2254, file: !2255, line: 92, baseType: !2217, size: 64, offset: 640)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2254, file: !2255, line: 94, baseType: !2226, size: 64, offset: 704)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2254, file: !2255, line: 95, baseType: !2226, size: 64, offset: 768)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2254, file: !2255, line: 97, baseType: !2288, size: 64, offset: 832)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2254, file: !2255, line: 98, baseType: !2226, size: 64, offset: 896)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2254, file: !2255, line: 100, baseType: !2226, size: 64, offset: 960)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2254, file: !2255, line: 102, baseType: !2226, size: 64, offset: 1024)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2254, file: !2255, line: 103, baseType: !2217, size: 64, offset: 1088)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2254, file: !2255, line: 105, baseType: !2221, size: 64, offset: 1152)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2254, file: !2255, line: 107, baseType: !2317, size: 64, offset: 1216)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2319)
!2319 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2255, line: 107, flags: DIFlagFwdDecl)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2254, file: !2255, line: 109, baseType: !712, size: 8, offset: 1280)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2188, file: !114, line: 715, baseType: !2266, size: 64, offset: 832)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2188, file: !114, line: 717, baseType: !194, size: 64, offset: 896)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2188, file: !114, line: 719, baseType: !194, size: 64, offset: 960)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2188, file: !114, line: 721, baseType: !632, size: 256, offset: 1024)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2188, file: !114, line: 725, baseType: !2326, size: 448, offset: 1280)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !114, line: 517, size: 448, elements: !2327)
!2327 = !{!2328, !2329, !2330, !2331}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2326, file: !114, line: 518, baseType: !210, size: 128)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2326, file: !114, line: 519, baseType: !210, size: 128, offset: 128)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2326, file: !114, line: 520, baseType: !210, size: 128, offset: 256)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2326, file: !114, line: 521, baseType: !113, size: 32, offset: 384)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2188, file: !114, line: 726, baseType: !2333, size: 2496, offset: 1728)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !121, line: 663, size: 2496, elements: !2334)
!2334 = !{!2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2379, !2380, !2381, !2382, !2383, !2384, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2492, !2496}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2333, file: !121, line: 664, baseType: !2291, size: 32)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2333, file: !121, line: 665, baseType: !13, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2333, file: !121, line: 666, baseType: !13, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2333, file: !121, line: 667, baseType: !712, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2333, file: !121, line: 668, baseType: !712, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2333, file: !121, line: 669, baseType: !712, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2333, file: !121, line: 670, baseType: !712, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2333, file: !121, line: 671, baseType: !712, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2333, file: !121, line: 672, baseType: !712, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2333, file: !121, line: 673, baseType: !712, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2333, file: !121, line: 674, baseType: !712, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2333, file: !121, line: 675, baseType: !441, size: 32, offset: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2333, file: !121, line: 676, baseType: !223, size: 32, offset: 96)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2333, file: !121, line: 678, baseType: !210, size: 128, offset: 128)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2333, file: !121, line: 679, baseType: !581, size: 256, offset: 256)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2333, file: !121, line: 680, baseType: !2351, size: 64, offset: 512)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2353, line: 43, size: 1536, elements: !2354)
!2353 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2354 = !{!2355, !2356, !2357, !2358, !2359, !2362, !2363, !2364, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2352, file: !2353, line: 44, baseType: !207, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2352, file: !2353, line: 45, baseType: !129, size: 32, offset: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2352, file: !2353, line: 46, baseType: !210, size: 128, offset: 128)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2352, file: !2353, line: 47, baseType: !223, size: 32, offset: 256)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2352, file: !2353, line: 48, baseType: !2360, size: 64, offset: 320)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !121, line: 629, flags: DIFlagFwdDecl)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2352, file: !2353, line: 49, baseType: !874, size: 320, offset: 384)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2352, file: !2353, line: 50, baseType: !196, size: 64, offset: 704)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2352, file: !2353, line: 51, baseType: !2365, size: 64, offset: 768)
!2365 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2366, line: 29, baseType: !642)
!2366 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2352, file: !2353, line: 52, baseType: !2365, size: 64, offset: 832)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2352, file: !2353, line: 53, baseType: !2365, size: 64, offset: 896)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2352, file: !2353, line: 54, baseType: !2365, size: 64, offset: 960)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2352, file: !2353, line: 55, baseType: !2365, size: 64, offset: 1024)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2352, file: !2353, line: 56, baseType: !196, size: 64, offset: 1088)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2352, file: !2353, line: 57, baseType: !196, size: 64, offset: 1152)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2352, file: !2353, line: 58, baseType: !196, size: 64, offset: 1216)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2352, file: !2353, line: 59, baseType: !196, size: 64, offset: 1280)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2352, file: !2353, line: 60, baseType: !196, size: 64, offset: 1344)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2352, file: !2353, line: 61, baseType: !2187, size: 64, offset: 1408)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2352, file: !2353, line: 62, baseType: !712, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2352, file: !2353, line: 63, baseType: !712, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2333, file: !121, line: 681, baseType: !712, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2333, file: !121, line: 682, baseType: !712, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2333, file: !121, line: 683, baseType: !712, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2333, file: !121, line: 684, baseType: !13, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2333, file: !121, line: 685, baseType: !13, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2333, file: !121, line: 690, baseType: !2385, size: 512, offset: 640)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !31, line: 118, size: 512, elements: !2386)
!2386 = !{!2387, !2393, !2394, !2399, !2454, !2455, !2456, !2457}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2385, file: !31, line: 119, baseType: !2388, size: 256)
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2389, line: 9, size: 256, elements: !2390)
!2389 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2390 = !{!2391, !2392}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2388, file: !2389, line: 10, baseType: !744, size: 192, align: 64)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2388, file: !2389, line: 11, baseType: !2365, size: 64, offset: 192)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2385, file: !31, line: 120, baseType: !2365, size: 64, offset: 256)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2385, file: !31, line: 121, baseType: !2395, size: 64, offset: 320)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{!30, !2398}
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2385, file: !31, line: 122, baseType: !2400, size: 64, offset: 384)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !31, line: 159, size: 512, align: 512, elements: !2402)
!2402 = !{!2403, !2428, !2429, !2432, !2437, !2438, !2449, !2453}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2401, file: !31, line: 160, baseType: !2404, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !31, line: 215, size: 4608, align: 512, elements: !2406)
!2406 = !{!2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2405, file: !31, line: 216, baseType: !590, size: 32)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2405, file: !31, line: 217, baseType: !13, size: 32, offset: 32)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2405, file: !31, line: 218, baseType: !13, size: 32, offset: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2405, file: !31, line: 219, baseType: !13, size: 32, offset: 96)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2405, file: !31, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2405, file: !31, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2405, file: !31, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2405, file: !31, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2405, file: !31, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2405, file: !31, line: 226, baseType: !13, size: 32, offset: 160)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2405, file: !31, line: 227, baseType: !263, size: 16, offset: 192)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2405, file: !31, line: 228, baseType: !263, size: 16, offset: 208)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2405, file: !31, line: 229, baseType: !13, size: 32, offset: 224)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2405, file: !31, line: 235, baseType: !2365, size: 64, offset: 256)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2405, file: !31, line: 236, baseType: !2398, size: 64, offset: 320)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2405, file: !31, line: 237, baseType: !2365, size: 64, offset: 384)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2405, file: !31, line: 238, baseType: !2398, size: 64, offset: 448)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2405, file: !31, line: 239, baseType: !2425, size: 4096, align: 512, offset: 512)
!2425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2401, size: 4096, align: 512, elements: !2426)
!2426 = !{!2427}
!2427 = !DISubrange(count: 8)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2401, file: !31, line: 161, baseType: !13, size: 32, offset: 64)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2401, file: !31, line: 162, baseType: !2430, size: 32, offset: 96)
!2430 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !193, line: 32, baseType: !2431)
!2431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !327, line: 96, baseType: !129)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2401, file: !31, line: 163, baseType: !2433, size: 32, offset: 128)
!2433 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !414, line: 274, baseType: !2434)
!2434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !414, line: 274, size: 32, elements: !2435)
!2435 = !{!2436}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2434, file: !414, line: 274, baseType: !418, size: 32)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2401, file: !31, line: 164, baseType: !2398, size: 64, offset: 192)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2401, file: !31, line: 165, baseType: !2439, size: 128, offset: 256)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2389, line: 14, size: 128, elements: !2440)
!2440 = !{!2441}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2439, file: !2389, line: 15, baseType: !2442, size: 128)
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !745, line: 26, size: 128, elements: !2443)
!2443 = !{!2444, !2448}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2442, file: !745, line: 27, baseType: !2445, size: 64)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !745, line: 12, size: 64, elements: !2446)
!2446 = !{!2447}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2445, file: !745, line: 13, baseType: !749, size: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2442, file: !745, line: 28, baseType: !749, size: 64, offset: 64)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2401, file: !31, line: 166, baseType: !2450, size: 64, offset: 384)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!2365}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2401, file: !31, line: 167, baseType: !2365, size: 64, offset: 448)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2385, file: !31, line: 123, baseType: !251, size: 8, offset: 448)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2385, file: !31, line: 124, baseType: !251, size: 8, offset: 456)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2385, file: !31, line: 125, baseType: !251, size: 8, offset: 464)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2385, file: !31, line: 126, baseType: !251, size: 8, offset: 472)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2333, file: !121, line: 691, baseType: !445, size: 64, offset: 1152)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2333, file: !121, line: 692, baseType: !892, size: 256, offset: 1216)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2333, file: !121, line: 693, baseType: !1604, size: 192, offset: 1472)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2333, file: !121, line: 694, baseType: !2360, size: 64, offset: 1664)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2333, file: !121, line: 695, baseType: !243, size: 32, offset: 1728)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2333, file: !121, line: 696, baseType: !243, size: 32, offset: 1760)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2333, file: !121, line: 697, baseType: !13, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2333, file: !121, line: 698, baseType: !13, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2333, file: !121, line: 699, baseType: !13, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2333, file: !121, line: 700, baseType: !13, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2333, file: !121, line: 701, baseType: !13, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2333, file: !121, line: 702, baseType: !13, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2333, file: !121, line: 703, baseType: !712, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2333, file: !121, line: 704, baseType: !13, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2333, file: !121, line: 705, baseType: !13, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2333, file: !121, line: 706, baseType: !13, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2333, file: !121, line: 707, baseType: !13, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2333, file: !121, line: 708, baseType: !13, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2333, file: !121, line: 709, baseType: !13, size: 32, offset: 1824)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2333, file: !121, line: 710, baseType: !120, size: 32, offset: 1856)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2333, file: !121, line: 711, baseType: !128, size: 32, offset: 1888)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2333, file: !121, line: 712, baseType: !128, size: 32, offset: 1920)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2333, file: !121, line: 713, baseType: !129, size: 32, offset: 1952)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2333, file: !121, line: 714, baseType: !129, size: 32, offset: 1984)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2333, file: !121, line: 715, baseType: !445, size: 64, offset: 2048)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2333, file: !121, line: 716, baseType: !445, size: 64, offset: 2112)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2333, file: !121, line: 717, baseType: !445, size: 64, offset: 2176)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2333, file: !121, line: 718, baseType: !445, size: 64, offset: 2240)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2333, file: !121, line: 720, baseType: !2487, size: 64, offset: 2304)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !121, line: 632, size: 64, elements: !2489)
!2489 = !{!2490, !2491}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2488, file: !121, line: 633, baseType: !223, size: 32)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2488, file: !121, line: 634, baseType: !13, size: 32, offset: 32)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2333, file: !121, line: 721, baseType: !2493, size: 64, offset: 2368)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{null, !2187, !628}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2333, file: !121, line: 722, baseType: !2497, size: 64, offset: 2432)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !121, line: 722, flags: DIFlagFwdDecl)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2188, file: !114, line: 727, baseType: !2500, size: 64, offset: 4224)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !121, line: 742, size: 1792, elements: !2502)
!2502 = !{!2503, !2504, !2505, !2509, !2510, !2511}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2501, file: !121, line: 743, baseType: !2223, size: 1472)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2501, file: !121, line: 744, baseType: !2226, size: 64, offset: 1472)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2501, file: !121, line: 745, baseType: !2506, size: 64, offset: 1536)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{null, !2187, !712}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2501, file: !121, line: 746, baseType: !2226, size: 64, offset: 1600)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2501, file: !121, line: 747, baseType: !2217, size: 64, offset: 1664)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2501, file: !121, line: 748, baseType: !2217, size: 64, offset: 1728)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2188, file: !114, line: 736, baseType: !2513, size: 128, offset: 4288)
!2513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !114, line: 529, size: 128, elements: !2514)
!2514 = !{!2515, !2519}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2513, file: !114, line: 531, baseType: !2516, size: 64)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !2518, line: 13, flags: DIFlagFwdDecl)
!2518 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2513, file: !114, line: 532, baseType: !2520, size: 64, offset: 64)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !114, line: 49, flags: DIFlagFwdDecl)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2188, file: !114, line: 738, baseType: !2523, size: 64, offset: 4416)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2525)
!2525 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !114, line: 738, flags: DIFlagFwdDecl)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2188, file: !114, line: 740, baseType: !2527, size: 64, offset: 4480)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2188, file: !114, line: 741, baseType: !445, size: 64, offset: 4544)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2188, file: !114, line: 746, baseType: !445, size: 64, offset: 4608)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2188, file: !114, line: 747, baseType: !2531, size: 64, offset: 4672)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2533)
!2533 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !114, line: 747, flags: DIFlagFwdDecl)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2188, file: !114, line: 749, baseType: !2535, size: 64, offset: 4736)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !114, line: 428, size: 128, elements: !2537)
!2537 = !{!2538, !2539, !2540}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2536, file: !114, line: 433, baseType: !13, size: 32)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !2536, file: !114, line: 434, baseType: !13, size: 32, offset: 32)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2536, file: !114, line: 435, baseType: !196, size: 64, offset: 64)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2188, file: !114, line: 751, baseType: !210, size: 128, offset: 4800)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2188, file: !114, line: 762, baseType: !2543, size: 64, offset: 4928)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !114, line: 762, flags: DIFlagFwdDecl)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2188, file: !114, line: 770, baseType: !2546, offset: 4992)
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2547, line: 5, elements: !921)
!2547 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2188, file: !114, line: 772, baseType: !2549, size: 64, offset: 4992)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2551, line: 18, flags: DIFlagFwdDecl)
!2551 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2188, file: !114, line: 773, baseType: !2553, size: 64, offset: 5056)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2555, line: 41, size: 512, elements: !2556)
!2555 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!2556 = !{!2557, !2558, !2654, !2655, !2656, !2657}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2554, file: !2555, line: 42, baseType: !2553, size: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2554, file: !2555, line: 43, baseType: !2559, size: 64, offset: 64)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2561)
!2561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2555, line: 125, size: 1408, elements: !2562)
!2562 = !{!2563, !2567, !2571, !2577, !2583, !2584, !2589, !2593, !2597, !2601, !2605, !2606, !2610, !2614, !2618, !2629, !2630, !2631, !2632, !2642, !2646, !2650}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2561, file: !2555, line: 126, baseType: !2564, size: 64)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{!2553, !2553}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2561, file: !2555, line: 127, baseType: !2568, size: 64, offset: 64)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{null, !2553}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2561, file: !2555, line: 128, baseType: !2572, size: 64, offset: 128)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!712, !2575}
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2554)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2561, file: !2555, line: 129, baseType: !2578, size: 64, offset: 192)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!2581, !2575, !2207}
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !2561, file: !2555, line: 131, baseType: !2572, size: 64, offset: 256)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !2561, file: !2555, line: 133, baseType: !2585, size: 64, offset: 320)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = !DISubroutineType(types: !2587)
!2587 = !{!2588, !2575}
!2588 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !2555, line: 132, flags: DIFlagFwdDecl)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2561, file: !2555, line: 134, baseType: !2590, size: 64, offset: 384)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DISubroutineType(types: !2592)
!2592 = !{!712, !2575, !207}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2561, file: !2555, line: 136, baseType: !2594, size: 64, offset: 448)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DISubroutineType(types: !2596)
!2596 = !{!129, !2575, !207, !13, !194, !340}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2561, file: !2555, line: 141, baseType: !2598, size: 64, offset: 512)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{!129, !2575, !207, !969, !340}
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2561, file: !2555, line: 144, baseType: !2602, size: 64, offset: 576)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!207, !2575}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2561, file: !2555, line: 145, baseType: !2602, size: 64, offset: 640)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2561, file: !2555, line: 146, baseType: !2607, size: 64, offset: 704)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = !DISubroutineType(types: !2609)
!2609 = !{!2553, !2575}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2561, file: !2555, line: 148, baseType: !2611, size: 64, offset: 768)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = !DISubroutineType(types: !2613)
!2613 = !{!2553, !2575, !2553}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2561, file: !2555, line: 151, baseType: !2615, size: 64, offset: 832)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!2553, !2575, !207}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2561, file: !2555, line: 153, baseType: !2619, size: 64, offset: 896)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!129, !2575, !207, !207, !13, !13, !2622}
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2555, line: 94, size: 640, elements: !2624)
!2624 = !{!2625, !2626, !2627}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2623, file: !2555, line: 95, baseType: !2553, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2623, file: !2555, line: 96, baseType: !13, size: 32, offset: 64)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2623, file: !2555, line: 97, baseType: !2628, size: 512, offset: 128)
!2628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 512, elements: !2426)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2561, file: !2555, line: 158, baseType: !2611, size: 64, offset: 960)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2561, file: !2555, line: 161, baseType: !2607, size: 64, offset: 1024)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2561, file: !2555, line: 163, baseType: !2564, size: 64, offset: 1088)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2561, file: !2555, line: 164, baseType: !2633, size: 64, offset: 1152)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = !DISubroutineType(types: !2635)
!2635 = !{!129, !2575, !2636}
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2555, line: 73, size: 128, elements: !2638)
!2638 = !{!2639, !2640, !2641}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2637, file: !2555, line: 74, baseType: !13, size: 32)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2637, file: !2555, line: 75, baseType: !13, size: 32, offset: 32)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2637, file: !2555, line: 76, baseType: !2575, size: 64, offset: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !2561, file: !2555, line: 166, baseType: !2643, size: 64, offset: 1216)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{!194, !2553, !129}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !2561, file: !2555, line: 167, baseType: !2647, size: 64, offset: 1280)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{!129, !2575, !13}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2561, file: !2555, line: 168, baseType: !2651, size: 64, offset: 1344)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = !DISubroutineType(types: !2653)
!2653 = !{!129, !2553}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2554, file: !2555, line: 44, baseType: !2187, size: 64, offset: 128)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2554, file: !2555, line: 45, baseType: !210, size: 128, offset: 192)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2554, file: !2555, line: 46, baseType: !210, size: 128, offset: 320)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2554, file: !2555, line: 47, baseType: !251, size: 8, offset: 448)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2188, file: !114, line: 776, baseType: !129, size: 32, offset: 5120)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2188, file: !114, line: 778, baseType: !528, size: 32, offset: 5152)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2188, file: !114, line: 779, baseType: !441, size: 32, offset: 5184)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2188, file: !114, line: 781, baseType: !223, size: 32, offset: 5216)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2188, file: !114, line: 782, baseType: !210, size: 128, offset: 5248)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2188, file: !114, line: 784, baseType: !2664, size: 64, offset: 5376)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2666)
!2666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2667, line: 52, size: 768, elements: !2668)
!2667 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!2668 = !{!2669, !2670, !2671, !2672, !2673, !2677, !2681, !2682, !2683, !2708, !2712, !2716}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2666, file: !2667, line: 53, baseType: !207, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2666, file: !2667, line: 55, baseType: !344, size: 64, offset: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2666, file: !2667, line: 56, baseType: !344, size: 64, offset: 128)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2666, file: !2667, line: 58, baseType: !2204, size: 64, offset: 192)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2666, file: !2667, line: 59, baseType: !2674, size: 64, offset: 256)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{!293, !2207, !2213}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2666, file: !2667, line: 61, baseType: !2678, size: 64, offset: 320)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{null, !2664}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2666, file: !2667, line: 62, baseType: !2217, size: 64, offset: 384)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2666, file: !2667, line: 64, baseType: !2226, size: 64, offset: 448)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2666, file: !2667, line: 66, baseType: !2684, size: 64, offset: 512)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2686)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !88, line: 39, size: 384, elements: !2687)
!2687 = !{!2688, !2689, !2693, !2697, !2703, !2707}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2686, file: !88, line: 40, baseType: !87, size: 32)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2686, file: !88, line: 41, baseType: !2690, size: 64, offset: 64)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!712}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2686, file: !88, line: 42, baseType: !2694, size: 64, offset: 128)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!194}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2686, file: !88, line: 43, baseType: !2698, size: 64, offset: 192)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{!2581, !2701}
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !88, line: 19, flags: DIFlagFwdDecl)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2686, file: !88, line: 44, baseType: !2704, size: 64, offset: 256)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DISubroutineType(types: !2706)
!2706 = !{!2581}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2686, file: !88, line: 45, baseType: !675, size: 64, offset: 320)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2666, file: !2667, line: 67, baseType: !2709, size: 64, offset: 576)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{!2581, !2207}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2666, file: !2667, line: 69, baseType: !2713, size: 64, offset: 640)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{null, !2207, !2214, !2215}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2666, file: !2667, line: 71, baseType: !2221, size: 64, offset: 704)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2188, file: !114, line: 785, baseType: !344, size: 64, offset: 5440)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2188, file: !114, line: 787, baseType: !2217, size: 64, offset: 5504)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2188, file: !114, line: 788, baseType: !2720, size: 64, offset: 5568)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !114, line: 46, flags: DIFlagFwdDecl)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2188, file: !114, line: 789, baseType: !2723, size: 64, offset: 5632)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !114, line: 48, flags: DIFlagFwdDecl)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2188, file: !114, line: 791, baseType: !2726, size: 64, offset: 5696)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !114, line: 597, size: 128, elements: !2728)
!2728 = !{!2729, !2730, !2731, !2732, !2733}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !2727, file: !114, line: 598, baseType: !136, size: 32)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !2727, file: !114, line: 599, baseType: !145, size: 32, offset: 32)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !2727, file: !114, line: 600, baseType: !150, size: 32, offset: 64)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !2727, file: !114, line: 601, baseType: !712, size: 8, offset: 96)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !2727, file: !114, line: 602, baseType: !712, size: 8, offset: 104)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2188, file: !114, line: 793, baseType: !155, size: 32, offset: 5760)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2188, file: !114, line: 795, baseType: !712, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2188, file: !114, line: 796, baseType: !712, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2188, file: !114, line: 797, baseType: !712, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2188, file: !114, line: 798, baseType: !712, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2188, file: !114, line: 799, baseType: !712, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_status", scope: !1936, file: !162, line: 451, baseType: !128, size: 32, offset: 1536)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "nr_requests", scope: !1936, file: !162, line: 457, baseType: !196, size: 64, offset: 1600)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pad_mask", scope: !1936, file: !162, line: 459, baseType: !13, size: 32, offset: 1664)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "rq_timeout", scope: !1936, file: !162, line: 466, baseType: !13, size: 32, offset: 1696)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1936, file: !162, line: 468, baseType: !874, size: 320, offset: 1728)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_work", scope: !1936, file: !162, line: 469, baseType: !892, size: 256, offset: 2048)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active_requests_shared_tags", scope: !1936, file: !162, line: 471, baseType: !243, size: 32, offset: 2304)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "sched_shared_tags", scope: !1936, file: !162, line: 473, baseType: !2039, size: 64, offset: 2368)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1936, file: !162, line: 475, baseType: !210, size: 128, offset: 2432)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_pols", scope: !1936, file: !162, line: 477, baseType: !1976, size: 64, offset: 2560)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "root_blkg", scope: !1936, file: !162, line: 478, baseType: !1377, size: 64, offset: 2624)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "blkg_list", scope: !1936, file: !162, line: 479, baseType: !210, size: 128, offset: 2688)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_mutex", scope: !1936, file: !162, line: 480, baseType: !632, size: 256, offset: 2816)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !1936, file: !162, line: 483, baseType: !2754, size: 960, offset: 3072)
!2754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_limits", file: !162, line: 300, size: 960, elements: !2755)
!2755 = !{!2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "bounce", scope: !2754, file: !162, line: 301, baseType: !161, size: 32)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "seg_boundary_mask", scope: !2754, file: !162, line: 302, baseType: !196, size: 64, offset: 64)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !2754, file: !162, line: 303, baseType: !196, size: 64, offset: 128)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_sectors", scope: !2754, file: !162, line: 305, baseType: !13, size: 32, offset: 192)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "max_dev_sectors", scope: !2754, file: !162, line: 306, baseType: !13, size: 32, offset: 224)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_sectors", scope: !2754, file: !162, line: 307, baseType: !13, size: 32, offset: 256)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !2754, file: !162, line: 308, baseType: !13, size: 32, offset: 288)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "max_user_sectors", scope: !2754, file: !162, line: 309, baseType: !13, size: 32, offset: 320)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2754, file: !162, line: 310, baseType: !13, size: 32, offset: 352)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "physical_block_size", scope: !2754, file: !162, line: 311, baseType: !13, size: 32, offset: 384)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "logical_block_size", scope: !2754, file: !162, line: 312, baseType: !13, size: 32, offset: 416)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_offset", scope: !2754, file: !162, line: 313, baseType: !13, size: 32, offset: 448)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "io_min", scope: !2754, file: !162, line: 314, baseType: !13, size: 32, offset: 480)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "io_opt", scope: !2754, file: !162, line: 315, baseType: !13, size: 32, offset: 512)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_sectors", scope: !2754, file: !162, line: 316, baseType: !13, size: 32, offset: 544)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_discard_sectors", scope: !2754, file: !162, line: 317, baseType: !13, size: 32, offset: 576)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "max_secure_erase_sectors", scope: !2754, file: !162, line: 318, baseType: !13, size: 32, offset: 608)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_zeroes_sectors", scope: !2754, file: !162, line: 319, baseType: !13, size: 32, offset: 640)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "max_zone_append_sectors", scope: !2754, file: !162, line: 320, baseType: !13, size: 32, offset: 672)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "discard_granularity", scope: !2754, file: !162, line: 321, baseType: !13, size: 32, offset: 704)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "discard_alignment", scope: !2754, file: !162, line: 322, baseType: !13, size: 32, offset: 736)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "zone_write_granularity", scope: !2754, file: !162, line: 323, baseType: !13, size: 32, offset: 768)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "max_segments", scope: !2754, file: !162, line: 325, baseType: !263, size: 16, offset: 800)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "max_integrity_segments", scope: !2754, file: !162, line: 326, baseType: !263, size: 16, offset: 816)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_segments", scope: !2754, file: !162, line: 327, baseType: !263, size: 16, offset: 832)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "misaligned", scope: !2754, file: !162, line: 329, baseType: !255, size: 8, offset: 848)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "discard_misaligned", scope: !2754, file: !162, line: 330, baseType: !255, size: 8, offset: 856)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "raid_partial_stripes_expensive", scope: !2754, file: !162, line: 331, baseType: !255, size: 8, offset: 864)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "zoned", scope: !2754, file: !162, line: 332, baseType: !166, size: 32, offset: 896)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alignment", scope: !2754, file: !162, line: 339, baseType: !13, size: 32, offset: 928)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "required_elevator_features", scope: !1936, file: !162, line: 485, baseType: !13, size: 32, offset: 4032)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1936, file: !162, line: 487, baseType: !129, size: 32, offset: 4064)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "blk_trace", scope: !1936, file: !162, line: 489, baseType: !2789, size: 64, offset: 4096)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_trace", file: !162, line: 31, flags: DIFlagFwdDecl)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !1936, file: !162, line: 494, baseType: !1985, size: 64, offset: 4160)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "flush_list", scope: !1936, file: !162, line: 495, baseType: !210, size: 128, offset: 4224)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_list", scope: !1936, file: !162, line: 497, baseType: !210, size: 128, offset: 4352)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_lock", scope: !1936, file: !162, line: 498, baseType: !223, size: 32, offset: 4480)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_work", scope: !1936, file: !162, line: 499, baseType: !949, size: 704, offset: 4544)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !1936, file: !162, line: 501, baseType: !632, size: 256, offset: 5248)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_dir_lock", scope: !1936, file: !162, line: 502, baseType: !632, size: 256, offset: 5504)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_list", scope: !1936, file: !162, line: 508, baseType: !210, size: 128, offset: 5760)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_lock", scope: !1936, file: !162, line: 509, baseType: !223, size: 32, offset: 5888)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_depth", scope: !1936, file: !162, line: 511, baseType: !129, size: 32, offset: 5920)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1936, file: !162, line: 517, baseType: !852, size: 128, align: 64, offset: 5952)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_wq", scope: !1936, file: !162, line: 518, baseType: !1604, size: 192, offset: 6080)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_lock", scope: !1936, file: !162, line: 523, baseType: !632, size: 256, offset: 6272)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "quiesce_depth", scope: !1936, file: !162, line: 525, baseType: !129, size: 32, offset: 6528)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set", scope: !1936, file: !162, line: 527, baseType: !2131, size: 64, offset: 6592)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set_list", scope: !1936, file: !162, line: 528, baseType: !210, size: 128, offset: 6656)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !1936, file: !162, line: 530, baseType: !407, size: 64, offset: 6784)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "sched_debugfs_dir", scope: !1936, file: !162, line: 531, baseType: !407, size: 64, offset: 6848)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "rqos_debugfs_dir", scope: !1936, file: !162, line: 532, baseType: !407, size: 64, offset: 6912)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !1936, file: !162, line: 536, baseType: !632, size: 256, offset: 6976)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "mq_sysfs_init_done", scope: !1936, file: !162, line: 538, baseType: !712, size: 8, offset: 7232)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ctx", scope: !1932, file: !94, line: 82, baseType: !2016, size: 64, offset: 64)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "mq_hctx", scope: !1932, file: !94, line: 83, baseType: !1959, size: 64, offset: 128)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !1932, file: !94, line: 85, baseType: !1356, size: 32, offset: 192)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "rq_flags", scope: !1932, file: !94, line: 86, baseType: !2816, size: 32, offset: 224)
!2816 = !DIDerivedType(tag: DW_TAG_typedef, name: "req_flags_t", file: !94, line: 27, baseType: !442)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !1932, file: !94, line: 88, baseType: !129, size: 32, offset: 256)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "internal_tag", scope: !1932, file: !94, line: 89, baseType: !129, size: 32, offset: 288)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1932, file: !94, line: 91, baseType: !13, size: 32, offset: 320)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "__data_len", scope: !1932, file: !94, line: 94, baseType: !13, size: 32, offset: 352)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "__sector", scope: !1932, file: !94, line: 95, baseType: !1320, size: 64, offset: 384)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "bio", scope: !1932, file: !94, line: 97, baseType: !1350, size: 64, offset: 448)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "biotail", scope: !1932, file: !94, line: 98, baseType: !1350, size: 64, offset: 512)
!2824 = !DIDerivedType(tag: DW_TAG_member, scope: !1932, file: !94, line: 100, baseType: !2825, size: 128, offset: 576)
!2825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1932, file: !94, line: 100, size: 128, elements: !2826)
!2826 = !{!2827, !2828}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "queuelist", scope: !2825, file: !94, line: 101, baseType: !210, size: 128)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "rq_next", scope: !2825, file: !94, line: 102, baseType: !1931, size: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !1932, file: !94, line: 105, baseType: !1315, size: 64, offset: 704)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_time_ns", scope: !1932, file: !94, line: 108, baseType: !445, size: 64, offset: 768)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "start_time_ns", scope: !1932, file: !94, line: 111, baseType: !445, size: 64, offset: 832)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "io_start_time_ns", scope: !1932, file: !94, line: 113, baseType: !445, size: 64, offset: 896)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "stats_sectors", scope: !1932, file: !94, line: 123, baseType: !263, size: 16, offset: 960)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "nr_phys_segments", scope: !1932, file: !94, line: 129, baseType: !263, size: 16, offset: 976)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1932, file: !94, line: 140, baseType: !263, size: 16, offset: 992)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1932, file: !94, line: 142, baseType: !93, size: 32, offset: 1024)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1932, file: !94, line: 143, baseType: !243, size: 32, offset: 1056)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1932, file: !94, line: 145, baseType: !196, size: 64, offset: 1088)
!2839 = !DIDerivedType(tag: DW_TAG_member, scope: !1932, file: !94, line: 154, baseType: !2840, size: 128, offset: 1152)
!2840 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1932, file: !94, line: 154, size: 128, elements: !2841)
!2841 = !{!2842, !2843}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2840, file: !94, line: 155, baseType: !878, size: 128)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_list", scope: !2840, file: !94, line: 156, baseType: !1550, size: 64)
!2844 = !DIDerivedType(tag: DW_TAG_member, scope: !1932, file: !94, line: 165, baseType: !2845, size: 192, offset: 1280)
!2845 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1932, file: !94, line: 165, size: 192, elements: !2846)
!2846 = !{!2847, !2848}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2845, file: !94, line: 166, baseType: !744, size: 192, align: 64)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "special_vec", scope: !2845, file: !94, line: 167, baseType: !1391, size: 128)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "elv", scope: !1932, file: !94, line: 177, baseType: !2850, size: 192, offset: 1472)
!2850 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1932, file: !94, line: 174, size: 192, elements: !2851)
!2851 = !{!2852, !2879}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "icq", scope: !2850, file: !94, line: 175, baseType: !2853, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2855, line: 73, size: 448, elements: !2856)
!2855 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2856 = !{!2857, !2858, !2865, !2873, !2878}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2854, file: !2855, line: 74, baseType: !1935, size: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2854, file: !2855, line: 75, baseType: !2859, size: 64, offset: 64)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2855, line: 99, size: 128, elements: !2861)
!2861 = !{!2862, !2863, !2864}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2860, file: !2855, line: 100, baseType: !636, size: 64)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2860, file: !2855, line: 101, baseType: !243, size: 32, offset: 64)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2860, file: !2855, line: 103, baseType: !263, size: 16, offset: 96)
!2865 = !DIDerivedType(tag: DW_TAG_member, scope: !2854, file: !2855, line: 83, baseType: !2866, size: 128, offset: 128)
!2866 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2854, file: !2855, line: 83, size: 128, elements: !2867)
!2867 = !{!2868, !2869}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2866, file: !2855, line: 84, baseType: !210, size: 128)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2866, file: !2855, line: 85, baseType: !2870, size: 64)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2872, line: 325, flags: DIFlagFwdDecl)
!2872 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!2873 = !DIDerivedType(tag: DW_TAG_member, scope: !2854, file: !2855, line: 87, baseType: !2874, size: 128, offset: 256)
!2874 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2854, file: !2855, line: 87, size: 128, elements: !2875)
!2875 = !{!2876, !2877}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2874, file: !2855, line: 88, baseType: !878, size: 128)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2874, file: !2855, line: 89, baseType: !852, size: 128, align: 64)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2854, file: !2855, line: 92, baseType: !13, size: 32, offset: 384)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2850, file: !94, line: 176, baseType: !2880, size: 128, offset: 64)
!2880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 128, elements: !751)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1932, file: !94, line: 182, baseType: !2882, size: 128, offset: 1664)
!2882 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1932, file: !94, line: 179, size: 128, elements: !2883)
!2883 = !{!2884, !2885}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2882, file: !94, line: 180, baseType: !13, size: 32)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "saved_end_io", scope: !2882, file: !94, line: 181, baseType: !2886, size: 64, offset: 64)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = !DIDerivedType(tag: DW_TAG_typedef, name: "rq_end_io_fn", file: !94, line: 23, baseType: !2888)
!2888 = !DISubroutineType(types: !2889)
!2889 = !{!99, !1931, !1360}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_time", scope: !1932, file: !94, line: 184, baseType: !445, size: 64, offset: 1792)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "end_io", scope: !1932, file: !94, line: 189, baseType: !2886, size: 64, offset: 1856)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "end_io_data", scope: !1932, file: !94, line: 190, baseType: !194, size: 64, offset: 1920)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "need_ts", scope: !1928, file: !162, line: 1561, baseType: !712, size: 8, offset: 64)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1928, file: !162, line: 1562, baseType: !2895, size: 64, offset: 128)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{null, !1927}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1829, file: !20, line: 1923, baseType: !2899, size: 64, offset: 448)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!129, !1543, !2902}
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !20, line: 1858, size: 128, elements: !2904)
!2904 = !{!2905, !2910}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2903, file: !20, line: 1859, baseType: !2906, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !20, line: 1855, baseType: !2907)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!712, !2902, !207, !129, !533, !445, !13}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2903, file: !20, line: 1860, baseType: !533, size: 64, offset: 64)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1829, file: !20, line: 1924, baseType: !2912, size: 64, offset: 512)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!2915, !1543, !2917}
!2915 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2916, line: 59, baseType: !13)
!2916 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !20, line: 61, flags: DIFlagFwdDecl)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1829, file: !20, line: 1925, baseType: !2920, size: 64, offset: 576)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!329, !1543, !13, !196}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1829, file: !20, line: 1926, baseType: !2920, size: 64, offset: 640)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1829, file: !20, line: 1927, baseType: !2925, size: 64, offset: 704)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!129, !1543, !1503}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1829, file: !20, line: 1928, baseType: !196, size: 64, offset: 768)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1829, file: !20, line: 1929, baseType: !2930, size: 64, offset: 832)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!129, !372, !1543}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1829, file: !20, line: 1930, baseType: !2934, size: 64, offset: 896)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{!129, !1543, !2937}
!2937 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !20, line: 1061, baseType: !194)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1829, file: !20, line: 1931, baseType: !2930, size: 64, offset: 960)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1829, file: !20, line: 1932, baseType: !2940, size: 64, offset: 1024)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!129, !1543, !533, !533, !129}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1829, file: !20, line: 1933, baseType: !2944, size: 64, offset: 1088)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{!129, !129, !1543, !129}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1829, file: !20, line: 1934, baseType: !2948, size: 64, offset: 1152)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{!129, !1543, !129, !2951}
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !20, line: 1063, flags: DIFlagFwdDecl)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1829, file: !20, line: 1935, baseType: !1540, size: 64, offset: 1216)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1829, file: !20, line: 1936, baseType: !2955, size: 64, offset: 1280)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{!129, !129}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1829, file: !20, line: 1937, baseType: !2948, size: 64, offset: 1344)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1829, file: !20, line: 1938, baseType: !2960, size: 64, offset: 1408)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!325, !2963, !1543, !1840, !340, !13}
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1076, line: 59, flags: DIFlagFwdDecl)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1829, file: !20, line: 1939, baseType: !2966, size: 64, offset: 1472)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!325, !1543, !1840, !2963, !340, !13}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1829, file: !20, line: 1940, baseType: !2970, size: 64, offset: 1536)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{null, !1543}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1829, file: !20, line: 1941, baseType: !2974, size: 64, offset: 1600)
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{!129, !1543, !129, !2977, !2978}
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1829, file: !20, line: 1942, baseType: !2980, size: 64, offset: 1664)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{!329, !1543, !129, !533, !533}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1829, file: !20, line: 1944, baseType: !2984, size: 64, offset: 1728)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{null, !1074, !1543}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1829, file: !20, line: 1948, baseType: !2988, size: 64, offset: 1792)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!325, !1543, !533, !1543, !533, !340, !13}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1829, file: !20, line: 1950, baseType: !2992, size: 64, offset: 1856)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!533, !1543, !533, !1543, !533, !533, !13}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1829, file: !20, line: 1953, baseType: !2940, size: 64, offset: 1920)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1829, file: !20, line: 1954, baseType: !2997, size: 64, offset: 1984)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{!129, !3000, !13}
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !20, line: 1911, flags: DIFlagFwdDecl)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1829, file: !20, line: 1955, baseType: !3003, size: 64, offset: 2048)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!129, !3000, !1927, !13}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1544, file: !20, line: 1018, baseType: !445, size: 64, offset: 1472)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1544, file: !20, line: 1020, baseType: !194, size: 64, offset: 1536)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1544, file: !20, line: 1023, baseType: !194, size: 64, offset: 1600)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1544, file: !20, line: 1027, baseType: !3010, size: 64, offset: 1664)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1544, file: !20, line: 1029, baseType: !368, size: 64, offset: 1728)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1544, file: !20, line: 1030, baseType: !3013, size: 32, offset: 1792)
!3013 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !3014, line: 8, baseType: !441)
!3014 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1544, file: !20, line: 1031, baseType: !3013, size: 32, offset: 1824)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1520, file: !52, line: 756, baseType: !196, size: 64, offset: 704)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1520, file: !52, line: 757, baseType: !196, size: 64, offset: 768)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1520, file: !52, line: 760, baseType: !196, size: 64, offset: 832)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1520, file: !52, line: 761, baseType: !196, size: 64, offset: 896)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1520, file: !52, line: 763, baseType: !196, size: 64, offset: 960)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1520, file: !52, line: 764, baseType: !3022, size: 64, offset: 1024)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !3024, line: 299, baseType: !3025)
!3024 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!3025 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3024, line: 299, size: 64, elements: !3026)
!3026 = !{!3027}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !3025, file: !3024, line: 299, baseType: !3028, size: 64)
!3028 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !3029, line: 18, baseType: !196)
!3029 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1520, file: !52, line: 773, baseType: !243, size: 32, offset: 1088)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1520, file: !52, line: 785, baseType: !243, size: 32, offset: 1120)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1520, file: !52, line: 795, baseType: !3033, size: 64, offset: 1152)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !52, line: 726, size: 128, elements: !3035)
!3035 = !{!3036, !3037}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3034, file: !52, line: 727, baseType: !445, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !3034, file: !52, line: 728, baseType: !129, size: 32, offset: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1520, file: !52, line: 801, baseType: !196, size: 64, offset: 1216)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1520, file: !52, line: 804, baseType: !636, size: 64, offset: 1280)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1520, file: !52, line: 806, baseType: !129, size: 32, offset: 1344)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1520, file: !52, line: 808, baseType: !223, size: 32, offset: 1376)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1520, file: !52, line: 823, baseType: !1293, size: 320, offset: 1408)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1520, file: !52, line: 825, baseType: !210, size: 128, offset: 1728)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1520, file: !52, line: 845, baseType: !129, size: 32, offset: 1856)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1520, file: !52, line: 849, baseType: !196, size: 64, offset: 1920)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1520, file: !52, line: 850, baseType: !196, size: 64, offset: 1984)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1520, file: !52, line: 852, baseType: !196, size: 64, offset: 2048)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1520, file: !52, line: 853, baseType: !196, size: 64, offset: 2112)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1520, file: !52, line: 854, baseType: !638, size: 64, offset: 2176)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1520, file: !52, line: 855, baseType: !196, size: 64, offset: 2240)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1520, file: !52, line: 856, baseType: !196, size: 64, offset: 2304)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1520, file: !52, line: 857, baseType: !196, size: 64, offset: 2368)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1520, file: !52, line: 858, baseType: !196, size: 64, offset: 2432)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1520, file: !52, line: 865, baseType: !418, size: 32, offset: 2496)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1520, file: !52, line: 867, baseType: !223, size: 32, offset: 2528)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1520, file: !52, line: 869, baseType: !196, size: 64, offset: 2560)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1520, file: !52, line: 869, baseType: !196, size: 64, offset: 2624)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1520, file: !52, line: 869, baseType: !196, size: 64, offset: 2688)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1520, file: !52, line: 869, baseType: !196, size: 64, offset: 2752)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1520, file: !52, line: 870, baseType: !196, size: 64, offset: 2816)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1520, file: !52, line: 870, baseType: !196, size: 64, offset: 2880)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1520, file: !52, line: 870, baseType: !196, size: 64, offset: 2944)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1520, file: !52, line: 871, baseType: !196, size: 64, offset: 3008)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1520, file: !52, line: 871, baseType: !196, size: 64, offset: 3072)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1520, file: !52, line: 871, baseType: !196, size: 64, offset: 3136)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1520, file: !52, line: 871, baseType: !196, size: 64, offset: 3200)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1520, file: !52, line: 873, baseType: !3068, size: 3328, offset: 3264)
!3068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 3328, elements: !3069)
!3069 = !{!3070}
!3070 = !DISubrange(count: 52)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1520, file: !52, line: 875, baseType: !3072, size: 1280, offset: 6592)
!3072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1771, size: 1280, elements: !862)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1520, file: !52, line: 877, baseType: !3074, size: 64, offset: 7872)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !52, line: 877, flags: DIFlagFwdDecl)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1520, file: !52, line: 880, baseType: !3077, size: 1088, offset: 7936)
!3077 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !3078, line: 72, baseType: !3079)
!3078 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3078, line: 23, size: 1088, elements: !3080)
!3080 = !{!3081, !3082, !3083, !3084, !3085, !3088, !3089, !3090, !3091, !3116, !3117, !3118}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !3079, file: !3078, line: 28, baseType: !445, size: 64)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !3079, file: !3078, line: 38, baseType: !638, size: 64, offset: 64)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !3079, file: !3078, line: 40, baseType: !196, size: 64, offset: 128)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !3079, file: !3078, line: 43, baseType: !1293, size: 320, offset: 192)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !3079, file: !3078, line: 44, baseType: !3086, size: 64, offset: 512)
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3087 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !3078, line: 44, flags: DIFlagFwdDecl)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3079, file: !3078, line: 48, baseType: !196, size: 64, offset: 576)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3079, file: !3078, line: 59, baseType: !632, size: 256, offset: 640)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !3079, file: !3078, line: 60, baseType: !194, size: 64, offset: 896)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !3079, file: !3078, line: 61, baseType: !3092, size: 64, offset: 960)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3094)
!3094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !3095, line: 13, size: 1216, elements: !3096)
!3095 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!3096 = !{!3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3094, file: !3095, line: 14, baseType: !194, size: 64)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3094, file: !3095, line: 15, baseType: !196, size: 64, offset: 64)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !3094, file: !3095, line: 17, baseType: !196, size: 64, offset: 128)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !3094, file: !3095, line: 17, baseType: !196, size: 64, offset: 192)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !3094, file: !3095, line: 18, baseType: !196, size: 64, offset: 256)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !3094, file: !3095, line: 18, baseType: !196, size: 64, offset: 320)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !3094, file: !3095, line: 19, baseType: !2581, size: 64, offset: 384)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !3094, file: !3095, line: 21, baseType: !329, size: 64, offset: 448)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !3094, file: !3095, line: 23, baseType: !329, size: 64, offset: 512)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !3094, file: !3095, line: 24, baseType: !329, size: 64, offset: 576)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !3094, file: !3095, line: 25, baseType: !329, size: 64, offset: 640)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !3094, file: !3095, line: 26, baseType: !329, size: 64, offset: 704)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !3094, file: !3095, line: 27, baseType: !329, size: 64, offset: 768)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !3094, file: !3095, line: 28, baseType: !329, size: 64, offset: 832)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !3094, file: !3095, line: 29, baseType: !329, size: 64, offset: 896)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !3094, file: !3095, line: 30, baseType: !329, size: 64, offset: 960)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !3094, file: !3095, line: 31, baseType: !329, size: 64, offset: 1024)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !3094, file: !3095, line: 32, baseType: !329, size: 64, offset: 1088)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !3094, file: !3095, line: 33, baseType: !329, size: 64, offset: 1152)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !3079, file: !3078, line: 63, baseType: !243, size: 32, offset: 1024)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !3079, file: !3078, line: 69, baseType: !261, size: 16, offset: 1056)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !3079, file: !3078, line: 70, baseType: !768, size: 16, offset: 1072)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1520, file: !52, line: 882, baseType: !196, size: 64, offset: 9024)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1520, file: !52, line: 885, baseType: !223, size: 32, offset: 9088)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1520, file: !52, line: 886, baseType: !3122, size: 64, offset: 9152)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !52, line: 732, flags: DIFlagFwdDecl)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1520, file: !52, line: 901, baseType: !1796, size: 64, offset: 9216)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1520, file: !52, line: 904, baseType: !1543, size: 64, offset: 9280)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1520, file: !52, line: 906, baseType: !3127, size: 64, offset: 9344)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3128 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !52, line: 906, flags: DIFlagFwdDecl)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1520, file: !52, line: 930, baseType: !243, size: 32, offset: 9408)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1520, file: !52, line: 933, baseType: !243, size: 32, offset: 9440)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1520, file: !52, line: 935, baseType: !3132, size: 64, offset: 9472)
!3132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !74, line: 103, size: 64, elements: !3133)
!3133 = !{!3134}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !3132, file: !74, line: 104, baseType: !3135, size: 64)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !74, line: 101, flags: DIFlagFwdDecl)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1520, file: !52, line: 940, baseType: !636, size: 64, offset: 9536)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1520, file: !52, line: 942, baseType: !892, size: 256, offset: 9600)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1517, file: !52, line: 986, baseType: !3140, offset: 10240)
!3140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, elements: !1619)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1504, file: !52, line: 640, baseType: !3142, size: 64, offset: 192)
!3142 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !3024, line: 297, baseType: !3143)
!3143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !3024, line: 297, size: 64, elements: !3144)
!3144 = !{!3145}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !3143, file: !3024, line: 297, baseType: !3146, size: 64)
!3146 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !3029, line: 19, baseType: !196)
!3147 = !DIDerivedType(tag: DW_TAG_member, scope: !1504, file: !52, line: 646, baseType: !3148, size: 64, offset: 256)
!3148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1504, file: !52, line: 646, size: 64, elements: !3149)
!3149 = !{!3150, !3153}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !3148, file: !52, line: 647, baseType: !3151, size: 64)
!3151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3152)
!3152 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !52, line: 542, baseType: !196)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !3148, file: !52, line: 648, baseType: !3152, size: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1504, file: !52, line: 666, baseType: !129, size: 32, offset: 320)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1504, file: !52, line: 667, baseType: !3156, size: 64, offset: 384)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !52, line: 579, size: 320, elements: !3158)
!3158 = !{!3159}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3157, file: !52, line: 580, baseType: !1293, size: 320)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1504, file: !52, line: 670, baseType: !712, size: 8, offset: 448)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1504, file: !52, line: 681, baseType: !3162, size: 256, offset: 512)
!3162 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1504, file: !52, line: 678, size: 256, elements: !3163)
!3163 = !{!3164, !3165}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3162, file: !52, line: 679, baseType: !744, size: 192, align: 64)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !3162, file: !52, line: 680, baseType: !196, size: 64, offset: 192)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1504, file: !52, line: 689, baseType: !210, size: 128, offset: 768)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1504, file: !52, line: 691, baseType: !3168, size: 64, offset: 896)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !52, line: 691, flags: DIFlagFwdDecl)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1504, file: !52, line: 694, baseType: !3171, size: 64, offset: 960)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3173)
!3173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1497, line: 563, size: 1024, elements: !3174)
!3174 = !{!3175, !3179, !3180, !3184, !3188, !3192, !3193, !3197, !3201, !3205, !3206, !3207, !3211, !3215, !3221, !3225}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3173, file: !1497, line: 564, baseType: !3176, size: 64)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{null, !1503}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3173, file: !1497, line: 569, baseType: !3176, size: 64, offset: 64)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !3173, file: !1497, line: 571, baseType: !3181, size: 64, offset: 128)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{!129, !1503, !196}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !3173, file: !1497, line: 572, baseType: !3185, size: 64, offset: 192)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!129, !1503}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !3173, file: !1497, line: 578, baseType: !3189, size: 64, offset: 256)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{!129, !1503, !196, !196, !196}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !3173, file: !1497, line: 580, baseType: !1491, size: 64, offset: 320)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !3173, file: !1497, line: 581, baseType: !3194, size: 64, offset: 384)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{!1494, !1495, !13}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !3173, file: !1497, line: 582, baseType: !3198, size: 64, offset: 448)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{!1494, !1495, !196, !196}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !3173, file: !1497, line: 584, baseType: !3202, size: 64, offset: 512)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DISubroutineType(types: !3204)
!3204 = !{!196, !1503}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !3173, file: !1497, line: 588, baseType: !1491, size: 64, offset: 576)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !3173, file: !1497, line: 591, baseType: !1491, size: 64, offset: 640)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !3173, file: !1497, line: 597, baseType: !3208, size: 64, offset: 704)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!129, !1503, !196, !194, !129, !129}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3173, file: !1497, line: 603, baseType: !3212, size: 64, offset: 768)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DISubroutineType(types: !3214)
!3214 = !{!207, !1503}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !3173, file: !1497, line: 613, baseType: !3216, size: 64, offset: 832)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{!129, !1503, !3219}
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !52, line: 717, flags: DIFlagFwdDecl)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !3173, file: !1497, line: 625, baseType: !3222, size: 64, offset: 896)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!3219, !1503, !196}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !3173, file: !1497, line: 633, baseType: !3226, size: 64, offset: 960)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!1394, !1503, !196}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1504, file: !52, line: 697, baseType: !196, size: 64, offset: 1024)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1504, file: !52, line: 699, baseType: !1543, size: 64, offset: 1088)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1504, file: !52, line: 700, baseType: !194, size: 64, offset: 1152)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1504, file: !52, line: 711, baseType: !636, size: 64, offset: 1216)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1504, file: !52, line: 717, baseType: !3219, size: 64, offset: 1280)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1504, file: !52, line: 722, baseType: !3235, offset: 1344)
!3235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !52, line: 570, elements: !921)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1500, file: !1497, line: 515, baseType: !192, size: 32, offset: 64)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1500, file: !1497, line: 516, baseType: !196, size: 64, offset: 128)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1500, file: !1497, line: 517, baseType: !196, size: 64, offset: 192)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1500, file: !1497, line: 518, baseType: !196, size: 64, offset: 256)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1496, file: !1497, line: 520, baseType: !51, size: 32, offset: 320)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1496, file: !1497, line: 522, baseType: !3242, size: 64, offset: 384)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !3029, line: 22, baseType: !3244)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3029, line: 22, size: 64, elements: !3245)
!3245 = !{!3246}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !3244, file: !3029, line: 22, baseType: !3247, size: 64)
!3247 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !3029, line: 15, baseType: !196)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1496, file: !1497, line: 524, baseType: !3249, size: 64, offset: 448)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !3024, line: 372, baseType: !3251)
!3251 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3024, line: 372, size: 64, elements: !3252)
!3252 = !{!3253}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !3251, file: !3024, line: 372, baseType: !3254, size: 64)
!3254 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !3029, line: 16, baseType: !196)
!3255 = !DIDerivedType(tag: DW_TAG_member, scope: !1496, file: !1497, line: 527, baseType: !3256, size: 64, offset: 512)
!3256 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1496, file: !1497, line: 527, size: 64, elements: !3257)
!3257 = !{!3258, !3264}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !3256, file: !1497, line: 528, baseType: !3259, size: 64)
!3259 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !3029, line: 21, baseType: !3260)
!3260 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3029, line: 21, size: 64, elements: !3261)
!3261 = !{!3262}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !3260, file: !3029, line: 21, baseType: !3263, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !3029, line: 14, baseType: !196)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !3256, file: !1497, line: 529, baseType: !3243, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1496, file: !1497, line: 534, baseType: !1394, size: 64, offset: 576)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1496, file: !1497, line: 535, baseType: !1394, size: 64, offset: 640)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1496, file: !1497, line: 541, baseType: !3268, size: 64, offset: 704)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1496, file: !1497, line: 545, baseType: !3270, size: 64, offset: 768)
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1496, file: !1497, line: 549, baseType: !3272, size: 64, offset: 832)
!3272 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !3024, line: 520, baseType: !1394)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1484, file: !44, line: 100, baseType: !3274, size: 64, offset: 128)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{!129, !1444, !196, !196, !129}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1445, file: !44, line: 134, baseType: !194, size: 64, offset: 960)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1445, file: !44, line: 135, baseType: !129, size: 32, offset: 1024)
!3279 = !DIDerivedType(tag: DW_TAG_member, scope: !1445, file: !44, line: 136, baseType: !3280, size: 128, offset: 1088)
!3280 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1445, file: !44, line: 136, size: 128, elements: !3281)
!3281 = !{!3282, !3288}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3280, file: !44, line: 137, baseType: !3283, size: 128)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !3284, line: 6, size: 128, elements: !3285)
!3284 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!3285 = !{!3286, !3287}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3283, file: !3284, line: 7, baseType: !445, size: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3283, file: !3284, line: 8, baseType: !445, size: 64, offset: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, scope: !3280, file: !44, line: 138, baseType: !3289)
!3289 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3280, file: !44, line: 138, elements: !3290)
!3290 = !{!3291, !3293}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !3289, file: !44, line: 138, baseType: !3292)
!3292 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3289, file: !44, line: 138, elements: !921)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !3289, file: !44, line: 138, baseType: !3294)
!3294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3283, elements: !1619)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1441, file: !52, line: 147, baseType: !194, size: 64, offset: 64)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1399, file: !52, line: 161, baseType: !852, size: 128, align: 64)
!3297 = !DIDerivedType(tag: DW_TAG_member, scope: !1395, file: !52, line: 164, baseType: !3298, size: 32, offset: 384)
!3298 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1395, file: !52, line: 164, size: 32, elements: !3299)
!3299 = !{!3300, !3301}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3298, file: !52, line: 169, baseType: !243, size: 32)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !3298, file: !52, line: 177, baseType: !13, size: 32)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1395, file: !52, line: 181, baseType: !243, size: 32, offset: 416)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !1391, file: !1364, line: 33, baseType: !13, size: 32, offset: 64)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !1391, file: !1364, line: 34, baseType: !13, size: 32, offset: 96)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pool", scope: !1351, file: !1317, line: 317, baseType: !3306, size: 64, offset: 896)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_set", file: !3308, line: 678, size: 1984, elements: !3309)
!3308 = !DIFile(filename: "./include/linux/bio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48d164cf34dda85459af1fe5d2b8d08f")
!3309 = !{!3310, !3311, !3312, !3315, !3336, !3337, !3338, !3339, !3344, !3345, !3346}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "bio_slab", scope: !3307, file: !3308, line: 679, baseType: !2870, size: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "front_pad", scope: !3307, file: !3308, line: 680, baseType: !13, size: 32, offset: 64)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !3307, file: !3308, line: 685, baseType: !3313, size: 64, offset: 128)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_alloc_cache", file: !3308, line: 685, flags: DIFlagFwdDecl)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "bio_pool", scope: !3307, file: !3308, line: 687, baseType: !3316, size: 576, offset: 192)
!3316 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_t", file: !3317, line: 26, baseType: !3318)
!3317 = !DIFile(filename: "./include/linux/mempool.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ef8a210e9c9e696cc7d6e9be9316611")
!3318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempool_s", file: !3317, line: 16, size: 576, elements: !3319)
!3319 = !{!3320, !3321, !3322, !3323, !3324, !3325, !3330, !3335}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3318, file: !3317, line: 17, baseType: !223, size: 32)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "min_nr", scope: !3318, file: !3317, line: 18, baseType: !129, size: 32, offset: 32)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "curr_nr", scope: !3318, file: !3317, line: 19, baseType: !129, size: 32, offset: 64)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !3318, file: !3317, line: 20, baseType: !2978, size: 64, offset: 128)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "pool_data", scope: !3318, file: !3317, line: 22, baseType: !194, size: 64, offset: 192)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3318, file: !3317, line: 23, baseType: !3326, size: 64, offset: 256)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_alloc_t", file: !3317, line: 13, baseType: !3328)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{!194, !192, !194}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3318, file: !3317, line: 24, baseType: !3331, size: 64, offset: 320)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_free_t", file: !3317, line: 14, baseType: !3333)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{null, !194, !194}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !3318, file: !3317, line: 25, baseType: !1604, size: 192, offset: 384)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_pool", scope: !3307, file: !3308, line: 688, baseType: !3316, size: 576, offset: 768)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "back_pad", scope: !3307, file: !3308, line: 694, baseType: !13, size: 32, offset: 1344)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_lock", scope: !3307, file: !3308, line: 699, baseType: !223, size: 32, offset: 1376)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_list", scope: !3307, file: !3308, line: 700, baseType: !3340, size: 128, offset: 1408)
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !3308, line: 550, size: 128, elements: !3341)
!3341 = !{!3342, !3343}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3340, file: !3308, line: 551, baseType: !1350, size: 64)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !3340, file: !3308, line: 552, baseType: !1350, size: 64, offset: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_work", scope: !3307, file: !3308, line: 701, baseType: !892, size: 256, offset: 1536)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_workqueue", scope: !3307, file: !3308, line: 702, baseType: !954, size: 64, offset: 1792)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !3307, file: !3308, line: 707, baseType: !878, size: 128, offset: 1856)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "bi_inline_vecs", scope: !1351, file: !1317, line: 324, baseType: !3348, offset: 960)
!3348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1391, elements: !1619)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "poll_bio", scope: !1344, file: !162, line: 1390, baseType: !3350, size: 64, offset: 64)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!129, !1350, !1927, !13}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1344, file: !162, line: 1392, baseType: !3354, size: 64, offset: 128)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!129, !1323, !3357}
!3357 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_mode_t", file: !162, line: 115, baseType: !13)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1344, file: !162, line: 1393, baseType: !3359, size: 64, offset: 192)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{null, !1323}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !1344, file: !162, line: 1394, baseType: !3363, size: 64, offset: 256)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!129, !1315, !3357, !13, !196}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1344, file: !162, line: 1396, baseType: !3363, size: 64, offset: 320)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "check_events", scope: !1344, file: !162, line: 1398, baseType: !3368, size: 64, offset: 384)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = !DISubroutineType(types: !3370)
!3370 = !{!13, !1323, !13}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_native_capacity", scope: !1344, file: !162, line: 1400, baseType: !3359, size: 64, offset: 448)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "getgeo", scope: !1344, file: !162, line: 1401, baseType: !3373, size: 64, offset: 512)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{!129, !1315, !3376}
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DICompositeType(tag: DW_TAG_structure_type, name: "hd_geometry", file: !20, line: 56, flags: DIFlagFwdDecl)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_only", scope: !1344, file: !162, line: 1402, baseType: !3379, size: 64, offset: 576)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!129, !1315, !712}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "free_disk", scope: !1344, file: !162, line: 1403, baseType: !3359, size: 64, offset: 640)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "swap_slot_free_notify", scope: !1344, file: !162, line: 1405, baseType: !3384, size: 64, offset: 704)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{null, !1315, !196}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "report_zones", scope: !1344, file: !162, line: 1406, baseType: !3388, size: 64, offset: 768)
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{!129, !1323, !1320, !13, !3391, !194}
!3391 = !DIDerivedType(tag: DW_TAG_typedef, name: "report_zones_cb", file: !162, line: 342, baseType: !3392)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = !DISubroutineType(types: !3394)
!3394 = !{!129, !3395, !13, !194}
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_zone", file: !3397, line: 106, size: 512, elements: !3398)
!3397 = !DIFile(filename: "./include/uapi/linux/blkzoned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3d5e7016ed7b437a9c2a308f55db1257")
!3398 = !{!3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3408, !3409}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3396, file: !3397, line: 107, baseType: !446, size: 64)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3396, file: !3397, line: 108, baseType: !446, size: 64, offset: 64)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !3396, file: !3397, line: 109, baseType: !446, size: 64, offset: 128)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3396, file: !3397, line: 110, baseType: !253, size: 8, offset: 192)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !3396, file: !3397, line: 111, baseType: !253, size: 8, offset: 200)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "non_seq", scope: !3396, file: !3397, line: 112, baseType: !253, size: 8, offset: 208)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !3396, file: !3397, line: 113, baseType: !253, size: 8, offset: 216)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !3396, file: !3397, line: 114, baseType: !3407, size: 32, offset: 224)
!3407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 32, elements: !862)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !3396, file: !3397, line: 115, baseType: !446, size: 64, offset: 256)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3396, file: !3397, line: 116, baseType: !3410, size: 192, offset: 320)
!3410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 192, elements: !3411)
!3411 = !{!3412}
!3412 = !DISubrange(count: 24)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1344, file: !162, line: 1408, baseType: !3414, size: 64, offset: 832)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{!293, !1323, !2213}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "get_unique_id", scope: !1344, file: !162, line: 1410, baseType: !3418, size: 64, offset: 896)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!129, !1323, !3421, !171}
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1344, file: !162, line: 1412, baseType: !561, size: 64, offset: 960)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "pr_ops", scope: !1344, file: !162, line: 1413, baseType: !3424, size: 64, offset: 1024)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3426)
!3426 = !DICompositeType(tag: DW_TAG_structure_type, name: "pr_ops", file: !162, line: 37, flags: DIFlagFwdDecl)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "alternative_gpt_sector", scope: !1344, file: !162, line: 1420, baseType: !3428, size: 64, offset: 1088)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{!129, !1323, !3431}
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !1324, file: !162, line: 146, baseType: !1935, size: 64, offset: 640)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1324, file: !162, line: 147, baseType: !194, size: 64, offset: 704)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "bio_split", scope: !1324, file: !162, line: 149, baseType: !3307, size: 1984, offset: 768)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1324, file: !162, line: 151, baseType: !129, size: 32, offset: 2752)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1324, file: !162, line: 152, baseType: !196, size: 64, offset: 2816)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "open_mutex", scope: !1324, file: !162, line: 161, baseType: !632, size: 256, offset: 2880)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "open_partitions", scope: !1324, file: !162, line: 162, baseType: !13, size: 32, offset: 3136)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !1324, file: !162, line: 164, baseType: !3440, size: 64, offset: 3200)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !20, line: 50, flags: DIFlagFwdDecl)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "queue_kobj", scope: !1324, file: !162, line: 165, baseType: !203, size: 512, offset: 3264)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "slave_dir", scope: !1324, file: !162, line: 166, baseType: !216, size: 64, offset: 3776)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "slave_bdevs", scope: !1324, file: !162, line: 168, baseType: !210, size: 128, offset: 3840)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !1324, file: !162, line: 170, baseType: !3446, size: 64, offset: 3968)
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3447 = !DICompositeType(tag: DW_TAG_structure_type, name: "timer_rand_state", file: !162, line: 170, flags: DIFlagFwdDecl)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "sync_io", scope: !1324, file: !162, line: 171, baseType: !243, size: 32, offset: 4032)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "ev", scope: !1324, file: !162, line: 172, baseType: !3450, size: 64, offset: 4096)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_events", file: !162, line: 104, flags: DIFlagFwdDecl)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "cdi", scope: !1324, file: !162, line: 197, baseType: !3453, size: 64, offset: 4160)
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdrom_device_info", file: !162, line: 197, flags: DIFlagFwdDecl)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1324, file: !162, line: 199, baseType: !129, size: 32, offset: 4224)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !1324, file: !162, line: 200, baseType: !3457, size: 64, offset: 4288)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DICompositeType(tag: DW_TAG_structure_type, name: "badblocks", file: !162, line: 105, flags: DIFlagFwdDecl)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "lockdep_map", scope: !1324, file: !162, line: 201, baseType: !919, offset: 4352)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "diskseq", scope: !1324, file: !162, line: 202, baseType: !445, size: 64, offset: 4352)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "open_mode", scope: !1324, file: !162, line: 203, baseType: !3357, size: 32, offset: 4416)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ranges", scope: !1324, file: !162, line: 209, baseType: !199, size: 64, offset: 4480)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !1316, file: !1317, line: 44, baseType: !1935, size: 64, offset: 192)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !1316, file: !1317, line: 45, baseType: !3465, size: 64, offset: 256)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !1317, line: 45, flags: DIFlagFwdDecl)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !1316, file: !1317, line: 46, baseType: !196, size: 64, offset: 320)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !1316, file: !1317, line: 47, baseType: !712, size: 8, offset: 384)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !1316, file: !1317, line: 48, baseType: !251, size: 8, offset: 392)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !1316, file: !1317, line: 49, baseType: !712, size: 8, offset: 400)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !1316, file: !1317, line: 50, baseType: !712, size: 8, offset: 408)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !1316, file: !1317, line: 51, baseType: !528, size: 32, offset: 416)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !1316, file: !1317, line: 52, baseType: !243, size: 32, offset: 448)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !1316, file: !1317, line: 53, baseType: !223, size: 32, offset: 480)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !1316, file: !1317, line: 54, baseType: !372, size: 64, offset: 512)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !1316, file: !1317, line: 55, baseType: !194, size: 64, offset: 576)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !1316, file: !1317, line: 56, baseType: !194, size: 64, offset: 640)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !1316, file: !1317, line: 57, baseType: !3479, size: 64, offset: 704)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3481)
!3481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !162, line: 1477, size: 128, elements: !3482)
!3482 = !{!3483, !3487}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dead", scope: !3481, file: !162, line: 1478, baseType: !3484, size: 64)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DISubroutineType(types: !3486)
!3486 = !{null, !1315, !712}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3481, file: !162, line: 1483, baseType: !3488, size: 64, offset: 64)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = !DISubroutineType(types: !3490)
!3490 = !{null, !1315}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !1316, file: !1317, line: 58, baseType: !632, size: 256, offset: 768)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !1316, file: !1317, line: 60, baseType: !129, size: 32, offset: 1024)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !1316, file: !1317, line: 61, baseType: !129, size: 32, offset: 1056)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !1316, file: !1317, line: 62, baseType: !216, size: 64, offset: 1088)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !1316, file: !1317, line: 65, baseType: !632, size: 256, offset: 1152)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !1316, file: !1317, line: 66, baseType: !523, size: 64, offset: 1408)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !1316, file: !1317, line: 68, baseType: !3498, size: 64, offset: 1472)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !162, line: 63, size: 808, elements: !3500)
!3500 = !{!3501, !3505}
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !3499, file: !162, line: 64, baseType: !3502, size: 296)
!3502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !3503)
!3503 = !{!3504}
!3504 = !DISubrange(count: 37)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "volname", scope: !3499, file: !162, line: 65, baseType: !3506, size: 512, offset: 296)
!3506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 512, elements: !298)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !1316, file: !1317, line: 72, baseType: !712, size: 8, offset: 1536)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !1316, file: !1317, line: 77, baseType: !2188, size: 5824, offset: 1600)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !524, file: !20, line: 1226, baseType: !3510, size: 64, offset: 1664)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !162, line: 1495, size: 128, elements: !3512)
!3512 = !{!3513, !3514}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !3511, file: !162, line: 1496, baseType: !1315, size: 64)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "holder", scope: !3511, file: !162, line: 1497, baseType: !194, size: 64, offset: 64)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !524, file: !20, line: 1227, baseType: !3440, size: 64, offset: 1728)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !524, file: !20, line: 1228, baseType: !3517, size: 64, offset: 1792)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !20, line: 1228, flags: DIFlagFwdDecl)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !524, file: !20, line: 1229, baseType: !878, size: 128, offset: 1856)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !524, file: !20, line: 1230, baseType: !13, size: 32, offset: 1984)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !524, file: !20, line: 1231, baseType: !3522, size: 2496, offset: 2048)
!3522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !25, line: 521, size: 2496, elements: !3523)
!3523 = !{!3524, !3525, !3526, !3528, !3560}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3522, file: !25, line: 522, baseType: !13, size: 32)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3522, file: !25, line: 523, baseType: !1293, size: 320, offset: 64)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3522, file: !25, line: 524, baseType: !3527, size: 192, offset: 384)
!3527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 192, elements: !294)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3522, file: !25, line: 525, baseType: !3529, size: 1728, offset: 576)
!3529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3530, size: 1728, elements: !294)
!3530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !25, line: 222, size: 576, elements: !3531)
!3531 = !{!3532, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3530, file: !25, line: 223, baseType: !3533, size: 64)
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !25, line: 445, size: 256, elements: !3535)
!3535 = !{!3536, !3537, !3550, !3551}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3534, file: !25, line: 446, baseType: !129, size: 32)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3534, file: !25, line: 447, baseType: !3538, size: 64, offset: 64)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3540)
!3540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !25, line: 312, size: 512, elements: !3541)
!3541 = !{!3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3540, file: !25, line: 313, baseType: !1046, size: 64)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3540, file: !25, line: 314, baseType: !1046, size: 64, offset: 64)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3540, file: !25, line: 315, baseType: !1046, size: 64, offset: 128)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3540, file: !25, line: 316, baseType: !1046, size: 64, offset: 192)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3540, file: !25, line: 317, baseType: !1160, size: 64, offset: 256)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3540, file: !25, line: 318, baseType: !1160, size: 64, offset: 320)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3540, file: !25, line: 319, baseType: !1160, size: 64, offset: 384)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3540, file: !25, line: 320, baseType: !1190, size: 64, offset: 448)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3534, file: !25, line: 448, baseType: !561, size: 64, offset: 128)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3534, file: !25, line: 449, baseType: !3533, size: 64, offset: 192)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3530, file: !25, line: 224, baseType: !129, size: 32, offset: 64)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3530, file: !25, line: 226, baseType: !210, size: 128, offset: 128)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3530, file: !25, line: 227, baseType: !196, size: 64, offset: 256)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3530, file: !25, line: 228, baseType: !13, size: 32, offset: 320)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3530, file: !25, line: 229, baseType: !13, size: 32, offset: 352)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3530, file: !25, line: 230, baseType: !1126, size: 64, offset: 384)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3530, file: !25, line: 231, baseType: !1126, size: 64, offset: 448)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3530, file: !25, line: 232, baseType: !194, size: 64, offset: 512)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3522, file: !25, line: 526, baseType: !3561, size: 192, offset: 2304)
!3561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3538, size: 192, elements: !294)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !524, file: !20, line: 1233, baseType: !3563, size: 2368, offset: 4544)
!3563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !20, line: 1184, size: 2368, elements: !3564)
!3564 = !{!3565, !3566, !3567}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3563, file: !20, line: 1185, baseType: !263, size: 16)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3563, file: !20, line: 1186, baseType: !263, size: 16, offset: 16)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3563, file: !20, line: 1187, baseType: !3568, size: 2304, offset: 64)
!3568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3569, size: 2304, elements: !294)
!3569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3570, line: 12, size: 768, elements: !3571)
!3570 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3571 = !{!3572, !3580, !3581, !4694, !4695}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3569, file: !3570, line: 13, baseType: !3573, size: 384)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3574, line: 17, size: 384, elements: !3575)
!3574 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3575 = !{!3576, !3577, !3578, !3579}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3573, file: !3574, line: 18, baseType: !129, size: 32)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3573, file: !3574, line: 19, baseType: !129, size: 32, offset: 32)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3573, file: !3574, line: 20, baseType: !1604, size: 192, offset: 64)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3573, file: !3574, line: 22, baseType: !852, size: 128, align: 64, offset: 256)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3569, file: !3570, line: 14, baseType: !704, size: 64, offset: 384)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3569, file: !3570, line: 15, baseType: !3582, size: 64, offset: 448)
!3582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3583, line: 16, size: 64, elements: !3584)
!3583 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3584 = !{!3585}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3582, file: !3583, line: 17, baseType: !3586, size: 64)
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1076, line: 746, size: 58368, elements: !3588)
!3588 = !{!3589, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3669, !3680, !3700, !3704, !3707, !3738, !3739, !3740, !3741, !3745, !3747, !3748, !3749, !3750, !3751, !3752, !3763, !3764, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3781, !3782, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3870, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3918, !3924, !3925, !3926, !3927, !3928, !3932, !3935, !3942, !3947, !3950, !3953, !3956, !3959, !4097, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4135, !4136, !4137, !4146, !4154, !4155, !4156, !4157, !4158, !4163, !4164, !4165, !4168, !4169, !4171, !4182, !4185, !4186, !4189, !4190, !4276, !4277, !4278, !4279, !4280, !4286, !4287, !4288, !4289, !4292, !4293, !4296, !4299, !4300, !4303, !4304, !4305, !4308, !4309, !4310, !4311, !4312, !4313, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4345, !4346, !4352, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4434, !4436, !4437, !4438, !4439, !4440, !4441, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4471, !4472, !4473}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !3587, file: !1076, line: 752, baseType: !3590, size: 192)
!3590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !3591, line: 56, size: 192, elements: !3592)
!3591 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!3592 = !{!3593, !3594, !3595, !3596}
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3590, file: !3591, line: 57, baseType: !196, size: 64)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !3590, file: !3591, line: 58, baseType: !196, size: 64, offset: 64)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3590, file: !3591, line: 59, baseType: !441, size: 32, offset: 128)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3590, file: !3591, line: 61, baseType: !441, size: 32, offset: 160)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !3587, file: !1076, line: 754, baseType: !13, size: 32, offset: 192)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3587, file: !1076, line: 767, baseType: !194, size: 64, offset: 256)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3587, file: !1076, line: 768, baseType: !1593, size: 32, offset: 320)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3587, file: !1076, line: 770, baseType: !13, size: 32, offset: 352)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !3587, file: !1076, line: 771, baseType: !13, size: 32, offset: 384)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !3587, file: !1076, line: 774, baseType: !129, size: 32, offset: 416)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !3587, file: !1076, line: 775, baseType: !3604, size: 128, offset: 448)
!3604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !3605, line: 58, size: 128, elements: !3606)
!3605 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!3606 = !{!3607, !3608, !3613, !3614}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !3604, file: !3605, line: 59, baseType: !1550, size: 64)
!3608 = !DIDerivedType(tag: DW_TAG_member, scope: !3604, file: !3605, line: 60, baseType: !3609, size: 32, offset: 64)
!3609 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3604, file: !3605, line: 60, size: 32, elements: !3610)
!3610 = !{!3611, !3612}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !3609, file: !3605, line: 61, baseType: !13, size: 32)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !3609, file: !3605, line: 62, baseType: !243, size: 32)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !3604, file: !3605, line: 65, baseType: !261, size: 16, offset: 96)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !3604, file: !3605, line: 65, baseType: !261, size: 16, offset: 112)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !3587, file: !1076, line: 776, baseType: !13, size: 32, offset: 576)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !3587, file: !1076, line: 777, baseType: !196, size: 64, offset: 640)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !3587, file: !1076, line: 778, baseType: !3586, size: 64, offset: 704)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !3587, file: !1076, line: 787, baseType: !129, size: 32, offset: 768)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !3587, file: !1076, line: 788, baseType: !129, size: 32, offset: 800)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3587, file: !1076, line: 790, baseType: !129, size: 32, offset: 832)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3587, file: !1076, line: 792, baseType: !129, size: 32, offset: 864)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !3587, file: !1076, line: 793, baseType: !129, size: 32, offset: 896)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !3587, file: !1076, line: 794, baseType: !129, size: 32, offset: 928)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !3587, file: !1076, line: 795, baseType: !13, size: 32, offset: 960)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !3587, file: !1076, line: 797, baseType: !3626, size: 2048, offset: 1024)
!3626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1076, line: 551, size: 2048, elements: !3627)
!3627 = !{!3628, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3648, !3651, !3652, !3653}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !3626, file: !1076, line: 553, baseType: !3629, size: 128)
!3629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1076, line: 411, size: 128, elements: !3630)
!3630 = !{!3631, !3632}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3629, file: !1076, line: 412, baseType: !196, size: 64)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !3629, file: !1076, line: 413, baseType: !441, size: 32, offset: 64)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !3626, file: !1076, line: 554, baseType: !744, size: 192, align: 64, offset: 128)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3626, file: !1076, line: 555, baseType: !445, size: 64, offset: 320)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !3626, file: !1076, line: 556, baseType: !445, size: 64, offset: 384)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3626, file: !1076, line: 558, baseType: !210, size: 128, offset: 448)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3626, file: !1076, line: 559, baseType: !13, size: 32, offset: 576)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !3626, file: !1076, line: 561, baseType: !445, size: 64, offset: 640)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3626, file: !1076, line: 562, baseType: !445, size: 64, offset: 704)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !3626, file: !1076, line: 563, baseType: !445, size: 64, offset: 768)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !3626, file: !1076, line: 564, baseType: !445, size: 64, offset: 832)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !3626, file: !1076, line: 565, baseType: !642, size: 64, offset: 896)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3626, file: !1076, line: 566, baseType: !445, size: 64, offset: 960)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !3626, file: !1076, line: 568, baseType: !445, size: 64, offset: 1024)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3626, file: !1076, line: 571, baseType: !129, size: 32, offset: 1088)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3626, file: !1076, line: 572, baseType: !3647, size: 64, offset: 1152)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !3626, file: !1076, line: 574, baseType: !3649, size: 64, offset: 1216)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1076, line: 49, flags: DIFlagFwdDecl)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !3626, file: !1076, line: 576, baseType: !3649, size: 64, offset: 1280)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !3626, file: !1076, line: 578, baseType: !196, size: 64, offset: 1344)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !3626, file: !1076, line: 588, baseType: !3654, size: 512, align: 512, offset: 1536)
!3654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1076, line: 497, size: 512, align: 512, elements: !3655)
!3655 = !{!3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !3654, file: !1076, line: 498, baseType: !445, size: 64)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !3654, file: !1076, line: 499, baseType: !445, size: 64, offset: 64)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !3654, file: !1076, line: 500, baseType: !445, size: 64, offset: 128)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !3654, file: !1076, line: 501, baseType: !441, size: 32, offset: 192)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !3654, file: !1076, line: 502, baseType: !441, size: 32, offset: 224)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !3654, file: !1076, line: 503, baseType: !196, size: 64, offset: 256)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !3654, file: !1076, line: 504, baseType: !196, size: 64, offset: 320)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !3654, file: !1076, line: 505, baseType: !196, size: 64, offset: 384)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !3654, file: !1076, line: 506, baseType: !3665, size: 64, align: 64, offset: 448)
!3665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1076, line: 445, size: 64, align: 64, elements: !3666)
!3666 = !{!3667, !3668}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !3665, file: !1076, line: 446, baseType: !13, size: 32)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !3665, file: !1076, line: 447, baseType: !13, size: 32, offset: 32)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3587, file: !1076, line: 798, baseType: !3670, size: 384, offset: 3072)
!3670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1076, line: 592, size: 384, elements: !3671)
!3671 = !{!3672, !3673, !3674, !3675, !3676, !3677, !3678}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !3670, file: !1076, line: 593, baseType: !210, size: 128)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3670, file: !1076, line: 594, baseType: !196, size: 64, offset: 128)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !3670, file: !1076, line: 595, baseType: !196, size: 64, offset: 192)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !3670, file: !1076, line: 596, baseType: !13, size: 32, offset: 256)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3670, file: !1076, line: 597, baseType: !263, size: 16, offset: 288)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !3670, file: !1076, line: 598, baseType: !263, size: 16, offset: 304)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !3670, file: !1076, line: 600, baseType: !3679, size: 64, offset: 320)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !3587, file: !1076, line: 799, baseType: !3681, size: 1792, offset: 3456)
!3681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1076, line: 610, size: 1792, elements: !3682)
!3682 = !{!3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3681, file: !1076, line: 611, baseType: !744, size: 192, align: 64)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !3681, file: !1076, line: 618, baseType: !445, size: 64, offset: 192)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !3681, file: !1076, line: 619, baseType: !445, size: 64, offset: 256)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !3681, file: !1076, line: 620, baseType: !445, size: 64, offset: 320)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !3681, file: !1076, line: 621, baseType: !445, size: 64, offset: 384)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !3681, file: !1076, line: 622, baseType: !445, size: 64, offset: 448)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !3681, file: !1076, line: 629, baseType: !642, size: 64, offset: 512)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3681, file: !1076, line: 630, baseType: !445, size: 64, offset: 576)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3681, file: !1076, line: 631, baseType: !13, size: 32, offset: 640)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !3681, file: !1076, line: 653, baseType: !13, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !3681, file: !1076, line: 654, baseType: !13, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !3681, file: !1076, line: 655, baseType: !13, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !3681, file: !1076, line: 656, baseType: !13, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !3681, file: !1076, line: 662, baseType: !2385, size: 512, offset: 704)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !3681, file: !1076, line: 671, baseType: !2385, size: 512, offset: 1216)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !3681, file: !1076, line: 679, baseType: !3699, size: 64, offset: 1728)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !3587, file: !1076, line: 800, baseType: !3701, size: 64, offset: 5248)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3703)
!3703 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1076, line: 800, flags: DIFlagFwdDecl)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !3587, file: !1076, line: 809, baseType: !3705, size: 64, offset: 5312)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1076, line: 70, flags: DIFlagFwdDecl)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3587, file: !1076, line: 825, baseType: !3708, size: 2048, align: 512, offset: 5632)
!3708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1076, line: 509, size: 2048, align: 512, elements: !3709)
!3709 = !{!3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3708, file: !1076, line: 511, baseType: !445, size: 64)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3708, file: !1076, line: 512, baseType: !445, size: 64, offset: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3708, file: !1076, line: 513, baseType: !445, size: 64, offset: 128)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3708, file: !1076, line: 514, baseType: !445, size: 64, offset: 192)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3708, file: !1076, line: 515, baseType: !445, size: 64, offset: 256)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3708, file: !1076, line: 516, baseType: !445, size: 64, offset: 320)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3708, file: !1076, line: 518, baseType: !445, size: 64, offset: 384)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3708, file: !1076, line: 519, baseType: !445, size: 64, offset: 448)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3708, file: !1076, line: 520, baseType: !642, size: 64, offset: 512)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3708, file: !1076, line: 522, baseType: !445, size: 64, offset: 576)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3708, file: !1076, line: 523, baseType: !445, size: 64, offset: 640)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3708, file: !1076, line: 524, baseType: !642, size: 64, offset: 704)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3708, file: !1076, line: 526, baseType: !642, size: 64, offset: 768)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3708, file: !1076, line: 527, baseType: !445, size: 64, offset: 832)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3708, file: !1076, line: 529, baseType: !445, size: 64, offset: 896)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3708, file: !1076, line: 530, baseType: !445, size: 64, offset: 960)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3708, file: !1076, line: 531, baseType: !445, size: 64, offset: 1024)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3708, file: !1076, line: 532, baseType: !445, size: 64, offset: 1088)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3708, file: !1076, line: 533, baseType: !445, size: 64, offset: 1152)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3708, file: !1076, line: 535, baseType: !445, size: 64, offset: 1216)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3708, file: !1076, line: 536, baseType: !445, size: 64, offset: 1280)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3708, file: !1076, line: 537, baseType: !445, size: 64, offset: 1344)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3708, file: !1076, line: 538, baseType: !445, size: 64, offset: 1408)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3708, file: !1076, line: 539, baseType: !445, size: 64, offset: 1472)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3708, file: !1076, line: 540, baseType: !445, size: 64, offset: 1536)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3708, file: !1076, line: 541, baseType: !445, size: 64, offset: 1600)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3708, file: !1076, line: 542, baseType: !445, size: 64, offset: 1664)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3708, file: !1076, line: 543, baseType: !445, size: 64, offset: 1728)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !3587, file: !1076, line: 833, baseType: !13, size: 32, offset: 7680)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !3587, file: !1076, line: 836, baseType: !13, size: 32, offset: 7712)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !3587, file: !1076, line: 837, baseType: !129, size: 32, offset: 7744)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !3587, file: !1076, line: 838, baseType: !3742, size: 64, offset: 7808)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3744)
!3744 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1971, line: 19, baseType: !1973)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !3587, file: !1076, line: 839, baseType: !3746, size: 64, offset: 7872)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !3587, file: !1076, line: 840, baseType: !3744, size: 64, offset: 7936)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !3587, file: !1076, line: 841, baseType: !194, size: 64, offset: 8000)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !3587, file: !1076, line: 843, baseType: !263, size: 16, offset: 8064)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !3587, file: !1076, line: 845, baseType: !263, size: 16, offset: 8080)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !3587, file: !1076, line: 848, baseType: !129, size: 32, offset: 8096)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !3587, file: !1076, line: 849, baseType: !3753, size: 32, offset: 8128)
!3753 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1076, line: 718, size: 32, elements: !3754)
!3754 = !{!3755, !3762}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3753, file: !1076, line: 724, baseType: !3756, size: 32)
!3756 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3753, file: !1076, line: 719, size: 32, elements: !3757)
!3757 = !{!3758, !3759, !3760, !3761}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3756, file: !1076, line: 720, baseType: !251, size: 8)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3756, file: !1076, line: 721, baseType: !251, size: 8, offset: 8)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3756, file: !1076, line: 722, baseType: !251, size: 8, offset: 16)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3756, file: !1076, line: 723, baseType: !251, size: 8, offset: 24)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3753, file: !1076, line: 725, baseType: !441, size: 32)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !3587, file: !1076, line: 850, baseType: !210, size: 128, offset: 8192)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !3587, file: !1076, line: 851, baseType: !3765, size: 64, offset: 8320)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1076, line: 60, flags: DIFlagFwdDecl)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !3587, file: !1076, line: 855, baseType: !196, size: 64, offset: 8384)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !3587, file: !1076, line: 856, baseType: !251, size: 8, offset: 8448)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !3587, file: !1076, line: 857, baseType: !251, size: 8, offset: 8456)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !3587, file: !1076, line: 858, baseType: !129, size: 32, offset: 8480)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !3587, file: !1076, line: 859, baseType: !210, size: 128, offset: 8512)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !3587, file: !1076, line: 860, baseType: !129, size: 32, offset: 8640)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !3587, file: !1076, line: 861, baseType: !210, size: 128, offset: 8704)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !3587, file: !1076, line: 873, baseType: !3775, size: 256, offset: 8832)
!3775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1076, line: 376, size: 256, elements: !3776)
!3776 = !{!3777, !3778, !3779, !3780}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3775, file: !1076, line: 381, baseType: !196, size: 64)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3775, file: !1076, line: 384, baseType: !447, size: 64, offset: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3775, file: !1076, line: 389, baseType: !447, size: 64, offset: 128)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3775, file: !1076, line: 392, baseType: !447, size: 64, offset: 192)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3587, file: !1076, line: 875, baseType: !210, size: 128, offset: 9088)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !3587, file: !1076, line: 877, baseType: !3783, size: 320, offset: 9216)
!3783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3784, line: 86, size: 320, elements: !3785)
!3784 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3785 = !{!3786, !3787, !3788}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3783, file: !3784, line: 87, baseType: !129, size: 32)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3783, file: !3784, line: 88, baseType: !210, size: 128, offset: 64)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3783, file: !3784, line: 89, baseType: !210, size: 128, offset: 192)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !3587, file: !1076, line: 878, baseType: !744, size: 192, align: 64, offset: 9536)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3587, file: !1076, line: 881, baseType: !1516, size: 64, offset: 9728)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !3587, file: !1076, line: 882, baseType: !1516, size: 64, offset: 9792)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !3587, file: !1076, line: 884, baseType: !129, size: 32, offset: 9856)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !3587, file: !1076, line: 885, baseType: !129, size: 32, offset: 9888)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !3587, file: !1076, line: 886, baseType: !129, size: 32, offset: 9920)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !3587, file: !1076, line: 888, baseType: !129, size: 32, offset: 9952)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !3587, file: !1076, line: 890, baseType: !196, size: 64, offset: 9984)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !3587, file: !1076, line: 893, baseType: !13, size: 32, offset: 10048)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !3587, file: !1076, line: 896, baseType: !13, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !3587, file: !1076, line: 897, baseType: !13, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !3587, file: !1076, line: 898, baseType: !13, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !3587, file: !1076, line: 899, baseType: !13, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !3587, file: !1076, line: 919, baseType: !13, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !3587, file: !1076, line: 922, baseType: !13, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !3587, file: !1076, line: 923, baseType: !13, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !3587, file: !1076, line: 925, baseType: !13, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !3587, file: !1076, line: 939, baseType: !13, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3587, file: !1076, line: 941, baseType: !13, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !3587, file: !1076, line: 944, baseType: !13, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !3587, file: !1076, line: 956, baseType: !13, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !3587, file: !1076, line: 962, baseType: !13, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !3587, file: !1076, line: 966, baseType: !13, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !3587, file: !1076, line: 969, baseType: !196, size: 64, offset: 10176)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !3587, file: !1076, line: 971, baseType: !3814, size: 448, offset: 10240)
!3814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !68, line: 25, size: 448, elements: !3815)
!3815 = !{!3816, !3817, !3822}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3814, file: !68, line: 26, baseType: !196, size: 64)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3814, file: !68, line: 27, baseType: !3818, size: 64, offset: 64)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DISubroutineType(types: !3820)
!3820 = !{!329, !3821}
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3822 = !DIDerivedType(tag: DW_TAG_member, scope: !3814, file: !68, line: 28, baseType: !3823, size: 320, offset: 128)
!3823 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3814, file: !68, line: 28, size: 320, elements: !3824)
!3824 = !{!3825, !3835, !3860}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3823, file: !68, line: 37, baseType: !3826, size: 320)
!3826 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3823, file: !68, line: 30, size: 320, elements: !3827)
!3827 = !{!3828, !3830, !3831, !3832, !3833, !3834}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3826, file: !68, line: 31, baseType: !3829, size: 64)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3826, file: !68, line: 32, baseType: !441, size: 32, offset: 64)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3826, file: !68, line: 33, baseType: !441, size: 32, offset: 96)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3826, file: !68, line: 34, baseType: !441, size: 32, offset: 128)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3826, file: !68, line: 35, baseType: !445, size: 64, offset: 192)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3826, file: !68, line: 36, baseType: !3829, size: 64, offset: 256)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3823, file: !68, line: 47, baseType: !3836, size: 192)
!3836 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3823, file: !68, line: 39, size: 192, elements: !3837)
!3837 = !{!3838, !3839, !3840, !3859}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3836, file: !68, line: 40, baseType: !2430, size: 32)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3836, file: !68, line: 41, baseType: !67, size: 32, offset: 32)
!3840 = !DIDerivedType(tag: DW_TAG_member, scope: !3836, file: !68, line: 42, baseType: !3841, size: 64, offset: 64)
!3841 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3836, file: !68, line: 42, size: 64, elements: !3842)
!3842 = !{!3843, !3851}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3841, file: !68, line: 43, baseType: !3844, size: 64)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3846, line: 7, size: 128, elements: !3847)
!3846 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3847 = !{!3848, !3850}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3845, file: !3846, line: 8, baseType: !3849, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !327, line: 93, baseType: !535)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3845, file: !3846, line: 9, baseType: !535, size: 64, offset: 64)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3841, file: !68, line: 44, baseType: !3852, size: 64)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3854, line: 7, size: 64, elements: !3855)
!3854 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3855 = !{!3856, !3858}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3853, file: !3854, line: 8, baseType: !3857, size: 32)
!3857 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3854, line: 5, baseType: !628)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3853, file: !3854, line: 9, baseType: !628, size: 32, offset: 32)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3836, file: !68, line: 46, baseType: !445, size: 64, offset: 128)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3823, file: !68, line: 55, baseType: !3861, size: 256)
!3861 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3823, file: !68, line: 49, size: 256, elements: !3862)
!3862 = !{!3863, !3866, !3867, !3868, !3869}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3861, file: !68, line: 50, baseType: !3864, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !68, line: 14, flags: DIFlagFwdDecl)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3861, file: !68, line: 51, baseType: !129, size: 32, offset: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3861, file: !68, line: 52, baseType: !129, size: 32, offset: 96)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3861, file: !68, line: 53, baseType: !196, size: 64, offset: 128)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3861, file: !68, line: 54, baseType: !196, size: 64, offset: 192)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3587, file: !1076, line: 973, baseType: !3871, size: 32, offset: 10688)
!3871 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !193, line: 27, baseType: !3872)
!3872 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !327, line: 28, baseType: !129)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !3587, file: !1076, line: 974, baseType: !3871, size: 32, offset: 10720)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !3587, file: !1076, line: 978, baseType: !196, size: 64, offset: 10752)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !3587, file: !1076, line: 987, baseType: !3586, size: 64, offset: 10816)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3587, file: !1076, line: 990, baseType: !3586, size: 64, offset: 10880)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3587, file: !1076, line: 995, baseType: !210, size: 128, offset: 10944)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3587, file: !1076, line: 996, baseType: !210, size: 128, offset: 11072)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3587, file: !1076, line: 997, baseType: !3586, size: 64, offset: 11200)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !3587, file: !1076, line: 1005, baseType: !210, size: 128, offset: 11264)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !3587, file: !1076, line: 1006, baseType: !210, size: 128, offset: 11392)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !3587, file: !1076, line: 1009, baseType: !1589, size: 64, offset: 11520)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !3587, file: !1076, line: 1010, baseType: !3884, size: 512, offset: 11584)
!3884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !878, size: 512, elements: !862)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !3587, file: !1076, line: 1011, baseType: !210, size: 128, offset: 12096)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !3587, file: !1076, line: 1012, baseType: !210, size: 128, offset: 12224)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !3587, file: !1076, line: 1014, baseType: !580, size: 64, offset: 12352)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !3587, file: !1076, line: 1017, baseType: !761, size: 64, offset: 12416)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !3587, file: !1076, line: 1020, baseType: !761, size: 64, offset: 12480)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !3587, file: !1076, line: 1023, baseType: !194, size: 64, offset: 12544)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3587, file: !1076, line: 1025, baseType: !445, size: 64, offset: 12608)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3587, file: !1076, line: 1026, baseType: !445, size: 64, offset: 12672)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3587, file: !1076, line: 1031, baseType: !445, size: 64, offset: 12736)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3587, file: !1076, line: 1032, baseType: !3895, size: 192, offset: 12800)
!3895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1076, line: 324, size: 192, elements: !3896)
!3896 = !{!3897, !3898, !3899}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3895, file: !1076, line: 326, baseType: !445, size: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3895, file: !1076, line: 327, baseType: !445, size: 64, offset: 64)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3895, file: !1076, line: 328, baseType: !590, size: 32, offset: 128)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3587, file: !1076, line: 1041, baseType: !196, size: 64, offset: 12992)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3587, file: !1076, line: 1042, baseType: !196, size: 64, offset: 13056)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !3587, file: !1076, line: 1045, baseType: !445, size: 64, offset: 13120)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !3587, file: !1076, line: 1048, baseType: !445, size: 64, offset: 13184)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3587, file: !1076, line: 1051, baseType: !196, size: 64, offset: 13248)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3587, file: !1076, line: 1052, baseType: !196, size: 64, offset: 13312)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3587, file: !1076, line: 1055, baseType: !3907, size: 640, offset: 13376)
!3907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3908, line: 132, size: 640, elements: !3909)
!3908 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3909 = !{!3910, !3916, !3917}
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3907, file: !3908, line: 133, baseType: !3911, size: 576)
!3911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3912, size: 576, elements: !294)
!3912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3908, line: 117, size: 192, elements: !3913)
!3913 = !{!3914, !3915}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3912, file: !3908, line: 118, baseType: !445, size: 64)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3912, file: !3908, line: 119, baseType: !2439, size: 128, offset: 64)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3907, file: !3908, line: 134, baseType: !13, size: 32, offset: 576)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3907, file: !3908, line: 135, baseType: !13, size: 32, offset: 608)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !3587, file: !1076, line: 1058, baseType: !3919, size: 448, offset: 14016)
!3919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3908, line: 144, size: 448, elements: !3920)
!3920 = !{!3921, !3922, !3923}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3919, file: !3908, line: 145, baseType: !852, size: 128, align: 64)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3919, file: !3908, line: 146, baseType: !632, size: 256, offset: 128)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3919, file: !3908, line: 147, baseType: !13, size: 32, offset: 384)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !3587, file: !1076, line: 1064, baseType: !1626, size: 64, offset: 14464)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !3587, file: !1076, line: 1067, baseType: !1626, size: 64, offset: 14528)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3587, file: !1076, line: 1070, baseType: !1626, size: 64, offset: 14592)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !3587, file: !1076, line: 1074, baseType: !1653, size: 64, offset: 14656)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3587, file: !1076, line: 1084, baseType: !3929, size: 128, offset: 14720)
!3929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !3930)
!3930 = !{!3931}
!3931 = !DISubrange(count: 16)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !3587, file: !1076, line: 1086, baseType: !3933, size: 64, offset: 14848)
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3934, size: 64)
!3934 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1076, line: 55, flags: DIFlagFwdDecl)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !3587, file: !1076, line: 1089, baseType: !3936, size: 64, offset: 14912)
!3936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3937, line: 12, size: 64, elements: !3938)
!3937 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3938 = !{!3939}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3936, file: !3937, line: 13, baseType: !3940, size: 64)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3941, size: 64)
!3941 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3937, line: 8, flags: DIFlagFwdDecl)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !3587, file: !1076, line: 1090, baseType: !3943, size: 128, offset: 14976)
!3943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3944, line: 13, size: 128, elements: !3945)
!3944 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3945 = !{!3946}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3943, file: !3944, line: 14, baseType: !210, size: 128)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3587, file: !1076, line: 1097, baseType: !3948, size: 64, offset: 15104)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1076, line: 50, flags: DIFlagFwdDecl)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3587, file: !1076, line: 1100, baseType: !3951, size: 64, offset: 15168)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1076, line: 1100, flags: DIFlagFwdDecl)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !3587, file: !1076, line: 1103, baseType: !3954, size: 64, offset: 15232)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1076, line: 53, flags: DIFlagFwdDecl)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3587, file: !1076, line: 1107, baseType: !3957, size: 64, offset: 15296)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1076, line: 56, flags: DIFlagFwdDecl)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3587, file: !1076, line: 1110, baseType: !3960, size: 64, offset: 15360)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3962, line: 93, size: 8768, elements: !3963)
!3962 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3963 = !{!3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4011, !4020, !4021, !4023, !4024, !4025, !4028, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4066, !4067, !4074, !4084, !4087, !4088, !4091, !4092, !4093, !4094, !4095, !4096}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3961, file: !3962, line: 94, baseType: !1593, size: 32)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3961, file: !3962, line: 95, baseType: !243, size: 32, offset: 32)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3961, file: !3962, line: 96, baseType: !129, size: 32, offset: 64)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3961, file: !3962, line: 97, baseType: !129, size: 32, offset: 96)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3961, file: !3962, line: 98, baseType: !210, size: 128, offset: 128)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3961, file: !3962, line: 100, baseType: !1604, size: 192, offset: 256)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3961, file: !3962, line: 103, baseType: !3586, size: 64, offset: 448)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3961, file: !3962, line: 106, baseType: !3972, size: 192, offset: 512)
!3972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1801, line: 32, size: 192, elements: !3973)
!3973 = !{!3974, !3975}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3972, file: !1801, line: 33, baseType: !210, size: 128)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3972, file: !1801, line: 34, baseType: !3976, size: 64, offset: 128)
!3976 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3977, line: 25, baseType: !3978)
!3977 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3978 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3977, line: 23, size: 64, elements: !3979)
!3979 = !{!3980}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3978, file: !3977, line: 24, baseType: !1976, size: 64)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3961, file: !3962, line: 109, baseType: !1002, size: 64, offset: 704)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3961, file: !3962, line: 112, baseType: !129, size: 32, offset: 768)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3961, file: !3962, line: 114, baseType: !129, size: 32, offset: 800)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3961, file: !3962, line: 115, baseType: !3586, size: 64, offset: 832)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3961, file: !3962, line: 118, baseType: !129, size: 32, offset: 896)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3961, file: !3962, line: 119, baseType: !13, size: 32, offset: 928)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3961, file: !3962, line: 121, baseType: !3988, size: 64, offset: 960)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3962, line: 80, size: 448, elements: !3990)
!3990 = !{!3991, !3992, !3998}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3989, file: !3962, line: 81, baseType: !243, size: 32)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3989, file: !3962, line: 82, baseType: !3993, size: 128, offset: 64)
!3993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3962, line: 75, size: 128, elements: !3994)
!3994 = !{!3995, !3996}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3993, file: !3962, line: 76, baseType: !3586, size: 64)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3993, file: !3962, line: 77, baseType: !3997, size: 64, offset: 64)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3989, file: !3962, line: 83, baseType: !581, size: 256, offset: 192)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3961, file: !3962, line: 132, baseType: !13, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3961, file: !3962, line: 133, baseType: !13, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3961, file: !3962, line: 138, baseType: !13, size: 32, offset: 1056)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3961, file: !3962, line: 139, baseType: !210, size: 128, offset: 1088)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3961, file: !3962, line: 142, baseType: !2385, size: 512, offset: 1216)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3961, file: !3962, line: 143, baseType: !2365, size: 64, offset: 1728)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3961, file: !3962, line: 150, baseType: !4006, size: 256, offset: 1792)
!4006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4007, size: 256, elements: !751)
!4007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3962, line: 38, size: 128, elements: !4008)
!4008 = !{!4009, !4010}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4007, file: !3962, line: 39, baseType: !445, size: 64)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !4007, file: !3962, line: 40, baseType: !445, size: 64, offset: 64)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3961, file: !3962, line: 156, baseType: !4012, size: 192, offset: 2048)
!4012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3962, line: 66, size: 192, elements: !4013)
!4013 = !{!4014}
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !4012, file: !3962, line: 67, baseType: !4015, size: 192)
!4015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3962, line: 47, size: 192, elements: !4016)
!4016 = !{!4017, !4018, !4019}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4015, file: !3962, line: 48, baseType: !638, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4015, file: !3962, line: 49, baseType: !638, size: 64, offset: 64)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4015, file: !3962, line: 50, baseType: !638, size: 64, offset: 128)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3961, file: !3962, line: 160, baseType: !3907, size: 640, offset: 2240)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3961, file: !3962, line: 163, baseType: !4022, size: 256, offset: 2880)
!4022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1589, size: 256, elements: !862)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3961, file: !3962, line: 169, baseType: !1589, size: 64, offset: 3136)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3961, file: !3962, line: 172, baseType: !129, size: 32, offset: 3200)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3961, file: !3962, line: 174, baseType: !4026, size: 64, offset: 3264)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3962, line: 174, flags: DIFlagFwdDecl)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3961, file: !3962, line: 185, baseType: !4029, size: 64, offset: 3328)
!4029 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !414, line: 860, baseType: !4030)
!4030 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !414, line: 853, size: 64, elements: !4031)
!4031 = !{!4032, !4033}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !4030, file: !414, line: 858, baseType: !413, size: 32)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4030, file: !414, line: 859, baseType: !223, size: 32, offset: 32)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3961, file: !3962, line: 186, baseType: !445, size: 64, offset: 3392)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3961, file: !3962, line: 186, baseType: !445, size: 64, offset: 3456)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3961, file: !3962, line: 186, baseType: !445, size: 64, offset: 3520)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3961, file: !3962, line: 186, baseType: !445, size: 64, offset: 3584)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3961, file: !3962, line: 187, baseType: !445, size: 64, offset: 3648)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3961, file: !3962, line: 188, baseType: !445, size: 64, offset: 3712)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3961, file: !3962, line: 189, baseType: !3895, size: 192, offset: 3776)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3961, file: !3962, line: 190, baseType: !196, size: 64, offset: 3968)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3961, file: !3962, line: 190, baseType: !196, size: 64, offset: 4032)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3961, file: !3962, line: 190, baseType: !196, size: 64, offset: 4096)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3961, file: !3962, line: 190, baseType: !196, size: 64, offset: 4160)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3961, file: !3962, line: 191, baseType: !196, size: 64, offset: 4224)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3961, file: !3962, line: 191, baseType: !196, size: 64, offset: 4288)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3961, file: !3962, line: 191, baseType: !196, size: 64, offset: 4352)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3961, file: !3962, line: 191, baseType: !196, size: 64, offset: 4416)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3961, file: !3962, line: 192, baseType: !196, size: 64, offset: 4480)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3961, file: !3962, line: 192, baseType: !196, size: 64, offset: 4544)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3961, file: !3962, line: 192, baseType: !196, size: 64, offset: 4608)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3961, file: !3962, line: 192, baseType: !196, size: 64, offset: 4672)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3961, file: !3962, line: 193, baseType: !196, size: 64, offset: 4736)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3961, file: !3962, line: 193, baseType: !196, size: 64, offset: 4800)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3961, file: !3962, line: 194, baseType: !4056, size: 448, offset: 4864)
!4056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !4057, line: 12, size: 448, elements: !4058)
!4057 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!4058 = !{!4059, !4060, !4061, !4062, !4063, !4064, !4065}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !4056, file: !4057, line: 15, baseType: !445, size: 64)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !4056, file: !4057, line: 17, baseType: !445, size: 64, offset: 64)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !4056, file: !4057, line: 19, baseType: !445, size: 64, offset: 128)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !4056, file: !4057, line: 21, baseType: !445, size: 64, offset: 192)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4056, file: !4057, line: 29, baseType: !445, size: 64, offset: 256)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4056, file: !4057, line: 35, baseType: !445, size: 64, offset: 320)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4056, file: !4057, line: 44, baseType: !445, size: 64, offset: 384)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3961, file: !3962, line: 202, baseType: !447, size: 64, offset: 5312)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3961, file: !3962, line: 213, baseType: !4068, size: 2048, offset: 5376)
!4068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4069, size: 2048, elements: !3930)
!4069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !4070, line: 43, size: 128, elements: !4071)
!4070 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!4071 = !{!4072, !4073}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !4069, file: !4070, line: 44, baseType: !342, size: 64)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !4069, file: !4070, line: 45, baseType: !342, size: 64, offset: 64)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3961, file: !3962, line: 216, baseType: !4075, size: 448, offset: 7424)
!4075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3962, line: 30, size: 448, elements: !4076)
!4076 = !{!4077, !4078, !4079, !4080, !4081, !4082, !4083}
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4075, file: !3962, line: 31, baseType: !129, size: 32)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4075, file: !3962, line: 32, baseType: !329, size: 64, offset: 64)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !4075, file: !3962, line: 33, baseType: !196, size: 64, offset: 128)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4075, file: !3962, line: 34, baseType: !445, size: 64, offset: 192)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4075, file: !3962, line: 34, baseType: !445, size: 64, offset: 256)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4075, file: !3962, line: 35, baseType: !196, size: 64, offset: 320)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4075, file: !3962, line: 35, baseType: !196, size: 64, offset: 384)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3961, file: !3962, line: 219, baseType: !4085, size: 64, offset: 7872)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3962, line: 219, flags: DIFlagFwdDecl)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3961, file: !3962, line: 222, baseType: !13, size: 32, offset: 7936)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3961, file: !3962, line: 223, baseType: !4089, size: 64, offset: 8000)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3962, line: 223, flags: DIFlagFwdDecl)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3961, file: !3962, line: 230, baseType: !712, size: 8, offset: 8064)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3961, file: !3962, line: 231, baseType: !770, size: 16, offset: 8080)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3961, file: !3962, line: 232, baseType: !770, size: 16, offset: 8096)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3961, file: !3962, line: 234, baseType: !1516, size: 64, offset: 8128)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3961, file: !3962, line: 237, baseType: !632, size: 256, offset: 8192)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3961, file: !3962, line: 243, baseType: !1293, size: 320, offset: 8448)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !3587, file: !1076, line: 1111, baseType: !4098, size: 64, offset: 15424)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3962, line: 20, size: 16640, elements: !4100)
!4100 = !{!4101, !4102, !4103, !4104}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !4099, file: !3962, line: 21, baseType: !223, size: 32)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4099, file: !3962, line: 22, baseType: !1593, size: 32, offset: 32)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !4099, file: !3962, line: 23, baseType: !1604, size: 192, offset: 64)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4099, file: !3962, line: 24, baseType: !4105, size: 16384, offset: 256)
!4105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4106, size: 16384, elements: !298)
!4106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1801, line: 51, size: 256, elements: !4107)
!4107 = !{!4108}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !4106, file: !1801, line: 52, baseType: !4109, size: 256)
!4109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1801, line: 37, size: 256, elements: !4110)
!4110 = !{!4111, !4118, !4119, !4123}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !4109, file: !1801, line: 39, baseType: !4112, size: 64)
!4112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !4113, line: 83, baseType: !4114)
!4113 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !4113, line: 82, baseType: !4116)
!4116 = !DISubroutineType(types: !4117)
!4117 = !{null, !129}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !4109, file: !1801, line: 40, baseType: !196, size: 64, offset: 64)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !4109, file: !1801, line: 46, baseType: !4120, size: 64, offset: 128)
!4120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !4113, line: 86, baseType: !4121)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !4113, line: 85, baseType: !997)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !4109, file: !1801, line: 48, baseType: !3976, size: 64, offset: 192)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3587, file: !1076, line: 1112, baseType: !3976, size: 64, offset: 15488)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !3587, file: !1076, line: 1113, baseType: !3976, size: 64, offset: 15552)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !3587, file: !1076, line: 1115, baseType: !3976, size: 64, offset: 15616)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !3587, file: !1076, line: 1116, baseType: !3972, size: 192, offset: 15680)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !3587, file: !1076, line: 1117, baseType: !196, size: 64, offset: 15872)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !3587, file: !1076, line: 1118, baseType: !340, size: 64, offset: 15936)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !3587, file: !1076, line: 1119, baseType: !13, size: 32, offset: 16000)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !3587, file: !1076, line: 1121, baseType: !851, size: 64, offset: 16064)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !3587, file: !1076, line: 1125, baseType: !4133, size: 64, offset: 16128)
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4134, size: 64)
!4134 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1076, line: 43, flags: DIFlagFwdDecl)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !3587, file: !1076, line: 1127, baseType: !378, size: 32, offset: 16192)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !3587, file: !1076, line: 1128, baseType: !13, size: 32, offset: 16224)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !3587, file: !1076, line: 1130, baseType: !4138, size: 128, offset: 16256)
!4138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4139, line: 37, size: 128, elements: !4140)
!4139 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!4140 = !{!4141, !4142, !4143}
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4138, file: !4139, line: 38, baseType: !129, size: 32)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4138, file: !4139, line: 39, baseType: !243, size: 32, offset: 32)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4138, file: !4139, line: 40, baseType: !4144, size: 64, offset: 64)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4139, line: 24, flags: DIFlagFwdDecl)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !3587, file: !1076, line: 1131, baseType: !4147, size: 256, offset: 16384)
!4147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !4148, line: 12, size: 256, elements: !4149)
!4148 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!4149 = !{!4150, !4151, !4152, !4153}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !4147, file: !4148, line: 13, baseType: !293, size: 64)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4147, file: !4148, line: 14, baseType: !196, size: 64, offset: 64)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4147, file: !4148, line: 15, baseType: !196, size: 64, offset: 128)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !4147, file: !4148, line: 16, baseType: !712, size: 8, offset: 192)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !3587, file: !1076, line: 1134, baseType: !445, size: 64, offset: 16640)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !3587, file: !1076, line: 1135, baseType: !445, size: 64, offset: 16704)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !3587, file: !1076, line: 1138, baseType: !223, size: 32, offset: 16768)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !3587, file: !1076, line: 1141, baseType: !590, size: 32, offset: 16800)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !3587, file: !1076, line: 1143, baseType: !4159, size: 64, offset: 16832)
!4159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1076, line: 735, size: 64, elements: !4160)
!4160 = !{!4161}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4159, file: !1076, line: 736, baseType: !4162, size: 64)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !3587, file: !1076, line: 1147, baseType: !2442, size: 128, offset: 16896)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !3587, file: !1076, line: 1149, baseType: !3586, size: 64, offset: 17024)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !3587, file: !1076, line: 1151, baseType: !4166, size: 64, offset: 17088)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1076, line: 1151, flags: DIFlagFwdDecl)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !3587, file: !1076, line: 1188, baseType: !194, size: 64, offset: 17152)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !3587, file: !1076, line: 1191, baseType: !4170, size: 64, offset: 17216)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !3587, file: !1076, line: 1194, baseType: !4172, size: 64, offset: 17280)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !162, line: 976, size: 320, elements: !4174)
!4174 = !{!4175, !4176, !4177, !4178, !4179, !4180, !4181}
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "mq_list", scope: !4173, file: !162, line: 977, baseType: !1931, size: 64)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "cached_rq", scope: !4173, file: !162, line: 980, baseType: !1931, size: 64, offset: 64)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ios", scope: !4173, file: !162, line: 981, baseType: !263, size: 16, offset: 128)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "rq_count", scope: !4173, file: !162, line: 983, baseType: !263, size: 16, offset: 144)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "multiple_queues", scope: !4173, file: !162, line: 985, baseType: !712, size: 8, offset: 160)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "has_elevator", scope: !4173, file: !162, line: 986, baseType: !712, size: 8, offset: 168)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !4173, file: !162, line: 988, baseType: !210, size: 128, offset: 192)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !3587, file: !1076, line: 1197, baseType: !4183, size: 64, offset: 17344)
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1076, line: 61, flags: DIFlagFwdDecl)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !3587, file: !1076, line: 1199, baseType: !2859, size: 64, offset: 17408)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !3587, file: !1076, line: 1202, baseType: !4187, size: 64, offset: 17472)
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4188, size: 64)
!4188 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1076, line: 48, flags: DIFlagFwdDecl)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !3587, file: !1076, line: 1205, baseType: !196, size: 64, offset: 17536)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !3587, file: !1076, line: 1206, baseType: !4191, size: 64, offset: 17600)
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4192, size: 64)
!4192 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1801, line: 14, baseType: !4193)
!4193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1801, line: 12, size: 384, elements: !4194)
!4194 = !{!4195}
!4195 = !DIDerivedType(tag: DW_TAG_member, scope: !4193, file: !1801, line: 13, baseType: !4196, size: 384)
!4196 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4193, file: !1801, line: 13, size: 384, elements: !4197)
!4197 = !{!4198, !4199, !4200, !4201}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4196, file: !1801, line: 13, baseType: !129, size: 32)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4196, file: !1801, line: 13, baseType: !129, size: 32, offset: 32)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4196, file: !1801, line: 13, baseType: !129, size: 32, offset: 64)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4196, file: !1801, line: 13, baseType: !4202, size: 256, offset: 128)
!4202 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4203, line: 37, size: 256, elements: !4204)
!4203 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4204 = !{!4205, !4210, !4223, !4229, !4238, !4265, !4270}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4202, file: !4203, line: 42, baseType: !4206, size: 64)
!4206 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4202, file: !4203, line: 39, size: 64, elements: !4207)
!4207 = !{!4208, !4209}
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4206, file: !4203, line: 40, baseType: !3872, size: 32)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4206, file: !4203, line: 41, baseType: !384, size: 32, offset: 32)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4202, file: !4203, line: 50, baseType: !4211, size: 192)
!4211 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4202, file: !4203, line: 45, size: 192, elements: !4212)
!4212 = !{!4213, !4215, !4216, !4222}
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4211, file: !4203, line: 46, baseType: !4214, size: 32)
!4214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !327, line: 95, baseType: !129)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4211, file: !4203, line: 47, baseType: !129, size: 32, offset: 32)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4211, file: !4203, line: 48, baseType: !4217, size: 64, offset: 64)
!4217 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4203, line: 11, baseType: !4218)
!4218 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4203, line: 8, size: 64, elements: !4219)
!4219 = !{!4220, !4221}
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4218, file: !4203, line: 9, baseType: !129, size: 32)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4218, file: !4203, line: 10, baseType: !194, size: 64)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4211, file: !4203, line: 49, baseType: !129, size: 32, offset: 128)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4202, file: !4203, line: 57, baseType: !4224, size: 128)
!4224 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4202, file: !4203, line: 53, size: 128, elements: !4225)
!4225 = !{!4226, !4227, !4228}
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4224, file: !4203, line: 54, baseType: !3872, size: 32)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4224, file: !4203, line: 55, baseType: !384, size: 32, offset: 32)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4224, file: !4203, line: 56, baseType: !4217, size: 64, offset: 64)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4202, file: !4203, line: 66, baseType: !4230, size: 256)
!4230 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4202, file: !4203, line: 60, size: 256, elements: !4231)
!4231 = !{!4232, !4233, !4234, !4235, !4237}
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4230, file: !4203, line: 61, baseType: !3872, size: 32)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4230, file: !4203, line: 62, baseType: !384, size: 32, offset: 32)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4230, file: !4203, line: 63, baseType: !129, size: 32, offset: 64)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4230, file: !4203, line: 64, baseType: !4236, size: 64, offset: 128)
!4236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !327, line: 94, baseType: !328)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4230, file: !4203, line: 65, baseType: !4236, size: 64, offset: 192)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4202, file: !4203, line: 105, baseType: !4239, size: 256)
!4239 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4202, file: !4203, line: 69, size: 256, elements: !4240)
!4240 = !{!4241, !4242}
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4239, file: !4203, line: 70, baseType: !194, size: 64)
!4242 = !DIDerivedType(tag: DW_TAG_member, scope: !4239, file: !4203, line: 79, baseType: !4243, size: 192, offset: 64)
!4243 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4239, file: !4203, line: 79, size: 192, elements: !4244)
!4244 = !{!4245, !4246, !4247, !4254, !4259}
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4243, file: !4203, line: 81, baseType: !129, size: 32)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4243, file: !4203, line: 86, baseType: !770, size: 16)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4243, file: !4203, line: 92, baseType: !4248, size: 192)
!4248 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4243, file: !4203, line: 88, size: 192, elements: !4249)
!4249 = !{!4250, !4252, !4253}
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4248, file: !4203, line: 89, baseType: !4251, size: 64)
!4251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !2426)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4248, file: !4203, line: 90, baseType: !194, size: 64, offset: 64)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4248, file: !4203, line: 91, baseType: !194, size: 64, offset: 128)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4243, file: !4203, line: 97, baseType: !4255, size: 96)
!4255 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4243, file: !4203, line: 94, size: 96, elements: !4256)
!4256 = !{!4257, !4258}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4255, file: !4203, line: 95, baseType: !4251, size: 64)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4255, file: !4203, line: 96, baseType: !442, size: 32, offset: 64)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4243, file: !4203, line: 103, baseType: !4260, size: 128)
!4260 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4243, file: !4203, line: 99, size: 128, elements: !4261)
!4261 = !{!4262, !4263, !4264}
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4260, file: !4203, line: 100, baseType: !196, size: 64)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4260, file: !4203, line: 101, baseType: !442, size: 32, offset: 64)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4260, file: !4203, line: 102, baseType: !442, size: 32, offset: 96)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4202, file: !4203, line: 111, baseType: !4266, size: 128)
!4266 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4202, file: !4203, line: 108, size: 128, elements: !4267)
!4267 = !{!4268, !4269}
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4266, file: !4203, line: 109, baseType: !329, size: 64)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4266, file: !4203, line: 110, baseType: !129, size: 32, offset: 64)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4202, file: !4203, line: 118, baseType: !4271, size: 128)
!4271 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4202, file: !4203, line: 114, size: 128, elements: !4272)
!4272 = !{!4273, !4274, !4275}
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4271, file: !4203, line: 115, baseType: !194, size: 64)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4271, file: !4203, line: 116, baseType: !129, size: 32, offset: 64)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4271, file: !4203, line: 117, baseType: !13, size: 32, offset: 96)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3587, file: !1076, line: 1208, baseType: !4056, size: 448, offset: 17664)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !3587, file: !1076, line: 1215, baseType: !445, size: 64, offset: 18112)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !3587, file: !1076, line: 1217, baseType: !445, size: 64, offset: 18176)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !3587, file: !1076, line: 1219, baseType: !445, size: 64, offset: 18240)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !3587, file: !1076, line: 1223, baseType: !4281, size: 64, offset: 18304)
!4281 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4282, line: 99, baseType: !4283)
!4282 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4283 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4282, line: 99, size: 64, elements: !4284)
!4284 = !{!4285}
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4283, file: !4282, line: 99, baseType: !1976, size: 64)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !3587, file: !1076, line: 1225, baseType: !413, size: 32, offset: 18368)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !3587, file: !1076, line: 1226, baseType: !129, size: 32, offset: 18400)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !3587, file: !1076, line: 1227, baseType: !129, size: 32, offset: 18432)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !3587, file: !1076, line: 1231, baseType: !4290, size: 64, offset: 18496)
!4290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4291, size: 64)
!4291 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1076, line: 1231, flags: DIFlagFwdDecl)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !3587, file: !1076, line: 1233, baseType: !210, size: 128, offset: 18560)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !3587, file: !1076, line: 1240, baseType: !4294, size: 64, offset: 18688)
!4294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4295, size: 64)
!4295 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1076, line: 62, flags: DIFlagFwdDecl)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !3587, file: !1076, line: 1242, baseType: !4297, size: 64, offset: 18752)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1076, line: 1242, flags: DIFlagFwdDecl)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !3587, file: !1076, line: 1244, baseType: !210, size: 128, offset: 18816)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !3587, file: !1076, line: 1245, baseType: !4301, size: 64, offset: 18944)
!4301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4302, size: 64)
!4302 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1076, line: 51, flags: DIFlagFwdDecl)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !3587, file: !1076, line: 1246, baseType: !632, size: 256, offset: 19008)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !3587, file: !1076, line: 1247, baseType: !13, size: 32, offset: 19264)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !3587, file: !1076, line: 1250, baseType: !4306, size: 64, offset: 19328)
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4307 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1076, line: 57, flags: DIFlagFwdDecl)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !3587, file: !1076, line: 1251, baseType: !632, size: 256, offset: 19392)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !3587, file: !1076, line: 1252, baseType: !210, size: 128, offset: 19648)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !3587, file: !1076, line: 1259, baseType: !3219, size: 64, offset: 19776)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !3587, file: !1076, line: 1260, baseType: !770, size: 16, offset: 19840)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !3587, file: !1076, line: 1261, baseType: !770, size: 16, offset: 19856)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !3587, file: !1076, line: 1314, baseType: !4314, size: 64, offset: 19904)
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4316, line: 62, size: 256, align: 256, elements: !4317)
!4316 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4317 = !{!4318, !4319, !4320, !4321, !4322, !4323, !4324}
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4315, file: !4316, line: 75, baseType: !442, size: 32)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4315, file: !4316, line: 90, baseType: !442, size: 32, offset: 32)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4315, file: !4316, line: 112, baseType: !446, size: 64, offset: 64)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4315, file: !4316, line: 132, baseType: !442, size: 32, offset: 128)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4315, file: !4316, line: 140, baseType: !442, size: 32, offset: 160)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4315, file: !4316, line: 149, baseType: !442, size: 32, offset: 192)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4315, file: !4316, line: 154, baseType: !4325, offset: 224)
!4325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !1619)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !3587, file: !1076, line: 1315, baseType: !441, size: 32, offset: 19968)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !3587, file: !1076, line: 1316, baseType: !441, size: 32, offset: 20000)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !3587, file: !1076, line: 1321, baseType: !196, size: 64, offset: 20032)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3587, file: !1076, line: 1325, baseType: !129, size: 32, offset: 20096)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !3587, file: !1076, line: 1326, baseType: !129, size: 32, offset: 20128)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !3587, file: !1076, line: 1327, baseType: !129, size: 32, offset: 20160)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !3587, file: !1076, line: 1328, baseType: !129, size: 32, offset: 20192)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !3587, file: !1076, line: 1329, baseType: !852, size: 128, align: 64, offset: 20224)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !3587, file: !1076, line: 1332, baseType: !4335, size: 128, offset: 20352)
!4335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4336, line: 51, size: 128, elements: !4337)
!4336 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4337 = !{!4338, !4343, !4344}
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4335, file: !4336, line: 60, baseType: !4339, size: 64)
!4339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4340, line: 7, size: 64, elements: !4341)
!4340 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4341 = !{!4342}
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4339, file: !4340, line: 12, baseType: !1973, size: 64)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4335, file: !4336, line: 63, baseType: !712, size: 8, offset: 64)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4335, file: !4336, line: 70, baseType: !712, size: 8, offset: 72)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !3587, file: !1076, line: 1335, baseType: !2963, size: 64, offset: 20480)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !3587, file: !1076, line: 1337, baseType: !4347, size: 128, offset: 20544)
!4347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4336, line: 39, size: 128, elements: !4348)
!4348 = !{!4349, !4350, !4351}
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4347, file: !4336, line: 40, baseType: !1394, size: 64)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4347, file: !4336, line: 42, baseType: !442, size: 32, offset: 64)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4347, file: !4336, line: 43, baseType: !442, size: 32, offset: 96)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !3587, file: !1076, line: 1340, baseType: !4353, size: 64, offset: 20672)
!4353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4354, size: 64)
!4354 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1076, line: 69, flags: DIFlagFwdDecl)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !3587, file: !1076, line: 1351, baseType: !129, size: 32, offset: 20736)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !3587, file: !1076, line: 1352, baseType: !129, size: 32, offset: 20768)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !3587, file: !1076, line: 1354, baseType: !196, size: 64, offset: 20800)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !3587, file: !1076, line: 1364, baseType: !445, size: 64, offset: 20864)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !3587, file: !1076, line: 1365, baseType: !445, size: 64, offset: 20928)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !3587, file: !1076, line: 1412, baseType: !196, size: 64, offset: 20992)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !3587, file: !1076, line: 1453, baseType: !1323, size: 64, offset: 21056)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !3587, file: !1076, line: 1457, baseType: !4363, size: 64, offset: 21120)
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4364, size: 64)
!4364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !74, line: 61, size: 576, elements: !4365)
!4365 = !{!4366, !4367, !4386, !4389, !4390, !4423, !4433}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4364, file: !74, line: 62, baseType: !73, size: 32)
!4367 = !DIDerivedType(tag: DW_TAG_member, scope: !4364, file: !74, line: 64, baseType: !4368, size: 192, offset: 64)
!4368 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4364, file: !74, line: 64, size: 192, elements: !4369)
!4369 = !{!4370, !4381}
!4370 = !DIDerivedType(tag: DW_TAG_member, scope: !4368, file: !74, line: 65, baseType: !4371, size: 192)
!4371 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4368, file: !74, line: 65, size: 192, elements: !4372)
!4372 = !{!4373, !4380}
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4371, file: !74, line: 66, baseType: !4374, size: 128)
!4374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4375, line: 50, size: 128, elements: !4376)
!4375 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4376 = !{!4377, !4378, !4379}
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4374, file: !4375, line: 52, baseType: !196, size: 64)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4374, file: !4375, line: 54, baseType: !13, size: 32, offset: 64)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4374, file: !4375, line: 55, baseType: !13, size: 32, offset: 96)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4371, file: !74, line: 67, baseType: !196, size: 64, offset: 128)
!4381 = !DIDerivedType(tag: DW_TAG_member, scope: !4368, file: !74, line: 70, baseType: !4382, size: 192)
!4382 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4368, file: !74, line: 70, size: 192, elements: !4383)
!4383 = !{!4384, !4385}
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4382, file: !74, line: 71, baseType: !852, size: 128, align: 64)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4382, file: !74, line: 72, baseType: !196, size: 64, offset: 128)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4364, file: !74, line: 76, baseType: !4387, size: 64, offset: 256)
!4387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4388, size: 64)
!4388 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !74, line: 76, flags: DIFlagFwdDecl)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4364, file: !74, line: 77, baseType: !196, size: 64, offset: 320)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4364, file: !74, line: 79, baseType: !4391, size: 64, offset: 384)
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4375, line: 25, size: 256, elements: !4393)
!4393 = !{!4394, !4400, !4404}
!4394 = !DIDerivedType(tag: DW_TAG_member, scope: !4392, file: !4375, line: 26, baseType: !4395, size: 128)
!4395 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4392, file: !4375, line: 26, size: 128, elements: !4396)
!4396 = !{!4397, !4399}
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4395, file: !4375, line: 27, baseType: !4398, size: 128)
!4398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 128, elements: !3930)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4395, file: !4375, line: 28, baseType: !4398, size: 128)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4392, file: !4375, line: 31, baseType: !4401, size: 64, offset: 128)
!4401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4402, size: 64)
!4402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4403)
!4403 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4375, line: 23, flags: DIFlagFwdDecl)
!4404 = !DIDerivedType(tag: DW_TAG_member, scope: !4392, file: !4375, line: 33, baseType: !4405, size: 64, offset: 192)
!4405 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4392, file: !4375, line: 33, size: 64, elements: !4406)
!4406 = !{!4407, !4413, !4418}
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4405, file: !4375, line: 38, baseType: !4408, size: 64)
!4408 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4405, file: !4375, line: 34, size: 64, elements: !4409)
!4409 = !{!4410, !4411, !4412}
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4408, file: !4375, line: 35, baseType: !628, size: 32)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4408, file: !4375, line: 36, baseType: !251, size: 8, offset: 32)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4408, file: !4375, line: 37, baseType: !251, size: 8, offset: 40)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4405, file: !4375, line: 42, baseType: !4414, size: 16)
!4414 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4405, file: !4375, line: 39, size: 16, elements: !4415)
!4415 = !{!4416, !4417}
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4414, file: !4375, line: 40, baseType: !251, size: 8)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4414, file: !4375, line: 41, baseType: !251, size: 8, offset: 8)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4405, file: !4375, line: 46, baseType: !4419, size: 16)
!4419 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4405, file: !4375, line: 43, size: 16, elements: !4420)
!4420 = !{!4421, !4422}
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4419, file: !4375, line: 44, baseType: !251, size: 8)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4419, file: !4375, line: 45, baseType: !251, size: 8, offset: 8)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4364, file: !74, line: 81, baseType: !4424, size: 64, offset: 448)
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !74, line: 85, size: 384, elements: !4426)
!4426 = !{!4427, !4428, !4429, !4430, !4431, !4432}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4425, file: !74, line: 86, baseType: !4387, size: 64)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4425, file: !74, line: 87, baseType: !196, size: 64, offset: 64)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4425, file: !74, line: 88, baseType: !196, size: 64, offset: 128)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4425, file: !74, line: 89, baseType: !196, size: 64, offset: 192)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4425, file: !74, line: 90, baseType: !712, size: 8, offset: 256)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4425, file: !74, line: 92, baseType: !4424, size: 64, offset: 320)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4364, file: !74, line: 82, baseType: !13, size: 32, offset: 512)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !3587, file: !1076, line: 1463, baseType: !4435, offset: 21184)
!4435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1076, line: 739, elements: !921)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3587, file: !1076, line: 1470, baseType: !852, size: 128, align: 64, offset: 21184)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3587, file: !1076, line: 1471, baseType: !1593, size: 32, offset: 21312)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !3587, file: !1076, line: 1472, baseType: !129, size: 32, offset: 21344)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !3587, file: !1076, line: 1474, baseType: !3586, size: 64, offset: 21376)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !3587, file: !1076, line: 1475, baseType: !874, size: 320, offset: 21440)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !3587, file: !1076, line: 1478, baseType: !4442, size: 64, offset: 21760)
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4443, size: 64)
!4443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !4444, line: 49, size: 512, elements: !4445)
!4444 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!4445 = !{!4446, !4447, !4448, !4449, !4450, !4452, !4453, !4454, !4456}
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4443, file: !4444, line: 50, baseType: !4442, size: 64)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4443, file: !4444, line: 51, baseType: !194, size: 64, offset: 64)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4443, file: !4444, line: 52, baseType: !196, size: 64, offset: 128)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4443, file: !4444, line: 53, baseType: !196, size: 64, offset: 192)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4443, file: !4444, line: 54, baseType: !4451, size: 64, offset: 256)
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !4443, file: !4444, line: 56, baseType: !13, size: 32, offset: 320)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !4443, file: !4444, line: 58, baseType: !13, size: 32, offset: 352)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4443, file: !4444, line: 59, baseType: !4455, size: 64, offset: 384)
!4455 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !193, line: 159, baseType: !445)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !4443, file: !4444, line: 60, baseType: !2581, size: 64, offset: 448)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !3587, file: !1076, line: 1482, baseType: !1593, size: 32, offset: 21824)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3587, file: !1076, line: 1489, baseType: !194, size: 64, offset: 21888)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !3587, file: !1076, line: 1504, baseType: !194, size: 64, offset: 21952)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !3587, file: !1076, line: 1505, baseType: !446, size: 64, offset: 22016)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !3587, file: !1076, line: 1506, baseType: !445, size: 64, offset: 22080)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !3587, file: !1076, line: 1507, baseType: !446, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !3587, file: !1076, line: 1508, baseType: !446, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !3587, file: !1076, line: 1509, baseType: !446, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !3587, file: !1076, line: 1510, baseType: !852, size: 128, align: 64, offset: 22208)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !3587, file: !1076, line: 1511, baseType: !129, size: 32, offset: 22336)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !3587, file: !1076, line: 1515, baseType: !4468, size: 64, offset: 22400)
!4468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1551, line: 56, size: 64, elements: !4469)
!4469 = !{!4470}
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4468, file: !1551, line: 57, baseType: !1554, size: 64)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !3587, file: !1076, line: 1518, baseType: !4468, size: 64, offset: 22464)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !3587, file: !1076, line: 1528, baseType: !852, size: 128, align: 64, offset: 22528)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3587, file: !1076, line: 1552, baseType: !4474, size: 35328, offset: 23040)
!4474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4475, line: 430, size: 35328, elements: !4476)
!4475 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4476 = !{!4477, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4506, !4507, !4508, !4509, !4510, !4511, !4514, !4515, !4516, !4517}
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4474, file: !4475, line: 432, baseType: !4478, size: 192)
!4478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4479, size: 192, elements: !294)
!4479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4480, line: 16, size: 64, elements: !4481)
!4480 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4481 = !{!4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4479, file: !4480, line: 17, baseType: !261, size: 16)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4479, file: !4480, line: 18, baseType: !261, size: 16, offset: 16)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4479, file: !4480, line: 19, baseType: !261, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4479, file: !4480, line: 19, baseType: !261, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4479, file: !4480, line: 19, baseType: !261, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4479, file: !4480, line: 19, baseType: !261, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4479, file: !4480, line: 19, baseType: !261, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4479, file: !4480, line: 20, baseType: !261, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4479, file: !4480, line: 20, baseType: !261, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4479, file: !4480, line: 20, baseType: !261, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4479, file: !4480, line: 20, baseType: !261, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4479, file: !4480, line: 20, baseType: !261, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4479, file: !4480, line: 20, baseType: !261, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4474, file: !4475, line: 436, baseType: !196, size: 64, offset: 192)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4474, file: !4475, line: 440, baseType: !263, size: 16, offset: 256)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4474, file: !4475, line: 441, baseType: !263, size: 16, offset: 272)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4474, file: !4475, line: 442, baseType: !263, size: 16, offset: 288)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4474, file: !4475, line: 443, baseType: !263, size: 16, offset: 304)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4474, file: !4475, line: 447, baseType: !196, size: 64, offset: 320)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4474, file: !4475, line: 448, baseType: !196, size: 64, offset: 384)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4474, file: !4475, line: 459, baseType: !4503, size: 256, offset: 448)
!4503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4504, size: 256, elements: !862)
!4504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4505, size: 64)
!4505 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4475, line: 428, flags: DIFlagFwdDecl)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4474, file: !4475, line: 461, baseType: !196, size: 64, offset: 704)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4474, file: !4475, line: 463, baseType: !196, size: 64, offset: 768)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4474, file: !4475, line: 465, baseType: !196, size: 64, offset: 832)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4474, file: !4475, line: 466, baseType: !196, size: 64, offset: 896)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4474, file: !4475, line: 467, baseType: !196, size: 64, offset: 960)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4474, file: !4475, line: 473, baseType: !4512, size: 64, offset: 1024)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4475, line: 10, flags: DIFlagFwdDecl)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4474, file: !4475, line: 480, baseType: !196, size: 64, offset: 1088)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4474, file: !4475, line: 482, baseType: !13, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4474, file: !4475, line: 491, baseType: !441, size: 32, offset: 1184)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4474, file: !4475, line: 501, baseType: !4518, size: 33792, offset: 1536)
!4518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4519, line: 448, size: 33792, elements: !4520)
!4519 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4520 = !{!4521, !4522, !4523, !4685, !4686, !4692, !4693}
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4518, file: !4519, line: 461, baseType: !13, size: 32)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4518, file: !4519, line: 468, baseType: !196, size: 64, offset: 64)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4518, file: !4519, line: 476, baseType: !4524, size: 64, offset: 128)
!4524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4525, size: 64)
!4525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4519, line: 356, size: 33280, align: 512, elements: !4526)
!4526 = !{!4527, !4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536}
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4525, file: !4519, line: 358, baseType: !13, size: 32)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4525, file: !4519, line: 361, baseType: !13, size: 32, offset: 32)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4525, file: !4519, line: 364, baseType: !445, size: 64, offset: 64)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4525, file: !4519, line: 367, baseType: !445, size: 64, offset: 128)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4525, file: !4519, line: 370, baseType: !445, size: 64, offset: 192)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4525, file: !4519, line: 373, baseType: !13, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4525, file: !4519, line: 376, baseType: !13, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4525, file: !4519, line: 391, baseType: !13, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4525, file: !4519, line: 394, baseType: !13, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4525, file: !4519, line: 397, baseType: !4537, size: 32768, offset: 512)
!4537 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4519, line: 348, size: 32768, elements: !4538)
!4538 = !{!4539, !4554, !4591, !4668, !4681}
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4537, file: !4519, line: 349, baseType: !4540, size: 896)
!4540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4519, line: 12, size: 896, elements: !4541)
!4541 = !{!4542, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4553}
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4540, file: !4519, line: 13, baseType: !441, size: 32)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4540, file: !4519, line: 14, baseType: !441, size: 32, offset: 32)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4540, file: !4519, line: 15, baseType: !441, size: 32, offset: 64)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4540, file: !4519, line: 16, baseType: !441, size: 32, offset: 96)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4540, file: !4519, line: 17, baseType: !441, size: 32, offset: 128)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4540, file: !4519, line: 18, baseType: !441, size: 32, offset: 160)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4540, file: !4519, line: 19, baseType: !441, size: 32, offset: 192)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4540, file: !4519, line: 22, baseType: !4550, size: 640, offset: 224)
!4550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 640, elements: !4551)
!4551 = !{!4552}
!4552 = !DISubrange(count: 20)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4540, file: !4519, line: 25, baseType: !441, size: 32, offset: 864)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4537, file: !4519, line: 350, baseType: !4555, size: 4096, align: 128)
!4555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4519, line: 34, size: 4096, align: 128, elements: !4556)
!4556 = !{!4557, !4558, !4559, !4560, !4561, !4576, !4577, !4578, !4580, !4582, !4586}
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4555, file: !4519, line: 35, baseType: !261, size: 16)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4555, file: !4519, line: 36, baseType: !261, size: 16, offset: 16)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4555, file: !4519, line: 37, baseType: !261, size: 16, offset: 32)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4555, file: !4519, line: 38, baseType: !261, size: 16, offset: 48)
!4561 = !DIDerivedType(tag: DW_TAG_member, scope: !4555, file: !4519, line: 39, baseType: !4562, size: 128, offset: 64)
!4562 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4555, file: !4519, line: 39, size: 128, elements: !4563)
!4563 = !{!4564, !4569}
!4564 = !DIDerivedType(tag: DW_TAG_member, scope: !4562, file: !4519, line: 40, baseType: !4565, size: 128)
!4565 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4562, file: !4519, line: 40, size: 128, elements: !4566)
!4566 = !{!4567, !4568}
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4565, file: !4519, line: 41, baseType: !445, size: 64)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4565, file: !4519, line: 42, baseType: !445, size: 64, offset: 64)
!4569 = !DIDerivedType(tag: DW_TAG_member, scope: !4562, file: !4519, line: 44, baseType: !4570, size: 128)
!4570 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4562, file: !4519, line: 44, size: 128, elements: !4571)
!4571 = !{!4572, !4573, !4574, !4575}
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4570, file: !4519, line: 45, baseType: !441, size: 32)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4570, file: !4519, line: 46, baseType: !441, size: 32, offset: 32)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4570, file: !4519, line: 47, baseType: !441, size: 32, offset: 64)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4570, file: !4519, line: 48, baseType: !441, size: 32, offset: 96)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4555, file: !4519, line: 51, baseType: !441, size: 32, offset: 192)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4555, file: !4519, line: 52, baseType: !441, size: 32, offset: 224)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4555, file: !4519, line: 55, baseType: !4579, size: 1024, offset: 256)
!4579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 1024, elements: !454)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4555, file: !4519, line: 58, baseType: !4581, size: 2048, offset: 1280)
!4581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 2048, elements: !298)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4555, file: !4519, line: 60, baseType: !4583, size: 384, offset: 3328)
!4583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 384, elements: !4584)
!4584 = !{!4585}
!4585 = !DISubrange(count: 12)
!4586 = !DIDerivedType(tag: DW_TAG_member, scope: !4555, file: !4519, line: 62, baseType: !4587, size: 384, offset: 3712)
!4587 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4555, file: !4519, line: 62, size: 384, elements: !4588)
!4588 = !{!4589, !4590}
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4587, file: !4519, line: 63, baseType: !4583, size: 384)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4587, file: !4519, line: 64, baseType: !4583, size: 384)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4537, file: !4519, line: 351, baseType: !4592, size: 1088)
!4592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4519, line: 79, size: 1088, elements: !4593)
!4593 = !{!4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4667}
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4592, file: !4519, line: 80, baseType: !441, size: 32)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4592, file: !4519, line: 81, baseType: !441, size: 32, offset: 32)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4592, file: !4519, line: 82, baseType: !441, size: 32, offset: 64)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4592, file: !4519, line: 83, baseType: !441, size: 32, offset: 96)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4592, file: !4519, line: 84, baseType: !441, size: 32, offset: 128)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4592, file: !4519, line: 85, baseType: !441, size: 32, offset: 160)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4592, file: !4519, line: 86, baseType: !441, size: 32, offset: 192)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4592, file: !4519, line: 88, baseType: !4550, size: 640, offset: 224)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4592, file: !4519, line: 89, baseType: !251, size: 8, offset: 864)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4592, file: !4519, line: 90, baseType: !251, size: 8, offset: 872)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4592, file: !4519, line: 91, baseType: !251, size: 8, offset: 880)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4592, file: !4519, line: 92, baseType: !251, size: 8, offset: 888)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4592, file: !4519, line: 93, baseType: !251, size: 8, offset: 896)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4592, file: !4519, line: 94, baseType: !251, size: 8, offset: 904)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4592, file: !4519, line: 95, baseType: !4609, size: 64, offset: 960)
!4609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4610, size: 64)
!4610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4611, line: 11, size: 128, elements: !4612)
!4611 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4612 = !{!4613, !4614}
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4610, file: !4611, line: 12, baseType: !329, size: 64)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4610, file: !4611, line: 13, baseType: !4615, size: 64, offset: 64)
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4616, size: 64)
!4616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4617, line: 103, size: 1344, elements: !4618)
!4617 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4618 = !{!4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4632, !4633, !4634, !4635, !4636, !4647, !4648, !4649}
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4616, file: !4617, line: 109, baseType: !196, size: 64)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4616, file: !4617, line: 110, baseType: !196, size: 64, offset: 64)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4616, file: !4617, line: 111, baseType: !196, size: 64, offset: 128)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4616, file: !4617, line: 112, baseType: !196, size: 64, offset: 192)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4616, file: !4617, line: 113, baseType: !196, size: 64, offset: 256)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4616, file: !4617, line: 114, baseType: !196, size: 64, offset: 320)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4616, file: !4617, line: 117, baseType: !196, size: 64, offset: 384)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4616, file: !4617, line: 118, baseType: !196, size: 64, offset: 448)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4616, file: !4617, line: 119, baseType: !196, size: 64, offset: 512)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4616, file: !4617, line: 120, baseType: !196, size: 64, offset: 576)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4616, file: !4617, line: 121, baseType: !196, size: 64, offset: 640)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4616, file: !4617, line: 122, baseType: !196, size: 64, offset: 704)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4616, file: !4617, line: 123, baseType: !196, size: 64, offset: 768)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4616, file: !4617, line: 124, baseType: !196, size: 64, offset: 832)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4616, file: !4617, line: 125, baseType: !196, size: 64, offset: 896)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4616, file: !4617, line: 139, baseType: !196, size: 64, offset: 960)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4616, file: !4617, line: 142, baseType: !196, size: 64, offset: 1024)
!4636 = !DIDerivedType(tag: DW_TAG_member, scope: !4616, file: !4617, line: 144, baseType: !4637, size: 64, offset: 1088)
!4637 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4616, file: !4617, line: 144, size: 64, elements: !4638)
!4638 = !{!4639, !4640, !4641}
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4637, file: !4617, line: 146, baseType: !261, size: 16)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4637, file: !4617, line: 148, baseType: !445, size: 64)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4637, file: !4617, line: 150, baseType: !4642, size: 64)
!4642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4617, line: 59, size: 64, elements: !4643)
!4643 = !{!4644, !4645, !4646}
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4642, file: !4617, line: 61, baseType: !445, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4642, file: !4617, line: 63, baseType: !445, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4642, file: !4617, line: 65, baseType: !445, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4616, file: !4617, line: 153, baseType: !196, size: 64, offset: 1152)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4616, file: !4617, line: 154, baseType: !196, size: 64, offset: 1216)
!4649 = !DIDerivedType(tag: DW_TAG_member, scope: !4616, file: !4617, line: 156, baseType: !4650, size: 64, offset: 1280)
!4650 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4616, file: !4617, line: 156, size: 64, elements: !4651)
!4651 = !{!4652, !4653, !4654}
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4650, file: !4617, line: 158, baseType: !261, size: 16)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4650, file: !4617, line: 160, baseType: !445, size: 64)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4650, file: !4617, line: 162, baseType: !4655, size: 64)
!4655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4617, line: 69, size: 64, elements: !4656)
!4656 = !{!4657, !4658, !4659, !4660, !4661, !4662, !4663, !4664, !4665, !4666}
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4655, file: !4617, line: 71, baseType: !445, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4655, file: !4617, line: 73, baseType: !445, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4655, file: !4617, line: 75, baseType: !445, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4655, file: !4617, line: 77, baseType: !445, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4655, file: !4617, line: 80, baseType: !445, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4655, file: !4617, line: 83, baseType: !445, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4655, file: !4617, line: 86, baseType: !445, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4655, file: !4617, line: 88, baseType: !445, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4655, file: !4617, line: 93, baseType: !445, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4655, file: !4617, line: 100, baseType: !445, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4592, file: !4519, line: 96, baseType: !441, size: 32, offset: 1024)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4537, file: !4519, line: 352, baseType: !4669, size: 4608, align: 512)
!4669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4519, line: 333, size: 4608, align: 512, elements: !4670)
!4670 = !{!4671, !4672, !4679}
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4669, file: !4519, line: 334, baseType: !4555, size: 4096, align: 128)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4669, file: !4519, line: 335, baseType: !4673, size: 512, offset: 4096)
!4673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4519, line: 312, size: 512, elements: !4674)
!4674 = !{!4675, !4676, !4677}
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4673, file: !4519, line: 313, baseType: !445, size: 64)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4673, file: !4519, line: 314, baseType: !445, size: 64, offset: 64)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4673, file: !4519, line: 315, baseType: !4678, size: 384, offset: 128)
!4678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 384, elements: !1702)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4669, file: !4519, line: 336, baseType: !4680, offset: 4608)
!4680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, elements: !1619)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4537, file: !4519, line: 353, baseType: !4682, size: 32768)
!4682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 32768, elements: !4683)
!4683 = !{!4684}
!4684 = !DISubrange(count: 4096)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4518, file: !4519, line: 484, baseType: !4524, size: 64, offset: 192)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4518, file: !4519, line: 491, baseType: !4687, size: 128, offset: 256)
!4687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4519, line: 404, size: 128, elements: !4688)
!4688 = !{!4689, !4690, !4691}
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4687, file: !4519, line: 424, baseType: !445, size: 64)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4687, file: !4519, line: 432, baseType: !13, size: 32, offset: 64)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4687, file: !4519, line: 440, baseType: !13, size: 32, offset: 96)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4518, file: !4519, line: 498, baseType: !4687, size: 128, offset: 384)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4518, file: !4519, line: 508, baseType: !4525, size: 33280, align: 512, offset: 512)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3569, file: !3570, line: 16, baseType: !1604, size: 192, offset: 512)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3569, file: !3570, line: 17, baseType: !243, size: 32, offset: 704)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !524, file: !20, line: 1240, baseType: !194, size: 64, offset: 6912)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !524, file: !20, line: 1243, baseType: !441, size: 32, offset: 6976)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !524, file: !20, line: 1245, baseType: !1134, size: 64, offset: 7040)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !524, file: !20, line: 1246, baseType: !1134, size: 64, offset: 7104)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !524, file: !20, line: 1248, baseType: !442, size: 32, offset: 7168)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !524, file: !20, line: 1249, baseType: !4702, size: 64, offset: 7232)
!4702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4703, size: 64)
!4703 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !20, line: 634, flags: DIFlagFwdDecl)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !524, file: !20, line: 1252, baseType: !1330, size: 256, offset: 7296)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !524, file: !20, line: 1253, baseType: !4706, size: 128, offset: 7552)
!4706 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4707, line: 21, baseType: !4708)
!4707 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4708 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4707, line: 19, size: 128, elements: !4709)
!4709 = !{!4710}
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4708, file: !4707, line: 20, baseType: !4711, size: 128)
!4711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 128, elements: !3930)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !524, file: !20, line: 1255, baseType: !13, size: 32, offset: 7680)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !524, file: !20, line: 1261, baseType: !632, size: 256, offset: 7744)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !524, file: !20, line: 1267, baseType: !207, size: 64, offset: 8000)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !524, file: !20, line: 1269, baseType: !470, size: 64, offset: 8064)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !524, file: !20, line: 1271, baseType: !4717, size: 448, offset: 8128)
!4717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1143, line: 63, size: 448, elements: !4718)
!4718 = !{!4719, !4724, !4725, !4726, !4727, !4728, !4729}
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4717, file: !1143, line: 64, baseType: !4720, size: 64)
!4720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4721, size: 64)
!4721 = !DISubroutineType(types: !4722)
!4722 = !{!196, !4723, !1141}
!4723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4717, size: 64)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4717, file: !1143, line: 66, baseType: !4720, size: 64, offset: 64)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4717, file: !1143, line: 69, baseType: !329, size: 64, offset: 128)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4717, file: !1143, line: 70, baseType: !129, size: 32, offset: 192)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4717, file: !1143, line: 71, baseType: !13, size: 32, offset: 224)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4717, file: !1143, line: 74, baseType: !210, size: 128, offset: 256)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4717, file: !1143, line: 85, baseType: !4730, size: 64, offset: 384)
!4730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !524, file: !20, line: 1274, baseType: !636, size: 64, offset: 8576)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !524, file: !20, line: 1280, baseType: !636, size: 64, offset: 8640)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !524, file: !20, line: 1283, baseType: !129, size: 32, offset: 8704)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !524, file: !20, line: 1286, baseType: !3013, size: 32, offset: 8736)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !524, file: !20, line: 1289, baseType: !954, size: 64, offset: 8768)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !524, file: !20, line: 1290, baseType: !1002, size: 64, offset: 8832)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !524, file: !20, line: 1297, baseType: !1796, size: 64, offset: 8896)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !524, file: !20, line: 1304, baseType: !4739, size: 64, offset: 8960)
!4739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4740, line: 49, size: 64, elements: !4741)
!4740 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4741 = !{!4742}
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4739, file: !4740, line: 50, baseType: !4743, size: 64)
!4743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4744, size: 64)
!4744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4740, line: 41, size: 512, align: 512, elements: !4745)
!4745 = !{!4746, !4747, !4752}
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4744, file: !4740, line: 43, baseType: !223, size: 32)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4744, file: !4740, line: 45, baseType: !4748, size: 192, offset: 64)
!4748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4740, line: 29, size: 192, elements: !4749)
!4749 = !{!4750, !4751}
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4748, file: !4740, line: 30, baseType: !210, size: 128)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4748, file: !4740, line: 32, baseType: !329, size: 64, offset: 128)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4744, file: !4740, line: 46, baseType: !329, size: 64, offset: 256)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !524, file: !20, line: 1305, baseType: !4739, size: 64, offset: 9024)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !524, file: !20, line: 1306, baseType: !852, size: 128, align: 64, offset: 9088)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !524, file: !20, line: 1307, baseType: !892, size: 256, offset: 9216)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !524, file: !20, line: 1309, baseType: !632, size: 256, offset: 9472)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !524, file: !20, line: 1314, baseType: !129, size: 32, offset: 9728)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !524, file: !20, line: 1317, baseType: !223, size: 32, align: 512, offset: 10240)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !524, file: !20, line: 1318, baseType: !210, size: 128, offset: 10304)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !524, file: !20, line: 1320, baseType: !223, size: 32, offset: 10432)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !524, file: !20, line: 1321, baseType: !210, size: 128, offset: 10496)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !518, file: !519, line: 73, baseType: !129, size: 32, offset: 128)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !518, file: !519, line: 74, baseType: !4764, size: 64, offset: 192)
!4764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4765, size: 64)
!4765 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1643, line: 42, flags: DIFlagFwdDecl)
!4766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !472, file: !409, line: 141, baseType: !4768, size: 64, offset: 704)
!4768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4769, size: 64)
!4769 = !DISubroutineType(types: !4770)
!4770 = !{!129, !1203, !712}
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !472, file: !409, line: 142, baseType: !4772, size: 64, offset: 768)
!4772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4773, size: 64)
!4773 = !DISubroutineType(types: !4774)
!4774 = !{!407, !407, !4775}
!4775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4776, size: 64)
!4776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !373)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !408, file: !409, line: 96, baseType: !523, size: 64, offset: 832)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !408, file: !409, line: 97, baseType: !196, size: 64, offset: 896)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !408, file: !409, line: 98, baseType: !194, size: 64, offset: 960)
!4780 = !DIDerivedType(tag: DW_TAG_member, scope: !408, file: !409, line: 100, baseType: !4781, size: 128, offset: 1024)
!4781 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !408, file: !409, line: 100, size: 128, elements: !4782)
!4782 = !{!4783, !4784}
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4781, file: !409, line: 101, baseType: !210, size: 128)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4781, file: !409, line: 102, baseType: !4785, size: 64)
!4785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !408, file: !409, line: 104, baseType: !210, size: 128, offset: 1152)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !408, file: !409, line: 105, baseType: !210, size: 128, offset: 1280)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !408, file: !409, line: 113, baseType: !4789, size: 128, offset: 1408)
!4789 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !408, file: !409, line: 109, size: 128, elements: !4790)
!4790 = !{!4791, !4792, !4793}
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4789, file: !409, line: 110, baseType: !878, size: 128)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4789, file: !409, line: 111, baseType: !423, size: 128)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4789, file: !409, line: 112, baseType: !852, size: 128, align: 64)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !401, file: !20, line: 1968, baseType: !4795, size: 64, offset: 64)
!4795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4796, size: 64)
!4796 = !DISubroutineType(types: !4797)
!4797 = !{!207, !407, !372, !4798}
!4798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4799, size: 64)
!4799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4800, line: 10, size: 128, elements: !4801)
!4800 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4801 = !{!4802, !4803}
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4799, file: !4800, line: 11, baseType: !675, size: 64)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4799, file: !4800, line: 12, baseType: !194, size: 64, offset: 64)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !401, file: !20, line: 1969, baseType: !4805, size: 64, offset: 128)
!4805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4806, size: 64)
!4806 = !DISubroutineType(types: !4807)
!4807 = !{!129, !4764, !372, !129}
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !401, file: !20, line: 1970, baseType: !4809, size: 64, offset: 192)
!4809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4810, size: 64)
!4810 = !DISubroutineType(types: !4811)
!4811 = !{!395, !372, !129, !712}
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !401, file: !20, line: 1972, baseType: !4813, size: 64, offset: 256)
!4813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4814, size: 64)
!4814 = !DISubroutineType(types: !4815)
!4815 = !{!129, !407, !293, !129}
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !401, file: !20, line: 1974, baseType: !4817, size: 64, offset: 320)
!4817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4818, size: 64)
!4818 = !DISubroutineType(types: !4819)
!4819 = !{!129, !4764, !372, !407, !335, !712}
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !401, file: !20, line: 1976, baseType: !4821, size: 64, offset: 384)
!4821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4822, size: 64)
!4822 = !DISubroutineType(types: !4823)
!4823 = !{!129, !407, !372, !407}
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !401, file: !20, line: 1977, baseType: !4825, size: 64, offset: 448)
!4825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4826, size: 64)
!4826 = !DISubroutineType(types: !4827)
!4827 = !{!129, !372, !407}
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !401, file: !20, line: 1978, baseType: !4829, size: 64, offset: 512)
!4829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4830, size: 64)
!4830 = !DISubroutineType(types: !4831)
!4831 = !{!129, !4764, !372, !407, !207}
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !401, file: !20, line: 1980, baseType: !4833, size: 64, offset: 576)
!4833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4834, size: 64)
!4834 = !DISubroutineType(types: !4835)
!4835 = !{!129, !4764, !372, !407, !335}
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !401, file: !20, line: 1982, baseType: !4825, size: 64, offset: 640)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !401, file: !20, line: 1983, baseType: !4838, size: 64, offset: 704)
!4838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4839, size: 64)
!4839 = !DISubroutineType(types: !4840)
!4840 = !{!129, !4764, !372, !407, !335, !528}
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !401, file: !20, line: 1985, baseType: !4842, size: 64, offset: 768)
!4842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4843, size: 64)
!4843 = !DISubroutineType(types: !4844)
!4844 = !{!129, !4764, !372, !407, !372, !407, !13}
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !401, file: !20, line: 1987, baseType: !4846, size: 64, offset: 832)
!4846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4847, size: 64)
!4847 = !DISubroutineType(types: !4848)
!4848 = !{!129, !4764, !407, !4849}
!4849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4850, size: 64)
!4850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !20, line: 226, size: 640, elements: !4851)
!4851 = !{!4852, !4853, !4854, !4864, !4873, !4874, !4879, !4880, !4881}
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4850, file: !20, line: 227, baseType: !13, size: 32)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4850, file: !20, line: 228, baseType: !335, size: 16, offset: 32)
!4854 = !DIDerivedType(tag: DW_TAG_member, scope: !4850, file: !20, line: 241, baseType: !4855, size: 32, offset: 64)
!4855 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4850, file: !20, line: 241, size: 32, elements: !4856)
!4856 = !{!4857, !4858}
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4855, file: !20, line: 242, baseType: !378, size: 32)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4855, file: !20, line: 243, baseType: !4859, size: 32)
!4859 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4860, line: 16, baseType: !4861)
!4860 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4861 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4860, line: 14, size: 32, elements: !4862)
!4862 = !{!4863}
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4861, file: !4860, line: 15, baseType: !383, size: 32)
!4864 = !DIDerivedType(tag: DW_TAG_member, scope: !4850, file: !20, line: 245, baseType: !4865, size: 32, offset: 96)
!4865 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4850, file: !20, line: 245, size: 32, elements: !4866)
!4866 = !{!4867, !4868}
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4865, file: !20, line: 246, baseType: !387, size: 32)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4865, file: !20, line: 247, baseType: !4869, size: 32)
!4869 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4860, line: 20, baseType: !4870)
!4870 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4860, line: 18, size: 32, elements: !4871)
!4871 = !{!4872}
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4870, file: !4860, line: 19, baseType: !391, size: 32)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4850, file: !20, line: 249, baseType: !533, size: 64, offset: 128)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4850, file: !20, line: 250, baseType: !4875, size: 128, offset: 192)
!4875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1135, line: 13, size: 128, elements: !4876)
!4876 = !{!4877, !4878}
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4875, file: !1135, line: 14, baseType: !1134, size: 64)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4875, file: !1135, line: 15, baseType: !329, size: 64, offset: 64)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4850, file: !20, line: 251, baseType: !4875, size: 128, offset: 320)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4850, file: !20, line: 252, baseType: !4875, size: 128, offset: 448)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4850, file: !20, line: 259, baseType: !1543, size: 64, offset: 576)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !401, file: !20, line: 1988, baseType: !4883, size: 64, offset: 896)
!4883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4884, size: 64)
!4884 = !DISubroutineType(types: !4885)
!4885 = !{!129, !4764, !1203, !4886, !441, !13}
!4886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4887, size: 64)
!4887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4888, line: 22, size: 1280, elements: !4889)
!4888 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4889 = !{!4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4898, !4899, !4900, !4901, !4902, !4903, !4904, !4905, !4906, !4907, !4908, !4909, !4910}
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4887, file: !4888, line: 23, baseType: !441, size: 32)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4887, file: !4888, line: 24, baseType: !335, size: 16, offset: 32)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4887, file: !4888, line: 25, baseType: !13, size: 32, offset: 64)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4887, file: !4888, line: 26, baseType: !1681, size: 32, offset: 96)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4887, file: !4888, line: 27, baseType: !445, size: 64, offset: 128)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4887, file: !4888, line: 28, baseType: !445, size: 64, offset: 192)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4887, file: !4888, line: 41, baseType: !445, size: 64, offset: 256)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4887, file: !4888, line: 42, baseType: !528, size: 32, offset: 320)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4887, file: !4888, line: 43, baseType: !528, size: 32, offset: 352)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4887, file: !4888, line: 44, baseType: !378, size: 32, offset: 384)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4887, file: !4888, line: 45, baseType: !387, size: 32, offset: 416)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4887, file: !4888, line: 46, baseType: !533, size: 64, offset: 448)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4887, file: !4888, line: 47, baseType: !4875, size: 128, offset: 512)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4887, file: !4888, line: 48, baseType: !4875, size: 128, offset: 640)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4887, file: !4888, line: 49, baseType: !4875, size: 128, offset: 768)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4887, file: !4888, line: 50, baseType: !4875, size: 128, offset: 896)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4887, file: !4888, line: 51, baseType: !445, size: 64, offset: 1024)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4887, file: !4888, line: 52, baseType: !445, size: 64, offset: 1088)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4887, file: !4888, line: 53, baseType: !441, size: 32, offset: 1152)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4887, file: !4888, line: 54, baseType: !441, size: 32, offset: 1184)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4887, file: !4888, line: 55, baseType: !445, size: 64, offset: 1216)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !401, file: !20, line: 1990, baseType: !4912, size: 64, offset: 960)
!4912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4913, size: 64)
!4913 = !DISubroutineType(types: !4914)
!4914 = !{!325, !407, !293, !340}
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !401, file: !20, line: 1991, baseType: !4916, size: 64, offset: 1024)
!4916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4917, size: 64)
!4917 = !DISubroutineType(types: !4918)
!4918 = !{!129, !372, !4919, !445, !445}
!4919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4920, size: 64)
!4920 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !20, line: 55, flags: DIFlagFwdDecl)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !401, file: !20, line: 1993, baseType: !4922, size: 64, offset: 1088)
!4922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4923, size: 64)
!4923 = !DISubroutineType(types: !4924)
!4924 = !{!129, !372, !129}
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !401, file: !20, line: 1994, baseType: !4926, size: 64, offset: 1152)
!4926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4927, size: 64)
!4927 = !DISubroutineType(types: !4928)
!4928 = !{!129, !372, !407, !1543, !13, !335}
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !401, file: !20, line: 1997, baseType: !4930, size: 64, offset: 1216)
!4930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4931, size: 64)
!4931 = !DISubroutineType(types: !4932)
!4932 = !{!129, !4764, !372, !1543, !335}
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !401, file: !20, line: 1999, baseType: !4934, size: 64, offset: 1280)
!4934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4935, size: 64)
!4935 = !DISubroutineType(types: !4936)
!4936 = !{!395, !4764, !407, !129}
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !401, file: !20, line: 2001, baseType: !4938, size: 64, offset: 1344)
!4938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4939, size: 64)
!4939 = !DISubroutineType(types: !4940)
!4940 = !{!129, !4764, !407, !395, !129}
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !401, file: !20, line: 2003, baseType: !4942, size: 64, offset: 1408)
!4942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4943, size: 64)
!4943 = !DISubroutineType(types: !4944)
!4944 = !{!129, !4764, !407, !4945}
!4945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4946, size: 64)
!4946 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !20, line: 76, flags: DIFlagFwdDecl)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !401, file: !20, line: 2005, baseType: !4948, size: 64, offset: 1472)
!4948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4949, size: 64)
!4949 = !DISubroutineType(types: !4950)
!4950 = !{!129, !407, !4945}
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !401, file: !20, line: 2006, baseType: !4952, size: 64, offset: 1536)
!4952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4953, size: 64)
!4953 = !DISubroutineType(types: !4954)
!4954 = !{!4955, !372}
!4955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4956, size: 64)
!4956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !20, line: 3192, size: 192, elements: !4957)
!4957 = !{!4958, !4959}
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4956, file: !20, line: 3193, baseType: !1334, size: 128)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4956, file: !20, line: 3194, baseType: !441, size: 32, offset: 128)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !373, file: !20, line: 655, baseType: !523, size: 64, offset: 448)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !373, file: !20, line: 656, baseType: !368, size: 64, offset: 512)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !373, file: !20, line: 659, baseType: !194, size: 64, offset: 576)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !373, file: !20, line: 663, baseType: !196, size: 64, offset: 640)
!4964 = !DIDerivedType(tag: DW_TAG_member, scope: !373, file: !20, line: 671, baseType: !4965, size: 32, offset: 704)
!4965 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !373, file: !20, line: 671, size: 32, elements: !4966)
!4966 = !{!4967, !4969}
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4965, file: !20, line: 672, baseType: !4968, size: 32)
!4968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4965, file: !20, line: 673, baseType: !13, size: 32)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !373, file: !20, line: 675, baseType: !528, size: 32, offset: 736)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !373, file: !20, line: 676, baseType: !533, size: 64, offset: 768)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !373, file: !20, line: 677, baseType: !4875, size: 128, offset: 832)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !373, file: !20, line: 678, baseType: !4875, size: 128, offset: 960)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !373, file: !20, line: 679, baseType: !4875, size: 128, offset: 1088)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !373, file: !20, line: 680, baseType: !223, size: 32, offset: 1216)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !373, file: !20, line: 681, baseType: !263, size: 16, offset: 1248)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !373, file: !20, line: 682, baseType: !251, size: 8, offset: 1264)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !373, file: !20, line: 683, baseType: !251, size: 8, offset: 1272)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !373, file: !20, line: 684, baseType: !1281, size: 64, offset: 1280)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !373, file: !20, line: 691, baseType: !196, size: 64, offset: 1344)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !373, file: !20, line: 692, baseType: !1293, size: 320, offset: 1408)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !373, file: !20, line: 694, baseType: !196, size: 64, offset: 1728)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !373, file: !20, line: 695, baseType: !196, size: 64, offset: 1792)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !373, file: !20, line: 697, baseType: !878, size: 128, offset: 1856)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !373, file: !20, line: 698, baseType: !210, size: 128, offset: 1984)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !373, file: !20, line: 707, baseType: !210, size: 128, offset: 2112)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !373, file: !20, line: 708, baseType: !210, size: 128, offset: 2240)
!4988 = !DIDerivedType(tag: DW_TAG_member, scope: !373, file: !20, line: 709, baseType: !4989, size: 128, offset: 2368)
!4989 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !373, file: !20, line: 709, size: 128, elements: !4990)
!4990 = !{!4991, !4992}
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4989, file: !20, line: 710, baseType: !1002, size: 64)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4989, file: !20, line: 711, baseType: !852, size: 128, align: 64)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !373, file: !20, line: 713, baseType: !638, size: 64, offset: 2496)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !373, file: !20, line: 714, baseType: !638, size: 64, offset: 2560)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !373, file: !20, line: 715, baseType: !243, size: 32, offset: 2624)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !373, file: !20, line: 716, baseType: !243, size: 32, offset: 2656)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !373, file: !20, line: 717, baseType: !243, size: 32, offset: 2688)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !373, file: !20, line: 719, baseType: !243, size: 32, offset: 2720)
!4999 = !DIDerivedType(tag: DW_TAG_member, scope: !373, file: !20, line: 721, baseType: !5000, size: 64, offset: 2752)
!5000 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !373, file: !20, line: 721, size: 64, elements: !5001)
!5001 = !{!5002, !5003}
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !5000, file: !20, line: 722, baseType: !1827, size: 64)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !5000, file: !20, line: 723, baseType: !1025, size: 64)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !373, file: !20, line: 725, baseType: !5005, size: 64, offset: 2816)
!5005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5006, size: 64)
!5006 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !20, line: 725, flags: DIFlagFwdDecl)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !373, file: !20, line: 726, baseType: !369, size: 1536, align: 64, offset: 2880)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !373, file: !20, line: 727, baseType: !210, size: 128, offset: 4416)
!5009 = !DIDerivedType(tag: DW_TAG_member, scope: !373, file: !20, line: 728, baseType: !5010, size: 64, offset: 4544)
!5010 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !373, file: !20, line: 728, size: 64, elements: !5011)
!5011 = !{!5012, !5013, !5016, !5017}
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !5010, file: !20, line: 729, baseType: !2963, size: 64)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !5010, file: !20, line: 730, baseType: !5014, size: 64)
!5014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5015, size: 64)
!5015 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !20, line: 730, flags: DIFlagFwdDecl)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !5010, file: !20, line: 731, baseType: !293, size: 64)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !5010, file: !20, line: 732, baseType: !13, size: 32)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !373, file: !20, line: 735, baseType: !442, size: 32, offset: 4608)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !373, file: !20, line: 738, baseType: !442, size: 32, offset: 4640)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !373, file: !20, line: 739, baseType: !4702, size: 64, offset: 4672)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !373, file: !20, line: 750, baseType: !194, size: 64, offset: 4736)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !369, file: !20, line: 474, baseType: !1334, size: 128, offset: 64)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !369, file: !20, line: 475, baseType: !1293, size: 320, offset: 192)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !369, file: !20, line: 476, baseType: !192, size: 32, offset: 512)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !369, file: !20, line: 477, baseType: !243, size: 32, offset: 544)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !369, file: !20, line: 482, baseType: !2442, size: 128, offset: 576)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !369, file: !20, line: 483, baseType: !196, size: 64, offset: 704)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !369, file: !20, line: 484, baseType: !196, size: 64, offset: 768)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !369, file: !20, line: 485, baseType: !5030, size: 64, offset: 832)
!5030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5031, size: 64)
!5031 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5032)
!5032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !20, line: 404, size: 1280, elements: !5033)
!5033 = !{!5034, !5038, !5108, !5112, !5116, !5122, !5126, !5130, !5134, !5138, !5142, !5146, !5147, !5151, !5155, !5159, !5164, !5168, !5174, !5175}
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !5032, file: !20, line: 405, baseType: !5035, size: 64)
!5035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5036, size: 64)
!5036 = !DISubroutineType(types: !5037)
!5037 = !{!129, !1394, !1037}
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !5032, file: !20, line: 406, baseType: !5039, size: 64, offset: 64)
!5039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5040, size: 64)
!5040 = !DISubroutineType(types: !5041)
!5041 = !{!129, !1543, !5042}
!5042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5043, size: 64)
!5043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !52, line: 293, size: 1536, elements: !5044)
!5044 = !{!5045, !5075, !5089}
!5045 = !DIDerivedType(tag: DW_TAG_member, scope: !5043, file: !52, line: 295, baseType: !5046, size: 512)
!5046 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5043, file: !52, line: 295, size: 512, elements: !5047)
!5047 = !{!5048, !5074}
!5048 = !DIDerivedType(tag: DW_TAG_member, scope: !5046, file: !52, line: 296, baseType: !5049, size: 448)
!5049 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5046, file: !52, line: 296, size: 448, elements: !5050)
!5050 = !{!5051, !5052, !5061, !5062, !5063, !5072, !5073}
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5049, file: !52, line: 298, baseType: !196, size: 64)
!5052 = !DIDerivedType(tag: DW_TAG_member, scope: !5049, file: !52, line: 299, baseType: !5053, size: 128, offset: 64)
!5053 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5049, file: !52, line: 299, size: 128, elements: !5054)
!5054 = !{!5055, !5056}
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !5053, file: !52, line: 300, baseType: !210, size: 128)
!5056 = !DIDerivedType(tag: DW_TAG_member, scope: !5053, file: !52, line: 302, baseType: !5057, size: 128)
!5057 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5053, file: !52, line: 302, size: 128, elements: !5058)
!5058 = !{!5059, !5060}
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !5057, file: !52, line: 303, baseType: !194, size: 64)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !5057, file: !52, line: 305, baseType: !13, size: 32, offset: 64)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !5049, file: !52, line: 310, baseType: !368, size: 64, offset: 192)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5049, file: !52, line: 311, baseType: !196, size: 64, offset: 256)
!5063 = !DIDerivedType(tag: DW_TAG_member, scope: !5049, file: !52, line: 312, baseType: !5064, size: 64, offset: 320)
!5064 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5049, file: !52, line: 312, size: 64, elements: !5065)
!5065 = !{!5066, !5067}
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5064, file: !52, line: 313, baseType: !194, size: 64)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !5064, file: !52, line: 314, baseType: !5068, size: 64)
!5068 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !52, line: 257, baseType: !5069)
!5069 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !52, line: 255, size: 64, elements: !5070)
!5070 = !{!5071}
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5069, file: !52, line: 256, baseType: !196, size: 64)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !5049, file: !52, line: 316, baseType: !243, size: 32, offset: 384)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !5049, file: !52, line: 317, baseType: !243, size: 32, offset: 416)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5046, file: !52, line: 323, baseType: !1395, size: 512, align: 128)
!5075 = !DIDerivedType(tag: DW_TAG_member, scope: !5043, file: !52, line: 325, baseType: !5076, size: 512, offset: 512)
!5076 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5043, file: !52, line: 325, size: 512, elements: !5077)
!5077 = !{!5078, !5088}
!5078 = !DIDerivedType(tag: DW_TAG_member, scope: !5076, file: !52, line: 326, baseType: !5079, size: 320)
!5079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5076, file: !52, line: 326, size: 320, elements: !5080)
!5080 = !{!5081, !5082, !5083, !5084, !5085, !5086, !5087}
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !5079, file: !52, line: 327, baseType: !196, size: 64)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !5079, file: !52, line: 328, baseType: !196, size: 64, offset: 64)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !5079, file: !52, line: 329, baseType: !196, size: 64, offset: 128)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !5079, file: !52, line: 331, baseType: !243, size: 32, offset: 192)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !5079, file: !52, line: 332, baseType: !243, size: 32, offset: 224)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !5079, file: !52, line: 333, baseType: !243, size: 32, offset: 256)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !5079, file: !52, line: 335, baseType: !13, size: 32, offset: 288)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !5076, file: !52, line: 339, baseType: !1395, size: 512, align: 128)
!5089 = !DIDerivedType(tag: DW_TAG_member, scope: !5043, file: !52, line: 341, baseType: !5090, size: 512, offset: 1024)
!5090 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5043, file: !52, line: 341, size: 512, elements: !5091)
!5091 = !{!5092, !5101, !5107}
!5092 = !DIDerivedType(tag: DW_TAG_member, scope: !5090, file: !52, line: 342, baseType: !5093, size: 384)
!5093 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5090, file: !52, line: 342, size: 384, elements: !5094)
!5094 = !{!5095, !5096, !5097, !5098, !5099, !5100}
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !5093, file: !52, line: 343, baseType: !196, size: 64)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !5093, file: !52, line: 344, baseType: !196, size: 64, offset: 64)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !5093, file: !52, line: 346, baseType: !194, size: 64, offset: 128)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !5093, file: !52, line: 347, baseType: !194, size: 64, offset: 192)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !5093, file: !52, line: 348, baseType: !194, size: 64, offset: 256)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !5093, file: !52, line: 349, baseType: !194, size: 64, offset: 320)
!5101 = !DIDerivedType(tag: DW_TAG_member, scope: !5090, file: !52, line: 352, baseType: !5102, size: 256)
!5102 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5090, file: !52, line: 352, size: 256, elements: !5103)
!5103 = !{!5104, !5105, !5106}
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !5102, file: !52, line: 353, baseType: !196, size: 64)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !5102, file: !52, line: 354, baseType: !196, size: 64, offset: 64)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !5102, file: !52, line: 356, baseType: !210, size: 128, offset: 128)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !5090, file: !52, line: 359, baseType: !1395, size: 512, align: 128)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !5032, file: !20, line: 409, baseType: !5109, size: 64, offset: 128)
!5109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5110, size: 64)
!5110 = !DISubroutineType(types: !5111)
!5111 = !{!129, !368, !1037}
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !5032, file: !20, line: 412, baseType: !5113, size: 64, offset: 192)
!5113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5114, size: 64)
!5114 = !DISubroutineType(types: !5115)
!5115 = !{!712, !368, !5042}
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !5032, file: !20, line: 414, baseType: !5117, size: 64, offset: 256)
!5117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5118, size: 64)
!5118 = !DISubroutineType(types: !5119)
!5119 = !{null, !5120}
!5120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5121, size: 64)
!5121 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !20, line: 310, flags: DIFlagFwdDecl)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !5032, file: !20, line: 416, baseType: !5123, size: 64, offset: 320)
!5123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5124, size: 64)
!5124 = !DISubroutineType(types: !5125)
!5125 = !{!129, !1543, !368, !533, !13, !4451, !2978}
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !5032, file: !20, line: 419, baseType: !5127, size: 64, offset: 384)
!5127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5128, size: 64)
!5128 = !DISubroutineType(types: !5129)
!5129 = !{!129, !1543, !368, !533, !13, !13, !1394, !194}
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !5032, file: !20, line: 424, baseType: !5131, size: 64, offset: 448)
!5131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5132, size: 64)
!5132 = !DISubroutineType(types: !5133)
!5133 = !{!1320, !368, !1320}
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !5032, file: !20, line: 425, baseType: !5135, size: 64, offset: 512)
!5135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5136, size: 64)
!5136 = !DISubroutineType(types: !5137)
!5137 = !{null, !5042, !340, !340}
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !5032, file: !20, line: 426, baseType: !5139, size: 64, offset: 576)
!5139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5140, size: 64)
!5140 = !DISubroutineType(types: !5141)
!5141 = !{!712, !5042, !192}
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !5032, file: !20, line: 427, baseType: !5143, size: 64, offset: 640)
!5143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5144, size: 64)
!5144 = !DISubroutineType(types: !5145)
!5145 = !{null, !5042}
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !5032, file: !20, line: 428, baseType: !1846, size: 64, offset: 704)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !5032, file: !20, line: 433, baseType: !5148, size: 64, offset: 768)
!5148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5149, size: 64)
!5149 = !DISubroutineType(types: !5150)
!5150 = !{!129, !368, !5042, !5042, !80}
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !5032, file: !20, line: 435, baseType: !5152, size: 64, offset: 832)
!5152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5153, size: 64)
!5153 = !DISubroutineType(types: !5154)
!5154 = !{!129, !5042}
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !5032, file: !20, line: 436, baseType: !5156, size: 64, offset: 896)
!5156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5157, size: 64)
!5157 = !DISubroutineType(types: !5158)
!5158 = !{!712, !5042, !340, !340}
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !5032, file: !20, line: 438, baseType: !5160, size: 64, offset: 960)
!5160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5161, size: 64)
!5161 = !DISubroutineType(types: !5162)
!5162 = !{null, !5042, !5163, !5163}
!5163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !5032, file: !20, line: 439, baseType: !5165, size: 64, offset: 1024)
!5165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5166, size: 64)
!5166 = !DISubroutineType(types: !5167)
!5167 = !{!129, !368, !1394}
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !5032, file: !20, line: 442, baseType: !5169, size: 64, offset: 1088)
!5169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5170, size: 64)
!5170 = !DISubroutineType(types: !5171)
!5171 = !{!129, !5172, !1543, !3431}
!5172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5173, size: 64)
!5173 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !20, line: 66, flags: DIFlagFwdDecl)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !5032, file: !20, line: 444, baseType: !2970, size: 64, offset: 1152)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !5032, file: !20, line: 445, baseType: !5176, size: 64, offset: 1216)
!5176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5177, size: 64)
!5177 = !DISubroutineType(types: !5178)
!5178 = !{!129, !1849, !1871}
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !369, file: !20, line: 486, baseType: !196, size: 64, offset: 896)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !369, file: !20, line: 487, baseType: !1293, size: 320, offset: 960)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !369, file: !20, line: 488, baseType: !3013, size: 32, offset: 1280)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !369, file: !20, line: 489, baseType: !223, size: 32, offset: 1312)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !369, file: !20, line: 490, baseType: !210, size: 128, offset: 1344)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !369, file: !20, line: 491, baseType: !194, size: 64, offset: 1472)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !359, file: !319, line: 180, baseType: !5186, size: 64, offset: 320)
!5186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5187, size: 64)
!5187 = !DISubroutineType(types: !5188)
!5188 = !{!325, !1543, !216, !358, !293, !533, !340}
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !359, file: !319, line: 182, baseType: !5186, size: 64, offset: 384)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !359, file: !319, line: 184, baseType: !5191, size: 64, offset: 448)
!5191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5192, size: 64)
!5192 = !DISubroutineType(types: !5193)
!5193 = !{!129, !1543, !216, !358, !1503}
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !347, file: !319, line: 90, baseType: !5195, size: 64, offset: 192)
!5195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !347, file: !319, line: 91, baseType: !5197, size: 64, offset: 256)
!5197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !309, file: !204, line: 120, baseType: !5199, size: 64, offset: 192)
!5199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5200, size: 64)
!5200 = !DISubroutineType(types: !5201)
!5201 = !{!2684, !276}
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !309, file: !204, line: 121, baseType: !5203, size: 64, offset: 256)
!5203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5204, size: 64)
!5204 = !DISubroutineType(types: !5205)
!5205 = !{!2581, !276}
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !309, file: !204, line: 122, baseType: !5207, size: 64, offset: 320)
!5207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5208, size: 64)
!5208 = !DISubroutineType(types: !5209)
!5209 = !{null, !276, !2214, !2215}
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !203, file: !204, line: 70, baseType: !5211, size: 64, offset: 384)
!5211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5212, size: 64)
!5212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !5213, line: 190, size: 1152, elements: !5214)
!5213 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!5214 = !{!5215, !5216, !5217, !5218, !5219, !5220, !5221, !5222, !5306, !5307, !5308, !5309, !5310, !5313}
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5212, file: !5213, line: 191, baseType: !243, size: 32)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !5212, file: !5213, line: 192, baseType: !243, size: 32, offset: 32)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5212, file: !5213, line: 202, baseType: !5211, size: 64, offset: 64)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5212, file: !5213, line: 203, baseType: !207, size: 64, offset: 128)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !5212, file: !5213, line: 205, baseType: !744, size: 192, align: 64, offset: 192)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !5212, file: !5213, line: 207, baseType: !2581, size: 64, offset: 384)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !5212, file: !5213, line: 208, baseType: !13, size: 32, offset: 448)
!5222 = !DIDerivedType(tag: DW_TAG_member, scope: !5212, file: !5213, line: 209, baseType: !5223, size: 256, offset: 512)
!5223 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5212, file: !5213, line: 209, size: 256, elements: !5224)
!5224 = !{!5225, !5234, !5238}
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !5223, file: !5213, line: 210, baseType: !5226, size: 256)
!5226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !5213, line: 153, size: 256, elements: !5227)
!5227 = !{!5228, !5229, !5230, !5233}
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !5226, file: !5213, line: 154, baseType: !196, size: 64)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !5226, file: !5213, line: 156, baseType: !2445, size: 64, offset: 64)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !5226, file: !5213, line: 162, baseType: !5231, size: 64, offset: 128)
!5231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5232, size: 64)
!5232 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !5213, line: 162, flags: DIFlagFwdDecl)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !5226, file: !5213, line: 167, baseType: !196, size: 64, offset: 192)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !5223, file: !5213, line: 211, baseType: !5235, size: 64)
!5235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !5213, line: 170, size: 64, elements: !5236)
!5236 = !{!5237}
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !5235, file: !5213, line: 171, baseType: !5211, size: 64)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5223, file: !5213, line: 212, baseType: !5239, size: 256)
!5239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !5213, line: 174, size: 256, elements: !5240)
!5240 = !{!5241, !5301, !5304, !5305}
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5239, file: !5213, line: 175, baseType: !5242, size: 64)
!5242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5243, size: 64)
!5243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5244)
!5244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !5213, line: 271, size: 768, elements: !5245)
!5245 = !{!5246, !5266, !5270, !5274, !5278, !5282, !5286, !5290, !5291, !5292, !5293, !5297}
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5244, file: !5213, line: 276, baseType: !5247, size: 64)
!5247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5248, size: 64)
!5248 = !DISubroutineType(types: !5249)
!5249 = !{!129, !5250}
!5250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5251, size: 64)
!5251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !5213, line: 251, size: 1216, elements: !5252)
!5252 = !{!5253, !5254, !5255, !5256, !5257, !5258, !5259, !5260, !5261, !5262, !5263, !5264, !5265}
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !5251, file: !5213, line: 253, baseType: !5211, size: 64)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !5251, file: !5213, line: 254, baseType: !1543, size: 64, offset: 64)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !5251, file: !5213, line: 255, baseType: !1074, size: 64, offset: 128)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5251, file: !5213, line: 256, baseType: !194, size: 64, offset: 192)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5251, file: !5213, line: 259, baseType: !632, size: 256, offset: 256)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !5251, file: !5213, line: 260, baseType: !632, size: 256, offset: 512)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5251, file: !5213, line: 261, baseType: !129, size: 32, offset: 768)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5251, file: !5213, line: 262, baseType: !210, size: 128, offset: 832)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !5251, file: !5213, line: 263, baseType: !293, size: 64, offset: 960)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !5251, file: !5213, line: 265, baseType: !340, size: 64, offset: 1024)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !5251, file: !5213, line: 266, baseType: !712, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !5251, file: !5213, line: 267, baseType: !712, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !5251, file: !5213, line: 268, baseType: !3171, size: 64, offset: 1152)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5244, file: !5213, line: 277, baseType: !5267, size: 64, offset: 64)
!5267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5268, size: 64)
!5268 = !DISubroutineType(types: !5269)
!5269 = !{null, !5250}
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !5244, file: !5213, line: 290, baseType: !5271, size: 64, offset: 128)
!5271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5272, size: 64)
!5272 = !DISubroutineType(types: !5273)
!5273 = !{!129, !1074, !194}
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !5244, file: !5213, line: 292, baseType: !5275, size: 64, offset: 192)
!5275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5276, size: 64)
!5276 = !DISubroutineType(types: !5277)
!5277 = !{!194, !1074, !1840}
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !5244, file: !5213, line: 293, baseType: !5279, size: 64, offset: 256)
!5279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5280, size: 64)
!5280 = !DISubroutineType(types: !5281)
!5281 = !{!194, !1074, !194, !1840}
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !5244, file: !5213, line: 294, baseType: !5283, size: 64, offset: 320)
!5283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5284, size: 64)
!5284 = !DISubroutineType(types: !5285)
!5285 = !{null, !1074, !194}
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !5244, file: !5213, line: 296, baseType: !5287, size: 64, offset: 384)
!5287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5288, size: 64)
!5288 = !DISubroutineType(types: !5289)
!5289 = !{!325, !5250, !293, !340, !533}
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !5244, file: !5213, line: 306, baseType: !340, size: 64, offset: 448)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !5244, file: !5213, line: 313, baseType: !712, size: 8, offset: 512)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5244, file: !5213, line: 314, baseType: !5287, size: 64, offset: 576)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5244, file: !5213, line: 317, baseType: !5294, size: 64, offset: 640)
!5294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5295, size: 64)
!5295 = !DISubroutineType(types: !5296)
!5296 = !{!2915, !5250, !2917}
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !5244, file: !5213, line: 320, baseType: !5298, size: 64, offset: 704)
!5298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5299, size: 64)
!5299 = !DISubroutineType(types: !5300)
!5300 = !{!129, !5250, !1503}
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5239, file: !5213, line: 176, baseType: !5302, size: 64, offset: 64)
!5302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5303, size: 64)
!5303 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !5213, line: 35, flags: DIFlagFwdDecl)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5239, file: !5213, line: 177, baseType: !533, size: 64, offset: 128)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !5239, file: !5213, line: 178, baseType: !5211, size: 64, offset: 192)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5212, file: !5213, line: 215, baseType: !194, size: 64, offset: 768)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5212, file: !5213, line: 221, baseType: !445, size: 64, offset: 832)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5212, file: !5213, line: 223, baseType: !263, size: 16, offset: 896)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5212, file: !5213, line: 224, baseType: !335, size: 16, offset: 912)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !5212, file: !5213, line: 225, baseType: !5311, size: 64, offset: 960)
!5311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5312, size: 64)
!5312 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !5213, line: 36, flags: DIFlagFwdDecl)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !5212, file: !5213, line: 227, baseType: !852, size: 128, align: 64, offset: 1024)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !203, file: !204, line: 71, baseType: !5315, size: 32, offset: 448)
!5315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !5316, line: 19, size: 32, elements: !5317)
!5316 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!5317 = !{!5318}
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5315, file: !5316, line: 20, baseType: !1593, size: 32)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !203, file: !204, line: 73, baseType: !13, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !203, file: !204, line: 74, baseType: !13, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !203, file: !204, line: 75, baseType: !13, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !203, file: !204, line: 76, baseType: !13, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !203, file: !204, line: 77, baseType: !13, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_registered", scope: !200, file: !162, line: 386, baseType: !712, size: 8, offset: 512)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ia_ranges", scope: !200, file: !162, line: 387, baseType: !13, size: 32, offset: 544)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "ia_range", scope: !200, file: !162, line: 388, baseType: !5327, offset: 576)
!5327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5328, elements: !1619)
!5328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_range", file: !162, line: 378, size: 640, elements: !5329)
!5329 = !{!5330, !5331, !5332}
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !5328, file: !162, line: 379, baseType: !203, size: 512)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "sector", scope: !5328, file: !162, line: 380, baseType: !1320, size: 64, offset: 512)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sectors", scope: !5328, file: !162, line: 381, baseType: !1320, size: 64, offset: 576)
!5333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5334, size: 64)
!5334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_ia_range_sysfs_entry", file: !2, line: 28, size: 192, elements: !5335)
!5335 = !{!5336, !5337}
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5334, file: !2, line: 29, baseType: !331, size: 128)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !5334, file: !2, line: 30, baseType: !5338, size: 64, offset: 128)
!5338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5339, size: 64)
!5339 = !DISubroutineType(types: !5340)
!5340 = !{!325, !5341, !293}
!5341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5328, size: 64)
!5342 = !{!0, !5343, !5346, !5351, !5353, !5355, !7, !5357, !5359, !5361, !5364, !5366, !5369, !5372, !5374, !5376, !5381, !5383, !5388, !5391}
!5343 = !DIGlobalVariableExpression(var: !5344, expr: !DIExpression())
!5344 = distinct !DIGlobalVariable(scope: null, file: !2, line: 126, type: !5345, isLocal: true, isDefinition: true)
!5345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !294)
!5346 = !DIGlobalVariableExpression(var: !5347, expr: !DIExpression())
!5347 = distinct !DIGlobalVariable(scope: null, file: !2, line: 127, type: !5348, isLocal: true, isDefinition: true)
!5348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !5349)
!5349 = !{!5350}
!5350 = !DISubrange(count: 26)
!5351 = !DIGlobalVariableExpression(var: !5352, expr: !DIExpression())
!5352 = distinct !DIGlobalVariable(scope: null, file: !2, line: 137, type: !5345, isLocal: true, isDefinition: true)
!5353 = !DIGlobalVariableExpression(var: !5354, expr: !DIExpression())
!5354 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_disk_alloc_independent_access_ranges348", scope: !9, file: !2, line: 274, type: !194, isLocal: true, isDefinition: true)
!5355 = !DIGlobalVariableExpression(var: !5356, expr: !DIExpression())
!5356 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_disk_set_independent_access_ranges349", scope: !9, file: !2, line: 318, type: !194, isLocal: true, isDefinition: true)
!5357 = !DIGlobalVariableExpression(var: !5358, expr: !DIExpression())
!5358 = distinct !DIGlobalVariable(name: "blk_ia_range_ktype", scope: !9, file: !2, line: 78, type: !308, isLocal: true, isDefinition: true)
!5359 = !DIGlobalVariableExpression(var: !5360, expr: !DIExpression())
!5360 = distinct !DIGlobalVariable(name: "blk_ia_range_sysfs_ops", scope: !9, file: !2, line: 61, type: !317, isLocal: true, isDefinition: true)
!5361 = !DIGlobalVariableExpression(var: !5362, expr: !DIExpression())
!5362 = distinct !DIGlobalVariable(name: "blk_ia_range_groups", scope: !9, file: !2, line: 48, type: !5363, isLocal: true, isDefinition: true)
!5363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, size: 128, elements: !751)
!5364 = !DIGlobalVariableExpression(var: !5365, expr: !DIExpression())
!5365 = distinct !DIGlobalVariable(name: "blk_ia_range_group", scope: !9, file: !2, line: 48, type: !346, isLocal: true, isDefinition: true)
!5366 = !DIGlobalVariableExpression(var: !5367, expr: !DIExpression())
!5367 = distinct !DIGlobalVariable(name: "blk_ia_range_attrs", scope: !9, file: !2, line: 43, type: !5368, isLocal: true, isDefinition: true)
!5368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 192, elements: !294)
!5369 = !DIGlobalVariableExpression(var: !5370, expr: !DIExpression())
!5370 = distinct !DIGlobalVariable(scope: null, file: !2, line: 34, type: !5371, isLocal: true, isDefinition: true)
!5371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !753)
!5372 = !DIGlobalVariableExpression(var: !5373, expr: !DIExpression())
!5373 = distinct !DIGlobalVariable(name: "blk_ia_range_sector_entry", scope: !9, file: !2, line: 33, type: !5334, isLocal: true, isDefinition: true)
!5374 = !DIGlobalVariableExpression(var: !5375, expr: !DIExpression())
!5375 = distinct !DIGlobalVariable(scope: null, file: !2, line: 18, type: !1701, isLocal: true, isDefinition: true)
!5376 = !DIGlobalVariableExpression(var: !5377, expr: !DIExpression())
!5377 = distinct !DIGlobalVariable(scope: null, file: !2, line: 39, type: !5378, isLocal: true, isDefinition: true)
!5378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !5379)
!5379 = !{!5380}
!5380 = !DISubrange(count: 11)
!5381 = !DIGlobalVariableExpression(var: !5382, expr: !DIExpression())
!5382 = distinct !DIGlobalVariable(name: "blk_ia_range_nr_sectors_entry", scope: !9, file: !2, line: 38, type: !5334, isLocal: true, isDefinition: true)
!5383 = !DIGlobalVariableExpression(var: !5384, expr: !DIExpression())
!5384 = distinct !DIGlobalVariable(scope: null, file: !182, line: 480, type: !5385, isLocal: true, isDefinition: true)
!5385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !5386)
!5386 = !{!5387}
!5387 = !DISubrange(count: 21)
!5388 = !DIGlobalVariableExpression(var: !5389, expr: !DIExpression())
!5389 = distinct !DIGlobalVariable(scope: null, file: !2, line: 212, type: !5390, isLocal: true, isDefinition: true)
!5390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !3069)
!5391 = !DIGlobalVariableExpression(var: !5392, expr: !DIExpression())
!5392 = distinct !DIGlobalVariable(scope: null, file: !2, line: 226, type: !567, isLocal: true, isDefinition: true)
!5393 = !{i32 7, !"Dwarf Version", i32 5}
!5394 = !{i32 2, !"Debug Info Version", i32 3}
!5395 = !{i32 1, !"wchar_size", i32 2}
!5396 = !{i32 8, !"cf-protection-branch", i32 1}
!5397 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5398 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5399 = !{i32 1, !"Code Model", i32 2}
!5400 = !{i32 1, !"override-stack-alignment", i32 8}
!5401 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5402 = distinct !DISubprogram(name: "disk_register_independent_access_ranges", scope: !2, file: !2, line: 108, type: !5403, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5405)
!5403 = !DISubroutineType(types: !5404)
!5404 = !{!129, !1323}
!5405 = !{!5406, !5407, !5408, !5409, !5410, !5411, !5413}
!5406 = !DILocalVariable(name: "disk", arg: 1, scope: !5402, file: !2, line: 108, type: !1323)
!5407 = !DILocalVariable(name: "iars", scope: !5402, file: !2, line: 110, type: !199)
!5408 = !DILocalVariable(name: "q", scope: !5402, file: !2, line: 111, type: !1935)
!5409 = !DILocalVariable(name: "i", scope: !5402, file: !2, line: 112, type: !129)
!5410 = !DILocalVariable(name: "ret", scope: !5402, file: !2, line: 112, type: !129)
!5411 = !DILocalVariable(name: "__ret_warn_on", scope: !5412, file: !2, line: 124, type: !129)
!5412 = distinct !DILexicalBlock(scope: !5402, file: !2, line: 124, column: 2)
!5413 = !DILocalVariable(name: "__flags", scope: !5414, file: !2, line: 124, type: !129)
!5414 = distinct !DILexicalBlock(scope: !5415, file: !2, line: 124, column: 2)
!5415 = distinct !DILexicalBlock(scope: !5412, file: !2, line: 124, column: 2)
!5416 = !DILocation(line: 108, column: 61, scope: !5402)
!5417 = !DILocation(line: 110, column: 2, scope: !5402)
!5418 = !DILocation(line: 110, column: 40, scope: !5402)
!5419 = !DILocation(line: 110, column: 47, scope: !5402)
!5420 = !DILocation(line: 110, column: 53, scope: !5402)
!5421 = !DILocation(line: 111, column: 2, scope: !5402)
!5422 = !DILocation(line: 111, column: 24, scope: !5402)
!5423 = !DILocation(line: 111, column: 28, scope: !5402)
!5424 = !DILocation(line: 111, column: 34, scope: !5402)
!5425 = !DILocation(line: 112, column: 2, scope: !5402)
!5426 = !DILocation(line: 112, column: 6, scope: !5402)
!5427 = !DILocation(line: 112, column: 9, scope: !5402)
!5428 = !DILocation(line: 114, column: 2, scope: !5402)
!5429 = !DILocation(line: 114, column: 2, scope: !5430)
!5430 = distinct !DILexicalBlock(scope: !5402, file: !2, line: 114, column: 2)
!5431 = !DILocation(line: 115, column: 2, scope: !5402)
!5432 = !DILocation(line: 115, column: 2, scope: !5433)
!5433 = distinct !DILexicalBlock(scope: !5402, file: !2, line: 115, column: 2)
!5434 = !DILocation(line: 117, column: 7, scope: !5435)
!5435 = distinct !DILexicalBlock(scope: !5402, file: !2, line: 117, column: 6)
!5436 = !DILocation(line: 117, column: 6, scope: !5402)
!5437 = !DILocation(line: 118, column: 3, scope: !5435)
!5438 = !DILocation(line: 124, column: 2, scope: !5412)
!5439 = !{i8 0, i8 2}
!5440 = !DILocation(line: 124, column: 2, scope: !5415)
!5441 = !DILocation(line: 124, column: 2, scope: !5414)
!5442 = !DILocation(line: 124, column: 2, scope: !5443)
!5443 = distinct !DILexicalBlock(scope: !5414, file: !2, line: 124, column: 2)
!5444 = !DILocation(line: 124, column: 2, scope: !5445)
!5445 = distinct !DILexicalBlock(scope: !5414, file: !2, line: 124, column: 2)
!5446 = !{i64 2156027249, i64 2156027278, i64 2156027324, i64 2156027382, i64 2156027436, i64 2156027490, i64 2156027545, i64 2156027576, i64 2156027884, i64 2156027890, i64 2156027937, i64 2156027960, i64 2156027986}
!5447 = !DILocation(line: 124, column: 2, scope: !5448)
!5448 = distinct !DILexicalBlock(scope: !5414, file: !2, line: 124, column: 2)
!5449 = !DILocation(line: 124, column: 2, scope: !5402)
!5450 = !DILocation(line: 125, column: 30, scope: !5402)
!5451 = !DILocation(line: 125, column: 36, scope: !5402)
!5452 = !DILocation(line: 126, column: 9, scope: !5402)
!5453 = !DILocation(line: 126, column: 15, scope: !5402)
!5454 = !DILocation(line: 125, column: 8, scope: !5402)
!5455 = !DILocation(line: 125, column: 6, scope: !5402)
!5456 = !DILocation(line: 128, column: 6, scope: !5457)
!5457 = distinct !DILexicalBlock(scope: !5402, file: !2, line: 128, column: 6)
!5458 = !DILocation(line: 128, column: 6, scope: !5402)
!5459 = !DILocation(line: 129, column: 3, scope: !5460)
!5460 = distinct !DILexicalBlock(scope: !5457, file: !2, line: 128, column: 11)
!5461 = !DILocation(line: 129, column: 9, scope: !5460)
!5462 = !DILocation(line: 129, column: 19, scope: !5460)
!5463 = !DILocation(line: 130, column: 16, scope: !5460)
!5464 = !DILocation(line: 130, column: 22, scope: !5460)
!5465 = !DILocation(line: 130, column: 3, scope: !5460)
!5466 = !DILocation(line: 131, column: 10, scope: !5460)
!5467 = !DILocation(line: 131, column: 3, scope: !5460)
!5468 = !DILocation(line: 134, column: 9, scope: !5469)
!5469 = distinct !DILexicalBlock(scope: !5402, file: !2, line: 134, column: 2)
!5470 = !DILocation(line: 134, column: 7, scope: !5469)
!5471 = !DILocation(line: 134, column: 14, scope: !5472)
!5472 = distinct !DILexicalBlock(scope: !5469, file: !2, line: 134, column: 2)
!5473 = !DILocation(line: 134, column: 18, scope: !5472)
!5474 = !DILocation(line: 134, column: 24, scope: !5472)
!5475 = !DILocation(line: 134, column: 16, scope: !5472)
!5476 = !DILocation(line: 134, column: 2, scope: !5469)
!5477 = !DILocation(line: 135, column: 31, scope: !5478)
!5478 = distinct !DILexicalBlock(scope: !5472, file: !2, line: 134, column: 43)
!5479 = !DILocation(line: 135, column: 37, scope: !5478)
!5480 = !DILocation(line: 135, column: 46, scope: !5478)
!5481 = !DILocation(line: 135, column: 49, scope: !5478)
!5482 = !DILocation(line: 136, column: 31, scope: !5478)
!5483 = !DILocation(line: 136, column: 37, scope: !5478)
!5484 = !DILocation(line: 137, column: 15, scope: !5478)
!5485 = !DILocation(line: 135, column: 9, scope: !5478)
!5486 = !DILocation(line: 135, column: 7, scope: !5478)
!5487 = !DILocation(line: 138, column: 7, scope: !5488)
!5488 = distinct !DILexicalBlock(scope: !5478, file: !2, line: 138, column: 7)
!5489 = !DILocation(line: 138, column: 7, scope: !5478)
!5490 = !DILocation(line: 139, column: 4, scope: !5491)
!5491 = distinct !DILexicalBlock(scope: !5488, file: !2, line: 138, column: 12)
!5492 = !DILocation(line: 139, column: 11, scope: !5491)
!5493 = !DILocation(line: 139, column: 15, scope: !5491)
!5494 = !DILocation(line: 140, column: 18, scope: !5491)
!5495 = !DILocation(line: 140, column: 24, scope: !5491)
!5496 = !DILocation(line: 140, column: 33, scope: !5491)
!5497 = !DILocation(line: 140, column: 36, scope: !5491)
!5498 = !DILocation(line: 140, column: 5, scope: !5491)
!5499 = distinct !{!5499, !5490, !5500, !5501, !5502}
!5500 = !DILocation(line: 140, column: 40, scope: !5491)
!5501 = !{!"llvm.loop.mustprogress"}
!5502 = !{!"llvm.loop.unroll.disable"}
!5503 = !DILocation(line: 141, column: 17, scope: !5491)
!5504 = !DILocation(line: 141, column: 23, scope: !5491)
!5505 = !DILocation(line: 141, column: 4, scope: !5491)
!5506 = !DILocation(line: 142, column: 17, scope: !5491)
!5507 = !DILocation(line: 142, column: 23, scope: !5491)
!5508 = !DILocation(line: 142, column: 4, scope: !5491)
!5509 = !DILocation(line: 143, column: 11, scope: !5491)
!5510 = !DILocation(line: 143, column: 4, scope: !5491)
!5511 = !DILocation(line: 145, column: 2, scope: !5478)
!5512 = !DILocation(line: 134, column: 39, scope: !5472)
!5513 = !DILocation(line: 134, column: 2, scope: !5472)
!5514 = distinct !{!5514, !5476, !5515, !5501, !5502}
!5515 = !DILocation(line: 145, column: 2, scope: !5469)
!5516 = !DILocation(line: 147, column: 2, scope: !5402)
!5517 = !DILocation(line: 147, column: 8, scope: !5402)
!5518 = !DILocation(line: 147, column: 25, scope: !5402)
!5519 = !DILocation(line: 149, column: 2, scope: !5402)
!5520 = !DILocation(line: 150, column: 1, scope: !5402)
!5521 = !DISubprogram(name: "kobject_init_and_add", scope: !204, file: !204, line: 96, type: !5522, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5522 = !DISubroutineType(types: !5523)
!5523 = !{!129, !216, !307, !216, !207, null}
!5524 = !DISubprogram(name: "kobject_put", scope: !204, file: !204, line: 110, type: !313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5525 = !DISubprogram(name: "kobject_del", scope: !204, file: !204, line: 101, type: !313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5526 = distinct !DISubprogram(name: "disk_unregister_independent_access_ranges", scope: !2, file: !2, line: 152, type: !3360, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5527)
!5527 = !{!5528, !5529, !5530, !5531}
!5528 = !DILocalVariable(name: "disk", arg: 1, scope: !5526, file: !2, line: 152, type: !1323)
!5529 = !DILocalVariable(name: "q", scope: !5526, file: !2, line: 154, type: !1935)
!5530 = !DILocalVariable(name: "iars", scope: !5526, file: !2, line: 155, type: !199)
!5531 = !DILocalVariable(name: "i", scope: !5526, file: !2, line: 156, type: !129)
!5532 = !DILocation(line: 152, column: 64, scope: !5526)
!5533 = !DILocation(line: 154, column: 2, scope: !5526)
!5534 = !DILocation(line: 154, column: 24, scope: !5526)
!5535 = !DILocation(line: 154, column: 28, scope: !5526)
!5536 = !DILocation(line: 154, column: 34, scope: !5526)
!5537 = !DILocation(line: 155, column: 2, scope: !5526)
!5538 = !DILocation(line: 155, column: 40, scope: !5526)
!5539 = !DILocation(line: 155, column: 47, scope: !5526)
!5540 = !DILocation(line: 155, column: 53, scope: !5526)
!5541 = !DILocation(line: 156, column: 2, scope: !5526)
!5542 = !DILocation(line: 156, column: 6, scope: !5526)
!5543 = !DILocation(line: 158, column: 2, scope: !5526)
!5544 = !DILocation(line: 158, column: 2, scope: !5545)
!5545 = distinct !DILexicalBlock(scope: !5526, file: !2, line: 158, column: 2)
!5546 = !DILocation(line: 159, column: 2, scope: !5526)
!5547 = !DILocation(line: 159, column: 2, scope: !5548)
!5548 = distinct !DILexicalBlock(scope: !5526, file: !2, line: 159, column: 2)
!5549 = !DILocation(line: 161, column: 7, scope: !5550)
!5550 = distinct !DILexicalBlock(scope: !5526, file: !2, line: 161, column: 6)
!5551 = !DILocation(line: 161, column: 6, scope: !5526)
!5552 = !DILocation(line: 162, column: 3, scope: !5550)
!5553 = !DILocation(line: 164, column: 6, scope: !5554)
!5554 = distinct !DILexicalBlock(scope: !5526, file: !2, line: 164, column: 6)
!5555 = !DILocation(line: 164, column: 12, scope: !5554)
!5556 = !DILocation(line: 164, column: 6, scope: !5526)
!5557 = !DILocation(line: 165, column: 10, scope: !5558)
!5558 = distinct !DILexicalBlock(scope: !5559, file: !2, line: 165, column: 3)
!5559 = distinct !DILexicalBlock(scope: !5554, file: !2, line: 164, column: 30)
!5560 = !DILocation(line: 165, column: 8, scope: !5558)
!5561 = !DILocation(line: 165, column: 15, scope: !5562)
!5562 = distinct !DILexicalBlock(scope: !5558, file: !2, line: 165, column: 3)
!5563 = !DILocation(line: 165, column: 19, scope: !5562)
!5564 = !DILocation(line: 165, column: 25, scope: !5562)
!5565 = !DILocation(line: 165, column: 17, scope: !5562)
!5566 = !DILocation(line: 165, column: 3, scope: !5558)
!5567 = !DILocation(line: 166, column: 17, scope: !5562)
!5568 = !DILocation(line: 166, column: 23, scope: !5562)
!5569 = !DILocation(line: 166, column: 32, scope: !5562)
!5570 = !DILocation(line: 166, column: 35, scope: !5562)
!5571 = !DILocation(line: 166, column: 4, scope: !5562)
!5572 = !DILocation(line: 165, column: 40, scope: !5562)
!5573 = !DILocation(line: 165, column: 3, scope: !5562)
!5574 = distinct !{!5574, !5566, !5575, !5501, !5502}
!5575 = !DILocation(line: 166, column: 39, scope: !5558)
!5576 = !DILocation(line: 167, column: 16, scope: !5559)
!5577 = !DILocation(line: 167, column: 22, scope: !5559)
!5578 = !DILocation(line: 167, column: 3, scope: !5559)
!5579 = !DILocation(line: 168, column: 16, scope: !5559)
!5580 = !DILocation(line: 168, column: 22, scope: !5559)
!5581 = !DILocation(line: 168, column: 3, scope: !5559)
!5582 = !DILocation(line: 169, column: 2, scope: !5559)
!5583 = !DILocation(line: 170, column: 9, scope: !5584)
!5584 = distinct !DILexicalBlock(scope: !5554, file: !2, line: 169, column: 9)
!5585 = !DILocation(line: 170, column: 3, scope: !5584)
!5586 = !DILocation(line: 173, column: 2, scope: !5526)
!5587 = !DILocation(line: 173, column: 8, scope: !5526)
!5588 = !DILocation(line: 173, column: 18, scope: !5526)
!5589 = !DILocation(line: 174, column: 1, scope: !5526)
!5590 = !DISubprogram(name: "kfree", scope: !182, file: !182, line: 227, type: !5591, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5591 = !DISubroutineType(types: !5592)
!5592 = !{null, !2581}
!5593 = distinct !DISubprogram(name: "disk_alloc_independent_access_ranges", scope: !2, file: !2, line: 264, type: !5594, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5596)
!5594 = !DISubroutineType(types: !5595)
!5595 = !{!199, !1323, !129}
!5596 = !{!5597, !5598, !5599}
!5597 = !DILocalVariable(name: "disk", arg: 1, scope: !5593, file: !2, line: 264, type: !1323)
!5598 = !DILocalVariable(name: "nr_ia_ranges", arg: 2, scope: !5593, file: !2, line: 264, type: !129)
!5599 = !DILocalVariable(name: "iars", scope: !5593, file: !2, line: 266, type: !199)
!5600 = !DILocation(line: 264, column: 54, scope: !5593)
!5601 = !DILocation(line: 264, column: 64, scope: !5593)
!5602 = !DILocation(line: 266, column: 2, scope: !5593)
!5603 = !DILocation(line: 266, column: 40, scope: !5593)
!5604 = !DILocation(line: 268, column: 22, scope: !5593)
!5605 = !DILocation(line: 269, column: 20, scope: !5593)
!5606 = !DILocation(line: 269, column: 26, scope: !5593)
!5607 = !DILocation(line: 269, column: 33, scope: !5593)
!5608 = !DILocation(line: 268, column: 9, scope: !5593)
!5609 = !DILocation(line: 268, column: 7, scope: !5593)
!5610 = !DILocation(line: 270, column: 6, scope: !5611)
!5611 = distinct !DILexicalBlock(scope: !5593, file: !2, line: 270, column: 6)
!5612 = !DILocation(line: 270, column: 6, scope: !5593)
!5613 = !DILocation(line: 271, column: 24, scope: !5611)
!5614 = !DILocation(line: 271, column: 3, scope: !5611)
!5615 = !DILocation(line: 271, column: 9, scope: !5611)
!5616 = !DILocation(line: 271, column: 22, scope: !5611)
!5617 = !DILocation(line: 272, column: 9, scope: !5593)
!5618 = !DILocation(line: 273, column: 1, scope: !5593)
!5619 = !DILocation(line: 272, column: 2, scope: !5593)
!5620 = distinct !DISubprogram(name: "kzalloc_node", scope: !182, file: !182, line: 730, type: !5621, scopeLine: 731, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5623)
!5621 = !DISubroutineType(types: !5622)
!5622 = !{!194, !340, !192, !129}
!5623 = !{!5624, !5625, !5626}
!5624 = !DILocalVariable(name: "size", arg: 1, scope: !5620, file: !182, line: 730, type: !340)
!5625 = !DILocalVariable(name: "flags", arg: 2, scope: !5620, file: !182, line: 730, type: !192)
!5626 = !DILocalVariable(name: "node", arg: 3, scope: !5620, file: !182, line: 730, type: !129)
!5627 = !DILocation(line: 730, column: 57, scope: !5620)
!5628 = !DILocation(line: 730, column: 69, scope: !5620)
!5629 = !DILocation(line: 730, column: 80, scope: !5620)
!5630 = !DILocation(line: 732, column: 22, scope: !5620)
!5631 = !DILocation(line: 732, column: 28, scope: !5620)
!5632 = !DILocation(line: 732, column: 34, scope: !5620)
!5633 = !DILocation(line: 732, column: 48, scope: !5620)
!5634 = !DILocation(line: 732, column: 9, scope: !5620)
!5635 = !DILocation(line: 732, column: 2, scope: !5620)
!5636 = distinct !DISubprogram(name: "size_add", scope: !5637, file: !5637, line: 208, type: !5638, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5640)
!5637 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!5638 = !DISubroutineType(types: !5639)
!5639 = !{!340, !340, !340}
!5640 = !{!5641, !5642, !5643}
!5641 = !DILocalVariable(name: "addend1", arg: 1, scope: !5636, file: !5637, line: 208, type: !340)
!5642 = !DILocalVariable(name: "addend2", arg: 2, scope: !5636, file: !5637, line: 208, type: !340)
!5643 = !DILocalVariable(name: "bytes", scope: !5636, file: !5637, line: 210, type: !340)
!5644 = !DILocation(line: 208, column: 51, scope: !5636)
!5645 = !DILocation(line: 208, column: 67, scope: !5636)
!5646 = !DILocation(line: 210, column: 2, scope: !5636)
!5647 = !DILocation(line: 210, column: 9, scope: !5636)
!5648 = !DILocation(line: 212, column: 6, scope: !5649)
!5649 = distinct !DILexicalBlock(scope: !5636, file: !5637, line: 212, column: 6)
!5650 = !DILocation(line: 212, column: 6, scope: !5636)
!5651 = !DILocation(line: 213, column: 3, scope: !5649)
!5652 = !DILocation(line: 215, column: 9, scope: !5636)
!5653 = !DILocation(line: 215, column: 2, scope: !5636)
!5654 = !DILocation(line: 216, column: 1, scope: !5636)
!5655 = distinct !DISubprogram(name: "size_mul", scope: !5637, file: !5637, line: 189, type: !5638, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5656)
!5656 = !{!5657, !5658, !5659}
!5657 = !DILocalVariable(name: "factor1", arg: 1, scope: !5655, file: !5637, line: 189, type: !340)
!5658 = !DILocalVariable(name: "factor2", arg: 2, scope: !5655, file: !5637, line: 189, type: !340)
!5659 = !DILocalVariable(name: "bytes", scope: !5655, file: !5637, line: 191, type: !340)
!5660 = !DILocation(line: 189, column: 51, scope: !5655)
!5661 = !DILocation(line: 189, column: 67, scope: !5655)
!5662 = !DILocation(line: 191, column: 2, scope: !5655)
!5663 = !DILocation(line: 191, column: 9, scope: !5655)
!5664 = !DILocation(line: 193, column: 6, scope: !5665)
!5665 = distinct !DILexicalBlock(scope: !5655, file: !5637, line: 193, column: 6)
!5666 = !DILocation(line: 193, column: 6, scope: !5655)
!5667 = !DILocation(line: 194, column: 3, scope: !5665)
!5668 = !DILocation(line: 196, column: 9, scope: !5655)
!5669 = !DILocation(line: 196, column: 2, scope: !5655)
!5670 = !DILocation(line: 197, column: 1, scope: !5655)
!5671 = distinct !DISubprogram(name: "disk_set_independent_access_ranges", scope: !2, file: !2, line: 287, type: !5672, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5674)
!5672 = !DISubroutineType(types: !5673)
!5673 = !{null, !1323, !199}
!5674 = !{!5675, !5676, !5677, !5678}
!5675 = !DILocalVariable(name: "disk", arg: 1, scope: !5671, file: !2, line: 287, type: !1323)
!5676 = !DILocalVariable(name: "iars", arg: 2, scope: !5671, file: !2, line: 288, type: !199)
!5677 = !DILocalVariable(name: "q", scope: !5671, file: !2, line: 290, type: !1935)
!5678 = !DILabel(scope: !5671, name: "unlock", file: !2, line: 314)
!5679 = !DILocation(line: 287, column: 57, scope: !5671)
!5680 = !DILocation(line: 288, column: 43, scope: !5671)
!5681 = !DILocation(line: 290, column: 2, scope: !5671)
!5682 = !DILocation(line: 290, column: 24, scope: !5671)
!5683 = !DILocation(line: 290, column: 28, scope: !5671)
!5684 = !DILocation(line: 290, column: 34, scope: !5671)
!5685 = !DILocation(line: 292, column: 14, scope: !5671)
!5686 = !DILocation(line: 292, column: 17, scope: !5671)
!5687 = !DILocation(line: 292, column: 2, scope: !5671)
!5688 = !DILocation(line: 293, column: 14, scope: !5671)
!5689 = !DILocation(line: 293, column: 17, scope: !5671)
!5690 = !DILocation(line: 293, column: 2, scope: !5671)
!5691 = !DILocation(line: 294, column: 6, scope: !5692)
!5692 = distinct !DILexicalBlock(scope: !5671, file: !2, line: 294, column: 6)
!5693 = !DILocation(line: 294, column: 11, scope: !5692)
!5694 = !DILocation(line: 294, column: 36, scope: !5692)
!5695 = !DILocation(line: 294, column: 42, scope: !5692)
!5696 = !DILocation(line: 294, column: 15, scope: !5692)
!5697 = !DILocation(line: 294, column: 6, scope: !5671)
!5698 = !DILocation(line: 295, column: 9, scope: !5699)
!5699 = distinct !DILexicalBlock(scope: !5692, file: !2, line: 294, column: 49)
!5700 = !DILocation(line: 295, column: 3, scope: !5699)
!5701 = !DILocation(line: 296, column: 8, scope: !5699)
!5702 = !DILocation(line: 297, column: 2, scope: !5699)
!5703 = !DILocation(line: 298, column: 6, scope: !5704)
!5704 = distinct !DILexicalBlock(scope: !5671, file: !2, line: 298, column: 6)
!5705 = !DILocation(line: 298, column: 11, scope: !5704)
!5706 = !DILocation(line: 298, column: 38, scope: !5704)
!5707 = !DILocation(line: 298, column: 44, scope: !5704)
!5708 = !DILocation(line: 298, column: 15, scope: !5704)
!5709 = !DILocation(line: 298, column: 6, scope: !5671)
!5710 = !DILocation(line: 299, column: 9, scope: !5711)
!5711 = distinct !DILexicalBlock(scope: !5704, file: !2, line: 298, column: 51)
!5712 = !DILocation(line: 299, column: 3, scope: !5711)
!5713 = !DILocation(line: 300, column: 3, scope: !5711)
!5714 = !DILocation(line: 310, column: 44, scope: !5671)
!5715 = !DILocation(line: 310, column: 2, scope: !5671)
!5716 = !DILocation(line: 311, column: 20, scope: !5671)
!5717 = !DILocation(line: 311, column: 2, scope: !5671)
!5718 = !DILocation(line: 311, column: 8, scope: !5671)
!5719 = !DILocation(line: 311, column: 18, scope: !5671)
!5720 = !DILocation(line: 312, column: 6, scope: !5721)
!5721 = distinct !DILexicalBlock(scope: !5671, file: !2, line: 312, column: 6)
!5722 = !DILocation(line: 312, column: 6, scope: !5671)
!5723 = !DILocation(line: 313, column: 43, scope: !5721)
!5724 = !DILocation(line: 313, column: 3, scope: !5721)
!5725 = !DILocation(line: 314, column: 1, scope: !5671)
!5726 = !DILocation(line: 315, column: 16, scope: !5671)
!5727 = !DILocation(line: 315, column: 19, scope: !5671)
!5728 = !DILocation(line: 315, column: 2, scope: !5671)
!5729 = !DILocation(line: 316, column: 16, scope: !5671)
!5730 = !DILocation(line: 316, column: 19, scope: !5671)
!5731 = !DILocation(line: 316, column: 2, scope: !5671)
!5732 = !DILocation(line: 317, column: 1, scope: !5671)
!5733 = !DISubprogram(name: "mutex_lock", scope: !633, file: !633, line: 227, type: !5734, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5734 = !DISubroutineType(types: !5735)
!5735 = !{null, !5736}
!5736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!5737 = distinct !DISubprogram(name: "disk_check_ia_ranges", scope: !2, file: !2, line: 193, type: !5738, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5740)
!5738 = !DISubroutineType(types: !5739)
!5739 = !{!712, !1323, !199}
!5740 = !{!5741, !5742, !5743, !5744, !5745, !5746, !5747, !5748, !5751, !5754, !5761}
!5741 = !DILocalVariable(name: "disk", arg: 1, scope: !5737, file: !2, line: 193, type: !1323)
!5742 = !DILocalVariable(name: "iars", arg: 2, scope: !5737, file: !2, line: 194, type: !199)
!5743 = !DILocalVariable(name: "iar", scope: !5737, file: !2, line: 196, type: !5341)
!5744 = !DILocalVariable(name: "tmp", scope: !5737, file: !2, line: 196, type: !5341)
!5745 = !DILocalVariable(name: "capacity", scope: !5737, file: !2, line: 197, type: !1320)
!5746 = !DILocalVariable(name: "sector", scope: !5737, file: !2, line: 198, type: !1320)
!5747 = !DILocalVariable(name: "i", scope: !5737, file: !2, line: 199, type: !129)
!5748 = !DILocalVariable(name: "__ret_warn_on", scope: !5749, file: !2, line: 201, type: !129)
!5749 = distinct !DILexicalBlock(scope: !5750, file: !2, line: 201, column: 6)
!5750 = distinct !DILexicalBlock(scope: !5737, file: !2, line: 201, column: 6)
!5751 = !DILocalVariable(name: "__flags", scope: !5752, file: !2, line: 201, type: !129)
!5752 = distinct !DILexicalBlock(scope: !5753, file: !2, line: 201, column: 6)
!5753 = distinct !DILexicalBlock(scope: !5749, file: !2, line: 201, column: 6)
!5754 = !DILocalVariable(name: "__tmp", scope: !5755, file: !2, line: 218, type: !1320)
!5755 = distinct !DILexicalBlock(scope: !5756, file: !2, line: 218, column: 4)
!5756 = distinct !DILexicalBlock(scope: !5757, file: !2, line: 217, column: 19)
!5757 = distinct !DILexicalBlock(scope: !5758, file: !2, line: 217, column: 7)
!5758 = distinct !DILexicalBlock(scope: !5759, file: !2, line: 209, column: 43)
!5759 = distinct !DILexicalBlock(scope: !5760, file: !2, line: 209, column: 2)
!5760 = distinct !DILexicalBlock(scope: !5737, file: !2, line: 209, column: 2)
!5761 = !DILocalVariable(name: "__tmp", scope: !5762, file: !2, line: 219, type: !1320)
!5762 = distinct !DILexicalBlock(scope: !5756, file: !2, line: 219, column: 4)
!5763 = !DILocation(line: 193, column: 50, scope: !5737)
!5764 = !DILocation(line: 194, column: 43, scope: !5737)
!5765 = !DILocation(line: 196, column: 2, scope: !5737)
!5766 = !DILocation(line: 196, column: 39, scope: !5737)
!5767 = !DILocation(line: 196, column: 45, scope: !5737)
!5768 = !DILocation(line: 197, column: 2, scope: !5737)
!5769 = !DILocation(line: 197, column: 11, scope: !5737)
!5770 = !DILocation(line: 197, column: 35, scope: !5737)
!5771 = !DILocation(line: 197, column: 22, scope: !5737)
!5772 = !DILocation(line: 198, column: 2, scope: !5737)
!5773 = !DILocation(line: 198, column: 11, scope: !5737)
!5774 = !DILocation(line: 199, column: 2, scope: !5737)
!5775 = !DILocation(line: 199, column: 6, scope: !5737)
!5776 = !DILocation(line: 201, column: 6, scope: !5749)
!5777 = !DILocation(line: 201, column: 6, scope: !5753)
!5778 = !DILocation(line: 201, column: 6, scope: !5752)
!5779 = !DILocation(line: 201, column: 6, scope: !5780)
!5780 = distinct !DILexicalBlock(scope: !5752, file: !2, line: 201, column: 6)
!5781 = !DILocation(line: 201, column: 6, scope: !5782)
!5782 = distinct !DILexicalBlock(scope: !5752, file: !2, line: 201, column: 6)
!5783 = !{i64 2156028907, i64 2156028936, i64 2156028982, i64 2156029040, i64 2156029094, i64 2156029148, i64 2156029203, i64 2156029234, i64 2156029542, i64 2156029548, i64 2156029595, i64 2156029618, i64 2156029644}
!5784 = !DILocation(line: 201, column: 6, scope: !5785)
!5785 = distinct !DILexicalBlock(scope: !5752, file: !2, line: 201, column: 6)
!5786 = !DILocation(line: 201, column: 6, scope: !5750)
!5787 = !DILocation(line: 201, column: 6, scope: !5737)
!5788 = !DILocation(line: 202, column: 3, scope: !5750)
!5789 = !DILocation(line: 209, column: 9, scope: !5760)
!5790 = !DILocation(line: 209, column: 7, scope: !5760)
!5791 = !DILocation(line: 209, column: 14, scope: !5759)
!5792 = !DILocation(line: 209, column: 18, scope: !5759)
!5793 = !DILocation(line: 209, column: 24, scope: !5759)
!5794 = !DILocation(line: 209, column: 16, scope: !5759)
!5795 = !DILocation(line: 209, column: 2, scope: !5760)
!5796 = !DILocation(line: 210, column: 28, scope: !5758)
!5797 = !DILocation(line: 210, column: 34, scope: !5758)
!5798 = !DILocation(line: 210, column: 9, scope: !5758)
!5799 = !DILocation(line: 210, column: 7, scope: !5758)
!5800 = !DILocation(line: 211, column: 8, scope: !5801)
!5801 = distinct !DILexicalBlock(scope: !5758, file: !2, line: 211, column: 7)
!5802 = !DILocation(line: 211, column: 12, scope: !5801)
!5803 = !DILocation(line: 211, column: 15, scope: !5801)
!5804 = !DILocation(line: 211, column: 20, scope: !5801)
!5805 = !DILocation(line: 211, column: 30, scope: !5801)
!5806 = !DILocation(line: 211, column: 27, scope: !5801)
!5807 = !DILocation(line: 211, column: 7, scope: !5758)
!5808 = !DILocation(line: 212, column: 4, scope: !5809)
!5809 = distinct !DILexicalBlock(scope: !5810, file: !2, line: 212, column: 4)
!5810 = distinct !DILexicalBlock(scope: !5801, file: !2, line: 211, column: 38)
!5811 = !DILocation(line: 212, column: 4, scope: !5812)
!5812 = distinct !DILexicalBlock(scope: !5809, file: !2, line: 212, column: 4)
!5813 = !DILocation(line: 213, column: 4, scope: !5810)
!5814 = !DILocation(line: 216, column: 10, scope: !5758)
!5815 = !DILocation(line: 216, column: 16, scope: !5758)
!5816 = !DILocation(line: 216, column: 25, scope: !5758)
!5817 = !DILocation(line: 216, column: 7, scope: !5758)
!5818 = !DILocation(line: 217, column: 7, scope: !5757)
!5819 = !DILocation(line: 217, column: 14, scope: !5757)
!5820 = !DILocation(line: 217, column: 11, scope: !5757)
!5821 = !DILocation(line: 217, column: 7, scope: !5758)
!5822 = !DILocation(line: 218, column: 4, scope: !5756)
!5823 = !DILocation(line: 218, column: 4, scope: !5755)
!5824 = !DILocation(line: 219, column: 4, scope: !5756)
!5825 = !DILocation(line: 219, column: 4, scope: !5762)
!5826 = !DILocation(line: 220, column: 3, scope: !5756)
!5827 = !DILocation(line: 222, column: 13, scope: !5758)
!5828 = !DILocation(line: 222, column: 18, scope: !5758)
!5829 = !DILocation(line: 222, column: 10, scope: !5758)
!5830 = !DILocation(line: 223, column: 2, scope: !5758)
!5831 = !DILocation(line: 209, column: 39, scope: !5759)
!5832 = !DILocation(line: 209, column: 2, scope: !5759)
!5833 = distinct !{!5833, !5795, !5834, !5501, !5502}
!5834 = !DILocation(line: 223, column: 2, scope: !5760)
!5835 = !DILocation(line: 225, column: 6, scope: !5836)
!5836 = distinct !DILexicalBlock(scope: !5737, file: !2, line: 225, column: 6)
!5837 = !DILocation(line: 225, column: 16, scope: !5836)
!5838 = !DILocation(line: 225, column: 13, scope: !5836)
!5839 = !DILocation(line: 225, column: 6, scope: !5737)
!5840 = !DILocation(line: 226, column: 3, scope: !5841)
!5841 = distinct !DILexicalBlock(scope: !5842, file: !2, line: 226, column: 3)
!5842 = distinct !DILexicalBlock(scope: !5836, file: !2, line: 225, column: 26)
!5843 = !DILocation(line: 226, column: 3, scope: !5844)
!5844 = distinct !DILexicalBlock(scope: !5841, file: !2, line: 226, column: 3)
!5845 = !DILocation(line: 227, column: 3, scope: !5842)
!5846 = !DILocation(line: 230, column: 2, scope: !5737)
!5847 = !DILocation(line: 231, column: 1, scope: !5737)
!5848 = distinct !DISubprogram(name: "disk_ia_ranges_changed", scope: !2, file: !2, line: 233, type: !5738, scopeLine: 235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5849)
!5849 = !{!5850, !5851, !5852, !5853}
!5850 = !DILocalVariable(name: "disk", arg: 1, scope: !5848, file: !2, line: 233, type: !1323)
!5851 = !DILocalVariable(name: "new", arg: 2, scope: !5848, file: !2, line: 234, type: !199)
!5852 = !DILocalVariable(name: "old", scope: !5848, file: !2, line: 236, type: !199)
!5853 = !DILocalVariable(name: "i", scope: !5848, file: !2, line: 237, type: !129)
!5854 = !DILocation(line: 233, column: 52, scope: !5848)
!5855 = !DILocation(line: 234, column: 46, scope: !5848)
!5856 = !DILocation(line: 236, column: 2, scope: !5848)
!5857 = !DILocation(line: 236, column: 40, scope: !5848)
!5858 = !DILocation(line: 236, column: 46, scope: !5848)
!5859 = !DILocation(line: 236, column: 52, scope: !5848)
!5860 = !DILocation(line: 237, column: 2, scope: !5848)
!5861 = !DILocation(line: 237, column: 6, scope: !5848)
!5862 = !DILocation(line: 239, column: 7, scope: !5863)
!5863 = distinct !DILexicalBlock(scope: !5848, file: !2, line: 239, column: 6)
!5864 = !DILocation(line: 239, column: 6, scope: !5848)
!5865 = !DILocation(line: 240, column: 3, scope: !5863)
!5866 = !DILocation(line: 242, column: 6, scope: !5867)
!5867 = distinct !DILexicalBlock(scope: !5848, file: !2, line: 242, column: 6)
!5868 = !DILocation(line: 242, column: 11, scope: !5867)
!5869 = !DILocation(line: 242, column: 27, scope: !5867)
!5870 = !DILocation(line: 242, column: 32, scope: !5867)
!5871 = !DILocation(line: 242, column: 24, scope: !5867)
!5872 = !DILocation(line: 242, column: 6, scope: !5848)
!5873 = !DILocation(line: 243, column: 3, scope: !5867)
!5874 = !DILocation(line: 245, column: 9, scope: !5875)
!5875 = distinct !DILexicalBlock(scope: !5848, file: !2, line: 245, column: 2)
!5876 = !DILocation(line: 245, column: 7, scope: !5875)
!5877 = !DILocation(line: 245, column: 14, scope: !5878)
!5878 = distinct !DILexicalBlock(scope: !5875, file: !2, line: 245, column: 2)
!5879 = !DILocation(line: 245, column: 18, scope: !5878)
!5880 = !DILocation(line: 245, column: 23, scope: !5878)
!5881 = !DILocation(line: 245, column: 16, scope: !5878)
!5882 = !DILocation(line: 245, column: 2, scope: !5875)
!5883 = !DILocation(line: 246, column: 7, scope: !5884)
!5884 = distinct !DILexicalBlock(scope: !5885, file: !2, line: 246, column: 7)
!5885 = distinct !DILexicalBlock(scope: !5878, file: !2, line: 245, column: 42)
!5886 = !DILocation(line: 246, column: 12, scope: !5884)
!5887 = !DILocation(line: 246, column: 21, scope: !5884)
!5888 = !DILocation(line: 246, column: 24, scope: !5884)
!5889 = !DILocation(line: 246, column: 34, scope: !5884)
!5890 = !DILocation(line: 246, column: 39, scope: !5884)
!5891 = !DILocation(line: 246, column: 48, scope: !5884)
!5892 = !DILocation(line: 246, column: 51, scope: !5884)
!5893 = !DILocation(line: 246, column: 31, scope: !5884)
!5894 = !DILocation(line: 246, column: 58, scope: !5884)
!5895 = !DILocation(line: 247, column: 7, scope: !5884)
!5896 = !DILocation(line: 247, column: 12, scope: !5884)
!5897 = !DILocation(line: 247, column: 21, scope: !5884)
!5898 = !DILocation(line: 247, column: 24, scope: !5884)
!5899 = !DILocation(line: 247, column: 38, scope: !5884)
!5900 = !DILocation(line: 247, column: 43, scope: !5884)
!5901 = !DILocation(line: 247, column: 52, scope: !5884)
!5902 = !DILocation(line: 247, column: 55, scope: !5884)
!5903 = !DILocation(line: 247, column: 35, scope: !5884)
!5904 = !DILocation(line: 246, column: 7, scope: !5885)
!5905 = !DILocation(line: 248, column: 4, scope: !5884)
!5906 = !DILocation(line: 249, column: 2, scope: !5885)
!5907 = !DILocation(line: 245, column: 38, scope: !5878)
!5908 = !DILocation(line: 245, column: 2, scope: !5878)
!5909 = distinct !{!5909, !5882, !5910, !5501, !5502}
!5910 = !DILocation(line: 249, column: 2, scope: !5875)
!5911 = !DILocation(line: 251, column: 2, scope: !5848)
!5912 = !DILocation(line: 252, column: 1, scope: !5848)
!5913 = distinct !DISubprogram(name: "const_test_bit", scope: !5914, file: !5914, line: 166, type: !5915, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5920)
!5914 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!5915 = !DISubroutineType(types: !5916)
!5916 = !{!712, !196, !5917}
!5917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5918, size: 64)
!5918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5919)
!5919 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !196)
!5920 = !{!5921, !5922, !5923, !5924, !5925}
!5921 = !DILocalVariable(name: "nr", arg: 1, scope: !5913, file: !5914, line: 166, type: !196)
!5922 = !DILocalVariable(name: "addr", arg: 2, scope: !5913, file: !5914, line: 166, type: !5917)
!5923 = !DILocalVariable(name: "p", scope: !5913, file: !5914, line: 168, type: !197)
!5924 = !DILocalVariable(name: "mask", scope: !5913, file: !5914, line: 169, type: !196)
!5925 = !DILocalVariable(name: "val", scope: !5913, file: !5914, line: 170, type: !196)
!5926 = !DILocation(line: 166, column: 30, scope: !5913)
!5927 = !DILocation(line: 166, column: 64, scope: !5913)
!5928 = !DILocation(line: 168, column: 2, scope: !5913)
!5929 = !DILocation(line: 168, column: 23, scope: !5913)
!5930 = !DILocation(line: 168, column: 50, scope: !5913)
!5931 = !DILocation(line: 168, column: 57, scope: !5913)
!5932 = !DILocation(line: 168, column: 55, scope: !5913)
!5933 = !DILocation(line: 169, column: 2, scope: !5913)
!5934 = !DILocation(line: 169, column: 16, scope: !5913)
!5935 = !DILocation(line: 169, column: 23, scope: !5913)
!5936 = !DILocation(line: 170, column: 2, scope: !5913)
!5937 = !DILocation(line: 170, column: 16, scope: !5913)
!5938 = !DILocation(line: 170, column: 23, scope: !5913)
!5939 = !DILocation(line: 170, column: 22, scope: !5913)
!5940 = !DILocation(line: 172, column: 12, scope: !5913)
!5941 = !DILocation(line: 172, column: 18, scope: !5913)
!5942 = !DILocation(line: 172, column: 16, scope: !5913)
!5943 = !DILocation(line: 172, column: 10, scope: !5913)
!5944 = !DILocation(line: 172, column: 9, scope: !5913)
!5945 = !DILocation(line: 173, column: 1, scope: !5913)
!5946 = !DILocation(line: 172, column: 2, scope: !5913)
!5947 = distinct !DISubprogram(name: "_test_bit", scope: !5948, file: !5948, line: 139, type: !5915, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5949)
!5948 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!5949 = !{!5950, !5951}
!5950 = !DILocalVariable(name: "nr", arg: 1, scope: !5947, file: !5948, line: 139, type: !196)
!5951 = !DILocalVariable(name: "addr", arg: 2, scope: !5947, file: !5948, line: 139, type: !5917)
!5952 = !DILocation(line: 139, column: 25, scope: !5947)
!5953 = !DILocation(line: 139, column: 59, scope: !5947)
!5954 = !DILocation(line: 141, column: 25, scope: !5947)
!5955 = !DILocation(line: 141, column: 32, scope: !5947)
!5956 = !DILocation(line: 141, column: 30, scope: !5947)
!5957 = !DILocation(line: 141, column: 2, scope: !5947)
!5958 = !DILocation(line: 142, column: 23, scope: !5947)
!5959 = !DILocation(line: 142, column: 27, scope: !5947)
!5960 = !DILocation(line: 142, column: 9, scope: !5947)
!5961 = !DILocation(line: 142, column: 2, scope: !5947)
!5962 = !DISubprogram(name: "mutex_unlock", scope: !633, file: !633, line: 246, type: !5734, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5963 = distinct !DISubprogram(name: "blk_ia_ranges_sysfs_release", scope: !2, file: !2, line: 89, type: !313, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5964)
!5964 = !{!5965, !5966, !5967}
!5965 = !DILocalVariable(name: "kobj", arg: 1, scope: !5963, file: !2, line: 89, type: !216)
!5966 = !DILocalVariable(name: "iars", scope: !5963, file: !2, line: 91, type: !199)
!5967 = !DILocalVariable(name: "__mptr", scope: !5968, file: !2, line: 92, type: !194)
!5968 = distinct !DILexicalBlock(scope: !5963, file: !2, line: 92, column: 3)
!5969 = !DILocation(line: 89, column: 57, scope: !5963)
!5970 = !DILocation(line: 91, column: 2, scope: !5963)
!5971 = !DILocation(line: 91, column: 40, scope: !5963)
!5972 = !DILocation(line: 92, column: 3, scope: !5968)
!5973 = !DILocation(line: 92, column: 3, scope: !5963)
!5974 = !DILocation(line: 94, column: 8, scope: !5963)
!5975 = !DILocation(line: 94, column: 2, scope: !5963)
!5976 = !DILocation(line: 95, column: 1, scope: !5963)
!5977 = distinct !DISubprogram(name: "blk_ia_range_sysfs_nop_release", scope: !2, file: !2, line: 74, type: !313, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5978)
!5978 = !{!5979}
!5979 = !DILocalVariable(name: "kobj", arg: 1, scope: !5977, file: !2, line: 74, type: !216)
!5980 = !DILocation(line: 74, column: 60, scope: !5977)
!5981 = !DILocation(line: 76, column: 1, scope: !5977)
!5982 = distinct !DISubprogram(name: "blk_ia_range_sysfs_show", scope: !2, file: !2, line: 50, type: !323, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5983)
!5983 = !{!5984, !5985, !5986, !5987, !5988, !5990, !5991}
!5984 = !DILocalVariable(name: "kobj", arg: 1, scope: !5982, file: !2, line: 50, type: !216)
!5985 = !DILocalVariable(name: "attr", arg: 2, scope: !5982, file: !2, line: 51, type: !330)
!5986 = !DILocalVariable(name: "buf", arg: 3, scope: !5982, file: !2, line: 51, type: !293)
!5987 = !DILocalVariable(name: "entry", scope: !5982, file: !2, line: 53, type: !5333)
!5988 = !DILocalVariable(name: "__mptr", scope: !5989, file: !2, line: 54, type: !194)
!5989 = distinct !DILexicalBlock(scope: !5982, file: !2, line: 54, column: 3)
!5990 = !DILocalVariable(name: "iar", scope: !5982, file: !2, line: 55, type: !5341)
!5991 = !DILocalVariable(name: "__mptr", scope: !5992, file: !2, line: 56, type: !194)
!5992 = distinct !DILexicalBlock(scope: !5982, file: !2, line: 56, column: 3)
!5993 = !DILocation(line: 50, column: 56, scope: !5982)
!5994 = !DILocation(line: 51, column: 29, scope: !5982)
!5995 = !DILocation(line: 51, column: 41, scope: !5982)
!5996 = !DILocation(line: 53, column: 2, scope: !5982)
!5997 = !DILocation(line: 53, column: 35, scope: !5982)
!5998 = !DILocation(line: 54, column: 3, scope: !5989)
!5999 = !DILocation(line: 54, column: 3, scope: !5982)
!6000 = !DILocation(line: 55, column: 2, scope: !5982)
!6001 = !DILocation(line: 55, column: 39, scope: !5982)
!6002 = !DILocation(line: 56, column: 3, scope: !5992)
!6003 = !DILocation(line: 56, column: 3, scope: !5982)
!6004 = !DILocation(line: 58, column: 9, scope: !5982)
!6005 = !DILocation(line: 58, column: 16, scope: !5982)
!6006 = !DILocation(line: 58, column: 21, scope: !5982)
!6007 = !DILocation(line: 58, column: 26, scope: !5982)
!6008 = !DILocation(line: 59, column: 1, scope: !5982)
!6009 = !DILocation(line: 58, column: 2, scope: !5982)
!6010 = distinct !DISubprogram(name: "blk_ia_range_sector_show", scope: !2, file: !2, line: 15, type: !5339, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6011)
!6011 = !{!6012, !6013}
!6012 = !DILocalVariable(name: "iar", arg: 1, scope: !6010, file: !2, line: 15, type: !5341)
!6013 = !DILocalVariable(name: "buf", arg: 2, scope: !6010, file: !2, line: 16, type: !293)
!6014 = !DILocation(line: 15, column: 63, scope: !6010)
!6015 = !DILocation(line: 16, column: 11, scope: !6010)
!6016 = !DILocation(line: 18, column: 17, scope: !6010)
!6017 = !DILocation(line: 18, column: 32, scope: !6010)
!6018 = !DILocation(line: 18, column: 37, scope: !6010)
!6019 = !DILocation(line: 18, column: 9, scope: !6010)
!6020 = !DILocation(line: 18, column: 2, scope: !6010)
!6021 = !DISubprogram(name: "sprintf", scope: !6022, file: !6022, line: 10, type: !6023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6022 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!6023 = !DISubroutineType(types: !6024)
!6024 = !{!129, !293, !207, null}
!6025 = distinct !DISubprogram(name: "blk_ia_range_nr_sectors_show", scope: !2, file: !2, line: 22, type: !5339, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6026)
!6026 = !{!6027, !6028}
!6027 = !DILocalVariable(name: "iar", arg: 1, scope: !6025, file: !2, line: 22, type: !5341)
!6028 = !DILocalVariable(name: "buf", arg: 2, scope: !6025, file: !2, line: 23, type: !293)
!6029 = !DILocation(line: 22, column: 67, scope: !6025)
!6030 = !DILocation(line: 23, column: 15, scope: !6025)
!6031 = !DILocation(line: 25, column: 17, scope: !6025)
!6032 = !DILocation(line: 25, column: 32, scope: !6025)
!6033 = !DILocation(line: 25, column: 37, scope: !6025)
!6034 = !DILocation(line: 25, column: 9, scope: !6025)
!6035 = !DILocation(line: 25, column: 2, scope: !6025)
!6036 = distinct !DISubprogram(name: "kmalloc_node", scope: !182, file: !182, line: 607, type: !5621, scopeLine: 608, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6037)
!6037 = !{!6038, !6039, !6040, !6041}
!6038 = !DILocalVariable(name: "size", arg: 1, scope: !6036, file: !182, line: 607, type: !340)
!6039 = !DILocalVariable(name: "flags", arg: 2, scope: !6036, file: !182, line: 607, type: !192)
!6040 = !DILocalVariable(name: "node", arg: 3, scope: !6036, file: !182, line: 607, type: !129)
!6041 = !DILocalVariable(name: "index", scope: !6042, file: !182, line: 610, type: !13)
!6042 = distinct !DILexicalBlock(scope: !6043, file: !182, line: 609, column: 42)
!6043 = distinct !DILexicalBlock(scope: !6036, file: !182, line: 609, column: 6)
!6044 = !DILocation(line: 607, column: 66, scope: !6036)
!6045 = !DILocation(line: 607, column: 78, scope: !6036)
!6046 = !DILocation(line: 607, column: 89, scope: !6036)
!6047 = !DILocation(line: 609, column: 27, scope: !6043)
!6048 = !DILocation(line: 609, column: 6, scope: !6043)
!6049 = !DILocation(line: 609, column: 33, scope: !6043)
!6050 = !DILocation(line: 609, column: 36, scope: !6043)
!6051 = !DILocation(line: 609, column: 6, scope: !6036)
!6052 = !DILocation(line: 610, column: 3, scope: !6042)
!6053 = !DILocation(line: 610, column: 16, scope: !6042)
!6054 = !DILocation(line: 612, column: 7, scope: !6055)
!6055 = distinct !DILexicalBlock(scope: !6042, file: !182, line: 612, column: 7)
!6056 = !DILocation(line: 612, column: 12, scope: !6055)
!6057 = !DILocation(line: 612, column: 7, scope: !6042)
!6058 = !DILocation(line: 613, column: 30, scope: !6055)
!6059 = !DILocation(line: 613, column: 36, scope: !6055)
!6060 = !DILocation(line: 613, column: 43, scope: !6055)
!6061 = !DILocation(line: 613, column: 11, scope: !6055)
!6062 = !DILocation(line: 613, column: 4, scope: !6055)
!6063 = !DILocation(line: 615, column: 11, scope: !6042)
!6064 = !DILocation(line: 615, column: 9, scope: !6042)
!6065 = !DILocation(line: 617, column: 33, scope: !6042)
!6066 = !DILocation(line: 617, column: 40, scope: !6042)
!6067 = !DILocation(line: 617, column: 20, scope: !6042)
!6068 = !DILocation(line: 617, column: 5, scope: !6042)
!6069 = !DILocation(line: 617, column: 51, scope: !6042)
!6070 = !DILocation(line: 618, column: 5, scope: !6042)
!6071 = !DILocation(line: 618, column: 12, scope: !6042)
!6072 = !DILocation(line: 618, column: 18, scope: !6042)
!6073 = !DILocation(line: 616, column: 10, scope: !6042)
!6074 = !DILocation(line: 616, column: 3, scope: !6042)
!6075 = !DILocation(line: 619, column: 2, scope: !6043)
!6076 = !DILocation(line: 620, column: 24, scope: !6036)
!6077 = !DILocation(line: 620, column: 30, scope: !6036)
!6078 = !DILocation(line: 620, column: 37, scope: !6036)
!6079 = !DILocation(line: 620, column: 9, scope: !6036)
!6080 = !DILocation(line: 620, column: 2, scope: !6036)
!6081 = !DILocation(line: 621, column: 1, scope: !6036)
!6082 = !DISubprogram(name: "kmalloc_large_node", scope: !182, file: !182, line: 534, type: !5621, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6083 = distinct !DISubprogram(name: "__kmalloc_index", scope: !182, file: !182, line: 444, type: !6084, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6086)
!6084 = !DISubroutineType(types: !6085)
!6085 = !{!13, !340, !712}
!6086 = !{!6087, !6088}
!6087 = !DILocalVariable(name: "size", arg: 1, scope: !6083, file: !182, line: 444, type: !340)
!6088 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6083, file: !182, line: 445, type: !712)
!6089 = !DILocation(line: 444, column: 60, scope: !6083)
!6090 = !DILocation(line: 445, column: 16, scope: !6083)
!6091 = !DILocation(line: 447, column: 7, scope: !6092)
!6092 = distinct !DILexicalBlock(scope: !6083, file: !182, line: 447, column: 6)
!6093 = !DILocation(line: 447, column: 6, scope: !6083)
!6094 = !DILocation(line: 448, column: 3, scope: !6092)
!6095 = !DILocation(line: 450, column: 6, scope: !6096)
!6096 = distinct !DILexicalBlock(scope: !6083, file: !182, line: 450, column: 6)
!6097 = !DILocation(line: 450, column: 11, scope: !6096)
!6098 = !DILocation(line: 450, column: 6, scope: !6083)
!6099 = !DILocation(line: 451, column: 3, scope: !6096)
!6100 = !DILocation(line: 453, column: 32, scope: !6101)
!6101 = distinct !DILexicalBlock(scope: !6083, file: !182, line: 453, column: 6)
!6102 = !DILocation(line: 453, column: 37, scope: !6101)
!6103 = !DILocation(line: 453, column: 42, scope: !6101)
!6104 = !DILocation(line: 453, column: 45, scope: !6101)
!6105 = !DILocation(line: 453, column: 50, scope: !6101)
!6106 = !DILocation(line: 453, column: 6, scope: !6083)
!6107 = !DILocation(line: 454, column: 3, scope: !6101)
!6108 = !DILocation(line: 455, column: 32, scope: !6109)
!6109 = distinct !DILexicalBlock(scope: !6083, file: !182, line: 455, column: 6)
!6110 = !DILocation(line: 455, column: 37, scope: !6109)
!6111 = !DILocation(line: 455, column: 43, scope: !6109)
!6112 = !DILocation(line: 455, column: 46, scope: !6109)
!6113 = !DILocation(line: 455, column: 51, scope: !6109)
!6114 = !DILocation(line: 455, column: 6, scope: !6083)
!6115 = !DILocation(line: 456, column: 3, scope: !6109)
!6116 = !DILocation(line: 457, column: 6, scope: !6117)
!6117 = distinct !DILexicalBlock(scope: !6083, file: !182, line: 457, column: 6)
!6118 = !DILocation(line: 457, column: 11, scope: !6117)
!6119 = !DILocation(line: 457, column: 6, scope: !6083)
!6120 = !DILocation(line: 457, column: 26, scope: !6117)
!6121 = !DILocation(line: 458, column: 6, scope: !6122)
!6122 = distinct !DILexicalBlock(scope: !6083, file: !182, line: 458, column: 6)
!6123 = !DILocation(line: 458, column: 11, scope: !6122)
!6124 = !DILocation(line: 458, column: 6, scope: !6083)
!6125 = !DILocation(line: 458, column: 26, scope: !6122)
!6126 = !DILocation(line: 459, column: 6, scope: !6127)
!6127 = distinct !DILexicalBlock(scope: !6083, file: !182, line: 459, column: 6)
!6128 = !DILocation(line: 459, column: 11, scope: !6127)
!6129 = !DILocation(line: 459, column: 6, scope: !6083)
!6130 = !DILocation(line: 459, column: 26, scope: !6127)
!6131 = !DILocation(line: 460, column: 6, scope: !6132)
!6132 = distinct !DILexicalBlock(scope: !6083, file: !182, line: 460, column: 6)
!6133 = !DILocation(line: 460, column: 11, scope: !6132)
!6134 = !DILocation(line: 460, column: 6, scope: !6083)
!6135 = !DILocation(line: 460, column: 26, scope: !6132)
!6136 = !DILocation(line: 461, column: 6, scope: !6137)
!6137 = distinct !DILexicalBlock(scope: !6083, file: !182, line: 461, column: 6)
!6138 = !DILocation(line: 461, column: 11, scope: !6137)
!6139 = !DILocation(line: 461, column: 6, scope: !6083)
!6140 = !DILocation(line: 461, column: 26, scope: !6137)
!6141 = !DILocation(line: 462, column: 6, scope: !6142)
!6142 = distinct !DILexicalBlock(scope: !6083, file: !182, line: 462, column: 6)
!6143 = !DILocation(line: 462, column: 11, scope: !6142)
!6144 = !DILocation(line: 462, column: 6, scope: !6083)
!6145 = !DILocation(line: 462, column: 26, scope: !6142)
!6146 = !DILocation(line: 463, column: 6, scope: !6147)
!6147 = distinct !DILexicalBlock(scope: !6083, file: !182, line: 463, column: 6)
!6148 = !DILocation(line: 463, column: 11, scope: !6147)
!6149 = !DILocation(line: 463, column: 6, scope: !6083)
!6150 = !DILocation(line: 463, column: 26, scope: !6147)
!6151 = !DILocation(line: 464, column: 6, scope: !6152)
!6152 = distinct !DILexicalBlock(scope: !6083, file: !182, line: 464, column: 6)
!6153 = !DILocation(line: 464, column: 11, scope: !6152)
!6154 = !DILocation(line: 464, column: 6, scope: !6083)
!6155 = !DILocation(line: 464, column: 26, scope: !6152)
!6156 = !DILocation(line: 465, column: 6, scope: !6157)
!6157 = distinct !DILexicalBlock(scope: !6083, file: !182, line: 465, column: 6)
!6158 = !DILocation(line: 465, column: 11, scope: !6157)
!6159 = !DILocation(line: 465, column: 6, scope: !6083)
!6160 = !DILocation(line: 465, column: 26, scope: !6157)
!6161 = !DILocation(line: 466, column: 6, scope: !6162)
!6162 = distinct !DILexicalBlock(scope: !6083, file: !182, line: 466, column: 6)
!6163 = !DILocation(line: 466, column: 11, scope: !6162)
!6164 = !DILocation(line: 466, column: 6, scope: !6083)
!6165 = !DILocation(line: 466, column: 26, scope: !6162)
!6166 = !DILocation(line: 467, column: 6, scope: !6167)
!6167 = distinct !DILexicalBlock(scope: !6083, file: !182, line: 467, column: 6)
!6168 = !DILocation(line: 467, column: 11, scope: !6167)
!6169 = !DILocation(line: 467, column: 6, scope: !6083)
!6170 = !DILocation(line: 467, column: 26, scope: !6167)
!6171 = !DILocation(line: 468, column: 6, scope: !6172)
!6172 = distinct !DILexicalBlock(scope: !6083, file: !182, line: 468, column: 6)
!6173 = !DILocation(line: 468, column: 11, scope: !6172)
!6174 = !DILocation(line: 468, column: 6, scope: !6083)
!6175 = !DILocation(line: 468, column: 26, scope: !6172)
!6176 = !DILocation(line: 469, column: 6, scope: !6177)
!6177 = distinct !DILexicalBlock(scope: !6083, file: !182, line: 469, column: 6)
!6178 = !DILocation(line: 469, column: 11, scope: !6177)
!6179 = !DILocation(line: 469, column: 6, scope: !6083)
!6180 = !DILocation(line: 469, column: 26, scope: !6177)
!6181 = !DILocation(line: 470, column: 6, scope: !6182)
!6182 = distinct !DILexicalBlock(scope: !6083, file: !182, line: 470, column: 6)
!6183 = !DILocation(line: 470, column: 11, scope: !6182)
!6184 = !DILocation(line: 470, column: 6, scope: !6083)
!6185 = !DILocation(line: 470, column: 26, scope: !6182)
!6186 = !DILocation(line: 471, column: 6, scope: !6187)
!6187 = distinct !DILexicalBlock(scope: !6083, file: !182, line: 471, column: 6)
!6188 = !DILocation(line: 471, column: 11, scope: !6187)
!6189 = !DILocation(line: 471, column: 6, scope: !6083)
!6190 = !DILocation(line: 471, column: 26, scope: !6187)
!6191 = !DILocation(line: 472, column: 6, scope: !6192)
!6192 = distinct !DILexicalBlock(scope: !6083, file: !182, line: 472, column: 6)
!6193 = !DILocation(line: 472, column: 11, scope: !6192)
!6194 = !DILocation(line: 472, column: 6, scope: !6083)
!6195 = !DILocation(line: 472, column: 26, scope: !6192)
!6196 = !DILocation(line: 473, column: 6, scope: !6197)
!6197 = distinct !DILexicalBlock(scope: !6083, file: !182, line: 473, column: 6)
!6198 = !DILocation(line: 473, column: 11, scope: !6197)
!6199 = !DILocation(line: 473, column: 6, scope: !6083)
!6200 = !DILocation(line: 473, column: 26, scope: !6197)
!6201 = !DILocation(line: 474, column: 6, scope: !6202)
!6202 = distinct !DILexicalBlock(scope: !6083, file: !182, line: 474, column: 6)
!6203 = !DILocation(line: 474, column: 11, scope: !6202)
!6204 = !DILocation(line: 474, column: 6, scope: !6083)
!6205 = !DILocation(line: 474, column: 27, scope: !6202)
!6206 = !DILocation(line: 475, column: 6, scope: !6207)
!6207 = distinct !DILexicalBlock(scope: !6083, file: !182, line: 475, column: 6)
!6208 = !DILocation(line: 475, column: 11, scope: !6207)
!6209 = !DILocation(line: 475, column: 6, scope: !6083)
!6210 = !DILocation(line: 475, column: 32, scope: !6207)
!6211 = !DILocation(line: 477, column: 50, scope: !6212)
!6212 = distinct !DILexicalBlock(scope: !6083, file: !182, line: 477, column: 6)
!6213 = !DILocation(line: 477, column: 6, scope: !6083)
!6214 = !DILocation(line: 478, column: 3, scope: !6212)
!6215 = !DILocation(line: 478, column: 3, scope: !6216)
!6216 = distinct !DILexicalBlock(scope: !6217, file: !182, line: 478, column: 3)
!6217 = distinct !DILexicalBlock(scope: !6212, file: !182, line: 478, column: 3)
!6218 = !{i32 -2141629452}
!6219 = !DILocation(line: 478, column: 3, scope: !6217)
!6220 = !DILocation(line: 480, column: 3, scope: !6212)
!6221 = !DILocation(line: 480, column: 3, scope: !6222)
!6222 = distinct !DILexicalBlock(scope: !6212, file: !182, line: 480, column: 3)
!6223 = !DILocation(line: 480, column: 3, scope: !6224)
!6224 = distinct !DILexicalBlock(scope: !6222, file: !182, line: 480, column: 3)
!6225 = !DILocation(line: 480, column: 3, scope: !6226)
!6226 = distinct !DILexicalBlock(scope: !6222, file: !182, line: 480, column: 3)
!6227 = !{i64 2153338047, i64 2153338076, i64 2153338122, i64 2153338180, i64 2153338234, i64 2153338288, i64 2153338343, i64 2153338374}
!6228 = !DILocation(line: 483, column: 2, scope: !6083)
!6229 = !DILocation(line: 484, column: 1, scope: !6083)
!6230 = !DISubprogram(name: "kmalloc_node_trace", scope: !182, file: !182, line: 528, type: !6231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6231 = !DISubroutineType(types: !6232)
!6232 = !{!194, !2870, !192, !129, !340}
!6233 = distinct !DISubprogram(name: "kmalloc_type", scope: !182, file: !182, line: 401, type: !6234, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6236)
!6234 = !DISubroutineType(types: !6235)
!6235 = !{!181, !192, !196}
!6236 = !{!6237, !6238}
!6237 = !DILocalVariable(name: "flags", arg: 1, scope: !6233, file: !182, line: 401, type: !192)
!6238 = !DILocalVariable(name: "caller", arg: 2, scope: !6233, file: !182, line: 401, type: !196)
!6239 = !DILocation(line: 401, column: 67, scope: !6233)
!6240 = !DILocation(line: 401, column: 88, scope: !6233)
!6241 = !DILocation(line: 407, column: 6, scope: !6242)
!6242 = distinct !DILexicalBlock(scope: !6233, file: !182, line: 407, column: 6)
!6243 = !DILocation(line: 407, column: 6, scope: !6233)
!6244 = !DILocation(line: 413, column: 3, scope: !6242)
!6245 = !DILocation(line: 423, column: 38, scope: !6246)
!6246 = distinct !DILexicalBlock(scope: !6233, file: !182, line: 423, column: 6)
!6247 = !DILocation(line: 423, column: 44, scope: !6246)
!6248 = !DILocation(line: 423, column: 6, scope: !6233)
!6249 = !DILocation(line: 424, column: 3, scope: !6246)
!6250 = !DILocation(line: 426, column: 3, scope: !6251)
!6251 = distinct !DILexicalBlock(scope: !6233, file: !182, line: 425, column: 6)
!6252 = !DILocation(line: 429, column: 1, scope: !6233)
!6253 = !DISubprogram(name: "__kmalloc_node", scope: !182, file: !182, line: 520, type: !5621, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6254 = !DISubprogram(name: "__compiletime_assert_245", scope: !182, file: !182, line: 478, type: !997, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6255 = distinct !DISubprogram(name: "__must_check_overflow", scope: !5637, file: !5637, line: 51, type: !6256, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6258)
!6256 = !DISubroutineType(types: !6257)
!6257 = !{!712, !712}
!6258 = !{!6259}
!6259 = !DILocalVariable(name: "overflow", arg: 1, scope: !6255, file: !5637, line: 51, type: !712)
!6260 = !DILocation(line: 51, column: 60, scope: !6255)
!6261 = !DILocation(line: 53, column: 9, scope: !6255)
!6262 = !DILocation(line: 53, column: 2, scope: !6255)
!6263 = distinct !DISubprogram(name: "get_capacity", scope: !162, file: !162, line: 788, type: !6264, scopeLine: 789, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6266)
!6264 = !DISubroutineType(types: !6265)
!6265 = !{!1320, !1323}
!6266 = !{!6267}
!6267 = !DILocalVariable(name: "disk", arg: 1, scope: !6263, file: !162, line: 788, type: !1323)
!6268 = !DILocation(line: 788, column: 53, scope: !6263)
!6269 = !DILocation(line: 790, column: 25, scope: !6263)
!6270 = !DILocation(line: 790, column: 31, scope: !6263)
!6271 = !DILocation(line: 790, column: 9, scope: !6263)
!6272 = !DILocation(line: 790, column: 2, scope: !6263)
!6273 = distinct !DISubprogram(name: "disk_find_ia_range", scope: !2, file: !2, line: 177, type: !6274, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6276)
!6274 = !DISubroutineType(types: !6275)
!6275 = !{!5341, !199, !1320}
!6276 = !{!6277, !6278, !6279, !6280}
!6277 = !DILocalVariable(name: "iars", arg: 1, scope: !6273, file: !2, line: 177, type: !199)
!6278 = !DILocalVariable(name: "sector", arg: 2, scope: !6273, file: !2, line: 178, type: !1320)
!6279 = !DILocalVariable(name: "iar", scope: !6273, file: !2, line: 180, type: !5341)
!6280 = !DILocalVariable(name: "i", scope: !6273, file: !2, line: 181, type: !129)
!6281 = !DILocation(line: 177, column: 58, scope: !6273)
!6282 = !DILocation(line: 178, column: 14, scope: !6273)
!6283 = !DILocation(line: 180, column: 2, scope: !6273)
!6284 = !DILocation(line: 180, column: 39, scope: !6273)
!6285 = !DILocation(line: 181, column: 2, scope: !6273)
!6286 = !DILocation(line: 181, column: 6, scope: !6273)
!6287 = !DILocation(line: 183, column: 9, scope: !6288)
!6288 = distinct !DILexicalBlock(scope: !6273, file: !2, line: 183, column: 2)
!6289 = !DILocation(line: 183, column: 7, scope: !6288)
!6290 = !DILocation(line: 183, column: 14, scope: !6291)
!6291 = distinct !DILexicalBlock(scope: !6288, file: !2, line: 183, column: 2)
!6292 = !DILocation(line: 183, column: 18, scope: !6291)
!6293 = !DILocation(line: 183, column: 24, scope: !6291)
!6294 = !DILocation(line: 183, column: 16, scope: !6291)
!6295 = !DILocation(line: 183, column: 2, scope: !6288)
!6296 = !DILocation(line: 184, column: 10, scope: !6297)
!6297 = distinct !DILexicalBlock(scope: !6291, file: !2, line: 183, column: 43)
!6298 = !DILocation(line: 184, column: 16, scope: !6297)
!6299 = !DILocation(line: 184, column: 25, scope: !6297)
!6300 = !DILocation(line: 184, column: 7, scope: !6297)
!6301 = !DILocation(line: 185, column: 7, scope: !6302)
!6302 = distinct !DILexicalBlock(scope: !6297, file: !2, line: 185, column: 7)
!6303 = !DILocation(line: 185, column: 17, scope: !6302)
!6304 = !DILocation(line: 185, column: 22, scope: !6302)
!6305 = !DILocation(line: 185, column: 14, scope: !6302)
!6306 = !DILocation(line: 185, column: 29, scope: !6302)
!6307 = !DILocation(line: 186, column: 7, scope: !6302)
!6308 = !DILocation(line: 186, column: 16, scope: !6302)
!6309 = !DILocation(line: 186, column: 21, scope: !6302)
!6310 = !DILocation(line: 186, column: 30, scope: !6302)
!6311 = !DILocation(line: 186, column: 35, scope: !6302)
!6312 = !DILocation(line: 186, column: 28, scope: !6302)
!6313 = !DILocation(line: 186, column: 14, scope: !6302)
!6314 = !DILocation(line: 185, column: 7, scope: !6297)
!6315 = !DILocation(line: 187, column: 11, scope: !6302)
!6316 = !DILocation(line: 187, column: 4, scope: !6302)
!6317 = !DILocation(line: 188, column: 2, scope: !6297)
!6318 = !DILocation(line: 183, column: 39, scope: !6291)
!6319 = !DILocation(line: 183, column: 2, scope: !6291)
!6320 = distinct !{!6320, !6295, !6321, !5501, !5502}
!6321 = !DILocation(line: 188, column: 2, scope: !6288)
!6322 = !DILocation(line: 190, column: 2, scope: !6273)
!6323 = !DILocation(line: 191, column: 1, scope: !6273)
!6324 = !DISubprogram(name: "_printk", scope: !6325, file: !6325, line: 153, type: !6326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6325 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6326 = !DISubroutineType(types: !6327)
!6327 = !{!129, !207, null}
!6328 = distinct !DISubprogram(name: "bdev_nr_sectors", scope: !162, file: !162, line: 778, type: !6329, scopeLine: 779, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6331)
!6329 = !DISubroutineType(types: !6330)
!6330 = !{!1320, !1315}
!6331 = !{!6332}
!6332 = !DILocalVariable(name: "bdev", arg: 1, scope: !6328, file: !162, line: 778, type: !1315)
!6333 = !DILocation(line: 778, column: 61, scope: !6328)
!6334 = !DILocation(line: 780, column: 9, scope: !6328)
!6335 = !DILocation(line: 780, column: 15, scope: !6328)
!6336 = !DILocation(line: 780, column: 2, scope: !6328)
!6337 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6338, file: !6338, line: 66, type: !6339, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6344)
!6338 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6339 = !DISubroutineType(types: !6340)
!6340 = !{null, !6341, !340}
!6341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6342, size: 64)
!6342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6343)
!6343 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6344 = !{!6345, !6346}
!6345 = !DILocalVariable(name: "v", arg: 1, scope: !6337, file: !6338, line: 66, type: !6341)
!6346 = !DILocalVariable(name: "size", arg: 2, scope: !6337, file: !6338, line: 66, type: !340)
!6347 = !DILocation(line: 66, column: 73, scope: !6337)
!6348 = !DILocation(line: 66, column: 83, scope: !6337)
!6349 = !DILocation(line: 68, column: 19, scope: !6337)
!6350 = !DILocation(line: 68, column: 22, scope: !6337)
!6351 = !DILocation(line: 68, column: 2, scope: !6337)
!6352 = !DILocation(line: 69, column: 2, scope: !6337)
!6353 = !DILocation(line: 70, column: 1, scope: !6337)
!6354 = distinct !DISubprogram(name: "arch_test_bit", scope: !6355, file: !6355, line: 237, type: !5915, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6356)
!6355 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6356 = !{!6357, !6358}
!6357 = !DILocalVariable(name: "nr", arg: 1, scope: !6354, file: !6355, line: 237, type: !196)
!6358 = !DILocalVariable(name: "addr", arg: 2, scope: !6354, file: !6355, line: 237, type: !5917)
!6359 = !DILocation(line: 237, column: 29, scope: !6354)
!6360 = !DILocation(line: 237, column: 63, scope: !6354)
!6361 = !DILocation(line: 239, column: 30, scope: !6354)
!6362 = !DILocation(line: 239, column: 9, scope: !6354)
!6363 = !DILocation(line: 239, column: 54, scope: !6354)
!6364 = !DILocation(line: 239, column: 58, scope: !6354)
!6365 = !DILocation(line: 239, column: 36, scope: !6354)
!6366 = !DILocation(line: 240, column: 26, scope: !6354)
!6367 = !DILocation(line: 240, column: 30, scope: !6354)
!6368 = !DILocation(line: 240, column: 8, scope: !6354)
!6369 = !DILocation(line: 239, column: 2, scope: !6354)
!6370 = distinct !DISubprogram(name: "kasan_check_read", scope: !6371, file: !6371, line: 40, type: !6372, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6374)
!6371 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6372 = !DISubroutineType(types: !6373)
!6373 = !{!712, !6341, !13}
!6374 = !{!6375, !6376}
!6375 = !DILocalVariable(name: "p", arg: 1, scope: !6370, file: !6371, line: 40, type: !6341)
!6376 = !DILocalVariable(name: "size", arg: 2, scope: !6370, file: !6371, line: 40, type: !13)
!6377 = !DILocation(line: 40, column: 58, scope: !6370)
!6378 = !DILocation(line: 40, column: 74, scope: !6370)
!6379 = !DILocation(line: 42, column: 2, scope: !6370)
!6380 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6381, file: !6381, line: 229, type: !6382, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6384)
!6381 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6382 = !DISubroutineType(types: !6383)
!6383 = !{null, !6341, !340, !129}
!6384 = !{!6385, !6386, !6387}
!6385 = !DILocalVariable(name: "ptr", arg: 1, scope: !6380, file: !6381, line: 229, type: !6341)
!6386 = !DILocalVariable(name: "size", arg: 2, scope: !6380, file: !6381, line: 229, type: !340)
!6387 = !DILocalVariable(name: "type", arg: 3, scope: !6380, file: !6381, line: 230, type: !129)
!6388 = !DILocation(line: 229, column: 60, scope: !6380)
!6389 = !DILocation(line: 229, column: 72, scope: !6380)
!6390 = !DILocation(line: 230, column: 15, scope: !6380)
!6391 = !DILocation(line: 230, column: 23, scope: !6380)
!6392 = distinct !DISubprogram(name: "constant_test_bit", scope: !6355, file: !6355, line: 204, type: !6393, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6395)
!6393 = !DISubroutineType(types: !6394)
!6394 = !{!712, !329, !5917}
!6395 = !{!6396, !6397}
!6396 = !DILocalVariable(name: "nr", arg: 1, scope: !6392, file: !6355, line: 204, type: !329)
!6397 = !DILocalVariable(name: "addr", arg: 2, scope: !6392, file: !6355, line: 204, type: !5917)
!6398 = !DILocation(line: 204, column: 52, scope: !6392)
!6399 = !DILocation(line: 204, column: 86, scope: !6392)
!6400 = !DILocation(line: 206, column: 19, scope: !6392)
!6401 = !DILocation(line: 206, column: 22, scope: !6392)
!6402 = !DILocation(line: 206, column: 15, scope: !6392)
!6403 = !DILocation(line: 207, column: 4, scope: !6392)
!6404 = !DILocation(line: 207, column: 9, scope: !6392)
!6405 = !DILocation(line: 207, column: 12, scope: !6392)
!6406 = !DILocation(line: 206, column: 44, scope: !6392)
!6407 = !DILocation(line: 207, column: 37, scope: !6392)
!6408 = !DILocation(line: 206, column: 2, scope: !6392)
!6409 = distinct !DISubprogram(name: "variable_test_bit", scope: !6355, file: !6355, line: 224, type: !6393, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6410)
!6410 = !{!6411, !6412, !6413}
!6411 = !DILocalVariable(name: "nr", arg: 1, scope: !6409, file: !6355, line: 224, type: !329)
!6412 = !DILocalVariable(name: "addr", arg: 2, scope: !6409, file: !6355, line: 224, type: !5917)
!6413 = !DILocalVariable(name: "oldbit", scope: !6409, file: !6355, line: 226, type: !712)
!6414 = !DILocation(line: 224, column: 52, scope: !6409)
!6415 = !DILocation(line: 224, column: 86, scope: !6409)
!6416 = !DILocation(line: 226, column: 2, scope: !6409)
!6417 = !DILocation(line: 226, column: 7, scope: !6409)
!6418 = !DILocation(line: 231, column: 33, scope: !6409)
!6419 = !DILocation(line: 231, column: 46, scope: !6409)
!6420 = !DILocation(line: 228, column: 2, scope: !6409)
!6421 = !{i64 2147806598, i64 2147806672}
!6422 = !DILocation(line: 233, column: 9, scope: !6409)
!6423 = !DILocation(line: 234, column: 1, scope: !6409)
!6424 = !DILocation(line: 233, column: 2, scope: !6409)
