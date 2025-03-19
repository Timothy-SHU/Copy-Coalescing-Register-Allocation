; ModuleID = 'block/blk-lib.c'
source_filename = "block/blk-lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___blkdev_issue_discard: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __blkdev_issue_discard ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_blkdev_issue_discard: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad blkdev_issue_discard ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___blkdev_issue_zeroout: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __blkdev_issue_zeroout ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_blkdev_issue_zeroout: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad blkdev_issue_zeroout ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_blkdev_issue_secure_erase: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad blkdev_issue_secure_erase ; .previous"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.static_call_key = type { ptr, %union.anon.14 }
%union.anon.14 = type { i64 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, %union.anon.13, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.13 = type {}
%struct.bio_vec = type { ptr, i32, i32 }
%struct.block_device = type { i64, i64, ptr, ptr, ptr, i64, i8, i8, i8, i8, i32, %struct.atomic_t, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.mutex, i32, i32, ptr, %struct.mutex, ptr, ptr, i8, %struct.device }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, %struct.mutex, ptr, ptr, i32, %struct.xarray, i32, ptr, i64, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.refcount_struct, ptr, ptr, i32, i64, i32, i32, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i64], ptr, %struct.list_head, %struct.mutex, %struct.queue_limits, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, ptr, ptr, ptr, %struct.mutex, i8 }
%struct.percpu_ref = type { i64, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.queue_limits = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, %struct.list_head }
%struct.page = type { i64, %union.anon.15, %union.anon.24, %struct.atomic_t, [8 x i8] }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { %union.anon.17, ptr, %union.anon.19, i64 }
%union.anon.17 = type { %struct.list_head }
%union.anon.19 = type { i64 }
%union.anon.24 = type { %struct.atomic_t }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, %struct.bio_set, i32, i64, %struct.mutex, i32, ptr, %struct.kobject, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.lockdep_map, i64, i32, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.lockdep_map = type {}

@.str = private unnamed_addr constant [16 x i8] c"block/blk-lib.c\00", align 1, !dbg !0
@__blkdev_issue_discard._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 5000, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8, !dbg !7
@__func__.__blkdev_issue_discard = private unnamed_addr constant [23 x i8] c"__blkdev_issue_discard\00", align 1, !dbg !5365
@.str.1 = private unnamed_addr constant [41 x i8] c"\013%pg: Error: discard_granularity is 0.\0A\00", align 1, !dbg !5370
@__UNIQUE_ID___addressable___blkdev_issue_discard350 = internal global ptr @__blkdev_issue_discard, section ".discard.addressable", align 8, !dbg !5375
@__UNIQUE_ID___addressable_blkdev_issue_discard351 = internal global ptr @blkdev_issue_discard, section ".discard.addressable", align 8, !dbg !5377
@__UNIQUE_ID___addressable___blkdev_issue_zeroout356 = internal global ptr @__blkdev_issue_zeroout, section ".discard.addressable", align 8, !dbg !5379
@__UNIQUE_ID___addressable_blkdev_issue_zeroout357 = internal global ptr @blkdev_issue_zeroout, section ".discard.addressable", align 8, !dbg !5381
@__UNIQUE_ID___addressable_blkdev_issue_secure_erase360 = internal global ptr @blkdev_issue_secure_erase, section ".discard.addressable", align 8, !dbg !5383
@_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched168 = internal global ptr @__SCK__cond_resched, section ".discard.addressable", align 8, !dbg !5385
@__SCK__cond_resched = external dso_local global %struct.static_call_key, align 8
@vmemmap_base = external dso_local global i64, align 8
@empty_zero_page = external dso_local global [512 x i64], align 16
@phys_base = external dso_local global i64, align 8
@page_offset_base = external dso_local global i64, align 8
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID___addressable___blkdev_issue_discard350, ptr @__UNIQUE_ID___addressable_blkdev_issue_discard351, ptr @__UNIQUE_ID___addressable___blkdev_issue_zeroout356, ptr @__UNIQUE_ID___addressable_blkdev_issue_zeroout357, ptr @__UNIQUE_ID___addressable_blkdev_issue_secure_erase360, ptr @_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched168], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__blkdev_issue_discard(ptr noundef %bdev, i64 noundef %sector, i64 noundef %nr_sects, i32 noundef %gfp_mask, ptr noundef %biop) #0 align 16 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %bdev.addr = alloca ptr, align 8
  %sector.addr = alloca i64, align 8
  %nr_sects.addr = alloca i64, align 8
  %gfp_mask.addr = alloca i32, align 4
  %biop.addr = alloca ptr, align 8
  %bio = alloca ptr, align 8
  %bs_mask = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %tmp41 = alloca i32, align 4
  %req_sects = alloca i64, align 8
  %__UNIQUE_ID___x348 = alloca i64, align 8
  %__UNIQUE_ID___y349 = alloca i64, align 8
  %tmp55 = alloca i64, align 8
  %tmp61 = alloca i32, align 4
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !5389, metadata !DIExpression()), !dbg !5416
  store i64 %sector, ptr %sector.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sector.addr, metadata !5390, metadata !DIExpression()), !dbg !5417
  store i64 %nr_sects, ptr %nr_sects.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr_sects.addr, metadata !5391, metadata !DIExpression()), !dbg !5418
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !5392, metadata !DIExpression()), !dbg !5419
  store ptr %biop, ptr %biop.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %biop.addr, metadata !5393, metadata !DIExpression()), !dbg !5420
  call void @llvm.lifetime.start.p0(i64 8, ptr %bio) #10, !dbg !5421
  call void @llvm.dbg.declare(metadata ptr %bio, metadata !5394, metadata !DIExpression()), !dbg !5422
  %0 = load ptr, ptr %biop.addr, align 8, !dbg !5423
  %1 = load ptr, ptr %0, align 8, !dbg !5424
  store ptr %1, ptr %bio, align 8, !dbg !5422
  call void @llvm.lifetime.start.p0(i64 8, ptr %bs_mask) #10, !dbg !5425
  call void @llvm.dbg.declare(metadata ptr %bs_mask, metadata !5395, metadata !DIExpression()), !dbg !5426
  %2 = load ptr, ptr %bdev.addr, align 8, !dbg !5427
  %call = call i32 @bdev_read_only(ptr noundef %2) #11, !dbg !5429
  %tobool = icmp ne i32 %call, 0, !dbg !5429
  br i1 %tobool, label %if.then, label %if.end, !dbg !5430

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !5431
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5431

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %bdev.addr, align 8, !dbg !5432
  %call1 = call i32 @bdev_max_discard_sectors(ptr noundef %3) #11, !dbg !5434
  %tobool2 = icmp ne i32 %call1, 0, !dbg !5434
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !5435

if.then3:                                         ; preds = %if.end
  store i32 -95, ptr %retval, align 4, !dbg !5436
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5436

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !5437
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5396, metadata !DIExpression()), !dbg !5437
  %4 = load ptr, ptr %bdev.addr, align 8, !dbg !5437
  %call5 = call i32 @bdev_discard_granularity(ptr noundef %4) #11, !dbg !5437
  %tobool6 = icmp ne i32 %call5, 0, !dbg !5437
  %lnot = xor i1 %tobool6, true, !dbg !5437
  %lnot7 = xor i1 %lnot, true, !dbg !5437
  %lnot8 = xor i1 %lnot7, true, !dbg !5437
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !5437
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5437
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !5438
  %tobool9 = icmp ne i32 %5, 0, !dbg !5438
  %lnot10 = xor i1 %tobool9, true, !dbg !5438
  %lnot12 = xor i1 %lnot10, true, !dbg !5438
  %lnot.ext13 = zext i1 %lnot12 to i32, !dbg !5438
  %conv = sext i32 %lnot.ext13 to i64, !dbg !5438
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5438
  %tobool14 = icmp ne i64 %expval, 0, !dbg !5438
  br i1 %tobool14, label %if.then15, label %if.end25, !dbg !5437

if.then15:                                        ; preds = %if.end4
  br label %do.body, !dbg !5438

do.body:                                          ; preds = %if.then15
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #10, !dbg !5439
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5399, metadata !DIExpression()), !dbg !5439
  store i32 2307, ptr %__flags, align 4, !dbg !5439
  br label %do.body16, !dbg !5439

do.body16:                                        ; preds = %do.body
  br label %do.cond, !dbg !5440

do.cond:                                          ; preds = %do.body16
  br label %do.end, !dbg !5440

do.end:                                           ; preds = %do.cond
  br label %do.body17, !dbg !5439

do.body17:                                        ; preds = %do.end
  %6 = load i32, ptr %__flags, align 4, !dbg !5442
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 50, i32 %6, i64 12) #10, !dbg !5442, !srcloc !5444
  br label %do.cond18, !dbg !5442

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !5442

do.end19:                                         ; preds = %do.cond18
  br label %do.body20, !dbg !5439

do.body20:                                        ; preds = %do.end19
  br label %do.cond21, !dbg !5445

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !5445

do.end22:                                         ; preds = %do.cond21
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #10, !dbg !5438
  br label %do.cond23, !dbg !5439

do.cond23:                                        ; preds = %do.end22
  br label %do.end24, !dbg !5439

do.end24:                                         ; preds = %do.cond23
  br label %if.end25, !dbg !5439

if.end25:                                         ; preds = %do.end24, %if.end4
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !5437
  %tobool26 = icmp ne i32 %7, 0, !dbg !5437
  %lnot27 = xor i1 %tobool26, true, !dbg !5437
  %lnot29 = xor i1 %lnot27, true, !dbg !5437
  %lnot.ext30 = zext i1 %lnot29 to i32, !dbg !5437
  %conv31 = sext i32 %lnot.ext30 to i64, !dbg !5437
  %expval32 = call i64 @llvm.expect.i64(i64 %conv31, i64 0), !dbg !5437
  store i64 %expval32, ptr %tmp, align 8, !dbg !5438
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !5447
  %8 = load i64, ptr %tmp, align 8, !dbg !5437
  %tobool33 = icmp ne i64 %8, 0, !dbg !5447
  br i1 %tobool33, label %if.then34, label %if.end44, !dbg !5448

if.then34:                                        ; preds = %if.end25
  %call35 = call i32 @___ratelimit(ptr noundef @__blkdev_issue_discard._rs, ptr noundef @__func__.__blkdev_issue_discard) #11, !dbg !5449
  %tobool36 = icmp ne i32 %call35, 0, !dbg !5449
  br i1 %tobool36, label %if.then37, label %if.end43, !dbg !5453

if.then37:                                        ; preds = %if.then34
  br label %do.body38, !dbg !5454

do.body38:                                        ; preds = %if.then37
  br label %do.cond39, !dbg !5456

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !5456

do.end40:                                         ; preds = %do.cond39
  %9 = load ptr, ptr %bdev.addr, align 8, !dbg !5454
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, ptr noundef %9) #12, !dbg !5454
  store i32 %call42, ptr %tmp41, align 4, !dbg !5456
  %10 = load i32, ptr %tmp41, align 4, !dbg !5454
  br label %if.end43, !dbg !5449

if.end43:                                         ; preds = %do.end40, %if.then34
  store i32 -95, ptr %retval, align 4, !dbg !5458
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5458

if.end44:                                         ; preds = %if.end25
  %11 = load ptr, ptr %bdev.addr, align 8, !dbg !5459
  %call45 = call i32 @bdev_logical_block_size(ptr noundef %11) #11, !dbg !5460
  %shr = lshr i32 %call45, 9, !dbg !5461
  %sub = sub i32 %shr, 1, !dbg !5462
  %conv46 = zext i32 %sub to i64, !dbg !5463
  store i64 %conv46, ptr %bs_mask, align 8, !dbg !5464
  %12 = load i64, ptr %sector.addr, align 8, !dbg !5465
  %13 = load i64, ptr %nr_sects.addr, align 8, !dbg !5467
  %or = or i64 %12, %13, !dbg !5468
  %14 = load i64, ptr %bs_mask, align 8, !dbg !5469
  %and = and i64 %or, %14, !dbg !5470
  %tobool47 = icmp ne i64 %and, 0, !dbg !5470
  br i1 %tobool47, label %if.then48, label %if.end49, !dbg !5471

if.then48:                                        ; preds = %if.end44
  store i32 -22, ptr %retval, align 4, !dbg !5472
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5472

if.end49:                                         ; preds = %if.end44
  %15 = load i64, ptr %nr_sects.addr, align 8, !dbg !5473
  %tobool50 = icmp ne i64 %15, 0, !dbg !5473
  br i1 %tobool50, label %if.end52, label %if.then51, !dbg !5475

if.then51:                                        ; preds = %if.end49
  store i32 -22, ptr %retval, align 4, !dbg !5476
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5476

if.end52:                                         ; preds = %if.end49
  br label %while.cond, !dbg !5477

while.cond:                                       ; preds = %cond.end, %if.end52
  %16 = load i64, ptr %nr_sects.addr, align 8, !dbg !5478
  %tobool53 = icmp ne i64 %16, 0, !dbg !5477
  br i1 %tobool53, label %while.body, label %while.end, !dbg !5477

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %req_sects) #10, !dbg !5479
  call void @llvm.dbg.declare(metadata ptr %req_sects, metadata !5402, metadata !DIExpression()), !dbg !5480
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x348) #10, !dbg !5481
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x348, metadata !5404, metadata !DIExpression()), !dbg !5481
  %17 = load i64, ptr %nr_sects.addr, align 8, !dbg !5481
  store i64 %17, ptr %__UNIQUE_ID___x348, align 8, !dbg !5481
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y349) #10, !dbg !5481
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y349, metadata !5406, metadata !DIExpression()), !dbg !5481
  %18 = load ptr, ptr %bdev.addr, align 8, !dbg !5481
  %19 = load i64, ptr %sector.addr, align 8, !dbg !5481
  %call54 = call i64 @bio_discard_limit(ptr noundef %18, i64 noundef %19) #11, !dbg !5481
  store i64 %call54, ptr %__UNIQUE_ID___y349, align 8, !dbg !5481
  %20 = load i64, ptr %__UNIQUE_ID___x348, align 8, !dbg !5481
  %21 = load i64, ptr %__UNIQUE_ID___y349, align 8, !dbg !5481
  %cmp = icmp ult i64 %20, %21, !dbg !5481
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5481

cond.true:                                        ; preds = %while.body
  %22 = load i64, ptr %__UNIQUE_ID___x348, align 8, !dbg !5481
  br label %cond.end, !dbg !5481

cond.false:                                       ; preds = %while.body
  %23 = load i64, ptr %__UNIQUE_ID___y349, align 8, !dbg !5481
  br label %cond.end, !dbg !5481

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %22, %cond.true ], [ %23, %cond.false ], !dbg !5481
  store i64 %cond, ptr %tmp55, align 8, !dbg !5481
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y349) #10, !dbg !5482
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x348) #10, !dbg !5482
  %24 = load i64, ptr %tmp55, align 8, !dbg !5481
  store i64 %24, ptr %req_sects, align 8, !dbg !5480
  %25 = load ptr, ptr %bio, align 8, !dbg !5483
  %26 = load ptr, ptr %bdev.addr, align 8, !dbg !5484
  %27 = load i32, ptr %gfp_mask.addr, align 4, !dbg !5485
  %call57 = call ptr @blk_next_bio(ptr noundef %25, ptr noundef %26, i32 noundef 0, i32 noundef 3, i32 noundef %27) #11, !dbg !5486
  store ptr %call57, ptr %bio, align 8, !dbg !5487
  %28 = load i64, ptr %sector.addr, align 8, !dbg !5488
  %29 = load ptr, ptr %bio, align 8, !dbg !5489
  %bi_iter = getelementptr inbounds %struct.bio, ptr %29, i32 0, i32 7, !dbg !5490
  %bi_sector = getelementptr inbounds %struct.bvec_iter, ptr %bi_iter, i32 0, i32 0, !dbg !5491
  store i64 %28, ptr %bi_sector, align 8, !dbg !5492
  %30 = load i64, ptr %req_sects, align 8, !dbg !5493
  %shl = shl i64 %30, 9, !dbg !5494
  %conv58 = trunc i64 %shl to i32, !dbg !5493
  %31 = load ptr, ptr %bio, align 8, !dbg !5495
  %bi_iter59 = getelementptr inbounds %struct.bio, ptr %31, i32 0, i32 7, !dbg !5496
  %bi_size = getelementptr inbounds %struct.bvec_iter, ptr %bi_iter59, i32 0, i32 1, !dbg !5497
  store i32 %conv58, ptr %bi_size, align 8, !dbg !5498
  %32 = load i64, ptr %req_sects, align 8, !dbg !5499
  %33 = load i64, ptr %sector.addr, align 8, !dbg !5500
  %add = add i64 %33, %32, !dbg !5500
  store i64 %add, ptr %sector.addr, align 8, !dbg !5500
  %34 = load i64, ptr %req_sects, align 8, !dbg !5501
  %35 = load i64, ptr %nr_sects.addr, align 8, !dbg !5502
  %sub60 = sub i64 %35, %34, !dbg !5502
  store i64 %sub60, ptr %nr_sects.addr, align 8, !dbg !5502
  call void @__might_resched(ptr noundef @.str, i32 noundef 79, i32 noundef 0) #11, !dbg !5503
  %call62 = call i32 @_cond_resched() #11, !dbg !5503
  store i32 %call62, ptr %tmp61, align 4, !dbg !5503
  %36 = load i32, ptr %tmp61, align 4, !dbg !5503
  call void @llvm.lifetime.end.p0(i64 8, ptr %req_sects) #10, !dbg !5505
  br label %while.cond, !dbg !5477, !llvm.loop !5506

while.end:                                        ; preds = %while.cond
  %37 = load ptr, ptr %bio, align 8, !dbg !5509
  %38 = load ptr, ptr %biop.addr, align 8, !dbg !5510
  store ptr %37, ptr %38, align 8, !dbg !5511
  store i32 0, ptr %retval, align 4, !dbg !5512
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5512

cleanup:                                          ; preds = %while.end, %if.then51, %if.then48, %if.end43, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bs_mask) #10, !dbg !5513
  call void @llvm.lifetime.end.p0(i64 8, ptr %bio) #10, !dbg !5513
  %39 = load i32, ptr %retval, align 4, !dbg !5513
  ret i32 %39, !dbg !5513
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @bdev_read_only(ptr noundef %bdev) #3 align 16 !dbg !5514 {
entry:
  %bdev.addr = alloca ptr, align 8
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !5518, metadata !DIExpression()), !dbg !5519
  %0 = load ptr, ptr %bdev.addr, align 8, !dbg !5520
  %bd_read_only = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 6, !dbg !5521
  %1 = load i8, ptr %bd_read_only, align 8, !dbg !5521, !range !5522, !noundef !137
  %tobool = trunc i8 %1 to i1, !dbg !5521
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !5523

lor.rhs:                                          ; preds = %entry
  %2 = load ptr, ptr %bdev.addr, align 8, !dbg !5524
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %2, i32 0, i32 2, !dbg !5525
  %3 = load ptr, ptr %bd_disk, align 8, !dbg !5525
  %call = call i32 @get_disk_ro(ptr noundef %3) #11, !dbg !5526
  %tobool1 = icmp ne i32 %call, 0, !dbg !5523
  br label %lor.end, !dbg !5523

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %tobool1, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32, !dbg !5523
  ret i32 %lor.ext, !dbg !5527
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @bdev_max_discard_sectors(ptr noundef %bdev) #3 align 16 !dbg !5528 {
entry:
  %bdev.addr = alloca ptr, align 8
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !5532, metadata !DIExpression()), !dbg !5533
  %0 = load ptr, ptr %bdev.addr, align 8, !dbg !5534
  %call = call ptr @bdev_get_queue(ptr noundef %0) #11, !dbg !5535
  %limits = getelementptr inbounds %struct.request_queue, ptr %call, i32 0, i32 33, !dbg !5536
  %max_discard_sectors = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 14, !dbg !5537
  %1 = load i32, ptr %max_discard_sectors, align 4, !dbg !5537
  ret i32 %1, !dbg !5538
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @bdev_discard_granularity(ptr noundef %bdev) #3 align 16 !dbg !5539 {
entry:
  %bdev.addr = alloca ptr, align 8
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !5541, metadata !DIExpression()), !dbg !5542
  %0 = load ptr, ptr %bdev.addr, align 8, !dbg !5543
  %call = call ptr @bdev_get_queue(ptr noundef %0) #11, !dbg !5544
  %limits = getelementptr inbounds %struct.request_queue, ptr %call, i32 0, i32 33, !dbg !5545
  %discard_granularity = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 19, !dbg !5546
  %1 = load i32, ptr %discard_granularity, align 8, !dbg !5546
  ret i32 %1, !dbg !5547
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5548 dso_local i32 @___ratelimit(ptr noundef, ptr noundef) #5

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5552 dso_local i32 @_printk(ptr noundef, ...) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @bdev_logical_block_size(ptr noundef %bdev) #3 align 16 !dbg !5556 {
entry:
  %bdev.addr = alloca ptr, align 8
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !5558, metadata !DIExpression()), !dbg !5559
  %0 = load ptr, ptr %bdev.addr, align 8, !dbg !5560
  %call = call ptr @bdev_get_queue(ptr noundef %0) #11, !dbg !5561
  %call1 = call i32 @queue_logical_block_size(ptr noundef %call) #11, !dbg !5562
  ret i32 %call1, !dbg !5563
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @bio_discard_limit(ptr noundef %bdev, i64 noundef %sector) #0 align 16 !dbg !5564 {
entry:
  %retval = alloca i64, align 8
  %bdev.addr = alloca ptr, align 8
  %sector.addr = alloca i64, align 8
  %discard_granularity = alloca i32, align 4
  %granularity_aligned_sector = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !5568, metadata !DIExpression()), !dbg !5572
  store i64 %sector, ptr %sector.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sector.addr, metadata !5569, metadata !DIExpression()), !dbg !5573
  call void @llvm.lifetime.start.p0(i64 4, ptr %discard_granularity) #10, !dbg !5574
  call void @llvm.dbg.declare(metadata ptr %discard_granularity, metadata !5570, metadata !DIExpression()), !dbg !5575
  %0 = load ptr, ptr %bdev.addr, align 8, !dbg !5576
  %call = call i32 @bdev_discard_granularity(ptr noundef %0) #11, !dbg !5577
  store i32 %call, ptr %discard_granularity, align 4, !dbg !5575
  call void @llvm.lifetime.start.p0(i64 8, ptr %granularity_aligned_sector) #10, !dbg !5578
  call void @llvm.dbg.declare(metadata ptr %granularity_aligned_sector, metadata !5571, metadata !DIExpression()), !dbg !5579
  %1 = load ptr, ptr %bdev.addr, align 8, !dbg !5580
  %call1 = call zeroext i1 @bdev_is_partition(ptr noundef %1) #11, !dbg !5582
  br i1 %call1, label %if.then, label %if.end, !dbg !5583

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %bdev.addr, align 8, !dbg !5584
  %bd_start_sect = getelementptr inbounds %struct.block_device, ptr %2, i32 0, i32 0, !dbg !5585
  %3 = load i64, ptr %bd_start_sect, align 8, !dbg !5585
  %4 = load i64, ptr %sector.addr, align 8, !dbg !5586
  %add = add i64 %4, %3, !dbg !5586
  store i64 %add, ptr %sector.addr, align 8, !dbg !5586
  br label %if.end, !dbg !5587

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %sector.addr, align 8, !dbg !5588
  %sub = sub i64 %5, 1, !dbg !5588
  %6 = load i32, ptr %discard_granularity, align 4, !dbg !5588
  %shr = lshr i32 %6, 9, !dbg !5588
  %sub2 = sub i32 %shr, 1, !dbg !5588
  %conv = zext i32 %sub2 to i64, !dbg !5588
  %or = or i64 %sub, %conv, !dbg !5588
  %add3 = add i64 %or, 1, !dbg !5588
  store i64 %add3, ptr %granularity_aligned_sector, align 8, !dbg !5589
  %7 = load i64, ptr %granularity_aligned_sector, align 8, !dbg !5590
  %8 = load i64, ptr %sector.addr, align 8, !dbg !5592
  %cmp = icmp ne i64 %7, %8, !dbg !5593
  br i1 %cmp, label %if.then5, label %if.end7, !dbg !5594

if.then5:                                         ; preds = %if.end
  %9 = load i64, ptr %granularity_aligned_sector, align 8, !dbg !5595
  %10 = load i64, ptr %sector.addr, align 8, !dbg !5596
  %sub6 = sub i64 %9, %10, !dbg !5597
  store i64 %sub6, ptr %retval, align 8, !dbg !5598
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5598

if.end7:                                          ; preds = %if.end
  %11 = load i32, ptr %discard_granularity, align 4, !dbg !5599
  %sub8 = sub i32 %11, 1, !dbg !5599
  %not = xor i32 %sub8, -1, !dbg !5599
  %and = and i32 -1, %not, !dbg !5599
  %shr9 = lshr i32 %and, 9, !dbg !5600
  %conv10 = zext i32 %shr9 to i64, !dbg !5599
  store i64 %conv10, ptr %retval, align 8, !dbg !5601
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5601

cleanup:                                          ; preds = %if.end7, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %granularity_aligned_sector) #10, !dbg !5602
  call void @llvm.lifetime.end.p0(i64 4, ptr %discard_granularity) #10, !dbg !5602
  %12 = load i64, ptr %retval, align 8, !dbg !5602
  ret i64 %12, !dbg !5602
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5603 dso_local ptr @blk_next_bio(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__might_resched(ptr noundef %file, i32 noundef %line, i32 noundef %offsets) #3 align 16 !dbg !5606 {
entry:
  %file.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %offsets.addr = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5611, metadata !DIExpression()), !dbg !5614
  store i32 %line, ptr %line.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !5612, metadata !DIExpression()), !dbg !5615
  store i32 %offsets, ptr %offsets.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offsets.addr, metadata !5613, metadata !DIExpression()), !dbg !5616
  ret void, !dbg !5617
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @_cond_resched() #7 align 16 !dbg !5387 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__cond_resched, ptr %tmp, align 8, !dbg !5618
  %0 = load ptr, ptr %tmp, align 8, !dbg !5618
  %call = call i32 %0() #11, !dbg !5620
  ret i32 %call, !dbg !5621
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @blkdev_issue_discard(ptr noundef %bdev, i64 noundef %sector, i64 noundef %nr_sects, i32 noundef %gfp_mask) #0 align 16 !dbg !5622 {
entry:
  %bdev.addr = alloca ptr, align 8
  %sector.addr = alloca i64, align 8
  %nr_sects.addr = alloca i64, align 8
  %gfp_mask.addr = alloca i32, align 4
  %bio = alloca ptr, align 8
  %plug = alloca %struct.blk_plug, align 8
  %ret = alloca i32, align 4
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !5626, metadata !DIExpression()), !dbg !5633
  store i64 %sector, ptr %sector.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sector.addr, metadata !5627, metadata !DIExpression()), !dbg !5634
  store i64 %nr_sects, ptr %nr_sects.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr_sects.addr, metadata !5628, metadata !DIExpression()), !dbg !5635
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !5629, metadata !DIExpression()), !dbg !5636
  call void @llvm.lifetime.start.p0(i64 8, ptr %bio) #10, !dbg !5637
  call void @llvm.dbg.declare(metadata ptr %bio, metadata !5630, metadata !DIExpression()), !dbg !5638
  store ptr null, ptr %bio, align 8, !dbg !5638
  call void @llvm.lifetime.start.p0(i64 40, ptr %plug) #10, !dbg !5639
  call void @llvm.dbg.declare(metadata ptr %plug, metadata !5631, metadata !DIExpression()), !dbg !5640
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !5641
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5632, metadata !DIExpression()), !dbg !5642
  call void @blk_start_plug(ptr noundef %plug) #11, !dbg !5643
  %0 = load ptr, ptr %bdev.addr, align 8, !dbg !5644
  %1 = load i64, ptr %sector.addr, align 8, !dbg !5645
  %2 = load i64, ptr %nr_sects.addr, align 8, !dbg !5646
  %3 = load i32, ptr %gfp_mask.addr, align 4, !dbg !5647
  %call = call i32 @__blkdev_issue_discard(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %bio) #11, !dbg !5648
  store i32 %call, ptr %ret, align 4, !dbg !5649
  %4 = load i32, ptr %ret, align 4, !dbg !5650
  %tobool = icmp ne i32 %4, 0, !dbg !5650
  br i1 %tobool, label %if.end4, label %land.lhs.true, !dbg !5652

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %bio, align 8, !dbg !5653
  %tobool1 = icmp ne ptr %5, null, !dbg !5653
  br i1 %tobool1, label %if.then, label %if.end4, !dbg !5654

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %bio, align 8, !dbg !5655
  %call2 = call i32 @submit_bio_wait(ptr noundef %6) #11, !dbg !5657
  store i32 %call2, ptr %ret, align 4, !dbg !5658
  %7 = load i32, ptr %ret, align 4, !dbg !5659
  %cmp = icmp eq i32 %7, -95, !dbg !5661
  br i1 %cmp, label %if.then3, label %if.end, !dbg !5662

if.then3:                                         ; preds = %if.then
  store i32 0, ptr %ret, align 4, !dbg !5663
  br label %if.end, !dbg !5664

if.end:                                           ; preds = %if.then3, %if.then
  %8 = load ptr, ptr %bio, align 8, !dbg !5665
  call void @bio_put(ptr noundef %8) #11, !dbg !5666
  br label %if.end4, !dbg !5667

if.end4:                                          ; preds = %if.end, %land.lhs.true, %entry
  call void @blk_finish_plug(ptr noundef %plug) #11, !dbg !5668
  %9 = load i32, ptr %ret, align 4, !dbg !5669
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !5670
  call void @llvm.lifetime.end.p0(i64 40, ptr %plug) #10, !dbg !5670
  call void @llvm.lifetime.end.p0(i64 8, ptr %bio) #10, !dbg !5670
  ret i32 %9, !dbg !5671
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5672 dso_local void @blk_start_plug(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5675 dso_local i32 @submit_bio_wait(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5678 dso_local void @bio_put(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5679 dso_local void @blk_finish_plug(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__blkdev_issue_zeroout(ptr noundef %bdev, i64 noundef %sector, i64 noundef %nr_sects, i32 noundef %gfp_mask, ptr noundef %biop, i32 noundef %flags) #0 align 16 !dbg !5680 {
entry:
  %retval = alloca i32, align 4
  %bdev.addr = alloca ptr, align 8
  %sector.addr = alloca i64, align 8
  %nr_sects.addr = alloca i64, align 8
  %gfp_mask.addr = alloca i32, align 4
  %biop.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %bs_mask = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !5684, metadata !DIExpression()), !dbg !5692
  store i64 %sector, ptr %sector.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sector.addr, metadata !5685, metadata !DIExpression()), !dbg !5693
  store i64 %nr_sects, ptr %nr_sects.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr_sects.addr, metadata !5686, metadata !DIExpression()), !dbg !5694
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !5687, metadata !DIExpression()), !dbg !5695
  store ptr %biop, ptr %biop.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %biop.addr, metadata !5688, metadata !DIExpression()), !dbg !5696
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5689, metadata !DIExpression()), !dbg !5697
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !5698
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5690, metadata !DIExpression()), !dbg !5699
  call void @llvm.lifetime.start.p0(i64 8, ptr %bs_mask) #10, !dbg !5700
  call void @llvm.dbg.declare(metadata ptr %bs_mask, metadata !5691, metadata !DIExpression()), !dbg !5701
  %0 = load ptr, ptr %bdev.addr, align 8, !dbg !5702
  %call = call i32 @bdev_logical_block_size(ptr noundef %0) #11, !dbg !5703
  %shr = lshr i32 %call, 9, !dbg !5704
  %sub = sub i32 %shr, 1, !dbg !5705
  %conv = zext i32 %sub to i64, !dbg !5706
  store i64 %conv, ptr %bs_mask, align 8, !dbg !5707
  %1 = load i64, ptr %sector.addr, align 8, !dbg !5708
  %2 = load i64, ptr %nr_sects.addr, align 8, !dbg !5710
  %or = or i64 %1, %2, !dbg !5711
  %3 = load i64, ptr %bs_mask, align 8, !dbg !5712
  %and = and i64 %or, %3, !dbg !5713
  %tobool = icmp ne i64 %and, 0, !dbg !5713
  br i1 %tobool, label %if.then, label %if.end, !dbg !5714

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5715
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5715

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %bdev.addr, align 8, !dbg !5716
  %5 = load i64, ptr %sector.addr, align 8, !dbg !5717
  %6 = load i64, ptr %nr_sects.addr, align 8, !dbg !5718
  %7 = load i32, ptr %gfp_mask.addr, align 4, !dbg !5719
  %8 = load ptr, ptr %biop.addr, align 8, !dbg !5720
  %9 = load i32, ptr %flags.addr, align 4, !dbg !5721
  %call1 = call i32 @__blkdev_issue_write_zeroes(ptr noundef %4, i64 noundef %5, i64 noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9) #11, !dbg !5722
  store i32 %call1, ptr %ret, align 4, !dbg !5723
  %10 = load i32, ptr %ret, align 4, !dbg !5724
  %cmp = icmp ne i32 %10, -95, !dbg !5726
  br i1 %cmp, label %if.then5, label %lor.lhs.false, !dbg !5727

lor.lhs.false:                                    ; preds = %if.end
  %11 = load i32, ptr %flags.addr, align 4, !dbg !5728
  %and3 = and i32 %11, 2, !dbg !5729
  %tobool4 = icmp ne i32 %and3, 0, !dbg !5729
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !5730

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  %12 = load i32, ptr %ret, align 4, !dbg !5731
  store i32 %12, ptr %retval, align 4, !dbg !5732
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5732

if.end6:                                          ; preds = %lor.lhs.false
  %13 = load ptr, ptr %bdev.addr, align 8, !dbg !5733
  %14 = load i64, ptr %sector.addr, align 8, !dbg !5734
  %15 = load i64, ptr %nr_sects.addr, align 8, !dbg !5735
  %16 = load i32, ptr %gfp_mask.addr, align 4, !dbg !5736
  %17 = load ptr, ptr %biop.addr, align 8, !dbg !5737
  %call7 = call i32 @__blkdev_issue_zero_pages(ptr noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16, ptr noundef %17) #11, !dbg !5738
  store i32 %call7, ptr %retval, align 4, !dbg !5739
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5739

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bs_mask) #10, !dbg !5740
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !5740
  %18 = load i32, ptr %retval, align 4, !dbg !5740
  ret i32 %18, !dbg !5740
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__blkdev_issue_write_zeroes(ptr noundef %bdev, i64 noundef %sector, i64 noundef %nr_sects, i32 noundef %gfp_mask, ptr noundef %biop, i32 noundef %flags) #0 align 16 !dbg !5741 {
entry:
  %retval = alloca i32, align 4
  %bdev.addr = alloca ptr, align 8
  %sector.addr = alloca i64, align 8
  %nr_sects.addr = alloca i64, align 8
  %gfp_mask.addr = alloca i32, align 4
  %biop.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %bio = alloca ptr, align 8
  %max_write_zeroes_sectors = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !5743, metadata !DIExpression()), !dbg !5751
  store i64 %sector, ptr %sector.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sector.addr, metadata !5744, metadata !DIExpression()), !dbg !5752
  store i64 %nr_sects, ptr %nr_sects.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr_sects.addr, metadata !5745, metadata !DIExpression()), !dbg !5753
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !5746, metadata !DIExpression()), !dbg !5754
  store ptr %biop, ptr %biop.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %biop.addr, metadata !5747, metadata !DIExpression()), !dbg !5755
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5748, metadata !DIExpression()), !dbg !5756
  call void @llvm.lifetime.start.p0(i64 8, ptr %bio) #10, !dbg !5757
  call void @llvm.dbg.declare(metadata ptr %bio, metadata !5749, metadata !DIExpression()), !dbg !5758
  %0 = load ptr, ptr %biop.addr, align 8, !dbg !5759
  %1 = load ptr, ptr %0, align 8, !dbg !5760
  store ptr %1, ptr %bio, align 8, !dbg !5758
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_write_zeroes_sectors) #10, !dbg !5761
  call void @llvm.dbg.declare(metadata ptr %max_write_zeroes_sectors, metadata !5750, metadata !DIExpression()), !dbg !5762
  %2 = load ptr, ptr %bdev.addr, align 8, !dbg !5763
  %call = call i32 @bdev_read_only(ptr noundef %2) #11, !dbg !5765
  %tobool = icmp ne i32 %call, 0, !dbg !5765
  br i1 %tobool, label %if.then, label %if.end, !dbg !5766

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !5767
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5767

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %bdev.addr, align 8, !dbg !5768
  %call1 = call i32 @bdev_write_zeroes_sectors(ptr noundef %3) #11, !dbg !5769
  store i32 %call1, ptr %max_write_zeroes_sectors, align 4, !dbg !5770
  %4 = load i32, ptr %max_write_zeroes_sectors, align 4, !dbg !5771
  %cmp = icmp eq i32 %4, 0, !dbg !5773
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5774

if.then2:                                         ; preds = %if.end
  store i32 -95, ptr %retval, align 4, !dbg !5775
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5775

if.end3:                                          ; preds = %if.end
  br label %while.cond, !dbg !5776

while.cond:                                       ; preds = %if.end19, %if.end3
  %5 = load i64, ptr %nr_sects.addr, align 8, !dbg !5777
  %tobool4 = icmp ne i64 %5, 0, !dbg !5776
  br i1 %tobool4, label %while.body, label %while.end, !dbg !5776

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %bio, align 8, !dbg !5778
  %7 = load ptr, ptr %bdev.addr, align 8, !dbg !5780
  %8 = load i32, ptr %gfp_mask.addr, align 4, !dbg !5781
  %call5 = call ptr @blk_next_bio(ptr noundef %6, ptr noundef %7, i32 noundef 0, i32 noundef 9, i32 noundef %8) #11, !dbg !5782
  store ptr %call5, ptr %bio, align 8, !dbg !5783
  %9 = load i64, ptr %sector.addr, align 8, !dbg !5784
  %10 = load ptr, ptr %bio, align 8, !dbg !5785
  %bi_iter = getelementptr inbounds %struct.bio, ptr %10, i32 0, i32 7, !dbg !5786
  %bi_sector = getelementptr inbounds %struct.bvec_iter, ptr %bi_iter, i32 0, i32 0, !dbg !5787
  store i64 %9, ptr %bi_sector, align 8, !dbg !5788
  %11 = load i32, ptr %flags.addr, align 4, !dbg !5789
  %and = and i32 %11, 1, !dbg !5791
  %tobool6 = icmp ne i32 %and, 0, !dbg !5791
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5792

if.then7:                                         ; preds = %while.body
  %12 = load ptr, ptr %bio, align 8, !dbg !5793
  %bi_opf = getelementptr inbounds %struct.bio, ptr %12, i32 0, i32 2, !dbg !5794
  %13 = load i32, ptr %bi_opf, align 8, !dbg !5795
  %or = or i32 %13, 134217728, !dbg !5795
  store i32 %or, ptr %bi_opf, align 8, !dbg !5795
  br label %if.end8, !dbg !5793

if.end8:                                          ; preds = %if.then7, %while.body
  %14 = load i64, ptr %nr_sects.addr, align 8, !dbg !5796
  %15 = load i32, ptr %max_write_zeroes_sectors, align 4, !dbg !5798
  %conv = zext i32 %15 to i64, !dbg !5798
  %cmp9 = icmp ugt i64 %14, %conv, !dbg !5799
  br i1 %cmp9, label %if.then11, label %if.else, !dbg !5800

if.then11:                                        ; preds = %if.end8
  %16 = load i32, ptr %max_write_zeroes_sectors, align 4, !dbg !5801
  %shl = shl i32 %16, 9, !dbg !5803
  %17 = load ptr, ptr %bio, align 8, !dbg !5804
  %bi_iter12 = getelementptr inbounds %struct.bio, ptr %17, i32 0, i32 7, !dbg !5805
  %bi_size = getelementptr inbounds %struct.bvec_iter, ptr %bi_iter12, i32 0, i32 1, !dbg !5806
  store i32 %shl, ptr %bi_size, align 8, !dbg !5807
  %18 = load i32, ptr %max_write_zeroes_sectors, align 4, !dbg !5808
  %conv13 = zext i32 %18 to i64, !dbg !5808
  %19 = load i64, ptr %nr_sects.addr, align 8, !dbg !5809
  %sub = sub i64 %19, %conv13, !dbg !5809
  store i64 %sub, ptr %nr_sects.addr, align 8, !dbg !5809
  %20 = load i32, ptr %max_write_zeroes_sectors, align 4, !dbg !5810
  %conv14 = zext i32 %20 to i64, !dbg !5810
  %21 = load i64, ptr %sector.addr, align 8, !dbg !5811
  %add = add i64 %21, %conv14, !dbg !5811
  store i64 %add, ptr %sector.addr, align 8, !dbg !5811
  br label %if.end19, !dbg !5812

if.else:                                          ; preds = %if.end8
  %22 = load i64, ptr %nr_sects.addr, align 8, !dbg !5813
  %shl15 = shl i64 %22, 9, !dbg !5815
  %conv16 = trunc i64 %shl15 to i32, !dbg !5813
  %23 = load ptr, ptr %bio, align 8, !dbg !5816
  %bi_iter17 = getelementptr inbounds %struct.bio, ptr %23, i32 0, i32 7, !dbg !5817
  %bi_size18 = getelementptr inbounds %struct.bvec_iter, ptr %bi_iter17, i32 0, i32 1, !dbg !5818
  store i32 %conv16, ptr %bi_size18, align 8, !dbg !5819
  store i64 0, ptr %nr_sects.addr, align 8, !dbg !5820
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then11
  call void @__might_resched(ptr noundef @.str, i32 noundef 148, i32 noundef 0) #11, !dbg !5821
  %call20 = call i32 @_cond_resched() #11, !dbg !5821
  store i32 %call20, ptr %tmp, align 4, !dbg !5821
  %24 = load i32, ptr %tmp, align 4, !dbg !5821
  br label %while.cond, !dbg !5776, !llvm.loop !5823

while.end:                                        ; preds = %while.cond
  %25 = load ptr, ptr %bio, align 8, !dbg !5825
  %26 = load ptr, ptr %biop.addr, align 8, !dbg !5826
  store ptr %25, ptr %26, align 8, !dbg !5827
  store i32 0, ptr %retval, align 4, !dbg !5828
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5828

cleanup:                                          ; preds = %while.end, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_write_zeroes_sectors) #10, !dbg !5829
  call void @llvm.lifetime.end.p0(i64 8, ptr %bio) #10, !dbg !5829
  %27 = load i32, ptr %retval, align 4, !dbg !5829
  ret i32 %27, !dbg !5829
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__blkdev_issue_zero_pages(ptr noundef %bdev, i64 noundef %sector, i64 noundef %nr_sects, i32 noundef %gfp_mask, ptr noundef %biop) #0 align 16 !dbg !5830 {
entry:
  %retval = alloca i32, align 4
  %bdev.addr = alloca ptr, align 8
  %sector.addr = alloca i64, align 8
  %nr_sects.addr = alloca i64, align 8
  %gfp_mask.addr = alloca i32, align 4
  %biop.addr = alloca ptr, align 8
  %bio = alloca ptr, align 8
  %bi_size = alloca i32, align 4
  %sz = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID___x354 = alloca i64, align 8
  %__UNIQUE_ID___y355 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp17 = alloca i32, align 4
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !5832, metadata !DIExpression()), !dbg !5845
  store i64 %sector, ptr %sector.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sector.addr, metadata !5833, metadata !DIExpression()), !dbg !5846
  store i64 %nr_sects, ptr %nr_sects.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr_sects.addr, metadata !5834, metadata !DIExpression()), !dbg !5847
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !5835, metadata !DIExpression()), !dbg !5848
  store ptr %biop, ptr %biop.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %biop.addr, metadata !5836, metadata !DIExpression()), !dbg !5849
  call void @llvm.lifetime.start.p0(i64 8, ptr %bio) #10, !dbg !5850
  call void @llvm.dbg.declare(metadata ptr %bio, metadata !5837, metadata !DIExpression()), !dbg !5851
  %0 = load ptr, ptr %biop.addr, align 8, !dbg !5852
  %1 = load ptr, ptr %0, align 8, !dbg !5853
  store ptr %1, ptr %bio, align 8, !dbg !5851
  call void @llvm.lifetime.start.p0(i64 4, ptr %bi_size) #10, !dbg !5854
  call void @llvm.dbg.declare(metadata ptr %bi_size, metadata !5838, metadata !DIExpression()), !dbg !5855
  store i32 0, ptr %bi_size, align 4, !dbg !5855
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #10, !dbg !5856
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !5839, metadata !DIExpression()), !dbg !5857
  %2 = load ptr, ptr %bdev.addr, align 8, !dbg !5858
  %call = call i32 @bdev_read_only(ptr noundef %2) #11, !dbg !5860
  %tobool = icmp ne i32 %call, 0, !dbg !5860
  br i1 %tobool, label %if.then, label %if.end, !dbg !5861

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !5862
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5862

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !5863

while.cond:                                       ; preds = %while.end, %if.end
  %3 = load i64, ptr %nr_sects.addr, align 8, !dbg !5864
  %cmp = icmp ne i64 %3, 0, !dbg !5865
  br i1 %cmp, label %while.body, label %while.end19, !dbg !5863

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %bio, align 8, !dbg !5866
  %5 = load ptr, ptr %bdev.addr, align 8, !dbg !5867
  %6 = load i64, ptr %nr_sects.addr, align 8, !dbg !5868
  %call1 = call i32 @__blkdev_sectors_to_bio_pages(i64 noundef %6) #11, !dbg !5869
  %7 = load i32, ptr %gfp_mask.addr, align 4, !dbg !5870
  %call2 = call ptr @blk_next_bio(ptr noundef %4, ptr noundef %5, i32 noundef %call1, i32 noundef 1, i32 noundef %7) #11, !dbg !5871
  store ptr %call2, ptr %bio, align 8, !dbg !5872
  %8 = load i64, ptr %sector.addr, align 8, !dbg !5873
  %9 = load ptr, ptr %bio, align 8, !dbg !5874
  %bi_iter = getelementptr inbounds %struct.bio, ptr %9, i32 0, i32 7, !dbg !5875
  %bi_sector = getelementptr inbounds %struct.bvec_iter, ptr %bi_iter, i32 0, i32 0, !dbg !5876
  store i64 %8, ptr %bi_sector, align 8, !dbg !5877
  br label %while.cond3, !dbg !5878

while.cond3:                                      ; preds = %if.end16, %while.body
  %10 = load i64, ptr %nr_sects.addr, align 8, !dbg !5879
  %cmp4 = icmp ne i64 %10, 0, !dbg !5880
  br i1 %cmp4, label %while.body5, label %while.end, !dbg !5878

while.body5:                                      ; preds = %while.cond3
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x354) #10, !dbg !5881
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x354, metadata !5840, metadata !DIExpression()), !dbg !5881
  store i64 4096, ptr %__UNIQUE_ID___x354, align 8, !dbg !5881
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y355) #10, !dbg !5881
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y355, metadata !5844, metadata !DIExpression()), !dbg !5881
  %11 = load i64, ptr %nr_sects.addr, align 8, !dbg !5881
  %shl = shl i64 %11, 9, !dbg !5881
  store i64 %shl, ptr %__UNIQUE_ID___y355, align 8, !dbg !5881
  %12 = load i64, ptr %__UNIQUE_ID___x354, align 8, !dbg !5881
  %13 = load i64, ptr %__UNIQUE_ID___y355, align 8, !dbg !5881
  %cmp6 = icmp ult i64 %12, %13, !dbg !5881
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !5881

cond.true:                                        ; preds = %while.body5
  %14 = load i64, ptr %__UNIQUE_ID___x354, align 8, !dbg !5881
  br label %cond.end, !dbg !5881

cond.false:                                       ; preds = %while.body5
  %15 = load i64, ptr %__UNIQUE_ID___y355, align 8, !dbg !5881
  br label %cond.end, !dbg !5881

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %14, %cond.true ], [ %15, %cond.false ], !dbg !5881
  store i64 %cond, ptr %tmp, align 8, !dbg !5881
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y355) #10, !dbg !5882
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x354) #10, !dbg !5882
  %16 = load i64, ptr %tmp, align 8, !dbg !5881
  %conv = trunc i64 %16 to i32, !dbg !5882
  store i32 %conv, ptr %sz, align 4, !dbg !5883
  %17 = load ptr, ptr %bio, align 8, !dbg !5884
  %18 = load i64, ptr @vmemmap_base, align 8, !dbg !5885
  %19 = inttoptr i64 %18 to ptr, !dbg !5885
  %call7 = call i64 @__phys_addr_nodebug(i64 noundef ptrtoint (ptr @empty_zero_page to i64)) #11, !dbg !5885
  %shr = lshr i64 %call7, 12, !dbg !5885
  %add.ptr = getelementptr %struct.page, ptr %19, i64 %shr, !dbg !5885
  %20 = load i32, ptr %sz, align 4, !dbg !5886
  %call8 = call i32 @bio_add_page(ptr noundef %17, ptr noundef %add.ptr, i32 noundef %20, i32 noundef 0) #11, !dbg !5887
  store i32 %call8, ptr %bi_size, align 4, !dbg !5888
  %21 = load i32, ptr %bi_size, align 4, !dbg !5889
  %shr9 = ashr i32 %21, 9, !dbg !5890
  %conv10 = sext i32 %shr9 to i64, !dbg !5889
  %22 = load i64, ptr %nr_sects.addr, align 8, !dbg !5891
  %sub = sub i64 %22, %conv10, !dbg !5891
  store i64 %sub, ptr %nr_sects.addr, align 8, !dbg !5891
  %23 = load i32, ptr %bi_size, align 4, !dbg !5892
  %shr11 = ashr i32 %23, 9, !dbg !5893
  %conv12 = sext i32 %shr11 to i64, !dbg !5892
  %24 = load i64, ptr %sector.addr, align 8, !dbg !5894
  %add = add i64 %24, %conv12, !dbg !5894
  store i64 %add, ptr %sector.addr, align 8, !dbg !5894
  %25 = load i32, ptr %bi_size, align 4, !dbg !5895
  %26 = load i32, ptr %sz, align 4, !dbg !5897
  %cmp13 = icmp ult i32 %25, %26, !dbg !5898
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !5899

if.then15:                                        ; preds = %cond.end
  br label %while.end, !dbg !5900

if.end16:                                         ; preds = %cond.end
  br label %while.cond3, !dbg !5878, !llvm.loop !5901

while.end:                                        ; preds = %if.then15, %while.cond3
  call void @__might_resched(ptr noundef @.str, i32 noundef 192, i32 noundef 0) #11, !dbg !5903
  %call18 = call i32 @_cond_resched() #11, !dbg !5903
  store i32 %call18, ptr %tmp17, align 4, !dbg !5903
  %27 = load i32, ptr %tmp17, align 4, !dbg !5903
  br label %while.cond, !dbg !5863, !llvm.loop !5905

while.end19:                                      ; preds = %while.cond
  %28 = load ptr, ptr %bio, align 8, !dbg !5907
  %29 = load ptr, ptr %biop.addr, align 8, !dbg !5908
  store ptr %28, ptr %29, align 8, !dbg !5909
  store i32 0, ptr %retval, align 4, !dbg !5910
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5910

cleanup:                                          ; preds = %while.end19, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #10, !dbg !5911
  call void @llvm.lifetime.end.p0(i64 4, ptr %bi_size) #10, !dbg !5911
  call void @llvm.lifetime.end.p0(i64 8, ptr %bio) #10, !dbg !5911
  %30 = load i32, ptr %retval, align 4, !dbg !5911
  ret i32 %30, !dbg !5911
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @blkdev_issue_zeroout(ptr noundef %bdev, i64 noundef %sector, i64 noundef %nr_sects, i32 noundef %gfp_mask, i32 noundef %flags) #0 align 16 !dbg !5912 {
entry:
  %retval = alloca i32, align 4
  %bdev.addr = alloca ptr, align 8
  %sector.addr = alloca i64, align 8
  %nr_sects.addr = alloca i64, align 8
  %gfp_mask.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %bs_mask = alloca i64, align 8
  %bio = alloca ptr, align 8
  %plug = alloca %struct.blk_plug, align 8
  %try_write_zeroes = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !5916, metadata !DIExpression()), !dbg !5927
  store i64 %sector, ptr %sector.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sector.addr, metadata !5917, metadata !DIExpression()), !dbg !5928
  store i64 %nr_sects, ptr %nr_sects.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr_sects.addr, metadata !5918, metadata !DIExpression()), !dbg !5929
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !5919, metadata !DIExpression()), !dbg !5930
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5920, metadata !DIExpression()), !dbg !5931
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !5932
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5921, metadata !DIExpression()), !dbg !5933
  store i32 0, ptr %ret, align 4, !dbg !5933
  call void @llvm.lifetime.start.p0(i64 8, ptr %bs_mask) #10, !dbg !5934
  call void @llvm.dbg.declare(metadata ptr %bs_mask, metadata !5922, metadata !DIExpression()), !dbg !5935
  call void @llvm.lifetime.start.p0(i64 8, ptr %bio) #10, !dbg !5936
  call void @llvm.dbg.declare(metadata ptr %bio, metadata !5923, metadata !DIExpression()), !dbg !5937
  call void @llvm.lifetime.start.p0(i64 40, ptr %plug) #10, !dbg !5938
  call void @llvm.dbg.declare(metadata ptr %plug, metadata !5924, metadata !DIExpression()), !dbg !5939
  call void @llvm.lifetime.start.p0(i64 1, ptr %try_write_zeroes) #10, !dbg !5940
  call void @llvm.dbg.declare(metadata ptr %try_write_zeroes, metadata !5925, metadata !DIExpression()), !dbg !5941
  %0 = load ptr, ptr %bdev.addr, align 8, !dbg !5942
  %call = call i32 @bdev_write_zeroes_sectors(ptr noundef %0) #11, !dbg !5943
  %tobool = icmp ne i32 %call, 0, !dbg !5944
  %lnot = xor i1 %tobool, true, !dbg !5944
  %lnot1 = xor i1 %lnot, true, !dbg !5945
  %frombool = zext i1 %lnot1 to i8, !dbg !5941
  store i8 %frombool, ptr %try_write_zeroes, align 1, !dbg !5941
  %1 = load ptr, ptr %bdev.addr, align 8, !dbg !5946
  %call2 = call i32 @bdev_logical_block_size(ptr noundef %1) #11, !dbg !5947
  %shr = lshr i32 %call2, 9, !dbg !5948
  %sub = sub i32 %shr, 1, !dbg !5949
  %conv = zext i32 %sub to i64, !dbg !5950
  store i64 %conv, ptr %bs_mask, align 8, !dbg !5951
  %2 = load i64, ptr %sector.addr, align 8, !dbg !5952
  %3 = load i64, ptr %nr_sects.addr, align 8, !dbg !5954
  %or = or i64 %2, %3, !dbg !5955
  %4 = load i64, ptr %bs_mask, align 8, !dbg !5956
  %and = and i64 %or, %4, !dbg !5957
  %tobool3 = icmp ne i64 %and, 0, !dbg !5957
  br i1 %tobool3, label %if.then, label %if.end, !dbg !5958

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5959
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5959

if.end:                                           ; preds = %entry
  br label %retry, !dbg !5956

retry:                                            ; preds = %if.then26, %if.end
  call void @llvm.dbg.label(metadata !5926), !dbg !5960
  store ptr null, ptr %bio, align 8, !dbg !5961
  call void @blk_start_plug(ptr noundef %plug) #11, !dbg !5962
  %5 = load i8, ptr %try_write_zeroes, align 1, !dbg !5963, !range !5522, !noundef !137
  %tobool4 = trunc i8 %5 to i1, !dbg !5963
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !5965

if.then5:                                         ; preds = %retry
  %6 = load ptr, ptr %bdev.addr, align 8, !dbg !5966
  %7 = load i64, ptr %sector.addr, align 8, !dbg !5968
  %8 = load i64, ptr %nr_sects.addr, align 8, !dbg !5969
  %9 = load i32, ptr %gfp_mask.addr, align 4, !dbg !5970
  %10 = load i32, ptr %flags.addr, align 4, !dbg !5971
  %call6 = call i32 @__blkdev_issue_write_zeroes(ptr noundef %6, i64 noundef %7, i64 noundef %8, i32 noundef %9, ptr noundef %bio, i32 noundef %10) #11, !dbg !5972
  store i32 %call6, ptr %ret, align 4, !dbg !5973
  br label %if.end13, !dbg !5974

if.else:                                          ; preds = %retry
  %11 = load i32, ptr %flags.addr, align 4, !dbg !5975
  %and7 = and i32 %11, 2, !dbg !5977
  %tobool8 = icmp ne i32 %and7, 0, !dbg !5977
  br i1 %tobool8, label %if.else11, label %if.then9, !dbg !5978

if.then9:                                         ; preds = %if.else
  %12 = load ptr, ptr %bdev.addr, align 8, !dbg !5979
  %13 = load i64, ptr %sector.addr, align 8, !dbg !5981
  %14 = load i64, ptr %nr_sects.addr, align 8, !dbg !5982
  %15 = load i32, ptr %gfp_mask.addr, align 4, !dbg !5983
  %call10 = call i32 @__blkdev_issue_zero_pages(ptr noundef %12, i64 noundef %13, i64 noundef %14, i32 noundef %15, ptr noundef %bio) #11, !dbg !5984
  store i32 %call10, ptr %ret, align 4, !dbg !5985
  br label %if.end12, !dbg !5986

if.else11:                                        ; preds = %if.else
  store i32 -95, ptr %ret, align 4, !dbg !5987
  br label %if.end12

if.end12:                                         ; preds = %if.else11, %if.then9
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then5
  %16 = load i32, ptr %ret, align 4, !dbg !5989
  %cmp = icmp eq i32 %16, 0, !dbg !5991
  br i1 %cmp, label %land.lhs.true, label %if.end18, !dbg !5992

land.lhs.true:                                    ; preds = %if.end13
  %17 = load ptr, ptr %bio, align 8, !dbg !5993
  %tobool15 = icmp ne ptr %17, null, !dbg !5993
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !5994

if.then16:                                        ; preds = %land.lhs.true
  %18 = load ptr, ptr %bio, align 8, !dbg !5995
  %call17 = call i32 @submit_bio_wait(ptr noundef %18) #11, !dbg !5997
  store i32 %call17, ptr %ret, align 4, !dbg !5998
  %19 = load ptr, ptr %bio, align 8, !dbg !5999
  call void @bio_put(ptr noundef %19) #11, !dbg !6000
  br label %if.end18, !dbg !6001

if.end18:                                         ; preds = %if.then16, %land.lhs.true, %if.end13
  call void @blk_finish_plug(ptr noundef %plug) #11, !dbg !6002
  %20 = load i32, ptr %ret, align 4, !dbg !6003
  %tobool19 = icmp ne i32 %20, 0, !dbg !6003
  br i1 %tobool19, label %land.lhs.true20, label %if.end32, !dbg !6005

land.lhs.true20:                                  ; preds = %if.end18
  %21 = load i8, ptr %try_write_zeroes, align 1, !dbg !6006, !range !5522, !noundef !137
  %tobool21 = trunc i8 %21 to i1, !dbg !6006
  br i1 %tobool21, label %if.then23, label %if.end32, !dbg !6007

if.then23:                                        ; preds = %land.lhs.true20
  %22 = load i32, ptr %flags.addr, align 4, !dbg !6008
  %and24 = and i32 %22, 2, !dbg !6011
  %tobool25 = icmp ne i32 %and24, 0, !dbg !6011
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !6012

if.then26:                                        ; preds = %if.then23
  store i8 0, ptr %try_write_zeroes, align 1, !dbg !6013
  br label %retry, !dbg !6015

if.end27:                                         ; preds = %if.then23
  %23 = load ptr, ptr %bdev.addr, align 8, !dbg !6016
  %call28 = call i32 @bdev_write_zeroes_sectors(ptr noundef %23) #11, !dbg !6018
  %tobool29 = icmp ne i32 %call28, 0, !dbg !6018
  br i1 %tobool29, label %if.end31, label %if.then30, !dbg !6019

if.then30:                                        ; preds = %if.end27
  store i32 -95, ptr %ret, align 4, !dbg !6020
  br label %if.end31, !dbg !6022

if.end31:                                         ; preds = %if.then30, %if.end27
  br label %if.end32, !dbg !6023

if.end32:                                         ; preds = %if.end31, %land.lhs.true20, %if.end18
  %24 = load i32, ptr %ret, align 4, !dbg !6024
  store i32 %24, ptr %retval, align 4, !dbg !6025
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6025

cleanup:                                          ; preds = %if.end32, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %try_write_zeroes) #10, !dbg !6026
  call void @llvm.lifetime.end.p0(i64 40, ptr %plug) #10, !dbg !6026
  call void @llvm.lifetime.end.p0(i64 8, ptr %bio) #10, !dbg !6026
  call void @llvm.lifetime.end.p0(i64 8, ptr %bs_mask) #10, !dbg !6026
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !6026
  %25 = load i32, ptr %retval, align 4, !dbg !6026
  ret i32 %25, !dbg !6026
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @bdev_write_zeroes_sectors(ptr noundef %bdev) #3 align 16 !dbg !6027 {
entry:
  %retval = alloca i32, align 4
  %bdev.addr = alloca ptr, align 8
  %q = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !6029, metadata !DIExpression()), !dbg !6031
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #10, !dbg !6032
  call void @llvm.dbg.declare(metadata ptr %q, metadata !6030, metadata !DIExpression()), !dbg !6033
  %0 = load ptr, ptr %bdev.addr, align 8, !dbg !6034
  %call = call ptr @bdev_get_queue(ptr noundef %0) #11, !dbg !6035
  store ptr %call, ptr %q, align 8, !dbg !6033
  %1 = load ptr, ptr %q, align 8, !dbg !6036
  %tobool = icmp ne ptr %1, null, !dbg !6036
  br i1 %tobool, label %if.then, label %if.end, !dbg !6038

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %q, align 8, !dbg !6039
  %limits = getelementptr inbounds %struct.request_queue, ptr %2, i32 0, i32 33, !dbg !6040
  %max_write_zeroes_sectors = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 17, !dbg !6041
  %3 = load i32, ptr %max_write_zeroes_sectors, align 8, !dbg !6041
  store i32 %3, ptr %retval, align 4, !dbg !6042
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6042

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6043
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6043

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #10, !dbg !6044
  %4 = load i32, ptr %retval, align 4, !dbg !6044
  ret i32 %4, !dbg !6044
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @blkdev_issue_secure_erase(ptr noundef %bdev, i64 noundef %sector, i64 noundef %nr_sects, i32 noundef %gfp) #0 align 16 !dbg !6045 {
entry:
  %retval = alloca i32, align 4
  %bdev.addr = alloca ptr, align 8
  %sector.addr = alloca i64, align 8
  %nr_sects.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  %bs_mask = alloca i64, align 8
  %max_sectors = alloca i32, align 4
  %bio = alloca ptr, align 8
  %plug = alloca %struct.blk_plug, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %len = alloca i32, align 4
  %__UNIQUE_ID___x358 = alloca i64, align 8
  %__UNIQUE_ID___y359 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp29 = alloca i32, align 4
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !6047, metadata !DIExpression()), !dbg !6063
  store i64 %sector, ptr %sector.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sector.addr, metadata !6048, metadata !DIExpression()), !dbg !6064
  store i64 %nr_sects, ptr %nr_sects.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr_sects.addr, metadata !6049, metadata !DIExpression()), !dbg !6065
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !6050, metadata !DIExpression()), !dbg !6066
  call void @llvm.lifetime.start.p0(i64 8, ptr %bs_mask) #10, !dbg !6067
  call void @llvm.dbg.declare(metadata ptr %bs_mask, metadata !6051, metadata !DIExpression()), !dbg !6068
  %0 = load ptr, ptr %bdev.addr, align 8, !dbg !6069
  %call = call i32 @bdev_logical_block_size(ptr noundef %0) #11, !dbg !6070
  %shr = lshr i32 %call, 9, !dbg !6071
  %sub = sub i32 %shr, 1, !dbg !6072
  %conv = zext i32 %sub to i64, !dbg !6073
  store i64 %conv, ptr %bs_mask, align 8, !dbg !6068
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_sectors) #10, !dbg !6074
  call void @llvm.dbg.declare(metadata ptr %max_sectors, metadata !6052, metadata !DIExpression()), !dbg !6075
  %1 = load ptr, ptr %bdev.addr, align 8, !dbg !6076
  %call1 = call i32 @bdev_max_secure_erase_sectors(ptr noundef %1) #11, !dbg !6077
  store i32 %call1, ptr %max_sectors, align 4, !dbg !6075
  call void @llvm.lifetime.start.p0(i64 8, ptr %bio) #10, !dbg !6078
  call void @llvm.dbg.declare(metadata ptr %bio, metadata !6053, metadata !DIExpression()), !dbg !6079
  store ptr null, ptr %bio, align 8, !dbg !6079
  call void @llvm.lifetime.start.p0(i64 40, ptr %plug) #10, !dbg !6080
  call void @llvm.dbg.declare(metadata ptr %plug, metadata !6054, metadata !DIExpression()), !dbg !6081
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !6082
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6055, metadata !DIExpression()), !dbg !6083
  store i32 0, ptr %ret, align 4, !dbg !6083
  %2 = load i32, ptr %max_sectors, align 4, !dbg !6084
  %cmp = icmp ugt i32 %2, 8388607, !dbg !6086
  br i1 %cmp, label %if.then, label %if.end, !dbg !6087

if.then:                                          ; preds = %entry
  store i32 8388607, ptr %max_sectors, align 4, !dbg !6088
  br label %if.end, !dbg !6089

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, ptr %bs_mask, align 8, !dbg !6090
  %not = xor i64 %3, -1, !dbg !6091
  %4 = load i32, ptr %max_sectors, align 4, !dbg !6092
  %conv3 = zext i32 %4 to i64, !dbg !6092
  %and = and i64 %conv3, %not, !dbg !6092
  %conv4 = trunc i64 %and to i32, !dbg !6092
  store i32 %conv4, ptr %max_sectors, align 4, !dbg !6092
  %5 = load i32, ptr %max_sectors, align 4, !dbg !6093
  %cmp5 = icmp eq i32 %5, 0, !dbg !6095
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !6096

if.then7:                                         ; preds = %if.end
  store i32 -95, ptr %retval, align 4, !dbg !6097
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup31, !dbg !6097

if.end8:                                          ; preds = %if.end
  %6 = load i64, ptr %sector.addr, align 8, !dbg !6098
  %7 = load i64, ptr %nr_sects.addr, align 8, !dbg !6100
  %or = or i64 %6, %7, !dbg !6101
  %8 = load i64, ptr %bs_mask, align 8, !dbg !6102
  %and9 = and i64 %or, %8, !dbg !6103
  %tobool = icmp ne i64 %and9, 0, !dbg !6103
  br i1 %tobool, label %if.then10, label %if.end11, !dbg !6104

if.then10:                                        ; preds = %if.end8
  store i32 -22, ptr %retval, align 4, !dbg !6105
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup31, !dbg !6105

if.end11:                                         ; preds = %if.end8
  %9 = load ptr, ptr %bdev.addr, align 8, !dbg !6106
  %call12 = call i32 @bdev_read_only(ptr noundef %9) #11, !dbg !6108
  %tobool13 = icmp ne i32 %call12, 0, !dbg !6108
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !6109

if.then14:                                        ; preds = %if.end11
  store i32 -1, ptr %retval, align 4, !dbg !6110
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup31, !dbg !6110

if.end15:                                         ; preds = %if.end11
  call void @blk_start_plug(ptr noundef %plug) #11, !dbg !6111
  br label %for.cond, !dbg !6112

for.cond:                                         ; preds = %cleanup.cont, %if.end15
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #10, !dbg !6113
  call void @llvm.dbg.declare(metadata ptr %len, metadata !6056, metadata !DIExpression()), !dbg !6114
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x358) #10, !dbg !6115
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x358, metadata !6060, metadata !DIExpression()), !dbg !6115
  %10 = load i64, ptr %nr_sects.addr, align 8, !dbg !6115
  store i64 %10, ptr %__UNIQUE_ID___x358, align 8, !dbg !6115
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y359) #10, !dbg !6115
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y359, metadata !6062, metadata !DIExpression()), !dbg !6115
  %11 = load i32, ptr %max_sectors, align 4, !dbg !6115
  %conv16 = zext i32 %11 to i64, !dbg !6115
  store i64 %conv16, ptr %__UNIQUE_ID___y359, align 8, !dbg !6115
  %12 = load i64, ptr %__UNIQUE_ID___x358, align 8, !dbg !6115
  %13 = load i64, ptr %__UNIQUE_ID___y359, align 8, !dbg !6115
  %cmp17 = icmp ult i64 %12, %13, !dbg !6115
  br i1 %cmp17, label %cond.true, label %cond.false, !dbg !6115

cond.true:                                        ; preds = %for.cond
  %14 = load i64, ptr %__UNIQUE_ID___x358, align 8, !dbg !6115
  br label %cond.end, !dbg !6115

cond.false:                                       ; preds = %for.cond
  %15 = load i64, ptr %__UNIQUE_ID___y359, align 8, !dbg !6115
  br label %cond.end, !dbg !6115

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %14, %cond.true ], [ %15, %cond.false ], !dbg !6115
  store i64 %cond, ptr %tmp, align 8, !dbg !6115
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y359) #10, !dbg !6116
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x358) #10, !dbg !6116
  %16 = load i64, ptr %tmp, align 8, !dbg !6115
  %conv19 = trunc i64 %16 to i32, !dbg !6116
  store i32 %conv19, ptr %len, align 4, !dbg !6114
  %17 = load ptr, ptr %bio, align 8, !dbg !6117
  %18 = load ptr, ptr %bdev.addr, align 8, !dbg !6118
  %19 = load i32, ptr %gfp.addr, align 4, !dbg !6119
  %call20 = call ptr @blk_next_bio(ptr noundef %17, ptr noundef %18, i32 noundef 0, i32 noundef 5, i32 noundef %19) #11, !dbg !6120
  store ptr %call20, ptr %bio, align 8, !dbg !6121
  %20 = load i64, ptr %sector.addr, align 8, !dbg !6122
  %21 = load ptr, ptr %bio, align 8, !dbg !6123
  %bi_iter = getelementptr inbounds %struct.bio, ptr %21, i32 0, i32 7, !dbg !6124
  %bi_sector = getelementptr inbounds %struct.bvec_iter, ptr %bi_iter, i32 0, i32 0, !dbg !6125
  store i64 %20, ptr %bi_sector, align 8, !dbg !6126
  %22 = load i32, ptr %len, align 4, !dbg !6127
  %shl = shl i32 %22, 9, !dbg !6128
  %23 = load ptr, ptr %bio, align 8, !dbg !6129
  %bi_iter21 = getelementptr inbounds %struct.bio, ptr %23, i32 0, i32 7, !dbg !6130
  %bi_size = getelementptr inbounds %struct.bvec_iter, ptr %bi_iter21, i32 0, i32 1, !dbg !6131
  store i32 %shl, ptr %bi_size, align 8, !dbg !6132
  %24 = load i32, ptr %len, align 4, !dbg !6133
  %conv22 = zext i32 %24 to i64, !dbg !6133
  %25 = load i64, ptr %sector.addr, align 8, !dbg !6134
  %add = add i64 %25, %conv22, !dbg !6134
  store i64 %add, ptr %sector.addr, align 8, !dbg !6134
  %26 = load i32, ptr %len, align 4, !dbg !6135
  %conv23 = zext i32 %26 to i64, !dbg !6135
  %27 = load i64, ptr %nr_sects.addr, align 8, !dbg !6136
  %sub24 = sub i64 %27, %conv23, !dbg !6136
  store i64 %sub24, ptr %nr_sects.addr, align 8, !dbg !6136
  %28 = load i64, ptr %nr_sects.addr, align 8, !dbg !6137
  %tobool25 = icmp ne i64 %28, 0, !dbg !6137
  br i1 %tobool25, label %if.end28, label %if.then26, !dbg !6139

if.then26:                                        ; preds = %cond.end
  %29 = load ptr, ptr %bio, align 8, !dbg !6140
  %call27 = call i32 @submit_bio_wait(ptr noundef %29) #11, !dbg !6142
  store i32 %call27, ptr %ret, align 4, !dbg !6143
  %30 = load ptr, ptr %bio, align 8, !dbg !6144
  call void @bio_put(ptr noundef %30) #11, !dbg !6145
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6146

if.end28:                                         ; preds = %cond.end
  call void @__might_resched(ptr noundef @.str, i32 noundef 339, i32 noundef 0) #11, !dbg !6147
  %call30 = call i32 @_cond_resched() #11, !dbg !6147
  store i32 %call30, ptr %tmp29, align 4, !dbg !6147
  %31 = load i32, ptr %tmp29, align 4, !dbg !6147
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6149
  br label %cleanup, !dbg !6149

cleanup:                                          ; preds = %if.end28, %if.then26
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #10, !dbg !6149
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !6150, !llvm.loop !6151

for.end:                                          ; preds = %cleanup
  call void @blk_finish_plug(ptr noundef %plug) #11, !dbg !6154
  %32 = load i32, ptr %ret, align 4, !dbg !6155
  store i32 %32, ptr %retval, align 4, !dbg !6156
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup31, !dbg !6156

cleanup31:                                        ; preds = %for.end, %if.then14, %if.then10, %if.then7
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !6157
  call void @llvm.lifetime.end.p0(i64 40, ptr %plug) #10, !dbg !6157
  call void @llvm.lifetime.end.p0(i64 8, ptr %bio) #10, !dbg !6157
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_sectors) #10, !dbg !6157
  call void @llvm.lifetime.end.p0(i64 8, ptr %bs_mask) #10, !dbg !6157
  %33 = load i32, ptr %retval, align 4, !dbg !6157
  ret i32 %33, !dbg !6157

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @bdev_max_secure_erase_sectors(ptr noundef %bdev) #3 align 16 !dbg !6158 {
entry:
  %bdev.addr = alloca ptr, align 8
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !6160, metadata !DIExpression()), !dbg !6161
  %0 = load ptr, ptr %bdev.addr, align 8, !dbg !6162
  %call = call ptr @bdev_get_queue(ptr noundef %0) #11, !dbg !6163
  %limits = getelementptr inbounds %struct.request_queue, ptr %call, i32 0, i32 33, !dbg !6164
  %max_secure_erase_sectors = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 16, !dbg !6165
  %1 = load i32, ptr %max_secure_erase_sectors, align 4, !dbg !6165
  ret i32 %1, !dbg !6166
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_disk_ro(ptr noundef %disk) #3 align 16 !dbg !6167 {
entry:
  %disk.addr = alloca ptr, align 8
  store ptr %disk, ptr %disk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %disk.addr, metadata !6171, metadata !DIExpression()), !dbg !6172
  %0 = load ptr, ptr %disk.addr, align 8, !dbg !6173
  %part0 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 7, !dbg !6174
  %1 = load ptr, ptr %part0, align 8, !dbg !6174
  %bd_read_only = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 6, !dbg !6175
  %2 = load i8, ptr %bd_read_only, align 8, !dbg !6175, !range !5522, !noundef !137
  %tobool = trunc i8 %2 to i1, !dbg !6175
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !6176

lor.rhs:                                          ; preds = %entry
  %3 = load ptr, ptr %disk.addr, align 8, !dbg !6177
  %state = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 13, !dbg !6177
  %4 = ptrtoint ptr %state to i64, !dbg !6177
  %cmp = icmp ne i64 %4, 0, !dbg !6177
  %conv = zext i1 %cmp to i32, !dbg !6177
  %5 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !6177
  br i1 %5, label %land.lhs.true, label %cond.false, !dbg !6177

land.lhs.true:                                    ; preds = %lor.rhs
  %6 = load ptr, ptr %disk.addr, align 8, !dbg !6177
  %state1 = getelementptr inbounds %struct.gendisk, ptr %6, i32 0, i32 13, !dbg !6177
  %7 = ptrtoint ptr %state1 to i64, !dbg !6177
  %cmp2 = icmp ne i64 %7, 0, !dbg !6177
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !6177

land.lhs.true4:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %disk.addr, align 8, !dbg !6177
  %state5 = getelementptr inbounds %struct.gendisk, ptr %8, i32 0, i32 13, !dbg !6177
  %9 = load i64, ptr %state5, align 8, !dbg !6177
  %10 = call i1 @llvm.is.constant.i64(i64 %9), !dbg !6177
  br i1 %10, label %cond.true, label %cond.false, !dbg !6177

cond.true:                                        ; preds = %land.lhs.true4
  %11 = load ptr, ptr %disk.addr, align 8, !dbg !6177
  %state6 = getelementptr inbounds %struct.gendisk, ptr %11, i32 0, i32 13, !dbg !6177
  %call = call zeroext i1 @const_test_bit(i64 noundef 1, ptr noundef %state6) #11, !dbg !6177
  %conv7 = zext i1 %call to i32, !dbg !6177
  br label %cond.end, !dbg !6177

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %lor.rhs
  %12 = load ptr, ptr %disk.addr, align 8, !dbg !6177
  %state8 = getelementptr inbounds %struct.gendisk, ptr %12, i32 0, i32 13, !dbg !6177
  %call9 = call zeroext i1 @_test_bit(i64 noundef 1, ptr noundef %state8) #11, !dbg !6177
  %conv10 = zext i1 %call9 to i32, !dbg !6177
  br label %cond.end, !dbg !6177

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv7, %cond.true ], [ %conv10, %cond.false ], !dbg !6177
  %tobool11 = icmp ne i32 %cond, 0, !dbg !6176
  br label %lor.end, !dbg !6176

lor.end:                                          ; preds = %cond.end, %entry
  %13 = phi i1 [ true, %entry ], [ %tobool11, %cond.end ]
  %lor.ext = zext i1 %13 to i32, !dbg !6176
  ret i32 %lor.ext, !dbg !6178
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #8

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6179 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6187, metadata !DIExpression()), !dbg !6192
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6188, metadata !DIExpression()), !dbg !6193
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !6194
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6189, metadata !DIExpression()), !dbg !6195
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6196
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6197
  %div = udiv i64 %1, 64, !dbg !6197
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6198
  store ptr %add.ptr, ptr %p, align 8, !dbg !6195
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #10, !dbg !6199
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6190, metadata !DIExpression()), !dbg !6200
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6201
  %rem = urem i64 %2, 64, !dbg !6201
  %shl = shl i64 1, %rem, !dbg !6201
  store i64 %shl, ptr %mask, align 8, !dbg !6200
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #10, !dbg !6202
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6191, metadata !DIExpression()), !dbg !6203
  %3 = load ptr, ptr %p, align 8, !dbg !6204
  %4 = load i64, ptr %3, align 8, !dbg !6205
  store i64 %4, ptr %val, align 8, !dbg !6203
  %5 = load i64, ptr %val, align 8, !dbg !6206
  %6 = load i64, ptr %mask, align 8, !dbg !6207
  %and = and i64 %5, %6, !dbg !6208
  %tobool = icmp ne i64 %and, 0, !dbg !6209
  %lnot = xor i1 %tobool, true, !dbg !6209
  %lnot1 = xor i1 %lnot, true, !dbg !6210
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #10, !dbg !6211
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #10, !dbg !6211
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !6211
  ret i1 %lnot1, !dbg !6212
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6213 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6216, metadata !DIExpression()), !dbg !6218
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6217, metadata !DIExpression()), !dbg !6219
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6220
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6221
  %div = udiv i64 %1, 64, !dbg !6221
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6222
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #11, !dbg !6223
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6224
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6225
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !6226
  ret i1 %call, !dbg !6227
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !6228 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6236, metadata !DIExpression()), !dbg !6238
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6237, metadata !DIExpression()), !dbg !6239
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6240
  %1 = load i64, ptr %size.addr, align 8, !dbg !6241
  %conv = trunc i64 %1 to i32, !dbg !6241
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #11, !dbg !6242
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6243
  %3 = load i64, ptr %size.addr, align 8, !dbg !6243
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #11, !dbg !6243
  ret void, !dbg !6244
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6245 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6248, metadata !DIExpression()), !dbg !6250
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6249, metadata !DIExpression()), !dbg !6251
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6252
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6253
  br i1 %1, label %cond.true, label %cond.false, !dbg !6253

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6254
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6255
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !6256
  %conv = zext i1 %call to i32, !dbg !6256
  br label %cond.end, !dbg !6253

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6257
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6258
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #11, !dbg !6259
  %conv2 = zext i1 %call1 to i32, !dbg !6259
  br label %cond.end, !dbg !6253

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6253
  %tobool = icmp ne i32 %cond, 0, !dbg !6253
  ret i1 %tobool, !dbg !6260
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !6261 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6266, metadata !DIExpression()), !dbg !6268
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6267, metadata !DIExpression()), !dbg !6269
  ret i1 true, !dbg !6270
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !6271 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6276, metadata !DIExpression()), !dbg !6279
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6277, metadata !DIExpression()), !dbg !6280
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6278, metadata !DIExpression()), !dbg !6281
  ret void, !dbg !6282
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6283 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6287, metadata !DIExpression()), !dbg !6289
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6288, metadata !DIExpression()), !dbg !6290
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6291
  %and = and i64 %0, 63, !dbg !6292
  %shl = shl i64 1, %and, !dbg !6293
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6294
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6295
  %shr = ashr i64 %2, 6, !dbg !6296
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6294
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6294
  %and1 = and i64 %shl, %3, !dbg !6297
  %cmp = icmp ne i64 %and1, 0, !dbg !6298
  ret i1 %cmp, !dbg !6299
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6300 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6302, metadata !DIExpression()), !dbg !6305
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6303, metadata !DIExpression()), !dbg !6306
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #10, !dbg !6307
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6304, metadata !DIExpression()), !dbg !6308
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6309
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6310
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #10, !dbg !6311, !srcloc !6312
  %3 = icmp ult i8 %2, 2, !dbg !6311
  call void @llvm.assume(i1 %3), !dbg !6311
  store i8 %2, ptr %oldbit, align 1, !dbg !6311
  %4 = load i8, ptr %oldbit, align 1, !dbg !6313, !range !5522, !noundef !137
  %tobool = trunc i8 %4 to i1, !dbg !6313
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #10, !dbg !6314
  ret i1 %tobool, !dbg !6315
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @bdev_get_queue(ptr noundef %bdev) #3 align 16 !dbg !6316 {
entry:
  %bdev.addr = alloca ptr, align 8
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !6320, metadata !DIExpression()), !dbg !6321
  %0 = load ptr, ptr %bdev.addr, align 8, !dbg !6322
  %bd_queue = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 3, !dbg !6323
  %1 = load ptr, ptr %bd_queue, align 8, !dbg !6323
  ret ptr %1, !dbg !6324
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @queue_logical_block_size(ptr noundef %q) #3 align 16 !dbg !6325 {
entry:
  %q.addr = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !6331, metadata !DIExpression()), !dbg !6333
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #10, !dbg !6334
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !6332, metadata !DIExpression()), !dbg !6335
  store i32 512, ptr %retval1, align 4, !dbg !6335
  %0 = load ptr, ptr %q.addr, align 8, !dbg !6336
  %tobool = icmp ne ptr %0, null, !dbg !6336
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6338

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %q.addr, align 8, !dbg !6339
  %limits = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 33, !dbg !6340
  %logical_block_size = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 10, !dbg !6341
  %2 = load i32, ptr %logical_block_size, align 4, !dbg !6341
  %tobool2 = icmp ne i32 %2, 0, !dbg !6339
  br i1 %tobool2, label %if.then, label %if.end, !dbg !6342

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %q.addr, align 8, !dbg !6343
  %limits3 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 33, !dbg !6344
  %logical_block_size4 = getelementptr inbounds %struct.queue_limits, ptr %limits3, i32 0, i32 10, !dbg !6345
  %4 = load i32, ptr %logical_block_size4, align 4, !dbg !6345
  store i32 %4, ptr %retval1, align 4, !dbg !6346
  br label %if.end, !dbg !6347

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %5 = load i32, ptr %retval1, align 4, !dbg !6348
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #10, !dbg !6349
  ret i32 %5, !dbg !6350
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @bdev_is_partition(ptr noundef %bdev) #3 align 16 !dbg !6351 {
entry:
  %bdev.addr = alloca ptr, align 8
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !6355, metadata !DIExpression()), !dbg !6356
  %0 = load ptr, ptr %bdev.addr, align 8, !dbg !6357
  %bd_partno = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 7, !dbg !6358
  %1 = load i8, ptr %bd_partno, align 1, !dbg !6358
  %tobool = icmp ne i8 %1, 0, !dbg !6357
  ret i1 %tobool, !dbg !6359
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__cond_resched() #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__blkdev_sectors_to_bio_pages(i64 noundef %nr_sects) #0 align 16 !dbg !6360 {
entry:
  %nr_sects.addr = alloca i64, align 8
  %pages = alloca i64, align 8
  %__UNIQUE_ID___x352 = alloca i64, align 8
  %__UNIQUE_ID___y353 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store i64 %nr_sects, ptr %nr_sects.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr_sects.addr, metadata !6364, metadata !DIExpression()), !dbg !6369
  call void @llvm.lifetime.start.p0(i64 8, ptr %pages) #10, !dbg !6370
  call void @llvm.dbg.declare(metadata ptr %pages, metadata !6365, metadata !DIExpression()), !dbg !6371
  %0 = load i64, ptr %nr_sects.addr, align 8, !dbg !6372
  %add = add i64 %0, 8, !dbg !6372
  %sub = sub i64 %add, 1, !dbg !6372
  %div = udiv i64 %sub, 8, !dbg !6372
  store i64 %div, ptr %pages, align 8, !dbg !6371
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x352) #10, !dbg !6373
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x352, metadata !6366, metadata !DIExpression()), !dbg !6373
  %1 = load i64, ptr %pages, align 8, !dbg !6373
  store i64 %1, ptr %__UNIQUE_ID___x352, align 8, !dbg !6373
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y353) #10, !dbg !6373
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y353, metadata !6368, metadata !DIExpression()), !dbg !6373
  store i64 256, ptr %__UNIQUE_ID___y353, align 8, !dbg !6373
  %2 = load i64, ptr %__UNIQUE_ID___x352, align 8, !dbg !6373
  %3 = load i64, ptr %__UNIQUE_ID___y353, align 8, !dbg !6373
  %cmp = icmp ult i64 %2, %3, !dbg !6373
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6373

cond.true:                                        ; preds = %entry
  %4 = load i64, ptr %__UNIQUE_ID___x352, align 8, !dbg !6373
  br label %cond.end, !dbg !6373

cond.false:                                       ; preds = %entry
  %5 = load i64, ptr %__UNIQUE_ID___y353, align 8, !dbg !6373
  br label %cond.end, !dbg !6373

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %5, %cond.false ], !dbg !6373
  store i64 %cond, ptr %tmp, align 8, !dbg !6373
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y353) #10, !dbg !6374
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x352) #10, !dbg !6374
  %6 = load i64, ptr %tmp, align 8, !dbg !6373
  %conv = trunc i64 %6 to i32, !dbg !6374
  call void @llvm.lifetime.end.p0(i64 8, ptr %pages) #10, !dbg !6375
  ret i32 %conv, !dbg !6376
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6377 dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__phys_addr_nodebug(i64 noundef %x) #7 align 16 !dbg !6380 {
entry:
  %x.addr = alloca i64, align 8
  %y = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !6385, metadata !DIExpression()), !dbg !6387
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #10, !dbg !6388
  call void @llvm.dbg.declare(metadata ptr %y, metadata !6386, metadata !DIExpression()), !dbg !6389
  %0 = load i64, ptr %x.addr, align 8, !dbg !6390
  %sub = sub i64 %0, -2147483648, !dbg !6391
  store i64 %sub, ptr %y, align 8, !dbg !6389
  %1 = load i64, ptr %y, align 8, !dbg !6392
  %2 = load i64, ptr %x.addr, align 8, !dbg !6393
  %3 = load i64, ptr %y, align 8, !dbg !6394
  %cmp = icmp ugt i64 %2, %3, !dbg !6395
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6396

cond.true:                                        ; preds = %entry
  %4 = load i64, ptr @phys_base, align 8, !dbg !6397
  br label %cond.end, !dbg !6396

cond.false:                                       ; preds = %entry
  %5 = load i64, ptr @page_offset_base, align 8, !dbg !6398
  %sub1 = sub i64 -2147483648, %5, !dbg !6399
  br label %cond.end, !dbg !6396

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %sub1, %cond.false ], !dbg !6396
  %add = add i64 %1, %cond, !dbg !6400
  store i64 %add, ptr %x.addr, align 8, !dbg !6401
  %6 = load i64, ptr %x.addr, align 8, !dbg !6402
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #10, !dbg !6403
  ret i64 %6, !dbg !6404
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { noredzone }
attributes #12 = { cold noredzone }

!llvm.dbg.cu = !{!5314}
!llvm.module.flags = !{!5407, !5408, !5409, !5410, !5411, !5412, !5413, !5414}
!llvm.ident = !{!5415}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 50, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "block/blk-lib.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca268de50c3eebf9b3058628907599f0")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 16)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "_rs", scope: !9, file: !2, line: 51, type: !817, isLocal: true, isDefinition: true)
!9 = distinct !DISubprogram(name: "__blkdev_issue_discard", scope: !2, file: !2, line: 38, type: !10, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5314, retainedNodes: !5388)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !13, !18, !18, !86, !5313}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !15, line: 40, size: 7424, elements: !16)
!15 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!16 = !{!17, !25, !26, !5267, !5268, !5271, !5272, !5273, !5274, !5275, !5276, !5277, !5278, !5279, !5280, !5281, !5282, !5295, !5296, !5297, !5298, !5299, !5300, !5301, !5311, !5312}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !14, file: !15, line: 41, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !19, line: 131, baseType: !20)
!19 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !21, line: 23, baseType: !22)
!21 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !23, line: 31, baseType: !24)
!23 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!24 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !14, file: !15, line: 42, baseType: !18, size: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !14, file: !15, line: 43, baseType: !27, size: 64, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !29, line: 128, size: 4544, elements: !30)
!29 = !DIFile(filename: "./include/linux/blkdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "802ed60c7d9aff392515db0b7890881d")
!30 = !{!31, !32, !33, !34, !38, !40, !41, !90, !91, !5225, !5226, !5227, !5228, !5229, !5230, !5231, !5232, !5233, !5234, !5235, !5236, !5239, !5240, !5243, !5246, !5247, !5250, !5251, !5252, !5253}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !28, file: !29, line: 133, baseType: !12, size: 32)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "first_minor", scope: !28, file: !29, line: 134, baseType: !12, size: 32, offset: 32)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "minors", scope: !28, file: !29, line: 135, baseType: !12, size: 32, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !28, file: !29, line: 137, baseType: !35, size: 256, offset: 96)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 32)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !28, file: !29, line: 139, baseType: !39, size: 16, offset: 352)
!39 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "event_flags", scope: !28, file: !29, line: 140, baseType: !39, size: 16, offset: 368)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "part_tbl", scope: !28, file: !29, line: 142, baseType: !42, size: 128, offset: 384)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !43, line: 296, size: 128, elements: !44)
!43 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!44 = !{!45, !85, !88}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !42, file: !43, line: 297, baseType: !46, size: 32)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !47, line: 29, baseType: !48)
!47 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !47, line: 17, size: 32, elements: !49)
!49 = !{!50}
!50 = !DIDerivedType(tag: DW_TAG_member, scope: !48, file: !47, line: 18, baseType: !51, size: 32)
!51 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !48, file: !47, line: 18, size: 32, elements: !52)
!52 = !{!53}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !51, file: !47, line: 19, baseType: !54, size: 32)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !55, line: 14, size: 32, elements: !56)
!55 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!56 = !{!57}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !54, file: !55, line: 15, baseType: !58, size: 32)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !59, line: 44, baseType: !60)
!59 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !59, line: 14, size: 32, elements: !61)
!61 = !{!62}
!62 = !DIDerivedType(tag: DW_TAG_member, scope: !60, file: !59, line: 15, baseType: !63, size: 32)
!63 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !60, file: !59, line: 15, size: 32, elements: !64)
!64 = !{!65, !70, !78}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !63, file: !59, line: 16, baseType: !66, size: 32)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !19, line: 174, baseType: !67)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 172, size: 32, elements: !68)
!68 = !{!69}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !67, file: !19, line: 173, baseType: !12, size: 32)
!70 = !DIDerivedType(tag: DW_TAG_member, scope: !63, file: !59, line: 24, baseType: !71, size: 16)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !63, file: !59, line: 24, size: 16, elements: !72)
!72 = !{!73, !77}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !71, file: !59, line: 25, baseType: !74, size: 8)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !21, line: 17, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !23, line: 21, baseType: !76)
!76 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !71, file: !59, line: 26, baseType: !74, size: 8, offset: 8)
!78 = !DIDerivedType(tag: DW_TAG_member, scope: !63, file: !59, line: 28, baseType: !79, size: 32)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !63, file: !59, line: 28, size: 32, elements: !80)
!80 = !{!81, !84}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !79, file: !59, line: 29, baseType: !82, size: 16)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !21, line: 19, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !23, line: 24, baseType: !39)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !79, file: !59, line: 30, baseType: !82, size: 16, offset: 16)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !42, file: !43, line: 299, baseType: !86, size: 32, offset: 32)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !19, line: 154, baseType: !87)
!87 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !42, file: !43, line: 300, baseType: !89, size: 64, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "part0", scope: !28, file: !29, line: 143, baseType: !13, size: 64, offset: 512)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !28, file: !29, line: 145, baseType: !92, size: 64, offset: 576)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device_operations", file: !29, line: 1388, size: 1152, elements: !95)
!95 = !{!96, !5138, !5142, !5147, !5151, !5155, !5156, !5160, !5161, !5167, !5171, !5172, !5176, !5202, !5206, !5216, !5217, !5221}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "submit_bio", scope: !94, file: !29, line: 1389, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DISubroutineType(types: !99)
!99 = !{null, !100}
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio", file: !15, line: 265, size: 960, elements: !102)
!102 = !{!103, !104, !105, !108, !109, !110, !112, !113, !121, !123, !126, !127, !130, !134, !135, !138, !139, !140, !141, !5100, !5136}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "bi_next", scope: !101, file: !15, line: 266, baseType: !100, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bdev", scope: !101, file: !15, line: 267, baseType: !13, size: 64, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "bi_opf", scope: !101, file: !15, line: 268, baseType: !106, size: 32, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_opf_t", file: !15, line: 256, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !23, line: 27, baseType: !87)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "bi_flags", scope: !101, file: !15, line: 271, baseType: !39, size: 16, offset: 160)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "bi_ioprio", scope: !101, file: !15, line: 272, baseType: !39, size: 16, offset: 176)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "bi_status", scope: !101, file: !15, line: 273, baseType: !111, size: 8, offset: 192)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_status_t", file: !15, line: 97, baseType: !74)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_remaining", scope: !101, file: !15, line: 274, baseType: !66, size: 32, offset: 224)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iter", scope: !101, file: !15, line: 276, baseType: !114, size: 160, align: 32, offset: 256)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bvec_iter", file: !115, line: 77, size: 160, align: 32, elements: !116)
!115 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!116 = !{!117, !118, !119, !120}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "bi_sector", scope: !114, file: !115, line: 78, baseType: !18, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "bi_size", scope: !114, file: !115, line: 80, baseType: !87, size: 32, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "bi_idx", scope: !114, file: !115, line: 82, baseType: !87, size: 32, offset: 96)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bvec_done", scope: !114, file: !115, line: 84, baseType: !87, size: 32, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "bi_cookie", scope: !101, file: !15, line: 278, baseType: !122, size: 32, offset: 416)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_qc_t", file: !15, line: 258, baseType: !87)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "bi_end_io", scope: !101, file: !15, line: 279, baseType: !124, size: 64, offset: 448)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_end_io_t", file: !15, line: 20, baseType: !98)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "bi_private", scope: !101, file: !15, line: 280, baseType: !89, size: 64, offset: 512)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "bi_blkg", scope: !101, file: !15, line: 288, baseType: !128, size: 64, offset: 576)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DICompositeType(tag: DW_TAG_structure_type, name: "blkcg_gq", file: !15, line: 288, flags: DIFlagFwdDecl)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "bi_issue", scope: !101, file: !15, line: 289, baseType: !131, size: 64, offset: 640)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_issue", file: !15, line: 228, size: 64, elements: !132)
!132 = !{!133}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !131, file: !15, line: 229, baseType: !20, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iocost_cost", scope: !101, file: !15, line: 291, baseType: !20, size: 64, offset: 704)
!135 = !DIDerivedType(tag: DW_TAG_member, scope: !101, file: !15, line: 299, baseType: !136, offset: 768)
!136 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !101, file: !15, line: 299, elements: !137)
!137 = !{}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "bi_vcnt", scope: !101, file: !15, line: 305, baseType: !39, size: 16, offset: 768)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "bi_max_vecs", scope: !101, file: !15, line: 311, baseType: !39, size: 16, offset: 784)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_cnt", scope: !101, file: !15, line: 313, baseType: !66, size: 32, offset: 800)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "bi_io_vec", scope: !101, file: !15, line: 315, baseType: !142, size: 64, offset: 832)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !115, line: 31, size: 128, elements: !144)
!144 = !{!145, !5098, !5099}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !143, file: !115, line: 32, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !148, line: 74, size: 512, align: 128, elements: !149)
!148 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!149 = !{!150, !152, !5092, !5097}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !147, file: !148, line: 75, baseType: !151, size: 64)
!151 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!152 = !DIDerivedType(tag: DW_TAG_member, scope: !147, file: !148, line: 83, baseType: !153, size: 320, offset: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !147, file: !148, line: 83, size: 320, elements: !154)
!154 = !{!155, !5010, !5024, !5028, !5091}
!155 = !DIDerivedType(tag: DW_TAG_member, scope: !153, file: !148, line: 84, baseType: !156, size: 320)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !153, file: !148, line: 84, size: 320, elements: !157)
!157 = !{!158, !174, !5004, !5009}
!158 = !DIDerivedType(tag: DW_TAG_member, scope: !156, file: !148, line: 90, baseType: !159, size: 128)
!159 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !156, file: !148, line: 90, size: 128, elements: !160)
!160 = !{!161, !167, !172, !173}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !159, file: !148, line: 91, baseType: !162, size: 128)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !19, line: 190, size: 128, elements: !163)
!163 = !{!164, !166}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !162, file: !19, line: 191, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !162, file: !19, line: 191, baseType: !165, size: 64, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, scope: !159, file: !148, line: 94, baseType: !168, size: 128)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !159, file: !148, line: 94, size: 128, elements: !169)
!169 = !{!170, !171}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !168, file: !148, line: 96, baseType: !89, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !168, file: !148, line: 98, baseType: !87, size: 32, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !159, file: !148, line: 102, baseType: !162, size: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !159, file: !148, line: 103, baseType: !162, size: 128)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !156, file: !148, line: 106, baseType: !175, size: 64, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !177, line: 472, size: 1536, align: 64, elements: !178)
!177 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!178 = !{!179, !4833, !4834, !4835, !4836, !4837, !4838, !4839, !4840, !4998, !4999, !5000, !5001, !5002, !5003}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !176, file: !177, line: 473, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !177, line: 641, size: 4800, elements: !182)
!182 = !{!183, !185, !186, !195, !196, !203, !204, !207, !208, !4771, !4772, !4773, !4774, !4775, !4781, !4782, !4783, !4784, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4798, !4799, !4804, !4805, !4806, !4807, !4808, !4809, !4810, !4815, !4818, !4819, !4820, !4829, !4830, !4831, !4832}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !181, file: !177, line: 642, baseType: !184, size: 16)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !19, line: 24, baseType: !39)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !181, file: !177, line: 643, baseType: !39, size: 16, offset: 16)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !181, file: !177, line: 644, baseType: !187, size: 32, offset: 32)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !188, line: 23, baseType: !189)
!188 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !188, line: 21, size: 32, elements: !190)
!190 = !{!191}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !189, file: !188, line: 22, baseType: !192, size: 32)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !19, line: 37, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !194, line: 49, baseType: !87)
!194 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!195 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !181, file: !177, line: 645, baseType: !162, size: 128, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !181, file: !177, line: 646, baseType: !197, size: 32, offset: 192)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !188, line: 28, baseType: !198)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !188, line: 26, size: 32, elements: !199)
!199 = !{!200}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !198, file: !188, line: 27, baseType: !201, size: 32)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !19, line: 38, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !194, line: 50, baseType: !87)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !181, file: !177, line: 647, baseType: !87, size: 32, offset: 224)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !181, file: !177, line: 650, baseType: !205, size: 64, offset: 256)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !177, line: 607, flags: DIFlagFwdDecl)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !181, file: !177, line: 651, baseType: !205, size: 64, offset: 320)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !181, file: !177, line: 654, baseType: !209, size: 64, offset: 384)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !211)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !177, line: 1966, size: 2048, align: 512, elements: !212)
!212 = !{!213, !4605, !4615, !4619, !4623, !4627, !4631, !4635, !4639, !4643, !4647, !4648, !4652, !4656, !4693, !4722, !4726, !4732, !4736, !4740, !4744, !4748, !4752, !4758, !4762}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !211, file: !177, line: 1967, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{!217, !180, !217, !87}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !219, line: 82, size: 1536, elements: !220)
!219 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!220 = !{!221, !222, !232, !240, !241, !257, !258, !260, !273, !4588, !4589, !4590, !4591, !4597, !4598, !4599}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !218, file: !219, line: 84, baseType: !87, size: 32)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !218, file: !219, line: 85, baseType: !223, size: 32, offset: 32)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !224, line: 275, baseType: !225)
!224 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !224, line: 275, size: 32, elements: !226)
!226 = !{!227}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !225, file: !224, line: 275, baseType: !228, size: 32)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !224, line: 69, baseType: !229)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !224, line: 64, size: 32, elements: !230)
!230 = !{!231}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !229, file: !224, line: 65, baseType: !87, size: 32)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !218, file: !219, line: 86, baseType: !233, size: 128, offset: 64)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !234, line: 38, size: 128, elements: !235)
!234 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!235 = !{!236, !238}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !233, file: !234, line: 39, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !233, file: !234, line: 39, baseType: !239, size: 64, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !218, file: !219, line: 87, baseType: !217, size: 64, offset: 192)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !218, file: !219, line: 88, baseType: !242, size: 128, offset: 256)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !219, line: 49, size: 128, elements: !243)
!243 = !{!244, !254}
!244 = !DIDerivedType(tag: DW_TAG_member, scope: !242, file: !219, line: 50, baseType: !245, size: 64)
!245 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !242, file: !219, line: 50, size: 64, elements: !246)
!246 = !{!247, !253}
!247 = !DIDerivedType(tag: DW_TAG_member, scope: !245, file: !219, line: 51, baseType: !248, size: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !245, file: !219, line: 51, size: 64, elements: !249)
!249 = !{!250, !252}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !248, file: !219, line: 52, baseType: !251, size: 32)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !21, line: 21, baseType: !107)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !248, file: !219, line: 52, baseType: !251, size: 32, offset: 32)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !245, file: !219, line: 54, baseType: !20, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !242, file: !219, line: 56, baseType: !255, size: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !218, file: !219, line: 89, baseType: !180, size: 64, offset: 384)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !218, file: !219, line: 91, baseType: !259, size: 256, offset: 448)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 256, elements: !36)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !218, file: !219, line: 94, baseType: !261, size: 64, offset: 704)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !262, line: 25, size: 64, elements: !263)
!262 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!263 = !{!264}
!264 = !DIDerivedType(tag: DW_TAG_member, scope: !261, file: !262, line: 26, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !261, file: !262, line: 26, size: 64, elements: !266)
!266 = !{!267, !268}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !265, file: !262, line: 28, baseType: !22, size: 64, align: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, scope: !265, file: !262, line: 30, baseType: !269, size: 64)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !265, file: !262, line: 30, size: 64, elements: !270)
!270 = !{!271, !272}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !269, file: !262, line: 31, baseType: !46, size: 32)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !269, file: !262, line: 32, baseType: !12, size: 32, offset: 32)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !218, file: !219, line: 95, baseType: !274, size: 64, offset: 768)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !276)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !219, line: 128, size: 1024, align: 512, elements: !277)
!277 = !{!278, !282, !283, !290, !298, !302, !306, !310, !311, !315, !320, !4578, !4582}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !276, file: !219, line: 129, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!12, !217, !87}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !276, file: !219, line: 130, baseType: !279, size: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !276, file: !219, line: 131, baseType: !284, size: 64, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{!12, !287, !289}
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !276, file: !219, line: 132, baseType: !291, size: 64, offset: 192)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!12, !287, !87, !294, !296}
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !276, file: !219, line: 134, baseType: !299, size: 64, offset: 256)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{!12, !287}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !276, file: !219, line: 135, baseType: !303, size: 64, offset: 320)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DISubroutineType(types: !305)
!305 = !{!12, !217}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !276, file: !219, line: 136, baseType: !307, size: 64, offset: 384)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{null, !217}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !276, file: !219, line: 137, baseType: !307, size: 64, offset: 448)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !276, file: !219, line: 138, baseType: !312, size: 64, offset: 512)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{null, !217, !180}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !276, file: !219, line: 139, baseType: !316, size: 64, offset: 576)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!319, !217, !319, !12}
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !276, file: !219, line: 140, baseType: !321, size: 64, offset: 640)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{!324, !4577}
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !326, line: 70, size: 256, elements: !327)
!326 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!327 = !{!328, !329, !4573, !4574}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !325, file: !326, line: 71, baseType: !217, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !325, file: !326, line: 72, baseType: !330, size: 64, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !177, line: 1190, size: 10752, elements: !332)
!332 = !{!333, !334, !337, !338, !339, !343, !3011, !3155, !3195, !3280, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3297, !3301, !3302, !3303, !3309, !3312, !3315, !3316, !3317, !3358, !4507, !4508, !4509, !4510, !4511, !4512, !4515, !4516, !4523, !4524, !4525, !4526, !4527, !4542, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !331, file: !177, line: 1191, baseType: !162, size: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !331, file: !177, line: 1192, baseType: !335, size: 32, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !19, line: 21, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !19, line: 18, baseType: !251)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !331, file: !177, line: 1193, baseType: !76, size: 8, offset: 160)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !331, file: !177, line: 1194, baseType: !151, size: 64, offset: 192)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !331, file: !177, line: 1195, baseType: !340, size: 64, offset: 256)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !19, line: 52, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !194, line: 88, baseType: !342)
!342 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !331, file: !177, line: 1196, baseType: !344, size: 64, offset: 320)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !177, line: 2366, size: 576, elements: !346)
!346 = !{!347, !348, !349, !356, !360, !364, !368, !2999, !3000, !3001, !3003, !3004, !3005, !3007, !3008, !3009, !3010}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !345, file: !177, line: 2367, baseType: !294, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !345, file: !177, line: 2368, baseType: !12, size: 32, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !345, file: !177, line: 2376, baseType: !350, size: 64, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DISubroutineType(types: !352)
!352 = !{!12, !353}
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !355, line: 32, flags: DIFlagFwdDecl)
!355 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!356 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !345, file: !177, line: 2377, baseType: !357, size: 64, offset: 192)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !359)
!359 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !177, line: 75, flags: DIFlagFwdDecl)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !345, file: !177, line: 2378, baseType: !361, size: 64, offset: 256)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{!217, !344, !12, !294, !89}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !345, file: !177, line: 2380, baseType: !365, size: 64, offset: 320)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{null, !330}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !345, file: !177, line: 2381, baseType: !369, size: 64, offset: 384)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !371, line: 402, size: 9216, align: 512, elements: !372)
!371 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!372 = !{!373, !380, !381, !385, !2757, !2783, !2784, !2785, !2786, !2790, !2793, !2794, !2795, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2862, !2866, !2884, !2902, !2903, !2904, !2905, !2914, !2937, !2938, !2941, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2955, !2956, !2958, !2966, !2967, !2968, !2969, !2973, !2974, !2978, !2979, !2980, !2981, !2983, !2984, !2985, !2992, !2993, !2994, !2998}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !370, file: !371, line: 403, baseType: !374, size: 32)
!374 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !371, line: 312, baseType: !87, size: 32, elements: !375)
!375 = !{!376, !377, !378, !379}
!376 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!377 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!378 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!379 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !370, file: !371, line: 406, baseType: !162, size: 128, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !370, file: !371, line: 409, baseType: !382, size: 448, offset: 192)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 56)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !370, file: !371, line: 417, baseType: !386, size: 768, offset: 640)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !371, line: 45, size: 768, elements: !387)
!387 = !{!388, !2750, !2751, !2752, !2755}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !386, file: !371, line: 46, baseType: !389, size: 512)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !390, line: 64, size: 512, elements: !391)
!390 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!391 = !{!392, !393, !394, !396, !442, !2637, !2740, !2745, !2746, !2747, !2748, !2749}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !389, file: !390, line: 65, baseType: !294, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !389, file: !390, line: 66, baseType: !162, size: 128, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !389, file: !390, line: 67, baseType: !395, size: 64, offset: 192)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !389, file: !390, line: 68, baseType: !397, size: 64, offset: 256)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !390, line: 168, size: 768, elements: !399)
!399 = !{!400, !401, !402, !403}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !398, file: !390, line: 169, baseType: !162, size: 128)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !398, file: !390, line: 170, baseType: !46, size: 32, offset: 128)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !398, file: !390, line: 171, baseType: !389, size: 512, offset: 192)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !398, file: !390, line: 172, baseType: !404, size: 64, offset: 704)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !406)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !390, line: 133, size: 192, elements: !407)
!407 = !{!408, !415, !420}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !406, file: !390, line: 134, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !410)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DISubroutineType(types: !412)
!412 = !{!12, !413}
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !389)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !406, file: !390, line: 135, baseType: !416, size: 64, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !417)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{!294, !413}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !406, file: !390, line: 136, baseType: !421, size: 64, offset: 128)
!421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{!12, !413, !425}
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !390, line: 125, size: 20736, elements: !427)
!427 = !{!428, !432, !436, !437, !441}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !426, file: !390, line: 126, baseType: !429, size: 192)
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 192, elements: !430)
!430 = !{!431}
!431 = !DISubrange(count: 3)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !426, file: !390, line: 127, baseType: !433, size: 4096, offset: 192)
!433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 4096, elements: !434)
!434 = !{!435}
!435 = !DISubrange(count: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !426, file: !390, line: 128, baseType: !12, size: 32, offset: 4288)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !426, file: !390, line: 129, baseType: !438, size: 16384, offset: 4320)
!438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !439)
!439 = !{!440}
!440 = !DISubrange(count: 2048)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !426, file: !390, line: 130, baseType: !12, size: 32, offset: 20704)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !389, file: !390, line: 69, baseType: !443, size: 64, offset: 320)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !445)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !390, line: 116, size: 384, elements: !446)
!446 = !{!447, !451, !477, !2625, !2629, !2633}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !445, file: !390, line: 117, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{null, !395}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !445, file: !390, line: 118, baseType: !452, size: 64, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !454)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !455, line: 254, size: 128, elements: !456)
!455 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!456 = !{!457, !470}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !454, file: !455, line: 255, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!461, !395, !465, !319}
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !19, line: 66, baseType: !462)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !194, line: 73, baseType: !463)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !194, line: 15, baseType: !464)
!464 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !455, line: 30, size: 128, elements: !467)
!467 = !{!468, !469}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !466, file: !455, line: 31, baseType: !294, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !466, file: !455, line: 32, baseType: !184, size: 16, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !454, file: !455, line: 256, baseType: !471, size: 64, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{!461, !395, !465, !294, !474}
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !19, line: 61, baseType: !475)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !194, line: 72, baseType: !476)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !194, line: 16, baseType: !151)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !445, file: !390, line: 119, baseType: !478, size: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !481)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !455, line: 84, size: 320, elements: !482)
!482 = !{!483, !484, !488, !2621, !2623}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !481, file: !455, line: 85, baseType: !294, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !481, file: !455, line: 86, baseType: !485, size: 64, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!184, !395, !465, !12}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !481, file: !455, line: 88, baseType: !489, size: 64, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{!184, !395, !492, !12}
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !455, line: 175, size: 512, elements: !494)
!494 = !{!495, !496, !497, !498, !502, !2616, !2617}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !493, file: !455, line: 176, baseType: !466, size: 128)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !493, file: !455, line: 177, baseType: !474, size: 64, offset: 128)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !493, file: !455, line: 178, baseType: !89, size: 64, offset: 192)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !493, file: !455, line: 179, baseType: !499, size: 64, offset: 256)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!175}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !493, file: !455, line: 180, baseType: !503, size: 64, offset: 320)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!461, !506, !395, !492, !319, !340, !474}
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !177, line: 994, size: 1856, align: 64, elements: !508)
!508 = !{!509, !528, !529, !531, !540, !553, !554, !555, !635, !847, !856, !862, !863, !2606, !2607, !2608, !2609, !2611, !2612, !2615}
!509 = !DIDerivedType(tag: DW_TAG_member, scope: !507, file: !177, line: 995, baseType: !510, size: 128)
!510 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !507, file: !177, line: 995, size: 128, elements: !511)
!511 = !{!512, !518, !527}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !510, file: !177, line: 996, baseType: !513, size: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !514, line: 60, size: 64, elements: !515)
!514 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!515 = !{!516}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !513, file: !514, line: 61, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !510, file: !177, line: 997, baseType: !519, size: 128, align: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !19, line: 232, size: 128, align: 64, elements: !520)
!520 = !{!521, !523}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !519, file: !19, line: 233, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !519, file: !19, line: 234, baseType: !524, size: 64, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{null, !522}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !510, file: !177, line: 998, baseType: !87, size: 32)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !507, file: !177, line: 1005, baseType: !46, size: 32, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !507, file: !177, line: 1006, baseType: !530, size: 32, offset: 160)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !19, line: 156, baseType: !87)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !507, file: !177, line: 1007, baseType: !532, size: 64, offset: 192)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !533, line: 13, baseType: !534)
!533 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !19, line: 181, baseType: !535)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 179, size: 64, elements: !536)
!536 = !{!537}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !535, file: !19, line: 180, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !21, line: 22, baseType: !539)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !23, line: 30, baseType: !342)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !507, file: !177, line: 1008, baseType: !541, size: 256, offset: 256)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !542, line: 66, size: 256, elements: !543)
!542 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!543 = !{!544, !545, !547, !552}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !541, file: !542, line: 67, baseType: !532, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !541, file: !542, line: 68, baseType: !546, size: 32, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !55, line: 23, baseType: !54)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !541, file: !542, line: 70, baseType: !548, size: 32, offset: 96)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !549, line: 15, size: 32, elements: !550)
!549 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!550 = !{!551}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !548, file: !549, line: 20, baseType: !66, size: 32)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !541, file: !542, line: 72, baseType: !162, size: 128, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !507, file: !177, line: 1009, baseType: !340, size: 64, offset: 512)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !507, file: !177, line: 1010, baseType: !87, size: 32, offset: 576)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !507, file: !177, line: 1011, baseType: !556, size: 256, offset: 640)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !177, line: 948, size: 256, elements: !557)
!557 = !{!558, !579, !624, !632, !633, !634}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !556, file: !177, line: 949, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !560, line: 34, baseType: !561)
!560 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !560, line: 25, size: 64, elements: !562)
!562 = !{!563}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !561, file: !560, line: 26, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !565, line: 27, baseType: !566)
!565 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !565, line: 13, size: 64, elements: !567)
!567 = !{!568, !578}
!568 = !DIDerivedType(tag: DW_TAG_member, scope: !566, file: !565, line: 14, baseType: !569, size: 32)
!569 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !566, file: !565, line: 14, size: 32, elements: !570)
!570 = !{!571, !572}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !569, file: !565, line: 15, baseType: !66, size: 32)
!572 = !DIDerivedType(tag: DW_TAG_member, scope: !569, file: !565, line: 16, baseType: !573, size: 32)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !569, file: !565, line: 16, size: 32, elements: !574)
!574 = !{!575, !576}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !573, file: !565, line: 18, baseType: !74, size: 8)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !573, file: !565, line: 19, baseType: !577, size: 24, offset: 8)
!577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 24, elements: !430)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !566, file: !565, line: 26, baseType: !58, size: 32, offset: 32)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !556, file: !177, line: 950, baseType: !580, size: 64, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !582, line: 59, size: 768, elements: !583)
!582 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!583 = !{!584, !590, !591, !592, !605, !606, !613, !614}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !581, file: !582, line: 61, baseType: !585, size: 32)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !586, line: 113, baseType: !587)
!586 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !586, line: 111, size: 32, elements: !588)
!588 = !{!589}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !587, file: !586, line: 112, baseType: !66, size: 32)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !581, file: !582, line: 62, baseType: !87, size: 32, offset: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !581, file: !582, line: 63, baseType: !46, size: 32, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !581, file: !582, line: 65, baseType: !593, size: 256, offset: 128)
!593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !594, size: 256, elements: !603)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !19, line: 194, size: 64, elements: !595)
!595 = !{!596}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !594, file: !19, line: 195, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !19, line: 198, size: 128, elements: !599)
!599 = !{!600, !601}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !598, file: !19, line: 199, baseType: !597, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !598, file: !19, line: 199, baseType: !602, size: 64, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!603 = !{!604}
!604 = !DISubrange(count: 4)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !581, file: !582, line: 66, baseType: !594, size: 64, offset: 384)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !581, file: !582, line: 68, baseType: !607, size: 192, offset: 448)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !608, line: 41, baseType: !609)
!608 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !608, line: 37, size: 192, elements: !610)
!610 = !{!611, !612}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !609, file: !608, line: 38, baseType: !46, size: 32)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !609, file: !608, line: 39, baseType: !162, size: 128, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !581, file: !582, line: 69, baseType: !519, size: 128, align: 64, offset: 640)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !581, file: !582, line: 70, baseType: !615, offset: 768)
!615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !616, elements: !622)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !582, line: 54, size: 128, elements: !617)
!617 = !{!618, !619}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !616, file: !582, line: 55, baseType: !12, size: 32)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !616, file: !582, line: 56, baseType: !620, size: 64, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !582, line: 56, flags: DIFlagFwdDecl)
!622 = !{!623}
!623 = !DISubrange(count: -1)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !556, file: !177, line: 951, baseType: !625, size: 32, offset: 128)
!625 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !582, line: 9, baseType: !87, size: 32, elements: !626)
!626 = !{!627, !628, !629, !630, !631}
!627 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!628 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!629 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!630 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!631 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !556, file: !177, line: 952, baseType: !187, size: 32, offset: 160)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !556, file: !177, line: 952, baseType: !187, size: 32, offset: 192)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !556, file: !177, line: 953, baseType: !12, size: 32, offset: 224)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !507, file: !177, line: 1012, baseType: !636, size: 64, offset: 896)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !638)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !639, line: 110, size: 1472, elements: !640)
!639 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!640 = !{!641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !657, !658, !659, !660, !661, !662, !792, !793, !794, !795, !796, !827, !830, !834, !842}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !638, file: !639, line: 111, baseType: !532, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !638, file: !639, line: 112, baseType: !187, size: 32, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !638, file: !639, line: 113, baseType: !197, size: 32, offset: 96)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !638, file: !639, line: 114, baseType: !187, size: 32, offset: 128)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !638, file: !639, line: 115, baseType: !197, size: 32, offset: 160)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !638, file: !639, line: 116, baseType: !187, size: 32, offset: 192)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !638, file: !639, line: 117, baseType: !197, size: 32, offset: 224)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !638, file: !639, line: 118, baseType: !187, size: 32, offset: 256)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !638, file: !639, line: 119, baseType: !197, size: 32, offset: 288)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !638, file: !639, line: 120, baseType: !87, size: 32, offset: 320)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !638, file: !639, line: 121, baseType: !652, size: 64, offset: 384)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !653, line: 24, baseType: !654)
!653 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !653, line: 24, size: 64, elements: !655)
!655 = !{!656}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !654, file: !653, line: 24, baseType: !20, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !638, file: !639, line: 122, baseType: !652, size: 64, offset: 448)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !638, file: !639, line: 123, baseType: !652, size: 64, offset: 512)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !638, file: !639, line: 124, baseType: !652, size: 64, offset: 576)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !638, file: !639, line: 125, baseType: !652, size: 64, offset: 640)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !638, file: !639, line: 127, baseType: !76, size: 8, offset: 704)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !638, file: !639, line: 129, baseType: !663, size: 64, offset: 768)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !665, line: 195, size: 1728, elements: !666)
!665 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!666 = !{!667, !668, !673, !685, !694, !697, !698, !705, !706, !707, !708, !711, !712, !713, !715, !716, !756, !777}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !664, file: !665, line: 196, baseType: !585, size: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !664, file: !665, line: 197, baseType: !669, size: 32, offset: 32)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !665, line: 28, baseType: !670)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !19, line: 104, baseType: !671)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !21, line: 20, baseType: !672)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !23, line: 26, baseType: !12)
!673 = !DIDerivedType(tag: DW_TAG_member, scope: !664, file: !665, line: 198, baseType: !674, size: 192, offset: 64)
!674 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !664, file: !665, line: 198, size: 192, elements: !675)
!675 = !{!676, !677}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !674, file: !665, line: 199, baseType: !162, size: 128)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !674, file: !665, line: 200, baseType: !678, size: 192, align: 64)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !679, line: 5, size: 192, align: 64, elements: !680)
!679 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!680 = !{!681, !682, !684}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !678, file: !679, line: 6, baseType: !151, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !678, file: !679, line: 7, baseType: !683, size: 64, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !678, file: !679, line: 8, baseType: !683, size: 64, offset: 128)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !664, file: !665, line: 205, baseType: !686, size: 320, offset: 256)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !687, line: 48, size: 320, elements: !688)
!687 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!688 = !{!689, !690, !691, !692, !693}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !686, file: !687, line: 49, baseType: !532, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !686, file: !687, line: 55, baseType: !532, size: 64, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !686, file: !687, line: 57, baseType: !548, size: 32, offset: 128)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !686, file: !687, line: 59, baseType: !546, size: 32, offset: 160)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !686, file: !687, line: 60, baseType: !162, size: 128, offset: 192)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !664, file: !665, line: 206, baseType: !695, size: 64, offset: 576)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !665, line: 206, flags: DIFlagFwdDecl)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !664, file: !665, line: 207, baseType: !89, size: 64, offset: 640)
!698 = !DIDerivedType(tag: DW_TAG_member, scope: !664, file: !665, line: 208, baseType: !699, size: 64, offset: 704)
!699 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !664, file: !665, line: 208, size: 64, elements: !700)
!700 = !{!701, !704}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !699, file: !665, line: 209, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !703, line: 8, baseType: !539)
!703 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!704 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !699, file: !665, line: 210, baseType: !702, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !664, file: !665, line: 212, baseType: !702, size: 64, offset: 768)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !664, file: !665, line: 213, baseType: !187, size: 32, offset: 832)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !664, file: !665, line: 214, baseType: !197, size: 32, offset: 864)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !664, file: !665, line: 215, baseType: !709, size: 32, offset: 896)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !665, line: 31, baseType: !710)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !19, line: 110, baseType: !251)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !664, file: !665, line: 216, baseType: !39, size: 16, offset: 928)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !664, file: !665, line: 217, baseType: !39, size: 16, offset: 944)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !664, file: !665, line: 221, baseType: !714, size: 16, offset: 960)
!714 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !664, file: !665, line: 228, baseType: !151, size: 64, offset: 1024)
!716 = !DIDerivedType(tag: DW_TAG_member, scope: !664, file: !665, line: 245, baseType: !717, size: 320, offset: 1088)
!717 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !664, file: !665, line: 245, size: 320, elements: !718)
!718 = !{!719, !748}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !717, file: !665, line: 246, baseType: !720, size: 320)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !665, line: 114, size: 320, elements: !721)
!721 = !{!722, !723, !735, !738, !747}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !720, file: !665, line: 116, baseType: !151, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, scope: !720, file: !665, line: 117, baseType: !724, size: 64, offset: 64)
!724 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !720, file: !665, line: 117, size: 64, elements: !725)
!725 = !{!726, !734}
!726 = !DIDerivedType(tag: DW_TAG_member, scope: !724, file: !665, line: 118, baseType: !727, size: 64)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !724, file: !665, line: 118, size: 64, elements: !728)
!728 = !{!729, !730}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !727, file: !665, line: 120, baseType: !82, size: 16)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !727, file: !665, line: 121, baseType: !731, size: 48, offset: 16)
!731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !732)
!732 = !{!733}
!733 = !DISubrange(count: 6)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !724, file: !665, line: 127, baseType: !151, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !720, file: !665, line: 129, baseType: !736, size: 64, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !665, line: 102, flags: DIFlagFwdDecl)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !720, file: !665, line: 130, baseType: !739, size: 64, offset: 192)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !665, line: 108, size: 192, elements: !741)
!741 = !{!742, !743, !744}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !740, file: !665, line: 109, baseType: !519, size: 128, align: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !740, file: !665, line: 110, baseType: !585, size: 32, offset: 128)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !740, file: !665, line: 111, baseType: !745, size: 8, offset: 160)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !19, line: 35, baseType: !746)
!746 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !720, file: !665, line: 131, baseType: !294, size: 64, offset: 256)
!748 = !DIDerivedType(tag: DW_TAG_member, scope: !717, file: !665, line: 247, baseType: !749, size: 320)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !717, file: !665, line: 247, size: 320, elements: !750)
!750 = !{!751, !752, !753, !754, !755}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !749, file: !665, line: 248, baseType: !151, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !749, file: !665, line: 249, baseType: !151, size: 64, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !749, file: !665, line: 250, baseType: !736, size: 64, offset: 128)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !749, file: !665, line: 251, baseType: !739, size: 64, offset: 192)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !749, file: !665, line: 252, baseType: !319, size: 64, offset: 256)
!756 = !DIDerivedType(tag: DW_TAG_member, scope: !664, file: !665, line: 260, baseType: !757, size: 256, offset: 1408)
!757 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !664, file: !665, line: 260, size: 256, elements: !758)
!758 = !{!759, !765}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !757, file: !665, line: 261, baseType: !760, size: 256)
!760 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !665, line: 134, size: 256, elements: !761)
!761 = !{!762, !763}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !760, file: !665, line: 135, baseType: !89, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !760, file: !665, line: 136, baseType: !764, size: 256)
!764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 256, elements: !603)
!765 = !DIDerivedType(tag: DW_TAG_member, scope: !757, file: !665, line: 262, baseType: !766, size: 256)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !757, file: !665, line: 262, size: 256, elements: !767)
!767 = !{!768, !769}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !766, file: !665, line: 264, baseType: !162, size: 128)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !766, file: !665, line: 265, baseType: !770, size: 128, offset: 128)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !771, line: 22, size: 128, elements: !772)
!771 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!772 = !{!773, !776}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !770, file: !771, line: 23, baseType: !774, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !771, line: 23, flags: DIFlagFwdDecl)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !770, file: !771, line: 24, baseType: !151, size: 64, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !664, file: !665, line: 280, baseType: !778, size: 64, offset: 1664)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !665, line: 176, size: 192, elements: !780)
!780 = !{!781, !790, !791}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !779, file: !665, line: 177, baseType: !782, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !665, line: 171, baseType: !783)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DISubroutineType(types: !785)
!785 = !{!12, !663, !786, !788, !663}
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !737)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !760)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !779, file: !665, line: 178, baseType: !663, size: 64, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !779, file: !665, line: 179, baseType: !736, size: 64, offset: 128)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !638, file: !639, line: 130, baseType: !663, size: 64, offset: 832)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !638, file: !639, line: 131, baseType: !663, size: 64, offset: 896)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !638, file: !639, line: 132, baseType: !663, size: 64, offset: 960)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !638, file: !639, line: 135, baseType: !89, size: 64, offset: 1024)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !638, file: !639, line: 137, baseType: !797, size: 64, offset: 1088)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !799, line: 14, size: 1088, elements: !800)
!799 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!800 = !{!801, !802, !811, !812, !813, !814, !815, !816}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !798, file: !799, line: 15, baseType: !585, size: 32)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !798, file: !799, line: 17, baseType: !803, size: 320, offset: 64)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !804, line: 22, size: 320, elements: !805)
!804 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!805 = !{!806, !807, !808, !809}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !803, file: !804, line: 23, baseType: !546, size: 32)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !803, file: !804, line: 24, baseType: !538, size: 64, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !803, file: !804, line: 26, baseType: !162, size: 128, offset: 128)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !803, file: !804, line: 28, baseType: !810, size: 64, offset: 256)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !798, file: !799, line: 19, baseType: !151, size: 64, offset: 384)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !798, file: !799, line: 20, baseType: !532, size: 64, offset: 448)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !798, file: !799, line: 23, baseType: !598, size: 128, offset: 512)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !798, file: !799, line: 24, baseType: !187, size: 32, offset: 640)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !798, file: !799, line: 29, baseType: !532, size: 64, offset: 704)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !798, file: !799, line: 36, baseType: !817, size: 320, offset: 768)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !818, line: 15, size: 320, elements: !819)
!818 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!819 = !{!820, !821, !822, !823, !824, !825, !826}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !817, file: !818, line: 16, baseType: !546, size: 32)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !817, file: !818, line: 18, baseType: !12, size: 32, offset: 32)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !817, file: !818, line: 19, baseType: !12, size: 32, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !817, file: !818, line: 20, baseType: !12, size: 32, offset: 96)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !817, file: !818, line: 21, baseType: !12, size: 32, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !817, file: !818, line: 22, baseType: !151, size: 64, offset: 192)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !817, file: !818, line: 23, baseType: !151, size: 64, offset: 256)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !638, file: !639, line: 138, baseType: !828, size: 64, offset: 1152)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !188, line: 18, flags: DIFlagFwdDecl)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !638, file: !639, line: 139, baseType: !831, size: 64, offset: 1216)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !833, line: 16, flags: DIFlagFwdDecl)
!833 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!834 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !638, file: !639, line: 140, baseType: !835, size: 64, offset: 1280)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !639, line: 25, size: 64, elements: !837)
!837 = !{!838, !839, !840}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !836, file: !639, line: 26, baseType: !66, size: 32)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !836, file: !639, line: 27, baseType: !12, size: 32, offset: 32)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !836, file: !639, line: 28, baseType: !841, offset: 64)
!841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, elements: !622)
!842 = !DIDerivedType(tag: DW_TAG_member, scope: !638, file: !639, line: 142, baseType: !843, size: 128, offset: 1344)
!843 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !638, file: !639, line: 142, size: 128, elements: !844)
!844 = !{!845, !846}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !843, file: !639, line: 143, baseType: !12, size: 32)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !843, file: !639, line: 144, baseType: !519, size: 128, align: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !507, file: !177, line: 1013, baseType: !848, size: 256, offset: 960)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !177, line: 970, size: 256, elements: !849)
!849 = !{!850, !851, !852, !853, !854, !855}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !848, file: !177, line: 971, baseType: !151, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !848, file: !177, line: 972, baseType: !87, size: 32, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !848, file: !177, line: 973, baseType: !87, size: 32, offset: 96)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !848, file: !177, line: 974, baseType: !87, size: 32, offset: 128)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !848, file: !177, line: 975, baseType: !87, size: 32, offset: 160)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !848, file: !177, line: 976, baseType: !340, size: 64, offset: 192)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !507, file: !177, line: 1014, baseType: !857, size: 128, offset: 1216)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !858, line: 8, size: 128, elements: !859)
!858 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!859 = !{!860, !861}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !857, file: !858, line: 9, baseType: !324, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !857, file: !858, line: 10, baseType: !217, size: 64, offset: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !507, file: !177, line: 1015, baseType: !180, size: 64, offset: 1344)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !507, file: !177, line: 1016, baseType: !864, size: 64, offset: 1408)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !866)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !177, line: 1914, size: 2112, elements: !867)
!867 = !{!868, !869, !873, !878, !882, !959, !960, !2171, !2184, !2192, !2196, !2197, !2528, !2529, !2533, !2538, !2539, !2543, !2547, !2553, !2554, !2558, !2559, !2565, !2569, !2573, !2579, !2583, !2587, !2591, !2595, !2596, !2602}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !866, file: !177, line: 1915, baseType: !369, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !866, file: !177, line: 1916, baseType: !870, size: 64, offset: 64)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{!340, !506, !340, !12}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !866, file: !177, line: 1917, baseType: !874, size: 64, offset: 128)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DISubroutineType(types: !876)
!876 = !{!461, !506, !319, !474, !877}
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !866, file: !177, line: 1918, baseType: !879, size: 64, offset: 192)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DISubroutineType(types: !881)
!881 = !{!461, !506, !294, !474, !877}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !866, file: !177, line: 1919, baseType: !883, size: 64, offset: 256)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DISubroutineType(types: !885)
!885 = !{!461, !886, !908}
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !177, line: 373, size: 384, elements: !888)
!888 = !{!889, !890, !891, !895, !896, !897, !898}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !887, file: !177, line: 374, baseType: !506, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !887, file: !177, line: 375, baseType: !340, size: 64, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !887, file: !177, line: 376, baseType: !892, size: 64, offset: 128)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DISubroutineType(types: !894)
!894 = !{null, !886, !464}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !887, file: !177, line: 377, baseType: !89, size: 64, offset: 192)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !887, file: !177, line: 378, baseType: !12, size: 32, offset: 256)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !887, file: !177, line: 379, baseType: !82, size: 16, offset: 288)
!898 = !DIDerivedType(tag: DW_TAG_member, scope: !887, file: !177, line: 380, baseType: !899, size: 64, offset: 320)
!899 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !887, file: !177, line: 380, size: 64, elements: !900)
!900 = !{!901, !904}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !899, file: !177, line: 386, baseType: !902, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !177, line: 386, flags: DIFlagFwdDecl)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !899, file: !177, line: 395, baseType: !905, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DISubroutineType(types: !907)
!907 = !{!461, !89}
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !910, line: 41, size: 320, elements: !911)
!910 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!911 = !{!912, !913, !914, !915, !916, !917, !922, !954}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !909, file: !910, line: 42, baseType: !74, size: 8)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !909, file: !910, line: 43, baseType: !745, size: 8, offset: 8)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !909, file: !910, line: 44, baseType: !745, size: 8, offset: 16)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !909, file: !910, line: 45, baseType: !745, size: 8, offset: 24)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !909, file: !910, line: 46, baseType: !745, size: 8, offset: 32)
!917 = !DIDerivedType(tag: DW_TAG_member, scope: !909, file: !910, line: 47, baseType: !918, size: 64, offset: 64)
!918 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !909, file: !910, line: 47, size: 64, elements: !919)
!919 = !{!920, !921}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !918, file: !910, line: 48, baseType: !474, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !918, file: !910, line: 49, baseType: !12, size: 32)
!922 = !DIDerivedType(tag: DW_TAG_member, scope: !909, file: !910, line: 61, baseType: !923, size: 128, offset: 128)
!923 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !909, file: !910, line: 61, size: 128, elements: !924)
!924 = !{!925, !931}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !923, file: !910, line: 67, baseType: !926, size: 128)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !927, line: 17, size: 128, elements: !928)
!927 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!928 = !{!929, !930}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !926, file: !927, line: 19, baseType: !89, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !926, file: !927, line: 20, baseType: !475, size: 64, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, scope: !923, file: !910, line: 68, baseType: !932, size: 128)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !923, file: !910, line: 68, size: 128, elements: !933)
!933 = !{!934, !953}
!934 = !DIDerivedType(tag: DW_TAG_member, scope: !932, file: !910, line: 69, baseType: !935, size: 64)
!935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !932, file: !910, line: 69, size: 64, elements: !936)
!936 = !{!937, !940, !947, !950, !952}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !935, file: !910, line: 71, baseType: !938, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !926)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !935, file: !910, line: 72, baseType: !941, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !943)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !910, line: 17, size: 128, elements: !944)
!944 = !{!945, !946}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !943, file: !910, line: 18, baseType: !89, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !943, file: !910, line: 19, baseType: !474, size: 64, offset: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !935, file: !910, line: 73, baseType: !948, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !935, file: !910, line: 74, baseType: !951, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !935, file: !910, line: 75, baseType: !89, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !932, file: !910, line: 77, baseType: !474, size: 64, offset: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, scope: !909, file: !910, line: 80, baseType: !955, size: 64, offset: 256)
!955 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !909, file: !910, line: 80, size: 64, elements: !956)
!956 = !{!957, !958}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !955, file: !910, line: 81, baseType: !151, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !955, file: !910, line: 82, baseType: !340, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !866, file: !177, line: 1920, baseType: !883, size: 64, offset: 320)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !866, file: !177, line: 1921, baseType: !961, size: 64, offset: 384)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DISubroutineType(types: !963)
!963 = !{!12, !886, !964, !87}
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !29, line: 1559, size: 192, elements: !966)
!966 = !{!967, !2166, !2167}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "req_list", scope: !965, file: !29, line: 1560, baseType: !968, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request", file: !970, line: 80, size: 1984, elements: !971)
!970 = !DIFile(filename: "./include/linux/blk-mq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "62cf1706db3683ee75df9cf32a2cf47d")
!971 = !{!972, !2076, !2077, !2078, !2079, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2106, !2107, !2108, !2113, !2118, !2150, !2163, !2164, !2165}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !969, file: !970, line: 81, baseType: !973, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !29, line: 391, size: 7296, elements: !975)
!975 = !{!976, !977, !980, !1001, !1004, !1007, !1008, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2050, !2051, !2052, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "last_merge", scope: !974, file: !29, line: 392, baseType: !968, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "elevator", scope: !974, file: !29, line: 393, baseType: !978, size: 64, offset: 64)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_queue", file: !29, line: 30, flags: DIFlagFwdDecl)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "q_usage_counter", scope: !974, file: !29, line: 395, baseType: !981, size: 128, offset: 128)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !982, line: 105, size: 128, elements: !983)
!982 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!983 = !{!984, !985}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !981, file: !982, line: 110, baseType: !151, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !981, file: !982, line: 118, baseType: !986, size: 64, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !982, line: 95, size: 448, elements: !988)
!988 = !{!989, !990, !996, !997, !998, !999, !1000}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !987, file: !982, line: 96, baseType: !532, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !987, file: !982, line: 97, baseType: !991, size: 64, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !982, line: 60, baseType: !993)
!993 = !DISubroutineType(types: !994)
!994 = !{null, !995}
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !987, file: !982, line: 98, baseType: !991, size: 64, offset: 128)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !987, file: !982, line: 99, baseType: !745, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !987, file: !982, line: 100, baseType: !745, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !987, file: !982, line: 101, baseType: !519, size: 128, align: 64, offset: 256)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !987, file: !982, line: 102, baseType: !995, size: 64, offset: 384)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !974, file: !29, line: 397, baseType: !1002, size: 64, offset: 256)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_queue_stats", file: !29, line: 39, flags: DIFlagFwdDecl)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos", scope: !974, file: !29, line: 398, baseType: !1005, size: 64, offset: 320)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DICompositeType(tag: DW_TAG_structure_type, name: "rq_qos", file: !29, line: 38, flags: DIFlagFwdDecl)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos_mutex", scope: !974, file: !29, line: 399, baseType: !541, size: 256, offset: 384)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ops", scope: !974, file: !29, line: 401, baseType: !1009, size: 64, offset: 640)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1011)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ops", file: !970, line: 537, size: 1152, elements: !1012)
!1012 = !{!1013, !1174, !1178, !1182, !1186, !1190, !1194, !1198, !1206, !1210, !1214, !1218, !1222, !1341, !1345, !1346, !1350, !1354}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "queue_rq", scope: !1011, file: !970, line: 541, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!111, !1017, !1168}
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_hw_ctx", file: !970, line: 288, size: 4096, elements: !1019)
!1019 = !{!1020, !1026, !1057, !1067, !1068, !1069, !1070, !1071, !1072, !1088, !1089, !1106, !1109, !1110, !1111, !1112, !1114, !1115, !1128, !1129, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167}
!1020 = !DIDerivedType(tag: DW_TAG_member, scope: !1018, file: !970, line: 289, baseType: !1021, size: 512, align: 512)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1018, file: !970, line: 289, size: 512, align: 512, elements: !1022)
!1022 = !{!1023, !1024, !1025}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1021, file: !970, line: 291, baseType: !46, size: 32)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !1021, file: !970, line: 299, baseType: !162, size: 128, offset: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1021, file: !970, line: 304, baseType: !151, size: 64, offset: 192)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "run_work", scope: !1018, file: !970, line: 310, baseType: !1027, size: 704, offset: 512)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1028, line: 111, size: 704, elements: !1029)
!1028 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1029 = !{!1030, !1041, !1053, !1056}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1027, file: !1028, line: 112, baseType: !1031, size: 256)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1028, line: 98, size: 256, elements: !1032)
!1032 = !{!1033, !1034, !1035}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1031, file: !1028, line: 99, baseType: !532, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1031, file: !1028, line: 100, baseType: !162, size: 128, offset: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1031, file: !1028, line: 101, baseType: !1036, size: 64, offset: 192)
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1028, line: 21, baseType: !1037)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{null, !1040}
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1027, file: !1028, line: 113, baseType: !1042, size: 320, offset: 256)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1043, line: 11, size: 320, elements: !1044)
!1043 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1044 = !{!1045, !1046, !1047, !1052}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1042, file: !1043, line: 16, baseType: !598, size: 128)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1042, file: !1043, line: 17, baseType: !151, size: 64, offset: 128)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1042, file: !1043, line: 18, baseType: !1048, size: 64, offset: 192)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{null, !1051}
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1042, file: !1043, line: 19, baseType: !251, size: 32, offset: 256)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1027, file: !1028, line: 116, baseType: !1054, size: 64, offset: 576)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1028, line: 18, flags: DIFlagFwdDecl)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1027, file: !1028, line: 117, baseType: !12, size: 32, offset: 640)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1018, file: !970, line: 312, baseType: !1058, size: 64, offset: 1216)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !1059, line: 913, baseType: !1060)
!1059 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1061, size: 64, elements: !1065)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1059, line: 19, size: 64, elements: !1062)
!1062 = !{!1063}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1061, file: !1059, line: 19, baseType: !1064, size: 64)
!1064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 64, elements: !1065)
!1065 = !{!1066}
!1066 = !DISubrange(count: 1)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "next_cpu", scope: !1018, file: !970, line: 317, baseType: !12, size: 32, offset: 1280)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "next_cpu_batch", scope: !1018, file: !970, line: 322, baseType: !12, size: 32, offset: 1312)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1018, file: !970, line: 325, baseType: !151, size: 64, offset: 1344)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "sched_data", scope: !1018, file: !970, line: 331, baseType: !89, size: 64, offset: 1408)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !1018, file: !970, line: 335, baseType: !973, size: 64, offset: 1472)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !1018, file: !970, line: 337, baseType: !1073, size: 64, offset: 1536)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_flush_queue", file: !1075, line: 17, size: 512, elements: !1076)
!1075 = !DIFile(filename: "block/blk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "08e4a891c7a7b1c380cd6f0c6d03b93a")
!1076 = !{!1077, !1078, !1079, !1080, !1081, !1082, !1086, !1087}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "mq_flush_lock", scope: !1074, file: !1075, line: 18, baseType: !46, size: 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "flush_pending_idx", scope: !1074, file: !1075, line: 19, baseType: !87, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "flush_running_idx", scope: !1074, file: !1075, line: 20, baseType: !87, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "rq_status", scope: !1074, file: !1075, line: 21, baseType: !111, size: 8, offset: 40)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "flush_pending_since", scope: !1074, file: !1075, line: 22, baseType: !151, size: 64, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "flush_queue", scope: !1074, file: !1075, line: 23, baseType: !1083, size: 256, offset: 128)
!1083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 256, elements: !1084)
!1084 = !{!1085}
!1085 = !DISubrange(count: 2)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "flush_data_in_flight", scope: !1074, file: !1075, line: 24, baseType: !151, size: 64, offset: 384)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "flush_rq", scope: !1074, file: !1075, line: 25, baseType: !968, size: 64, offset: 448)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1018, file: !970, line: 343, baseType: !89, size: 64, offset: 1600)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_map", scope: !1018, file: !970, line: 349, baseType: !1090, size: 256, offset: 1664)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbitmap", file: !1091, line: 52, size: 256, elements: !1092)
!1091 = !DIFile(filename: "./include/linux/sbitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c1a10e3a5ba3f1b25200b1abce63f43a")
!1092 = !{!1093, !1094, !1095, !1096, !1097, !1104}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1090, file: !1091, line: 56, baseType: !87, size: 32)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !1090, file: !1091, line: 61, baseType: !87, size: 32, offset: 32)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "map_nr", scope: !1090, file: !1091, line: 66, baseType: !87, size: 32, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "round_robin", scope: !1090, file: !1091, line: 71, baseType: !745, size: 8, offset: 96)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1090, file: !1091, line: 76, baseType: !1098, size: 64, offset: 128)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbitmap_word", file: !1091, line: 29, size: 1024, align: 512, elements: !1100)
!1100 = !{!1101, !1102, !1103}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !1099, file: !1091, line: 33, baseType: !151, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "cleared", scope: !1099, file: !1091, line: 38, baseType: !151, size: 64, align: 512, offset: 512)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "swap_lock", scope: !1099, file: !1091, line: 43, baseType: !546, size: 32, offset: 576)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_hint", scope: !1090, file: !1091, line: 84, baseType: !1105, size: 64, offset: 192)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_from", scope: !1018, file: !970, line: 355, baseType: !1107, size: 64, offset: 1920)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ctx", file: !29, line: 404, flags: DIFlagFwdDecl)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_busy", scope: !1018, file: !970, line: 361, baseType: !87, size: 32, offset: 1984)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1018, file: !970, line: 364, baseType: !39, size: 16, offset: 2016)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ctx", scope: !1018, file: !970, line: 366, baseType: !39, size: 16, offset: 2032)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "ctxs", scope: !1018, file: !970, line: 368, baseType: !1113, size: 64, offset: 2048)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_wait_lock", scope: !1018, file: !970, line: 371, baseType: !46, size: 32, offset: 2112)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_wait", scope: !1018, file: !970, line: 376, baseType: !1116, size: 320, offset: 2176)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !608, line: 14, baseType: !1117)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !608, line: 30, size: 320, elements: !1118)
!1118 = !{!1119, !1120, !1121, !1127}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1117, file: !608, line: 31, baseType: !87, size: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1117, file: !608, line: 32, baseType: !89, size: 64, offset: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1117, file: !608, line: 33, baseType: !1122, size: 64, offset: 128)
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !608, line: 16, baseType: !1123)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!12, !1126, !87, !12, !89}
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1117, file: !608, line: 34, baseType: !162, size: 128, offset: 192)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !1018, file: !970, line: 382, baseType: !66, size: 32, offset: 2496)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "tags", scope: !1018, file: !970, line: 388, baseType: !1130, size: 64, offset: 2560)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tags", file: !970, line: 735, size: 1472, elements: !1132)
!1132 = !{!1133, !1134, !1135, !1136, !1151, !1152, !1154, !1155, !1156}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tags", scope: !1131, file: !970, line: 736, baseType: !87, size: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "nr_reserved_tags", scope: !1131, file: !970, line: 737, baseType: !87, size: 32, offset: 32)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "active_queues", scope: !1131, file: !970, line: 738, baseType: !87, size: 32, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap_tags", scope: !1131, file: !970, line: 740, baseType: !1137, size: 512, offset: 128)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbitmap_queue", file: !1091, line: 109, size: 512, elements: !1138)
!1138 = !{!1139, !1140, !1141, !1142, !1147, !1148, !1149, !1150}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "sb", scope: !1137, file: !1091, line: 113, baseType: !1090, size: 256)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "wake_batch", scope: !1137, file: !1091, line: 119, baseType: !87, size: 32, offset: 256)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "wake_index", scope: !1137, file: !1091, line: 124, baseType: !66, size: 32, offset: 288)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !1137, file: !1091, line: 129, baseType: !1143, size: 64, offset: 320)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbq_wait_state", file: !1091, line: 93, size: 512, align: 512, elements: !1145)
!1145 = !{!1146}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1144, file: !1091, line: 97, baseType: !607, size: 192)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "ws_active", scope: !1137, file: !1091, line: 134, baseType: !66, size: 32, offset: 384)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "min_shallow_depth", scope: !1137, file: !1091, line: 140, baseType: !87, size: 32, offset: 416)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "completion_cnt", scope: !1137, file: !1091, line: 146, baseType: !66, size: 32, offset: 448)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_cnt", scope: !1137, file: !1091, line: 151, baseType: !66, size: 32, offset: 480)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "breserved_tags", scope: !1131, file: !970, line: 741, baseType: !1137, size: 512, offset: 640)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "rqs", scope: !1131, file: !970, line: 743, baseType: !1153, size: 64, offset: 1152)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "static_rqs", scope: !1131, file: !970, line: 744, baseType: !1153, size: 64, offset: 1216)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "page_list", scope: !1131, file: !970, line: 745, baseType: !162, size: 128, offset: 1280)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1131, file: !970, line: 751, baseType: !46, size: 32, offset: 1408)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "sched_tags", scope: !1018, file: !970, line: 394, baseType: !1130, size: 64, offset: 2624)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !1018, file: !970, line: 397, baseType: !151, size: 64, offset: 2688)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !1018, file: !970, line: 400, baseType: !87, size: 32, offset: 2752)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "queue_num", scope: !1018, file: !970, line: 402, baseType: !87, size: 32, offset: 2784)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active", scope: !1018, file: !970, line: 408, baseType: !66, size: 32, offset: 2816)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_online", scope: !1018, file: !970, line: 411, baseType: !598, size: 128, offset: 2880)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !1018, file: !970, line: 413, baseType: !598, size: 128, offset: 3008)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1018, file: !970, line: 415, baseType: !389, size: 512, offset: 3136)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !1018, file: !970, line: 422, baseType: !217, size: 64, offset: 3648)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "sched_debugfs_dir", scope: !1018, file: !970, line: 424, baseType: !217, size: 64, offset: 3712)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_list", scope: !1018, file: !970, line: 431, baseType: !162, size: 128, offset: 3776)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1170)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_queue_data", file: !970, line: 526, size: 128, elements: !1171)
!1171 = !{!1172, !1173}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "rq", scope: !1170, file: !970, line: 527, baseType: !968, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1170, file: !970, line: 528, baseType: !745, size: 8, offset: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "commit_rqs", scope: !1011, file: !970, line: 551, baseType: !1175, size: 64, offset: 64)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{null, !1017}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "queue_rqs", scope: !1011, file: !970, line: 559, baseType: !1179, size: 64, offset: 128)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{null, !1153}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "get_budget", scope: !1011, file: !970, line: 567, baseType: !1183, size: 64, offset: 192)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!12, !973}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "put_budget", scope: !1011, file: !970, line: 572, baseType: !1187, size: 64, offset: 256)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{null, !973, !12}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "set_rq_budget_token", scope: !1011, file: !970, line: 577, baseType: !1191, size: 64, offset: 320)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{null, !968, !12}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "get_rq_budget_token", scope: !1011, file: !970, line: 581, baseType: !1195, size: 64, offset: 384)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!12, !968}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1011, file: !970, line: 586, baseType: !1199, size: 64, offset: 448)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!1202, !968}
!1202 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_eh_timer_return", file: !970, line: 276, baseType: !87, size: 32, elements: !1203)
!1203 = !{!1204, !1205}
!1204 = !DIEnumerator(name: "BLK_EH_DONE", value: 0)
!1205 = !DIEnumerator(name: "BLK_EH_RESET_TIMER", value: 1)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1011, file: !970, line: 591, baseType: !1207, size: 64, offset: 512)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{!12, !1017, !964}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1011, file: !970, line: 596, baseType: !1211, size: 64, offset: 576)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{null, !968}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "init_hctx", scope: !1011, file: !970, line: 603, baseType: !1215, size: 64, offset: 640)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!12, !1017, !89, !87}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "exit_hctx", scope: !1011, file: !970, line: 607, baseType: !1219, size: 64, offset: 704)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{null, !1017, !87}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "init_request", scope: !1011, file: !970, line: 616, baseType: !1223, size: 64, offset: 768)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!12, !1226, !968, !87, !87}
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tag_set", file: !970, line: 498, size: 1344, elements: !1228)
!1228 = !{!1229, !1230, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1248, !1249, !1250, !1251}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1227, file: !970, line: 499, baseType: !1009, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1227, file: !970, line: 500, baseType: !1231, size: 384, offset: 64)
!1231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1232, size: 384, elements: !430)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_queue_map", file: !970, line: 444, size: 128, elements: !1233)
!1233 = !{!1234, !1235, !1236}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "mq_map", scope: !1232, file: !970, line: 445, baseType: !1105, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "nr_queues", scope: !1232, file: !970, line: 446, baseType: !87, size: 32, offset: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "queue_offset", scope: !1232, file: !970, line: 447, baseType: !87, size: 32, offset: 96)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "nr_maps", scope: !1227, file: !970, line: 501, baseType: !87, size: 32, offset: 448)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !1227, file: !970, line: 502, baseType: !87, size: 32, offset: 480)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !1227, file: !970, line: 503, baseType: !87, size: 32, offset: 512)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_tags", scope: !1227, file: !970, line: 504, baseType: !87, size: 32, offset: 544)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_size", scope: !1227, file: !970, line: 505, baseType: !87, size: 32, offset: 576)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !1227, file: !970, line: 506, baseType: !12, size: 32, offset: 608)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1227, file: !970, line: 507, baseType: !87, size: 32, offset: 640)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1227, file: !970, line: 508, baseType: !87, size: 32, offset: 672)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1227, file: !970, line: 509, baseType: !89, size: 64, offset: 704)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "tags", scope: !1227, file: !970, line: 511, baseType: !1247, size: 64, offset: 768)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "shared_tags", scope: !1227, file: !970, line: 513, baseType: !1130, size: 64, offset: 832)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "tag_list_lock", scope: !1227, file: !970, line: 515, baseType: !541, size: 256, offset: 896)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "tag_list", scope: !1227, file: !970, line: 516, baseType: !162, size: 128, offset: 1152)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "srcu", scope: !1227, file: !970, line: 517, baseType: !1252, size: 64, offset: 1280)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1254, line: 96, size: 192, elements: !1255)
!1254 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1255 = !{!1256, !1257, !1300, !1303}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1253, file: !1254, line: 97, baseType: !87, size: 32)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1253, file: !1254, line: 98, baseType: !1258, size: 64, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1254, line: 24, size: 3072, elements: !1260)
!1260 = !{!1261, !1263, !1264, !1265, !1266, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1297, !1298, !1299}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1259, file: !1254, line: 26, baseType: !1262, size: 128)
!1262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !532, size: 128, elements: !1084)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1259, file: !1254, line: 27, baseType: !1262, size: 128, offset: 128)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1259, file: !1254, line: 28, baseType: !12, size: 32, offset: 256)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1259, file: !1254, line: 31, baseType: !46, size: 32, align: 512, offset: 512)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1259, file: !1254, line: 32, baseType: !1267, size: 960, offset: 576)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1268, line: 206, size: 960, elements: !1269)
!1268 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1269 = !{!1270, !1271, !1274, !1276, !1277, !1279}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1267, file: !1268, line: 207, baseType: !522, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1267, file: !1268, line: 208, baseType: !1272, size: 256, offset: 64)
!1272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1273, size: 256, elements: !603)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1267, file: !1268, line: 209, baseType: !1275, size: 256, offset: 320)
!1275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 256, elements: !603)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1267, file: !1268, line: 213, baseType: !464, size: 64, offset: 576)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1267, file: !1268, line: 215, baseType: !1278, size: 256, offset: 640)
!1278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 256, elements: !603)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1267, file: !1268, line: 216, baseType: !74, size: 8, offset: 896)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1259, file: !1254, line: 33, baseType: !151, size: 64, offset: 1536)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1259, file: !1254, line: 34, baseType: !151, size: 64, offset: 1600)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1259, file: !1254, line: 35, baseType: !745, size: 8, offset: 1664)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1259, file: !1254, line: 36, baseType: !1042, size: 320, offset: 1728)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1259, file: !1254, line: 37, baseType: !1031, size: 256, offset: 2048)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1259, file: !1254, line: 38, baseType: !519, size: 128, align: 64, offset: 2304)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1259, file: !1254, line: 39, baseType: !1287, size: 64, offset: 2432)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1254, line: 49, size: 768, elements: !1289)
!1289 = !{!1290, !1291, !1292, !1293, !1294, !1295, !1296}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1288, file: !1254, line: 50, baseType: !46, size: 32)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1288, file: !1254, line: 51, baseType: !1275, size: 256, offset: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1288, file: !1254, line: 53, baseType: !1275, size: 256, offset: 320)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1288, file: !1254, line: 54, baseType: !151, size: 64, offset: 576)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1288, file: !1254, line: 55, baseType: !1287, size: 64, offset: 640)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1288, file: !1254, line: 56, baseType: !12, size: 32, offset: 704)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1288, file: !1254, line: 57, baseType: !12, size: 32, offset: 736)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1259, file: !1254, line: 40, baseType: !151, size: 64, offset: 2496)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1259, file: !1254, line: 42, baseType: !12, size: 32, offset: 2560)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1259, file: !1254, line: 43, baseType: !1252, size: 64, offset: 2624)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1253, file: !1254, line: 99, baseType: !1301, offset: 128)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1302, line: 211, elements: !137)
!1302 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1253, file: !1254, line: 100, baseType: !1304, size: 64, offset: 128)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1254, line: 63, size: 3008, elements: !1306)
!1306 = !{!1307, !1308, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1336, !1337, !1338, !1339, !1340}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1305, file: !1254, line: 64, baseType: !1287, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1305, file: !1254, line: 65, baseType: !1309, size: 192, offset: 64)
!1309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1287, size: 192, elements: !430)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1305, file: !1254, line: 67, baseType: !12, size: 32, offset: 256)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1305, file: !1254, line: 68, baseType: !541, size: 256, offset: 320)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1305, file: !1254, line: 69, baseType: !46, size: 32, offset: 576)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1305, file: !1254, line: 70, baseType: !541, size: 256, offset: 640)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1305, file: !1254, line: 71, baseType: !151, size: 64, offset: 896)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1305, file: !1254, line: 72, baseType: !151, size: 64, offset: 960)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1305, file: !1254, line: 73, baseType: !151, size: 64, offset: 1024)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1305, file: !1254, line: 74, baseType: !151, size: 64, offset: 1088)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1305, file: !1254, line: 75, baseType: !151, size: 64, offset: 1152)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1305, file: !1254, line: 76, baseType: !151, size: 64, offset: 1216)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1305, file: !1254, line: 77, baseType: !151, size: 64, offset: 1280)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1305, file: !1254, line: 78, baseType: !151, size: 64, offset: 1344)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1305, file: !1254, line: 79, baseType: !745, size: 8, offset: 1408)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1305, file: !1254, line: 80, baseType: !151, size: 64, offset: 1472)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1305, file: !1254, line: 81, baseType: !541, size: 256, offset: 1536)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1305, file: !1254, line: 82, baseType: !1326, size: 256, offset: 1792)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1327, line: 26, size: 256, elements: !1328)
!1327 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1328 = !{!1329, !1330}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1326, file: !1327, line: 27, baseType: !87, size: 32)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1326, file: !1327, line: 28, baseType: !1331, size: 192, offset: 64)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1332, line: 43, size: 192, elements: !1333)
!1332 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1333 = !{!1334, !1335}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1331, file: !1332, line: 44, baseType: !546, size: 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1331, file: !1332, line: 45, baseType: !162, size: 128, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1305, file: !1254, line: 84, baseType: !66, size: 32, offset: 2048)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1305, file: !1254, line: 87, baseType: !151, size: 64, offset: 2112)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1305, file: !1254, line: 88, baseType: !151, size: 64, offset: 2176)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1305, file: !1254, line: 89, baseType: !1027, size: 704, offset: 2240)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1305, file: !1254, line: 90, baseType: !1252, size: 64, offset: 2944)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "exit_request", scope: !1011, file: !970, line: 621, baseType: !1342, size: 64, offset: 832)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{null, !1226, !968, !87}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_rq", scope: !1011, file: !970, line: 628, baseType: !1211, size: 64, offset: 896)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !1011, file: !970, line: 633, baseType: !1347, size: 64, offset: 960)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!745, !973}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "map_queues", scope: !1011, file: !970, line: 639, baseType: !1351, size: 64, offset: 1024)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{null, !1226}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "show_rq", scope: !1011, file: !970, line: 646, baseType: !1355, size: 64, offset: 1088)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{null, !1358, !968}
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1360, line: 66, flags: DIFlagFwdDecl)
!1360 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ctx", scope: !974, file: !29, line: 404, baseType: !1107, size: 64, offset: 704)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !974, file: !29, line: 406, baseType: !87, size: 32, offset: 768)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_table", scope: !974, file: !29, line: 409, baseType: !42, size: 128, offset: 832)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !974, file: !29, line: 410, baseType: !87, size: 32, offset: 960)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "queuedata", scope: !974, file: !29, line: 416, baseType: !89, size: 64, offset: 1024)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "queue_flags", scope: !974, file: !29, line: 421, baseType: !151, size: 64, offset: 1088)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "pm_only", scope: !974, file: !29, line: 426, baseType: !66, size: 32, offset: 1152)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !974, file: !29, line: 432, baseType: !12, size: 32, offset: 1184)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "queue_lock", scope: !974, file: !29, line: 434, baseType: !46, size: 32, offset: 1216)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "disk", scope: !974, file: !29, line: 436, baseType: !27, size: 64, offset: 1280)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !974, file: !29, line: 438, baseType: !585, size: 32, offset: 1344)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "mq_kobj", scope: !974, file: !29, line: 443, baseType: !395, size: 64, offset: 1408)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !974, file: !29, line: 450, baseType: !1374, size: 64, offset: 1472)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !1376, line: 705, size: 5824, elements: !1377)
!1376 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!1377 = !{!1378, !1379, !1380, !1383, !1384, !1440, !1516, !1517, !1518, !1519, !1520, !1533, !1719, !1732, !1742, !1746, !1748, !1749, !1750, !1754, !1761, !1762, !1765, !1768, !1772, !1879, !1880, !1881, !1882, !1883, !1884, !1947, !1948, !1949, !1952, !1955, !1983, !1990, !1991, !1992, !1993, !1994}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1375, file: !1376, line: 706, baseType: !389, size: 512)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1375, file: !1376, line: 707, baseType: !1374, size: 64, offset: 512)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1375, file: !1376, line: 709, baseType: !1381, size: 64, offset: 576)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !1376, line: 37, flags: DIFlagFwdDecl)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1375, file: !1376, line: 711, baseType: !294, size: 64, offset: 640)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1375, file: !1376, line: 712, baseType: !1385, size: 64, offset: 704)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1387)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !1376, line: 89, size: 384, elements: !1388)
!1388 = !{!1389, !1390, !1391, !1397, !1404, !1408}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1387, file: !1376, line: 90, baseType: !294, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1387, file: !1376, line: 91, baseType: !478, size: 64, offset: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1387, file: !1376, line: 92, baseType: !1392, size: 64, offset: 128)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!12, !1395, !425}
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1375)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1387, file: !1376, line: 93, baseType: !1398, size: 64, offset: 192)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!319, !1395, !1401, !1402, !1403}
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1387, file: !1376, line: 95, baseType: !1405, size: 64, offset: 256)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{null, !1374}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1387, file: !1376, line: 97, baseType: !1409, size: 64, offset: 320)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1411)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !1412, line: 286, size: 1472, elements: !1413)
!1412 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!1413 = !{!1414, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1411, file: !1412, line: 287, baseType: !1415, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!12, !1374}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1411, file: !1412, line: 288, baseType: !1405, size: 64, offset: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1411, file: !1412, line: 289, baseType: !1415, size: 64, offset: 128)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1411, file: !1412, line: 290, baseType: !1415, size: 64, offset: 192)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1411, file: !1412, line: 291, baseType: !1415, size: 64, offset: 256)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1411, file: !1412, line: 292, baseType: !1415, size: 64, offset: 320)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1411, file: !1412, line: 293, baseType: !1415, size: 64, offset: 384)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1411, file: !1412, line: 294, baseType: !1415, size: 64, offset: 448)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1411, file: !1412, line: 295, baseType: !1415, size: 64, offset: 512)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1411, file: !1412, line: 296, baseType: !1415, size: 64, offset: 576)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1411, file: !1412, line: 297, baseType: !1415, size: 64, offset: 640)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1411, file: !1412, line: 298, baseType: !1415, size: 64, offset: 704)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1411, file: !1412, line: 299, baseType: !1415, size: 64, offset: 768)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1411, file: !1412, line: 300, baseType: !1415, size: 64, offset: 832)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1411, file: !1412, line: 301, baseType: !1415, size: 64, offset: 896)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1411, file: !1412, line: 302, baseType: !1415, size: 64, offset: 960)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1411, file: !1412, line: 303, baseType: !1415, size: 64, offset: 1024)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1411, file: !1412, line: 304, baseType: !1415, size: 64, offset: 1088)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1411, file: !1412, line: 305, baseType: !1415, size: 64, offset: 1152)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1411, file: !1412, line: 306, baseType: !1415, size: 64, offset: 1216)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1411, file: !1412, line: 307, baseType: !1415, size: 64, offset: 1280)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1411, file: !1412, line: 308, baseType: !1415, size: 64, offset: 1344)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1411, file: !1412, line: 309, baseType: !1415, size: 64, offset: 1408)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1375, file: !1376, line: 714, baseType: !1441, size: 64, offset: 768)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1443)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1444, line: 80, size: 1344, elements: !1445)
!1444 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!1445 = !{!1446, !1447, !1448, !1449, !1450, !1451, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1515}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1443, file: !1444, line: 81, baseType: !294, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1443, file: !1444, line: 82, baseType: !294, size: 64, offset: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1443, file: !1444, line: 83, baseType: !478, size: 64, offset: 128)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1443, file: !1444, line: 84, baseType: !478, size: 64, offset: 192)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1443, file: !1444, line: 85, baseType: !478, size: 64, offset: 256)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1443, file: !1444, line: 87, baseType: !1452, size: 64, offset: 320)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!12, !1374, !1455}
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !1457, line: 96, size: 1152, elements: !1458)
!1457 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!1458 = !{!1459, !1460, !1461, !1462, !1463, !1464, !1470, !1474, !1478, !1479, !1480, !1481, !1482, !1490, !1491, !1492, !1493, !1494, !1495}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1456, file: !1457, line: 97, baseType: !294, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1456, file: !1457, line: 98, baseType: !1441, size: 64, offset: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1456, file: !1457, line: 100, baseType: !369, size: 64, offset: 128)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1456, file: !1457, line: 101, baseType: !294, size: 64, offset: 192)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1456, file: !1457, line: 103, baseType: !745, size: 8, offset: 256)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1456, file: !1457, line: 104, baseType: !1465, size: 32, offset: 288)
!1465 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !1457, line: 45, baseType: !87, size: 32, elements: !1466)
!1466 = !{!1467, !1468, !1469}
!1467 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!1468 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!1469 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1456, file: !1457, line: 106, baseType: !1471, size: 64, offset: 320)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1473)
!1473 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1457, line: 106, flags: DIFlagFwdDecl)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1456, file: !1457, line: 107, baseType: !1475, size: 64, offset: 384)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1477)
!1477 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1457, line: 107, flags: DIFlagFwdDecl)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1456, file: !1457, line: 109, baseType: !1415, size: 64, offset: 448)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1456, file: !1457, line: 110, baseType: !1405, size: 64, offset: 512)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1456, file: !1457, line: 111, baseType: !1415, size: 64, offset: 576)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1456, file: !1457, line: 112, baseType: !1405, size: 64, offset: 640)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1456, file: !1457, line: 113, baseType: !1483, size: 64, offset: 704)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!12, !1374, !1486}
!1486 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !1412, line: 60, baseType: !1487)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !1412, line: 58, size: 32, elements: !1488)
!1488 = !{!1489}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1487, file: !1412, line: 59, baseType: !12, size: 32)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1456, file: !1457, line: 114, baseType: !1415, size: 64, offset: 768)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1456, file: !1457, line: 115, baseType: !478, size: 64, offset: 832)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1456, file: !1457, line: 116, baseType: !478, size: 64, offset: 896)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1456, file: !1457, line: 118, baseType: !1409, size: 64, offset: 960)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1456, file: !1457, line: 119, baseType: !1405, size: 64, offset: 1024)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1456, file: !1457, line: 121, baseType: !1496, size: 64, offset: 1088)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !1457, line: 121, flags: DIFlagFwdDecl)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1443, file: !1444, line: 88, baseType: !1392, size: 64, offset: 384)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1443, file: !1444, line: 89, baseType: !1415, size: 64, offset: 448)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1443, file: !1444, line: 90, baseType: !1405, size: 64, offset: 512)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1443, file: !1444, line: 91, baseType: !1405, size: 64, offset: 576)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1443, file: !1444, line: 92, baseType: !1405, size: 64, offset: 640)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1443, file: !1444, line: 94, baseType: !1415, size: 64, offset: 704)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1443, file: !1444, line: 95, baseType: !1415, size: 64, offset: 768)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1443, file: !1444, line: 97, baseType: !1483, size: 64, offset: 832)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1443, file: !1444, line: 98, baseType: !1415, size: 64, offset: 896)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1443, file: !1444, line: 100, baseType: !1415, size: 64, offset: 960)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1443, file: !1444, line: 102, baseType: !1415, size: 64, offset: 1024)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !1443, file: !1444, line: 103, baseType: !1405, size: 64, offset: 1088)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1443, file: !1444, line: 105, baseType: !1409, size: 64, offset: 1152)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1443, file: !1444, line: 107, baseType: !1512, size: 64, offset: 1216)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1514)
!1514 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1444, line: 107, flags: DIFlagFwdDecl)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1443, file: !1444, line: 109, baseType: !745, size: 8, offset: 1280)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1375, file: !1376, line: 715, baseType: !1455, size: 64, offset: 832)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1375, file: !1376, line: 717, baseType: !89, size: 64, offset: 896)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1375, file: !1376, line: 719, baseType: !89, size: 64, offset: 960)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1375, file: !1376, line: 721, baseType: !541, size: 256, offset: 1024)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1375, file: !1376, line: 725, baseType: !1521, size: 448, offset: 1280)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !1376, line: 517, size: 448, elements: !1522)
!1522 = !{!1523, !1524, !1525, !1526}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1521, file: !1376, line: 518, baseType: !162, size: 128)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1521, file: !1376, line: 519, baseType: !162, size: 128, offset: 128)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1521, file: !1376, line: 520, baseType: !162, size: 128, offset: 256)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1521, file: !1376, line: 521, baseType: !1527, size: 32, offset: 384)
!1527 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !1376, line: 487, baseType: !87, size: 32, elements: !1528)
!1528 = !{!1529, !1530, !1531, !1532}
!1529 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!1530 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!1531 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!1532 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1375, file: !1376, line: 726, baseType: !1534, size: 2496, offset: 1728)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !1412, line: 663, size: 2496, elements: !1535)
!1535 = !{!1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1580, !1581, !1582, !1583, !1584, !1585, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1691, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1712, !1716}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1534, file: !1412, line: 664, baseType: !1486, size: 32)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1534, file: !1412, line: 665, baseType: !87, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1534, file: !1412, line: 666, baseType: !87, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1534, file: !1412, line: 667, baseType: !745, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1534, file: !1412, line: 668, baseType: !745, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1534, file: !1412, line: 669, baseType: !745, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1534, file: !1412, line: 670, baseType: !745, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1534, file: !1412, line: 671, baseType: !745, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1534, file: !1412, line: 672, baseType: !745, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1534, file: !1412, line: 673, baseType: !745, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1534, file: !1412, line: 674, baseType: !745, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1534, file: !1412, line: 675, baseType: !251, size: 32, offset: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1534, file: !1412, line: 676, baseType: !46, size: 32, offset: 96)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1534, file: !1412, line: 678, baseType: !162, size: 128, offset: 128)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1534, file: !1412, line: 679, baseType: !1326, size: 256, offset: 256)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1534, file: !1412, line: 680, baseType: !1552, size: 64, offset: 512)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1554, line: 43, size: 1536, elements: !1555)
!1554 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1555 = !{!1556, !1557, !1558, !1559, !1560, !1563, !1564, !1565, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1553, file: !1554, line: 44, baseType: !294, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1553, file: !1554, line: 45, baseType: !12, size: 32, offset: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1553, file: !1554, line: 46, baseType: !162, size: 128, offset: 128)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1553, file: !1554, line: 47, baseType: !46, size: 32, offset: 256)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1553, file: !1554, line: 48, baseType: !1561, size: 64, offset: 320)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !1412, line: 629, flags: DIFlagFwdDecl)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1553, file: !1554, line: 49, baseType: !1042, size: 320, offset: 384)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1553, file: !1554, line: 50, baseType: !151, size: 64, offset: 704)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1553, file: !1554, line: 51, baseType: !1566, size: 64, offset: 768)
!1566 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1567, line: 29, baseType: !538)
!1567 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1553, file: !1554, line: 52, baseType: !1566, size: 64, offset: 832)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1553, file: !1554, line: 53, baseType: !1566, size: 64, offset: 896)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1553, file: !1554, line: 54, baseType: !1566, size: 64, offset: 960)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1553, file: !1554, line: 55, baseType: !1566, size: 64, offset: 1024)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1553, file: !1554, line: 56, baseType: !151, size: 64, offset: 1088)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1553, file: !1554, line: 57, baseType: !151, size: 64, offset: 1152)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1553, file: !1554, line: 58, baseType: !151, size: 64, offset: 1216)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1553, file: !1554, line: 59, baseType: !151, size: 64, offset: 1280)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1553, file: !1554, line: 60, baseType: !151, size: 64, offset: 1344)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1553, file: !1554, line: 61, baseType: !1374, size: 64, offset: 1408)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1553, file: !1554, line: 62, baseType: !745, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1553, file: !1554, line: 63, baseType: !745, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1534, file: !1412, line: 681, baseType: !745, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1534, file: !1412, line: 682, baseType: !745, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1534, file: !1412, line: 683, baseType: !745, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1534, file: !1412, line: 684, baseType: !87, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1534, file: !1412, line: 685, baseType: !87, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1534, file: !1412, line: 690, baseType: !1586, size: 512, offset: 640)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !1587, line: 118, size: 512, elements: !1588)
!1587 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!1588 = !{!1589, !1595, !1596, !1605, !1660, !1661, !1662, !1663}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1586, file: !1587, line: 119, baseType: !1590, size: 256)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1591, line: 9, size: 256, elements: !1592)
!1591 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1592 = !{!1593, !1594}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1590, file: !1591, line: 10, baseType: !678, size: 192, align: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1590, file: !1591, line: 11, baseType: !1566, size: 64, offset: 192)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1586, file: !1587, line: 120, baseType: !1566, size: 64, offset: 256)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1586, file: !1587, line: 121, baseType: !1597, size: 64, offset: 320)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!1600, !1604}
!1600 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !1587, line: 65, baseType: !87, size: 32, elements: !1601)
!1601 = !{!1602, !1603}
!1602 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!1603 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1586, file: !1587, line: 122, baseType: !1606, size: 64, offset: 384)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !1587, line: 159, size: 512, align: 512, elements: !1608)
!1608 = !{!1609, !1634, !1635, !1638, !1643, !1644, !1655, !1659}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1607, file: !1587, line: 160, baseType: !1610, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !1587, line: 215, size: 4608, align: 512, elements: !1612)
!1612 = !{!1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1611, file: !1587, line: 216, baseType: !546, size: 32)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1611, file: !1587, line: 217, baseType: !87, size: 32, offset: 32)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1611, file: !1587, line: 218, baseType: !87, size: 32, offset: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1611, file: !1587, line: 219, baseType: !87, size: 32, offset: 96)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1611, file: !1587, line: 220, baseType: !87, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1611, file: !1587, line: 221, baseType: !87, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1611, file: !1587, line: 222, baseType: !87, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1611, file: !1587, line: 223, baseType: !87, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1611, file: !1587, line: 224, baseType: !87, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1611, file: !1587, line: 226, baseType: !87, size: 32, offset: 160)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1611, file: !1587, line: 227, baseType: !39, size: 16, offset: 192)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1611, file: !1587, line: 228, baseType: !39, size: 16, offset: 208)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1611, file: !1587, line: 229, baseType: !87, size: 32, offset: 224)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1611, file: !1587, line: 235, baseType: !1566, size: 64, offset: 256)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1611, file: !1587, line: 236, baseType: !1604, size: 64, offset: 320)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1611, file: !1587, line: 237, baseType: !1566, size: 64, offset: 384)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1611, file: !1587, line: 238, baseType: !1604, size: 64, offset: 448)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1611, file: !1587, line: 239, baseType: !1631, size: 4096, align: 512, offset: 512)
!1631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1607, size: 4096, align: 512, elements: !1632)
!1632 = !{!1633}
!1633 = !DISubrange(count: 8)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1607, file: !1587, line: 161, baseType: !87, size: 32, offset: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1607, file: !1587, line: 162, baseType: !1636, size: 32, offset: 96)
!1636 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !19, line: 32, baseType: !1637)
!1637 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !194, line: 96, baseType: !12)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1607, file: !1587, line: 163, baseType: !1639, size: 32, offset: 128)
!1639 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !224, line: 274, baseType: !1640)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !224, line: 274, size: 32, elements: !1641)
!1641 = !{!1642}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1640, file: !224, line: 274, baseType: !228, size: 32)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1607, file: !1587, line: 164, baseType: !1604, size: 64, offset: 192)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1607, file: !1587, line: 165, baseType: !1645, size: 128, offset: 256)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1591, line: 14, size: 128, elements: !1646)
!1646 = !{!1647}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1645, file: !1591, line: 15, baseType: !1648, size: 128)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !679, line: 26, size: 128, elements: !1649)
!1649 = !{!1650, !1654}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1648, file: !679, line: 27, baseType: !1651, size: 64)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !679, line: 12, size: 64, elements: !1652)
!1652 = !{!1653}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1651, file: !679, line: 13, baseType: !683, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1648, file: !679, line: 28, baseType: !683, size: 64, offset: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1607, file: !1587, line: 166, baseType: !1656, size: 64, offset: 384)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{!1566}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1607, file: !1587, line: 167, baseType: !1566, size: 64, offset: 448)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1586, file: !1587, line: 123, baseType: !74, size: 8, offset: 448)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1586, file: !1587, line: 124, baseType: !74, size: 8, offset: 456)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1586, file: !1587, line: 125, baseType: !74, size: 8, offset: 464)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1586, file: !1587, line: 126, baseType: !74, size: 8, offset: 472)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1534, file: !1412, line: 691, baseType: !20, size: 64, offset: 1152)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1534, file: !1412, line: 692, baseType: !1031, size: 256, offset: 1216)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1534, file: !1412, line: 693, baseType: !607, size: 192, offset: 1472)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1534, file: !1412, line: 694, baseType: !1561, size: 64, offset: 1664)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1534, file: !1412, line: 695, baseType: !66, size: 32, offset: 1728)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1534, file: !1412, line: 696, baseType: !66, size: 32, offset: 1760)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1534, file: !1412, line: 697, baseType: !87, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1534, file: !1412, line: 698, baseType: !87, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1534, file: !1412, line: 699, baseType: !87, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1534, file: !1412, line: 700, baseType: !87, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1534, file: !1412, line: 701, baseType: !87, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1534, file: !1412, line: 702, baseType: !87, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1534, file: !1412, line: 703, baseType: !745, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1534, file: !1412, line: 704, baseType: !87, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1534, file: !1412, line: 705, baseType: !87, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1534, file: !1412, line: 706, baseType: !87, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1534, file: !1412, line: 707, baseType: !87, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1534, file: !1412, line: 708, baseType: !87, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1534, file: !1412, line: 709, baseType: !87, size: 32, offset: 1824)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1534, file: !1412, line: 710, baseType: !1684, size: 32, offset: 1856)
!1684 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !1412, line: 620, baseType: !87, size: 32, elements: !1685)
!1685 = !{!1686, !1687, !1688, !1689, !1690}
!1686 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!1687 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!1688 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!1689 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!1690 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1534, file: !1412, line: 711, baseType: !1692, size: 32, offset: 1888)
!1692 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !1412, line: 597, baseType: !12, size: 32, elements: !1693)
!1693 = !{!1694, !1695, !1696, !1697, !1698}
!1694 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!1695 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!1696 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!1697 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!1698 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1534, file: !1412, line: 712, baseType: !1692, size: 32, offset: 1920)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1534, file: !1412, line: 713, baseType: !12, size: 32, offset: 1952)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1534, file: !1412, line: 714, baseType: !12, size: 32, offset: 1984)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1534, file: !1412, line: 715, baseType: !20, size: 64, offset: 2048)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1534, file: !1412, line: 716, baseType: !20, size: 64, offset: 2112)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1534, file: !1412, line: 717, baseType: !20, size: 64, offset: 2176)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1534, file: !1412, line: 718, baseType: !20, size: 64, offset: 2240)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1534, file: !1412, line: 720, baseType: !1707, size: 64, offset: 2304)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !1412, line: 632, size: 64, elements: !1709)
!1709 = !{!1710, !1711}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1708, file: !1412, line: 633, baseType: !46, size: 32)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1708, file: !1412, line: 634, baseType: !87, size: 32, offset: 32)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1534, file: !1412, line: 721, baseType: !1713, size: 64, offset: 2368)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{null, !1374, !671}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1534, file: !1412, line: 722, baseType: !1717, size: 64, offset: 2432)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !1412, line: 722, flags: DIFlagFwdDecl)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1375, file: !1376, line: 727, baseType: !1720, size: 64, offset: 4224)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !1412, line: 742, size: 1792, elements: !1722)
!1722 = !{!1723, !1724, !1725, !1729, !1730, !1731}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1721, file: !1412, line: 743, baseType: !1411, size: 1472)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1721, file: !1412, line: 744, baseType: !1415, size: 64, offset: 1472)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1721, file: !1412, line: 745, baseType: !1726, size: 64, offset: 1536)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{null, !1374, !745}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1721, file: !1412, line: 746, baseType: !1415, size: 64, offset: 1600)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1721, file: !1412, line: 747, baseType: !1405, size: 64, offset: 1664)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1721, file: !1412, line: 748, baseType: !1405, size: 64, offset: 1728)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !1375, file: !1376, line: 736, baseType: !1733, size: 128, offset: 4288)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !1376, line: 529, size: 128, elements: !1734)
!1734 = !{!1735, !1739}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1733, file: !1376, line: 531, baseType: !1736, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1738, line: 13, flags: DIFlagFwdDecl)
!1738 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1733, file: !1376, line: 532, baseType: !1740, size: 64, offset: 64)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !1376, line: 49, flags: DIFlagFwdDecl)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1375, file: !1376, line: 738, baseType: !1743, size: 64, offset: 4416)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1745)
!1745 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !1376, line: 738, flags: DIFlagFwdDecl)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1375, file: !1376, line: 740, baseType: !1747, size: 64, offset: 4480)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1375, file: !1376, line: 741, baseType: !20, size: 64, offset: 4544)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1375, file: !1376, line: 746, baseType: !20, size: 64, offset: 4608)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1375, file: !1376, line: 747, baseType: !1751, size: 64, offset: 4672)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1753)
!1753 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !1376, line: 747, flags: DIFlagFwdDecl)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1375, file: !1376, line: 749, baseType: !1755, size: 64, offset: 4736)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !1376, line: 428, size: 128, elements: !1757)
!1757 = !{!1758, !1759, !1760}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1756, file: !1376, line: 433, baseType: !87, size: 32)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1756, file: !1376, line: 434, baseType: !87, size: 32, offset: 32)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1756, file: !1376, line: 435, baseType: !151, size: 64, offset: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1375, file: !1376, line: 751, baseType: !162, size: 128, offset: 4800)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !1375, file: !1376, line: 762, baseType: !1763, size: 64, offset: 4928)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !1376, line: 762, flags: DIFlagFwdDecl)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1375, file: !1376, line: 770, baseType: !1766, offset: 4992)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1767, line: 5, elements: !137)
!1767 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1375, file: !1376, line: 772, baseType: !1769, size: 64, offset: 4992)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1771, line: 18, flags: DIFlagFwdDecl)
!1771 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1375, file: !1376, line: 773, baseType: !1773, size: 64, offset: 5056)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1775, line: 41, size: 512, elements: !1776)
!1775 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!1776 = !{!1777, !1778, !1875, !1876, !1877, !1878}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1774, file: !1775, line: 42, baseType: !1773, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1774, file: !1775, line: 43, baseType: !1779, size: 64, offset: 64)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1781)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1775, line: 125, size: 1408, elements: !1782)
!1782 = !{!1783, !1787, !1791, !1797, !1803, !1804, !1809, !1813, !1817, !1822, !1826, !1827, !1831, !1835, !1839, !1850, !1851, !1852, !1853, !1863, !1867, !1871}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1781, file: !1775, line: 126, baseType: !1784, size: 64)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{!1773, !1773}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1781, file: !1775, line: 127, baseType: !1788, size: 64, offset: 64)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DISubroutineType(types: !1790)
!1790 = !{null, !1773}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1781, file: !1775, line: 128, baseType: !1792, size: 64, offset: 128)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!745, !1795}
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1774)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1781, file: !1775, line: 129, baseType: !1798, size: 64, offset: 192)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!1801, !1795, !1395}
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !1781, file: !1775, line: 131, baseType: !1792, size: 64, offset: 256)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !1781, file: !1775, line: 133, baseType: !1805, size: 64, offset: 320)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{!1808, !1795}
!1808 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !1775, line: 132, flags: DIFlagFwdDecl)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1781, file: !1775, line: 134, baseType: !1810, size: 64, offset: 384)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!745, !1795, !294}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1781, file: !1775, line: 136, baseType: !1814, size: 64, offset: 448)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!12, !1795, !294, !87, !89, !474}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1781, file: !1775, line: 141, baseType: !1818, size: 64, offset: 512)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!12, !1795, !294, !1821, !474}
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1781, file: !1775, line: 144, baseType: !1823, size: 64, offset: 576)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{!294, !1795}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1781, file: !1775, line: 145, baseType: !1823, size: 64, offset: 640)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1781, file: !1775, line: 146, baseType: !1828, size: 64, offset: 704)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!1773, !1795}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1781, file: !1775, line: 148, baseType: !1832, size: 64, offset: 768)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!1773, !1795, !1773}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1781, file: !1775, line: 151, baseType: !1836, size: 64, offset: 832)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!1773, !1795, !294}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1781, file: !1775, line: 153, baseType: !1840, size: 64, offset: 896)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{!12, !1795, !294, !294, !87, !87, !1843}
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1775, line: 94, size: 640, elements: !1845)
!1845 = !{!1846, !1847, !1848}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1844, file: !1775, line: 95, baseType: !1773, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1844, file: !1775, line: 96, baseType: !87, size: 32, offset: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1844, file: !1775, line: 97, baseType: !1849, size: 512, offset: 128)
!1849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 512, elements: !1632)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1781, file: !1775, line: 158, baseType: !1832, size: 64, offset: 960)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1781, file: !1775, line: 161, baseType: !1828, size: 64, offset: 1024)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1781, file: !1775, line: 163, baseType: !1784, size: 64, offset: 1088)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1781, file: !1775, line: 164, baseType: !1854, size: 64, offset: 1152)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{!12, !1795, !1857}
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1775, line: 73, size: 128, elements: !1859)
!1859 = !{!1860, !1861, !1862}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1858, file: !1775, line: 74, baseType: !87, size: 32)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1858, file: !1775, line: 75, baseType: !87, size: 32, offset: 32)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1858, file: !1775, line: 76, baseType: !1795, size: 64, offset: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !1781, file: !1775, line: 166, baseType: !1864, size: 64, offset: 1216)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!89, !1773, !12}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !1781, file: !1775, line: 167, baseType: !1868, size: 64, offset: 1280)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!12, !1795, !87}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1781, file: !1775, line: 168, baseType: !1872, size: 64, offset: 1344)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!12, !1773}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1774, file: !1775, line: 44, baseType: !1374, size: 64, offset: 128)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1774, file: !1775, line: 45, baseType: !162, size: 128, offset: 192)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1774, file: !1775, line: 46, baseType: !162, size: 128, offset: 320)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1774, file: !1775, line: 47, baseType: !74, size: 8, offset: 448)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !1375, file: !1376, line: 776, baseType: !12, size: 32, offset: 5120)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1375, file: !1376, line: 778, baseType: !335, size: 32, offset: 5152)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1375, file: !1376, line: 779, baseType: !251, size: 32, offset: 5184)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1375, file: !1376, line: 781, baseType: !46, size: 32, offset: 5216)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1375, file: !1376, line: 782, baseType: !162, size: 128, offset: 5248)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1375, file: !1376, line: 784, baseType: !1885, size: 64, offset: 5376)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1887)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1888, line: 52, size: 768, elements: !1889)
!1888 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1889 = !{!1890, !1891, !1892, !1893, !1894, !1898, !1902, !1903, !1904, !1938, !1942, !1946}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1887, file: !1888, line: 53, baseType: !294, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1887, file: !1888, line: 55, baseType: !478, size: 64, offset: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1887, file: !1888, line: 56, baseType: !478, size: 64, offset: 128)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1887, file: !1888, line: 58, baseType: !1392, size: 64, offset: 192)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1887, file: !1888, line: 59, baseType: !1895, size: 64, offset: 256)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!319, !1395, !1401}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1887, file: !1888, line: 61, baseType: !1899, size: 64, offset: 320)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{null, !1885}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1887, file: !1888, line: 62, baseType: !1405, size: 64, offset: 384)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1887, file: !1888, line: 64, baseType: !1415, size: 64, offset: 448)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1887, file: !1888, line: 66, baseType: !1905, size: 64, offset: 512)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1907)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !1908, line: 39, size: 384, elements: !1909)
!1908 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!1909 = !{!1910, !1916, !1920, !1924, !1930, !1934}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1907, file: !1908, line: 40, baseType: !1911, size: 32)
!1911 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !1908, line: 26, baseType: !87, size: 32, elements: !1912)
!1912 = !{!1913, !1914, !1915}
!1913 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!1914 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!1915 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1907, file: !1908, line: 41, baseType: !1917, size: 64, offset: 64)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{!745}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1907, file: !1908, line: 42, baseType: !1921, size: 64, offset: 128)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!89}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1907, file: !1908, line: 43, baseType: !1925, size: 64, offset: 192)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!1801, !1928}
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !1908, line: 19, flags: DIFlagFwdDecl)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1907, file: !1908, line: 44, baseType: !1931, size: 64, offset: 256)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!1801}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1907, file: !1908, line: 45, baseType: !1935, size: 64, offset: 320)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{null, !89}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1887, file: !1888, line: 67, baseType: !1939, size: 64, offset: 576)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!1801, !1395}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1887, file: !1888, line: 69, baseType: !1943, size: 64, offset: 640)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{null, !1395, !1402, !1403}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1887, file: !1888, line: 71, baseType: !1409, size: 64, offset: 704)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1375, file: !1376, line: 785, baseType: !478, size: 64, offset: 5440)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1375, file: !1376, line: 787, baseType: !1405, size: 64, offset: 5504)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1375, file: !1376, line: 788, baseType: !1950, size: 64, offset: 5568)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !1376, line: 46, flags: DIFlagFwdDecl)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1375, file: !1376, line: 789, baseType: !1953, size: 64, offset: 5632)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !1376, line: 48, flags: DIFlagFwdDecl)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !1375, file: !1376, line: 791, baseType: !1956, size: 64, offset: 5696)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !1376, line: 597, size: 128, elements: !1958)
!1958 = !{!1959, !1969, !1975, !1981, !1982}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1957, file: !1376, line: 598, baseType: !1960, size: 32)
!1960 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !1376, line: 547, baseType: !87, size: 32, elements: !1961)
!1961 = !{!1962, !1963, !1964, !1965, !1966, !1967, !1968}
!1962 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!1963 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!1964 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!1965 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!1966 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!1967 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!1968 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1957, file: !1376, line: 599, baseType: !1970, size: 32, offset: 32)
!1970 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !1376, line: 564, baseType: !87, size: 32, elements: !1971)
!1971 = !{!1972, !1973, !1974}
!1972 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!1973 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!1974 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1957, file: !1376, line: 600, baseType: !1976, size: 32, offset: 64)
!1976 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !1376, line: 577, baseType: !87, size: 32, elements: !1977)
!1977 = !{!1978, !1979, !1980}
!1978 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!1979 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!1980 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1957, file: !1376, line: 601, baseType: !745, size: 8, offset: 96)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1957, file: !1376, line: 602, baseType: !745, size: 8, offset: 104)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !1375, file: !1376, line: 793, baseType: !1984, size: 32, offset: 5760)
!1984 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !1376, line: 503, baseType: !87, size: 32, elements: !1985)
!1985 = !{!1986, !1987, !1988, !1989}
!1986 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!1987 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!1988 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!1989 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1375, file: !1376, line: 795, baseType: !745, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1375, file: !1376, line: 796, baseType: !745, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1375, file: !1376, line: 797, baseType: !745, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1375, file: !1376, line: 798, baseType: !745, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !1375, file: !1376, line: 799, baseType: !745, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_status", scope: !974, file: !29, line: 451, baseType: !1692, size: 32, offset: 1536)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "nr_requests", scope: !974, file: !29, line: 457, baseType: !151, size: 64, offset: 1600)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pad_mask", scope: !974, file: !29, line: 459, baseType: !87, size: 32, offset: 1664)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "rq_timeout", scope: !974, file: !29, line: 466, baseType: !87, size: 32, offset: 1696)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !974, file: !29, line: 468, baseType: !1042, size: 320, offset: 1728)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_work", scope: !974, file: !29, line: 469, baseType: !1031, size: 256, offset: 2048)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active_requests_shared_tags", scope: !974, file: !29, line: 471, baseType: !66, size: 32, offset: 2304)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "sched_shared_tags", scope: !974, file: !29, line: 473, baseType: !1130, size: 64, offset: 2368)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !974, file: !29, line: 475, baseType: !162, size: 128, offset: 2432)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_pols", scope: !974, file: !29, line: 477, baseType: !1064, size: 64, offset: 2560)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "root_blkg", scope: !974, file: !29, line: 478, baseType: !128, size: 64, offset: 2624)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "blkg_list", scope: !974, file: !29, line: 479, baseType: !162, size: 128, offset: 2688)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_mutex", scope: !974, file: !29, line: 480, baseType: !541, size: 256, offset: 2816)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !974, file: !29, line: 483, baseType: !2009, size: 960, offset: 3072)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_limits", file: !29, line: 300, size: 960, elements: !2010)
!2010 = !{!2011, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2049}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "bounce", scope: !2009, file: !29, line: 301, baseType: !2012, size: 32)
!2012 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_bounce", file: !29, line: 295, baseType: !87, size: 32, elements: !2013)
!2013 = !{!2014, !2015}
!2014 = !DIEnumerator(name: "BLK_BOUNCE_NONE", value: 0)
!2015 = !DIEnumerator(name: "BLK_BOUNCE_HIGH", value: 1)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "seg_boundary_mask", scope: !2009, file: !29, line: 302, baseType: !151, size: 64, offset: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !2009, file: !29, line: 303, baseType: !151, size: 64, offset: 128)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_sectors", scope: !2009, file: !29, line: 305, baseType: !87, size: 32, offset: 192)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "max_dev_sectors", scope: !2009, file: !29, line: 306, baseType: !87, size: 32, offset: 224)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_sectors", scope: !2009, file: !29, line: 307, baseType: !87, size: 32, offset: 256)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !2009, file: !29, line: 308, baseType: !87, size: 32, offset: 288)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "max_user_sectors", scope: !2009, file: !29, line: 309, baseType: !87, size: 32, offset: 320)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2009, file: !29, line: 310, baseType: !87, size: 32, offset: 352)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "physical_block_size", scope: !2009, file: !29, line: 311, baseType: !87, size: 32, offset: 384)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "logical_block_size", scope: !2009, file: !29, line: 312, baseType: !87, size: 32, offset: 416)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_offset", scope: !2009, file: !29, line: 313, baseType: !87, size: 32, offset: 448)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "io_min", scope: !2009, file: !29, line: 314, baseType: !87, size: 32, offset: 480)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "io_opt", scope: !2009, file: !29, line: 315, baseType: !87, size: 32, offset: 512)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_sectors", scope: !2009, file: !29, line: 316, baseType: !87, size: 32, offset: 544)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_discard_sectors", scope: !2009, file: !29, line: 317, baseType: !87, size: 32, offset: 576)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "max_secure_erase_sectors", scope: !2009, file: !29, line: 318, baseType: !87, size: 32, offset: 608)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_zeroes_sectors", scope: !2009, file: !29, line: 319, baseType: !87, size: 32, offset: 640)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "max_zone_append_sectors", scope: !2009, file: !29, line: 320, baseType: !87, size: 32, offset: 672)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "discard_granularity", scope: !2009, file: !29, line: 321, baseType: !87, size: 32, offset: 704)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "discard_alignment", scope: !2009, file: !29, line: 322, baseType: !87, size: 32, offset: 736)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "zone_write_granularity", scope: !2009, file: !29, line: 323, baseType: !87, size: 32, offset: 768)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "max_segments", scope: !2009, file: !29, line: 325, baseType: !39, size: 16, offset: 800)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "max_integrity_segments", scope: !2009, file: !29, line: 326, baseType: !39, size: 16, offset: 816)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_segments", scope: !2009, file: !29, line: 327, baseType: !39, size: 16, offset: 832)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "misaligned", scope: !2009, file: !29, line: 329, baseType: !76, size: 8, offset: 848)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "discard_misaligned", scope: !2009, file: !29, line: 330, baseType: !76, size: 8, offset: 856)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "raid_partial_stripes_expensive", scope: !2009, file: !29, line: 331, baseType: !76, size: 8, offset: 864)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "zoned", scope: !2009, file: !29, line: 332, baseType: !2044, size: 32, offset: 896)
!2044 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_zoned_model", file: !29, line: 285, baseType: !87, size: 32, elements: !2045)
!2045 = !{!2046, !2047, !2048}
!2046 = !DIEnumerator(name: "BLK_ZONED_NONE", value: 0)
!2047 = !DIEnumerator(name: "BLK_ZONED_HA", value: 1)
!2048 = !DIEnumerator(name: "BLK_ZONED_HM", value: 2)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alignment", scope: !2009, file: !29, line: 339, baseType: !87, size: 32, offset: 928)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "required_elevator_features", scope: !974, file: !29, line: 485, baseType: !87, size: 32, offset: 4032)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !974, file: !29, line: 487, baseType: !12, size: 32, offset: 4064)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "blk_trace", scope: !974, file: !29, line: 489, baseType: !2053, size: 64, offset: 4096)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_trace", file: !29, line: 31, flags: DIFlagFwdDecl)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !974, file: !29, line: 494, baseType: !1073, size: 64, offset: 4160)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "flush_list", scope: !974, file: !29, line: 495, baseType: !162, size: 128, offset: 4224)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_list", scope: !974, file: !29, line: 497, baseType: !162, size: 128, offset: 4352)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_lock", scope: !974, file: !29, line: 498, baseType: !46, size: 32, offset: 4480)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_work", scope: !974, file: !29, line: 499, baseType: !1027, size: 704, offset: 4544)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !974, file: !29, line: 501, baseType: !541, size: 256, offset: 5248)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_dir_lock", scope: !974, file: !29, line: 502, baseType: !541, size: 256, offset: 5504)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_list", scope: !974, file: !29, line: 508, baseType: !162, size: 128, offset: 5760)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_lock", scope: !974, file: !29, line: 509, baseType: !46, size: 32, offset: 5888)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_depth", scope: !974, file: !29, line: 511, baseType: !12, size: 32, offset: 5920)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !974, file: !29, line: 517, baseType: !519, size: 128, align: 64, offset: 5952)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_wq", scope: !974, file: !29, line: 518, baseType: !607, size: 192, offset: 6080)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_lock", scope: !974, file: !29, line: 523, baseType: !541, size: 256, offset: 6272)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "quiesce_depth", scope: !974, file: !29, line: 525, baseType: !12, size: 32, offset: 6528)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set", scope: !974, file: !29, line: 527, baseType: !1226, size: 64, offset: 6592)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set_list", scope: !974, file: !29, line: 528, baseType: !162, size: 128, offset: 6656)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !974, file: !29, line: 530, baseType: !217, size: 64, offset: 6784)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "sched_debugfs_dir", scope: !974, file: !29, line: 531, baseType: !217, size: 64, offset: 6848)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "rqos_debugfs_dir", scope: !974, file: !29, line: 532, baseType: !217, size: 64, offset: 6912)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !974, file: !29, line: 536, baseType: !541, size: 256, offset: 6976)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "mq_sysfs_init_done", scope: !974, file: !29, line: 538, baseType: !745, size: 8, offset: 7232)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ctx", scope: !969, file: !970, line: 82, baseType: !1107, size: 64, offset: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "mq_hctx", scope: !969, file: !970, line: 83, baseType: !1017, size: 64, offset: 128)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !969, file: !970, line: 85, baseType: !106, size: 32, offset: 192)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "rq_flags", scope: !969, file: !970, line: 86, baseType: !2080, size: 32, offset: 224)
!2080 = !DIDerivedType(tag: DW_TAG_typedef, name: "req_flags_t", file: !970, line: 27, baseType: !107)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !969, file: !970, line: 88, baseType: !12, size: 32, offset: 256)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "internal_tag", scope: !969, file: !970, line: 89, baseType: !12, size: 32, offset: 288)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !969, file: !970, line: 91, baseType: !87, size: 32, offset: 320)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "__data_len", scope: !969, file: !970, line: 94, baseType: !87, size: 32, offset: 352)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "__sector", scope: !969, file: !970, line: 95, baseType: !18, size: 64, offset: 384)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "bio", scope: !969, file: !970, line: 97, baseType: !100, size: 64, offset: 448)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "biotail", scope: !969, file: !970, line: 98, baseType: !100, size: 64, offset: 512)
!2088 = !DIDerivedType(tag: DW_TAG_member, scope: !969, file: !970, line: 100, baseType: !2089, size: 128, offset: 576)
!2089 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !969, file: !970, line: 100, size: 128, elements: !2090)
!2090 = !{!2091, !2092}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "queuelist", scope: !2089, file: !970, line: 101, baseType: !162, size: 128)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "rq_next", scope: !2089, file: !970, line: 102, baseType: !968, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !969, file: !970, line: 105, baseType: !13, size: 64, offset: 704)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_time_ns", scope: !969, file: !970, line: 108, baseType: !20, size: 64, offset: 768)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "start_time_ns", scope: !969, file: !970, line: 111, baseType: !20, size: 64, offset: 832)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "io_start_time_ns", scope: !969, file: !970, line: 113, baseType: !20, size: 64, offset: 896)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "stats_sectors", scope: !969, file: !970, line: 123, baseType: !39, size: 16, offset: 960)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "nr_phys_segments", scope: !969, file: !970, line: 129, baseType: !39, size: 16, offset: 976)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !969, file: !970, line: 140, baseType: !39, size: 16, offset: 992)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !969, file: !970, line: 142, baseType: !2101, size: 32, offset: 1024)
!2101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mq_rq_state", file: !970, line: 68, baseType: !87, size: 32, elements: !2102)
!2102 = !{!2103, !2104, !2105}
!2103 = !DIEnumerator(name: "MQ_RQ_IDLE", value: 0)
!2104 = !DIEnumerator(name: "MQ_RQ_IN_FLIGHT", value: 1)
!2105 = !DIEnumerator(name: "MQ_RQ_COMPLETE", value: 2)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !969, file: !970, line: 143, baseType: !66, size: 32, offset: 1056)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !969, file: !970, line: 145, baseType: !151, size: 64, offset: 1088)
!2108 = !DIDerivedType(tag: DW_TAG_member, scope: !969, file: !970, line: 154, baseType: !2109, size: 128, offset: 1152)
!2109 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !969, file: !970, line: 154, size: 128, elements: !2110)
!2110 = !{!2111, !2112}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2109, file: !970, line: 155, baseType: !598, size: 128)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_list", scope: !2109, file: !970, line: 156, baseType: !513, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, scope: !969, file: !970, line: 165, baseType: !2114, size: 192, offset: 1280)
!2114 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !969, file: !970, line: 165, size: 192, elements: !2115)
!2115 = !{!2116, !2117}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2114, file: !970, line: 166, baseType: !678, size: 192, align: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "special_vec", scope: !2114, file: !970, line: 167, baseType: !143, size: 128)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "elv", scope: !969, file: !970, line: 177, baseType: !2119, size: 192, offset: 1472)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !969, file: !970, line: 174, size: 192, elements: !2120)
!2120 = !{!2121, !2148}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "icq", scope: !2119, file: !970, line: 175, baseType: !2122, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2124, line: 73, size: 448, elements: !2125)
!2124 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2125 = !{!2126, !2127, !2134, !2142, !2147}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2123, file: !2124, line: 74, baseType: !973, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2123, file: !2124, line: 75, baseType: !2128, size: 64, offset: 64)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2124, line: 99, size: 128, elements: !2130)
!2130 = !{!2131, !2132, !2133}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2129, file: !2124, line: 100, baseType: !532, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2129, file: !2124, line: 101, baseType: !66, size: 32, offset: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2129, file: !2124, line: 103, baseType: !39, size: 16, offset: 96)
!2134 = !DIDerivedType(tag: DW_TAG_member, scope: !2123, file: !2124, line: 83, baseType: !2135, size: 128, offset: 128)
!2135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2123, file: !2124, line: 83, size: 128, elements: !2136)
!2136 = !{!2137, !2138}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2135, file: !2124, line: 84, baseType: !162, size: 128)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2135, file: !2124, line: 85, baseType: !2139, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2141, line: 11, flags: DIFlagFwdDecl)
!2141 = !DIFile(filename: "./include/linux/mempool.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ef8a210e9c9e696cc7d6e9be9316611")
!2142 = !DIDerivedType(tag: DW_TAG_member, scope: !2123, file: !2124, line: 87, baseType: !2143, size: 128, offset: 256)
!2143 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2123, file: !2124, line: 87, size: 128, elements: !2144)
!2144 = !{!2145, !2146}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2143, file: !2124, line: 88, baseType: !598, size: 128)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2143, file: !2124, line: 89, baseType: !519, size: 128, align: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2123, file: !2124, line: 92, baseType: !87, size: 32, offset: 384)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2119, file: !970, line: 176, baseType: !2149, size: 128, offset: 64)
!2149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 128, elements: !1084)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !969, file: !970, line: 182, baseType: !2151, size: 128, offset: 1664)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !969, file: !970, line: 179, size: 128, elements: !2152)
!2152 = !{!2153, !2154}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2151, file: !970, line: 180, baseType: !87, size: 32)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "saved_end_io", scope: !2151, file: !970, line: 181, baseType: !2155, size: 64, offset: 64)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_typedef, name: "rq_end_io_fn", file: !970, line: 23, baseType: !2157)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!2159, !968, !111}
!2159 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rq_end_io_ret", file: !970, line: 18, baseType: !87, size: 32, elements: !2160)
!2160 = !{!2161, !2162}
!2161 = !DIEnumerator(name: "RQ_END_IO_NONE", value: 0)
!2162 = !DIEnumerator(name: "RQ_END_IO_FREE", value: 1)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_time", scope: !969, file: !970, line: 184, baseType: !20, size: 64, offset: 1792)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "end_io", scope: !969, file: !970, line: 189, baseType: !2155, size: 64, offset: 1856)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "end_io_data", scope: !969, file: !970, line: 190, baseType: !89, size: 64, offset: 1920)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "need_ts", scope: !965, file: !29, line: 1561, baseType: !745, size: 8, offset: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !965, file: !29, line: 1562, baseType: !2168, size: 64, offset: 128)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{null, !964}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !866, file: !177, line: 1923, baseType: !2172, size: 64, offset: 448)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!12, !506, !2175}
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !177, line: 1858, size: 128, elements: !2177)
!2177 = !{!2178, !2183}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2176, file: !177, line: 1859, baseType: !2179, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !177, line: 1855, baseType: !2180)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{!745, !2175, !294, !12, !340, !20, !87}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2176, file: !177, line: 1860, baseType: !340, size: 64, offset: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !866, file: !177, line: 1924, baseType: !2185, size: 64, offset: 512)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!2188, !506, !2190}
!2188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2189, line: 59, baseType: !87)
!2189 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !355, line: 31, flags: DIFlagFwdDecl)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !866, file: !177, line: 1925, baseType: !2193, size: 64, offset: 576)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{!464, !506, !87, !151}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !866, file: !177, line: 1926, baseType: !2193, size: 64, offset: 640)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !866, file: !177, line: 1927, baseType: !2198, size: 64, offset: 704)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!12, !506, !2201}
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !148, line: 625, size: 1344, elements: !2203)
!2203 = !{!2204, !2213, !2369, !2375, !2382, !2383, !2388, !2389, !2394, !2395, !2398, !2521, !2522, !2523, !2524, !2525, !2526}
!2204 = !DIDerivedType(tag: DW_TAG_member, scope: !2202, file: !148, line: 628, baseType: !2205, size: 128)
!2205 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2202, file: !148, line: 628, size: 128, elements: !2206)
!2206 = !{!2207, !2212}
!2207 = !DIDerivedType(tag: DW_TAG_member, scope: !2205, file: !148, line: 629, baseType: !2208, size: 128)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2205, file: !148, line: 629, size: 128, elements: !2209)
!2209 = !{!2210, !2211}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2208, file: !148, line: 631, baseType: !151, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2208, file: !148, line: 632, baseType: !151, size: 64, offset: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2205, file: !148, line: 635, baseType: !519, size: 128, align: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2202, file: !148, line: 639, baseType: !2214, size: 64, offset: 128)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !148, line: 733, size: 10240, elements: !2216)
!2216 = !{!2217, !2367}
!2217 = !DIDerivedType(tag: DW_TAG_member, scope: !2215, file: !148, line: 734, baseType: !2218, size: 10240)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2215, file: !148, line: 734, size: 10240, elements: !2219)
!2219 = !{!2220, !2224, !2237, !2241, !2242, !2243, !2244, !2245, !2246, !2255, !2256, !2257, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2296, !2298, !2301, !2346, !2347, !2348, !2351, !2352, !2353, !2356, !2357, !2358, !2365, !2366}
!2220 = !DIDerivedType(tag: DW_TAG_member, scope: !2218, file: !148, line: 739, baseType: !2221, size: 512, align: 512)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2218, file: !148, line: 739, size: 512, align: 512, elements: !2222)
!2222 = !{!2223}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !2221, file: !148, line: 747, baseType: !66, size: 32)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !2218, file: !148, line: 750, baseType: !2225, size: 128, offset: 512)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !2226, line: 218, size: 128, elements: !2227)
!2226 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!2227 = !{!2228, !2235, !2236}
!2228 = !DIDerivedType(tag: DW_TAG_member, scope: !2225, file: !2226, line: 219, baseType: !2229, size: 32)
!2229 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2225, file: !2226, line: 219, size: 32, elements: !2230)
!2230 = !{!2231, !2232}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !2229, file: !2226, line: 220, baseType: !46, size: 32)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !2229, file: !2226, line: 221, baseType: !2233)
!2233 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !2226, line: 197, baseType: !2234)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2226, line: 197, elements: !137)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !2225, file: !2226, line: 223, baseType: !87, size: 32, offset: 32)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !2225, file: !2226, line: 224, baseType: !89, size: 64, offset: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2218, file: !148, line: 752, baseType: !2238, size: 64, offset: 640)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!151, !506, !151, !151, !151, !151}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !2218, file: !148, line: 756, baseType: !151, size: 64, offset: 704)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !2218, file: !148, line: 757, baseType: !151, size: 64, offset: 768)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !2218, file: !148, line: 760, baseType: !151, size: 64, offset: 832)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !2218, file: !148, line: 761, baseType: !151, size: 64, offset: 896)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !2218, file: !148, line: 763, baseType: !151, size: 64, offset: 960)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2218, file: !148, line: 764, baseType: !2247, size: 64, offset: 1024)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2249, line: 299, baseType: !2250)
!2249 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2250 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2249, line: 299, size: 64, elements: !2251)
!2251 = !{!2252}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2250, file: !2249, line: 299, baseType: !2253, size: 64)
!2253 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2254, line: 18, baseType: !151)
!2254 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !2218, file: !148, line: 773, baseType: !66, size: 32, offset: 1088)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !2218, file: !148, line: 785, baseType: !66, size: 32, offset: 1120)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !2218, file: !148, line: 795, baseType: !2258, size: 64, offset: 1152)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !148, line: 726, size: 128, elements: !2260)
!2260 = !{!2261, !2262}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2259, file: !148, line: 727, baseType: !20, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2259, file: !148, line: 728, baseType: !12, size: 32, offset: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !2218, file: !148, line: 801, baseType: !151, size: 64, offset: 1216)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !2218, file: !148, line: 804, baseType: !532, size: 64, offset: 1280)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !2218, file: !148, line: 806, baseType: !12, size: 32, offset: 1344)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !2218, file: !148, line: 808, baseType: !46, size: 32, offset: 1376)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !2218, file: !148, line: 823, baseType: !686, size: 320, offset: 1408)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !2218, file: !148, line: 825, baseType: !162, size: 128, offset: 1728)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !2218, file: !148, line: 845, baseType: !12, size: 32, offset: 1856)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !2218, file: !148, line: 849, baseType: !151, size: 64, offset: 1920)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !2218, file: !148, line: 850, baseType: !151, size: 64, offset: 1984)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !2218, file: !148, line: 852, baseType: !151, size: 64, offset: 2048)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2218, file: !148, line: 853, baseType: !151, size: 64, offset: 2112)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !2218, file: !148, line: 854, baseType: !534, size: 64, offset: 2176)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !2218, file: !148, line: 855, baseType: !151, size: 64, offset: 2240)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !2218, file: !148, line: 856, baseType: !151, size: 64, offset: 2304)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !2218, file: !148, line: 857, baseType: !151, size: 64, offset: 2368)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !2218, file: !148, line: 858, baseType: !151, size: 64, offset: 2432)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !2218, file: !148, line: 865, baseType: !228, size: 32, offset: 2496)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !2218, file: !148, line: 867, baseType: !46, size: 32, offset: 2528)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !2218, file: !148, line: 869, baseType: !151, size: 64, offset: 2560)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !2218, file: !148, line: 869, baseType: !151, size: 64, offset: 2624)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !2218, file: !148, line: 869, baseType: !151, size: 64, offset: 2688)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !2218, file: !148, line: 869, baseType: !151, size: 64, offset: 2752)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !2218, file: !148, line: 870, baseType: !151, size: 64, offset: 2816)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !2218, file: !148, line: 870, baseType: !151, size: 64, offset: 2880)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !2218, file: !148, line: 870, baseType: !151, size: 64, offset: 2944)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !2218, file: !148, line: 871, baseType: !151, size: 64, offset: 3008)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !2218, file: !148, line: 871, baseType: !151, size: 64, offset: 3072)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !2218, file: !148, line: 871, baseType: !151, size: 64, offset: 3136)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !2218, file: !148, line: 871, baseType: !151, size: 64, offset: 3200)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !2218, file: !148, line: 873, baseType: !2293, size: 3328, offset: 3264)
!2293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 3328, elements: !2294)
!2294 = !{!2295}
!2295 = !DISubrange(count: 52)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !2218, file: !148, line: 875, baseType: !2297, size: 1280, offset: 6592)
!2297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !803, size: 1280, elements: !603)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !2218, file: !148, line: 877, baseType: !2299, size: 64, offset: 7872)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !148, line: 877, flags: DIFlagFwdDecl)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2218, file: !148, line: 880, baseType: !2302, size: 1088, offset: 7936)
!2302 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2303, line: 72, baseType: !2304)
!2303 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2304 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2303, line: 23, size: 1088, elements: !2305)
!2305 = !{!2306, !2307, !2308, !2309, !2310, !2313, !2314, !2315, !2316, !2341, !2342, !2343}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2304, file: !2303, line: 28, baseType: !20, size: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2304, file: !2303, line: 38, baseType: !534, size: 64, offset: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2304, file: !2303, line: 40, baseType: !151, size: 64, offset: 128)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2304, file: !2303, line: 43, baseType: !686, size: 320, offset: 192)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2304, file: !2303, line: 44, baseType: !2311, size: 64, offset: 512)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2303, line: 44, flags: DIFlagFwdDecl)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2304, file: !2303, line: 48, baseType: !151, size: 64, offset: 576)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2304, file: !2303, line: 59, baseType: !541, size: 256, offset: 640)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2304, file: !2303, line: 60, baseType: !89, size: 64, offset: 896)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2304, file: !2303, line: 61, baseType: !2317, size: 64, offset: 960)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2319)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2320, line: 13, size: 1216, elements: !2321)
!2320 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2321 = !{!2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2319, file: !2320, line: 14, baseType: !89, size: 64)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2319, file: !2320, line: 15, baseType: !151, size: 64, offset: 64)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2319, file: !2320, line: 17, baseType: !151, size: 64, offset: 128)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2319, file: !2320, line: 17, baseType: !151, size: 64, offset: 192)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2319, file: !2320, line: 18, baseType: !151, size: 64, offset: 256)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2319, file: !2320, line: 18, baseType: !151, size: 64, offset: 320)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2319, file: !2320, line: 19, baseType: !1801, size: 64, offset: 384)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2319, file: !2320, line: 21, baseType: !464, size: 64, offset: 448)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2319, file: !2320, line: 23, baseType: !464, size: 64, offset: 512)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2319, file: !2320, line: 24, baseType: !464, size: 64, offset: 576)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2319, file: !2320, line: 25, baseType: !464, size: 64, offset: 640)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2319, file: !2320, line: 26, baseType: !464, size: 64, offset: 704)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2319, file: !2320, line: 27, baseType: !464, size: 64, offset: 768)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2319, file: !2320, line: 28, baseType: !464, size: 64, offset: 832)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2319, file: !2320, line: 29, baseType: !464, size: 64, offset: 896)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2319, file: !2320, line: 30, baseType: !464, size: 64, offset: 960)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2319, file: !2320, line: 31, baseType: !464, size: 64, offset: 1024)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2319, file: !2320, line: 32, baseType: !464, size: 64, offset: 1088)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2319, file: !2320, line: 33, baseType: !464, size: 64, offset: 1152)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2304, file: !2303, line: 63, baseType: !66, size: 32, offset: 1024)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2304, file: !2303, line: 69, baseType: !82, size: 16, offset: 1056)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2304, file: !2303, line: 70, baseType: !2344, size: 16, offset: 1072)
!2344 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !21, line: 18, baseType: !2345)
!2345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !23, line: 23, baseType: !714)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2218, file: !148, line: 882, baseType: !151, size: 64, offset: 9024)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !2218, file: !148, line: 885, baseType: !46, size: 32, offset: 9088)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !2218, file: !148, line: 886, baseType: !2349, size: 64, offset: 9152)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !148, line: 732, flags: DIFlagFwdDecl)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2218, file: !148, line: 901, baseType: !828, size: 64, offset: 9216)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !2218, file: !148, line: 904, baseType: !506, size: 64, offset: 9280)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !2218, file: !148, line: 906, baseType: !2354, size: 64, offset: 9344)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !148, line: 906, flags: DIFlagFwdDecl)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !2218, file: !148, line: 930, baseType: !66, size: 32, offset: 9408)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !2218, file: !148, line: 933, baseType: !66, size: 32, offset: 9440)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !2218, file: !148, line: 935, baseType: !2359, size: 64, offset: 9472)
!2359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2360, line: 103, size: 64, elements: !2361)
!2360 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!2361 = !{!2362}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2359, file: !2360, line: 104, baseType: !2363, size: 64)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !2360, line: 101, flags: DIFlagFwdDecl)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !2218, file: !148, line: 940, baseType: !532, size: 64, offset: 9536)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !2218, file: !148, line: 942, baseType: !1031, size: 256, offset: 9600)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !2215, file: !148, line: 986, baseType: !2368, offset: 10240)
!2368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, elements: !622)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2202, file: !148, line: 640, baseType: !2370, size: 64, offset: 192)
!2370 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2249, line: 297, baseType: !2371)
!2371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2249, line: 297, size: 64, elements: !2372)
!2372 = !{!2373}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2371, file: !2249, line: 297, baseType: !2374, size: 64)
!2374 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2254, line: 19, baseType: !151)
!2375 = !DIDerivedType(tag: DW_TAG_member, scope: !2202, file: !148, line: 646, baseType: !2376, size: 64, offset: 256)
!2376 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2202, file: !148, line: 646, size: 64, elements: !2377)
!2377 = !{!2378, !2381}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2376, file: !148, line: 647, baseType: !2379, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2380)
!2380 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !148, line: 542, baseType: !151)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2376, file: !148, line: 648, baseType: !2380, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2202, file: !148, line: 666, baseType: !12, size: 32, offset: 320)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2202, file: !148, line: 667, baseType: !2384, size: 64, offset: 384)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !148, line: 579, size: 320, elements: !2386)
!2386 = !{!2387}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2385, file: !148, line: 580, baseType: !686, size: 320)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2202, file: !148, line: 670, baseType: !745, size: 8, offset: 448)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2202, file: !148, line: 681, baseType: !2390, size: 256, offset: 512)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2202, file: !148, line: 678, size: 256, elements: !2391)
!2391 = !{!2392, !2393}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2390, file: !148, line: 679, baseType: !678, size: 192, align: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2390, file: !148, line: 680, baseType: !151, size: 64, offset: 192)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2202, file: !148, line: 689, baseType: !162, size: 128, offset: 768)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2202, file: !148, line: 691, baseType: !2396, size: 64, offset: 896)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !148, line: 691, flags: DIFlagFwdDecl)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2202, file: !148, line: 694, baseType: !2399, size: 64, offset: 960)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2401)
!2401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2402, line: 563, size: 1024, elements: !2403)
!2402 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2403 = !{!2404, !2408, !2409, !2413, !2417, !2421, !2485, !2489, !2493, !2497, !2498, !2499, !2503, !2507, !2513, !2517}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2401, file: !2402, line: 564, baseType: !2405, size: 64)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{null, !2201}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2401, file: !2402, line: 569, baseType: !2405, size: 64, offset: 64)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2401, file: !2402, line: 571, baseType: !2410, size: 64, offset: 128)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!12, !2201, !151}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2401, file: !2402, line: 572, baseType: !2414, size: 64, offset: 192)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!12, !2201}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2401, file: !2402, line: 578, baseType: !2418, size: 64, offset: 256)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!12, !2201, !151, !151, !151}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2401, file: !2402, line: 580, baseType: !2422, size: 64, offset: 320)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!2425, !2426}
!2425 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !148, line: 1184, baseType: !87)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2402, line: 512, size: 896, elements: !2428)
!2428 = !{!2429, !2437, !2453, !2460, !2467, !2477, !2478, !2479, !2481, !2483}
!2429 = !DIDerivedType(tag: DW_TAG_member, scope: !2427, file: !2402, line: 513, baseType: !2430, size: 320)
!2430 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2427, file: !2402, line: 513, size: 320, elements: !2431)
!2431 = !{!2432, !2433, !2434, !2435, !2436}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2430, file: !2402, line: 514, baseType: !2201, size: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2430, file: !2402, line: 515, baseType: !86, size: 32, offset: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2430, file: !2402, line: 516, baseType: !151, size: 64, offset: 128)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2430, file: !2402, line: 517, baseType: !151, size: 64, offset: 192)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2430, file: !2402, line: 518, baseType: !151, size: 64, offset: 256)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2427, file: !2402, line: 520, baseType: !2438, size: 32, offset: 320)
!2438 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !148, line: 1325, baseType: !87, size: 32, elements: !2439)
!2439 = !{!2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452}
!2440 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!2441 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!2442 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!2443 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!2444 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!2445 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!2446 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!2447 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!2448 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!2449 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!2450 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!2451 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!2452 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2427, file: !2402, line: 522, baseType: !2454, size: 64, offset: 384)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2254, line: 22, baseType: !2456)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2254, line: 22, size: 64, elements: !2457)
!2457 = !{!2458}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2456, file: !2254, line: 22, baseType: !2459, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2254, line: 15, baseType: !151)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2427, file: !2402, line: 524, baseType: !2461, size: 64, offset: 448)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2249, line: 372, baseType: !2463)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2249, line: 372, size: 64, elements: !2464)
!2464 = !{!2465}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2463, file: !2249, line: 372, baseType: !2466, size: 64)
!2466 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2254, line: 16, baseType: !151)
!2467 = !DIDerivedType(tag: DW_TAG_member, scope: !2427, file: !2402, line: 527, baseType: !2468, size: 64, offset: 512)
!2468 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2427, file: !2402, line: 527, size: 64, elements: !2469)
!2469 = !{!2470, !2476}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2468, file: !2402, line: 528, baseType: !2471, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2254, line: 21, baseType: !2472)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2254, line: 21, size: 64, elements: !2473)
!2473 = !{!2474}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2472, file: !2254, line: 21, baseType: !2475, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2254, line: 14, baseType: !151)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2468, file: !2402, line: 529, baseType: !2455, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2427, file: !2402, line: 534, baseType: !146, size: 64, offset: 576)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2427, file: !2402, line: 535, baseType: !146, size: 64, offset: 640)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2427, file: !2402, line: 541, baseType: !2480, size: 64, offset: 704)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2427, file: !2402, line: 545, baseType: !2482, size: 64, offset: 768)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2427, file: !2402, line: 549, baseType: !2484, size: 64, offset: 832)
!2484 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2249, line: 520, baseType: !146)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2401, file: !2402, line: 581, baseType: !2486, size: 64, offset: 384)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!2425, !2426, !87}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2401, file: !2402, line: 582, baseType: !2490, size: 64, offset: 448)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{!2425, !2426, !151, !151}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2401, file: !2402, line: 584, baseType: !2494, size: 64, offset: 512)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DISubroutineType(types: !2496)
!2496 = !{!151, !2201}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2401, file: !2402, line: 588, baseType: !2422, size: 64, offset: 576)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2401, file: !2402, line: 591, baseType: !2422, size: 64, offset: 640)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2401, file: !2402, line: 597, baseType: !2500, size: 64, offset: 704)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!12, !2201, !151, !89, !12, !12}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2401, file: !2402, line: 603, baseType: !2504, size: 64, offset: 768)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!294, !2201}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2401, file: !2402, line: 613, baseType: !2508, size: 64, offset: 832)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{!12, !2201, !2511}
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !148, line: 717, flags: DIFlagFwdDecl)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2401, file: !2402, line: 625, baseType: !2514, size: 64, offset: 896)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!2511, !2201, !151}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2401, file: !2402, line: 633, baseType: !2518, size: 64, offset: 960)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!146, !2201, !151}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2202, file: !148, line: 697, baseType: !151, size: 64, offset: 1024)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2202, file: !148, line: 699, baseType: !506, size: 64, offset: 1088)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2202, file: !148, line: 700, baseType: !89, size: 64, offset: 1152)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2202, file: !148, line: 711, baseType: !532, size: 64, offset: 1216)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2202, file: !148, line: 717, baseType: !2511, size: 64, offset: 1280)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2202, file: !148, line: 722, baseType: !2527, offset: 1344)
!2527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !148, line: 570, elements: !137)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !866, file: !177, line: 1928, baseType: !151, size: 64, offset: 768)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !866, file: !177, line: 1929, baseType: !2530, size: 64, offset: 832)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!12, !180, !506}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !866, file: !177, line: 1930, baseType: !2534, size: 64, offset: 896)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!12, !506, !2537}
!2537 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !177, line: 1061, baseType: !89)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !866, file: !177, line: 1931, baseType: !2530, size: 64, offset: 960)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !866, file: !177, line: 1932, baseType: !2540, size: 64, offset: 1024)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!12, !506, !340, !340, !12}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !866, file: !177, line: 1933, baseType: !2544, size: 64, offset: 1088)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!12, !12, !506, !12}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !866, file: !177, line: 1934, baseType: !2548, size: 64, offset: 1152)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!12, !506, !12, !2551}
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !177, line: 1063, flags: DIFlagFwdDecl)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !866, file: !177, line: 1935, baseType: !2238, size: 64, offset: 1216)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !866, file: !177, line: 1936, baseType: !2555, size: 64, offset: 1280)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!12, !12}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !866, file: !177, line: 1937, baseType: !2548, size: 64, offset: 1344)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !866, file: !177, line: 1938, baseType: !2560, size: 64, offset: 1408)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{!461, !2563, !506, !877, !474, !87}
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1360, line: 59, flags: DIFlagFwdDecl)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !866, file: !177, line: 1939, baseType: !2566, size: 64, offset: 1472)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!461, !506, !877, !2563, !474, !87}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !866, file: !177, line: 1940, baseType: !2570, size: 64, offset: 1536)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{null, !506}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !866, file: !177, line: 1941, baseType: !2574, size: 64, offset: 1600)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!12, !506, !12, !2577, !2578}
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !866, file: !177, line: 1942, baseType: !2580, size: 64, offset: 1664)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{!464, !506, !12, !340, !340}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !866, file: !177, line: 1944, baseType: !2584, size: 64, offset: 1728)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DISubroutineType(types: !2586)
!2586 = !{null, !1358, !506}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !866, file: !177, line: 1948, baseType: !2588, size: 64, offset: 1792)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = !DISubroutineType(types: !2590)
!2590 = !{!461, !506, !340, !506, !340, !474, !87}
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !866, file: !177, line: 1950, baseType: !2592, size: 64, offset: 1856)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!340, !506, !340, !506, !340, !340, !87}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !866, file: !177, line: 1953, baseType: !2540, size: 64, offset: 1920)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !866, file: !177, line: 1954, baseType: !2597, size: 64, offset: 1984)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!12, !2600, !87}
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !177, line: 1911, flags: DIFlagFwdDecl)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !866, file: !177, line: 1955, baseType: !2603, size: 64, offset: 2048)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{!12, !2600, !964, !87}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !507, file: !177, line: 1018, baseType: !20, size: 64, offset: 1472)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !507, file: !177, line: 1020, baseType: !89, size: 64, offset: 1536)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !507, file: !177, line: 1023, baseType: !89, size: 64, offset: 1600)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !507, file: !177, line: 1027, baseType: !2610, size: 64, offset: 1664)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !507, file: !177, line: 1029, baseType: !175, size: 64, offset: 1728)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !507, file: !177, line: 1030, baseType: !2613, size: 32, offset: 1792)
!2613 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2614, line: 8, baseType: !251)
!2614 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !507, file: !177, line: 1031, baseType: !2613, size: 32, offset: 1824)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !493, file: !455, line: 182, baseType: !503, size: 64, offset: 384)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !493, file: !455, line: 184, baseType: !2618, size: 64, offset: 448)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!12, !506, !395, !492, !2201}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !481, file: !455, line: 90, baseType: !2622, size: 64, offset: 192)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !481, file: !455, line: 91, baseType: !2624, size: 64, offset: 256)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !445, file: !390, line: 120, baseType: !2626, size: 64, offset: 192)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!1905, !413}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !445, file: !390, line: 121, baseType: !2630, size: 64, offset: 256)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!1801, !413}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !445, file: !390, line: 122, baseType: !2634, size: 64, offset: 320)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = !DISubroutineType(types: !2636)
!2636 = !{null, !413, !1402, !1403}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !389, file: !390, line: 70, baseType: !2638, size: 64, offset: 384)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !355, line: 190, size: 1152, elements: !2640)
!2640 = !{!2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2732, !2733, !2734, !2735, !2736, !2739}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2639, file: !355, line: 191, baseType: !66, size: 32)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2639, file: !355, line: 192, baseType: !66, size: 32, offset: 32)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2639, file: !355, line: 202, baseType: !2638, size: 64, offset: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2639, file: !355, line: 203, baseType: !294, size: 64, offset: 128)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2639, file: !355, line: 205, baseType: !678, size: 192, align: 64, offset: 192)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2639, file: !355, line: 207, baseType: !1801, size: 64, offset: 384)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2639, file: !355, line: 208, baseType: !87, size: 32, offset: 448)
!2648 = !DIDerivedType(tag: DW_TAG_member, scope: !2639, file: !355, line: 209, baseType: !2649, size: 256, offset: 512)
!2649 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2639, file: !355, line: 209, size: 256, elements: !2650)
!2650 = !{!2651, !2660, !2664}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2649, file: !355, line: 210, baseType: !2652, size: 256)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !355, line: 153, size: 256, elements: !2653)
!2653 = !{!2654, !2655, !2656, !2659}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2652, file: !355, line: 154, baseType: !151, size: 64)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2652, file: !355, line: 156, baseType: !1651, size: 64, offset: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2652, file: !355, line: 162, baseType: !2657, size: 64, offset: 128)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !355, line: 162, flags: DIFlagFwdDecl)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2652, file: !355, line: 167, baseType: !151, size: 64, offset: 192)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2649, file: !355, line: 211, baseType: !2661, size: 64)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !355, line: 170, size: 64, elements: !2662)
!2662 = !{!2663}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2661, file: !355, line: 171, baseType: !2638, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2649, file: !355, line: 212, baseType: !2665, size: 256)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !355, line: 174, size: 256, elements: !2666)
!2666 = !{!2667, !2727, !2730, !2731}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2665, file: !355, line: 175, baseType: !2668, size: 64)
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2669, size: 64)
!2669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2670)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !355, line: 271, size: 768, elements: !2671)
!2671 = !{!2672, !2692, !2696, !2700, !2704, !2708, !2712, !2716, !2717, !2718, !2719, !2723}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2670, file: !355, line: 276, baseType: !2673, size: 64)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = !DISubroutineType(types: !2675)
!2675 = !{!12, !2676}
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !355, line: 251, size: 1216, elements: !2678)
!2678 = !{!2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2677, file: !355, line: 253, baseType: !2638, size: 64)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2677, file: !355, line: 254, baseType: !506, size: 64, offset: 64)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2677, file: !355, line: 255, baseType: !1358, size: 64, offset: 128)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2677, file: !355, line: 256, baseType: !89, size: 64, offset: 192)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2677, file: !355, line: 259, baseType: !541, size: 256, offset: 256)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2677, file: !355, line: 260, baseType: !541, size: 256, offset: 512)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2677, file: !355, line: 261, baseType: !12, size: 32, offset: 768)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2677, file: !355, line: 262, baseType: !162, size: 128, offset: 832)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2677, file: !355, line: 263, baseType: !319, size: 64, offset: 960)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2677, file: !355, line: 265, baseType: !474, size: 64, offset: 1024)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2677, file: !355, line: 266, baseType: !745, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2677, file: !355, line: 267, baseType: !745, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2677, file: !355, line: 268, baseType: !2399, size: 64, offset: 1152)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2670, file: !355, line: 277, baseType: !2693, size: 64, offset: 64)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{null, !2676}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2670, file: !355, line: 290, baseType: !2697, size: 64, offset: 128)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!12, !1358, !89}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2670, file: !355, line: 292, baseType: !2701, size: 64, offset: 192)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!89, !1358, !877}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2670, file: !355, line: 293, baseType: !2705, size: 64, offset: 256)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DISubroutineType(types: !2707)
!2707 = !{!89, !1358, !89, !877}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2670, file: !355, line: 294, baseType: !2709, size: 64, offset: 320)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{null, !1358, !89}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2670, file: !355, line: 296, baseType: !2713, size: 64, offset: 384)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!461, !2676, !319, !474, !340}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2670, file: !355, line: 306, baseType: !474, size: 64, offset: 448)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2670, file: !355, line: 313, baseType: !745, size: 8, offset: 512)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2670, file: !355, line: 314, baseType: !2713, size: 64, offset: 576)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2670, file: !355, line: 317, baseType: !2720, size: 64, offset: 640)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{!2188, !2676, !2190}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2670, file: !355, line: 320, baseType: !2724, size: 64, offset: 704)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DISubroutineType(types: !2726)
!2726 = !{!12, !2676, !2201}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2665, file: !355, line: 176, baseType: !2728, size: 64, offset: 64)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !355, line: 35, flags: DIFlagFwdDecl)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2665, file: !355, line: 177, baseType: !340, size: 64, offset: 128)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2665, file: !355, line: 178, baseType: !2638, size: 64, offset: 192)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2639, file: !355, line: 215, baseType: !89, size: 64, offset: 768)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2639, file: !355, line: 221, baseType: !20, size: 64, offset: 832)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2639, file: !355, line: 223, baseType: !39, size: 16, offset: 896)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2639, file: !355, line: 224, baseType: !184, size: 16, offset: 912)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2639, file: !355, line: 225, baseType: !2737, size: 64, offset: 960)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !355, line: 36, flags: DIFlagFwdDecl)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2639, file: !355, line: 227, baseType: !519, size: 128, align: 64, offset: 1024)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !389, file: !390, line: 71, baseType: !2741, size: 32, offset: 448)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2742, line: 19, size: 32, elements: !2743)
!2742 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2743 = !{!2744}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2741, file: !2742, line: 20, baseType: !585, size: 32)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !389, file: !390, line: 73, baseType: !87, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !389, file: !390, line: 74, baseType: !87, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !389, file: !390, line: 75, baseType: !87, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !389, file: !390, line: 76, baseType: !87, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !389, file: !390, line: 77, baseType: !87, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !386, file: !371, line: 47, baseType: !369, size: 64, offset: 512)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !386, file: !371, line: 48, baseType: !395, size: 64, offset: 576)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !386, file: !371, line: 49, baseType: !2753, size: 64, offset: 640)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !371, line: 49, flags: DIFlagFwdDecl)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !386, file: !371, line: 50, baseType: !2756, size: 64, offset: 704)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !370, file: !371, line: 418, baseType: !2758, size: 64, offset: 1408)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !371, line: 53, size: 448, elements: !2760)
!2760 = !{!2761, !2762, !2767, !2771, !2775, !2779}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2759, file: !371, line: 54, baseType: !466, size: 128)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2759, file: !371, line: 55, baseType: !2763, size: 64, offset: 128)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!461, !2758, !2766, !319}
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2759, file: !371, line: 57, baseType: !2768, size: 64, offset: 192)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{!461, !2758, !2766, !294, !474}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2759, file: !371, line: 59, baseType: !2772, size: 64, offset: 256)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{null, !369, !294}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2759, file: !371, line: 60, baseType: !2776, size: 64, offset: 320)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{!12, !369}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2759, file: !371, line: 61, baseType: !2780, size: 64, offset: 384)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{null, !369}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !370, file: !371, line: 419, baseType: !294, size: 64, offset: 1472)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !370, file: !371, line: 420, baseType: !294, size: 64, offset: 1536)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !370, file: !371, line: 421, baseType: !395, size: 64, offset: 1600)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !370, file: !371, line: 424, baseType: !2787, size: 64, offset: 1664)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2789)
!2789 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !371, line: 424, flags: DIFlagFwdDecl)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !370, file: !371, line: 425, baseType: !2791, size: 64, offset: 1728)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !671)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !370, file: !371, line: 426, baseType: !87, size: 32, offset: 1792)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !370, file: !371, line: 435, baseType: !541, size: 256, offset: 1856)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !370, file: !371, line: 437, baseType: !2796, size: 64, offset: 2112)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2798, line: 69, size: 320, elements: !2799)
!2798 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2799 = !{!2800, !2801, !2802, !2819, !2821, !2825, !2826}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2797, file: !2798, line: 70, baseType: !294, size: 64)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2797, file: !2798, line: 71, baseType: !369, size: 64, offset: 64)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2797, file: !2798, line: 72, baseType: !2803, size: 64, offset: 128)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2805)
!2805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2798, line: 47, size: 256, elements: !2806)
!2806 = !{!2807, !2808, !2814, !2818}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2805, file: !2798, line: 49, baseType: !87, size: 32)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2805, file: !2798, line: 51, baseType: !2809, size: 64, offset: 64)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!12, !294, !2812}
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2797)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2805, file: !2798, line: 53, baseType: !2815, size: 64, offset: 128)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{!12, !319, !2812}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2805, file: !2798, line: 55, baseType: !1935, size: 64, offset: 192)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2797, file: !2798, line: 73, baseType: !2820, size: 16, offset: 192)
!2820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2797, file: !2798, line: 74, baseType: !2822, size: 8, offset: 208)
!2822 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !21, line: 16, baseType: !2823)
!2823 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !23, line: 20, baseType: !2824)
!2824 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2797, file: !2798, line: 75, baseType: !74, size: 8, offset: 216)
!2826 = !DIDerivedType(tag: DW_TAG_member, scope: !2797, file: !2798, line: 76, baseType: !2827, size: 64, offset: 256)
!2827 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2797, file: !2798, line: 76, size: 64, elements: !2828)
!2828 = !{!2829, !2830, !2837}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2827, file: !2798, line: 77, baseType: !89, size: 64)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2827, file: !2798, line: 78, baseType: !2831, size: 64)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2833)
!2833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2798, line: 86, size: 128, elements: !2834)
!2834 = !{!2835, !2836}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2833, file: !2798, line: 87, baseType: !87, size: 32)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2833, file: !2798, line: 88, baseType: !319, size: 64, offset: 64)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2827, file: !2798, line: 79, baseType: !2838, size: 64)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2840)
!2840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2798, line: 92, size: 256, elements: !2841)
!2841 = !{!2842, !2843, !2844, !2845, !2846}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2840, file: !2798, line: 94, baseType: !87, size: 32)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2840, file: !2798, line: 95, baseType: !87, size: 32, offset: 32)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2840, file: !2798, line: 96, baseType: !1105, size: 64, offset: 64)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2840, file: !2798, line: 97, baseType: !2803, size: 64, offset: 128)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2840, file: !2798, line: 98, baseType: !89, size: 64, offset: 192)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !370, file: !371, line: 438, baseType: !87, size: 32, offset: 2176)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !370, file: !371, line: 441, baseType: !87, size: 32, offset: 2208)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !370, file: !371, line: 442, baseType: !2787, size: 64, offset: 2240)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !370, file: !371, line: 443, baseType: !2791, size: 64, offset: 2304)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !370, file: !371, line: 444, baseType: !745, size: 8, offset: 2368)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !370, file: !371, line: 451, baseType: !745, size: 8, offset: 2376)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !370, file: !371, line: 454, baseType: !87, size: 32, offset: 2400)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !370, file: !371, line: 455, baseType: !2855, size: 64, offset: 2432)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2857, line: 23, size: 96, elements: !2858)
!2857 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2858 = !{!2859, !2860, !2861}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2856, file: !2857, line: 24, baseType: !12, size: 32)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2856, file: !2857, line: 24, baseType: !12, size: 32, offset: 32)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2856, file: !2857, line: 24, baseType: !12, size: 32, offset: 64)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !370, file: !371, line: 458, baseType: !2863, size: 64, offset: 2496)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!12}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !370, file: !371, line: 460, baseType: !2867, size: 4032, align: 512, offset: 2560)
!2867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2868, size: 4032, elements: !2882)
!2868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !371, line: 362, size: 576, elements: !2869)
!2869 = !{!2870, !2871, !2872}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2868, file: !371, line: 363, baseType: !89, size: 64)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2868, file: !371, line: 364, baseType: !87, size: 32, offset: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2868, file: !371, line: 367, baseType: !2873, size: 448, offset: 128)
!2873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !371, line: 319, size: 448, elements: !2874)
!2874 = !{!2875, !2876}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2873, file: !371, line: 320, baseType: !369, size: 64)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2873, file: !371, line: 321, baseType: !2877, size: 384, offset: 64)
!2877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2878, line: 40, size: 384, elements: !2879)
!2878 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2879 = !{!2880}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2877, file: !2878, line: 41, baseType: !2881, size: 384, align: 64)
!2881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !678, size: 384, align: 64, elements: !1084)
!2882 = !{!2883}
!2883 = !DISubrange(count: 7)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !370, file: !371, line: 463, baseType: !2885, size: 192, offset: 6592)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2886, line: 8, size: 192, elements: !2887)
!2886 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2887 = !{!2888, !2889, !2891}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2885, file: !2886, line: 10, baseType: !87, size: 32)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2885, file: !2886, line: 11, baseType: !2890, size: 64, offset: 64)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2885, file: !2886, line: 12, baseType: !2892, size: 64, offset: 128)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2894, line: 59, size: 48, elements: !2895)
!2894 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2895 = !{!2896, !2897, !2898, !2899, !2900, !2901}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2893, file: !2894, line: 60, baseType: !2344, size: 16)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2893, file: !2894, line: 61, baseType: !2344, size: 16, offset: 16)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2893, file: !2894, line: 63, baseType: !87, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2893, file: !2894, line: 64, baseType: !87, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2893, file: !2894, line: 65, baseType: !87, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2893, file: !2894, line: 66, baseType: !87, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !370, file: !371, line: 465, baseType: !151, size: 64, offset: 6784)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !370, file: !371, line: 469, baseType: !87, size: 32, offset: 6848)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !370, file: !371, line: 470, baseType: !162, size: 128, offset: 6912)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !370, file: !371, line: 471, baseType: !2906, size: 64, offset: 7040)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2908, line: 33, size: 96, elements: !2909)
!2908 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2909 = !{!2910, !2911, !2912, !2913}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2907, file: !2908, line: 37, baseType: !12, size: 32)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2907, file: !2908, line: 43, baseType: !12, size: 32, offset: 32)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2907, file: !2908, line: 45, baseType: !39, size: 16, offset: 64)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2907, file: !2908, line: 47, baseType: !39, size: 16, offset: 80)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !370, file: !371, line: 476, baseType: !2915, size: 64, offset: 7104)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !371, line: 378, size: 256, elements: !2917)
!2917 = !{!2918, !2934, !2935, !2936}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2916, file: !371, line: 379, baseType: !2919, size: 64)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2921, line: 204, baseType: !2922)
!2921 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2921, line: 197, size: 192, elements: !2923)
!2923 = !{!2924, !2926, !2927, !2928, !2930, !2932}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2922, file: !2921, line: 198, baseType: !2925, size: 32)
!2925 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2921, line: 21, baseType: !107)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2922, file: !2921, line: 199, baseType: !76, size: 8, offset: 32)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2922, file: !2921, line: 200, baseType: !76, size: 8, offset: 40)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2922, file: !2921, line: 201, baseType: !2929, size: 16, offset: 48)
!2929 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2921, line: 17, baseType: !83)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2922, file: !2921, line: 202, baseType: !2931, size: 64, offset: 64)
!2931 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2921, line: 16, baseType: !22)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2922, file: !2921, line: 203, baseType: !2933, size: 64, offset: 128)
!2933 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2921, line: 22, baseType: !22)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2916, file: !371, line: 380, baseType: !87, size: 32, offset: 64)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2916, file: !371, line: 381, baseType: !319, size: 64, offset: 128)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2916, file: !371, line: 382, baseType: !319, size: 64, offset: 192)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !370, file: !371, line: 477, baseType: !2916, size: 256, offset: 7168)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !370, file: !371, line: 480, baseType: !2939, size: 64, offset: 7424)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !371, line: 480, flags: DIFlagFwdDecl)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !370, file: !371, line: 483, baseType: !2942, size: 64, offset: 7488)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !371, line: 483, flags: DIFlagFwdDecl)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !370, file: !371, line: 488, baseType: !319, size: 64, offset: 7552)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !370, file: !371, line: 492, baseType: !89, size: 64, offset: 7616)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !370, file: !371, line: 493, baseType: !87, size: 32, offset: 7680)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !370, file: !371, line: 495, baseType: !89, size: 64, offset: 7744)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !370, file: !371, line: 496, baseType: !87, size: 32, offset: 7808)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !370, file: !371, line: 499, baseType: !87, size: 32, offset: 7840)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !370, file: !371, line: 500, baseType: !2951, size: 64, offset: 7872)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2953, line: 45, baseType: !2954)
!2953 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !370, file: !371, line: 503, baseType: !87, size: 32, offset: 7936)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !370, file: !371, line: 504, baseType: !2957, size: 64, offset: 8000)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !370, file: !371, line: 515, baseType: !2959, size: 64, offset: 8064)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2961, line: 117, size: 128, elements: !2962)
!2961 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2962 = !{!2963, !2964, !2965}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2960, file: !2961, line: 118, baseType: !671, size: 32)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2960, file: !2961, line: 119, baseType: !671, size: 32, offset: 32)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2960, file: !2961, line: 120, baseType: !464, size: 64, offset: 64)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !370, file: !371, line: 516, baseType: !87, size: 32, offset: 8128)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !370, file: !371, line: 519, baseType: !87, size: 32, offset: 8160)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !370, file: !371, line: 520, baseType: !1821, size: 64, offset: 8192)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !370, file: !371, line: 523, baseType: !2970, size: 64, offset: 8256)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !371, line: 523, flags: DIFlagFwdDecl)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !370, file: !371, line: 524, baseType: !87, size: 32, offset: 8320)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !370, file: !371, line: 525, baseType: !2975, size: 64, offset: 8384)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !371, line: 525, flags: DIFlagFwdDecl)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !370, file: !371, line: 526, baseType: !87, size: 32, offset: 8448)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !370, file: !371, line: 533, baseType: !89, size: 64, offset: 8512)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !370, file: !371, line: 534, baseType: !87, size: 32, offset: 8576)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !370, file: !371, line: 535, baseType: !2982, size: 64, offset: 8640)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !370, file: !371, line: 536, baseType: !87, size: 32, offset: 8704)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !370, file: !371, line: 539, baseType: !12, size: 32, offset: 8736)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !370, file: !371, line: 540, baseType: !2986, size: 64, offset: 8768)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2988, line: 32, size: 64, elements: !2989)
!2988 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2989 = !{!2990, !2991}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2987, file: !2988, line: 33, baseType: !671, size: 32)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2987, file: !2988, line: 34, baseType: !671, size: 32, offset: 32)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !370, file: !371, line: 563, baseType: !162, size: 128, offset: 8832)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !370, file: !371, line: 565, baseType: !162, size: 128, offset: 8960)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !370, file: !371, line: 568, baseType: !2995, size: 64, offset: 9088)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{null}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !370, file: !371, line: 570, baseType: !66, size: 32, offset: 9152)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !345, file: !177, line: 2382, baseType: !344, size: 64, offset: 448)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !345, file: !177, line: 2383, baseType: !594, size: 64, offset: 512)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !345, file: !177, line: 2385, baseType: !3002, offset: 576)
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1302, line: 206, elements: !137)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !345, file: !177, line: 2386, baseType: !3002, offset: 576)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !345, file: !177, line: 2387, baseType: !3002, offset: 576)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !345, file: !177, line: 2388, baseType: !3006, offset: 576)
!3006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3002, elements: !430)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !345, file: !177, line: 2390, baseType: !3002, offset: 576)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !345, file: !177, line: 2391, baseType: !3002, offset: 576)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !345, file: !177, line: 2392, baseType: !3002, offset: 576)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !345, file: !177, line: 2393, baseType: !3002, offset: 576)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !331, file: !177, line: 1197, baseType: !3012, size: 64, offset: 384)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3014)
!3014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !177, line: 2057, size: 1664, elements: !3015)
!3015 = !{!3016, !3020, !3024, !3025, !3029, !3035, !3039, !3040, !3041, !3045, !3053, !3057, !3058, !3059, !3065, !3069, !3070, !3074, !3075, !3076, !3077, !3081, !3085, !3138, !3153, !3154}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !3014, file: !177, line: 2058, baseType: !3017, size: 64)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{!180, !330}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !3014, file: !177, line: 2059, baseType: !3021, size: 64, offset: 64)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{null, !180}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3014, file: !177, line: 2060, baseType: !3021, size: 64, offset: 128)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !3014, file: !177, line: 2062, baseType: !3026, size: 64, offset: 192)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{null, !180, !12}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !3014, file: !177, line: 2063, baseType: !3030, size: 64, offset: 256)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{!12, !180, !3033}
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !177, line: 309, flags: DIFlagFwdDecl)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !3014, file: !177, line: 2064, baseType: !3036, size: 64, offset: 320)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!12, !180}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !3014, file: !177, line: 2065, baseType: !3021, size: 64, offset: 384)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !3014, file: !177, line: 2066, baseType: !365, size: 64, offset: 448)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !3014, file: !177, line: 2067, baseType: !3042, size: 64, offset: 512)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = !DISubroutineType(types: !3044)
!3044 = !{!12, !330, !12}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !3014, file: !177, line: 2068, baseType: !3046, size: 64, offset: 576)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{!12, !330, !3049}
!3049 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !177, line: 2052, baseType: !87, size: 32, elements: !3050)
!3050 = !{!3051, !3052}
!3051 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!3052 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !3014, file: !177, line: 2069, baseType: !3054, size: 64, offset: 640)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!12, !330}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !3014, file: !177, line: 2070, baseType: !3046, size: 64, offset: 704)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !3014, file: !177, line: 2071, baseType: !3054, size: 64, offset: 768)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !3014, file: !177, line: 2072, baseType: !3060, size: 64, offset: 832)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!12, !217, !3063}
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !177, line: 62, flags: DIFlagFwdDecl)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !3014, file: !177, line: 2073, baseType: !3066, size: 64, offset: 896)
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!12, !330, !2890, !319}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !3014, file: !177, line: 2074, baseType: !365, size: 64, offset: 960)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3014, file: !177, line: 2076, baseType: !3071, size: 64, offset: 1024)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!12, !1358, !217}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !3014, file: !177, line: 2077, baseType: !3071, size: 64, offset: 1088)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3014, file: !177, line: 2078, baseType: !3071, size: 64, offset: 1152)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !3014, file: !177, line: 2079, baseType: !3071, size: 64, offset: 1216)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !3014, file: !177, line: 2081, baseType: !3078, size: 64, offset: 1280)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!461, !330, !12, !319, !474, !340}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !3014, file: !177, line: 2082, baseType: !3082, size: 64, offset: 1344)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{!461, !330, !12, !294, !474, !340}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !3014, file: !177, line: 2083, baseType: !3086, size: 64, offset: 1408)
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{!3089, !180}
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !3092, line: 296, size: 1664, elements: !3093)
!3092 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!3093 = !{!3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3123, !3124, !3125}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3091, file: !3092, line: 297, baseType: !598, size: 128)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3091, file: !3092, line: 298, baseType: !162, size: 128, offset: 128)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3091, file: !3092, line: 299, baseType: !162, size: 128, offset: 256)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3091, file: !3092, line: 300, baseType: !162, size: 128, offset: 384)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3091, file: !3092, line: 301, baseType: !541, size: 256, offset: 512)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3091, file: !3092, line: 302, baseType: !46, size: 32, offset: 768)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3091, file: !3092, line: 303, baseType: !66, size: 32, offset: 800)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3091, file: !3092, line: 304, baseType: !330, size: 64, offset: 832)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3091, file: !3092, line: 305, baseType: !3103, size: 64, offset: 896)
!3103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !3092, line: 68, size: 64, elements: !3104)
!3104 = !{!3105, !3117}
!3105 = !DIDerivedType(tag: DW_TAG_member, scope: !3103, file: !3092, line: 69, baseType: !3106, size: 32)
!3106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3103, file: !3092, line: 69, size: 32, elements: !3107)
!3107 = !{!3108, !3109, !3110}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3106, file: !3092, line: 70, baseType: !187, size: 32)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3106, file: !3092, line: 71, baseType: !197, size: 32)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3106, file: !3092, line: 72, baseType: !3111, size: 32)
!3111 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3112, line: 24, baseType: !3113)
!3112 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!3113 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3112, line: 22, size: 32, elements: !3114)
!3114 = !{!3115}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3113, file: !3112, line: 23, baseType: !3116, size: 32)
!3116 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3112, line: 20, baseType: !193)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3103, file: !3092, line: 74, baseType: !3118, size: 32, offset: 32)
!3118 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !3092, line: 54, baseType: !87, size: 32, elements: !3119)
!3119 = !{!3120, !3121, !3122}
!3120 = !DIEnumerator(name: "USRQUOTA", value: 0)
!3121 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!3122 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3091, file: !3092, line: 306, baseType: !340, size: 64, offset: 960)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3091, file: !3092, line: 307, baseType: !151, size: 64, offset: 1024)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3091, file: !3092, line: 308, baseType: !3126, size: 576, offset: 1088)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !3092, line: 205, size: 576, elements: !3127)
!3127 = !{!3128, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3126, file: !3092, line: 206, baseType: !3129, size: 64)
!3129 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !3092, line: 66, baseType: !342)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3126, file: !3092, line: 207, baseType: !3129, size: 64, offset: 64)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3126, file: !3092, line: 208, baseType: !3129, size: 64, offset: 128)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3126, file: !3092, line: 209, baseType: !3129, size: 64, offset: 192)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3126, file: !3092, line: 210, baseType: !3129, size: 64, offset: 256)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3126, file: !3092, line: 211, baseType: !3129, size: 64, offset: 320)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3126, file: !3092, line: 212, baseType: !3129, size: 64, offset: 384)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3126, file: !3092, line: 213, baseType: !702, size: 64, offset: 448)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3126, file: !3092, line: 214, baseType: !702, size: 64, offset: 512)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !3014, file: !177, line: 2085, baseType: !3139, size: 64, offset: 1472)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{!464, !330, !3142}
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3144, line: 15, size: 256, elements: !3145)
!3144 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!3145 = !{!3146, !3147, !3148, !3149, !3150}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3143, file: !3144, line: 16, baseType: !86, size: 32)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3143, file: !3144, line: 19, baseType: !12, size: 32, offset: 32)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3143, file: !3144, line: 26, baseType: !151, size: 64, offset: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3143, file: !3144, line: 33, baseType: !151, size: 64, offset: 128)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3143, file: !3144, line: 36, baseType: !3151, size: 64, offset: 192)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !148, line: 33, flags: DIFlagFwdDecl)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !3014, file: !177, line: 2087, baseType: !3139, size: 64, offset: 1536)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3014, file: !177, line: 2089, baseType: !365, size: 64, offset: 1600)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !331, file: !177, line: 1198, baseType: !3156, size: 64, offset: 448)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3158)
!3158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !3092, line: 324, size: 704, elements: !3159)
!3159 = !{!3160, !3164, !3168, !3172, !3173, !3174, !3175, !3176, !3181, !3186, !3190}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3158, file: !3092, line: 325, baseType: !3161, size: 64)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{!12, !3090}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3158, file: !3092, line: 326, baseType: !3165, size: 64, offset: 64)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!3090, !330, !12}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3158, file: !3092, line: 327, baseType: !3169, size: 64, offset: 128)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{null, !3090}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3158, file: !3092, line: 328, baseType: !3161, size: 64, offset: 192)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3158, file: !3092, line: 329, baseType: !3161, size: 64, offset: 256)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3158, file: !3092, line: 330, baseType: !3161, size: 64, offset: 320)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3158, file: !3092, line: 331, baseType: !3042, size: 64, offset: 384)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3158, file: !3092, line: 334, baseType: !3177, size: 64, offset: 448)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!3180, !180}
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3158, file: !3092, line: 335, baseType: !3182, size: 64, offset: 512)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!12, !180, !3185}
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3158, file: !3092, line: 337, baseType: !3187, size: 64, offset: 576)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{!12, !180, !3180}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3158, file: !3092, line: 339, baseType: !3191, size: 64, offset: 640)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!12, !330, !3194}
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !331, file: !177, line: 1199, baseType: !3196, size: 64, offset: 512)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3198)
!3198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !3092, line: 430, size: 704, elements: !3199)
!3199 = !{!3200, !3206, !3207, !3211, !3212, !3213, !3228, !3251, !3255, !3256, !3279}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3198, file: !3092, line: 431, baseType: !3201, size: 64)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!12, !330, !12, !12, !3204}
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !857)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3198, file: !3092, line: 432, baseType: !3042, size: 64, offset: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3198, file: !3092, line: 433, baseType: !3208, size: 64, offset: 128)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!12, !330, !87}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3198, file: !3092, line: 434, baseType: !3208, size: 64, offset: 192)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3198, file: !3092, line: 435, baseType: !3042, size: 64, offset: 256)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3198, file: !3092, line: 436, baseType: !3214, size: 64, offset: 320)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!12, !330, !12, !3217}
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !3092, line: 417, size: 256, elements: !3219)
!3219 = !{!3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3218, file: !3092, line: 418, baseType: !12, size: 32)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3218, file: !3092, line: 419, baseType: !87, size: 32, offset: 32)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3218, file: !3092, line: 420, baseType: !87, size: 32, offset: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3218, file: !3092, line: 422, baseType: !87, size: 32, offset: 96)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3218, file: !3092, line: 423, baseType: !87, size: 32, offset: 128)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3218, file: !3092, line: 424, baseType: !87, size: 32, offset: 160)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3218, file: !3092, line: 425, baseType: !87, size: 32, offset: 192)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3218, file: !3092, line: 426, baseType: !87, size: 32, offset: 224)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3198, file: !3092, line: 437, baseType: !3229, size: 64, offset: 384)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = !DISubroutineType(types: !3231)
!3231 = !{!12, !330, !3103, !3232}
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !3092, line: 345, size: 960, elements: !3234)
!3234 = !{!3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3233, file: !3092, line: 346, baseType: !12, size: 32)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3233, file: !3092, line: 347, baseType: !20, size: 64, offset: 64)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3233, file: !3092, line: 348, baseType: !20, size: 64, offset: 128)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3233, file: !3092, line: 349, baseType: !20, size: 64, offset: 192)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3233, file: !3092, line: 350, baseType: !20, size: 64, offset: 256)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3233, file: !3092, line: 351, baseType: !20, size: 64, offset: 320)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3233, file: !3092, line: 352, baseType: !20, size: 64, offset: 384)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3233, file: !3092, line: 353, baseType: !538, size: 64, offset: 448)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3233, file: !3092, line: 355, baseType: !538, size: 64, offset: 512)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3233, file: !3092, line: 356, baseType: !12, size: 32, offset: 576)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3233, file: !3092, line: 357, baseType: !12, size: 32, offset: 608)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3233, file: !3092, line: 358, baseType: !20, size: 64, offset: 640)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3233, file: !3092, line: 359, baseType: !20, size: 64, offset: 704)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3233, file: !3092, line: 360, baseType: !20, size: 64, offset: 768)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3233, file: !3092, line: 361, baseType: !538, size: 64, offset: 832)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3233, file: !3092, line: 362, baseType: !12, size: 32, offset: 896)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3198, file: !3092, line: 438, baseType: !3252, size: 64, offset: 448)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!12, !330, !3194, !3232}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3198, file: !3092, line: 440, baseType: !3229, size: 64, offset: 512)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3198, file: !3092, line: 441, baseType: !3257, size: 64, offset: 576)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!12, !330, !3260}
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !3092, line: 411, size: 1408, elements: !3262)
!3262 = !{!3263, !3264}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3261, file: !3092, line: 412, baseType: !87, size: 32)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3261, file: !3092, line: 413, baseType: !3265, size: 1344, offset: 64)
!3265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3266, size: 1344, elements: !430)
!3266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !3092, line: 397, size: 448, elements: !3267)
!3267 = !{!3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3278}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3266, file: !3092, line: 398, baseType: !87, size: 32)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3266, file: !3092, line: 399, baseType: !87, size: 32, offset: 32)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3266, file: !3092, line: 401, baseType: !87, size: 32, offset: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3266, file: !3092, line: 402, baseType: !87, size: 32, offset: 96)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3266, file: !3092, line: 403, baseType: !87, size: 32, offset: 128)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3266, file: !3092, line: 404, baseType: !87, size: 32, offset: 160)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3266, file: !3092, line: 405, baseType: !87, size: 32, offset: 192)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3266, file: !3092, line: 406, baseType: !24, size: 64, offset: 256)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3266, file: !3092, line: 407, baseType: !3277, size: 64, offset: 320)
!3277 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !19, line: 132, baseType: !20)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3266, file: !3092, line: 408, baseType: !3277, size: 64, offset: 384)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3198, file: !3092, line: 442, baseType: !3208, size: 64, offset: 640)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !331, file: !177, line: 1200, baseType: !3281, size: 64, offset: 576)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3283)
!3283 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !177, line: 54, flags: DIFlagFwdDecl)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !331, file: !177, line: 1201, baseType: !151, size: 64, offset: 640)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !331, file: !177, line: 1202, baseType: !151, size: 64, offset: 704)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !331, file: !177, line: 1203, baseType: !151, size: 64, offset: 768)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !331, file: !177, line: 1204, baseType: !217, size: 64, offset: 832)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !331, file: !177, line: 1205, baseType: !686, size: 320, offset: 896)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !331, file: !177, line: 1206, baseType: !12, size: 32, offset: 1216)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !331, file: !177, line: 1207, baseType: !66, size: 32, offset: 1248)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !331, file: !177, line: 1209, baseType: !89, size: 64, offset: 1280)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !331, file: !177, line: 1211, baseType: !3293, size: 64, offset: 1344)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3296)
!3296 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !177, line: 1211, flags: DIFlagFwdDecl)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !331, file: !177, line: 1223, baseType: !3298, size: 64, offset: 1408)
!3298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !234, line: 34, size: 64, elements: !3299)
!3299 = !{!3300}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3298, file: !234, line: 35, baseType: !237, size: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !331, file: !177, line: 1224, baseType: !162, size: 128, offset: 1472)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !331, file: !177, line: 1225, baseType: !13, size: 64, offset: 1600)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !331, file: !177, line: 1226, baseType: !3304, size: 64, offset: 1664)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !29, line: 1495, size: 128, elements: !3306)
!3306 = !{!3307, !3308}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !3305, file: !29, line: 1496, baseType: !13, size: 64)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "holder", scope: !3305, file: !29, line: 1497, baseType: !89, size: 64, offset: 64)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !331, file: !177, line: 1227, baseType: !3310, size: 64, offset: 1728)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !177, line: 50, flags: DIFlagFwdDecl)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !331, file: !177, line: 1228, baseType: !3313, size: 64, offset: 1792)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !177, line: 1228, flags: DIFlagFwdDecl)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !331, file: !177, line: 1229, baseType: !598, size: 128, offset: 1856)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !331, file: !177, line: 1230, baseType: !87, size: 32, offset: 1984)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !331, file: !177, line: 1231, baseType: !3318, size: 2496, offset: 2048)
!3318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !3092, line: 521, size: 2496, elements: !3319)
!3319 = !{!3320, !3321, !3322, !3324, !3356}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3318, file: !3092, line: 522, baseType: !87, size: 32)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3318, file: !3092, line: 523, baseType: !686, size: 320, offset: 64)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3318, file: !3092, line: 524, baseType: !3323, size: 192, offset: 384)
!3323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 192, elements: !430)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3318, file: !3092, line: 525, baseType: !3325, size: 1728, offset: 576)
!3325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3326, size: 1728, elements: !430)
!3326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !3092, line: 222, size: 576, elements: !3327)
!3327 = !{!3328, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3326, file: !3092, line: 223, baseType: !3329, size: 64)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !3092, line: 445, size: 256, elements: !3331)
!3331 = !{!3332, !3333, !3346, !3347}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3330, file: !3092, line: 446, baseType: !12, size: 32)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3330, file: !3092, line: 447, baseType: !3334, size: 64, offset: 64)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3336)
!3336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !3092, line: 312, size: 512, elements: !3337)
!3337 = !{!3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3336, file: !3092, line: 313, baseType: !3042, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3336, file: !3092, line: 314, baseType: !3042, size: 64, offset: 64)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3336, file: !3092, line: 315, baseType: !3042, size: 64, offset: 128)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3336, file: !3092, line: 316, baseType: !3042, size: 64, offset: 192)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3336, file: !3092, line: 317, baseType: !3161, size: 64, offset: 256)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3336, file: !3092, line: 318, baseType: !3161, size: 64, offset: 320)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3336, file: !3092, line: 319, baseType: !3161, size: 64, offset: 384)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3336, file: !3092, line: 320, baseType: !3191, size: 64, offset: 448)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3330, file: !3092, line: 448, baseType: !369, size: 64, offset: 128)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3330, file: !3092, line: 449, baseType: !3329, size: 64, offset: 192)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3326, file: !3092, line: 224, baseType: !12, size: 32, offset: 64)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3326, file: !3092, line: 226, baseType: !162, size: 128, offset: 128)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3326, file: !3092, line: 227, baseType: !151, size: 64, offset: 256)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3326, file: !3092, line: 228, baseType: !87, size: 32, offset: 320)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3326, file: !3092, line: 229, baseType: !87, size: 32, offset: 352)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3326, file: !3092, line: 230, baseType: !3129, size: 64, offset: 384)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3326, file: !3092, line: 231, baseType: !3129, size: 64, offset: 448)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3326, file: !3092, line: 232, baseType: !89, size: 64, offset: 512)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3318, file: !3092, line: 526, baseType: !3357, size: 192, offset: 2304)
!3357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3334, size: 192, elements: !430)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !331, file: !177, line: 1233, baseType: !3359, size: 2368, offset: 4544)
!3359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !177, line: 1184, size: 2368, elements: !3360)
!3360 = !{!3361, !3362, !3363}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3359, file: !177, line: 1185, baseType: !39, size: 16)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3359, file: !177, line: 1186, baseType: !39, size: 16, offset: 16)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3359, file: !177, line: 1187, baseType: !3364, size: 2304, offset: 64)
!3364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3365, size: 2304, elements: !430)
!3365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3366, line: 12, size: 768, elements: !3367)
!3366 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3367 = !{!3368, !3376, !3377, !4505, !4506}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3365, file: !3366, line: 13, baseType: !3369, size: 384)
!3369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3370, line: 17, size: 384, elements: !3371)
!3370 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3371 = !{!3372, !3373, !3374, !3375}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3369, file: !3370, line: 18, baseType: !12, size: 32)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3369, file: !3370, line: 19, baseType: !12, size: 32, offset: 32)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3369, file: !3370, line: 20, baseType: !607, size: 192, offset: 64)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3369, file: !3370, line: 22, baseType: !519, size: 128, align: 64, offset: 256)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3365, file: !3366, line: 14, baseType: !1105, size: 64, offset: 384)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3365, file: !3366, line: 15, baseType: !3378, size: 64, offset: 448)
!3378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3379, line: 16, size: 64, elements: !3380)
!3379 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3380 = !{!3381}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3378, file: !3379, line: 17, baseType: !3382, size: 64)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1360, line: 746, size: 58368, elements: !3384)
!3384 = !{!3385, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3465, !3476, !3496, !3500, !3503, !3534, !3535, !3536, !3537, !3541, !3543, !3544, !3545, !3546, !3547, !3548, !3559, !3560, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3577, !3578, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3672, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3720, !3726, !3727, !3728, !3729, !3730, !3731, !3734, !3741, !3746, !3749, !3752, !3755, !3759, !3897, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3935, !3936, !3937, !3946, !3954, !3955, !3956, !3957, !3958, !3963, !3964, !3965, !3968, !3969, !3976, !3987, !3990, !3991, !3994, !3995, !4081, !4082, !4083, !4084, !4085, !4091, !4092, !4093, !4094, !4097, !4098, !4101, !4104, !4105, !4108, !4109, !4110, !4113, !4114, !4115, !4116, !4117, !4118, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4150, !4151, !4157, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4245, !4247, !4248, !4249, !4250, !4251, !4252, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4282, !4283, !4284}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !3383, file: !1360, line: 752, baseType: !3386, size: 192)
!3386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !3387, line: 56, size: 192, elements: !3388)
!3387 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!3388 = !{!3389, !3390, !3391, !3392}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3386, file: !3387, line: 57, baseType: !151, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !3386, file: !3387, line: 58, baseType: !151, size: 64, offset: 64)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3386, file: !3387, line: 59, baseType: !251, size: 32, offset: 128)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3386, file: !3387, line: 61, baseType: !251, size: 32, offset: 160)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !3383, file: !1360, line: 754, baseType: !87, size: 32, offset: 192)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3383, file: !1360, line: 767, baseType: !89, size: 64, offset: 256)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3383, file: !1360, line: 768, baseType: !585, size: 32, offset: 320)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3383, file: !1360, line: 770, baseType: !87, size: 32, offset: 352)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !3383, file: !1360, line: 771, baseType: !87, size: 32, offset: 384)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !3383, file: !1360, line: 774, baseType: !12, size: 32, offset: 416)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !3383, file: !1360, line: 775, baseType: !3400, size: 128, offset: 448)
!3400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !3401, line: 58, size: 128, elements: !3402)
!3401 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!3402 = !{!3403, !3404, !3409, !3410}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !3400, file: !3401, line: 59, baseType: !513, size: 64)
!3404 = !DIDerivedType(tag: DW_TAG_member, scope: !3400, file: !3401, line: 60, baseType: !3405, size: 32, offset: 64)
!3405 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3400, file: !3401, line: 60, size: 32, elements: !3406)
!3406 = !{!3407, !3408}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !3405, file: !3401, line: 61, baseType: !87, size: 32)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !3405, file: !3401, line: 62, baseType: !66, size: 32)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !3400, file: !3401, line: 65, baseType: !82, size: 16, offset: 96)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !3400, file: !3401, line: 65, baseType: !82, size: 16, offset: 112)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !3383, file: !1360, line: 776, baseType: !87, size: 32, offset: 576)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !3383, file: !1360, line: 777, baseType: !151, size: 64, offset: 640)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !3383, file: !1360, line: 778, baseType: !3382, size: 64, offset: 704)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !3383, file: !1360, line: 787, baseType: !12, size: 32, offset: 768)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !3383, file: !1360, line: 788, baseType: !12, size: 32, offset: 800)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3383, file: !1360, line: 790, baseType: !12, size: 32, offset: 832)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3383, file: !1360, line: 792, baseType: !12, size: 32, offset: 864)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !3383, file: !1360, line: 793, baseType: !12, size: 32, offset: 896)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !3383, file: !1360, line: 794, baseType: !12, size: 32, offset: 928)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !3383, file: !1360, line: 795, baseType: !87, size: 32, offset: 960)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !3383, file: !1360, line: 797, baseType: !3422, size: 2048, offset: 1024)
!3422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1360, line: 551, size: 2048, elements: !3423)
!3423 = !{!3424, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3444, !3447, !3448, !3449}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !3422, file: !1360, line: 553, baseType: !3425, size: 128)
!3425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1360, line: 411, size: 128, elements: !3426)
!3426 = !{!3427, !3428}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3425, file: !1360, line: 412, baseType: !151, size: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !3425, file: !1360, line: 413, baseType: !251, size: 32, offset: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !3422, file: !1360, line: 554, baseType: !678, size: 192, align: 64, offset: 128)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3422, file: !1360, line: 555, baseType: !20, size: 64, offset: 320)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !3422, file: !1360, line: 556, baseType: !20, size: 64, offset: 384)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3422, file: !1360, line: 558, baseType: !162, size: 128, offset: 448)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3422, file: !1360, line: 559, baseType: !87, size: 32, offset: 576)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !3422, file: !1360, line: 561, baseType: !20, size: 64, offset: 640)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3422, file: !1360, line: 562, baseType: !20, size: 64, offset: 704)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !3422, file: !1360, line: 563, baseType: !20, size: 64, offset: 768)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !3422, file: !1360, line: 564, baseType: !20, size: 64, offset: 832)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !3422, file: !1360, line: 565, baseType: !538, size: 64, offset: 896)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3422, file: !1360, line: 566, baseType: !20, size: 64, offset: 960)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !3422, file: !1360, line: 568, baseType: !20, size: 64, offset: 1024)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3422, file: !1360, line: 571, baseType: !12, size: 32, offset: 1088)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3422, file: !1360, line: 572, baseType: !3443, size: 64, offset: 1152)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !3422, file: !1360, line: 574, baseType: !3445, size: 64, offset: 1216)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1360, line: 49, flags: DIFlagFwdDecl)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !3422, file: !1360, line: 576, baseType: !3445, size: 64, offset: 1280)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !3422, file: !1360, line: 578, baseType: !151, size: 64, offset: 1344)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !3422, file: !1360, line: 588, baseType: !3450, size: 512, align: 512, offset: 1536)
!3450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1360, line: 497, size: 512, align: 512, elements: !3451)
!3451 = !{!3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !3450, file: !1360, line: 498, baseType: !20, size: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !3450, file: !1360, line: 499, baseType: !20, size: 64, offset: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !3450, file: !1360, line: 500, baseType: !20, size: 64, offset: 128)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !3450, file: !1360, line: 501, baseType: !251, size: 32, offset: 192)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !3450, file: !1360, line: 502, baseType: !251, size: 32, offset: 224)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !3450, file: !1360, line: 503, baseType: !151, size: 64, offset: 256)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !3450, file: !1360, line: 504, baseType: !151, size: 64, offset: 320)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !3450, file: !1360, line: 505, baseType: !151, size: 64, offset: 384)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !3450, file: !1360, line: 506, baseType: !3461, size: 64, align: 64, offset: 448)
!3461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1360, line: 445, size: 64, align: 64, elements: !3462)
!3462 = !{!3463, !3464}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !3461, file: !1360, line: 446, baseType: !87, size: 32)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !3461, file: !1360, line: 447, baseType: !87, size: 32, offset: 32)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3383, file: !1360, line: 798, baseType: !3466, size: 384, offset: 3072)
!3466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1360, line: 592, size: 384, elements: !3467)
!3467 = !{!3468, !3469, !3470, !3471, !3472, !3473, !3474}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !3466, file: !1360, line: 593, baseType: !162, size: 128)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3466, file: !1360, line: 594, baseType: !151, size: 64, offset: 128)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !3466, file: !1360, line: 595, baseType: !151, size: 64, offset: 192)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !3466, file: !1360, line: 596, baseType: !87, size: 32, offset: 256)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3466, file: !1360, line: 597, baseType: !39, size: 16, offset: 288)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !3466, file: !1360, line: 598, baseType: !39, size: 16, offset: 304)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !3466, file: !1360, line: 600, baseType: !3475, size: 64, offset: 320)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !3383, file: !1360, line: 799, baseType: !3477, size: 1792, offset: 3456)
!3477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1360, line: 610, size: 1792, elements: !3478)
!3478 = !{!3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3477, file: !1360, line: 611, baseType: !678, size: 192, align: 64)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !3477, file: !1360, line: 618, baseType: !20, size: 64, offset: 192)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !3477, file: !1360, line: 619, baseType: !20, size: 64, offset: 256)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !3477, file: !1360, line: 620, baseType: !20, size: 64, offset: 320)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !3477, file: !1360, line: 621, baseType: !20, size: 64, offset: 384)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !3477, file: !1360, line: 622, baseType: !20, size: 64, offset: 448)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !3477, file: !1360, line: 629, baseType: !538, size: 64, offset: 512)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3477, file: !1360, line: 630, baseType: !20, size: 64, offset: 576)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3477, file: !1360, line: 631, baseType: !87, size: 32, offset: 640)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !3477, file: !1360, line: 653, baseType: !87, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !3477, file: !1360, line: 654, baseType: !87, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !3477, file: !1360, line: 655, baseType: !87, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !3477, file: !1360, line: 656, baseType: !87, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !3477, file: !1360, line: 662, baseType: !1586, size: 512, offset: 704)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !3477, file: !1360, line: 671, baseType: !1586, size: 512, offset: 1216)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !3477, file: !1360, line: 679, baseType: !3495, size: 64, offset: 1728)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !3383, file: !1360, line: 800, baseType: !3497, size: 64, offset: 5248)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3499)
!3499 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1360, line: 800, flags: DIFlagFwdDecl)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !3383, file: !1360, line: 809, baseType: !3501, size: 64, offset: 5312)
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3502 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1360, line: 70, flags: DIFlagFwdDecl)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3383, file: !1360, line: 825, baseType: !3504, size: 2048, align: 512, offset: 5632)
!3504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1360, line: 509, size: 2048, align: 512, elements: !3505)
!3505 = !{!3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3504, file: !1360, line: 511, baseType: !20, size: 64)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3504, file: !1360, line: 512, baseType: !20, size: 64, offset: 64)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3504, file: !1360, line: 513, baseType: !20, size: 64, offset: 128)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3504, file: !1360, line: 514, baseType: !20, size: 64, offset: 192)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3504, file: !1360, line: 515, baseType: !20, size: 64, offset: 256)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3504, file: !1360, line: 516, baseType: !20, size: 64, offset: 320)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3504, file: !1360, line: 518, baseType: !20, size: 64, offset: 384)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3504, file: !1360, line: 519, baseType: !20, size: 64, offset: 448)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3504, file: !1360, line: 520, baseType: !538, size: 64, offset: 512)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3504, file: !1360, line: 522, baseType: !20, size: 64, offset: 576)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3504, file: !1360, line: 523, baseType: !20, size: 64, offset: 640)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3504, file: !1360, line: 524, baseType: !538, size: 64, offset: 704)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3504, file: !1360, line: 526, baseType: !538, size: 64, offset: 768)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3504, file: !1360, line: 527, baseType: !20, size: 64, offset: 832)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3504, file: !1360, line: 529, baseType: !20, size: 64, offset: 896)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3504, file: !1360, line: 530, baseType: !20, size: 64, offset: 960)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3504, file: !1360, line: 531, baseType: !20, size: 64, offset: 1024)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3504, file: !1360, line: 532, baseType: !20, size: 64, offset: 1088)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3504, file: !1360, line: 533, baseType: !20, size: 64, offset: 1152)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3504, file: !1360, line: 535, baseType: !20, size: 64, offset: 1216)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3504, file: !1360, line: 536, baseType: !20, size: 64, offset: 1280)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3504, file: !1360, line: 537, baseType: !20, size: 64, offset: 1344)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3504, file: !1360, line: 538, baseType: !20, size: 64, offset: 1408)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3504, file: !1360, line: 539, baseType: !20, size: 64, offset: 1472)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3504, file: !1360, line: 540, baseType: !20, size: 64, offset: 1536)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3504, file: !1360, line: 541, baseType: !20, size: 64, offset: 1600)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3504, file: !1360, line: 542, baseType: !20, size: 64, offset: 1664)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3504, file: !1360, line: 543, baseType: !20, size: 64, offset: 1728)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !3383, file: !1360, line: 833, baseType: !87, size: 32, offset: 7680)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !3383, file: !1360, line: 836, baseType: !87, size: 32, offset: 7712)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !3383, file: !1360, line: 837, baseType: !12, size: 32, offset: 7744)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !3383, file: !1360, line: 838, baseType: !3538, size: 64, offset: 7808)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3540)
!3540 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1059, line: 19, baseType: !1061)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !3383, file: !1360, line: 839, baseType: !3542, size: 64, offset: 7872)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !3383, file: !1360, line: 840, baseType: !3540, size: 64, offset: 7936)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !3383, file: !1360, line: 841, baseType: !89, size: 64, offset: 8000)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !3383, file: !1360, line: 843, baseType: !39, size: 16, offset: 8064)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !3383, file: !1360, line: 845, baseType: !39, size: 16, offset: 8080)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !3383, file: !1360, line: 848, baseType: !12, size: 32, offset: 8096)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !3383, file: !1360, line: 849, baseType: !3549, size: 32, offset: 8128)
!3549 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1360, line: 718, size: 32, elements: !3550)
!3550 = !{!3551, !3558}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3549, file: !1360, line: 724, baseType: !3552, size: 32)
!3552 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3549, file: !1360, line: 719, size: 32, elements: !3553)
!3553 = !{!3554, !3555, !3556, !3557}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3552, file: !1360, line: 720, baseType: !74, size: 8)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3552, file: !1360, line: 721, baseType: !74, size: 8, offset: 8)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3552, file: !1360, line: 722, baseType: !74, size: 8, offset: 16)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3552, file: !1360, line: 723, baseType: !74, size: 8, offset: 24)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3549, file: !1360, line: 725, baseType: !251, size: 32)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !3383, file: !1360, line: 850, baseType: !162, size: 128, offset: 8192)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !3383, file: !1360, line: 851, baseType: !3561, size: 64, offset: 8320)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1360, line: 60, flags: DIFlagFwdDecl)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !3383, file: !1360, line: 855, baseType: !151, size: 64, offset: 8384)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !3383, file: !1360, line: 856, baseType: !74, size: 8, offset: 8448)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !3383, file: !1360, line: 857, baseType: !74, size: 8, offset: 8456)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !3383, file: !1360, line: 858, baseType: !12, size: 32, offset: 8480)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !3383, file: !1360, line: 859, baseType: !162, size: 128, offset: 8512)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !3383, file: !1360, line: 860, baseType: !12, size: 32, offset: 8640)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !3383, file: !1360, line: 861, baseType: !162, size: 128, offset: 8704)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !3383, file: !1360, line: 873, baseType: !3571, size: 256, offset: 8832)
!3571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1360, line: 376, size: 256, elements: !3572)
!3572 = !{!3573, !3574, !3575, !3576}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3571, file: !1360, line: 381, baseType: !151, size: 64)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3571, file: !1360, line: 384, baseType: !24, size: 64, offset: 64)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3571, file: !1360, line: 389, baseType: !24, size: 64, offset: 128)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3571, file: !1360, line: 392, baseType: !24, size: 64, offset: 192)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3383, file: !1360, line: 875, baseType: !162, size: 128, offset: 9088)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !3383, file: !1360, line: 877, baseType: !3579, size: 320, offset: 9216)
!3579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3580, line: 86, size: 320, elements: !3581)
!3580 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3581 = !{!3582, !3583, !3584}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3579, file: !3580, line: 87, baseType: !12, size: 32)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3579, file: !3580, line: 88, baseType: !162, size: 128, offset: 64)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3579, file: !3580, line: 89, baseType: !162, size: 128, offset: 192)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !3383, file: !1360, line: 878, baseType: !678, size: 192, align: 64, offset: 9536)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3383, file: !1360, line: 881, baseType: !2214, size: 64, offset: 9728)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !3383, file: !1360, line: 882, baseType: !2214, size: 64, offset: 9792)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !3383, file: !1360, line: 884, baseType: !12, size: 32, offset: 9856)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !3383, file: !1360, line: 885, baseType: !12, size: 32, offset: 9888)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !3383, file: !1360, line: 886, baseType: !12, size: 32, offset: 9920)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !3383, file: !1360, line: 888, baseType: !12, size: 32, offset: 9952)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !3383, file: !1360, line: 890, baseType: !151, size: 64, offset: 9984)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !3383, file: !1360, line: 893, baseType: !87, size: 32, offset: 10048)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !3383, file: !1360, line: 896, baseType: !87, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !3383, file: !1360, line: 897, baseType: !87, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !3383, file: !1360, line: 898, baseType: !87, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !3383, file: !1360, line: 899, baseType: !87, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !3383, file: !1360, line: 919, baseType: !87, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !3383, file: !1360, line: 922, baseType: !87, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !3383, file: !1360, line: 923, baseType: !87, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !3383, file: !1360, line: 925, baseType: !87, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !3383, file: !1360, line: 939, baseType: !87, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3383, file: !1360, line: 941, baseType: !87, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !3383, file: !1360, line: 944, baseType: !87, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !3383, file: !1360, line: 956, baseType: !87, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !3383, file: !1360, line: 962, baseType: !87, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !3383, file: !1360, line: 966, baseType: !87, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !3383, file: !1360, line: 969, baseType: !151, size: 64, offset: 10176)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !3383, file: !1360, line: 971, baseType: !3610, size: 448, offset: 10240)
!3610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !3611, line: 25, size: 448, elements: !3612)
!3611 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!3612 = !{!3613, !3614, !3619}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3610, file: !3611, line: 26, baseType: !151, size: 64)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3610, file: !3611, line: 27, baseType: !3615, size: 64, offset: 64)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DISubroutineType(types: !3617)
!3617 = !{!464, !3618}
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3619 = !DIDerivedType(tag: DW_TAG_member, scope: !3610, file: !3611, line: 28, baseType: !3620, size: 320, offset: 128)
!3620 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3610, file: !3611, line: 28, size: 320, elements: !3621)
!3621 = !{!3622, !3632, !3662}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3620, file: !3611, line: 37, baseType: !3623, size: 320)
!3623 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3620, file: !3611, line: 30, size: 320, elements: !3624)
!3624 = !{!3625, !3627, !3628, !3629, !3630, !3631}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3623, file: !3611, line: 31, baseType: !3626, size: 64)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3623, file: !3611, line: 32, baseType: !251, size: 32, offset: 64)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3623, file: !3611, line: 33, baseType: !251, size: 32, offset: 96)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3623, file: !3611, line: 34, baseType: !251, size: 32, offset: 128)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3623, file: !3611, line: 35, baseType: !20, size: 64, offset: 192)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3623, file: !3611, line: 36, baseType: !3626, size: 64, offset: 256)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3620, file: !3611, line: 47, baseType: !3633, size: 192)
!3633 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3620, file: !3611, line: 39, size: 192, elements: !3634)
!3634 = !{!3635, !3636, !3642, !3661}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3633, file: !3611, line: 40, baseType: !1636, size: 32)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3633, file: !3611, line: 41, baseType: !3637, size: 32, offset: 32)
!3637 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !3611, line: 16, baseType: !87, size: 32, elements: !3638)
!3638 = !{!3639, !3640, !3641}
!3639 = !DIEnumerator(name: "TT_NONE", value: 0)
!3640 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!3641 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!3642 = !DIDerivedType(tag: DW_TAG_member, scope: !3633, file: !3611, line: 42, baseType: !3643, size: 64, offset: 64)
!3643 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3633, file: !3611, line: 42, size: 64, elements: !3644)
!3644 = !{!3645, !3653}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3643, file: !3611, line: 43, baseType: !3646, size: 64)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3648, line: 7, size: 128, elements: !3649)
!3648 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3649 = !{!3650, !3652}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3647, file: !3648, line: 8, baseType: !3651, size: 64)
!3651 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !194, line: 93, baseType: !342)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3647, file: !3648, line: 9, baseType: !342, size: 64, offset: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3643, file: !3611, line: 44, baseType: !3654, size: 64)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3656, line: 7, size: 64, elements: !3657)
!3656 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3657 = !{!3658, !3660}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3655, file: !3656, line: 8, baseType: !3659, size: 32)
!3659 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3656, line: 5, baseType: !671)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3655, file: !3656, line: 9, baseType: !671, size: 32, offset: 32)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3633, file: !3611, line: 46, baseType: !20, size: 64, offset: 128)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3620, file: !3611, line: 55, baseType: !3663, size: 256)
!3663 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3620, file: !3611, line: 49, size: 256, elements: !3664)
!3664 = !{!3665, !3668, !3669, !3670, !3671}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3663, file: !3611, line: 50, baseType: !3666, size: 64)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !3611, line: 14, flags: DIFlagFwdDecl)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3663, file: !3611, line: 51, baseType: !12, size: 32, offset: 64)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3663, file: !3611, line: 52, baseType: !12, size: 32, offset: 96)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3663, file: !3611, line: 53, baseType: !151, size: 64, offset: 128)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3663, file: !3611, line: 54, baseType: !151, size: 64, offset: 192)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3383, file: !1360, line: 973, baseType: !3673, size: 32, offset: 10688)
!3673 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !19, line: 27, baseType: !3674)
!3674 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !194, line: 28, baseType: !12)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !3383, file: !1360, line: 974, baseType: !3673, size: 32, offset: 10720)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !3383, file: !1360, line: 978, baseType: !151, size: 64, offset: 10752)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !3383, file: !1360, line: 987, baseType: !3382, size: 64, offset: 10816)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3383, file: !1360, line: 990, baseType: !3382, size: 64, offset: 10880)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3383, file: !1360, line: 995, baseType: !162, size: 128, offset: 10944)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3383, file: !1360, line: 996, baseType: !162, size: 128, offset: 11072)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3383, file: !1360, line: 997, baseType: !3382, size: 64, offset: 11200)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !3383, file: !1360, line: 1005, baseType: !162, size: 128, offset: 11264)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !3383, file: !1360, line: 1006, baseType: !162, size: 128, offset: 11392)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !3383, file: !1360, line: 1009, baseType: !580, size: 64, offset: 11520)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !3383, file: !1360, line: 1010, baseType: !3686, size: 512, offset: 11584)
!3686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !598, size: 512, elements: !603)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !3383, file: !1360, line: 1011, baseType: !162, size: 128, offset: 12096)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !3383, file: !1360, line: 1012, baseType: !162, size: 128, offset: 12224)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !3383, file: !1360, line: 1014, baseType: !2756, size: 64, offset: 12352)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !3383, file: !1360, line: 1017, baseType: !2890, size: 64, offset: 12416)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !3383, file: !1360, line: 1020, baseType: !2890, size: 64, offset: 12480)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !3383, file: !1360, line: 1023, baseType: !89, size: 64, offset: 12544)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3383, file: !1360, line: 1025, baseType: !20, size: 64, offset: 12608)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3383, file: !1360, line: 1026, baseType: !20, size: 64, offset: 12672)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3383, file: !1360, line: 1031, baseType: !20, size: 64, offset: 12736)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3383, file: !1360, line: 1032, baseType: !3697, size: 192, offset: 12800)
!3697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1360, line: 324, size: 192, elements: !3698)
!3698 = !{!3699, !3700, !3701}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3697, file: !1360, line: 326, baseType: !20, size: 64)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3697, file: !1360, line: 327, baseType: !20, size: 64, offset: 64)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3697, file: !1360, line: 328, baseType: !546, size: 32, offset: 128)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3383, file: !1360, line: 1041, baseType: !151, size: 64, offset: 12992)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3383, file: !1360, line: 1042, baseType: !151, size: 64, offset: 13056)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !3383, file: !1360, line: 1045, baseType: !20, size: 64, offset: 13120)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !3383, file: !1360, line: 1048, baseType: !20, size: 64, offset: 13184)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3383, file: !1360, line: 1051, baseType: !151, size: 64, offset: 13248)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3383, file: !1360, line: 1052, baseType: !151, size: 64, offset: 13312)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3383, file: !1360, line: 1055, baseType: !3709, size: 640, offset: 13376)
!3709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3710, line: 132, size: 640, elements: !3711)
!3710 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3711 = !{!3712, !3718, !3719}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3709, file: !3710, line: 133, baseType: !3713, size: 576)
!3713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3714, size: 576, elements: !430)
!3714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3710, line: 117, size: 192, elements: !3715)
!3715 = !{!3716, !3717}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3714, file: !3710, line: 118, baseType: !20, size: 64)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3714, file: !3710, line: 119, baseType: !1645, size: 128, offset: 64)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3709, file: !3710, line: 134, baseType: !87, size: 32, offset: 576)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3709, file: !3710, line: 135, baseType: !87, size: 32, offset: 608)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !3383, file: !1360, line: 1058, baseType: !3721, size: 448, offset: 14016)
!3721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3710, line: 144, size: 448, elements: !3722)
!3722 = !{!3723, !3724, !3725}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3721, file: !3710, line: 145, baseType: !519, size: 128, align: 64)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3721, file: !3710, line: 146, baseType: !541, size: 256, offset: 128)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3721, file: !3710, line: 147, baseType: !87, size: 32, offset: 384)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !3383, file: !1360, line: 1064, baseType: !636, size: 64, offset: 14464)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !3383, file: !1360, line: 1067, baseType: !636, size: 64, offset: 14528)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3383, file: !1360, line: 1070, baseType: !636, size: 64, offset: 14592)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !3383, file: !1360, line: 1074, baseType: !663, size: 64, offset: 14656)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3383, file: !1360, line: 1084, baseType: !3, size: 128, offset: 14720)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !3383, file: !1360, line: 1086, baseType: !3732, size: 64, offset: 14848)
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1360, line: 55, flags: DIFlagFwdDecl)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !3383, file: !1360, line: 1089, baseType: !3735, size: 64, offset: 14912)
!3735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3736, line: 12, size: 64, elements: !3737)
!3736 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3737 = !{!3738}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3735, file: !3736, line: 13, baseType: !3739, size: 64)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3736, line: 8, flags: DIFlagFwdDecl)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !3383, file: !1360, line: 1090, baseType: !3742, size: 128, offset: 14976)
!3742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3743, line: 13, size: 128, elements: !3744)
!3743 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3744 = !{!3745}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3742, file: !3743, line: 14, baseType: !162, size: 128)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3383, file: !1360, line: 1097, baseType: !3747, size: 64, offset: 15104)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1360, line: 50, flags: DIFlagFwdDecl)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3383, file: !1360, line: 1100, baseType: !3750, size: 64, offset: 15168)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1360, line: 1100, flags: DIFlagFwdDecl)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !3383, file: !1360, line: 1103, baseType: !3753, size: 64, offset: 15232)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1360, line: 53, flags: DIFlagFwdDecl)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3383, file: !1360, line: 1107, baseType: !3756, size: 64, offset: 15296)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3758, line: 35, flags: DIFlagFwdDecl)
!3758 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3383, file: !1360, line: 1110, baseType: !3760, size: 64, offset: 15360)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3762, line: 93, size: 8768, elements: !3763)
!3762 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3763 = !{!3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3811, !3820, !3821, !3823, !3824, !3825, !3828, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3866, !3867, !3874, !3884, !3887, !3888, !3891, !3892, !3893, !3894, !3895, !3896}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3761, file: !3762, line: 94, baseType: !585, size: 32)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3761, file: !3762, line: 95, baseType: !66, size: 32, offset: 32)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3761, file: !3762, line: 96, baseType: !12, size: 32, offset: 64)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3761, file: !3762, line: 97, baseType: !12, size: 32, offset: 96)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3761, file: !3762, line: 98, baseType: !162, size: 128, offset: 128)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3761, file: !3762, line: 100, baseType: !607, size: 192, offset: 256)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3761, file: !3762, line: 103, baseType: !3382, size: 64, offset: 448)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3761, file: !3762, line: 106, baseType: !3772, size: 192, offset: 512)
!3772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !833, line: 32, size: 192, elements: !3773)
!3773 = !{!3774, !3775}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3772, file: !833, line: 33, baseType: !162, size: 128)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3772, file: !833, line: 34, baseType: !3776, size: 64, offset: 128)
!3776 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3777, line: 25, baseType: !3778)
!3777 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3778 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3777, line: 23, size: 64, elements: !3779)
!3779 = !{!3780}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3778, file: !3777, line: 24, baseType: !1064, size: 64)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3761, file: !3762, line: 109, baseType: !594, size: 64, offset: 704)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3761, file: !3762, line: 112, baseType: !12, size: 32, offset: 768)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3761, file: !3762, line: 114, baseType: !12, size: 32, offset: 800)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3761, file: !3762, line: 115, baseType: !3382, size: 64, offset: 832)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3761, file: !3762, line: 118, baseType: !12, size: 32, offset: 896)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3761, file: !3762, line: 119, baseType: !87, size: 32, offset: 928)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3761, file: !3762, line: 121, baseType: !3788, size: 64, offset: 960)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3762, line: 80, size: 448, elements: !3790)
!3790 = !{!3791, !3792, !3798}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3789, file: !3762, line: 81, baseType: !66, size: 32)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3789, file: !3762, line: 82, baseType: !3793, size: 128, offset: 64)
!3793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3762, line: 75, size: 128, elements: !3794)
!3794 = !{!3795, !3796}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3793, file: !3762, line: 76, baseType: !3382, size: 64)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3793, file: !3762, line: 77, baseType: !3797, size: 64, offset: 64)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3789, file: !3762, line: 83, baseType: !1326, size: 256, offset: 192)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3761, file: !3762, line: 132, baseType: !87, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3761, file: !3762, line: 133, baseType: !87, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3761, file: !3762, line: 138, baseType: !87, size: 32, offset: 1056)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3761, file: !3762, line: 139, baseType: !162, size: 128, offset: 1088)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3761, file: !3762, line: 142, baseType: !1586, size: 512, offset: 1216)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3761, file: !3762, line: 143, baseType: !1566, size: 64, offset: 1728)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3761, file: !3762, line: 150, baseType: !3806, size: 256, offset: 1792)
!3806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3807, size: 256, elements: !1084)
!3807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3762, line: 38, size: 128, elements: !3808)
!3808 = !{!3809, !3810}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3807, file: !3762, line: 39, baseType: !20, size: 64)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3807, file: !3762, line: 40, baseType: !20, size: 64, offset: 64)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3761, file: !3762, line: 156, baseType: !3812, size: 192, offset: 2048)
!3812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3762, line: 66, size: 192, elements: !3813)
!3813 = !{!3814}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3812, file: !3762, line: 67, baseType: !3815, size: 192)
!3815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3762, line: 47, size: 192, elements: !3816)
!3816 = !{!3817, !3818, !3819}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3815, file: !3762, line: 48, baseType: !534, size: 64)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3815, file: !3762, line: 49, baseType: !534, size: 64, offset: 64)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3815, file: !3762, line: 50, baseType: !534, size: 64, offset: 128)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3761, file: !3762, line: 160, baseType: !3709, size: 640, offset: 2240)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3761, file: !3762, line: 163, baseType: !3822, size: 256, offset: 2880)
!3822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !580, size: 256, elements: !603)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3761, file: !3762, line: 169, baseType: !580, size: 64, offset: 3136)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3761, file: !3762, line: 172, baseType: !12, size: 32, offset: 3200)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3761, file: !3762, line: 174, baseType: !3826, size: 64, offset: 3264)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3762, line: 174, flags: DIFlagFwdDecl)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3761, file: !3762, line: 185, baseType: !3829, size: 64, offset: 3328)
!3829 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !224, line: 860, baseType: !3830)
!3830 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !224, line: 853, size: 64, elements: !3831)
!3831 = !{!3832, !3833}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3830, file: !224, line: 858, baseType: !223, size: 32)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3830, file: !224, line: 859, baseType: !46, size: 32, offset: 32)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3761, file: !3762, line: 186, baseType: !20, size: 64, offset: 3392)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3761, file: !3762, line: 186, baseType: !20, size: 64, offset: 3456)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3761, file: !3762, line: 186, baseType: !20, size: 64, offset: 3520)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3761, file: !3762, line: 186, baseType: !20, size: 64, offset: 3584)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3761, file: !3762, line: 187, baseType: !20, size: 64, offset: 3648)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3761, file: !3762, line: 188, baseType: !20, size: 64, offset: 3712)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3761, file: !3762, line: 189, baseType: !3697, size: 192, offset: 3776)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3761, file: !3762, line: 190, baseType: !151, size: 64, offset: 3968)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3761, file: !3762, line: 190, baseType: !151, size: 64, offset: 4032)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3761, file: !3762, line: 190, baseType: !151, size: 64, offset: 4096)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3761, file: !3762, line: 190, baseType: !151, size: 64, offset: 4160)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3761, file: !3762, line: 191, baseType: !151, size: 64, offset: 4224)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3761, file: !3762, line: 191, baseType: !151, size: 64, offset: 4288)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3761, file: !3762, line: 191, baseType: !151, size: 64, offset: 4352)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3761, file: !3762, line: 191, baseType: !151, size: 64, offset: 4416)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3761, file: !3762, line: 192, baseType: !151, size: 64, offset: 4480)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3761, file: !3762, line: 192, baseType: !151, size: 64, offset: 4544)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3761, file: !3762, line: 192, baseType: !151, size: 64, offset: 4608)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3761, file: !3762, line: 192, baseType: !151, size: 64, offset: 4672)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3761, file: !3762, line: 193, baseType: !151, size: 64, offset: 4736)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3761, file: !3762, line: 193, baseType: !151, size: 64, offset: 4800)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3761, file: !3762, line: 194, baseType: !3856, size: 448, offset: 4864)
!3856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3857, line: 12, size: 448, elements: !3858)
!3857 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3858 = !{!3859, !3860, !3861, !3862, !3863, !3864, !3865}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3856, file: !3857, line: 15, baseType: !20, size: 64)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3856, file: !3857, line: 17, baseType: !20, size: 64, offset: 64)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3856, file: !3857, line: 19, baseType: !20, size: 64, offset: 128)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3856, file: !3857, line: 21, baseType: !20, size: 64, offset: 192)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3856, file: !3857, line: 29, baseType: !20, size: 64, offset: 256)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3856, file: !3857, line: 35, baseType: !20, size: 64, offset: 320)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3856, file: !3857, line: 44, baseType: !20, size: 64, offset: 384)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3761, file: !3762, line: 202, baseType: !24, size: 64, offset: 5312)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3761, file: !3762, line: 213, baseType: !3868, size: 2048, offset: 5376)
!3868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3869, size: 2048, elements: !5)
!3869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3870, line: 43, size: 128, elements: !3871)
!3870 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3871 = !{!3872, !3873}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3869, file: !3870, line: 44, baseType: !476, size: 64)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3869, file: !3870, line: 45, baseType: !476, size: 64, offset: 64)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3761, file: !3762, line: 216, baseType: !3875, size: 448, offset: 7424)
!3875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3762, line: 30, size: 448, elements: !3876)
!3876 = !{!3877, !3878, !3879, !3880, !3881, !3882, !3883}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3875, file: !3762, line: 31, baseType: !12, size: 32)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3875, file: !3762, line: 32, baseType: !464, size: 64, offset: 64)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3875, file: !3762, line: 33, baseType: !151, size: 64, offset: 128)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3875, file: !3762, line: 34, baseType: !20, size: 64, offset: 192)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3875, file: !3762, line: 34, baseType: !20, size: 64, offset: 256)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3875, file: !3762, line: 35, baseType: !151, size: 64, offset: 320)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3875, file: !3762, line: 35, baseType: !151, size: 64, offset: 384)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3761, file: !3762, line: 219, baseType: !3885, size: 64, offset: 7872)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3762, line: 219, flags: DIFlagFwdDecl)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3761, file: !3762, line: 222, baseType: !87, size: 32, offset: 7936)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3761, file: !3762, line: 223, baseType: !3889, size: 64, offset: 8000)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3762, line: 223, flags: DIFlagFwdDecl)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3761, file: !3762, line: 230, baseType: !745, size: 8, offset: 8064)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3761, file: !3762, line: 231, baseType: !714, size: 16, offset: 8080)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3761, file: !3762, line: 232, baseType: !714, size: 16, offset: 8096)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3761, file: !3762, line: 234, baseType: !2214, size: 64, offset: 8128)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3761, file: !3762, line: 237, baseType: !541, size: 256, offset: 8192)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3761, file: !3762, line: 243, baseType: !686, size: 320, offset: 8448)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !3383, file: !1360, line: 1111, baseType: !3898, size: 64, offset: 15424)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3762, line: 20, size: 16640, elements: !3900)
!3900 = !{!3901, !3902, !3903, !3904}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3899, file: !3762, line: 21, baseType: !46, size: 32)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3899, file: !3762, line: 22, baseType: !585, size: 32, offset: 32)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3899, file: !3762, line: 23, baseType: !607, size: 192, offset: 64)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3899, file: !3762, line: 24, baseType: !3905, size: 16384, offset: 256)
!3905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3906, size: 16384, elements: !434)
!3906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !833, line: 51, size: 256, elements: !3907)
!3907 = !{!3908}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3906, file: !833, line: 52, baseType: !3909, size: 256)
!3909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !833, line: 37, size: 256, elements: !3910)
!3910 = !{!3911, !3918, !3919, !3923}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3909, file: !833, line: 39, baseType: !3912, size: 64)
!3912 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3913, line: 83, baseType: !3914)
!3913 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3913, line: 82, baseType: !3916)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{null, !12}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3909, file: !833, line: 40, baseType: !151, size: 64, offset: 64)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3909, file: !833, line: 46, baseType: !3920, size: 64, offset: 128)
!3920 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3913, line: 86, baseType: !3921)
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3922, size: 64)
!3922 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3913, line: 85, baseType: !2996)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3909, file: !833, line: 48, baseType: !3776, size: 64, offset: 192)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3383, file: !1360, line: 1112, baseType: !3776, size: 64, offset: 15488)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !3383, file: !1360, line: 1113, baseType: !3776, size: 64, offset: 15552)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !3383, file: !1360, line: 1115, baseType: !3776, size: 64, offset: 15616)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !3383, file: !1360, line: 1116, baseType: !3772, size: 192, offset: 15680)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !3383, file: !1360, line: 1117, baseType: !151, size: 64, offset: 15872)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !3383, file: !1360, line: 1118, baseType: !474, size: 64, offset: 15936)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !3383, file: !1360, line: 1119, baseType: !87, size: 32, offset: 16000)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !3383, file: !1360, line: 1121, baseType: !522, size: 64, offset: 16064)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !3383, file: !1360, line: 1125, baseType: !3933, size: 64, offset: 16128)
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3934, size: 64)
!3934 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1360, line: 43, flags: DIFlagFwdDecl)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !3383, file: !1360, line: 1127, baseType: !187, size: 32, offset: 16192)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !3383, file: !1360, line: 1128, baseType: !87, size: 32, offset: 16224)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !3383, file: !1360, line: 1130, baseType: !3938, size: 128, offset: 16256)
!3938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3939, line: 37, size: 128, elements: !3940)
!3939 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3940 = !{!3941, !3942, !3943}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3938, file: !3939, line: 38, baseType: !12, size: 32)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3938, file: !3939, line: 39, baseType: !66, size: 32, offset: 32)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3938, file: !3939, line: 40, baseType: !3944, size: 64, offset: 64)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3939, line: 24, flags: DIFlagFwdDecl)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !3383, file: !1360, line: 1131, baseType: !3947, size: 256, offset: 16384)
!3947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3948, line: 12, size: 256, elements: !3949)
!3948 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3949 = !{!3950, !3951, !3952, !3953}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3947, file: !3948, line: 13, baseType: !319, size: 64)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3947, file: !3948, line: 14, baseType: !151, size: 64, offset: 64)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3947, file: !3948, line: 15, baseType: !151, size: 64, offset: 128)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3947, file: !3948, line: 16, baseType: !745, size: 8, offset: 192)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !3383, file: !1360, line: 1134, baseType: !20, size: 64, offset: 16640)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !3383, file: !1360, line: 1135, baseType: !20, size: 64, offset: 16704)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !3383, file: !1360, line: 1138, baseType: !46, size: 32, offset: 16768)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !3383, file: !1360, line: 1141, baseType: !546, size: 32, offset: 16800)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !3383, file: !1360, line: 1143, baseType: !3959, size: 64, offset: 16832)
!3959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1360, line: 735, size: 64, elements: !3960)
!3960 = !{!3961}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3959, file: !1360, line: 736, baseType: !3962, size: 64)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !3383, file: !1360, line: 1147, baseType: !1648, size: 128, offset: 16896)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !3383, file: !1360, line: 1149, baseType: !3382, size: 64, offset: 17024)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !3383, file: !1360, line: 1151, baseType: !3966, size: 64, offset: 17088)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1360, line: 1151, flags: DIFlagFwdDecl)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !3383, file: !1360, line: 1188, baseType: !89, size: 64, offset: 17152)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !3383, file: !1360, line: 1191, baseType: !3970, size: 64, offset: 17216)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !3972, line: 550, size: 128, elements: !3973)
!3972 = !DIFile(filename: "./include/linux/bio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48d164cf34dda85459af1fe5d2b8d08f")
!3973 = !{!3974, !3975}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3971, file: !3972, line: 551, baseType: !100, size: 64)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !3971, file: !3972, line: 552, baseType: !100, size: 64, offset: 64)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !3383, file: !1360, line: 1194, baseType: !3977, size: 64, offset: 17280)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !29, line: 976, size: 320, elements: !3979)
!3979 = !{!3980, !3981, !3982, !3983, !3984, !3985, !3986}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "mq_list", scope: !3978, file: !29, line: 977, baseType: !968, size: 64)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "cached_rq", scope: !3978, file: !29, line: 980, baseType: !968, size: 64, offset: 64)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ios", scope: !3978, file: !29, line: 981, baseType: !39, size: 16, offset: 128)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "rq_count", scope: !3978, file: !29, line: 983, baseType: !39, size: 16, offset: 144)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "multiple_queues", scope: !3978, file: !29, line: 985, baseType: !745, size: 8, offset: 160)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "has_elevator", scope: !3978, file: !29, line: 986, baseType: !745, size: 8, offset: 168)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !3978, file: !29, line: 988, baseType: !162, size: 128, offset: 192)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !3383, file: !1360, line: 1197, baseType: !3988, size: 64, offset: 17344)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1360, line: 61, flags: DIFlagFwdDecl)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !3383, file: !1360, line: 1199, baseType: !2128, size: 64, offset: 17408)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !3383, file: !1360, line: 1202, baseType: !3992, size: 64, offset: 17472)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1360, line: 48, flags: DIFlagFwdDecl)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !3383, file: !1360, line: 1205, baseType: !151, size: 64, offset: 17536)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !3383, file: !1360, line: 1206, baseType: !3996, size: 64, offset: 17600)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !833, line: 14, baseType: !3998)
!3998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !833, line: 12, size: 384, elements: !3999)
!3999 = !{!4000}
!4000 = !DIDerivedType(tag: DW_TAG_member, scope: !3998, file: !833, line: 13, baseType: !4001, size: 384)
!4001 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3998, file: !833, line: 13, size: 384, elements: !4002)
!4002 = !{!4003, !4004, !4005, !4006}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4001, file: !833, line: 13, baseType: !12, size: 32)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4001, file: !833, line: 13, baseType: !12, size: 32, offset: 32)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4001, file: !833, line: 13, baseType: !12, size: 32, offset: 64)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4001, file: !833, line: 13, baseType: !4007, size: 256, offset: 128)
!4007 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4008, line: 37, size: 256, elements: !4009)
!4008 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4009 = !{!4010, !4015, !4028, !4034, !4043, !4070, !4075}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4007, file: !4008, line: 42, baseType: !4011, size: 64)
!4011 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4007, file: !4008, line: 39, size: 64, elements: !4012)
!4012 = !{!4013, !4014}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4011, file: !4008, line: 40, baseType: !3674, size: 32)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4011, file: !4008, line: 41, baseType: !193, size: 32, offset: 32)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4007, file: !4008, line: 50, baseType: !4016, size: 192)
!4016 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4007, file: !4008, line: 45, size: 192, elements: !4017)
!4017 = !{!4018, !4020, !4021, !4027}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4016, file: !4008, line: 46, baseType: !4019, size: 32)
!4019 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !194, line: 95, baseType: !12)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4016, file: !4008, line: 47, baseType: !12, size: 32, offset: 32)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4016, file: !4008, line: 48, baseType: !4022, size: 64, offset: 64)
!4022 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4008, line: 11, baseType: !4023)
!4023 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4008, line: 8, size: 64, elements: !4024)
!4024 = !{!4025, !4026}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4023, file: !4008, line: 9, baseType: !12, size: 32)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4023, file: !4008, line: 10, baseType: !89, size: 64)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4016, file: !4008, line: 49, baseType: !12, size: 32, offset: 128)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4007, file: !4008, line: 57, baseType: !4029, size: 128)
!4029 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4007, file: !4008, line: 53, size: 128, elements: !4030)
!4030 = !{!4031, !4032, !4033}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4029, file: !4008, line: 54, baseType: !3674, size: 32)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4029, file: !4008, line: 55, baseType: !193, size: 32, offset: 32)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4029, file: !4008, line: 56, baseType: !4022, size: 64, offset: 64)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4007, file: !4008, line: 66, baseType: !4035, size: 256)
!4035 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4007, file: !4008, line: 60, size: 256, elements: !4036)
!4036 = !{!4037, !4038, !4039, !4040, !4042}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4035, file: !4008, line: 61, baseType: !3674, size: 32)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4035, file: !4008, line: 62, baseType: !193, size: 32, offset: 32)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4035, file: !4008, line: 63, baseType: !12, size: 32, offset: 64)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4035, file: !4008, line: 64, baseType: !4041, size: 64, offset: 128)
!4041 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !194, line: 94, baseType: !463)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4035, file: !4008, line: 65, baseType: !4041, size: 64, offset: 192)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4007, file: !4008, line: 105, baseType: !4044, size: 256)
!4044 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4007, file: !4008, line: 69, size: 256, elements: !4045)
!4045 = !{!4046, !4047}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4044, file: !4008, line: 70, baseType: !89, size: 64)
!4047 = !DIDerivedType(tag: DW_TAG_member, scope: !4044, file: !4008, line: 79, baseType: !4048, size: 192, offset: 64)
!4048 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4044, file: !4008, line: 79, size: 192, elements: !4049)
!4049 = !{!4050, !4051, !4052, !4059, !4064}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4048, file: !4008, line: 81, baseType: !12, size: 32)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4048, file: !4008, line: 86, baseType: !714, size: 16)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4048, file: !4008, line: 92, baseType: !4053, size: 192)
!4053 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4048, file: !4008, line: 88, size: 192, elements: !4054)
!4054 = !{!4055, !4057, !4058}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4053, file: !4008, line: 89, baseType: !4056, size: 64)
!4056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !1632)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4053, file: !4008, line: 90, baseType: !89, size: 64, offset: 64)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4053, file: !4008, line: 91, baseType: !89, size: 64, offset: 128)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4048, file: !4008, line: 97, baseType: !4060, size: 96)
!4060 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4048, file: !4008, line: 94, size: 96, elements: !4061)
!4061 = !{!4062, !4063}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4060, file: !4008, line: 95, baseType: !4056, size: 64)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4060, file: !4008, line: 96, baseType: !107, size: 32, offset: 64)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4048, file: !4008, line: 103, baseType: !4065, size: 128)
!4065 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4048, file: !4008, line: 99, size: 128, elements: !4066)
!4066 = !{!4067, !4068, !4069}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4065, file: !4008, line: 100, baseType: !151, size: 64)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4065, file: !4008, line: 101, baseType: !107, size: 32, offset: 64)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4065, file: !4008, line: 102, baseType: !107, size: 32, offset: 96)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4007, file: !4008, line: 111, baseType: !4071, size: 128)
!4071 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4007, file: !4008, line: 108, size: 128, elements: !4072)
!4072 = !{!4073, !4074}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4071, file: !4008, line: 109, baseType: !464, size: 64)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4071, file: !4008, line: 110, baseType: !12, size: 32, offset: 64)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4007, file: !4008, line: 118, baseType: !4076, size: 128)
!4076 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4007, file: !4008, line: 114, size: 128, elements: !4077)
!4077 = !{!4078, !4079, !4080}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4076, file: !4008, line: 115, baseType: !89, size: 64)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4076, file: !4008, line: 116, baseType: !12, size: 32, offset: 64)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4076, file: !4008, line: 117, baseType: !87, size: 32, offset: 96)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3383, file: !1360, line: 1208, baseType: !3856, size: 448, offset: 17664)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !3383, file: !1360, line: 1215, baseType: !20, size: 64, offset: 18112)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !3383, file: !1360, line: 1217, baseType: !20, size: 64, offset: 18176)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !3383, file: !1360, line: 1219, baseType: !20, size: 64, offset: 18240)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !3383, file: !1360, line: 1223, baseType: !4086, size: 64, offset: 18304)
!4086 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4087, line: 99, baseType: !4088)
!4087 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4088 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4087, line: 99, size: 64, elements: !4089)
!4089 = !{!4090}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4088, file: !4087, line: 99, baseType: !1064, size: 64)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !3383, file: !1360, line: 1225, baseType: !223, size: 32, offset: 18368)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !3383, file: !1360, line: 1226, baseType: !12, size: 32, offset: 18400)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !3383, file: !1360, line: 1227, baseType: !12, size: 32, offset: 18432)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !3383, file: !1360, line: 1231, baseType: !4095, size: 64, offset: 18496)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1360, line: 1231, flags: DIFlagFwdDecl)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !3383, file: !1360, line: 1233, baseType: !162, size: 128, offset: 18560)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !3383, file: !1360, line: 1240, baseType: !4099, size: 64, offset: 18688)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1360, line: 62, flags: DIFlagFwdDecl)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !3383, file: !1360, line: 1242, baseType: !4102, size: 64, offset: 18752)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1360, line: 1242, flags: DIFlagFwdDecl)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !3383, file: !1360, line: 1244, baseType: !162, size: 128, offset: 18816)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !3383, file: !1360, line: 1245, baseType: !4106, size: 64, offset: 18944)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1360, line: 51, flags: DIFlagFwdDecl)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !3383, file: !1360, line: 1246, baseType: !541, size: 256, offset: 19008)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !3383, file: !1360, line: 1247, baseType: !87, size: 32, offset: 19264)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !3383, file: !1360, line: 1250, baseType: !4111, size: 64, offset: 19328)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1360, line: 57, flags: DIFlagFwdDecl)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !3383, file: !1360, line: 1251, baseType: !541, size: 256, offset: 19392)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !3383, file: !1360, line: 1252, baseType: !162, size: 128, offset: 19648)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !3383, file: !1360, line: 1259, baseType: !2511, size: 64, offset: 19776)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !3383, file: !1360, line: 1260, baseType: !714, size: 16, offset: 19840)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !3383, file: !1360, line: 1261, baseType: !714, size: 16, offset: 19856)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !3383, file: !1360, line: 1314, baseType: !4119, size: 64, offset: 19904)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4121, line: 62, size: 256, align: 256, elements: !4122)
!4121 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4122 = !{!4123, !4124, !4125, !4126, !4127, !4128, !4129}
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4120, file: !4121, line: 75, baseType: !107, size: 32)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4120, file: !4121, line: 90, baseType: !107, size: 32, offset: 32)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4120, file: !4121, line: 112, baseType: !22, size: 64, offset: 64)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4120, file: !4121, line: 132, baseType: !107, size: 32, offset: 128)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4120, file: !4121, line: 140, baseType: !107, size: 32, offset: 160)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4120, file: !4121, line: 149, baseType: !107, size: 32, offset: 192)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4120, file: !4121, line: 154, baseType: !4130, offset: 224)
!4130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !622)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !3383, file: !1360, line: 1315, baseType: !251, size: 32, offset: 19968)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !3383, file: !1360, line: 1316, baseType: !251, size: 32, offset: 20000)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !3383, file: !1360, line: 1321, baseType: !151, size: 64, offset: 20032)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3383, file: !1360, line: 1325, baseType: !12, size: 32, offset: 20096)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !3383, file: !1360, line: 1326, baseType: !12, size: 32, offset: 20128)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !3383, file: !1360, line: 1327, baseType: !12, size: 32, offset: 20160)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !3383, file: !1360, line: 1328, baseType: !12, size: 32, offset: 20192)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !3383, file: !1360, line: 1329, baseType: !519, size: 128, align: 64, offset: 20224)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !3383, file: !1360, line: 1332, baseType: !4140, size: 128, offset: 20352)
!4140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4141, line: 51, size: 128, elements: !4142)
!4141 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4142 = !{!4143, !4148, !4149}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4140, file: !4141, line: 60, baseType: !4144, size: 64)
!4144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4145, line: 7, size: 64, elements: !4146)
!4145 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4146 = !{!4147}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4144, file: !4145, line: 12, baseType: !1061, size: 64)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4140, file: !4141, line: 63, baseType: !745, size: 8, offset: 64)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4140, file: !4141, line: 70, baseType: !745, size: 8, offset: 72)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !3383, file: !1360, line: 1335, baseType: !2563, size: 64, offset: 20480)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !3383, file: !1360, line: 1337, baseType: !4152, size: 128, offset: 20544)
!4152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4141, line: 39, size: 128, elements: !4153)
!4153 = !{!4154, !4155, !4156}
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4152, file: !4141, line: 40, baseType: !146, size: 64)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4152, file: !4141, line: 42, baseType: !107, size: 32, offset: 64)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4152, file: !4141, line: 43, baseType: !107, size: 32, offset: 96)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !3383, file: !1360, line: 1340, baseType: !4158, size: 64, offset: 20672)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1360, line: 69, flags: DIFlagFwdDecl)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !3383, file: !1360, line: 1351, baseType: !12, size: 32, offset: 20736)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !3383, file: !1360, line: 1352, baseType: !12, size: 32, offset: 20768)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !3383, file: !1360, line: 1354, baseType: !151, size: 64, offset: 20800)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !3383, file: !1360, line: 1364, baseType: !20, size: 64, offset: 20864)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !3383, file: !1360, line: 1365, baseType: !20, size: 64, offset: 20928)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !3383, file: !1360, line: 1412, baseType: !151, size: 64, offset: 20992)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !3383, file: !1360, line: 1453, baseType: !27, size: 64, offset: 21056)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !3383, file: !1360, line: 1457, baseType: !4168, size: 64, offset: 21120)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4169, size: 64)
!4169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !2360, line: 61, size: 576, elements: !4170)
!4170 = !{!4171, !4178, !4197, !4200, !4201, !4234, !4244}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4169, file: !2360, line: 62, baseType: !4172, size: 32)
!4172 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !2360, line: 51, baseType: !87, size: 32, elements: !4173)
!4173 = !{!4174, !4175, !4176, !4177}
!4174 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!4175 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!4176 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!4177 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!4178 = !DIDerivedType(tag: DW_TAG_member, scope: !4169, file: !2360, line: 64, baseType: !4179, size: 192, offset: 64)
!4179 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4169, file: !2360, line: 64, size: 192, elements: !4180)
!4180 = !{!4181, !4192}
!4181 = !DIDerivedType(tag: DW_TAG_member, scope: !4179, file: !2360, line: 65, baseType: !4182, size: 192)
!4182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4179, file: !2360, line: 65, size: 192, elements: !4183)
!4183 = !{!4184, !4191}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4182, file: !2360, line: 66, baseType: !4185, size: 128)
!4185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4186, line: 50, size: 128, elements: !4187)
!4186 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4187 = !{!4188, !4189, !4190}
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4185, file: !4186, line: 52, baseType: !151, size: 64)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4185, file: !4186, line: 54, baseType: !87, size: 32, offset: 64)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4185, file: !4186, line: 55, baseType: !87, size: 32, offset: 96)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4182, file: !2360, line: 67, baseType: !151, size: 64, offset: 128)
!4192 = !DIDerivedType(tag: DW_TAG_member, scope: !4179, file: !2360, line: 70, baseType: !4193, size: 192)
!4193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4179, file: !2360, line: 70, size: 192, elements: !4194)
!4194 = !{!4195, !4196}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4193, file: !2360, line: 71, baseType: !519, size: 128, align: 64)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4193, file: !2360, line: 72, baseType: !151, size: 64, offset: 128)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4169, file: !2360, line: 76, baseType: !4198, size: 64, offset: 256)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !2360, line: 76, flags: DIFlagFwdDecl)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4169, file: !2360, line: 77, baseType: !151, size: 64, offset: 320)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4169, file: !2360, line: 79, baseType: !4202, size: 64, offset: 384)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4186, line: 25, size: 256, elements: !4204)
!4204 = !{!4205, !4211, !4215}
!4205 = !DIDerivedType(tag: DW_TAG_member, scope: !4203, file: !4186, line: 26, baseType: !4206, size: 128)
!4206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4203, file: !4186, line: 26, size: 128, elements: !4207)
!4207 = !{!4208, !4210}
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4206, file: !4186, line: 27, baseType: !4209, size: 128)
!4209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 128, elements: !5)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4206, file: !4186, line: 28, baseType: !4209, size: 128)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4203, file: !4186, line: 31, baseType: !4212, size: 64, offset: 128)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4214)
!4214 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4186, line: 23, flags: DIFlagFwdDecl)
!4215 = !DIDerivedType(tag: DW_TAG_member, scope: !4203, file: !4186, line: 33, baseType: !4216, size: 64, offset: 192)
!4216 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4203, file: !4186, line: 33, size: 64, elements: !4217)
!4217 = !{!4218, !4224, !4229}
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4216, file: !4186, line: 38, baseType: !4219, size: 64)
!4219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4216, file: !4186, line: 34, size: 64, elements: !4220)
!4220 = !{!4221, !4222, !4223}
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4219, file: !4186, line: 35, baseType: !671, size: 32)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4219, file: !4186, line: 36, baseType: !74, size: 8, offset: 32)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4219, file: !4186, line: 37, baseType: !74, size: 8, offset: 40)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4216, file: !4186, line: 42, baseType: !4225, size: 16)
!4225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4216, file: !4186, line: 39, size: 16, elements: !4226)
!4226 = !{!4227, !4228}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4225, file: !4186, line: 40, baseType: !74, size: 8)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4225, file: !4186, line: 41, baseType: !74, size: 8, offset: 8)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4216, file: !4186, line: 46, baseType: !4230, size: 16)
!4230 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4216, file: !4186, line: 43, size: 16, elements: !4231)
!4231 = !{!4232, !4233}
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4230, file: !4186, line: 44, baseType: !74, size: 8)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4230, file: !4186, line: 45, baseType: !74, size: 8, offset: 8)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4169, file: !2360, line: 81, baseType: !4235, size: 64, offset: 448)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !2360, line: 85, size: 384, elements: !4237)
!4237 = !{!4238, !4239, !4240, !4241, !4242, !4243}
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4236, file: !2360, line: 86, baseType: !4198, size: 64)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4236, file: !2360, line: 87, baseType: !151, size: 64, offset: 64)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4236, file: !2360, line: 88, baseType: !151, size: 64, offset: 128)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4236, file: !2360, line: 89, baseType: !151, size: 64, offset: 192)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4236, file: !2360, line: 90, baseType: !745, size: 8, offset: 256)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4236, file: !2360, line: 92, baseType: !4235, size: 64, offset: 320)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4169, file: !2360, line: 82, baseType: !87, size: 32, offset: 512)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !3383, file: !1360, line: 1463, baseType: !4246, offset: 21184)
!4246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1360, line: 739, elements: !137)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3383, file: !1360, line: 1470, baseType: !519, size: 128, align: 64, offset: 21184)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3383, file: !1360, line: 1471, baseType: !585, size: 32, offset: 21312)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !3383, file: !1360, line: 1472, baseType: !12, size: 32, offset: 21344)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !3383, file: !1360, line: 1474, baseType: !3382, size: 64, offset: 21376)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !3383, file: !1360, line: 1475, baseType: !1042, size: 320, offset: 21440)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !3383, file: !1360, line: 1478, baseType: !4253, size: 64, offset: 21760)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !4255, line: 49, size: 512, elements: !4256)
!4255 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!4256 = !{!4257, !4258, !4259, !4260, !4261, !4263, !4264, !4265, !4267}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4254, file: !4255, line: 50, baseType: !4253, size: 64)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4254, file: !4255, line: 51, baseType: !89, size: 64, offset: 64)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4254, file: !4255, line: 52, baseType: !151, size: 64, offset: 128)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4254, file: !4255, line: 53, baseType: !151, size: 64, offset: 192)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4254, file: !4255, line: 54, baseType: !4262, size: 64, offset: 256)
!4262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !4254, file: !4255, line: 56, baseType: !87, size: 32, offset: 320)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !4254, file: !4255, line: 58, baseType: !87, size: 32, offset: 352)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4254, file: !4255, line: 59, baseType: !4266, size: 64, offset: 384)
!4266 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !19, line: 159, baseType: !20)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !4254, file: !4255, line: 60, baseType: !1801, size: 64, offset: 448)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !3383, file: !1360, line: 1482, baseType: !585, size: 32, offset: 21824)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3383, file: !1360, line: 1489, baseType: !89, size: 64, offset: 21888)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !3383, file: !1360, line: 1504, baseType: !89, size: 64, offset: 21952)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !3383, file: !1360, line: 1505, baseType: !22, size: 64, offset: 22016)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !3383, file: !1360, line: 1506, baseType: !20, size: 64, offset: 22080)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !3383, file: !1360, line: 1507, baseType: !22, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !3383, file: !1360, line: 1508, baseType: !22, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !3383, file: !1360, line: 1509, baseType: !22, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !3383, file: !1360, line: 1510, baseType: !519, size: 128, align: 64, offset: 22208)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !3383, file: !1360, line: 1511, baseType: !12, size: 32, offset: 22336)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !3383, file: !1360, line: 1515, baseType: !4279, size: 64, offset: 22400)
!4279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !514, line: 56, size: 64, elements: !4280)
!4280 = !{!4281}
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4279, file: !514, line: 57, baseType: !517, size: 64)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !3383, file: !1360, line: 1518, baseType: !4279, size: 64, offset: 22464)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !3383, file: !1360, line: 1528, baseType: !519, size: 128, align: 64, offset: 22528)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3383, file: !1360, line: 1552, baseType: !4285, size: 35328, offset: 23040)
!4285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4286, line: 430, size: 35328, elements: !4287)
!4286 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4287 = !{!4288, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4317, !4318, !4319, !4320, !4321, !4322, !4325, !4326, !4327, !4328}
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4285, file: !4286, line: 432, baseType: !4289, size: 192)
!4289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4290, size: 192, elements: !430)
!4290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4291, line: 16, size: 64, elements: !4292)
!4291 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4292 = !{!4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305}
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4290, file: !4291, line: 17, baseType: !82, size: 16)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4290, file: !4291, line: 18, baseType: !82, size: 16, offset: 16)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4290, file: !4291, line: 19, baseType: !82, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4290, file: !4291, line: 19, baseType: !82, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4290, file: !4291, line: 19, baseType: !82, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4290, file: !4291, line: 19, baseType: !82, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4290, file: !4291, line: 19, baseType: !82, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4290, file: !4291, line: 20, baseType: !82, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4290, file: !4291, line: 20, baseType: !82, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4290, file: !4291, line: 20, baseType: !82, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4290, file: !4291, line: 20, baseType: !82, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4290, file: !4291, line: 20, baseType: !82, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4290, file: !4291, line: 20, baseType: !82, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4285, file: !4286, line: 436, baseType: !151, size: 64, offset: 192)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4285, file: !4286, line: 440, baseType: !39, size: 16, offset: 256)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4285, file: !4286, line: 441, baseType: !39, size: 16, offset: 272)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4285, file: !4286, line: 442, baseType: !39, size: 16, offset: 288)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4285, file: !4286, line: 443, baseType: !39, size: 16, offset: 304)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4285, file: !4286, line: 447, baseType: !151, size: 64, offset: 320)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4285, file: !4286, line: 448, baseType: !151, size: 64, offset: 384)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4285, file: !4286, line: 459, baseType: !4314, size: 256, offset: 448)
!4314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4315, size: 256, elements: !603)
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4316 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4286, line: 428, flags: DIFlagFwdDecl)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4285, file: !4286, line: 461, baseType: !151, size: 64, offset: 704)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4285, file: !4286, line: 463, baseType: !151, size: 64, offset: 768)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4285, file: !4286, line: 465, baseType: !151, size: 64, offset: 832)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4285, file: !4286, line: 466, baseType: !151, size: 64, offset: 896)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4285, file: !4286, line: 467, baseType: !151, size: 64, offset: 960)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4285, file: !4286, line: 473, baseType: !4323, size: 64, offset: 1024)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4286, line: 10, flags: DIFlagFwdDecl)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4285, file: !4286, line: 480, baseType: !151, size: 64, offset: 1088)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4285, file: !4286, line: 482, baseType: !87, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4285, file: !4286, line: 491, baseType: !251, size: 32, offset: 1184)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4285, file: !4286, line: 501, baseType: !4329, size: 33792, offset: 1536)
!4329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4330, line: 448, size: 33792, elements: !4331)
!4330 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4331 = !{!4332, !4333, !4334, !4496, !4497, !4503, !4504}
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4329, file: !4330, line: 461, baseType: !87, size: 32)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4329, file: !4330, line: 468, baseType: !151, size: 64, offset: 64)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4329, file: !4330, line: 476, baseType: !4335, size: 64, offset: 128)
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 64)
!4336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4330, line: 356, size: 33280, align: 512, elements: !4337)
!4337 = !{!4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347}
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4336, file: !4330, line: 358, baseType: !87, size: 32)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4336, file: !4330, line: 361, baseType: !87, size: 32, offset: 32)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4336, file: !4330, line: 364, baseType: !20, size: 64, offset: 64)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4336, file: !4330, line: 367, baseType: !20, size: 64, offset: 128)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4336, file: !4330, line: 370, baseType: !20, size: 64, offset: 192)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4336, file: !4330, line: 373, baseType: !87, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4336, file: !4330, line: 376, baseType: !87, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4336, file: !4330, line: 391, baseType: !87, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4336, file: !4330, line: 394, baseType: !87, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4336, file: !4330, line: 397, baseType: !4348, size: 32768, offset: 512)
!4348 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4330, line: 348, size: 32768, elements: !4349)
!4349 = !{!4350, !4365, !4402, !4479, !4492}
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4348, file: !4330, line: 349, baseType: !4351, size: 896)
!4351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4330, line: 12, size: 896, elements: !4352)
!4352 = !{!4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4364}
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4351, file: !4330, line: 13, baseType: !251, size: 32)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4351, file: !4330, line: 14, baseType: !251, size: 32, offset: 32)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4351, file: !4330, line: 15, baseType: !251, size: 32, offset: 64)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4351, file: !4330, line: 16, baseType: !251, size: 32, offset: 96)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4351, file: !4330, line: 17, baseType: !251, size: 32, offset: 128)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4351, file: !4330, line: 18, baseType: !251, size: 32, offset: 160)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4351, file: !4330, line: 19, baseType: !251, size: 32, offset: 192)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4351, file: !4330, line: 22, baseType: !4361, size: 640, offset: 224)
!4361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 640, elements: !4362)
!4362 = !{!4363}
!4363 = !DISubrange(count: 20)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4351, file: !4330, line: 25, baseType: !251, size: 32, offset: 864)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4348, file: !4330, line: 350, baseType: !4366, size: 4096, align: 128)
!4366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4330, line: 34, size: 4096, align: 128, elements: !4367)
!4367 = !{!4368, !4369, !4370, !4371, !4372, !4387, !4388, !4389, !4391, !4393, !4397}
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4366, file: !4330, line: 35, baseType: !82, size: 16)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4366, file: !4330, line: 36, baseType: !82, size: 16, offset: 16)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4366, file: !4330, line: 37, baseType: !82, size: 16, offset: 32)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4366, file: !4330, line: 38, baseType: !82, size: 16, offset: 48)
!4372 = !DIDerivedType(tag: DW_TAG_member, scope: !4366, file: !4330, line: 39, baseType: !4373, size: 128, offset: 64)
!4373 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4366, file: !4330, line: 39, size: 128, elements: !4374)
!4374 = !{!4375, !4380}
!4375 = !DIDerivedType(tag: DW_TAG_member, scope: !4373, file: !4330, line: 40, baseType: !4376, size: 128)
!4376 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4373, file: !4330, line: 40, size: 128, elements: !4377)
!4377 = !{!4378, !4379}
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4376, file: !4330, line: 41, baseType: !20, size: 64)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4376, file: !4330, line: 42, baseType: !20, size: 64, offset: 64)
!4380 = !DIDerivedType(tag: DW_TAG_member, scope: !4373, file: !4330, line: 44, baseType: !4381, size: 128)
!4381 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4373, file: !4330, line: 44, size: 128, elements: !4382)
!4382 = !{!4383, !4384, !4385, !4386}
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4381, file: !4330, line: 45, baseType: !251, size: 32)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4381, file: !4330, line: 46, baseType: !251, size: 32, offset: 32)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4381, file: !4330, line: 47, baseType: !251, size: 32, offset: 64)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4381, file: !4330, line: 48, baseType: !251, size: 32, offset: 96)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4366, file: !4330, line: 51, baseType: !251, size: 32, offset: 192)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4366, file: !4330, line: 52, baseType: !251, size: 32, offset: 224)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4366, file: !4330, line: 55, baseType: !4390, size: 1024, offset: 256)
!4390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 1024, elements: !36)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4366, file: !4330, line: 58, baseType: !4392, size: 2048, offset: 1280)
!4392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 2048, elements: !434)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4366, file: !4330, line: 60, baseType: !4394, size: 384, offset: 3328)
!4394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 384, elements: !4395)
!4395 = !{!4396}
!4396 = !DISubrange(count: 12)
!4397 = !DIDerivedType(tag: DW_TAG_member, scope: !4366, file: !4330, line: 62, baseType: !4398, size: 384, offset: 3712)
!4398 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4366, file: !4330, line: 62, size: 384, elements: !4399)
!4399 = !{!4400, !4401}
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4398, file: !4330, line: 63, baseType: !4394, size: 384)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4398, file: !4330, line: 64, baseType: !4394, size: 384)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4348, file: !4330, line: 351, baseType: !4403, size: 1088)
!4403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4330, line: 79, size: 1088, elements: !4404)
!4404 = !{!4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4478}
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4403, file: !4330, line: 80, baseType: !251, size: 32)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4403, file: !4330, line: 81, baseType: !251, size: 32, offset: 32)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4403, file: !4330, line: 82, baseType: !251, size: 32, offset: 64)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4403, file: !4330, line: 83, baseType: !251, size: 32, offset: 96)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4403, file: !4330, line: 84, baseType: !251, size: 32, offset: 128)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4403, file: !4330, line: 85, baseType: !251, size: 32, offset: 160)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4403, file: !4330, line: 86, baseType: !251, size: 32, offset: 192)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4403, file: !4330, line: 88, baseType: !4361, size: 640, offset: 224)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4403, file: !4330, line: 89, baseType: !74, size: 8, offset: 864)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4403, file: !4330, line: 90, baseType: !74, size: 8, offset: 872)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4403, file: !4330, line: 91, baseType: !74, size: 8, offset: 880)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4403, file: !4330, line: 92, baseType: !74, size: 8, offset: 888)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4403, file: !4330, line: 93, baseType: !74, size: 8, offset: 896)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4403, file: !4330, line: 94, baseType: !74, size: 8, offset: 904)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4403, file: !4330, line: 95, baseType: !4420, size: 64, offset: 960)
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4422, line: 11, size: 128, elements: !4423)
!4422 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4423 = !{!4424, !4425}
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4421, file: !4422, line: 12, baseType: !464, size: 64)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4421, file: !4422, line: 13, baseType: !4426, size: 64, offset: 64)
!4426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4427, size: 64)
!4427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4428, line: 103, size: 1344, elements: !4429)
!4428 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4429 = !{!4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4458, !4459, !4460}
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4427, file: !4428, line: 109, baseType: !151, size: 64)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4427, file: !4428, line: 110, baseType: !151, size: 64, offset: 64)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4427, file: !4428, line: 111, baseType: !151, size: 64, offset: 128)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4427, file: !4428, line: 112, baseType: !151, size: 64, offset: 192)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4427, file: !4428, line: 113, baseType: !151, size: 64, offset: 256)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4427, file: !4428, line: 114, baseType: !151, size: 64, offset: 320)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4427, file: !4428, line: 117, baseType: !151, size: 64, offset: 384)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4427, file: !4428, line: 118, baseType: !151, size: 64, offset: 448)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4427, file: !4428, line: 119, baseType: !151, size: 64, offset: 512)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4427, file: !4428, line: 120, baseType: !151, size: 64, offset: 576)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4427, file: !4428, line: 121, baseType: !151, size: 64, offset: 640)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4427, file: !4428, line: 122, baseType: !151, size: 64, offset: 704)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4427, file: !4428, line: 123, baseType: !151, size: 64, offset: 768)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4427, file: !4428, line: 124, baseType: !151, size: 64, offset: 832)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4427, file: !4428, line: 125, baseType: !151, size: 64, offset: 896)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4427, file: !4428, line: 139, baseType: !151, size: 64, offset: 960)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4427, file: !4428, line: 142, baseType: !151, size: 64, offset: 1024)
!4447 = !DIDerivedType(tag: DW_TAG_member, scope: !4427, file: !4428, line: 144, baseType: !4448, size: 64, offset: 1088)
!4448 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4427, file: !4428, line: 144, size: 64, elements: !4449)
!4449 = !{!4450, !4451, !4452}
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4448, file: !4428, line: 146, baseType: !82, size: 16)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4448, file: !4428, line: 148, baseType: !20, size: 64)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4448, file: !4428, line: 150, baseType: !4453, size: 64)
!4453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4428, line: 59, size: 64, elements: !4454)
!4454 = !{!4455, !4456, !4457}
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4453, file: !4428, line: 61, baseType: !20, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4453, file: !4428, line: 63, baseType: !20, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4453, file: !4428, line: 65, baseType: !20, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4427, file: !4428, line: 153, baseType: !151, size: 64, offset: 1152)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4427, file: !4428, line: 154, baseType: !151, size: 64, offset: 1216)
!4460 = !DIDerivedType(tag: DW_TAG_member, scope: !4427, file: !4428, line: 156, baseType: !4461, size: 64, offset: 1280)
!4461 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4427, file: !4428, line: 156, size: 64, elements: !4462)
!4462 = !{!4463, !4464, !4465}
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4461, file: !4428, line: 158, baseType: !82, size: 16)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4461, file: !4428, line: 160, baseType: !20, size: 64)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4461, file: !4428, line: 162, baseType: !4466, size: 64)
!4466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4428, line: 69, size: 64, elements: !4467)
!4467 = !{!4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477}
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4466, file: !4428, line: 71, baseType: !20, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4466, file: !4428, line: 73, baseType: !20, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4466, file: !4428, line: 75, baseType: !20, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4466, file: !4428, line: 77, baseType: !20, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4466, file: !4428, line: 80, baseType: !20, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4466, file: !4428, line: 83, baseType: !20, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4466, file: !4428, line: 86, baseType: !20, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4466, file: !4428, line: 88, baseType: !20, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4466, file: !4428, line: 93, baseType: !20, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4466, file: !4428, line: 100, baseType: !20, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4403, file: !4330, line: 96, baseType: !251, size: 32, offset: 1024)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4348, file: !4330, line: 352, baseType: !4480, size: 4608, align: 512)
!4480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4330, line: 333, size: 4608, align: 512, elements: !4481)
!4481 = !{!4482, !4483, !4490}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4480, file: !4330, line: 334, baseType: !4366, size: 4096, align: 128)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4480, file: !4330, line: 335, baseType: !4484, size: 512, offset: 4096)
!4484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4330, line: 312, size: 512, elements: !4485)
!4485 = !{!4486, !4487, !4488}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4484, file: !4330, line: 313, baseType: !20, size: 64)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4484, file: !4330, line: 314, baseType: !20, size: 64, offset: 64)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4484, file: !4330, line: 315, baseType: !4489, size: 384, offset: 128)
!4489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 384, elements: !732)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4480, file: !4330, line: 336, baseType: !4491, offset: 4608)
!4491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, elements: !622)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4348, file: !4330, line: 353, baseType: !4493, size: 32768)
!4493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 32768, elements: !4494)
!4494 = !{!4495}
!4495 = !DISubrange(count: 4096)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4329, file: !4330, line: 484, baseType: !4335, size: 64, offset: 192)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4329, file: !4330, line: 491, baseType: !4498, size: 128, offset: 256)
!4498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4330, line: 404, size: 128, elements: !4499)
!4499 = !{!4500, !4501, !4502}
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4498, file: !4330, line: 424, baseType: !20, size: 64)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4498, file: !4330, line: 432, baseType: !87, size: 32, offset: 64)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4498, file: !4330, line: 440, baseType: !87, size: 32, offset: 96)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4329, file: !4330, line: 498, baseType: !4498, size: 128, offset: 384)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4329, file: !4330, line: 508, baseType: !4336, size: 33280, align: 512, offset: 512)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3365, file: !3366, line: 16, baseType: !607, size: 192, offset: 512)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3365, file: !3366, line: 17, baseType: !66, size: 32, offset: 704)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !331, file: !177, line: 1240, baseType: !89, size: 64, offset: 6912)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !331, file: !177, line: 1243, baseType: !251, size: 32, offset: 6976)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !331, file: !177, line: 1245, baseType: !702, size: 64, offset: 7040)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !331, file: !177, line: 1246, baseType: !702, size: 64, offset: 7104)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !331, file: !177, line: 1248, baseType: !107, size: 32, offset: 7168)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !331, file: !177, line: 1249, baseType: !4513, size: 64, offset: 7232)
!4513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4514, size: 64)
!4514 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !177, line: 634, flags: DIFlagFwdDecl)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !331, file: !177, line: 1252, baseType: !35, size: 256, offset: 7296)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !331, file: !177, line: 1253, baseType: !4517, size: 128, offset: 7552)
!4517 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4518, line: 21, baseType: !4519)
!4518 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4519 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4518, line: 19, size: 128, elements: !4520)
!4520 = !{!4521}
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4519, file: !4518, line: 20, baseType: !4522, size: 128)
!4522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 128, elements: !5)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !331, file: !177, line: 1255, baseType: !87, size: 32, offset: 7680)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !331, file: !177, line: 1261, baseType: !541, size: 256, offset: 7744)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !331, file: !177, line: 1267, baseType: !294, size: 64, offset: 8000)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !331, file: !177, line: 1269, baseType: !274, size: 64, offset: 8064)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !331, file: !177, line: 1271, baseType: !4528, size: 448, offset: 8128)
!4528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3144, line: 63, size: 448, elements: !4529)
!4529 = !{!4530, !4535, !4536, !4537, !4538, !4539, !4540}
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4528, file: !3144, line: 64, baseType: !4531, size: 64)
!4531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4532, size: 64)
!4532 = !DISubroutineType(types: !4533)
!4533 = !{!151, !4534, !3142}
!4534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4528, size: 64)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4528, file: !3144, line: 66, baseType: !4531, size: 64, offset: 64)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4528, file: !3144, line: 69, baseType: !464, size: 64, offset: 128)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4528, file: !3144, line: 70, baseType: !12, size: 32, offset: 192)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4528, file: !3144, line: 71, baseType: !87, size: 32, offset: 224)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4528, file: !3144, line: 74, baseType: !162, size: 128, offset: 256)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4528, file: !3144, line: 85, baseType: !4541, size: 64, offset: 384)
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !331, file: !177, line: 1274, baseType: !532, size: 64, offset: 8576)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !331, file: !177, line: 1280, baseType: !532, size: 64, offset: 8640)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !331, file: !177, line: 1283, baseType: !12, size: 32, offset: 8704)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !331, file: !177, line: 1286, baseType: !2613, size: 32, offset: 8736)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !331, file: !177, line: 1289, baseType: !1054, size: 64, offset: 8768)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !331, file: !177, line: 1290, baseType: !594, size: 64, offset: 8832)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !331, file: !177, line: 1297, baseType: !828, size: 64, offset: 8896)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !331, file: !177, line: 1304, baseType: !4550, size: 64, offset: 8960)
!4550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4551, line: 49, size: 64, elements: !4552)
!4551 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4552 = !{!4553}
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4550, file: !4551, line: 50, baseType: !4554, size: 64)
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4555, size: 64)
!4555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4551, line: 41, size: 512, align: 512, elements: !4556)
!4556 = !{!4557, !4558, !4563}
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4555, file: !4551, line: 43, baseType: !46, size: 32)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4555, file: !4551, line: 45, baseType: !4559, size: 192, offset: 64)
!4559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4551, line: 29, size: 192, elements: !4560)
!4560 = !{!4561, !4562}
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4559, file: !4551, line: 30, baseType: !162, size: 128)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4559, file: !4551, line: 32, baseType: !464, size: 64, offset: 128)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4555, file: !4551, line: 46, baseType: !464, size: 64, offset: 256)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !331, file: !177, line: 1305, baseType: !4550, size: 64, offset: 9024)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !331, file: !177, line: 1306, baseType: !519, size: 128, align: 64, offset: 9088)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !331, file: !177, line: 1307, baseType: !1031, size: 256, offset: 9216)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !331, file: !177, line: 1309, baseType: !541, size: 256, offset: 9472)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !331, file: !177, line: 1314, baseType: !12, size: 32, offset: 9728)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !331, file: !177, line: 1317, baseType: !46, size: 32, align: 512, offset: 10240)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !331, file: !177, line: 1318, baseType: !162, size: 128, offset: 10304)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !331, file: !177, line: 1320, baseType: !46, size: 32, offset: 10432)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !331, file: !177, line: 1321, baseType: !162, size: 128, offset: 10496)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !325, file: !326, line: 73, baseType: !12, size: 32, offset: 128)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !325, file: !326, line: 74, baseType: !4575, size: 64, offset: 192)
!4575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4576, size: 64)
!4576 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !653, line: 42, flags: DIFlagFwdDecl)
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !276, file: !219, line: 141, baseType: !4579, size: 64, offset: 704)
!4579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4580, size: 64)
!4580 = !DISubroutineType(types: !4581)
!4581 = !{!12, !3204, !745}
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !276, file: !219, line: 142, baseType: !4583, size: 64, offset: 768)
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{!217, !217, !4586}
!4586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4587, size: 64)
!4587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !218, file: !219, line: 96, baseType: !330, size: 64, offset: 832)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !218, file: !219, line: 97, baseType: !151, size: 64, offset: 896)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !218, file: !219, line: 98, baseType: !89, size: 64, offset: 960)
!4591 = !DIDerivedType(tag: DW_TAG_member, scope: !218, file: !219, line: 100, baseType: !4592, size: 128, offset: 1024)
!4592 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !218, file: !219, line: 100, size: 128, elements: !4593)
!4593 = !{!4594, !4595}
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4592, file: !219, line: 101, baseType: !162, size: 128)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4592, file: !219, line: 102, baseType: !4596, size: 64)
!4596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !218, file: !219, line: 104, baseType: !162, size: 128, offset: 1152)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !218, file: !219, line: 105, baseType: !162, size: 128, offset: 1280)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !218, file: !219, line: 113, baseType: !4600, size: 128, offset: 1408)
!4600 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !218, file: !219, line: 109, size: 128, elements: !4601)
!4601 = !{!4602, !4603, !4604}
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4600, file: !219, line: 110, baseType: !598, size: 128)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4600, file: !219, line: 111, baseType: !233, size: 128)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4600, file: !219, line: 112, baseType: !519, size: 128, align: 64)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !211, file: !177, line: 1968, baseType: !4606, size: 64, offset: 64)
!4606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4607, size: 64)
!4607 = !DISubroutineType(types: !4608)
!4608 = !{!294, !217, !180, !4609}
!4609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4610, size: 64)
!4610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4611, line: 10, size: 128, elements: !4612)
!4611 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4612 = !{!4613, !4614}
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4610, file: !4611, line: 11, baseType: !1935, size: 64)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4610, file: !4611, line: 12, baseType: !89, size: 64, offset: 64)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !211, file: !177, line: 1969, baseType: !4616, size: 64, offset: 128)
!4616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4617, size: 64)
!4617 = !DISubroutineType(types: !4618)
!4618 = !{!12, !4575, !180, !12}
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !211, file: !177, line: 1970, baseType: !4620, size: 64, offset: 192)
!4620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4621, size: 64)
!4621 = !DISubroutineType(types: !4622)
!4622 = !{!205, !180, !12, !745}
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !211, file: !177, line: 1972, baseType: !4624, size: 64, offset: 256)
!4624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4625, size: 64)
!4625 = !DISubroutineType(types: !4626)
!4626 = !{!12, !217, !319, !12}
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !211, file: !177, line: 1974, baseType: !4628, size: 64, offset: 320)
!4628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4629, size: 64)
!4629 = !DISubroutineType(types: !4630)
!4630 = !{!12, !4575, !180, !217, !184, !745}
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !211, file: !177, line: 1976, baseType: !4632, size: 64, offset: 384)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{!12, !217, !180, !217}
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !211, file: !177, line: 1977, baseType: !4636, size: 64, offset: 448)
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = !DISubroutineType(types: !4638)
!4638 = !{!12, !180, !217}
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !211, file: !177, line: 1978, baseType: !4640, size: 64, offset: 512)
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4641, size: 64)
!4641 = !DISubroutineType(types: !4642)
!4642 = !{!12, !4575, !180, !217, !294}
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !211, file: !177, line: 1980, baseType: !4644, size: 64, offset: 576)
!4644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4645, size: 64)
!4645 = !DISubroutineType(types: !4646)
!4646 = !{!12, !4575, !180, !217, !184}
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !211, file: !177, line: 1982, baseType: !4636, size: 64, offset: 640)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !211, file: !177, line: 1983, baseType: !4649, size: 64, offset: 704)
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4650, size: 64)
!4650 = !DISubroutineType(types: !4651)
!4651 = !{!12, !4575, !180, !217, !184, !335}
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !211, file: !177, line: 1985, baseType: !4653, size: 64, offset: 768)
!4653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4654, size: 64)
!4654 = !DISubroutineType(types: !4655)
!4655 = !{!12, !4575, !180, !217, !180, !217, !87}
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !211, file: !177, line: 1987, baseType: !4657, size: 64, offset: 832)
!4657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4658, size: 64)
!4658 = !DISubroutineType(types: !4659)
!4659 = !{!12, !4575, !217, !4660}
!4660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4661, size: 64)
!4661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !177, line: 226, size: 640, elements: !4662)
!4662 = !{!4663, !4664, !4665, !4675, !4684, !4685, !4690, !4691, !4692}
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4661, file: !177, line: 227, baseType: !87, size: 32)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4661, file: !177, line: 228, baseType: !184, size: 16, offset: 32)
!4665 = !DIDerivedType(tag: DW_TAG_member, scope: !4661, file: !177, line: 241, baseType: !4666, size: 32, offset: 64)
!4666 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4661, file: !177, line: 241, size: 32, elements: !4667)
!4667 = !{!4668, !4669}
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4666, file: !177, line: 242, baseType: !187, size: 32)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4666, file: !177, line: 243, baseType: !4670, size: 32)
!4670 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4671, line: 16, baseType: !4672)
!4671 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4672 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4671, line: 14, size: 32, elements: !4673)
!4673 = !{!4674}
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4672, file: !4671, line: 15, baseType: !192, size: 32)
!4675 = !DIDerivedType(tag: DW_TAG_member, scope: !4661, file: !177, line: 245, baseType: !4676, size: 32, offset: 96)
!4676 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4661, file: !177, line: 245, size: 32, elements: !4677)
!4677 = !{!4678, !4679}
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4676, file: !177, line: 246, baseType: !197, size: 32)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4676, file: !177, line: 247, baseType: !4680, size: 32)
!4680 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4671, line: 20, baseType: !4681)
!4681 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4671, line: 18, size: 32, elements: !4682)
!4682 = !{!4683}
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4681, file: !4671, line: 19, baseType: !201, size: 32)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4661, file: !177, line: 249, baseType: !340, size: 64, offset: 128)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4661, file: !177, line: 250, baseType: !4686, size: 128, offset: 192)
!4686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !703, line: 13, size: 128, elements: !4687)
!4687 = !{!4688, !4689}
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4686, file: !703, line: 14, baseType: !702, size: 64)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4686, file: !703, line: 15, baseType: !464, size: 64, offset: 64)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4661, file: !177, line: 251, baseType: !4686, size: 128, offset: 320)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4661, file: !177, line: 252, baseType: !4686, size: 128, offset: 448)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4661, file: !177, line: 259, baseType: !506, size: 64, offset: 576)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !211, file: !177, line: 1988, baseType: !4694, size: 64, offset: 896)
!4694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4695, size: 64)
!4695 = !DISubroutineType(types: !4696)
!4696 = !{!12, !4575, !3204, !4697, !251, !87}
!4697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4698, size: 64)
!4698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4699, line: 22, size: 1280, elements: !4700)
!4699 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4700 = !{!4701, !4702, !4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4714, !4715, !4716, !4717, !4718, !4719, !4720, !4721}
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4698, file: !4699, line: 23, baseType: !251, size: 32)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4698, file: !4699, line: 24, baseType: !184, size: 16, offset: 32)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4698, file: !4699, line: 25, baseType: !87, size: 32, offset: 64)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4698, file: !4699, line: 26, baseType: !710, size: 32, offset: 96)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4698, file: !4699, line: 27, baseType: !20, size: 64, offset: 128)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4698, file: !4699, line: 28, baseType: !20, size: 64, offset: 192)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4698, file: !4699, line: 41, baseType: !20, size: 64, offset: 256)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4698, file: !4699, line: 42, baseType: !335, size: 32, offset: 320)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4698, file: !4699, line: 43, baseType: !335, size: 32, offset: 352)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4698, file: !4699, line: 44, baseType: !187, size: 32, offset: 384)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4698, file: !4699, line: 45, baseType: !197, size: 32, offset: 416)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4698, file: !4699, line: 46, baseType: !340, size: 64, offset: 448)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4698, file: !4699, line: 47, baseType: !4686, size: 128, offset: 512)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4698, file: !4699, line: 48, baseType: !4686, size: 128, offset: 640)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4698, file: !4699, line: 49, baseType: !4686, size: 128, offset: 768)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4698, file: !4699, line: 50, baseType: !4686, size: 128, offset: 896)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4698, file: !4699, line: 51, baseType: !20, size: 64, offset: 1024)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4698, file: !4699, line: 52, baseType: !20, size: 64, offset: 1088)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4698, file: !4699, line: 53, baseType: !251, size: 32, offset: 1152)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4698, file: !4699, line: 54, baseType: !251, size: 32, offset: 1184)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4698, file: !4699, line: 55, baseType: !20, size: 64, offset: 1216)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !211, file: !177, line: 1990, baseType: !4723, size: 64, offset: 960)
!4723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4724, size: 64)
!4724 = !DISubroutineType(types: !4725)
!4725 = !{!461, !217, !319, !474}
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !211, file: !177, line: 1991, baseType: !4727, size: 64, offset: 1024)
!4727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4728, size: 64)
!4728 = !DISubroutineType(types: !4729)
!4729 = !{!12, !180, !4730, !20, !20}
!4730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4731, size: 64)
!4731 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !177, line: 55, flags: DIFlagFwdDecl)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !211, file: !177, line: 1993, baseType: !4733, size: 64, offset: 1088)
!4733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4734, size: 64)
!4734 = !DISubroutineType(types: !4735)
!4735 = !{!12, !180, !12}
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !211, file: !177, line: 1994, baseType: !4737, size: 64, offset: 1152)
!4737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4738, size: 64)
!4738 = !DISubroutineType(types: !4739)
!4739 = !{!12, !180, !217, !506, !87, !184}
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !211, file: !177, line: 1997, baseType: !4741, size: 64, offset: 1216)
!4741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4742, size: 64)
!4742 = !DISubroutineType(types: !4743)
!4743 = !{!12, !4575, !180, !506, !184}
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !211, file: !177, line: 1999, baseType: !4745, size: 64, offset: 1280)
!4745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4746, size: 64)
!4746 = !DISubroutineType(types: !4747)
!4747 = !{!205, !4575, !217, !12}
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !211, file: !177, line: 2001, baseType: !4749, size: 64, offset: 1344)
!4749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4750, size: 64)
!4750 = !DISubroutineType(types: !4751)
!4751 = !{!12, !4575, !217, !205, !12}
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !211, file: !177, line: 2003, baseType: !4753, size: 64, offset: 1408)
!4753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4754, size: 64)
!4754 = !DISubroutineType(types: !4755)
!4755 = !{!12, !4575, !217, !4756}
!4756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4757, size: 64)
!4757 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !177, line: 76, flags: DIFlagFwdDecl)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !211, file: !177, line: 2005, baseType: !4759, size: 64, offset: 1472)
!4759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4760, size: 64)
!4760 = !DISubroutineType(types: !4761)
!4761 = !{!12, !217, !4756}
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !211, file: !177, line: 2006, baseType: !4763, size: 64, offset: 1536)
!4763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4764, size: 64)
!4764 = !DISubroutineType(types: !4765)
!4765 = !{!4766, !180}
!4766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4767, size: 64)
!4767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !177, line: 3192, size: 192, elements: !4768)
!4768 = !{!4769, !4770}
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4767, file: !177, line: 3193, baseType: !42, size: 128)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4767, file: !177, line: 3194, baseType: !251, size: 32, offset: 128)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !181, file: !177, line: 655, baseType: !330, size: 64, offset: 448)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !181, file: !177, line: 656, baseType: !175, size: 64, offset: 512)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !181, file: !177, line: 659, baseType: !89, size: 64, offset: 576)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !181, file: !177, line: 663, baseType: !151, size: 64, offset: 640)
!4775 = !DIDerivedType(tag: DW_TAG_member, scope: !181, file: !177, line: 671, baseType: !4776, size: 32, offset: 704)
!4776 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !181, file: !177, line: 671, size: 32, elements: !4777)
!4777 = !{!4778, !4780}
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4776, file: !177, line: 672, baseType: !4779, size: 32)
!4779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4776, file: !177, line: 673, baseType: !87, size: 32)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !181, file: !177, line: 675, baseType: !335, size: 32, offset: 736)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !181, file: !177, line: 676, baseType: !340, size: 64, offset: 768)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !181, file: !177, line: 677, baseType: !4686, size: 128, offset: 832)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !181, file: !177, line: 678, baseType: !4686, size: 128, offset: 960)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !181, file: !177, line: 679, baseType: !4686, size: 128, offset: 1088)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !181, file: !177, line: 680, baseType: !46, size: 32, offset: 1216)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !181, file: !177, line: 681, baseType: !39, size: 16, offset: 1248)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !181, file: !177, line: 682, baseType: !74, size: 8, offset: 1264)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !181, file: !177, line: 683, baseType: !74, size: 8, offset: 1272)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !181, file: !177, line: 684, baseType: !3277, size: 64, offset: 1280)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !181, file: !177, line: 691, baseType: !151, size: 64, offset: 1344)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !181, file: !177, line: 692, baseType: !686, size: 320, offset: 1408)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !181, file: !177, line: 694, baseType: !151, size: 64, offset: 1728)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !181, file: !177, line: 695, baseType: !151, size: 64, offset: 1792)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !181, file: !177, line: 697, baseType: !598, size: 128, offset: 1856)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !181, file: !177, line: 698, baseType: !162, size: 128, offset: 1984)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !181, file: !177, line: 707, baseType: !162, size: 128, offset: 2112)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !181, file: !177, line: 708, baseType: !162, size: 128, offset: 2240)
!4799 = !DIDerivedType(tag: DW_TAG_member, scope: !181, file: !177, line: 709, baseType: !4800, size: 128, offset: 2368)
!4800 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !181, file: !177, line: 709, size: 128, elements: !4801)
!4801 = !{!4802, !4803}
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4800, file: !177, line: 710, baseType: !594, size: 64)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4800, file: !177, line: 711, baseType: !519, size: 128, align: 64)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !181, file: !177, line: 713, baseType: !534, size: 64, offset: 2496)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !181, file: !177, line: 714, baseType: !534, size: 64, offset: 2560)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !181, file: !177, line: 715, baseType: !66, size: 32, offset: 2624)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !181, file: !177, line: 716, baseType: !66, size: 32, offset: 2656)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !181, file: !177, line: 717, baseType: !66, size: 32, offset: 2688)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !181, file: !177, line: 719, baseType: !66, size: 32, offset: 2720)
!4810 = !DIDerivedType(tag: DW_TAG_member, scope: !181, file: !177, line: 721, baseType: !4811, size: 64, offset: 2752)
!4811 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !181, file: !177, line: 721, size: 64, elements: !4812)
!4812 = !{!4813, !4814}
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4811, file: !177, line: 722, baseType: !864, size: 64)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4811, file: !177, line: 723, baseType: !3021, size: 64)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !181, file: !177, line: 725, baseType: !4816, size: 64, offset: 2816)
!4816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4817, size: 64)
!4817 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !177, line: 725, flags: DIFlagFwdDecl)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !181, file: !177, line: 726, baseType: !176, size: 1536, align: 64, offset: 2880)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !181, file: !177, line: 727, baseType: !162, size: 128, offset: 4416)
!4820 = !DIDerivedType(tag: DW_TAG_member, scope: !181, file: !177, line: 728, baseType: !4821, size: 64, offset: 4544)
!4821 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !181, file: !177, line: 728, size: 64, elements: !4822)
!4822 = !{!4823, !4824, !4827, !4828}
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4821, file: !177, line: 729, baseType: !2563, size: 64)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4821, file: !177, line: 730, baseType: !4825, size: 64)
!4825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4826, size: 64)
!4826 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !177, line: 730, flags: DIFlagFwdDecl)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4821, file: !177, line: 731, baseType: !319, size: 64)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4821, file: !177, line: 732, baseType: !87, size: 32)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !181, file: !177, line: 735, baseType: !107, size: 32, offset: 4608)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !181, file: !177, line: 738, baseType: !107, size: 32, offset: 4640)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !181, file: !177, line: 739, baseType: !4513, size: 64, offset: 4672)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !181, file: !177, line: 750, baseType: !89, size: 64, offset: 4736)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !176, file: !177, line: 474, baseType: !42, size: 128, offset: 64)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !176, file: !177, line: 475, baseType: !686, size: 320, offset: 192)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !176, file: !177, line: 476, baseType: !86, size: 32, offset: 512)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !176, file: !177, line: 477, baseType: !66, size: 32, offset: 544)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !176, file: !177, line: 482, baseType: !1648, size: 128, offset: 576)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !176, file: !177, line: 483, baseType: !151, size: 64, offset: 704)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !176, file: !177, line: 484, baseType: !151, size: 64, offset: 768)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !176, file: !177, line: 485, baseType: !4841, size: 64, offset: 832)
!4841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4842, size: 64)
!4842 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4843)
!4843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !177, line: 404, size: 1280, elements: !4844)
!4844 = !{!4845, !4849, !4919, !4923, !4927, !4933, !4937, !4941, !4945, !4949, !4953, !4957, !4958, !4969, !4973, !4977, !4982, !4986, !4993, !4994}
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4843, file: !177, line: 405, baseType: !4846, size: 64)
!4846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4847, size: 64)
!4847 = !DISubroutineType(types: !4848)
!4848 = !{!12, !146, !3033}
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4843, file: !177, line: 406, baseType: !4850, size: 64, offset: 64)
!4850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4851, size: 64)
!4851 = !DISubroutineType(types: !4852)
!4852 = !{!12, !506, !4853}
!4853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4854, size: 64)
!4854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !148, line: 293, size: 1536, elements: !4855)
!4855 = !{!4856, !4886, !4900}
!4856 = !DIDerivedType(tag: DW_TAG_member, scope: !4854, file: !148, line: 295, baseType: !4857, size: 512)
!4857 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4854, file: !148, line: 295, size: 512, elements: !4858)
!4858 = !{!4859, !4885}
!4859 = !DIDerivedType(tag: DW_TAG_member, scope: !4857, file: !148, line: 296, baseType: !4860, size: 448)
!4860 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4857, file: !148, line: 296, size: 448, elements: !4861)
!4861 = !{!4862, !4863, !4872, !4873, !4874, !4883, !4884}
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4860, file: !148, line: 298, baseType: !151, size: 64)
!4863 = !DIDerivedType(tag: DW_TAG_member, scope: !4860, file: !148, line: 299, baseType: !4864, size: 128, offset: 64)
!4864 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4860, file: !148, line: 299, size: 128, elements: !4865)
!4865 = !{!4866, !4867}
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4864, file: !148, line: 300, baseType: !162, size: 128)
!4867 = !DIDerivedType(tag: DW_TAG_member, scope: !4864, file: !148, line: 302, baseType: !4868, size: 128)
!4868 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4864, file: !148, line: 302, size: 128, elements: !4869)
!4869 = !{!4870, !4871}
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4868, file: !148, line: 303, baseType: !89, size: 64)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4868, file: !148, line: 305, baseType: !87, size: 32, offset: 64)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4860, file: !148, line: 310, baseType: !175, size: 64, offset: 192)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4860, file: !148, line: 311, baseType: !151, size: 64, offset: 256)
!4874 = !DIDerivedType(tag: DW_TAG_member, scope: !4860, file: !148, line: 312, baseType: !4875, size: 64, offset: 320)
!4875 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4860, file: !148, line: 312, size: 64, elements: !4876)
!4876 = !{!4877, !4878}
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4875, file: !148, line: 313, baseType: !89, size: 64)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4875, file: !148, line: 314, baseType: !4879, size: 64)
!4879 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !148, line: 257, baseType: !4880)
!4880 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !148, line: 255, size: 64, elements: !4881)
!4881 = !{!4882}
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4880, file: !148, line: 256, baseType: !151, size: 64)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4860, file: !148, line: 316, baseType: !66, size: 32, offset: 384)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !4860, file: !148, line: 317, baseType: !66, size: 32, offset: 416)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4857, file: !148, line: 323, baseType: !147, size: 512, align: 128)
!4886 = !DIDerivedType(tag: DW_TAG_member, scope: !4854, file: !148, line: 325, baseType: !4887, size: 512, offset: 512)
!4887 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4854, file: !148, line: 325, size: 512, elements: !4888)
!4888 = !{!4889, !4899}
!4889 = !DIDerivedType(tag: DW_TAG_member, scope: !4887, file: !148, line: 326, baseType: !4890, size: 320)
!4890 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4887, file: !148, line: 326, size: 320, elements: !4891)
!4891 = !{!4892, !4893, !4894, !4895, !4896, !4897, !4898}
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4890, file: !148, line: 327, baseType: !151, size: 64)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4890, file: !148, line: 328, baseType: !151, size: 64, offset: 64)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4890, file: !148, line: 329, baseType: !151, size: 64, offset: 128)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4890, file: !148, line: 331, baseType: !66, size: 32, offset: 192)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4890, file: !148, line: 332, baseType: !66, size: 32, offset: 224)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4890, file: !148, line: 333, baseType: !66, size: 32, offset: 256)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4890, file: !148, line: 335, baseType: !87, size: 32, offset: 288)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4887, file: !148, line: 339, baseType: !147, size: 512, align: 128)
!4900 = !DIDerivedType(tag: DW_TAG_member, scope: !4854, file: !148, line: 341, baseType: !4901, size: 512, offset: 1024)
!4901 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4854, file: !148, line: 341, size: 512, elements: !4902)
!4902 = !{!4903, !4912, !4918}
!4903 = !DIDerivedType(tag: DW_TAG_member, scope: !4901, file: !148, line: 342, baseType: !4904, size: 384)
!4904 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4901, file: !148, line: 342, size: 384, elements: !4905)
!4905 = !{!4906, !4907, !4908, !4909, !4910, !4911}
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4904, file: !148, line: 343, baseType: !151, size: 64)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4904, file: !148, line: 344, baseType: !151, size: 64, offset: 64)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4904, file: !148, line: 346, baseType: !89, size: 64, offset: 128)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4904, file: !148, line: 347, baseType: !89, size: 64, offset: 192)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4904, file: !148, line: 348, baseType: !89, size: 64, offset: 256)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4904, file: !148, line: 349, baseType: !89, size: 64, offset: 320)
!4912 = !DIDerivedType(tag: DW_TAG_member, scope: !4901, file: !148, line: 352, baseType: !4913, size: 256)
!4913 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4901, file: !148, line: 352, size: 256, elements: !4914)
!4914 = !{!4915, !4916, !4917}
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4913, file: !148, line: 353, baseType: !151, size: 64)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4913, file: !148, line: 354, baseType: !151, size: 64, offset: 64)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4913, file: !148, line: 356, baseType: !162, size: 128, offset: 128)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4901, file: !148, line: 359, baseType: !147, size: 512, align: 128)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4843, file: !177, line: 409, baseType: !4920, size: 64, offset: 128)
!4920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4921, size: 64)
!4921 = !DISubroutineType(types: !4922)
!4922 = !{!12, !175, !3033}
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4843, file: !177, line: 412, baseType: !4924, size: 64, offset: 192)
!4924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4925, size: 64)
!4925 = !DISubroutineType(types: !4926)
!4926 = !{!745, !175, !4853}
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4843, file: !177, line: 414, baseType: !4928, size: 64, offset: 256)
!4928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4929, size: 64)
!4929 = !DISubroutineType(types: !4930)
!4930 = !{null, !4931}
!4931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4932, size: 64)
!4932 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !177, line: 310, flags: DIFlagFwdDecl)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4843, file: !177, line: 416, baseType: !4934, size: 64, offset: 320)
!4934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4935, size: 64)
!4935 = !DISubroutineType(types: !4936)
!4936 = !{!12, !506, !175, !340, !87, !4262, !2578}
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4843, file: !177, line: 419, baseType: !4938, size: 64, offset: 384)
!4938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4939, size: 64)
!4939 = !DISubroutineType(types: !4940)
!4940 = !{!12, !506, !175, !340, !87, !87, !146, !89}
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4843, file: !177, line: 424, baseType: !4942, size: 64, offset: 448)
!4942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4943, size: 64)
!4943 = !DISubroutineType(types: !4944)
!4944 = !{!18, !175, !18}
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4843, file: !177, line: 425, baseType: !4946, size: 64, offset: 512)
!4946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4947, size: 64)
!4947 = !DISubroutineType(types: !4948)
!4948 = !{null, !4853, !474, !474}
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4843, file: !177, line: 426, baseType: !4950, size: 64, offset: 576)
!4950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4951, size: 64)
!4951 = !DISubroutineType(types: !4952)
!4952 = !{!745, !4853, !86}
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4843, file: !177, line: 427, baseType: !4954, size: 64, offset: 640)
!4954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4955, size: 64)
!4955 = !DISubroutineType(types: !4956)
!4956 = !{null, !4853}
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4843, file: !177, line: 428, baseType: !883, size: 64, offset: 704)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4843, file: !177, line: 433, baseType: !4959, size: 64, offset: 768)
!4959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4960, size: 64)
!4960 = !DISubroutineType(types: !4961)
!4961 = !{!12, !175, !4853, !4853, !4962}
!4962 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !4963, line: 15, baseType: !87, size: 32, elements: !4964)
!4963 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!4964 = !{!4965, !4966, !4967, !4968}
!4965 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!4966 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!4967 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!4968 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4843, file: !177, line: 435, baseType: !4970, size: 64, offset: 832)
!4970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4971, size: 64)
!4971 = !DISubroutineType(types: !4972)
!4972 = !{!12, !4853}
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4843, file: !177, line: 436, baseType: !4974, size: 64, offset: 896)
!4974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4975, size: 64)
!4975 = !DISubroutineType(types: !4976)
!4976 = !{!745, !4853, !474, !474}
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4843, file: !177, line: 438, baseType: !4978, size: 64, offset: 960)
!4978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4979, size: 64)
!4979 = !DISubroutineType(types: !4980)
!4980 = !{null, !4853, !4981, !4981}
!4981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4843, file: !177, line: 439, baseType: !4983, size: 64, offset: 1024)
!4983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4984, size: 64)
!4984 = !DISubroutineType(types: !4985)
!4985 = !{!12, !175, !146}
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4843, file: !177, line: 442, baseType: !4987, size: 64, offset: 1088)
!4987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4988, size: 64)
!4988 = !DISubroutineType(types: !4989)
!4989 = !{!12, !4990, !506, !4992}
!4990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4991, size: 64)
!4991 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !177, line: 66, flags: DIFlagFwdDecl)
!4992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4843, file: !177, line: 444, baseType: !2570, size: 64, offset: 1152)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4843, file: !177, line: 445, baseType: !4995, size: 64, offset: 1216)
!4995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4996, size: 64)
!4996 = !DISubroutineType(types: !4997)
!4997 = !{!12, !886, !908}
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !176, file: !177, line: 486, baseType: !151, size: 64, offset: 896)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !176, file: !177, line: 487, baseType: !686, size: 320, offset: 960)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !176, file: !177, line: 488, baseType: !2613, size: 32, offset: 1280)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !176, file: !177, line: 489, baseType: !46, size: 32, offset: 1312)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !176, file: !177, line: 490, baseType: !162, size: 128, offset: 1344)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !176, file: !177, line: 491, baseType: !89, size: 64, offset: 1472)
!5004 = !DIDerivedType(tag: DW_TAG_member, scope: !156, file: !148, line: 107, baseType: !5005, size: 64, offset: 192)
!5005 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !156, file: !148, line: 107, size: 64, elements: !5006)
!5006 = !{!5007, !5008}
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5005, file: !148, line: 108, baseType: !151, size: 64)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !5005, file: !148, line: 109, baseType: !151, size: 64)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !156, file: !148, line: 117, baseType: !151, size: 64, offset: 256)
!5010 = !DIDerivedType(tag: DW_TAG_member, scope: !153, file: !148, line: 119, baseType: !5011, size: 320)
!5011 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !153, file: !148, line: 119, size: 320, elements: !5012)
!5012 = !{!5013, !5014, !5017, !5018, !5019}
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !5011, file: !148, line: 124, baseType: !151, size: 64)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !5011, file: !148, line: 125, baseType: !5015, size: 64, offset: 64)
!5015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5016, size: 64)
!5016 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !148, line: 125, flags: DIFlagFwdDecl)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !5011, file: !148, line: 126, baseType: !151, size: 64, offset: 128)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !5011, file: !148, line: 127, baseType: !151, size: 64, offset: 192)
!5019 = !DIDerivedType(tag: DW_TAG_member, scope: !5011, file: !148, line: 128, baseType: !5020, size: 64, offset: 256)
!5020 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5011, file: !148, line: 128, size: 64, elements: !5021)
!5021 = !{!5022, !5023}
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !5020, file: !148, line: 133, baseType: !151, size: 64)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !5020, file: !148, line: 138, baseType: !532, size: 64)
!5024 = !DIDerivedType(tag: DW_TAG_member, scope: !153, file: !148, line: 141, baseType: !5025, size: 64)
!5025 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !153, file: !148, line: 141, size: 64, elements: !5026)
!5026 = !{!5027}
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !5025, file: !148, line: 142, baseType: !151, size: 64)
!5028 = !DIDerivedType(tag: DW_TAG_member, scope: !153, file: !148, line: 144, baseType: !5029, size: 128)
!5029 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !153, file: !148, line: 144, size: 128, elements: !5030)
!5030 = !{!5031, !5090}
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !5029, file: !148, line: 146, baseType: !5032, size: 64)
!5032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5033, size: 64)
!5033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !5034, line: 126, size: 1216, elements: !5035)
!5034 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!5035 = !{!5036, !5046, !5047, !5048, !5056, !5057, !5058, !5072, !5073, !5074}
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !5033, file: !5034, line: 127, baseType: !5037, size: 384)
!5037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !5034, line: 21, size: 384, elements: !5038)
!5038 = !{!5039, !5040, !5042, !5043, !5044, !5045}
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !5037, file: !5034, line: 22, baseType: !151, size: 64)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !5037, file: !5034, line: 23, baseType: !5041, size: 64, offset: 64)
!5041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !5037, file: !5034, line: 24, baseType: !5041, size: 64, offset: 128)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5037, file: !5034, line: 25, baseType: !151, size: 64, offset: 192)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !5037, file: !5034, line: 26, baseType: !151, size: 64, offset: 256)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !5037, file: !5034, line: 27, baseType: !151, size: 64, offset: 320)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5033, file: !5034, line: 128, baseType: !981, size: 128, offset: 384)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !5033, file: !5034, line: 129, baseType: !1326, size: 256, offset: 512)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5033, file: !5034, line: 130, baseType: !5049, size: 32, offset: 768)
!5049 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !5034, line: 68, baseType: !87, size: 32, elements: !5050)
!5050 = !{!5051, !5052, !5053, !5054, !5055}
!5051 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!5052 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!5053 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!5054 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!5055 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5033, file: !5034, line: 131, baseType: !87, size: 32, offset: 800)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !5033, file: !5034, line: 132, baseType: !151, size: 64, offset: 832)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5033, file: !5034, line: 133, baseType: !5059, size: 64, offset: 896)
!5059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5060, size: 64)
!5060 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5061)
!5061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !5034, line: 77, size: 192, elements: !5062)
!5062 = !{!5063, !5067, !5068}
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !5061, file: !5034, line: 83, baseType: !5064, size: 64)
!5064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5065, size: 64)
!5065 = !DISubroutineType(types: !5066)
!5066 = !{null, !146}
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !5061, file: !5034, line: 89, baseType: !2422, size: 64, offset: 64)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !5061, file: !5034, line: 100, baseType: !5069, size: 64, offset: 128)
!5069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5070, size: 64)
!5070 = !DISubroutineType(types: !5071)
!5071 = !{!12, !5032, !151, !151, !12}
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5033, file: !5034, line: 134, baseType: !89, size: 64, offset: 960)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !5033, file: !5034, line: 135, baseType: !12, size: 32, offset: 1024)
!5074 = !DIDerivedType(tag: DW_TAG_member, scope: !5033, file: !5034, line: 136, baseType: !5075, size: 128, offset: 1088)
!5075 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5033, file: !5034, line: 136, size: 128, elements: !5076)
!5076 = !{!5077, !5083}
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !5075, file: !5034, line: 137, baseType: !5078, size: 128)
!5078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !5079, line: 6, size: 128, elements: !5080)
!5079 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!5080 = !{!5081, !5082}
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5078, file: !5079, line: 7, baseType: !20, size: 64)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5078, file: !5079, line: 8, baseType: !20, size: 64, offset: 64)
!5083 = !DIDerivedType(tag: DW_TAG_member, scope: !5075, file: !5034, line: 138, baseType: !5084)
!5084 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5075, file: !5034, line: 138, elements: !5085)
!5085 = !{!5086, !5088}
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !5084, file: !5034, line: 138, baseType: !5087)
!5087 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5084, file: !5034, line: 138, elements: !137)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !5084, file: !5034, line: 138, baseType: !5089)
!5089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5078, elements: !622)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !5029, file: !148, line: 147, baseType: !89, size: 64, offset: 64)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !153, file: !148, line: 161, baseType: !519, size: 128, align: 64)
!5092 = !DIDerivedType(tag: DW_TAG_member, scope: !147, file: !148, line: 164, baseType: !5093, size: 32, offset: 384)
!5093 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !147, file: !148, line: 164, size: 32, elements: !5094)
!5094 = !{!5095, !5096}
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !5093, file: !148, line: 169, baseType: !66, size: 32)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !5093, file: !148, line: 177, baseType: !87, size: 32)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !147, file: !148, line: 181, baseType: !66, size: 32, offset: 416)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !143, file: !115, line: 33, baseType: !87, size: 32, offset: 64)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !143, file: !115, line: 34, baseType: !87, size: 32, offset: 96)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pool", scope: !101, file: !15, line: 317, baseType: !5101, size: 64, offset: 896)
!5101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5102, size: 64)
!5102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_set", file: !3972, line: 678, size: 1984, elements: !5103)
!5103 = !{!5104, !5105, !5106, !5109, !5129, !5130, !5131, !5132, !5133, !5134, !5135}
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "bio_slab", scope: !5102, file: !3972, line: 679, baseType: !2139, size: 64)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "front_pad", scope: !5102, file: !3972, line: 680, baseType: !87, size: 32, offset: 64)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !5102, file: !3972, line: 685, baseType: !5107, size: 64, offset: 128)
!5107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5108, size: 64)
!5108 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_alloc_cache", file: !3972, line: 685, flags: DIFlagFwdDecl)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "bio_pool", scope: !5102, file: !3972, line: 687, baseType: !5110, size: 576, offset: 192)
!5110 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_t", file: !2141, line: 26, baseType: !5111)
!5111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempool_s", file: !2141, line: 16, size: 576, elements: !5112)
!5112 = !{!5113, !5114, !5115, !5116, !5117, !5118, !5123, !5128}
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5111, file: !2141, line: 17, baseType: !46, size: 32)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "min_nr", scope: !5111, file: !2141, line: 18, baseType: !12, size: 32, offset: 32)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "curr_nr", scope: !5111, file: !2141, line: 19, baseType: !12, size: 32, offset: 64)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !5111, file: !2141, line: 20, baseType: !2578, size: 64, offset: 128)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "pool_data", scope: !5111, file: !2141, line: 22, baseType: !89, size: 64, offset: 192)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !5111, file: !2141, line: 23, baseType: !5119, size: 64, offset: 256)
!5119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5120, size: 64)
!5120 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_alloc_t", file: !2141, line: 13, baseType: !5121)
!5121 = !DISubroutineType(types: !5122)
!5122 = !{!89, !86, !89}
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5111, file: !2141, line: 24, baseType: !5124, size: 64, offset: 320)
!5124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5125, size: 64)
!5125 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_free_t", file: !2141, line: 14, baseType: !5126)
!5126 = !DISubroutineType(types: !5127)
!5127 = !{null, !89, !89}
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !5111, file: !2141, line: 25, baseType: !607, size: 192, offset: 384)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_pool", scope: !5102, file: !3972, line: 688, baseType: !5110, size: 576, offset: 768)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "back_pad", scope: !5102, file: !3972, line: 694, baseType: !87, size: 32, offset: 1344)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_lock", scope: !5102, file: !3972, line: 699, baseType: !46, size: 32, offset: 1376)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_list", scope: !5102, file: !3972, line: 700, baseType: !3971, size: 128, offset: 1408)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_work", scope: !5102, file: !3972, line: 701, baseType: !1031, size: 256, offset: 1536)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_workqueue", scope: !5102, file: !3972, line: 702, baseType: !1054, size: 64, offset: 1792)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !5102, file: !3972, line: 707, baseType: !598, size: 128, offset: 1856)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "bi_inline_vecs", scope: !101, file: !15, line: 324, baseType: !5137, offset: 960)
!5137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, elements: !622)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "poll_bio", scope: !94, file: !29, line: 1390, baseType: !5139, size: 64, offset: 64)
!5139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5140, size: 64)
!5140 = !DISubroutineType(types: !5141)
!5141 = !{!12, !100, !964, !87}
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !94, file: !29, line: 1392, baseType: !5143, size: 64, offset: 128)
!5143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5144, size: 64)
!5144 = !DISubroutineType(types: !5145)
!5145 = !{!12, !27, !5146}
!5146 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_mode_t", file: !29, line: 115, baseType: !87)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !94, file: !29, line: 1393, baseType: !5148, size: 64, offset: 192)
!5148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5149, size: 64)
!5149 = !DISubroutineType(types: !5150)
!5150 = !{null, !27}
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !94, file: !29, line: 1394, baseType: !5152, size: 64, offset: 256)
!5152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5153, size: 64)
!5153 = !DISubroutineType(types: !5154)
!5154 = !{!12, !13, !5146, !87, !151}
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !94, file: !29, line: 1396, baseType: !5152, size: 64, offset: 320)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "check_events", scope: !94, file: !29, line: 1398, baseType: !5157, size: 64, offset: 384)
!5157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5158, size: 64)
!5158 = !DISubroutineType(types: !5159)
!5159 = !{!87, !27, !87}
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_native_capacity", scope: !94, file: !29, line: 1400, baseType: !5148, size: 64, offset: 448)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "getgeo", scope: !94, file: !29, line: 1401, baseType: !5162, size: 64, offset: 512)
!5162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5163, size: 64)
!5163 = !DISubroutineType(types: !5164)
!5164 = !{!12, !13, !5165}
!5165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5166, size: 64)
!5166 = !DICompositeType(tag: DW_TAG_structure_type, name: "hd_geometry", file: !177, line: 56, flags: DIFlagFwdDecl)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_only", scope: !94, file: !29, line: 1402, baseType: !5168, size: 64, offset: 576)
!5168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5169, size: 64)
!5169 = !DISubroutineType(types: !5170)
!5170 = !{!12, !13, !745}
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "free_disk", scope: !94, file: !29, line: 1403, baseType: !5148, size: 64, offset: 640)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "swap_slot_free_notify", scope: !94, file: !29, line: 1405, baseType: !5173, size: 64, offset: 704)
!5173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5174, size: 64)
!5174 = !DISubroutineType(types: !5175)
!5175 = !{null, !13, !151}
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "report_zones", scope: !94, file: !29, line: 1406, baseType: !5177, size: 64, offset: 768)
!5177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5178, size: 64)
!5178 = !DISubroutineType(types: !5179)
!5179 = !{!12, !27, !18, !87, !5180, !89}
!5180 = !DIDerivedType(tag: DW_TAG_typedef, name: "report_zones_cb", file: !29, line: 342, baseType: !5181)
!5181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5182, size: 64)
!5182 = !DISubroutineType(types: !5183)
!5183 = !{!12, !5184, !87, !89}
!5184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5185, size: 64)
!5185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_zone", file: !5186, line: 106, size: 512, elements: !5187)
!5186 = !DIFile(filename: "./include/uapi/linux/blkzoned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3d5e7016ed7b437a9c2a308f55db1257")
!5187 = !{!5188, !5189, !5190, !5191, !5192, !5193, !5194, !5195, !5197, !5198}
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5185, file: !5186, line: 107, baseType: !22, size: 64)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5185, file: !5186, line: 108, baseType: !22, size: 64, offset: 64)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !5185, file: !5186, line: 109, baseType: !22, size: 64, offset: 128)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5185, file: !5186, line: 110, baseType: !75, size: 8, offset: 192)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !5185, file: !5186, line: 111, baseType: !75, size: 8, offset: 200)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "non_seq", scope: !5185, file: !5186, line: 112, baseType: !75, size: 8, offset: 208)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5185, file: !5186, line: 113, baseType: !75, size: 8, offset: 216)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !5185, file: !5186, line: 114, baseType: !5196, size: 32, offset: 224)
!5196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 32, elements: !603)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !5185, file: !5186, line: 115, baseType: !22, size: 64, offset: 256)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5185, file: !5186, line: 116, baseType: !5199, size: 192, offset: 320)
!5199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 192, elements: !5200)
!5200 = !{!5201}
!5201 = !DISubrange(count: 24)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !94, file: !29, line: 1408, baseType: !5203, size: 64, offset: 832)
!5203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5204, size: 64)
!5204 = !DISubroutineType(types: !5205)
!5205 = !{!319, !27, !1401}
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "get_unique_id", scope: !94, file: !29, line: 1410, baseType: !5207, size: 64, offset: 896)
!5207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5208, size: 64)
!5208 = !DISubroutineType(types: !5209)
!5209 = !{!12, !27, !5210, !5211}
!5210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!5211 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_unique_id", file: !29, line: 1381, baseType: !87, size: 32, elements: !5212)
!5212 = !{!5213, !5214, !5215}
!5213 = !DIEnumerator(name: "BLK_UID_T10", value: 1)
!5214 = !DIEnumerator(name: "BLK_UID_EUI64", value: 2)
!5215 = !DIEnumerator(name: "BLK_UID_NAA", value: 3)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !94, file: !29, line: 1412, baseType: !369, size: 64, offset: 960)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "pr_ops", scope: !94, file: !29, line: 1413, baseType: !5218, size: 64, offset: 1024)
!5218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5219, size: 64)
!5219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5220)
!5220 = !DICompositeType(tag: DW_TAG_structure_type, name: "pr_ops", file: !29, line: 37, flags: DIFlagFwdDecl)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "alternative_gpt_sector", scope: !94, file: !29, line: 1420, baseType: !5222, size: 64, offset: 1088)
!5222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5223, size: 64)
!5223 = !DISubroutineType(types: !5224)
!5224 = !{!12, !27, !4992}
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !28, file: !29, line: 146, baseType: !973, size: 64, offset: 640)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !28, file: !29, line: 147, baseType: !89, size: 64, offset: 704)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "bio_split", scope: !28, file: !29, line: 149, baseType: !5102, size: 1984, offset: 768)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !28, file: !29, line: 151, baseType: !12, size: 32, offset: 2752)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !28, file: !29, line: 152, baseType: !151, size: 64, offset: 2816)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "open_mutex", scope: !28, file: !29, line: 161, baseType: !541, size: 256, offset: 2880)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "open_partitions", scope: !28, file: !29, line: 162, baseType: !87, size: 32, offset: 3136)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !28, file: !29, line: 164, baseType: !3310, size: 64, offset: 3200)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "queue_kobj", scope: !28, file: !29, line: 165, baseType: !389, size: 512, offset: 3264)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "slave_dir", scope: !28, file: !29, line: 166, baseType: !395, size: 64, offset: 3776)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "slave_bdevs", scope: !28, file: !29, line: 168, baseType: !162, size: 128, offset: 3840)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !28, file: !29, line: 170, baseType: !5237, size: 64, offset: 3968)
!5237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5238, size: 64)
!5238 = !DICompositeType(tag: DW_TAG_structure_type, name: "timer_rand_state", file: !29, line: 170, flags: DIFlagFwdDecl)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "sync_io", scope: !28, file: !29, line: 171, baseType: !66, size: 32, offset: 4032)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "ev", scope: !28, file: !29, line: 172, baseType: !5241, size: 64, offset: 4096)
!5241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5242, size: 64)
!5242 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_events", file: !29, line: 104, flags: DIFlagFwdDecl)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "cdi", scope: !28, file: !29, line: 197, baseType: !5244, size: 64, offset: 4160)
!5244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5245, size: 64)
!5245 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdrom_device_info", file: !29, line: 197, flags: DIFlagFwdDecl)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !28, file: !29, line: 199, baseType: !12, size: 32, offset: 4224)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !28, file: !29, line: 200, baseType: !5248, size: 64, offset: 4288)
!5248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5249, size: 64)
!5249 = !DICompositeType(tag: DW_TAG_structure_type, name: "badblocks", file: !29, line: 105, flags: DIFlagFwdDecl)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "lockdep_map", scope: !28, file: !29, line: 201, baseType: !1301, offset: 4352)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "diskseq", scope: !28, file: !29, line: 202, baseType: !20, size: 64, offset: 4352)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "open_mode", scope: !28, file: !29, line: 203, baseType: !5146, size: 32, offset: 4416)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ranges", scope: !28, file: !29, line: 209, baseType: !5254, size: 64, offset: 4480)
!5254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5255, size: 64)
!5255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_ranges", file: !29, line: 384, size: 576, elements: !5256)
!5256 = !{!5257, !5258, !5259, !5260}
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !5255, file: !29, line: 385, baseType: !389, size: 512)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_registered", scope: !5255, file: !29, line: 386, baseType: !745, size: 8, offset: 512)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ia_ranges", scope: !5255, file: !29, line: 387, baseType: !87, size: 32, offset: 544)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "ia_range", scope: !5255, file: !29, line: 388, baseType: !5261, offset: 576)
!5261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5262, elements: !622)
!5262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_range", file: !29, line: 378, size: 640, elements: !5263)
!5263 = !{!5264, !5265, !5266}
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !5262, file: !29, line: 379, baseType: !389, size: 512)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "sector", scope: !5262, file: !29, line: 380, baseType: !18, size: 64, offset: 512)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sectors", scope: !5262, file: !29, line: 381, baseType: !18, size: 64, offset: 576)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !14, file: !15, line: 44, baseType: !973, size: 64, offset: 192)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !14, file: !15, line: 45, baseType: !5269, size: 64, offset: 256)
!5269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5270, size: 64)
!5270 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !15, line: 45, flags: DIFlagFwdDecl)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !14, file: !15, line: 46, baseType: !151, size: 64, offset: 320)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !14, file: !15, line: 47, baseType: !745, size: 8, offset: 384)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !14, file: !15, line: 48, baseType: !74, size: 8, offset: 392)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !14, file: !15, line: 49, baseType: !745, size: 8, offset: 400)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !14, file: !15, line: 50, baseType: !745, size: 8, offset: 408)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !14, file: !15, line: 51, baseType: !335, size: 32, offset: 416)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !14, file: !15, line: 52, baseType: !66, size: 32, offset: 448)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !14, file: !15, line: 53, baseType: !46, size: 32, offset: 480)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !14, file: !15, line: 54, baseType: !180, size: 64, offset: 512)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !14, file: !15, line: 55, baseType: !89, size: 64, offset: 576)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !14, file: !15, line: 56, baseType: !89, size: 64, offset: 640)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !14, file: !15, line: 57, baseType: !5283, size: 64, offset: 704)
!5283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5284, size: 64)
!5284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5285)
!5285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !29, line: 1477, size: 128, elements: !5286)
!5286 = !{!5287, !5291}
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dead", scope: !5285, file: !29, line: 1478, baseType: !5288, size: 64)
!5288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5289, size: 64)
!5289 = !DISubroutineType(types: !5290)
!5290 = !{null, !13, !745}
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !5285, file: !29, line: 1483, baseType: !5292, size: 64, offset: 64)
!5292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5293, size: 64)
!5293 = !DISubroutineType(types: !5294)
!5294 = !{null, !13}
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !14, file: !15, line: 58, baseType: !541, size: 256, offset: 768)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !14, file: !15, line: 60, baseType: !12, size: 32, offset: 1024)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !14, file: !15, line: 61, baseType: !12, size: 32, offset: 1056)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !14, file: !15, line: 62, baseType: !395, size: 64, offset: 1088)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !14, file: !15, line: 65, baseType: !541, size: 256, offset: 1152)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !14, file: !15, line: 66, baseType: !330, size: 64, offset: 1408)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !14, file: !15, line: 68, baseType: !5302, size: 64, offset: 1472)
!5302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5303, size: 64)
!5303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !29, line: 63, size: 808, elements: !5304)
!5304 = !{!5305, !5309}
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !5303, file: !29, line: 64, baseType: !5306, size: 296)
!5306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !5307)
!5307 = !{!5308}
!5308 = !DISubrange(count: 37)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "volname", scope: !5303, file: !29, line: 65, baseType: !5310, size: 512, offset: 296)
!5310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 512, elements: !434)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !14, file: !15, line: 72, baseType: !745, size: 8, offset: 1536)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !14, file: !15, line: 77, baseType: !1375, size: 5824, offset: 1600)
!5313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!5314 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF block/.blk-lib.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22block/blk-lib\22 -D KBUILD_BASENAME=\22blk_lib\22 -D KBUILD_MODNAME=\22blk_lib\22 -D __KBUILD_MODNAME=kmod_blk_lib -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o block/blk-lib.ll block/blk-lib.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !5315, retainedTypes: !5361, globals: !5364, splitDebugInlining: false, nameTableKind: None)
!5315 = !{!374, !625, !1202, !1465, !1527, !1600, !1684, !1692, !1911, !1960, !1970, !1976, !1984, !2012, !2044, !2101, !2159, !2438, !3049, !3118, !3637, !4172, !4962, !5049, !5211, !5316, !5333, !5338}
!5316 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "req_op", file: !15, line: 371, baseType: !87, size: 32, elements: !5317)
!5317 = !{!5318, !5319, !5320, !5321, !5322, !5323, !5324, !5325, !5326, !5327, !5328, !5329, !5330, !5331, !5332}
!5318 = !DIEnumerator(name: "REQ_OP_READ", value: 0)
!5319 = !DIEnumerator(name: "REQ_OP_WRITE", value: 1)
!5320 = !DIEnumerator(name: "REQ_OP_FLUSH", value: 2)
!5321 = !DIEnumerator(name: "REQ_OP_DISCARD", value: 3)
!5322 = !DIEnumerator(name: "REQ_OP_SECURE_ERASE", value: 5)
!5323 = !DIEnumerator(name: "REQ_OP_WRITE_ZEROES", value: 9)
!5324 = !DIEnumerator(name: "REQ_OP_ZONE_OPEN", value: 10)
!5325 = !DIEnumerator(name: "REQ_OP_ZONE_CLOSE", value: 11)
!5326 = !DIEnumerator(name: "REQ_OP_ZONE_FINISH", value: 12)
!5327 = !DIEnumerator(name: "REQ_OP_ZONE_APPEND", value: 13)
!5328 = !DIEnumerator(name: "REQ_OP_ZONE_RESET", value: 15)
!5329 = !DIEnumerator(name: "REQ_OP_ZONE_RESET_ALL", value: 17)
!5330 = !DIEnumerator(name: "REQ_OP_DRV_IN", value: 34)
!5331 = !DIEnumerator(name: "REQ_OP_DRV_OUT", value: 35)
!5332 = !DIEnumerator(name: "REQ_OP_LAST", value: 36)
!5333 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !5334, line: 10, baseType: !87, size: 32, elements: !5335)
!5334 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!5335 = !{!5336, !5337}
!5336 = !DIEnumerator(name: "false", value: 0)
!5337 = !DIEnumerator(name: "true", value: 1)
!5338 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "req_flag_bits", file: !15, line: 404, baseType: !87, size: 32, elements: !5339)
!5339 = !{!5340, !5341, !5342, !5343, !5344, !5345, !5346, !5347, !5348, !5349, !5350, !5351, !5352, !5353, !5354, !5355, !5356, !5357, !5358, !5359, !5360}
!5340 = !DIEnumerator(name: "__REQ_FAILFAST_DEV", value: 8)
!5341 = !DIEnumerator(name: "__REQ_FAILFAST_TRANSPORT", value: 9)
!5342 = !DIEnumerator(name: "__REQ_FAILFAST_DRIVER", value: 10)
!5343 = !DIEnumerator(name: "__REQ_SYNC", value: 11)
!5344 = !DIEnumerator(name: "__REQ_META", value: 12)
!5345 = !DIEnumerator(name: "__REQ_PRIO", value: 13)
!5346 = !DIEnumerator(name: "__REQ_NOMERGE", value: 14)
!5347 = !DIEnumerator(name: "__REQ_IDLE", value: 15)
!5348 = !DIEnumerator(name: "__REQ_INTEGRITY", value: 16)
!5349 = !DIEnumerator(name: "__REQ_FUA", value: 17)
!5350 = !DIEnumerator(name: "__REQ_PREFLUSH", value: 18)
!5351 = !DIEnumerator(name: "__REQ_RAHEAD", value: 19)
!5352 = !DIEnumerator(name: "__REQ_BACKGROUND", value: 20)
!5353 = !DIEnumerator(name: "__REQ_NOWAIT", value: 21)
!5354 = !DIEnumerator(name: "__REQ_POLLED", value: 22)
!5355 = !DIEnumerator(name: "__REQ_ALLOC_CACHE", value: 23)
!5356 = !DIEnumerator(name: "__REQ_SWAP", value: 24)
!5357 = !DIEnumerator(name: "__REQ_DRV", value: 25)
!5358 = !DIEnumerator(name: "__REQ_FS_PRIVATE", value: 26)
!5359 = !DIEnumerator(name: "__REQ_NOUNMAP", value: 27)
!5360 = !DIEnumerator(name: "__REQ_NR_BITS", value: 28)
!5361 = !{!89, !18, !5362, !5363, !2982, !87, !106, !146, !151}
!5362 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !19, line: 42, baseType: !151)
!5363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5041, size: 64)
!5364 = !{!0, !7, !5365, !5370, !5375, !5377, !5379, !5381, !5383, !5385}
!5365 = !DIGlobalVariableExpression(var: !5366, expr: !DIExpression())
!5366 = distinct !DIGlobalVariable(scope: null, file: !2, line: 51, type: !5367, isLocal: true, isDefinition: true)
!5367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 184, elements: !5368)
!5368 = !{!5369}
!5369 = !DISubrange(count: 23)
!5370 = !DIGlobalVariableExpression(var: !5371, expr: !DIExpression())
!5371 = distinct !DIGlobalVariable(scope: null, file: !2, line: 51, type: !5372, isLocal: true, isDefinition: true)
!5372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !5373)
!5373 = !{!5374}
!5374 = !DISubrange(count: 41)
!5375 = !DIGlobalVariableExpression(var: !5376, expr: !DIExpression())
!5376 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___blkdev_issue_discard350", scope: !5314, file: !2, line: 85, type: !89, isLocal: true, isDefinition: true)
!5377 = !DIGlobalVariableExpression(var: !5378, expr: !DIExpression())
!5378 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_blkdev_issue_discard351", scope: !5314, file: !2, line: 116, type: !89, isLocal: true, isDefinition: true)
!5379 = !DIGlobalVariableExpression(var: !5380, expr: !DIExpression())
!5380 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___blkdev_issue_zeroout356", scope: !5314, file: !2, line: 237, type: !89, isLocal: true, isDefinition: true)
!5381 = !DIGlobalVariableExpression(var: !5382, expr: !DIExpression())
!5382 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_blkdev_issue_zeroout357", scope: !5314, file: !2, line: 301, type: !89, isLocal: true, isDefinition: true)
!5383 = !DIGlobalVariableExpression(var: !5384, expr: !DIExpression())
!5384 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_blkdev_issue_secure_erase360", scope: !5314, file: !2, line: 345, type: !89, isLocal: true, isDefinition: true)
!5385 = !DIGlobalVariableExpression(var: !5386, expr: !DIExpression())
!5386 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__cond_resched168", scope: !5387, file: !1360, line: 2104, type: !89, isLocal: true, isDefinition: true)
!5387 = distinct !DISubprogram(name: "_cond_resched", scope: !1360, file: !1360, line: 2102, type: !2864, scopeLine: 2103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5314)
!5388 = !{!5389, !5390, !5391, !5392, !5393, !5394, !5395, !5396, !5399, !5402, !5404, !5406}
!5389 = !DILocalVariable(name: "bdev", arg: 1, scope: !9, file: !2, line: 38, type: !13)
!5390 = !DILocalVariable(name: "sector", arg: 2, scope: !9, file: !2, line: 38, type: !18)
!5391 = !DILocalVariable(name: "nr_sects", arg: 3, scope: !9, file: !2, line: 39, type: !18)
!5392 = !DILocalVariable(name: "gfp_mask", arg: 4, scope: !9, file: !2, line: 39, type: !86)
!5393 = !DILocalVariable(name: "biop", arg: 5, scope: !9, file: !2, line: 39, type: !5313)
!5394 = !DILocalVariable(name: "bio", scope: !9, file: !2, line: 41, type: !100)
!5395 = !DILocalVariable(name: "bs_mask", scope: !9, file: !2, line: 42, type: !18)
!5396 = !DILocalVariable(name: "__ret_warn_on", scope: !5397, file: !2, line: 50, type: !12)
!5397 = distinct !DILexicalBlock(scope: !5398, file: !2, line: 50, column: 6)
!5398 = distinct !DILexicalBlock(scope: !9, file: !2, line: 50, column: 6)
!5399 = !DILocalVariable(name: "__flags", scope: !5400, file: !2, line: 50, type: !12)
!5400 = distinct !DILexicalBlock(scope: !5401, file: !2, line: 50, column: 6)
!5401 = distinct !DILexicalBlock(scope: !5397, file: !2, line: 50, column: 6)
!5402 = !DILocalVariable(name: "req_sects", scope: !5403, file: !2, line: 64, type: !18)
!5403 = distinct !DILexicalBlock(scope: !9, file: !2, line: 63, column: 19)
!5404 = !DILocalVariable(name: "__UNIQUE_ID___x348", scope: !5405, file: !2, line: 65, type: !18)
!5405 = distinct !DILexicalBlock(scope: !5403, file: !2, line: 65, column: 4)
!5406 = !DILocalVariable(name: "__UNIQUE_ID___y349", scope: !5405, file: !2, line: 65, type: !18)
!5407 = !{i32 7, !"Dwarf Version", i32 5}
!5408 = !{i32 2, !"Debug Info Version", i32 3}
!5409 = !{i32 1, !"wchar_size", i32 2}
!5410 = !{i32 8, !"cf-protection-branch", i32 1}
!5411 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5412 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5413 = !{i32 1, !"Code Model", i32 2}
!5414 = !{i32 1, !"override-stack-alignment", i32 8}
!5415 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5416 = !DILocation(line: 38, column: 49, scope: !9)
!5417 = !DILocation(line: 38, column: 64, scope: !9)
!5418 = !DILocation(line: 39, column: 12, scope: !9)
!5419 = !DILocation(line: 39, column: 28, scope: !9)
!5420 = !DILocation(line: 39, column: 51, scope: !9)
!5421 = !DILocation(line: 41, column: 2, scope: !9)
!5422 = !DILocation(line: 41, column: 14, scope: !9)
!5423 = !DILocation(line: 41, column: 21, scope: !9)
!5424 = !DILocation(line: 41, column: 20, scope: !9)
!5425 = !DILocation(line: 42, column: 2, scope: !9)
!5426 = !DILocation(line: 42, column: 11, scope: !9)
!5427 = !DILocation(line: 44, column: 21, scope: !5428)
!5428 = distinct !DILexicalBlock(scope: !9, file: !2, line: 44, column: 6)
!5429 = !DILocation(line: 44, column: 6, scope: !5428)
!5430 = !DILocation(line: 44, column: 6, scope: !9)
!5431 = !DILocation(line: 45, column: 3, scope: !5428)
!5432 = !DILocation(line: 46, column: 32, scope: !5433)
!5433 = distinct !DILexicalBlock(scope: !9, file: !2, line: 46, column: 6)
!5434 = !DILocation(line: 46, column: 7, scope: !5433)
!5435 = !DILocation(line: 46, column: 6, scope: !9)
!5436 = !DILocation(line: 47, column: 3, scope: !5433)
!5437 = !DILocation(line: 50, column: 6, scope: !5397)
!5438 = !DILocation(line: 50, column: 6, scope: !5401)
!5439 = !DILocation(line: 50, column: 6, scope: !5400)
!5440 = !DILocation(line: 50, column: 6, scope: !5441)
!5441 = distinct !DILexicalBlock(scope: !5400, file: !2, line: 50, column: 6)
!5442 = !DILocation(line: 50, column: 6, scope: !5443)
!5443 = distinct !DILexicalBlock(scope: !5400, file: !2, line: 50, column: 6)
!5444 = !{i64 2156023803, i64 2156023832, i64 2156023878, i64 2156023936, i64 2156023990, i64 2156024044, i64 2156024099, i64 2156024130, i64 2156024438, i64 2156024444, i64 2156024491, i64 2156024514, i64 2156024540}
!5445 = !DILocation(line: 50, column: 6, scope: !5446)
!5446 = distinct !DILexicalBlock(scope: !5400, file: !2, line: 50, column: 6)
!5447 = !DILocation(line: 50, column: 6, scope: !5398)
!5448 = !DILocation(line: 50, column: 6, scope: !9)
!5449 = !DILocation(line: 51, column: 3, scope: !5450)
!5450 = distinct !DILexicalBlock(scope: !5451, file: !2, line: 51, column: 3)
!5451 = distinct !DILexicalBlock(scope: !5452, file: !2, line: 51, column: 3)
!5452 = distinct !DILexicalBlock(scope: !5398, file: !2, line: 50, column: 53)
!5453 = !DILocation(line: 51, column: 3, scope: !5451)
!5454 = !DILocation(line: 51, column: 3, scope: !5455)
!5455 = distinct !DILexicalBlock(scope: !5450, file: !2, line: 51, column: 3)
!5456 = !DILocation(line: 51, column: 3, scope: !5457)
!5457 = distinct !DILexicalBlock(scope: !5455, file: !2, line: 51, column: 3)
!5458 = !DILocation(line: 53, column: 3, scope: !5452)
!5459 = !DILocation(line: 56, column: 37, scope: !9)
!5460 = !DILocation(line: 56, column: 13, scope: !9)
!5461 = !DILocation(line: 56, column: 43, scope: !9)
!5462 = !DILocation(line: 56, column: 49, scope: !9)
!5463 = !DILocation(line: 56, column: 12, scope: !9)
!5464 = !DILocation(line: 56, column: 10, scope: !9)
!5465 = !DILocation(line: 57, column: 7, scope: !5466)
!5466 = distinct !DILexicalBlock(scope: !9, file: !2, line: 57, column: 6)
!5467 = !DILocation(line: 57, column: 16, scope: !5466)
!5468 = !DILocation(line: 57, column: 14, scope: !5466)
!5469 = !DILocation(line: 57, column: 28, scope: !5466)
!5470 = !DILocation(line: 57, column: 26, scope: !5466)
!5471 = !DILocation(line: 57, column: 6, scope: !9)
!5472 = !DILocation(line: 58, column: 3, scope: !5466)
!5473 = !DILocation(line: 60, column: 7, scope: !5474)
!5474 = distinct !DILexicalBlock(scope: !9, file: !2, line: 60, column: 6)
!5475 = !DILocation(line: 60, column: 6, scope: !9)
!5476 = !DILocation(line: 61, column: 3, scope: !5474)
!5477 = !DILocation(line: 63, column: 2, scope: !9)
!5478 = !DILocation(line: 63, column: 9, scope: !9)
!5479 = !DILocation(line: 64, column: 3, scope: !5403)
!5480 = !DILocation(line: 64, column: 12, scope: !5403)
!5481 = !DILocation(line: 65, column: 4, scope: !5405)
!5482 = !DILocation(line: 65, column: 4, scope: !5403)
!5483 = !DILocation(line: 67, column: 22, scope: !5403)
!5484 = !DILocation(line: 67, column: 27, scope: !5403)
!5485 = !DILocation(line: 67, column: 52, scope: !5403)
!5486 = !DILocation(line: 67, column: 9, scope: !5403)
!5487 = !DILocation(line: 67, column: 7, scope: !5403)
!5488 = !DILocation(line: 68, column: 28, scope: !5403)
!5489 = !DILocation(line: 68, column: 3, scope: !5403)
!5490 = !DILocation(line: 68, column: 8, scope: !5403)
!5491 = !DILocation(line: 68, column: 16, scope: !5403)
!5492 = !DILocation(line: 68, column: 26, scope: !5403)
!5493 = !DILocation(line: 69, column: 26, scope: !5403)
!5494 = !DILocation(line: 69, column: 36, scope: !5403)
!5495 = !DILocation(line: 69, column: 3, scope: !5403)
!5496 = !DILocation(line: 69, column: 8, scope: !5403)
!5497 = !DILocation(line: 69, column: 16, scope: !5403)
!5498 = !DILocation(line: 69, column: 24, scope: !5403)
!5499 = !DILocation(line: 70, column: 13, scope: !5403)
!5500 = !DILocation(line: 70, column: 10, scope: !5403)
!5501 = !DILocation(line: 71, column: 15, scope: !5403)
!5502 = !DILocation(line: 71, column: 12, scope: !5403)
!5503 = !DILocation(line: 79, column: 3, scope: !5504)
!5504 = distinct !DILexicalBlock(scope: !5403, file: !2, line: 79, column: 3)
!5505 = !DILocation(line: 80, column: 2, scope: !9)
!5506 = distinct !{!5506, !5477, !5505, !5507, !5508}
!5507 = !{!"llvm.loop.mustprogress"}
!5508 = !{!"llvm.loop.unroll.disable"}
!5509 = !DILocation(line: 82, column: 10, scope: !9)
!5510 = !DILocation(line: 82, column: 3, scope: !9)
!5511 = !DILocation(line: 82, column: 8, scope: !9)
!5512 = !DILocation(line: 83, column: 2, scope: !9)
!5513 = !DILocation(line: 84, column: 1, scope: !9)
!5514 = distinct !DISubprogram(name: "bdev_read_only", scope: !29, file: !29, line: 761, type: !5515, scopeLine: 762, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5314, retainedNodes: !5517)
!5515 = !DISubroutineType(types: !5516)
!5516 = !{!12, !13}
!5517 = !{!5518}
!5518 = !DILocalVariable(name: "bdev", arg: 1, scope: !5514, file: !29, line: 761, type: !13)
!5519 = !DILocation(line: 761, column: 55, scope: !5514)
!5520 = !DILocation(line: 763, column: 9, scope: !5514)
!5521 = !DILocation(line: 763, column: 15, scope: !5514)
!5522 = !{i8 0, i8 2}
!5523 = !DILocation(line: 763, column: 28, scope: !5514)
!5524 = !DILocation(line: 763, column: 43, scope: !5514)
!5525 = !DILocation(line: 763, column: 49, scope: !5514)
!5526 = !DILocation(line: 763, column: 31, scope: !5514)
!5527 = !DILocation(line: 763, column: 2, scope: !5514)
!5528 = distinct !DISubprogram(name: "bdev_max_discard_sectors", scope: !29, file: !29, line: 1217, type: !5529, scopeLine: 1218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5314, retainedNodes: !5531)
!5529 = !DISubroutineType(types: !5530)
!5530 = !{!87, !13}
!5531 = !{!5532}
!5532 = !DILocalVariable(name: "bdev", arg: 1, scope: !5528, file: !29, line: 1217, type: !13)
!5533 = !DILocation(line: 1217, column: 74, scope: !5528)
!5534 = !DILocation(line: 1219, column: 24, scope: !5528)
!5535 = !DILocation(line: 1219, column: 9, scope: !5528)
!5536 = !DILocation(line: 1219, column: 31, scope: !5528)
!5537 = !DILocation(line: 1219, column: 38, scope: !5528)
!5538 = !DILocation(line: 1219, column: 2, scope: !5528)
!5539 = distinct !DISubprogram(name: "bdev_discard_granularity", scope: !29, file: !29, line: 1222, type: !5529, scopeLine: 1223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5314, retainedNodes: !5540)
!5540 = !{!5541}
!5541 = !DILocalVariable(name: "bdev", arg: 1, scope: !5539, file: !29, line: 1222, type: !13)
!5542 = !DILocation(line: 1222, column: 74, scope: !5539)
!5543 = !DILocation(line: 1224, column: 24, scope: !5539)
!5544 = !DILocation(line: 1224, column: 9, scope: !5539)
!5545 = !DILocation(line: 1224, column: 31, scope: !5539)
!5546 = !DILocation(line: 1224, column: 38, scope: !5539)
!5547 = !DILocation(line: 1224, column: 2, scope: !5539)
!5548 = !DISubprogram(name: "___ratelimit", scope: !818, file: !818, line: 44, type: !5549, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5549 = !DISubroutineType(types: !5550)
!5550 = !{!12, !5551, !294}
!5551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!5552 = !DISubprogram(name: "_printk", scope: !5553, file: !5553, line: 153, type: !5554, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5553 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5554 = !DISubroutineType(types: !5555)
!5555 = !{!12, !294, null}
!5556 = distinct !DISubprogram(name: "bdev_logical_block_size", scope: !29, file: !29, line: 1167, type: !5529, scopeLine: 1168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5314, retainedNodes: !5557)
!5557 = !{!5558}
!5558 = !DILocalVariable(name: "bdev", arg: 1, scope: !5556, file: !29, line: 1167, type: !13)
!5559 = !DILocation(line: 1167, column: 73, scope: !5556)
!5560 = !DILocation(line: 1169, column: 49, scope: !5556)
!5561 = !DILocation(line: 1169, column: 34, scope: !5556)
!5562 = !DILocation(line: 1169, column: 9, scope: !5556)
!5563 = !DILocation(line: 1169, column: 2, scope: !5556)
!5564 = distinct !DISubprogram(name: "bio_discard_limit", scope: !2, file: !2, line: 13, type: !5565, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5314, retainedNodes: !5567)
!5565 = !DISubroutineType(types: !5566)
!5566 = !{!18, !13, !18}
!5567 = !{!5568, !5569, !5570, !5571}
!5568 = !DILocalVariable(name: "bdev", arg: 1, scope: !5564, file: !2, line: 13, type: !13)
!5569 = !DILocalVariable(name: "sector", arg: 2, scope: !5564, file: !2, line: 13, type: !18)
!5570 = !DILocalVariable(name: "discard_granularity", scope: !5564, file: !2, line: 15, type: !87)
!5571 = !DILocalVariable(name: "granularity_aligned_sector", scope: !5564, file: !2, line: 16, type: !18)
!5572 = !DILocation(line: 13, column: 56, scope: !5564)
!5573 = !DILocation(line: 13, column: 71, scope: !5564)
!5574 = !DILocation(line: 15, column: 2, scope: !5564)
!5575 = !DILocation(line: 15, column: 15, scope: !5564)
!5576 = !DILocation(line: 15, column: 62, scope: !5564)
!5577 = !DILocation(line: 15, column: 37, scope: !5564)
!5578 = !DILocation(line: 16, column: 2, scope: !5564)
!5579 = !DILocation(line: 16, column: 11, scope: !5564)
!5580 = !DILocation(line: 18, column: 24, scope: !5581)
!5581 = distinct !DILexicalBlock(scope: !5564, file: !2, line: 18, column: 6)
!5582 = !DILocation(line: 18, column: 6, scope: !5581)
!5583 = !DILocation(line: 18, column: 6, scope: !5564)
!5584 = !DILocation(line: 19, column: 13, scope: !5581)
!5585 = !DILocation(line: 19, column: 19, scope: !5581)
!5586 = !DILocation(line: 19, column: 10, scope: !5581)
!5587 = !DILocation(line: 19, column: 3, scope: !5581)
!5588 = !DILocation(line: 22, column: 3, scope: !5564)
!5589 = !DILocation(line: 21, column: 29, scope: !5564)
!5590 = !DILocation(line: 28, column: 6, scope: !5591)
!5591 = distinct !DILexicalBlock(scope: !5564, file: !2, line: 28, column: 6)
!5592 = !DILocation(line: 28, column: 36, scope: !5591)
!5593 = !DILocation(line: 28, column: 33, scope: !5591)
!5594 = !DILocation(line: 28, column: 6, scope: !5564)
!5595 = !DILocation(line: 29, column: 10, scope: !5591)
!5596 = !DILocation(line: 29, column: 39, scope: !5591)
!5597 = !DILocation(line: 29, column: 37, scope: !5591)
!5598 = !DILocation(line: 29, column: 3, scope: !5591)
!5599 = !DILocation(line: 35, column: 9, scope: !5564)
!5600 = !DILocation(line: 35, column: 51, scope: !5564)
!5601 = !DILocation(line: 35, column: 2, scope: !5564)
!5602 = !DILocation(line: 36, column: 1, scope: !5564)
!5603 = !DISubprogram(name: "blk_next_bio", scope: !3972, file: !3972, line: 816, type: !5604, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5604 = !DISubroutineType(types: !5605)
!5605 = !{!100, !100, !13, !87, !106, !86}
!5606 = distinct !DISubprogram(name: "__might_resched", scope: !5607, file: !5607, line: 184, type: !5608, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5314, retainedNodes: !5610)
!5607 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!5608 = !DISubroutineType(types: !5609)
!5609 = !{null, !294, !12, !87}
!5610 = !{!5611, !5612, !5613}
!5611 = !DILocalVariable(name: "file", arg: 1, scope: !5606, file: !5607, line: 184, type: !294)
!5612 = !DILocalVariable(name: "line", arg: 2, scope: !5606, file: !5607, line: 184, type: !12)
!5613 = !DILocalVariable(name: "offsets", arg: 3, scope: !5606, file: !5607, line: 185, type: !87)
!5614 = !DILocation(line: 184, column: 50, scope: !5606)
!5615 = !DILocation(line: 184, column: 60, scope: !5606)
!5616 = !DILocation(line: 185, column: 23, scope: !5606)
!5617 = !DILocation(line: 185, column: 34, scope: !5606)
!5618 = !DILocation(line: 2104, column: 9, scope: !5619)
!5619 = distinct !DILexicalBlock(scope: !5387, file: !1360, line: 2104, column: 9)
!5620 = !DILocation(line: 2104, column: 9, scope: !5387)
!5621 = !DILocation(line: 2104, column: 2, scope: !5387)
!5622 = distinct !DISubprogram(name: "blkdev_issue_discard", scope: !2, file: !2, line: 97, type: !5623, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5314, retainedNodes: !5625)
!5623 = !DISubroutineType(types: !5624)
!5624 = !{!12, !13, !18, !18, !86}
!5625 = !{!5626, !5627, !5628, !5629, !5630, !5631, !5632}
!5626 = !DILocalVariable(name: "bdev", arg: 1, scope: !5622, file: !2, line: 97, type: !13)
!5627 = !DILocalVariable(name: "sector", arg: 2, scope: !5622, file: !2, line: 97, type: !18)
!5628 = !DILocalVariable(name: "nr_sects", arg: 3, scope: !5622, file: !2, line: 98, type: !18)
!5629 = !DILocalVariable(name: "gfp_mask", arg: 4, scope: !5622, file: !2, line: 98, type: !86)
!5630 = !DILocalVariable(name: "bio", scope: !5622, file: !2, line: 100, type: !100)
!5631 = !DILocalVariable(name: "plug", scope: !5622, file: !2, line: 101, type: !3978)
!5632 = !DILocalVariable(name: "ret", scope: !5622, file: !2, line: 102, type: !12)
!5633 = !DILocation(line: 97, column: 47, scope: !5622)
!5634 = !DILocation(line: 97, column: 62, scope: !5622)
!5635 = !DILocation(line: 98, column: 12, scope: !5622)
!5636 = !DILocation(line: 98, column: 28, scope: !5622)
!5637 = !DILocation(line: 100, column: 2, scope: !5622)
!5638 = !DILocation(line: 100, column: 14, scope: !5622)
!5639 = !DILocation(line: 101, column: 2, scope: !5622)
!5640 = !DILocation(line: 101, column: 18, scope: !5622)
!5641 = !DILocation(line: 102, column: 2, scope: !5622)
!5642 = !DILocation(line: 102, column: 6, scope: !5622)
!5643 = !DILocation(line: 104, column: 2, scope: !5622)
!5644 = !DILocation(line: 105, column: 31, scope: !5622)
!5645 = !DILocation(line: 105, column: 37, scope: !5622)
!5646 = !DILocation(line: 105, column: 45, scope: !5622)
!5647 = !DILocation(line: 105, column: 55, scope: !5622)
!5648 = !DILocation(line: 105, column: 8, scope: !5622)
!5649 = !DILocation(line: 105, column: 6, scope: !5622)
!5650 = !DILocation(line: 106, column: 7, scope: !5651)
!5651 = distinct !DILexicalBlock(scope: !5622, file: !2, line: 106, column: 6)
!5652 = !DILocation(line: 106, column: 11, scope: !5651)
!5653 = !DILocation(line: 106, column: 14, scope: !5651)
!5654 = !DILocation(line: 106, column: 6, scope: !5622)
!5655 = !DILocation(line: 107, column: 25, scope: !5656)
!5656 = distinct !DILexicalBlock(scope: !5651, file: !2, line: 106, column: 19)
!5657 = !DILocation(line: 107, column: 9, scope: !5656)
!5658 = !DILocation(line: 107, column: 7, scope: !5656)
!5659 = !DILocation(line: 108, column: 7, scope: !5660)
!5660 = distinct !DILexicalBlock(scope: !5656, file: !2, line: 108, column: 7)
!5661 = !DILocation(line: 108, column: 11, scope: !5660)
!5662 = !DILocation(line: 108, column: 7, scope: !5656)
!5663 = !DILocation(line: 109, column: 8, scope: !5660)
!5664 = !DILocation(line: 109, column: 4, scope: !5660)
!5665 = !DILocation(line: 110, column: 11, scope: !5656)
!5666 = !DILocation(line: 110, column: 3, scope: !5656)
!5667 = !DILocation(line: 111, column: 2, scope: !5656)
!5668 = !DILocation(line: 112, column: 2, scope: !5622)
!5669 = !DILocation(line: 114, column: 9, scope: !5622)
!5670 = !DILocation(line: 115, column: 1, scope: !5622)
!5671 = !DILocation(line: 114, column: 2, scope: !5622)
!5672 = !DISubprogram(name: "blk_start_plug", scope: !29, file: !29, line: 1000, type: !5673, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5673 = !DISubroutineType(types: !5674)
!5674 = !{null, !3977}
!5675 = !DISubprogram(name: "submit_bio_wait", scope: !3972, file: !3972, line: 469, type: !5676, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5676 = !DISubroutineType(types: !5677)
!5677 = !{!12, !100}
!5678 = !DISubprogram(name: "bio_put", scope: !3972, file: !3972, line: 423, type: !98, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5679 = !DISubprogram(name: "blk_finish_plug", scope: !29, file: !29, line: 1002, type: !5673, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5680 = distinct !DISubprogram(name: "__blkdev_issue_zeroout", scope: !2, file: !2, line: 218, type: !5681, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5314, retainedNodes: !5683)
!5681 = !DISubroutineType(types: !5682)
!5682 = !{!12, !13, !18, !18, !86, !5313, !87}
!5683 = !{!5684, !5685, !5686, !5687, !5688, !5689, !5690, !5691}
!5684 = !DILocalVariable(name: "bdev", arg: 1, scope: !5680, file: !2, line: 218, type: !13)
!5685 = !DILocalVariable(name: "sector", arg: 2, scope: !5680, file: !2, line: 218, type: !18)
!5686 = !DILocalVariable(name: "nr_sects", arg: 3, scope: !5680, file: !2, line: 219, type: !18)
!5687 = !DILocalVariable(name: "gfp_mask", arg: 4, scope: !5680, file: !2, line: 219, type: !86)
!5688 = !DILocalVariable(name: "biop", arg: 5, scope: !5680, file: !2, line: 219, type: !5313)
!5689 = !DILocalVariable(name: "flags", arg: 6, scope: !5680, file: !2, line: 220, type: !87)
!5690 = !DILocalVariable(name: "ret", scope: !5680, file: !2, line: 222, type: !12)
!5691 = !DILocalVariable(name: "bs_mask", scope: !5680, file: !2, line: 223, type: !18)
!5692 = !DILocation(line: 218, column: 49, scope: !5680)
!5693 = !DILocation(line: 218, column: 64, scope: !5680)
!5694 = !DILocation(line: 219, column: 12, scope: !5680)
!5695 = !DILocation(line: 219, column: 28, scope: !5680)
!5696 = !DILocation(line: 219, column: 51, scope: !5680)
!5697 = !DILocation(line: 220, column: 12, scope: !5680)
!5698 = !DILocation(line: 222, column: 2, scope: !5680)
!5699 = !DILocation(line: 222, column: 6, scope: !5680)
!5700 = !DILocation(line: 223, column: 2, scope: !5680)
!5701 = !DILocation(line: 223, column: 11, scope: !5680)
!5702 = !DILocation(line: 225, column: 37, scope: !5680)
!5703 = !DILocation(line: 225, column: 13, scope: !5680)
!5704 = !DILocation(line: 225, column: 43, scope: !5680)
!5705 = !DILocation(line: 225, column: 49, scope: !5680)
!5706 = !DILocation(line: 225, column: 12, scope: !5680)
!5707 = !DILocation(line: 225, column: 10, scope: !5680)
!5708 = !DILocation(line: 226, column: 7, scope: !5709)
!5709 = distinct !DILexicalBlock(scope: !5680, file: !2, line: 226, column: 6)
!5710 = !DILocation(line: 226, column: 16, scope: !5709)
!5711 = !DILocation(line: 226, column: 14, scope: !5709)
!5712 = !DILocation(line: 226, column: 28, scope: !5709)
!5713 = !DILocation(line: 226, column: 26, scope: !5709)
!5714 = !DILocation(line: 226, column: 6, scope: !5680)
!5715 = !DILocation(line: 227, column: 3, scope: !5709)
!5716 = !DILocation(line: 229, column: 36, scope: !5680)
!5717 = !DILocation(line: 229, column: 42, scope: !5680)
!5718 = !DILocation(line: 229, column: 50, scope: !5680)
!5719 = !DILocation(line: 229, column: 60, scope: !5680)
!5720 = !DILocation(line: 230, column: 4, scope: !5680)
!5721 = !DILocation(line: 230, column: 10, scope: !5680)
!5722 = !DILocation(line: 229, column: 8, scope: !5680)
!5723 = !DILocation(line: 229, column: 6, scope: !5680)
!5724 = !DILocation(line: 231, column: 6, scope: !5725)
!5725 = distinct !DILexicalBlock(scope: !5680, file: !2, line: 231, column: 6)
!5726 = !DILocation(line: 231, column: 10, scope: !5725)
!5727 = !DILocation(line: 231, column: 25, scope: !5725)
!5728 = !DILocation(line: 231, column: 29, scope: !5725)
!5729 = !DILocation(line: 231, column: 35, scope: !5725)
!5730 = !DILocation(line: 231, column: 6, scope: !5680)
!5731 = !DILocation(line: 232, column: 10, scope: !5725)
!5732 = !DILocation(line: 232, column: 3, scope: !5725)
!5733 = !DILocation(line: 234, column: 35, scope: !5680)
!5734 = !DILocation(line: 234, column: 41, scope: !5680)
!5735 = !DILocation(line: 234, column: 49, scope: !5680)
!5736 = !DILocation(line: 234, column: 59, scope: !5680)
!5737 = !DILocation(line: 235, column: 7, scope: !5680)
!5738 = !DILocation(line: 234, column: 9, scope: !5680)
!5739 = !DILocation(line: 234, column: 2, scope: !5680)
!5740 = !DILocation(line: 236, column: 1, scope: !5680)
!5741 = distinct !DISubprogram(name: "__blkdev_issue_write_zeroes", scope: !2, file: !2, line: 118, type: !5681, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5314, retainedNodes: !5742)
!5742 = !{!5743, !5744, !5745, !5746, !5747, !5748, !5749, !5750}
!5743 = !DILocalVariable(name: "bdev", arg: 1, scope: !5741, file: !2, line: 118, type: !13)
!5744 = !DILocalVariable(name: "sector", arg: 2, scope: !5741, file: !2, line: 119, type: !18)
!5745 = !DILocalVariable(name: "nr_sects", arg: 3, scope: !5741, file: !2, line: 119, type: !18)
!5746 = !DILocalVariable(name: "gfp_mask", arg: 4, scope: !5741, file: !2, line: 119, type: !86)
!5747 = !DILocalVariable(name: "biop", arg: 5, scope: !5741, file: !2, line: 120, type: !5313)
!5748 = !DILocalVariable(name: "flags", arg: 6, scope: !5741, file: !2, line: 120, type: !87)
!5749 = !DILocalVariable(name: "bio", scope: !5741, file: !2, line: 122, type: !100)
!5750 = !DILocalVariable(name: "max_write_zeroes_sectors", scope: !5741, file: !2, line: 123, type: !87)
!5751 = !DILocation(line: 118, column: 61, scope: !5741)
!5752 = !DILocation(line: 119, column: 12, scope: !5741)
!5753 = !DILocation(line: 119, column: 29, scope: !5741)
!5754 = !DILocation(line: 119, column: 45, scope: !5741)
!5755 = !DILocation(line: 120, column: 16, scope: !5741)
!5756 = !DILocation(line: 120, column: 31, scope: !5741)
!5757 = !DILocation(line: 122, column: 2, scope: !5741)
!5758 = !DILocation(line: 122, column: 14, scope: !5741)
!5759 = !DILocation(line: 122, column: 21, scope: !5741)
!5760 = !DILocation(line: 122, column: 20, scope: !5741)
!5761 = !DILocation(line: 123, column: 2, scope: !5741)
!5762 = !DILocation(line: 123, column: 15, scope: !5741)
!5763 = !DILocation(line: 125, column: 21, scope: !5764)
!5764 = distinct !DILexicalBlock(scope: !5741, file: !2, line: 125, column: 6)
!5765 = !DILocation(line: 125, column: 6, scope: !5764)
!5766 = !DILocation(line: 125, column: 6, scope: !5741)
!5767 = !DILocation(line: 126, column: 3, scope: !5764)
!5768 = !DILocation(line: 129, column: 55, scope: !5741)
!5769 = !DILocation(line: 129, column: 29, scope: !5741)
!5770 = !DILocation(line: 129, column: 27, scope: !5741)
!5771 = !DILocation(line: 131, column: 6, scope: !5772)
!5772 = distinct !DILexicalBlock(scope: !5741, file: !2, line: 131, column: 6)
!5773 = !DILocation(line: 131, column: 31, scope: !5772)
!5774 = !DILocation(line: 131, column: 6, scope: !5741)
!5775 = !DILocation(line: 132, column: 3, scope: !5772)
!5776 = !DILocation(line: 134, column: 2, scope: !5741)
!5777 = !DILocation(line: 134, column: 9, scope: !5741)
!5778 = !DILocation(line: 135, column: 22, scope: !5779)
!5779 = distinct !DILexicalBlock(scope: !5741, file: !2, line: 134, column: 19)
!5780 = !DILocation(line: 135, column: 27, scope: !5779)
!5781 = !DILocation(line: 135, column: 57, scope: !5779)
!5782 = !DILocation(line: 135, column: 9, scope: !5779)
!5783 = !DILocation(line: 135, column: 7, scope: !5779)
!5784 = !DILocation(line: 136, column: 28, scope: !5779)
!5785 = !DILocation(line: 136, column: 3, scope: !5779)
!5786 = !DILocation(line: 136, column: 8, scope: !5779)
!5787 = !DILocation(line: 136, column: 16, scope: !5779)
!5788 = !DILocation(line: 136, column: 26, scope: !5779)
!5789 = !DILocation(line: 137, column: 7, scope: !5790)
!5790 = distinct !DILexicalBlock(scope: !5779, file: !2, line: 137, column: 7)
!5791 = !DILocation(line: 137, column: 13, scope: !5790)
!5792 = !DILocation(line: 137, column: 7, scope: !5779)
!5793 = !DILocation(line: 138, column: 4, scope: !5790)
!5794 = !DILocation(line: 138, column: 9, scope: !5790)
!5795 = !DILocation(line: 138, column: 16, scope: !5790)
!5796 = !DILocation(line: 140, column: 7, scope: !5797)
!5797 = distinct !DILexicalBlock(scope: !5779, file: !2, line: 140, column: 7)
!5798 = !DILocation(line: 140, column: 18, scope: !5797)
!5799 = !DILocation(line: 140, column: 16, scope: !5797)
!5800 = !DILocation(line: 140, column: 7, scope: !5779)
!5801 = !DILocation(line: 141, column: 27, scope: !5802)
!5802 = distinct !DILexicalBlock(scope: !5797, file: !2, line: 140, column: 44)
!5803 = !DILocation(line: 141, column: 52, scope: !5802)
!5804 = !DILocation(line: 141, column: 4, scope: !5802)
!5805 = !DILocation(line: 141, column: 9, scope: !5802)
!5806 = !DILocation(line: 141, column: 17, scope: !5802)
!5807 = !DILocation(line: 141, column: 25, scope: !5802)
!5808 = !DILocation(line: 142, column: 16, scope: !5802)
!5809 = !DILocation(line: 142, column: 13, scope: !5802)
!5810 = !DILocation(line: 143, column: 14, scope: !5802)
!5811 = !DILocation(line: 143, column: 11, scope: !5802)
!5812 = !DILocation(line: 144, column: 3, scope: !5802)
!5813 = !DILocation(line: 145, column: 27, scope: !5814)
!5814 = distinct !DILexicalBlock(scope: !5797, file: !2, line: 144, column: 10)
!5815 = !DILocation(line: 145, column: 36, scope: !5814)
!5816 = !DILocation(line: 145, column: 4, scope: !5814)
!5817 = !DILocation(line: 145, column: 9, scope: !5814)
!5818 = !DILocation(line: 145, column: 17, scope: !5814)
!5819 = !DILocation(line: 145, column: 25, scope: !5814)
!5820 = !DILocation(line: 146, column: 13, scope: !5814)
!5821 = !DILocation(line: 148, column: 3, scope: !5822)
!5822 = distinct !DILexicalBlock(scope: !5779, file: !2, line: 148, column: 3)
!5823 = distinct !{!5823, !5776, !5824, !5507, !5508}
!5824 = !DILocation(line: 149, column: 2, scope: !5741)
!5825 = !DILocation(line: 151, column: 10, scope: !5741)
!5826 = !DILocation(line: 151, column: 3, scope: !5741)
!5827 = !DILocation(line: 151, column: 8, scope: !5741)
!5828 = !DILocation(line: 152, column: 2, scope: !5741)
!5829 = !DILocation(line: 153, column: 1, scope: !5741)
!5830 = distinct !DISubprogram(name: "__blkdev_issue_zero_pages", scope: !2, file: !2, line: 168, type: !10, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5314, retainedNodes: !5831)
!5831 = !{!5832, !5833, !5834, !5835, !5836, !5837, !5838, !5839, !5840, !5844}
!5832 = !DILocalVariable(name: "bdev", arg: 1, scope: !5830, file: !2, line: 168, type: !13)
!5833 = !DILocalVariable(name: "sector", arg: 2, scope: !5830, file: !2, line: 169, type: !18)
!5834 = !DILocalVariable(name: "nr_sects", arg: 3, scope: !5830, file: !2, line: 169, type: !18)
!5835 = !DILocalVariable(name: "gfp_mask", arg: 4, scope: !5830, file: !2, line: 169, type: !86)
!5836 = !DILocalVariable(name: "biop", arg: 5, scope: !5830, file: !2, line: 170, type: !5313)
!5837 = !DILocalVariable(name: "bio", scope: !5830, file: !2, line: 172, type: !100)
!5838 = !DILocalVariable(name: "bi_size", scope: !5830, file: !2, line: 173, type: !12)
!5839 = !DILocalVariable(name: "sz", scope: !5830, file: !2, line: 174, type: !87)
!5840 = !DILocalVariable(name: "__UNIQUE_ID___x354", scope: !5841, file: !2, line: 185, type: !18)
!5841 = distinct !DILexicalBlock(scope: !5842, file: !2, line: 185, column: 9)
!5842 = distinct !DILexicalBlock(scope: !5843, file: !2, line: 184, column: 25)
!5843 = distinct !DILexicalBlock(scope: !5830, file: !2, line: 179, column: 24)
!5844 = !DILocalVariable(name: "__UNIQUE_ID___y355", scope: !5841, file: !2, line: 185, type: !18)
!5845 = !DILocation(line: 168, column: 59, scope: !5830)
!5846 = !DILocation(line: 169, column: 12, scope: !5830)
!5847 = !DILocation(line: 169, column: 29, scope: !5830)
!5848 = !DILocation(line: 169, column: 45, scope: !5830)
!5849 = !DILocation(line: 170, column: 16, scope: !5830)
!5850 = !DILocation(line: 172, column: 2, scope: !5830)
!5851 = !DILocation(line: 172, column: 14, scope: !5830)
!5852 = !DILocation(line: 172, column: 21, scope: !5830)
!5853 = !DILocation(line: 172, column: 20, scope: !5830)
!5854 = !DILocation(line: 173, column: 2, scope: !5830)
!5855 = !DILocation(line: 173, column: 6, scope: !5830)
!5856 = !DILocation(line: 174, column: 2, scope: !5830)
!5857 = !DILocation(line: 174, column: 15, scope: !5830)
!5858 = !DILocation(line: 176, column: 21, scope: !5859)
!5859 = distinct !DILexicalBlock(scope: !5830, file: !2, line: 176, column: 6)
!5860 = !DILocation(line: 176, column: 6, scope: !5859)
!5861 = !DILocation(line: 176, column: 6, scope: !5830)
!5862 = !DILocation(line: 177, column: 3, scope: !5859)
!5863 = !DILocation(line: 179, column: 2, scope: !5830)
!5864 = !DILocation(line: 179, column: 9, scope: !5830)
!5865 = !DILocation(line: 179, column: 18, scope: !5830)
!5866 = !DILocation(line: 180, column: 22, scope: !5843)
!5867 = !DILocation(line: 180, column: 27, scope: !5843)
!5868 = !DILocation(line: 180, column: 63, scope: !5843)
!5869 = !DILocation(line: 180, column: 33, scope: !5843)
!5870 = !DILocation(line: 181, column: 22, scope: !5843)
!5871 = !DILocation(line: 180, column: 9, scope: !5843)
!5872 = !DILocation(line: 180, column: 7, scope: !5843)
!5873 = !DILocation(line: 182, column: 28, scope: !5843)
!5874 = !DILocation(line: 182, column: 3, scope: !5843)
!5875 = !DILocation(line: 182, column: 8, scope: !5843)
!5876 = !DILocation(line: 182, column: 16, scope: !5843)
!5877 = !DILocation(line: 182, column: 26, scope: !5843)
!5878 = !DILocation(line: 184, column: 3, scope: !5843)
!5879 = !DILocation(line: 184, column: 10, scope: !5843)
!5880 = !DILocation(line: 184, column: 19, scope: !5843)
!5881 = !DILocation(line: 185, column: 9, scope: !5841)
!5882 = !DILocation(line: 185, column: 9, scope: !5842)
!5883 = !DILocation(line: 185, column: 7, scope: !5842)
!5884 = !DILocation(line: 186, column: 27, scope: !5842)
!5885 = !DILocation(line: 186, column: 32, scope: !5842)
!5886 = !DILocation(line: 186, column: 46, scope: !5842)
!5887 = !DILocation(line: 186, column: 14, scope: !5842)
!5888 = !DILocation(line: 186, column: 12, scope: !5842)
!5889 = !DILocation(line: 187, column: 16, scope: !5842)
!5890 = !DILocation(line: 187, column: 24, scope: !5842)
!5891 = !DILocation(line: 187, column: 13, scope: !5842)
!5892 = !DILocation(line: 188, column: 14, scope: !5842)
!5893 = !DILocation(line: 188, column: 22, scope: !5842)
!5894 = !DILocation(line: 188, column: 11, scope: !5842)
!5895 = !DILocation(line: 189, column: 8, scope: !5896)
!5896 = distinct !DILexicalBlock(scope: !5842, file: !2, line: 189, column: 8)
!5897 = !DILocation(line: 189, column: 18, scope: !5896)
!5898 = !DILocation(line: 189, column: 16, scope: !5896)
!5899 = !DILocation(line: 189, column: 8, scope: !5842)
!5900 = !DILocation(line: 190, column: 5, scope: !5896)
!5901 = distinct !{!5901, !5878, !5902, !5507, !5508}
!5902 = !DILocation(line: 191, column: 3, scope: !5843)
!5903 = !DILocation(line: 192, column: 3, scope: !5904)
!5904 = distinct !DILexicalBlock(scope: !5843, file: !2, line: 192, column: 3)
!5905 = distinct !{!5905, !5863, !5906, !5507, !5508}
!5906 = !DILocation(line: 193, column: 2, scope: !5830)
!5907 = !DILocation(line: 195, column: 10, scope: !5830)
!5908 = !DILocation(line: 195, column: 3, scope: !5830)
!5909 = !DILocation(line: 195, column: 8, scope: !5830)
!5910 = !DILocation(line: 196, column: 2, scope: !5830)
!5911 = !DILocation(line: 197, column: 1, scope: !5830)
!5912 = distinct !DISubprogram(name: "blkdev_issue_zeroout", scope: !2, file: !2, line: 252, type: !5913, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5314, retainedNodes: !5915)
!5913 = !DISubroutineType(types: !5914)
!5914 = !{!12, !13, !18, !18, !86, !87}
!5915 = !{!5916, !5917, !5918, !5919, !5920, !5921, !5922, !5923, !5924, !5925, !5926}
!5916 = !DILocalVariable(name: "bdev", arg: 1, scope: !5912, file: !2, line: 252, type: !13)
!5917 = !DILocalVariable(name: "sector", arg: 2, scope: !5912, file: !2, line: 252, type: !18)
!5918 = !DILocalVariable(name: "nr_sects", arg: 3, scope: !5912, file: !2, line: 253, type: !18)
!5919 = !DILocalVariable(name: "gfp_mask", arg: 4, scope: !5912, file: !2, line: 253, type: !86)
!5920 = !DILocalVariable(name: "flags", arg: 5, scope: !5912, file: !2, line: 253, type: !87)
!5921 = !DILocalVariable(name: "ret", scope: !5912, file: !2, line: 255, type: !12)
!5922 = !DILocalVariable(name: "bs_mask", scope: !5912, file: !2, line: 256, type: !18)
!5923 = !DILocalVariable(name: "bio", scope: !5912, file: !2, line: 257, type: !100)
!5924 = !DILocalVariable(name: "plug", scope: !5912, file: !2, line: 258, type: !3978)
!5925 = !DILocalVariable(name: "try_write_zeroes", scope: !5912, file: !2, line: 259, type: !745)
!5926 = !DILabel(scope: !5912, name: "retry", file: !2, line: 265)
!5927 = !DILocation(line: 252, column: 47, scope: !5912)
!5928 = !DILocation(line: 252, column: 62, scope: !5912)
!5929 = !DILocation(line: 253, column: 12, scope: !5912)
!5930 = !DILocation(line: 253, column: 28, scope: !5912)
!5931 = !DILocation(line: 253, column: 47, scope: !5912)
!5932 = !DILocation(line: 255, column: 2, scope: !5912)
!5933 = !DILocation(line: 255, column: 6, scope: !5912)
!5934 = !DILocation(line: 256, column: 2, scope: !5912)
!5935 = !DILocation(line: 256, column: 11, scope: !5912)
!5936 = !DILocation(line: 257, column: 2, scope: !5912)
!5937 = !DILocation(line: 257, column: 14, scope: !5912)
!5938 = !DILocation(line: 258, column: 2, scope: !5912)
!5939 = !DILocation(line: 258, column: 18, scope: !5912)
!5940 = !DILocation(line: 259, column: 2, scope: !5912)
!5941 = !DILocation(line: 259, column: 7, scope: !5912)
!5942 = !DILocation(line: 259, column: 54, scope: !5912)
!5943 = !DILocation(line: 259, column: 28, scope: !5912)
!5944 = !DILocation(line: 259, column: 27, scope: !5912)
!5945 = !DILocation(line: 259, column: 26, scope: !5912)
!5946 = !DILocation(line: 261, column: 37, scope: !5912)
!5947 = !DILocation(line: 261, column: 13, scope: !5912)
!5948 = !DILocation(line: 261, column: 43, scope: !5912)
!5949 = !DILocation(line: 261, column: 49, scope: !5912)
!5950 = !DILocation(line: 261, column: 12, scope: !5912)
!5951 = !DILocation(line: 261, column: 10, scope: !5912)
!5952 = !DILocation(line: 262, column: 7, scope: !5953)
!5953 = distinct !DILexicalBlock(scope: !5912, file: !2, line: 262, column: 6)
!5954 = !DILocation(line: 262, column: 16, scope: !5953)
!5955 = !DILocation(line: 262, column: 14, scope: !5953)
!5956 = !DILocation(line: 262, column: 28, scope: !5953)
!5957 = !DILocation(line: 262, column: 26, scope: !5953)
!5958 = !DILocation(line: 262, column: 6, scope: !5912)
!5959 = !DILocation(line: 263, column: 3, scope: !5953)
!5960 = !DILocation(line: 265, column: 1, scope: !5912)
!5961 = !DILocation(line: 266, column: 6, scope: !5912)
!5962 = !DILocation(line: 267, column: 2, scope: !5912)
!5963 = !DILocation(line: 268, column: 6, scope: !5964)
!5964 = distinct !DILexicalBlock(scope: !5912, file: !2, line: 268, column: 6)
!5965 = !DILocation(line: 268, column: 6, scope: !5912)
!5966 = !DILocation(line: 269, column: 37, scope: !5967)
!5967 = distinct !DILexicalBlock(scope: !5964, file: !2, line: 268, column: 24)
!5968 = !DILocation(line: 269, column: 43, scope: !5967)
!5969 = !DILocation(line: 269, column: 51, scope: !5967)
!5970 = !DILocation(line: 270, column: 9, scope: !5967)
!5971 = !DILocation(line: 270, column: 25, scope: !5967)
!5972 = !DILocation(line: 269, column: 9, scope: !5967)
!5973 = !DILocation(line: 269, column: 7, scope: !5967)
!5974 = !DILocation(line: 271, column: 2, scope: !5967)
!5975 = !DILocation(line: 271, column: 15, scope: !5976)
!5976 = distinct !DILexicalBlock(scope: !5964, file: !2, line: 271, column: 13)
!5977 = !DILocation(line: 271, column: 21, scope: !5976)
!5978 = !DILocation(line: 271, column: 13, scope: !5964)
!5979 = !DILocation(line: 272, column: 35, scope: !5980)
!5980 = distinct !DILexicalBlock(scope: !5976, file: !2, line: 271, column: 48)
!5981 = !DILocation(line: 272, column: 41, scope: !5980)
!5982 = !DILocation(line: 272, column: 49, scope: !5980)
!5983 = !DILocation(line: 273, column: 7, scope: !5980)
!5984 = !DILocation(line: 272, column: 9, scope: !5980)
!5985 = !DILocation(line: 272, column: 7, scope: !5980)
!5986 = !DILocation(line: 274, column: 2, scope: !5980)
!5987 = !DILocation(line: 276, column: 7, scope: !5988)
!5988 = distinct !DILexicalBlock(scope: !5976, file: !2, line: 274, column: 9)
!5989 = !DILocation(line: 278, column: 6, scope: !5990)
!5990 = distinct !DILexicalBlock(scope: !5912, file: !2, line: 278, column: 6)
!5991 = !DILocation(line: 278, column: 10, scope: !5990)
!5992 = !DILocation(line: 278, column: 15, scope: !5990)
!5993 = !DILocation(line: 278, column: 18, scope: !5990)
!5994 = !DILocation(line: 278, column: 6, scope: !5912)
!5995 = !DILocation(line: 279, column: 25, scope: !5996)
!5996 = distinct !DILexicalBlock(scope: !5990, file: !2, line: 278, column: 23)
!5997 = !DILocation(line: 279, column: 9, scope: !5996)
!5998 = !DILocation(line: 279, column: 7, scope: !5996)
!5999 = !DILocation(line: 280, column: 11, scope: !5996)
!6000 = !DILocation(line: 280, column: 3, scope: !5996)
!6001 = !DILocation(line: 281, column: 2, scope: !5996)
!6002 = !DILocation(line: 282, column: 2, scope: !5912)
!6003 = !DILocation(line: 283, column: 6, scope: !6004)
!6004 = distinct !DILexicalBlock(scope: !5912, file: !2, line: 283, column: 6)
!6005 = !DILocation(line: 283, column: 10, scope: !6004)
!6006 = !DILocation(line: 283, column: 13, scope: !6004)
!6007 = !DILocation(line: 283, column: 6, scope: !5912)
!6008 = !DILocation(line: 284, column: 9, scope: !6009)
!6009 = distinct !DILexicalBlock(scope: !6010, file: !2, line: 284, column: 7)
!6010 = distinct !DILexicalBlock(scope: !6004, file: !2, line: 283, column: 31)
!6011 = !DILocation(line: 284, column: 15, scope: !6009)
!6012 = !DILocation(line: 284, column: 7, scope: !6010)
!6013 = !DILocation(line: 285, column: 21, scope: !6014)
!6014 = distinct !DILexicalBlock(scope: !6009, file: !2, line: 284, column: 42)
!6015 = !DILocation(line: 286, column: 4, scope: !6014)
!6016 = !DILocation(line: 288, column: 34, scope: !6017)
!6017 = distinct !DILexicalBlock(scope: !6010, file: !2, line: 288, column: 7)
!6018 = !DILocation(line: 288, column: 8, scope: !6017)
!6019 = !DILocation(line: 288, column: 7, scope: !6010)
!6020 = !DILocation(line: 295, column: 8, scope: !6021)
!6021 = distinct !DILexicalBlock(scope: !6017, file: !2, line: 288, column: 41)
!6022 = !DILocation(line: 296, column: 3, scope: !6021)
!6023 = !DILocation(line: 297, column: 2, scope: !6010)
!6024 = !DILocation(line: 299, column: 9, scope: !5912)
!6025 = !DILocation(line: 299, column: 2, scope: !5912)
!6026 = !DILocation(line: 300, column: 1, scope: !5912)
!6027 = distinct !DISubprogram(name: "bdev_write_zeroes_sectors", scope: !29, file: !29, line: 1233, type: !5529, scopeLine: 1234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5314, retainedNodes: !6028)
!6028 = !{!6029, !6030}
!6029 = !DILocalVariable(name: "bdev", arg: 1, scope: !6027, file: !29, line: 1233, type: !13)
!6030 = !DILocalVariable(name: "q", scope: !6027, file: !29, line: 1235, type: !973)
!6031 = !DILocation(line: 1233, column: 75, scope: !6027)
!6032 = !DILocation(line: 1235, column: 2, scope: !6027)
!6033 = !DILocation(line: 1235, column: 24, scope: !6027)
!6034 = !DILocation(line: 1235, column: 43, scope: !6027)
!6035 = !DILocation(line: 1235, column: 28, scope: !6027)
!6036 = !DILocation(line: 1237, column: 6, scope: !6037)
!6037 = distinct !DILexicalBlock(scope: !6027, file: !29, line: 1237, column: 6)
!6038 = !DILocation(line: 1237, column: 6, scope: !6027)
!6039 = !DILocation(line: 1238, column: 10, scope: !6037)
!6040 = !DILocation(line: 1238, column: 13, scope: !6037)
!6041 = !DILocation(line: 1238, column: 20, scope: !6037)
!6042 = !DILocation(line: 1238, column: 3, scope: !6037)
!6043 = !DILocation(line: 1240, column: 2, scope: !6027)
!6044 = !DILocation(line: 1241, column: 1, scope: !6027)
!6045 = distinct !DISubprogram(name: "blkdev_issue_secure_erase", scope: !2, file: !2, line: 303, type: !5623, scopeLine: 305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5314, retainedNodes: !6046)
!6046 = !{!6047, !6048, !6049, !6050, !6051, !6052, !6053, !6054, !6055, !6056, !6060, !6062}
!6047 = !DILocalVariable(name: "bdev", arg: 1, scope: !6045, file: !2, line: 303, type: !13)
!6048 = !DILocalVariable(name: "sector", arg: 2, scope: !6045, file: !2, line: 303, type: !18)
!6049 = !DILocalVariable(name: "nr_sects", arg: 3, scope: !6045, file: !2, line: 304, type: !18)
!6050 = !DILocalVariable(name: "gfp", arg: 4, scope: !6045, file: !2, line: 304, type: !86)
!6051 = !DILocalVariable(name: "bs_mask", scope: !6045, file: !2, line: 306, type: !18)
!6052 = !DILocalVariable(name: "max_sectors", scope: !6045, file: !2, line: 307, type: !87)
!6053 = !DILocalVariable(name: "bio", scope: !6045, file: !2, line: 308, type: !100)
!6054 = !DILocalVariable(name: "plug", scope: !6045, file: !2, line: 309, type: !3978)
!6055 = !DILocalVariable(name: "ret", scope: !6045, file: !2, line: 310, type: !12)
!6056 = !DILocalVariable(name: "len", scope: !6057, file: !2, line: 326, type: !87)
!6057 = distinct !DILexicalBlock(scope: !6058, file: !2, line: 325, column: 11)
!6058 = distinct !DILexicalBlock(scope: !6059, file: !2, line: 325, column: 2)
!6059 = distinct !DILexicalBlock(scope: !6045, file: !2, line: 325, column: 2)
!6060 = !DILocalVariable(name: "__UNIQUE_ID___x358", scope: !6061, file: !2, line: 326, type: !18)
!6061 = distinct !DILexicalBlock(scope: !6057, file: !2, line: 326, column: 22)
!6062 = !DILocalVariable(name: "__UNIQUE_ID___y359", scope: !6061, file: !2, line: 326, type: !18)
!6063 = !DILocation(line: 303, column: 52, scope: !6045)
!6064 = !DILocation(line: 303, column: 67, scope: !6045)
!6065 = !DILocation(line: 304, column: 12, scope: !6045)
!6066 = !DILocation(line: 304, column: 28, scope: !6045)
!6067 = !DILocation(line: 306, column: 2, scope: !6045)
!6068 = !DILocation(line: 306, column: 11, scope: !6045)
!6069 = !DILocation(line: 306, column: 46, scope: !6045)
!6070 = !DILocation(line: 306, column: 22, scope: !6045)
!6071 = !DILocation(line: 306, column: 52, scope: !6045)
!6072 = !DILocation(line: 306, column: 58, scope: !6045)
!6073 = !DILocation(line: 306, column: 21, scope: !6045)
!6074 = !DILocation(line: 307, column: 2, scope: !6045)
!6075 = !DILocation(line: 307, column: 15, scope: !6045)
!6076 = !DILocation(line: 307, column: 59, scope: !6045)
!6077 = !DILocation(line: 307, column: 29, scope: !6045)
!6078 = !DILocation(line: 308, column: 2, scope: !6045)
!6079 = !DILocation(line: 308, column: 14, scope: !6045)
!6080 = !DILocation(line: 309, column: 2, scope: !6045)
!6081 = !DILocation(line: 309, column: 18, scope: !6045)
!6082 = !DILocation(line: 310, column: 2, scope: !6045)
!6083 = !DILocation(line: 310, column: 6, scope: !6045)
!6084 = !DILocation(line: 313, column: 6, scope: !6085)
!6085 = distinct !DILexicalBlock(scope: !6045, file: !2, line: 313, column: 6)
!6086 = !DILocation(line: 313, column: 18, scope: !6085)
!6087 = !DILocation(line: 313, column: 6, scope: !6045)
!6088 = !DILocation(line: 314, column: 15, scope: !6085)
!6089 = !DILocation(line: 314, column: 3, scope: !6085)
!6090 = !DILocation(line: 315, column: 18, scope: !6045)
!6091 = !DILocation(line: 315, column: 17, scope: !6045)
!6092 = !DILocation(line: 315, column: 14, scope: !6045)
!6093 = !DILocation(line: 317, column: 6, scope: !6094)
!6094 = distinct !DILexicalBlock(scope: !6045, file: !2, line: 317, column: 6)
!6095 = !DILocation(line: 317, column: 18, scope: !6094)
!6096 = !DILocation(line: 317, column: 6, scope: !6045)
!6097 = !DILocation(line: 318, column: 3, scope: !6094)
!6098 = !DILocation(line: 319, column: 7, scope: !6099)
!6099 = distinct !DILexicalBlock(scope: !6045, file: !2, line: 319, column: 6)
!6100 = !DILocation(line: 319, column: 16, scope: !6099)
!6101 = !DILocation(line: 319, column: 14, scope: !6099)
!6102 = !DILocation(line: 319, column: 28, scope: !6099)
!6103 = !DILocation(line: 319, column: 26, scope: !6099)
!6104 = !DILocation(line: 319, column: 6, scope: !6045)
!6105 = !DILocation(line: 320, column: 3, scope: !6099)
!6106 = !DILocation(line: 321, column: 21, scope: !6107)
!6107 = distinct !DILexicalBlock(scope: !6045, file: !2, line: 321, column: 6)
!6108 = !DILocation(line: 321, column: 6, scope: !6107)
!6109 = !DILocation(line: 321, column: 6, scope: !6045)
!6110 = !DILocation(line: 322, column: 3, scope: !6107)
!6111 = !DILocation(line: 324, column: 2, scope: !6045)
!6112 = !DILocation(line: 325, column: 2, scope: !6045)
!6113 = !DILocation(line: 326, column: 3, scope: !6057)
!6114 = !DILocation(line: 326, column: 16, scope: !6057)
!6115 = !DILocation(line: 326, column: 22, scope: !6061)
!6116 = !DILocation(line: 326, column: 22, scope: !6057)
!6117 = !DILocation(line: 328, column: 22, scope: !6057)
!6118 = !DILocation(line: 328, column: 27, scope: !6057)
!6119 = !DILocation(line: 328, column: 57, scope: !6057)
!6120 = !DILocation(line: 328, column: 9, scope: !6057)
!6121 = !DILocation(line: 328, column: 7, scope: !6057)
!6122 = !DILocation(line: 329, column: 28, scope: !6057)
!6123 = !DILocation(line: 329, column: 3, scope: !6057)
!6124 = !DILocation(line: 329, column: 8, scope: !6057)
!6125 = !DILocation(line: 329, column: 16, scope: !6057)
!6126 = !DILocation(line: 329, column: 26, scope: !6057)
!6127 = !DILocation(line: 330, column: 26, scope: !6057)
!6128 = !DILocation(line: 330, column: 30, scope: !6057)
!6129 = !DILocation(line: 330, column: 3, scope: !6057)
!6130 = !DILocation(line: 330, column: 8, scope: !6057)
!6131 = !DILocation(line: 330, column: 16, scope: !6057)
!6132 = !DILocation(line: 330, column: 24, scope: !6057)
!6133 = !DILocation(line: 332, column: 13, scope: !6057)
!6134 = !DILocation(line: 332, column: 10, scope: !6057)
!6135 = !DILocation(line: 333, column: 15, scope: !6057)
!6136 = !DILocation(line: 333, column: 12, scope: !6057)
!6137 = !DILocation(line: 334, column: 8, scope: !6138)
!6138 = distinct !DILexicalBlock(scope: !6057, file: !2, line: 334, column: 7)
!6139 = !DILocation(line: 334, column: 7, scope: !6057)
!6140 = !DILocation(line: 335, column: 26, scope: !6141)
!6141 = distinct !DILexicalBlock(scope: !6138, file: !2, line: 334, column: 18)
!6142 = !DILocation(line: 335, column: 10, scope: !6141)
!6143 = !DILocation(line: 335, column: 8, scope: !6141)
!6144 = !DILocation(line: 336, column: 12, scope: !6141)
!6145 = !DILocation(line: 336, column: 4, scope: !6141)
!6146 = !DILocation(line: 337, column: 4, scope: !6141)
!6147 = !DILocation(line: 339, column: 3, scope: !6148)
!6148 = distinct !DILexicalBlock(scope: !6057, file: !2, line: 339, column: 3)
!6149 = !DILocation(line: 340, column: 2, scope: !6058)
!6150 = !DILocation(line: 325, column: 2, scope: !6058)
!6151 = distinct !{!6151, !6152, !6153, !5508}
!6152 = !DILocation(line: 325, column: 2, scope: !6059)
!6153 = !DILocation(line: 340, column: 2, scope: !6059)
!6154 = !DILocation(line: 341, column: 2, scope: !6045)
!6155 = !DILocation(line: 343, column: 9, scope: !6045)
!6156 = !DILocation(line: 343, column: 2, scope: !6045)
!6157 = !DILocation(line: 344, column: 1, scope: !6045)
!6158 = distinct !DISubprogram(name: "bdev_max_secure_erase_sectors", scope: !29, file: !29, line: 1228, type: !5529, scopeLine: 1229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5314, retainedNodes: !6159)
!6159 = !{!6160}
!6160 = !DILocalVariable(name: "bdev", arg: 1, scope: !6158, file: !29, line: 1228, type: !13)
!6161 = !DILocation(line: 1228, column: 52, scope: !6158)
!6162 = !DILocation(line: 1230, column: 24, scope: !6158)
!6163 = !DILocation(line: 1230, column: 9, scope: !6158)
!6164 = !DILocation(line: 1230, column: 31, scope: !6158)
!6165 = !DILocation(line: 1230, column: 38, scope: !6158)
!6166 = !DILocation(line: 1230, column: 2, scope: !6158)
!6167 = distinct !DISubprogram(name: "get_disk_ro", scope: !29, file: !29, line: 755, type: !6168, scopeLine: 756, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5314, retainedNodes: !6170)
!6168 = !DISubroutineType(types: !6169)
!6169 = !{!12, !27}
!6170 = !{!6171}
!6171 = !DILocalVariable(name: "disk", arg: 1, scope: !6167, file: !29, line: 755, type: !27)
!6172 = !DILocation(line: 755, column: 47, scope: !6167)
!6173 = !DILocation(line: 757, column: 9, scope: !6167)
!6174 = !DILocation(line: 757, column: 15, scope: !6167)
!6175 = !DILocation(line: 757, column: 22, scope: !6167)
!6176 = !DILocation(line: 757, column: 35, scope: !6167)
!6177 = !DILocation(line: 758, column: 3, scope: !6167)
!6178 = !DILocation(line: 757, column: 2, scope: !6167)
!6179 = distinct !DISubprogram(name: "const_test_bit", scope: !6180, file: !6180, line: 166, type: !6181, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5314, retainedNodes: !6186)
!6180 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!6181 = !DISubroutineType(types: !6182)
!6182 = !{!745, !151, !6183}
!6183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6184, size: 64)
!6184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6185)
!6185 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !151)
!6186 = !{!6187, !6188, !6189, !6190, !6191}
!6187 = !DILocalVariable(name: "nr", arg: 1, scope: !6179, file: !6180, line: 166, type: !151)
!6188 = !DILocalVariable(name: "addr", arg: 2, scope: !6179, file: !6180, line: 166, type: !6183)
!6189 = !DILocalVariable(name: "p", scope: !6179, file: !6180, line: 168, type: !5363)
!6190 = !DILocalVariable(name: "mask", scope: !6179, file: !6180, line: 169, type: !151)
!6191 = !DILocalVariable(name: "val", scope: !6179, file: !6180, line: 170, type: !151)
!6192 = !DILocation(line: 166, column: 30, scope: !6179)
!6193 = !DILocation(line: 166, column: 64, scope: !6179)
!6194 = !DILocation(line: 168, column: 2, scope: !6179)
!6195 = !DILocation(line: 168, column: 23, scope: !6179)
!6196 = !DILocation(line: 168, column: 50, scope: !6179)
!6197 = !DILocation(line: 168, column: 57, scope: !6179)
!6198 = !DILocation(line: 168, column: 55, scope: !6179)
!6199 = !DILocation(line: 169, column: 2, scope: !6179)
!6200 = !DILocation(line: 169, column: 16, scope: !6179)
!6201 = !DILocation(line: 169, column: 23, scope: !6179)
!6202 = !DILocation(line: 170, column: 2, scope: !6179)
!6203 = !DILocation(line: 170, column: 16, scope: !6179)
!6204 = !DILocation(line: 170, column: 23, scope: !6179)
!6205 = !DILocation(line: 170, column: 22, scope: !6179)
!6206 = !DILocation(line: 172, column: 12, scope: !6179)
!6207 = !DILocation(line: 172, column: 18, scope: !6179)
!6208 = !DILocation(line: 172, column: 16, scope: !6179)
!6209 = !DILocation(line: 172, column: 10, scope: !6179)
!6210 = !DILocation(line: 172, column: 9, scope: !6179)
!6211 = !DILocation(line: 173, column: 1, scope: !6179)
!6212 = !DILocation(line: 172, column: 2, scope: !6179)
!6213 = distinct !DISubprogram(name: "_test_bit", scope: !6214, file: !6214, line: 139, type: !6181, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5314, retainedNodes: !6215)
!6214 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!6215 = !{!6216, !6217}
!6216 = !DILocalVariable(name: "nr", arg: 1, scope: !6213, file: !6214, line: 139, type: !151)
!6217 = !DILocalVariable(name: "addr", arg: 2, scope: !6213, file: !6214, line: 139, type: !6183)
!6218 = !DILocation(line: 139, column: 25, scope: !6213)
!6219 = !DILocation(line: 139, column: 59, scope: !6213)
!6220 = !DILocation(line: 141, column: 25, scope: !6213)
!6221 = !DILocation(line: 141, column: 32, scope: !6213)
!6222 = !DILocation(line: 141, column: 30, scope: !6213)
!6223 = !DILocation(line: 141, column: 2, scope: !6213)
!6224 = !DILocation(line: 142, column: 23, scope: !6213)
!6225 = !DILocation(line: 142, column: 27, scope: !6213)
!6226 = !DILocation(line: 142, column: 9, scope: !6213)
!6227 = !DILocation(line: 142, column: 2, scope: !6213)
!6228 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6229, file: !6229, line: 66, type: !6230, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5314, retainedNodes: !6235)
!6229 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6230 = !DISubroutineType(types: !6231)
!6231 = !{null, !6232, !474}
!6232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6233, size: 64)
!6233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6234)
!6234 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6235 = !{!6236, !6237}
!6236 = !DILocalVariable(name: "v", arg: 1, scope: !6228, file: !6229, line: 66, type: !6232)
!6237 = !DILocalVariable(name: "size", arg: 2, scope: !6228, file: !6229, line: 66, type: !474)
!6238 = !DILocation(line: 66, column: 73, scope: !6228)
!6239 = !DILocation(line: 66, column: 83, scope: !6228)
!6240 = !DILocation(line: 68, column: 19, scope: !6228)
!6241 = !DILocation(line: 68, column: 22, scope: !6228)
!6242 = !DILocation(line: 68, column: 2, scope: !6228)
!6243 = !DILocation(line: 69, column: 2, scope: !6228)
!6244 = !DILocation(line: 70, column: 1, scope: !6228)
!6245 = distinct !DISubprogram(name: "arch_test_bit", scope: !6246, file: !6246, line: 237, type: !6181, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5314, retainedNodes: !6247)
!6246 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6247 = !{!6248, !6249}
!6248 = !DILocalVariable(name: "nr", arg: 1, scope: !6245, file: !6246, line: 237, type: !151)
!6249 = !DILocalVariable(name: "addr", arg: 2, scope: !6245, file: !6246, line: 237, type: !6183)
!6250 = !DILocation(line: 237, column: 29, scope: !6245)
!6251 = !DILocation(line: 237, column: 63, scope: !6245)
!6252 = !DILocation(line: 239, column: 30, scope: !6245)
!6253 = !DILocation(line: 239, column: 9, scope: !6245)
!6254 = !DILocation(line: 239, column: 54, scope: !6245)
!6255 = !DILocation(line: 239, column: 58, scope: !6245)
!6256 = !DILocation(line: 239, column: 36, scope: !6245)
!6257 = !DILocation(line: 240, column: 26, scope: !6245)
!6258 = !DILocation(line: 240, column: 30, scope: !6245)
!6259 = !DILocation(line: 240, column: 8, scope: !6245)
!6260 = !DILocation(line: 239, column: 2, scope: !6245)
!6261 = distinct !DISubprogram(name: "kasan_check_read", scope: !6262, file: !6262, line: 40, type: !6263, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5314, retainedNodes: !6265)
!6262 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6263 = !DISubroutineType(types: !6264)
!6264 = !{!745, !6232, !87}
!6265 = !{!6266, !6267}
!6266 = !DILocalVariable(name: "p", arg: 1, scope: !6261, file: !6262, line: 40, type: !6232)
!6267 = !DILocalVariable(name: "size", arg: 2, scope: !6261, file: !6262, line: 40, type: !87)
!6268 = !DILocation(line: 40, column: 58, scope: !6261)
!6269 = !DILocation(line: 40, column: 74, scope: !6261)
!6270 = !DILocation(line: 42, column: 2, scope: !6261)
!6271 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6272, file: !6272, line: 229, type: !6273, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5314, retainedNodes: !6275)
!6272 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6273 = !DISubroutineType(types: !6274)
!6274 = !{null, !6232, !474, !12}
!6275 = !{!6276, !6277, !6278}
!6276 = !DILocalVariable(name: "ptr", arg: 1, scope: !6271, file: !6272, line: 229, type: !6232)
!6277 = !DILocalVariable(name: "size", arg: 2, scope: !6271, file: !6272, line: 229, type: !474)
!6278 = !DILocalVariable(name: "type", arg: 3, scope: !6271, file: !6272, line: 230, type: !12)
!6279 = !DILocation(line: 229, column: 60, scope: !6271)
!6280 = !DILocation(line: 229, column: 72, scope: !6271)
!6281 = !DILocation(line: 230, column: 15, scope: !6271)
!6282 = !DILocation(line: 230, column: 23, scope: !6271)
!6283 = distinct !DISubprogram(name: "constant_test_bit", scope: !6246, file: !6246, line: 204, type: !6284, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5314, retainedNodes: !6286)
!6284 = !DISubroutineType(types: !6285)
!6285 = !{!745, !464, !6183}
!6286 = !{!6287, !6288}
!6287 = !DILocalVariable(name: "nr", arg: 1, scope: !6283, file: !6246, line: 204, type: !464)
!6288 = !DILocalVariable(name: "addr", arg: 2, scope: !6283, file: !6246, line: 204, type: !6183)
!6289 = !DILocation(line: 204, column: 52, scope: !6283)
!6290 = !DILocation(line: 204, column: 86, scope: !6283)
!6291 = !DILocation(line: 206, column: 19, scope: !6283)
!6292 = !DILocation(line: 206, column: 22, scope: !6283)
!6293 = !DILocation(line: 206, column: 15, scope: !6283)
!6294 = !DILocation(line: 207, column: 4, scope: !6283)
!6295 = !DILocation(line: 207, column: 9, scope: !6283)
!6296 = !DILocation(line: 207, column: 12, scope: !6283)
!6297 = !DILocation(line: 206, column: 44, scope: !6283)
!6298 = !DILocation(line: 207, column: 37, scope: !6283)
!6299 = !DILocation(line: 206, column: 2, scope: !6283)
!6300 = distinct !DISubprogram(name: "variable_test_bit", scope: !6246, file: !6246, line: 224, type: !6284, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5314, retainedNodes: !6301)
!6301 = !{!6302, !6303, !6304}
!6302 = !DILocalVariable(name: "nr", arg: 1, scope: !6300, file: !6246, line: 224, type: !464)
!6303 = !DILocalVariable(name: "addr", arg: 2, scope: !6300, file: !6246, line: 224, type: !6183)
!6304 = !DILocalVariable(name: "oldbit", scope: !6300, file: !6246, line: 226, type: !745)
!6305 = !DILocation(line: 224, column: 52, scope: !6300)
!6306 = !DILocation(line: 224, column: 86, scope: !6300)
!6307 = !DILocation(line: 226, column: 2, scope: !6300)
!6308 = !DILocation(line: 226, column: 7, scope: !6300)
!6309 = !DILocation(line: 231, column: 33, scope: !6300)
!6310 = !DILocation(line: 231, column: 46, scope: !6300)
!6311 = !DILocation(line: 228, column: 2, scope: !6300)
!6312 = !{i64 2147807093, i64 2147807167}
!6313 = !DILocation(line: 233, column: 9, scope: !6300)
!6314 = !DILocation(line: 234, column: 1, scope: !6300)
!6315 = !DILocation(line: 233, column: 2, scope: !6300)
!6316 = distinct !DISubprogram(name: "bdev_get_queue", scope: !29, file: !29, line: 871, type: !6317, scopeLine: 872, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5314, retainedNodes: !6319)
!6317 = !DISubroutineType(types: !6318)
!6318 = !{!973, !13}
!6319 = !{!6320}
!6320 = !DILocalVariable(name: "bdev", arg: 1, scope: !6316, file: !29, line: 871, type: !13)
!6321 = !DILocation(line: 871, column: 73, scope: !6316)
!6322 = !DILocation(line: 873, column: 9, scope: !6316)
!6323 = !DILocation(line: 873, column: 15, scope: !6316)
!6324 = !DILocation(line: 873, column: 2, scope: !6316)
!6325 = distinct !DISubprogram(name: "queue_logical_block_size", scope: !29, file: !29, line: 1157, type: !6326, scopeLine: 1158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5314, retainedNodes: !6330)
!6326 = !DISubroutineType(types: !6327)
!6327 = !{!87, !6328}
!6328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6329, size: 64)
!6329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !974)
!6330 = !{!6331, !6332}
!6331 = !DILocalVariable(name: "q", arg: 1, scope: !6325, file: !29, line: 1157, type: !6328)
!6332 = !DILocalVariable(name: "retval", scope: !6325, file: !29, line: 1159, type: !12)
!6333 = !DILocation(line: 1157, column: 77, scope: !6325)
!6334 = !DILocation(line: 1159, column: 2, scope: !6325)
!6335 = !DILocation(line: 1159, column: 6, scope: !6325)
!6336 = !DILocation(line: 1161, column: 6, scope: !6337)
!6337 = distinct !DILexicalBlock(scope: !6325, file: !29, line: 1161, column: 6)
!6338 = !DILocation(line: 1161, column: 8, scope: !6337)
!6339 = !DILocation(line: 1161, column: 11, scope: !6337)
!6340 = !DILocation(line: 1161, column: 14, scope: !6337)
!6341 = !DILocation(line: 1161, column: 21, scope: !6337)
!6342 = !DILocation(line: 1161, column: 6, scope: !6325)
!6343 = !DILocation(line: 1162, column: 12, scope: !6337)
!6344 = !DILocation(line: 1162, column: 15, scope: !6337)
!6345 = !DILocation(line: 1162, column: 22, scope: !6337)
!6346 = !DILocation(line: 1162, column: 10, scope: !6337)
!6347 = !DILocation(line: 1162, column: 3, scope: !6337)
!6348 = !DILocation(line: 1164, column: 9, scope: !6325)
!6349 = !DILocation(line: 1165, column: 1, scope: !6325)
!6350 = !DILocation(line: 1164, column: 2, scope: !6325)
!6351 = distinct !DISubprogram(name: "bdev_is_partition", scope: !29, file: !29, line: 1084, type: !6352, scopeLine: 1085, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5314, retainedNodes: !6354)
!6352 = !DISubroutineType(types: !6353)
!6353 = !{!745, !13}
!6354 = !{!6355}
!6355 = !DILocalVariable(name: "bdev", arg: 1, scope: !6351, file: !29, line: 1084, type: !13)
!6356 = !DILocation(line: 1084, column: 59, scope: !6351)
!6357 = !DILocation(line: 1086, column: 9, scope: !6351)
!6358 = !DILocation(line: 1086, column: 15, scope: !6351)
!6359 = !DILocation(line: 1086, column: 2, scope: !6351)
!6360 = distinct !DISubprogram(name: "__blkdev_sectors_to_bio_pages", scope: !2, file: !2, line: 161, type: !6361, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5314, retainedNodes: !6363)
!6361 = !DISubroutineType(types: !6362)
!6362 = !{!87, !18}
!6363 = !{!6364, !6365, !6366, !6368}
!6364 = !DILocalVariable(name: "nr_sects", arg: 1, scope: !6360, file: !2, line: 161, type: !18)
!6365 = !DILocalVariable(name: "pages", scope: !6360, file: !2, line: 163, type: !18)
!6366 = !DILocalVariable(name: "__UNIQUE_ID___x352", scope: !6367, file: !2, line: 165, type: !18)
!6367 = distinct !DILexicalBlock(scope: !6360, file: !2, line: 165, column: 9)
!6368 = !DILocalVariable(name: "__UNIQUE_ID___y353", scope: !6367, file: !2, line: 165, type: !18)
!6369 = !DILocation(line: 161, column: 60, scope: !6360)
!6370 = !DILocation(line: 163, column: 2, scope: !6360)
!6371 = !DILocation(line: 163, column: 11, scope: !6360)
!6372 = !DILocation(line: 163, column: 19, scope: !6360)
!6373 = !DILocation(line: 165, column: 9, scope: !6367)
!6374 = !DILocation(line: 165, column: 9, scope: !6360)
!6375 = !DILocation(line: 166, column: 1, scope: !6360)
!6376 = !DILocation(line: 165, column: 2, scope: !6360)
!6377 = !DISubprogram(name: "bio_add_page", scope: !3972, file: !3972, line: 476, type: !6378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6378 = !DISubroutineType(types: !6379)
!6379 = !{!12, !100, !146, !87, !87}
!6380 = distinct !DISubprogram(name: "__phys_addr_nodebug", scope: !6381, file: !6381, line: 22, type: !6382, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5314, retainedNodes: !6384)
!6381 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e8642b887a42f979954681cc5f73dc7c")
!6382 = !DISubroutineType(types: !6383)
!6383 = !{!151, !151}
!6384 = !{!6385, !6386}
!6385 = !DILocalVariable(name: "x", arg: 1, scope: !6380, file: !6381, line: 22, type: !151)
!6386 = !DILocalVariable(name: "y", scope: !6380, file: !6381, line: 24, type: !151)
!6387 = !DILocation(line: 22, column: 72, scope: !6380)
!6388 = !DILocation(line: 24, column: 2, scope: !6380)
!6389 = !DILocation(line: 24, column: 16, scope: !6380)
!6390 = !DILocation(line: 24, column: 20, scope: !6380)
!6391 = !DILocation(line: 24, column: 22, scope: !6380)
!6392 = !DILocation(line: 27, column: 6, scope: !6380)
!6393 = !DILocation(line: 27, column: 12, scope: !6380)
!6394 = !DILocation(line: 27, column: 16, scope: !6380)
!6395 = !DILocation(line: 27, column: 14, scope: !6380)
!6396 = !DILocation(line: 27, column: 11, scope: !6380)
!6397 = !DILocation(line: 27, column: 21, scope: !6380)
!6398 = !DILocation(line: 27, column: 55, scope: !6380)
!6399 = !DILocation(line: 27, column: 53, scope: !6380)
!6400 = !DILocation(line: 27, column: 8, scope: !6380)
!6401 = !DILocation(line: 27, column: 4, scope: !6380)
!6402 = !DILocation(line: 29, column: 9, scope: !6380)
!6403 = !DILocation(line: 30, column: 1, scope: !6380)
!6404 = !DILocation(line: 29, column: 2, scope: !6380)
