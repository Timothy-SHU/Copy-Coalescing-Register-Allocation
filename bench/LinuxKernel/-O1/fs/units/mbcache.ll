; ModuleID = 'fs/mbcache.c'
source_filename = "fs/mbcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mb_cache_entry_create: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad mb_cache_entry_create ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___mb_cache_entry_free: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __mb_cache_entry_free ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mb_cache_entry_wait_unused: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad mb_cache_entry_wait_unused ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mb_cache_entry_find_first: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad mb_cache_entry_find_first ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mb_cache_entry_find_next: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad mb_cache_entry_find_next ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mb_cache_entry_get: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad mb_cache_entry_get ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mb_cache_entry_delete_or_get: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad mb_cache_entry_delete_or_get ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mb_cache_entry_touch: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad mb_cache_entry_touch ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mb_cache_create: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad mb_cache_create ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mb_cache_destroy: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad mb_cache_destroy ; .previous"
module asm ".section\09\22.initcall6.init..kmod_mbcache__269_440_mbcache_init\22, \22a\22\09\09"
module asm "__initcall__kmod_mbcache__269_440_mbcache_init6:\09\09\09"
module asm ".long\09__initstub__kmod_mbcache__269_440_mbcache_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.lock_class_key = type {}
%struct.static_call_key = type { ptr, %union.anon.2 }
%union.anon.2 = type { i64 }
%struct.pcpu_hot = type { %union.anon.3 }
%union.anon.3 = type { %struct.anon.4, [16 x i8] }
%struct.anon.4 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.mb_cache = type { ptr, i32, i64, %struct.spinlock, %struct.list_head, i64, %struct.shrinker, %struct.work_struct }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.shrinker = type { ptr, ptr, i64, i32, i32, %struct.list_head, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.mb_cache_entry = type { %struct.list_head, %struct.hlist_bl_node, %struct.atomic_t, i32, i64, i64 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.hlist_bl_head = type { ptr }
%struct.wait_bit_queue_entry = type { %struct.wait_bit_key, %struct.wait_queue_entry }
%struct.wait_bit_key = type { ptr, i32, i64 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.shrink_control = type { i32, i32, i64, i64, ptr }

@mb_entry_cache = internal global ptr null, align 8, !dbg !0
@__UNIQUE_ID___addressable_mb_cache_entry_create259 = internal global ptr @mb_cache_entry_create, section ".discard.addressable", align 8, !dbg !211
@__UNIQUE_ID___addressable___mb_cache_entry_free260 = internal global ptr @__mb_cache_entry_free, section ".discard.addressable", align 8, !dbg !213
@__UNIQUE_ID___addressable_mb_cache_entry_wait_unused261 = internal global ptr @mb_cache_entry_wait_unused, section ".discard.addressable", align 8, !dbg !215
@__UNIQUE_ID___addressable_mb_cache_entry_find_first262 = internal global ptr @mb_cache_entry_find_first, section ".discard.addressable", align 8, !dbg !217
@__UNIQUE_ID___addressable_mb_cache_entry_find_next263 = internal global ptr @mb_cache_entry_find_next, section ".discard.addressable", align 8, !dbg !219
@__UNIQUE_ID___addressable_mb_cache_entry_get264 = internal global ptr @mb_cache_entry_get, section ".discard.addressable", align 8, !dbg !221
@__UNIQUE_ID___addressable_mb_cache_entry_delete_or_get265 = internal global ptr @mb_cache_entry_delete_or_get, section ".discard.addressable", align 8, !dbg !223
@__UNIQUE_ID___addressable_mb_cache_entry_touch266 = internal global ptr @mb_cache_entry_touch, section ".discard.addressable", align 8, !dbg !225
@.str = private unnamed_addr constant [17 x i8] c"mbcache-shrinker\00", align 1, !dbg !227
@mb_cache_create.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !232
@__UNIQUE_ID___addressable_mb_cache_create267 = internal global ptr @mb_cache_create, section ".discard.addressable", align 8, !dbg !246
@.str.1 = private unnamed_addr constant [13 x i8] c"fs/mbcache.c\00", align 1, !dbg !248
@__UNIQUE_ID___addressable_mb_cache_destroy268 = internal global ptr @mb_cache_destroy, section ".discard.addressable", align 8, !dbg !253
@__UNIQUE_ID___addressable___initstub__kmod_mbcache__269_440_mbcache_init6270 = internal global ptr @__initstub__kmod_mbcache__269_440_mbcache_init6, section ".discard.addressable", align 8, !dbg !255
@__exitcall_mbcache_exit = internal global ptr @mbcache_exit, section ".exitcall.exit", align 8, !dbg !257
@__UNIQUE_ID_author271 = internal constant [39 x i8] c"mbcache.author=Jan Kara <jack@suse.cz>\00", section ".modinfo", align 1, !dbg !264
@__UNIQUE_ID_description272 = internal constant [63 x i8] c"mbcache.description=Meta block cache (for extended attributes)\00", section ".modinfo", align 1, !dbg !270
@__UNIQUE_ID_file273 = internal constant [24 x i8] c"mbcache.file=fs/mbcache\00", section ".modinfo", align 1, !dbg !275
@__UNIQUE_ID_license274 = internal constant [20 x i8] c"mbcache.license=GPL\00", section ".modinfo", align 1, !dbg !280
@system_wq = external dso_local global ptr, align 8
@bit_spin_lock.__UNIQUE_ID___addressable___SCK__preempt_schedule118 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !285
@__SCK__preempt_schedule = external dso_local global %struct.static_call_key, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@__bit_spin_unlock.__UNIQUE_ID___addressable___SCK__preempt_schedule121 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !294
@might_resched.__UNIQUE_ID___addressable___SCK__might_resched29 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8, !dbg !300
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched177 = internal global ptr @__SCK__cond_resched, section ".discard.addressable", align 8, !dbg !304
@__SCK__cond_resched = external dso_local global %struct.static_call_key, align 8
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !310
@.str.3 = private unnamed_addr constant [8 x i8] c"mbcache\00", align 1, !dbg !315
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID___addressable_mb_cache_entry_create259, ptr @__UNIQUE_ID___addressable___mb_cache_entry_free260, ptr @__UNIQUE_ID___addressable_mb_cache_entry_wait_unused261, ptr @__UNIQUE_ID___addressable_mb_cache_entry_find_first262, ptr @__UNIQUE_ID___addressable_mb_cache_entry_find_next263, ptr @__UNIQUE_ID___addressable_mb_cache_entry_get264, ptr @__UNIQUE_ID___addressable_mb_cache_entry_delete_or_get265, ptr @__UNIQUE_ID___addressable_mb_cache_entry_touch266, ptr @__UNIQUE_ID___addressable_mb_cache_create267, ptr @__UNIQUE_ID___addressable_mb_cache_destroy268, ptr @mbcache_exit, ptr @__UNIQUE_ID___addressable___initstub__kmod_mbcache__269_440_mbcache_init6270, ptr @__exitcall_mbcache_exit, ptr @__UNIQUE_ID_author271, ptr @__UNIQUE_ID_description272, ptr @__UNIQUE_ID_file273, ptr @__UNIQUE_ID_license274, ptr @bit_spin_lock.__UNIQUE_ID___addressable___SCK__preempt_schedule118, ptr @__bit_spin_unlock.__UNIQUE_ID___addressable___SCK__preempt_schedule121, ptr @might_resched.__UNIQUE_ID___addressable___SCK__might_resched29, ptr @_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched177], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mb_cache_entry_create(ptr noundef %cache, i32 noundef %mask, i32 noundef %key, i64 noundef %value, i1 noundef zeroext %reusable) #0 align 16 !dbg !333 {
entry:
  %retval = alloca i32, align 4
  %cache.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  %key.addr = alloca i32, align 4
  %value.addr = alloca i64, align 8
  %reusable.addr = alloca i8, align 1
  %entry1 = alloca ptr, align 8
  %dup = alloca ptr, align 8
  %dup_node = alloca ptr, align 8
  %head = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp18 = alloca i32, align 4
  store ptr %cache, ptr %cache.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cache.addr, metadata !339, metadata !DIExpression()), !dbg !354
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !340, metadata !DIExpression()), !dbg !355
  store i32 %key, ptr %key.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !341, metadata !DIExpression()), !dbg !356
  store i64 %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !342, metadata !DIExpression()), !dbg !357
  %frombool = zext i1 %reusable to i8
  store i8 %frombool, ptr %reusable.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %reusable.addr, metadata !343, metadata !DIExpression()), !dbg !358
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #19, !dbg !359
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !344, metadata !DIExpression()), !dbg !360
  call void @llvm.lifetime.start.p0(i64 8, ptr %dup) #19, !dbg !359
  call void @llvm.dbg.declare(metadata ptr %dup, metadata !345, metadata !DIExpression()), !dbg !361
  call void @llvm.lifetime.start.p0(i64 8, ptr %dup_node) #19, !dbg !362
  call void @llvm.dbg.declare(metadata ptr %dup_node, metadata !346, metadata !DIExpression()), !dbg !363
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #19, !dbg !364
  call void @llvm.dbg.declare(metadata ptr %head, metadata !347, metadata !DIExpression()), !dbg !365
  %0 = load ptr, ptr %cache.addr, align 8, !dbg !366
  %c_entry_count = getelementptr inbounds %struct.mb_cache, ptr %0, i32 0, i32 5, !dbg !368
  %1 = load i64, ptr %c_entry_count, align 8, !dbg !368
  %2 = load ptr, ptr %cache.addr, align 8, !dbg !369
  %c_max_entries = getelementptr inbounds %struct.mb_cache, ptr %2, i32 0, i32 2, !dbg !370
  %3 = load i64, ptr %c_max_entries, align 8, !dbg !370
  %cmp = icmp uge i64 %1, %3, !dbg !371
  br i1 %cmp, label %if.then, label %if.end, !dbg !372

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %cache.addr, align 8, !dbg !373
  %c_shrink_work = getelementptr inbounds %struct.mb_cache, ptr %4, i32 0, i32 7, !dbg !374
  %call = call zeroext i1 @schedule_work(ptr noundef %c_shrink_work) #20, !dbg !375
  br label %if.end, !dbg !375

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %cache.addr, align 8, !dbg !376
  %c_entry_count2 = getelementptr inbounds %struct.mb_cache, ptr %5, i32 0, i32 5, !dbg !378
  %6 = load i64, ptr %c_entry_count2, align 8, !dbg !378
  %7 = load ptr, ptr %cache.addr, align 8, !dbg !379
  %c_max_entries3 = getelementptr inbounds %struct.mb_cache, ptr %7, i32 0, i32 2, !dbg !380
  %8 = load i64, ptr %c_max_entries3, align 8, !dbg !380
  %mul = mul i64 2, %8, !dbg !381
  %cmp4 = icmp uge i64 %6, %mul, !dbg !382
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !383

if.then5:                                         ; preds = %if.end
  %9 = load ptr, ptr %cache.addr, align 8, !dbg !384
  %call6 = call i64 @mb_cache_shrink(ptr noundef %9, i64 noundef 64) #20, !dbg !385
  br label %if.end7, !dbg !385

if.end7:                                          ; preds = %if.then5, %if.end
  %10 = load ptr, ptr @mb_entry_cache, align 8, !dbg !386
  %11 = load i32, ptr %mask.addr, align 4, !dbg !387
  %call8 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %10, i32 noundef %11) #20, !dbg !388
  store ptr %call8, ptr %entry1, align 8, !dbg !389
  %12 = load ptr, ptr %entry1, align 8, !dbg !390
  %tobool = icmp ne ptr %12, null, !dbg !390
  br i1 %tobool, label %if.end10, label %if.then9, !dbg !392

if.then9:                                         ; preds = %if.end7
  store i32 -12, ptr %retval, align 4, !dbg !393
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !393

if.end10:                                         ; preds = %if.end7
  %13 = load ptr, ptr %entry1, align 8, !dbg !394
  %e_list = getelementptr inbounds %struct.mb_cache_entry, ptr %13, i32 0, i32 0, !dbg !395
  call void @INIT_LIST_HEAD(ptr noundef %e_list) #20, !dbg !396
  %14 = load ptr, ptr %entry1, align 8, !dbg !397
  %e_refcnt = getelementptr inbounds %struct.mb_cache_entry, ptr %14, i32 0, i32 2, !dbg !398
  call void @atomic_set(ptr noundef %e_refcnt, i32 noundef 2) #20, !dbg !399
  %15 = load i32, ptr %key.addr, align 4, !dbg !400
  %16 = load ptr, ptr %entry1, align 8, !dbg !401
  %e_key = getelementptr inbounds %struct.mb_cache_entry, ptr %16, i32 0, i32 3, !dbg !402
  store i32 %15, ptr %e_key, align 4, !dbg !403
  %17 = load i64, ptr %value.addr, align 8, !dbg !404
  %18 = load ptr, ptr %entry1, align 8, !dbg !405
  %e_value = getelementptr inbounds %struct.mb_cache_entry, ptr %18, i32 0, i32 5, !dbg !406
  store i64 %17, ptr %e_value, align 8, !dbg !407
  %19 = load ptr, ptr %entry1, align 8, !dbg !408
  %e_flags = getelementptr inbounds %struct.mb_cache_entry, ptr %19, i32 0, i32 4, !dbg !409
  store i64 0, ptr %e_flags, align 8, !dbg !410
  %20 = load i8, ptr %reusable.addr, align 1, !dbg !411, !range !413, !noundef !245
  %tobool11 = trunc i8 %20 to i1, !dbg !411
  br i1 %tobool11, label %if.then12, label %if.end14, !dbg !414

if.then12:                                        ; preds = %if.end10
  %21 = load ptr, ptr %entry1, align 8, !dbg !415
  %e_flags13 = getelementptr inbounds %struct.mb_cache_entry, ptr %21, i32 0, i32 4, !dbg !416
  call void @set_bit(i64 noundef 1, ptr noundef %e_flags13) #20, !dbg !417
  br label %if.end14, !dbg !417

if.end14:                                         ; preds = %if.then12, %if.end10
  %22 = load ptr, ptr %cache.addr, align 8, !dbg !418
  %23 = load i32, ptr %key.addr, align 4, !dbg !419
  %call15 = call ptr @mb_cache_entry_head(ptr noundef %22, i32 noundef %23) #20, !dbg !420
  store ptr %call15, ptr %head, align 8, !dbg !421
  %24 = load ptr, ptr %head, align 8, !dbg !422
  call void @hlist_bl_lock(ptr noundef %24) #20, !dbg !423
  %25 = load ptr, ptr %head, align 8, !dbg !424
  %call16 = call ptr @hlist_bl_first(ptr noundef %25) #20, !dbg !424
  store ptr %call16, ptr %dup_node, align 8, !dbg !424
  br label %for.cond, !dbg !424

for.cond:                                         ; preds = %for.inc, %if.end14
  %26 = load ptr, ptr %dup_node, align 8, !dbg !425
  %tobool17 = icmp ne ptr %26, null, !dbg !425
  br i1 %tobool17, label %land.rhs, label %land.end, !dbg !425

land.rhs:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #19, !dbg !426
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !348, metadata !DIExpression()), !dbg !426
  %27 = load ptr, ptr %dup_node, align 8, !dbg !426
  store ptr %27, ptr %__mptr, align 8, !dbg !426
  %28 = load ptr, ptr %__mptr, align 8, !dbg !426
  %add.ptr = getelementptr i8, ptr %28, i64 -16, !dbg !426
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !426
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #19, !dbg !427
  %29 = load ptr, ptr %tmp, align 8, !dbg !426
  store ptr %29, ptr %dup, align 8, !dbg !427
  store i32 1, ptr %tmp18, align 4, !dbg !427
  %30 = load i32, ptr %tmp18, align 4, !dbg !427
  %tobool19 = icmp ne i32 %30, 0, !dbg !425
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %31 = phi i1 [ false, %for.cond ], [ %tobool19, %land.rhs ], !dbg !428
  br i1 %31, label %for.body, label %for.end, !dbg !424

for.body:                                         ; preds = %land.end
  %32 = load ptr, ptr %dup, align 8, !dbg !429
  %e_key20 = getelementptr inbounds %struct.mb_cache_entry, ptr %32, i32 0, i32 3, !dbg !432
  %33 = load i32, ptr %e_key20, align 4, !dbg !432
  %34 = load i32, ptr %key.addr, align 4, !dbg !433
  %cmp21 = icmp eq i32 %33, %34, !dbg !434
  br i1 %cmp21, label %land.lhs.true, label %if.end25, !dbg !435

land.lhs.true:                                    ; preds = %for.body
  %35 = load ptr, ptr %dup, align 8, !dbg !436
  %e_value22 = getelementptr inbounds %struct.mb_cache_entry, ptr %35, i32 0, i32 5, !dbg !437
  %36 = load i64, ptr %e_value22, align 8, !dbg !437
  %37 = load i64, ptr %value.addr, align 8, !dbg !438
  %cmp23 = icmp eq i64 %36, %37, !dbg !439
  br i1 %cmp23, label %if.then24, label %if.end25, !dbg !440

if.then24:                                        ; preds = %land.lhs.true
  %38 = load ptr, ptr %head, align 8, !dbg !441
  call void @hlist_bl_unlock(ptr noundef %38) #20, !dbg !443
  %39 = load ptr, ptr @mb_entry_cache, align 8, !dbg !444
  %40 = load ptr, ptr %entry1, align 8, !dbg !445
  call void @kmem_cache_free(ptr noundef %39, ptr noundef %40) #20, !dbg !446
  store i32 -16, ptr %retval, align 4, !dbg !447
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !447

if.end25:                                         ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !448

for.inc:                                          ; preds = %if.end25
  %41 = load ptr, ptr %dup_node, align 8, !dbg !425
  %next = getelementptr inbounds %struct.hlist_bl_node, ptr %41, i32 0, i32 0, !dbg !425
  %42 = load ptr, ptr %next, align 8, !dbg !425
  store ptr %42, ptr %dup_node, align 8, !dbg !425
  br label %for.cond, !dbg !425, !llvm.loop !449

for.end:                                          ; preds = %land.end
  %43 = load ptr, ptr %entry1, align 8, !dbg !453
  %e_hash_list = getelementptr inbounds %struct.mb_cache_entry, ptr %43, i32 0, i32 1, !dbg !454
  %44 = load ptr, ptr %head, align 8, !dbg !455
  call void @hlist_bl_add_head(ptr noundef %e_hash_list, ptr noundef %44) #20, !dbg !456
  %45 = load ptr, ptr %head, align 8, !dbg !457
  call void @hlist_bl_unlock(ptr noundef %45) #20, !dbg !458
  %46 = load ptr, ptr %cache.addr, align 8, !dbg !459
  %c_list_lock = getelementptr inbounds %struct.mb_cache, ptr %46, i32 0, i32 3, !dbg !460
  call void @spin_lock(ptr noundef %c_list_lock) #20, !dbg !461
  %47 = load ptr, ptr %entry1, align 8, !dbg !462
  %e_list26 = getelementptr inbounds %struct.mb_cache_entry, ptr %47, i32 0, i32 0, !dbg !463
  %48 = load ptr, ptr %cache.addr, align 8, !dbg !464
  %c_list = getelementptr inbounds %struct.mb_cache, ptr %48, i32 0, i32 4, !dbg !465
  call void @list_add_tail(ptr noundef %e_list26, ptr noundef %c_list) #20, !dbg !466
  %49 = load ptr, ptr %cache.addr, align 8, !dbg !467
  %c_entry_count27 = getelementptr inbounds %struct.mb_cache, ptr %49, i32 0, i32 5, !dbg !468
  %50 = load i64, ptr %c_entry_count27, align 8, !dbg !469
  %inc = add i64 %50, 1, !dbg !469
  store i64 %inc, ptr %c_entry_count27, align 8, !dbg !469
  %51 = load ptr, ptr %cache.addr, align 8, !dbg !470
  %c_list_lock28 = getelementptr inbounds %struct.mb_cache, ptr %51, i32 0, i32 3, !dbg !471
  call void @spin_unlock(ptr noundef %c_list_lock28) #20, !dbg !472
  %52 = load ptr, ptr %cache.addr, align 8, !dbg !473
  %53 = load ptr, ptr %entry1, align 8, !dbg !474
  call void @mb_cache_entry_put(ptr noundef %52, ptr noundef %53) #20, !dbg !475
  store i32 0, ptr %retval, align 4, !dbg !476
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !476

cleanup:                                          ; preds = %for.end, %if.then24, %if.then9
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #19, !dbg !477
  call void @llvm.lifetime.end.p0(i64 8, ptr %dup_node) #19, !dbg !477
  call void @llvm.lifetime.end.p0(i64 8, ptr %dup) #19, !dbg !477
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #19, !dbg !477
  %54 = load i32, ptr %retval, align 4, !dbg !477
  ret i32 %54, !dbg !477
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @schedule_work(ptr noundef %work) #3 align 16 !dbg !478 {
entry:
  %work.addr = alloca ptr, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !482, metadata !DIExpression()), !dbg !483
  %0 = load ptr, ptr @system_wq, align 8, !dbg !484
  %1 = load ptr, ptr %work.addr, align 8, !dbg !485
  %call = call zeroext i1 @queue_work(ptr noundef %0, ptr noundef %1) #20, !dbg !486
  ret i1 %call, !dbg !487
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @mb_cache_shrink(ptr noundef %cache, i64 noundef %nr_to_scan) #0 align 16 !dbg !488 {
entry:
  %cache.addr = alloca ptr, align 8
  %nr_to_scan.addr = alloca i64, align 8
  %entry1 = alloca ptr, align 8
  %shrunk = alloca i64, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp23 = alloca i32, align 4
  store ptr %cache, ptr %cache.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cache.addr, metadata !492, metadata !DIExpression()), !dbg !499
  store i64 %nr_to_scan, ptr %nr_to_scan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr_to_scan.addr, metadata !493, metadata !DIExpression()), !dbg !500
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #19, !dbg !501
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !494, metadata !DIExpression()), !dbg !502
  call void @llvm.lifetime.start.p0(i64 8, ptr %shrunk) #19, !dbg !503
  call void @llvm.dbg.declare(metadata ptr %shrunk, metadata !495, metadata !DIExpression()), !dbg !504
  store i64 0, ptr %shrunk, align 8, !dbg !504
  %0 = load ptr, ptr %cache.addr, align 8, !dbg !505
  %c_list_lock = getelementptr inbounds %struct.mb_cache, ptr %0, i32 0, i32 3, !dbg !506
  call void @spin_lock(ptr noundef %c_list_lock) #20, !dbg !507
  br label %while.cond, !dbg !508

while.cond:                                       ; preds = %if.end, %if.then, %entry
  %1 = load i64, ptr %nr_to_scan.addr, align 8, !dbg !509
  %dec = add i64 %1, -1, !dbg !509
  store i64 %dec, ptr %nr_to_scan.addr, align 8, !dbg !509
  %tobool = icmp ne i64 %1, 0, !dbg !509
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !510

land.rhs:                                         ; preds = %while.cond
  %2 = load ptr, ptr %cache.addr, align 8, !dbg !511
  %c_list = getelementptr inbounds %struct.mb_cache, ptr %2, i32 0, i32 4, !dbg !512
  %call = call i32 @list_empty(ptr noundef %c_list) #20, !dbg !513
  %tobool2 = icmp ne i32 %call, 0, !dbg !514
  %lnot = xor i1 %tobool2, true, !dbg !514
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ], !dbg !515
  br i1 %3, label %while.body, label %while.end, !dbg !508

while.body:                                       ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #19, !dbg !516
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !496, metadata !DIExpression()), !dbg !516
  %4 = load ptr, ptr %cache.addr, align 8, !dbg !516
  %c_list3 = getelementptr inbounds %struct.mb_cache, ptr %4, i32 0, i32 4, !dbg !516
  %next = getelementptr inbounds %struct.list_head, ptr %c_list3, i32 0, i32 0, !dbg !516
  %5 = load ptr, ptr %next, align 8, !dbg !516
  store ptr %5, ptr %__mptr, align 8, !dbg !516
  %6 = load ptr, ptr %__mptr, align 8, !dbg !516
  %add.ptr = getelementptr i8, ptr %6, i64 0, !dbg !516
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !516
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #19, !dbg !517
  %7 = load ptr, ptr %tmp, align 8, !dbg !516
  store ptr %7, ptr %entry1, align 8, !dbg !518
  %8 = load ptr, ptr %entry1, align 8, !dbg !519
  %e_flags = getelementptr inbounds %struct.mb_cache_entry, ptr %8, i32 0, i32 4, !dbg !519
  %9 = ptrtoint ptr %e_flags to i64, !dbg !519
  %cmp = icmp ne i64 %9, 0, !dbg !519
  %conv = zext i1 %cmp to i32, !dbg !519
  %10 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !519
  br i1 %10, label %land.lhs.true, label %cond.false, !dbg !519

land.lhs.true:                                    ; preds = %while.body
  %11 = load ptr, ptr %entry1, align 8, !dbg !519
  %e_flags4 = getelementptr inbounds %struct.mb_cache_entry, ptr %11, i32 0, i32 4, !dbg !519
  %12 = ptrtoint ptr %e_flags4 to i64, !dbg !519
  %cmp5 = icmp ne i64 %12, 0, !dbg !519
  br i1 %cmp5, label %land.lhs.true7, label %cond.false, !dbg !519

land.lhs.true7:                                   ; preds = %land.lhs.true
  %13 = load ptr, ptr %entry1, align 8, !dbg !519
  %e_flags8 = getelementptr inbounds %struct.mb_cache_entry, ptr %13, i32 0, i32 4, !dbg !519
  %14 = load i64, ptr %e_flags8, align 8, !dbg !519
  %15 = call i1 @llvm.is.constant.i64(i64 %14), !dbg !519
  br i1 %15, label %cond.true, label %cond.false, !dbg !521

cond.true:                                        ; preds = %land.lhs.true7
  %16 = load ptr, ptr %entry1, align 8, !dbg !519
  %e_flags9 = getelementptr inbounds %struct.mb_cache_entry, ptr %16, i32 0, i32 4, !dbg !519
  %call10 = call zeroext i1 @const_test_bit(i64 noundef 0, ptr noundef %e_flags9) #20, !dbg !519
  br i1 %call10, label %if.then, label %lor.lhs.false, !dbg !519

cond.false:                                       ; preds = %land.lhs.true7, %land.lhs.true, %while.body
  %17 = load ptr, ptr %entry1, align 8, !dbg !519
  %e_flags12 = getelementptr inbounds %struct.mb_cache_entry, ptr %17, i32 0, i32 4, !dbg !519
  %call13 = call zeroext i1 @_test_bit(i64 noundef 0, ptr noundef %e_flags12) #20, !dbg !519
  br i1 %call13, label %if.then, label %lor.lhs.false, !dbg !521

lor.lhs.false:                                    ; preds = %cond.false, %cond.true
  %18 = load ptr, ptr %entry1, align 8, !dbg !522
  %e_refcnt = getelementptr inbounds %struct.mb_cache_entry, ptr %18, i32 0, i32 2, !dbg !523
  %call15 = call i32 @atomic_cmpxchg(ptr noundef %e_refcnt, i32 noundef 1, i32 noundef 0) #20, !dbg !524
  %cmp16 = icmp ne i32 %call15, 1, !dbg !525
  br i1 %cmp16, label %if.then, label %if.end, !dbg !526

if.then:                                          ; preds = %lor.lhs.false, %cond.false, %cond.true
  %19 = load ptr, ptr %entry1, align 8, !dbg !527
  %e_flags18 = getelementptr inbounds %struct.mb_cache_entry, ptr %19, i32 0, i32 4, !dbg !529
  call void @clear_bit(i64 noundef 0, ptr noundef %e_flags18) #20, !dbg !530
  %20 = load ptr, ptr %entry1, align 8, !dbg !531
  %e_list = getelementptr inbounds %struct.mb_cache_entry, ptr %20, i32 0, i32 0, !dbg !532
  %21 = load ptr, ptr %cache.addr, align 8, !dbg !533
  %c_list19 = getelementptr inbounds %struct.mb_cache, ptr %21, i32 0, i32 4, !dbg !534
  call void @list_move_tail(ptr noundef %e_list, ptr noundef %c_list19) #20, !dbg !535
  br label %while.cond, !dbg !536, !llvm.loop !537

if.end:                                           ; preds = %lor.lhs.false
  %22 = load ptr, ptr %entry1, align 8, !dbg !539
  %e_list20 = getelementptr inbounds %struct.mb_cache_entry, ptr %22, i32 0, i32 0, !dbg !540
  call void @list_del_init(ptr noundef %e_list20) #20, !dbg !541
  %23 = load ptr, ptr %cache.addr, align 8, !dbg !542
  %c_entry_count = getelementptr inbounds %struct.mb_cache, ptr %23, i32 0, i32 5, !dbg !543
  %24 = load i64, ptr %c_entry_count, align 8, !dbg !544
  %dec21 = add i64 %24, -1, !dbg !544
  store i64 %dec21, ptr %c_entry_count, align 8, !dbg !544
  %25 = load ptr, ptr %cache.addr, align 8, !dbg !545
  %c_list_lock22 = getelementptr inbounds %struct.mb_cache, ptr %25, i32 0, i32 3, !dbg !546
  call void @spin_unlock(ptr noundef %c_list_lock22) #20, !dbg !547
  %26 = load ptr, ptr %cache.addr, align 8, !dbg !548
  %27 = load ptr, ptr %entry1, align 8, !dbg !549
  call void @__mb_cache_entry_free(ptr noundef %26, ptr noundef %27) #20, !dbg !550
  %28 = load i64, ptr %shrunk, align 8, !dbg !551
  %inc = add i64 %28, 1, !dbg !551
  store i64 %inc, ptr %shrunk, align 8, !dbg !551
  call void @__might_resched(ptr noundef @.str.1, i32 noundef 325, i32 noundef 0) #20, !dbg !552
  %call24 = call i32 @_cond_resched() #20, !dbg !552
  store i32 %call24, ptr %tmp23, align 4, !dbg !552
  %29 = load i32, ptr %tmp23, align 4, !dbg !552
  %30 = load ptr, ptr %cache.addr, align 8, !dbg !554
  %c_list_lock25 = getelementptr inbounds %struct.mb_cache, ptr %30, i32 0, i32 3, !dbg !555
  call void @spin_lock(ptr noundef %c_list_lock25) #20, !dbg !556
  br label %while.cond, !dbg !508, !llvm.loop !537

while.end:                                        ; preds = %land.end
  %31 = load ptr, ptr %cache.addr, align 8, !dbg !557
  %c_list_lock26 = getelementptr inbounds %struct.mb_cache, ptr %31, i32 0, i32 3, !dbg !558
  call void @spin_unlock(ptr noundef %c_list_lock26) #20, !dbg !559
  %32 = load i64, ptr %shrunk, align 8, !dbg !560
  call void @llvm.lifetime.end.p0(i64 8, ptr %shrunk) #19, !dbg !561
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #19, !dbg !561
  ret i64 %32, !dbg !562
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !563 dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #3 align 16 !dbg !566 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !571, metadata !DIExpression()), !dbg !572
  br label %do.body, !dbg !573

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !574

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !576

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !574

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !578
  %1 = load ptr, ptr %list.addr, align 8, !dbg !578
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !578
  store volatile ptr %0, ptr %next, align 8, !dbg !578
  br label %do.end3, !dbg !578

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !574

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !580

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !581

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !583

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !581

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !585
  %3 = load ptr, ptr %list.addr, align 8, !dbg !585
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !585
  store volatile ptr %2, ptr %prev, align 8, !dbg !585
  br label %do.end9, !dbg !585

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !581

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !587
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #5 align 16 !dbg !588 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !594, metadata !DIExpression()), !dbg !596
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !595, metadata !DIExpression()), !dbg !597
  %0 = load ptr, ptr %v.addr, align 8, !dbg !598
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #20, !dbg !599
  %1 = load ptr, ptr %v.addr, align 8, !dbg !600
  %2 = load i32, ptr %i.addr, align 4, !dbg !601
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #20, !dbg !602
  ret void, !dbg !603
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !604 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !611, metadata !DIExpression()), !dbg !613
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !612, metadata !DIExpression()), !dbg !614
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !615
  %1 = load i64, ptr %nr.addr, align 8, !dbg !616
  %div = sdiv i64 %1, 64, !dbg !616
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !617
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #20, !dbg !618
  %2 = load i64, ptr %nr.addr, align 8, !dbg !619
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !620
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #20, !dbg !621
  ret void, !dbg !622
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @mb_cache_entry_head(ptr noundef %cache, i32 noundef %key) #3 align 16 !dbg !623 {
entry:
  %cache.addr = alloca ptr, align 8
  %key.addr = alloca i32, align 4
  store ptr %cache, ptr %cache.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cache.addr, metadata !627, metadata !DIExpression()), !dbg !629
  store i32 %key, ptr %key.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !628, metadata !DIExpression()), !dbg !630
  %0 = load ptr, ptr %cache.addr, align 8, !dbg !631
  %c_hash = getelementptr inbounds %struct.mb_cache, ptr %0, i32 0, i32 0, !dbg !632
  %1 = load ptr, ptr %c_hash, align 8, !dbg !632
  %2 = load i32, ptr %key.addr, align 4, !dbg !633
  %3 = load ptr, ptr %cache.addr, align 8, !dbg !634
  %c_bucket_bits = getelementptr inbounds %struct.mb_cache, ptr %3, i32 0, i32 1, !dbg !635
  %4 = load i32, ptr %c_bucket_bits, align 8, !dbg !635
  %call = call i32 @hash_32(i32 noundef %2, i32 noundef %4) #20, !dbg !636
  %idxprom = zext i32 %call to i64, !dbg !631
  %arrayidx = getelementptr %struct.hlist_bl_head, ptr %1, i64 %idxprom, !dbg !631
  ret ptr %arrayidx, !dbg !637
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hlist_bl_lock(ptr noundef %b) #3 align 16 !dbg !638 {
entry:
  %b.addr = alloca ptr, align 8
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !642, metadata !DIExpression()), !dbg !643
  %0 = load ptr, ptr %b.addr, align 8, !dbg !644
  call void @bit_spin_lock(i32 noundef 0, ptr noundef %0) #20, !dbg !645
  ret void, !dbg !646
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @hlist_bl_first(ptr noundef %h) #3 align 16 !dbg !647 {
entry:
  %h.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !651, metadata !DIExpression()), !dbg !652
  %0 = load ptr, ptr %h.addr, align 8, !dbg !653
  %first = getelementptr inbounds %struct.hlist_bl_head, ptr %0, i32 0, i32 0, !dbg !654
  %1 = load ptr, ptr %first, align 8, !dbg !654
  %2 = ptrtoint ptr %1 to i64, !dbg !655
  %and = and i64 %2, -2, !dbg !656
  %3 = inttoptr i64 %and to ptr, !dbg !657
  ret ptr %3, !dbg !658
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hlist_bl_unlock(ptr noundef %b) #3 align 16 !dbg !659 {
entry:
  %b.addr = alloca ptr, align 8
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !661, metadata !DIExpression()), !dbg !662
  %0 = load ptr, ptr %b.addr, align 8, !dbg !663
  call void @__bit_spin_unlock(i32 noundef 0, ptr noundef %0) #20, !dbg !664
  ret void, !dbg !665
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !666 dso_local void @kmem_cache_free(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hlist_bl_add_head(ptr noundef %n, ptr noundef %h) #3 align 16 !dbg !669 {
entry:
  %n.addr = alloca ptr, align 8
  %h.addr = alloca ptr, align 8
  %first = alloca ptr, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !673, metadata !DIExpression()), !dbg !676
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !674, metadata !DIExpression()), !dbg !677
  call void @llvm.lifetime.start.p0(i64 8, ptr %first) #19, !dbg !678
  call void @llvm.dbg.declare(metadata ptr %first, metadata !675, metadata !DIExpression()), !dbg !679
  %0 = load ptr, ptr %h.addr, align 8, !dbg !680
  %call = call ptr @hlist_bl_first(ptr noundef %0) #20, !dbg !681
  store ptr %call, ptr %first, align 8, !dbg !679
  %1 = load ptr, ptr %first, align 8, !dbg !682
  %2 = load ptr, ptr %n.addr, align 8, !dbg !683
  %next = getelementptr inbounds %struct.hlist_bl_node, ptr %2, i32 0, i32 0, !dbg !684
  store ptr %1, ptr %next, align 8, !dbg !685
  %3 = load ptr, ptr %first, align 8, !dbg !686
  %tobool = icmp ne ptr %3, null, !dbg !686
  br i1 %tobool, label %if.then, label %if.end, !dbg !688

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %n.addr, align 8, !dbg !689
  %next1 = getelementptr inbounds %struct.hlist_bl_node, ptr %4, i32 0, i32 0, !dbg !690
  %5 = load ptr, ptr %first, align 8, !dbg !691
  %pprev = getelementptr inbounds %struct.hlist_bl_node, ptr %5, i32 0, i32 1, !dbg !692
  store ptr %next1, ptr %pprev, align 8, !dbg !693
  br label %if.end, !dbg !691

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %h.addr, align 8, !dbg !694
  %first2 = getelementptr inbounds %struct.hlist_bl_head, ptr %6, i32 0, i32 0, !dbg !695
  %7 = load ptr, ptr %n.addr, align 8, !dbg !696
  %pprev3 = getelementptr inbounds %struct.hlist_bl_node, ptr %7, i32 0, i32 1, !dbg !697
  store ptr %first2, ptr %pprev3, align 8, !dbg !698
  %8 = load ptr, ptr %h.addr, align 8, !dbg !699
  %9 = load ptr, ptr %n.addr, align 8, !dbg !700
  call void @hlist_bl_set_first(ptr noundef %8, ptr noundef %9) #20, !dbg !701
  call void @llvm.lifetime.end.p0(i64 8, ptr %first) #19, !dbg !702
  ret void, !dbg !702
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #5 align 16 !dbg !703 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !709, metadata !DIExpression()), !dbg !710
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !711
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !711
  call void @_raw_spin_lock(ptr noundef %1) #20, !dbg !711
  ret void, !dbg !712
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #3 align 16 !dbg !713 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !717, metadata !DIExpression()), !dbg !719
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !718, metadata !DIExpression()), !dbg !720
  %0 = load ptr, ptr %new.addr, align 8, !dbg !721
  %1 = load ptr, ptr %head.addr, align 8, !dbg !722
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !723
  %2 = load ptr, ptr %prev, align 8, !dbg !723
  %3 = load ptr, ptr %head.addr, align 8, !dbg !724
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #20, !dbg !725
  ret void, !dbg !726
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #5 align 16 !dbg !727 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !729, metadata !DIExpression()), !dbg !730
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !731
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !731
  call void @_raw_spin_unlock(ptr noundef %1) #20, !dbg !731
  ret void, !dbg !732
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mb_cache_entry_put(ptr noundef %cache, ptr noundef %entry1) #3 align 16 !dbg !733 {
entry:
  %cache.addr = alloca ptr, align 8
  %entry.addr = alloca ptr, align 8
  %cnt = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cache, ptr %cache.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cache.addr, metadata !737, metadata !DIExpression()), !dbg !740
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !738, metadata !DIExpression()), !dbg !741
  call void @llvm.lifetime.start.p0(i64 4, ptr %cnt) #19, !dbg !742
  call void @llvm.dbg.declare(metadata ptr %cnt, metadata !739, metadata !DIExpression()), !dbg !743
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !744
  %e_refcnt = getelementptr inbounds %struct.mb_cache_entry, ptr %0, i32 0, i32 2, !dbg !745
  %call = call i32 @atomic_dec_return(ptr noundef %e_refcnt) #20, !dbg !746
  store i32 %call, ptr %cnt, align 4, !dbg !743
  %1 = load i32, ptr %cnt, align 4, !dbg !747
  %cmp = icmp ugt i32 %1, 0, !dbg !749
  br i1 %cmp, label %if.then, label %if.end5, !dbg !750

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %cnt, align 4, !dbg !751
  %cmp2 = icmp ule i32 %2, 2, !dbg !754
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !755

if.then3:                                         ; preds = %if.then
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !756
  %e_refcnt4 = getelementptr inbounds %struct.mb_cache_entry, ptr %3, i32 0, i32 2, !dbg !757
  call void @wake_up_var(ptr noundef %e_refcnt4) #20, !dbg !758
  br label %if.end, !dbg !758

if.end:                                           ; preds = %if.then3, %if.then
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !759

if.end5:                                          ; preds = %entry
  %4 = load ptr, ptr %cache.addr, align 8, !dbg !760
  %5 = load ptr, ptr %entry.addr, align 8, !dbg !761
  call void @__mb_cache_entry_free(ptr noundef %4, ptr noundef %5) #20, !dbg !762
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !763
  br label %cleanup, !dbg !763

cleanup:                                          ; preds = %if.end5, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %cnt) #19, !dbg !763
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !763

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__mb_cache_entry_free(ptr noundef %cache, ptr noundef %entry1) #0 align 16 !dbg !764 {
entry:
  %cache.addr = alloca ptr, align 8
  %entry.addr = alloca ptr, align 8
  %head = alloca ptr, align 8
  store ptr %cache, ptr %cache.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cache.addr, metadata !766, metadata !DIExpression()), !dbg !769
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !767, metadata !DIExpression()), !dbg !770
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #19, !dbg !771
  call void @llvm.dbg.declare(metadata ptr %head, metadata !768, metadata !DIExpression()), !dbg !772
  %0 = load ptr, ptr %cache.addr, align 8, !dbg !773
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !774
  %e_key = getelementptr inbounds %struct.mb_cache_entry, ptr %1, i32 0, i32 3, !dbg !775
  %2 = load i32, ptr %e_key, align 4, !dbg !775
  %call = call ptr @mb_cache_entry_head(ptr noundef %0, i32 noundef %2) #20, !dbg !776
  store ptr %call, ptr %head, align 8, !dbg !777
  %3 = load ptr, ptr %head, align 8, !dbg !778
  call void @hlist_bl_lock(ptr noundef %3) #20, !dbg !779
  %4 = load ptr, ptr %entry.addr, align 8, !dbg !780
  %e_hash_list = getelementptr inbounds %struct.mb_cache_entry, ptr %4, i32 0, i32 1, !dbg !781
  call void @hlist_bl_del(ptr noundef %e_hash_list) #20, !dbg !782
  %5 = load ptr, ptr %head, align 8, !dbg !783
  call void @hlist_bl_unlock(ptr noundef %5) #20, !dbg !784
  %6 = load ptr, ptr @mb_entry_cache, align 8, !dbg !785
  %7 = load ptr, ptr %entry.addr, align 8, !dbg !786
  call void @kmem_cache_free(ptr noundef %6, ptr noundef %7) #20, !dbg !787
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #19, !dbg !788
  ret void, !dbg !788
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hlist_bl_del(ptr noundef %n) #3 align 16 !dbg !789 {
entry:
  %n.addr = alloca ptr, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !793, metadata !DIExpression()), !dbg !794
  %0 = load ptr, ptr %n.addr, align 8, !dbg !795
  call void @__hlist_bl_del(ptr noundef %0) #20, !dbg !796
  %1 = load ptr, ptr %n.addr, align 8, !dbg !797
  %next = getelementptr inbounds %struct.hlist_bl_node, ptr %1, i32 0, i32 0, !dbg !798
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !799
  %2 = load ptr, ptr %n.addr, align 8, !dbg !800
  %pprev = getelementptr inbounds %struct.hlist_bl_node, ptr %2, i32 0, i32 1, !dbg !801
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %pprev, align 8, !dbg !802
  ret void, !dbg !803
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mb_cache_entry_wait_unused(ptr noundef %entry1) #0 align 16 !dbg !804 {
entry:
  %entry.addr = alloca ptr, align 8
  %__wq_head = alloca ptr, align 8
  %__wbq_entry = alloca %struct.wait_bit_queue_entry, align 8
  %__ret = alloca i64, align 8
  %__int = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !808, metadata !DIExpression()), !dbg !846
  br label %do.body, !dbg !847

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !848

do.body2:                                         ; preds = %do.body
  call void @might_resched() #20, !dbg !849
  br label %do.end, !dbg !849

do.end:                                           ; preds = %do.body2
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !851
  %e_refcnt = getelementptr inbounds %struct.mb_cache_entry, ptr %0, i32 0, i32 2, !dbg !851
  %call = call i32 @atomic_read(ptr noundef %e_refcnt) #20, !dbg !851
  %cmp = icmp sle i32 %call, 2, !dbg !851
  br i1 %cmp, label %if.then, label %if.end, !dbg !848

if.then:                                          ; preds = %do.end
  br label %do.end13, !dbg !851

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__wq_head) #19, !dbg !853
  call void @llvm.dbg.declare(metadata ptr %__wq_head, metadata !809, metadata !DIExpression()), !dbg !853
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !853
  %e_refcnt3 = getelementptr inbounds %struct.mb_cache_entry, ptr %1, i32 0, i32 2, !dbg !853
  %call4 = call ptr @__var_waitqueue(ptr noundef %e_refcnt3) #20, !dbg !853
  store ptr %call4, ptr %__wq_head, align 8, !dbg !853
  call void @llvm.lifetime.start.p0(i64 64, ptr %__wbq_entry) #19, !dbg !853
  call void @llvm.dbg.declare(metadata ptr %__wbq_entry, metadata !818, metadata !DIExpression()), !dbg !853
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #19, !dbg !853
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !840, metadata !DIExpression()), !dbg !853
  store i64 0, ptr %__ret, align 8, !dbg !853
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !853
  %e_refcnt5 = getelementptr inbounds %struct.mb_cache_entry, ptr %2, i32 0, i32 2, !dbg !853
  call void @init_wait_var_entry(ptr noundef %__wbq_entry, ptr noundef %e_refcnt5, i32 noundef 0) #20, !dbg !853
  br label %for.cond, !dbg !853

for.cond:                                         ; preds = %cleanup.cont, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__int) #19, !dbg !854
  call void @llvm.dbg.declare(metadata ptr %__int, metadata !841, metadata !DIExpression()), !dbg !854
  %3 = load ptr, ptr %__wq_head, align 8, !dbg !854
  %wq_entry = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %__wbq_entry, i32 0, i32 1, !dbg !854
  %call6 = call i64 @prepare_to_wait_event(ptr noundef %3, ptr noundef %wq_entry, i32 noundef 2) #20, !dbg !854
  store i64 %call6, ptr %__int, align 8, !dbg !854
  %4 = load ptr, ptr %entry.addr, align 8, !dbg !855
  %e_refcnt7 = getelementptr inbounds %struct.mb_cache_entry, ptr %4, i32 0, i32 2, !dbg !855
  %call8 = call i32 @atomic_read(ptr noundef %e_refcnt7) #20, !dbg !855
  %cmp9 = icmp sle i32 %call8, 2, !dbg !855
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !854

if.then10:                                        ; preds = %for.cond
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !855

if.end11:                                         ; preds = %for.cond
  call void @schedule() #20, !dbg !854
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !857
  br label %cleanup, !dbg !857

cleanup:                                          ; preds = %if.end11, %if.then10
  call void @llvm.lifetime.end.p0(i64 8, ptr %__int) #19, !dbg !857
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 6, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !857, !llvm.loop !858

for.end:                                          ; preds = %cleanup
  %5 = load ptr, ptr %__wq_head, align 8, !dbg !853
  %wq_entry12 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %__wbq_entry, i32 0, i32 1, !dbg !853
  call void @finish_wait(ptr noundef %5, ptr noundef %wq_entry12) #20, !dbg !853
  br label %__out, !dbg !853

__out:                                            ; preds = %for.end
  call void @llvm.dbg.label(metadata !845), !dbg !853
  %6 = load i64, ptr %__ret, align 8, !dbg !853
  store i64 %6, ptr %tmp, align 8, !dbg !853
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #19, !dbg !848
  call void @llvm.lifetime.end.p0(i64 64, ptr %__wbq_entry) #19, !dbg !848
  call void @llvm.lifetime.end.p0(i64 8, ptr %__wq_head) #19, !dbg !848
  %7 = load i64, ptr %tmp, align 8, !dbg !853
  br label %do.end13, !dbg !848

do.end13:                                         ; preds = %__out, %if.then
  ret void, !dbg !860

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_resched() #5 align 16 !dbg !302 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__might_resched, ptr %tmp, align 8, !dbg !861
  %0 = load ptr, ptr %tmp, align 8, !dbg !861
  %call = call i32 %0() #20, !dbg !863
  ret void, !dbg !864
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #5 align 16 !dbg !865 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !871, metadata !DIExpression()), !dbg !872
  %0 = load ptr, ptr %v.addr, align 8, !dbg !873
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #20, !dbg !874
  %1 = load ptr, ptr %v.addr, align 8, !dbg !875
  %call = call i32 @raw_atomic_read(ptr noundef %1) #20, !dbg !876
  ret i32 %call, !dbg !877
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !878 dso_local ptr @__var_waitqueue(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !883 dso_local void @init_wait_var_entry(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !887 dso_local i64 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !890 dso_local void @schedule() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !891 dso_local void @finish_wait(ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @mb_cache_entry_find_first(ptr noundef %cache, i32 noundef %key) #0 align 16 !dbg !894 {
entry:
  %cache.addr = alloca ptr, align 8
  %key.addr = alloca i32, align 4
  store ptr %cache, ptr %cache.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cache.addr, metadata !898, metadata !DIExpression()), !dbg !900
  store i32 %key, ptr %key.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !899, metadata !DIExpression()), !dbg !901
  %0 = load ptr, ptr %cache.addr, align 8, !dbg !902
  %1 = load i32, ptr %key.addr, align 4, !dbg !903
  %call = call ptr @__entry_find(ptr noundef %0, ptr noundef null, i32 noundef %1) #20, !dbg !904
  ret ptr %call, !dbg !905
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__entry_find(ptr noundef %cache, ptr noundef %entry1, i32 noundef %key) #0 align 16 !dbg !906 {
entry:
  %cache.addr = alloca ptr, align 8
  %entry.addr = alloca ptr, align 8
  %key.addr = alloca i32, align 4
  %old_entry = alloca ptr, align 8
  %node = alloca ptr, align 8
  %head = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %cache, ptr %cache.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cache.addr, metadata !910, metadata !DIExpression()), !dbg !920
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !911, metadata !DIExpression()), !dbg !921
  store i32 %key, ptr %key.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !912, metadata !DIExpression()), !dbg !922
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_entry) #19, !dbg !923
  call void @llvm.dbg.declare(metadata ptr %old_entry, metadata !913, metadata !DIExpression()), !dbg !924
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !925
  store ptr %0, ptr %old_entry, align 8, !dbg !924
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #19, !dbg !926
  call void @llvm.dbg.declare(metadata ptr %node, metadata !914, metadata !DIExpression()), !dbg !927
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #19, !dbg !928
  call void @llvm.dbg.declare(metadata ptr %head, metadata !915, metadata !DIExpression()), !dbg !929
  %1 = load ptr, ptr %cache.addr, align 8, !dbg !930
  %2 = load i32, ptr %key.addr, align 4, !dbg !931
  %call = call ptr @mb_cache_entry_head(ptr noundef %1, i32 noundef %2) #20, !dbg !932
  store ptr %call, ptr %head, align 8, !dbg !933
  %3 = load ptr, ptr %head, align 8, !dbg !934
  call void @hlist_bl_lock(ptr noundef %3) #20, !dbg !935
  %4 = load ptr, ptr %entry.addr, align 8, !dbg !936
  %tobool = icmp ne ptr %4, null, !dbg !936
  br i1 %tobool, label %land.lhs.true, label %if.else, !dbg !938

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %entry.addr, align 8, !dbg !939
  %e_hash_list = getelementptr inbounds %struct.mb_cache_entry, ptr %5, i32 0, i32 1, !dbg !940
  %call2 = call zeroext i1 @hlist_bl_unhashed(ptr noundef %e_hash_list) #20, !dbg !941
  br i1 %call2, label %if.else, label %if.then, !dbg !942

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %entry.addr, align 8, !dbg !943
  %e_hash_list3 = getelementptr inbounds %struct.mb_cache_entry, ptr %6, i32 0, i32 1, !dbg !944
  %next = getelementptr inbounds %struct.hlist_bl_node, ptr %e_hash_list3, i32 0, i32 0, !dbg !945
  %7 = load ptr, ptr %next, align 8, !dbg !945
  store ptr %7, ptr %node, align 8, !dbg !946
  br label %if.end, !dbg !947

if.else:                                          ; preds = %land.lhs.true, %entry
  %8 = load ptr, ptr %head, align 8, !dbg !948
  %call4 = call ptr @hlist_bl_first(ptr noundef %8) #20, !dbg !949
  store ptr %call4, ptr %node, align 8, !dbg !950
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !dbg !951

while.cond:                                       ; preds = %if.end24, %if.end
  %9 = load ptr, ptr %node, align 8, !dbg !952
  %tobool5 = icmp ne ptr %9, null, !dbg !951
  br i1 %tobool5, label %while.body, label %while.end, !dbg !951

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #19, !dbg !953
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !916, metadata !DIExpression()), !dbg !953
  %10 = load ptr, ptr %node, align 8, !dbg !953
  store ptr %10, ptr %__mptr, align 8, !dbg !953
  %11 = load ptr, ptr %__mptr, align 8, !dbg !953
  %add.ptr = getelementptr i8, ptr %11, i64 -16, !dbg !953
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !953
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #19, !dbg !954
  %12 = load ptr, ptr %tmp, align 8, !dbg !953
  store ptr %12, ptr %entry.addr, align 8, !dbg !955
  %13 = load ptr, ptr %entry.addr, align 8, !dbg !956
  %e_key = getelementptr inbounds %struct.mb_cache_entry, ptr %13, i32 0, i32 3, !dbg !958
  %14 = load i32, ptr %e_key, align 4, !dbg !958
  %15 = load i32, ptr %key.addr, align 4, !dbg !959
  %cmp = icmp eq i32 %14, %15, !dbg !960
  br i1 %cmp, label %land.lhs.true6, label %if.end24, !dbg !961

land.lhs.true6:                                   ; preds = %while.body
  %16 = load ptr, ptr %entry.addr, align 8, !dbg !962
  %e_flags = getelementptr inbounds %struct.mb_cache_entry, ptr %16, i32 0, i32 4, !dbg !962
  %17 = ptrtoint ptr %e_flags to i64, !dbg !962
  %cmp7 = icmp ne i64 %17, 0, !dbg !962
  %conv = zext i1 %cmp7 to i32, !dbg !962
  %18 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !962
  br i1 %18, label %land.lhs.true8, label %cond.false, !dbg !962

land.lhs.true8:                                   ; preds = %land.lhs.true6
  %19 = load ptr, ptr %entry.addr, align 8, !dbg !962
  %e_flags9 = getelementptr inbounds %struct.mb_cache_entry, ptr %19, i32 0, i32 4, !dbg !962
  %20 = ptrtoint ptr %e_flags9 to i64, !dbg !962
  %cmp10 = icmp ne i64 %20, 0, !dbg !962
  br i1 %cmp10, label %land.lhs.true12, label %cond.false, !dbg !962

land.lhs.true12:                                  ; preds = %land.lhs.true8
  %21 = load ptr, ptr %entry.addr, align 8, !dbg !962
  %e_flags13 = getelementptr inbounds %struct.mb_cache_entry, ptr %21, i32 0, i32 4, !dbg !962
  %22 = load i64, ptr %e_flags13, align 8, !dbg !962
  %23 = call i1 @llvm.is.constant.i64(i64 %22), !dbg !962
  br i1 %23, label %cond.true, label %cond.false, !dbg !963

cond.true:                                        ; preds = %land.lhs.true12
  %24 = load ptr, ptr %entry.addr, align 8, !dbg !962
  %e_flags14 = getelementptr inbounds %struct.mb_cache_entry, ptr %24, i32 0, i32 4, !dbg !962
  %call15 = call zeroext i1 @const_test_bit(i64 noundef 1, ptr noundef %e_flags14) #20, !dbg !962
  br i1 %call15, label %land.lhs.true20, label %if.end24, !dbg !962

cond.false:                                       ; preds = %land.lhs.true12, %land.lhs.true8, %land.lhs.true6
  %25 = load ptr, ptr %entry.addr, align 8, !dbg !962
  %e_flags17 = getelementptr inbounds %struct.mb_cache_entry, ptr %25, i32 0, i32 4, !dbg !962
  %call18 = call zeroext i1 @_test_bit(i64 noundef 1, ptr noundef %e_flags17) #20, !dbg !962
  br i1 %call18, label %land.lhs.true20, label %if.end24, !dbg !963

land.lhs.true20:                                  ; preds = %cond.false, %cond.true
  %26 = load ptr, ptr %entry.addr, align 8, !dbg !964
  %e_refcnt = getelementptr inbounds %struct.mb_cache_entry, ptr %26, i32 0, i32 2, !dbg !965
  %call21 = call zeroext i1 @atomic_inc_not_zero(ptr noundef %e_refcnt) #20, !dbg !966
  br i1 %call21, label %if.then23, label %if.end24, !dbg !967

if.then23:                                        ; preds = %land.lhs.true20
  br label %out, !dbg !968

if.end24:                                         ; preds = %land.lhs.true20, %cond.false, %cond.true, %while.body
  %27 = load ptr, ptr %node, align 8, !dbg !969
  %next25 = getelementptr inbounds %struct.hlist_bl_node, ptr %27, i32 0, i32 0, !dbg !970
  %28 = load ptr, ptr %next25, align 8, !dbg !970
  store ptr %28, ptr %node, align 8, !dbg !971
  br label %while.cond, !dbg !951, !llvm.loop !972

while.end:                                        ; preds = %while.cond
  store ptr null, ptr %entry.addr, align 8, !dbg !974
  br label %out, !dbg !975

out:                                              ; preds = %while.end, %if.then23
  call void @llvm.dbg.label(metadata !919), !dbg !976
  %29 = load ptr, ptr %head, align 8, !dbg !977
  call void @hlist_bl_unlock(ptr noundef %29) #20, !dbg !978
  %30 = load ptr, ptr %old_entry, align 8, !dbg !979
  %tobool26 = icmp ne ptr %30, null, !dbg !979
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !981

if.then27:                                        ; preds = %out
  %31 = load ptr, ptr %cache.addr, align 8, !dbg !982
  %32 = load ptr, ptr %old_entry, align 8, !dbg !983
  call void @mb_cache_entry_put(ptr noundef %31, ptr noundef %32) #20, !dbg !984
  br label %if.end28, !dbg !984

if.end28:                                         ; preds = %if.then27, %out
  %33 = load ptr, ptr %entry.addr, align 8, !dbg !985
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #19, !dbg !986
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #19, !dbg !986
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_entry) #19, !dbg !986
  ret ptr %33, !dbg !987
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @mb_cache_entry_find_next(ptr noundef %cache, ptr noundef %entry1) #0 align 16 !dbg !988 {
entry:
  %cache.addr = alloca ptr, align 8
  %entry.addr = alloca ptr, align 8
  store ptr %cache, ptr %cache.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cache.addr, metadata !992, metadata !DIExpression()), !dbg !994
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !993, metadata !DIExpression()), !dbg !995
  %0 = load ptr, ptr %cache.addr, align 8, !dbg !996
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !997
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !998
  %e_key = getelementptr inbounds %struct.mb_cache_entry, ptr %2, i32 0, i32 3, !dbg !999
  %3 = load i32, ptr %e_key, align 4, !dbg !999
  %call = call ptr @__entry_find(ptr noundef %0, ptr noundef %1, i32 noundef %3) #20, !dbg !1000
  ret ptr %call, !dbg !1001
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @mb_cache_entry_get(ptr noundef %cache, i32 noundef %key, i64 noundef %value) #0 align 16 !dbg !1002 {
entry:
  %cache.addr = alloca ptr, align 8
  %key.addr = alloca i32, align 4
  %value.addr = alloca i64, align 8
  %node = alloca ptr, align 8
  %head = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp3 = alloca i32, align 4
  store ptr %cache, ptr %cache.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cache.addr, metadata !1006, metadata !DIExpression()), !dbg !1018
  store i32 %key, ptr %key.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1007, metadata !DIExpression()), !dbg !1019
  store i64 %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1008, metadata !DIExpression()), !dbg !1020
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #19, !dbg !1021
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1009, metadata !DIExpression()), !dbg !1022
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #19, !dbg !1023
  call void @llvm.dbg.declare(metadata ptr %head, metadata !1010, metadata !DIExpression()), !dbg !1024
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #19, !dbg !1025
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !1011, metadata !DIExpression()), !dbg !1026
  %0 = load ptr, ptr %cache.addr, align 8, !dbg !1027
  %1 = load i32, ptr %key.addr, align 4, !dbg !1028
  %call = call ptr @mb_cache_entry_head(ptr noundef %0, i32 noundef %1) #20, !dbg !1029
  store ptr %call, ptr %head, align 8, !dbg !1030
  %2 = load ptr, ptr %head, align 8, !dbg !1031
  call void @hlist_bl_lock(ptr noundef %2) #20, !dbg !1032
  %3 = load ptr, ptr %head, align 8, !dbg !1033
  %call2 = call ptr @hlist_bl_first(ptr noundef %3) #20, !dbg !1033
  store ptr %call2, ptr %node, align 8, !dbg !1033
  br label %for.cond, !dbg !1033

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %node, align 8, !dbg !1034
  %tobool = icmp ne ptr %4, null, !dbg !1034
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !1034

land.rhs:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #19, !dbg !1035
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1012, metadata !DIExpression()), !dbg !1035
  %5 = load ptr, ptr %node, align 8, !dbg !1035
  store ptr %5, ptr %__mptr, align 8, !dbg !1035
  %6 = load ptr, ptr %__mptr, align 8, !dbg !1035
  %add.ptr = getelementptr i8, ptr %6, i64 -16, !dbg !1035
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1035
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #19, !dbg !1036
  %7 = load ptr, ptr %tmp, align 8, !dbg !1035
  store ptr %7, ptr %entry1, align 8, !dbg !1036
  store i32 1, ptr %tmp3, align 4, !dbg !1036
  %8 = load i32, ptr %tmp3, align 4, !dbg !1036
  %tobool4 = icmp ne i32 %8, 0, !dbg !1034
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %9 = phi i1 [ false, %for.cond ], [ %tobool4, %land.rhs ], !dbg !1037
  br i1 %9, label %for.body, label %for.end, !dbg !1033

for.body:                                         ; preds = %land.end
  %10 = load ptr, ptr %entry1, align 8, !dbg !1038
  %e_key = getelementptr inbounds %struct.mb_cache_entry, ptr %10, i32 0, i32 3, !dbg !1041
  %11 = load i32, ptr %e_key, align 4, !dbg !1041
  %12 = load i32, ptr %key.addr, align 4, !dbg !1042
  %cmp = icmp eq i32 %11, %12, !dbg !1043
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1044

land.lhs.true:                                    ; preds = %for.body
  %13 = load ptr, ptr %entry1, align 8, !dbg !1045
  %e_value = getelementptr inbounds %struct.mb_cache_entry, ptr %13, i32 0, i32 5, !dbg !1046
  %14 = load i64, ptr %e_value, align 8, !dbg !1046
  %15 = load i64, ptr %value.addr, align 8, !dbg !1047
  %cmp5 = icmp eq i64 %14, %15, !dbg !1048
  br i1 %cmp5, label %land.lhs.true6, label %if.end, !dbg !1049

land.lhs.true6:                                   ; preds = %land.lhs.true
  %16 = load ptr, ptr %entry1, align 8, !dbg !1050
  %e_refcnt = getelementptr inbounds %struct.mb_cache_entry, ptr %16, i32 0, i32 2, !dbg !1051
  %call7 = call zeroext i1 @atomic_inc_not_zero(ptr noundef %e_refcnt) #20, !dbg !1052
  br i1 %call7, label %if.then, label %if.end, !dbg !1053

if.then:                                          ; preds = %land.lhs.true6
  br label %out, !dbg !1054

if.end:                                           ; preds = %land.lhs.true6, %land.lhs.true, %for.body
  br label %for.inc, !dbg !1055

for.inc:                                          ; preds = %if.end
  %17 = load ptr, ptr %node, align 8, !dbg !1034
  %next = getelementptr inbounds %struct.hlist_bl_node, ptr %17, i32 0, i32 0, !dbg !1034
  %18 = load ptr, ptr %next, align 8, !dbg !1034
  store ptr %18, ptr %node, align 8, !dbg !1034
  br label %for.cond, !dbg !1034, !llvm.loop !1056

for.end:                                          ; preds = %land.end
  store ptr null, ptr %entry1, align 8, !dbg !1058
  br label %out, !dbg !1059

out:                                              ; preds = %for.end, %if.then
  call void @llvm.dbg.label(metadata !1017), !dbg !1060
  %19 = load ptr, ptr %head, align 8, !dbg !1061
  call void @hlist_bl_unlock(ptr noundef %19) #20, !dbg !1062
  %20 = load ptr, ptr %entry1, align 8, !dbg !1063
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #19, !dbg !1064
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #19, !dbg !1064
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #19, !dbg !1064
  ret ptr %20, !dbg !1065
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_inc_not_zero(ptr noundef %v) #5 align 16 !dbg !1066 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1070, metadata !DIExpression()), !dbg !1071
  br label %do.body, !dbg !1072

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1073

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1075
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #20, !dbg !1076
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1077
  %call = call zeroext i1 @raw_atomic_inc_not_zero(ptr noundef %1) #20, !dbg !1078
  ret i1 %call, !dbg !1079
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @mb_cache_entry_delete_or_get(ptr noundef %cache, i32 noundef %key, i64 noundef %value) #0 align 16 !dbg !1080 {
entry:
  %retval = alloca ptr, align 8
  %cache.addr = alloca ptr, align 8
  %key.addr = alloca i32, align 4
  %value.addr = alloca i64, align 8
  %entry1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cache, ptr %cache.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cache.addr, metadata !1082, metadata !DIExpression()), !dbg !1086
  store i32 %key, ptr %key.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1083, metadata !DIExpression()), !dbg !1087
  store i64 %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1084, metadata !DIExpression()), !dbg !1088
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #19, !dbg !1089
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !1085, metadata !DIExpression()), !dbg !1090
  %0 = load ptr, ptr %cache.addr, align 8, !dbg !1091
  %1 = load i32, ptr %key.addr, align 4, !dbg !1092
  %2 = load i64, ptr %value.addr, align 8, !dbg !1093
  %call = call ptr @mb_cache_entry_get(ptr noundef %0, i32 noundef %1, i64 noundef %2) #20, !dbg !1094
  store ptr %call, ptr %entry1, align 8, !dbg !1095
  %3 = load ptr, ptr %entry1, align 8, !dbg !1096
  %tobool = icmp ne ptr %3, null, !dbg !1096
  br i1 %tobool, label %if.end, label %if.then, !dbg !1098

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1099
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1099

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %entry1, align 8, !dbg !1100
  %e_refcnt = getelementptr inbounds %struct.mb_cache_entry, ptr %4, i32 0, i32 2, !dbg !1102
  %call2 = call i32 @atomic_cmpxchg(ptr noundef %e_refcnt, i32 noundef 2, i32 noundef 0) #20, !dbg !1103
  %cmp = icmp ne i32 %call2, 2, !dbg !1104
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !1105

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %entry1, align 8, !dbg !1106
  store ptr %5, ptr %retval, align 8, !dbg !1107
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1107

if.end4:                                          ; preds = %if.end
  %6 = load ptr, ptr %cache.addr, align 8, !dbg !1108
  %c_list_lock = getelementptr inbounds %struct.mb_cache, ptr %6, i32 0, i32 3, !dbg !1109
  call void @spin_lock(ptr noundef %c_list_lock) #20, !dbg !1110
  %7 = load ptr, ptr %entry1, align 8, !dbg !1111
  %e_list = getelementptr inbounds %struct.mb_cache_entry, ptr %7, i32 0, i32 0, !dbg !1113
  %call5 = call i32 @list_empty(ptr noundef %e_list) #20, !dbg !1114
  %tobool6 = icmp ne i32 %call5, 0, !dbg !1114
  br i1 %tobool6, label %if.end9, label %if.then7, !dbg !1115

if.then7:                                         ; preds = %if.end4
  %8 = load ptr, ptr %entry1, align 8, !dbg !1116
  %e_list8 = getelementptr inbounds %struct.mb_cache_entry, ptr %8, i32 0, i32 0, !dbg !1117
  call void @list_del_init(ptr noundef %e_list8) #20, !dbg !1118
  br label %if.end9, !dbg !1118

if.end9:                                          ; preds = %if.then7, %if.end4
  %9 = load ptr, ptr %cache.addr, align 8, !dbg !1119
  %c_entry_count = getelementptr inbounds %struct.mb_cache, ptr %9, i32 0, i32 5, !dbg !1120
  %10 = load i64, ptr %c_entry_count, align 8, !dbg !1121
  %dec = add i64 %10, -1, !dbg !1121
  store i64 %dec, ptr %c_entry_count, align 8, !dbg !1121
  %11 = load ptr, ptr %cache.addr, align 8, !dbg !1122
  %c_list_lock10 = getelementptr inbounds %struct.mb_cache, ptr %11, i32 0, i32 3, !dbg !1123
  call void @spin_unlock(ptr noundef %c_list_lock10) #20, !dbg !1124
  %12 = load ptr, ptr %cache.addr, align 8, !dbg !1125
  %13 = load ptr, ptr %entry1, align 8, !dbg !1126
  call void @__mb_cache_entry_free(ptr noundef %12, ptr noundef %13) #20, !dbg !1127
  store ptr null, ptr %retval, align 8, !dbg !1128
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1128

cleanup:                                          ; preds = %if.end9, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #19, !dbg !1129
  %14 = load ptr, ptr %retval, align 8, !dbg !1129
  ret ptr %14, !dbg !1129
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_cmpxchg(ptr noundef %v, i32 noundef %old, i32 noundef %new) #5 align 16 !dbg !1130 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca i32, align 4
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1134, metadata !DIExpression()), !dbg !1137
  store i32 %old, ptr %old.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !1135, metadata !DIExpression()), !dbg !1138
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1136, metadata !DIExpression()), !dbg !1139
  br label %do.body, !dbg !1140

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1141

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1143
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #20, !dbg !1144
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1145
  %2 = load i32, ptr %old.addr, align 4, !dbg !1146
  %3 = load i32, ptr %new.addr, align 4, !dbg !1147
  %call = call i32 @raw_atomic_cmpxchg(ptr noundef %1, i32 noundef %2, i32 noundef %3) #20, !dbg !1148
  ret i32 %call, !dbg !1149
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #3 align 16 !dbg !1150 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !1156, metadata !DIExpression()), !dbg !1157
  br label %do.body, !dbg !1158

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1160

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !1158
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !1158
  %1 = load volatile ptr, ptr %next, align 8, !dbg !1158
  store ptr %1, ptr %tmp, align 8, !dbg !1160
  %2 = load ptr, ptr %tmp, align 8, !dbg !1158
  %3 = load ptr, ptr %head.addr, align 8, !dbg !1162
  %cmp = icmp eq ptr %2, %3, !dbg !1163
  %conv = zext i1 %cmp to i32, !dbg !1163
  ret i32 %conv, !dbg !1164
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del_init(ptr noundef %entry1) #3 align 16 !dbg !1165 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !1167, metadata !DIExpression()), !dbg !1168
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !1169
  call void @__list_del_entry(ptr noundef %0) #20, !dbg !1170
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !1171
  call void @INIT_LIST_HEAD(ptr noundef %1) #20, !dbg !1172
  ret void, !dbg !1173
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mb_cache_entry_touch(ptr noundef %cache, ptr noundef %entry1) #0 align 16 !dbg !1174 {
entry:
  %cache.addr = alloca ptr, align 8
  %entry.addr = alloca ptr, align 8
  store ptr %cache, ptr %cache.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cache.addr, metadata !1176, metadata !DIExpression()), !dbg !1178
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !1177, metadata !DIExpression()), !dbg !1179
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !1180
  %e_flags = getelementptr inbounds %struct.mb_cache_entry, ptr %0, i32 0, i32 4, !dbg !1181
  call void @set_bit(i64 noundef 0, ptr noundef %e_flags) #20, !dbg !1182
  ret void, !dbg !1183
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @mb_cache_create(i32 noundef %bucket_bits) #0 align 16 !dbg !234 {
entry:
  %retval = alloca ptr, align 8
  %bucket_bits.addr = alloca i32, align 4
  %cache = alloca ptr, align 8
  %bucket_count = alloca i64, align 8
  %i = alloca i64, align 8
  %.compoundliteral = alloca %struct.spinlock, align 4
  %.compoundliteral21 = alloca %struct.atomic64_t, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %bucket_bits, ptr %bucket_bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bucket_bits.addr, metadata !238, metadata !DIExpression()), !dbg !1184
  call void @llvm.lifetime.start.p0(i64 8, ptr %cache) #19, !dbg !1185
  call void @llvm.dbg.declare(metadata ptr %cache, metadata !239, metadata !DIExpression()), !dbg !1186
  call void @llvm.lifetime.start.p0(i64 8, ptr %bucket_count) #19, !dbg !1187
  call void @llvm.dbg.declare(metadata ptr %bucket_count, metadata !240, metadata !DIExpression()), !dbg !1188
  %0 = load i32, ptr %bucket_bits.addr, align 4, !dbg !1189
  %sh_prom = zext i32 %0 to i64, !dbg !1190
  %shl = shl i64 1, %sh_prom, !dbg !1190
  store i64 %shl, ptr %bucket_count, align 8, !dbg !1188
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #19, !dbg !1191
  call void @llvm.dbg.declare(metadata ptr %i, metadata !241, metadata !DIExpression()), !dbg !1192
  %call = call noalias ptr @kzalloc(i64 noundef 144, i32 noundef 3264) #21, !dbg !1193
  store ptr %call, ptr %cache, align 8, !dbg !1194
  %1 = load ptr, ptr %cache, align 8, !dbg !1195
  %tobool = icmp ne ptr %1, null, !dbg !1195
  br i1 %tobool, label %if.end, label %if.then, !dbg !1197

if.then:                                          ; preds = %entry
  br label %err_out, !dbg !1198

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %bucket_bits.addr, align 4, !dbg !1199
  %3 = load ptr, ptr %cache, align 8, !dbg !1200
  %c_bucket_bits = getelementptr inbounds %struct.mb_cache, ptr %3, i32 0, i32 1, !dbg !1201
  store i32 %2, ptr %c_bucket_bits, align 8, !dbg !1202
  %4 = load i64, ptr %bucket_count, align 8, !dbg !1203
  %shl1 = shl i64 %4, 4, !dbg !1204
  %5 = load ptr, ptr %cache, align 8, !dbg !1205
  %c_max_entries = getelementptr inbounds %struct.mb_cache, ptr %5, i32 0, i32 2, !dbg !1206
  store i64 %shl1, ptr %c_max_entries, align 8, !dbg !1207
  %6 = load ptr, ptr %cache, align 8, !dbg !1208
  %c_list = getelementptr inbounds %struct.mb_cache, ptr %6, i32 0, i32 4, !dbg !1209
  call void @INIT_LIST_HEAD(ptr noundef %c_list) #20, !dbg !1210
  br label %do.body, !dbg !1211

do.body:                                          ; preds = %if.end
  %7 = load ptr, ptr %cache, align 8, !dbg !1212
  %c_list_lock = getelementptr inbounds %struct.mb_cache, ptr %7, i32 0, i32 3, !dbg !1212
  %call2 = call ptr @spinlock_check(ptr noundef %c_list_lock) #20, !dbg !1212
  %8 = load ptr, ptr %cache, align 8, !dbg !1212
  %c_list_lock3 = getelementptr inbounds %struct.mb_cache, ptr %8, i32 0, i32 3, !dbg !1212
  %9 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !1212
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %9, i32 0, i32 0, !dbg !1212
  %10 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !1212
  %counter = getelementptr inbounds %struct.atomic_t, ptr %10, i32 0, i32 0, !dbg !1212
  store i32 0, ptr %counter, align 4, !dbg !1212
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %c_list_lock3, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !1212
  br label %do.cond, !dbg !1212

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1212

do.end:                                           ; preds = %do.cond
  %11 = load i64, ptr %bucket_count, align 8, !dbg !1214
  %call4 = call noalias ptr @kmalloc_array(i64 noundef %11, i64 noundef 8, i32 noundef 3264) #22, !dbg !1215
  %12 = load ptr, ptr %cache, align 8, !dbg !1216
  %c_hash = getelementptr inbounds %struct.mb_cache, ptr %12, i32 0, i32 0, !dbg !1217
  store ptr %call4, ptr %c_hash, align 8, !dbg !1218
  %13 = load ptr, ptr %cache, align 8, !dbg !1219
  %c_hash5 = getelementptr inbounds %struct.mb_cache, ptr %13, i32 0, i32 0, !dbg !1221
  %14 = load ptr, ptr %c_hash5, align 8, !dbg !1221
  %tobool6 = icmp ne ptr %14, null, !dbg !1219
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !1222

if.then7:                                         ; preds = %do.end
  %15 = load ptr, ptr %cache, align 8, !dbg !1223
  call void @kfree(ptr noundef %15) #20, !dbg !1225
  br label %err_out, !dbg !1226

if.end8:                                          ; preds = %do.end
  store i64 0, ptr %i, align 8, !dbg !1227
  br label %for.cond, !dbg !1229

for.cond:                                         ; preds = %for.inc, %if.end8
  %16 = load i64, ptr %i, align 8, !dbg !1230
  %17 = load i64, ptr %bucket_count, align 8, !dbg !1232
  %cmp = icmp ult i64 %16, %17, !dbg !1233
  br i1 %cmp, label %for.body, label %for.end, !dbg !1234

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %cache, align 8, !dbg !1235
  %c_hash9 = getelementptr inbounds %struct.mb_cache, ptr %18, i32 0, i32 0, !dbg !1235
  %19 = load ptr, ptr %c_hash9, align 8, !dbg !1235
  %20 = load i64, ptr %i, align 8, !dbg !1235
  %arrayidx = getelementptr %struct.hlist_bl_head, ptr %19, i64 %20, !dbg !1235
  %first = getelementptr inbounds %struct.hlist_bl_head, ptr %arrayidx, i32 0, i32 0, !dbg !1235
  store ptr null, ptr %first, align 8, !dbg !1235
  br label %for.inc, !dbg !1235

for.inc:                                          ; preds = %for.body
  %21 = load i64, ptr %i, align 8, !dbg !1236
  %inc = add i64 %21, 1, !dbg !1236
  store i64 %inc, ptr %i, align 8, !dbg !1236
  br label %for.cond, !dbg !1237, !llvm.loop !1238

for.end:                                          ; preds = %for.cond
  %22 = load ptr, ptr %cache, align 8, !dbg !1240
  %c_shrink = getelementptr inbounds %struct.mb_cache, ptr %22, i32 0, i32 6, !dbg !1241
  %count_objects = getelementptr inbounds %struct.shrinker, ptr %c_shrink, i32 0, i32 0, !dbg !1242
  store ptr @mb_cache_count, ptr %count_objects, align 8, !dbg !1243
  %23 = load ptr, ptr %cache, align 8, !dbg !1244
  %c_shrink10 = getelementptr inbounds %struct.mb_cache, ptr %23, i32 0, i32 6, !dbg !1245
  %scan_objects = getelementptr inbounds %struct.shrinker, ptr %c_shrink10, i32 0, i32 1, !dbg !1246
  store ptr @mb_cache_scan, ptr %scan_objects, align 8, !dbg !1247
  %24 = load ptr, ptr %cache, align 8, !dbg !1248
  %c_shrink11 = getelementptr inbounds %struct.mb_cache, ptr %24, i32 0, i32 6, !dbg !1249
  %seeks = getelementptr inbounds %struct.shrinker, ptr %c_shrink11, i32 0, i32 3, !dbg !1250
  store i32 2, ptr %seeks, align 8, !dbg !1251
  %25 = load ptr, ptr %cache, align 8, !dbg !1252
  %c_shrink12 = getelementptr inbounds %struct.mb_cache, ptr %25, i32 0, i32 6, !dbg !1254
  %call13 = call i32 (ptr, ptr, ...) @register_shrinker(ptr noundef %c_shrink12, ptr noundef @.str) #20, !dbg !1255
  %tobool14 = icmp ne i32 %call13, 0, !dbg !1255
  br i1 %tobool14, label %if.then15, label %if.end17, !dbg !1256

if.then15:                                        ; preds = %for.end
  %26 = load ptr, ptr %cache, align 8, !dbg !1257
  %c_hash16 = getelementptr inbounds %struct.mb_cache, ptr %26, i32 0, i32 0, !dbg !1259
  %27 = load ptr, ptr %c_hash16, align 8, !dbg !1259
  call void @kfree(ptr noundef %27) #20, !dbg !1260
  %28 = load ptr, ptr %cache, align 8, !dbg !1261
  call void @kfree(ptr noundef %28) #20, !dbg !1262
  br label %err_out, !dbg !1263

if.end17:                                         ; preds = %for.end
  br label %do.body18, !dbg !1264

do.body18:                                        ; preds = %if.end17
  br label %do.body19, !dbg !1265

do.body19:                                        ; preds = %do.body18
  %29 = load ptr, ptr %cache, align 8, !dbg !1267
  %c_shrink_work = getelementptr inbounds %struct.mb_cache, ptr %29, i32 0, i32 7, !dbg !1267
  call void @__init_work(ptr noundef %c_shrink_work, i32 noundef 0) #20, !dbg !1267
  %30 = load ptr, ptr %cache, align 8, !dbg !1267
  %c_shrink_work20 = getelementptr inbounds %struct.mb_cache, ptr %30, i32 0, i32 7, !dbg !1267
  %data = getelementptr inbounds %struct.work_struct, ptr %c_shrink_work20, i32 0, i32 0, !dbg !1267
  %counter22 = getelementptr inbounds %struct.atomic64_t, ptr %.compoundliteral21, i32 0, i32 0, !dbg !1267
  store i64 68719476704, ptr %counter22, align 8, !dbg !1267
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %data, ptr align 8 %.compoundliteral21, i64 8, i1 false), !dbg !1267
  %31 = load ptr, ptr %cache, align 8, !dbg !1267
  %c_shrink_work23 = getelementptr inbounds %struct.mb_cache, ptr %31, i32 0, i32 7, !dbg !1267
  %entry24 = getelementptr inbounds %struct.work_struct, ptr %c_shrink_work23, i32 0, i32 1, !dbg !1267
  call void @INIT_LIST_HEAD(ptr noundef %entry24) #20, !dbg !1267
  %32 = load ptr, ptr %cache, align 8, !dbg !1267
  %c_shrink_work25 = getelementptr inbounds %struct.mb_cache, ptr %32, i32 0, i32 7, !dbg !1267
  %func = getelementptr inbounds %struct.work_struct, ptr %c_shrink_work25, i32 0, i32 2, !dbg !1267
  store ptr @mb_cache_shrink_worker, ptr %func, align 8, !dbg !1267
  br label %do.cond26, !dbg !1267

do.cond26:                                        ; preds = %do.body19
  br label %do.end27, !dbg !1267

do.end27:                                         ; preds = %do.cond26
  br label %do.cond28, !dbg !1265

do.cond28:                                        ; preds = %do.end27
  br label %do.end29, !dbg !1265

do.end29:                                         ; preds = %do.cond28
  %33 = load ptr, ptr %cache, align 8, !dbg !1269
  store ptr %33, ptr %retval, align 8, !dbg !1270
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1270

err_out:                                          ; preds = %if.then15, %if.then7, %if.then
  call void @llvm.dbg.label(metadata !242), !dbg !1271
  store ptr null, ptr %retval, align 8, !dbg !1272
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1272

cleanup:                                          ; preds = %err_out, %do.end29
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #19, !dbg !1273
  call void @llvm.lifetime.end.p0(i64 8, ptr %bucket_count) #19, !dbg !1273
  call void @llvm.lifetime.end.p0(i64 8, ptr %cache) #19, !dbg !1273
  %34 = load ptr, ptr %retval, align 8, !dbg !1273
  ret ptr %34, !dbg !1273
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !1274 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1282, metadata !DIExpression()), !dbg !1284
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1283, metadata !DIExpression()), !dbg !1285
  %0 = load i64, ptr %size.addr, align 8, !dbg !1286
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1287
  %or = or i32 %1, 256, !dbg !1288
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #21, !dbg !1289
  ret ptr %call, !dbg !1290
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #5 align 16 !dbg !1291 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1297, metadata !DIExpression()), !dbg !1298
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1299
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !1300
  ret ptr %1, !dbg !1301
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !1302 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1306, metadata !DIExpression()), !dbg !1310
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1307, metadata !DIExpression()), !dbg !1311
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1308, metadata !DIExpression()), !dbg !1312
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #19, !dbg !1313
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !1309, metadata !DIExpression()), !dbg !1314
  %0 = load i64, ptr %n.addr, align 8, !dbg !1315
  %1 = load i64, ptr %size.addr, align 8, !dbg !1315
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !1315
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !1315
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !1315
  store i64 %4, ptr %bytes, align 8, !dbg !1315
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #20, !dbg !1315
  %lnot = xor i1 %call, true, !dbg !1315
  %lnot1 = xor i1 %lnot, true, !dbg !1315
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1315
  %conv = sext i32 %lnot.ext to i64, !dbg !1315
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1315
  %tobool = icmp ne i64 %expval, 0, !dbg !1315
  br i1 %tobool, label %if.then, label %if.end, !dbg !1317

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1318
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1318

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !1319
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !1321
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !1322

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !1323
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !1324
  br i1 %8, label %if.then2, label %if.end4, !dbg !1325

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !1326
  %10 = load i32, ptr %flags.addr, align 4, !dbg !1327
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #21, !dbg !1328
  store ptr %call3, ptr %retval, align 8, !dbg !1329
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1329

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !1330
  %12 = load i32, ptr %flags.addr, align 4, !dbg !1331
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #21, !dbg !1332
  store ptr %call5, ptr %retval, align 8, !dbg !1333
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1333

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #19, !dbg !1334
  %13 = load ptr, ptr %retval, align 8, !dbg !1334
  ret ptr %13, !dbg !1334
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1335 dso_local void @kfree(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @mb_cache_count(ptr noundef %shrink, ptr noundef %sc) #0 align 16 !dbg !1340 {
entry:
  %shrink.addr = alloca ptr, align 8
  %sc.addr = alloca ptr, align 8
  %cache = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %shrink, ptr %shrink.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %shrink.addr, metadata !1342, metadata !DIExpression()), !dbg !1347
  store ptr %sc, ptr %sc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sc.addr, metadata !1343, metadata !DIExpression()), !dbg !1348
  call void @llvm.lifetime.start.p0(i64 8, ptr %cache) #19, !dbg !1349
  call void @llvm.dbg.declare(metadata ptr %cache, metadata !1344, metadata !DIExpression()), !dbg !1350
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #19, !dbg !1351
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1345, metadata !DIExpression()), !dbg !1351
  %0 = load ptr, ptr %shrink.addr, align 8, !dbg !1351
  store ptr %0, ptr %__mptr, align 8, !dbg !1351
  %1 = load ptr, ptr %__mptr, align 8, !dbg !1351
  %add.ptr = getelementptr i8, ptr %1, i64 -56, !dbg !1351
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1351
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #19, !dbg !1352
  %2 = load ptr, ptr %tmp, align 8, !dbg !1351
  store ptr %2, ptr %cache, align 8, !dbg !1350
  %3 = load ptr, ptr %cache, align 8, !dbg !1353
  %c_entry_count = getelementptr inbounds %struct.mb_cache, ptr %3, i32 0, i32 5, !dbg !1354
  %4 = load i64, ptr %c_entry_count, align 8, !dbg !1354
  call void @llvm.lifetime.end.p0(i64 8, ptr %cache) #19, !dbg !1355
  ret i64 %4, !dbg !1356
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @mb_cache_scan(ptr noundef %shrink, ptr noundef %sc) #0 align 16 !dbg !1357 {
entry:
  %shrink.addr = alloca ptr, align 8
  %sc.addr = alloca ptr, align 8
  %cache = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %shrink, ptr %shrink.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %shrink.addr, metadata !1359, metadata !DIExpression()), !dbg !1364
  store ptr %sc, ptr %sc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sc.addr, metadata !1360, metadata !DIExpression()), !dbg !1365
  call void @llvm.lifetime.start.p0(i64 8, ptr %cache) #19, !dbg !1366
  call void @llvm.dbg.declare(metadata ptr %cache, metadata !1361, metadata !DIExpression()), !dbg !1367
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #19, !dbg !1368
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1362, metadata !DIExpression()), !dbg !1368
  %0 = load ptr, ptr %shrink.addr, align 8, !dbg !1368
  store ptr %0, ptr %__mptr, align 8, !dbg !1368
  %1 = load ptr, ptr %__mptr, align 8, !dbg !1368
  %add.ptr = getelementptr i8, ptr %1, i64 -56, !dbg !1368
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1368
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #19, !dbg !1369
  %2 = load ptr, ptr %tmp, align 8, !dbg !1368
  store ptr %2, ptr %cache, align 8, !dbg !1367
  %3 = load ptr, ptr %cache, align 8, !dbg !1370
  %4 = load ptr, ptr %sc.addr, align 8, !dbg !1371
  %nr_to_scan = getelementptr inbounds %struct.shrink_control, ptr %4, i32 0, i32 2, !dbg !1372
  %5 = load i64, ptr %nr_to_scan, align 8, !dbg !1372
  %call = call i64 @mb_cache_shrink(ptr noundef %3, i64 noundef %5) #20, !dbg !1373
  call void @llvm.lifetime.end.p0(i64 8, ptr %cache) #19, !dbg !1374
  ret i64 %call, !dbg !1375
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1376 dso_local i32 @register_shrinker(ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__init_work(ptr noundef %work, i32 noundef %onstack) #3 align 16 !dbg !1380 {
entry:
  %work.addr = alloca ptr, align 8
  %onstack.addr = alloca i32, align 4
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !1384, metadata !DIExpression()), !dbg !1386
  store i32 %onstack, ptr %onstack.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %onstack.addr, metadata !1385, metadata !DIExpression()), !dbg !1387
  ret void, !dbg !1388
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mb_cache_shrink_worker(ptr noundef %work) #0 align 16 !dbg !1389 {
entry:
  %work.addr = alloca ptr, align 8
  %cache = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !1391, metadata !DIExpression()), !dbg !1395
  call void @llvm.lifetime.start.p0(i64 8, ptr %cache) #19, !dbg !1396
  call void @llvm.dbg.declare(metadata ptr %cache, metadata !1392, metadata !DIExpression()), !dbg !1397
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #19, !dbg !1398
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1393, metadata !DIExpression()), !dbg !1398
  %0 = load ptr, ptr %work.addr, align 8, !dbg !1398
  store ptr %0, ptr %__mptr, align 8, !dbg !1398
  %1 = load ptr, ptr %__mptr, align 8, !dbg !1398
  %add.ptr = getelementptr i8, ptr %1, i64 -112, !dbg !1398
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1398
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #19, !dbg !1399
  %2 = load ptr, ptr %tmp, align 8, !dbg !1398
  store ptr %2, ptr %cache, align 8, !dbg !1397
  %3 = load ptr, ptr %cache, align 8, !dbg !1400
  %4 = load ptr, ptr %cache, align 8, !dbg !1401
  %c_max_entries = getelementptr inbounds %struct.mb_cache, ptr %4, i32 0, i32 2, !dbg !1402
  %5 = load i64, ptr %c_max_entries, align 8, !dbg !1402
  %div = udiv i64 %5, 16, !dbg !1403
  %call = call i64 @mb_cache_shrink(ptr noundef %3, i64 noundef %div) #20, !dbg !1404
  call void @llvm.lifetime.end.p0(i64 8, ptr %cache) #19, !dbg !1405
  ret void, !dbg !1405
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mb_cache_destroy(ptr noundef %cache) #0 align 16 !dbg !1406 {
entry:
  %cache.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %next = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr3 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp27 = alloca i64, align 8
  %__mptr35 = alloca ptr, align 8
  %tmp38 = alloca ptr, align 8
  store ptr %cache, ptr %cache.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cache.addr, metadata !1410, metadata !DIExpression()), !dbg !1427
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #19, !dbg !1428
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !1411, metadata !DIExpression()), !dbg !1429
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #19, !dbg !1428
  call void @llvm.dbg.declare(metadata ptr %next, metadata !1412, metadata !DIExpression()), !dbg !1430
  %0 = load ptr, ptr %cache.addr, align 8, !dbg !1431
  %c_shrink = getelementptr inbounds %struct.mb_cache, ptr %0, i32 0, i32 6, !dbg !1432
  call void @unregister_shrinker(ptr noundef %c_shrink) #20, !dbg !1433
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #19, !dbg !1434
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1413, metadata !DIExpression()), !dbg !1434
  %1 = load ptr, ptr %cache.addr, align 8, !dbg !1434
  %c_list = getelementptr inbounds %struct.mb_cache, ptr %1, i32 0, i32 4, !dbg !1434
  %next2 = getelementptr inbounds %struct.list_head, ptr %c_list, i32 0, i32 0, !dbg !1434
  %2 = load ptr, ptr %next2, align 8, !dbg !1434
  store ptr %2, ptr %__mptr, align 8, !dbg !1434
  %3 = load ptr, ptr %__mptr, align 8, !dbg !1434
  %add.ptr = getelementptr i8, ptr %3, i64 0, !dbg !1434
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1434
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #19, !dbg !1435
  %4 = load ptr, ptr %tmp, align 8, !dbg !1434
  store ptr %4, ptr %entry1, align 8, !dbg !1435
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr3) #19, !dbg !1436
  call void @llvm.dbg.declare(metadata ptr %__mptr3, metadata !1416, metadata !DIExpression()), !dbg !1436
  %5 = load ptr, ptr %entry1, align 8, !dbg !1436
  %e_list = getelementptr inbounds %struct.mb_cache_entry, ptr %5, i32 0, i32 0, !dbg !1436
  %next4 = getelementptr inbounds %struct.list_head, ptr %e_list, i32 0, i32 0, !dbg !1436
  %6 = load ptr, ptr %next4, align 8, !dbg !1436
  store ptr %6, ptr %__mptr3, align 8, !dbg !1436
  %7 = load ptr, ptr %__mptr3, align 8, !dbg !1436
  %add.ptr6 = getelementptr i8, ptr %7, i64 0, !dbg !1436
  store ptr %add.ptr6, ptr %tmp5, align 8, !dbg !1436
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr3) #19, !dbg !1435
  %8 = load ptr, ptr %tmp5, align 8, !dbg !1436
  store ptr %8, ptr %next, align 8, !dbg !1435
  br label %for.cond, !dbg !1435

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load ptr, ptr %entry1, align 8, !dbg !1437
  %e_list7 = getelementptr inbounds %struct.mb_cache_entry, ptr %9, i32 0, i32 0, !dbg !1437
  %10 = load ptr, ptr %cache.addr, align 8, !dbg !1437
  %c_list8 = getelementptr inbounds %struct.mb_cache, ptr %10, i32 0, i32 4, !dbg !1437
  %cmp = icmp eq ptr %e_list7, %c_list8, !dbg !1437
  %lnot = xor i1 %cmp, true, !dbg !1437
  br i1 %lnot, label %for.body, label %for.end, !dbg !1435

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %entry1, align 8, !dbg !1438
  %e_list9 = getelementptr inbounds %struct.mb_cache_entry, ptr %11, i32 0, i32 0, !dbg !1439
  call void @list_del(ptr noundef %e_list9) #20, !dbg !1440
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !1441
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1418, metadata !DIExpression()), !dbg !1441
  %12 = load ptr, ptr %entry1, align 8, !dbg !1441
  %e_refcnt = getelementptr inbounds %struct.mb_cache_entry, ptr %12, i32 0, i32 2, !dbg !1441
  %call = call i32 @atomic_read(ptr noundef %e_refcnt) #20, !dbg !1441
  %cmp10 = icmp ne i32 %call, 1, !dbg !1441
  %lnot11 = xor i1 %cmp10, true, !dbg !1441
  %lnot12 = xor i1 %lnot11, true, !dbg !1441
  %lnot.ext = zext i1 %lnot12 to i32, !dbg !1441
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !1441
  %13 = load i32, ptr %__ret_warn_on, align 4, !dbg !1442
  %tobool = icmp ne i32 %13, 0, !dbg !1442
  %lnot13 = xor i1 %tobool, true, !dbg !1442
  %lnot15 = xor i1 %lnot13, true, !dbg !1442
  %lnot.ext16 = zext i1 %lnot15 to i32, !dbg !1442
  %conv = sext i32 %lnot.ext16 to i64, !dbg !1442
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1442
  %tobool17 = icmp ne i64 %expval, 0, !dbg !1442
  br i1 %tobool17, label %if.then, label %if.end, !dbg !1441

if.then:                                          ; preds = %for.body
  br label %do.body, !dbg !1442

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #19, !dbg !1443
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1422, metadata !DIExpression()), !dbg !1443
  store i32 2305, ptr %__flags, align 4, !dbg !1443
  br label %do.body18, !dbg !1443

do.body18:                                        ; preds = %do.body
  br label %do.cond, !dbg !1444

do.cond:                                          ; preds = %do.body18
  br label %do.end, !dbg !1444

do.end:                                           ; preds = %do.cond
  br label %do.body19, !dbg !1443

do.body19:                                        ; preds = %do.end
  %14 = load i32, ptr %__flags, align 4, !dbg !1446
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 417, i32 %14, i64 12) #19, !dbg !1446, !srcloc !1448
  br label %do.cond20, !dbg !1446

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !1446

do.end21:                                         ; preds = %do.cond20
  br label %do.body22, !dbg !1443

do.body22:                                        ; preds = %do.end21
  br label %do.cond23, !dbg !1449

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !1449

do.end24:                                         ; preds = %do.cond23
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #19, !dbg !1442
  br label %do.cond25, !dbg !1443

do.cond25:                                        ; preds = %do.end24
  br label %do.end26, !dbg !1443

do.end26:                                         ; preds = %do.cond25
  br label %if.end, !dbg !1443

if.end:                                           ; preds = %do.end26, %for.body
  %15 = load i32, ptr %__ret_warn_on, align 4, !dbg !1441
  %tobool28 = icmp ne i32 %15, 0, !dbg !1441
  %lnot29 = xor i1 %tobool28, true, !dbg !1441
  %lnot31 = xor i1 %lnot29, true, !dbg !1441
  %lnot.ext32 = zext i1 %lnot31 to i32, !dbg !1441
  %conv33 = sext i32 %lnot.ext32 to i64, !dbg !1441
  %expval34 = call i64 @llvm.expect.i64(i64 %conv33, i64 0), !dbg !1441
  store i64 %expval34, ptr %tmp27, align 8, !dbg !1442
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !1451
  %16 = load i64, ptr %tmp27, align 8, !dbg !1441
  %17 = load ptr, ptr %cache.addr, align 8, !dbg !1452
  %18 = load ptr, ptr %entry1, align 8, !dbg !1453
  call void @mb_cache_entry_put(ptr noundef %17, ptr noundef %18) #20, !dbg !1454
  br label %for.inc, !dbg !1455

for.inc:                                          ; preds = %if.end
  %19 = load ptr, ptr %next, align 8, !dbg !1437
  store ptr %19, ptr %entry1, align 8, !dbg !1437
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr35) #19, !dbg !1456
  call void @llvm.dbg.declare(metadata ptr %__mptr35, metadata !1425, metadata !DIExpression()), !dbg !1456
  %20 = load ptr, ptr %next, align 8, !dbg !1456
  %e_list36 = getelementptr inbounds %struct.mb_cache_entry, ptr %20, i32 0, i32 0, !dbg !1456
  %next37 = getelementptr inbounds %struct.list_head, ptr %e_list36, i32 0, i32 0, !dbg !1456
  %21 = load ptr, ptr %next37, align 8, !dbg !1456
  store ptr %21, ptr %__mptr35, align 8, !dbg !1456
  %22 = load ptr, ptr %__mptr35, align 8, !dbg !1456
  %add.ptr39 = getelementptr i8, ptr %22, i64 0, !dbg !1456
  store ptr %add.ptr39, ptr %tmp38, align 8, !dbg !1456
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr35) #19, !dbg !1437
  %23 = load ptr, ptr %tmp38, align 8, !dbg !1456
  store ptr %23, ptr %next, align 8, !dbg !1437
  br label %for.cond, !dbg !1437, !llvm.loop !1457

for.end:                                          ; preds = %for.cond
  %24 = load ptr, ptr %cache.addr, align 8, !dbg !1459
  %c_hash = getelementptr inbounds %struct.mb_cache, ptr %24, i32 0, i32 0, !dbg !1460
  %25 = load ptr, ptr %c_hash, align 8, !dbg !1460
  call void @kfree(ptr noundef %25) #20, !dbg !1461
  %26 = load ptr, ptr %cache.addr, align 8, !dbg !1462
  call void @kfree(ptr noundef %26) #20, !dbg !1463
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #19, !dbg !1464
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #19, !dbg !1464
  ret void, !dbg !1464
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1465 dso_local void @unregister_shrinker(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #3 align 16 !dbg !1468 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !1470, metadata !DIExpression()), !dbg !1471
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !1472
  call void @__list_del_entry(ptr noundef %0) #20, !dbg !1473
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !1474
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !1475
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !1476
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !1477
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !1478
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !1479
  ret void, !dbg !1480
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @mbcache_exit() #10 section ".exit.text" align 16 !dbg !1481 {
entry:
  %0 = load ptr, ptr @mb_entry_cache, align 8, !dbg !1482
  call void @kmem_cache_destroy(ptr noundef %0) #20, !dbg !1483
  ret void, !dbg !1484
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1485 dso_local void @kmem_cache_destroy(ptr noundef) #4

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_mbcache__269_440_mbcache_init6() #10 section ".init.text" align 16 !dbg !1488 {
entry:
  %call = call i32 @mbcache_init() #23, !dbg !1489
  ret i32 %call, !dbg !1489
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @mbcache_init() #10 section ".init.text" align 16 !dbg !1490 {
entry:
  %retval = alloca i32, align 4
  %call = call ptr @kmem_cache_create(ptr noundef @.str.3, i32 noundef 56, i32 noundef 0, i32 noundef 1179648, ptr noundef null) #20, !dbg !1491
  store ptr %call, ptr @mb_entry_cache, align 8, !dbg !1492
  %0 = load ptr, ptr @mb_entry_cache, align 8, !dbg !1493
  %tobool = icmp ne ptr %0, null, !dbg !1493
  br i1 %tobool, label %if.end, label %if.then, !dbg !1495

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !1496
  br label %return, !dbg !1496

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1497
  br label %return, !dbg !1497

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, ptr %retval, align 4, !dbg !1498
  ret i32 %1, !dbg !1498
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @queue_work(ptr noundef %wq, ptr noundef %work) #3 align 16 !dbg !1499 {
entry:
  %wq.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  store ptr %wq, ptr %wq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq.addr, metadata !1505, metadata !DIExpression()), !dbg !1507
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !1506, metadata !DIExpression()), !dbg !1508
  %0 = load ptr, ptr %wq.addr, align 8, !dbg !1509
  %1 = load ptr, ptr %work.addr, align 8, !dbg !1510
  %call = call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %0, ptr noundef %1) #20, !dbg !1511
  ret i1 %call, !dbg !1512
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1513 dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !1516 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1524, metadata !DIExpression()), !dbg !1526
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1525, metadata !DIExpression()), !dbg !1527
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1528
  %1 = load i64, ptr %size.addr, align 8, !dbg !1529
  %conv = trunc i64 %1 to i32, !dbg !1529
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #20, !dbg !1530
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1531
  %3 = load i64, ptr %size.addr, align 8, !dbg !1531
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #20, !dbg !1531
  ret void, !dbg !1532
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #5 align 16 !dbg !1533 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1536, metadata !DIExpression()), !dbg !1538
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1537, metadata !DIExpression()), !dbg !1539
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1540
  %1 = load i32, ptr %i.addr, align 4, !dbg !1541
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #20, !dbg !1542
  ret void, !dbg !1543
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !1544 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1549, metadata !DIExpression()), !dbg !1551
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1550, metadata !DIExpression()), !dbg !1552
  ret i1 true, !dbg !1553
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !1554 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !1559, metadata !DIExpression()), !dbg !1562
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1560, metadata !DIExpression()), !dbg !1563
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1561, metadata !DIExpression()), !dbg !1564
  ret void, !dbg !1565
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #5 align 16 !dbg !1566 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1569, metadata !DIExpression()), !dbg !1571
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1570, metadata !DIExpression()), !dbg !1572
  br label %do.body, !dbg !1573

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !1574
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1574
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !1574
  store volatile i32 %0, ptr %counter, align 4, !dbg !1574
  br label %do.end, !dbg !1574

do.end:                                           ; preds = %do.body
  ret void, !dbg !1576
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !1577 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1580, metadata !DIExpression()), !dbg !1582
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1581, metadata !DIExpression()), !dbg !1583
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1584
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1586
  br i1 %1, label %if.then, label %if.else, !dbg !1587

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !1588
  %3 = load i64, ptr %nr.addr, align 8, !dbg !1588
  %shr = ashr i64 %3, 3, !dbg !1588
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !1588
  %4 = load i64, ptr %nr.addr, align 8, !dbg !1590
  %and = and i64 %4, 7, !dbg !1590
  %sh_prom = trunc i64 %and to i32, !dbg !1590
  %shl = shl i32 1, %sh_prom, !dbg !1590
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #19, !dbg !1591, !srcloc !1592
  br label %if.end, !dbg !1593

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !1594
  %6 = load i64, ptr %nr.addr, align 8, !dbg !1596
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #19, !dbg !1597, !srcloc !1598
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1599
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hash_32(i32 noundef %val, i32 noundef %bits) #3 align 16 !dbg !1600 {
entry:
  %val.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1605, metadata !DIExpression()), !dbg !1607
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !1606, metadata !DIExpression()), !dbg !1608
  %0 = load i32, ptr %val.addr, align 4, !dbg !1609
  %call = call i32 @__hash_32_generic(i32 noundef %0) #20, !dbg !1610
  %1 = load i32, ptr %bits.addr, align 4, !dbg !1611
  %sub = sub i32 32, %1, !dbg !1612
  %shr = lshr i32 %call, %sub, !dbg !1613
  ret i32 %shr, !dbg !1614
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__hash_32_generic(i32 noundef %val) #3 align 16 !dbg !1615 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1619, metadata !DIExpression()), !dbg !1620
  %0 = load i32, ptr %val.addr, align 4, !dbg !1621
  %mul = mul i32 %0, 1640531527, !dbg !1622
  ret i32 %mul, !dbg !1623
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bit_spin_lock(i32 noundef %bitnum, ptr noundef %addr) #3 align 16 !dbg !287 {
entry:
  %bitnum.addr = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  store i32 %bitnum, ptr %bitnum.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bitnum.addr, metadata !292, metadata !DIExpression()), !dbg !1624
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !293, metadata !DIExpression()), !dbg !1625
  br label %do.body, !dbg !1626

do.body:                                          ; preds = %entry
  call void @__preempt_count_add(i32 noundef 1) #20, !dbg !1627
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !dbg !1627, !srcloc !1629
  br label %do.end, !dbg !1627

do.end:                                           ; preds = %do.body
  br label %while.cond, !dbg !1630

while.cond:                                       ; preds = %do.end31, %do.end
  %0 = load i32, ptr %bitnum.addr, align 4, !dbg !1631
  %conv = sext i32 %0 to i64, !dbg !1631
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !1631
  %call = call zeroext i1 @test_and_set_bit_lock(i64 noundef %conv, ptr noundef %1) #20, !dbg !1631
  %lnot = xor i1 %call, true, !dbg !1631
  %lnot1 = xor i1 %lnot, true, !dbg !1631
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1631
  %conv2 = sext i32 %lnot.ext to i64, !dbg !1631
  %expval = call i64 @llvm.expect.i64(i64 %conv2, i64 0), !dbg !1631
  %tobool = icmp ne i64 %expval, 0, !dbg !1630
  br i1 %tobool, label %while.body, label %while.end, !dbg !1630

while.body:                                       ; preds = %while.cond
  br label %do.body3, !dbg !1632

do.body3:                                         ; preds = %while.body
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !dbg !1634, !srcloc !1636
  %call4 = call zeroext i1 @__preempt_count_dec_and_test() #20, !dbg !1637
  %lnot5 = xor i1 %call4, true, !dbg !1637
  %lnot7 = xor i1 %lnot5, true, !dbg !1637
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !1637
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !1637
  %expval10 = call i64 @llvm.expect.i64(i64 %conv9, i64 0), !dbg !1637
  %tobool11 = icmp ne i64 %expval10, 0, !dbg !1637
  br i1 %tobool11, label %if.then, label %if.end, !dbg !1634

if.then:                                          ; preds = %do.body3
  br label %do.body12, !dbg !1637

do.body12:                                        ; preds = %if.then
  %2 = call i64 @llvm.read_register.i64(metadata !323), !dbg !1639
  %3 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %2) #19, !dbg !1639, !srcloc !1641
  call void @llvm.write_register.i64(metadata !323, i64 %3), !dbg !1639
  br label %do.end13, !dbg !1639

do.end13:                                         ; preds = %do.body12
  br label %if.end, !dbg !1639

if.end:                                           ; preds = %do.end13, %do.body3
  br label %do.end14, !dbg !1634

do.end14:                                         ; preds = %if.end
  br label %do.body15, !dbg !1642

do.body15:                                        ; preds = %cond.end, %do.end14
  call void @cpu_relax() #20, !dbg !1643
  br label %do.cond, !dbg !1645

do.cond:                                          ; preds = %do.body15
  %4 = load i32, ptr %bitnum.addr, align 4, !dbg !1646
  %5 = call i1 @llvm.is.constant.i32(i32 %4), !dbg !1646
  br i1 %5, label %land.lhs.true, label %cond.false, !dbg !1646

land.lhs.true:                                    ; preds = %do.cond
  %6 = load ptr, ptr %addr.addr, align 8, !dbg !1646
  %7 = ptrtoint ptr %6 to i64, !dbg !1646
  %cmp = icmp ne i64 %7, 0, !dbg !1646
  %conv16 = zext i1 %cmp to i32, !dbg !1646
  %8 = call i1 @llvm.is.constant.i32(i32 %conv16), !dbg !1646
  br i1 %8, label %land.lhs.true17, label %cond.false, !dbg !1646

land.lhs.true17:                                  ; preds = %land.lhs.true
  %9 = load ptr, ptr %addr.addr, align 8, !dbg !1646
  %10 = ptrtoint ptr %9 to i64, !dbg !1646
  %cmp18 = icmp ne i64 %10, 0, !dbg !1646
  br i1 %cmp18, label %land.lhs.true20, label %cond.false, !dbg !1646

land.lhs.true20:                                  ; preds = %land.lhs.true17
  %11 = load ptr, ptr %addr.addr, align 8, !dbg !1646
  %12 = load i64, ptr %11, align 8, !dbg !1646
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !1646
  br i1 %13, label %cond.true, label %cond.false, !dbg !1646

cond.true:                                        ; preds = %land.lhs.true20
  %14 = load i32, ptr %bitnum.addr, align 4, !dbg !1646
  %conv21 = sext i32 %14 to i64, !dbg !1646
  %15 = load ptr, ptr %addr.addr, align 8, !dbg !1646
  %call22 = call zeroext i1 @const_test_bit(i64 noundef %conv21, ptr noundef %15) #20, !dbg !1646
  %conv23 = zext i1 %call22 to i32, !dbg !1646
  br label %cond.end, !dbg !1646

cond.false:                                       ; preds = %land.lhs.true20, %land.lhs.true17, %land.lhs.true, %do.cond
  %16 = load i32, ptr %bitnum.addr, align 4, !dbg !1646
  %conv24 = sext i32 %16 to i64, !dbg !1646
  %17 = load ptr, ptr %addr.addr, align 8, !dbg !1646
  %call25 = call zeroext i1 @_test_bit(i64 noundef %conv24, ptr noundef %17) #20, !dbg !1646
  %conv26 = zext i1 %call25 to i32, !dbg !1646
  br label %cond.end, !dbg !1646

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv23, %cond.true ], [ %conv26, %cond.false ], !dbg !1646
  %tobool27 = icmp ne i32 %cond, 0, !dbg !1645
  br i1 %tobool27, label %do.body15, label %do.end28, !dbg !1645, !llvm.loop !1647

do.end28:                                         ; preds = %cond.end
  br label %do.body29, !dbg !1649

do.body29:                                        ; preds = %do.end28
  call void @__preempt_count_add(i32 noundef 1) #20, !dbg !1650
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !dbg !1650, !srcloc !1652
  br label %do.end31, !dbg !1650

do.end31:                                         ; preds = %do.body29
  br label %while.cond, !dbg !1630, !llvm.loop !1653

while.end:                                        ; preds = %while.cond
  ret void, !dbg !1655
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #5 align 16 !dbg !1656 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1661, metadata !DIExpression()), !dbg !1669
  br label %do.body, !dbg !1670

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #19, !dbg !1671
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !1662, metadata !DIExpression()), !dbg !1671
  %0 = load i32, ptr %val.addr, align 4, !dbg !1671
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !1671
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !1671

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !1671
  %cmp = icmp eq i32 %2, 1, !dbg !1671
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !1671

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !1671
  %cmp1 = icmp eq i32 %3, -1, !dbg !1671
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !1671

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !1671
  br label %cond.end, !dbg !1671

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !1671

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !1671
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !1671
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !1672
  %cmp2 = icmp eq i32 %5, 1, !dbg !1672
  br i1 %cmp2, label %if.then, label %if.else, !dbg !1671

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1)) #19, !dbg !1673, !srcloc !1675
  br label %if.end8, !dbg !1672

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !1676
  %cmp3 = icmp eq i32 %6, -1, !dbg !1676
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !1672

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1)) #19, !dbg !1677, !srcloc !1679
  br label %if.end, !dbg !1676

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !1676

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #19, !dbg !1680
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !1665, metadata !DIExpression()), !dbg !1680
  %7 = load i32, ptr %val.addr, align 4, !dbg !1680
  %conv = sext i32 %7 to i64, !dbg !1680
  %and = and i64 %conv, 4294967295, !dbg !1680
  %conv7 = trunc i64 %and to i32, !dbg !1680
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !1680
  %8 = load i32, ptr %pto_val__, align 4, !dbg !1680
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1)) #19, !dbg !1680, !srcloc !1681
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #19, !dbg !1676
  br label %do.cond, !dbg !1680

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !1680

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #19, !dbg !1670
  br label %do.end10, !dbg !1671

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !1682
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @test_and_set_bit_lock(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !1683 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1688, metadata !DIExpression()), !dbg !1690
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1689, metadata !DIExpression()), !dbg !1691
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1692
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1693
  %div = sdiv i64 %1, 64, !dbg !1693
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !1694
  call void @instrument_atomic_read_write(ptr noundef %add.ptr, i64 noundef 8) #20, !dbg !1695
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1696
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1697
  %call = call zeroext i1 @arch_test_and_set_bit_lock(i64 noundef %2, ptr noundef %3) #20, !dbg !1698
  ret i1 %call, !dbg !1699
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #5 align 16 !dbg !1700 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #19, !dbg !1706
  call void @llvm.dbg.declare(metadata ptr %c, metadata !1704, metadata !DIExpression()), !dbg !1706
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1)) #19, !dbg !1706, !srcloc !1707
  %1 = icmp ult i8 %0, 2, !dbg !1706
  call void @llvm.assume(i1 %1), !dbg !1706
  store i8 %0, ptr %c, align 1, !dbg !1706
  %2 = load i8, ptr %c, align 1, !dbg !1706, !range !413, !noundef !245
  %tobool = trunc i8 %2 to i1, !dbg !1706
  %frombool = zext i1 %tobool to i8, !dbg !1706
  store i8 %frombool, ptr %tmp, align 1, !dbg !1706
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #19, !dbg !1708
  %3 = load i8, ptr %tmp, align 1, !dbg !1706, !range !413, !noundef !245
  %tobool1 = trunc i8 %3 to i1, !dbg !1706
  ret i1 %tobool1, !dbg !1709
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #12

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_relax() #5 align 16 !dbg !1710 {
entry:
  call void @rep_nop() #20, !dbg !1712
  ret void, !dbg !1713
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !1714 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1721, metadata !DIExpression()), !dbg !1726
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1722, metadata !DIExpression()), !dbg !1727
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #19, !dbg !1728
  call void @llvm.dbg.declare(metadata ptr %p, metadata !1723, metadata !DIExpression()), !dbg !1729
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1730
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1731
  %div = udiv i64 %1, 64, !dbg !1731
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !1732
  store ptr %add.ptr, ptr %p, align 8, !dbg !1729
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #19, !dbg !1733
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !1724, metadata !DIExpression()), !dbg !1734
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1735
  %rem = urem i64 %2, 64, !dbg !1735
  %shl = shl i64 1, %rem, !dbg !1735
  store i64 %shl, ptr %mask, align 8, !dbg !1734
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #19, !dbg !1736
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1725, metadata !DIExpression()), !dbg !1737
  %3 = load ptr, ptr %p, align 8, !dbg !1738
  %4 = load i64, ptr %3, align 8, !dbg !1739
  store i64 %4, ptr %val, align 8, !dbg !1737
  %5 = load i64, ptr %val, align 8, !dbg !1740
  %6 = load i64, ptr %mask, align 8, !dbg !1741
  %and = and i64 %5, %6, !dbg !1742
  %tobool = icmp ne i64 %and, 0, !dbg !1743
  %lnot = xor i1 %tobool, true, !dbg !1743
  %lnot1 = xor i1 %lnot, true, !dbg !1744
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #19, !dbg !1745
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #19, !dbg !1745
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #19, !dbg !1745
  ret i1 %lnot1, !dbg !1746
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !1747 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1750, metadata !DIExpression()), !dbg !1752
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1751, metadata !DIExpression()), !dbg !1753
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1754
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1755
  %div = udiv i64 %1, 64, !dbg !1755
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !1756
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #20, !dbg !1757
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1758
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1759
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #20, !dbg !1760
  ret i1 %call, !dbg !1761
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !1762 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1764, metadata !DIExpression()), !dbg !1766
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1765, metadata !DIExpression()), !dbg !1767
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1768
  %1 = load i64, ptr %size.addr, align 8, !dbg !1769
  %conv = trunc i64 %1 to i32, !dbg !1769
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #20, !dbg !1770
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1771
  %3 = load i64, ptr %size.addr, align 8, !dbg !1771
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #20, !dbg !1771
  ret void, !dbg !1772
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_and_set_bit_lock(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !1773 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1775, metadata !DIExpression()), !dbg !1777
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1776, metadata !DIExpression()), !dbg !1778
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1779
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !1780
  %call = call zeroext i1 @arch_test_and_set_bit(i64 noundef %0, ptr noundef %1) #20, !dbg !1781
  ret i1 %call, !dbg !1782
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_and_set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !1783 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1785, metadata !DIExpression()), !dbg !1789
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1786, metadata !DIExpression()), !dbg !1790
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #19, !dbg !1791
  call void @llvm.dbg.declare(metadata ptr %c, metadata !1787, metadata !DIExpression()), !dbg !1791
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1791
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1791
  %2 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1, ptr elementtype(i64) %0) #19, !dbg !1791, !srcloc !1792
  %3 = icmp ult i8 %2, 2, !dbg !1791
  call void @llvm.assume(i1 %3), !dbg !1791
  store i8 %2, ptr %c, align 1, !dbg !1791
  %4 = load i8, ptr %c, align 1, !dbg !1791, !range !413, !noundef !245
  %tobool = trunc i8 %4 to i1, !dbg !1791
  %frombool = zext i1 %tobool to i8, !dbg !1791
  store i8 %frombool, ptr %tmp, align 1, !dbg !1791
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #19, !dbg !1793
  %5 = load i8, ptr %tmp, align 1, !dbg !1791, !range !413, !noundef !245
  %tobool1 = trunc i8 %5 to i1, !dbg !1791
  ret i1 %tobool1, !dbg !1794
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rep_nop() #5 align 16 !dbg !1795 {
entry:
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !dbg !1796, !srcloc !1797
  ret void, !dbg !1798
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !1799 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1801, metadata !DIExpression()), !dbg !1803
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1802, metadata !DIExpression()), !dbg !1804
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1805
  %1 = load i64, ptr %size.addr, align 8, !dbg !1806
  %conv = trunc i64 %1 to i32, !dbg !1806
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #20, !dbg !1807
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1808
  %3 = load i64, ptr %size.addr, align 8, !dbg !1808
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #20, !dbg !1808
  ret void, !dbg !1809
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !1810 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1812, metadata !DIExpression()), !dbg !1814
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1813, metadata !DIExpression()), !dbg !1815
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1816
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1817
  br i1 %1, label %cond.true, label %cond.false, !dbg !1817

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1818
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1819
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #20, !dbg !1820
  %conv = zext i1 %call to i32, !dbg !1820
  br label %cond.end, !dbg !1817

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !1821
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !1822
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #20, !dbg !1823
  %conv2 = zext i1 %call1 to i32, !dbg !1823
  br label %cond.end, !dbg !1817

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !1817
  %tobool = icmp ne i32 %cond, 0, !dbg !1817
  ret i1 %tobool, !dbg !1824
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !1825 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1827, metadata !DIExpression()), !dbg !1829
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1828, metadata !DIExpression()), !dbg !1830
  ret i1 true, !dbg !1831
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !1832 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1836, metadata !DIExpression()), !dbg !1838
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1837, metadata !DIExpression()), !dbg !1839
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1840
  %and = and i64 %0, 63, !dbg !1841
  %shl = shl i64 1, %and, !dbg !1842
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !1843
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1844
  %shr = ashr i64 %2, 6, !dbg !1845
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !1843
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !1843
  %and1 = and i64 %shl, %3, !dbg !1846
  %cmp = icmp ne i64 %and1, 0, !dbg !1847
  ret i1 %cmp, !dbg !1848
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !1849 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1851, metadata !DIExpression()), !dbg !1854
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1852, metadata !DIExpression()), !dbg !1855
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #19, !dbg !1856
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !1853, metadata !DIExpression()), !dbg !1857
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1858
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1859
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #19, !dbg !1860, !srcloc !1861
  %3 = icmp ult i8 %2, 2, !dbg !1860
  call void @llvm.assume(i1 %3), !dbg !1860
  store i8 %2, ptr %oldbit, align 1, !dbg !1860
  %4 = load i8, ptr %oldbit, align 1, !dbg !1862, !range !413, !noundef !245
  %tobool = trunc i8 %4 to i1, !dbg !1862
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #19, !dbg !1863
  ret i1 %tobool, !dbg !1864
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__bit_spin_unlock(i32 noundef %bitnum, ptr noundef %addr) #3 align 16 !dbg !296 {
entry:
  %bitnum.addr = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  store i32 %bitnum, ptr %bitnum.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bitnum.addr, metadata !298, metadata !DIExpression()), !dbg !1865
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !299, metadata !DIExpression()), !dbg !1866
  %0 = load i32, ptr %bitnum.addr, align 4, !dbg !1867
  %conv = sext i32 %0 to i64, !dbg !1867
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !1868
  call void @__clear_bit_unlock(i64 noundef %conv, ptr noundef %1) #20, !dbg !1869
  br label %do.body, !dbg !1870

do.body:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !dbg !1871, !srcloc !1873
  %call = call zeroext i1 @__preempt_count_dec_and_test() #20, !dbg !1874
  %lnot = xor i1 %call, true, !dbg !1874
  %lnot1 = xor i1 %lnot, true, !dbg !1874
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1874
  %conv2 = sext i32 %lnot.ext to i64, !dbg !1874
  %expval = call i64 @llvm.expect.i64(i64 %conv2, i64 0), !dbg !1874
  %tobool = icmp ne i64 %expval, 0, !dbg !1874
  br i1 %tobool, label %if.then, label %if.end, !dbg !1871

if.then:                                          ; preds = %do.body
  br label %do.body3, !dbg !1874

do.body3:                                         ; preds = %if.then
  %2 = call i64 @llvm.read_register.i64(metadata !323), !dbg !1876
  %3 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %2) #19, !dbg !1876, !srcloc !1878
  call void @llvm.write_register.i64(metadata !323, i64 %3), !dbg !1876
  br label %do.end, !dbg !1876

do.end:                                           ; preds = %do.body3
  br label %if.end, !dbg !1876

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4, !dbg !1871

do.end4:                                          ; preds = %if.end
  ret void, !dbg !1879
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__clear_bit_unlock(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !1880 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1882, metadata !DIExpression()), !dbg !1884
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1883, metadata !DIExpression()), !dbg !1885
  br label %do.body, !dbg !1886

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1887

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1889
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1890
  %div = sdiv i64 %1, 64, !dbg !1890
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !1891
  call void @instrument_write(ptr noundef %add.ptr, i64 noundef 8) #20, !dbg !1892
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1893
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1894
  call void @arch___clear_bit_unlock(i64 noundef %2, ptr noundef %3) #20, !dbg !1895
  ret void, !dbg !1896
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !1897 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1899, metadata !DIExpression()), !dbg !1901
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1900, metadata !DIExpression()), !dbg !1902
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1903
  %1 = load i64, ptr %size.addr, align 8, !dbg !1904
  %conv = trunc i64 %1 to i32, !dbg !1904
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #20, !dbg !1905
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1906
  %3 = load i64, ptr %size.addr, align 8, !dbg !1906
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 1) #20, !dbg !1906
  ret void, !dbg !1907
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch___clear_bit_unlock(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !1908 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1910, metadata !DIExpression()), !dbg !1912
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1911, metadata !DIExpression()), !dbg !1913
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1914
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !1915
  call void @arch___clear_bit(i64 noundef %0, ptr noundef %1) #20, !dbg !1916
  ret void, !dbg !1917
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch___clear_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !1918 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1922, metadata !DIExpression()), !dbg !1924
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1923, metadata !DIExpression()), !dbg !1925
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1926
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1927
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #19, !dbg !1928, !srcloc !1929
  ret void, !dbg !1930
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hlist_bl_set_first(ptr noundef %h, ptr noundef %n) #3 align 16 !dbg !1931 {
entry:
  %h.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !1935, metadata !DIExpression()), !dbg !1937
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1936, metadata !DIExpression()), !dbg !1938
  %0 = load ptr, ptr %n.addr, align 8, !dbg !1939
  %1 = ptrtoint ptr %0 to i64, !dbg !1940
  %or = or i64 %1, 1, !dbg !1941
  %2 = inttoptr i64 %or to ptr, !dbg !1942
  %3 = load ptr, ptr %h.addr, align 8, !dbg !1943
  %first = getelementptr inbounds %struct.hlist_bl_head, ptr %3, i32 0, i32 0, !dbg !1944
  store ptr %2, ptr %first, align 8, !dbg !1945
  ret void, !dbg !1946
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1947 dso_local void @_raw_spin_lock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !1951 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1955, metadata !DIExpression()), !dbg !1958
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !1956, metadata !DIExpression()), !dbg !1959
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !1957, metadata !DIExpression()), !dbg !1960
  %0 = load ptr, ptr %new.addr, align 8, !dbg !1961
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !1963
  %2 = load ptr, ptr %next.addr, align 8, !dbg !1964
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #20, !dbg !1965
  br i1 %call, label %if.end, label %if.then, !dbg !1966

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !1967

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !1968
  %4 = load ptr, ptr %next.addr, align 8, !dbg !1969
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !1970
  store ptr %3, ptr %prev1, align 8, !dbg !1971
  %5 = load ptr, ptr %next.addr, align 8, !dbg !1972
  %6 = load ptr, ptr %new.addr, align 8, !dbg !1973
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !1974
  store ptr %5, ptr %next2, align 8, !dbg !1975
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !1976
  %8 = load ptr, ptr %new.addr, align 8, !dbg !1977
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !1978
  store ptr %7, ptr %prev3, align 8, !dbg !1979
  br label %do.body, !dbg !1980

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !1981

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !1983

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !1981

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !1985
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !1985
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !1985
  store volatile ptr %9, ptr %next6, align 8, !dbg !1985
  br label %do.end7, !dbg !1985

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !1981

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !1987
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !1988 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1992, metadata !DIExpression()), !dbg !1995
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !1993, metadata !DIExpression()), !dbg !1996
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !1994, metadata !DIExpression()), !dbg !1997
  ret i1 true, !dbg !1998
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1999 dso_local void @_raw_spin_unlock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_dec_return(ptr noundef %v) #5 align 16 !dbg !2000 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2004, metadata !DIExpression()), !dbg !2005
  br label %do.body, !dbg !2006

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2007

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2009
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #20, !dbg !2010
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2011
  %call = call i32 @raw_atomic_dec_return(ptr noundef %1) #20, !dbg !2012
  ret i32 %call, !dbg !2013
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2014 dso_local void @wake_up_var(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_dec_return(ptr noundef %v) #5 align 16 !dbg !2017 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2019, metadata !DIExpression()), !dbg !2020
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2021
  %call = call i32 @raw_atomic_sub_return(i32 noundef 1, ptr noundef %0) #20, !dbg !2022
  ret i32 %call, !dbg !2023
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_sub_return(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !2024 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2028, metadata !DIExpression()), !dbg !2030
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2029, metadata !DIExpression()), !dbg !2031
  %0 = load i32, ptr %i.addr, align 4, !dbg !2032
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2033
  %call = call i32 @arch_atomic_sub_return(i32 noundef %0, ptr noundef %1) #20, !dbg !2034
  ret i32 %call, !dbg !2035
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_sub_return(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !2036 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2038, metadata !DIExpression()), !dbg !2040
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2039, metadata !DIExpression()), !dbg !2041
  %0 = load i32, ptr %i.addr, align 4, !dbg !2042
  %sub = sub i32 0, %0, !dbg !2043
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2044
  %call = call i32 @arch_atomic_add_return(i32 noundef %sub, ptr noundef %1) #20, !dbg !2045
  ret i32 %call, !dbg !2046
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_add_return(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !2047 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2049, metadata !DIExpression()), !dbg !2053
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2050, metadata !DIExpression()), !dbg !2054
  %0 = load i32, ptr %i.addr, align 4, !dbg !2055
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #19, !dbg !2056
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !2051, metadata !DIExpression()), !dbg !2056
  %1 = load i32, ptr %i.addr, align 4, !dbg !2056
  store i32 %1, ptr %__ret, align 4, !dbg !2056
  %2 = load i32, ptr %__ret, align 4, !dbg !2056
  %3 = load ptr, ptr %v.addr, align 8, !dbg !2056
  %counter = getelementptr inbounds %struct.atomic_t, ptr %3, i32 0, i32 0, !dbg !2056
  %4 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %2, ptr elementtype(i32) %counter) #19, !dbg !2056, !srcloc !2057
  store i32 %4, ptr %__ret, align 4, !dbg !2056
  %5 = load i32, ptr %__ret, align 4, !dbg !2056
  store i32 %5, ptr %tmp, align 4, !dbg !2056
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #19, !dbg !2058
  %6 = load i32, ptr %tmp, align 4, !dbg !2056
  %add = add i32 %0, %6, !dbg !2059
  ret i32 %add, !dbg !2060
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__hlist_bl_del(ptr noundef %n) #3 align 16 !dbg !2061 {
entry:
  %n.addr = alloca ptr, align 8
  %next = alloca ptr, align 8
  %pprev = alloca ptr, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !2063, metadata !DIExpression()), !dbg !2066
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #19, !dbg !2067
  call void @llvm.dbg.declare(metadata ptr %next, metadata !2064, metadata !DIExpression()), !dbg !2068
  %0 = load ptr, ptr %n.addr, align 8, !dbg !2069
  %next1 = getelementptr inbounds %struct.hlist_bl_node, ptr %0, i32 0, i32 0, !dbg !2070
  %1 = load ptr, ptr %next1, align 8, !dbg !2070
  store ptr %1, ptr %next, align 8, !dbg !2068
  call void @llvm.lifetime.start.p0(i64 8, ptr %pprev) #19, !dbg !2071
  call void @llvm.dbg.declare(metadata ptr %pprev, metadata !2065, metadata !DIExpression()), !dbg !2072
  %2 = load ptr, ptr %n.addr, align 8, !dbg !2073
  %pprev2 = getelementptr inbounds %struct.hlist_bl_node, ptr %2, i32 0, i32 1, !dbg !2074
  %3 = load ptr, ptr %pprev2, align 8, !dbg !2074
  store ptr %3, ptr %pprev, align 8, !dbg !2072
  br label %do.body, !dbg !2075

do.body:                                          ; preds = %entry
  br label %do.body3, !dbg !2076

do.body3:                                         ; preds = %do.body
  br label %do.cond, !dbg !2078

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !2078

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !2076

do.body4:                                         ; preds = %do.end
  %4 = load ptr, ptr %next, align 8, !dbg !2080
  %5 = ptrtoint ptr %4 to i64, !dbg !2080
  %6 = load ptr, ptr %pprev, align 8, !dbg !2080
  %7 = load ptr, ptr %6, align 8, !dbg !2080
  %8 = ptrtoint ptr %7 to i64, !dbg !2080
  %and = and i64 %8, 1, !dbg !2080
  %or = or i64 %5, %and, !dbg !2080
  %9 = inttoptr i64 %or to ptr, !dbg !2080
  %10 = load ptr, ptr %pprev, align 8, !dbg !2080
  store volatile ptr %9, ptr %10, align 8, !dbg !2080
  br label %do.cond5, !dbg !2080

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !2080

do.end6:                                          ; preds = %do.cond5
  br label %do.cond7, !dbg !2076

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !2076

do.end8:                                          ; preds = %do.cond7
  %11 = load ptr, ptr %next, align 8, !dbg !2082
  %tobool = icmp ne ptr %11, null, !dbg !2082
  br i1 %tobool, label %if.then, label %if.end, !dbg !2084

if.then:                                          ; preds = %do.end8
  %12 = load ptr, ptr %pprev, align 8, !dbg !2085
  %13 = load ptr, ptr %next, align 8, !dbg !2086
  %pprev9 = getelementptr inbounds %struct.hlist_bl_node, ptr %13, i32 0, i32 1, !dbg !2087
  store ptr %12, ptr %pprev9, align 8, !dbg !2088
  br label %if.end, !dbg !2086

if.end:                                           ; preds = %if.then, %do.end8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pprev) #19, !dbg !2089
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #19, !dbg !2089
  ret void, !dbg !2089
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #5 align 16 !dbg !2090 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2092, metadata !DIExpression()), !dbg !2093
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2094
  %call = call i32 @arch_atomic_read(ptr noundef %0) #20, !dbg !2095
  ret i32 %call, !dbg !2096
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #5 align 16 !dbg !2097 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2099, metadata !DIExpression()), !dbg !2100
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2101
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !2101
  %1 = load volatile i32, ptr %counter, align 4, !dbg !2101
  ret i32 %1, !dbg !2102
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @hlist_bl_unhashed(ptr noundef %h) #3 align 16 !dbg !2103 {
entry:
  %h.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !2109, metadata !DIExpression()), !dbg !2110
  %0 = load ptr, ptr %h.addr, align 8, !dbg !2111
  %pprev = getelementptr inbounds %struct.hlist_bl_node, ptr %0, i32 0, i32 1, !dbg !2112
  %1 = load ptr, ptr %pprev, align 8, !dbg !2112
  %tobool = icmp ne ptr %1, null, !dbg !2113
  %lnot = xor i1 %tobool, true, !dbg !2113
  ret i1 %lnot, !dbg !2114
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_inc_not_zero(ptr noundef %v) #5 align 16 !dbg !2115 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2117, metadata !DIExpression()), !dbg !2118
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2119
  %call = call zeroext i1 @raw_atomic_add_unless(ptr noundef %0, i32 noundef 1, i32 noundef 0) #20, !dbg !2120
  ret i1 %call, !dbg !2121
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_add_unless(ptr noundef %v, i32 noundef %a, i32 noundef %u) #5 align 16 !dbg !2122 {
entry:
  %v.addr = alloca ptr, align 8
  %a.addr = alloca i32, align 4
  %u.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2126, metadata !DIExpression()), !dbg !2129
  store i32 %a, ptr %a.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !2127, metadata !DIExpression()), !dbg !2130
  store i32 %u, ptr %u.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !2128, metadata !DIExpression()), !dbg !2131
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2132
  %1 = load i32, ptr %a.addr, align 4, !dbg !2133
  %2 = load i32, ptr %u.addr, align 4, !dbg !2134
  %call = call i32 @raw_atomic_fetch_add_unless(ptr noundef %0, i32 noundef %1, i32 noundef %2) #20, !dbg !2135
  %3 = load i32, ptr %u.addr, align 4, !dbg !2136
  %cmp = icmp ne i32 %call, %3, !dbg !2137
  ret i1 %cmp, !dbg !2138
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_unless(ptr noundef %v, i32 noundef %a, i32 noundef %u) #5 align 16 !dbg !2139 {
entry:
  %v.addr = alloca ptr, align 8
  %a.addr = alloca i32, align 4
  %u.addr = alloca i32, align 4
  %c = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2141, metadata !DIExpression()), !dbg !2145
  store i32 %a, ptr %a.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !2142, metadata !DIExpression()), !dbg !2146
  store i32 %u, ptr %u.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !2143, metadata !DIExpression()), !dbg !2147
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #19, !dbg !2148
  call void @llvm.dbg.declare(metadata ptr %c, metadata !2144, metadata !DIExpression()), !dbg !2149
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2150
  %call = call i32 @raw_atomic_read(ptr noundef %0) #20, !dbg !2151
  store i32 %call, ptr %c, align 4, !dbg !2149
  br label %do.body, !dbg !2152

do.body:                                          ; preds = %do.cond, %entry
  %1 = load i32, ptr %c, align 4, !dbg !2153
  %2 = load i32, ptr %u.addr, align 4, !dbg !2153
  %cmp = icmp eq i32 %1, %2, !dbg !2153
  %lnot = xor i1 %cmp, true, !dbg !2153
  %lnot1 = xor i1 %lnot, true, !dbg !2153
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2153
  %conv = sext i32 %lnot.ext to i64, !dbg !2153
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2153
  %tobool = icmp ne i64 %expval, 0, !dbg !2153
  br i1 %tobool, label %if.then, label %if.end, !dbg !2156

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !2157

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !2158

do.cond:                                          ; preds = %if.end
  %3 = load ptr, ptr %v.addr, align 8, !dbg !2159
  %4 = load i32, ptr %c, align 4, !dbg !2160
  %5 = load i32, ptr %a.addr, align 4, !dbg !2161
  %add = add i32 %4, %5, !dbg !2162
  %call2 = call zeroext i1 @raw_atomic_try_cmpxchg(ptr noundef %3, ptr noundef %c, i32 noundef %add) #20, !dbg !2163
  %lnot3 = xor i1 %call2, true, !dbg !2164
  br i1 %lnot3, label %do.body, label %do.end, !dbg !2158, !llvm.loop !2165

do.end:                                           ; preds = %do.cond, %if.then
  %6 = load i32, ptr %c, align 4, !dbg !2167
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #19, !dbg !2168
  ret i32 %6, !dbg !2169
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_try_cmpxchg(ptr noundef %v, ptr noundef %old, i32 noundef %new) #5 align 16 !dbg !2170 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2174, metadata !DIExpression()), !dbg !2177
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !2175, metadata !DIExpression()), !dbg !2178
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2176, metadata !DIExpression()), !dbg !2179
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2180
  %1 = load ptr, ptr %old.addr, align 8, !dbg !2181
  %2 = load i32, ptr %new.addr, align 4, !dbg !2182
  %call = call zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %0, ptr noundef %1, i32 noundef %2) #20, !dbg !2183
  ret i1 %call, !dbg !2184
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %v, ptr noundef %old, i32 noundef %new) #5 align 16 !dbg !2185 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  %success = alloca i8, align 1
  %_old = alloca ptr, align 8
  %__old = alloca i32, align 4
  %__new = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2187, metadata !DIExpression()), !dbg !2196
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !2188, metadata !DIExpression()), !dbg !2197
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2189, metadata !DIExpression()), !dbg !2198
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #19, !dbg !2199
  call void @llvm.dbg.declare(metadata ptr %success, metadata !2190, metadata !DIExpression()), !dbg !2199
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #19, !dbg !2199
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !2192, metadata !DIExpression()), !dbg !2199
  %0 = load ptr, ptr %old.addr, align 8, !dbg !2199
  store ptr %0, ptr %_old, align 8, !dbg !2199
  call void @llvm.lifetime.start.p0(i64 4, ptr %__old) #19, !dbg !2199
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !2193, metadata !DIExpression()), !dbg !2199
  %1 = load ptr, ptr %_old, align 8, !dbg !2199
  %2 = load i32, ptr %1, align 4, !dbg !2199
  store i32 %2, ptr %__old, align 4, !dbg !2199
  call void @llvm.lifetime.start.p0(i64 4, ptr %__new) #19, !dbg !2199
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !2194, metadata !DIExpression()), !dbg !2199
  %3 = load i32, ptr %new.addr, align 4, !dbg !2199
  store i32 %3, ptr %__new, align 4, !dbg !2199
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #19, !dbg !2199
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !2195, metadata !DIExpression()), !dbg !2199
  %4 = load ptr, ptr %v.addr, align 8, !dbg !2199
  %counter = getelementptr inbounds %struct.atomic_t, ptr %4, i32 0, i32 0, !dbg !2199
  store ptr %counter, ptr %__ptr, align 8, !dbg !2199
  %5 = load ptr, ptr %__ptr, align 8, !dbg !2199
  %6 = load i32, ptr %__old, align 4, !dbg !2199
  %7 = load i32, ptr %__new, align 4, !dbg !2199
  %8 = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgl $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %5, i32 %7, ptr elementtype(i32) %5, i32 %6) #19, !dbg !2199, !srcloc !2200
  %asmresult = extractvalue { i8, i32 } %8, 0, !dbg !2199
  %asmresult1 = extractvalue { i8, i32 } %8, 1, !dbg !2199
  %9 = icmp ult i8 %asmresult, 2, !dbg !2199
  call void @llvm.assume(i1 %9), !dbg !2199
  store i8 %asmresult, ptr %success, align 1, !dbg !2199
  store i32 %asmresult1, ptr %__old, align 4, !dbg !2199
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #19, !dbg !2199
  %10 = load i8, ptr %success, align 1, !dbg !2201, !range !413, !noundef !245
  %tobool = trunc i8 %10 to i1, !dbg !2201
  %lnot = xor i1 %tobool, true, !dbg !2201
  %lnot2 = xor i1 %lnot, true, !dbg !2201
  %lnot3 = xor i1 %lnot2, true, !dbg !2201
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2201
  %conv = sext i32 %lnot.ext to i64, !dbg !2201
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2201
  %tobool4 = icmp ne i64 %expval, 0, !dbg !2201
  br i1 %tobool4, label %if.then, label %if.end, !dbg !2199

if.then:                                          ; preds = %entry
  %11 = load i32, ptr %__old, align 4, !dbg !2201
  %12 = load ptr, ptr %_old, align 8, !dbg !2201
  store i32 %11, ptr %12, align 4, !dbg !2201
  br label %if.end, !dbg !2201

if.end:                                           ; preds = %if.then, %entry
  %13 = load i8, ptr %success, align 1, !dbg !2199, !range !413, !noundef !245
  %tobool5 = trunc i8 %13 to i1, !dbg !2199
  %lnot6 = xor i1 %tobool5, true, !dbg !2199
  %lnot8 = xor i1 %lnot6, true, !dbg !2199
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !2199
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !2199
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !2199
  store i64 %expval11, ptr %tmp, align 8, !dbg !2201
  call void @llvm.lifetime.end.p0(i64 4, ptr %__new) #19, !dbg !2203
  call void @llvm.lifetime.end.p0(i64 4, ptr %__old) #19, !dbg !2203
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #19, !dbg !2203
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #19, !dbg !2203
  %14 = load i64, ptr %tmp, align 8, !dbg !2199
  %tobool12 = icmp ne i64 %14, 0, !dbg !2203
  ret i1 %tobool12, !dbg !2204
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_cmpxchg(ptr noundef %v, i32 noundef %old, i32 noundef %new) #5 align 16 !dbg !2205 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca i32, align 4
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2207, metadata !DIExpression()), !dbg !2210
  store i32 %old, ptr %old.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !2208, metadata !DIExpression()), !dbg !2211
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2209, metadata !DIExpression()), !dbg !2212
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2213
  %1 = load i32, ptr %old.addr, align 4, !dbg !2214
  %2 = load i32, ptr %new.addr, align 4, !dbg !2215
  %call = call i32 @arch_atomic_cmpxchg(ptr noundef %0, i32 noundef %1, i32 noundef %2) #20, !dbg !2216
  ret i32 %call, !dbg !2217
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_cmpxchg(ptr noundef %v, i32 noundef %old, i32 noundef %new) #5 align 16 !dbg !2218 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca i32, align 4
  %new.addr = alloca i32, align 4
  %__ret = alloca i32, align 4
  %__old = alloca i32, align 4
  %__new = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2220, metadata !DIExpression()), !dbg !2228
  store i32 %old, ptr %old.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !2221, metadata !DIExpression()), !dbg !2229
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2222, metadata !DIExpression()), !dbg !2230
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #19, !dbg !2231
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !2223, metadata !DIExpression()), !dbg !2231
  call void @llvm.lifetime.start.p0(i64 4, ptr %__old) #19, !dbg !2231
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !2225, metadata !DIExpression()), !dbg !2231
  %0 = load i32, ptr %old.addr, align 4, !dbg !2231
  store i32 %0, ptr %__old, align 4, !dbg !2231
  call void @llvm.lifetime.start.p0(i64 4, ptr %__new) #19, !dbg !2231
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !2226, metadata !DIExpression()), !dbg !2231
  %1 = load i32, ptr %new.addr, align 4, !dbg !2231
  store i32 %1, ptr %__new, align 4, !dbg !2231
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #19, !dbg !2231
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !2227, metadata !DIExpression()), !dbg !2231
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2231
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !2231
  store ptr %counter, ptr %__ptr, align 8, !dbg !2231
  %3 = load ptr, ptr %__ptr, align 8, !dbg !2231
  %4 = load i32, ptr %__new, align 4, !dbg !2231
  %5 = load i32, ptr %__old, align 4, !dbg !2231
  %6 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgl $2,$1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %3, i32 %4, i32 %5, ptr elementtype(i32) %3) #19, !dbg !2231, !srcloc !2232
  store i32 %6, ptr %__ret, align 4, !dbg !2231
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #19, !dbg !2231
  %7 = load i32, ptr %__ret, align 4, !dbg !2231
  store i32 %7, ptr %tmp, align 4, !dbg !2231
  call void @llvm.lifetime.end.p0(i64 4, ptr %__new) #19, !dbg !2233
  call void @llvm.lifetime.end.p0(i64 4, ptr %__old) #19, !dbg !2233
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #19, !dbg !2233
  %8 = load i32, ptr %tmp, align 4, !dbg !2231
  ret i32 %8, !dbg !2234
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #3 align 16 !dbg !2235 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !2237, metadata !DIExpression()), !dbg !2238
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !2239
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #20, !dbg !2241
  br i1 %call, label %if.end, label %if.then, !dbg !2242

if.then:                                          ; preds = %entry
  br label %return, !dbg !2243

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !2244
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !2245
  %2 = load ptr, ptr %prev, align 8, !dbg !2245
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !2246
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !2247
  %4 = load ptr, ptr %next, align 8, !dbg !2247
  call void @__list_del(ptr noundef %2, ptr noundef %4) #20, !dbg !2248
  br label %return, !dbg !2249

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !2249
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #3 align 16 !dbg !2250 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !2254, metadata !DIExpression()), !dbg !2255
  ret i1 true, !dbg !2256
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !2257 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !2259, metadata !DIExpression()), !dbg !2261
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !2260, metadata !DIExpression()), !dbg !2262
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !2263
  %1 = load ptr, ptr %next.addr, align 8, !dbg !2264
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !2265
  store ptr %0, ptr %prev1, align 8, !dbg !2266
  br label %do.body, !dbg !2267

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !2268

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !2270

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !2268

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !2272
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !2272
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !2272
  store volatile ptr %2, ptr %next4, align 8, !dbg !2272
  br label %do.end5, !dbg !2272

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !2268

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !2274
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !2275 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2277, metadata !DIExpression()), !dbg !2279
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2278, metadata !DIExpression()), !dbg !2280
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2281
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2282
  %div = sdiv i64 %1, 64, !dbg !2282
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !2283
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #20, !dbg !2284
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2285
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !2286
  call void @arch_clear_bit(i64 noundef %2, ptr noundef %3) #20, !dbg !2287
  ret void, !dbg !2288
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_move_tail(ptr noundef %list, ptr noundef %head) #3 align 16 !dbg !2289 {
entry:
  %list.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !2291, metadata !DIExpression()), !dbg !2293
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !2292, metadata !DIExpression()), !dbg !2294
  %0 = load ptr, ptr %list.addr, align 8, !dbg !2295
  call void @__list_del_entry(ptr noundef %0) #20, !dbg !2296
  %1 = load ptr, ptr %list.addr, align 8, !dbg !2297
  %2 = load ptr, ptr %head.addr, align 8, !dbg !2298
  call void @list_add_tail(ptr noundef %1, ptr noundef %2) #20, !dbg !2299
  ret void, !dbg !2300
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__might_resched(ptr noundef %file, i32 noundef %line, i32 noundef %offsets) #3 align 16 !dbg !2301 {
entry:
  %file.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %offsets.addr = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !2305, metadata !DIExpression()), !dbg !2308
  store i32 %line, ptr %line.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !2306, metadata !DIExpression()), !dbg !2309
  store i32 %offsets, ptr %offsets.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offsets.addr, metadata !2307, metadata !DIExpression()), !dbg !2310
  ret void, !dbg !2311
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @_cond_resched() #5 align 16 !dbg !306 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__cond_resched, ptr %tmp, align 8, !dbg !2312
  %0 = load ptr, ptr %tmp, align 8, !dbg !2312
  %call = call i32 %0() #20, !dbg !2314
  ret i32 %call, !dbg !2315
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !2316 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2318, metadata !DIExpression()), !dbg !2320
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2319, metadata !DIExpression()), !dbg !2321
  %0 = load i64, ptr %nr.addr, align 8, !dbg !2322
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2324
  br i1 %1, label %if.then, label %if.else, !dbg !2325

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !2326
  %3 = load i64, ptr %nr.addr, align 8, !dbg !2326
  %shr = ashr i64 %3, 3, !dbg !2326
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !2326
  %4 = load i64, ptr %nr.addr, align 8, !dbg !2328
  %and = and i64 %4, 7, !dbg !2328
  %sh_prom = trunc i64 %and to i32, !dbg !2328
  %shl = shl i32 1, %sh_prom, !dbg !2328
  %not = xor i32 %shl, -1, !dbg !2329
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %not, ptr elementtype(i8) %add.ptr) #19, !dbg !2330, !srcloc !2331
  br label %if.end, !dbg !2332

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !2333
  %6 = load i64, ptr %nr.addr, align 8, !dbg !2335
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #19, !dbg !2336, !srcloc !2337
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !2338
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__cond_resched() #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #15 align 16 !dbg !2339 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2341, metadata !DIExpression()), !dbg !2346
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2342, metadata !DIExpression()), !dbg !2347
  %0 = load i64, ptr %size.addr, align 8, !dbg !2348
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2349
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !2350

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2351
  %tobool = icmp ne i64 %2, 0, !dbg !2351
  br i1 %tobool, label %if.then, label %if.end7, !dbg !2352

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #19, !dbg !2353
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2343, metadata !DIExpression()), !dbg !2354
  %3 = load i64, ptr %size.addr, align 8, !dbg !2355
  %cmp = icmp ugt i64 %3, 8192, !dbg !2357
  br i1 %cmp, label %if.then1, label %if.end, !dbg !2358

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !2359
  %5 = load i32, ptr %flags.addr, align 4, !dbg !2360
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #21, !dbg !2361
  store ptr %call, ptr %retval, align 8, !dbg !2362
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2362

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !2363
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #20, !dbg !2363
  store i32 %call2, ptr %index, align 4, !dbg !2364
  %7 = load i32, ptr %flags.addr, align 4, !dbg !2365
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !2366
  %9 = ptrtoint ptr %8 to i64, !dbg !2366
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #20, !dbg !2367
  %idxprom = zext i32 %call3 to i64, !dbg !2368
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !2368
  %10 = load i32, ptr %index, align 4, !dbg !2369
  %idxprom4 = zext i32 %10 to i64, !dbg !2368
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !2368
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !2368
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2370
  %13 = load i64, ptr %size.addr, align 8, !dbg !2371
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #24, !dbg !2372
  store ptr %call6, ptr %retval, align 8, !dbg !2373
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2373

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #19, !dbg !2374
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !2375
  %15 = load i32, ptr %flags.addr, align 4, !dbg !2376
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #21, !dbg !2377
  store ptr %call8, ptr %retval, align 8, !dbg !2378
  br label %return, !dbg !2378

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !2379
  ret ptr %16, !dbg !2379
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2380 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #16

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #5 align 16 !dbg !2381 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2385, metadata !DIExpression()), !dbg !2387
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !2386, metadata !DIExpression()), !dbg !2388
  %0 = load i64, ptr %size.addr, align 8, !dbg !2389
  %tobool = icmp ne i64 %0, 0, !dbg !2389
  br i1 %tobool, label %if.end, label %if.then, !dbg !2391

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2392
  br label %return, !dbg !2392

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !2393
  %cmp = icmp ule i64 %1, 8, !dbg !2395
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2396

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !2397
  br label %return, !dbg !2397

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !2398
  %cmp3 = icmp ugt i64 %2, 64, !dbg !2400
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !2401

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !2402
  %cmp4 = icmp ule i64 %3, 96, !dbg !2403
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2404

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !2405
  br label %return, !dbg !2405

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !2406
  %cmp7 = icmp ugt i64 %4, 128, !dbg !2408
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !2409

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !2410
  %cmp9 = icmp ule i64 %5, 192, !dbg !2411
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2412

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !2413
  br label %return, !dbg !2413

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !2414
  %cmp12 = icmp ule i64 %6, 8, !dbg !2416
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2417

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !2418
  br label %return, !dbg !2418

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !2419
  %cmp15 = icmp ule i64 %7, 16, !dbg !2421
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2422

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !2423
  br label %return, !dbg !2423

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !2424
  %cmp18 = icmp ule i64 %8, 32, !dbg !2426
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2427

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !2428
  br label %return, !dbg !2428

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !2429
  %cmp21 = icmp ule i64 %9, 64, !dbg !2431
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2432

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !2433
  br label %return, !dbg !2433

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !2434
  %cmp24 = icmp ule i64 %10, 128, !dbg !2436
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !2437

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !2438
  br label %return, !dbg !2438

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !2439
  %cmp27 = icmp ule i64 %11, 256, !dbg !2441
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !2442

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !2443
  br label %return, !dbg !2443

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !2444
  %cmp30 = icmp ule i64 %12, 512, !dbg !2446
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2447

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !2448
  br label %return, !dbg !2448

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !2449
  %cmp33 = icmp ule i64 %13, 1024, !dbg !2451
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2452

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !2453
  br label %return, !dbg !2453

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !2454
  %cmp36 = icmp ule i64 %14, 2048, !dbg !2456
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !2457

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !2458
  br label %return, !dbg !2458

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !2459
  %cmp39 = icmp ule i64 %15, 4096, !dbg !2461
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !2462

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !2463
  br label %return, !dbg !2463

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !2464
  %cmp42 = icmp ule i64 %16, 8192, !dbg !2466
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !2467

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !2468
  br label %return, !dbg !2468

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !2469
  %cmp45 = icmp ule i64 %17, 16384, !dbg !2471
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !2472

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !2473
  br label %return, !dbg !2473

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !2474
  %cmp48 = icmp ule i64 %18, 32768, !dbg !2476
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !2477

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !2478
  br label %return, !dbg !2478

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !2479
  %cmp51 = icmp ule i64 %19, 65536, !dbg !2481
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !2482

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !2483
  br label %return, !dbg !2483

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !2484
  %cmp54 = icmp ule i64 %20, 131072, !dbg !2486
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !2487

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !2488
  br label %return, !dbg !2488

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !2489
  %cmp57 = icmp ule i64 %21, 262144, !dbg !2491
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !2492

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !2493
  br label %return, !dbg !2493

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !2494
  %cmp60 = icmp ule i64 %22, 524288, !dbg !2496
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !2497

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !2498
  br label %return, !dbg !2498

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !2499
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !2501
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !2502

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !2503
  br label %return, !dbg !2503

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !2504
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !2506
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !2507

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !2508
  br label %return, !dbg !2508

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !2509, !range !413, !noundef !245
  %tobool69 = trunc i8 %25 to i1, !dbg !2509
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !2511

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !2512

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #25, !dbg !2513, !srcloc !2516
  unreachable, !dbg !2513

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !2517

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !2518

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !2519

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !2521

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !2519

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 480, i32 0, i64 12) #19, !dbg !2523, !srcloc !2525
  br label %do.end75, !dbg !2523

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !2519

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !2526
  br label %return, !dbg !2526

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !2527
  ret i32 %26, !dbg !2527
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !2528 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #17

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #5 align 16 !dbg !2531 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2535, metadata !DIExpression()), !dbg !2537
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !2536, metadata !DIExpression()), !dbg !2538
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2539
  %and = and i32 %0, 17, !dbg !2539
  %cmp = icmp eq i32 %and, 0, !dbg !2539
  %lnot = xor i1 %cmp, true, !dbg !2539
  %lnot1 = xor i1 %lnot, true, !dbg !2539
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2539
  %conv = sext i32 %lnot.ext to i64, !dbg !2539
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2539
  %tobool = icmp ne i64 %expval, 0, !dbg !2539
  br i1 %tobool, label %if.then, label %if.end, !dbg !2541

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2542
  br label %return, !dbg !2542

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2543
  %and2 = and i32 %1, 1, !dbg !2545
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2545
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2546

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !2547
  br label %return, !dbg !2547

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2548
  br label %return, !dbg !2548

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2550
  ret i32 %2, !dbg !2550
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2551 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #16

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !2552 dso_local void @__compiletime_assert_117() #18

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #3 align 16 !dbg !2553 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !2558, metadata !DIExpression()), !dbg !2559
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !2560, !range !413, !noundef !245
  %tobool = trunc i8 %0 to i1, !dbg !2560
  %lnot = xor i1 %tobool, true, !dbg !2560
  %lnot1 = xor i1 %lnot, true, !dbg !2560
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2560
  %conv = sext i32 %lnot.ext to i64, !dbg !2560
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2560
  %tobool2 = icmp ne i64 %expval, 0, !dbg !2560
  ret i1 %tobool2, !dbg !2561
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2562 dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #13 = { nocallback nounwind }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #18 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #19 = { nounwind }
attributes #20 = { noredzone }
attributes #21 = { noredzone allocsize(0) }
attributes #22 = { noredzone allocsize(0,1) }
attributes #23 = { cold noredzone }
attributes #24 = { noredzone allocsize(2) }
attributes #25 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!323}
!llvm.module.flags = !{!324, !325, !326, !327, !328, !329, !330, !331}
!llvm.ident = !{!332}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mb_entry_cache", scope: !2, file: !3, line: 45, type: !320, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/.mbcache.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/mbcache\22 -D KBUILD_BASENAME=\22mbcache\22 -D KBUILD_MODNAME=\22mbcache\22 -D __KBUILD_MODNAME=kmod_mbcache -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/mbcache.ll fs/mbcache.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !52, globals: !210, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/mbcache.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1f991df4d375f48c0ea38a39bd31cb2c")
!4 = !{!5, !11, !37, !42}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 14, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/mbcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "716e7ef0420f1ad2f60296236cca200c")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "MBE_REFERENCED_B", value: 0)
!10 = !DIEnumerator(name: "MBE_REUSABLE_B", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 30, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36}
!14 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!15 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE_BIT", value: 1)
!16 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!17 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!18 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!19 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!20 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!21 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE", value: 2)
!22 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!23 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!24 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!25 = !DIEnumerator(name: "WORK_NR_COLORS", value: 16)
!26 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 64)
!27 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!28 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!29 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!30 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!31 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!32 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!33 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!34 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!35 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!36 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 32)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !38, line: 10, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!39 = !{!40, !41}
!40 = !DIEnumerator(name: "false", value: 0)
!41 = !DIEnumerator(name: "true", value: 1)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !43, line: 364, baseType: !7, size: 32, elements: !44)
!43 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!44 = !{!45, !46, !47, !48, !49, !50, !51}
!45 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!46 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!47 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!48 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!49 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!50 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!51 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!52 = !{!53, !54, !89, !84, !90, !92, !94, !97, !100, !101, !102, !77, !79, !69, !104, !106, !108, !109, !111, !113, !209}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mb_cache_entry", file: !6, line: 19, size: 448, elements: !56)
!56 = !{!57, !64, !72, !78, !83, !85}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "e_list", scope: !55, file: !6, line: 21, baseType: !58, size: 128)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !59, line: 190, size: 128, elements: !60)
!59 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!60 = !{!61, !63}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !58, file: !59, line: 191, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !58, file: !59, line: 191, baseType: !62, size: 64, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "e_hash_list", scope: !55, file: !6, line: 26, baseType: !65, size: 128, offset: 128)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !66, line: 38, size: 128, elements: !67)
!66 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!67 = !{!68, !70}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !65, file: !66, line: 39, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !65, file: !66, line: 39, baseType: !71, size: 64, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "e_refcnt", scope: !55, file: !6, line: 32, baseType: !73, size: 32, offset: 256)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !59, line: 174, baseType: !74)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !59, line: 172, size: 32, elements: !75)
!75 = !{!76}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !74, file: !59, line: 173, baseType: !77, size: 32)
!77 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "e_key", scope: !55, file: !6, line: 34, baseType: !79, size: 32, offset: 288)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !80, line: 21, baseType: !81)
!80 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !82, line: 27, baseType: !7)
!82 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!83 = !DIDerivedType(tag: DW_TAG_member, name: "e_flags", scope: !55, file: !6, line: 35, baseType: !84, size: 64, offset: 320)
!84 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "e_value", scope: !55, file: !6, line: 37, baseType: !86, size: 64, offset: 384)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !80, line: 23, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !82, line: 31, baseType: !88)
!88 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !59, line: 154, baseType: !7)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !62)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !77)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !96)
!96 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !99)
!99 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !59, line: 42, baseType: !84)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !69)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !79)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mb_cache", file: !3, line: 28, size: 1152, elements: !115)
!115 = !{!116, !121, !122, !123, !160, !161, !162, !198}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "c_hash", scope: !114, file: !3, line: 30, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !66, line: 34, size: 64, elements: !119)
!119 = !{!120}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !118, file: !66, line: 35, baseType: !69, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "c_bucket_bits", scope: !114, file: !3, line: 32, baseType: !77, size: 32, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "c_max_entries", scope: !114, file: !3, line: 34, baseType: !84, size: 64, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "c_list_lock", scope: !114, file: !3, line: 36, baseType: !124, size: 32, offset: 192)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !125, line: 29, baseType: !126)
!125 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !125, line: 17, size: 32, elements: !127)
!127 = !{!128}
!128 = !DIDerivedType(tag: DW_TAG_member, scope: !126, file: !125, line: 18, baseType: !129, size: 32)
!129 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !126, file: !125, line: 18, size: 32, elements: !130)
!130 = !{!131}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !129, file: !125, line: 19, baseType: !132, size: 32)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !133, line: 14, size: 32, elements: !134)
!133 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!134 = !{!135}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !132, file: !133, line: 15, baseType: !136, size: 32)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !137, line: 44, baseType: !138)
!137 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !137, line: 14, size: 32, elements: !139)
!139 = !{!140}
!140 = !DIDerivedType(tag: DW_TAG_member, scope: !138, file: !137, line: 15, baseType: !141, size: 32)
!141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !138, file: !137, line: 15, size: 32, elements: !142)
!142 = !{!143, !144, !152}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !141, file: !137, line: 16, baseType: !73, size: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, scope: !141, file: !137, line: 24, baseType: !145, size: 16)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !141, file: !137, line: 24, size: 16, elements: !146)
!146 = !{!147, !151}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !145, file: !137, line: 25, baseType: !148, size: 8)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !80, line: 17, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !82, line: 21, baseType: !150)
!150 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !145, file: !137, line: 26, baseType: !148, size: 8, offset: 8)
!152 = !DIDerivedType(tag: DW_TAG_member, scope: !141, file: !137, line: 28, baseType: !153, size: 32)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !141, file: !137, line: 28, size: 32, elements: !154)
!154 = !{!155, !159}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !153, file: !137, line: 29, baseType: !156, size: 16)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !80, line: 19, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !82, line: 24, baseType: !158)
!158 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !153, file: !137, line: 30, baseType: !156, size: 16, offset: 16)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "c_list", scope: !114, file: !3, line: 37, baseType: !58, size: 128, offset: 256)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "c_entry_count", scope: !114, file: !3, line: 39, baseType: !84, size: 64, offset: 384)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "c_shrink", scope: !114, file: !3, line: 40, baseType: !163, size: 448, offset: 448)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !164, line: 63, size: 448, elements: !165)
!164 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!165 = !{!166, !182, !183, !184, !185, !186, !187}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !163, file: !164, line: 64, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DISubroutineType(types: !169)
!169 = !{!84, !170, !171}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !164, line: 15, size: 256, elements: !173)
!173 = !{!174, !175, !176, !177, !178}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !172, file: !164, line: 16, baseType: !89, size: 32)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !172, file: !164, line: 19, baseType: !77, size: 32, offset: 32)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !172, file: !164, line: 26, baseType: !84, size: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !172, file: !164, line: 33, baseType: !84, size: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !172, file: !164, line: 36, baseType: !179, size: 64, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !181, line: 33, flags: DIFlagFwdDecl)
!181 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!182 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !163, file: !164, line: 66, baseType: !167, size: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !163, file: !164, line: 69, baseType: !99, size: 64, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !163, file: !164, line: 70, baseType: !77, size: 32, offset: 192)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !163, file: !164, line: 71, baseType: !7, size: 32, offset: 224)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !163, file: !164, line: 74, baseType: !58, size: 128, offset: 256)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !163, file: !164, line: 85, baseType: !188, size: 64, offset: 384)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !190, line: 13, baseType: !191)
!190 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !59, line: 181, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !59, line: 179, size: 64, elements: !193)
!193 = !{!194}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !192, file: !59, line: 180, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !80, line: 22, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !82, line: 30, baseType: !197)
!197 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "c_shrink_work", scope: !114, file: !3, line: 42, baseType: !199, size: 256, offset: 896)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !12, line: 98, size: 256, elements: !200)
!200 = !{!201, !202, !203}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !199, file: !12, line: 99, baseType: !189, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !199, file: !12, line: 100, baseType: !58, size: 128, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !199, file: !12, line: 101, baseType: !204, size: 64, offset: 192)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !12, line: 21, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{null, !208}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "slab_flags_t", file: !59, line: 155, baseType: !7)
!210 = !{!211, !213, !215, !217, !219, !221, !223, !225, !227, !232, !246, !248, !253, !255, !257, !264, !270, !275, !280, !0, !285, !294, !300, !304, !310, !315}
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mb_cache_entry_create259", scope: !2, file: !3, line: 125, type: !53, isLocal: true, isDefinition: true)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___mb_cache_entry_free260", scope: !2, file: !3, line: 137, type: !53, isLocal: true, isDefinition: true)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mb_cache_entry_wait_unused261", scope: !2, file: !3, line: 150, type: !53, isLocal: true, isDefinition: true)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mb_cache_entry_find_first262", scope: !2, file: !3, line: 197, type: !53, isLocal: true, isDefinition: true)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mb_cache_entry_find_next263", scope: !2, file: !3, line: 214, type: !53, isLocal: true, isDefinition: true)
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mb_cache_entry_get264", scope: !2, file: !3, line: 241, type: !53, isLocal: true, isDefinition: true)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mb_cache_entry_delete_or_get265", scope: !2, file: !3, line: 278, type: !53, isLocal: true, isDefinition: true)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mb_cache_entry_touch266", scope: !2, file: !3, line: 291, type: !53, isLocal: true, isDefinition: true)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(scope: null, file: !3, line: 383, type: !229, isLocal: true, isDefinition: true)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 136, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 17)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(name: "__key", scope: !234, file: !3, line: 389, type: !243, isLocal: true, isDefinition: true)
!234 = distinct !DISubprogram(name: "mb_cache_create", scope: !3, file: !3, line: 357, type: !235, scopeLine: 358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !237)
!235 = !DISubroutineType(types: !236)
!236 = !{!113, !77}
!237 = !{!238, !239, !240, !241, !242}
!238 = !DILocalVariable(name: "bucket_bits", arg: 1, scope: !234, file: !3, line: 357, type: !77)
!239 = !DILocalVariable(name: "cache", scope: !234, file: !3, line: 359, type: !113)
!240 = !DILocalVariable(name: "bucket_count", scope: !234, file: !3, line: 360, type: !84)
!241 = !DILocalVariable(name: "i", scope: !234, file: !3, line: 361, type: !84)
!242 = !DILabel(scope: !234, name: "err_out", file: !3, line: 393)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !244, line: 206, elements: !245)
!244 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!245 = !{}
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mb_cache_create267", scope: !2, file: !3, line: 396, type: !53, isLocal: true, isDefinition: true)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(scope: null, file: !3, line: 417, type: !250, isLocal: true, isDefinition: true)
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 104, elements: !251)
!251 = !{!252}
!252 = !DISubrange(count: 13)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mb_cache_destroy268", scope: !2, file: !3, line: 423, type: !53, isLocal: true, isDefinition: true)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_mbcache__269_440_mbcache_init6270", scope: !2, file: !3, line: 440, type: !53, isLocal: true, isDefinition: true)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(name: "__exitcall_mbcache_exit", scope: !2, file: !3, line: 441, type: !259, isLocal: true, isDefinition: true)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !260, line: 120, baseType: !261)
!260 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{null}
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author271", scope: !2, file: !3, line: 443, type: !266, isLocal: true, isDefinition: true, align: 8)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 312, elements: !268)
!267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!268 = !{!269}
!269 = !DISubrange(count: 39)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description272", scope: !2, file: !3, line: 444, type: !272, isLocal: true, isDefinition: true, align: 8)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 504, elements: !273)
!273 = !{!274}
!274 = !DISubrange(count: 63)
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file273", scope: !2, file: !3, line: 445, type: !277, isLocal: true, isDefinition: true, align: 8)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 192, elements: !278)
!278 = !{!279}
!279 = !DISubrange(count: 24)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license274", scope: !2, file: !3, line: 445, type: !282, isLocal: true, isDefinition: true, align: 8)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 160, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 20)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule118", scope: !287, file: !288, line: 28, type: !53, isLocal: true, isDefinition: true)
!287 = distinct !DISubprogram(name: "bit_spin_lock", scope: !288, file: !288, line: 16, type: !289, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !291)
!288 = !DIFile(filename: "./include/linux/bit_spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfd00aa32204721413e67de4980ca03")
!289 = !DISubroutineType(types: !290)
!290 = !{null, !77, !100}
!291 = !{!292, !293}
!292 = !DILocalVariable(name: "bitnum", arg: 1, scope: !287, file: !288, line: 16, type: !77)
!293 = !DILocalVariable(name: "addr", arg: 2, scope: !287, file: !288, line: 16, type: !100)
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression())
!295 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule121", scope: !296, file: !288, line: 82, type: !53, isLocal: true, isDefinition: true)
!296 = distinct !DISubprogram(name: "__bit_spin_unlock", scope: !288, file: !288, line: 74, type: !289, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !297)
!297 = !{!298, !299}
!298 = !DILocalVariable(name: "bitnum", arg: 1, scope: !296, file: !288, line: 74, type: !77)
!299 = !DILocalVariable(name: "addr", arg: 2, scope: !296, file: !288, line: 74, type: !100)
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__might_resched29", scope: !302, file: !303, line: 112, type: !53, isLocal: true, isDefinition: true)
!302 = distinct !DISubprogram(name: "might_resched", scope: !303, file: !303, line: 110, type: !262, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!303 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__cond_resched177", scope: !306, file: !307, line: 2104, type: !53, isLocal: true, isDefinition: true)
!306 = distinct !DISubprogram(name: "_cond_resched", scope: !307, file: !307, line: 2102, type: !308, scopeLine: 2103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!307 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!308 = !DISubroutineType(types: !309)
!309 = !{!77}
!310 = !DIGlobalVariableExpression(var: !311, expr: !DIExpression())
!311 = distinct !DIGlobalVariable(scope: null, file: !43, line: 480, type: !312, isLocal: true, isDefinition: true)
!312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 168, elements: !313)
!313 = !{!314}
!314 = !DISubrange(count: 21)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !3, line: 427, type: !317, isLocal: true, isDefinition: true)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 64, elements: !318)
!318 = !{!319}
!319 = !DISubrange(count: 8)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !322, line: 11, flags: DIFlagFwdDecl)
!322 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!323 = !{!"rsp"}
!324 = !{i32 7, !"Dwarf Version", i32 5}
!325 = !{i32 2, !"Debug Info Version", i32 3}
!326 = !{i32 1, !"wchar_size", i32 2}
!327 = !{i32 8, !"cf-protection-branch", i32 1}
!328 = !{i32 4, !"function_return_thunk_extern", i32 1}
!329 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!330 = !{i32 1, !"Code Model", i32 2}
!331 = !{i32 1, !"override-stack-alignment", i32 8}
!332 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!333 = distinct !DISubprogram(name: "mb_cache_entry_create", scope: !3, file: !3, line: 74, type: !334, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !338)
!334 = !DISubroutineType(types: !335)
!335 = !{!77, !113, !89, !79, !86, !336}
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !59, line: 35, baseType: !337)
!337 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!338 = !{!339, !340, !341, !342, !343, !344, !345, !346, !347, !348}
!339 = !DILocalVariable(name: "cache", arg: 1, scope: !333, file: !3, line: 74, type: !113)
!340 = !DILocalVariable(name: "mask", arg: 2, scope: !333, file: !3, line: 74, type: !89)
!341 = !DILocalVariable(name: "key", arg: 3, scope: !333, file: !3, line: 74, type: !79)
!342 = !DILocalVariable(name: "value", arg: 4, scope: !333, file: !3, line: 75, type: !86)
!343 = !DILocalVariable(name: "reusable", arg: 5, scope: !333, file: !3, line: 75, type: !336)
!344 = !DILocalVariable(name: "entry", scope: !333, file: !3, line: 77, type: !54)
!345 = !DILocalVariable(name: "dup", scope: !333, file: !3, line: 77, type: !54)
!346 = !DILocalVariable(name: "dup_node", scope: !333, file: !3, line: 78, type: !69)
!347 = !DILocalVariable(name: "head", scope: !333, file: !3, line: 79, type: !117)
!348 = !DILocalVariable(name: "__mptr", scope: !349, file: !3, line: 108, type: !53)
!349 = distinct !DILexicalBlock(scope: !350, file: !3, line: 108, column: 2)
!350 = distinct !DILexicalBlock(scope: !351, file: !3, line: 108, column: 2)
!351 = distinct !DILexicalBlock(scope: !352, file: !3, line: 108, column: 2)
!352 = distinct !DILexicalBlock(scope: !353, file: !3, line: 108, column: 2)
!353 = !DILexicalBlockFile(scope: !333, file: !3, discriminator: 0)
!354 = !DILocation(line: 74, column: 44, scope: !333)
!355 = !DILocation(line: 74, column: 57, scope: !333)
!356 = !DILocation(line: 74, column: 67, scope: !333)
!357 = !DILocation(line: 75, column: 10, scope: !333)
!358 = !DILocation(line: 75, column: 22, scope: !333)
!359 = !DILocation(line: 77, column: 2, scope: !333)
!360 = !DILocation(line: 77, column: 25, scope: !333)
!361 = !DILocation(line: 77, column: 33, scope: !333)
!362 = !DILocation(line: 78, column: 2, scope: !333)
!363 = !DILocation(line: 78, column: 24, scope: !333)
!364 = !DILocation(line: 79, column: 2, scope: !333)
!365 = !DILocation(line: 79, column: 24, scope: !333)
!366 = !DILocation(line: 82, column: 6, scope: !367)
!367 = distinct !DILexicalBlock(scope: !333, file: !3, line: 82, column: 6)
!368 = !DILocation(line: 82, column: 13, scope: !367)
!369 = !DILocation(line: 82, column: 30, scope: !367)
!370 = !DILocation(line: 82, column: 37, scope: !367)
!371 = !DILocation(line: 82, column: 27, scope: !367)
!372 = !DILocation(line: 82, column: 6, scope: !333)
!373 = !DILocation(line: 83, column: 18, scope: !367)
!374 = !DILocation(line: 83, column: 25, scope: !367)
!375 = !DILocation(line: 83, column: 3, scope: !367)
!376 = !DILocation(line: 85, column: 6, scope: !377)
!377 = distinct !DILexicalBlock(scope: !333, file: !3, line: 85, column: 6)
!378 = !DILocation(line: 85, column: 13, scope: !377)
!379 = !DILocation(line: 85, column: 32, scope: !377)
!380 = !DILocation(line: 85, column: 39, scope: !377)
!381 = !DILocation(line: 85, column: 31, scope: !377)
!382 = !DILocation(line: 85, column: 27, scope: !377)
!383 = !DILocation(line: 85, column: 6, scope: !333)
!384 = !DILocation(line: 86, column: 19, scope: !377)
!385 = !DILocation(line: 86, column: 3, scope: !377)
!386 = !DILocation(line: 88, column: 27, scope: !333)
!387 = !DILocation(line: 88, column: 43, scope: !333)
!388 = !DILocation(line: 88, column: 10, scope: !333)
!389 = !DILocation(line: 88, column: 8, scope: !333)
!390 = !DILocation(line: 89, column: 7, scope: !391)
!391 = distinct !DILexicalBlock(scope: !353, file: !3, line: 89, column: 6)
!392 = !DILocation(line: 89, column: 6, scope: !353)
!393 = !DILocation(line: 90, column: 3, scope: !391)
!394 = !DILocation(line: 92, column: 18, scope: !353)
!395 = !DILocation(line: 92, column: 25, scope: !353)
!396 = !DILocation(line: 92, column: 2, scope: !353)
!397 = !DILocation(line: 100, column: 14, scope: !353)
!398 = !DILocation(line: 100, column: 21, scope: !353)
!399 = !DILocation(line: 100, column: 2, scope: !353)
!400 = !DILocation(line: 101, column: 17, scope: !353)
!401 = !DILocation(line: 101, column: 2, scope: !353)
!402 = !DILocation(line: 101, column: 9, scope: !353)
!403 = !DILocation(line: 101, column: 15, scope: !353)
!404 = !DILocation(line: 102, column: 19, scope: !353)
!405 = !DILocation(line: 102, column: 2, scope: !353)
!406 = !DILocation(line: 102, column: 9, scope: !353)
!407 = !DILocation(line: 102, column: 17, scope: !353)
!408 = !DILocation(line: 103, column: 2, scope: !353)
!409 = !DILocation(line: 103, column: 9, scope: !353)
!410 = !DILocation(line: 103, column: 17, scope: !353)
!411 = !DILocation(line: 104, column: 6, scope: !412)
!412 = distinct !DILexicalBlock(scope: !353, file: !3, line: 104, column: 6)
!413 = !{i8 0, i8 2}
!414 = !DILocation(line: 104, column: 6, scope: !353)
!415 = !DILocation(line: 105, column: 28, scope: !412)
!416 = !DILocation(line: 105, column: 35, scope: !412)
!417 = !DILocation(line: 105, column: 3, scope: !412)
!418 = !DILocation(line: 106, column: 29, scope: !353)
!419 = !DILocation(line: 106, column: 36, scope: !353)
!420 = !DILocation(line: 106, column: 9, scope: !353)
!421 = !DILocation(line: 106, column: 7, scope: !353)
!422 = !DILocation(line: 107, column: 16, scope: !353)
!423 = !DILocation(line: 107, column: 2, scope: !353)
!424 = !DILocation(line: 108, column: 2, scope: !352)
!425 = !DILocation(line: 108, column: 2, scope: !351)
!426 = !DILocation(line: 108, column: 2, scope: !349)
!427 = !DILocation(line: 108, column: 2, scope: !350)
!428 = !DILocation(line: 0, scope: !351)
!429 = !DILocation(line: 109, column: 7, scope: !430)
!430 = distinct !DILexicalBlock(scope: !431, file: !3, line: 109, column: 7)
!431 = distinct !DILexicalBlock(scope: !351, file: !3, line: 108, column: 60)
!432 = !DILocation(line: 109, column: 12, scope: !430)
!433 = !DILocation(line: 109, column: 21, scope: !430)
!434 = !DILocation(line: 109, column: 18, scope: !430)
!435 = !DILocation(line: 109, column: 25, scope: !430)
!436 = !DILocation(line: 109, column: 28, scope: !430)
!437 = !DILocation(line: 109, column: 33, scope: !430)
!438 = !DILocation(line: 109, column: 44, scope: !430)
!439 = !DILocation(line: 109, column: 41, scope: !430)
!440 = !DILocation(line: 109, column: 7, scope: !431)
!441 = !DILocation(line: 110, column: 20, scope: !442)
!442 = distinct !DILexicalBlock(scope: !430, file: !3, line: 109, column: 51)
!443 = !DILocation(line: 110, column: 4, scope: !442)
!444 = !DILocation(line: 111, column: 20, scope: !442)
!445 = !DILocation(line: 111, column: 36, scope: !442)
!446 = !DILocation(line: 111, column: 4, scope: !442)
!447 = !DILocation(line: 112, column: 4, scope: !442)
!448 = !DILocation(line: 114, column: 2, scope: !431)
!449 = distinct !{!449, !424, !450, !451, !452}
!450 = !DILocation(line: 114, column: 2, scope: !352)
!451 = !{!"llvm.loop.mustprogress"}
!452 = !{!"llvm.loop.unroll.disable"}
!453 = !DILocation(line: 115, column: 21, scope: !353)
!454 = !DILocation(line: 115, column: 28, scope: !353)
!455 = !DILocation(line: 115, column: 41, scope: !353)
!456 = !DILocation(line: 115, column: 2, scope: !353)
!457 = !DILocation(line: 116, column: 18, scope: !353)
!458 = !DILocation(line: 116, column: 2, scope: !353)
!459 = !DILocation(line: 117, column: 13, scope: !353)
!460 = !DILocation(line: 117, column: 20, scope: !353)
!461 = !DILocation(line: 117, column: 2, scope: !353)
!462 = !DILocation(line: 118, column: 17, scope: !353)
!463 = !DILocation(line: 118, column: 24, scope: !353)
!464 = !DILocation(line: 118, column: 33, scope: !353)
!465 = !DILocation(line: 118, column: 40, scope: !353)
!466 = !DILocation(line: 118, column: 2, scope: !353)
!467 = !DILocation(line: 119, column: 2, scope: !353)
!468 = !DILocation(line: 119, column: 9, scope: !353)
!469 = !DILocation(line: 119, column: 22, scope: !353)
!470 = !DILocation(line: 120, column: 15, scope: !353)
!471 = !DILocation(line: 120, column: 22, scope: !353)
!472 = !DILocation(line: 120, column: 2, scope: !353)
!473 = !DILocation(line: 121, column: 21, scope: !353)
!474 = !DILocation(line: 121, column: 28, scope: !353)
!475 = !DILocation(line: 121, column: 2, scope: !353)
!476 = !DILocation(line: 123, column: 2, scope: !353)
!477 = !DILocation(line: 124, column: 1, scope: !353)
!478 = distinct !DISubprogram(name: "schedule_work", scope: !12, file: !12, line: 621, type: !479, scopeLine: 622, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !481)
!479 = !DISubroutineType(types: !480)
!480 = !{!336, !208}
!481 = !{!482}
!482 = !DILocalVariable(name: "work", arg: 1, scope: !478, file: !12, line: 621, type: !208)
!483 = !DILocation(line: 621, column: 54, scope: !478)
!484 = !DILocation(line: 623, column: 20, scope: !478)
!485 = !DILocation(line: 623, column: 31, scope: !478)
!486 = !DILocation(line: 623, column: 9, scope: !478)
!487 = !DILocation(line: 623, column: 2, scope: !478)
!488 = distinct !DISubprogram(name: "mb_cache_shrink", scope: !3, file: !3, line: 303, type: !489, scopeLine: 305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !491)
!489 = !DISubroutineType(types: !490)
!490 = !{!84, !113, !84}
!491 = !{!492, !493, !494, !495, !496}
!492 = !DILocalVariable(name: "cache", arg: 1, scope: !488, file: !3, line: 303, type: !113)
!493 = !DILocalVariable(name: "nr_to_scan", arg: 2, scope: !488, file: !3, line: 304, type: !84)
!494 = !DILocalVariable(name: "entry", scope: !488, file: !3, line: 306, type: !54)
!495 = !DILocalVariable(name: "shrunk", scope: !488, file: !3, line: 307, type: !84)
!496 = !DILocalVariable(name: "__mptr", scope: !497, file: !3, line: 311, type: !53)
!497 = distinct !DILexicalBlock(scope: !498, file: !3, line: 311, column: 11)
!498 = distinct !DILexicalBlock(scope: !488, file: !3, line: 310, column: 54)
!499 = !DILocation(line: 303, column: 55, scope: !488)
!500 = !DILocation(line: 304, column: 24, scope: !488)
!501 = !DILocation(line: 306, column: 2, scope: !488)
!502 = !DILocation(line: 306, column: 25, scope: !488)
!503 = !DILocation(line: 307, column: 2, scope: !488)
!504 = !DILocation(line: 307, column: 16, scope: !488)
!505 = !DILocation(line: 309, column: 13, scope: !488)
!506 = !DILocation(line: 309, column: 20, scope: !488)
!507 = !DILocation(line: 309, column: 2, scope: !488)
!508 = !DILocation(line: 310, column: 2, scope: !488)
!509 = !DILocation(line: 310, column: 19, scope: !488)
!510 = !DILocation(line: 310, column: 22, scope: !488)
!511 = !DILocation(line: 310, column: 38, scope: !488)
!512 = !DILocation(line: 310, column: 45, scope: !488)
!513 = !DILocation(line: 310, column: 26, scope: !488)
!514 = !DILocation(line: 310, column: 25, scope: !488)
!515 = !DILocation(line: 0, scope: !488)
!516 = !DILocation(line: 311, column: 11, scope: !497)
!517 = !DILocation(line: 311, column: 11, scope: !498)
!518 = !DILocation(line: 311, column: 9, scope: !498)
!519 = !DILocation(line: 314, column: 7, scope: !520)
!520 = distinct !DILexicalBlock(scope: !498, file: !3, line: 314, column: 7)
!521 = !DILocation(line: 314, column: 51, scope: !520)
!522 = !DILocation(line: 315, column: 23, scope: !520)
!523 = !DILocation(line: 315, column: 30, scope: !520)
!524 = !DILocation(line: 315, column: 7, scope: !520)
!525 = !DILocation(line: 315, column: 46, scope: !520)
!526 = !DILocation(line: 314, column: 7, scope: !498)
!527 = !DILocation(line: 316, column: 33, scope: !528)
!528 = distinct !DILexicalBlock(scope: !520, file: !3, line: 315, column: 52)
!529 = !DILocation(line: 316, column: 40, scope: !528)
!530 = !DILocation(line: 316, column: 4, scope: !528)
!531 = !DILocation(line: 317, column: 20, scope: !528)
!532 = !DILocation(line: 317, column: 27, scope: !528)
!533 = !DILocation(line: 317, column: 36, scope: !528)
!534 = !DILocation(line: 317, column: 43, scope: !528)
!535 = !DILocation(line: 317, column: 4, scope: !528)
!536 = !DILocation(line: 318, column: 4, scope: !528)
!537 = distinct !{!537, !508, !538, !451, !452}
!538 = !DILocation(line: 327, column: 2, scope: !488)
!539 = !DILocation(line: 320, column: 18, scope: !498)
!540 = !DILocation(line: 320, column: 25, scope: !498)
!541 = !DILocation(line: 320, column: 3, scope: !498)
!542 = !DILocation(line: 321, column: 3, scope: !498)
!543 = !DILocation(line: 321, column: 10, scope: !498)
!544 = !DILocation(line: 321, column: 23, scope: !498)
!545 = !DILocation(line: 322, column: 16, scope: !498)
!546 = !DILocation(line: 322, column: 23, scope: !498)
!547 = !DILocation(line: 322, column: 3, scope: !498)
!548 = !DILocation(line: 323, column: 25, scope: !498)
!549 = !DILocation(line: 323, column: 32, scope: !498)
!550 = !DILocation(line: 323, column: 3, scope: !498)
!551 = !DILocation(line: 324, column: 9, scope: !498)
!552 = !DILocation(line: 325, column: 3, scope: !553)
!553 = distinct !DILexicalBlock(scope: !498, file: !3, line: 325, column: 3)
!554 = !DILocation(line: 326, column: 14, scope: !498)
!555 = !DILocation(line: 326, column: 21, scope: !498)
!556 = !DILocation(line: 326, column: 3, scope: !498)
!557 = !DILocation(line: 328, column: 15, scope: !488)
!558 = !DILocation(line: 328, column: 22, scope: !488)
!559 = !DILocation(line: 328, column: 2, scope: !488)
!560 = !DILocation(line: 330, column: 9, scope: !488)
!561 = !DILocation(line: 331, column: 1, scope: !488)
!562 = !DILocation(line: 330, column: 2, scope: !488)
!563 = !DISubprogram(name: "kmem_cache_alloc", scope: !43, file: !43, line: 500, type: !564, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!564 = !DISubroutineType(types: !565)
!565 = !{!53, !320, !89}
!566 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !567, file: !567, line: 35, type: !568, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !570)
!567 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!568 = !DISubroutineType(types: !569)
!569 = !{null, !62}
!570 = !{!571}
!571 = !DILocalVariable(name: "list", arg: 1, scope: !566, file: !567, line: 35, type: !62)
!572 = !DILocation(line: 35, column: 53, scope: !566)
!573 = !DILocation(line: 37, column: 2, scope: !566)
!574 = !DILocation(line: 37, column: 2, scope: !575)
!575 = distinct !DILexicalBlock(scope: !566, file: !567, line: 37, column: 2)
!576 = !DILocation(line: 37, column: 2, scope: !577)
!577 = distinct !DILexicalBlock(scope: !575, file: !567, line: 37, column: 2)
!578 = !DILocation(line: 37, column: 2, scope: !579)
!579 = distinct !DILexicalBlock(scope: !575, file: !567, line: 37, column: 2)
!580 = !DILocation(line: 38, column: 2, scope: !566)
!581 = !DILocation(line: 38, column: 2, scope: !582)
!582 = distinct !DILexicalBlock(scope: !566, file: !567, line: 38, column: 2)
!583 = !DILocation(line: 38, column: 2, scope: !584)
!584 = distinct !DILexicalBlock(scope: !582, file: !567, line: 38, column: 2)
!585 = !DILocation(line: 38, column: 2, scope: !586)
!586 = distinct !DILexicalBlock(scope: !582, file: !567, line: 38, column: 2)
!587 = !DILocation(line: 39, column: 1, scope: !566)
!588 = distinct !DISubprogram(name: "atomic_set", scope: !589, file: !589, line: 65, type: !590, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !593)
!589 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!590 = !DISubroutineType(types: !591)
!591 = !{null, !592, !77}
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!593 = !{!594, !595}
!594 = !DILocalVariable(name: "v", arg: 1, scope: !588, file: !589, line: 65, type: !592)
!595 = !DILocalVariable(name: "i", arg: 2, scope: !588, file: !589, line: 65, type: !77)
!596 = !DILocation(line: 65, column: 22, scope: !588)
!597 = !DILocation(line: 65, column: 29, scope: !588)
!598 = !DILocation(line: 67, column: 26, scope: !588)
!599 = !DILocation(line: 67, column: 2, scope: !588)
!600 = !DILocation(line: 68, column: 17, scope: !588)
!601 = !DILocation(line: 68, column: 20, scope: !588)
!602 = !DILocation(line: 68, column: 2, scope: !588)
!603 = !DILocation(line: 69, column: 1, scope: !588)
!604 = distinct !DISubprogram(name: "set_bit", scope: !605, file: !605, line: 26, type: !606, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !610)
!605 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!606 = !DISubroutineType(types: !607)
!607 = !{null, !99, !608}
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !84)
!610 = !{!611, !612}
!611 = !DILocalVariable(name: "nr", arg: 1, scope: !604, file: !605, line: 26, type: !99)
!612 = !DILocalVariable(name: "addr", arg: 2, scope: !604, file: !605, line: 26, type: !608)
!613 = !DILocation(line: 26, column: 42, scope: !604)
!614 = !DILocation(line: 26, column: 70, scope: !604)
!615 = !DILocation(line: 28, column: 26, scope: !604)
!616 = !DILocation(line: 28, column: 33, scope: !604)
!617 = !DILocation(line: 28, column: 31, scope: !604)
!618 = !DILocation(line: 28, column: 2, scope: !604)
!619 = !DILocation(line: 29, column: 15, scope: !604)
!620 = !DILocation(line: 29, column: 19, scope: !604)
!621 = !DILocation(line: 29, column: 2, scope: !604)
!622 = !DILocation(line: 30, column: 1, scope: !604)
!623 = distinct !DISubprogram(name: "mb_cache_entry_head", scope: !3, file: !3, line: 50, type: !624, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !626)
!624 = !DISubroutineType(types: !625)
!625 = !{!117, !113, !79}
!626 = !{!627, !628}
!627 = !DILocalVariable(name: "cache", arg: 1, scope: !623, file: !3, line: 50, type: !113)
!628 = !DILocalVariable(name: "key", arg: 2, scope: !623, file: !3, line: 51, type: !79)
!629 = !DILocation(line: 50, column: 74, scope: !623)
!630 = !DILocation(line: 51, column: 12, scope: !623)
!631 = !DILocation(line: 53, column: 10, scope: !623)
!632 = !DILocation(line: 53, column: 17, scope: !623)
!633 = !DILocation(line: 53, column: 32, scope: !623)
!634 = !DILocation(line: 53, column: 37, scope: !623)
!635 = !DILocation(line: 53, column: 44, scope: !623)
!636 = !DILocation(line: 53, column: 24, scope: !623)
!637 = !DILocation(line: 53, column: 2, scope: !623)
!638 = distinct !DISubprogram(name: "hlist_bl_lock", scope: !66, file: !66, line: 146, type: !639, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !641)
!639 = !DISubroutineType(types: !640)
!640 = !{null, !117}
!641 = !{!642}
!642 = !DILocalVariable(name: "b", arg: 1, scope: !638, file: !66, line: 146, type: !117)
!643 = !DILocation(line: 146, column: 56, scope: !638)
!644 = !DILocation(line: 148, column: 36, scope: !638)
!645 = !DILocation(line: 148, column: 2, scope: !638)
!646 = !DILocation(line: 149, column: 1, scope: !638)
!647 = distinct !DISubprogram(name: "hlist_bl_first", scope: !66, file: !66, line: 57, type: !648, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !650)
!648 = !DISubroutineType(types: !649)
!649 = !{!69, !117}
!650 = !{!651}
!651 = !DILocalVariable(name: "h", arg: 1, scope: !647, file: !66, line: 57, type: !117)
!652 = !DILocation(line: 57, column: 74, scope: !647)
!653 = !DILocation(line: 60, column: 19, scope: !647)
!654 = !DILocation(line: 60, column: 22, scope: !647)
!655 = !DILocation(line: 60, column: 4, scope: !647)
!656 = !DILocation(line: 60, column: 28, scope: !647)
!657 = !DILocation(line: 59, column: 9, scope: !647)
!658 = !DILocation(line: 59, column: 2, scope: !647)
!659 = distinct !DISubprogram(name: "hlist_bl_unlock", scope: !66, file: !66, line: 151, type: !639, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !660)
!660 = !{!661}
!661 = !DILocalVariable(name: "b", arg: 1, scope: !659, file: !66, line: 151, type: !117)
!662 = !DILocation(line: 151, column: 58, scope: !659)
!663 = !DILocation(line: 153, column: 40, scope: !659)
!664 = !DILocation(line: 153, column: 2, scope: !659)
!665 = !DILocation(line: 154, column: 1, scope: !659)
!666 = !DISubprogram(name: "kmem_cache_free", scope: !43, file: !43, line: 503, type: !667, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!667 = !DISubroutineType(types: !668)
!668 = !{null, !320, !53}
!669 = distinct !DISubprogram(name: "hlist_bl_add_head", scope: !66, file: !66, line: 77, type: !670, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !672)
!670 = !DISubroutineType(types: !671)
!671 = !{null, !69, !117}
!672 = !{!673, !674, !675}
!673 = !DILocalVariable(name: "n", arg: 1, scope: !669, file: !66, line: 77, type: !69)
!674 = !DILocalVariable(name: "h", arg: 2, scope: !669, file: !66, line: 78, type: !117)
!675 = !DILocalVariable(name: "first", scope: !669, file: !66, line: 80, type: !69)
!676 = !DILocation(line: 77, column: 60, scope: !669)
!677 = !DILocation(line: 78, column: 28, scope: !669)
!678 = !DILocation(line: 80, column: 2, scope: !669)
!679 = !DILocation(line: 80, column: 24, scope: !669)
!680 = !DILocation(line: 80, column: 47, scope: !669)
!681 = !DILocation(line: 80, column: 32, scope: !669)
!682 = !DILocation(line: 82, column: 12, scope: !669)
!683 = !DILocation(line: 82, column: 2, scope: !669)
!684 = !DILocation(line: 82, column: 5, scope: !669)
!685 = !DILocation(line: 82, column: 10, scope: !669)
!686 = !DILocation(line: 83, column: 6, scope: !687)
!687 = distinct !DILexicalBlock(scope: !669, file: !66, line: 83, column: 6)
!688 = !DILocation(line: 83, column: 6, scope: !669)
!689 = !DILocation(line: 84, column: 19, scope: !687)
!690 = !DILocation(line: 84, column: 22, scope: !687)
!691 = !DILocation(line: 84, column: 3, scope: !687)
!692 = !DILocation(line: 84, column: 10, scope: !687)
!693 = !DILocation(line: 84, column: 16, scope: !687)
!694 = !DILocation(line: 85, column: 14, scope: !669)
!695 = !DILocation(line: 85, column: 17, scope: !669)
!696 = !DILocation(line: 85, column: 2, scope: !669)
!697 = !DILocation(line: 85, column: 5, scope: !669)
!698 = !DILocation(line: 85, column: 11, scope: !669)
!699 = !DILocation(line: 86, column: 21, scope: !669)
!700 = !DILocation(line: 86, column: 24, scope: !669)
!701 = !DILocation(line: 86, column: 2, scope: !669)
!702 = !DILocation(line: 87, column: 1, scope: !669)
!703 = distinct !DISubprogram(name: "spin_lock", scope: !704, file: !704, line: 349, type: !705, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !708)
!704 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!705 = !DISubroutineType(types: !706)
!706 = !{null, !707}
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!708 = !{!709}
!709 = !DILocalVariable(name: "lock", arg: 1, scope: !703, file: !704, line: 349, type: !707)
!710 = !DILocation(line: 349, column: 51, scope: !703)
!711 = !DILocation(line: 351, column: 2, scope: !703)
!712 = !DILocation(line: 352, column: 1, scope: !703)
!713 = distinct !DISubprogram(name: "list_add_tail", scope: !567, file: !567, line: 181, type: !714, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !716)
!714 = !DISubroutineType(types: !715)
!715 = !{null, !62, !62}
!716 = !{!717, !718}
!717 = !DILocalVariable(name: "new", arg: 1, scope: !713, file: !567, line: 181, type: !62)
!718 = !DILocalVariable(name: "head", arg: 2, scope: !713, file: !567, line: 181, type: !62)
!719 = !DILocation(line: 181, column: 52, scope: !713)
!720 = !DILocation(line: 181, column: 75, scope: !713)
!721 = !DILocation(line: 183, column: 13, scope: !713)
!722 = !DILocation(line: 183, column: 18, scope: !713)
!723 = !DILocation(line: 183, column: 24, scope: !713)
!724 = !DILocation(line: 183, column: 30, scope: !713)
!725 = !DILocation(line: 183, column: 2, scope: !713)
!726 = !DILocation(line: 184, column: 1, scope: !713)
!727 = distinct !DISubprogram(name: "spin_unlock", scope: !704, file: !704, line: 389, type: !705, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !728)
!728 = !{!729}
!729 = !DILocalVariable(name: "lock", arg: 1, scope: !727, file: !704, line: 389, type: !707)
!730 = !DILocation(line: 389, column: 53, scope: !727)
!731 = !DILocation(line: 391, column: 2, scope: !727)
!732 = !DILocation(line: 392, column: 1, scope: !727)
!733 = distinct !DISubprogram(name: "mb_cache_entry_put", scope: !6, file: !6, line: 48, type: !734, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !736)
!734 = !DISubroutineType(types: !735)
!735 = !{null, !113, !54}
!736 = !{!737, !738, !739}
!737 = !DILocalVariable(name: "cache", arg: 1, scope: !733, file: !6, line: 48, type: !113)
!738 = !DILocalVariable(name: "entry", arg: 2, scope: !733, file: !6, line: 49, type: !54)
!739 = !DILocalVariable(name: "cnt", scope: !733, file: !6, line: 51, type: !7)
!740 = !DILocation(line: 48, column: 56, scope: !733)
!741 = !DILocation(line: 49, column: 34, scope: !733)
!742 = !DILocation(line: 51, column: 2, scope: !733)
!743 = !DILocation(line: 51, column: 15, scope: !733)
!744 = !DILocation(line: 51, column: 40, scope: !733)
!745 = !DILocation(line: 51, column: 47, scope: !733)
!746 = !DILocation(line: 51, column: 21, scope: !733)
!747 = !DILocation(line: 53, column: 6, scope: !748)
!748 = distinct !DILexicalBlock(scope: !733, file: !6, line: 53, column: 6)
!749 = !DILocation(line: 53, column: 10, scope: !748)
!750 = !DILocation(line: 53, column: 6, scope: !733)
!751 = !DILocation(line: 54, column: 7, scope: !752)
!752 = distinct !DILexicalBlock(scope: !753, file: !6, line: 54, column: 7)
!753 = distinct !DILexicalBlock(scope: !748, file: !6, line: 53, column: 15)
!754 = !DILocation(line: 54, column: 11, scope: !752)
!755 = !DILocation(line: 54, column: 7, scope: !753)
!756 = !DILocation(line: 55, column: 17, scope: !752)
!757 = !DILocation(line: 55, column: 24, scope: !752)
!758 = !DILocation(line: 55, column: 4, scope: !752)
!759 = !DILocation(line: 56, column: 3, scope: !753)
!760 = !DILocation(line: 58, column: 24, scope: !733)
!761 = !DILocation(line: 58, column: 31, scope: !733)
!762 = !DILocation(line: 58, column: 2, scope: !733)
!763 = !DILocation(line: 59, column: 1, scope: !733)
!764 = distinct !DISubprogram(name: "__mb_cache_entry_free", scope: !3, file: !3, line: 127, type: !734, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !765)
!765 = !{!766, !767, !768}
!766 = !DILocalVariable(name: "cache", arg: 1, scope: !764, file: !3, line: 127, type: !113)
!767 = !DILocalVariable(name: "entry", arg: 2, scope: !764, file: !3, line: 127, type: !54)
!768 = !DILocalVariable(name: "head", scope: !764, file: !3, line: 129, type: !117)
!769 = !DILocation(line: 127, column: 45, scope: !764)
!770 = !DILocation(line: 127, column: 75, scope: !764)
!771 = !DILocation(line: 129, column: 2, scope: !764)
!772 = !DILocation(line: 129, column: 24, scope: !764)
!773 = !DILocation(line: 131, column: 29, scope: !764)
!774 = !DILocation(line: 131, column: 36, scope: !764)
!775 = !DILocation(line: 131, column: 43, scope: !764)
!776 = !DILocation(line: 131, column: 9, scope: !764)
!777 = !DILocation(line: 131, column: 7, scope: !764)
!778 = !DILocation(line: 132, column: 16, scope: !764)
!779 = !DILocation(line: 132, column: 2, scope: !764)
!780 = !DILocation(line: 133, column: 16, scope: !764)
!781 = !DILocation(line: 133, column: 23, scope: !764)
!782 = !DILocation(line: 133, column: 2, scope: !764)
!783 = !DILocation(line: 134, column: 18, scope: !764)
!784 = !DILocation(line: 134, column: 2, scope: !764)
!785 = !DILocation(line: 135, column: 18, scope: !764)
!786 = !DILocation(line: 135, column: 34, scope: !764)
!787 = !DILocation(line: 135, column: 2, scope: !764)
!788 = !DILocation(line: 136, column: 1, scope: !764)
!789 = distinct !DISubprogram(name: "hlist_bl_del", scope: !66, file: !66, line: 131, type: !790, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !792)
!790 = !DISubroutineType(types: !791)
!791 = !{null, !69}
!792 = !{!793}
!793 = !DILocalVariable(name: "n", arg: 1, scope: !789, file: !66, line: 131, type: !69)
!794 = !DILocation(line: 131, column: 55, scope: !789)
!795 = !DILocation(line: 133, column: 17, scope: !789)
!796 = !DILocation(line: 133, column: 2, scope: !789)
!797 = !DILocation(line: 134, column: 2, scope: !789)
!798 = !DILocation(line: 134, column: 5, scope: !789)
!799 = !DILocation(line: 134, column: 10, scope: !789)
!800 = !DILocation(line: 135, column: 2, scope: !789)
!801 = !DILocation(line: 135, column: 5, scope: !789)
!802 = !DILocation(line: 135, column: 11, scope: !789)
!803 = !DILocation(line: 136, column: 1, scope: !789)
!804 = distinct !DISubprogram(name: "mb_cache_entry_wait_unused", scope: !3, file: !3, line: 146, type: !805, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !807)
!805 = !DISubroutineType(types: !806)
!806 = !{null, !54}
!807 = !{!808, !809, !818, !840, !841, !845}
!808 = !DILocalVariable(name: "entry", arg: 1, scope: !804, file: !3, line: 146, type: !54)
!809 = !DILocalVariable(name: "__wq_head", scope: !810, file: !3, line: 148, type: !812)
!810 = distinct !DILexicalBlock(scope: !811, file: !3, line: 148, column: 2)
!811 = distinct !DILexicalBlock(scope: !804, file: !3, line: 148, column: 2)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !814, line: 37, size: 192, elements: !815)
!814 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!815 = !{!816, !817}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !813, file: !814, line: 38, baseType: !124, size: 32)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !813, file: !814, line: 39, baseType: !58, size: 128, offset: 64)
!818 = !DILocalVariable(name: "__wbq_entry", scope: !810, file: !3, line: 148, type: !819)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_bit_queue_entry", file: !820, line: 16, size: 512, elements: !821)
!820 = !DIFile(filename: "./include/linux/wait_bit.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ef5555205db8da6167c7f65e9d04af17")
!821 = !{!822, !828}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !819, file: !820, line: 17, baseType: !823, size: 192)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_bit_key", file: !820, line: 10, size: 192, elements: !824)
!824 = !{!825, !826, !827}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !823, file: !820, line: 11, baseType: !53, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !823, file: !820, line: 12, baseType: !77, size: 32, offset: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !823, file: !820, line: 13, baseType: !84, size: 64, offset: 128)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "wq_entry", scope: !819, file: !820, line: 18, baseType: !829, size: 320, offset: 192)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !814, line: 30, size: 320, elements: !830)
!830 = !{!831, !832, !833, !839}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !829, file: !814, line: 31, baseType: !7, size: 32)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !829, file: !814, line: 32, baseType: !53, size: 64, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !829, file: !814, line: 33, baseType: !834, size: 64, offset: 128)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !814, line: 16, baseType: !835)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DISubroutineType(types: !837)
!837 = !{!77, !838, !7, !77, !53}
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !829, file: !814, line: 34, baseType: !58, size: 128, offset: 192)
!840 = !DILocalVariable(name: "__ret", scope: !810, file: !3, line: 148, type: !99)
!841 = !DILocalVariable(name: "__int", scope: !842, file: !3, line: 148, type: !99)
!842 = distinct !DILexicalBlock(scope: !843, file: !3, line: 148, column: 2)
!843 = distinct !DILexicalBlock(scope: !844, file: !3, line: 148, column: 2)
!844 = distinct !DILexicalBlock(scope: !810, file: !3, line: 148, column: 2)
!845 = !DILabel(scope: !810, name: "__out", file: !3, line: 148)
!846 = !DILocation(line: 146, column: 56, scope: !804)
!847 = !DILocation(line: 148, column: 2, scope: !804)
!848 = !DILocation(line: 148, column: 2, scope: !811)
!849 = !DILocation(line: 148, column: 2, scope: !850)
!850 = distinct !DILexicalBlock(scope: !811, file: !3, line: 148, column: 2)
!851 = !DILocation(line: 148, column: 2, scope: !852)
!852 = distinct !DILexicalBlock(scope: !811, file: !3, line: 148, column: 2)
!853 = !DILocation(line: 148, column: 2, scope: !810)
!854 = !DILocation(line: 148, column: 2, scope: !842)
!855 = !DILocation(line: 148, column: 2, scope: !856)
!856 = distinct !DILexicalBlock(scope: !842, file: !3, line: 148, column: 2)
!857 = !DILocation(line: 148, column: 2, scope: !843)
!858 = distinct !{!858, !859, !859, !452}
!859 = !DILocation(line: 148, column: 2, scope: !844)
!860 = !DILocation(line: 149, column: 1, scope: !804)
!861 = !DILocation(line: 112, column: 2, scope: !862)
!862 = distinct !DILexicalBlock(scope: !302, file: !303, line: 112, column: 2)
!863 = !DILocation(line: 112, column: 2, scope: !302)
!864 = !DILocation(line: 113, column: 1, scope: !302)
!865 = distinct !DISubprogram(name: "atomic_read", scope: !589, file: !589, line: 30, type: !866, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !870)
!866 = !DISubroutineType(types: !867)
!867 = !{!77, !868}
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!870 = !{!871}
!871 = !DILocalVariable(name: "v", arg: 1, scope: !865, file: !589, line: 30, type: !868)
!872 = !DILocation(line: 30, column: 29, scope: !865)
!873 = !DILocation(line: 32, column: 25, scope: !865)
!874 = !DILocation(line: 32, column: 2, scope: !865)
!875 = !DILocation(line: 33, column: 25, scope: !865)
!876 = !DILocation(line: 33, column: 9, scope: !865)
!877 = !DILocation(line: 33, column: 2, scope: !865)
!878 = !DISubprogram(name: "__var_waitqueue", scope: !820, file: !820, line: 240, type: !879, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!879 = !DISubroutineType(types: !880)
!880 = !{!881, !53}
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !814, line: 41, baseType: !813)
!883 = !DISubprogram(name: "init_wait_var_entry", scope: !820, file: !820, line: 238, type: !884, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!884 = !DISubroutineType(types: !885)
!885 = !{null, !886, !53, !77}
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!887 = !DISubprogram(name: "prepare_to_wait_event", scope: !814, file: !814, line: 1199, type: !888, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!888 = !DISubroutineType(types: !889)
!889 = !{!99, !812, !838, !77}
!890 = !DISubprogram(name: "schedule", scope: !307, file: !307, line: 303, type: !262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!891 = !DISubprogram(name: "finish_wait", scope: !814, file: !814, line: 1200, type: !892, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!892 = !DISubroutineType(types: !893)
!893 = !{null, !812, !838}
!894 = distinct !DISubprogram(name: "mb_cache_entry_find_first", scope: !3, file: !3, line: 192, type: !895, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !897)
!895 = !DISubroutineType(types: !896)
!896 = !{!54, !113, !79}
!897 = !{!898, !899}
!898 = !DILocalVariable(name: "cache", arg: 1, scope: !894, file: !3, line: 192, type: !113)
!899 = !DILocalVariable(name: "key", arg: 2, scope: !894, file: !3, line: 193, type: !79)
!900 = !DILocation(line: 192, column: 67, scope: !894)
!901 = !DILocation(line: 193, column: 12, scope: !894)
!902 = !DILocation(line: 195, column: 22, scope: !894)
!903 = !DILocation(line: 195, column: 35, scope: !894)
!904 = !DILocation(line: 195, column: 9, scope: !894)
!905 = !DILocation(line: 195, column: 2, scope: !894)
!906 = distinct !DISubprogram(name: "__entry_find", scope: !3, file: !3, line: 152, type: !907, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !909)
!907 = !DISubroutineType(types: !908)
!908 = !{!54, !113, !54, !79}
!909 = !{!910, !911, !912, !913, !914, !915, !916, !919}
!910 = !DILocalVariable(name: "cache", arg: 1, scope: !906, file: !3, line: 152, type: !113)
!911 = !DILocalVariable(name: "entry", arg: 2, scope: !906, file: !3, line: 153, type: !54)
!912 = !DILocalVariable(name: "key", arg: 3, scope: !906, file: !3, line: 154, type: !79)
!913 = !DILocalVariable(name: "old_entry", scope: !906, file: !3, line: 156, type: !54)
!914 = !DILocalVariable(name: "node", scope: !906, file: !3, line: 157, type: !69)
!915 = !DILocalVariable(name: "head", scope: !906, file: !3, line: 158, type: !117)
!916 = !DILocalVariable(name: "__mptr", scope: !917, file: !3, line: 167, type: !53)
!917 = distinct !DILexicalBlock(scope: !918, file: !3, line: 167, column: 11)
!918 = distinct !DILexicalBlock(scope: !906, file: !3, line: 166, column: 15)
!919 = !DILabel(scope: !906, name: "out", file: !3, line: 176)
!920 = !DILocation(line: 152, column: 61, scope: !906)
!921 = !DILocation(line: 153, column: 32, scope: !906)
!922 = !DILocation(line: 154, column: 13, scope: !906)
!923 = !DILocation(line: 156, column: 2, scope: !906)
!924 = !DILocation(line: 156, column: 25, scope: !906)
!925 = !DILocation(line: 156, column: 37, scope: !906)
!926 = !DILocation(line: 157, column: 2, scope: !906)
!927 = !DILocation(line: 157, column: 24, scope: !906)
!928 = !DILocation(line: 158, column: 2, scope: !906)
!929 = !DILocation(line: 158, column: 24, scope: !906)
!930 = !DILocation(line: 160, column: 29, scope: !906)
!931 = !DILocation(line: 160, column: 36, scope: !906)
!932 = !DILocation(line: 160, column: 9, scope: !906)
!933 = !DILocation(line: 160, column: 7, scope: !906)
!934 = !DILocation(line: 161, column: 16, scope: !906)
!935 = !DILocation(line: 161, column: 2, scope: !906)
!936 = !DILocation(line: 162, column: 6, scope: !937)
!937 = distinct !DILexicalBlock(scope: !906, file: !3, line: 162, column: 6)
!938 = !DILocation(line: 162, column: 12, scope: !937)
!939 = !DILocation(line: 162, column: 35, scope: !937)
!940 = !DILocation(line: 162, column: 42, scope: !937)
!941 = !DILocation(line: 162, column: 16, scope: !937)
!942 = !DILocation(line: 162, column: 6, scope: !906)
!943 = !DILocation(line: 163, column: 10, scope: !937)
!944 = !DILocation(line: 163, column: 17, scope: !937)
!945 = !DILocation(line: 163, column: 29, scope: !937)
!946 = !DILocation(line: 163, column: 8, scope: !937)
!947 = !DILocation(line: 163, column: 3, scope: !937)
!948 = !DILocation(line: 165, column: 25, scope: !937)
!949 = !DILocation(line: 165, column: 10, scope: !937)
!950 = !DILocation(line: 165, column: 8, scope: !937)
!951 = !DILocation(line: 166, column: 2, scope: !906)
!952 = !DILocation(line: 166, column: 9, scope: !906)
!953 = !DILocation(line: 167, column: 11, scope: !917)
!954 = !DILocation(line: 167, column: 11, scope: !918)
!955 = !DILocation(line: 167, column: 9, scope: !918)
!956 = !DILocation(line: 169, column: 7, scope: !957)
!957 = distinct !DILexicalBlock(scope: !918, file: !3, line: 169, column: 7)
!958 = !DILocation(line: 169, column: 14, scope: !957)
!959 = !DILocation(line: 169, column: 23, scope: !957)
!960 = !DILocation(line: 169, column: 20, scope: !957)
!961 = !DILocation(line: 169, column: 27, scope: !957)
!962 = !DILocation(line: 170, column: 7, scope: !957)
!963 = !DILocation(line: 170, column: 49, scope: !957)
!964 = !DILocation(line: 171, column: 28, scope: !957)
!965 = !DILocation(line: 171, column: 35, scope: !957)
!966 = !DILocation(line: 171, column: 7, scope: !957)
!967 = !DILocation(line: 169, column: 7, scope: !918)
!968 = !DILocation(line: 172, column: 4, scope: !957)
!969 = !DILocation(line: 173, column: 10, scope: !918)
!970 = !DILocation(line: 173, column: 16, scope: !918)
!971 = !DILocation(line: 173, column: 8, scope: !918)
!972 = distinct !{!972, !951, !973, !451, !452}
!973 = !DILocation(line: 174, column: 2, scope: !906)
!974 = !DILocation(line: 175, column: 8, scope: !906)
!975 = !DILocation(line: 175, column: 2, scope: !906)
!976 = !DILocation(line: 176, column: 1, scope: !906)
!977 = !DILocation(line: 177, column: 18, scope: !906)
!978 = !DILocation(line: 177, column: 2, scope: !906)
!979 = !DILocation(line: 178, column: 6, scope: !980)
!980 = distinct !DILexicalBlock(scope: !906, file: !3, line: 178, column: 6)
!981 = !DILocation(line: 178, column: 6, scope: !906)
!982 = !DILocation(line: 179, column: 22, scope: !980)
!983 = !DILocation(line: 179, column: 29, scope: !980)
!984 = !DILocation(line: 179, column: 3, scope: !980)
!985 = !DILocation(line: 181, column: 9, scope: !906)
!986 = !DILocation(line: 182, column: 1, scope: !906)
!987 = !DILocation(line: 181, column: 2, scope: !906)
!988 = distinct !DISubprogram(name: "mb_cache_entry_find_next", scope: !3, file: !3, line: 209, type: !989, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !991)
!989 = !DISubroutineType(types: !990)
!990 = !{!54, !113, !54}
!991 = !{!992, !993}
!992 = !DILocalVariable(name: "cache", arg: 1, scope: !988, file: !3, line: 209, type: !113)
!993 = !DILocalVariable(name: "entry", arg: 2, scope: !988, file: !3, line: 210, type: !54)
!994 = !DILocation(line: 209, column: 66, scope: !988)
!995 = !DILocation(line: 210, column: 30, scope: !988)
!996 = !DILocation(line: 212, column: 22, scope: !988)
!997 = !DILocation(line: 212, column: 29, scope: !988)
!998 = !DILocation(line: 212, column: 36, scope: !988)
!999 = !DILocation(line: 212, column: 43, scope: !988)
!1000 = !DILocation(line: 212, column: 9, scope: !988)
!1001 = !DILocation(line: 212, column: 2, scope: !988)
!1002 = distinct !DISubprogram(name: "mb_cache_entry_get", scope: !3, file: !3, line: 222, type: !1003, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1005)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!54, !113, !79, !86}
!1005 = !{!1006, !1007, !1008, !1009, !1010, !1011, !1012, !1017}
!1006 = !DILocalVariable(name: "cache", arg: 1, scope: !1002, file: !3, line: 222, type: !113)
!1007 = !DILocalVariable(name: "key", arg: 2, scope: !1002, file: !3, line: 222, type: !79)
!1008 = !DILocalVariable(name: "value", arg: 3, scope: !1002, file: !3, line: 223, type: !86)
!1009 = !DILocalVariable(name: "node", scope: !1002, file: !3, line: 225, type: !69)
!1010 = !DILocalVariable(name: "head", scope: !1002, file: !3, line: 226, type: !117)
!1011 = !DILocalVariable(name: "entry", scope: !1002, file: !3, line: 227, type: !54)
!1012 = !DILocalVariable(name: "__mptr", scope: !1013, file: !3, line: 231, type: !53)
!1013 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 231, column: 2)
!1014 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 231, column: 2)
!1015 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 231, column: 2)
!1016 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 231, column: 2)
!1017 = !DILabel(scope: !1002, name: "out", file: !3, line: 237)
!1018 = !DILocation(line: 222, column: 60, scope: !1002)
!1019 = !DILocation(line: 222, column: 71, scope: !1002)
!1020 = !DILocation(line: 223, column: 12, scope: !1002)
!1021 = !DILocation(line: 225, column: 2, scope: !1002)
!1022 = !DILocation(line: 225, column: 24, scope: !1002)
!1023 = !DILocation(line: 226, column: 2, scope: !1002)
!1024 = !DILocation(line: 226, column: 24, scope: !1002)
!1025 = !DILocation(line: 227, column: 2, scope: !1002)
!1026 = !DILocation(line: 227, column: 25, scope: !1002)
!1027 = !DILocation(line: 229, column: 29, scope: !1002)
!1028 = !DILocation(line: 229, column: 36, scope: !1002)
!1029 = !DILocation(line: 229, column: 9, scope: !1002)
!1030 = !DILocation(line: 229, column: 7, scope: !1002)
!1031 = !DILocation(line: 230, column: 16, scope: !1002)
!1032 = !DILocation(line: 230, column: 2, scope: !1002)
!1033 = !DILocation(line: 231, column: 2, scope: !1016)
!1034 = !DILocation(line: 231, column: 2, scope: !1015)
!1035 = !DILocation(line: 231, column: 2, scope: !1013)
!1036 = !DILocation(line: 231, column: 2, scope: !1014)
!1037 = !DILocation(line: 0, scope: !1015)
!1038 = !DILocation(line: 232, column: 7, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 232, column: 7)
!1040 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 231, column: 58)
!1041 = !DILocation(line: 232, column: 14, scope: !1039)
!1042 = !DILocation(line: 232, column: 23, scope: !1039)
!1043 = !DILocation(line: 232, column: 20, scope: !1039)
!1044 = !DILocation(line: 232, column: 27, scope: !1039)
!1045 = !DILocation(line: 232, column: 30, scope: !1039)
!1046 = !DILocation(line: 232, column: 37, scope: !1039)
!1047 = !DILocation(line: 232, column: 48, scope: !1039)
!1048 = !DILocation(line: 232, column: 45, scope: !1039)
!1049 = !DILocation(line: 232, column: 54, scope: !1039)
!1050 = !DILocation(line: 233, column: 28, scope: !1039)
!1051 = !DILocation(line: 233, column: 35, scope: !1039)
!1052 = !DILocation(line: 233, column: 7, scope: !1039)
!1053 = !DILocation(line: 232, column: 7, scope: !1040)
!1054 = !DILocation(line: 234, column: 4, scope: !1039)
!1055 = !DILocation(line: 235, column: 2, scope: !1040)
!1056 = distinct !{!1056, !1033, !1057, !451, !452}
!1057 = !DILocation(line: 235, column: 2, scope: !1016)
!1058 = !DILocation(line: 236, column: 8, scope: !1002)
!1059 = !DILocation(line: 236, column: 2, scope: !1002)
!1060 = !DILocation(line: 237, column: 1, scope: !1002)
!1061 = !DILocation(line: 238, column: 18, scope: !1002)
!1062 = !DILocation(line: 238, column: 2, scope: !1002)
!1063 = !DILocation(line: 239, column: 9, scope: !1002)
!1064 = !DILocation(line: 240, column: 1, scope: !1002)
!1065 = !DILocation(line: 239, column: 2, scope: !1002)
!1066 = distinct !DISubprogram(name: "atomic_inc_not_zero", scope: !589, file: !589, line: 1522, type: !1067, scopeLine: 1523, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1069)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!336, !592}
!1069 = !{!1070}
!1070 = !DILocalVariable(name: "v", arg: 1, scope: !1066, file: !589, line: 1522, type: !592)
!1071 = !DILocation(line: 1522, column: 31, scope: !1066)
!1072 = !DILocation(line: 1524, column: 2, scope: !1066)
!1073 = !DILocation(line: 1524, column: 2, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1066, file: !589, line: 1524, column: 2)
!1075 = !DILocation(line: 1525, column: 31, scope: !1066)
!1076 = !DILocation(line: 1525, column: 2, scope: !1066)
!1077 = !DILocation(line: 1526, column: 33, scope: !1066)
!1078 = !DILocation(line: 1526, column: 9, scope: !1066)
!1079 = !DILocation(line: 1526, column: 2, scope: !1066)
!1080 = distinct !DISubprogram(name: "mb_cache_entry_delete_or_get", scope: !3, file: !3, line: 254, type: !1003, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1081)
!1081 = !{!1082, !1083, !1084, !1085}
!1082 = !DILocalVariable(name: "cache", arg: 1, scope: !1080, file: !3, line: 254, type: !113)
!1083 = !DILocalVariable(name: "key", arg: 2, scope: !1080, file: !3, line: 255, type: !79)
!1084 = !DILocalVariable(name: "value", arg: 3, scope: !1080, file: !3, line: 255, type: !86)
!1085 = !DILocalVariable(name: "entry", scope: !1080, file: !3, line: 257, type: !54)
!1086 = !DILocation(line: 254, column: 70, scope: !1080)
!1087 = !DILocation(line: 255, column: 15, scope: !1080)
!1088 = !DILocation(line: 255, column: 24, scope: !1080)
!1089 = !DILocation(line: 257, column: 2, scope: !1080)
!1090 = !DILocation(line: 257, column: 25, scope: !1080)
!1091 = !DILocation(line: 259, column: 29, scope: !1080)
!1092 = !DILocation(line: 259, column: 36, scope: !1080)
!1093 = !DILocation(line: 259, column: 41, scope: !1080)
!1094 = !DILocation(line: 259, column: 10, scope: !1080)
!1095 = !DILocation(line: 259, column: 8, scope: !1080)
!1096 = !DILocation(line: 260, column: 7, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 260, column: 6)
!1098 = !DILocation(line: 260, column: 6, scope: !1080)
!1099 = !DILocation(line: 261, column: 3, scope: !1097)
!1100 = !DILocation(line: 267, column: 22, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 267, column: 6)
!1102 = !DILocation(line: 267, column: 29, scope: !1101)
!1103 = !DILocation(line: 267, column: 6, scope: !1101)
!1104 = !DILocation(line: 267, column: 45, scope: !1101)
!1105 = !DILocation(line: 267, column: 6, scope: !1080)
!1106 = !DILocation(line: 268, column: 10, scope: !1101)
!1107 = !DILocation(line: 268, column: 3, scope: !1101)
!1108 = !DILocation(line: 270, column: 13, scope: !1080)
!1109 = !DILocation(line: 270, column: 20, scope: !1080)
!1110 = !DILocation(line: 270, column: 2, scope: !1080)
!1111 = !DILocation(line: 271, column: 19, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 271, column: 6)
!1113 = !DILocation(line: 271, column: 26, scope: !1112)
!1114 = !DILocation(line: 271, column: 7, scope: !1112)
!1115 = !DILocation(line: 271, column: 6, scope: !1080)
!1116 = !DILocation(line: 272, column: 18, scope: !1112)
!1117 = !DILocation(line: 272, column: 25, scope: !1112)
!1118 = !DILocation(line: 272, column: 3, scope: !1112)
!1119 = !DILocation(line: 273, column: 2, scope: !1080)
!1120 = !DILocation(line: 273, column: 9, scope: !1080)
!1121 = !DILocation(line: 273, column: 22, scope: !1080)
!1122 = !DILocation(line: 274, column: 15, scope: !1080)
!1123 = !DILocation(line: 274, column: 22, scope: !1080)
!1124 = !DILocation(line: 274, column: 2, scope: !1080)
!1125 = !DILocation(line: 275, column: 24, scope: !1080)
!1126 = !DILocation(line: 275, column: 31, scope: !1080)
!1127 = !DILocation(line: 275, column: 2, scope: !1080)
!1128 = !DILocation(line: 276, column: 2, scope: !1080)
!1129 = !DILocation(line: 277, column: 1, scope: !1080)
!1130 = distinct !DISubprogram(name: "atomic_cmpxchg", scope: !589, file: !589, line: 1191, type: !1131, scopeLine: 1192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1133)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!77, !592, !77, !77}
!1133 = !{!1134, !1135, !1136}
!1134 = !DILocalVariable(name: "v", arg: 1, scope: !1130, file: !589, line: 1191, type: !592)
!1135 = !DILocalVariable(name: "old", arg: 2, scope: !1130, file: !589, line: 1191, type: !77)
!1136 = !DILocalVariable(name: "new", arg: 3, scope: !1130, file: !589, line: 1191, type: !77)
!1137 = !DILocation(line: 1191, column: 26, scope: !1130)
!1138 = !DILocation(line: 1191, column: 33, scope: !1130)
!1139 = !DILocation(line: 1191, column: 42, scope: !1130)
!1140 = !DILocation(line: 1193, column: 2, scope: !1130)
!1141 = !DILocation(line: 1193, column: 2, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1130, file: !589, line: 1193, column: 2)
!1143 = !DILocation(line: 1194, column: 31, scope: !1130)
!1144 = !DILocation(line: 1194, column: 2, scope: !1130)
!1145 = !DILocation(line: 1195, column: 28, scope: !1130)
!1146 = !DILocation(line: 1195, column: 31, scope: !1130)
!1147 = !DILocation(line: 1195, column: 36, scope: !1130)
!1148 = !DILocation(line: 1195, column: 9, scope: !1130)
!1149 = !DILocation(line: 1195, column: 2, scope: !1130)
!1150 = distinct !DISubprogram(name: "list_empty", scope: !567, file: !567, line: 371, type: !1151, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1155)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!77, !1153}
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!1155 = !{!1156}
!1156 = !DILocalVariable(name: "head", arg: 1, scope: !1150, file: !567, line: 371, type: !1153)
!1157 = !DILocation(line: 371, column: 54, scope: !1150)
!1158 = !DILocation(line: 373, column: 9, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1150, file: !567, line: 373, column: 9)
!1160 = !DILocation(line: 373, column: 9, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1159, file: !567, line: 373, column: 9)
!1162 = !DILocation(line: 373, column: 34, scope: !1150)
!1163 = !DILocation(line: 373, column: 31, scope: !1150)
!1164 = !DILocation(line: 373, column: 2, scope: !1150)
!1165 = distinct !DISubprogram(name: "list_del_init", scope: !567, file: !567, line: 285, type: !568, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1166)
!1166 = !{!1167}
!1167 = !DILocalVariable(name: "entry", arg: 1, scope: !1165, file: !567, line: 285, type: !62)
!1168 = !DILocation(line: 285, column: 52, scope: !1165)
!1169 = !DILocation(line: 287, column: 19, scope: !1165)
!1170 = !DILocation(line: 287, column: 2, scope: !1165)
!1171 = !DILocation(line: 288, column: 17, scope: !1165)
!1172 = !DILocation(line: 288, column: 2, scope: !1165)
!1173 = !DILocation(line: 289, column: 1, scope: !1165)
!1174 = distinct !DISubprogram(name: "mb_cache_entry_touch", scope: !3, file: !3, line: 286, type: !734, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1175)
!1175 = !{!1176, !1177}
!1176 = !DILocalVariable(name: "cache", arg: 1, scope: !1174, file: !3, line: 286, type: !113)
!1177 = !DILocalVariable(name: "entry", arg: 2, scope: !1174, file: !3, line: 287, type: !54)
!1178 = !DILocation(line: 286, column: 44, scope: !1174)
!1179 = !DILocation(line: 287, column: 29, scope: !1174)
!1180 = !DILocation(line: 289, column: 29, scope: !1174)
!1181 = !DILocation(line: 289, column: 36, scope: !1174)
!1182 = !DILocation(line: 289, column: 2, scope: !1174)
!1183 = !DILocation(line: 290, column: 1, scope: !1174)
!1184 = !DILocation(line: 357, column: 38, scope: !234)
!1185 = !DILocation(line: 359, column: 2, scope: !234)
!1186 = !DILocation(line: 359, column: 19, scope: !234)
!1187 = !DILocation(line: 360, column: 2, scope: !234)
!1188 = !DILocation(line: 360, column: 16, scope: !234)
!1189 = !DILocation(line: 360, column: 38, scope: !234)
!1190 = !DILocation(line: 360, column: 35, scope: !234)
!1191 = !DILocation(line: 361, column: 2, scope: !234)
!1192 = !DILocation(line: 361, column: 16, scope: !234)
!1193 = !DILocation(line: 363, column: 10, scope: !234)
!1194 = !DILocation(line: 363, column: 8, scope: !234)
!1195 = !DILocation(line: 364, column: 7, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !234, file: !3, line: 364, column: 6)
!1197 = !DILocation(line: 364, column: 6, scope: !234)
!1198 = !DILocation(line: 365, column: 3, scope: !1196)
!1199 = !DILocation(line: 366, column: 25, scope: !234)
!1200 = !DILocation(line: 366, column: 2, scope: !234)
!1201 = !DILocation(line: 366, column: 9, scope: !234)
!1202 = !DILocation(line: 366, column: 23, scope: !234)
!1203 = !DILocation(line: 367, column: 25, scope: !234)
!1204 = !DILocation(line: 367, column: 38, scope: !234)
!1205 = !DILocation(line: 367, column: 2, scope: !234)
!1206 = !DILocation(line: 367, column: 9, scope: !234)
!1207 = !DILocation(line: 367, column: 23, scope: !234)
!1208 = !DILocation(line: 368, column: 18, scope: !234)
!1209 = !DILocation(line: 368, column: 25, scope: !234)
!1210 = !DILocation(line: 368, column: 2, scope: !234)
!1211 = !DILocation(line: 369, column: 2, scope: !234)
!1212 = !DILocation(line: 369, column: 2, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !234, file: !3, line: 369, column: 2)
!1214 = !DILocation(line: 370, column: 32, scope: !234)
!1215 = !DILocation(line: 370, column: 18, scope: !234)
!1216 = !DILocation(line: 370, column: 2, scope: !234)
!1217 = !DILocation(line: 370, column: 9, scope: !234)
!1218 = !DILocation(line: 370, column: 16, scope: !234)
!1219 = !DILocation(line: 373, column: 7, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !234, file: !3, line: 373, column: 6)
!1221 = !DILocation(line: 373, column: 14, scope: !1220)
!1222 = !DILocation(line: 373, column: 6, scope: !234)
!1223 = !DILocation(line: 374, column: 9, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 373, column: 22)
!1225 = !DILocation(line: 374, column: 3, scope: !1224)
!1226 = !DILocation(line: 375, column: 3, scope: !1224)
!1227 = !DILocation(line: 377, column: 9, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !234, file: !3, line: 377, column: 2)
!1229 = !DILocation(line: 377, column: 7, scope: !1228)
!1230 = !DILocation(line: 377, column: 14, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 377, column: 2)
!1232 = !DILocation(line: 377, column: 18, scope: !1231)
!1233 = !DILocation(line: 377, column: 16, scope: !1231)
!1234 = !DILocation(line: 377, column: 2, scope: !1228)
!1235 = !DILocation(line: 378, column: 3, scope: !1231)
!1236 = !DILocation(line: 377, column: 33, scope: !1231)
!1237 = !DILocation(line: 377, column: 2, scope: !1231)
!1238 = distinct !{!1238, !1234, !1239, !451, !452}
!1239 = !DILocation(line: 378, column: 3, scope: !1228)
!1240 = !DILocation(line: 380, column: 2, scope: !234)
!1241 = !DILocation(line: 380, column: 9, scope: !234)
!1242 = !DILocation(line: 380, column: 18, scope: !234)
!1243 = !DILocation(line: 380, column: 32, scope: !234)
!1244 = !DILocation(line: 381, column: 2, scope: !234)
!1245 = !DILocation(line: 381, column: 9, scope: !234)
!1246 = !DILocation(line: 381, column: 18, scope: !234)
!1247 = !DILocation(line: 381, column: 31, scope: !234)
!1248 = !DILocation(line: 382, column: 2, scope: !234)
!1249 = !DILocation(line: 382, column: 9, scope: !234)
!1250 = !DILocation(line: 382, column: 18, scope: !234)
!1251 = !DILocation(line: 382, column: 24, scope: !234)
!1252 = !DILocation(line: 383, column: 25, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !234, file: !3, line: 383, column: 6)
!1254 = !DILocation(line: 383, column: 32, scope: !1253)
!1255 = !DILocation(line: 383, column: 6, scope: !1253)
!1256 = !DILocation(line: 383, column: 6, scope: !234)
!1257 = !DILocation(line: 384, column: 9, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 383, column: 63)
!1259 = !DILocation(line: 384, column: 16, scope: !1258)
!1260 = !DILocation(line: 384, column: 3, scope: !1258)
!1261 = !DILocation(line: 385, column: 9, scope: !1258)
!1262 = !DILocation(line: 385, column: 3, scope: !1258)
!1263 = !DILocation(line: 386, column: 3, scope: !1258)
!1264 = !DILocation(line: 389, column: 2, scope: !234)
!1265 = !DILocation(line: 389, column: 2, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !234, file: !3, line: 389, column: 2)
!1267 = !DILocation(line: 389, column: 2, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 389, column: 2)
!1269 = !DILocation(line: 391, column: 9, scope: !234)
!1270 = !DILocation(line: 391, column: 2, scope: !234)
!1271 = !DILocation(line: 393, column: 1, scope: !234)
!1272 = !DILocation(line: 394, column: 2, scope: !234)
!1273 = !DILocation(line: 395, column: 1, scope: !234)
!1274 = distinct !DISubprogram(name: "kzalloc", scope: !43, file: !43, line: 719, type: !1275, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1281)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!53, !1277, !89}
!1277 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !59, line: 61, baseType: !1278)
!1278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1279, line: 72, baseType: !1280)
!1279 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1279, line: 16, baseType: !84)
!1281 = !{!1282, !1283}
!1282 = !DILocalVariable(name: "size", arg: 1, scope: !1274, file: !43, line: 719, type: !1277)
!1283 = !DILocalVariable(name: "flags", arg: 2, scope: !1274, file: !43, line: 719, type: !89)
!1284 = !DILocation(line: 719, column: 52, scope: !1274)
!1285 = !DILocation(line: 719, column: 64, scope: !1274)
!1286 = !DILocation(line: 721, column: 17, scope: !1274)
!1287 = !DILocation(line: 721, column: 23, scope: !1274)
!1288 = !DILocation(line: 721, column: 29, scope: !1274)
!1289 = !DILocation(line: 721, column: 9, scope: !1274)
!1290 = !DILocation(line: 721, column: 2, scope: !1274)
!1291 = distinct !DISubprogram(name: "spinlock_check", scope: !704, file: !704, line: 324, type: !1292, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1296)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!1294, !707}
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !133, line: 23, baseType: !132)
!1296 = !{!1297}
!1297 = !DILocalVariable(name: "lock", arg: 1, scope: !1291, file: !704, line: 324, type: !707)
!1298 = !DILocation(line: 324, column: 67, scope: !1291)
!1299 = !DILocation(line: 326, column: 10, scope: !1291)
!1300 = !DILocation(line: 326, column: 16, scope: !1291)
!1301 = !DILocation(line: 326, column: 2, scope: !1291)
!1302 = distinct !DISubprogram(name: "kmalloc_array", scope: !43, file: !43, line: 629, type: !1303, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1305)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!53, !1277, !1277, !89}
!1305 = !{!1306, !1307, !1308, !1309}
!1306 = !DILocalVariable(name: "n", arg: 1, scope: !1302, file: !43, line: 629, type: !1277)
!1307 = !DILocalVariable(name: "size", arg: 2, scope: !1302, file: !43, line: 629, type: !1277)
!1308 = !DILocalVariable(name: "flags", arg: 3, scope: !1302, file: !43, line: 629, type: !89)
!1309 = !DILocalVariable(name: "bytes", scope: !1302, file: !43, line: 631, type: !1277)
!1310 = !DILocation(line: 629, column: 61, scope: !1302)
!1311 = !DILocation(line: 629, column: 71, scope: !1302)
!1312 = !DILocation(line: 629, column: 83, scope: !1302)
!1313 = !DILocation(line: 631, column: 2, scope: !1302)
!1314 = !DILocation(line: 631, column: 9, scope: !1302)
!1315 = !DILocation(line: 633, column: 6, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1302, file: !43, line: 633, column: 6)
!1317 = !DILocation(line: 633, column: 6, scope: !1302)
!1318 = !DILocation(line: 634, column: 3, scope: !1316)
!1319 = !DILocation(line: 635, column: 27, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1302, file: !43, line: 635, column: 6)
!1321 = !DILocation(line: 635, column: 6, scope: !1320)
!1322 = !DILocation(line: 635, column: 30, scope: !1320)
!1323 = !DILocation(line: 635, column: 54, scope: !1320)
!1324 = !DILocation(line: 635, column: 33, scope: !1320)
!1325 = !DILocation(line: 635, column: 6, scope: !1302)
!1326 = !DILocation(line: 636, column: 18, scope: !1320)
!1327 = !DILocation(line: 636, column: 25, scope: !1320)
!1328 = !DILocation(line: 636, column: 10, scope: !1320)
!1329 = !DILocation(line: 636, column: 3, scope: !1320)
!1330 = !DILocation(line: 637, column: 19, scope: !1302)
!1331 = !DILocation(line: 637, column: 26, scope: !1302)
!1332 = !DILocation(line: 637, column: 9, scope: !1302)
!1333 = !DILocation(line: 637, column: 2, scope: !1302)
!1334 = !DILocation(line: 638, column: 1, scope: !1302)
!1335 = !DISubprogram(name: "kfree", scope: !43, file: !43, line: 227, type: !1336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{null, !1338}
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1340 = distinct !DISubprogram(name: "mb_cache_count", scope: !3, file: !3, line: 293, type: !168, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1341)
!1341 = !{!1342, !1343, !1344, !1345}
!1342 = !DILocalVariable(name: "shrink", arg: 1, scope: !1340, file: !3, line: 293, type: !170)
!1343 = !DILocalVariable(name: "sc", arg: 2, scope: !1340, file: !3, line: 294, type: !171)
!1344 = !DILocalVariable(name: "cache", scope: !1340, file: !3, line: 296, type: !113)
!1345 = !DILocalVariable(name: "__mptr", scope: !1346, file: !3, line: 296, type: !53)
!1346 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 296, column: 27)
!1347 = !DILocation(line: 293, column: 54, scope: !1340)
!1348 = !DILocation(line: 294, column: 32, scope: !1340)
!1349 = !DILocation(line: 296, column: 2, scope: !1340)
!1350 = !DILocation(line: 296, column: 19, scope: !1340)
!1351 = !DILocation(line: 296, column: 27, scope: !1346)
!1352 = !DILocation(line: 296, column: 27, scope: !1340)
!1353 = !DILocation(line: 299, column: 9, scope: !1340)
!1354 = !DILocation(line: 299, column: 16, scope: !1340)
!1355 = !DILocation(line: 300, column: 1, scope: !1340)
!1356 = !DILocation(line: 299, column: 2, scope: !1340)
!1357 = distinct !DISubprogram(name: "mb_cache_scan", scope: !3, file: !3, line: 333, type: !168, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1358)
!1358 = !{!1359, !1360, !1361, !1362}
!1359 = !DILocalVariable(name: "shrink", arg: 1, scope: !1357, file: !3, line: 333, type: !170)
!1360 = !DILocalVariable(name: "sc", arg: 2, scope: !1357, file: !3, line: 334, type: !171)
!1361 = !DILocalVariable(name: "cache", scope: !1357, file: !3, line: 336, type: !113)
!1362 = !DILocalVariable(name: "__mptr", scope: !1363, file: !3, line: 336, type: !53)
!1363 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 336, column: 27)
!1364 = !DILocation(line: 333, column: 53, scope: !1357)
!1365 = !DILocation(line: 334, column: 31, scope: !1357)
!1366 = !DILocation(line: 336, column: 2, scope: !1357)
!1367 = !DILocation(line: 336, column: 19, scope: !1357)
!1368 = !DILocation(line: 336, column: 27, scope: !1363)
!1369 = !DILocation(line: 336, column: 27, scope: !1357)
!1370 = !DILocation(line: 338, column: 25, scope: !1357)
!1371 = !DILocation(line: 338, column: 32, scope: !1357)
!1372 = !DILocation(line: 338, column: 36, scope: !1357)
!1373 = !DILocation(line: 338, column: 9, scope: !1357)
!1374 = !DILocation(line: 339, column: 1, scope: !1357)
!1375 = !DILocation(line: 338, column: 2, scope: !1357)
!1376 = !DISubprogram(name: "register_shrinker", scope: !164, file: !164, line: 102, type: !1377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!77, !170, !1379, null}
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!1380 = distinct !DISubprogram(name: "__init_work", scope: !12, file: !12, line: 263, type: !1381, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1383)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{null, !208, !77}
!1383 = !{!1384, !1385}
!1384 = !DILocalVariable(name: "work", arg: 1, scope: !1380, file: !12, line: 263, type: !208)
!1385 = !DILocalVariable(name: "onstack", arg: 2, scope: !1380, file: !12, line: 263, type: !77)
!1386 = !DILocation(line: 263, column: 52, scope: !1380)
!1387 = !DILocation(line: 263, column: 62, scope: !1380)
!1388 = !DILocation(line: 263, column: 73, scope: !1380)
!1389 = distinct !DISubprogram(name: "mb_cache_shrink_worker", scope: !3, file: !3, line: 344, type: !206, scopeLine: 345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1390)
!1390 = !{!1391, !1392, !1393}
!1391 = !DILocalVariable(name: "work", arg: 1, scope: !1389, file: !3, line: 344, type: !208)
!1392 = !DILocalVariable(name: "cache", scope: !1389, file: !3, line: 346, type: !113)
!1393 = !DILocalVariable(name: "__mptr", scope: !1394, file: !3, line: 346, type: !53)
!1394 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 346, column: 27)
!1395 = !DILocation(line: 344, column: 56, scope: !1389)
!1396 = !DILocation(line: 346, column: 2, scope: !1389)
!1397 = !DILocation(line: 346, column: 19, scope: !1389)
!1398 = !DILocation(line: 346, column: 27, scope: !1394)
!1399 = !DILocation(line: 346, column: 27, scope: !1389)
!1400 = !DILocation(line: 348, column: 18, scope: !1389)
!1401 = !DILocation(line: 348, column: 25, scope: !1389)
!1402 = !DILocation(line: 348, column: 32, scope: !1389)
!1403 = !DILocation(line: 348, column: 46, scope: !1389)
!1404 = !DILocation(line: 348, column: 2, scope: !1389)
!1405 = !DILocation(line: 349, column: 1, scope: !1389)
!1406 = distinct !DISubprogram(name: "mb_cache_destroy", scope: !3, file: !3, line: 405, type: !1407, scopeLine: 406, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1409)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{null, !113}
!1409 = !{!1410, !1411, !1412, !1413, !1416, !1418, !1422, !1425}
!1410 = !DILocalVariable(name: "cache", arg: 1, scope: !1406, file: !3, line: 405, type: !113)
!1411 = !DILocalVariable(name: "entry", scope: !1406, file: !3, line: 407, type: !54)
!1412 = !DILocalVariable(name: "next", scope: !1406, file: !3, line: 407, type: !54)
!1413 = !DILocalVariable(name: "__mptr", scope: !1414, file: !3, line: 415, type: !53)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !3, line: 415, column: 2)
!1415 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 415, column: 2)
!1416 = !DILocalVariable(name: "__mptr", scope: !1417, file: !3, line: 415, type: !53)
!1417 = distinct !DILexicalBlock(scope: !1415, file: !3, line: 415, column: 2)
!1418 = !DILocalVariable(name: "__ret_warn_on", scope: !1419, file: !3, line: 417, type: !77)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 417, column: 3)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !3, line: 415, column: 64)
!1421 = distinct !DILexicalBlock(scope: !1415, file: !3, line: 415, column: 2)
!1422 = !DILocalVariable(name: "__flags", scope: !1423, file: !3, line: 417, type: !77)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !3, line: 417, column: 3)
!1424 = distinct !DILexicalBlock(scope: !1419, file: !3, line: 417, column: 3)
!1425 = !DILocalVariable(name: "__mptr", scope: !1426, file: !3, line: 415, type: !53)
!1426 = distinct !DILexicalBlock(scope: !1421, file: !3, line: 415, column: 2)
!1427 = !DILocation(line: 405, column: 40, scope: !1406)
!1428 = !DILocation(line: 407, column: 2, scope: !1406)
!1429 = !DILocation(line: 407, column: 25, scope: !1406)
!1430 = !DILocation(line: 407, column: 33, scope: !1406)
!1431 = !DILocation(line: 409, column: 23, scope: !1406)
!1432 = !DILocation(line: 409, column: 30, scope: !1406)
!1433 = !DILocation(line: 409, column: 2, scope: !1406)
!1434 = !DILocation(line: 415, column: 2, scope: !1414)
!1435 = !DILocation(line: 415, column: 2, scope: !1415)
!1436 = !DILocation(line: 415, column: 2, scope: !1417)
!1437 = !DILocation(line: 415, column: 2, scope: !1421)
!1438 = !DILocation(line: 416, column: 13, scope: !1420)
!1439 = !DILocation(line: 416, column: 20, scope: !1420)
!1440 = !DILocation(line: 416, column: 3, scope: !1420)
!1441 = !DILocation(line: 417, column: 3, scope: !1419)
!1442 = !DILocation(line: 417, column: 3, scope: !1424)
!1443 = !DILocation(line: 417, column: 3, scope: !1423)
!1444 = !DILocation(line: 417, column: 3, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 417, column: 3)
!1446 = !DILocation(line: 417, column: 3, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 417, column: 3)
!1448 = !{i64 2153651332, i64 2153651361, i64 2153651407, i64 2153651465, i64 2153651519, i64 2153651573, i64 2153651628, i64 2153651659, i64 2153651967, i64 2153651973, i64 2153652020, i64 2153652043, i64 2153652069}
!1449 = !DILocation(line: 417, column: 3, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 417, column: 3)
!1451 = !DILocation(line: 417, column: 3, scope: !1420)
!1452 = !DILocation(line: 418, column: 22, scope: !1420)
!1453 = !DILocation(line: 418, column: 29, scope: !1420)
!1454 = !DILocation(line: 418, column: 3, scope: !1420)
!1455 = !DILocation(line: 419, column: 2, scope: !1420)
!1456 = !DILocation(line: 415, column: 2, scope: !1426)
!1457 = distinct !{!1457, !1435, !1458, !451, !452}
!1458 = !DILocation(line: 419, column: 2, scope: !1415)
!1459 = !DILocation(line: 420, column: 8, scope: !1406)
!1460 = !DILocation(line: 420, column: 15, scope: !1406)
!1461 = !DILocation(line: 420, column: 2, scope: !1406)
!1462 = !DILocation(line: 421, column: 8, scope: !1406)
!1463 = !DILocation(line: 421, column: 2, scope: !1406)
!1464 = !DILocation(line: 422, column: 1, scope: !1406)
!1465 = !DISubprogram(name: "unregister_shrinker", scope: !164, file: !164, line: 104, type: !1466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{null, !170}
!1468 = distinct !DISubprogram(name: "list_del", scope: !567, file: !567, line: 227, type: !568, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1469)
!1469 = !{!1470}
!1470 = !DILocalVariable(name: "entry", arg: 1, scope: !1468, file: !567, line: 227, type: !62)
!1471 = !DILocation(line: 227, column: 47, scope: !1468)
!1472 = !DILocation(line: 229, column: 19, scope: !1468)
!1473 = !DILocation(line: 229, column: 2, scope: !1468)
!1474 = !DILocation(line: 230, column: 2, scope: !1468)
!1475 = !DILocation(line: 230, column: 9, scope: !1468)
!1476 = !DILocation(line: 230, column: 14, scope: !1468)
!1477 = !DILocation(line: 231, column: 2, scope: !1468)
!1478 = !DILocation(line: 231, column: 9, scope: !1468)
!1479 = !DILocation(line: 231, column: 14, scope: !1468)
!1480 = !DILocation(line: 232, column: 1, scope: !1468)
!1481 = distinct !DISubprogram(name: "mbcache_exit", scope: !3, file: !3, line: 435, type: !262, scopeLine: 436, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1482 = !DILocation(line: 437, column: 21, scope: !1481)
!1483 = !DILocation(line: 437, column: 2, scope: !1481)
!1484 = !DILocation(line: 438, column: 1, scope: !1481)
!1485 = !DISubprogram(name: "kmem_cache_destroy", scope: !43, file: !43, line: 197, type: !1486, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{null, !320}
!1488 = distinct !DISubprogram(name: "__initstub__kmod_mbcache__269_440_mbcache_init6", scope: !3, file: !3, line: 440, type: !308, scopeLine: 440, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1489 = !DILocation(line: 440, column: 1, scope: !1488)
!1490 = distinct !DISubprogram(name: "mbcache_init", scope: !3, file: !3, line: 425, type: !308, scopeLine: 426, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1491 = !DILocation(line: 427, column: 19, scope: !1490)
!1492 = !DILocation(line: 427, column: 17, scope: !1490)
!1493 = !DILocation(line: 430, column: 7, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1490, file: !3, line: 430, column: 6)
!1495 = !DILocation(line: 430, column: 6, scope: !1490)
!1496 = !DILocation(line: 431, column: 3, scope: !1494)
!1497 = !DILocation(line: 432, column: 2, scope: !1490)
!1498 = !DILocation(line: 433, column: 1, scope: !1490)
!1499 = distinct !DISubprogram(name: "queue_work", scope: !12, file: !12, line: 559, type: !1500, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1504)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!336, !1502, !208}
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !12, line: 18, flags: DIFlagFwdDecl)
!1504 = !{!1505, !1506}
!1505 = !DILocalVariable(name: "wq", arg: 1, scope: !1499, file: !12, line: 559, type: !1502)
!1506 = !DILocalVariable(name: "work", arg: 2, scope: !1499, file: !12, line: 560, type: !208)
!1507 = !DILocation(line: 559, column: 56, scope: !1499)
!1508 = !DILocation(line: 560, column: 30, scope: !1499)
!1509 = !DILocation(line: 562, column: 41, scope: !1499)
!1510 = !DILocation(line: 562, column: 45, scope: !1499)
!1511 = !DILocation(line: 562, column: 9, scope: !1499)
!1512 = !DILocation(line: 562, column: 2, scope: !1499)
!1513 = !DISubprogram(name: "queue_work_on", scope: !12, file: !12, line: 496, type: !1514, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!336, !77, !1502, !208}
!1516 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !1517, file: !1517, line: 80, type: !1518, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1523)
!1517 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!1518 = !DISubroutineType(types: !1519)
!1519 = !{null, !1520, !1277}
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1522)
!1522 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!1523 = !{!1524, !1525}
!1524 = !DILocalVariable(name: "v", arg: 1, scope: !1516, file: !1517, line: 80, type: !1520)
!1525 = !DILocalVariable(name: "size", arg: 2, scope: !1516, file: !1517, line: 80, type: !1277)
!1526 = !DILocation(line: 80, column: 74, scope: !1516)
!1527 = !DILocation(line: 80, column: 84, scope: !1516)
!1528 = !DILocation(line: 82, column: 20, scope: !1516)
!1529 = !DILocation(line: 82, column: 23, scope: !1516)
!1530 = !DILocation(line: 82, column: 2, scope: !1516)
!1531 = !DILocation(line: 83, column: 2, scope: !1516)
!1532 = !DILocation(line: 84, column: 1, scope: !1516)
!1533 = distinct !DISubprogram(name: "raw_atomic_set", scope: !1534, file: !1534, line: 488, type: !590, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1535)
!1534 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!1535 = !{!1536, !1537}
!1536 = !DILocalVariable(name: "v", arg: 1, scope: !1533, file: !1534, line: 488, type: !592)
!1537 = !DILocalVariable(name: "i", arg: 2, scope: !1533, file: !1534, line: 488, type: !77)
!1538 = !DILocation(line: 488, column: 26, scope: !1533)
!1539 = !DILocation(line: 488, column: 33, scope: !1533)
!1540 = !DILocation(line: 490, column: 18, scope: !1533)
!1541 = !DILocation(line: 490, column: 21, scope: !1533)
!1542 = !DILocation(line: 490, column: 2, scope: !1533)
!1543 = !DILocation(line: 491, column: 1, scope: !1533)
!1544 = distinct !DISubprogram(name: "kasan_check_write", scope: !1545, file: !1545, line: 44, type: !1546, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1548)
!1545 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!336, !1520, !7}
!1548 = !{!1549, !1550}
!1549 = !DILocalVariable(name: "p", arg: 1, scope: !1544, file: !1545, line: 44, type: !1520)
!1550 = !DILocalVariable(name: "size", arg: 2, scope: !1544, file: !1545, line: 44, type: !7)
!1551 = !DILocation(line: 44, column: 59, scope: !1544)
!1552 = !DILocation(line: 44, column: 75, scope: !1544)
!1553 = !DILocation(line: 46, column: 2, scope: !1544)
!1554 = distinct !DISubprogram(name: "kcsan_check_access", scope: !1555, file: !1555, line: 229, type: !1556, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1558)
!1555 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!1556 = !DISubroutineType(types: !1557)
!1557 = !{null, !1520, !1277, !77}
!1558 = !{!1559, !1560, !1561}
!1559 = !DILocalVariable(name: "ptr", arg: 1, scope: !1554, file: !1555, line: 229, type: !1520)
!1560 = !DILocalVariable(name: "size", arg: 2, scope: !1554, file: !1555, line: 229, type: !1277)
!1561 = !DILocalVariable(name: "type", arg: 3, scope: !1554, file: !1555, line: 230, type: !77)
!1562 = !DILocation(line: 229, column: 60, scope: !1554)
!1563 = !DILocation(line: 229, column: 72, scope: !1554)
!1564 = !DILocation(line: 230, column: 15, scope: !1554)
!1565 = !DILocation(line: 230, column: 23, scope: !1554)
!1566 = distinct !DISubprogram(name: "arch_atomic_set", scope: !1567, file: !1567, line: 26, type: !590, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1568)
!1567 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!1568 = !{!1569, !1570}
!1569 = !DILocalVariable(name: "v", arg: 1, scope: !1566, file: !1567, line: 26, type: !592)
!1570 = !DILocalVariable(name: "i", arg: 2, scope: !1566, file: !1567, line: 26, type: !77)
!1571 = !DILocation(line: 26, column: 55, scope: !1566)
!1572 = !DILocation(line: 26, column: 62, scope: !1566)
!1573 = !DILocation(line: 28, column: 2, scope: !1566)
!1574 = !DILocation(line: 28, column: 2, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1566, file: !1567, line: 28, column: 2)
!1576 = !DILocation(line: 29, column: 1, scope: !1566)
!1577 = distinct !DISubprogram(name: "arch_set_bit", scope: !1578, file: !1578, line: 52, type: !606, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1579)
!1578 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!1579 = !{!1580, !1581}
!1580 = !DILocalVariable(name: "nr", arg: 1, scope: !1577, file: !1578, line: 52, type: !99)
!1581 = !DILocalVariable(name: "addr", arg: 2, scope: !1577, file: !1578, line: 52, type: !608)
!1582 = !DILocation(line: 52, column: 19, scope: !1577)
!1583 = !DILocation(line: 52, column: 47, scope: !1577)
!1584 = !DILocation(line: 54, column: 27, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1577, file: !1578, line: 54, column: 6)
!1586 = !DILocation(line: 54, column: 6, scope: !1585)
!1587 = !DILocation(line: 54, column: 6, scope: !1577)
!1588 = !DILocation(line: 56, column: 6, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1585, file: !1578, line: 54, column: 32)
!1590 = !DILocation(line: 57, column: 12, scope: !1589)
!1591 = !DILocation(line: 55, column: 3, scope: !1589)
!1592 = !{i64 2147963282, i64 2147963321, i64 2147963342, i64 2147963379, i64 2147963402, i64 2147963272}
!1593 = !DILocation(line: 59, column: 2, scope: !1589)
!1594 = !DILocation(line: 61, column: 8, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1585, file: !1578, line: 59, column: 9)
!1596 = !DILocation(line: 61, column: 32, scope: !1595)
!1597 = !DILocation(line: 60, column: 3, scope: !1595)
!1598 = !{i64 2147963567, i64 2147963606, i64 2147963627, i64 2147963664, i64 2147963687, i64 2147963557}
!1599 = !DILocation(line: 63, column: 1, scope: !1577)
!1600 = distinct !DISubprogram(name: "hash_32", scope: !1601, file: !1601, line: 65, type: !1602, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1604)
!1601 = !DIFile(filename: "./include/linux/hash.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "38c20be4852b6978c0a05b86a66f0046")
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!79, !79, !7}
!1604 = !{!1605, !1606}
!1605 = !DILocalVariable(name: "val", arg: 1, scope: !1600, file: !1601, line: 65, type: !79)
!1606 = !DILocalVariable(name: "bits", arg: 2, scope: !1600, file: !1601, line: 65, type: !7)
!1607 = !DILocation(line: 65, column: 31, scope: !1600)
!1608 = !DILocation(line: 65, column: 49, scope: !1600)
!1609 = !DILocation(line: 68, column: 19, scope: !1600)
!1610 = !DILocation(line: 68, column: 9, scope: !1600)
!1611 = !DILocation(line: 68, column: 33, scope: !1600)
!1612 = !DILocation(line: 68, column: 31, scope: !1600)
!1613 = !DILocation(line: 68, column: 24, scope: !1600)
!1614 = !DILocation(line: 68, column: 2, scope: !1600)
!1615 = distinct !DISubprogram(name: "__hash_32_generic", scope: !1601, file: !1601, line: 60, type: !1616, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1618)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!79, !79}
!1618 = !{!1619}
!1619 = !DILocalVariable(name: "val", arg: 1, scope: !1615, file: !1601, line: 60, type: !79)
!1620 = !DILocation(line: 60, column: 41, scope: !1615)
!1621 = !DILocation(line: 62, column: 9, scope: !1615)
!1622 = !DILocation(line: 62, column: 13, scope: !1615)
!1623 = !DILocation(line: 62, column: 2, scope: !1615)
!1624 = !DILocation(line: 16, column: 38, scope: !287)
!1625 = !DILocation(line: 16, column: 61, scope: !287)
!1626 = !DILocation(line: 25, column: 2, scope: !287)
!1627 = !DILocation(line: 25, column: 2, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !287, file: !288, line: 25, column: 2)
!1629 = !{i64 2151434109}
!1630 = !DILocation(line: 27, column: 2, scope: !287)
!1631 = !DILocation(line: 27, column: 9, scope: !287)
!1632 = !DILocation(line: 28, column: 3, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !287, file: !288, line: 27, column: 56)
!1634 = !DILocation(line: 28, column: 3, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1633, file: !288, line: 28, column: 3)
!1636 = !{i64 2151434318}
!1637 = !DILocation(line: 28, column: 3, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1635, file: !288, line: 28, column: 3)
!1639 = !DILocation(line: 28, column: 3, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1638, file: !288, line: 28, column: 3)
!1641 = !{i64 2151434500}
!1642 = !DILocation(line: 29, column: 3, scope: !1633)
!1643 = !DILocation(line: 30, column: 4, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1633, file: !288, line: 29, column: 6)
!1645 = !DILocation(line: 31, column: 3, scope: !1644)
!1646 = !DILocation(line: 31, column: 12, scope: !1633)
!1647 = distinct !{!1647, !1642, !1648, !451, !452}
!1648 = !DILocation(line: 31, column: 34, scope: !1633)
!1649 = !DILocation(line: 32, column: 3, scope: !1633)
!1650 = !DILocation(line: 32, column: 3, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1633, file: !288, line: 32, column: 3)
!1652 = !{i64 2151436621}
!1653 = distinct !{!1653, !1630, !1654, !451, !452}
!1654 = !DILocation(line: 33, column: 2, scope: !287)
!1655 = !DILocation(line: 36, column: 1, scope: !287)
!1656 = distinct !DISubprogram(name: "__preempt_count_add", scope: !1657, file: !1657, line: 78, type: !1658, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1660)
!1657 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!1658 = !DISubroutineType(types: !1659)
!1659 = !{null, !77}
!1660 = !{!1661, !1662, !1665}
!1661 = !DILocalVariable(name: "val", arg: 1, scope: !1656, file: !1657, line: 78, type: !77)
!1662 = !DILocalVariable(name: "pao_ID__", scope: !1663, file: !1657, line: 80, type: !1664)
!1663 = distinct !DILexicalBlock(scope: !1656, file: !1657, line: 80, column: 2)
!1664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!1665 = !DILocalVariable(name: "pto_val__", scope: !1666, file: !1657, line: 80, type: !79)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !1657, line: 80, column: 2)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !1657, line: 80, column: 2)
!1668 = distinct !DILexicalBlock(scope: !1663, file: !1657, line: 80, column: 2)
!1669 = !DILocation(line: 78, column: 53, scope: !1656)
!1670 = !DILocation(line: 80, column: 2, scope: !1656)
!1671 = !DILocation(line: 80, column: 2, scope: !1663)
!1672 = !DILocation(line: 80, column: 2, scope: !1668)
!1673 = !DILocation(line: 80, column: 2, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1668, file: !1657, line: 80, column: 2)
!1675 = !{i64 2149461290}
!1676 = !DILocation(line: 80, column: 2, scope: !1667)
!1677 = !DILocation(line: 80, column: 2, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1667, file: !1657, line: 80, column: 2)
!1679 = !{i64 2149461585}
!1680 = !DILocation(line: 80, column: 2, scope: !1666)
!1681 = !{i64 2149462290}
!1682 = !DILocation(line: 81, column: 1, scope: !1656)
!1683 = distinct !DISubprogram(name: "test_and_set_bit_lock", scope: !1684, file: !1684, line: 55, type: !1685, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1687)
!1684 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c3803e7a2bd2f2f2af55c89b50b84591")
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!336, !99, !608}
!1687 = !{!1688, !1689}
!1688 = !DILocalVariable(name: "nr", arg: 1, scope: !1683, file: !1684, line: 55, type: !99)
!1689 = !DILocalVariable(name: "addr", arg: 2, scope: !1683, file: !1684, line: 55, type: !608)
!1690 = !DILocation(line: 55, column: 47, scope: !1683)
!1691 = !DILocation(line: 55, column: 75, scope: !1683)
!1692 = !DILocation(line: 57, column: 31, scope: !1683)
!1693 = !DILocation(line: 57, column: 38, scope: !1683)
!1694 = !DILocation(line: 57, column: 36, scope: !1683)
!1695 = !DILocation(line: 57, column: 2, scope: !1683)
!1696 = !DILocation(line: 58, column: 36, scope: !1683)
!1697 = !DILocation(line: 58, column: 40, scope: !1683)
!1698 = !DILocation(line: 58, column: 9, scope: !1683)
!1699 = !DILocation(line: 58, column: 2, scope: !1683)
!1700 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !1657, file: !1657, line: 93, type: !1701, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1703)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!336}
!1703 = !{!1704}
!1704 = !DILocalVariable(name: "c", scope: !1705, file: !1657, line: 95, type: !336)
!1705 = distinct !DILexicalBlock(scope: !1700, file: !1657, line: 95, column: 9)
!1706 = !DILocation(line: 95, column: 9, scope: !1705)
!1707 = !{i64 2149465646, i64 2149465739}
!1708 = !DILocation(line: 95, column: 9, scope: !1700)
!1709 = !DILocation(line: 95, column: 2, scope: !1700)
!1710 = distinct !DISubprogram(name: "cpu_relax", scope: !1711, file: !1711, line: 16, type: !262, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1711 = !DIFile(filename: "./arch/x86/include/asm/vdso/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3605265f38a0580735b11842c92ee9df")
!1712 = !DILocation(line: 18, column: 2, scope: !1710)
!1713 = !DILocation(line: 19, column: 1, scope: !1710)
!1714 = distinct !DISubprogram(name: "const_test_bit", scope: !1715, file: !1715, line: 166, type: !1716, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1720)
!1715 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!336, !84, !1718}
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !609)
!1720 = !{!1721, !1722, !1723, !1724, !1725}
!1721 = !DILocalVariable(name: "nr", arg: 1, scope: !1714, file: !1715, line: 166, type: !84)
!1722 = !DILocalVariable(name: "addr", arg: 2, scope: !1714, file: !1715, line: 166, type: !1718)
!1723 = !DILocalVariable(name: "p", scope: !1714, file: !1715, line: 168, type: !102)
!1724 = !DILocalVariable(name: "mask", scope: !1714, file: !1715, line: 169, type: !84)
!1725 = !DILocalVariable(name: "val", scope: !1714, file: !1715, line: 170, type: !84)
!1726 = !DILocation(line: 166, column: 30, scope: !1714)
!1727 = !DILocation(line: 166, column: 64, scope: !1714)
!1728 = !DILocation(line: 168, column: 2, scope: !1714)
!1729 = !DILocation(line: 168, column: 23, scope: !1714)
!1730 = !DILocation(line: 168, column: 50, scope: !1714)
!1731 = !DILocation(line: 168, column: 57, scope: !1714)
!1732 = !DILocation(line: 168, column: 55, scope: !1714)
!1733 = !DILocation(line: 169, column: 2, scope: !1714)
!1734 = !DILocation(line: 169, column: 16, scope: !1714)
!1735 = !DILocation(line: 169, column: 23, scope: !1714)
!1736 = !DILocation(line: 170, column: 2, scope: !1714)
!1737 = !DILocation(line: 170, column: 16, scope: !1714)
!1738 = !DILocation(line: 170, column: 23, scope: !1714)
!1739 = !DILocation(line: 170, column: 22, scope: !1714)
!1740 = !DILocation(line: 172, column: 12, scope: !1714)
!1741 = !DILocation(line: 172, column: 18, scope: !1714)
!1742 = !DILocation(line: 172, column: 16, scope: !1714)
!1743 = !DILocation(line: 172, column: 10, scope: !1714)
!1744 = !DILocation(line: 172, column: 9, scope: !1714)
!1745 = !DILocation(line: 173, column: 1, scope: !1714)
!1746 = !DILocation(line: 172, column: 2, scope: !1714)
!1747 = distinct !DISubprogram(name: "_test_bit", scope: !1748, file: !1748, line: 139, type: !1716, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1749)
!1748 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!1749 = !{!1750, !1751}
!1750 = !DILocalVariable(name: "nr", arg: 1, scope: !1747, file: !1748, line: 139, type: !84)
!1751 = !DILocalVariable(name: "addr", arg: 2, scope: !1747, file: !1748, line: 139, type: !1718)
!1752 = !DILocation(line: 139, column: 25, scope: !1747)
!1753 = !DILocation(line: 139, column: 59, scope: !1747)
!1754 = !DILocation(line: 141, column: 25, scope: !1747)
!1755 = !DILocation(line: 141, column: 32, scope: !1747)
!1756 = !DILocation(line: 141, column: 30, scope: !1747)
!1757 = !DILocation(line: 141, column: 2, scope: !1747)
!1758 = !DILocation(line: 142, column: 23, scope: !1747)
!1759 = !DILocation(line: 142, column: 27, scope: !1747)
!1760 = !DILocation(line: 142, column: 9, scope: !1747)
!1761 = !DILocation(line: 142, column: 2, scope: !1747)
!1762 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !1517, file: !1517, line: 94, type: !1518, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1763)
!1763 = !{!1764, !1765}
!1764 = !DILocalVariable(name: "v", arg: 1, scope: !1762, file: !1517, line: 94, type: !1520)
!1765 = !DILocalVariable(name: "size", arg: 2, scope: !1762, file: !1517, line: 94, type: !1277)
!1766 = !DILocation(line: 94, column: 79, scope: !1762)
!1767 = !DILocation(line: 94, column: 89, scope: !1762)
!1768 = !DILocation(line: 96, column: 20, scope: !1762)
!1769 = !DILocation(line: 96, column: 23, scope: !1762)
!1770 = !DILocation(line: 96, column: 2, scope: !1762)
!1771 = !DILocation(line: 97, column: 2, scope: !1762)
!1772 = !DILocation(line: 98, column: 1, scope: !1762)
!1773 = distinct !DISubprogram(name: "arch_test_and_set_bit_lock", scope: !1578, file: !1578, line: 142, type: !1685, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1774)
!1774 = !{!1775, !1776}
!1775 = !DILocalVariable(name: "nr", arg: 1, scope: !1773, file: !1578, line: 142, type: !99)
!1776 = !DILocalVariable(name: "addr", arg: 2, scope: !1773, file: !1578, line: 142, type: !608)
!1777 = !DILocation(line: 142, column: 33, scope: !1773)
!1778 = !DILocation(line: 142, column: 61, scope: !1773)
!1779 = !DILocation(line: 144, column: 31, scope: !1773)
!1780 = !DILocation(line: 144, column: 35, scope: !1773)
!1781 = !DILocation(line: 144, column: 9, scope: !1773)
!1782 = !DILocation(line: 144, column: 2, scope: !1773)
!1783 = distinct !DISubprogram(name: "arch_test_and_set_bit", scope: !1578, file: !1578, line: 136, type: !1685, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1784)
!1784 = !{!1785, !1786, !1787}
!1785 = !DILocalVariable(name: "nr", arg: 1, scope: !1783, file: !1578, line: 136, type: !99)
!1786 = !DILocalVariable(name: "addr", arg: 2, scope: !1783, file: !1578, line: 136, type: !608)
!1787 = !DILocalVariable(name: "c", scope: !1788, file: !1578, line: 138, type: !336)
!1788 = distinct !DILexicalBlock(scope: !1783, file: !1578, line: 138, column: 9)
!1789 = !DILocation(line: 136, column: 28, scope: !1783)
!1790 = !DILocation(line: 136, column: 56, scope: !1783)
!1791 = !DILocation(line: 138, column: 9, scope: !1788)
!1792 = !{i64 2147969733, i64 2147969772, i64 2147969793, i64 2147969830, i64 2147969853, i64 2147969862, i64 2147969965}
!1793 = !DILocation(line: 138, column: 9, scope: !1783)
!1794 = !DILocation(line: 138, column: 2, scope: !1783)
!1795 = distinct !DISubprogram(name: "rep_nop", scope: !1711, file: !1711, line: 11, type: !262, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1796 = !DILocation(line: 13, column: 2, scope: !1795)
!1797 = !{i64 1930076}
!1798 = !DILocation(line: 14, column: 1, scope: !1795)
!1799 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !1517, file: !1517, line: 66, type: !1518, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1800)
!1800 = !{!1801, !1802}
!1801 = !DILocalVariable(name: "v", arg: 1, scope: !1799, file: !1517, line: 66, type: !1520)
!1802 = !DILocalVariable(name: "size", arg: 2, scope: !1799, file: !1517, line: 66, type: !1277)
!1803 = !DILocation(line: 66, column: 73, scope: !1799)
!1804 = !DILocation(line: 66, column: 83, scope: !1799)
!1805 = !DILocation(line: 68, column: 19, scope: !1799)
!1806 = !DILocation(line: 68, column: 22, scope: !1799)
!1807 = !DILocation(line: 68, column: 2, scope: !1799)
!1808 = !DILocation(line: 69, column: 2, scope: !1799)
!1809 = !DILocation(line: 70, column: 1, scope: !1799)
!1810 = distinct !DISubprogram(name: "arch_test_bit", scope: !1578, file: !1578, line: 237, type: !1716, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1811)
!1811 = !{!1812, !1813}
!1812 = !DILocalVariable(name: "nr", arg: 1, scope: !1810, file: !1578, line: 237, type: !84)
!1813 = !DILocalVariable(name: "addr", arg: 2, scope: !1810, file: !1578, line: 237, type: !1718)
!1814 = !DILocation(line: 237, column: 29, scope: !1810)
!1815 = !DILocation(line: 237, column: 63, scope: !1810)
!1816 = !DILocation(line: 239, column: 30, scope: !1810)
!1817 = !DILocation(line: 239, column: 9, scope: !1810)
!1818 = !DILocation(line: 239, column: 54, scope: !1810)
!1819 = !DILocation(line: 239, column: 58, scope: !1810)
!1820 = !DILocation(line: 239, column: 36, scope: !1810)
!1821 = !DILocation(line: 240, column: 26, scope: !1810)
!1822 = !DILocation(line: 240, column: 30, scope: !1810)
!1823 = !DILocation(line: 240, column: 8, scope: !1810)
!1824 = !DILocation(line: 239, column: 2, scope: !1810)
!1825 = distinct !DISubprogram(name: "kasan_check_read", scope: !1545, file: !1545, line: 40, type: !1546, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1826)
!1826 = !{!1827, !1828}
!1827 = !DILocalVariable(name: "p", arg: 1, scope: !1825, file: !1545, line: 40, type: !1520)
!1828 = !DILocalVariable(name: "size", arg: 2, scope: !1825, file: !1545, line: 40, type: !7)
!1829 = !DILocation(line: 40, column: 58, scope: !1825)
!1830 = !DILocation(line: 40, column: 74, scope: !1825)
!1831 = !DILocation(line: 42, column: 2, scope: !1825)
!1832 = distinct !DISubprogram(name: "constant_test_bit", scope: !1578, file: !1578, line: 204, type: !1833, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1835)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!336, !99, !1718}
!1835 = !{!1836, !1837}
!1836 = !DILocalVariable(name: "nr", arg: 1, scope: !1832, file: !1578, line: 204, type: !99)
!1837 = !DILocalVariable(name: "addr", arg: 2, scope: !1832, file: !1578, line: 204, type: !1718)
!1838 = !DILocation(line: 204, column: 52, scope: !1832)
!1839 = !DILocation(line: 204, column: 86, scope: !1832)
!1840 = !DILocation(line: 206, column: 19, scope: !1832)
!1841 = !DILocation(line: 206, column: 22, scope: !1832)
!1842 = !DILocation(line: 206, column: 15, scope: !1832)
!1843 = !DILocation(line: 207, column: 4, scope: !1832)
!1844 = !DILocation(line: 207, column: 9, scope: !1832)
!1845 = !DILocation(line: 207, column: 12, scope: !1832)
!1846 = !DILocation(line: 206, column: 44, scope: !1832)
!1847 = !DILocation(line: 207, column: 37, scope: !1832)
!1848 = !DILocation(line: 206, column: 2, scope: !1832)
!1849 = distinct !DISubprogram(name: "variable_test_bit", scope: !1578, file: !1578, line: 224, type: !1833, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1850)
!1850 = !{!1851, !1852, !1853}
!1851 = !DILocalVariable(name: "nr", arg: 1, scope: !1849, file: !1578, line: 224, type: !99)
!1852 = !DILocalVariable(name: "addr", arg: 2, scope: !1849, file: !1578, line: 224, type: !1718)
!1853 = !DILocalVariable(name: "oldbit", scope: !1849, file: !1578, line: 226, type: !336)
!1854 = !DILocation(line: 224, column: 52, scope: !1849)
!1855 = !DILocation(line: 224, column: 86, scope: !1849)
!1856 = !DILocation(line: 226, column: 2, scope: !1849)
!1857 = !DILocation(line: 226, column: 7, scope: !1849)
!1858 = !DILocation(line: 231, column: 33, scope: !1849)
!1859 = !DILocation(line: 231, column: 46, scope: !1849)
!1860 = !DILocation(line: 228, column: 2, scope: !1849)
!1861 = !{i64 2147976894, i64 2147976968}
!1862 = !DILocation(line: 233, column: 9, scope: !1849)
!1863 = !DILocation(line: 234, column: 1, scope: !1849)
!1864 = !DILocation(line: 233, column: 2, scope: !1849)
!1865 = !DILocation(line: 74, column: 42, scope: !296)
!1866 = !DILocation(line: 74, column: 65, scope: !296)
!1867 = !DILocation(line: 80, column: 21, scope: !296)
!1868 = !DILocation(line: 80, column: 29, scope: !296)
!1869 = !DILocation(line: 80, column: 2, scope: !296)
!1870 = !DILocation(line: 82, column: 2, scope: !296)
!1871 = !DILocation(line: 82, column: 2, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !296, file: !288, line: 82, column: 2)
!1873 = !{i64 2151441316}
!1874 = !DILocation(line: 82, column: 2, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1872, file: !288, line: 82, column: 2)
!1876 = !DILocation(line: 82, column: 2, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1875, file: !288, line: 82, column: 2)
!1878 = !{i64 2151441498}
!1879 = !DILocation(line: 84, column: 1, scope: !296)
!1880 = distinct !DISubprogram(name: "__clear_bit_unlock", scope: !1684, file: !1684, line: 39, type: !606, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1881)
!1881 = !{!1882, !1883}
!1882 = !DILocalVariable(name: "nr", arg: 1, scope: !1880, file: !1684, line: 39, type: !99)
!1883 = !DILocalVariable(name: "addr", arg: 2, scope: !1880, file: !1684, line: 39, type: !608)
!1884 = !DILocation(line: 39, column: 44, scope: !1880)
!1885 = !DILocation(line: 39, column: 72, scope: !1880)
!1886 = !DILocation(line: 41, column: 2, scope: !1880)
!1887 = !DILocation(line: 41, column: 2, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1880, file: !1684, line: 41, column: 2)
!1889 = !DILocation(line: 42, column: 19, scope: !1880)
!1890 = !DILocation(line: 42, column: 26, scope: !1880)
!1891 = !DILocation(line: 42, column: 24, scope: !1880)
!1892 = !DILocation(line: 42, column: 2, scope: !1880)
!1893 = !DILocation(line: 43, column: 26, scope: !1880)
!1894 = !DILocation(line: 43, column: 30, scope: !1880)
!1895 = !DILocation(line: 43, column: 2, scope: !1880)
!1896 = !DILocation(line: 44, column: 1, scope: !1880)
!1897 = distinct !DISubprogram(name: "instrument_write", scope: !1517, file: !1517, line: 38, type: !1518, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1898)
!1898 = !{!1899, !1900}
!1899 = !DILocalVariable(name: "v", arg: 1, scope: !1897, file: !1517, line: 38, type: !1520)
!1900 = !DILocalVariable(name: "size", arg: 2, scope: !1897, file: !1517, line: 38, type: !1277)
!1901 = !DILocation(line: 38, column: 67, scope: !1897)
!1902 = !DILocation(line: 38, column: 77, scope: !1897)
!1903 = !DILocation(line: 40, column: 20, scope: !1897)
!1904 = !DILocation(line: 40, column: 23, scope: !1897)
!1905 = !DILocation(line: 40, column: 2, scope: !1897)
!1906 = !DILocation(line: 41, column: 2, scope: !1897)
!1907 = !DILocation(line: 42, column: 1, scope: !1897)
!1908 = distinct !DISubprogram(name: "arch___clear_bit_unlock", scope: !1578, file: !1578, line: 111, type: !606, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1909)
!1909 = !{!1910, !1911}
!1910 = !DILocalVariable(name: "nr", arg: 1, scope: !1908, file: !1578, line: 111, type: !99)
!1911 = !DILocalVariable(name: "addr", arg: 2, scope: !1908, file: !1578, line: 111, type: !608)
!1912 = !DILocation(line: 111, column: 30, scope: !1908)
!1913 = !DILocation(line: 111, column: 58, scope: !1908)
!1914 = !DILocation(line: 113, column: 19, scope: !1908)
!1915 = !DILocation(line: 113, column: 23, scope: !1908)
!1916 = !DILocation(line: 113, column: 2, scope: !1908)
!1917 = !DILocation(line: 114, column: 1, scope: !1908)
!1918 = distinct !DISubprogram(name: "arch___clear_bit", scope: !1578, file: !1578, line: 92, type: !1919, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1921)
!1919 = !DISubroutineType(types: !1920)
!1920 = !{null, !84, !608}
!1921 = !{!1922, !1923}
!1922 = !DILocalVariable(name: "nr", arg: 1, scope: !1918, file: !1578, line: 92, type: !84)
!1923 = !DILocalVariable(name: "addr", arg: 2, scope: !1918, file: !1578, line: 92, type: !608)
!1924 = !DILocation(line: 92, column: 32, scope: !1918)
!1925 = !DILocation(line: 92, column: 60, scope: !1918)
!1926 = !DILocation(line: 94, column: 44, scope: !1918)
!1927 = !DILocation(line: 94, column: 56, scope: !1918)
!1928 = !DILocation(line: 94, column: 2, scope: !1918)
!1929 = !{i64 2147965741}
!1930 = !DILocation(line: 95, column: 1, scope: !1918)
!1931 = distinct !DISubprogram(name: "hlist_bl_set_first", scope: !66, file: !66, line: 63, type: !1932, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1934)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{null, !117, !69}
!1934 = !{!1935, !1936}
!1935 = !DILocalVariable(name: "h", arg: 1, scope: !1931, file: !66, line: 63, type: !117)
!1936 = !DILocalVariable(name: "n", arg: 2, scope: !1931, file: !66, line: 64, type: !69)
!1937 = !DILocation(line: 63, column: 61, scope: !1931)
!1938 = !DILocation(line: 64, column: 28, scope: !1931)
!1939 = !DILocation(line: 69, column: 53, scope: !1931)
!1940 = !DILocation(line: 69, column: 38, scope: !1931)
!1941 = !DILocation(line: 69, column: 55, scope: !1931)
!1942 = !DILocation(line: 69, column: 13, scope: !1931)
!1943 = !DILocation(line: 69, column: 2, scope: !1931)
!1944 = !DILocation(line: 69, column: 5, scope: !1931)
!1945 = !DILocation(line: 69, column: 11, scope: !1931)
!1946 = !DILocation(line: 70, column: 1, scope: !1931)
!1947 = !DISubprogram(name: "_raw_spin_lock", scope: !1948, file: !1948, line: 22, type: !1949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1948 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!1949 = !DISubroutineType(types: !1950)
!1950 = !{null, !1294}
!1951 = distinct !DISubprogram(name: "__list_add", scope: !567, file: !567, line: 146, type: !1952, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1954)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{null, !62, !62, !62}
!1954 = !{!1955, !1956, !1957}
!1955 = !DILocalVariable(name: "new", arg: 1, scope: !1951, file: !567, line: 146, type: !62)
!1956 = !DILocalVariable(name: "prev", arg: 2, scope: !1951, file: !567, line: 147, type: !62)
!1957 = !DILocalVariable(name: "next", arg: 3, scope: !1951, file: !567, line: 148, type: !62)
!1958 = !DILocation(line: 146, column: 49, scope: !1951)
!1959 = !DILocation(line: 147, column: 28, scope: !1951)
!1960 = !DILocation(line: 148, column: 28, scope: !1951)
!1961 = !DILocation(line: 150, column: 24, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1951, file: !567, line: 150, column: 6)
!1963 = !DILocation(line: 150, column: 29, scope: !1962)
!1964 = !DILocation(line: 150, column: 35, scope: !1962)
!1965 = !DILocation(line: 150, column: 7, scope: !1962)
!1966 = !DILocation(line: 150, column: 6, scope: !1951)
!1967 = !DILocation(line: 151, column: 3, scope: !1962)
!1968 = !DILocation(line: 153, column: 15, scope: !1951)
!1969 = !DILocation(line: 153, column: 2, scope: !1951)
!1970 = !DILocation(line: 153, column: 8, scope: !1951)
!1971 = !DILocation(line: 153, column: 13, scope: !1951)
!1972 = !DILocation(line: 154, column: 14, scope: !1951)
!1973 = !DILocation(line: 154, column: 2, scope: !1951)
!1974 = !DILocation(line: 154, column: 7, scope: !1951)
!1975 = !DILocation(line: 154, column: 12, scope: !1951)
!1976 = !DILocation(line: 155, column: 14, scope: !1951)
!1977 = !DILocation(line: 155, column: 2, scope: !1951)
!1978 = !DILocation(line: 155, column: 7, scope: !1951)
!1979 = !DILocation(line: 155, column: 12, scope: !1951)
!1980 = !DILocation(line: 156, column: 2, scope: !1951)
!1981 = !DILocation(line: 156, column: 2, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1951, file: !567, line: 156, column: 2)
!1983 = !DILocation(line: 156, column: 2, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1982, file: !567, line: 156, column: 2)
!1985 = !DILocation(line: 156, column: 2, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1982, file: !567, line: 156, column: 2)
!1987 = !DILocation(line: 157, column: 1, scope: !1951)
!1988 = distinct !DISubprogram(name: "__list_add_valid", scope: !567, file: !567, line: 128, type: !1989, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1991)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{!336, !62, !62, !62}
!1991 = !{!1992, !1993, !1994}
!1992 = !DILocalVariable(name: "new", arg: 1, scope: !1988, file: !567, line: 128, type: !62)
!1993 = !DILocalVariable(name: "prev", arg: 2, scope: !1988, file: !567, line: 129, type: !62)
!1994 = !DILocalVariable(name: "next", arg: 3, scope: !1988, file: !567, line: 130, type: !62)
!1995 = !DILocation(line: 128, column: 55, scope: !1988)
!1996 = !DILocation(line: 129, column: 23, scope: !1988)
!1997 = !DILocation(line: 130, column: 23, scope: !1988)
!1998 = !DILocation(line: 132, column: 2, scope: !1988)
!1999 = !DISubprogram(name: "_raw_spin_unlock", scope: !1948, file: !1948, line: 39, type: !1949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2000 = distinct !DISubprogram(name: "atomic_dec_return", scope: !589, file: !589, line: 607, type: !2001, scopeLine: 608, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2003)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!77, !592}
!2003 = !{!2004}
!2004 = !DILocalVariable(name: "v", arg: 1, scope: !2000, file: !589, line: 607, type: !592)
!2005 = !DILocation(line: 607, column: 29, scope: !2000)
!2006 = !DILocation(line: 609, column: 2, scope: !2000)
!2007 = !DILocation(line: 609, column: 2, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2000, file: !589, line: 609, column: 2)
!2009 = !DILocation(line: 610, column: 31, scope: !2000)
!2010 = !DILocation(line: 610, column: 2, scope: !2000)
!2011 = !DILocation(line: 611, column: 31, scope: !2000)
!2012 = !DILocation(line: 611, column: 9, scope: !2000)
!2013 = !DILocation(line: 611, column: 2, scope: !2000)
!2014 = !DISubprogram(name: "wake_up_var", scope: !820, file: !820, line: 239, type: !2015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{null, !53}
!2017 = distinct !DISubprogram(name: "raw_atomic_dec_return", scope: !1534, file: !1534, line: 1214, type: !2001, scopeLine: 1215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2018)
!2018 = !{!2019}
!2019 = !DILocalVariable(name: "v", arg: 1, scope: !2017, file: !1534, line: 1214, type: !592)
!2020 = !DILocation(line: 1214, column: 33, scope: !2017)
!2021 = !DILocation(line: 1225, column: 34, scope: !2017)
!2022 = !DILocation(line: 1225, column: 9, scope: !2017)
!2023 = !DILocation(line: 1225, column: 2, scope: !2017)
!2024 = distinct !DISubprogram(name: "raw_atomic_sub_return", scope: !1534, file: !1534, line: 771, type: !2025, scopeLine: 772, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2027)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!77, !77, !592}
!2027 = !{!2028, !2029}
!2028 = !DILocalVariable(name: "i", arg: 1, scope: !2024, file: !1534, line: 771, type: !77)
!2029 = !DILocalVariable(name: "v", arg: 2, scope: !2024, file: !1534, line: 771, type: !592)
!2030 = !DILocation(line: 771, column: 27, scope: !2024)
!2031 = !DILocation(line: 771, column: 40, scope: !2024)
!2032 = !DILocation(line: 774, column: 32, scope: !2024)
!2033 = !DILocation(line: 774, column: 35, scope: !2024)
!2034 = !DILocation(line: 774, column: 9, scope: !2024)
!2035 = !DILocation(line: 774, column: 2, scope: !2024)
!2036 = distinct !DISubprogram(name: "arch_atomic_sub_return", scope: !1567, file: !1567, line: 89, type: !2025, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2037)
!2037 = !{!2038, !2039}
!2038 = !DILocalVariable(name: "i", arg: 1, scope: !2036, file: !1567, line: 89, type: !77)
!2039 = !DILocalVariable(name: "v", arg: 2, scope: !2036, file: !1567, line: 89, type: !592)
!2040 = !DILocation(line: 89, column: 55, scope: !2036)
!2041 = !DILocation(line: 89, column: 68, scope: !2036)
!2042 = !DILocation(line: 91, column: 33, scope: !2036)
!2043 = !DILocation(line: 91, column: 32, scope: !2036)
!2044 = !DILocation(line: 91, column: 36, scope: !2036)
!2045 = !DILocation(line: 91, column: 9, scope: !2036)
!2046 = !DILocation(line: 91, column: 2, scope: !2036)
!2047 = distinct !DISubprogram(name: "arch_atomic_add_return", scope: !1567, file: !1567, line: 83, type: !2025, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2048)
!2048 = !{!2049, !2050, !2051}
!2049 = !DILocalVariable(name: "i", arg: 1, scope: !2047, file: !1567, line: 83, type: !77)
!2050 = !DILocalVariable(name: "v", arg: 2, scope: !2047, file: !1567, line: 83, type: !592)
!2051 = !DILocalVariable(name: "__ret", scope: !2052, file: !1567, line: 85, type: !77)
!2052 = distinct !DILexicalBlock(scope: !2047, file: !1567, line: 85, column: 13)
!2053 = !DILocation(line: 83, column: 55, scope: !2047)
!2054 = !DILocation(line: 83, column: 68, scope: !2047)
!2055 = !DILocation(line: 85, column: 9, scope: !2047)
!2056 = !DILocation(line: 85, column: 13, scope: !2052)
!2057 = !{i64 2148820308, i64 2148820347, i64 2148820368, i64 2148820405, i64 2148820428, i64 2148820437}
!2058 = !DILocation(line: 85, column: 13, scope: !2047)
!2059 = !DILocation(line: 85, column: 11, scope: !2047)
!2060 = !DILocation(line: 85, column: 2, scope: !2047)
!2061 = distinct !DISubprogram(name: "__hlist_bl_del", scope: !66, file: !66, line: 115, type: !790, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2062)
!2062 = !{!2063, !2064, !2065}
!2063 = !DILocalVariable(name: "n", arg: 1, scope: !2061, file: !66, line: 115, type: !69)
!2064 = !DILocalVariable(name: "next", scope: !2061, file: !66, line: 117, type: !69)
!2065 = !DILocalVariable(name: "pprev", scope: !2061, file: !66, line: 118, type: !71)
!2066 = !DILocation(line: 115, column: 57, scope: !2061)
!2067 = !DILocation(line: 117, column: 2, scope: !2061)
!2068 = !DILocation(line: 117, column: 24, scope: !2061)
!2069 = !DILocation(line: 117, column: 31, scope: !2061)
!2070 = !DILocation(line: 117, column: 34, scope: !2061)
!2071 = !DILocation(line: 118, column: 2, scope: !2061)
!2072 = !DILocation(line: 118, column: 25, scope: !2061)
!2073 = !DILocation(line: 118, column: 33, scope: !2061)
!2074 = !DILocation(line: 118, column: 36, scope: !2061)
!2075 = !DILocation(line: 123, column: 2, scope: !2061)
!2076 = !DILocation(line: 123, column: 2, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2061, file: !66, line: 123, column: 2)
!2078 = !DILocation(line: 123, column: 2, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2077, file: !66, line: 123, column: 2)
!2080 = !DILocation(line: 123, column: 2, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2077, file: !66, line: 123, column: 2)
!2082 = !DILocation(line: 127, column: 6, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2061, file: !66, line: 127, column: 6)
!2084 = !DILocation(line: 127, column: 6, scope: !2061)
!2085 = !DILocation(line: 128, column: 17, scope: !2083)
!2086 = !DILocation(line: 128, column: 3, scope: !2083)
!2087 = !DILocation(line: 128, column: 9, scope: !2083)
!2088 = !DILocation(line: 128, column: 15, scope: !2083)
!2089 = !DILocation(line: 129, column: 1, scope: !2061)
!2090 = distinct !DISubprogram(name: "raw_atomic_read", scope: !1534, file: !1534, line: 442, type: !866, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2091)
!2091 = !{!2092}
!2092 = !DILocalVariable(name: "v", arg: 1, scope: !2090, file: !1534, line: 442, type: !868)
!2093 = !DILocation(line: 442, column: 33, scope: !2090)
!2094 = !DILocation(line: 444, column: 26, scope: !2090)
!2095 = !DILocation(line: 444, column: 9, scope: !2090)
!2096 = !DILocation(line: 444, column: 2, scope: !2090)
!2097 = distinct !DISubprogram(name: "arch_atomic_read", scope: !1567, file: !1567, line: 17, type: !866, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2098)
!2098 = !{!2099}
!2099 = !DILocalVariable(name: "v", arg: 1, scope: !2097, file: !1567, line: 17, type: !868)
!2100 = !DILocation(line: 17, column: 61, scope: !2097)
!2101 = !DILocation(line: 23, column: 9, scope: !2097)
!2102 = !DILocation(line: 23, column: 2, scope: !2097)
!2103 = distinct !DISubprogram(name: "hlist_bl_unhashed", scope: !66, file: !66, line: 52, type: !2104, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2108)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!336, !2106}
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!2108 = !{!2109}
!2109 = !DILocalVariable(name: "h", arg: 1, scope: !2103, file: !66, line: 52, type: !2106)
!2110 = !DILocation(line: 52, column: 67, scope: !2103)
!2111 = !DILocation(line: 54, column: 10, scope: !2103)
!2112 = !DILocation(line: 54, column: 13, scope: !2103)
!2113 = !DILocation(line: 54, column: 9, scope: !2103)
!2114 = !DILocation(line: 54, column: 2, scope: !2103)
!2115 = distinct !DISubprogram(name: "raw_atomic_inc_not_zero", scope: !1534, file: !1534, line: 2448, type: !1067, scopeLine: 2449, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2116)
!2116 = !{!2117}
!2117 = !DILocalVariable(name: "v", arg: 1, scope: !2115, file: !1534, line: 2448, type: !592)
!2118 = !DILocation(line: 2448, column: 35, scope: !2115)
!2119 = !DILocation(line: 2453, column: 31, scope: !2115)
!2120 = !DILocation(line: 2453, column: 9, scope: !2115)
!2121 = !DILocation(line: 2453, column: 2, scope: !2115)
!2122 = distinct !DISubprogram(name: "raw_atomic_add_unless", scope: !1534, file: !1534, line: 2428, type: !2123, scopeLine: 2429, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2125)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!336, !592, !77, !77}
!2125 = !{!2126, !2127, !2128}
!2126 = !DILocalVariable(name: "v", arg: 1, scope: !2122, file: !1534, line: 2428, type: !592)
!2127 = !DILocalVariable(name: "a", arg: 2, scope: !2122, file: !1534, line: 2428, type: !77)
!2128 = !DILocalVariable(name: "u", arg: 3, scope: !2122, file: !1534, line: 2428, type: !77)
!2129 = !DILocation(line: 2428, column: 33, scope: !2122)
!2130 = !DILocation(line: 2428, column: 40, scope: !2122)
!2131 = !DILocation(line: 2428, column: 47, scope: !2122)
!2132 = !DILocation(line: 2433, column: 37, scope: !2122)
!2133 = !DILocation(line: 2433, column: 40, scope: !2122)
!2134 = !DILocation(line: 2433, column: 43, scope: !2122)
!2135 = !DILocation(line: 2433, column: 9, scope: !2122)
!2136 = !DILocation(line: 2433, column: 49, scope: !2122)
!2137 = !DILocation(line: 2433, column: 46, scope: !2122)
!2138 = !DILocation(line: 2433, column: 2, scope: !2122)
!2139 = distinct !DISubprogram(name: "raw_atomic_fetch_add_unless", scope: !1534, file: !1534, line: 2399, type: !1131, scopeLine: 2400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2140)
!2140 = !{!2141, !2142, !2143, !2144}
!2141 = !DILocalVariable(name: "v", arg: 1, scope: !2139, file: !1534, line: 2399, type: !592)
!2142 = !DILocalVariable(name: "a", arg: 2, scope: !2139, file: !1534, line: 2399, type: !77)
!2143 = !DILocalVariable(name: "u", arg: 3, scope: !2139, file: !1534, line: 2399, type: !77)
!2144 = !DILocalVariable(name: "c", scope: !2139, file: !1534, line: 2404, type: !77)
!2145 = !DILocation(line: 2399, column: 39, scope: !2139)
!2146 = !DILocation(line: 2399, column: 46, scope: !2139)
!2147 = !DILocation(line: 2399, column: 53, scope: !2139)
!2148 = !DILocation(line: 2404, column: 2, scope: !2139)
!2149 = !DILocation(line: 2404, column: 6, scope: !2139)
!2150 = !DILocation(line: 2404, column: 26, scope: !2139)
!2151 = !DILocation(line: 2404, column: 10, scope: !2139)
!2152 = !DILocation(line: 2406, column: 2, scope: !2139)
!2153 = !DILocation(line: 2407, column: 7, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !1534, line: 2407, column: 7)
!2155 = distinct !DILexicalBlock(scope: !2139, file: !1534, line: 2406, column: 5)
!2156 = !DILocation(line: 2407, column: 7, scope: !2155)
!2157 = !DILocation(line: 2408, column: 4, scope: !2154)
!2158 = !DILocation(line: 2409, column: 2, scope: !2155)
!2159 = !DILocation(line: 2409, column: 35, scope: !2139)
!2160 = !DILocation(line: 2409, column: 42, scope: !2139)
!2161 = !DILocation(line: 2409, column: 46, scope: !2139)
!2162 = !DILocation(line: 2409, column: 44, scope: !2139)
!2163 = !DILocation(line: 2409, column: 12, scope: !2139)
!2164 = !DILocation(line: 2409, column: 11, scope: !2139)
!2165 = distinct !{!2165, !2152, !2166, !451, !452}
!2166 = !DILocation(line: 2409, column: 48, scope: !2139)
!2167 = !DILocation(line: 2411, column: 9, scope: !2139)
!2168 = !DILocation(line: 2413, column: 1, scope: !2139)
!2169 = !DILocation(line: 2411, column: 2, scope: !2139)
!2170 = distinct !DISubprogram(name: "raw_atomic_try_cmpxchg", scope: !1534, file: !1534, line: 2109, type: !2171, scopeLine: 2110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2173)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!336, !592, !108, !77}
!2173 = !{!2174, !2175, !2176}
!2174 = !DILocalVariable(name: "v", arg: 1, scope: !2170, file: !1534, line: 2109, type: !592)
!2175 = !DILocalVariable(name: "old", arg: 2, scope: !2170, file: !1534, line: 2109, type: !108)
!2176 = !DILocalVariable(name: "new", arg: 3, scope: !2170, file: !1534, line: 2109, type: !77)
!2177 = !DILocation(line: 2109, column: 34, scope: !2170)
!2178 = !DILocation(line: 2109, column: 42, scope: !2170)
!2179 = !DILocation(line: 2109, column: 51, scope: !2170)
!2180 = !DILocation(line: 2112, column: 33, scope: !2170)
!2181 = !DILocation(line: 2112, column: 36, scope: !2170)
!2182 = !DILocation(line: 2112, column: 41, scope: !2170)
!2183 = !DILocation(line: 2112, column: 9, scope: !2170)
!2184 = !DILocation(line: 2112, column: 2, scope: !2170)
!2185 = distinct !DISubprogram(name: "arch_atomic_try_cmpxchg", scope: !1567, file: !1567, line: 113, type: !2171, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2186)
!2186 = !{!2187, !2188, !2189, !2190, !2192, !2193, !2194, !2195}
!2187 = !DILocalVariable(name: "v", arg: 1, scope: !2185, file: !1567, line: 113, type: !592)
!2188 = !DILocalVariable(name: "old", arg: 2, scope: !2185, file: !1567, line: 113, type: !108)
!2189 = !DILocalVariable(name: "new", arg: 3, scope: !2185, file: !1567, line: 113, type: !77)
!2190 = !DILocalVariable(name: "success", scope: !2191, file: !1567, line: 115, type: !336)
!2191 = distinct !DILexicalBlock(scope: !2185, file: !1567, line: 115, column: 9)
!2192 = !DILocalVariable(name: "_old", scope: !2191, file: !1567, line: 115, type: !108)
!2193 = !DILocalVariable(name: "__old", scope: !2191, file: !1567, line: 115, type: !77)
!2194 = !DILocalVariable(name: "__new", scope: !2191, file: !1567, line: 115, type: !77)
!2195 = !DILocalVariable(name: "__ptr", scope: !2191, file: !1567, line: 115, type: !109)
!2196 = !DILocation(line: 113, column: 63, scope: !2185)
!2197 = !DILocation(line: 113, column: 71, scope: !2185)
!2198 = !DILocation(line: 113, column: 80, scope: !2185)
!2199 = !DILocation(line: 115, column: 9, scope: !2191)
!2200 = !{i64 2148830612, i64 2148830651, i64 2148830672, i64 2148830709, i64 2148830732, i64 2148830741, i64 2148831039}
!2201 = !DILocation(line: 115, column: 9, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2191, file: !1567, line: 115, column: 9)
!2203 = !DILocation(line: 115, column: 9, scope: !2185)
!2204 = !DILocation(line: 115, column: 2, scope: !2185)
!2205 = distinct !DISubprogram(name: "raw_atomic_cmpxchg", scope: !1534, file: !1534, line: 2001, type: !1131, scopeLine: 2002, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2206)
!2206 = !{!2207, !2208, !2209}
!2207 = !DILocalVariable(name: "v", arg: 1, scope: !2205, file: !1534, line: 2001, type: !592)
!2208 = !DILocalVariable(name: "old", arg: 2, scope: !2205, file: !1534, line: 2001, type: !77)
!2209 = !DILocalVariable(name: "new", arg: 3, scope: !2205, file: !1534, line: 2001, type: !77)
!2210 = !DILocation(line: 2001, column: 30, scope: !2205)
!2211 = !DILocation(line: 2001, column: 37, scope: !2205)
!2212 = !DILocation(line: 2001, column: 46, scope: !2205)
!2213 = !DILocation(line: 2004, column: 29, scope: !2205)
!2214 = !DILocation(line: 2004, column: 32, scope: !2205)
!2215 = !DILocation(line: 2004, column: 37, scope: !2205)
!2216 = !DILocation(line: 2004, column: 9, scope: !2205)
!2217 = !DILocation(line: 2004, column: 2, scope: !2205)
!2218 = distinct !DISubprogram(name: "arch_atomic_cmpxchg", scope: !1567, file: !1567, line: 107, type: !1131, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2219)
!2219 = !{!2220, !2221, !2222, !2223, !2225, !2226, !2227}
!2220 = !DILocalVariable(name: "v", arg: 1, scope: !2218, file: !1567, line: 107, type: !592)
!2221 = !DILocalVariable(name: "old", arg: 2, scope: !2218, file: !1567, line: 107, type: !77)
!2222 = !DILocalVariable(name: "new", arg: 3, scope: !2218, file: !1567, line: 107, type: !77)
!2223 = !DILocalVariable(name: "__ret", scope: !2224, file: !1567, line: 109, type: !77)
!2224 = distinct !DILexicalBlock(scope: !2218, file: !1567, line: 109, column: 9)
!2225 = !DILocalVariable(name: "__old", scope: !2224, file: !1567, line: 109, type: !77)
!2226 = !DILocalVariable(name: "__new", scope: !2224, file: !1567, line: 109, type: !77)
!2227 = !DILocalVariable(name: "__ptr", scope: !2224, file: !1567, line: 109, type: !109)
!2228 = !DILocation(line: 107, column: 58, scope: !2218)
!2229 = !DILocation(line: 107, column: 65, scope: !2218)
!2230 = !DILocation(line: 107, column: 74, scope: !2218)
!2231 = !DILocation(line: 109, column: 9, scope: !2224)
!2232 = !{i64 2148827517, i64 2148827556, i64 2148827577, i64 2148827614, i64 2148827637, i64 2148827646}
!2233 = !DILocation(line: 109, column: 9, scope: !2218)
!2234 = !DILocation(line: 109, column: 2, scope: !2218)
!2235 = distinct !DISubprogram(name: "__list_del_entry", scope: !567, file: !567, line: 213, type: !568, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2236)
!2236 = !{!2237}
!2237 = !DILocalVariable(name: "entry", arg: 1, scope: !2235, file: !567, line: 213, type: !62)
!2238 = !DILocation(line: 213, column: 55, scope: !2235)
!2239 = !DILocation(line: 215, column: 30, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2235, file: !567, line: 215, column: 6)
!2241 = !DILocation(line: 215, column: 7, scope: !2240)
!2242 = !DILocation(line: 215, column: 6, scope: !2235)
!2243 = !DILocation(line: 216, column: 3, scope: !2240)
!2244 = !DILocation(line: 218, column: 13, scope: !2235)
!2245 = !DILocation(line: 218, column: 20, scope: !2235)
!2246 = !DILocation(line: 218, column: 26, scope: !2235)
!2247 = !DILocation(line: 218, column: 33, scope: !2235)
!2248 = !DILocation(line: 218, column: 2, scope: !2235)
!2249 = !DILocation(line: 219, column: 1, scope: !2235)
!2250 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !567, file: !567, line: 134, type: !2251, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2253)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!336, !62}
!2253 = !{!2254}
!2254 = !DILocalVariable(name: "entry", arg: 1, scope: !2250, file: !567, line: 134, type: !62)
!2255 = !DILocation(line: 134, column: 61, scope: !2250)
!2256 = !DILocation(line: 136, column: 2, scope: !2250)
!2257 = distinct !DISubprogram(name: "__list_del", scope: !567, file: !567, line: 193, type: !714, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2258)
!2258 = !{!2259, !2260}
!2259 = !DILocalVariable(name: "prev", arg: 1, scope: !2257, file: !567, line: 193, type: !62)
!2260 = !DILocalVariable(name: "next", arg: 2, scope: !2257, file: !567, line: 193, type: !62)
!2261 = !DILocation(line: 193, column: 50, scope: !2257)
!2262 = !DILocation(line: 193, column: 75, scope: !2257)
!2263 = !DILocation(line: 195, column: 15, scope: !2257)
!2264 = !DILocation(line: 195, column: 2, scope: !2257)
!2265 = !DILocation(line: 195, column: 8, scope: !2257)
!2266 = !DILocation(line: 195, column: 13, scope: !2257)
!2267 = !DILocation(line: 196, column: 2, scope: !2257)
!2268 = !DILocation(line: 196, column: 2, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2257, file: !567, line: 196, column: 2)
!2270 = !DILocation(line: 196, column: 2, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2269, file: !567, line: 196, column: 2)
!2272 = !DILocation(line: 196, column: 2, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2269, file: !567, line: 196, column: 2)
!2274 = !DILocation(line: 197, column: 1, scope: !2257)
!2275 = distinct !DISubprogram(name: "clear_bit", scope: !605, file: !605, line: 39, type: !606, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2276)
!2276 = !{!2277, !2278}
!2277 = !DILocalVariable(name: "nr", arg: 1, scope: !2275, file: !605, line: 39, type: !99)
!2278 = !DILocalVariable(name: "addr", arg: 2, scope: !2275, file: !605, line: 39, type: !608)
!2279 = !DILocation(line: 39, column: 44, scope: !2275)
!2280 = !DILocation(line: 39, column: 72, scope: !2275)
!2281 = !DILocation(line: 41, column: 26, scope: !2275)
!2282 = !DILocation(line: 41, column: 33, scope: !2275)
!2283 = !DILocation(line: 41, column: 31, scope: !2275)
!2284 = !DILocation(line: 41, column: 2, scope: !2275)
!2285 = !DILocation(line: 42, column: 17, scope: !2275)
!2286 = !DILocation(line: 42, column: 21, scope: !2275)
!2287 = !DILocation(line: 42, column: 2, scope: !2275)
!2288 = !DILocation(line: 43, column: 1, scope: !2275)
!2289 = distinct !DISubprogram(name: "list_move_tail", scope: !567, file: !567, line: 307, type: !714, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2290)
!2290 = !{!2291, !2292}
!2291 = !DILocalVariable(name: "list", arg: 1, scope: !2289, file: !567, line: 307, type: !62)
!2292 = !DILocalVariable(name: "head", arg: 2, scope: !2289, file: !567, line: 308, type: !62)
!2293 = !DILocation(line: 307, column: 53, scope: !2289)
!2294 = !DILocation(line: 308, column: 25, scope: !2289)
!2295 = !DILocation(line: 310, column: 19, scope: !2289)
!2296 = !DILocation(line: 310, column: 2, scope: !2289)
!2297 = !DILocation(line: 311, column: 16, scope: !2289)
!2298 = !DILocation(line: 311, column: 22, scope: !2289)
!2299 = !DILocation(line: 311, column: 2, scope: !2289)
!2300 = !DILocation(line: 312, column: 1, scope: !2289)
!2301 = distinct !DISubprogram(name: "__might_resched", scope: !303, file: !303, line: 184, type: !2302, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2304)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{null, !1379, !77, !7}
!2304 = !{!2305, !2306, !2307}
!2305 = !DILocalVariable(name: "file", arg: 1, scope: !2301, file: !303, line: 184, type: !1379)
!2306 = !DILocalVariable(name: "line", arg: 2, scope: !2301, file: !303, line: 184, type: !77)
!2307 = !DILocalVariable(name: "offsets", arg: 3, scope: !2301, file: !303, line: 185, type: !7)
!2308 = !DILocation(line: 184, column: 50, scope: !2301)
!2309 = !DILocation(line: 184, column: 60, scope: !2301)
!2310 = !DILocation(line: 185, column: 23, scope: !2301)
!2311 = !DILocation(line: 185, column: 34, scope: !2301)
!2312 = !DILocation(line: 2104, column: 9, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !306, file: !307, line: 2104, column: 9)
!2314 = !DILocation(line: 2104, column: 9, scope: !306)
!2315 = !DILocation(line: 2104, column: 2, scope: !306)
!2316 = distinct !DISubprogram(name: "arch_clear_bit", scope: !1578, file: !1578, line: 72, type: !606, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2317)
!2317 = !{!2318, !2319}
!2318 = !DILocalVariable(name: "nr", arg: 1, scope: !2316, file: !1578, line: 72, type: !99)
!2319 = !DILocalVariable(name: "addr", arg: 2, scope: !2316, file: !1578, line: 72, type: !608)
!2320 = !DILocation(line: 72, column: 21, scope: !2316)
!2321 = !DILocation(line: 72, column: 49, scope: !2316)
!2322 = !DILocation(line: 74, column: 27, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2316, file: !1578, line: 74, column: 6)
!2324 = !DILocation(line: 74, column: 6, scope: !2323)
!2325 = !DILocation(line: 74, column: 6, scope: !2316)
!2326 = !DILocation(line: 76, column: 6, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2323, file: !1578, line: 74, column: 32)
!2328 = !DILocation(line: 77, column: 13, scope: !2327)
!2329 = !DILocation(line: 77, column: 12, scope: !2327)
!2330 = !DILocation(line: 75, column: 3, scope: !2327)
!2331 = !{i64 2147964570, i64 2147964609, i64 2147964630, i64 2147964667, i64 2147964690, i64 2147964560}
!2332 = !DILocation(line: 78, column: 2, scope: !2327)
!2333 = !DILocation(line: 80, column: 8, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2323, file: !1578, line: 78, column: 9)
!2335 = !DILocation(line: 80, column: 32, scope: !2334)
!2336 = !DILocation(line: 79, column: 3, scope: !2334)
!2337 = !{i64 2147964855, i64 2147964894, i64 2147964915, i64 2147964952, i64 2147964975, i64 2147964845}
!2338 = !DILocation(line: 82, column: 1, scope: !2316)
!2339 = distinct !DISubprogram(name: "kmalloc", scope: !43, file: !43, line: 591, type: !1275, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2340)
!2340 = !{!2341, !2342, !2343}
!2341 = !DILocalVariable(name: "size", arg: 1, scope: !2339, file: !43, line: 591, type: !1277)
!2342 = !DILocalVariable(name: "flags", arg: 2, scope: !2339, file: !43, line: 591, type: !89)
!2343 = !DILocalVariable(name: "index", scope: !2344, file: !43, line: 594, type: !7)
!2344 = distinct !DILexicalBlock(scope: !2345, file: !43, line: 593, column: 42)
!2345 = distinct !DILexicalBlock(scope: !2339, file: !43, line: 593, column: 6)
!2346 = !DILocation(line: 591, column: 61, scope: !2339)
!2347 = !DILocation(line: 591, column: 73, scope: !2339)
!2348 = !DILocation(line: 593, column: 27, scope: !2345)
!2349 = !DILocation(line: 593, column: 6, scope: !2345)
!2350 = !DILocation(line: 593, column: 33, scope: !2345)
!2351 = !DILocation(line: 593, column: 36, scope: !2345)
!2352 = !DILocation(line: 593, column: 6, scope: !2339)
!2353 = !DILocation(line: 594, column: 3, scope: !2344)
!2354 = !DILocation(line: 594, column: 16, scope: !2344)
!2355 = !DILocation(line: 596, column: 7, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2344, file: !43, line: 596, column: 7)
!2357 = !DILocation(line: 596, column: 12, scope: !2356)
!2358 = !DILocation(line: 596, column: 7, scope: !2344)
!2359 = !DILocation(line: 597, column: 25, scope: !2356)
!2360 = !DILocation(line: 597, column: 31, scope: !2356)
!2361 = !DILocation(line: 597, column: 11, scope: !2356)
!2362 = !DILocation(line: 597, column: 4, scope: !2356)
!2363 = !DILocation(line: 599, column: 11, scope: !2344)
!2364 = !DILocation(line: 599, column: 9, scope: !2344)
!2365 = !DILocation(line: 601, column: 33, scope: !2344)
!2366 = !DILocation(line: 601, column: 40, scope: !2344)
!2367 = !DILocation(line: 601, column: 20, scope: !2344)
!2368 = !DILocation(line: 601, column: 5, scope: !2344)
!2369 = !DILocation(line: 601, column: 51, scope: !2344)
!2370 = !DILocation(line: 602, column: 5, scope: !2344)
!2371 = !DILocation(line: 602, column: 12, scope: !2344)
!2372 = !DILocation(line: 600, column: 10, scope: !2344)
!2373 = !DILocation(line: 600, column: 3, scope: !2344)
!2374 = !DILocation(line: 603, column: 2, scope: !2345)
!2375 = !DILocation(line: 604, column: 19, scope: !2339)
!2376 = !DILocation(line: 604, column: 25, scope: !2339)
!2377 = !DILocation(line: 604, column: 9, scope: !2339)
!2378 = !DILocation(line: 604, column: 2, scope: !2339)
!2379 = !DILocation(line: 605, column: 1, scope: !2339)
!2380 = !DISubprogram(name: "kmalloc_large", scope: !43, file: !43, line: 531, type: !1275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2381 = distinct !DISubprogram(name: "__kmalloc_index", scope: !43, file: !43, line: 444, type: !2382, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2384)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!7, !1277, !336}
!2384 = !{!2385, !2386}
!2385 = !DILocalVariable(name: "size", arg: 1, scope: !2381, file: !43, line: 444, type: !1277)
!2386 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !2381, file: !43, line: 445, type: !336)
!2387 = !DILocation(line: 444, column: 60, scope: !2381)
!2388 = !DILocation(line: 445, column: 16, scope: !2381)
!2389 = !DILocation(line: 447, column: 7, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2381, file: !43, line: 447, column: 6)
!2391 = !DILocation(line: 447, column: 6, scope: !2381)
!2392 = !DILocation(line: 448, column: 3, scope: !2390)
!2393 = !DILocation(line: 450, column: 6, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2381, file: !43, line: 450, column: 6)
!2395 = !DILocation(line: 450, column: 11, scope: !2394)
!2396 = !DILocation(line: 450, column: 6, scope: !2381)
!2397 = !DILocation(line: 451, column: 3, scope: !2394)
!2398 = !DILocation(line: 453, column: 32, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2381, file: !43, line: 453, column: 6)
!2400 = !DILocation(line: 453, column: 37, scope: !2399)
!2401 = !DILocation(line: 453, column: 42, scope: !2399)
!2402 = !DILocation(line: 453, column: 45, scope: !2399)
!2403 = !DILocation(line: 453, column: 50, scope: !2399)
!2404 = !DILocation(line: 453, column: 6, scope: !2381)
!2405 = !DILocation(line: 454, column: 3, scope: !2399)
!2406 = !DILocation(line: 455, column: 32, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2381, file: !43, line: 455, column: 6)
!2408 = !DILocation(line: 455, column: 37, scope: !2407)
!2409 = !DILocation(line: 455, column: 43, scope: !2407)
!2410 = !DILocation(line: 455, column: 46, scope: !2407)
!2411 = !DILocation(line: 455, column: 51, scope: !2407)
!2412 = !DILocation(line: 455, column: 6, scope: !2381)
!2413 = !DILocation(line: 456, column: 3, scope: !2407)
!2414 = !DILocation(line: 457, column: 6, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2381, file: !43, line: 457, column: 6)
!2416 = !DILocation(line: 457, column: 11, scope: !2415)
!2417 = !DILocation(line: 457, column: 6, scope: !2381)
!2418 = !DILocation(line: 457, column: 26, scope: !2415)
!2419 = !DILocation(line: 458, column: 6, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2381, file: !43, line: 458, column: 6)
!2421 = !DILocation(line: 458, column: 11, scope: !2420)
!2422 = !DILocation(line: 458, column: 6, scope: !2381)
!2423 = !DILocation(line: 458, column: 26, scope: !2420)
!2424 = !DILocation(line: 459, column: 6, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2381, file: !43, line: 459, column: 6)
!2426 = !DILocation(line: 459, column: 11, scope: !2425)
!2427 = !DILocation(line: 459, column: 6, scope: !2381)
!2428 = !DILocation(line: 459, column: 26, scope: !2425)
!2429 = !DILocation(line: 460, column: 6, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2381, file: !43, line: 460, column: 6)
!2431 = !DILocation(line: 460, column: 11, scope: !2430)
!2432 = !DILocation(line: 460, column: 6, scope: !2381)
!2433 = !DILocation(line: 460, column: 26, scope: !2430)
!2434 = !DILocation(line: 461, column: 6, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2381, file: !43, line: 461, column: 6)
!2436 = !DILocation(line: 461, column: 11, scope: !2435)
!2437 = !DILocation(line: 461, column: 6, scope: !2381)
!2438 = !DILocation(line: 461, column: 26, scope: !2435)
!2439 = !DILocation(line: 462, column: 6, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2381, file: !43, line: 462, column: 6)
!2441 = !DILocation(line: 462, column: 11, scope: !2440)
!2442 = !DILocation(line: 462, column: 6, scope: !2381)
!2443 = !DILocation(line: 462, column: 26, scope: !2440)
!2444 = !DILocation(line: 463, column: 6, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2381, file: !43, line: 463, column: 6)
!2446 = !DILocation(line: 463, column: 11, scope: !2445)
!2447 = !DILocation(line: 463, column: 6, scope: !2381)
!2448 = !DILocation(line: 463, column: 26, scope: !2445)
!2449 = !DILocation(line: 464, column: 6, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2381, file: !43, line: 464, column: 6)
!2451 = !DILocation(line: 464, column: 11, scope: !2450)
!2452 = !DILocation(line: 464, column: 6, scope: !2381)
!2453 = !DILocation(line: 464, column: 26, scope: !2450)
!2454 = !DILocation(line: 465, column: 6, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2381, file: !43, line: 465, column: 6)
!2456 = !DILocation(line: 465, column: 11, scope: !2455)
!2457 = !DILocation(line: 465, column: 6, scope: !2381)
!2458 = !DILocation(line: 465, column: 26, scope: !2455)
!2459 = !DILocation(line: 466, column: 6, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2381, file: !43, line: 466, column: 6)
!2461 = !DILocation(line: 466, column: 11, scope: !2460)
!2462 = !DILocation(line: 466, column: 6, scope: !2381)
!2463 = !DILocation(line: 466, column: 26, scope: !2460)
!2464 = !DILocation(line: 467, column: 6, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2381, file: !43, line: 467, column: 6)
!2466 = !DILocation(line: 467, column: 11, scope: !2465)
!2467 = !DILocation(line: 467, column: 6, scope: !2381)
!2468 = !DILocation(line: 467, column: 26, scope: !2465)
!2469 = !DILocation(line: 468, column: 6, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2381, file: !43, line: 468, column: 6)
!2471 = !DILocation(line: 468, column: 11, scope: !2470)
!2472 = !DILocation(line: 468, column: 6, scope: !2381)
!2473 = !DILocation(line: 468, column: 26, scope: !2470)
!2474 = !DILocation(line: 469, column: 6, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2381, file: !43, line: 469, column: 6)
!2476 = !DILocation(line: 469, column: 11, scope: !2475)
!2477 = !DILocation(line: 469, column: 6, scope: !2381)
!2478 = !DILocation(line: 469, column: 26, scope: !2475)
!2479 = !DILocation(line: 470, column: 6, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2381, file: !43, line: 470, column: 6)
!2481 = !DILocation(line: 470, column: 11, scope: !2480)
!2482 = !DILocation(line: 470, column: 6, scope: !2381)
!2483 = !DILocation(line: 470, column: 26, scope: !2480)
!2484 = !DILocation(line: 471, column: 6, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2381, file: !43, line: 471, column: 6)
!2486 = !DILocation(line: 471, column: 11, scope: !2485)
!2487 = !DILocation(line: 471, column: 6, scope: !2381)
!2488 = !DILocation(line: 471, column: 26, scope: !2485)
!2489 = !DILocation(line: 472, column: 6, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2381, file: !43, line: 472, column: 6)
!2491 = !DILocation(line: 472, column: 11, scope: !2490)
!2492 = !DILocation(line: 472, column: 6, scope: !2381)
!2493 = !DILocation(line: 472, column: 26, scope: !2490)
!2494 = !DILocation(line: 473, column: 6, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2381, file: !43, line: 473, column: 6)
!2496 = !DILocation(line: 473, column: 11, scope: !2495)
!2497 = !DILocation(line: 473, column: 6, scope: !2381)
!2498 = !DILocation(line: 473, column: 26, scope: !2495)
!2499 = !DILocation(line: 474, column: 6, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2381, file: !43, line: 474, column: 6)
!2501 = !DILocation(line: 474, column: 11, scope: !2500)
!2502 = !DILocation(line: 474, column: 6, scope: !2381)
!2503 = !DILocation(line: 474, column: 27, scope: !2500)
!2504 = !DILocation(line: 475, column: 6, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2381, file: !43, line: 475, column: 6)
!2506 = !DILocation(line: 475, column: 11, scope: !2505)
!2507 = !DILocation(line: 475, column: 6, scope: !2381)
!2508 = !DILocation(line: 475, column: 32, scope: !2505)
!2509 = !DILocation(line: 477, column: 50, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2381, file: !43, line: 477, column: 6)
!2511 = !DILocation(line: 477, column: 6, scope: !2381)
!2512 = !DILocation(line: 478, column: 3, scope: !2510)
!2513 = !DILocation(line: 478, column: 3, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2515, file: !43, line: 478, column: 3)
!2515 = distinct !DILexicalBlock(scope: !2510, file: !43, line: 478, column: 3)
!2516 = !{i32 -2143550357}
!2517 = !DILocation(line: 478, column: 3, scope: !2515)
!2518 = !DILocation(line: 480, column: 3, scope: !2510)
!2519 = !DILocation(line: 480, column: 3, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2510, file: !43, line: 480, column: 3)
!2521 = !DILocation(line: 480, column: 3, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2520, file: !43, line: 480, column: 3)
!2523 = !DILocation(line: 480, column: 3, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2520, file: !43, line: 480, column: 3)
!2525 = !{i64 2151417142, i64 2151417171, i64 2151417217, i64 2151417275, i64 2151417329, i64 2151417383, i64 2151417438, i64 2151417469}
!2526 = !DILocation(line: 483, column: 2, scope: !2381)
!2527 = !DILocation(line: 484, column: 1, scope: !2381)
!2528 = !DISubprogram(name: "kmalloc_trace", scope: !43, file: !43, line: 525, type: !2529, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!53, !320, !89, !1277}
!2531 = distinct !DISubprogram(name: "kmalloc_type", scope: !43, file: !43, line: 401, type: !2532, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2534)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!42, !89, !84}
!2534 = !{!2535, !2536}
!2535 = !DILocalVariable(name: "flags", arg: 1, scope: !2531, file: !43, line: 401, type: !89)
!2536 = !DILocalVariable(name: "caller", arg: 2, scope: !2531, file: !43, line: 401, type: !84)
!2537 = !DILocation(line: 401, column: 67, scope: !2531)
!2538 = !DILocation(line: 401, column: 88, scope: !2531)
!2539 = !DILocation(line: 407, column: 6, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2531, file: !43, line: 407, column: 6)
!2541 = !DILocation(line: 407, column: 6, scope: !2531)
!2542 = !DILocation(line: 413, column: 3, scope: !2540)
!2543 = !DILocation(line: 423, column: 38, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2531, file: !43, line: 423, column: 6)
!2545 = !DILocation(line: 423, column: 44, scope: !2544)
!2546 = !DILocation(line: 423, column: 6, scope: !2531)
!2547 = !DILocation(line: 424, column: 3, scope: !2544)
!2548 = !DILocation(line: 426, column: 3, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2531, file: !43, line: 425, column: 6)
!2550 = !DILocation(line: 429, column: 1, scope: !2531)
!2551 = !DISubprogram(name: "__kmalloc", scope: !43, file: !43, line: 488, type: !1275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2552 = !DISubprogram(name: "__compiletime_assert_117", scope: !43, file: !43, line: 478, type: !262, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2553 = distinct !DISubprogram(name: "__must_check_overflow", scope: !2554, file: !2554, line: 51, type: !2555, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2557)
!2554 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!2555 = !DISubroutineType(types: !2556)
!2556 = !{!336, !336}
!2557 = !{!2558}
!2558 = !DILocalVariable(name: "overflow", arg: 1, scope: !2553, file: !2554, line: 51, type: !336)
!2559 = !DILocation(line: 51, column: 60, scope: !2553)
!2560 = !DILocation(line: 53, column: 9, scope: !2553)
!2561 = !DILocation(line: 53, column: 2, scope: !2553)
!2562 = !DISubprogram(name: "kmem_cache_create", scope: !43, file: !43, line: 189, type: !2563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!320, !1379, !7, !7, !209, !2565}
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
