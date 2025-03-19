; ModuleID = 'drivers/iommu/iova.c'
source_filename = "drivers/iommu/iova.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_init_iova_domain: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad init_iova_domain ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_iova_cache_get: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad iova_cache_get ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_iova_cache_put: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad iova_cache_put ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_alloc_iova: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad alloc_iova ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_find_iova: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad find_iova ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___free_iova: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad __free_iova ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_free_iova: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad free_iova ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_alloc_iova_fast: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad alloc_iova_fast ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_free_iova_fast: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad free_iova_fast ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_put_iova_domain: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad put_iova_domain ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_reserve_iova: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad reserve_iova ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_iova_domain_init_rcaches: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad iova_domain_init_rcaches ; .previous"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.cpumask = type { [1 x i64] }
%struct.cpuinfo_x86 = type { %union.anon.2, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.4, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.2 = type { i32 }
%union.anon.4 = type { i64, [88 x i8] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.rb_root = type { ptr }
%struct.iova_domain = type { %struct.spinlock, %struct.rb_root, ptr, ptr, i64, i64, i64, i64, %struct.iova, ptr, %struct.hlist_node }
%struct.iova = type { %struct.rb_node, i64, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.iova_rcache = type { %struct.spinlock, i64, [32 x ptr], ptr }
%struct.iova_cpu_rcache = type { %struct.spinlock, ptr, ptr }
%struct.iova_magazine = type { i64, [127 x i64] }

@.str = private unnamed_addr constant [21 x i8] c"drivers/iommu/iova.c\00", align 1, !dbg !0
@__UNIQUE_ID___addressable_init_iova_domain289 = internal global ptr @init_iova_domain, section ".discard.addressable", align 8, !dbg !7
@iova_cache_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @iova_cache_mutex, i64 16), ptr getelementptr (i8, ptr @iova_cache_mutex, i64 16) } }, align 8, !dbg !409
@iova_cache_users = internal global i32 0, align 4, !dbg !407
@.str.1 = private unnamed_addr constant [16 x i8] c"iommu/iova:dead\00", align 1, !dbg !344
@.str.2 = private unnamed_addr constant [35 x i8] c"\013Couldn't register cpuhp handler\0A\00", align 1, !dbg !349
@.str.3 = private unnamed_addr constant [11 x i8] c"iommu_iova\00", align 1, !dbg !354
@iova_cache = internal global ptr null, align 8, !dbg !402
@.str.4 = private unnamed_addr constant [30 x i8] c"\013Couldn't create iova cache\0A\00", align 1, !dbg !359
@__UNIQUE_ID___addressable_iova_cache_get292 = internal global ptr @iova_cache_get, section ".discard.addressable", align 8, !dbg !364
@__UNIQUE_ID___addressable_iova_cache_put293 = internal global ptr @iova_cache_put, section ".discard.addressable", align 8, !dbg !366
@__UNIQUE_ID___addressable_alloc_iova294 = internal global ptr @alloc_iova, section ".discard.addressable", align 8, !dbg !368
@__UNIQUE_ID___addressable_find_iova295 = internal global ptr @find_iova, section ".discard.addressable", align 8, !dbg !370
@__UNIQUE_ID___addressable___free_iova296 = internal global ptr @__free_iova, section ".discard.addressable", align 8, !dbg !372
@__UNIQUE_ID___addressable_free_iova297 = internal global ptr @free_iova, section ".discard.addressable", align 8, !dbg !374
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@__UNIQUE_ID___addressable_alloc_iova_fast298 = internal global ptr @alloc_iova_fast, section ".discard.addressable", align 8, !dbg !376
@__UNIQUE_ID___addressable_free_iova_fast299 = internal global ptr @free_iova_fast, section ".discard.addressable", align 8, !dbg !378
@__UNIQUE_ID___addressable_put_iova_domain300 = internal global ptr @put_iova_domain, section ".discard.addressable", align 8, !dbg !380
@__UNIQUE_ID___addressable_reserve_iova301 = internal global ptr @reserve_iova, section ".discard.addressable", align 8, !dbg !382
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@__UNIQUE_ID___addressable_iova_domain_init_rcaches302 = internal global ptr @iova_domain_init_rcaches, section ".discard.addressable", align 8, !dbg !384
@__UNIQUE_ID_author303 = internal constant [66 x i8] c"iova.author=Anil S Keshavamurthy <anil.s.keshavamurthy@intel.com>\00", section ".modinfo", align 1, !dbg !386
@__UNIQUE_ID_file304 = internal constant [29 x i8] c"iova.file=drivers/iommu/iova\00", section ".modinfo", align 1, !dbg !392
@__UNIQUE_ID_license305 = internal constant [17 x i8] c"iova.license=GPL\00", section ".modinfo", align 1, !dbg !397
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !437
@this_cpu_off = external dso_local global i64, section ".data..percpu..read_mostly", align 8
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID___addressable_init_iova_domain289, ptr @__UNIQUE_ID___addressable_iova_cache_get292, ptr @__UNIQUE_ID___addressable_iova_cache_put293, ptr @__UNIQUE_ID___addressable_alloc_iova294, ptr @__UNIQUE_ID___addressable_find_iova295, ptr @__UNIQUE_ID___addressable___free_iova296, ptr @__UNIQUE_ID___addressable_free_iova297, ptr @__UNIQUE_ID___addressable_alloc_iova_fast298, ptr @__UNIQUE_ID___addressable_free_iova_fast299, ptr @__UNIQUE_ID___addressable_put_iova_domain300, ptr @__UNIQUE_ID___addressable_reserve_iova301, ptr @__UNIQUE_ID___addressable_iova_domain_init_rcaches302, ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @iova_rcache_range() #0 align 16 !dbg !448 {
entry:
  ret i64 131072, !dbg !451
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @init_iova_domain(ptr noundef %iovad, i64 noundef %granule, i64 noundef %start_pfn) #0 align 16 !dbg !452 {
entry:
  %iovad.addr = alloca ptr, align 8
  %granule.addr = alloca i64, align 8
  %start_pfn.addr = alloca i64, align 8
  %.compoundliteral = alloca %struct.spinlock, align 4
  %.compoundliteral13 = alloca %struct.rb_root, align 8
  store ptr %iovad, ptr %iovad.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iovad.addr, metadata !456, metadata !DIExpression()), !dbg !459
  store i64 %granule, ptr %granule.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %granule.addr, metadata !457, metadata !DIExpression()), !dbg !460
  store i64 %start_pfn, ptr %start_pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start_pfn.addr, metadata !458, metadata !DIExpression()), !dbg !461
  br label %do.body, !dbg !462

do.body:                                          ; preds = %entry
  %0 = load i64, ptr %granule.addr, align 8, !dbg !463
  %cmp = icmp ugt i64 %0, 4096, !dbg !463
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !463

lor.rhs:                                          ; preds = %do.body
  %1 = load i64, ptr %granule.addr, align 8, !dbg !463
  %call = call zeroext i1 @is_power_of_2(i64 noundef %1) #17, !dbg !463
  %lnot = xor i1 %call, true, !dbg !463
  br label %lor.end, !dbg !463

lor.end:                                          ; preds = %lor.rhs, %do.body
  %2 = phi i1 [ true, %do.body ], [ %lnot, %lor.rhs ]
  %lnot1 = xor i1 %2, true, !dbg !463
  %lnot2 = xor i1 %lnot1, true, !dbg !463
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !463
  %conv = sext i32 %lnot.ext to i64, !dbg !463
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !463
  %tobool = icmp ne i64 %expval, 0, !dbg !463
  br i1 %tobool, label %if.then, label %if.end, !dbg !466

if.then:                                          ; preds = %lor.end
  br label %do.body3, !dbg !463

do.body3:                                         ; preds = %if.then
  br label %do.body4, !dbg !467

do.body4:                                         ; preds = %do.body3
  br label %do.end, !dbg !469

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !467

do.body5:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 60, i32 0, i64 12) #18, !dbg !471, !srcloc !473
  br label %do.end6, !dbg !471

do.end6:                                          ; preds = %do.body5
  unreachable, !dbg !467

do.end7:                                          ; No predecessors!
  br label %if.end, !dbg !467

if.end:                                           ; preds = %do.end7, %lor.end
  br label %do.end8, !dbg !466

do.end8:                                          ; preds = %if.end
  br label %do.body9, !dbg !474

do.body9:                                         ; preds = %do.end8
  %3 = load ptr, ptr %iovad.addr, align 8, !dbg !475
  %iova_rbtree_lock = getelementptr inbounds %struct.iova_domain, ptr %3, i32 0, i32 0, !dbg !475
  %call10 = call ptr @spinlock_check(ptr noundef %iova_rbtree_lock) #19, !dbg !475
  %4 = load ptr, ptr %iovad.addr, align 8, !dbg !475
  %iova_rbtree_lock11 = getelementptr inbounds %struct.iova_domain, ptr %4, i32 0, i32 0, !dbg !475
  %5 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !475
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %5, i32 0, i32 0, !dbg !475
  %6 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !475
  %counter = getelementptr inbounds %struct.atomic_t, ptr %6, i32 0, i32 0, !dbg !475
  store i32 0, ptr %counter, align 4, !dbg !475
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iova_rbtree_lock11, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !475
  br label %do.end12, !dbg !475

do.end12:                                         ; preds = %do.body9
  %7 = load ptr, ptr %iovad.addr, align 8, !dbg !477
  %rbroot = getelementptr inbounds %struct.iova_domain, ptr %7, i32 0, i32 1, !dbg !478
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %.compoundliteral13, i32 0, i32 0, !dbg !479
  store ptr null, ptr %rb_node, align 8, !dbg !479
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rbroot, ptr align 8 %.compoundliteral13, i64 8, i1 false), !dbg !479
  %8 = load ptr, ptr %iovad.addr, align 8, !dbg !480
  %anchor = getelementptr inbounds %struct.iova_domain, ptr %8, i32 0, i32 8, !dbg !481
  %node = getelementptr inbounds %struct.iova, ptr %anchor, i32 0, i32 0, !dbg !482
  %9 = load ptr, ptr %iovad.addr, align 8, !dbg !483
  %cached_node = getelementptr inbounds %struct.iova_domain, ptr %9, i32 0, i32 2, !dbg !484
  store ptr %node, ptr %cached_node, align 8, !dbg !485
  %10 = load ptr, ptr %iovad.addr, align 8, !dbg !486
  %anchor14 = getelementptr inbounds %struct.iova_domain, ptr %10, i32 0, i32 8, !dbg !487
  %node15 = getelementptr inbounds %struct.iova, ptr %anchor14, i32 0, i32 0, !dbg !488
  %11 = load ptr, ptr %iovad.addr, align 8, !dbg !489
  %cached32_node = getelementptr inbounds %struct.iova_domain, ptr %11, i32 0, i32 3, !dbg !490
  store ptr %node15, ptr %cached32_node, align 8, !dbg !491
  %12 = load i64, ptr %granule.addr, align 8, !dbg !492
  %13 = load ptr, ptr %iovad.addr, align 8, !dbg !493
  %granule16 = getelementptr inbounds %struct.iova_domain, ptr %13, i32 0, i32 4, !dbg !494
  store i64 %12, ptr %granule16, align 8, !dbg !495
  %14 = load i64, ptr %start_pfn.addr, align 8, !dbg !496
  %15 = load ptr, ptr %iovad.addr, align 8, !dbg !497
  %start_pfn17 = getelementptr inbounds %struct.iova_domain, ptr %15, i32 0, i32 5, !dbg !498
  store i64 %14, ptr %start_pfn17, align 8, !dbg !499
  %16 = load ptr, ptr %iovad.addr, align 8, !dbg !500
  %call18 = call i64 @iova_shift(ptr noundef %16) #19, !dbg !501
  %sub = sub i64 32, %call18, !dbg !502
  %shl = shl i64 1, %sub, !dbg !503
  %17 = load ptr, ptr %iovad.addr, align 8, !dbg !504
  %dma_32bit_pfn = getelementptr inbounds %struct.iova_domain, ptr %17, i32 0, i32 6, !dbg !505
  store i64 %shl, ptr %dma_32bit_pfn, align 8, !dbg !506
  %18 = load ptr, ptr %iovad.addr, align 8, !dbg !507
  %dma_32bit_pfn19 = getelementptr inbounds %struct.iova_domain, ptr %18, i32 0, i32 6, !dbg !508
  %19 = load i64, ptr %dma_32bit_pfn19, align 8, !dbg !508
  %20 = load ptr, ptr %iovad.addr, align 8, !dbg !509
  %max32_alloc_size = getelementptr inbounds %struct.iova_domain, ptr %20, i32 0, i32 7, !dbg !510
  store i64 %19, ptr %max32_alloc_size, align 8, !dbg !511
  %21 = load ptr, ptr %iovad.addr, align 8, !dbg !512
  %anchor20 = getelementptr inbounds %struct.iova_domain, ptr %21, i32 0, i32 8, !dbg !513
  %pfn_hi = getelementptr inbounds %struct.iova, ptr %anchor20, i32 0, i32 1, !dbg !514
  store i64 -1, ptr %pfn_hi, align 8, !dbg !515
  %22 = load ptr, ptr %iovad.addr, align 8, !dbg !516
  %anchor21 = getelementptr inbounds %struct.iova_domain, ptr %22, i32 0, i32 8, !dbg !517
  %pfn_lo = getelementptr inbounds %struct.iova, ptr %anchor21, i32 0, i32 2, !dbg !518
  store i64 -1, ptr %pfn_lo, align 8, !dbg !519
  %23 = load ptr, ptr %iovad.addr, align 8, !dbg !520
  %anchor22 = getelementptr inbounds %struct.iova_domain, ptr %23, i32 0, i32 8, !dbg !521
  %node23 = getelementptr inbounds %struct.iova, ptr %anchor22, i32 0, i32 0, !dbg !522
  %24 = load ptr, ptr %iovad.addr, align 8, !dbg !523
  %rbroot24 = getelementptr inbounds %struct.iova_domain, ptr %24, i32 0, i32 1, !dbg !524
  %rb_node25 = getelementptr inbounds %struct.rb_root, ptr %rbroot24, i32 0, i32 0, !dbg !525
  call void @rb_link_node(ptr noundef %node23, ptr noundef null, ptr noundef %rb_node25) #19, !dbg !526
  %25 = load ptr, ptr %iovad.addr, align 8, !dbg !527
  %anchor26 = getelementptr inbounds %struct.iova_domain, ptr %25, i32 0, i32 8, !dbg !528
  %node27 = getelementptr inbounds %struct.iova, ptr %anchor26, i32 0, i32 0, !dbg !529
  %26 = load ptr, ptr %iovad.addr, align 8, !dbg !530
  %rbroot28 = getelementptr inbounds %struct.iova_domain, ptr %26, i32 0, i32 1, !dbg !531
  call void @rb_insert_color(ptr noundef %node27, ptr noundef %rbroot28) #19, !dbg !532
  ret void, !dbg !533
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal zeroext i1 @is_power_of_2(i64 noundef %n) #2 align 16 !dbg !534 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !541, metadata !DIExpression()), !dbg !542
  %0 = load i64, ptr %n.addr, align 8, !dbg !543
  %cmp = icmp ne i64 %0, 0, !dbg !544
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !545

land.rhs:                                         ; preds = %entry
  %1 = load i64, ptr %n.addr, align 8, !dbg !546
  %2 = load i64, ptr %n.addr, align 8, !dbg !547
  %sub = sub i64 %2, 1, !dbg !548
  %and = and i64 %1, %sub, !dbg !549
  %cmp1 = icmp eq i64 %and, 0, !dbg !550
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !551
  ret i1 %3, !dbg !552
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #4 align 16 !dbg !553 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !560, metadata !DIExpression()), !dbg !561
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !562
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !563
  ret ptr %1, !dbg !564
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @iova_shift(ptr noundef %iovad) #6 align 16 !dbg !565 {
entry:
  %iovad.addr = alloca ptr, align 8
  store ptr %iovad, ptr %iovad.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iovad.addr, metadata !569, metadata !DIExpression()), !dbg !570
  %0 = load ptr, ptr %iovad.addr, align 8, !dbg !571
  %granule = getelementptr inbounds %struct.iova_domain, ptr %0, i32 0, i32 4, !dbg !571
  %1 = load i64, ptr %granule, align 8, !dbg !571
  %2 = call i1 @llvm.is.constant.i64(i64 %1), !dbg !571
  br i1 %2, label %cond.true, label %cond.false, !dbg !571

cond.true:                                        ; preds = %entry
  %3 = load ptr, ptr %iovad.addr, align 8, !dbg !571
  %granule1 = getelementptr inbounds %struct.iova_domain, ptr %3, i32 0, i32 4, !dbg !571
  %4 = load i64, ptr %granule1, align 8, !dbg !571
  %5 = call i64 @llvm.cttz.i64(i64 %4, i1 true), !dbg !571
  %cast = trunc i64 %5 to i32, !dbg !571
  %conv = sext i32 %cast to i64, !dbg !571
  br label %cond.end, !dbg !571

cond.false:                                       ; preds = %entry
  %6 = load ptr, ptr %iovad.addr, align 8, !dbg !571
  %granule2 = getelementptr inbounds %struct.iova_domain, ptr %6, i32 0, i32 4, !dbg !571
  %7 = load i64, ptr %granule2, align 8, !dbg !571
  %call = call i64 @variable__ffs(i64 noundef %7) #19, !dbg !571
  br label %cond.end, !dbg !571

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %call, %cond.false ], !dbg !571
  ret i64 %cond, !dbg !572
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rb_link_node(ptr noundef %node, ptr noundef %parent, ptr noundef %rb_link) #6 align 16 !dbg !573 {
entry:
  %node.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %rb_link.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !579, metadata !DIExpression()), !dbg !582
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !580, metadata !DIExpression()), !dbg !583
  store ptr %rb_link, ptr %rb_link.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb_link.addr, metadata !581, metadata !DIExpression()), !dbg !584
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !585
  %1 = ptrtoint ptr %0 to i64, !dbg !586
  %2 = load ptr, ptr %node.addr, align 8, !dbg !587
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 0, !dbg !588
  store i64 %1, ptr %__rb_parent_color, align 8, !dbg !589
  %3 = load ptr, ptr %node.addr, align 8, !dbg !590
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %3, i32 0, i32 1, !dbg !591
  store ptr null, ptr %rb_right, align 8, !dbg !592
  %4 = load ptr, ptr %node.addr, align 8, !dbg !593
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 2, !dbg !594
  store ptr null, ptr %rb_left, align 8, !dbg !595
  %5 = load ptr, ptr %node.addr, align 8, !dbg !596
  %6 = load ptr, ptr %rb_link.addr, align 8, !dbg !597
  store ptr %5, ptr %6, align 8, !dbg !598
  ret void, !dbg !599
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !600 dso_local void @rb_insert_color(ptr noundef, ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @iova_cache_get() #0 align 16 !dbg !604 {
entry:
  %retval = alloca i32, align 4
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp10 = alloca i32, align 4
  call void @mutex_lock(ptr noundef @iova_cache_mutex) #19, !dbg !611
  %0 = load i32, ptr @iova_cache_users, align 4, !dbg !612
  %tobool = icmp ne i32 %0, 0, !dbg !612
  br i1 %tobool, label %if.end13, label %if.then, !dbg !613

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !614
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !608, metadata !DIExpression()), !dbg !615
  %call = call i32 @cpuhp_setup_state_multi(i32 noundef 36, ptr noundef @.str.1, ptr noundef null, ptr noundef @iova_cpuhp_dead) #19, !dbg !616
  store i32 %call, ptr %ret, align 4, !dbg !617
  %1 = load i32, ptr %ret, align 4, !dbg !618
  %tobool1 = icmp ne i32 %1, 0, !dbg !618
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !620

if.then2:                                         ; preds = %if.then
  call void @mutex_unlock(ptr noundef @iova_cache_mutex) #19, !dbg !621
  br label %do.body, !dbg !623

do.body:                                          ; preds = %if.then2
  br label %do.cond, !dbg !625

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !625

do.end:                                           ; preds = %do.cond
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2) #20, !dbg !623
  store i32 %call3, ptr %tmp, align 4, !dbg !625
  %2 = load i32, ptr %tmp, align 4, !dbg !623
  %3 = load i32, ptr %ret, align 4, !dbg !627
  store i32 %3, ptr %retval, align 4, !dbg !628
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !628

if.end:                                           ; preds = %if.then
  %call4 = call ptr @kmem_cache_create(ptr noundef @.str.3, i32 noundef 40, i32 noundef 0, i32 noundef 8192, ptr noundef null) #19, !dbg !629
  store ptr %call4, ptr @iova_cache, align 8, !dbg !630
  %4 = load ptr, ptr @iova_cache, align 8, !dbg !631
  %tobool5 = icmp ne ptr %4, null, !dbg !631
  br i1 %tobool5, label %if.end12, label %if.then6, !dbg !633

if.then6:                                         ; preds = %if.end
  call void @cpuhp_remove_multi_state(i32 noundef 36) #19, !dbg !634
  call void @mutex_unlock(ptr noundef @iova_cache_mutex) #19, !dbg !636
  br label %do.body7, !dbg !637

do.body7:                                         ; preds = %if.then6
  br label %do.cond8, !dbg !639

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !639

do.end9:                                          ; preds = %do.cond8
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4) #20, !dbg !637
  store i32 %call11, ptr %tmp10, align 4, !dbg !639
  %5 = load i32, ptr %tmp10, align 4, !dbg !637
  store i32 -12, ptr %retval, align 4, !dbg !641
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !641

if.end12:                                         ; preds = %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !642
  br label %cleanup, !dbg !642

cleanup:                                          ; preds = %if.end12, %do.end9, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !642
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end13, !dbg !643

if.end13:                                         ; preds = %cleanup.cont, %entry
  %6 = load i32, ptr @iova_cache_users, align 4, !dbg !644
  %inc = add i32 %6, 1, !dbg !644
  store i32 %inc, ptr @iova_cache_users, align 4, !dbg !644
  call void @mutex_unlock(ptr noundef @iova_cache_mutex) #19, !dbg !645
  store i32 0, ptr %retval, align 4, !dbg !646
  br label %return, !dbg !646

return:                                           ; preds = %if.end13, %cleanup
  %7 = load i32, ptr %retval, align 4, !dbg !647
  ret i32 %7, !dbg !647

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !648 dso_local void @mutex_lock(ptr noundef) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpuhp_setup_state_multi(i32 noundef %state, ptr noundef %name, ptr noundef %startup, ptr noundef %teardown) #6 align 16 !dbg !652 {
entry:
  %state.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %startup.addr = alloca ptr, align 8
  %teardown.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !660, metadata !DIExpression()), !dbg !664
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !661, metadata !DIExpression()), !dbg !665
  store ptr %startup, ptr %startup.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %startup.addr, metadata !662, metadata !DIExpression()), !dbg !666
  store ptr %teardown, ptr %teardown.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %teardown.addr, metadata !663, metadata !DIExpression()), !dbg !667
  %0 = load i32, ptr %state.addr, align 4, !dbg !668
  %1 = load ptr, ptr %name.addr, align 8, !dbg !669
  %2 = load ptr, ptr %startup.addr, align 8, !dbg !670
  %3 = load ptr, ptr %teardown.addr, align 8, !dbg !671
  %call = call i32 @__cpuhp_setup_state(i32 noundef %0, ptr noundef %1, i1 noundef zeroext false, ptr noundef %2, ptr noundef %3, i1 noundef zeroext true) #19, !dbg !672
  ret i32 %call, !dbg !673
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @iova_cpuhp_dead(i32 noundef %cpu, ptr noundef %node) #0 align 16 !dbg !674 {
entry:
  %cpu.addr = alloca i32, align 4
  %node.addr = alloca ptr, align 8
  %iovad = alloca ptr, align 8
  %____ptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !676, metadata !DIExpression()), !dbg !683
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !677, metadata !DIExpression()), !dbg !684
  call void @llvm.lifetime.start.p0(i64 8, ptr %iovad) #18, !dbg !685
  call void @llvm.dbg.declare(metadata ptr %iovad, metadata !678, metadata !DIExpression()), !dbg !686
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr) #18, !dbg !687
  call void @llvm.dbg.declare(metadata ptr %____ptr, metadata !679, metadata !DIExpression()), !dbg !687
  %0 = load ptr, ptr %node.addr, align 8, !dbg !687
  store ptr %0, ptr %____ptr, align 8, !dbg !687
  %1 = load ptr, ptr %____ptr, align 8, !dbg !687
  %tobool = icmp ne ptr %1, null, !dbg !687
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !687

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !688
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !681, metadata !DIExpression()), !dbg !688
  %2 = load ptr, ptr %____ptr, align 8, !dbg !688
  store ptr %2, ptr %__mptr, align 8, !dbg !688
  %3 = load ptr, ptr %__mptr, align 8, !dbg !688
  %add.ptr = getelementptr i8, ptr %3, i64 -112, !dbg !688
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !688
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !687
  %4 = load ptr, ptr %tmp1, align 8, !dbg !688
  br label %cond.end, !dbg !687

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !687

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !687
  store ptr %cond, ptr %tmp, align 8, !dbg !687
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr) #18, !dbg !689
  %5 = load ptr, ptr %tmp, align 8, !dbg !687
  store ptr %5, ptr %iovad, align 8, !dbg !690
  %6 = load i32, ptr %cpu.addr, align 4, !dbg !691
  %7 = load ptr, ptr %iovad, align 8, !dbg !692
  call void @free_cpu_cached_iovas(i32 noundef %6, ptr noundef %7) #19, !dbg !693
  call void @llvm.lifetime.end.p0(i64 8, ptr %iovad) #18, !dbg !694
  ret i32 0, !dbg !695
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !696 dso_local void @mutex_unlock(ptr noundef) #7

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !697 dso_local i32 @_printk(ptr noundef, ...) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !701 dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpuhp_remove_multi_state(i32 noundef %state) #6 align 16 !dbg !707 {
entry:
  %state.addr = alloca i32, align 4
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !711, metadata !DIExpression()), !dbg !712
  %0 = load i32, ptr %state.addr, align 4, !dbg !713
  call void @__cpuhp_remove_state(i32 noundef %0, i1 noundef zeroext false) #19, !dbg !714
  ret void, !dbg !715
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @iova_cache_put() #0 align 16 !dbg !716 {
entry:
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  call void @mutex_lock(ptr noundef @iova_cache_mutex) #19, !dbg !726
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !727
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !720, metadata !DIExpression()), !dbg !727
  %0 = load i32, ptr @iova_cache_users, align 4, !dbg !727
  %tobool = icmp ne i32 %0, 0, !dbg !727
  %lnot = xor i1 %tobool, true, !dbg !727
  %lnot1 = xor i1 %lnot, true, !dbg !727
  %lnot2 = xor i1 %lnot1, true, !dbg !727
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !727
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !727
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !728
  %tobool3 = icmp ne i32 %1, 0, !dbg !728
  %lnot4 = xor i1 %tobool3, true, !dbg !728
  %lnot6 = xor i1 %lnot4, true, !dbg !728
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !728
  %conv = sext i32 %lnot.ext7 to i64, !dbg !728
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !728
  %tobool8 = icmp ne i64 %expval, 0, !dbg !728
  br i1 %tobool8, label %if.then, label %if.end, !dbg !727

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !728

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #18, !dbg !729
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !723, metadata !DIExpression()), !dbg !729
  store i32 2305, ptr %__flags, align 4, !dbg !729
  br label %do.body9, !dbg !729

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !730

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !730

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !729

do.body10:                                        ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !732
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 289, i32 %2, i64 12) #18, !dbg !732, !srcloc !734
  br label %do.cond11, !dbg !732

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !732

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !729

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !735

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !735

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #18, !dbg !728
  br label %do.cond16, !dbg !729

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !729

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !729

if.end:                                           ; preds = %do.end17, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !727
  %tobool18 = icmp ne i32 %3, 0, !dbg !727
  %lnot19 = xor i1 %tobool18, true, !dbg !727
  %lnot21 = xor i1 %lnot19, true, !dbg !727
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !727
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !727
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !727
  store i64 %expval24, ptr %tmp, align 8, !dbg !728
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !737
  %4 = load i64, ptr %tmp, align 8, !dbg !727
  %tobool25 = icmp ne i64 %4, 0, !dbg !737
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !738

if.then26:                                        ; preds = %if.end
  call void @mutex_unlock(ptr noundef @iova_cache_mutex) #19, !dbg !739
  br label %return, !dbg !741

if.end27:                                         ; preds = %if.end
  %5 = load i32, ptr @iova_cache_users, align 4, !dbg !742
  %dec = add i32 %5, -1, !dbg !742
  store i32 %dec, ptr @iova_cache_users, align 4, !dbg !742
  %6 = load i32, ptr @iova_cache_users, align 4, !dbg !743
  %tobool28 = icmp ne i32 %6, 0, !dbg !743
  br i1 %tobool28, label %if.end30, label %if.then29, !dbg !745

if.then29:                                        ; preds = %if.end27
  call void @cpuhp_remove_multi_state(i32 noundef 36) #19, !dbg !746
  %7 = load ptr, ptr @iova_cache, align 8, !dbg !748
  call void @kmem_cache_destroy(ptr noundef %7) #19, !dbg !749
  br label %if.end30, !dbg !750

if.end30:                                         ; preds = %if.then29, %if.end27
  call void @mutex_unlock(ptr noundef @iova_cache_mutex) #19, !dbg !751
  br label %return, !dbg !752

return:                                           ; preds = %if.end30, %if.then26
  ret void, !dbg !752
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !753 dso_local void @kmem_cache_destroy(ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @alloc_iova(ptr noundef %iovad, i64 noundef %size, i64 noundef %limit_pfn, i1 noundef zeroext %size_aligned) #0 align 16 !dbg !756 {
entry:
  %retval = alloca ptr, align 8
  %iovad.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %limit_pfn.addr = alloca i64, align 8
  %size_aligned.addr = alloca i8, align 1
  %new_iova = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %iovad, ptr %iovad.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iovad.addr, metadata !760, metadata !DIExpression()), !dbg !766
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !761, metadata !DIExpression()), !dbg !767
  store i64 %limit_pfn, ptr %limit_pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %limit_pfn.addr, metadata !762, metadata !DIExpression()), !dbg !768
  %frombool = zext i1 %size_aligned to i8
  store i8 %frombool, ptr %size_aligned.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_aligned.addr, metadata !763, metadata !DIExpression()), !dbg !769
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_iova) #18, !dbg !770
  call void @llvm.dbg.declare(metadata ptr %new_iova, metadata !764, metadata !DIExpression()), !dbg !771
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !772
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !765, metadata !DIExpression()), !dbg !773
  %call = call ptr @alloc_iova_mem() #19, !dbg !774
  store ptr %call, ptr %new_iova, align 8, !dbg !775
  %0 = load ptr, ptr %new_iova, align 8, !dbg !776
  %tobool = icmp ne ptr %0, null, !dbg !776
  br i1 %tobool, label %if.end, label %if.then, !dbg !778

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !779
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !779

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %iovad.addr, align 8, !dbg !780
  %2 = load i64, ptr %size.addr, align 8, !dbg !781
  %3 = load i64, ptr %limit_pfn.addr, align 8, !dbg !782
  %add = add i64 %3, 1, !dbg !783
  %4 = load ptr, ptr %new_iova, align 8, !dbg !784
  %5 = load i8, ptr %size_aligned.addr, align 1, !dbg !785, !range !786, !noundef !787
  %tobool1 = trunc i8 %5 to i1, !dbg !785
  %call2 = call i32 @__alloc_and_insert_iova_range(ptr noundef %1, i64 noundef %2, i64 noundef %add, ptr noundef %4, i1 noundef zeroext %tobool1) #19, !dbg !788
  store i32 %call2, ptr %ret, align 4, !dbg !789
  %6 = load i32, ptr %ret, align 4, !dbg !790
  %tobool3 = icmp ne i32 %6, 0, !dbg !790
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !792

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %new_iova, align 8, !dbg !793
  call void @free_iova_mem(ptr noundef %7) #19, !dbg !795
  store ptr null, ptr %retval, align 8, !dbg !796
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !796

if.end5:                                          ; preds = %if.end
  %8 = load ptr, ptr %new_iova, align 8, !dbg !797
  store ptr %8, ptr %retval, align 8, !dbg !798
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !798

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !799
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_iova) #18, !dbg !799
  %9 = load ptr, ptr %retval, align 8, !dbg !799
  ret ptr %9, !dbg !799
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @alloc_iova_mem() #0 align 16 !dbg !800 {
entry:
  %0 = load ptr, ptr @iova_cache, align 8, !dbg !803
  %call = call ptr @kmem_cache_zalloc(ptr noundef %0, i32 noundef 10272) #19, !dbg !804
  ret ptr %call, !dbg !805
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__alloc_and_insert_iova_range(ptr noundef %iovad, i64 noundef %size, i64 noundef %limit_pfn, ptr noundef %new, i1 noundef zeroext %size_aligned) #0 align 16 !dbg !806 {
entry:
  %retval = alloca i32, align 4
  %iovad.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %limit_pfn.addr = alloca i64, align 8
  %new.addr = alloca ptr, align 8
  %size_aligned.addr = alloca i8, align 1
  %curr = alloca ptr, align 8
  %prev = alloca ptr, align 8
  %curr_iova = alloca ptr, align 8
  %flags = alloca i64, align 8
  %new_pfn = alloca i64, align 8
  %retry_pfn = alloca i64, align 8
  %align_mask = alloca i64, align 8
  %high_pfn = alloca i64, align 8
  %low_pfn = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___x290 = alloca i64, align 8
  %__UNIQUE_ID___y291 = alloca i64, align 8
  %tmp15 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %iovad, ptr %iovad.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iovad.addr, metadata !810, metadata !DIExpression()), !dbg !835
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !811, metadata !DIExpression()), !dbg !836
  store i64 %limit_pfn, ptr %limit_pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %limit_pfn.addr, metadata !812, metadata !DIExpression()), !dbg !837
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !813, metadata !DIExpression()), !dbg !838
  %frombool = zext i1 %size_aligned to i8
  store i8 %frombool, ptr %size_aligned.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_aligned.addr, metadata !814, metadata !DIExpression()), !dbg !839
  call void @llvm.lifetime.start.p0(i64 8, ptr %curr) #18, !dbg !840
  call void @llvm.dbg.declare(metadata ptr %curr, metadata !815, metadata !DIExpression()), !dbg !841
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #18, !dbg !840
  call void @llvm.dbg.declare(metadata ptr %prev, metadata !816, metadata !DIExpression()), !dbg !842
  call void @llvm.lifetime.start.p0(i64 8, ptr %curr_iova) #18, !dbg !843
  call void @llvm.dbg.declare(metadata ptr %curr_iova, metadata !817, metadata !DIExpression()), !dbg !844
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #18, !dbg !845
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !818, metadata !DIExpression()), !dbg !846
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_pfn) #18, !dbg !847
  call void @llvm.dbg.declare(metadata ptr %new_pfn, metadata !819, metadata !DIExpression()), !dbg !848
  call void @llvm.lifetime.start.p0(i64 8, ptr %retry_pfn) #18, !dbg !847
  call void @llvm.dbg.declare(metadata ptr %retry_pfn, metadata !820, metadata !DIExpression()), !dbg !849
  call void @llvm.lifetime.start.p0(i64 8, ptr %align_mask) #18, !dbg !850
  call void @llvm.dbg.declare(metadata ptr %align_mask, metadata !821, metadata !DIExpression()), !dbg !851
  store i64 -1, ptr %align_mask, align 8, !dbg !851
  call void @llvm.lifetime.start.p0(i64 8, ptr %high_pfn) #18, !dbg !852
  call void @llvm.dbg.declare(metadata ptr %high_pfn, metadata !822, metadata !DIExpression()), !dbg !853
  %0 = load i64, ptr %limit_pfn.addr, align 8, !dbg !854
  store i64 %0, ptr %high_pfn, align 8, !dbg !853
  call void @llvm.lifetime.start.p0(i64 8, ptr %low_pfn) #18, !dbg !852
  call void @llvm.dbg.declare(metadata ptr %low_pfn, metadata !823, metadata !DIExpression()), !dbg !855
  %1 = load ptr, ptr %iovad.addr, align 8, !dbg !856
  %start_pfn = getelementptr inbounds %struct.iova_domain, ptr %1, i32 0, i32 5, !dbg !857
  %2 = load i64, ptr %start_pfn, align 8, !dbg !857
  store i64 %2, ptr %low_pfn, align 8, !dbg !855
  %3 = load i8, ptr %size_aligned.addr, align 1, !dbg !858, !range !786, !noundef !787
  %tobool = trunc i8 %3 to i1, !dbg !858
  br i1 %tobool, label %if.then, label %if.end, !dbg !860

if.then:                                          ; preds = %entry
  %4 = load i64, ptr %size.addr, align 8, !dbg !861
  %sub = sub i64 %4, 1, !dbg !862
  %call = call i32 @fls_long(i64 noundef %sub) #19, !dbg !863
  %5 = load i64, ptr %align_mask, align 8, !dbg !864
  %sh_prom = zext i32 %call to i64, !dbg !864
  %shl = shl i64 %5, %sh_prom, !dbg !864
  store i64 %shl, ptr %align_mask, align 8, !dbg !864
  br label %if.end, !dbg !865

if.end:                                           ; preds = %if.then, %entry
  br label %do.body, !dbg !866

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !867

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #18, !dbg !868
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !824, metadata !DIExpression()), !dbg !868
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #18, !dbg !868
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !828, metadata !DIExpression()), !dbg !868
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !868
  %conv = zext i1 %cmp to i32, !dbg !868
  store i32 1, ptr %tmp, align 4, !dbg !868
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #18, !dbg !869
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #18, !dbg !869
  %6 = load i32, ptr %tmp, align 4, !dbg !868
  %7 = load ptr, ptr %iovad.addr, align 8, !dbg !869
  %iova_rbtree_lock = getelementptr inbounds %struct.iova_domain, ptr %7, i32 0, i32 0, !dbg !869
  %call2 = call ptr @spinlock_check(ptr noundef %iova_rbtree_lock) #19, !dbg !869
  %call3 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call2) #19, !dbg !869
  store i64 %call3, ptr %flags, align 8, !dbg !869
  br label %do.cond, !dbg !869

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !869

do.end:                                           ; preds = %do.cond
  br label %do.cond4, !dbg !867

do.cond4:                                         ; preds = %do.end
  br label %do.end5, !dbg !867

do.end5:                                          ; preds = %do.cond4
  %8 = load i64, ptr %limit_pfn.addr, align 8, !dbg !870
  %9 = load ptr, ptr %iovad.addr, align 8, !dbg !872
  %dma_32bit_pfn = getelementptr inbounds %struct.iova_domain, ptr %9, i32 0, i32 6, !dbg !873
  %10 = load i64, ptr %dma_32bit_pfn, align 8, !dbg !873
  %cmp6 = icmp ule i64 %8, %10, !dbg !874
  br i1 %cmp6, label %land.lhs.true, label %if.end11, !dbg !875

land.lhs.true:                                    ; preds = %do.end5
  %11 = load i64, ptr %size.addr, align 8, !dbg !876
  %12 = load ptr, ptr %iovad.addr, align 8, !dbg !877
  %max32_alloc_size = getelementptr inbounds %struct.iova_domain, ptr %12, i32 0, i32 7, !dbg !878
  %13 = load i64, ptr %max32_alloc_size, align 8, !dbg !878
  %cmp8 = icmp uge i64 %11, %13, !dbg !879
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !880

if.then10:                                        ; preds = %land.lhs.true
  br label %iova32_full, !dbg !881

if.end11:                                         ; preds = %land.lhs.true, %do.end5
  %14 = load ptr, ptr %iovad.addr, align 8, !dbg !882
  %15 = load i64, ptr %limit_pfn.addr, align 8, !dbg !883
  %call12 = call ptr @__get_cached_rbnode(ptr noundef %14, i64 noundef %15) #19, !dbg !884
  store ptr %call12, ptr %curr, align 8, !dbg !885
  %16 = load ptr, ptr %curr, align 8, !dbg !886
  %call13 = call ptr @to_iova(ptr noundef %16) #19, !dbg !887
  store ptr %call13, ptr %curr_iova, align 8, !dbg !888
  %17 = load ptr, ptr %curr_iova, align 8, !dbg !889
  %pfn_hi = getelementptr inbounds %struct.iova, ptr %17, i32 0, i32 1, !dbg !890
  %18 = load i64, ptr %pfn_hi, align 8, !dbg !890
  store i64 %18, ptr %retry_pfn, align 8, !dbg !891
  br label %retry, !dbg !892

retry:                                            ; preds = %if.then41, %if.end11
  call void @llvm.dbg.label(metadata !829), !dbg !893
  br label %do.body14, !dbg !894

do.body14:                                        ; preds = %land.end, %retry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x290) #18, !dbg !895
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x290, metadata !830, metadata !DIExpression()), !dbg !895
  %19 = load i64, ptr %high_pfn, align 8, !dbg !895
  store i64 %19, ptr %__UNIQUE_ID___x290, align 8, !dbg !895
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y291) #18, !dbg !895
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y291, metadata !833, metadata !DIExpression()), !dbg !895
  %20 = load ptr, ptr %curr_iova, align 8, !dbg !895
  %pfn_lo = getelementptr inbounds %struct.iova, ptr %20, i32 0, i32 2, !dbg !895
  %21 = load i64, ptr %pfn_lo, align 8, !dbg !895
  store i64 %21, ptr %__UNIQUE_ID___y291, align 8, !dbg !895
  %22 = load i64, ptr %__UNIQUE_ID___x290, align 8, !dbg !895
  %23 = load i64, ptr %__UNIQUE_ID___y291, align 8, !dbg !895
  %cmp16 = icmp ult i64 %22, %23, !dbg !895
  br i1 %cmp16, label %cond.true, label %cond.false, !dbg !895

cond.true:                                        ; preds = %do.body14
  %24 = load i64, ptr %__UNIQUE_ID___x290, align 8, !dbg !895
  br label %cond.end, !dbg !895

cond.false:                                       ; preds = %do.body14
  %25 = load i64, ptr %__UNIQUE_ID___y291, align 8, !dbg !895
  br label %cond.end, !dbg !895

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %24, %cond.true ], [ %25, %cond.false ], !dbg !895
  store i64 %cond, ptr %tmp15, align 8, !dbg !895
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y291) #18, !dbg !896
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x290) #18, !dbg !896
  %26 = load i64, ptr %tmp15, align 8, !dbg !895
  store i64 %26, ptr %high_pfn, align 8, !dbg !897
  %27 = load i64, ptr %high_pfn, align 8, !dbg !898
  %28 = load i64, ptr %size.addr, align 8, !dbg !899
  %sub18 = sub i64 %27, %28, !dbg !900
  %29 = load i64, ptr %align_mask, align 8, !dbg !901
  %and = and i64 %sub18, %29, !dbg !902
  store i64 %and, ptr %new_pfn, align 8, !dbg !903
  %30 = load ptr, ptr %curr, align 8, !dbg !904
  store ptr %30, ptr %prev, align 8, !dbg !905
  %31 = load ptr, ptr %curr, align 8, !dbg !906
  %call19 = call ptr @rb_prev(ptr noundef %31) #19, !dbg !907
  store ptr %call19, ptr %curr, align 8, !dbg !908
  %32 = load ptr, ptr %curr, align 8, !dbg !909
  %call20 = call ptr @to_iova(ptr noundef %32) #19, !dbg !910
  store ptr %call20, ptr %curr_iova, align 8, !dbg !911
  br label %do.cond21, !dbg !912

do.cond21:                                        ; preds = %cond.end
  %33 = load ptr, ptr %curr, align 8, !dbg !913
  %tobool22 = icmp ne ptr %33, null, !dbg !913
  br i1 %tobool22, label %land.lhs.true23, label %land.end, !dbg !914

land.lhs.true23:                                  ; preds = %do.cond21
  %34 = load i64, ptr %new_pfn, align 8, !dbg !915
  %35 = load ptr, ptr %curr_iova, align 8, !dbg !916
  %pfn_hi24 = getelementptr inbounds %struct.iova, ptr %35, i32 0, i32 1, !dbg !917
  %36 = load i64, ptr %pfn_hi24, align 8, !dbg !917
  %cmp25 = icmp ule i64 %34, %36, !dbg !918
  br i1 %cmp25, label %land.rhs, label %land.end, !dbg !919

land.rhs:                                         ; preds = %land.lhs.true23
  %37 = load i64, ptr %new_pfn, align 8, !dbg !920
  %38 = load i64, ptr %low_pfn, align 8, !dbg !921
  %cmp27 = icmp uge i64 %37, %38, !dbg !922
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true23, %do.cond21
  %39 = phi i1 [ false, %land.lhs.true23 ], [ false, %do.cond21 ], [ %cmp27, %land.rhs ], !dbg !923
  br i1 %39, label %do.body14, label %do.end29, !dbg !912, !llvm.loop !924

do.end29:                                         ; preds = %land.end
  %40 = load i64, ptr %high_pfn, align 8, !dbg !928
  %41 = load i64, ptr %size.addr, align 8, !dbg !930
  %cmp30 = icmp ult i64 %40, %41, !dbg !931
  br i1 %cmp30, label %if.then34, label %lor.lhs.false, !dbg !932

lor.lhs.false:                                    ; preds = %do.end29
  %42 = load i64, ptr %new_pfn, align 8, !dbg !933
  %43 = load i64, ptr %low_pfn, align 8, !dbg !934
  %cmp32 = icmp ult i64 %42, %43, !dbg !935
  br i1 %cmp32, label %if.then34, label %if.end46, !dbg !936

if.then34:                                        ; preds = %lor.lhs.false, %do.end29
  %44 = load i64, ptr %low_pfn, align 8, !dbg !937
  %45 = load ptr, ptr %iovad.addr, align 8, !dbg !940
  %start_pfn35 = getelementptr inbounds %struct.iova_domain, ptr %45, i32 0, i32 5, !dbg !941
  %46 = load i64, ptr %start_pfn35, align 8, !dbg !941
  %cmp36 = icmp eq i64 %44, %46, !dbg !942
  br i1 %cmp36, label %land.lhs.true38, label %if.end44, !dbg !943

land.lhs.true38:                                  ; preds = %if.then34
  %47 = load i64, ptr %retry_pfn, align 8, !dbg !944
  %48 = load i64, ptr %limit_pfn.addr, align 8, !dbg !945
  %cmp39 = icmp ult i64 %47, %48, !dbg !946
  br i1 %cmp39, label %if.then41, label %if.end44, !dbg !947

if.then41:                                        ; preds = %land.lhs.true38
  %49 = load i64, ptr %limit_pfn.addr, align 8, !dbg !948
  store i64 %49, ptr %high_pfn, align 8, !dbg !950
  %50 = load i64, ptr %retry_pfn, align 8, !dbg !951
  %add = add i64 %50, 1, !dbg !952
  store i64 %add, ptr %low_pfn, align 8, !dbg !953
  %51 = load ptr, ptr %iovad.addr, align 8, !dbg !954
  %52 = load i64, ptr %limit_pfn.addr, align 8, !dbg !955
  %call42 = call ptr @iova_find_limit(ptr noundef %51, i64 noundef %52) #19, !dbg !956
  store ptr %call42, ptr %curr, align 8, !dbg !957
  %53 = load ptr, ptr %curr, align 8, !dbg !958
  %call43 = call ptr @to_iova(ptr noundef %53) #19, !dbg !959
  store ptr %call43, ptr %curr_iova, align 8, !dbg !960
  br label %retry, !dbg !961

if.end44:                                         ; preds = %land.lhs.true38, %if.then34
  %54 = load i64, ptr %size.addr, align 8, !dbg !962
  %55 = load ptr, ptr %iovad.addr, align 8, !dbg !963
  %max32_alloc_size45 = getelementptr inbounds %struct.iova_domain, ptr %55, i32 0, i32 7, !dbg !964
  store i64 %54, ptr %max32_alloc_size45, align 8, !dbg !965
  br label %iova32_full, !dbg !966

if.end46:                                         ; preds = %lor.lhs.false
  %56 = load i64, ptr %new_pfn, align 8, !dbg !967
  %57 = load ptr, ptr %new.addr, align 8, !dbg !968
  %pfn_lo47 = getelementptr inbounds %struct.iova, ptr %57, i32 0, i32 2, !dbg !969
  store i64 %56, ptr %pfn_lo47, align 8, !dbg !970
  %58 = load ptr, ptr %new.addr, align 8, !dbg !971
  %pfn_lo48 = getelementptr inbounds %struct.iova, ptr %58, i32 0, i32 2, !dbg !972
  %59 = load i64, ptr %pfn_lo48, align 8, !dbg !972
  %60 = load i64, ptr %size.addr, align 8, !dbg !973
  %add49 = add i64 %59, %60, !dbg !974
  %sub50 = sub i64 %add49, 1, !dbg !975
  %61 = load ptr, ptr %new.addr, align 8, !dbg !976
  %pfn_hi51 = getelementptr inbounds %struct.iova, ptr %61, i32 0, i32 1, !dbg !977
  store i64 %sub50, ptr %pfn_hi51, align 8, !dbg !978
  %62 = load ptr, ptr %iovad.addr, align 8, !dbg !979
  %rbroot = getelementptr inbounds %struct.iova_domain, ptr %62, i32 0, i32 1, !dbg !980
  %63 = load ptr, ptr %new.addr, align 8, !dbg !981
  %64 = load ptr, ptr %prev, align 8, !dbg !982
  call void @iova_insert_rbtree(ptr noundef %rbroot, ptr noundef %63, ptr noundef %64) #19, !dbg !983
  %65 = load ptr, ptr %iovad.addr, align 8, !dbg !984
  %66 = load ptr, ptr %new.addr, align 8, !dbg !985
  call void @__cached_rbnode_insert_update(ptr noundef %65, ptr noundef %66) #19, !dbg !986
  %67 = load ptr, ptr %iovad.addr, align 8, !dbg !987
  %iova_rbtree_lock52 = getelementptr inbounds %struct.iova_domain, ptr %67, i32 0, i32 0, !dbg !988
  %68 = load i64, ptr %flags, align 8, !dbg !989
  call void @spin_unlock_irqrestore(ptr noundef %iova_rbtree_lock52, i64 noundef %68) #19, !dbg !990
  store i32 0, ptr %retval, align 4, !dbg !991
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !991

iova32_full:                                      ; preds = %if.end44, %if.then10
  call void @llvm.dbg.label(metadata !834), !dbg !992
  %69 = load ptr, ptr %iovad.addr, align 8, !dbg !993
  %iova_rbtree_lock53 = getelementptr inbounds %struct.iova_domain, ptr %69, i32 0, i32 0, !dbg !994
  %70 = load i64, ptr %flags, align 8, !dbg !995
  call void @spin_unlock_irqrestore(ptr noundef %iova_rbtree_lock53, i64 noundef %70) #19, !dbg !996
  store i32 -12, ptr %retval, align 4, !dbg !997
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !997

cleanup:                                          ; preds = %iova32_full, %if.end46
  call void @llvm.lifetime.end.p0(i64 8, ptr %low_pfn) #18, !dbg !998
  call void @llvm.lifetime.end.p0(i64 8, ptr %high_pfn) #18, !dbg !998
  call void @llvm.lifetime.end.p0(i64 8, ptr %align_mask) #18, !dbg !998
  call void @llvm.lifetime.end.p0(i64 8, ptr %retry_pfn) #18, !dbg !998
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_pfn) #18, !dbg !998
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #18, !dbg !998
  call void @llvm.lifetime.end.p0(i64 8, ptr %curr_iova) #18, !dbg !998
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #18, !dbg !998
  call void @llvm.lifetime.end.p0(i64 8, ptr %curr) #18, !dbg !998
  %71 = load i32, ptr %retval, align 4, !dbg !998
  ret i32 %71, !dbg !998
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_iova_mem(ptr noundef %iova) #0 align 16 !dbg !999 {
entry:
  %iova.addr = alloca ptr, align 8
  store ptr %iova, ptr %iova.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iova.addr, metadata !1003, metadata !DIExpression()), !dbg !1004
  %0 = load ptr, ptr %iova.addr, align 8, !dbg !1005
  %pfn_lo = getelementptr inbounds %struct.iova, ptr %0, i32 0, i32 2, !dbg !1007
  %1 = load i64, ptr %pfn_lo, align 8, !dbg !1007
  %cmp = icmp ne i64 %1, -1, !dbg !1008
  br i1 %cmp, label %if.then, label %if.end, !dbg !1009

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @iova_cache, align 8, !dbg !1010
  %3 = load ptr, ptr %iova.addr, align 8, !dbg !1011
  call void @kmem_cache_free(ptr noundef %2, ptr noundef %3) #19, !dbg !1012
  br label %if.end, !dbg !1012

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1013
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @find_iova(ptr noundef %iovad, i64 noundef %pfn) #0 align 16 !dbg !1014 {
entry:
  %iovad.addr = alloca ptr, align 8
  %pfn.addr = alloca i64, align 8
  %flags = alloca i64, align 8
  %iova = alloca ptr, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %iovad, ptr %iovad.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iovad.addr, metadata !1018, metadata !DIExpression()), !dbg !1027
  store i64 %pfn, ptr %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn.addr, metadata !1019, metadata !DIExpression()), !dbg !1028
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #18, !dbg !1029
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1020, metadata !DIExpression()), !dbg !1030
  call void @llvm.lifetime.start.p0(i64 8, ptr %iova) #18, !dbg !1031
  call void @llvm.dbg.declare(metadata ptr %iova, metadata !1021, metadata !DIExpression()), !dbg !1032
  br label %do.body, !dbg !1033

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1034

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #18, !dbg !1035
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1022, metadata !DIExpression()), !dbg !1035
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #18, !dbg !1035
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1026, metadata !DIExpression()), !dbg !1035
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1035
  %conv = zext i1 %cmp to i32, !dbg !1035
  store i32 1, ptr %tmp, align 4, !dbg !1035
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #18, !dbg !1036
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #18, !dbg !1036
  %0 = load i32, ptr %tmp, align 4, !dbg !1035
  %1 = load ptr, ptr %iovad.addr, align 8, !dbg !1036
  %iova_rbtree_lock = getelementptr inbounds %struct.iova_domain, ptr %1, i32 0, i32 0, !dbg !1036
  %call = call ptr @spinlock_check(ptr noundef %iova_rbtree_lock) #19, !dbg !1036
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #19, !dbg !1036
  store i64 %call2, ptr %flags, align 8, !dbg !1036
  br label %do.cond, !dbg !1036

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !1036

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !1034

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !1034

do.end4:                                          ; preds = %do.cond3
  %2 = load ptr, ptr %iovad.addr, align 8, !dbg !1037
  %3 = load i64, ptr %pfn.addr, align 8, !dbg !1038
  %call5 = call ptr @private_find_iova(ptr noundef %2, i64 noundef %3) #19, !dbg !1039
  store ptr %call5, ptr %iova, align 8, !dbg !1040
  %4 = load ptr, ptr %iovad.addr, align 8, !dbg !1041
  %iova_rbtree_lock6 = getelementptr inbounds %struct.iova_domain, ptr %4, i32 0, i32 0, !dbg !1042
  %5 = load i64, ptr %flags, align 8, !dbg !1043
  call void @spin_unlock_irqrestore(ptr noundef %iova_rbtree_lock6, i64 noundef %5) #19, !dbg !1044
  %6 = load ptr, ptr %iova, align 8, !dbg !1045
  call void @llvm.lifetime.end.p0(i64 8, ptr %iova) #18, !dbg !1046
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #18, !dbg !1046
  ret ptr %6, !dbg !1047
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1048 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #7 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @private_find_iova(ptr noundef %iovad, i64 noundef %pfn) #0 align 16 !dbg !1052 {
entry:
  %retval = alloca ptr, align 8
  %iovad.addr = alloca ptr, align 8
  %pfn.addr = alloca i64, align 8
  %node = alloca ptr, align 8
  %iova = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %iovad, ptr %iovad.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iovad.addr, metadata !1054, metadata !DIExpression()), !dbg !1059
  store i64 %pfn, ptr %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn.addr, metadata !1055, metadata !DIExpression()), !dbg !1060
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #18, !dbg !1061
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1056, metadata !DIExpression()), !dbg !1062
  %0 = load ptr, ptr %iovad.addr, align 8, !dbg !1063
  %rbroot = getelementptr inbounds %struct.iova_domain, ptr %0, i32 0, i32 1, !dbg !1064
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %rbroot, i32 0, i32 0, !dbg !1065
  %1 = load ptr, ptr %rb_node, align 8, !dbg !1065
  store ptr %1, ptr %node, align 8, !dbg !1062
  br label %do.body, !dbg !1066

do.body:                                          ; preds = %entry
  %2 = load ptr, ptr %iovad.addr, align 8, !dbg !1067
  %iova_rbtree_lock = getelementptr inbounds %struct.iova_domain, ptr %2, i32 0, i32 0, !dbg !1067
  %3 = getelementptr inbounds %struct.spinlock, ptr %iova_rbtree_lock, i32 0, i32 0, !dbg !1067
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %3, i32 0, i32 0, !dbg !1067
  %call = call i32 @queued_spin_is_locked(ptr noundef %raw_lock) #19, !dbg !1067
  %tobool = icmp ne i32 %call, 0, !dbg !1067
  %lnot = xor i1 %tobool, true, !dbg !1067
  %lnot1 = xor i1 %lnot, true, !dbg !1067
  %lnot2 = xor i1 %lnot1, true, !dbg !1067
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1067
  %conv = sext i32 %lnot.ext to i64, !dbg !1067
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1067
  %tobool3 = icmp ne i64 %expval, 0, !dbg !1067
  br i1 %tobool3, label %if.then, label %if.end, !dbg !1070

if.then:                                          ; preds = %do.body
  br label %do.body4, !dbg !1067

do.body4:                                         ; preds = %if.then
  br label %do.body5, !dbg !1071

do.body5:                                         ; preds = %do.body4
  br label %do.cond, !dbg !1073

do.cond:                                          ; preds = %do.body5
  br label %do.end, !dbg !1073

do.end:                                           ; preds = %do.cond
  br label %do.body6, !dbg !1071

do.body6:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 342, i32 0, i64 12) #18, !dbg !1075, !srcloc !1077
  br label %do.cond7, !dbg !1075

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !1075

do.end8:                                          ; preds = %do.cond7
  unreachable, !dbg !1071

do.cond9:                                         ; No predecessors!
  br label %do.end10, !dbg !1071

do.end10:                                         ; preds = %do.cond9
  br label %if.end, !dbg !1071

if.end:                                           ; preds = %do.end10, %do.body
  br label %do.cond11, !dbg !1070

do.cond11:                                        ; preds = %if.end
  br label %do.end12, !dbg !1070

do.end12:                                         ; preds = %do.cond11
  br label %while.cond, !dbg !1078

while.cond:                                       ; preds = %cleanup.cont, %do.end12
  %4 = load ptr, ptr %node, align 8, !dbg !1079
  %tobool13 = icmp ne ptr %4, null, !dbg !1078
  br i1 %tobool13, label %while.body, label %while.end, !dbg !1078

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %iova) #18, !dbg !1080
  call void @llvm.dbg.declare(metadata ptr %iova, metadata !1057, metadata !DIExpression()), !dbg !1081
  %5 = load ptr, ptr %node, align 8, !dbg !1082
  %call14 = call ptr @to_iova(ptr noundef %5) #19, !dbg !1083
  store ptr %call14, ptr %iova, align 8, !dbg !1081
  %6 = load i64, ptr %pfn.addr, align 8, !dbg !1084
  %7 = load ptr, ptr %iova, align 8, !dbg !1086
  %pfn_lo = getelementptr inbounds %struct.iova, ptr %7, i32 0, i32 2, !dbg !1087
  %8 = load i64, ptr %pfn_lo, align 8, !dbg !1087
  %cmp = icmp ult i64 %6, %8, !dbg !1088
  br i1 %cmp, label %if.then16, label %if.else, !dbg !1089

if.then16:                                        ; preds = %while.body
  %9 = load ptr, ptr %node, align 8, !dbg !1090
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 2, !dbg !1091
  %10 = load ptr, ptr %rb_left, align 8, !dbg !1091
  store ptr %10, ptr %node, align 8, !dbg !1092
  br label %if.end22, !dbg !1093

if.else:                                          ; preds = %while.body
  %11 = load i64, ptr %pfn.addr, align 8, !dbg !1094
  %12 = load ptr, ptr %iova, align 8, !dbg !1096
  %pfn_hi = getelementptr inbounds %struct.iova, ptr %12, i32 0, i32 1, !dbg !1097
  %13 = load i64, ptr %pfn_hi, align 8, !dbg !1097
  %cmp17 = icmp ugt i64 %11, %13, !dbg !1098
  br i1 %cmp17, label %if.then19, label %if.else20, !dbg !1099

if.then19:                                        ; preds = %if.else
  %14 = load ptr, ptr %node, align 8, !dbg !1100
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %14, i32 0, i32 1, !dbg !1101
  %15 = load ptr, ptr %rb_right, align 8, !dbg !1101
  store ptr %15, ptr %node, align 8, !dbg !1102
  br label %if.end21, !dbg !1103

if.else20:                                        ; preds = %if.else
  %16 = load ptr, ptr %iova, align 8, !dbg !1104
  store ptr %16, ptr %retval, align 8, !dbg !1105
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1105

if.end21:                                         ; preds = %if.then19
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then16
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1106
  br label %cleanup, !dbg !1106

cleanup:                                          ; preds = %if.end22, %if.else20
  call void @llvm.lifetime.end.p0(i64 8, ptr %iova) #18, !dbg !1106
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup23 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !1078, !llvm.loop !1107

while.end:                                        ; preds = %while.cond
  store ptr null, ptr %retval, align 8, !dbg !1108
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup23, !dbg !1108

cleanup23:                                        ; preds = %while.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #18, !dbg !1109
  %17 = load ptr, ptr %retval, align 8, !dbg !1109
  ret ptr %17, !dbg !1109
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #4 align 16 !dbg !1110 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1114, metadata !DIExpression()), !dbg !1120
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1115, metadata !DIExpression()), !dbg !1121
  br label %do.body, !dbg !1122

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #18, !dbg !1123
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1116, metadata !DIExpression()), !dbg !1123
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #18, !dbg !1123
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1119, metadata !DIExpression()), !dbg !1123
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1123
  %conv = zext i1 %cmp to i32, !dbg !1123
  store i32 1, ptr %tmp, align 4, !dbg !1123
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #18, !dbg !1124
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #18, !dbg !1124
  %0 = load i32, ptr %tmp, align 4, !dbg !1123
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !1124
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !1124
  %3 = load i64, ptr %flags.addr, align 8, !dbg !1124
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #19, !dbg !1124
  br label %do.end, !dbg !1124

do.end:                                           ; preds = %do.body
  ret void, !dbg !1125
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__free_iova(ptr noundef %iovad, ptr noundef %iova) #0 align 16 !dbg !1126 {
entry:
  %iovad.addr = alloca ptr, align 8
  %iova.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %iovad, ptr %iovad.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iovad.addr, metadata !1130, metadata !DIExpression()), !dbg !1138
  store ptr %iova, ptr %iova.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iova.addr, metadata !1131, metadata !DIExpression()), !dbg !1139
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #18, !dbg !1140
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1132, metadata !DIExpression()), !dbg !1141
  br label %do.body, !dbg !1142

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1143

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #18, !dbg !1144
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1133, metadata !DIExpression()), !dbg !1144
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #18, !dbg !1144
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1137, metadata !DIExpression()), !dbg !1144
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1144
  %conv = zext i1 %cmp to i32, !dbg !1144
  store i32 1, ptr %tmp, align 4, !dbg !1144
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #18, !dbg !1145
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #18, !dbg !1145
  %0 = load i32, ptr %tmp, align 4, !dbg !1144
  %1 = load ptr, ptr %iovad.addr, align 8, !dbg !1145
  %iova_rbtree_lock = getelementptr inbounds %struct.iova_domain, ptr %1, i32 0, i32 0, !dbg !1145
  %call = call ptr @spinlock_check(ptr noundef %iova_rbtree_lock) #19, !dbg !1145
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #19, !dbg !1145
  store i64 %call2, ptr %flags, align 8, !dbg !1145
  br label %do.cond, !dbg !1145

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !1145

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !1143

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !1143

do.end4:                                          ; preds = %do.cond3
  %2 = load ptr, ptr %iovad.addr, align 8, !dbg !1146
  %3 = load ptr, ptr %iova.addr, align 8, !dbg !1147
  call void @remove_iova(ptr noundef %2, ptr noundef %3) #19, !dbg !1148
  %4 = load ptr, ptr %iovad.addr, align 8, !dbg !1149
  %iova_rbtree_lock5 = getelementptr inbounds %struct.iova_domain, ptr %4, i32 0, i32 0, !dbg !1150
  %5 = load i64, ptr %flags, align 8, !dbg !1151
  call void @spin_unlock_irqrestore(ptr noundef %iova_rbtree_lock5, i64 noundef %5) #19, !dbg !1152
  %6 = load ptr, ptr %iova.addr, align 8, !dbg !1153
  call void @free_iova_mem(ptr noundef %6) #19, !dbg !1154
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #18, !dbg !1155
  ret void, !dbg !1155
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @remove_iova(ptr noundef %iovad, ptr noundef %iova) #0 align 16 !dbg !1156 {
entry:
  %iovad.addr = alloca ptr, align 8
  %iova.addr = alloca ptr, align 8
  store ptr %iovad, ptr %iovad.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iovad.addr, metadata !1158, metadata !DIExpression()), !dbg !1160
  store ptr %iova, ptr %iova.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iova.addr, metadata !1159, metadata !DIExpression()), !dbg !1161
  br label %do.body, !dbg !1162

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %iovad.addr, align 8, !dbg !1163
  %iova_rbtree_lock = getelementptr inbounds %struct.iova_domain, ptr %0, i32 0, i32 0, !dbg !1163
  %1 = getelementptr inbounds %struct.spinlock, ptr %iova_rbtree_lock, i32 0, i32 0, !dbg !1163
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %1, i32 0, i32 0, !dbg !1163
  %call = call i32 @queued_spin_is_locked(ptr noundef %raw_lock) #19, !dbg !1163
  %tobool = icmp ne i32 %call, 0, !dbg !1163
  %lnot = xor i1 %tobool, true, !dbg !1163
  %lnot1 = xor i1 %lnot, true, !dbg !1163
  %lnot2 = xor i1 %lnot1, true, !dbg !1163
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1163
  %conv = sext i32 %lnot.ext to i64, !dbg !1163
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1163
  %tobool3 = icmp ne i64 %expval, 0, !dbg !1163
  br i1 %tobool3, label %if.then, label %if.end, !dbg !1166

if.then:                                          ; preds = %do.body
  br label %do.body4, !dbg !1163

do.body4:                                         ; preds = %if.then
  br label %do.body5, !dbg !1167

do.body5:                                         ; preds = %do.body4
  br label %do.end, !dbg !1169

do.end:                                           ; preds = %do.body5
  br label %do.body6, !dbg !1167

do.body6:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 360, i32 0, i64 12) #18, !dbg !1171, !srcloc !1173
  br label %do.end7, !dbg !1171

do.end7:                                          ; preds = %do.body6
  unreachable, !dbg !1167

do.end8:                                          ; No predecessors!
  br label %if.end, !dbg !1167

if.end:                                           ; preds = %do.end8, %do.body
  br label %do.end9, !dbg !1166

do.end9:                                          ; preds = %if.end
  %2 = load ptr, ptr %iovad.addr, align 8, !dbg !1174
  %3 = load ptr, ptr %iova.addr, align 8, !dbg !1175
  call void @__cached_rbnode_delete_update(ptr noundef %2, ptr noundef %3) #19, !dbg !1176
  %4 = load ptr, ptr %iova.addr, align 8, !dbg !1177
  %node = getelementptr inbounds %struct.iova, ptr %4, i32 0, i32 0, !dbg !1178
  %5 = load ptr, ptr %iovad.addr, align 8, !dbg !1179
  %rbroot = getelementptr inbounds %struct.iova_domain, ptr %5, i32 0, i32 1, !dbg !1180
  call void @rb_erase(ptr noundef %node, ptr noundef %rbroot) #19, !dbg !1181
  ret void, !dbg !1182
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @free_iova(ptr noundef %iovad, i64 noundef %pfn) #0 align 16 !dbg !1183 {
entry:
  %iovad.addr = alloca ptr, align 8
  %pfn.addr = alloca i64, align 8
  %flags = alloca i64, align 8
  %iova = alloca ptr, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %iovad, ptr %iovad.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iovad.addr, metadata !1187, metadata !DIExpression()), !dbg !1196
  store i64 %pfn, ptr %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn.addr, metadata !1188, metadata !DIExpression()), !dbg !1197
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #18, !dbg !1198
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1189, metadata !DIExpression()), !dbg !1199
  call void @llvm.lifetime.start.p0(i64 8, ptr %iova) #18, !dbg !1200
  call void @llvm.dbg.declare(metadata ptr %iova, metadata !1190, metadata !DIExpression()), !dbg !1201
  br label %do.body, !dbg !1202

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1203

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #18, !dbg !1204
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1191, metadata !DIExpression()), !dbg !1204
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #18, !dbg !1204
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1195, metadata !DIExpression()), !dbg !1204
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1204
  %conv = zext i1 %cmp to i32, !dbg !1204
  store i32 1, ptr %tmp, align 4, !dbg !1204
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #18, !dbg !1205
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #18, !dbg !1205
  %0 = load i32, ptr %tmp, align 4, !dbg !1204
  %1 = load ptr, ptr %iovad.addr, align 8, !dbg !1205
  %iova_rbtree_lock = getelementptr inbounds %struct.iova_domain, ptr %1, i32 0, i32 0, !dbg !1205
  %call = call ptr @spinlock_check(ptr noundef %iova_rbtree_lock) #19, !dbg !1205
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #19, !dbg !1205
  store i64 %call2, ptr %flags, align 8, !dbg !1205
  br label %do.cond, !dbg !1205

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !1205

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !1203

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !1203

do.end4:                                          ; preds = %do.cond3
  %2 = load ptr, ptr %iovad.addr, align 8, !dbg !1206
  %3 = load i64, ptr %pfn.addr, align 8, !dbg !1207
  %call5 = call ptr @private_find_iova(ptr noundef %2, i64 noundef %3) #19, !dbg !1208
  store ptr %call5, ptr %iova, align 8, !dbg !1209
  %4 = load ptr, ptr %iova, align 8, !dbg !1210
  %tobool = icmp ne ptr %4, null, !dbg !1210
  br i1 %tobool, label %if.end, label %if.then, !dbg !1212

if.then:                                          ; preds = %do.end4
  %5 = load ptr, ptr %iovad.addr, align 8, !dbg !1213
  %iova_rbtree_lock6 = getelementptr inbounds %struct.iova_domain, ptr %5, i32 0, i32 0, !dbg !1215
  %6 = load i64, ptr %flags, align 8, !dbg !1216
  call void @spin_unlock_irqrestore(ptr noundef %iova_rbtree_lock6, i64 noundef %6) #19, !dbg !1217
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1218

if.end:                                           ; preds = %do.end4
  %7 = load ptr, ptr %iovad.addr, align 8, !dbg !1219
  %8 = load ptr, ptr %iova, align 8, !dbg !1220
  call void @remove_iova(ptr noundef %7, ptr noundef %8) #19, !dbg !1221
  %9 = load ptr, ptr %iovad.addr, align 8, !dbg !1222
  %iova_rbtree_lock7 = getelementptr inbounds %struct.iova_domain, ptr %9, i32 0, i32 0, !dbg !1223
  %10 = load i64, ptr %flags, align 8, !dbg !1224
  call void @spin_unlock_irqrestore(ptr noundef %iova_rbtree_lock7, i64 noundef %10) #19, !dbg !1225
  %11 = load ptr, ptr %iova, align 8, !dbg !1226
  call void @free_iova_mem(ptr noundef %11) #19, !dbg !1227
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1228
  br label %cleanup, !dbg !1228

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %iova) #18, !dbg !1228
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #18, !dbg !1228
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1228

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @alloc_iova_fast(ptr noundef %iovad, i64 noundef %size, i64 noundef %limit_pfn, i1 noundef zeroext %flush_rcache) #0 align 16 !dbg !1229 {
entry:
  %retval = alloca i64, align 8
  %iovad.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %limit_pfn.addr = alloca i64, align 8
  %flush_rcache.addr = alloca i8, align 1
  %iova_pfn = alloca i64, align 8
  %new_iova = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %cpu = alloca i32, align 4
  store ptr %iovad, ptr %iovad.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iovad.addr, metadata !1233, metadata !DIExpression()), !dbg !1243
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1234, metadata !DIExpression()), !dbg !1244
  store i64 %limit_pfn, ptr %limit_pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %limit_pfn.addr, metadata !1235, metadata !DIExpression()), !dbg !1245
  %frombool = zext i1 %flush_rcache to i8
  store i8 %frombool, ptr %flush_rcache.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %flush_rcache.addr, metadata !1236, metadata !DIExpression()), !dbg !1246
  call void @llvm.lifetime.start.p0(i64 8, ptr %iova_pfn) #18, !dbg !1247
  call void @llvm.dbg.declare(metadata ptr %iova_pfn, metadata !1237, metadata !DIExpression()), !dbg !1248
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_iova) #18, !dbg !1249
  call void @llvm.dbg.declare(metadata ptr %new_iova, metadata !1238, metadata !DIExpression()), !dbg !1250
  %0 = load i64, ptr %size.addr, align 8, !dbg !1251
  %cmp = icmp ult i64 %0, 32, !dbg !1253
  br i1 %cmp, label %if.then, label %if.end, !dbg !1254

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !1255
  %2 = call i1 @llvm.is.constant.i64(i64 %1), !dbg !1255
  br i1 %2, label %cond.true, label %cond.false16, !dbg !1255

cond.true:                                        ; preds = %if.then
  %3 = load i64, ptr %size.addr, align 8, !dbg !1255
  %cmp1 = icmp eq i64 %3, 1, !dbg !1255
  br i1 %cmp1, label %cond.true2, label %cond.false, !dbg !1255

cond.true2:                                       ; preds = %cond.true
  br label %cond.end14, !dbg !1255

cond.false:                                       ; preds = %cond.true
  %4 = load i64, ptr %size.addr, align 8, !dbg !1255
  %sub = sub i64 %4, 1, !dbg !1255
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !1255
  br i1 %5, label %cond.true3, label %cond.false10, !dbg !1255

cond.true3:                                       ; preds = %cond.false
  %6 = load i64, ptr %size.addr, align 8, !dbg !1255
  %sub4 = sub i64 %6, 1, !dbg !1255
  %cmp5 = icmp ult i64 %sub4, 2, !dbg !1255
  br i1 %cmp5, label %cond.true6, label %cond.false7, !dbg !1255

cond.true6:                                       ; preds = %cond.true3
  br label %cond.end, !dbg !1255

cond.false7:                                      ; preds = %cond.true3
  %7 = load i64, ptr %size.addr, align 8, !dbg !1255
  %sub8 = sub i64 %7, 1, !dbg !1255
  %8 = call i64 @llvm.ctlz.i64(i64 %sub8, i1 true), !dbg !1255
  %cast = trunc i64 %8 to i32, !dbg !1255
  %sub9 = sub i32 63, %cast, !dbg !1255
  br label %cond.end, !dbg !1255

cond.end:                                         ; preds = %cond.false7, %cond.true6
  %cond = phi i32 [ 0, %cond.true6 ], [ %sub9, %cond.false7 ], !dbg !1255
  br label %cond.end12, !dbg !1255

cond.false10:                                     ; preds = %cond.false
  %9 = load i64, ptr %size.addr, align 8, !dbg !1255
  %sub11 = sub i64 %9, 1, !dbg !1255
  %call = call i32 @__ilog2_u64(i64 noundef %sub11) #17, !dbg !1255
  br label %cond.end12, !dbg !1255

cond.end12:                                       ; preds = %cond.false10, %cond.end
  %cond13 = phi i32 [ %cond, %cond.end ], [ %call, %cond.false10 ], !dbg !1255
  %add = add i32 %cond13, 1, !dbg !1255
  %sh_prom = zext i32 %add to i64, !dbg !1255
  %shl = shl i64 1, %sh_prom, !dbg !1255
  br label %cond.end14, !dbg !1255

cond.end14:                                       ; preds = %cond.end12, %cond.true2
  %cond15 = phi i64 [ 1, %cond.true2 ], [ %shl, %cond.end12 ], !dbg !1255
  br label %cond.end18, !dbg !1255

cond.false16:                                     ; preds = %if.then
  %10 = load i64, ptr %size.addr, align 8, !dbg !1255
  %call17 = call i64 @__roundup_pow_of_two(i64 noundef %10) #17, !dbg !1255
  br label %cond.end18, !dbg !1255

cond.end18:                                       ; preds = %cond.false16, %cond.end14
  %cond19 = phi i64 [ %cond15, %cond.end14 ], [ %call17, %cond.false16 ], !dbg !1255
  store i64 %cond19, ptr %size.addr, align 8, !dbg !1256
  br label %if.end, !dbg !1257

if.end:                                           ; preds = %cond.end18, %entry
  %11 = load ptr, ptr %iovad.addr, align 8, !dbg !1258
  %12 = load i64, ptr %size.addr, align 8, !dbg !1259
  %13 = load i64, ptr %limit_pfn.addr, align 8, !dbg !1260
  %add20 = add i64 %13, 1, !dbg !1261
  %call21 = call i64 @iova_rcache_get(ptr noundef %11, i64 noundef %12, i64 noundef %add20) #19, !dbg !1262
  store i64 %call21, ptr %iova_pfn, align 8, !dbg !1263
  %14 = load i64, ptr %iova_pfn, align 8, !dbg !1264
  %tobool = icmp ne i64 %14, 0, !dbg !1264
  br i1 %tobool, label %if.then22, label %if.end23, !dbg !1266

if.then22:                                        ; preds = %if.end
  %15 = load i64, ptr %iova_pfn, align 8, !dbg !1267
  store i64 %15, ptr %retval, align 8, !dbg !1268
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup35, !dbg !1268

if.end23:                                         ; preds = %if.end
  br label %retry, !dbg !1264

retry:                                            ; preds = %cleanup, %if.end23
  call void @llvm.dbg.label(metadata !1239), !dbg !1269
  %16 = load ptr, ptr %iovad.addr, align 8, !dbg !1270
  %17 = load i64, ptr %size.addr, align 8, !dbg !1271
  %18 = load i64, ptr %limit_pfn.addr, align 8, !dbg !1272
  %call24 = call ptr @alloc_iova(ptr noundef %16, i64 noundef %17, i64 noundef %18, i1 noundef zeroext true) #19, !dbg !1273
  store ptr %call24, ptr %new_iova, align 8, !dbg !1274
  %19 = load ptr, ptr %new_iova, align 8, !dbg !1275
  %tobool25 = icmp ne ptr %19, null, !dbg !1275
  br i1 %tobool25, label %if.end34, label %if.then26, !dbg !1276

if.then26:                                        ; preds = %retry
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #18, !dbg !1277
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !1240, metadata !DIExpression()), !dbg !1278
  %20 = load i8, ptr %flush_rcache.addr, align 1, !dbg !1279, !range !786, !noundef !787
  %tobool27 = trunc i8 %20 to i1, !dbg !1279
  br i1 %tobool27, label %if.end29, label %if.then28, !dbg !1281

if.then28:                                        ; preds = %if.then26
  store i64 0, ptr %retval, align 8, !dbg !1282
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1282

if.end29:                                         ; preds = %if.then26
  store i8 0, ptr %flush_rcache.addr, align 1, !dbg !1283
  store i32 0, ptr %cpu, align 4, !dbg !1284
  br label %for.cond, !dbg !1284

for.cond:                                         ; preds = %for.inc, %if.end29
  %21 = load i32, ptr %cpu, align 4, !dbg !1286
  %conv = zext i32 %21 to i64, !dbg !1286
  %call30 = call i64 @find_next_bit(ptr noundef @__cpu_online_mask, i64 noundef 64, i64 noundef %conv) #19, !dbg !1286
  %conv31 = trunc i64 %call30 to i32, !dbg !1286
  store i32 %conv31, ptr %cpu, align 4, !dbg !1286
  %22 = load i32, ptr %cpu, align 4, !dbg !1286
  %cmp32 = icmp ult i32 %22, 64, !dbg !1286
  br i1 %cmp32, label %for.body, label %for.end, !dbg !1284

for.body:                                         ; preds = %for.cond
  %23 = load i32, ptr %cpu, align 4, !dbg !1288
  %24 = load ptr, ptr %iovad.addr, align 8, !dbg !1289
  call void @free_cpu_cached_iovas(i32 noundef %23, ptr noundef %24) #19, !dbg !1290
  br label %for.inc, !dbg !1290

for.inc:                                          ; preds = %for.body
  %25 = load i32, ptr %cpu, align 4, !dbg !1286
  %inc = add i32 %25, 1, !dbg !1286
  store i32 %inc, ptr %cpu, align 4, !dbg !1286
  br label %for.cond, !dbg !1286, !llvm.loop !1291

for.end:                                          ; preds = %for.cond
  %26 = load ptr, ptr %iovad.addr, align 8, !dbg !1293
  call void @free_global_cached_iovas(ptr noundef %26) #19, !dbg !1294
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1295

cleanup:                                          ; preds = %for.end, %if.then28
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #18, !dbg !1296
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup35 [
    i32 2, label %retry
  ]

if.end34:                                         ; preds = %retry
  %27 = load ptr, ptr %new_iova, align 8, !dbg !1297
  %pfn_lo = getelementptr inbounds %struct.iova, ptr %27, i32 0, i32 2, !dbg !1298
  %28 = load i64, ptr %pfn_lo, align 8, !dbg !1298
  store i64 %28, ptr %retval, align 8, !dbg !1299
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup35, !dbg !1299

cleanup35:                                        ; preds = %if.end34, %cleanup, %if.then22
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_iova) #18, !dbg !1300
  call void @llvm.lifetime.end.p0(i64 8, ptr %iova_pfn) #18, !dbg !1300
  %29 = load i64, ptr %retval, align 8, !dbg !1300
  ret i64 %29, !dbg !1300
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal i32 @__ilog2_u64(i64 noundef %n) #11 align 16 !dbg !1301 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1308, metadata !DIExpression()), !dbg !1309
  %0 = load i64, ptr %n.addr, align 8, !dbg !1310
  %call = call i32 @fls64(i64 noundef %0) #19, !dbg !1311
  %sub = sub i32 %call, 1, !dbg !1312
  ret i32 %sub, !dbg !1313
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal i64 @__roundup_pow_of_two(i64 noundef %n) #2 align 16 !dbg !1314 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1318, metadata !DIExpression()), !dbg !1319
  %0 = load i64, ptr %n.addr, align 8, !dbg !1320
  %sub = sub i64 %0, 1, !dbg !1321
  %call = call i32 @fls_long(i64 noundef %sub) #19, !dbg !1322
  %sh_prom = zext i32 %call to i64, !dbg !1323
  %shl = shl i64 1, %sh_prom, !dbg !1323
  ret i64 %shl, !dbg !1324
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @iova_rcache_get(ptr noundef %iovad, i64 noundef %size, i64 noundef %limit_pfn) #0 align 16 !dbg !1325 {
entry:
  %retval = alloca i64, align 8
  %iovad.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %limit_pfn.addr = alloca i64, align 8
  %log_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %iovad, ptr %iovad.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iovad.addr, metadata !1329, metadata !DIExpression()), !dbg !1333
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1330, metadata !DIExpression()), !dbg !1334
  store i64 %limit_pfn, ptr %limit_pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %limit_pfn.addr, metadata !1331, metadata !DIExpression()), !dbg !1335
  call void @llvm.lifetime.start.p0(i64 4, ptr %log_size) #18, !dbg !1336
  call void @llvm.dbg.declare(metadata ptr %log_size, metadata !1332, metadata !DIExpression()), !dbg !1337
  %0 = load i64, ptr %size.addr, align 8, !dbg !1338
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1338
  br i1 %1, label %cond.true, label %cond.false16, !dbg !1338

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1338
  %cmp = icmp eq i64 %2, 0, !dbg !1338
  br i1 %cmp, label %cond.true2, label %lor.lhs.false, !dbg !1338

lor.lhs.false:                                    ; preds = %cond.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !1338
  %cmp1 = icmp eq i64 %3, 1, !dbg !1338
  br i1 %cmp1, label %cond.true2, label %cond.false, !dbg !1338

cond.true2:                                       ; preds = %lor.lhs.false, %cond.true
  br label %cond.end14, !dbg !1338

cond.false:                                       ; preds = %lor.lhs.false
  %4 = load i64, ptr %size.addr, align 8, !dbg !1338
  %sub = sub i64 %4, 1, !dbg !1338
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !1338
  br i1 %5, label %cond.true3, label %cond.false10, !dbg !1338

cond.true3:                                       ; preds = %cond.false
  %6 = load i64, ptr %size.addr, align 8, !dbg !1338
  %sub4 = sub i64 %6, 1, !dbg !1338
  %cmp5 = icmp ult i64 %sub4, 2, !dbg !1338
  br i1 %cmp5, label %cond.true6, label %cond.false7, !dbg !1338

cond.true6:                                       ; preds = %cond.true3
  br label %cond.end, !dbg !1338

cond.false7:                                      ; preds = %cond.true3
  %7 = load i64, ptr %size.addr, align 8, !dbg !1338
  %sub8 = sub i64 %7, 1, !dbg !1338
  %8 = call i64 @llvm.ctlz.i64(i64 %sub8, i1 true), !dbg !1338
  %cast = trunc i64 %8 to i32, !dbg !1338
  %sub9 = sub i32 63, %cast, !dbg !1338
  br label %cond.end, !dbg !1338

cond.end:                                         ; preds = %cond.false7, %cond.true6
  %cond = phi i32 [ 0, %cond.true6 ], [ %sub9, %cond.false7 ], !dbg !1338
  br label %cond.end12, !dbg !1338

cond.false10:                                     ; preds = %cond.false
  %9 = load i64, ptr %size.addr, align 8, !dbg !1338
  %sub11 = sub i64 %9, 1, !dbg !1338
  %call = call i32 @__ilog2_u64(i64 noundef %sub11) #17, !dbg !1338
  br label %cond.end12, !dbg !1338

cond.end12:                                       ; preds = %cond.false10, %cond.end
  %cond13 = phi i32 [ %cond, %cond.end ], [ %call, %cond.false10 ], !dbg !1338
  %add = add i32 %cond13, 1, !dbg !1338
  br label %cond.end14, !dbg !1338

cond.end14:                                       ; preds = %cond.end12, %cond.true2
  %cond15 = phi i32 [ 0, %cond.true2 ], [ %add, %cond.end12 ], !dbg !1338
  br label %cond.end18, !dbg !1338

cond.false16:                                     ; preds = %entry
  %10 = load i64, ptr %size.addr, align 8, !dbg !1338
  %call17 = call i32 @__order_base_2(i64 noundef %10) #17, !dbg !1338
  br label %cond.end18, !dbg !1338

cond.end18:                                       ; preds = %cond.false16, %cond.end14
  %cond19 = phi i32 [ %cond15, %cond.end14 ], [ %call17, %cond.false16 ], !dbg !1338
  store i32 %cond19, ptr %log_size, align 4, !dbg !1337
  %11 = load i32, ptr %log_size, align 4, !dbg !1339
  %cmp20 = icmp uge i32 %11, 6, !dbg !1341
  br i1 %cmp20, label %if.then, label %if.end, !dbg !1342

if.then:                                          ; preds = %cond.end18
  store i64 0, ptr %retval, align 8, !dbg !1343
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1343

if.end:                                           ; preds = %cond.end18
  %12 = load ptr, ptr %iovad.addr, align 8, !dbg !1344
  %rcaches = getelementptr inbounds %struct.iova_domain, ptr %12, i32 0, i32 9, !dbg !1345
  %13 = load ptr, ptr %rcaches, align 8, !dbg !1345
  %14 = load i32, ptr %log_size, align 4, !dbg !1346
  %idxprom = zext i32 %14 to i64, !dbg !1344
  %arrayidx = getelementptr %struct.iova_rcache, ptr %13, i64 %idxprom, !dbg !1344
  %15 = load i64, ptr %limit_pfn.addr, align 8, !dbg !1347
  %16 = load i64, ptr %size.addr, align 8, !dbg !1348
  %sub21 = sub i64 %15, %16, !dbg !1349
  %call22 = call i64 @__iova_rcache_get(ptr noundef %arrayidx, i64 noundef %sub21) #19, !dbg !1350
  store i64 %call22, ptr %retval, align 8, !dbg !1351
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1351

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %log_size) #18, !dbg !1352
  %17 = load i64, ptr %retval, align 8, !dbg !1352
  ret i64 %17, !dbg !1352
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #6 align 16 !dbg !1353 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1360, metadata !DIExpression()), !dbg !1366
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1361, metadata !DIExpression()), !dbg !1367
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !1362, metadata !DIExpression()), !dbg !1368
  %0 = load i64, ptr %size.addr, align 8, !dbg !1369
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1369
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !1369

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1369
  %cmp = icmp ule i64 %2, 64, !dbg !1369
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !1369

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !1369
  %cmp2 = icmp ugt i64 %3, 0, !dbg !1369
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !1370

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #18, !dbg !1371
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1363, metadata !DIExpression()), !dbg !1372
  %4 = load i64, ptr %offset.addr, align 8, !dbg !1373
  %5 = load i64, ptr %size.addr, align 8, !dbg !1373
  %cmp3 = icmp uge i64 %4, %5, !dbg !1373
  %lnot = xor i1 %cmp3, true, !dbg !1373
  %lnot4 = xor i1 %lnot, true, !dbg !1373
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !1373
  %conv = sext i32 %lnot.ext to i64, !dbg !1373
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1373
  %tobool = icmp ne i64 %expval, 0, !dbg !1373
  br i1 %tobool, label %if.then5, label %if.end, !dbg !1375

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1376
  store i64 %6, ptr %retval, align 8, !dbg !1377
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1377

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !1378
  %8 = load i64, ptr %7, align 8, !dbg !1379
  %9 = load i64, ptr %offset.addr, align 8, !dbg !1380
  %shl = shl i64 1, %9, !dbg !1380
  %sub = sub i64 -1, %shl, !dbg !1380
  %add = add i64 %sub, 1, !dbg !1380
  %10 = load i64, ptr %size.addr, align 8, !dbg !1380
  %sub6 = sub i64 %10, 1, !dbg !1380
  %sub7 = sub i64 63, %sub6, !dbg !1380
  %shr = lshr i64 -1, %sub7, !dbg !1380
  %and = and i64 %add, %shr, !dbg !1380
  %add8 = add i64 0, %and, !dbg !1380
  %and9 = and i64 %8, %add8, !dbg !1381
  store i64 %and9, ptr %val, align 8, !dbg !1382
  %11 = load i64, ptr %val, align 8, !dbg !1383
  %tobool10 = icmp ne i64 %11, 0, !dbg !1383
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !1383

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !1384
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !1384
  br i1 %13, label %cond.true11, label %cond.false, !dbg !1384

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !1384
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !1384
  %cast = trunc i64 %15 to i32, !dbg !1384
  %conv12 = sext i32 %cast to i64, !dbg !1384
  br label %cond.end, !dbg !1384

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !1384
  %call = call i64 @variable__ffs(i64 noundef %16) #19, !dbg !1384
  br label %cond.end, !dbg !1384

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !1384
  br label %cond.end14, !dbg !1383

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !1385
  br label %cond.end14, !dbg !1383

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !1383
  store i64 %cond15, ptr %retval, align 8, !dbg !1386
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1386

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #18, !dbg !1387
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !1388
  %19 = load i64, ptr %size.addr, align 8, !dbg !1389
  %20 = load i64, ptr %offset.addr, align 8, !dbg !1390
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #19, !dbg !1391
  store i64 %call17, ptr %retval, align 8, !dbg !1392
  br label %return, !dbg !1392

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !1393
  ret i64 %21, !dbg !1393
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_cpu_cached_iovas(i32 noundef %cpu, ptr noundef %iovad) #0 align 16 !dbg !1394 {
entry:
  %cpu.addr = alloca i32, align 4
  %iovad.addr = alloca ptr, align 8
  %cpu_rcache = alloca ptr, align 8
  %rcache = alloca ptr, align 8
  %flags = alloca i64, align 8
  %i = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1398, metadata !DIExpression()), !dbg !1419
  store ptr %iovad, ptr %iovad.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iovad.addr, metadata !1399, metadata !DIExpression()), !dbg !1420
  call void @llvm.lifetime.start.p0(i64 8, ptr %cpu_rcache) #18, !dbg !1421
  call void @llvm.dbg.declare(metadata ptr %cpu_rcache, metadata !1400, metadata !DIExpression()), !dbg !1422
  call void @llvm.lifetime.start.p0(i64 8, ptr %rcache) #18, !dbg !1423
  call void @llvm.dbg.declare(metadata ptr %rcache, metadata !1401, metadata !DIExpression()), !dbg !1424
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #18, !dbg !1425
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1402, metadata !DIExpression()), !dbg !1426
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !1427
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1403, metadata !DIExpression()), !dbg !1428
  store i32 0, ptr %i, align 4, !dbg !1429
  br label %for.cond, !dbg !1430

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1431
  %cmp = icmp slt i32 %0, 6, !dbg !1432
  br i1 %cmp, label %for.body, label %for.end, !dbg !1433

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %iovad.addr, align 8, !dbg !1434
  %rcaches = getelementptr inbounds %struct.iova_domain, ptr %1, i32 0, i32 9, !dbg !1435
  %2 = load ptr, ptr %rcaches, align 8, !dbg !1435
  %3 = load i32, ptr %i, align 4, !dbg !1436
  %idxprom = sext i32 %3 to i64, !dbg !1434
  %arrayidx = getelementptr %struct.iova_rcache, ptr %2, i64 %idxprom, !dbg !1434
  store ptr %arrayidx, ptr %rcache, align 8, !dbg !1437
  br label %do.body, !dbg !1438

do.body:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #18, !dbg !1439
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1404, metadata !DIExpression()), !dbg !1439
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1439
  %4 = load ptr, ptr %__vpp_verify, align 8, !dbg !1439
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #18, !dbg !1438
  br label %do.cond, !dbg !1439

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1439

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #18, !dbg !1440
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !1412, metadata !DIExpression()), !dbg !1440
  %5 = load ptr, ptr %rcache, align 8, !dbg !1440
  %cpu_rcaches = getelementptr inbounds %struct.iova_rcache, ptr %5, i32 0, i32 3, !dbg !1440
  %6 = load ptr, ptr %cpu_rcaches, align 8, !dbg !1440
  %7 = ptrtoint ptr %6 to i64, !dbg !1440
  store i64 %7, ptr %__ptr, align 8, !dbg !1440
  %8 = load i64, ptr %__ptr, align 8, !dbg !1440
  %9 = load i32, ptr %cpu.addr, align 4, !dbg !1440
  %idxprom2 = zext i32 %9 to i64, !dbg !1440
  %arrayidx3 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom2, !dbg !1440
  %10 = load i64, ptr %arrayidx3, align 8, !dbg !1440
  %add = add i64 %8, %10, !dbg !1440
  %11 = inttoptr i64 %add to ptr, !dbg !1440
  store ptr %11, ptr %tmp1, align 8, !dbg !1440
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #18, !dbg !1438
  %12 = load ptr, ptr %tmp1, align 8, !dbg !1440
  store ptr %12, ptr %tmp, align 8, !dbg !1439
  %13 = load ptr, ptr %tmp, align 8, !dbg !1438
  store ptr %13, ptr %cpu_rcache, align 8, !dbg !1441
  br label %do.body4, !dbg !1442

do.body4:                                         ; preds = %do.end
  br label %do.body5, !dbg !1443

do.body5:                                         ; preds = %do.body4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #18, !dbg !1444
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1414, metadata !DIExpression()), !dbg !1444
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #18, !dbg !1444
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1418, metadata !DIExpression()), !dbg !1444
  %cmp6 = icmp eq ptr %__dummy, %__dummy2, !dbg !1444
  %conv = zext i1 %cmp6 to i32, !dbg !1444
  store i32 1, ptr %tmp7, align 4, !dbg !1444
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #18, !dbg !1445
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #18, !dbg !1445
  %14 = load i32, ptr %tmp7, align 4, !dbg !1444
  %15 = load ptr, ptr %cpu_rcache, align 8, !dbg !1445
  %lock = getelementptr inbounds %struct.iova_cpu_rcache, ptr %15, i32 0, i32 0, !dbg !1445
  %call = call ptr @spinlock_check(ptr noundef %lock) #19, !dbg !1445
  %call8 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #19, !dbg !1445
  store i64 %call8, ptr %flags, align 8, !dbg !1445
  br label %do.cond9, !dbg !1445

do.cond9:                                         ; preds = %do.body5
  br label %do.end10, !dbg !1445

do.end10:                                         ; preds = %do.cond9
  br label %do.cond11, !dbg !1443

do.cond11:                                        ; preds = %do.end10
  br label %do.end12, !dbg !1443

do.end12:                                         ; preds = %do.cond11
  %16 = load ptr, ptr %cpu_rcache, align 8, !dbg !1446
  %loaded = getelementptr inbounds %struct.iova_cpu_rcache, ptr %16, i32 0, i32 1, !dbg !1447
  %17 = load ptr, ptr %loaded, align 8, !dbg !1447
  %18 = load ptr, ptr %iovad.addr, align 8, !dbg !1448
  call void @iova_magazine_free_pfns(ptr noundef %17, ptr noundef %18) #19, !dbg !1449
  %19 = load ptr, ptr %cpu_rcache, align 8, !dbg !1450
  %prev = getelementptr inbounds %struct.iova_cpu_rcache, ptr %19, i32 0, i32 2, !dbg !1451
  %20 = load ptr, ptr %prev, align 8, !dbg !1451
  %21 = load ptr, ptr %iovad.addr, align 8, !dbg !1452
  call void @iova_magazine_free_pfns(ptr noundef %20, ptr noundef %21) #19, !dbg !1453
  %22 = load ptr, ptr %cpu_rcache, align 8, !dbg !1454
  %lock13 = getelementptr inbounds %struct.iova_cpu_rcache, ptr %22, i32 0, i32 0, !dbg !1455
  %23 = load i64, ptr %flags, align 8, !dbg !1456
  call void @spin_unlock_irqrestore(ptr noundef %lock13, i64 noundef %23) #19, !dbg !1457
  br label %for.inc, !dbg !1458

for.inc:                                          ; preds = %do.end12
  %24 = load i32, ptr %i, align 4, !dbg !1459
  %inc = add i32 %24, 1, !dbg !1459
  store i32 %inc, ptr %i, align 4, !dbg !1459
  br label %for.cond, !dbg !1460, !llvm.loop !1461

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !1463
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #18, !dbg !1463
  call void @llvm.lifetime.end.p0(i64 8, ptr %rcache) #18, !dbg !1463
  call void @llvm.lifetime.end.p0(i64 8, ptr %cpu_rcache) #18, !dbg !1463
  ret void, !dbg !1463
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_global_cached_iovas(ptr noundef %iovad) #0 align 16 !dbg !1464 {
entry:
  %iovad.addr = alloca ptr, align 8
  %rcache = alloca ptr, align 8
  %flags = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %iovad, ptr %iovad.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iovad.addr, metadata !1468, metadata !DIExpression()), !dbg !1481
  call void @llvm.lifetime.start.p0(i64 8, ptr %rcache) #18, !dbg !1482
  call void @llvm.dbg.declare(metadata ptr %rcache, metadata !1469, metadata !DIExpression()), !dbg !1483
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #18, !dbg !1484
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1470, metadata !DIExpression()), !dbg !1485
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !1486
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1471, metadata !DIExpression()), !dbg !1487
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #18, !dbg !1486
  call void @llvm.dbg.declare(metadata ptr %j, metadata !1472, metadata !DIExpression()), !dbg !1488
  store i32 0, ptr %i, align 4, !dbg !1489
  br label %for.cond, !dbg !1490

for.cond:                                         ; preds = %for.inc18, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1491
  %cmp = icmp slt i32 %0, 6, !dbg !1492
  br i1 %cmp, label %for.body, label %for.end20, !dbg !1493

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %iovad.addr, align 8, !dbg !1494
  %rcaches = getelementptr inbounds %struct.iova_domain, ptr %1, i32 0, i32 9, !dbg !1495
  %2 = load ptr, ptr %rcaches, align 8, !dbg !1495
  %3 = load i32, ptr %i, align 4, !dbg !1496
  %idxprom = sext i32 %3 to i64, !dbg !1494
  %arrayidx = getelementptr %struct.iova_rcache, ptr %2, i64 %idxprom, !dbg !1494
  store ptr %arrayidx, ptr %rcache, align 8, !dbg !1497
  br label %do.body, !dbg !1498

do.body:                                          ; preds = %for.body
  br label %do.body1, !dbg !1499

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #18, !dbg !1500
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1473, metadata !DIExpression()), !dbg !1500
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #18, !dbg !1500
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1480, metadata !DIExpression()), !dbg !1500
  %cmp2 = icmp eq ptr %__dummy, %__dummy2, !dbg !1500
  %conv = zext i1 %cmp2 to i32, !dbg !1500
  store i32 1, ptr %tmp, align 4, !dbg !1500
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #18, !dbg !1501
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #18, !dbg !1501
  %4 = load i32, ptr %tmp, align 4, !dbg !1500
  %5 = load ptr, ptr %rcache, align 8, !dbg !1501
  %lock = getelementptr inbounds %struct.iova_rcache, ptr %5, i32 0, i32 0, !dbg !1501
  %call = call ptr @spinlock_check(ptr noundef %lock) #19, !dbg !1501
  %call3 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #19, !dbg !1501
  store i64 %call3, ptr %flags, align 8, !dbg !1501
  br label %do.cond, !dbg !1501

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !1501

do.end:                                           ; preds = %do.cond
  br label %do.cond4, !dbg !1499

do.cond4:                                         ; preds = %do.end
  br label %do.end5, !dbg !1499

do.end5:                                          ; preds = %do.cond4
  store i32 0, ptr %j, align 4, !dbg !1502
  br label %for.cond6, !dbg !1504

for.cond6:                                        ; preds = %for.inc, %do.end5
  %6 = load i32, ptr %j, align 4, !dbg !1505
  %conv7 = sext i32 %6 to i64, !dbg !1505
  %7 = load ptr, ptr %rcache, align 8, !dbg !1507
  %depot_size = getelementptr inbounds %struct.iova_rcache, ptr %7, i32 0, i32 1, !dbg !1508
  %8 = load i64, ptr %depot_size, align 8, !dbg !1508
  %cmp8 = icmp ult i64 %conv7, %8, !dbg !1509
  br i1 %cmp8, label %for.body10, label %for.end, !dbg !1510

for.body10:                                       ; preds = %for.cond6
  %9 = load ptr, ptr %rcache, align 8, !dbg !1511
  %depot = getelementptr inbounds %struct.iova_rcache, ptr %9, i32 0, i32 2, !dbg !1513
  %10 = load i32, ptr %j, align 4, !dbg !1514
  %idxprom11 = sext i32 %10 to i64, !dbg !1511
  %arrayidx12 = getelementptr [32 x ptr], ptr %depot, i64 0, i64 %idxprom11, !dbg !1511
  %11 = load ptr, ptr %arrayidx12, align 8, !dbg !1511
  %12 = load ptr, ptr %iovad.addr, align 8, !dbg !1515
  call void @iova_magazine_free_pfns(ptr noundef %11, ptr noundef %12) #19, !dbg !1516
  %13 = load ptr, ptr %rcache, align 8, !dbg !1517
  %depot13 = getelementptr inbounds %struct.iova_rcache, ptr %13, i32 0, i32 2, !dbg !1518
  %14 = load i32, ptr %j, align 4, !dbg !1519
  %idxprom14 = sext i32 %14 to i64, !dbg !1517
  %arrayidx15 = getelementptr [32 x ptr], ptr %depot13, i64 0, i64 %idxprom14, !dbg !1517
  %15 = load ptr, ptr %arrayidx15, align 8, !dbg !1517
  call void @iova_magazine_free(ptr noundef %15) #19, !dbg !1520
  br label %for.inc, !dbg !1521

for.inc:                                          ; preds = %for.body10
  %16 = load i32, ptr %j, align 4, !dbg !1522
  %inc = add i32 %16, 1, !dbg !1522
  store i32 %inc, ptr %j, align 4, !dbg !1522
  br label %for.cond6, !dbg !1523, !llvm.loop !1524

for.end:                                          ; preds = %for.cond6
  %17 = load ptr, ptr %rcache, align 8, !dbg !1526
  %depot_size16 = getelementptr inbounds %struct.iova_rcache, ptr %17, i32 0, i32 1, !dbg !1527
  store i64 0, ptr %depot_size16, align 8, !dbg !1528
  %18 = load ptr, ptr %rcache, align 8, !dbg !1529
  %lock17 = getelementptr inbounds %struct.iova_rcache, ptr %18, i32 0, i32 0, !dbg !1530
  %19 = load i64, ptr %flags, align 8, !dbg !1531
  call void @spin_unlock_irqrestore(ptr noundef %lock17, i64 noundef %19) #19, !dbg !1532
  br label %for.inc18, !dbg !1533

for.inc18:                                        ; preds = %for.end
  %20 = load i32, ptr %i, align 4, !dbg !1534
  %inc19 = add i32 %20, 1, !dbg !1534
  store i32 %inc19, ptr %i, align 4, !dbg !1534
  br label %for.cond, !dbg !1535, !llvm.loop !1536

for.end20:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #18, !dbg !1538
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !1538
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #18, !dbg !1538
  call void @llvm.lifetime.end.p0(i64 8, ptr %rcache) #18, !dbg !1538
  ret void, !dbg !1538
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @free_iova_fast(ptr noundef %iovad, i64 noundef %pfn, i64 noundef %size) #0 align 16 !dbg !1539 {
entry:
  %iovad.addr = alloca ptr, align 8
  %pfn.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  store ptr %iovad, ptr %iovad.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iovad.addr, metadata !1541, metadata !DIExpression()), !dbg !1544
  store i64 %pfn, ptr %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn.addr, metadata !1542, metadata !DIExpression()), !dbg !1545
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1543, metadata !DIExpression()), !dbg !1546
  %0 = load ptr, ptr %iovad.addr, align 8, !dbg !1547
  %1 = load i64, ptr %pfn.addr, align 8, !dbg !1549
  %2 = load i64, ptr %size.addr, align 8, !dbg !1550
  %call = call zeroext i1 @iova_rcache_insert(ptr noundef %0, i64 noundef %1, i64 noundef %2) #19, !dbg !1551
  br i1 %call, label %if.then, label %if.end, !dbg !1552

if.then:                                          ; preds = %entry
  br label %return, !dbg !1553

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %iovad.addr, align 8, !dbg !1554
  %4 = load i64, ptr %pfn.addr, align 8, !dbg !1555
  call void @free_iova(ptr noundef %3, i64 noundef %4) #19, !dbg !1556
  br label %return, !dbg !1557

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !1557
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @iova_rcache_insert(ptr noundef %iovad, i64 noundef %pfn, i64 noundef %size) #0 align 16 !dbg !1558 {
entry:
  %retval = alloca i1, align 1
  %iovad.addr = alloca ptr, align 8
  %pfn.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %log_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %iovad, ptr %iovad.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iovad.addr, metadata !1562, metadata !DIExpression()), !dbg !1566
  store i64 %pfn, ptr %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn.addr, metadata !1563, metadata !DIExpression()), !dbg !1567
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1564, metadata !DIExpression()), !dbg !1568
  call void @llvm.lifetime.start.p0(i64 4, ptr %log_size) #18, !dbg !1569
  call void @llvm.dbg.declare(metadata ptr %log_size, metadata !1565, metadata !DIExpression()), !dbg !1570
  %0 = load i64, ptr %size.addr, align 8, !dbg !1571
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1571
  br i1 %1, label %cond.true, label %cond.false16, !dbg !1571

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1571
  %cmp = icmp eq i64 %2, 0, !dbg !1571
  br i1 %cmp, label %cond.true2, label %lor.lhs.false, !dbg !1571

lor.lhs.false:                                    ; preds = %cond.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !1571
  %cmp1 = icmp eq i64 %3, 1, !dbg !1571
  br i1 %cmp1, label %cond.true2, label %cond.false, !dbg !1571

cond.true2:                                       ; preds = %lor.lhs.false, %cond.true
  br label %cond.end14, !dbg !1571

cond.false:                                       ; preds = %lor.lhs.false
  %4 = load i64, ptr %size.addr, align 8, !dbg !1571
  %sub = sub i64 %4, 1, !dbg !1571
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !1571
  br i1 %5, label %cond.true3, label %cond.false10, !dbg !1571

cond.true3:                                       ; preds = %cond.false
  %6 = load i64, ptr %size.addr, align 8, !dbg !1571
  %sub4 = sub i64 %6, 1, !dbg !1571
  %cmp5 = icmp ult i64 %sub4, 2, !dbg !1571
  br i1 %cmp5, label %cond.true6, label %cond.false7, !dbg !1571

cond.true6:                                       ; preds = %cond.true3
  br label %cond.end, !dbg !1571

cond.false7:                                      ; preds = %cond.true3
  %7 = load i64, ptr %size.addr, align 8, !dbg !1571
  %sub8 = sub i64 %7, 1, !dbg !1571
  %8 = call i64 @llvm.ctlz.i64(i64 %sub8, i1 true), !dbg !1571
  %cast = trunc i64 %8 to i32, !dbg !1571
  %sub9 = sub i32 63, %cast, !dbg !1571
  br label %cond.end, !dbg !1571

cond.end:                                         ; preds = %cond.false7, %cond.true6
  %cond = phi i32 [ 0, %cond.true6 ], [ %sub9, %cond.false7 ], !dbg !1571
  br label %cond.end12, !dbg !1571

cond.false10:                                     ; preds = %cond.false
  %9 = load i64, ptr %size.addr, align 8, !dbg !1571
  %sub11 = sub i64 %9, 1, !dbg !1571
  %call = call i32 @__ilog2_u64(i64 noundef %sub11) #17, !dbg !1571
  br label %cond.end12, !dbg !1571

cond.end12:                                       ; preds = %cond.false10, %cond.end
  %cond13 = phi i32 [ %cond, %cond.end ], [ %call, %cond.false10 ], !dbg !1571
  %add = add i32 %cond13, 1, !dbg !1571
  br label %cond.end14, !dbg !1571

cond.end14:                                       ; preds = %cond.end12, %cond.true2
  %cond15 = phi i32 [ 0, %cond.true2 ], [ %add, %cond.end12 ], !dbg !1571
  br label %cond.end18, !dbg !1571

cond.false16:                                     ; preds = %entry
  %10 = load i64, ptr %size.addr, align 8, !dbg !1571
  %call17 = call i32 @__order_base_2(i64 noundef %10) #17, !dbg !1571
  br label %cond.end18, !dbg !1571

cond.end18:                                       ; preds = %cond.false16, %cond.end14
  %cond19 = phi i32 [ %cond15, %cond.end14 ], [ %call17, %cond.false16 ], !dbg !1571
  store i32 %cond19, ptr %log_size, align 4, !dbg !1570
  %11 = load i32, ptr %log_size, align 4, !dbg !1572
  %cmp20 = icmp uge i32 %11, 6, !dbg !1574
  br i1 %cmp20, label %if.then, label %if.end, !dbg !1575

if.then:                                          ; preds = %cond.end18
  store i1 false, ptr %retval, align 1, !dbg !1576
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1576

if.end:                                           ; preds = %cond.end18
  %12 = load ptr, ptr %iovad.addr, align 8, !dbg !1577
  %13 = load ptr, ptr %iovad.addr, align 8, !dbg !1578
  %rcaches = getelementptr inbounds %struct.iova_domain, ptr %13, i32 0, i32 9, !dbg !1579
  %14 = load ptr, ptr %rcaches, align 8, !dbg !1579
  %15 = load i32, ptr %log_size, align 4, !dbg !1580
  %idxprom = zext i32 %15 to i64, !dbg !1578
  %arrayidx = getelementptr %struct.iova_rcache, ptr %14, i64 %idxprom, !dbg !1578
  %16 = load i64, ptr %pfn.addr, align 8, !dbg !1581
  %call21 = call zeroext i1 @__iova_rcache_insert(ptr noundef %12, ptr noundef %arrayidx, i64 noundef %16) #19, !dbg !1582
  store i1 %call21, ptr %retval, align 1, !dbg !1583
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1583

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %log_size) #18, !dbg !1584
  %17 = load i1, ptr %retval, align 1, !dbg !1584
  ret i1 %17, !dbg !1584
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @put_iova_domain(ptr noundef %iovad) #0 align 16 !dbg !1585 {
entry:
  %iovad.addr = alloca ptr, align 8
  %iova = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %____ptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %____ptr5 = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  %__mptr10 = alloca ptr, align 8
  %tmp11 = alloca ptr, align 8
  %tmp16 = alloca i32, align 4
  store ptr %iovad, ptr %iovad.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iovad.addr, metadata !1587, metadata !DIExpression()), !dbg !1601
  call void @llvm.lifetime.start.p0(i64 8, ptr %iova) #18, !dbg !1602
  call void @llvm.dbg.declare(metadata ptr %iova, metadata !1588, metadata !DIExpression()), !dbg !1603
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #18, !dbg !1602
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !1589, metadata !DIExpression()), !dbg !1604
  %0 = load ptr, ptr %iovad.addr, align 8, !dbg !1605
  %rcaches = getelementptr inbounds %struct.iova_domain, ptr %0, i32 0, i32 9, !dbg !1607
  %1 = load ptr, ptr %rcaches, align 8, !dbg !1607
  %tobool = icmp ne ptr %1, null, !dbg !1605
  br i1 %tobool, label %if.then, label %if.end, !dbg !1608

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %iovad.addr, align 8, !dbg !1609
  call void @iova_domain_free_rcaches(ptr noundef %2) #19, !dbg !1610
  br label %if.end, !dbg !1610

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr) #18, !dbg !1611
  call void @llvm.dbg.declare(metadata ptr %____ptr, metadata !1590, metadata !DIExpression()), !dbg !1611
  %3 = load ptr, ptr %iovad.addr, align 8, !dbg !1611
  %rbroot = getelementptr inbounds %struct.iova_domain, ptr %3, i32 0, i32 1, !dbg !1611
  %call = call ptr @rb_first_postorder(ptr noundef %rbroot) #19, !dbg !1611
  store ptr %call, ptr %____ptr, align 8, !dbg !1611
  %4 = load ptr, ptr %____ptr, align 8, !dbg !1611
  %tobool2 = icmp ne ptr %4, null, !dbg !1611
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !1611

cond.true:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !1612
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1593, metadata !DIExpression()), !dbg !1612
  %5 = load ptr, ptr %____ptr, align 8, !dbg !1612
  store ptr %5, ptr %__mptr, align 8, !dbg !1612
  %6 = load ptr, ptr %__mptr, align 8, !dbg !1612
  %add.ptr = getelementptr i8, ptr %6, i64 0, !dbg !1612
  store ptr %add.ptr, ptr %tmp3, align 8, !dbg !1612
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !1611
  %7 = load ptr, ptr %tmp3, align 8, !dbg !1612
  br label %cond.end, !dbg !1611

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !1611

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %7, %cond.true ], [ null, %cond.false ], !dbg !1611
  store ptr %cond, ptr %tmp1, align 8, !dbg !1611
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr) #18, !dbg !1613
  %8 = load ptr, ptr %tmp1, align 8, !dbg !1611
  store ptr %8, ptr %iova, align 8, !dbg !1613
  br label %for.cond, !dbg !1613

for.cond:                                         ; preds = %for.inc, %cond.end
  %9 = load ptr, ptr %iova, align 8, !dbg !1614
  %tobool4 = icmp ne ptr %9, null, !dbg !1614
  br i1 %tobool4, label %land.rhs, label %land.end, !dbg !1614

land.rhs:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr5) #18, !dbg !1615
  call void @llvm.dbg.declare(metadata ptr %____ptr5, metadata !1595, metadata !DIExpression()), !dbg !1615
  %10 = load ptr, ptr %iova, align 8, !dbg !1615
  %node = getelementptr inbounds %struct.iova, ptr %10, i32 0, i32 0, !dbg !1615
  %call6 = call ptr @rb_next_postorder(ptr noundef %node) #19, !dbg !1615
  store ptr %call6, ptr %____ptr5, align 8, !dbg !1615
  %11 = load ptr, ptr %____ptr5, align 8, !dbg !1615
  %tobool8 = icmp ne ptr %11, null, !dbg !1615
  br i1 %tobool8, label %cond.true9, label %cond.false13, !dbg !1615

cond.true9:                                       ; preds = %land.rhs
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr10) #18, !dbg !1616
  call void @llvm.dbg.declare(metadata ptr %__mptr10, metadata !1599, metadata !DIExpression()), !dbg !1616
  %12 = load ptr, ptr %____ptr5, align 8, !dbg !1616
  store ptr %12, ptr %__mptr10, align 8, !dbg !1616
  %13 = load ptr, ptr %__mptr10, align 8, !dbg !1616
  %add.ptr12 = getelementptr i8, ptr %13, i64 0, !dbg !1616
  store ptr %add.ptr12, ptr %tmp11, align 8, !dbg !1616
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr10) #18, !dbg !1615
  %14 = load ptr, ptr %tmp11, align 8, !dbg !1616
  br label %cond.end14, !dbg !1615

cond.false13:                                     ; preds = %land.rhs
  br label %cond.end14, !dbg !1615

cond.end14:                                       ; preds = %cond.false13, %cond.true9
  %cond15 = phi ptr [ %14, %cond.true9 ], [ null, %cond.false13 ], !dbg !1615
  store ptr %cond15, ptr %tmp7, align 8, !dbg !1615
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr5) #18, !dbg !1617
  %15 = load ptr, ptr %tmp7, align 8, !dbg !1615
  store ptr %15, ptr %tmp, align 8, !dbg !1617
  store i32 1, ptr %tmp16, align 4, !dbg !1617
  %16 = load i32, ptr %tmp16, align 4, !dbg !1617
  %tobool17 = icmp ne i32 %16, 0, !dbg !1614
  br label %land.end

land.end:                                         ; preds = %cond.end14, %for.cond
  %17 = phi i1 [ false, %for.cond ], [ %tobool17, %cond.end14 ], !dbg !1618
  br i1 %17, label %for.body, label %for.end, !dbg !1613

for.body:                                         ; preds = %land.end
  %18 = load ptr, ptr %iova, align 8, !dbg !1619
  call void @free_iova_mem(ptr noundef %18) #19, !dbg !1620
  br label %for.inc, !dbg !1620

for.inc:                                          ; preds = %for.body
  %19 = load ptr, ptr %tmp, align 8, !dbg !1614
  store ptr %19, ptr %iova, align 8, !dbg !1614
  br label %for.cond, !dbg !1614, !llvm.loop !1621

for.end:                                          ; preds = %land.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #18, !dbg !1623
  call void @llvm.lifetime.end.p0(i64 8, ptr %iova) #18, !dbg !1623
  ret void, !dbg !1623
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @iova_domain_free_rcaches(ptr noundef %iovad) #0 align 16 !dbg !1624 {
entry:
  %iovad.addr = alloca ptr, align 8
  store ptr %iovad, ptr %iovad.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iovad.addr, metadata !1626, metadata !DIExpression()), !dbg !1627
  %0 = load ptr, ptr %iovad.addr, align 8, !dbg !1628
  %cpuhp_dead = getelementptr inbounds %struct.iova_domain, ptr %0, i32 0, i32 10, !dbg !1629
  %call = call i32 @cpuhp_state_remove_instance_nocalls(i32 noundef 36, ptr noundef %cpuhp_dead) #19, !dbg !1630
  %1 = load ptr, ptr %iovad.addr, align 8, !dbg !1631
  call void @free_iova_rcaches(ptr noundef %1) #19, !dbg !1632
  ret void, !dbg !1633
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1634 dso_local ptr @rb_first_postorder(ptr noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1639 dso_local ptr @rb_next_postorder(ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @reserve_iova(ptr noundef %iovad, i64 noundef %pfn_lo, i64 noundef %pfn_hi) #0 align 16 !dbg !1644 {
entry:
  %retval = alloca ptr, align 8
  %iovad.addr = alloca ptr, align 8
  %pfn_lo.addr = alloca i64, align 8
  %pfn_hi.addr = alloca i64, align 8
  %node = alloca ptr, align 8
  %flags = alloca i64, align 8
  %iova = alloca ptr, align 8
  %overlap = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp30 = alloca i32, align 4
  store ptr %iovad, ptr %iovad.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iovad.addr, metadata !1648, metadata !DIExpression()), !dbg !1667
  store i64 %pfn_lo, ptr %pfn_lo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn_lo.addr, metadata !1649, metadata !DIExpression()), !dbg !1668
  store i64 %pfn_hi, ptr %pfn_hi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn_hi.addr, metadata !1650, metadata !DIExpression()), !dbg !1669
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #18, !dbg !1670
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1651, metadata !DIExpression()), !dbg !1671
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #18, !dbg !1672
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1652, metadata !DIExpression()), !dbg !1673
  call void @llvm.lifetime.start.p0(i64 8, ptr %iova) #18, !dbg !1674
  call void @llvm.dbg.declare(metadata ptr %iova, metadata !1653, metadata !DIExpression()), !dbg !1675
  call void @llvm.lifetime.start.p0(i64 4, ptr %overlap) #18, !dbg !1676
  call void @llvm.dbg.declare(metadata ptr %overlap, metadata !1654, metadata !DIExpression()), !dbg !1677
  store i32 0, ptr %overlap, align 4, !dbg !1677
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !1678
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1655, metadata !DIExpression()), !dbg !1678
  %0 = load i64, ptr %pfn_hi.addr, align 8, !dbg !1678
  %1 = load i64, ptr %pfn_lo.addr, align 8, !dbg !1678
  %or = or i64 %0, %1, !dbg !1678
  %2 = load ptr, ptr %iovad.addr, align 8, !dbg !1678
  %call = call i64 @iova_shift(ptr noundef %2) #19, !dbg !1678
  %shr = lshr i64 -1, %call, !dbg !1678
  %cmp = icmp ugt i64 %or, %shr, !dbg !1678
  %lnot = xor i1 %cmp, true, !dbg !1678
  %lnot1 = xor i1 %lnot, true, !dbg !1678
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1678
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !1678
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !1679
  %tobool = icmp ne i32 %3, 0, !dbg !1679
  %lnot2 = xor i1 %tobool, true, !dbg !1679
  %lnot4 = xor i1 %lnot2, true, !dbg !1679
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !1679
  %conv = sext i32 %lnot.ext5 to i64, !dbg !1679
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1679
  %tobool6 = icmp ne i64 %expval, 0, !dbg !1679
  br i1 %tobool6, label %if.then, label %if.end, !dbg !1678

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1679

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #18, !dbg !1680
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1658, metadata !DIExpression()), !dbg !1680
  store i32 2305, ptr %__flags, align 4, !dbg !1680
  br label %do.body7, !dbg !1680

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !1681

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !1681

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !1680

do.body8:                                         ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !1683
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 586, i32 %4, i64 12) #18, !dbg !1683, !srcloc !1685
  br label %do.cond9, !dbg !1683

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !1683

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !1680

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !1686

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !1686

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #18, !dbg !1679
  br label %do.cond14, !dbg !1680

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !1680

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !1680

if.end:                                           ; preds = %do.end15, %entry
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !1678
  %tobool16 = icmp ne i32 %5, 0, !dbg !1678
  %lnot17 = xor i1 %tobool16, true, !dbg !1678
  %lnot19 = xor i1 %lnot17, true, !dbg !1678
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !1678
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !1678
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !1678
  store i64 %expval22, ptr %tmp, align 8, !dbg !1679
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !1688
  %6 = load i64, ptr %tmp, align 8, !dbg !1678
  %tobool23 = icmp ne i64 %6, 0, !dbg !1688
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !1689

if.then24:                                        ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !1690
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1690

if.end25:                                         ; preds = %if.end
  br label %do.body26, !dbg !1691

do.body26:                                        ; preds = %if.end25
  br label %do.body27, !dbg !1692

do.body27:                                        ; preds = %do.body26
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #18, !dbg !1693
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1661, metadata !DIExpression()), !dbg !1693
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #18, !dbg !1693
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1665, metadata !DIExpression()), !dbg !1693
  %cmp28 = icmp eq ptr %__dummy, %__dummy2, !dbg !1693
  %conv29 = zext i1 %cmp28 to i32, !dbg !1693
  store i32 1, ptr %tmp30, align 4, !dbg !1693
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #18, !dbg !1694
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #18, !dbg !1694
  %7 = load i32, ptr %tmp30, align 4, !dbg !1693
  %8 = load ptr, ptr %iovad.addr, align 8, !dbg !1694
  %iova_rbtree_lock = getelementptr inbounds %struct.iova_domain, ptr %8, i32 0, i32 0, !dbg !1694
  %call31 = call ptr @spinlock_check(ptr noundef %iova_rbtree_lock) #19, !dbg !1694
  %call32 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call31) #19, !dbg !1694
  store i64 %call32, ptr %flags, align 8, !dbg !1694
  br label %do.cond33, !dbg !1694

do.cond33:                                        ; preds = %do.body27
  br label %do.end34, !dbg !1694

do.end34:                                         ; preds = %do.cond33
  br label %do.cond35, !dbg !1692

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !1692

do.end36:                                         ; preds = %do.cond35
  %9 = load ptr, ptr %iovad.addr, align 8, !dbg !1695
  %rbroot = getelementptr inbounds %struct.iova_domain, ptr %9, i32 0, i32 1, !dbg !1697
  %call37 = call ptr @rb_first(ptr noundef %rbroot) #19, !dbg !1698
  store ptr %call37, ptr %node, align 8, !dbg !1699
  br label %for.cond, !dbg !1700

for.cond:                                         ; preds = %for.inc, %do.end36
  %10 = load ptr, ptr %node, align 8, !dbg !1701
  %tobool38 = icmp ne ptr %10, null, !dbg !1703
  br i1 %tobool38, label %for.body, label %for.end, !dbg !1703

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %node, align 8, !dbg !1704
  %12 = load i64, ptr %pfn_lo.addr, align 8, !dbg !1707
  %13 = load i64, ptr %pfn_hi.addr, align 8, !dbg !1708
  %call39 = call i32 @__is_range_overlap(ptr noundef %11, i64 noundef %12, i64 noundef %13) #19, !dbg !1709
  %tobool40 = icmp ne i32 %call39, 0, !dbg !1709
  br i1 %tobool40, label %if.then41, label %if.else, !dbg !1710

if.then41:                                        ; preds = %for.body
  %14 = load ptr, ptr %node, align 8, !dbg !1711
  %call42 = call ptr @to_iova(ptr noundef %14) #19, !dbg !1713
  store ptr %call42, ptr %iova, align 8, !dbg !1714
  %15 = load ptr, ptr %iova, align 8, !dbg !1715
  call void @__adjust_overlap_range(ptr noundef %15, ptr noundef %pfn_lo.addr, ptr noundef %pfn_hi.addr) #19, !dbg !1716
  %16 = load i64, ptr %pfn_lo.addr, align 8, !dbg !1717
  %17 = load ptr, ptr %iova, align 8, !dbg !1719
  %pfn_lo43 = getelementptr inbounds %struct.iova, ptr %17, i32 0, i32 2, !dbg !1720
  %18 = load i64, ptr %pfn_lo43, align 8, !dbg !1720
  %cmp44 = icmp uge i64 %16, %18, !dbg !1721
  br i1 %cmp44, label %land.lhs.true, label %if.end50, !dbg !1722

land.lhs.true:                                    ; preds = %if.then41
  %19 = load i64, ptr %pfn_hi.addr, align 8, !dbg !1723
  %20 = load ptr, ptr %iova, align 8, !dbg !1724
  %pfn_hi46 = getelementptr inbounds %struct.iova, ptr %20, i32 0, i32 1, !dbg !1725
  %21 = load i64, ptr %pfn_hi46, align 8, !dbg !1725
  %cmp47 = icmp ule i64 %19, %21, !dbg !1726
  br i1 %cmp47, label %if.then49, label %if.end50, !dbg !1727

if.then49:                                        ; preds = %land.lhs.true
  br label %finish, !dbg !1728

if.end50:                                         ; preds = %land.lhs.true, %if.then41
  store i32 1, ptr %overlap, align 4, !dbg !1729
  br label %if.end54, !dbg !1730

if.else:                                          ; preds = %for.body
  %22 = load i32, ptr %overlap, align 4, !dbg !1731
  %tobool51 = icmp ne i32 %22, 0, !dbg !1731
  br i1 %tobool51, label %if.then52, label %if.end53, !dbg !1733

if.then52:                                        ; preds = %if.else
  br label %for.end, !dbg !1734

if.end53:                                         ; preds = %if.else
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.end50
  br label %for.inc, !dbg !1735

for.inc:                                          ; preds = %if.end54
  %23 = load ptr, ptr %node, align 8, !dbg !1736
  %call55 = call ptr @rb_next(ptr noundef %23) #19, !dbg !1737
  store ptr %call55, ptr %node, align 8, !dbg !1738
  br label %for.cond, !dbg !1739, !llvm.loop !1740

for.end:                                          ; preds = %if.then52, %for.cond
  %24 = load ptr, ptr %iovad.addr, align 8, !dbg !1742
  %25 = load i64, ptr %pfn_lo.addr, align 8, !dbg !1743
  %26 = load i64, ptr %pfn_hi.addr, align 8, !dbg !1744
  %call56 = call ptr @__insert_new_range(ptr noundef %24, i64 noundef %25, i64 noundef %26) #19, !dbg !1745
  store ptr %call56, ptr %iova, align 8, !dbg !1746
  br label %finish, !dbg !1747

finish:                                           ; preds = %for.end, %if.then49
  call void @llvm.dbg.label(metadata !1666), !dbg !1748
  %27 = load ptr, ptr %iovad.addr, align 8, !dbg !1749
  %iova_rbtree_lock57 = getelementptr inbounds %struct.iova_domain, ptr %27, i32 0, i32 0, !dbg !1750
  %28 = load i64, ptr %flags, align 8, !dbg !1751
  call void @spin_unlock_irqrestore(ptr noundef %iova_rbtree_lock57, i64 noundef %28) #19, !dbg !1752
  %29 = load ptr, ptr %iova, align 8, !dbg !1753
  store ptr %29, ptr %retval, align 8, !dbg !1754
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1754

cleanup:                                          ; preds = %finish, %if.then24
  call void @llvm.lifetime.end.p0(i64 4, ptr %overlap) #18, !dbg !1755
  call void @llvm.lifetime.end.p0(i64 8, ptr %iova) #18, !dbg !1755
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #18, !dbg !1755
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #18, !dbg !1755
  %30 = load ptr, ptr %retval, align 8, !dbg !1755
  ret ptr %30, !dbg !1755
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1756 dso_local ptr @rb_first(ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__is_range_overlap(ptr noundef %node, i64 noundef %pfn_lo, i64 noundef %pfn_hi) #0 align 16 !dbg !1757 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca ptr, align 8
  %pfn_lo.addr = alloca i64, align 8
  %pfn_hi.addr = alloca i64, align 8
  %iova = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1761, metadata !DIExpression()), !dbg !1765
  store i64 %pfn_lo, ptr %pfn_lo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn_lo.addr, metadata !1762, metadata !DIExpression()), !dbg !1766
  store i64 %pfn_hi, ptr %pfn_hi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn_hi.addr, metadata !1763, metadata !DIExpression()), !dbg !1767
  call void @llvm.lifetime.start.p0(i64 8, ptr %iova) #18, !dbg !1768
  call void @llvm.dbg.declare(metadata ptr %iova, metadata !1764, metadata !DIExpression()), !dbg !1769
  %0 = load ptr, ptr %node.addr, align 8, !dbg !1770
  %call = call ptr @to_iova(ptr noundef %0) #19, !dbg !1771
  store ptr %call, ptr %iova, align 8, !dbg !1769
  %1 = load i64, ptr %pfn_lo.addr, align 8, !dbg !1772
  %2 = load ptr, ptr %iova, align 8, !dbg !1774
  %pfn_hi1 = getelementptr inbounds %struct.iova, ptr %2, i32 0, i32 1, !dbg !1775
  %3 = load i64, ptr %pfn_hi1, align 8, !dbg !1775
  %cmp = icmp ule i64 %1, %3, !dbg !1776
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1777

land.lhs.true:                                    ; preds = %entry
  %4 = load i64, ptr %pfn_hi.addr, align 8, !dbg !1778
  %5 = load ptr, ptr %iova, align 8, !dbg !1779
  %pfn_lo2 = getelementptr inbounds %struct.iova, ptr %5, i32 0, i32 2, !dbg !1780
  %6 = load i64, ptr %pfn_lo2, align 8, !dbg !1780
  %cmp3 = icmp uge i64 %4, %6, !dbg !1781
  br i1 %cmp3, label %if.then, label %if.end, !dbg !1782

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1783
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1783

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4, !dbg !1784
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1784

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %iova) #18, !dbg !1785
  %7 = load i32, ptr %retval, align 4, !dbg !1785
  ret i32 %7, !dbg !1785
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_iova(ptr noundef %node) #0 align 16 !dbg !1786 {
entry:
  %node.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1790, metadata !DIExpression()), !dbg !1793
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !1794
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1791, metadata !DIExpression()), !dbg !1794
  %0 = load ptr, ptr %node.addr, align 8, !dbg !1794
  store ptr %0, ptr %__mptr, align 8, !dbg !1794
  %1 = load ptr, ptr %__mptr, align 8, !dbg !1794
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !1794
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1794
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !1795
  %2 = load ptr, ptr %tmp, align 8, !dbg !1794
  ret ptr %2, !dbg !1796
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__adjust_overlap_range(ptr noundef %iova, ptr noundef %pfn_lo, ptr noundef %pfn_hi) #0 align 16 !dbg !1797 {
entry:
  %iova.addr = alloca ptr, align 8
  %pfn_lo.addr = alloca ptr, align 8
  %pfn_hi.addr = alloca ptr, align 8
  store ptr %iova, ptr %iova.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iova.addr, metadata !1802, metadata !DIExpression()), !dbg !1805
  store ptr %pfn_lo, ptr %pfn_lo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn_lo.addr, metadata !1803, metadata !DIExpression()), !dbg !1806
  store ptr %pfn_hi, ptr %pfn_hi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn_hi.addr, metadata !1804, metadata !DIExpression()), !dbg !1807
  %0 = load ptr, ptr %pfn_lo.addr, align 8, !dbg !1808
  %1 = load i64, ptr %0, align 8, !dbg !1810
  %2 = load ptr, ptr %iova.addr, align 8, !dbg !1811
  %pfn_lo1 = getelementptr inbounds %struct.iova, ptr %2, i32 0, i32 2, !dbg !1812
  %3 = load i64, ptr %pfn_lo1, align 8, !dbg !1812
  %cmp = icmp ult i64 %1, %3, !dbg !1813
  br i1 %cmp, label %if.then, label %if.end, !dbg !1814

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pfn_lo.addr, align 8, !dbg !1815
  %5 = load i64, ptr %4, align 8, !dbg !1816
  %6 = load ptr, ptr %iova.addr, align 8, !dbg !1817
  %pfn_lo2 = getelementptr inbounds %struct.iova, ptr %6, i32 0, i32 2, !dbg !1818
  store i64 %5, ptr %pfn_lo2, align 8, !dbg !1819
  br label %if.end, !dbg !1817

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %pfn_hi.addr, align 8, !dbg !1820
  %8 = load i64, ptr %7, align 8, !dbg !1822
  %9 = load ptr, ptr %iova.addr, align 8, !dbg !1823
  %pfn_hi3 = getelementptr inbounds %struct.iova, ptr %9, i32 0, i32 1, !dbg !1824
  %10 = load i64, ptr %pfn_hi3, align 8, !dbg !1824
  %cmp4 = icmp ugt i64 %8, %10, !dbg !1825
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !1826

if.then5:                                         ; preds = %if.end
  %11 = load ptr, ptr %iova.addr, align 8, !dbg !1827
  %pfn_hi6 = getelementptr inbounds %struct.iova, ptr %11, i32 0, i32 1, !dbg !1828
  %12 = load i64, ptr %pfn_hi6, align 8, !dbg !1828
  %add = add i64 %12, 1, !dbg !1829
  %13 = load ptr, ptr %pfn_lo.addr, align 8, !dbg !1830
  store i64 %add, ptr %13, align 8, !dbg !1831
  br label %if.end7, !dbg !1832

if.end7:                                          ; preds = %if.then5, %if.end
  ret void, !dbg !1833
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1834 dso_local ptr @rb_next(ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__insert_new_range(ptr noundef %iovad, i64 noundef %pfn_lo, i64 noundef %pfn_hi) #0 align 16 !dbg !1835 {
entry:
  %iovad.addr = alloca ptr, align 8
  %pfn_lo.addr = alloca i64, align 8
  %pfn_hi.addr = alloca i64, align 8
  %iova = alloca ptr, align 8
  store ptr %iovad, ptr %iovad.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iovad.addr, metadata !1837, metadata !DIExpression()), !dbg !1841
  store i64 %pfn_lo, ptr %pfn_lo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn_lo.addr, metadata !1838, metadata !DIExpression()), !dbg !1842
  store i64 %pfn_hi, ptr %pfn_hi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn_hi.addr, metadata !1839, metadata !DIExpression()), !dbg !1843
  call void @llvm.lifetime.start.p0(i64 8, ptr %iova) #18, !dbg !1844
  call void @llvm.dbg.declare(metadata ptr %iova, metadata !1840, metadata !DIExpression()), !dbg !1845
  %0 = load i64, ptr %pfn_lo.addr, align 8, !dbg !1846
  %1 = load i64, ptr %pfn_hi.addr, align 8, !dbg !1847
  %call = call ptr @alloc_and_init_iova(i64 noundef %0, i64 noundef %1) #19, !dbg !1848
  store ptr %call, ptr %iova, align 8, !dbg !1849
  %2 = load ptr, ptr %iova, align 8, !dbg !1850
  %tobool = icmp ne ptr %2, null, !dbg !1850
  br i1 %tobool, label %if.then, label %if.end, !dbg !1852

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %iovad.addr, align 8, !dbg !1853
  %rbroot = getelementptr inbounds %struct.iova_domain, ptr %3, i32 0, i32 1, !dbg !1854
  %4 = load ptr, ptr %iova, align 8, !dbg !1855
  call void @iova_insert_rbtree(ptr noundef %rbroot, ptr noundef %4, ptr noundef null) #19, !dbg !1856
  br label %if.end, !dbg !1856

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %iova, align 8, !dbg !1857
  call void @llvm.lifetime.end.p0(i64 8, ptr %iova) #18, !dbg !1858
  ret ptr %5, !dbg !1859
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @iova_domain_init_rcaches(ptr noundef %iovad) #0 align 16 !dbg !1860 {
entry:
  %retval = alloca i32, align 4
  %iovad.addr = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %cpu_rcache = alloca ptr, align 8
  %rcache = alloca ptr, align 8
  %.compoundliteral = alloca %struct.spinlock, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp21 = alloca ptr, align 8
  %.compoundliteral28 = alloca %struct.spinlock, align 4
  store ptr %iovad, ptr %iovad.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iovad.addr, metadata !1864, metadata !DIExpression()), !dbg !1882
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #18, !dbg !1883
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !1865, metadata !DIExpression()), !dbg !1884
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !1885
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1866, metadata !DIExpression()), !dbg !1886
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !1885
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1867, metadata !DIExpression()), !dbg !1887
  %call = call noalias ptr @kcalloc(i64 noundef 6, i64 noundef 280, i32 noundef 3264) #21, !dbg !1888
  %0 = load ptr, ptr %iovad.addr, align 8, !dbg !1889
  %rcaches = getelementptr inbounds %struct.iova_domain, ptr %0, i32 0, i32 9, !dbg !1890
  store ptr %call, ptr %rcaches, align 8, !dbg !1891
  %1 = load ptr, ptr %iovad.addr, align 8, !dbg !1892
  %rcaches1 = getelementptr inbounds %struct.iova_domain, ptr %1, i32 0, i32 9, !dbg !1894
  %2 = load ptr, ptr %rcaches1, align 8, !dbg !1894
  %tobool = icmp ne ptr %2, null, !dbg !1892
  br i1 %tobool, label %if.end, label %if.then, !dbg !1895

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !1896
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup49, !dbg !1896

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !1897
  br label %for.cond, !dbg !1898

for.cond:                                         ; preds = %for.inc42, %if.end
  %3 = load i32, ptr %i, align 4, !dbg !1899
  %cmp = icmp slt i32 %3, 6, !dbg !1900
  br i1 %cmp, label %for.body, label %for.end44, !dbg !1901

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %cpu_rcache) #18, !dbg !1902
  call void @llvm.dbg.declare(metadata ptr %cpu_rcache, metadata !1868, metadata !DIExpression()), !dbg !1903
  call void @llvm.lifetime.start.p0(i64 8, ptr %rcache) #18, !dbg !1904
  call void @llvm.dbg.declare(metadata ptr %rcache, metadata !1872, metadata !DIExpression()), !dbg !1905
  %4 = load ptr, ptr %iovad.addr, align 8, !dbg !1906
  %rcaches2 = getelementptr inbounds %struct.iova_domain, ptr %4, i32 0, i32 9, !dbg !1907
  %5 = load ptr, ptr %rcaches2, align 8, !dbg !1907
  %6 = load i32, ptr %i, align 4, !dbg !1908
  %idxprom = sext i32 %6 to i64, !dbg !1906
  %arrayidx = getelementptr %struct.iova_rcache, ptr %5, i64 %idxprom, !dbg !1906
  store ptr %arrayidx, ptr %rcache, align 8, !dbg !1909
  br label %do.body, !dbg !1910

do.body:                                          ; preds = %for.body
  %7 = load ptr, ptr %rcache, align 8, !dbg !1911
  %lock = getelementptr inbounds %struct.iova_rcache, ptr %7, i32 0, i32 0, !dbg !1911
  %call3 = call ptr @spinlock_check(ptr noundef %lock) #19, !dbg !1911
  %8 = load ptr, ptr %rcache, align 8, !dbg !1911
  %lock4 = getelementptr inbounds %struct.iova_rcache, ptr %8, i32 0, i32 0, !dbg !1911
  %9 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !1911
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %9, i32 0, i32 0, !dbg !1911
  %10 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !1911
  %counter = getelementptr inbounds %struct.atomic_t, ptr %10, i32 0, i32 0, !dbg !1911
  store i32 0, ptr %counter, align 4, !dbg !1911
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %lock4, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !1911
  br label %do.cond, !dbg !1911

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1911

do.end:                                           ; preds = %do.cond
  %11 = load ptr, ptr %rcache, align 8, !dbg !1913
  %depot_size = getelementptr inbounds %struct.iova_rcache, ptr %11, i32 0, i32 1, !dbg !1914
  store i64 0, ptr %depot_size, align 8, !dbg !1915
  %12 = load i32, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 14), align 4, !dbg !1916
  %conv = sext i32 %12 to i64, !dbg !1916
  %call5 = call noalias ptr @__alloc_percpu(i64 noundef 24, i64 noundef %conv) #22, !dbg !1917
  %13 = load ptr, ptr %rcache, align 8, !dbg !1918
  %cpu_rcaches = getelementptr inbounds %struct.iova_rcache, ptr %13, i32 0, i32 3, !dbg !1919
  store ptr %call5, ptr %cpu_rcaches, align 8, !dbg !1920
  %14 = load ptr, ptr %rcache, align 8, !dbg !1921
  %cpu_rcaches6 = getelementptr inbounds %struct.iova_rcache, ptr %14, i32 0, i32 3, !dbg !1923
  %15 = load ptr, ptr %cpu_rcaches6, align 8, !dbg !1923
  %tobool7 = icmp ne ptr %15, null, !dbg !1921
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !1924

if.then8:                                         ; preds = %do.end
  store i32 -12, ptr %ret, align 4, !dbg !1925
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1927

if.end9:                                          ; preds = %do.end
  store i32 0, ptr %cpu, align 4, !dbg !1928
  br label %for.cond10, !dbg !1928

for.cond10:                                       ; preds = %for.inc, %if.end9
  %16 = load i32, ptr %cpu, align 4, !dbg !1929
  %conv11 = zext i32 %16 to i64, !dbg !1929
  %call12 = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv11) #19, !dbg !1929
  %conv13 = trunc i64 %call12 to i32, !dbg !1929
  store i32 %conv13, ptr %cpu, align 4, !dbg !1929
  %17 = load i32, ptr %cpu, align 4, !dbg !1929
  %cmp14 = icmp ult i32 %17, 64, !dbg !1929
  br i1 %cmp14, label %for.body16, label %for.end, !dbg !1928

for.body16:                                       ; preds = %for.cond10
  br label %do.body17, !dbg !1930

do.body17:                                        ; preds = %for.body16
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #18, !dbg !1931
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1873, metadata !DIExpression()), !dbg !1931
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1931
  %18 = load ptr, ptr %__vpp_verify, align 8, !dbg !1931
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #18, !dbg !1930
  br label %do.cond18, !dbg !1931

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !1931

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #18, !dbg !1932
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !1879, metadata !DIExpression()), !dbg !1932
  %19 = load ptr, ptr %rcache, align 8, !dbg !1932
  %cpu_rcaches20 = getelementptr inbounds %struct.iova_rcache, ptr %19, i32 0, i32 3, !dbg !1932
  %20 = load ptr, ptr %cpu_rcaches20, align 8, !dbg !1932
  %21 = ptrtoint ptr %20 to i64, !dbg !1932
  store i64 %21, ptr %__ptr, align 8, !dbg !1932
  %22 = load i64, ptr %__ptr, align 8, !dbg !1932
  %23 = load i32, ptr %cpu, align 4, !dbg !1932
  %idxprom22 = zext i32 %23 to i64, !dbg !1932
  %arrayidx23 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom22, !dbg !1932
  %24 = load i64, ptr %arrayidx23, align 8, !dbg !1932
  %add = add i64 %22, %24, !dbg !1932
  %25 = inttoptr i64 %add to ptr, !dbg !1932
  store ptr %25, ptr %tmp21, align 8, !dbg !1932
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #18, !dbg !1930
  %26 = load ptr, ptr %tmp21, align 8, !dbg !1932
  store ptr %26, ptr %tmp, align 8, !dbg !1931
  %27 = load ptr, ptr %tmp, align 8, !dbg !1930
  store ptr %27, ptr %cpu_rcache, align 8, !dbg !1933
  br label %do.body24, !dbg !1934

do.body24:                                        ; preds = %do.end19
  %28 = load ptr, ptr %cpu_rcache, align 8, !dbg !1935
  %lock25 = getelementptr inbounds %struct.iova_cpu_rcache, ptr %28, i32 0, i32 0, !dbg !1935
  %call26 = call ptr @spinlock_check(ptr noundef %lock25) #19, !dbg !1935
  %29 = load ptr, ptr %cpu_rcache, align 8, !dbg !1935
  %lock27 = getelementptr inbounds %struct.iova_cpu_rcache, ptr %29, i32 0, i32 0, !dbg !1935
  %30 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral28, i32 0, i32 0, !dbg !1935
  %raw_lock29 = getelementptr inbounds %struct.raw_spinlock, ptr %30, i32 0, i32 0, !dbg !1935
  %31 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock29, i32 0, i32 0, !dbg !1935
  %counter30 = getelementptr inbounds %struct.atomic_t, ptr %31, i32 0, i32 0, !dbg !1935
  store i32 0, ptr %counter30, align 4, !dbg !1935
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %lock27, ptr align 4 %.compoundliteral28, i64 4, i1 false), !dbg !1935
  br label %do.cond31, !dbg !1935

do.cond31:                                        ; preds = %do.body24
  br label %do.end32, !dbg !1935

do.end32:                                         ; preds = %do.cond31
  %call33 = call ptr @iova_magazine_alloc(i32 noundef 3264) #19, !dbg !1937
  %32 = load ptr, ptr %cpu_rcache, align 8, !dbg !1938
  %loaded = getelementptr inbounds %struct.iova_cpu_rcache, ptr %32, i32 0, i32 1, !dbg !1939
  store ptr %call33, ptr %loaded, align 8, !dbg !1940
  %call34 = call ptr @iova_magazine_alloc(i32 noundef 3264) #19, !dbg !1941
  %33 = load ptr, ptr %cpu_rcache, align 8, !dbg !1942
  %prev = getelementptr inbounds %struct.iova_cpu_rcache, ptr %33, i32 0, i32 2, !dbg !1943
  store ptr %call34, ptr %prev, align 8, !dbg !1944
  %34 = load ptr, ptr %cpu_rcache, align 8, !dbg !1945
  %loaded35 = getelementptr inbounds %struct.iova_cpu_rcache, ptr %34, i32 0, i32 1, !dbg !1947
  %35 = load ptr, ptr %loaded35, align 8, !dbg !1947
  %tobool36 = icmp ne ptr %35, null, !dbg !1945
  br i1 %tobool36, label %lor.lhs.false, label %if.then39, !dbg !1948

lor.lhs.false:                                    ; preds = %do.end32
  %36 = load ptr, ptr %cpu_rcache, align 8, !dbg !1949
  %prev37 = getelementptr inbounds %struct.iova_cpu_rcache, ptr %36, i32 0, i32 2, !dbg !1950
  %37 = load ptr, ptr %prev37, align 8, !dbg !1950
  %tobool38 = icmp ne ptr %37, null, !dbg !1949
  br i1 %tobool38, label %if.end40, label %if.then39, !dbg !1951

if.then39:                                        ; preds = %lor.lhs.false, %do.end32
  store i32 -12, ptr %ret, align 4, !dbg !1952
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1954

if.end40:                                         ; preds = %lor.lhs.false
  br label %for.inc, !dbg !1955

for.inc:                                          ; preds = %if.end40
  %38 = load i32, ptr %cpu, align 4, !dbg !1929
  %inc = add i32 %38, 1, !dbg !1929
  store i32 %inc, ptr %cpu, align 4, !dbg !1929
  br label %for.cond10, !dbg !1929, !llvm.loop !1956

for.end:                                          ; preds = %for.cond10
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1958
  br label %cleanup, !dbg !1958

cleanup:                                          ; preds = %if.then39, %if.then8, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %rcache) #18, !dbg !1958
  call void @llvm.lifetime.end.p0(i64 8, ptr %cpu_rcache) #18, !dbg !1958
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup49 [
    i32 0, label %cleanup.cont
    i32 7, label %out_err
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc42, !dbg !1959

for.inc42:                                        ; preds = %cleanup.cont
  %39 = load i32, ptr %i, align 4, !dbg !1960
  %inc43 = add i32 %39, 1, !dbg !1960
  store i32 %inc43, ptr %i, align 4, !dbg !1960
  br label %for.cond, !dbg !1961, !llvm.loop !1962

for.end44:                                        ; preds = %for.cond
  %40 = load ptr, ptr %iovad.addr, align 8, !dbg !1964
  %cpuhp_dead = getelementptr inbounds %struct.iova_domain, ptr %40, i32 0, i32 10, !dbg !1965
  %call45 = call i32 @cpuhp_state_add_instance_nocalls(i32 noundef 36, ptr noundef %cpuhp_dead) #19, !dbg !1966
  store i32 %call45, ptr %ret, align 4, !dbg !1967
  %41 = load i32, ptr %ret, align 4, !dbg !1968
  %tobool46 = icmp ne i32 %41, 0, !dbg !1968
  br i1 %tobool46, label %if.then47, label %if.end48, !dbg !1970

if.then47:                                        ; preds = %for.end44
  br label %out_err, !dbg !1971

if.end48:                                         ; preds = %for.end44
  store i32 0, ptr %retval, align 4, !dbg !1972
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup49, !dbg !1972

out_err:                                          ; preds = %cleanup, %if.then47
  call void @llvm.dbg.label(metadata !1881), !dbg !1973
  %42 = load ptr, ptr %iovad.addr, align 8, !dbg !1974
  call void @free_iova_rcaches(ptr noundef %42) #19, !dbg !1975
  %43 = load i32, ptr %ret, align 4, !dbg !1976
  store i32 %43, ptr %retval, align 4, !dbg !1977
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup49, !dbg !1977

cleanup49:                                        ; preds = %out_err, %if.end48, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !1978
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !1978
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #18, !dbg !1978
  %44 = load i32, ptr %retval, align 4, !dbg !1978
  ret i32 %44, !dbg !1978
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kcalloc(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #12 align 16 !dbg !1979 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1987, metadata !DIExpression()), !dbg !1990
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1988, metadata !DIExpression()), !dbg !1991
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1989, metadata !DIExpression()), !dbg !1992
  %0 = load i64, ptr %n.addr, align 8, !dbg !1993
  %1 = load i64, ptr %size.addr, align 8, !dbg !1994
  %2 = load i32, ptr %flags.addr, align 4, !dbg !1995
  %or = or i32 %2, 256, !dbg !1996
  %call = call noalias ptr @kmalloc_array(i64 noundef %0, i64 noundef %1, i32 noundef %or) #21, !dbg !1997
  ret ptr %call, !dbg !1998
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1999 dso_local noalias ptr @__alloc_percpu(i64 noundef, i64 noundef) #13

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @iova_magazine_alloc(i32 noundef %flags) #0 align 16 !dbg !2003 {
entry:
  %flags.addr = alloca i32, align 4
  %mag = alloca ptr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2007, metadata !DIExpression()), !dbg !2009
  call void @llvm.lifetime.start.p0(i64 8, ptr %mag) #18, !dbg !2010
  call void @llvm.dbg.declare(metadata ptr %mag, metadata !2008, metadata !DIExpression()), !dbg !2011
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2012
  %call = call noalias ptr @kmalloc(i64 noundef 1024, i32 noundef %0) #22, !dbg !2013
  store ptr %call, ptr %mag, align 8, !dbg !2014
  %1 = load ptr, ptr %mag, align 8, !dbg !2015
  %tobool = icmp ne ptr %1, null, !dbg !2015
  br i1 %tobool, label %if.then, label %if.end, !dbg !2017

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %mag, align 8, !dbg !2018
  %size = getelementptr inbounds %struct.iova_magazine, ptr %2, i32 0, i32 0, !dbg !2019
  store i64 0, ptr %size, align 8, !dbg !2020
  br label %if.end, !dbg !2018

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %mag, align 8, !dbg !2021
  call void @llvm.lifetime.end.p0(i64 8, ptr %mag) #18, !dbg !2022
  ret ptr %3, !dbg !2023
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpuhp_state_add_instance_nocalls(i32 noundef %state, ptr noundef %node) #6 align 16 !dbg !2024 {
entry:
  %state.addr = alloca i32, align 4
  %node.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !2028, metadata !DIExpression()), !dbg !2030
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !2029, metadata !DIExpression()), !dbg !2031
  %0 = load i32, ptr %state.addr, align 4, !dbg !2032
  %1 = load ptr, ptr %node.addr, align 8, !dbg !2033
  %call = call i32 @__cpuhp_state_add_instance(i32 noundef %0, ptr noundef %1, i1 noundef zeroext false) #19, !dbg !2034
  ret i32 %call, !dbg !2035
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_iova_rcaches(ptr noundef %iovad) #0 align 16 !dbg !2036 {
entry:
  %iovad.addr = alloca ptr, align 8
  %rcache = alloca ptr, align 8
  %cpu_rcache = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp7 = alloca ptr, align 8
  store ptr %iovad, ptr %iovad.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iovad.addr, metadata !2038, metadata !DIExpression()), !dbg !2055
  call void @llvm.lifetime.start.p0(i64 8, ptr %rcache) #18, !dbg !2056
  call void @llvm.dbg.declare(metadata ptr %rcache, metadata !2039, metadata !DIExpression()), !dbg !2057
  call void @llvm.lifetime.start.p0(i64 8, ptr %cpu_rcache) #18, !dbg !2058
  call void @llvm.dbg.declare(metadata ptr %cpu_rcache, metadata !2040, metadata !DIExpression()), !dbg !2059
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #18, !dbg !2060
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !2041, metadata !DIExpression()), !dbg !2061
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !2062
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2042, metadata !DIExpression()), !dbg !2063
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #18, !dbg !2062
  call void @llvm.dbg.declare(metadata ptr %j, metadata !2043, metadata !DIExpression()), !dbg !2064
  store i32 0, ptr %i, align 4, !dbg !2065
  br label %for.cond, !dbg !2066

for.cond:                                         ; preds = %for.inc21, %entry
  %0 = load i32, ptr %i, align 4, !dbg !2067
  %cmp = icmp slt i32 %0, 6, !dbg !2068
  br i1 %cmp, label %for.body, label %for.end23, !dbg !2069

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %iovad.addr, align 8, !dbg !2070
  %rcaches = getelementptr inbounds %struct.iova_domain, ptr %1, i32 0, i32 9, !dbg !2071
  %2 = load ptr, ptr %rcaches, align 8, !dbg !2071
  %3 = load i32, ptr %i, align 4, !dbg !2072
  %idxprom = sext i32 %3 to i64, !dbg !2070
  %arrayidx = getelementptr %struct.iova_rcache, ptr %2, i64 %idxprom, !dbg !2070
  store ptr %arrayidx, ptr %rcache, align 8, !dbg !2073
  %4 = load ptr, ptr %rcache, align 8, !dbg !2074
  %cpu_rcaches = getelementptr inbounds %struct.iova_rcache, ptr %4, i32 0, i32 3, !dbg !2076
  %5 = load ptr, ptr %cpu_rcaches, align 8, !dbg !2076
  %tobool = icmp ne ptr %5, null, !dbg !2074
  br i1 %tobool, label %if.end, label %if.then, !dbg !2077

if.then:                                          ; preds = %for.body
  br label %for.end23, !dbg !2078

if.end:                                           ; preds = %for.body
  store i32 0, ptr %cpu, align 4, !dbg !2079
  br label %for.cond1, !dbg !2079

for.cond1:                                        ; preds = %for.inc, %if.end
  %6 = load i32, ptr %cpu, align 4, !dbg !2080
  %conv = zext i32 %6 to i64, !dbg !2080
  %call = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv) #19, !dbg !2080
  %conv2 = trunc i64 %call to i32, !dbg !2080
  store i32 %conv2, ptr %cpu, align 4, !dbg !2080
  %7 = load i32, ptr %cpu, align 4, !dbg !2080
  %cmp3 = icmp ult i32 %7, 64, !dbg !2080
  br i1 %cmp3, label %for.body5, label %for.end, !dbg !2079

for.body5:                                        ; preds = %for.cond1
  br label %do.body, !dbg !2081

do.body:                                          ; preds = %for.body5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #18, !dbg !2082
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2044, metadata !DIExpression()), !dbg !2082
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2082
  %8 = load ptr, ptr %__vpp_verify, align 8, !dbg !2082
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #18, !dbg !2081
  br label %do.cond, !dbg !2082

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2082

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #18, !dbg !2083
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !2053, metadata !DIExpression()), !dbg !2083
  %9 = load ptr, ptr %rcache, align 8, !dbg !2083
  %cpu_rcaches6 = getelementptr inbounds %struct.iova_rcache, ptr %9, i32 0, i32 3, !dbg !2083
  %10 = load ptr, ptr %cpu_rcaches6, align 8, !dbg !2083
  %11 = ptrtoint ptr %10 to i64, !dbg !2083
  store i64 %11, ptr %__ptr, align 8, !dbg !2083
  %12 = load i64, ptr %__ptr, align 8, !dbg !2083
  %13 = load i32, ptr %cpu, align 4, !dbg !2083
  %idxprom8 = zext i32 %13 to i64, !dbg !2083
  %arrayidx9 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom8, !dbg !2083
  %14 = load i64, ptr %arrayidx9, align 8, !dbg !2083
  %add = add i64 %12, %14, !dbg !2083
  %15 = inttoptr i64 %add to ptr, !dbg !2083
  store ptr %15, ptr %tmp7, align 8, !dbg !2083
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #18, !dbg !2081
  %16 = load ptr, ptr %tmp7, align 8, !dbg !2083
  store ptr %16, ptr %tmp, align 8, !dbg !2082
  %17 = load ptr, ptr %tmp, align 8, !dbg !2081
  store ptr %17, ptr %cpu_rcache, align 8, !dbg !2084
  %18 = load ptr, ptr %cpu_rcache, align 8, !dbg !2085
  %loaded = getelementptr inbounds %struct.iova_cpu_rcache, ptr %18, i32 0, i32 1, !dbg !2086
  %19 = load ptr, ptr %loaded, align 8, !dbg !2086
  call void @iova_magazine_free(ptr noundef %19) #19, !dbg !2087
  %20 = load ptr, ptr %cpu_rcache, align 8, !dbg !2088
  %prev = getelementptr inbounds %struct.iova_cpu_rcache, ptr %20, i32 0, i32 2, !dbg !2089
  %21 = load ptr, ptr %prev, align 8, !dbg !2089
  call void @iova_magazine_free(ptr noundef %21) #19, !dbg !2090
  br label %for.inc, !dbg !2091

for.inc:                                          ; preds = %do.end
  %22 = load i32, ptr %cpu, align 4, !dbg !2080
  %inc = add i32 %22, 1, !dbg !2080
  store i32 %inc, ptr %cpu, align 4, !dbg !2080
  br label %for.cond1, !dbg !2080, !llvm.loop !2092

for.end:                                          ; preds = %for.cond1
  %23 = load ptr, ptr %rcache, align 8, !dbg !2094
  %cpu_rcaches10 = getelementptr inbounds %struct.iova_rcache, ptr %23, i32 0, i32 3, !dbg !2095
  %24 = load ptr, ptr %cpu_rcaches10, align 8, !dbg !2095
  call void @free_percpu(ptr noundef %24) #19, !dbg !2096
  store i32 0, ptr %j, align 4, !dbg !2097
  br label %for.cond11, !dbg !2099

for.cond11:                                       ; preds = %for.inc18, %for.end
  %25 = load i32, ptr %j, align 4, !dbg !2100
  %conv12 = sext i32 %25 to i64, !dbg !2100
  %26 = load ptr, ptr %rcache, align 8, !dbg !2102
  %depot_size = getelementptr inbounds %struct.iova_rcache, ptr %26, i32 0, i32 1, !dbg !2103
  %27 = load i64, ptr %depot_size, align 8, !dbg !2103
  %cmp13 = icmp ult i64 %conv12, %27, !dbg !2104
  br i1 %cmp13, label %for.body15, label %for.end20, !dbg !2105

for.body15:                                       ; preds = %for.cond11
  %28 = load ptr, ptr %rcache, align 8, !dbg !2106
  %depot = getelementptr inbounds %struct.iova_rcache, ptr %28, i32 0, i32 2, !dbg !2107
  %29 = load i32, ptr %j, align 4, !dbg !2108
  %idxprom16 = sext i32 %29 to i64, !dbg !2106
  %arrayidx17 = getelementptr [32 x ptr], ptr %depot, i64 0, i64 %idxprom16, !dbg !2106
  %30 = load ptr, ptr %arrayidx17, align 8, !dbg !2106
  call void @iova_magazine_free(ptr noundef %30) #19, !dbg !2109
  br label %for.inc18, !dbg !2109

for.inc18:                                        ; preds = %for.body15
  %31 = load i32, ptr %j, align 4, !dbg !2110
  %inc19 = add i32 %31, 1, !dbg !2110
  store i32 %inc19, ptr %j, align 4, !dbg !2110
  br label %for.cond11, !dbg !2111, !llvm.loop !2112

for.end20:                                        ; preds = %for.cond11
  br label %for.inc21, !dbg !2114

for.inc21:                                        ; preds = %for.end20
  %32 = load i32, ptr %i, align 4, !dbg !2115
  %inc22 = add i32 %32, 1, !dbg !2115
  store i32 %inc22, ptr %i, align 4, !dbg !2115
  br label %for.cond, !dbg !2116, !llvm.loop !2117

for.end23:                                        ; preds = %if.then, %for.cond
  %33 = load ptr, ptr %iovad.addr, align 8, !dbg !2119
  %rcaches24 = getelementptr inbounds %struct.iova_domain, ptr %33, i32 0, i32 9, !dbg !2120
  %34 = load ptr, ptr %rcaches24, align 8, !dbg !2120
  call void @kfree(ptr noundef %34) #19, !dbg !2121
  %35 = load ptr, ptr %iovad.addr, align 8, !dbg !2122
  %rcaches25 = getelementptr inbounds %struct.iova_domain, ptr %35, i32 0, i32 9, !dbg !2123
  store ptr null, ptr %rcaches25, align 8, !dbg !2124
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #18, !dbg !2125
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !2125
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #18, !dbg !2125
  call void @llvm.lifetime.end.p0(i64 8, ptr %cpu_rcache) #18, !dbg !2125
  call void @llvm.lifetime.end.p0(i64 8, ptr %rcache) #18, !dbg !2125
  ret void, !dbg !2125
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #4 align 16 !dbg !2126 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !2129, metadata !DIExpression()), !dbg !2130
  %0 = load i64, ptr %word.addr, align 8, !dbg !2131
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #23, !dbg !2132, !srcloc !2133
  store i64 %1, ptr %word.addr, align 8, !dbg !2132
  %2 = load i64, ptr %word.addr, align 8, !dbg !2134
  ret i64 %2, !dbg !2135
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2136 dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2142 dso_local void @__cpuhp_remove_state(i32 noundef, i1 noundef zeroext) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kmem_cache_zalloc(ptr noundef %k, i32 noundef %flags) #6 align 16 !dbg !2145 {
entry:
  %k.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %k, ptr %k.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %k.addr, metadata !2149, metadata !DIExpression()), !dbg !2151
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2150, metadata !DIExpression()), !dbg !2152
  %0 = load ptr, ptr %k.addr, align 8, !dbg !2153
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2154
  %or = or i32 %1, 256, !dbg !2155
  %call = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef %or) #19, !dbg !2156
  ret ptr %call, !dbg !2157
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2158 dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fls_long(i64 noundef %l) #6 align 16 !dbg !2159 {
entry:
  %l.addr = alloca i64, align 8
  store i64 %l, ptr %l.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %l.addr, metadata !2164, metadata !DIExpression()), !dbg !2165
  %0 = load i64, ptr %l.addr, align 8, !dbg !2166
  %call = call i32 @fls64(i64 noundef %0) #19, !dbg !2167
  ret i32 %call, !dbg !2168
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__get_cached_rbnode(ptr noundef %iovad, i64 noundef %limit_pfn) #0 align 16 !dbg !2169 {
entry:
  %retval = alloca ptr, align 8
  %iovad.addr = alloca ptr, align 8
  %limit_pfn.addr = alloca i64, align 8
  store ptr %iovad, ptr %iovad.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iovad.addr, metadata !2173, metadata !DIExpression()), !dbg !2175
  store i64 %limit_pfn, ptr %limit_pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %limit_pfn.addr, metadata !2174, metadata !DIExpression()), !dbg !2176
  %0 = load i64, ptr %limit_pfn.addr, align 8, !dbg !2177
  %1 = load ptr, ptr %iovad.addr, align 8, !dbg !2179
  %dma_32bit_pfn = getelementptr inbounds %struct.iova_domain, ptr %1, i32 0, i32 6, !dbg !2180
  %2 = load i64, ptr %dma_32bit_pfn, align 8, !dbg !2180
  %cmp = icmp ule i64 %0, %2, !dbg !2181
  br i1 %cmp, label %if.then, label %if.end, !dbg !2182

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %iovad.addr, align 8, !dbg !2183
  %cached32_node = getelementptr inbounds %struct.iova_domain, ptr %3, i32 0, i32 3, !dbg !2184
  %4 = load ptr, ptr %cached32_node, align 8, !dbg !2184
  store ptr %4, ptr %retval, align 8, !dbg !2185
  br label %return, !dbg !2185

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %iovad.addr, align 8, !dbg !2186
  %cached_node = getelementptr inbounds %struct.iova_domain, ptr %5, i32 0, i32 2, !dbg !2187
  %6 = load ptr, ptr %cached_node, align 8, !dbg !2187
  store ptr %6, ptr %retval, align 8, !dbg !2188
  br label %return, !dbg !2188

return:                                           ; preds = %if.end, %if.then
  %7 = load ptr, ptr %retval, align 8, !dbg !2189
  ret ptr %7, !dbg !2189
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2190 dso_local ptr @rb_prev(ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @iova_find_limit(ptr noundef %iovad, i64 noundef %limit_pfn) #0 align 16 !dbg !2191 {
entry:
  %retval = alloca ptr, align 8
  %iovad.addr = alloca ptr, align 8
  %limit_pfn.addr = alloca i64, align 8
  %node = alloca ptr, align 8
  %next = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %iovad, ptr %iovad.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iovad.addr, metadata !2193, metadata !DIExpression()), !dbg !2198
  store i64 %limit_pfn, ptr %limit_pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %limit_pfn.addr, metadata !2194, metadata !DIExpression()), !dbg !2199
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #18, !dbg !2200
  call void @llvm.dbg.declare(metadata ptr %node, metadata !2195, metadata !DIExpression()), !dbg !2201
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #18, !dbg !2200
  call void @llvm.dbg.declare(metadata ptr %next, metadata !2196, metadata !DIExpression()), !dbg !2202
  %0 = load i64, ptr %limit_pfn.addr, align 8, !dbg !2203
  %1 = load ptr, ptr %iovad.addr, align 8, !dbg !2205
  %dma_32bit_pfn = getelementptr inbounds %struct.iova_domain, ptr %1, i32 0, i32 6, !dbg !2206
  %2 = load i64, ptr %dma_32bit_pfn, align 8, !dbg !2206
  %cmp = icmp ugt i64 %0, %2, !dbg !2207
  br i1 %cmp, label %if.then, label %if.end, !dbg !2208

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %iovad.addr, align 8, !dbg !2209
  %anchor = getelementptr inbounds %struct.iova_domain, ptr %3, i32 0, i32 8, !dbg !2210
  %node1 = getelementptr inbounds %struct.iova, ptr %anchor, i32 0, i32 0, !dbg !2211
  store ptr %node1, ptr %retval, align 8, !dbg !2212
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2212

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %iovad.addr, align 8, !dbg !2213
  %rbroot = getelementptr inbounds %struct.iova_domain, ptr %4, i32 0, i32 1, !dbg !2214
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %rbroot, i32 0, i32 0, !dbg !2215
  %5 = load ptr, ptr %rb_node, align 8, !dbg !2215
  store ptr %5, ptr %node, align 8, !dbg !2216
  br label %while.cond, !dbg !2217

while.cond:                                       ; preds = %while.body, %if.end
  %6 = load ptr, ptr %node, align 8, !dbg !2218
  %call = call ptr @to_iova(ptr noundef %6) #19, !dbg !2219
  %pfn_hi = getelementptr inbounds %struct.iova, ptr %call, i32 0, i32 1, !dbg !2220
  %7 = load i64, ptr %pfn_hi, align 8, !dbg !2220
  %8 = load i64, ptr %limit_pfn.addr, align 8, !dbg !2221
  %cmp2 = icmp ult i64 %7, %8, !dbg !2222
  br i1 %cmp2, label %while.body, label %while.end, !dbg !2217

while.body:                                       ; preds = %while.cond
  %9 = load ptr, ptr %node, align 8, !dbg !2223
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 1, !dbg !2224
  %10 = load ptr, ptr %rb_right, align 8, !dbg !2224
  store ptr %10, ptr %node, align 8, !dbg !2225
  br label %while.cond, !dbg !2217, !llvm.loop !2226

while.end:                                        ; preds = %while.cond
  br label %search_left, !dbg !2217

search_left:                                      ; preds = %if.then23, %while.end
  call void @llvm.dbg.label(metadata !2197), !dbg !2227
  br label %while.cond3, !dbg !2228

while.cond3:                                      ; preds = %while.body7, %search_left
  %11 = load ptr, ptr %node, align 8, !dbg !2229
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %11, i32 0, i32 2, !dbg !2230
  %12 = load ptr, ptr %rb_left, align 8, !dbg !2230
  %tobool = icmp ne ptr %12, null, !dbg !2229
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !2231

land.rhs:                                         ; preds = %while.cond3
  %13 = load ptr, ptr %node, align 8, !dbg !2232
  %rb_left4 = getelementptr inbounds %struct.rb_node, ptr %13, i32 0, i32 2, !dbg !2233
  %14 = load ptr, ptr %rb_left4, align 8, !dbg !2233
  %call5 = call ptr @to_iova(ptr noundef %14) #19, !dbg !2234
  %pfn_lo = getelementptr inbounds %struct.iova, ptr %call5, i32 0, i32 2, !dbg !2235
  %15 = load i64, ptr %pfn_lo, align 8, !dbg !2235
  %16 = load i64, ptr %limit_pfn.addr, align 8, !dbg !2236
  %cmp6 = icmp uge i64 %15, %16, !dbg !2237
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond3
  %17 = phi i1 [ false, %while.cond3 ], [ %cmp6, %land.rhs ], !dbg !2238
  br i1 %17, label %while.body7, label %while.end9, !dbg !2228

while.body7:                                      ; preds = %land.end
  %18 = load ptr, ptr %node, align 8, !dbg !2239
  %rb_left8 = getelementptr inbounds %struct.rb_node, ptr %18, i32 0, i32 2, !dbg !2240
  %19 = load ptr, ptr %rb_left8, align 8, !dbg !2240
  store ptr %19, ptr %node, align 8, !dbg !2241
  br label %while.cond3, !dbg !2228, !llvm.loop !2242

while.end9:                                       ; preds = %land.end
  %20 = load ptr, ptr %node, align 8, !dbg !2243
  %rb_left10 = getelementptr inbounds %struct.rb_node, ptr %20, i32 0, i32 2, !dbg !2245
  %21 = load ptr, ptr %rb_left10, align 8, !dbg !2245
  %tobool11 = icmp ne ptr %21, null, !dbg !2243
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !2246

if.then12:                                        ; preds = %while.end9
  %22 = load ptr, ptr %node, align 8, !dbg !2247
  store ptr %22, ptr %retval, align 8, !dbg !2248
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2248

if.end13:                                         ; preds = %while.end9
  %23 = load ptr, ptr %node, align 8, !dbg !2249
  %rb_left14 = getelementptr inbounds %struct.rb_node, ptr %23, i32 0, i32 2, !dbg !2250
  %24 = load ptr, ptr %rb_left14, align 8, !dbg !2250
  store ptr %24, ptr %next, align 8, !dbg !2251
  br label %while.cond15, !dbg !2252

while.cond15:                                     ; preds = %if.end24, %if.end13
  %25 = load ptr, ptr %next, align 8, !dbg !2253
  %rb_right16 = getelementptr inbounds %struct.rb_node, ptr %25, i32 0, i32 1, !dbg !2254
  %26 = load ptr, ptr %rb_right16, align 8, !dbg !2254
  %tobool17 = icmp ne ptr %26, null, !dbg !2252
  br i1 %tobool17, label %while.body18, label %while.end25, !dbg !2252

while.body18:                                     ; preds = %while.cond15
  %27 = load ptr, ptr %next, align 8, !dbg !2255
  %rb_right19 = getelementptr inbounds %struct.rb_node, ptr %27, i32 0, i32 1, !dbg !2257
  %28 = load ptr, ptr %rb_right19, align 8, !dbg !2257
  store ptr %28, ptr %next, align 8, !dbg !2258
  %29 = load ptr, ptr %next, align 8, !dbg !2259
  %call20 = call ptr @to_iova(ptr noundef %29) #19, !dbg !2261
  %pfn_lo21 = getelementptr inbounds %struct.iova, ptr %call20, i32 0, i32 2, !dbg !2262
  %30 = load i64, ptr %pfn_lo21, align 8, !dbg !2262
  %31 = load i64, ptr %limit_pfn.addr, align 8, !dbg !2263
  %cmp22 = icmp uge i64 %30, %31, !dbg !2264
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !2265

if.then23:                                        ; preds = %while.body18
  %32 = load ptr, ptr %next, align 8, !dbg !2266
  store ptr %32, ptr %node, align 8, !dbg !2268
  br label %search_left, !dbg !2269

if.end24:                                         ; preds = %while.body18
  br label %while.cond15, !dbg !2252, !llvm.loop !2270

while.end25:                                      ; preds = %while.cond15
  %33 = load ptr, ptr %node, align 8, !dbg !2272
  store ptr %33, ptr %retval, align 8, !dbg !2273
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2273

cleanup:                                          ; preds = %while.end25, %if.then12, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #18, !dbg !2274
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #18, !dbg !2274
  %34 = load ptr, ptr %retval, align 8, !dbg !2274
  ret ptr %34, !dbg !2274
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @iova_insert_rbtree(ptr noundef %root, ptr noundef %iova, ptr noundef %start) #0 align 16 !dbg !2275 {
entry:
  %root.addr = alloca ptr, align 8
  %iova.addr = alloca ptr, align 8
  %start.addr = alloca ptr, align 8
  %new = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %this = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !2279, metadata !DIExpression()), !dbg !2294
  store ptr %iova, ptr %iova.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iova.addr, metadata !2280, metadata !DIExpression()), !dbg !2295
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !2281, metadata !DIExpression()), !dbg !2296
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #18, !dbg !2297
  call void @llvm.dbg.declare(metadata ptr %new, metadata !2282, metadata !DIExpression()), !dbg !2298
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #18, !dbg !2297
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !2283, metadata !DIExpression()), !dbg !2299
  store ptr null, ptr %parent, align 8, !dbg !2299
  %0 = load ptr, ptr %start.addr, align 8, !dbg !2300
  %tobool = icmp ne ptr %0, null, !dbg !2301
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2301

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !2301

cond.false:                                       ; preds = %entry
  %1 = load ptr, ptr %root.addr, align 8, !dbg !2302
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %1, i32 0, i32 0, !dbg !2303
  br label %cond.end, !dbg !2301

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %start.addr, %cond.true ], [ %rb_node, %cond.false ], !dbg !2301
  store ptr %cond, ptr %new, align 8, !dbg !2304
  br label %while.cond, !dbg !2305

while.cond:                                       ; preds = %cleanup.cont, %cond.end
  %2 = load ptr, ptr %new, align 8, !dbg !2306
  %3 = load ptr, ptr %2, align 8, !dbg !2307
  %tobool1 = icmp ne ptr %3, null, !dbg !2305
  br i1 %tobool1, label %while.body, label %while.end, !dbg !2305

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %this) #18, !dbg !2308
  call void @llvm.dbg.declare(metadata ptr %this, metadata !2284, metadata !DIExpression()), !dbg !2309
  %4 = load ptr, ptr %new, align 8, !dbg !2310
  %5 = load ptr, ptr %4, align 8, !dbg !2311
  %call = call ptr @to_iova(ptr noundef %5) #19, !dbg !2312
  store ptr %call, ptr %this, align 8, !dbg !2309
  %6 = load ptr, ptr %new, align 8, !dbg !2313
  %7 = load ptr, ptr %6, align 8, !dbg !2314
  store ptr %7, ptr %parent, align 8, !dbg !2315
  %8 = load ptr, ptr %iova.addr, align 8, !dbg !2316
  %pfn_lo = getelementptr inbounds %struct.iova, ptr %8, i32 0, i32 2, !dbg !2317
  %9 = load i64, ptr %pfn_lo, align 8, !dbg !2317
  %10 = load ptr, ptr %this, align 8, !dbg !2318
  %pfn_lo2 = getelementptr inbounds %struct.iova, ptr %10, i32 0, i32 2, !dbg !2319
  %11 = load i64, ptr %pfn_lo2, align 8, !dbg !2319
  %cmp = icmp ult i64 %9, %11, !dbg !2320
  br i1 %cmp, label %if.then, label %if.else, !dbg !2321

if.then:                                          ; preds = %while.body
  %12 = load ptr, ptr %new, align 8, !dbg !2322
  %13 = load ptr, ptr %12, align 8, !dbg !2323
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %13, i32 0, i32 2, !dbg !2324
  store ptr %rb_left, ptr %new, align 8, !dbg !2325
  br label %if.end29, !dbg !2326

if.else:                                          ; preds = %while.body
  %14 = load ptr, ptr %iova.addr, align 8, !dbg !2327
  %pfn_lo3 = getelementptr inbounds %struct.iova, ptr %14, i32 0, i32 2, !dbg !2328
  %15 = load i64, ptr %pfn_lo3, align 8, !dbg !2328
  %16 = load ptr, ptr %this, align 8, !dbg !2329
  %pfn_lo4 = getelementptr inbounds %struct.iova, ptr %16, i32 0, i32 2, !dbg !2330
  %17 = load i64, ptr %pfn_lo4, align 8, !dbg !2330
  %cmp5 = icmp ugt i64 %15, %17, !dbg !2331
  br i1 %cmp5, label %if.then6, label %if.else7, !dbg !2332

if.then6:                                         ; preds = %if.else
  %18 = load ptr, ptr %new, align 8, !dbg !2333
  %19 = load ptr, ptr %18, align 8, !dbg !2334
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %19, i32 0, i32 1, !dbg !2335
  store ptr %rb_right, ptr %new, align 8, !dbg !2336
  br label %if.end28, !dbg !2337

if.else7:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !2338
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2286, metadata !DIExpression()), !dbg !2338
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !2338
  %20 = load i32, ptr %__ret_warn_on, align 4, !dbg !2339
  %tobool8 = icmp ne i32 %20, 0, !dbg !2339
  %lnot = xor i1 %tobool8, true, !dbg !2339
  %lnot9 = xor i1 %lnot, true, !dbg !2339
  %lnot.ext = zext i1 %lnot9 to i32, !dbg !2339
  %conv = sext i32 %lnot.ext to i64, !dbg !2339
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2339
  %tobool10 = icmp ne i64 %expval, 0, !dbg !2339
  br i1 %tobool10, label %if.then11, label %if.end, !dbg !2338

if.then11:                                        ; preds = %if.else7
  br label %do.body, !dbg !2339

do.body:                                          ; preds = %if.then11
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #18, !dbg !2340
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2291, metadata !DIExpression()), !dbg !2340
  store i32 2305, ptr %__flags, align 4, !dbg !2340
  br label %do.body12, !dbg !2340

do.body12:                                        ; preds = %do.body
  br label %do.cond, !dbg !2341

do.cond:                                          ; preds = %do.body12
  br label %do.end, !dbg !2341

do.end:                                           ; preds = %do.cond
  br label %do.body13, !dbg !2340

do.body13:                                        ; preds = %do.end
  %21 = load i32, ptr %__flags, align 4, !dbg !2343
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 169, i32 %21, i64 12) #18, !dbg !2343, !srcloc !2345
  br label %do.cond14, !dbg !2343

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !2343

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !2340

do.body16:                                        ; preds = %do.end15
  br label %do.cond17, !dbg !2346

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !2346

do.end18:                                         ; preds = %do.cond17
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #18, !dbg !2339
  br label %do.cond19, !dbg !2340

do.cond19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !2340

do.end20:                                         ; preds = %do.cond19
  br label %if.end, !dbg !2340

if.end:                                           ; preds = %do.end20, %if.else7
  %22 = load i32, ptr %__ret_warn_on, align 4, !dbg !2338
  %tobool21 = icmp ne i32 %22, 0, !dbg !2338
  %lnot22 = xor i1 %tobool21, true, !dbg !2338
  %lnot24 = xor i1 %lnot22, true, !dbg !2338
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !2338
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !2338
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 0), !dbg !2338
  store i64 %expval27, ptr %tmp, align 8, !dbg !2339
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !2348
  %23 = load i64, ptr %tmp, align 8, !dbg !2338
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2349

if.end28:                                         ; preds = %if.then6
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2350
  br label %cleanup, !dbg !2350

cleanup:                                          ; preds = %if.end29, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %this) #18, !dbg !2350
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup31 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !2305, !llvm.loop !2351

while.end:                                        ; preds = %while.cond
  %24 = load ptr, ptr %iova.addr, align 8, !dbg !2352
  %node = getelementptr inbounds %struct.iova, ptr %24, i32 0, i32 0, !dbg !2353
  %25 = load ptr, ptr %parent, align 8, !dbg !2354
  %26 = load ptr, ptr %new, align 8, !dbg !2355
  call void @rb_link_node(ptr noundef %node, ptr noundef %25, ptr noundef %26) #19, !dbg !2356
  %27 = load ptr, ptr %iova.addr, align 8, !dbg !2357
  %node30 = getelementptr inbounds %struct.iova, ptr %27, i32 0, i32 0, !dbg !2358
  %28 = load ptr, ptr %root.addr, align 8, !dbg !2359
  call void @rb_insert_color(ptr noundef %node30, ptr noundef %28) #19, !dbg !2360
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2361
  br label %cleanup31, !dbg !2361

cleanup31:                                        ; preds = %while.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #18, !dbg !2361
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #18, !dbg !2361
  %cleanup.dest33 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest33, label %unreachable [
    i32 0, label %cleanup.cont34
    i32 1, label %cleanup.cont34
  ]

cleanup.cont34:                                   ; preds = %cleanup31, %cleanup31
  ret void, !dbg !2361

unreachable:                                      ; preds = %cleanup31
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__cached_rbnode_insert_update(ptr noundef %iovad, ptr noundef %new) #0 align 16 !dbg !2362 {
entry:
  %iovad.addr = alloca ptr, align 8
  %new.addr = alloca ptr, align 8
  store ptr %iovad, ptr %iovad.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iovad.addr, metadata !2364, metadata !DIExpression()), !dbg !2366
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2365, metadata !DIExpression()), !dbg !2367
  %0 = load ptr, ptr %new.addr, align 8, !dbg !2368
  %pfn_hi = getelementptr inbounds %struct.iova, ptr %0, i32 0, i32 1, !dbg !2370
  %1 = load i64, ptr %pfn_hi, align 8, !dbg !2370
  %2 = load ptr, ptr %iovad.addr, align 8, !dbg !2371
  %dma_32bit_pfn = getelementptr inbounds %struct.iova_domain, ptr %2, i32 0, i32 6, !dbg !2372
  %3 = load i64, ptr %dma_32bit_pfn, align 8, !dbg !2372
  %cmp = icmp ult i64 %1, %3, !dbg !2373
  br i1 %cmp, label %if.then, label %if.else, !dbg !2374

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %new.addr, align 8, !dbg !2375
  %node = getelementptr inbounds %struct.iova, ptr %4, i32 0, i32 0, !dbg !2376
  %5 = load ptr, ptr %iovad.addr, align 8, !dbg !2377
  %cached32_node = getelementptr inbounds %struct.iova_domain, ptr %5, i32 0, i32 3, !dbg !2378
  store ptr %node, ptr %cached32_node, align 8, !dbg !2379
  br label %if.end, !dbg !2377

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %new.addr, align 8, !dbg !2380
  %node1 = getelementptr inbounds %struct.iova, ptr %6, i32 0, i32 0, !dbg !2381
  %7 = load ptr, ptr %iovad.addr, align 8, !dbg !2382
  %cached_node = getelementptr inbounds %struct.iova_domain, ptr %7, i32 0, i32 2, !dbg !2383
  store ptr %node1, ptr %cached_node, align 8, !dbg !2384
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !2385
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fls64(i64 noundef %x) #4 align 16 !dbg !2386 {
entry:
  %x.addr = alloca i64, align 8
  %bitpos = alloca i32, align 4
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !2390, metadata !DIExpression()), !dbg !2392
  call void @llvm.lifetime.start.p0(i64 4, ptr %bitpos) #18, !dbg !2393
  call void @llvm.dbg.declare(metadata ptr %bitpos, metadata !2391, metadata !DIExpression()), !dbg !2394
  store i32 -1, ptr %bitpos, align 4, !dbg !2394
  %0 = load i32, ptr %bitpos, align 4, !dbg !2395
  %1 = load i64, ptr %x.addr, align 8, !dbg !2396
  %2 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %1, i32 %0) #23, !dbg !2395, !srcloc !2397
  store i32 %2, ptr %bitpos, align 4, !dbg !2395
  %3 = load i32, ptr %bitpos, align 4, !dbg !2398
  %add = add i32 %3, 1, !dbg !2399
  call void @llvm.lifetime.end.p0(i64 4, ptr %bitpos) #18, !dbg !2400
  ret i32 %add, !dbg !2401
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2402 dso_local void @kmem_cache_free(ptr noundef, ptr noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @queued_spin_is_locked(ptr noundef %lock) #4 align 16 !dbg !2405 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2411, metadata !DIExpression()), !dbg !2412
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2413
  %1 = getelementptr inbounds %struct.qspinlock, ptr %0, i32 0, i32 0, !dbg !2414
  %call = call i32 @atomic_read(ptr noundef %1) #19, !dbg !2415
  ret i32 %call, !dbg !2416
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #4 align 16 !dbg !2417 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2424, metadata !DIExpression()), !dbg !2425
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2426
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #19, !dbg !2427
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2428
  %call = call i32 @raw_atomic_read(ptr noundef %1) #19, !dbg !2429
  ret i32 %call, !dbg !2430
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !2431 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2439, metadata !DIExpression()), !dbg !2441
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2440, metadata !DIExpression()), !dbg !2442
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2443
  %1 = load i64, ptr %size.addr, align 8, !dbg !2444
  %conv = trunc i64 %1 to i32, !dbg !2444
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #19, !dbg !2445
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2446
  %3 = load i64, ptr %size.addr, align 8, !dbg !2446
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #19, !dbg !2446
  ret void, !dbg !2447
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #4 align 16 !dbg !2448 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2451, metadata !DIExpression()), !dbg !2452
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2453
  %call = call i32 @arch_atomic_read(ptr noundef %0) #19, !dbg !2454
  ret i32 %call, !dbg !2455
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !2456 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2461, metadata !DIExpression()), !dbg !2463
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2462, metadata !DIExpression()), !dbg !2464
  ret i1 true, !dbg !2465
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !2466 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2471, metadata !DIExpression()), !dbg !2474
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2472, metadata !DIExpression()), !dbg !2475
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2473, metadata !DIExpression()), !dbg !2476
  ret void, !dbg !2477
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #4 align 16 !dbg !2478 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2481, metadata !DIExpression()), !dbg !2482
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2483
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !2483
  %1 = load volatile i32, ptr %counter, align 4, !dbg !2483
  ret i32 %1, !dbg !2484
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2485 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #7 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__cached_rbnode_delete_update(ptr noundef %iovad, ptr noundef %free) #0 align 16 !dbg !2488 {
entry:
  %iovad.addr = alloca ptr, align 8
  %free.addr = alloca ptr, align 8
  %cached_iova = alloca ptr, align 8
  store ptr %iovad, ptr %iovad.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iovad.addr, metadata !2490, metadata !DIExpression()), !dbg !2493
  store ptr %free, ptr %free.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %free.addr, metadata !2491, metadata !DIExpression()), !dbg !2494
  call void @llvm.lifetime.start.p0(i64 8, ptr %cached_iova) #18, !dbg !2495
  call void @llvm.dbg.declare(metadata ptr %cached_iova, metadata !2492, metadata !DIExpression()), !dbg !2496
  %0 = load ptr, ptr %iovad.addr, align 8, !dbg !2497
  %cached32_node = getelementptr inbounds %struct.iova_domain, ptr %0, i32 0, i32 3, !dbg !2498
  %1 = load ptr, ptr %cached32_node, align 8, !dbg !2498
  %call = call ptr @to_iova(ptr noundef %1) #19, !dbg !2499
  store ptr %call, ptr %cached_iova, align 8, !dbg !2500
  %2 = load ptr, ptr %free.addr, align 8, !dbg !2501
  %3 = load ptr, ptr %cached_iova, align 8, !dbg !2503
  %cmp = icmp eq ptr %2, %3, !dbg !2504
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2505

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %free.addr, align 8, !dbg !2506
  %pfn_hi = getelementptr inbounds %struct.iova, ptr %4, i32 0, i32 1, !dbg !2507
  %5 = load i64, ptr %pfn_hi, align 8, !dbg !2507
  %6 = load ptr, ptr %iovad.addr, align 8, !dbg !2508
  %dma_32bit_pfn = getelementptr inbounds %struct.iova_domain, ptr %6, i32 0, i32 6, !dbg !2509
  %7 = load i64, ptr %dma_32bit_pfn, align 8, !dbg !2509
  %cmp1 = icmp ult i64 %5, %7, !dbg !2510
  br i1 %cmp1, label %land.lhs.true, label %if.end, !dbg !2511

land.lhs.true:                                    ; preds = %lor.lhs.false
  %8 = load ptr, ptr %free.addr, align 8, !dbg !2512
  %pfn_lo = getelementptr inbounds %struct.iova, ptr %8, i32 0, i32 2, !dbg !2513
  %9 = load i64, ptr %pfn_lo, align 8, !dbg !2513
  %10 = load ptr, ptr %cached_iova, align 8, !dbg !2514
  %pfn_lo2 = getelementptr inbounds %struct.iova, ptr %10, i32 0, i32 2, !dbg !2515
  %11 = load i64, ptr %pfn_lo2, align 8, !dbg !2515
  %cmp3 = icmp uge i64 %9, %11, !dbg !2516
  br i1 %cmp3, label %if.then, label %if.end, !dbg !2517

if.then:                                          ; preds = %land.lhs.true, %entry
  %12 = load ptr, ptr %free.addr, align 8, !dbg !2518
  %node = getelementptr inbounds %struct.iova, ptr %12, i32 0, i32 0, !dbg !2519
  %call4 = call ptr @rb_next(ptr noundef %node) #19, !dbg !2520
  %13 = load ptr, ptr %iovad.addr, align 8, !dbg !2521
  %cached32_node5 = getelementptr inbounds %struct.iova_domain, ptr %13, i32 0, i32 3, !dbg !2522
  store ptr %call4, ptr %cached32_node5, align 8, !dbg !2523
  br label %if.end, !dbg !2521

if.end:                                           ; preds = %if.then, %land.lhs.true, %lor.lhs.false
  %14 = load ptr, ptr %free.addr, align 8, !dbg !2524
  %pfn_lo6 = getelementptr inbounds %struct.iova, ptr %14, i32 0, i32 2, !dbg !2526
  %15 = load i64, ptr %pfn_lo6, align 8, !dbg !2526
  %16 = load ptr, ptr %iovad.addr, align 8, !dbg !2527
  %dma_32bit_pfn7 = getelementptr inbounds %struct.iova_domain, ptr %16, i32 0, i32 6, !dbg !2528
  %17 = load i64, ptr %dma_32bit_pfn7, align 8, !dbg !2528
  %cmp8 = icmp ult i64 %15, %17, !dbg !2529
  br i1 %cmp8, label %if.then9, label %if.end11, !dbg !2530

if.then9:                                         ; preds = %if.end
  %18 = load ptr, ptr %iovad.addr, align 8, !dbg !2531
  %dma_32bit_pfn10 = getelementptr inbounds %struct.iova_domain, ptr %18, i32 0, i32 6, !dbg !2532
  %19 = load i64, ptr %dma_32bit_pfn10, align 8, !dbg !2532
  %20 = load ptr, ptr %iovad.addr, align 8, !dbg !2533
  %max32_alloc_size = getelementptr inbounds %struct.iova_domain, ptr %20, i32 0, i32 7, !dbg !2534
  store i64 %19, ptr %max32_alloc_size, align 8, !dbg !2535
  br label %if.end11, !dbg !2533

if.end11:                                         ; preds = %if.then9, %if.end
  %21 = load ptr, ptr %iovad.addr, align 8, !dbg !2536
  %cached_node = getelementptr inbounds %struct.iova_domain, ptr %21, i32 0, i32 2, !dbg !2537
  %22 = load ptr, ptr %cached_node, align 8, !dbg !2537
  %call12 = call ptr @to_iova(ptr noundef %22) #19, !dbg !2538
  store ptr %call12, ptr %cached_iova, align 8, !dbg !2539
  %23 = load ptr, ptr %free.addr, align 8, !dbg !2540
  %pfn_lo13 = getelementptr inbounds %struct.iova, ptr %23, i32 0, i32 2, !dbg !2542
  %24 = load i64, ptr %pfn_lo13, align 8, !dbg !2542
  %25 = load ptr, ptr %cached_iova, align 8, !dbg !2543
  %pfn_lo14 = getelementptr inbounds %struct.iova, ptr %25, i32 0, i32 2, !dbg !2544
  %26 = load i64, ptr %pfn_lo14, align 8, !dbg !2544
  %cmp15 = icmp uge i64 %24, %26, !dbg !2545
  br i1 %cmp15, label %if.then16, label %if.end20, !dbg !2546

if.then16:                                        ; preds = %if.end11
  %27 = load ptr, ptr %free.addr, align 8, !dbg !2547
  %node17 = getelementptr inbounds %struct.iova, ptr %27, i32 0, i32 0, !dbg !2548
  %call18 = call ptr @rb_next(ptr noundef %node17) #19, !dbg !2549
  %28 = load ptr, ptr %iovad.addr, align 8, !dbg !2550
  %cached_node19 = getelementptr inbounds %struct.iova_domain, ptr %28, i32 0, i32 2, !dbg !2551
  store ptr %call18, ptr %cached_node19, align 8, !dbg !2552
  br label %if.end20, !dbg !2550

if.end20:                                         ; preds = %if.then16, %if.end11
  call void @llvm.lifetime.end.p0(i64 8, ptr %cached_iova) #18, !dbg !2553
  ret void, !dbg !2553
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2554 dso_local void @rb_erase(ptr noundef, ptr noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2555 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpuhp_state_remove_instance_nocalls(i32 noundef %state, ptr noundef %node) #6 align 16 !dbg !2556 {
entry:
  %state.addr = alloca i32, align 4
  %node.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !2558, metadata !DIExpression()), !dbg !2560
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !2559, metadata !DIExpression()), !dbg !2561
  %0 = load i32, ptr %state.addr, align 4, !dbg !2562
  %1 = load ptr, ptr %node.addr, align 8, !dbg !2563
  %call = call i32 @__cpuhp_state_remove_instance(i32 noundef %0, ptr noundef %1, i1 noundef zeroext false) #19, !dbg !2564
  ret i32 %call, !dbg !2565
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2566 dso_local i32 @__cpuhp_state_remove_instance(i32 noundef, ptr noundef, i1 noundef zeroext) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @alloc_and_init_iova(i64 noundef %pfn_lo, i64 noundef %pfn_hi) #6 align 16 !dbg !2569 {
entry:
  %pfn_lo.addr = alloca i64, align 8
  %pfn_hi.addr = alloca i64, align 8
  %iova = alloca ptr, align 8
  store i64 %pfn_lo, ptr %pfn_lo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn_lo.addr, metadata !2573, metadata !DIExpression()), !dbg !2576
  store i64 %pfn_hi, ptr %pfn_hi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn_hi.addr, metadata !2574, metadata !DIExpression()), !dbg !2577
  call void @llvm.lifetime.start.p0(i64 8, ptr %iova) #18, !dbg !2578
  call void @llvm.dbg.declare(metadata ptr %iova, metadata !2575, metadata !DIExpression()), !dbg !2579
  %call = call ptr @alloc_iova_mem() #19, !dbg !2580
  store ptr %call, ptr %iova, align 8, !dbg !2581
  %0 = load ptr, ptr %iova, align 8, !dbg !2582
  %tobool = icmp ne ptr %0, null, !dbg !2582
  br i1 %tobool, label %if.then, label %if.end, !dbg !2584

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %pfn_lo.addr, align 8, !dbg !2585
  %2 = load ptr, ptr %iova, align 8, !dbg !2587
  %pfn_lo1 = getelementptr inbounds %struct.iova, ptr %2, i32 0, i32 2, !dbg !2588
  store i64 %1, ptr %pfn_lo1, align 8, !dbg !2589
  %3 = load i64, ptr %pfn_hi.addr, align 8, !dbg !2590
  %4 = load ptr, ptr %iova, align 8, !dbg !2591
  %pfn_hi2 = getelementptr inbounds %struct.iova, ptr %4, i32 0, i32 1, !dbg !2592
  store i64 %3, ptr %pfn_hi2, align 8, !dbg !2593
  br label %if.end, !dbg !2594

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %iova, align 8, !dbg !2595
  call void @llvm.lifetime.end.p0(i64 8, ptr %iova) #18, !dbg !2596
  ret ptr %5, !dbg !2597
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #12 align 16 !dbg !2598 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !2600, metadata !DIExpression()), !dbg !2604
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2601, metadata !DIExpression()), !dbg !2605
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2602, metadata !DIExpression()), !dbg !2606
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #18, !dbg !2607
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !2603, metadata !DIExpression()), !dbg !2608
  %0 = load i64, ptr %n.addr, align 8, !dbg !2609
  %1 = load i64, ptr %size.addr, align 8, !dbg !2609
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !2609
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !2609
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !2609
  store i64 %4, ptr %bytes, align 8, !dbg !2609
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #19, !dbg !2609
  %lnot = xor i1 %call, true, !dbg !2609
  %lnot1 = xor i1 %lnot, true, !dbg !2609
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2609
  %conv = sext i32 %lnot.ext to i64, !dbg !2609
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2609
  %tobool = icmp ne i64 %expval, 0, !dbg !2609
  br i1 %tobool, label %if.then, label %if.end, !dbg !2611

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !2612
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2612

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !2613
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !2615
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !2616

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !2617
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !2618
  br i1 %8, label %if.then2, label %if.end4, !dbg !2619

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !2620
  %10 = load i32, ptr %flags.addr, align 4, !dbg !2621
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #22, !dbg !2622
  store ptr %call3, ptr %retval, align 8, !dbg !2623
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2623

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !2624
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2625
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #22, !dbg !2626
  store ptr %call5, ptr %retval, align 8, !dbg !2627
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2627

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #18, !dbg !2628
  %13 = load ptr, ptr %retval, align 8, !dbg !2628
  ret ptr %13, !dbg !2628
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #6 align 16 !dbg !2629 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !2634, metadata !DIExpression()), !dbg !2635
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !2636, !range !786, !noundef !787
  %tobool = trunc i8 %0 to i1, !dbg !2636
  %lnot = xor i1 %tobool, true, !dbg !2636
  %lnot1 = xor i1 %lnot, true, !dbg !2636
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2636
  %conv = sext i32 %lnot.ext to i64, !dbg !2636
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2636
  %tobool2 = icmp ne i64 %expval, 0, !dbg !2636
  ret i1 %tobool2, !dbg !2637
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #14 align 16 !dbg !2638 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2642, metadata !DIExpression()), !dbg !2647
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2643, metadata !DIExpression()), !dbg !2648
  %0 = load i64, ptr %size.addr, align 8, !dbg !2649
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2650
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !2651

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2652
  %tobool = icmp ne i64 %2, 0, !dbg !2652
  br i1 %tobool, label %if.then, label %if.end7, !dbg !2653

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #18, !dbg !2654
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2644, metadata !DIExpression()), !dbg !2655
  %3 = load i64, ptr %size.addr, align 8, !dbg !2656
  %cmp = icmp ugt i64 %3, 8192, !dbg !2658
  br i1 %cmp, label %if.then1, label %if.end, !dbg !2659

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !2660
  %5 = load i32, ptr %flags.addr, align 4, !dbg !2661
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #22, !dbg !2662
  store ptr %call, ptr %retval, align 8, !dbg !2663
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2663

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !2664
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #19, !dbg !2664
  store i32 %call2, ptr %index, align 4, !dbg !2665
  %7 = load i32, ptr %flags.addr, align 4, !dbg !2666
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !2667
  %9 = ptrtoint ptr %8 to i64, !dbg !2667
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #19, !dbg !2668
  %idxprom = zext i32 %call3 to i64, !dbg !2669
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !2669
  %10 = load i32, ptr %index, align 4, !dbg !2670
  %idxprom4 = zext i32 %10 to i64, !dbg !2669
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !2669
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !2669
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2671
  %13 = load i64, ptr %size.addr, align 8, !dbg !2672
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #24, !dbg !2673
  store ptr %call6, ptr %retval, align 8, !dbg !2674
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2674

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #18, !dbg !2675
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !2676
  %15 = load i32, ptr %flags.addr, align 4, !dbg !2677
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #22, !dbg !2678
  store ptr %call8, ptr %retval, align 8, !dbg !2679
  br label %return, !dbg !2679

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !2680
  ret ptr %16, !dbg !2680
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2681 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2682 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #4 align 16 !dbg !2683 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2687, metadata !DIExpression()), !dbg !2689
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !2688, metadata !DIExpression()), !dbg !2690
  %0 = load i64, ptr %size.addr, align 8, !dbg !2691
  %tobool = icmp ne i64 %0, 0, !dbg !2691
  br i1 %tobool, label %if.end, label %if.then, !dbg !2693

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2694
  br label %return, !dbg !2694

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !2695
  %cmp = icmp ule i64 %1, 8, !dbg !2697
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2698

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !2699
  br label %return, !dbg !2699

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !2700
  %cmp3 = icmp ugt i64 %2, 64, !dbg !2702
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !2703

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !2704
  %cmp4 = icmp ule i64 %3, 96, !dbg !2705
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2706

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !2707
  br label %return, !dbg !2707

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !2708
  %cmp7 = icmp ugt i64 %4, 128, !dbg !2710
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !2711

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !2712
  %cmp9 = icmp ule i64 %5, 192, !dbg !2713
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2714

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !2715
  br label %return, !dbg !2715

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !2716
  %cmp12 = icmp ule i64 %6, 8, !dbg !2718
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2719

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !2720
  br label %return, !dbg !2720

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !2721
  %cmp15 = icmp ule i64 %7, 16, !dbg !2723
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2724

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !2725
  br label %return, !dbg !2725

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !2726
  %cmp18 = icmp ule i64 %8, 32, !dbg !2728
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2729

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !2730
  br label %return, !dbg !2730

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !2731
  %cmp21 = icmp ule i64 %9, 64, !dbg !2733
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2734

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !2735
  br label %return, !dbg !2735

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !2736
  %cmp24 = icmp ule i64 %10, 128, !dbg !2738
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !2739

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !2740
  br label %return, !dbg !2740

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !2741
  %cmp27 = icmp ule i64 %11, 256, !dbg !2743
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !2744

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !2745
  br label %return, !dbg !2745

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !2746
  %cmp30 = icmp ule i64 %12, 512, !dbg !2748
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2749

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !2750
  br label %return, !dbg !2750

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !2751
  %cmp33 = icmp ule i64 %13, 1024, !dbg !2753
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2754

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !2755
  br label %return, !dbg !2755

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !2756
  %cmp36 = icmp ule i64 %14, 2048, !dbg !2758
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !2759

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !2760
  br label %return, !dbg !2760

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !2761
  %cmp39 = icmp ule i64 %15, 4096, !dbg !2763
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !2764

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !2765
  br label %return, !dbg !2765

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !2766
  %cmp42 = icmp ule i64 %16, 8192, !dbg !2768
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !2769

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !2770
  br label %return, !dbg !2770

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !2771
  %cmp45 = icmp ule i64 %17, 16384, !dbg !2773
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !2774

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !2775
  br label %return, !dbg !2775

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !2776
  %cmp48 = icmp ule i64 %18, 32768, !dbg !2778
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !2779

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !2780
  br label %return, !dbg !2780

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !2781
  %cmp51 = icmp ule i64 %19, 65536, !dbg !2783
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !2784

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !2785
  br label %return, !dbg !2785

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !2786
  %cmp54 = icmp ule i64 %20, 131072, !dbg !2788
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !2789

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !2790
  br label %return, !dbg !2790

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !2791
  %cmp57 = icmp ule i64 %21, 262144, !dbg !2793
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !2794

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !2795
  br label %return, !dbg !2795

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !2796
  %cmp60 = icmp ule i64 %22, 524288, !dbg !2798
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !2799

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !2800
  br label %return, !dbg !2800

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !2801
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !2803
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !2804

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !2805
  br label %return, !dbg !2805

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !2806
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !2808
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !2809

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !2810
  br label %return, !dbg !2810

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !2811, !range !786, !noundef !787
  %tobool69 = trunc i8 %25 to i1, !dbg !2811
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !2813

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !2814

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_229() #25, !dbg !2815, !srcloc !2818
  unreachable, !dbg !2815

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !2819

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !2820

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !2821

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !2823

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !2821

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 480, i32 0, i64 12) #18, !dbg !2825, !srcloc !2827
  br label %do.end75, !dbg !2825

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !2821

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !2828
  br label %return, !dbg !2828

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !2829
  ret i32 %26, !dbg !2829
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !2830 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #15

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #4 align 16 !dbg !2833 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2837, metadata !DIExpression()), !dbg !2839
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !2838, metadata !DIExpression()), !dbg !2840
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2841
  %and = and i32 %0, 17, !dbg !2841
  %cmp = icmp eq i32 %and, 0, !dbg !2841
  %lnot = xor i1 %cmp, true, !dbg !2841
  %lnot1 = xor i1 %lnot, true, !dbg !2841
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2841
  %conv = sext i32 %lnot.ext to i64, !dbg !2841
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2841
  %tobool = icmp ne i64 %expval, 0, !dbg !2841
  br i1 %tobool, label %if.then, label %if.end, !dbg !2843

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2844
  br label %return, !dbg !2844

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2845
  %and2 = and i32 %1, 1, !dbg !2847
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2847
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2848

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !2849
  br label %return, !dbg !2849

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2850
  br label %return, !dbg !2850

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2852
  ret i32 %2, !dbg !2852
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #3

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !2853 dso_local void @__compiletime_assert_229() #16

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2854 dso_local i32 @__cpuhp_state_add_instance(i32 noundef, ptr noundef, i1 noundef zeroext) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal i32 @__order_base_2(i64 noundef %n) #2 align 16 !dbg !2855 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !2859, metadata !DIExpression()), !dbg !2860
  %0 = load i64, ptr %n.addr, align 8, !dbg !2861
  %cmp = icmp ugt i64 %0, 1, !dbg !2862
  br i1 %cmp, label %cond.true, label %cond.false11, !dbg !2861

cond.true:                                        ; preds = %entry
  %1 = load i64, ptr %n.addr, align 8, !dbg !2863
  %sub = sub i64 %1, 1, !dbg !2863
  %2 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !2863
  br i1 %2, label %cond.true1, label %cond.false7, !dbg !2863

cond.true1:                                       ; preds = %cond.true
  %3 = load i64, ptr %n.addr, align 8, !dbg !2863
  %sub2 = sub i64 %3, 1, !dbg !2863
  %cmp3 = icmp ult i64 %sub2, 2, !dbg !2863
  br i1 %cmp3, label %cond.true4, label %cond.false, !dbg !2863

cond.true4:                                       ; preds = %cond.true1
  br label %cond.end, !dbg !2863

cond.false:                                       ; preds = %cond.true1
  %4 = load i64, ptr %n.addr, align 8, !dbg !2863
  %sub5 = sub i64 %4, 1, !dbg !2863
  %5 = call i64 @llvm.ctlz.i64(i64 %sub5, i1 true), !dbg !2863
  %cast = trunc i64 %5 to i32, !dbg !2863
  %sub6 = sub i32 63, %cast, !dbg !2863
  br label %cond.end, !dbg !2863

cond.end:                                         ; preds = %cond.false, %cond.true4
  %cond = phi i32 [ 0, %cond.true4 ], [ %sub6, %cond.false ], !dbg !2863
  br label %cond.end9, !dbg !2863

cond.false7:                                      ; preds = %cond.true
  %6 = load i64, ptr %n.addr, align 8, !dbg !2863
  %sub8 = sub i64 %6, 1, !dbg !2863
  %call = call i32 @__ilog2_u64(i64 noundef %sub8) #17, !dbg !2863
  br label %cond.end9, !dbg !2863

cond.end9:                                        ; preds = %cond.false7, %cond.end
  %cond10 = phi i32 [ %cond, %cond.end ], [ %call, %cond.false7 ], !dbg !2863
  %add = add i32 %cond10, 1, !dbg !2864
  br label %cond.end12, !dbg !2861

cond.false11:                                     ; preds = %entry
  br label %cond.end12, !dbg !2861

cond.end12:                                       ; preds = %cond.false11, %cond.end9
  %cond13 = phi i32 [ %add, %cond.end9 ], [ 0, %cond.false11 ], !dbg !2861
  ret i32 %cond13, !dbg !2865
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__iova_rcache_insert(ptr noundef %iovad, ptr noundef %rcache, i64 noundef %iova_pfn) #0 align 16 !dbg !2866 {
entry:
  %iovad.addr = alloca ptr, align 8
  %rcache.addr = alloca ptr, align 8
  %iova_pfn.addr = alloca i64, align 8
  %mag_to_free = alloca ptr, align 8
  %cpu_rcache = alloca ptr, align 8
  %can_insert = alloca i8, align 1
  %flags = alloca i64, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp4 = alloca i32, align 4
  %__tmp = alloca ptr, align 8
  %new_mag = alloca ptr, align 8
  store ptr %iovad, ptr %iovad.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iovad.addr, metadata !2870, metadata !DIExpression()), !dbg !2894
  store ptr %rcache, ptr %rcache.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rcache.addr, metadata !2871, metadata !DIExpression()), !dbg !2895
  store i64 %iova_pfn, ptr %iova_pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iova_pfn.addr, metadata !2872, metadata !DIExpression()), !dbg !2896
  call void @llvm.lifetime.start.p0(i64 8, ptr %mag_to_free) #18, !dbg !2897
  call void @llvm.dbg.declare(metadata ptr %mag_to_free, metadata !2873, metadata !DIExpression()), !dbg !2898
  store ptr null, ptr %mag_to_free, align 8, !dbg !2898
  call void @llvm.lifetime.start.p0(i64 8, ptr %cpu_rcache) #18, !dbg !2899
  call void @llvm.dbg.declare(metadata ptr %cpu_rcache, metadata !2874, metadata !DIExpression()), !dbg !2900
  call void @llvm.lifetime.start.p0(i64 1, ptr %can_insert) #18, !dbg !2901
  call void @llvm.dbg.declare(metadata ptr %can_insert, metadata !2875, metadata !DIExpression()), !dbg !2902
  store i8 0, ptr %can_insert, align 1, !dbg !2902
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #18, !dbg !2903
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !2876, metadata !DIExpression()), !dbg !2904
  br label %do.body, !dbg !2905

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #18, !dbg !2906
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2877, metadata !DIExpression()), !dbg !2906
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2906
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !2906
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #18, !dbg !2905
  br label %do.cond, !dbg !2906

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2906

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #18, !dbg !2907
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !2880, metadata !DIExpression()), !dbg !2907
  %1 = load ptr, ptr %rcache.addr, align 8, !dbg !2907
  %cpu_rcaches = getelementptr inbounds %struct.iova_rcache, ptr %1, i32 0, i32 3, !dbg !2907
  %2 = load ptr, ptr %cpu_rcaches, align 8, !dbg !2907
  %3 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr %2) #23, !dbg !2907, !srcloc !2908
  store i64 %3, ptr %tcp_ptr__, align 8, !dbg !2907
  %4 = load i64, ptr %tcp_ptr__, align 8, !dbg !2907
  %5 = inttoptr i64 %4 to ptr, !dbg !2907
  store ptr %5, ptr %tmp1, align 8, !dbg !2907
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #18, !dbg !2905
  %6 = load ptr, ptr %tmp1, align 8, !dbg !2907
  store ptr %6, ptr %tmp, align 8, !dbg !2906
  %7 = load ptr, ptr %tmp, align 8, !dbg !2905
  store ptr %7, ptr %cpu_rcache, align 8, !dbg !2909
  br label %do.body2, !dbg !2910

do.body2:                                         ; preds = %do.end
  br label %do.body3, !dbg !2911

do.body3:                                         ; preds = %do.body2
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #18, !dbg !2912
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !2882, metadata !DIExpression()), !dbg !2912
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #18, !dbg !2912
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !2886, metadata !DIExpression()), !dbg !2912
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !2912
  %conv = zext i1 %cmp to i32, !dbg !2912
  store i32 1, ptr %tmp4, align 4, !dbg !2912
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #18, !dbg !2913
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #18, !dbg !2913
  %8 = load i32, ptr %tmp4, align 4, !dbg !2912
  %9 = load ptr, ptr %cpu_rcache, align 8, !dbg !2913
  %lock = getelementptr inbounds %struct.iova_cpu_rcache, ptr %9, i32 0, i32 0, !dbg !2913
  %call = call ptr @spinlock_check(ptr noundef %lock) #19, !dbg !2913
  %call5 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #19, !dbg !2913
  store i64 %call5, ptr %flags, align 8, !dbg !2913
  br label %do.cond6, !dbg !2913

do.cond6:                                         ; preds = %do.body3
  br label %do.end7, !dbg !2913

do.end7:                                          ; preds = %do.cond6
  br label %do.cond8, !dbg !2911

do.cond8:                                         ; preds = %do.end7
  br label %do.end9, !dbg !2911

do.end9:                                          ; preds = %do.cond8
  %10 = load ptr, ptr %cpu_rcache, align 8, !dbg !2914
  %loaded = getelementptr inbounds %struct.iova_cpu_rcache, ptr %10, i32 0, i32 1, !dbg !2915
  %11 = load ptr, ptr %loaded, align 8, !dbg !2915
  %call10 = call zeroext i1 @iova_magazine_full(ptr noundef %11) #19, !dbg !2916
  br i1 %call10, label %if.else, label %if.then, !dbg !2917

if.then:                                          ; preds = %do.end9
  store i8 1, ptr %can_insert, align 1, !dbg !2918
  br label %if.end35, !dbg !2920

if.else:                                          ; preds = %do.end9
  %12 = load ptr, ptr %cpu_rcache, align 8, !dbg !2921
  %prev = getelementptr inbounds %struct.iova_cpu_rcache, ptr %12, i32 0, i32 2, !dbg !2922
  %13 = load ptr, ptr %prev, align 8, !dbg !2922
  %call11 = call zeroext i1 @iova_magazine_full(ptr noundef %13) #19, !dbg !2923
  br i1 %call11, label %if.else20, label %if.then12, !dbg !2924

if.then12:                                        ; preds = %if.else
  br label %do.body13, !dbg !2925

do.body13:                                        ; preds = %if.then12
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #18, !dbg !2926
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !2887, metadata !DIExpression()), !dbg !2926
  %14 = load ptr, ptr %cpu_rcache, align 8, !dbg !2926
  %prev14 = getelementptr inbounds %struct.iova_cpu_rcache, ptr %14, i32 0, i32 2, !dbg !2926
  %15 = load ptr, ptr %prev14, align 8, !dbg !2926
  store ptr %15, ptr %__tmp, align 8, !dbg !2926
  %16 = load ptr, ptr %cpu_rcache, align 8, !dbg !2926
  %loaded15 = getelementptr inbounds %struct.iova_cpu_rcache, ptr %16, i32 0, i32 1, !dbg !2926
  %17 = load ptr, ptr %loaded15, align 8, !dbg !2926
  %18 = load ptr, ptr %cpu_rcache, align 8, !dbg !2926
  %prev16 = getelementptr inbounds %struct.iova_cpu_rcache, ptr %18, i32 0, i32 2, !dbg !2926
  store ptr %17, ptr %prev16, align 8, !dbg !2926
  %19 = load ptr, ptr %__tmp, align 8, !dbg !2926
  %20 = load ptr, ptr %cpu_rcache, align 8, !dbg !2926
  %loaded17 = getelementptr inbounds %struct.iova_cpu_rcache, ptr %20, i32 0, i32 1, !dbg !2926
  store ptr %19, ptr %loaded17, align 8, !dbg !2926
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #18, !dbg !2925
  br label %do.cond18, !dbg !2926

do.cond18:                                        ; preds = %do.body13
  br label %do.end19, !dbg !2926

do.end19:                                         ; preds = %do.cond18
  store i8 1, ptr %can_insert, align 1, !dbg !2927
  br label %if.end34, !dbg !2928

if.else20:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_mag) #18, !dbg !2929
  call void @llvm.dbg.declare(metadata ptr %new_mag, metadata !2892, metadata !DIExpression()), !dbg !2930
  %call21 = call ptr @iova_magazine_alloc(i32 noundef 2080) #19, !dbg !2931
  store ptr %call21, ptr %new_mag, align 8, !dbg !2930
  %21 = load ptr, ptr %new_mag, align 8, !dbg !2932
  %tobool = icmp ne ptr %21, null, !dbg !2932
  br i1 %tobool, label %if.then22, label %if.end33, !dbg !2934

if.then22:                                        ; preds = %if.else20
  %22 = load ptr, ptr %rcache.addr, align 8, !dbg !2935
  %lock23 = getelementptr inbounds %struct.iova_rcache, ptr %22, i32 0, i32 0, !dbg !2937
  call void @spin_lock(ptr noundef %lock23) #19, !dbg !2938
  %23 = load ptr, ptr %rcache.addr, align 8, !dbg !2939
  %depot_size = getelementptr inbounds %struct.iova_rcache, ptr %23, i32 0, i32 1, !dbg !2941
  %24 = load i64, ptr %depot_size, align 8, !dbg !2941
  %cmp24 = icmp ult i64 %24, 32, !dbg !2942
  br i1 %cmp24, label %if.then26, label %if.else29, !dbg !2943

if.then26:                                        ; preds = %if.then22
  %25 = load ptr, ptr %cpu_rcache, align 8, !dbg !2944
  %loaded27 = getelementptr inbounds %struct.iova_cpu_rcache, ptr %25, i32 0, i32 1, !dbg !2946
  %26 = load ptr, ptr %loaded27, align 8, !dbg !2946
  %27 = load ptr, ptr %rcache.addr, align 8, !dbg !2947
  %depot = getelementptr inbounds %struct.iova_rcache, ptr %27, i32 0, i32 2, !dbg !2948
  %28 = load ptr, ptr %rcache.addr, align 8, !dbg !2949
  %depot_size28 = getelementptr inbounds %struct.iova_rcache, ptr %28, i32 0, i32 1, !dbg !2950
  %29 = load i64, ptr %depot_size28, align 8, !dbg !2951
  %inc = add i64 %29, 1, !dbg !2951
  store i64 %inc, ptr %depot_size28, align 8, !dbg !2951
  %arrayidx = getelementptr [32 x ptr], ptr %depot, i64 0, i64 %29, !dbg !2947
  store ptr %26, ptr %arrayidx, align 8, !dbg !2952
  br label %if.end, !dbg !2953

if.else29:                                        ; preds = %if.then22
  %30 = load ptr, ptr %cpu_rcache, align 8, !dbg !2954
  %loaded30 = getelementptr inbounds %struct.iova_cpu_rcache, ptr %30, i32 0, i32 1, !dbg !2956
  %31 = load ptr, ptr %loaded30, align 8, !dbg !2956
  store ptr %31, ptr %mag_to_free, align 8, !dbg !2957
  br label %if.end

if.end:                                           ; preds = %if.else29, %if.then26
  %32 = load ptr, ptr %rcache.addr, align 8, !dbg !2958
  %lock31 = getelementptr inbounds %struct.iova_rcache, ptr %32, i32 0, i32 0, !dbg !2959
  call void @spin_unlock(ptr noundef %lock31) #19, !dbg !2960
  %33 = load ptr, ptr %new_mag, align 8, !dbg !2961
  %34 = load ptr, ptr %cpu_rcache, align 8, !dbg !2962
  %loaded32 = getelementptr inbounds %struct.iova_cpu_rcache, ptr %34, i32 0, i32 1, !dbg !2963
  store ptr %33, ptr %loaded32, align 8, !dbg !2964
  store i8 1, ptr %can_insert, align 1, !dbg !2965
  br label %if.end33, !dbg !2966

if.end33:                                         ; preds = %if.end, %if.else20
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_mag) #18, !dbg !2967
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %do.end19
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then
  %35 = load i8, ptr %can_insert, align 1, !dbg !2968, !range !786, !noundef !787
  %tobool36 = trunc i8 %35 to i1, !dbg !2968
  br i1 %tobool36, label %if.then37, label %if.end39, !dbg !2970

if.then37:                                        ; preds = %if.end35
  %36 = load ptr, ptr %cpu_rcache, align 8, !dbg !2971
  %loaded38 = getelementptr inbounds %struct.iova_cpu_rcache, ptr %36, i32 0, i32 1, !dbg !2972
  %37 = load ptr, ptr %loaded38, align 8, !dbg !2972
  %38 = load i64, ptr %iova_pfn.addr, align 8, !dbg !2973
  call void @iova_magazine_push(ptr noundef %37, i64 noundef %38) #19, !dbg !2974
  br label %if.end39, !dbg !2974

if.end39:                                         ; preds = %if.then37, %if.end35
  %39 = load ptr, ptr %cpu_rcache, align 8, !dbg !2975
  %lock40 = getelementptr inbounds %struct.iova_cpu_rcache, ptr %39, i32 0, i32 0, !dbg !2976
  %40 = load i64, ptr %flags, align 8, !dbg !2977
  call void @spin_unlock_irqrestore(ptr noundef %lock40, i64 noundef %40) #19, !dbg !2978
  %41 = load ptr, ptr %mag_to_free, align 8, !dbg !2979
  %tobool41 = icmp ne ptr %41, null, !dbg !2979
  br i1 %tobool41, label %if.then42, label %if.end43, !dbg !2981

if.then42:                                        ; preds = %if.end39
  %42 = load ptr, ptr %mag_to_free, align 8, !dbg !2982
  %43 = load ptr, ptr %iovad.addr, align 8, !dbg !2984
  call void @iova_magazine_free_pfns(ptr noundef %42, ptr noundef %43) #19, !dbg !2985
  %44 = load ptr, ptr %mag_to_free, align 8, !dbg !2986
  call void @iova_magazine_free(ptr noundef %44) #19, !dbg !2987
  br label %if.end43, !dbg !2988

if.end43:                                         ; preds = %if.then42, %if.end39
  %45 = load i8, ptr %can_insert, align 1, !dbg !2989, !range !786, !noundef !787
  %tobool44 = trunc i8 %45 to i1, !dbg !2989
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #18, !dbg !2990
  call void @llvm.lifetime.end.p0(i64 1, ptr %can_insert) #18, !dbg !2990
  call void @llvm.lifetime.end.p0(i64 8, ptr %cpu_rcache) #18, !dbg !2990
  call void @llvm.lifetime.end.p0(i64 8, ptr %mag_to_free) #18, !dbg !2990
  ret i1 %tobool44, !dbg !2991
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @iova_magazine_full(ptr noundef %mag) #0 align 16 !dbg !2992 {
entry:
  %mag.addr = alloca ptr, align 8
  store ptr %mag, ptr %mag.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mag.addr, metadata !2996, metadata !DIExpression()), !dbg !2997
  %0 = load ptr, ptr %mag.addr, align 8, !dbg !2998
  %size = getelementptr inbounds %struct.iova_magazine, ptr %0, i32 0, i32 0, !dbg !2999
  %1 = load i64, ptr %size, align 8, !dbg !2999
  %cmp = icmp eq i64 %1, 127, !dbg !3000
  ret i1 %cmp, !dbg !3001
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #4 align 16 !dbg !3002 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !3006, metadata !DIExpression()), !dbg !3007
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !3008
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !3008
  call void @_raw_spin_lock(ptr noundef %1) #19, !dbg !3008
  ret void, !dbg !3009
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #4 align 16 !dbg !3010 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !3012, metadata !DIExpression()), !dbg !3013
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !3014
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !3014
  call void @_raw_spin_unlock(ptr noundef %1) #19, !dbg !3014
  ret void, !dbg !3015
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @iova_magazine_push(ptr noundef %mag, i64 noundef %pfn) #0 align 16 !dbg !3016 {
entry:
  %mag.addr = alloca ptr, align 8
  %pfn.addr = alloca i64, align 8
  store ptr %mag, ptr %mag.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mag.addr, metadata !3020, metadata !DIExpression()), !dbg !3022
  store i64 %pfn, ptr %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn.addr, metadata !3021, metadata !DIExpression()), !dbg !3023
  %0 = load i64, ptr %pfn.addr, align 8, !dbg !3024
  %1 = load ptr, ptr %mag.addr, align 8, !dbg !3025
  %pfns = getelementptr inbounds %struct.iova_magazine, ptr %1, i32 0, i32 1, !dbg !3026
  %2 = load ptr, ptr %mag.addr, align 8, !dbg !3027
  %size = getelementptr inbounds %struct.iova_magazine, ptr %2, i32 0, i32 0, !dbg !3028
  %3 = load i64, ptr %size, align 8, !dbg !3029
  %inc = add i64 %3, 1, !dbg !3029
  store i64 %inc, ptr %size, align 8, !dbg !3029
  %arrayidx = getelementptr [127 x i64], ptr %pfns, i64 0, i64 %3, !dbg !3025
  store i64 %0, ptr %arrayidx, align 8, !dbg !3030
  ret void, !dbg !3031
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @iova_magazine_free_pfns(ptr noundef %mag, ptr noundef %iovad) #0 align 16 !dbg !3032 {
entry:
  %mag.addr = alloca ptr, align 8
  %iovad.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %i = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %iova = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp30 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mag, ptr %mag.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mag.addr, metadata !3036, metadata !DIExpression()), !dbg !3055
  store ptr %iovad, ptr %iovad.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iovad.addr, metadata !3037, metadata !DIExpression()), !dbg !3056
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #18, !dbg !3057
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !3038, metadata !DIExpression()), !dbg !3058
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !3059
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3039, metadata !DIExpression()), !dbg !3060
  br label %do.body, !dbg !3061

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3062

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #18, !dbg !3063
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !3040, metadata !DIExpression()), !dbg !3063
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #18, !dbg !3063
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !3044, metadata !DIExpression()), !dbg !3063
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !3063
  %conv = zext i1 %cmp to i32, !dbg !3063
  store i32 1, ptr %tmp, align 4, !dbg !3063
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #18, !dbg !3064
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #18, !dbg !3064
  %0 = load i32, ptr %tmp, align 4, !dbg !3063
  %1 = load ptr, ptr %iovad.addr, align 8, !dbg !3064
  %iova_rbtree_lock = getelementptr inbounds %struct.iova_domain, ptr %1, i32 0, i32 0, !dbg !3064
  %call = call ptr @spinlock_check(ptr noundef %iova_rbtree_lock) #19, !dbg !3064
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #19, !dbg !3064
  store i64 %call2, ptr %flags, align 8, !dbg !3064
  br label %do.cond, !dbg !3064

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !3064

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !3062

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !3062

do.end4:                                          ; preds = %do.cond3
  store i32 0, ptr %i, align 4, !dbg !3065
  br label %for.cond, !dbg !3066

for.cond:                                         ; preds = %for.inc, %do.end4
  %2 = load i32, ptr %i, align 4, !dbg !3067
  %conv5 = sext i32 %2 to i64, !dbg !3067
  %3 = load ptr, ptr %mag.addr, align 8, !dbg !3068
  %size = getelementptr inbounds %struct.iova_magazine, ptr %3, i32 0, i32 0, !dbg !3069
  %4 = load i64, ptr %size, align 8, !dbg !3069
  %cmp6 = icmp ult i64 %conv5, %4, !dbg !3070
  br i1 %cmp6, label %for.body, label %for.end, !dbg !3071

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %iova) #18, !dbg !3072
  call void @llvm.dbg.declare(metadata ptr %iova, metadata !3045, metadata !DIExpression()), !dbg !3073
  %5 = load ptr, ptr %iovad.addr, align 8, !dbg !3074
  %6 = load ptr, ptr %mag.addr, align 8, !dbg !3075
  %pfns = getelementptr inbounds %struct.iova_magazine, ptr %6, i32 0, i32 1, !dbg !3076
  %7 = load i32, ptr %i, align 4, !dbg !3077
  %idxprom = sext i32 %7 to i64, !dbg !3075
  %arrayidx = getelementptr [127 x i64], ptr %pfns, i64 0, i64 %idxprom, !dbg !3075
  %8 = load i64, ptr %arrayidx, align 8, !dbg !3075
  %call8 = call ptr @private_find_iova(ptr noundef %5, i64 noundef %8) #19, !dbg !3078
  store ptr %call8, ptr %iova, align 8, !dbg !3073
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !3079
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3049, metadata !DIExpression()), !dbg !3079
  %9 = load ptr, ptr %iova, align 8, !dbg !3079
  %tobool = icmp ne ptr %9, null, !dbg !3079
  %lnot = xor i1 %tobool, true, !dbg !3079
  %lnot9 = xor i1 %lnot, true, !dbg !3079
  %lnot10 = xor i1 %lnot9, true, !dbg !3079
  %lnot.ext = zext i1 %lnot10 to i32, !dbg !3079
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !3079
  %10 = load i32, ptr %__ret_warn_on, align 4, !dbg !3080
  %tobool11 = icmp ne i32 %10, 0, !dbg !3080
  %lnot12 = xor i1 %tobool11, true, !dbg !3080
  %lnot14 = xor i1 %lnot12, true, !dbg !3080
  %lnot.ext15 = zext i1 %lnot14 to i32, !dbg !3080
  %conv16 = sext i32 %lnot.ext15 to i64, !dbg !3080
  %expval = call i64 @llvm.expect.i64(i64 %conv16, i64 0), !dbg !3080
  %tobool17 = icmp ne i64 %expval, 0, !dbg !3080
  br i1 %tobool17, label %if.then, label %if.end, !dbg !3079

if.then:                                          ; preds = %for.body
  br label %do.body18, !dbg !3080

do.body18:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #18, !dbg !3081
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3052, metadata !DIExpression()), !dbg !3081
  store i32 2305, ptr %__flags, align 4, !dbg !3081
  br label %do.body19, !dbg !3081

do.body19:                                        ; preds = %do.body18
  br label %do.cond20, !dbg !3082

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !3082

do.end21:                                         ; preds = %do.cond20
  br label %do.body22, !dbg !3081

do.body22:                                        ; preds = %do.end21
  %11 = load i32, ptr %__flags, align 4, !dbg !3084
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 675, i32 %11, i64 12) #18, !dbg !3084, !srcloc !3086
  br label %do.cond23, !dbg !3084

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !3084

do.end24:                                         ; preds = %do.cond23
  br label %do.body25, !dbg !3081

do.body25:                                        ; preds = %do.end24
  br label %do.cond26, !dbg !3087

do.cond26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !3087

do.end27:                                         ; preds = %do.cond26
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #18, !dbg !3080
  br label %do.cond28, !dbg !3081

do.cond28:                                        ; preds = %do.end27
  br label %do.end29, !dbg !3081

do.end29:                                         ; preds = %do.cond28
  br label %if.end, !dbg !3081

if.end:                                           ; preds = %do.end29, %for.body
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !3079
  %tobool31 = icmp ne i32 %12, 0, !dbg !3079
  %lnot32 = xor i1 %tobool31, true, !dbg !3079
  %lnot34 = xor i1 %lnot32, true, !dbg !3079
  %lnot.ext35 = zext i1 %lnot34 to i32, !dbg !3079
  %conv36 = sext i32 %lnot.ext35 to i64, !dbg !3079
  %expval37 = call i64 @llvm.expect.i64(i64 %conv36, i64 0), !dbg !3079
  store i64 %expval37, ptr %tmp30, align 8, !dbg !3080
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !3089
  %13 = load i64, ptr %tmp30, align 8, !dbg !3079
  %tobool38 = icmp ne i64 %13, 0, !dbg !3089
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !3090

if.then39:                                        ; preds = %if.end
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3091

if.end40:                                         ; preds = %if.end
  %14 = load ptr, ptr %iovad.addr, align 8, !dbg !3092
  %15 = load ptr, ptr %iova, align 8, !dbg !3093
  call void @remove_iova(ptr noundef %14, ptr noundef %15) #19, !dbg !3094
  %16 = load ptr, ptr %iova, align 8, !dbg !3095
  call void @free_iova_mem(ptr noundef %16) #19, !dbg !3096
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3097
  br label %cleanup, !dbg !3097

cleanup:                                          ; preds = %if.end40, %if.then39
  call void @llvm.lifetime.end.p0(i64 8, ptr %iova) #18, !dbg !3097
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 8, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !3098

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %17 = load i32, ptr %i, align 4, !dbg !3099
  %inc = add i32 %17, 1, !dbg !3099
  store i32 %inc, ptr %i, align 4, !dbg !3099
  br label %for.cond, !dbg !3100, !llvm.loop !3101

for.end:                                          ; preds = %for.cond
  %18 = load ptr, ptr %iovad.addr, align 8, !dbg !3103
  %iova_rbtree_lock41 = getelementptr inbounds %struct.iova_domain, ptr %18, i32 0, i32 0, !dbg !3104
  %19 = load i64, ptr %flags, align 8, !dbg !3105
  call void @spin_unlock_irqrestore(ptr noundef %iova_rbtree_lock41, i64 noundef %19) #19, !dbg !3106
  %20 = load ptr, ptr %mag.addr, align 8, !dbg !3107
  %size42 = getelementptr inbounds %struct.iova_magazine, ptr %20, i32 0, i32 0, !dbg !3108
  store i64 0, ptr %size42, align 8, !dbg !3109
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !3110
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #18, !dbg !3110
  ret void, !dbg !3110

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @iova_magazine_free(ptr noundef %mag) #0 align 16 !dbg !3111 {
entry:
  %mag.addr = alloca ptr, align 8
  store ptr %mag, ptr %mag.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mag.addr, metadata !3115, metadata !DIExpression()), !dbg !3116
  %0 = load ptr, ptr %mag.addr, align 8, !dbg !3117
  call void @kfree(ptr noundef %0) #19, !dbg !3118
  ret void, !dbg !3119
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3120 dso_local void @_raw_spin_lock(ptr noundef) #7 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3123 dso_local void @_raw_spin_unlock(ptr noundef) #7 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3124 dso_local void @kfree(ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__iova_rcache_get(ptr noundef %rcache, i64 noundef %limit_pfn) #0 align 16 !dbg !3127 {
entry:
  %rcache.addr = alloca ptr, align 8
  %limit_pfn.addr = alloca i64, align 8
  %cpu_rcache = alloca ptr, align 8
  %iova_pfn = alloca i64, align 8
  %has_pfn = alloca i8, align 1
  %flags = alloca i64, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp4 = alloca i32, align 4
  %__tmp = alloca ptr, align 8
  store ptr %rcache, ptr %rcache.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rcache.addr, metadata !3131, metadata !DIExpression()), !dbg !3152
  store i64 %limit_pfn, ptr %limit_pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %limit_pfn.addr, metadata !3132, metadata !DIExpression()), !dbg !3153
  call void @llvm.lifetime.start.p0(i64 8, ptr %cpu_rcache) #18, !dbg !3154
  call void @llvm.dbg.declare(metadata ptr %cpu_rcache, metadata !3133, metadata !DIExpression()), !dbg !3155
  call void @llvm.lifetime.start.p0(i64 8, ptr %iova_pfn) #18, !dbg !3156
  call void @llvm.dbg.declare(metadata ptr %iova_pfn, metadata !3134, metadata !DIExpression()), !dbg !3157
  store i64 0, ptr %iova_pfn, align 8, !dbg !3157
  call void @llvm.lifetime.start.p0(i64 1, ptr %has_pfn) #18, !dbg !3158
  call void @llvm.dbg.declare(metadata ptr %has_pfn, metadata !3135, metadata !DIExpression()), !dbg !3159
  store i8 0, ptr %has_pfn, align 1, !dbg !3159
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #18, !dbg !3160
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !3136, metadata !DIExpression()), !dbg !3161
  br label %do.body, !dbg !3162

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #18, !dbg !3163
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !3137, metadata !DIExpression()), !dbg !3163
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3163
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !3163
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #18, !dbg !3162
  br label %do.cond, !dbg !3163

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3163

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #18, !dbg !3164
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !3140, metadata !DIExpression()), !dbg !3164
  %1 = load ptr, ptr %rcache.addr, align 8, !dbg !3164
  %cpu_rcaches = getelementptr inbounds %struct.iova_rcache, ptr %1, i32 0, i32 3, !dbg !3164
  %2 = load ptr, ptr %cpu_rcaches, align 8, !dbg !3164
  %3 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr %2) #23, !dbg !3164, !srcloc !3165
  store i64 %3, ptr %tcp_ptr__, align 8, !dbg !3164
  %4 = load i64, ptr %tcp_ptr__, align 8, !dbg !3164
  %5 = inttoptr i64 %4 to ptr, !dbg !3164
  store ptr %5, ptr %tmp1, align 8, !dbg !3164
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #18, !dbg !3162
  %6 = load ptr, ptr %tmp1, align 8, !dbg !3164
  store ptr %6, ptr %tmp, align 8, !dbg !3163
  %7 = load ptr, ptr %tmp, align 8, !dbg !3162
  store ptr %7, ptr %cpu_rcache, align 8, !dbg !3166
  br label %do.body2, !dbg !3167

do.body2:                                         ; preds = %do.end
  br label %do.body3, !dbg !3168

do.body3:                                         ; preds = %do.body2
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #18, !dbg !3169
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !3142, metadata !DIExpression()), !dbg !3169
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #18, !dbg !3169
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !3146, metadata !DIExpression()), !dbg !3169
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !3169
  %conv = zext i1 %cmp to i32, !dbg !3169
  store i32 1, ptr %tmp4, align 4, !dbg !3169
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #18, !dbg !3170
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #18, !dbg !3170
  %8 = load i32, ptr %tmp4, align 4, !dbg !3169
  %9 = load ptr, ptr %cpu_rcache, align 8, !dbg !3170
  %lock = getelementptr inbounds %struct.iova_cpu_rcache, ptr %9, i32 0, i32 0, !dbg !3170
  %call = call ptr @spinlock_check(ptr noundef %lock) #19, !dbg !3170
  %call5 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #19, !dbg !3170
  store i64 %call5, ptr %flags, align 8, !dbg !3170
  br label %do.cond6, !dbg !3170

do.cond6:                                         ; preds = %do.body3
  br label %do.end7, !dbg !3170

do.end7:                                          ; preds = %do.cond6
  br label %do.cond8, !dbg !3168

do.cond8:                                         ; preds = %do.end7
  br label %do.end9, !dbg !3168

do.end9:                                          ; preds = %do.cond8
  %10 = load ptr, ptr %cpu_rcache, align 8, !dbg !3171
  %loaded = getelementptr inbounds %struct.iova_cpu_rcache, ptr %10, i32 0, i32 1, !dbg !3172
  %11 = load ptr, ptr %loaded, align 8, !dbg !3172
  %call10 = call zeroext i1 @iova_magazine_empty(ptr noundef %11) #19, !dbg !3173
  br i1 %call10, label %if.else, label %if.then, !dbg !3174

if.then:                                          ; preds = %do.end9
  store i8 1, ptr %has_pfn, align 1, !dbg !3175
  br label %if.end30, !dbg !3177

if.else:                                          ; preds = %do.end9
  %12 = load ptr, ptr %cpu_rcache, align 8, !dbg !3178
  %prev = getelementptr inbounds %struct.iova_cpu_rcache, ptr %12, i32 0, i32 2, !dbg !3179
  %13 = load ptr, ptr %prev, align 8, !dbg !3179
  %call11 = call zeroext i1 @iova_magazine_empty(ptr noundef %13) #19, !dbg !3180
  br i1 %call11, label %if.else20, label %if.then12, !dbg !3181

if.then12:                                        ; preds = %if.else
  br label %do.body13, !dbg !3182

do.body13:                                        ; preds = %if.then12
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #18, !dbg !3183
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !3147, metadata !DIExpression()), !dbg !3183
  %14 = load ptr, ptr %cpu_rcache, align 8, !dbg !3183
  %prev14 = getelementptr inbounds %struct.iova_cpu_rcache, ptr %14, i32 0, i32 2, !dbg !3183
  %15 = load ptr, ptr %prev14, align 8, !dbg !3183
  store ptr %15, ptr %__tmp, align 8, !dbg !3183
  %16 = load ptr, ptr %cpu_rcache, align 8, !dbg !3183
  %loaded15 = getelementptr inbounds %struct.iova_cpu_rcache, ptr %16, i32 0, i32 1, !dbg !3183
  %17 = load ptr, ptr %loaded15, align 8, !dbg !3183
  %18 = load ptr, ptr %cpu_rcache, align 8, !dbg !3183
  %prev16 = getelementptr inbounds %struct.iova_cpu_rcache, ptr %18, i32 0, i32 2, !dbg !3183
  store ptr %17, ptr %prev16, align 8, !dbg !3183
  %19 = load ptr, ptr %__tmp, align 8, !dbg !3183
  %20 = load ptr, ptr %cpu_rcache, align 8, !dbg !3183
  %loaded17 = getelementptr inbounds %struct.iova_cpu_rcache, ptr %20, i32 0, i32 1, !dbg !3183
  store ptr %19, ptr %loaded17, align 8, !dbg !3183
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #18, !dbg !3182
  br label %do.cond18, !dbg !3183

do.cond18:                                        ; preds = %do.body13
  br label %do.end19, !dbg !3183

do.end19:                                         ; preds = %do.cond18
  store i8 1, ptr %has_pfn, align 1, !dbg !3184
  br label %if.end29, !dbg !3185

if.else20:                                        ; preds = %if.else
  %21 = load ptr, ptr %rcache.addr, align 8, !dbg !3186
  %lock21 = getelementptr inbounds %struct.iova_rcache, ptr %21, i32 0, i32 0, !dbg !3188
  call void @spin_lock(ptr noundef %lock21) #19, !dbg !3189
  %22 = load ptr, ptr %rcache.addr, align 8, !dbg !3190
  %depot_size = getelementptr inbounds %struct.iova_rcache, ptr %22, i32 0, i32 1, !dbg !3192
  %23 = load i64, ptr %depot_size, align 8, !dbg !3192
  %cmp22 = icmp ugt i64 %23, 0, !dbg !3193
  br i1 %cmp22, label %if.then24, label %if.end, !dbg !3194

if.then24:                                        ; preds = %if.else20
  %24 = load ptr, ptr %cpu_rcache, align 8, !dbg !3195
  %loaded25 = getelementptr inbounds %struct.iova_cpu_rcache, ptr %24, i32 0, i32 1, !dbg !3197
  %25 = load ptr, ptr %loaded25, align 8, !dbg !3197
  call void @iova_magazine_free(ptr noundef %25) #19, !dbg !3198
  %26 = load ptr, ptr %rcache.addr, align 8, !dbg !3199
  %depot = getelementptr inbounds %struct.iova_rcache, ptr %26, i32 0, i32 2, !dbg !3200
  %27 = load ptr, ptr %rcache.addr, align 8, !dbg !3201
  %depot_size26 = getelementptr inbounds %struct.iova_rcache, ptr %27, i32 0, i32 1, !dbg !3202
  %28 = load i64, ptr %depot_size26, align 8, !dbg !3203
  %dec = add i64 %28, -1, !dbg !3203
  store i64 %dec, ptr %depot_size26, align 8, !dbg !3203
  %arrayidx = getelementptr [32 x ptr], ptr %depot, i64 0, i64 %dec, !dbg !3199
  %29 = load ptr, ptr %arrayidx, align 8, !dbg !3199
  %30 = load ptr, ptr %cpu_rcache, align 8, !dbg !3204
  %loaded27 = getelementptr inbounds %struct.iova_cpu_rcache, ptr %30, i32 0, i32 1, !dbg !3205
  store ptr %29, ptr %loaded27, align 8, !dbg !3206
  store i8 1, ptr %has_pfn, align 1, !dbg !3207
  br label %if.end, !dbg !3208

if.end:                                           ; preds = %if.then24, %if.else20
  %31 = load ptr, ptr %rcache.addr, align 8, !dbg !3209
  %lock28 = getelementptr inbounds %struct.iova_rcache, ptr %31, i32 0, i32 0, !dbg !3210
  call void @spin_unlock(ptr noundef %lock28) #19, !dbg !3211
  br label %if.end29

if.end29:                                         ; preds = %if.end, %do.end19
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then
  %32 = load i8, ptr %has_pfn, align 1, !dbg !3212, !range !786, !noundef !787
  %tobool = trunc i8 %32 to i1, !dbg !3212
  br i1 %tobool, label %if.then31, label %if.end34, !dbg !3214

if.then31:                                        ; preds = %if.end30
  %33 = load ptr, ptr %cpu_rcache, align 8, !dbg !3215
  %loaded32 = getelementptr inbounds %struct.iova_cpu_rcache, ptr %33, i32 0, i32 1, !dbg !3216
  %34 = load ptr, ptr %loaded32, align 8, !dbg !3216
  %35 = load i64, ptr %limit_pfn.addr, align 8, !dbg !3217
  %call33 = call i64 @iova_magazine_pop(ptr noundef %34, i64 noundef %35) #19, !dbg !3218
  store i64 %call33, ptr %iova_pfn, align 8, !dbg !3219
  br label %if.end34, !dbg !3220

if.end34:                                         ; preds = %if.then31, %if.end30
  %36 = load ptr, ptr %cpu_rcache, align 8, !dbg !3221
  %lock35 = getelementptr inbounds %struct.iova_cpu_rcache, ptr %36, i32 0, i32 0, !dbg !3222
  %37 = load i64, ptr %flags, align 8, !dbg !3223
  call void @spin_unlock_irqrestore(ptr noundef %lock35, i64 noundef %37) #19, !dbg !3224
  %38 = load i64, ptr %iova_pfn, align 8, !dbg !3225
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #18, !dbg !3226
  call void @llvm.lifetime.end.p0(i64 1, ptr %has_pfn) #18, !dbg !3226
  call void @llvm.lifetime.end.p0(i64 8, ptr %iova_pfn) #18, !dbg !3226
  call void @llvm.lifetime.end.p0(i64 8, ptr %cpu_rcache) #18, !dbg !3226
  ret i64 %38, !dbg !3227
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @iova_magazine_empty(ptr noundef %mag) #0 align 16 !dbg !3228 {
entry:
  %mag.addr = alloca ptr, align 8
  store ptr %mag, ptr %mag.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mag.addr, metadata !3230, metadata !DIExpression()), !dbg !3231
  %0 = load ptr, ptr %mag.addr, align 8, !dbg !3232
  %size = getelementptr inbounds %struct.iova_magazine, ptr %0, i32 0, i32 0, !dbg !3233
  %1 = load i64, ptr %size, align 8, !dbg !3233
  %cmp = icmp eq i64 %1, 0, !dbg !3234
  ret i1 %cmp, !dbg !3235
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @iova_magazine_pop(ptr noundef %mag, i64 noundef %limit_pfn) #0 align 16 !dbg !3236 {
entry:
  %retval = alloca i64, align 8
  %mag.addr = alloca ptr, align 8
  %limit_pfn.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %pfn = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mag, ptr %mag.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mag.addr, metadata !3240, metadata !DIExpression()), !dbg !3244
  store i64 %limit_pfn, ptr %limit_pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %limit_pfn.addr, metadata !3241, metadata !DIExpression()), !dbg !3245
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !3246
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3242, metadata !DIExpression()), !dbg !3247
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfn) #18, !dbg !3248
  call void @llvm.dbg.declare(metadata ptr %pfn, metadata !3243, metadata !DIExpression()), !dbg !3249
  %0 = load ptr, ptr %mag.addr, align 8, !dbg !3250
  %size = getelementptr inbounds %struct.iova_magazine, ptr %0, i32 0, i32 0, !dbg !3252
  %1 = load i64, ptr %size, align 8, !dbg !3252
  %sub = sub i64 %1, 1, !dbg !3253
  %conv = trunc i64 %sub to i32, !dbg !3250
  store i32 %conv, ptr %i, align 4, !dbg !3254
  br label %for.cond, !dbg !3255

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %mag.addr, align 8, !dbg !3256
  %pfns = getelementptr inbounds %struct.iova_magazine, ptr %2, i32 0, i32 1, !dbg !3258
  %3 = load i32, ptr %i, align 4, !dbg !3259
  %idxprom = sext i32 %3 to i64, !dbg !3256
  %arrayidx = getelementptr [127 x i64], ptr %pfns, i64 0, i64 %idxprom, !dbg !3256
  %4 = load i64, ptr %arrayidx, align 8, !dbg !3256
  %5 = load i64, ptr %limit_pfn.addr, align 8, !dbg !3260
  %cmp = icmp ugt i64 %4, %5, !dbg !3261
  br i1 %cmp, label %for.body, label %for.end, !dbg !3262

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %i, align 4, !dbg !3263
  %cmp2 = icmp eq i32 %6, 0, !dbg !3265
  br i1 %cmp2, label %if.then, label %if.end, !dbg !3266

if.then:                                          ; preds = %for.body
  store i64 0, ptr %retval, align 8, !dbg !3267
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3267

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !3268

for.inc:                                          ; preds = %if.end
  %7 = load i32, ptr %i, align 4, !dbg !3269
  %dec = add i32 %7, -1, !dbg !3269
  store i32 %dec, ptr %i, align 4, !dbg !3269
  br label %for.cond, !dbg !3270, !llvm.loop !3271

for.end:                                          ; preds = %for.cond
  %8 = load ptr, ptr %mag.addr, align 8, !dbg !3273
  %pfns4 = getelementptr inbounds %struct.iova_magazine, ptr %8, i32 0, i32 1, !dbg !3274
  %9 = load i32, ptr %i, align 4, !dbg !3275
  %idxprom5 = sext i32 %9 to i64, !dbg !3273
  %arrayidx6 = getelementptr [127 x i64], ptr %pfns4, i64 0, i64 %idxprom5, !dbg !3273
  %10 = load i64, ptr %arrayidx6, align 8, !dbg !3273
  store i64 %10, ptr %pfn, align 8, !dbg !3276
  %11 = load ptr, ptr %mag.addr, align 8, !dbg !3277
  %pfns7 = getelementptr inbounds %struct.iova_magazine, ptr %11, i32 0, i32 1, !dbg !3278
  %12 = load ptr, ptr %mag.addr, align 8, !dbg !3279
  %size8 = getelementptr inbounds %struct.iova_magazine, ptr %12, i32 0, i32 0, !dbg !3280
  %13 = load i64, ptr %size8, align 8, !dbg !3281
  %dec9 = add i64 %13, -1, !dbg !3281
  store i64 %dec9, ptr %size8, align 8, !dbg !3281
  %arrayidx10 = getelementptr [127 x i64], ptr %pfns7, i64 0, i64 %dec9, !dbg !3277
  %14 = load i64, ptr %arrayidx10, align 8, !dbg !3277
  %15 = load ptr, ptr %mag.addr, align 8, !dbg !3282
  %pfns11 = getelementptr inbounds %struct.iova_magazine, ptr %15, i32 0, i32 1, !dbg !3283
  %16 = load i32, ptr %i, align 4, !dbg !3284
  %idxprom12 = sext i32 %16 to i64, !dbg !3282
  %arrayidx13 = getelementptr [127 x i64], ptr %pfns11, i64 0, i64 %idxprom12, !dbg !3282
  store i64 %14, ptr %arrayidx13, align 8, !dbg !3285
  %17 = load i64, ptr %pfn, align 8, !dbg !3286
  store i64 %17, ptr %retval, align 8, !dbg !3287
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3287

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfn) #18, !dbg !3288
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !3288
  %18 = load i64, ptr %retval, align 8, !dbg !3288
  ret i64 %18, !dbg !3288
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3289 dso_local void @free_percpu(ptr noundef) #7

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { noredzone nounwind willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { noredzone }
attributes #20 = { cold noredzone }
attributes #21 = { noredzone allocsize(0,1) }
attributes #22 = { noredzone allocsize(0) }
attributes #23 = { nounwind memory(read) }
attributes #24 = { noredzone allocsize(2) }
attributes #25 = { noredzone noreturn }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!439, !440, !441, !442, !443, !444, !445, !446}
!llvm.ident = !{!447}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 60, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/iommu/iova.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6977b650c452c1251cda7f419e64257")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 21)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_init_iova_domain289", scope: !9, file: !2, line: 74, type: !223, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/iommu/.iova.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/iommu/iova\22 -D KBUILD_BASENAME=\22iova\22 -D KBUILD_MODNAME=\22iova\22 -D __KBUILD_MODNAME=kmod_iova -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/iommu/iova.ll drivers/iommu/iova.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !222, globals: !343, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !206, !212}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpuhp_state", file: !12, line: 57, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/cpuhotplug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c163170cdc0ca5f55decccd45901b0e")
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205}
!15 = !DIEnumerator(name: "CPUHP_INVALID", value: -1)
!16 = !DIEnumerator(name: "CPUHP_OFFLINE", value: 0)
!17 = !DIEnumerator(name: "CPUHP_CREATE_THREADS", value: 1)
!18 = !DIEnumerator(name: "CPUHP_PERF_PREPARE", value: 2)
!19 = !DIEnumerator(name: "CPUHP_PERF_X86_PREPARE", value: 3)
!20 = !DIEnumerator(name: "CPUHP_PERF_X86_AMD_UNCORE_PREP", value: 4)
!21 = !DIEnumerator(name: "CPUHP_PERF_POWER", value: 5)
!22 = !DIEnumerator(name: "CPUHP_PERF_SUPERH", value: 6)
!23 = !DIEnumerator(name: "CPUHP_X86_HPET_DEAD", value: 7)
!24 = !DIEnumerator(name: "CPUHP_X86_APB_DEAD", value: 8)
!25 = !DIEnumerator(name: "CPUHP_X86_MCE_DEAD", value: 9)
!26 = !DIEnumerator(name: "CPUHP_VIRT_NET_DEAD", value: 10)
!27 = !DIEnumerator(name: "CPUHP_IBMVNIC_DEAD", value: 11)
!28 = !DIEnumerator(name: "CPUHP_SLUB_DEAD", value: 12)
!29 = !DIEnumerator(name: "CPUHP_DEBUG_OBJ_DEAD", value: 13)
!30 = !DIEnumerator(name: "CPUHP_MM_WRITEBACK_DEAD", value: 14)
!31 = !DIEnumerator(name: "CPUHP_MM_DEMOTION_DEAD", value: 15)
!32 = !DIEnumerator(name: "CPUHP_MM_VMSTAT_DEAD", value: 16)
!33 = !DIEnumerator(name: "CPUHP_SOFTIRQ_DEAD", value: 17)
!34 = !DIEnumerator(name: "CPUHP_NET_MVNETA_DEAD", value: 18)
!35 = !DIEnumerator(name: "CPUHP_CPUIDLE_DEAD", value: 19)
!36 = !DIEnumerator(name: "CPUHP_ARM64_FPSIMD_DEAD", value: 20)
!37 = !DIEnumerator(name: "CPUHP_ARM_OMAP_WAKE_DEAD", value: 21)
!38 = !DIEnumerator(name: "CPUHP_IRQ_POLL_DEAD", value: 22)
!39 = !DIEnumerator(name: "CPUHP_BLOCK_SOFTIRQ_DEAD", value: 23)
!40 = !DIEnumerator(name: "CPUHP_BIO_DEAD", value: 24)
!41 = !DIEnumerator(name: "CPUHP_ACPI_CPUDRV_DEAD", value: 25)
!42 = !DIEnumerator(name: "CPUHP_S390_PFAULT_DEAD", value: 26)
!43 = !DIEnumerator(name: "CPUHP_BLK_MQ_DEAD", value: 27)
!44 = !DIEnumerator(name: "CPUHP_FS_BUFF_DEAD", value: 28)
!45 = !DIEnumerator(name: "CPUHP_PRINTK_DEAD", value: 29)
!46 = !DIEnumerator(name: "CPUHP_MM_MEMCQ_DEAD", value: 30)
!47 = !DIEnumerator(name: "CPUHP_PERCPU_CNT_DEAD", value: 31)
!48 = !DIEnumerator(name: "CPUHP_RADIX_DEAD", value: 32)
!49 = !DIEnumerator(name: "CPUHP_PAGE_ALLOC", value: 33)
!50 = !DIEnumerator(name: "CPUHP_NET_DEV_DEAD", value: 34)
!51 = !DIEnumerator(name: "CPUHP_PCI_XGENE_DEAD", value: 35)
!52 = !DIEnumerator(name: "CPUHP_IOMMU_IOVA_DEAD", value: 36)
!53 = !DIEnumerator(name: "CPUHP_LUSTRE_CFS_DEAD", value: 37)
!54 = !DIEnumerator(name: "CPUHP_AP_ARM_CACHE_B15_RAC_DEAD", value: 38)
!55 = !DIEnumerator(name: "CPUHP_PADATA_DEAD", value: 39)
!56 = !DIEnumerator(name: "CPUHP_AP_DTPM_CPU_DEAD", value: 40)
!57 = !DIEnumerator(name: "CPUHP_RANDOM_PREPARE", value: 41)
!58 = !DIEnumerator(name: "CPUHP_WORKQUEUE_PREP", value: 42)
!59 = !DIEnumerator(name: "CPUHP_POWER_NUMA_PREPARE", value: 43)
!60 = !DIEnumerator(name: "CPUHP_HRTIMERS_PREPARE", value: 44)
!61 = !DIEnumerator(name: "CPUHP_PROFILE_PREPARE", value: 45)
!62 = !DIEnumerator(name: "CPUHP_X2APIC_PREPARE", value: 46)
!63 = !DIEnumerator(name: "CPUHP_SMPCFD_PREPARE", value: 47)
!64 = !DIEnumerator(name: "CPUHP_RELAY_PREPARE", value: 48)
!65 = !DIEnumerator(name: "CPUHP_SLAB_PREPARE", value: 49)
!66 = !DIEnumerator(name: "CPUHP_MD_RAID5_PREPARE", value: 50)
!67 = !DIEnumerator(name: "CPUHP_RCUTREE_PREP", value: 51)
!68 = !DIEnumerator(name: "CPUHP_CPUIDLE_COUPLED_PREPARE", value: 52)
!69 = !DIEnumerator(name: "CPUHP_POWERPC_PMAC_PREPARE", value: 53)
!70 = !DIEnumerator(name: "CPUHP_POWERPC_MMU_CTX_PREPARE", value: 54)
!71 = !DIEnumerator(name: "CPUHP_XEN_PREPARE", value: 55)
!72 = !DIEnumerator(name: "CPUHP_XEN_EVTCHN_PREPARE", value: 56)
!73 = !DIEnumerator(name: "CPUHP_ARM_SHMOBILE_SCU_PREPARE", value: 57)
!74 = !DIEnumerator(name: "CPUHP_SH_SH3X_PREPARE", value: 58)
!75 = !DIEnumerator(name: "CPUHP_NET_FLOW_PREPARE", value: 59)
!76 = !DIEnumerator(name: "CPUHP_TOPOLOGY_PREPARE", value: 60)
!77 = !DIEnumerator(name: "CPUHP_NET_IUCV_PREPARE", value: 61)
!78 = !DIEnumerator(name: "CPUHP_ARM_BL_PREPARE", value: 62)
!79 = !DIEnumerator(name: "CPUHP_TRACE_RB_PREPARE", value: 63)
!80 = !DIEnumerator(name: "CPUHP_MM_ZS_PREPARE", value: 64)
!81 = !DIEnumerator(name: "CPUHP_MM_ZSWP_MEM_PREPARE", value: 65)
!82 = !DIEnumerator(name: "CPUHP_MM_ZSWP_POOL_PREPARE", value: 66)
!83 = !DIEnumerator(name: "CPUHP_KVM_PPC_BOOK3S_PREPARE", value: 67)
!84 = !DIEnumerator(name: "CPUHP_ZCOMP_PREPARE", value: 68)
!85 = !DIEnumerator(name: "CPUHP_TIMERS_PREPARE", value: 69)
!86 = !DIEnumerator(name: "CPUHP_MIPS_SOC_PREPARE", value: 70)
!87 = !DIEnumerator(name: "CPUHP_BP_PREPARE_DYN", value: 71)
!88 = !DIEnumerator(name: "CPUHP_BP_PREPARE_DYN_END", value: 91)
!89 = !DIEnumerator(name: "CPUHP_BP_KICK_AP", value: 92)
!90 = !DIEnumerator(name: "CPUHP_BRINGUP_CPU", value: 93)
!91 = !DIEnumerator(name: "CPUHP_AP_IDLE_DEAD", value: 94)
!92 = !DIEnumerator(name: "CPUHP_AP_OFFLINE", value: 95)
!93 = !DIEnumerator(name: "CPUHP_AP_CACHECTRL_STARTING", value: 96)
!94 = !DIEnumerator(name: "CPUHP_AP_SCHED_STARTING", value: 97)
!95 = !DIEnumerator(name: "CPUHP_AP_RCUTREE_DYING", value: 98)
!96 = !DIEnumerator(name: "CPUHP_AP_CPU_PM_STARTING", value: 99)
!97 = !DIEnumerator(name: "CPUHP_AP_IRQ_GIC_STARTING", value: 100)
!98 = !DIEnumerator(name: "CPUHP_AP_IRQ_HIP04_STARTING", value: 101)
!99 = !DIEnumerator(name: "CPUHP_AP_IRQ_APPLE_AIC_STARTING", value: 102)
!100 = !DIEnumerator(name: "CPUHP_AP_IRQ_ARMADA_XP_STARTING", value: 103)
!101 = !DIEnumerator(name: "CPUHP_AP_IRQ_BCM2836_STARTING", value: 104)
!102 = !DIEnumerator(name: "CPUHP_AP_IRQ_MIPS_GIC_STARTING", value: 105)
!103 = !DIEnumerator(name: "CPUHP_AP_IRQ_RISCV_STARTING", value: 106)
!104 = !DIEnumerator(name: "CPUHP_AP_IRQ_LOONGARCH_STARTING", value: 107)
!105 = !DIEnumerator(name: "CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING", value: 108)
!106 = !DIEnumerator(name: "CPUHP_AP_ARM_MVEBU_COHERENCY", value: 109)
!107 = !DIEnumerator(name: "CPUHP_AP_MICROCODE_LOADER", value: 110)
!108 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_UNCORE_STARTING", value: 111)
!109 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_STARTING", value: 112)
!110 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_IBS_STARTING", value: 113)
!111 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CQM_STARTING", value: 114)
!112 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CSTATE_STARTING", value: 115)
!113 = !DIEnumerator(name: "CPUHP_AP_PERF_XTENSA_STARTING", value: 116)
!114 = !DIEnumerator(name: "CPUHP_AP_MIPS_OP_LOONGSON3_STARTING", value: 117)
!115 = !DIEnumerator(name: "CPUHP_AP_ARM_VFP_STARTING", value: 118)
!116 = !DIEnumerator(name: "CPUHP_AP_ARM64_DEBUG_MONITORS_STARTING", value: 119)
!117 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HW_BREAKPOINT_STARTING", value: 120)
!118 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_ACPI_STARTING", value: 121)
!119 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_STARTING", value: 122)
!120 = !DIEnumerator(name: "CPUHP_AP_PERF_RISCV_STARTING", value: 123)
!121 = !DIEnumerator(name: "CPUHP_AP_ARM_L2X0_STARTING", value: 124)
!122 = !DIEnumerator(name: "CPUHP_AP_EXYNOS4_MCT_TIMER_STARTING", value: 125)
!123 = !DIEnumerator(name: "CPUHP_AP_ARM_ARCH_TIMER_STARTING", value: 126)
!124 = !DIEnumerator(name: "CPUHP_AP_ARM_GLOBAL_TIMER_STARTING", value: 127)
!125 = !DIEnumerator(name: "CPUHP_AP_JCORE_TIMER_STARTING", value: 128)
!126 = !DIEnumerator(name: "CPUHP_AP_ARM_TWD_STARTING", value: 129)
!127 = !DIEnumerator(name: "CPUHP_AP_QCOM_TIMER_STARTING", value: 130)
!128 = !DIEnumerator(name: "CPUHP_AP_TEGRA_TIMER_STARTING", value: 131)
!129 = !DIEnumerator(name: "CPUHP_AP_ARMADA_TIMER_STARTING", value: 132)
!130 = !DIEnumerator(name: "CPUHP_AP_MARCO_TIMER_STARTING", value: 133)
!131 = !DIEnumerator(name: "CPUHP_AP_MIPS_GIC_TIMER_STARTING", value: 134)
!132 = !DIEnumerator(name: "CPUHP_AP_ARC_TIMER_STARTING", value: 135)
!133 = !DIEnumerator(name: "CPUHP_AP_RISCV_TIMER_STARTING", value: 136)
!134 = !DIEnumerator(name: "CPUHP_AP_CLINT_TIMER_STARTING", value: 137)
!135 = !DIEnumerator(name: "CPUHP_AP_CSKY_TIMER_STARTING", value: 138)
!136 = !DIEnumerator(name: "CPUHP_AP_TI_GP_TIMER_STARTING", value: 139)
!137 = !DIEnumerator(name: "CPUHP_AP_HYPERV_TIMER_STARTING", value: 140)
!138 = !DIEnumerator(name: "CPUHP_AP_DUMMY_TIMER_STARTING", value: 141)
!139 = !DIEnumerator(name: "CPUHP_AP_ARM_XEN_STARTING", value: 142)
!140 = !DIEnumerator(name: "CPUHP_AP_ARM_XEN_RUNSTATE_STARTING", value: 143)
!141 = !DIEnumerator(name: "CPUHP_AP_ARM_CORESIGHT_STARTING", value: 144)
!142 = !DIEnumerator(name: "CPUHP_AP_ARM_CORESIGHT_CTI_STARTING", value: 145)
!143 = !DIEnumerator(name: "CPUHP_AP_ARM64_ISNDEP_STARTING", value: 146)
!144 = !DIEnumerator(name: "CPUHP_AP_SMPCFD_DYING", value: 147)
!145 = !DIEnumerator(name: "CPUHP_AP_HRTIMERS_DYING", value: 148)
!146 = !DIEnumerator(name: "CPUHP_AP_X86_TBOOT_DYING", value: 149)
!147 = !DIEnumerator(name: "CPUHP_AP_ARM_CACHE_B15_RAC_DYING", value: 150)
!148 = !DIEnumerator(name: "CPUHP_AP_ONLINE", value: 151)
!149 = !DIEnumerator(name: "CPUHP_TEARDOWN_CPU", value: 152)
!150 = !DIEnumerator(name: "CPUHP_AP_ONLINE_IDLE", value: 153)
!151 = !DIEnumerator(name: "CPUHP_AP_HYPERV_ONLINE", value: 154)
!152 = !DIEnumerator(name: "CPUHP_AP_KVM_ONLINE", value: 155)
!153 = !DIEnumerator(name: "CPUHP_AP_SCHED_WAIT_EMPTY", value: 156)
!154 = !DIEnumerator(name: "CPUHP_AP_SMPBOOT_THREADS", value: 157)
!155 = !DIEnumerator(name: "CPUHP_AP_X86_VDSO_VMA_ONLINE", value: 158)
!156 = !DIEnumerator(name: "CPUHP_AP_IRQ_AFFINITY_ONLINE", value: 159)
!157 = !DIEnumerator(name: "CPUHP_AP_BLK_MQ_ONLINE", value: 160)
!158 = !DIEnumerator(name: "CPUHP_AP_ARM_MVEBU_SYNC_CLOCKS", value: 161)
!159 = !DIEnumerator(name: "CPUHP_AP_X86_INTEL_EPB_ONLINE", value: 162)
!160 = !DIEnumerator(name: "CPUHP_AP_PERF_ONLINE", value: 163)
!161 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_ONLINE", value: 164)
!162 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_UNCORE_ONLINE", value: 165)
!163 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_UNCORE_ONLINE", value: 166)
!164 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_POWER_ONLINE", value: 167)
!165 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_RAPL_ONLINE", value: 168)
!166 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CQM_ONLINE", value: 169)
!167 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CSTATE_ONLINE", value: 170)
!168 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_IDXD_ONLINE", value: 171)
!169 = !DIEnumerator(name: "CPUHP_AP_PERF_S390_CF_ONLINE", value: 172)
!170 = !DIEnumerator(name: "CPUHP_AP_PERF_S390_SF_ONLINE", value: 173)
!171 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CCI_ONLINE", value: 174)
!172 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CCN_ONLINE", value: 175)
!173 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_CPA_ONLINE", value: 176)
!174 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_DDRC_ONLINE", value: 177)
!175 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_HHA_ONLINE", value: 178)
!176 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_L3_ONLINE", value: 179)
!177 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_PA_ONLINE", value: 180)
!178 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_SLLC_ONLINE", value: 181)
!179 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_PCIE_PMU_ONLINE", value: 182)
!180 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HNS3_PMU_ONLINE", value: 183)
!181 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_L2X0_ONLINE", value: 184)
!182 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_QCOM_L2_ONLINE", value: 185)
!183 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_QCOM_L3_ONLINE", value: 186)
!184 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_APM_XGENE_ONLINE", value: 187)
!185 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CAVIUM_TX2_UNCORE_ONLINE", value: 188)
!186 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_MARVELL_CN10K_DDR_ONLINE", value: 189)
!187 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_NEST_IMC_ONLINE", value: 190)
!188 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_CORE_IMC_ONLINE", value: 191)
!189 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_THREAD_IMC_ONLINE", value: 192)
!190 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_TRACE_IMC_ONLINE", value: 193)
!191 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_HV_24x7_ONLINE", value: 194)
!192 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_HV_GPCI_ONLINE", value: 195)
!193 = !DIEnumerator(name: "CPUHP_AP_PERF_CSKY_ONLINE", value: 196)
!194 = !DIEnumerator(name: "CPUHP_AP_WATCHDOG_ONLINE", value: 197)
!195 = !DIEnumerator(name: "CPUHP_AP_WORKQUEUE_ONLINE", value: 198)
!196 = !DIEnumerator(name: "CPUHP_AP_RANDOM_ONLINE", value: 199)
!197 = !DIEnumerator(name: "CPUHP_AP_RCUTREE_ONLINE", value: 200)
!198 = !DIEnumerator(name: "CPUHP_AP_BASE_CACHEINFO_ONLINE", value: 201)
!199 = !DIEnumerator(name: "CPUHP_AP_ONLINE_DYN", value: 202)
!200 = !DIEnumerator(name: "CPUHP_AP_ONLINE_DYN_END", value: 232)
!201 = !DIEnumerator(name: "CPUHP_AP_MM_DEMOTION_ONLINE", value: 233)
!202 = !DIEnumerator(name: "CPUHP_AP_X86_HPET_ONLINE", value: 234)
!203 = !DIEnumerator(name: "CPUHP_AP_X86_KVM_CLK_ONLINE", value: 235)
!204 = !DIEnumerator(name: "CPUHP_AP_ACTIVE", value: 236)
!205 = !DIEnumerator(name: "CPUHP_ONLINE", value: 237)
!206 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !207, line: 10, baseType: !208, size: 32, elements: !209)
!207 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!208 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!209 = !{!210, !211}
!210 = !DIEnumerator(name: "false", value: 0)
!211 = !DIEnumerator(name: "true", value: 1)
!212 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !213, line: 364, baseType: !208, size: 32, elements: !214)
!213 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!214 = !{!215, !216, !217, !218, !219, !220, !221}
!215 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!216 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!217 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!218 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!219 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!220 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!221 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!222 = !{!223, !224, !226, !208, !236, !250, !251, !233, !307, !340, !13}
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "slab_flags_t", file: !225, line: 155, baseType: !208)
!225 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !229, line: 19, size: 64, elements: !230)
!229 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!230 = !{!231}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !228, file: !229, line: 19, baseType: !232, size: 64)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 64, elements: !234)
!233 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!234 = !{!235}
!235 = !DISubrange(count: 1)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iova", file: !238, line: 18, size: 320, elements: !239)
!238 = !DIFile(filename: "./include/linux/iova.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f17844e6a2c777cbc8094e5874da0bdf")
!239 = !{!240, !248, !249}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !237, file: !238, line: 19, baseType: !241, size: 192, align: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !242, line: 5, size: 192, align: 64, elements: !243)
!242 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!243 = !{!244, !245, !247}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !241, file: !242, line: 6, baseType: !233, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !241, file: !242, line: 7, baseType: !246, size: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !241, file: !242, line: 8, baseType: !246, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_hi", scope: !237, file: !238, line: 20, baseType: !233, size: 64, offset: 192)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_lo", scope: !237, file: !238, line: 21, baseType: !233, size: 64, offset: 256)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !225, line: 154, baseType: !208)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iova_cpu_rcache", file: !2, line: 635, size: 192, elements: !253)
!253 = !{!254, !297, !306}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !252, file: !2, line: 636, baseType: !255, size: 32)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !256, line: 29, baseType: !257)
!256 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !256, line: 17, size: 32, elements: !258)
!258 = !{!259}
!259 = !DIDerivedType(tag: DW_TAG_member, scope: !257, file: !256, line: 18, baseType: !260, size: 32)
!260 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !257, file: !256, line: 18, size: 32, elements: !261)
!261 = !{!262}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !260, file: !256, line: 19, baseType: !263, size: 32)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !264, line: 14, size: 32, elements: !265)
!264 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!265 = !{!266}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !263, file: !264, line: 15, baseType: !267, size: 32)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !268, line: 44, baseType: !269)
!268 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !268, line: 14, size: 32, elements: !270)
!270 = !{!271}
!271 = !DIDerivedType(tag: DW_TAG_member, scope: !269, file: !268, line: 15, baseType: !272, size: 32)
!272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !269, file: !268, line: 15, size: 32, elements: !273)
!273 = !{!274, !279, !289}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !272, file: !268, line: 16, baseType: !275, size: 32)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !225, line: 174, baseType: !276)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !225, line: 172, size: 32, elements: !277)
!277 = !{!278}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !276, file: !225, line: 173, baseType: !13, size: 32)
!279 = !DIDerivedType(tag: DW_TAG_member, scope: !272, file: !268, line: 24, baseType: !280, size: 16)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !272, file: !268, line: 24, size: 16, elements: !281)
!281 = !{!282, !288}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !280, file: !268, line: 25, baseType: !283, size: 8)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !284, line: 17, baseType: !285)
!284 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !286, line: 21, baseType: !287)
!286 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!287 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !280, file: !268, line: 26, baseType: !283, size: 8, offset: 8)
!289 = !DIDerivedType(tag: DW_TAG_member, scope: !272, file: !268, line: 28, baseType: !290, size: 32)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !272, file: !268, line: 28, size: 32, elements: !291)
!291 = !{!292, !296}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !290, file: !268, line: 29, baseType: !293, size: 16)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !284, line: 19, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !286, line: 24, baseType: !295)
!295 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !290, file: !268, line: 30, baseType: !293, size: 16, offset: 16)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "loaded", scope: !252, file: !2, line: 637, baseType: !298, size: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iova_magazine", file: !2, line: 630, size: 8192, elements: !300)
!300 = !{!301, !302}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !299, file: !2, line: 631, baseType: !233, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "pfns", scope: !299, file: !2, line: 632, baseType: !303, size: 8128, offset: 64)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 8128, elements: !304)
!304 = !{!305}
!305 = !DISubrange(count: 127)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !252, file: !2, line: 638, baseType: !298, size: 64, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iova_domain", file: !238, line: 28, size: 1024, elements: !309)
!309 = !{!310, !311, !315, !316, !317, !318, !319, !320, !321, !322, !333}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "iova_rbtree_lock", scope: !308, file: !238, line: 29, baseType: !255, size: 32)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "rbroot", scope: !308, file: !238, line: 30, baseType: !312, size: 64, offset: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !242, line: 12, size: 64, elements: !313)
!313 = !{!314}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !312, file: !242, line: 13, baseType: !246, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "cached_node", scope: !308, file: !238, line: 31, baseType: !246, size: 64, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "cached32_node", scope: !308, file: !238, line: 32, baseType: !246, size: 64, offset: 192)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "granule", scope: !308, file: !238, line: 33, baseType: !233, size: 64, offset: 256)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "start_pfn", scope: !308, file: !238, line: 34, baseType: !233, size: 64, offset: 320)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "dma_32bit_pfn", scope: !308, file: !238, line: 35, baseType: !233, size: 64, offset: 384)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "max32_alloc_size", scope: !308, file: !238, line: 36, baseType: !233, size: 64, offset: 448)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "anchor", scope: !308, file: !238, line: 37, baseType: !237, size: 320, offset: 512)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "rcaches", scope: !308, file: !238, line: 39, baseType: !323, size: 64, offset: 832)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iova_rcache", file: !2, line: 641, size: 2240, elements: !325)
!325 = !{!326, !327, !328, !332}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !324, file: !2, line: 642, baseType: !255, size: 32)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "depot_size", scope: !324, file: !2, line: 643, baseType: !233, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "depot", scope: !324, file: !2, line: 644, baseType: !329, size: 2048, offset: 128)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 2048, elements: !330)
!330 = !{!331}
!331 = !DISubrange(count: 32)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_rcaches", scope: !324, file: !2, line: 645, baseType: !251, size: 64, offset: 2176)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !308, file: !238, line: 40, baseType: !334, size: 128, offset: 896)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !225, line: 198, size: 128, elements: !335)
!335 = !{!336, !338}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !334, file: !225, line: 199, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !334, file: !225, line: 199, baseType: !339, size: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !342)
!342 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !13)
!343 = !{!0, !7, !344, !349, !354, !359, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !392, !397, !402, !407, !409, !437}
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(scope: null, file: !2, line: 260, type: !346, isLocal: true, isDefinition: true)
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !347)
!347 = !{!348}
!348 = !DISubrange(count: 16)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(scope: null, file: !2, line: 264, type: !351, isLocal: true, isDefinition: true)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !352)
!352 = !{!353}
!353 = !DISubrange(count: 35)
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(scope: null, file: !2, line: 269, type: !356, isLocal: true, isDefinition: true)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !357)
!357 = !{!358}
!358 = !DISubrange(count: 11)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(scope: null, file: !2, line: 274, type: !361, isLocal: true, isDefinition: true)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !362)
!362 = !{!363}
!363 = !DISubrange(count: 30)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_iova_cache_get292", scope: !9, file: !2, line: 284, type: !223, isLocal: true, isDefinition: true)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_iova_cache_put293", scope: !9, file: !2, line: 300, type: !223, isLocal: true, isDefinition: true)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_alloc_iova294", scope: !9, file: !2, line: 335, type: !223, isLocal: true, isDefinition: true)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_find_iova295", scope: !9, file: !2, line: 383, type: !223, isLocal: true, isDefinition: true)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___free_iova296", scope: !9, file: !2, line: 401, type: !223, isLocal: true, isDefinition: true)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_free_iova297", scope: !9, file: !2, line: 426, type: !223, isLocal: true, isDefinition: true)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_alloc_iova_fast298", scope: !9, file: !2, line: 476, type: !223, isLocal: true, isDefinition: true)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_free_iova_fast299", scope: !9, file: !2, line: 494, type: !223, isLocal: true, isDefinition: true)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_put_iova_domain300", scope: !9, file: !2, line: 518, type: !223, isLocal: true, isDefinition: true)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_reserve_iova301", scope: !9, file: !2, line: 612, type: !223, isLocal: true, isDefinition: true)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_iova_domain_init_rcaches302", scope: !9, file: !2, line: 767, type: !223, isLocal: true, isDefinition: true)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author303", scope: !9, file: !2, line: 958, type: !388, isLocal: true, isDefinition: true, align: 8)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !389, size: 528, elements: !390)
!389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!390 = !{!391}
!391 = !DISubrange(count: 66)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file304", scope: !9, file: !2, line: 959, type: !394, isLocal: true, isDefinition: true, align: 8)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !389, size: 232, elements: !395)
!395 = !{!396}
!396 = !DISubrange(count: 29)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license305", scope: !9, file: !2, line: 959, type: !399, isLocal: true, isDefinition: true, align: 8)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !389, size: 136, elements: !400)
!400 = !{!401}
!401 = !DISubrange(count: 17)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(name: "iova_cache", scope: !9, file: !2, line: 239, type: !404, isLocal: true, isDefinition: true)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !406, line: 11, flags: DIFlagFwdDecl)
!406 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!407 = !DIGlobalVariableExpression(var: !408, expr: !DIExpression())
!408 = distinct !DIGlobalVariable(name: "iova_cache_users", scope: !9, file: !2, line: 240, type: !208, isLocal: true, isDefinition: true)
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(name: "iova_cache_mutex", scope: !9, file: !2, line: 241, type: !411, isLocal: true, isDefinition: true)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !412, line: 66, size: 256, elements: !413)
!412 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!413 = !{!414, !424, !426, !431}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !411, file: !412, line: 67, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !416, line: 13, baseType: !417)
!416 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !225, line: 181, baseType: !418)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !225, line: 179, size: 64, elements: !419)
!419 = !{!420}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !418, file: !225, line: 180, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !284, line: 22, baseType: !422)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !286, line: 30, baseType: !423)
!423 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !411, file: !412, line: 68, baseType: !425, size: 32, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !264, line: 23, baseType: !263)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !411, file: !412, line: 70, baseType: !427, size: 32, offset: 96)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !428, line: 15, size: 32, elements: !429)
!428 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!429 = !{!430}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !427, file: !428, line: 20, baseType: !275, size: 32)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !411, file: !412, line: 72, baseType: !432, size: 128, offset: 128)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !225, line: 190, size: 128, elements: !433)
!433 = !{!434, !436}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !432, file: !225, line: 191, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !432, file: !225, line: 191, baseType: !435, size: 64, offset: 64)
!437 = !DIGlobalVariableExpression(var: !438, expr: !DIExpression())
!438 = distinct !DIGlobalVariable(scope: null, file: !213, line: 480, type: !3, isLocal: true, isDefinition: true)
!439 = !{i32 7, !"Dwarf Version", i32 5}
!440 = !{i32 2, !"Debug Info Version", i32 3}
!441 = !{i32 1, !"wchar_size", i32 2}
!442 = !{i32 8, !"cf-protection-branch", i32 1}
!443 = !{i32 4, !"function_return_thunk_extern", i32 1}
!444 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!445 = !{i32 1, !"Code Model", i32 2}
!446 = !{i32 1, !"override-stack-alignment", i32 8}
!447 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!448 = distinct !DISubprogram(name: "iova_rcache_range", scope: !2, file: !2, line: 29, type: !449, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!449 = !DISubroutineType(types: !450)
!450 = !{!233}
!451 = !DILocation(line: 31, column: 2, scope: !448)
!452 = distinct !DISubprogram(name: "init_iova_domain", scope: !2, file: !2, line: 52, type: !453, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !455)
!453 = !DISubroutineType(types: !454)
!454 = !{null, !307, !233, !233}
!455 = !{!456, !457, !458}
!456 = !DILocalVariable(name: "iovad", arg: 1, scope: !452, file: !2, line: 52, type: !307)
!457 = !DILocalVariable(name: "granule", arg: 2, scope: !452, file: !2, line: 52, type: !233)
!458 = !DILocalVariable(name: "start_pfn", arg: 3, scope: !452, file: !2, line: 53, type: !233)
!459 = !DILocation(line: 52, column: 38, scope: !452)
!460 = !DILocation(line: 52, column: 59, scope: !452)
!461 = !DILocation(line: 53, column: 16, scope: !452)
!462 = !DILocation(line: 60, column: 2, scope: !452)
!463 = !DILocation(line: 60, column: 2, scope: !464)
!464 = distinct !DILexicalBlock(scope: !465, file: !2, line: 60, column: 2)
!465 = distinct !DILexicalBlock(scope: !452, file: !2, line: 60, column: 2)
!466 = !DILocation(line: 60, column: 2, scope: !465)
!467 = !DILocation(line: 60, column: 2, scope: !468)
!468 = distinct !DILexicalBlock(scope: !464, file: !2, line: 60, column: 2)
!469 = !DILocation(line: 60, column: 2, scope: !470)
!470 = distinct !DILexicalBlock(scope: !468, file: !2, line: 60, column: 2)
!471 = !DILocation(line: 60, column: 2, scope: !472)
!472 = distinct !DILexicalBlock(scope: !468, file: !2, line: 60, column: 2)
!473 = !{i64 2154591160, i64 2154591189, i64 2154591235, i64 2154591293, i64 2154591347, i64 2154591401, i64 2154591456, i64 2154591487}
!474 = !DILocation(line: 62, column: 2, scope: !452)
!475 = !DILocation(line: 62, column: 2, scope: !476)
!476 = distinct !DILexicalBlock(scope: !452, file: !2, line: 62, column: 2)
!477 = !DILocation(line: 63, column: 2, scope: !452)
!478 = !DILocation(line: 63, column: 9, scope: !452)
!479 = !DILocation(line: 63, column: 18, scope: !452)
!480 = !DILocation(line: 64, column: 24, scope: !452)
!481 = !DILocation(line: 64, column: 31, scope: !452)
!482 = !DILocation(line: 64, column: 38, scope: !452)
!483 = !DILocation(line: 64, column: 2, scope: !452)
!484 = !DILocation(line: 64, column: 9, scope: !452)
!485 = !DILocation(line: 64, column: 21, scope: !452)
!486 = !DILocation(line: 65, column: 26, scope: !452)
!487 = !DILocation(line: 65, column: 33, scope: !452)
!488 = !DILocation(line: 65, column: 40, scope: !452)
!489 = !DILocation(line: 65, column: 2, scope: !452)
!490 = !DILocation(line: 65, column: 9, scope: !452)
!491 = !DILocation(line: 65, column: 23, scope: !452)
!492 = !DILocation(line: 66, column: 19, scope: !452)
!493 = !DILocation(line: 66, column: 2, scope: !452)
!494 = !DILocation(line: 66, column: 9, scope: !452)
!495 = !DILocation(line: 66, column: 17, scope: !452)
!496 = !DILocation(line: 67, column: 21, scope: !452)
!497 = !DILocation(line: 67, column: 2, scope: !452)
!498 = !DILocation(line: 67, column: 9, scope: !452)
!499 = !DILocation(line: 67, column: 19, scope: !452)
!500 = !DILocation(line: 68, column: 49, scope: !452)
!501 = !DILocation(line: 68, column: 38, scope: !452)
!502 = !DILocation(line: 68, column: 36, scope: !452)
!503 = !DILocation(line: 68, column: 29, scope: !452)
!504 = !DILocation(line: 68, column: 2, scope: !452)
!505 = !DILocation(line: 68, column: 9, scope: !452)
!506 = !DILocation(line: 68, column: 23, scope: !452)
!507 = !DILocation(line: 69, column: 28, scope: !452)
!508 = !DILocation(line: 69, column: 35, scope: !452)
!509 = !DILocation(line: 69, column: 2, scope: !452)
!510 = !DILocation(line: 69, column: 9, scope: !452)
!511 = !DILocation(line: 69, column: 26, scope: !452)
!512 = !DILocation(line: 70, column: 25, scope: !452)
!513 = !DILocation(line: 70, column: 32, scope: !452)
!514 = !DILocation(line: 70, column: 39, scope: !452)
!515 = !DILocation(line: 70, column: 46, scope: !452)
!516 = !DILocation(line: 70, column: 2, scope: !452)
!517 = !DILocation(line: 70, column: 9, scope: !452)
!518 = !DILocation(line: 70, column: 16, scope: !452)
!519 = !DILocation(line: 70, column: 23, scope: !452)
!520 = !DILocation(line: 71, column: 16, scope: !452)
!521 = !DILocation(line: 71, column: 23, scope: !452)
!522 = !DILocation(line: 71, column: 30, scope: !452)
!523 = !DILocation(line: 71, column: 43, scope: !452)
!524 = !DILocation(line: 71, column: 50, scope: !452)
!525 = !DILocation(line: 71, column: 57, scope: !452)
!526 = !DILocation(line: 71, column: 2, scope: !452)
!527 = !DILocation(line: 72, column: 19, scope: !452)
!528 = !DILocation(line: 72, column: 26, scope: !452)
!529 = !DILocation(line: 72, column: 33, scope: !452)
!530 = !DILocation(line: 72, column: 40, scope: !452)
!531 = !DILocation(line: 72, column: 47, scope: !452)
!532 = !DILocation(line: 72, column: 2, scope: !452)
!533 = !DILocation(line: 73, column: 1, scope: !452)
!534 = distinct !DISubprogram(name: "is_power_of_2", scope: !535, file: !535, line: 45, type: !536, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !540)
!535 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c147744b0ec822ab26cfdb78fa4c3998")
!536 = !DISubroutineType(types: !537)
!537 = !{!538, !233}
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !225, line: 35, baseType: !539)
!539 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!540 = !{!541}
!541 = !DILocalVariable(name: "n", arg: 1, scope: !534, file: !535, line: 45, type: !233)
!542 = !DILocation(line: 45, column: 34, scope: !534)
!543 = !DILocation(line: 47, column: 10, scope: !534)
!544 = !DILocation(line: 47, column: 12, scope: !534)
!545 = !DILocation(line: 47, column: 17, scope: !534)
!546 = !DILocation(line: 47, column: 22, scope: !534)
!547 = !DILocation(line: 47, column: 27, scope: !534)
!548 = !DILocation(line: 47, column: 29, scope: !534)
!549 = !DILocation(line: 47, column: 24, scope: !534)
!550 = !DILocation(line: 47, column: 35, scope: !534)
!551 = !DILocation(line: 0, scope: !534)
!552 = !DILocation(line: 47, column: 2, scope: !534)
!553 = distinct !DISubprogram(name: "spinlock_check", scope: !554, file: !554, line: 324, type: !555, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !559)
!554 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!555 = !DISubroutineType(types: !556)
!556 = !{!557, !558}
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!559 = !{!560}
!560 = !DILocalVariable(name: "lock", arg: 1, scope: !553, file: !554, line: 324, type: !558)
!561 = !DILocation(line: 324, column: 67, scope: !553)
!562 = !DILocation(line: 326, column: 10, scope: !553)
!563 = !DILocation(line: 326, column: 16, scope: !553)
!564 = !DILocation(line: 326, column: 2, scope: !553)
!565 = distinct !DISubprogram(name: "iova_shift", scope: !238, file: !238, line: 48, type: !566, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !568)
!566 = !DISubroutineType(types: !567)
!567 = !{!233, !307}
!568 = !{!569}
!569 = !DILocalVariable(name: "iovad", arg: 1, scope: !565, file: !238, line: 48, type: !307)
!570 = !DILocation(line: 48, column: 60, scope: !565)
!571 = !DILocation(line: 50, column: 9, scope: !565)
!572 = !DILocation(line: 50, column: 2, scope: !565)
!573 = distinct !DISubprogram(name: "rb_link_node", scope: !574, file: !574, line: 59, type: !575, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !578)
!574 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6e0facf00d8c55244f0fbd487ce02705")
!575 = !DISubroutineType(types: !576)
!576 = !{null, !246, !246, !577}
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!578 = !{!579, !580, !581}
!579 = !DILocalVariable(name: "node", arg: 1, scope: !573, file: !574, line: 59, type: !246)
!580 = !DILocalVariable(name: "parent", arg: 2, scope: !573, file: !574, line: 59, type: !246)
!581 = !DILocalVariable(name: "rb_link", arg: 3, scope: !573, file: !574, line: 60, type: !577)
!582 = !DILocation(line: 59, column: 49, scope: !573)
!583 = !DILocation(line: 59, column: 71, scope: !573)
!584 = !DILocation(line: 60, column: 22, scope: !573)
!585 = !DILocation(line: 62, column: 43, scope: !573)
!586 = !DILocation(line: 62, column: 28, scope: !573)
!587 = !DILocation(line: 62, column: 2, scope: !573)
!588 = !DILocation(line: 62, column: 8, scope: !573)
!589 = !DILocation(line: 62, column: 26, scope: !573)
!590 = !DILocation(line: 63, column: 18, scope: !573)
!591 = !DILocation(line: 63, column: 24, scope: !573)
!592 = !DILocation(line: 63, column: 33, scope: !573)
!593 = !DILocation(line: 63, column: 2, scope: !573)
!594 = !DILocation(line: 63, column: 8, scope: !573)
!595 = !DILocation(line: 63, column: 16, scope: !573)
!596 = !DILocation(line: 65, column: 13, scope: !573)
!597 = !DILocation(line: 65, column: 3, scope: !573)
!598 = !DILocation(line: 65, column: 11, scope: !573)
!599 = !DILocation(line: 66, column: 1, scope: !573)
!600 = !DISubprogram(name: "rb_insert_color", scope: !574, file: !574, line: 39, type: !601, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!601 = !DISubroutineType(types: !602)
!602 = !{null, !246, !603}
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!604 = distinct !DISubprogram(name: "iova_cache_get", scope: !2, file: !2, line: 254, type: !605, scopeLine: 255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !607)
!605 = !DISubroutineType(types: !606)
!606 = !{!13}
!607 = !{!608}
!608 = !DILocalVariable(name: "ret", scope: !609, file: !2, line: 258, type: !13)
!609 = distinct !DILexicalBlock(scope: !610, file: !2, line: 257, column: 25)
!610 = distinct !DILexicalBlock(scope: !604, file: !2, line: 257, column: 6)
!611 = !DILocation(line: 256, column: 2, scope: !604)
!612 = !DILocation(line: 257, column: 7, scope: !610)
!613 = !DILocation(line: 257, column: 6, scope: !604)
!614 = !DILocation(line: 258, column: 3, scope: !609)
!615 = !DILocation(line: 258, column: 7, scope: !609)
!616 = !DILocation(line: 260, column: 9, scope: !609)
!617 = !DILocation(line: 260, column: 7, scope: !609)
!618 = !DILocation(line: 262, column: 7, scope: !619)
!619 = distinct !DILexicalBlock(scope: !609, file: !2, line: 262, column: 7)
!620 = !DILocation(line: 262, column: 7, scope: !609)
!621 = !DILocation(line: 263, column: 4, scope: !622)
!622 = distinct !DILexicalBlock(scope: !619, file: !2, line: 262, column: 12)
!623 = !DILocation(line: 264, column: 4, scope: !624)
!624 = distinct !DILexicalBlock(scope: !622, file: !2, line: 264, column: 4)
!625 = !DILocation(line: 264, column: 4, scope: !626)
!626 = distinct !DILexicalBlock(scope: !624, file: !2, line: 264, column: 4)
!627 = !DILocation(line: 265, column: 11, scope: !622)
!628 = !DILocation(line: 265, column: 4, scope: !622)
!629 = !DILocation(line: 268, column: 16, scope: !609)
!630 = !DILocation(line: 268, column: 14, scope: !609)
!631 = !DILocation(line: 271, column: 8, scope: !632)
!632 = distinct !DILexicalBlock(scope: !609, file: !2, line: 271, column: 7)
!633 = !DILocation(line: 271, column: 7, scope: !609)
!634 = !DILocation(line: 272, column: 4, scope: !635)
!635 = distinct !DILexicalBlock(scope: !632, file: !2, line: 271, column: 20)
!636 = !DILocation(line: 273, column: 4, scope: !635)
!637 = !DILocation(line: 274, column: 4, scope: !638)
!638 = distinct !DILexicalBlock(scope: !635, file: !2, line: 274, column: 4)
!639 = !DILocation(line: 274, column: 4, scope: !640)
!640 = distinct !DILexicalBlock(scope: !638, file: !2, line: 274, column: 4)
!641 = !DILocation(line: 275, column: 4, scope: !635)
!642 = !DILocation(line: 277, column: 2, scope: !610)
!643 = !DILocation(line: 277, column: 2, scope: !609)
!644 = !DILocation(line: 279, column: 18, scope: !604)
!645 = !DILocation(line: 280, column: 2, scope: !604)
!646 = !DILocation(line: 282, column: 2, scope: !604)
!647 = !DILocation(line: 283, column: 1, scope: !604)
!648 = !DISubprogram(name: "mutex_lock", scope: !412, file: !412, line: 227, type: !649, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!649 = !DISubroutineType(types: !650)
!650 = !{null, !651}
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!652 = distinct !DISubprogram(name: "cpuhp_setup_state_multi", scope: !12, file: !12, line: 366, type: !653, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !659)
!653 = !DISubroutineType(types: !654)
!654 = !{!13, !11, !655, !656, !656}
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{!13, !208, !337}
!659 = !{!660, !661, !662, !663}
!660 = !DILocalVariable(name: "state", arg: 1, scope: !652, file: !12, line: 366, type: !11)
!661 = !DILocalVariable(name: "name", arg: 2, scope: !652, file: !12, line: 367, type: !655)
!662 = !DILocalVariable(name: "startup", arg: 3, scope: !652, file: !12, line: 368, type: !656)
!663 = !DILocalVariable(name: "teardown", arg: 4, scope: !652, file: !12, line: 370, type: !656)
!664 = !DILocation(line: 366, column: 60, scope: !652)
!665 = !DILocation(line: 367, column: 20, scope: !652)
!666 = !DILocation(line: 368, column: 14, scope: !652)
!667 = !DILocation(line: 370, column: 14, scope: !652)
!668 = !DILocation(line: 373, column: 29, scope: !652)
!669 = !DILocation(line: 373, column: 36, scope: !652)
!670 = !DILocation(line: 374, column: 17, scope: !652)
!671 = !DILocation(line: 375, column: 17, scope: !652)
!672 = !DILocation(line: 373, column: 9, scope: !652)
!673 = !DILocation(line: 373, column: 2, scope: !652)
!674 = distinct !DISubprogram(name: "iova_cpuhp_dead", scope: !2, file: !2, line: 34, type: !657, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !675)
!675 = !{!676, !677, !678, !679, !681}
!676 = !DILocalVariable(name: "cpu", arg: 1, scope: !674, file: !2, line: 34, type: !208)
!677 = !DILocalVariable(name: "node", arg: 2, scope: !674, file: !2, line: 34, type: !337)
!678 = !DILocalVariable(name: "iovad", scope: !674, file: !2, line: 36, type: !307)
!679 = !DILocalVariable(name: "____ptr", scope: !680, file: !2, line: 38, type: !337)
!680 = distinct !DILexicalBlock(scope: !674, file: !2, line: 38, column: 10)
!681 = !DILocalVariable(name: "__mptr", scope: !682, file: !2, line: 38, type: !223)
!682 = distinct !DILexicalBlock(scope: !680, file: !2, line: 38, column: 10)
!683 = !DILocation(line: 34, column: 41, scope: !674)
!684 = !DILocation(line: 34, column: 65, scope: !674)
!685 = !DILocation(line: 36, column: 2, scope: !674)
!686 = !DILocation(line: 36, column: 22, scope: !674)
!687 = !DILocation(line: 38, column: 10, scope: !680)
!688 = !DILocation(line: 38, column: 10, scope: !682)
!689 = !DILocation(line: 38, column: 10, scope: !674)
!690 = !DILocation(line: 38, column: 8, scope: !674)
!691 = !DILocation(line: 40, column: 24, scope: !674)
!692 = !DILocation(line: 40, column: 29, scope: !674)
!693 = !DILocation(line: 40, column: 2, scope: !674)
!694 = !DILocation(line: 42, column: 1, scope: !674)
!695 = !DILocation(line: 41, column: 2, scope: !674)
!696 = !DISubprogram(name: "mutex_unlock", scope: !412, file: !412, line: 246, type: !649, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!697 = !DISubprogram(name: "_printk", scope: !698, file: !698, line: 153, type: !699, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!698 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!699 = !DISubroutineType(types: !700)
!700 = !{!13, !655, null}
!701 = !DISubprogram(name: "kmem_cache_create", scope: !213, file: !213, line: 189, type: !702, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!702 = !DISubroutineType(types: !703)
!703 = !{!404, !655, !208, !208, !224, !704}
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{null, !223}
!707 = distinct !DISubprogram(name: "cpuhp_remove_multi_state", scope: !12, file: !12, line: 480, type: !708, scopeLine: 481, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !710)
!708 = !DISubroutineType(types: !709)
!709 = !{null, !11}
!710 = !{!711}
!711 = !DILocalVariable(name: "state", arg: 1, scope: !707, file: !12, line: 480, type: !11)
!712 = !DILocation(line: 480, column: 62, scope: !707)
!713 = !DILocation(line: 482, column: 23, scope: !707)
!714 = !DILocation(line: 482, column: 2, scope: !707)
!715 = !DILocation(line: 483, column: 1, scope: !707)
!716 = distinct !DISubprogram(name: "iova_cache_put", scope: !2, file: !2, line: 286, type: !717, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !719)
!717 = !DISubroutineType(types: !718)
!718 = !{null}
!719 = !{!720, !723}
!720 = !DILocalVariable(name: "__ret_warn_on", scope: !721, file: !2, line: 289, type: !13)
!721 = distinct !DILexicalBlock(scope: !722, file: !2, line: 289, column: 6)
!722 = distinct !DILexicalBlock(scope: !716, file: !2, line: 289, column: 6)
!723 = !DILocalVariable(name: "__flags", scope: !724, file: !2, line: 289, type: !13)
!724 = distinct !DILexicalBlock(scope: !725, file: !2, line: 289, column: 6)
!725 = distinct !DILexicalBlock(scope: !721, file: !2, line: 289, column: 6)
!726 = !DILocation(line: 288, column: 2, scope: !716)
!727 = !DILocation(line: 289, column: 6, scope: !721)
!728 = !DILocation(line: 289, column: 6, scope: !725)
!729 = !DILocation(line: 289, column: 6, scope: !724)
!730 = !DILocation(line: 289, column: 6, scope: !731)
!731 = distinct !DILexicalBlock(scope: !724, file: !2, line: 289, column: 6)
!732 = !DILocation(line: 289, column: 6, scope: !733)
!733 = distinct !DILexicalBlock(scope: !724, file: !2, line: 289, column: 6)
!734 = !{i64 2154612893, i64 2154612922, i64 2154612968, i64 2154613026, i64 2154613080, i64 2154613134, i64 2154613189, i64 2154613220, i64 2154613528, i64 2154613534, i64 2154613581, i64 2154613604, i64 2154613630}
!735 = !DILocation(line: 289, column: 6, scope: !736)
!736 = distinct !DILexicalBlock(scope: !724, file: !2, line: 289, column: 6)
!737 = !DILocation(line: 289, column: 6, scope: !722)
!738 = !DILocation(line: 289, column: 6, scope: !716)
!739 = !DILocation(line: 290, column: 3, scope: !740)
!740 = distinct !DILexicalBlock(scope: !722, file: !2, line: 289, column: 34)
!741 = !DILocation(line: 291, column: 3, scope: !740)
!742 = !DILocation(line: 293, column: 18, scope: !716)
!743 = !DILocation(line: 294, column: 7, scope: !744)
!744 = distinct !DILexicalBlock(scope: !716, file: !2, line: 294, column: 6)
!745 = !DILocation(line: 294, column: 6, scope: !716)
!746 = !DILocation(line: 295, column: 3, scope: !747)
!747 = distinct !DILexicalBlock(scope: !744, file: !2, line: 294, column: 25)
!748 = !DILocation(line: 296, column: 22, scope: !747)
!749 = !DILocation(line: 296, column: 3, scope: !747)
!750 = !DILocation(line: 297, column: 2, scope: !747)
!751 = !DILocation(line: 298, column: 2, scope: !716)
!752 = !DILocation(line: 299, column: 1, scope: !716)
!753 = !DISubprogram(name: "kmem_cache_destroy", scope: !213, file: !213, line: 197, type: !754, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!754 = !DISubroutineType(types: !755)
!755 = !{null, !404}
!756 = distinct !DISubprogram(name: "alloc_iova", scope: !2, file: !2, line: 314, type: !757, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !759)
!757 = !DISubroutineType(types: !758)
!758 = !{!236, !307, !233, !233, !538}
!759 = !{!760, !761, !762, !763, !764, !765}
!760 = !DILocalVariable(name: "iovad", arg: 1, scope: !756, file: !2, line: 314, type: !307)
!761 = !DILocalVariable(name: "size", arg: 2, scope: !756, file: !2, line: 314, type: !233)
!762 = !DILocalVariable(name: "limit_pfn", arg: 3, scope: !756, file: !2, line: 315, type: !233)
!763 = !DILocalVariable(name: "size_aligned", arg: 4, scope: !756, file: !2, line: 316, type: !538)
!764 = !DILocalVariable(name: "new_iova", scope: !756, file: !2, line: 318, type: !236)
!765 = !DILocalVariable(name: "ret", scope: !756, file: !2, line: 319, type: !13)
!766 = !DILocation(line: 314, column: 32, scope: !756)
!767 = !DILocation(line: 314, column: 53, scope: !756)
!768 = !DILocation(line: 315, column: 16, scope: !756)
!769 = !DILocation(line: 316, column: 7, scope: !756)
!770 = !DILocation(line: 318, column: 2, scope: !756)
!771 = !DILocation(line: 318, column: 15, scope: !756)
!772 = !DILocation(line: 319, column: 2, scope: !756)
!773 = !DILocation(line: 319, column: 6, scope: !756)
!774 = !DILocation(line: 321, column: 13, scope: !756)
!775 = !DILocation(line: 321, column: 11, scope: !756)
!776 = !DILocation(line: 322, column: 7, scope: !777)
!777 = distinct !DILexicalBlock(scope: !756, file: !2, line: 322, column: 6)
!778 = !DILocation(line: 322, column: 6, scope: !756)
!779 = !DILocation(line: 323, column: 3, scope: !777)
!780 = !DILocation(line: 325, column: 38, scope: !756)
!781 = !DILocation(line: 325, column: 45, scope: !756)
!782 = !DILocation(line: 325, column: 51, scope: !756)
!783 = !DILocation(line: 325, column: 61, scope: !756)
!784 = !DILocation(line: 326, column: 4, scope: !756)
!785 = !DILocation(line: 326, column: 14, scope: !756)
!786 = !{i8 0, i8 2}
!787 = !{}
!788 = !DILocation(line: 325, column: 8, scope: !756)
!789 = !DILocation(line: 325, column: 6, scope: !756)
!790 = !DILocation(line: 328, column: 6, scope: !791)
!791 = distinct !DILexicalBlock(scope: !756, file: !2, line: 328, column: 6)
!792 = !DILocation(line: 328, column: 6, scope: !756)
!793 = !DILocation(line: 329, column: 17, scope: !794)
!794 = distinct !DILexicalBlock(scope: !791, file: !2, line: 328, column: 11)
!795 = !DILocation(line: 329, column: 3, scope: !794)
!796 = !DILocation(line: 330, column: 3, scope: !794)
!797 = !DILocation(line: 333, column: 9, scope: !756)
!798 = !DILocation(line: 333, column: 2, scope: !756)
!799 = !DILocation(line: 334, column: 1, scope: !756)
!800 = distinct !DISubprogram(name: "alloc_iova_mem", scope: !2, file: !2, line: 243, type: !801, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!801 = !DISubroutineType(types: !802)
!802 = !{!236}
!803 = !DILocation(line: 245, column: 27, scope: !800)
!804 = !DILocation(line: 245, column: 9, scope: !800)
!805 = !DILocation(line: 245, column: 2, scope: !800)
!806 = distinct !DISubprogram(name: "__alloc_and_insert_iova_range", scope: !2, file: !2, line: 178, type: !807, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !809)
!807 = !DISubroutineType(types: !808)
!808 = !{!13, !307, !233, !233, !236, !538}
!809 = !{!810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !828, !829, !830, !833, !834}
!810 = !DILocalVariable(name: "iovad", arg: 1, scope: !806, file: !2, line: 178, type: !307)
!811 = !DILocalVariable(name: "size", arg: 2, scope: !806, file: !2, line: 179, type: !233)
!812 = !DILocalVariable(name: "limit_pfn", arg: 3, scope: !806, file: !2, line: 179, type: !233)
!813 = !DILocalVariable(name: "new", arg: 4, scope: !806, file: !2, line: 180, type: !236)
!814 = !DILocalVariable(name: "size_aligned", arg: 5, scope: !806, file: !2, line: 180, type: !538)
!815 = !DILocalVariable(name: "curr", scope: !806, file: !2, line: 182, type: !246)
!816 = !DILocalVariable(name: "prev", scope: !806, file: !2, line: 182, type: !246)
!817 = !DILocalVariable(name: "curr_iova", scope: !806, file: !2, line: 183, type: !236)
!818 = !DILocalVariable(name: "flags", scope: !806, file: !2, line: 184, type: !233)
!819 = !DILocalVariable(name: "new_pfn", scope: !806, file: !2, line: 185, type: !233)
!820 = !DILocalVariable(name: "retry_pfn", scope: !806, file: !2, line: 185, type: !233)
!821 = !DILocalVariable(name: "align_mask", scope: !806, file: !2, line: 186, type: !233)
!822 = !DILocalVariable(name: "high_pfn", scope: !806, file: !2, line: 187, type: !233)
!823 = !DILocalVariable(name: "low_pfn", scope: !806, file: !2, line: 187, type: !233)
!824 = !DILocalVariable(name: "__dummy", scope: !825, file: !2, line: 193, type: !233)
!825 = distinct !DILexicalBlock(scope: !826, file: !2, line: 193, column: 2)
!826 = distinct !DILexicalBlock(scope: !827, file: !2, line: 193, column: 2)
!827 = distinct !DILexicalBlock(scope: !806, file: !2, line: 193, column: 2)
!828 = !DILocalVariable(name: "__dummy2", scope: !825, file: !2, line: 193, type: !233)
!829 = !DILabel(scope: !806, name: "retry", file: !2, line: 202)
!830 = !DILocalVariable(name: "__UNIQUE_ID___x290", scope: !831, file: !2, line: 204, type: !233)
!831 = distinct !DILexicalBlock(scope: !832, file: !2, line: 204, column: 14)
!832 = distinct !DILexicalBlock(scope: !806, file: !2, line: 203, column: 5)
!833 = !DILocalVariable(name: "__UNIQUE_ID___y291", scope: !831, file: !2, line: 204, type: !233)
!834 = !DILabel(scope: !806, name: "iova32_full", file: !2, line: 234)
!835 = !DILocation(line: 178, column: 62, scope: !806)
!836 = !DILocation(line: 179, column: 17, scope: !806)
!837 = !DILocation(line: 179, column: 37, scope: !806)
!838 = !DILocation(line: 180, column: 17, scope: !806)
!839 = !DILocation(line: 180, column: 27, scope: !806)
!840 = !DILocation(line: 182, column: 2, scope: !806)
!841 = !DILocation(line: 182, column: 18, scope: !806)
!842 = !DILocation(line: 182, column: 25, scope: !806)
!843 = !DILocation(line: 183, column: 2, scope: !806)
!844 = !DILocation(line: 183, column: 15, scope: !806)
!845 = !DILocation(line: 184, column: 2, scope: !806)
!846 = !DILocation(line: 184, column: 16, scope: !806)
!847 = !DILocation(line: 185, column: 2, scope: !806)
!848 = !DILocation(line: 185, column: 16, scope: !806)
!849 = !DILocation(line: 185, column: 25, scope: !806)
!850 = !DILocation(line: 186, column: 2, scope: !806)
!851 = !DILocation(line: 186, column: 16, scope: !806)
!852 = !DILocation(line: 187, column: 2, scope: !806)
!853 = !DILocation(line: 187, column: 16, scope: !806)
!854 = !DILocation(line: 187, column: 27, scope: !806)
!855 = !DILocation(line: 187, column: 38, scope: !806)
!856 = !DILocation(line: 187, column: 48, scope: !806)
!857 = !DILocation(line: 187, column: 55, scope: !806)
!858 = !DILocation(line: 189, column: 6, scope: !859)
!859 = distinct !DILexicalBlock(scope: !806, file: !2, line: 189, column: 6)
!860 = !DILocation(line: 189, column: 6, scope: !806)
!861 = !DILocation(line: 190, column: 27, scope: !859)
!862 = !DILocation(line: 190, column: 32, scope: !859)
!863 = !DILocation(line: 190, column: 18, scope: !859)
!864 = !DILocation(line: 190, column: 14, scope: !859)
!865 = !DILocation(line: 190, column: 3, scope: !859)
!866 = !DILocation(line: 193, column: 2, scope: !806)
!867 = !DILocation(line: 193, column: 2, scope: !827)
!868 = !DILocation(line: 193, column: 2, scope: !825)
!869 = !DILocation(line: 193, column: 2, scope: !826)
!870 = !DILocation(line: 194, column: 6, scope: !871)
!871 = distinct !DILexicalBlock(scope: !806, file: !2, line: 194, column: 6)
!872 = !DILocation(line: 194, column: 19, scope: !871)
!873 = !DILocation(line: 194, column: 26, scope: !871)
!874 = !DILocation(line: 194, column: 16, scope: !871)
!875 = !DILocation(line: 194, column: 40, scope: !871)
!876 = !DILocation(line: 195, column: 4, scope: !871)
!877 = !DILocation(line: 195, column: 12, scope: !871)
!878 = !DILocation(line: 195, column: 19, scope: !871)
!879 = !DILocation(line: 195, column: 9, scope: !871)
!880 = !DILocation(line: 194, column: 6, scope: !806)
!881 = !DILocation(line: 196, column: 3, scope: !871)
!882 = !DILocation(line: 198, column: 29, scope: !806)
!883 = !DILocation(line: 198, column: 36, scope: !806)
!884 = !DILocation(line: 198, column: 9, scope: !806)
!885 = !DILocation(line: 198, column: 7, scope: !806)
!886 = !DILocation(line: 199, column: 22, scope: !806)
!887 = !DILocation(line: 199, column: 14, scope: !806)
!888 = !DILocation(line: 199, column: 12, scope: !806)
!889 = !DILocation(line: 200, column: 14, scope: !806)
!890 = !DILocation(line: 200, column: 25, scope: !806)
!891 = !DILocation(line: 200, column: 12, scope: !806)
!892 = !DILocation(line: 200, column: 2, scope: !806)
!893 = !DILocation(line: 202, column: 1, scope: !806)
!894 = !DILocation(line: 203, column: 2, scope: !806)
!895 = !DILocation(line: 204, column: 14, scope: !831)
!896 = !DILocation(line: 204, column: 14, scope: !832)
!897 = !DILocation(line: 204, column: 12, scope: !832)
!898 = !DILocation(line: 205, column: 14, scope: !832)
!899 = !DILocation(line: 205, column: 25, scope: !832)
!900 = !DILocation(line: 205, column: 23, scope: !832)
!901 = !DILocation(line: 205, column: 33, scope: !832)
!902 = !DILocation(line: 205, column: 31, scope: !832)
!903 = !DILocation(line: 205, column: 11, scope: !832)
!904 = !DILocation(line: 206, column: 10, scope: !832)
!905 = !DILocation(line: 206, column: 8, scope: !832)
!906 = !DILocation(line: 207, column: 18, scope: !832)
!907 = !DILocation(line: 207, column: 10, scope: !832)
!908 = !DILocation(line: 207, column: 8, scope: !832)
!909 = !DILocation(line: 208, column: 23, scope: !832)
!910 = !DILocation(line: 208, column: 15, scope: !832)
!911 = !DILocation(line: 208, column: 13, scope: !832)
!912 = !DILocation(line: 209, column: 2, scope: !832)
!913 = !DILocation(line: 209, column: 11, scope: !806)
!914 = !DILocation(line: 209, column: 16, scope: !806)
!915 = !DILocation(line: 209, column: 19, scope: !806)
!916 = !DILocation(line: 209, column: 30, scope: !806)
!917 = !DILocation(line: 209, column: 41, scope: !806)
!918 = !DILocation(line: 209, column: 27, scope: !806)
!919 = !DILocation(line: 209, column: 48, scope: !806)
!920 = !DILocation(line: 209, column: 51, scope: !806)
!921 = !DILocation(line: 209, column: 62, scope: !806)
!922 = !DILocation(line: 209, column: 59, scope: !806)
!923 = !DILocation(line: 0, scope: !806)
!924 = distinct !{!924, !894, !925, !926, !927}
!925 = !DILocation(line: 209, column: 69, scope: !806)
!926 = !{!"llvm.loop.mustprogress"}
!927 = !{!"llvm.loop.unroll.disable"}
!928 = !DILocation(line: 211, column: 6, scope: !929)
!929 = distinct !DILexicalBlock(scope: !806, file: !2, line: 211, column: 6)
!930 = !DILocation(line: 211, column: 17, scope: !929)
!931 = !DILocation(line: 211, column: 15, scope: !929)
!932 = !DILocation(line: 211, column: 22, scope: !929)
!933 = !DILocation(line: 211, column: 25, scope: !929)
!934 = !DILocation(line: 211, column: 35, scope: !929)
!935 = !DILocation(line: 211, column: 33, scope: !929)
!936 = !DILocation(line: 211, column: 6, scope: !806)
!937 = !DILocation(line: 212, column: 7, scope: !938)
!938 = distinct !DILexicalBlock(scope: !939, file: !2, line: 212, column: 7)
!939 = distinct !DILexicalBlock(scope: !929, file: !2, line: 211, column: 44)
!940 = !DILocation(line: 212, column: 18, scope: !938)
!941 = !DILocation(line: 212, column: 25, scope: !938)
!942 = !DILocation(line: 212, column: 15, scope: !938)
!943 = !DILocation(line: 212, column: 35, scope: !938)
!944 = !DILocation(line: 212, column: 38, scope: !938)
!945 = !DILocation(line: 212, column: 50, scope: !938)
!946 = !DILocation(line: 212, column: 48, scope: !938)
!947 = !DILocation(line: 212, column: 7, scope: !939)
!948 = !DILocation(line: 213, column: 15, scope: !949)
!949 = distinct !DILexicalBlock(scope: !938, file: !2, line: 212, column: 61)
!950 = !DILocation(line: 213, column: 13, scope: !949)
!951 = !DILocation(line: 214, column: 14, scope: !949)
!952 = !DILocation(line: 214, column: 24, scope: !949)
!953 = !DILocation(line: 214, column: 12, scope: !949)
!954 = !DILocation(line: 215, column: 27, scope: !949)
!955 = !DILocation(line: 215, column: 34, scope: !949)
!956 = !DILocation(line: 215, column: 11, scope: !949)
!957 = !DILocation(line: 215, column: 9, scope: !949)
!958 = !DILocation(line: 216, column: 24, scope: !949)
!959 = !DILocation(line: 216, column: 16, scope: !949)
!960 = !DILocation(line: 216, column: 14, scope: !949)
!961 = !DILocation(line: 217, column: 4, scope: !949)
!962 = !DILocation(line: 219, column: 29, scope: !939)
!963 = !DILocation(line: 219, column: 3, scope: !939)
!964 = !DILocation(line: 219, column: 10, scope: !939)
!965 = !DILocation(line: 219, column: 27, scope: !939)
!966 = !DILocation(line: 220, column: 3, scope: !939)
!967 = !DILocation(line: 224, column: 16, scope: !806)
!968 = !DILocation(line: 224, column: 2, scope: !806)
!969 = !DILocation(line: 224, column: 7, scope: !806)
!970 = !DILocation(line: 224, column: 14, scope: !806)
!971 = !DILocation(line: 225, column: 16, scope: !806)
!972 = !DILocation(line: 225, column: 21, scope: !806)
!973 = !DILocation(line: 225, column: 30, scope: !806)
!974 = !DILocation(line: 225, column: 28, scope: !806)
!975 = !DILocation(line: 225, column: 35, scope: !806)
!976 = !DILocation(line: 225, column: 2, scope: !806)
!977 = !DILocation(line: 225, column: 7, scope: !806)
!978 = !DILocation(line: 225, column: 14, scope: !806)
!979 = !DILocation(line: 228, column: 22, scope: !806)
!980 = !DILocation(line: 228, column: 29, scope: !806)
!981 = !DILocation(line: 228, column: 37, scope: !806)
!982 = !DILocation(line: 228, column: 42, scope: !806)
!983 = !DILocation(line: 228, column: 2, scope: !806)
!984 = !DILocation(line: 229, column: 32, scope: !806)
!985 = !DILocation(line: 229, column: 39, scope: !806)
!986 = !DILocation(line: 229, column: 2, scope: !806)
!987 = !DILocation(line: 231, column: 26, scope: !806)
!988 = !DILocation(line: 231, column: 33, scope: !806)
!989 = !DILocation(line: 231, column: 51, scope: !806)
!990 = !DILocation(line: 231, column: 2, scope: !806)
!991 = !DILocation(line: 232, column: 2, scope: !806)
!992 = !DILocation(line: 234, column: 1, scope: !806)
!993 = !DILocation(line: 235, column: 26, scope: !806)
!994 = !DILocation(line: 235, column: 33, scope: !806)
!995 = !DILocation(line: 235, column: 51, scope: !806)
!996 = !DILocation(line: 235, column: 2, scope: !806)
!997 = !DILocation(line: 236, column: 2, scope: !806)
!998 = !DILocation(line: 237, column: 1, scope: !806)
!999 = distinct !DISubprogram(name: "free_iova_mem", scope: !2, file: !2, line: 248, type: !1000, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1002)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{null, !236}
!1002 = !{!1003}
!1003 = !DILocalVariable(name: "iova", arg: 1, scope: !999, file: !2, line: 248, type: !236)
!1004 = !DILocation(line: 248, column: 40, scope: !999)
!1005 = !DILocation(line: 250, column: 6, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !999, file: !2, line: 250, column: 6)
!1007 = !DILocation(line: 250, column: 12, scope: !1006)
!1008 = !DILocation(line: 250, column: 19, scope: !1006)
!1009 = !DILocation(line: 250, column: 6, scope: !999)
!1010 = !DILocation(line: 251, column: 19, scope: !1006)
!1011 = !DILocation(line: 251, column: 31, scope: !1006)
!1012 = !DILocation(line: 251, column: 3, scope: !1006)
!1013 = !DILocation(line: 252, column: 1, scope: !999)
!1014 = distinct !DISubprogram(name: "find_iova", scope: !2, file: !2, line: 372, type: !1015, scopeLine: 373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1017)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!236, !307, !233}
!1017 = !{!1018, !1019, !1020, !1021, !1022, !1026}
!1018 = !DILocalVariable(name: "iovad", arg: 1, scope: !1014, file: !2, line: 372, type: !307)
!1019 = !DILocalVariable(name: "pfn", arg: 2, scope: !1014, file: !2, line: 372, type: !233)
!1020 = !DILocalVariable(name: "flags", scope: !1014, file: !2, line: 374, type: !233)
!1021 = !DILocalVariable(name: "iova", scope: !1014, file: !2, line: 375, type: !236)
!1022 = !DILocalVariable(name: "__dummy", scope: !1023, file: !2, line: 378, type: !233)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !2, line: 378, column: 2)
!1024 = distinct !DILexicalBlock(scope: !1025, file: !2, line: 378, column: 2)
!1025 = distinct !DILexicalBlock(scope: !1014, file: !2, line: 378, column: 2)
!1026 = !DILocalVariable(name: "__dummy2", scope: !1023, file: !2, line: 378, type: !233)
!1027 = !DILocation(line: 372, column: 44, scope: !1014)
!1028 = !DILocation(line: 372, column: 65, scope: !1014)
!1029 = !DILocation(line: 374, column: 2, scope: !1014)
!1030 = !DILocation(line: 374, column: 16, scope: !1014)
!1031 = !DILocation(line: 375, column: 2, scope: !1014)
!1032 = !DILocation(line: 375, column: 15, scope: !1014)
!1033 = !DILocation(line: 378, column: 2, scope: !1014)
!1034 = !DILocation(line: 378, column: 2, scope: !1025)
!1035 = !DILocation(line: 378, column: 2, scope: !1023)
!1036 = !DILocation(line: 378, column: 2, scope: !1024)
!1037 = !DILocation(line: 379, column: 27, scope: !1014)
!1038 = !DILocation(line: 379, column: 34, scope: !1014)
!1039 = !DILocation(line: 379, column: 9, scope: !1014)
!1040 = !DILocation(line: 379, column: 7, scope: !1014)
!1041 = !DILocation(line: 380, column: 26, scope: !1014)
!1042 = !DILocation(line: 380, column: 33, scope: !1014)
!1043 = !DILocation(line: 380, column: 51, scope: !1014)
!1044 = !DILocation(line: 380, column: 2, scope: !1014)
!1045 = !DILocation(line: 381, column: 9, scope: !1014)
!1046 = !DILocation(line: 382, column: 1, scope: !1014)
!1047 = !DILocation(line: 381, column: 2, scope: !1014)
!1048 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !1049, file: !1049, line: 32, type: !1050, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1049 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!233, !557}
!1052 = distinct !DISubprogram(name: "private_find_iova", scope: !2, file: !2, line: 338, type: !1015, scopeLine: 339, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1053)
!1053 = !{!1054, !1055, !1056, !1057}
!1054 = !DILocalVariable(name: "iovad", arg: 1, scope: !1052, file: !2, line: 338, type: !307)
!1055 = !DILocalVariable(name: "pfn", arg: 2, scope: !1052, file: !2, line: 338, type: !233)
!1056 = !DILocalVariable(name: "node", scope: !1052, file: !2, line: 340, type: !246)
!1057 = !DILocalVariable(name: "iova", scope: !1058, file: !2, line: 345, type: !236)
!1058 = distinct !DILexicalBlock(scope: !1052, file: !2, line: 344, column: 15)
!1059 = !DILocation(line: 338, column: 39, scope: !1052)
!1060 = !DILocation(line: 338, column: 60, scope: !1052)
!1061 = !DILocation(line: 340, column: 2, scope: !1052)
!1062 = !DILocation(line: 340, column: 18, scope: !1052)
!1063 = !DILocation(line: 340, column: 25, scope: !1052)
!1064 = !DILocation(line: 340, column: 32, scope: !1052)
!1065 = !DILocation(line: 340, column: 39, scope: !1052)
!1066 = !DILocation(line: 342, column: 2, scope: !1052)
!1067 = !DILocation(line: 342, column: 2, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !2, line: 342, column: 2)
!1069 = distinct !DILexicalBlock(scope: !1052, file: !2, line: 342, column: 2)
!1070 = !DILocation(line: 342, column: 2, scope: !1069)
!1071 = !DILocation(line: 342, column: 2, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1068, file: !2, line: 342, column: 2)
!1073 = !DILocation(line: 342, column: 2, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1072, file: !2, line: 342, column: 2)
!1075 = !DILocation(line: 342, column: 2, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1072, file: !2, line: 342, column: 2)
!1077 = !{i64 2154617909, i64 2154617938, i64 2154617984, i64 2154618042, i64 2154618096, i64 2154618150, i64 2154618205, i64 2154618236}
!1078 = !DILocation(line: 344, column: 2, scope: !1052)
!1079 = !DILocation(line: 344, column: 9, scope: !1052)
!1080 = !DILocation(line: 345, column: 3, scope: !1058)
!1081 = !DILocation(line: 345, column: 16, scope: !1058)
!1082 = !DILocation(line: 345, column: 31, scope: !1058)
!1083 = !DILocation(line: 345, column: 23, scope: !1058)
!1084 = !DILocation(line: 347, column: 7, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1058, file: !2, line: 347, column: 7)
!1086 = !DILocation(line: 347, column: 13, scope: !1085)
!1087 = !DILocation(line: 347, column: 19, scope: !1085)
!1088 = !DILocation(line: 347, column: 11, scope: !1085)
!1089 = !DILocation(line: 347, column: 7, scope: !1058)
!1090 = !DILocation(line: 348, column: 11, scope: !1085)
!1091 = !DILocation(line: 348, column: 17, scope: !1085)
!1092 = !DILocation(line: 348, column: 9, scope: !1085)
!1093 = !DILocation(line: 348, column: 4, scope: !1085)
!1094 = !DILocation(line: 349, column: 12, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1085, file: !2, line: 349, column: 12)
!1096 = !DILocation(line: 349, column: 18, scope: !1095)
!1097 = !DILocation(line: 349, column: 24, scope: !1095)
!1098 = !DILocation(line: 349, column: 16, scope: !1095)
!1099 = !DILocation(line: 349, column: 12, scope: !1085)
!1100 = !DILocation(line: 350, column: 11, scope: !1095)
!1101 = !DILocation(line: 350, column: 17, scope: !1095)
!1102 = !DILocation(line: 350, column: 9, scope: !1095)
!1103 = !DILocation(line: 350, column: 4, scope: !1095)
!1104 = !DILocation(line: 352, column: 11, scope: !1095)
!1105 = !DILocation(line: 352, column: 4, scope: !1095)
!1106 = !DILocation(line: 353, column: 2, scope: !1052)
!1107 = distinct !{!1107, !1078, !1106, !926, !927}
!1108 = !DILocation(line: 355, column: 2, scope: !1052)
!1109 = !DILocation(line: 356, column: 1, scope: !1052)
!1110 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !554, file: !554, line: 404, type: !1111, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1113)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{null, !558, !233}
!1113 = !{!1114, !1115, !1116, !1119}
!1114 = !DILocalVariable(name: "lock", arg: 1, scope: !1110, file: !554, line: 404, type: !558)
!1115 = !DILocalVariable(name: "flags", arg: 2, scope: !1110, file: !554, line: 404, type: !233)
!1116 = !DILocalVariable(name: "__dummy", scope: !1117, file: !554, line: 406, type: !233)
!1117 = distinct !DILexicalBlock(scope: !1118, file: !554, line: 406, column: 2)
!1118 = distinct !DILexicalBlock(scope: !1110, file: !554, line: 406, column: 2)
!1119 = !DILocalVariable(name: "__dummy2", scope: !1117, file: !554, line: 406, type: !233)
!1120 = !DILocation(line: 404, column: 64, scope: !1110)
!1121 = !DILocation(line: 404, column: 84, scope: !1110)
!1122 = !DILocation(line: 406, column: 2, scope: !1110)
!1123 = !DILocation(line: 406, column: 2, scope: !1117)
!1124 = !DILocation(line: 406, column: 2, scope: !1118)
!1125 = !DILocation(line: 407, column: 1, scope: !1110)
!1126 = distinct !DISubprogram(name: "__free_iova", scope: !2, file: !2, line: 392, type: !1127, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1129)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{null, !307, !236}
!1129 = !{!1130, !1131, !1132, !1133, !1137}
!1130 = !DILocalVariable(name: "iovad", arg: 1, scope: !1126, file: !2, line: 392, type: !307)
!1131 = !DILocalVariable(name: "iova", arg: 2, scope: !1126, file: !2, line: 392, type: !236)
!1132 = !DILocalVariable(name: "flags", scope: !1126, file: !2, line: 394, type: !233)
!1133 = !DILocalVariable(name: "__dummy", scope: !1134, file: !2, line: 396, type: !233)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !2, line: 396, column: 2)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !2, line: 396, column: 2)
!1136 = distinct !DILexicalBlock(scope: !1126, file: !2, line: 396, column: 2)
!1137 = !DILocalVariable(name: "__dummy2", scope: !1134, file: !2, line: 396, type: !233)
!1138 = !DILocation(line: 392, column: 33, scope: !1126)
!1139 = !DILocation(line: 392, column: 53, scope: !1126)
!1140 = !DILocation(line: 394, column: 2, scope: !1126)
!1141 = !DILocation(line: 394, column: 16, scope: !1126)
!1142 = !DILocation(line: 396, column: 2, scope: !1126)
!1143 = !DILocation(line: 396, column: 2, scope: !1136)
!1144 = !DILocation(line: 396, column: 2, scope: !1134)
!1145 = !DILocation(line: 396, column: 2, scope: !1135)
!1146 = !DILocation(line: 397, column: 14, scope: !1126)
!1147 = !DILocation(line: 397, column: 21, scope: !1126)
!1148 = !DILocation(line: 397, column: 2, scope: !1126)
!1149 = !DILocation(line: 398, column: 26, scope: !1126)
!1150 = !DILocation(line: 398, column: 33, scope: !1126)
!1151 = !DILocation(line: 398, column: 51, scope: !1126)
!1152 = !DILocation(line: 398, column: 2, scope: !1126)
!1153 = !DILocation(line: 399, column: 16, scope: !1126)
!1154 = !DILocation(line: 399, column: 2, scope: !1126)
!1155 = !DILocation(line: 400, column: 1, scope: !1126)
!1156 = distinct !DISubprogram(name: "remove_iova", scope: !2, file: !2, line: 358, type: !1127, scopeLine: 359, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1157)
!1157 = !{!1158, !1159}
!1158 = !DILocalVariable(name: "iovad", arg: 1, scope: !1156, file: !2, line: 358, type: !307)
!1159 = !DILocalVariable(name: "iova", arg: 2, scope: !1156, file: !2, line: 358, type: !236)
!1160 = !DILocation(line: 358, column: 45, scope: !1156)
!1161 = !DILocation(line: 358, column: 65, scope: !1156)
!1162 = !DILocation(line: 360, column: 2, scope: !1156)
!1163 = !DILocation(line: 360, column: 2, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !2, line: 360, column: 2)
!1165 = distinct !DILexicalBlock(scope: !1156, file: !2, line: 360, column: 2)
!1166 = !DILocation(line: 360, column: 2, scope: !1165)
!1167 = !DILocation(line: 360, column: 2, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1164, file: !2, line: 360, column: 2)
!1169 = !DILocation(line: 360, column: 2, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1168, file: !2, line: 360, column: 2)
!1171 = !DILocation(line: 360, column: 2, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1168, file: !2, line: 360, column: 2)
!1173 = !{i64 2154619321, i64 2154619350, i64 2154619396, i64 2154619454, i64 2154619508, i64 2154619562, i64 2154619617, i64 2154619648}
!1174 = !DILocation(line: 361, column: 32, scope: !1156)
!1175 = !DILocation(line: 361, column: 39, scope: !1156)
!1176 = !DILocation(line: 361, column: 2, scope: !1156)
!1177 = !DILocation(line: 362, column: 12, scope: !1156)
!1178 = !DILocation(line: 362, column: 18, scope: !1156)
!1179 = !DILocation(line: 362, column: 25, scope: !1156)
!1180 = !DILocation(line: 362, column: 32, scope: !1156)
!1181 = !DILocation(line: 362, column: 2, scope: !1156)
!1182 = !DILocation(line: 363, column: 1, scope: !1156)
!1183 = distinct !DISubprogram(name: "free_iova", scope: !2, file: !2, line: 411, type: !1184, scopeLine: 412, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1186)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{null, !307, !233}
!1186 = !{!1187, !1188, !1189, !1190, !1191, !1195}
!1187 = !DILocalVariable(name: "iovad", arg: 1, scope: !1183, file: !2, line: 411, type: !307)
!1188 = !DILocalVariable(name: "pfn", arg: 2, scope: !1183, file: !2, line: 411, type: !233)
!1189 = !DILocalVariable(name: "flags", scope: !1183, file: !2, line: 413, type: !233)
!1190 = !DILocalVariable(name: "iova", scope: !1183, file: !2, line: 414, type: !236)
!1191 = !DILocalVariable(name: "__dummy", scope: !1192, file: !2, line: 416, type: !233)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !2, line: 416, column: 2)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 416, column: 2)
!1194 = distinct !DILexicalBlock(scope: !1183, file: !2, line: 416, column: 2)
!1195 = !DILocalVariable(name: "__dummy2", scope: !1192, file: !2, line: 416, type: !233)
!1196 = !DILocation(line: 411, column: 31, scope: !1183)
!1197 = !DILocation(line: 411, column: 52, scope: !1183)
!1198 = !DILocation(line: 413, column: 2, scope: !1183)
!1199 = !DILocation(line: 413, column: 16, scope: !1183)
!1200 = !DILocation(line: 414, column: 2, scope: !1183)
!1201 = !DILocation(line: 414, column: 15, scope: !1183)
!1202 = !DILocation(line: 416, column: 2, scope: !1183)
!1203 = !DILocation(line: 416, column: 2, scope: !1194)
!1204 = !DILocation(line: 416, column: 2, scope: !1192)
!1205 = !DILocation(line: 416, column: 2, scope: !1193)
!1206 = !DILocation(line: 417, column: 27, scope: !1183)
!1207 = !DILocation(line: 417, column: 34, scope: !1183)
!1208 = !DILocation(line: 417, column: 9, scope: !1183)
!1209 = !DILocation(line: 417, column: 7, scope: !1183)
!1210 = !DILocation(line: 418, column: 7, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1183, file: !2, line: 418, column: 6)
!1212 = !DILocation(line: 418, column: 6, scope: !1183)
!1213 = !DILocation(line: 419, column: 27, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1211, file: !2, line: 418, column: 13)
!1215 = !DILocation(line: 419, column: 34, scope: !1214)
!1216 = !DILocation(line: 419, column: 52, scope: !1214)
!1217 = !DILocation(line: 419, column: 3, scope: !1214)
!1218 = !DILocation(line: 420, column: 3, scope: !1214)
!1219 = !DILocation(line: 422, column: 14, scope: !1183)
!1220 = !DILocation(line: 422, column: 21, scope: !1183)
!1221 = !DILocation(line: 422, column: 2, scope: !1183)
!1222 = !DILocation(line: 423, column: 26, scope: !1183)
!1223 = !DILocation(line: 423, column: 33, scope: !1183)
!1224 = !DILocation(line: 423, column: 51, scope: !1183)
!1225 = !DILocation(line: 423, column: 2, scope: !1183)
!1226 = !DILocation(line: 424, column: 16, scope: !1183)
!1227 = !DILocation(line: 424, column: 2, scope: !1183)
!1228 = !DILocation(line: 425, column: 1, scope: !1183)
!1229 = distinct !DISubprogram(name: "alloc_iova_fast", scope: !2, file: !2, line: 439, type: !1230, scopeLine: 441, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1232)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!233, !307, !233, !233, !538}
!1232 = !{!1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240}
!1233 = !DILocalVariable(name: "iovad", arg: 1, scope: !1229, file: !2, line: 439, type: !307)
!1234 = !DILocalVariable(name: "size", arg: 2, scope: !1229, file: !2, line: 439, type: !233)
!1235 = !DILocalVariable(name: "limit_pfn", arg: 3, scope: !1229, file: !2, line: 440, type: !233)
!1236 = !DILocalVariable(name: "flush_rcache", arg: 4, scope: !1229, file: !2, line: 440, type: !538)
!1237 = !DILocalVariable(name: "iova_pfn", scope: !1229, file: !2, line: 442, type: !233)
!1238 = !DILocalVariable(name: "new_iova", scope: !1229, file: !2, line: 443, type: !236)
!1239 = !DILabel(scope: !1229, name: "retry", file: !2, line: 458)
!1240 = !DILocalVariable(name: "cpu", scope: !1241, file: !2, line: 461, type: !208)
!1241 = distinct !DILexicalBlock(scope: !1242, file: !2, line: 460, column: 17)
!1242 = distinct !DILexicalBlock(scope: !1229, file: !2, line: 460, column: 6)
!1243 = !DILocation(line: 439, column: 37, scope: !1229)
!1244 = !DILocation(line: 439, column: 58, scope: !1229)
!1245 = !DILocation(line: 440, column: 17, scope: !1229)
!1246 = !DILocation(line: 440, column: 33, scope: !1229)
!1247 = !DILocation(line: 442, column: 2, scope: !1229)
!1248 = !DILocation(line: 442, column: 16, scope: !1229)
!1249 = !DILocation(line: 443, column: 2, scope: !1229)
!1250 = !DILocation(line: 443, column: 15, scope: !1229)
!1251 = !DILocation(line: 451, column: 6, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1229, file: !2, line: 451, column: 6)
!1253 = !DILocation(line: 451, column: 11, scope: !1252)
!1254 = !DILocation(line: 451, column: 6, scope: !1229)
!1255 = !DILocation(line: 452, column: 10, scope: !1252)
!1256 = !DILocation(line: 452, column: 8, scope: !1252)
!1257 = !DILocation(line: 452, column: 3, scope: !1252)
!1258 = !DILocation(line: 454, column: 29, scope: !1229)
!1259 = !DILocation(line: 454, column: 36, scope: !1229)
!1260 = !DILocation(line: 454, column: 42, scope: !1229)
!1261 = !DILocation(line: 454, column: 52, scope: !1229)
!1262 = !DILocation(line: 454, column: 13, scope: !1229)
!1263 = !DILocation(line: 454, column: 11, scope: !1229)
!1264 = !DILocation(line: 455, column: 6, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1229, file: !2, line: 455, column: 6)
!1266 = !DILocation(line: 455, column: 6, scope: !1229)
!1267 = !DILocation(line: 456, column: 10, scope: !1265)
!1268 = !DILocation(line: 456, column: 3, scope: !1265)
!1269 = !DILocation(line: 458, column: 1, scope: !1229)
!1270 = !DILocation(line: 459, column: 24, scope: !1229)
!1271 = !DILocation(line: 459, column: 31, scope: !1229)
!1272 = !DILocation(line: 459, column: 37, scope: !1229)
!1273 = !DILocation(line: 459, column: 13, scope: !1229)
!1274 = !DILocation(line: 459, column: 11, scope: !1229)
!1275 = !DILocation(line: 460, column: 7, scope: !1242)
!1276 = !DILocation(line: 460, column: 6, scope: !1229)
!1277 = !DILocation(line: 461, column: 3, scope: !1241)
!1278 = !DILocation(line: 461, column: 16, scope: !1241)
!1279 = !DILocation(line: 463, column: 8, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1241, file: !2, line: 463, column: 7)
!1281 = !DILocation(line: 463, column: 7, scope: !1241)
!1282 = !DILocation(line: 464, column: 4, scope: !1280)
!1283 = !DILocation(line: 467, column: 16, scope: !1241)
!1284 = !DILocation(line: 468, column: 3, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1241, file: !2, line: 468, column: 3)
!1286 = !DILocation(line: 468, column: 3, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1285, file: !2, line: 468, column: 3)
!1288 = !DILocation(line: 469, column: 26, scope: !1287)
!1289 = !DILocation(line: 469, column: 31, scope: !1287)
!1290 = !DILocation(line: 469, column: 4, scope: !1287)
!1291 = distinct !{!1291, !1284, !1292, !926, !927}
!1292 = !DILocation(line: 469, column: 36, scope: !1285)
!1293 = !DILocation(line: 470, column: 28, scope: !1241)
!1294 = !DILocation(line: 470, column: 3, scope: !1241)
!1295 = !DILocation(line: 471, column: 3, scope: !1241)
!1296 = !DILocation(line: 472, column: 2, scope: !1242)
!1297 = !DILocation(line: 474, column: 9, scope: !1229)
!1298 = !DILocation(line: 474, column: 19, scope: !1229)
!1299 = !DILocation(line: 474, column: 2, scope: !1229)
!1300 = !DILocation(line: 475, column: 1, scope: !1229)
!1301 = distinct !DISubprogram(name: "__ilog2_u64", scope: !535, file: !535, line: 30, type: !1302, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1307)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!13, !1304}
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !284, line: 23, baseType: !1305)
!1305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !286, line: 31, baseType: !1306)
!1306 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!1307 = !{!1308}
!1308 = !DILocalVariable(name: "n", arg: 1, scope: !1301, file: !535, line: 30, type: !1304)
!1309 = !DILocation(line: 30, column: 21, scope: !1301)
!1310 = !DILocation(line: 32, column: 15, scope: !1301)
!1311 = !DILocation(line: 32, column: 9, scope: !1301)
!1312 = !DILocation(line: 32, column: 18, scope: !1301)
!1313 = !DILocation(line: 32, column: 2, scope: !1301)
!1314 = distinct !DISubprogram(name: "__roundup_pow_of_two", scope: !535, file: !535, line: 55, type: !1315, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1317)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{!233, !233}
!1317 = !{!1318}
!1318 = !DILocalVariable(name: "n", arg: 1, scope: !1314, file: !535, line: 55, type: !233)
!1319 = !DILocation(line: 55, column: 50, scope: !1314)
!1320 = !DILocation(line: 57, column: 25, scope: !1314)
!1321 = !DILocation(line: 57, column: 27, scope: !1314)
!1322 = !DILocation(line: 57, column: 16, scope: !1314)
!1323 = !DILocation(line: 57, column: 13, scope: !1314)
!1324 = !DILocation(line: 57, column: 2, scope: !1314)
!1325 = distinct !DISubprogram(name: "iova_rcache_get", scope: !2, file: !2, line: 878, type: !1326, scopeLine: 881, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1328)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!233, !307, !233, !233}
!1328 = !{!1329, !1330, !1331, !1332}
!1329 = !DILocalVariable(name: "iovad", arg: 1, scope: !1325, file: !2, line: 878, type: !307)
!1330 = !DILocalVariable(name: "size", arg: 2, scope: !1325, file: !2, line: 879, type: !233)
!1331 = !DILocalVariable(name: "limit_pfn", arg: 3, scope: !1325, file: !2, line: 880, type: !233)
!1332 = !DILocalVariable(name: "log_size", scope: !1325, file: !2, line: 882, type: !208)
!1333 = !DILocation(line: 878, column: 58, scope: !1325)
!1334 = !DILocation(line: 879, column: 24, scope: !1325)
!1335 = !DILocation(line: 880, column: 24, scope: !1325)
!1336 = !DILocation(line: 882, column: 2, scope: !1325)
!1337 = !DILocation(line: 882, column: 15, scope: !1325)
!1338 = !DILocation(line: 882, column: 26, scope: !1325)
!1339 = !DILocation(line: 884, column: 6, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1325, file: !2, line: 884, column: 6)
!1341 = !DILocation(line: 884, column: 15, scope: !1340)
!1342 = !DILocation(line: 884, column: 6, scope: !1325)
!1343 = !DILocation(line: 885, column: 3, scope: !1340)
!1344 = !DILocation(line: 887, column: 28, scope: !1325)
!1345 = !DILocation(line: 887, column: 35, scope: !1325)
!1346 = !DILocation(line: 887, column: 43, scope: !1325)
!1347 = !DILocation(line: 887, column: 54, scope: !1325)
!1348 = !DILocation(line: 887, column: 66, scope: !1325)
!1349 = !DILocation(line: 887, column: 64, scope: !1325)
!1350 = !DILocation(line: 887, column: 9, scope: !1325)
!1351 = !DILocation(line: 887, column: 2, scope: !1325)
!1352 = !DILocation(line: 888, column: 1, scope: !1325)
!1353 = distinct !DISubprogram(name: "find_next_bit", scope: !1354, file: !1354, line: 54, type: !1355, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1359)
!1354 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!233, !1357, !233, !233}
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!1359 = !{!1360, !1361, !1362, !1363}
!1360 = !DILocalVariable(name: "addr", arg: 1, scope: !1353, file: !1354, line: 54, type: !1357)
!1361 = !DILocalVariable(name: "size", arg: 2, scope: !1353, file: !1354, line: 54, type: !233)
!1362 = !DILocalVariable(name: "offset", arg: 3, scope: !1353, file: !1354, line: 55, type: !233)
!1363 = !DILocalVariable(name: "val", scope: !1364, file: !1354, line: 58, type: !233)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !1354, line: 57, column: 31)
!1365 = distinct !DILexicalBlock(scope: !1353, file: !1354, line: 57, column: 6)
!1366 = !DILocation(line: 54, column: 50, scope: !1353)
!1367 = !DILocation(line: 54, column: 70, scope: !1353)
!1368 = !DILocation(line: 55, column: 22, scope: !1353)
!1369 = !DILocation(line: 57, column: 6, scope: !1365)
!1370 = !DILocation(line: 57, column: 6, scope: !1353)
!1371 = !DILocation(line: 58, column: 3, scope: !1364)
!1372 = !DILocation(line: 58, column: 17, scope: !1364)
!1373 = !DILocation(line: 60, column: 7, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1364, file: !1354, line: 60, column: 7)
!1375 = !DILocation(line: 60, column: 7, scope: !1364)
!1376 = !DILocation(line: 61, column: 11, scope: !1374)
!1377 = !DILocation(line: 61, column: 4, scope: !1374)
!1378 = !DILocation(line: 63, column: 10, scope: !1364)
!1379 = !DILocation(line: 63, column: 9, scope: !1364)
!1380 = !DILocation(line: 63, column: 17, scope: !1364)
!1381 = !DILocation(line: 63, column: 15, scope: !1364)
!1382 = !DILocation(line: 63, column: 7, scope: !1364)
!1383 = !DILocation(line: 64, column: 10, scope: !1364)
!1384 = !DILocation(line: 64, column: 16, scope: !1364)
!1385 = !DILocation(line: 64, column: 29, scope: !1364)
!1386 = !DILocation(line: 64, column: 3, scope: !1364)
!1387 = !DILocation(line: 65, column: 2, scope: !1365)
!1388 = !DILocation(line: 67, column: 24, scope: !1353)
!1389 = !DILocation(line: 67, column: 30, scope: !1353)
!1390 = !DILocation(line: 67, column: 36, scope: !1353)
!1391 = !DILocation(line: 67, column: 9, scope: !1353)
!1392 = !DILocation(line: 67, column: 2, scope: !1353)
!1393 = !DILocation(line: 68, column: 1, scope: !1353)
!1394 = distinct !DISubprogram(name: "free_cpu_cached_iovas", scope: !2, file: !2, line: 921, type: !1395, scopeLine: 922, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1397)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{null, !208, !307}
!1397 = !{!1398, !1399, !1400, !1401, !1402, !1403, !1404, !1412, !1414, !1418}
!1398 = !DILocalVariable(name: "cpu", arg: 1, scope: !1394, file: !2, line: 921, type: !208)
!1399 = !DILocalVariable(name: "iovad", arg: 2, scope: !1394, file: !2, line: 921, type: !307)
!1400 = !DILocalVariable(name: "cpu_rcache", scope: !1394, file: !2, line: 923, type: !251)
!1401 = !DILocalVariable(name: "rcache", scope: !1394, file: !2, line: 924, type: !323)
!1402 = !DILocalVariable(name: "flags", scope: !1394, file: !2, line: 925, type: !233)
!1403 = !DILocalVariable(name: "i", scope: !1394, file: !2, line: 926, type: !13)
!1404 = !DILocalVariable(name: "__vpp_verify", scope: !1405, file: !2, line: 930, type: !1410)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 930, column: 16)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !2, line: 930, column: 16)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !2, line: 928, column: 50)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !2, line: 928, column: 2)
!1409 = distinct !DILexicalBlock(scope: !1394, file: !2, line: 928, column: 2)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1412 = !DILocalVariable(name: "__ptr", scope: !1413, file: !2, line: 930, type: !233)
!1413 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 930, column: 16)
!1414 = !DILocalVariable(name: "__dummy", scope: !1415, file: !2, line: 931, type: !233)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !2, line: 931, column: 3)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !2, line: 931, column: 3)
!1417 = distinct !DILexicalBlock(scope: !1407, file: !2, line: 931, column: 3)
!1418 = !DILocalVariable(name: "__dummy2", scope: !1415, file: !2, line: 931, type: !233)
!1419 = !DILocation(line: 921, column: 48, scope: !1394)
!1420 = !DILocation(line: 921, column: 73, scope: !1394)
!1421 = !DILocation(line: 923, column: 2, scope: !1394)
!1422 = !DILocation(line: 923, column: 26, scope: !1394)
!1423 = !DILocation(line: 924, column: 2, scope: !1394)
!1424 = !DILocation(line: 924, column: 22, scope: !1394)
!1425 = !DILocation(line: 925, column: 2, scope: !1394)
!1426 = !DILocation(line: 925, column: 16, scope: !1394)
!1427 = !DILocation(line: 926, column: 2, scope: !1394)
!1428 = !DILocation(line: 926, column: 6, scope: !1394)
!1429 = !DILocation(line: 928, column: 9, scope: !1409)
!1430 = !DILocation(line: 928, column: 7, scope: !1409)
!1431 = !DILocation(line: 928, column: 14, scope: !1408)
!1432 = !DILocation(line: 928, column: 16, scope: !1408)
!1433 = !DILocation(line: 928, column: 2, scope: !1409)
!1434 = !DILocation(line: 929, column: 13, scope: !1407)
!1435 = !DILocation(line: 929, column: 20, scope: !1407)
!1436 = !DILocation(line: 929, column: 28, scope: !1407)
!1437 = !DILocation(line: 929, column: 10, scope: !1407)
!1438 = !DILocation(line: 930, column: 16, scope: !1406)
!1439 = !DILocation(line: 930, column: 16, scope: !1405)
!1440 = !DILocation(line: 930, column: 16, scope: !1413)
!1441 = !DILocation(line: 930, column: 14, scope: !1407)
!1442 = !DILocation(line: 931, column: 3, scope: !1407)
!1443 = !DILocation(line: 931, column: 3, scope: !1417)
!1444 = !DILocation(line: 931, column: 3, scope: !1415)
!1445 = !DILocation(line: 931, column: 3, scope: !1416)
!1446 = !DILocation(line: 932, column: 27, scope: !1407)
!1447 = !DILocation(line: 932, column: 39, scope: !1407)
!1448 = !DILocation(line: 932, column: 47, scope: !1407)
!1449 = !DILocation(line: 932, column: 3, scope: !1407)
!1450 = !DILocation(line: 933, column: 27, scope: !1407)
!1451 = !DILocation(line: 933, column: 39, scope: !1407)
!1452 = !DILocation(line: 933, column: 45, scope: !1407)
!1453 = !DILocation(line: 933, column: 3, scope: !1407)
!1454 = !DILocation(line: 934, column: 27, scope: !1407)
!1455 = !DILocation(line: 934, column: 39, scope: !1407)
!1456 = !DILocation(line: 934, column: 45, scope: !1407)
!1457 = !DILocation(line: 934, column: 3, scope: !1407)
!1458 = !DILocation(line: 935, column: 2, scope: !1407)
!1459 = !DILocation(line: 928, column: 45, scope: !1408)
!1460 = !DILocation(line: 928, column: 2, scope: !1408)
!1461 = distinct !{!1461, !1433, !1462, !926, !927}
!1462 = !DILocation(line: 935, column: 2, scope: !1409)
!1463 = !DILocation(line: 936, column: 1, scope: !1394)
!1464 = distinct !DISubprogram(name: "free_global_cached_iovas", scope: !2, file: !2, line: 941, type: !1465, scopeLine: 942, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1467)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{null, !307}
!1467 = !{!1468, !1469, !1470, !1471, !1472, !1473, !1480}
!1468 = !DILocalVariable(name: "iovad", arg: 1, scope: !1464, file: !2, line: 941, type: !307)
!1469 = !DILocalVariable(name: "rcache", scope: !1464, file: !2, line: 943, type: !323)
!1470 = !DILocalVariable(name: "flags", scope: !1464, file: !2, line: 944, type: !233)
!1471 = !DILocalVariable(name: "i", scope: !1464, file: !2, line: 945, type: !13)
!1472 = !DILocalVariable(name: "j", scope: !1464, file: !2, line: 945, type: !13)
!1473 = !DILocalVariable(name: "__dummy", scope: !1474, file: !2, line: 949, type: !233)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !2, line: 949, column: 3)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !2, line: 949, column: 3)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !2, line: 949, column: 3)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !2, line: 947, column: 50)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !2, line: 947, column: 2)
!1479 = distinct !DILexicalBlock(scope: !1464, file: !2, line: 947, column: 2)
!1480 = !DILocalVariable(name: "__dummy2", scope: !1474, file: !2, line: 949, type: !233)
!1481 = !DILocation(line: 941, column: 58, scope: !1464)
!1482 = !DILocation(line: 943, column: 2, scope: !1464)
!1483 = !DILocation(line: 943, column: 22, scope: !1464)
!1484 = !DILocation(line: 944, column: 2, scope: !1464)
!1485 = !DILocation(line: 944, column: 16, scope: !1464)
!1486 = !DILocation(line: 945, column: 2, scope: !1464)
!1487 = !DILocation(line: 945, column: 6, scope: !1464)
!1488 = !DILocation(line: 945, column: 9, scope: !1464)
!1489 = !DILocation(line: 947, column: 9, scope: !1479)
!1490 = !DILocation(line: 947, column: 7, scope: !1479)
!1491 = !DILocation(line: 947, column: 14, scope: !1478)
!1492 = !DILocation(line: 947, column: 16, scope: !1478)
!1493 = !DILocation(line: 947, column: 2, scope: !1479)
!1494 = !DILocation(line: 948, column: 13, scope: !1477)
!1495 = !DILocation(line: 948, column: 20, scope: !1477)
!1496 = !DILocation(line: 948, column: 28, scope: !1477)
!1497 = !DILocation(line: 948, column: 10, scope: !1477)
!1498 = !DILocation(line: 949, column: 3, scope: !1477)
!1499 = !DILocation(line: 949, column: 3, scope: !1476)
!1500 = !DILocation(line: 949, column: 3, scope: !1474)
!1501 = !DILocation(line: 949, column: 3, scope: !1475)
!1502 = !DILocation(line: 950, column: 10, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1477, file: !2, line: 950, column: 3)
!1504 = !DILocation(line: 950, column: 8, scope: !1503)
!1505 = !DILocation(line: 950, column: 15, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1503, file: !2, line: 950, column: 3)
!1507 = !DILocation(line: 950, column: 19, scope: !1506)
!1508 = !DILocation(line: 950, column: 27, scope: !1506)
!1509 = !DILocation(line: 950, column: 17, scope: !1506)
!1510 = !DILocation(line: 950, column: 3, scope: !1503)
!1511 = !DILocation(line: 951, column: 28, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1506, file: !2, line: 950, column: 44)
!1513 = !DILocation(line: 951, column: 36, scope: !1512)
!1514 = !DILocation(line: 951, column: 42, scope: !1512)
!1515 = !DILocation(line: 951, column: 46, scope: !1512)
!1516 = !DILocation(line: 951, column: 4, scope: !1512)
!1517 = !DILocation(line: 952, column: 23, scope: !1512)
!1518 = !DILocation(line: 952, column: 31, scope: !1512)
!1519 = !DILocation(line: 952, column: 37, scope: !1512)
!1520 = !DILocation(line: 952, column: 4, scope: !1512)
!1521 = !DILocation(line: 953, column: 3, scope: !1512)
!1522 = !DILocation(line: 950, column: 39, scope: !1506)
!1523 = !DILocation(line: 950, column: 3, scope: !1506)
!1524 = distinct !{!1524, !1510, !1525, !926, !927}
!1525 = !DILocation(line: 953, column: 3, scope: !1503)
!1526 = !DILocation(line: 954, column: 3, scope: !1477)
!1527 = !DILocation(line: 954, column: 11, scope: !1477)
!1528 = !DILocation(line: 954, column: 22, scope: !1477)
!1529 = !DILocation(line: 955, column: 27, scope: !1477)
!1530 = !DILocation(line: 955, column: 35, scope: !1477)
!1531 = !DILocation(line: 955, column: 41, scope: !1477)
!1532 = !DILocation(line: 955, column: 3, scope: !1477)
!1533 = !DILocation(line: 956, column: 2, scope: !1477)
!1534 = !DILocation(line: 947, column: 45, scope: !1478)
!1535 = !DILocation(line: 947, column: 2, scope: !1478)
!1536 = distinct !{!1536, !1493, !1537, !926, !927}
!1537 = !DILocation(line: 956, column: 2, scope: !1479)
!1538 = !DILocation(line: 957, column: 1, scope: !1464)
!1539 = distinct !DISubprogram(name: "free_iova_fast", scope: !2, file: !2, line: 487, type: !453, scopeLine: 488, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1540)
!1540 = !{!1541, !1542, !1543}
!1541 = !DILocalVariable(name: "iovad", arg: 1, scope: !1539, file: !2, line: 487, type: !307)
!1542 = !DILocalVariable(name: "pfn", arg: 2, scope: !1539, file: !2, line: 487, type: !233)
!1543 = !DILocalVariable(name: "size", arg: 3, scope: !1539, file: !2, line: 487, type: !233)
!1544 = !DILocation(line: 487, column: 36, scope: !1539)
!1545 = !DILocation(line: 487, column: 57, scope: !1539)
!1546 = !DILocation(line: 487, column: 76, scope: !1539)
!1547 = !DILocation(line: 489, column: 25, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1539, file: !2, line: 489, column: 6)
!1549 = !DILocation(line: 489, column: 32, scope: !1548)
!1550 = !DILocation(line: 489, column: 37, scope: !1548)
!1551 = !DILocation(line: 489, column: 6, scope: !1548)
!1552 = !DILocation(line: 489, column: 6, scope: !1539)
!1553 = !DILocation(line: 490, column: 3, scope: !1548)
!1554 = !DILocation(line: 492, column: 12, scope: !1539)
!1555 = !DILocation(line: 492, column: 19, scope: !1539)
!1556 = !DILocation(line: 492, column: 2, scope: !1539)
!1557 = !DILocation(line: 493, column: 1, scope: !1539)
!1558 = distinct !DISubprogram(name: "iova_rcache_insert", scope: !2, file: !2, line: 823, type: !1559, scopeLine: 825, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1561)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!538, !307, !233, !233}
!1561 = !{!1562, !1563, !1564, !1565}
!1562 = !DILocalVariable(name: "iovad", arg: 1, scope: !1558, file: !2, line: 823, type: !307)
!1563 = !DILocalVariable(name: "pfn", arg: 2, scope: !1558, file: !2, line: 823, type: !233)
!1564 = !DILocalVariable(name: "size", arg: 3, scope: !1558, file: !2, line: 824, type: !233)
!1565 = !DILocalVariable(name: "log_size", scope: !1558, file: !2, line: 826, type: !208)
!1566 = !DILocation(line: 823, column: 52, scope: !1558)
!1567 = !DILocation(line: 823, column: 73, scope: !1558)
!1568 = !DILocation(line: 824, column: 25, scope: !1558)
!1569 = !DILocation(line: 826, column: 2, scope: !1558)
!1570 = !DILocation(line: 826, column: 15, scope: !1558)
!1571 = !DILocation(line: 826, column: 26, scope: !1558)
!1572 = !DILocation(line: 828, column: 6, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1558, file: !2, line: 828, column: 6)
!1574 = !DILocation(line: 828, column: 15, scope: !1573)
!1575 = !DILocation(line: 828, column: 6, scope: !1558)
!1576 = !DILocation(line: 829, column: 3, scope: !1573)
!1577 = !DILocation(line: 831, column: 30, scope: !1558)
!1578 = !DILocation(line: 831, column: 38, scope: !1558)
!1579 = !DILocation(line: 831, column: 45, scope: !1558)
!1580 = !DILocation(line: 831, column: 53, scope: !1558)
!1581 = !DILocation(line: 831, column: 64, scope: !1558)
!1582 = !DILocation(line: 831, column: 9, scope: !1558)
!1583 = !DILocation(line: 831, column: 2, scope: !1558)
!1584 = !DILocation(line: 832, column: 1, scope: !1558)
!1585 = distinct !DISubprogram(name: "put_iova_domain", scope: !2, file: !2, line: 508, type: !1465, scopeLine: 509, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1586)
!1586 = !{!1587, !1588, !1589, !1590, !1593, !1595, !1599}
!1587 = !DILocalVariable(name: "iovad", arg: 1, scope: !1585, file: !2, line: 508, type: !307)
!1588 = !DILocalVariable(name: "iova", scope: !1585, file: !2, line: 510, type: !236)
!1589 = !DILocalVariable(name: "tmp", scope: !1585, file: !2, line: 510, type: !236)
!1590 = !DILocalVariable(name: "____ptr", scope: !1591, file: !2, line: 515, type: !246)
!1591 = distinct !DILexicalBlock(scope: !1592, file: !2, line: 515, column: 2)
!1592 = distinct !DILexicalBlock(scope: !1585, file: !2, line: 515, column: 2)
!1593 = !DILocalVariable(name: "__mptr", scope: !1594, file: !2, line: 515, type: !223)
!1594 = distinct !DILexicalBlock(scope: !1591, file: !2, line: 515, column: 2)
!1595 = !DILocalVariable(name: "____ptr", scope: !1596, file: !2, line: 515, type: !246)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !2, line: 515, column: 2)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !2, line: 515, column: 2)
!1598 = distinct !DILexicalBlock(scope: !1592, file: !2, line: 515, column: 2)
!1599 = !DILocalVariable(name: "__mptr", scope: !1600, file: !2, line: 515, type: !223)
!1600 = distinct !DILexicalBlock(scope: !1596, file: !2, line: 515, column: 2)
!1601 = !DILocation(line: 508, column: 42, scope: !1585)
!1602 = !DILocation(line: 510, column: 2, scope: !1585)
!1603 = !DILocation(line: 510, column: 15, scope: !1585)
!1604 = !DILocation(line: 510, column: 22, scope: !1585)
!1605 = !DILocation(line: 512, column: 6, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1585, file: !2, line: 512, column: 6)
!1607 = !DILocation(line: 512, column: 13, scope: !1606)
!1608 = !DILocation(line: 512, column: 6, scope: !1585)
!1609 = !DILocation(line: 513, column: 28, scope: !1606)
!1610 = !DILocation(line: 513, column: 3, scope: !1606)
!1611 = !DILocation(line: 515, column: 2, scope: !1591)
!1612 = !DILocation(line: 515, column: 2, scope: !1594)
!1613 = !DILocation(line: 515, column: 2, scope: !1592)
!1614 = !DILocation(line: 515, column: 2, scope: !1598)
!1615 = !DILocation(line: 515, column: 2, scope: !1596)
!1616 = !DILocation(line: 515, column: 2, scope: !1600)
!1617 = !DILocation(line: 515, column: 2, scope: !1597)
!1618 = !DILocation(line: 0, scope: !1598)
!1619 = !DILocation(line: 516, column: 17, scope: !1598)
!1620 = !DILocation(line: 516, column: 3, scope: !1598)
!1621 = distinct !{!1621, !1613, !1622, !926, !927}
!1622 = !DILocation(line: 516, column: 21, scope: !1592)
!1623 = !DILocation(line: 517, column: 1, scope: !1585)
!1624 = distinct !DISubprogram(name: "iova_domain_free_rcaches", scope: !2, file: !2, line: 496, type: !1465, scopeLine: 497, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1625)
!1625 = !{!1626}
!1626 = !DILocalVariable(name: "iovad", arg: 1, scope: !1624, file: !2, line: 496, type: !307)
!1627 = !DILocation(line: 496, column: 58, scope: !1624)
!1628 = !DILocation(line: 499, column: 11, scope: !1624)
!1629 = !DILocation(line: 499, column: 18, scope: !1624)
!1630 = !DILocation(line: 498, column: 2, scope: !1624)
!1631 = !DILocation(line: 500, column: 20, scope: !1624)
!1632 = !DILocation(line: 500, column: 2, scope: !1624)
!1633 = !DILocation(line: 501, column: 1, scope: !1624)
!1634 = !DISubprogram(name: "rb_first_postorder", scope: !574, file: !574, line: 50, type: !1635, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!246, !1637}
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !312)
!1639 = !DISubprogram(name: "rb_next_postorder", scope: !574, file: !574, line: 51, type: !1640, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!246, !1642}
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !241)
!1644 = distinct !DISubprogram(name: "reserve_iova", scope: !2, file: !2, line: 577, type: !1645, scopeLine: 579, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1647)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!236, !307, !233, !233}
!1647 = !{!1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1658, !1661, !1665, !1666}
!1648 = !DILocalVariable(name: "iovad", arg: 1, scope: !1644, file: !2, line: 577, type: !307)
!1649 = !DILocalVariable(name: "pfn_lo", arg: 2, scope: !1644, file: !2, line: 578, type: !233)
!1650 = !DILocalVariable(name: "pfn_hi", arg: 3, scope: !1644, file: !2, line: 578, type: !233)
!1651 = !DILocalVariable(name: "node", scope: !1644, file: !2, line: 580, type: !246)
!1652 = !DILocalVariable(name: "flags", scope: !1644, file: !2, line: 581, type: !233)
!1653 = !DILocalVariable(name: "iova", scope: !1644, file: !2, line: 582, type: !236)
!1654 = !DILocalVariable(name: "overlap", scope: !1644, file: !2, line: 583, type: !208)
!1655 = !DILocalVariable(name: "__ret_warn_on", scope: !1656, file: !2, line: 586, type: !13)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !2, line: 586, column: 6)
!1657 = distinct !DILexicalBlock(scope: !1644, file: !2, line: 586, column: 6)
!1658 = !DILocalVariable(name: "__flags", scope: !1659, file: !2, line: 586, type: !13)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !2, line: 586, column: 6)
!1660 = distinct !DILexicalBlock(scope: !1656, file: !2, line: 586, column: 6)
!1661 = !DILocalVariable(name: "__dummy", scope: !1662, file: !2, line: 589, type: !233)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !2, line: 589, column: 2)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !2, line: 589, column: 2)
!1664 = distinct !DILexicalBlock(scope: !1644, file: !2, line: 589, column: 2)
!1665 = !DILocalVariable(name: "__dummy2", scope: !1662, file: !2, line: 589, type: !233)
!1666 = !DILabel(scope: !1644, name: "finish", file: !2, line: 607)
!1667 = !DILocation(line: 577, column: 34, scope: !1644)
!1668 = !DILocation(line: 578, column: 16, scope: !1644)
!1669 = !DILocation(line: 578, column: 38, scope: !1644)
!1670 = !DILocation(line: 580, column: 2, scope: !1644)
!1671 = !DILocation(line: 580, column: 18, scope: !1644)
!1672 = !DILocation(line: 581, column: 2, scope: !1644)
!1673 = !DILocation(line: 581, column: 16, scope: !1644)
!1674 = !DILocation(line: 582, column: 2, scope: !1644)
!1675 = !DILocation(line: 582, column: 15, scope: !1644)
!1676 = !DILocation(line: 583, column: 2, scope: !1644)
!1677 = !DILocation(line: 583, column: 15, scope: !1644)
!1678 = !DILocation(line: 586, column: 6, scope: !1656)
!1679 = !DILocation(line: 586, column: 6, scope: !1660)
!1680 = !DILocation(line: 586, column: 6, scope: !1659)
!1681 = !DILocation(line: 586, column: 6, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1659, file: !2, line: 586, column: 6)
!1683 = !DILocation(line: 586, column: 6, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1659, file: !2, line: 586, column: 6)
!1685 = !{i64 2154635842, i64 2154635871, i64 2154635917, i64 2154635975, i64 2154636029, i64 2154636083, i64 2154636138, i64 2154636169, i64 2154636477, i64 2154636483, i64 2154636530, i64 2154636553, i64 2154636579}
!1686 = !DILocation(line: 586, column: 6, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1659, file: !2, line: 586, column: 6)
!1688 = !DILocation(line: 586, column: 6, scope: !1657)
!1689 = !DILocation(line: 586, column: 6, scope: !1644)
!1690 = !DILocation(line: 587, column: 3, scope: !1657)
!1691 = !DILocation(line: 589, column: 2, scope: !1644)
!1692 = !DILocation(line: 589, column: 2, scope: !1664)
!1693 = !DILocation(line: 589, column: 2, scope: !1662)
!1694 = !DILocation(line: 589, column: 2, scope: !1663)
!1695 = !DILocation(line: 590, column: 24, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1644, file: !2, line: 590, column: 2)
!1697 = !DILocation(line: 590, column: 31, scope: !1696)
!1698 = !DILocation(line: 590, column: 14, scope: !1696)
!1699 = !DILocation(line: 590, column: 12, scope: !1696)
!1700 = !DILocation(line: 590, column: 7, scope: !1696)
!1701 = !DILocation(line: 590, column: 40, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1696, file: !2, line: 590, column: 2)
!1703 = !DILocation(line: 590, column: 2, scope: !1696)
!1704 = !DILocation(line: 591, column: 26, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1706, file: !2, line: 591, column: 7)
!1706 = distinct !DILexicalBlock(scope: !1702, file: !2, line: 590, column: 68)
!1707 = !DILocation(line: 591, column: 32, scope: !1705)
!1708 = !DILocation(line: 591, column: 40, scope: !1705)
!1709 = !DILocation(line: 591, column: 7, scope: !1705)
!1710 = !DILocation(line: 591, column: 7, scope: !1706)
!1711 = !DILocation(line: 592, column: 19, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1705, file: !2, line: 591, column: 49)
!1713 = !DILocation(line: 592, column: 11, scope: !1712)
!1714 = !DILocation(line: 592, column: 9, scope: !1712)
!1715 = !DILocation(line: 593, column: 27, scope: !1712)
!1716 = !DILocation(line: 593, column: 4, scope: !1712)
!1717 = !DILocation(line: 594, column: 9, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1712, file: !2, line: 594, column: 8)
!1719 = !DILocation(line: 594, column: 19, scope: !1718)
!1720 = !DILocation(line: 594, column: 25, scope: !1718)
!1721 = !DILocation(line: 594, column: 16, scope: !1718)
!1722 = !DILocation(line: 594, column: 33, scope: !1718)
!1723 = !DILocation(line: 595, column: 6, scope: !1718)
!1724 = !DILocation(line: 595, column: 16, scope: !1718)
!1725 = !DILocation(line: 595, column: 22, scope: !1718)
!1726 = !DILocation(line: 595, column: 13, scope: !1718)
!1727 = !DILocation(line: 594, column: 8, scope: !1712)
!1728 = !DILocation(line: 596, column: 5, scope: !1718)
!1729 = !DILocation(line: 597, column: 12, scope: !1712)
!1730 = !DILocation(line: 599, column: 3, scope: !1712)
!1731 = !DILocation(line: 599, column: 14, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1705, file: !2, line: 599, column: 14)
!1733 = !DILocation(line: 599, column: 14, scope: !1705)
!1734 = !DILocation(line: 600, column: 5, scope: !1732)
!1735 = !DILocation(line: 601, column: 2, scope: !1706)
!1736 = !DILocation(line: 590, column: 61, scope: !1702)
!1737 = !DILocation(line: 590, column: 53, scope: !1702)
!1738 = !DILocation(line: 590, column: 51, scope: !1702)
!1739 = !DILocation(line: 590, column: 2, scope: !1702)
!1740 = distinct !{!1740, !1703, !1741, !926, !927}
!1741 = !DILocation(line: 601, column: 2, scope: !1696)
!1742 = !DILocation(line: 606, column: 28, scope: !1644)
!1743 = !DILocation(line: 606, column: 35, scope: !1644)
!1744 = !DILocation(line: 606, column: 43, scope: !1644)
!1745 = !DILocation(line: 606, column: 9, scope: !1644)
!1746 = !DILocation(line: 606, column: 7, scope: !1644)
!1747 = !DILocation(line: 606, column: 2, scope: !1644)
!1748 = !DILocation(line: 607, column: 1, scope: !1644)
!1749 = !DILocation(line: 609, column: 26, scope: !1644)
!1750 = !DILocation(line: 609, column: 33, scope: !1644)
!1751 = !DILocation(line: 609, column: 51, scope: !1644)
!1752 = !DILocation(line: 609, column: 2, scope: !1644)
!1753 = !DILocation(line: 610, column: 9, scope: !1644)
!1754 = !DILocation(line: 610, column: 2, scope: !1644)
!1755 = !DILocation(line: 611, column: 1, scope: !1644)
!1756 = !DISubprogram(name: "rb_first", scope: !574, file: !574, line: 46, type: !1635, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1757 = distinct !DISubprogram(name: "__is_range_overlap", scope: !2, file: !2, line: 521, type: !1758, scopeLine: 523, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1760)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!13, !246, !233, !233}
!1760 = !{!1761, !1762, !1763, !1764}
!1761 = !DILocalVariable(name: "node", arg: 1, scope: !1757, file: !2, line: 521, type: !246)
!1762 = !DILocalVariable(name: "pfn_lo", arg: 2, scope: !1757, file: !2, line: 522, type: !233)
!1763 = !DILocalVariable(name: "pfn_hi", arg: 3, scope: !1757, file: !2, line: 522, type: !233)
!1764 = !DILocalVariable(name: "iova", scope: !1757, file: !2, line: 524, type: !236)
!1765 = !DILocation(line: 521, column: 36, scope: !1757)
!1766 = !DILocation(line: 522, column: 16, scope: !1757)
!1767 = !DILocation(line: 522, column: 38, scope: !1757)
!1768 = !DILocation(line: 524, column: 2, scope: !1757)
!1769 = !DILocation(line: 524, column: 15, scope: !1757)
!1770 = !DILocation(line: 524, column: 30, scope: !1757)
!1771 = !DILocation(line: 524, column: 22, scope: !1757)
!1772 = !DILocation(line: 526, column: 7, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1757, file: !2, line: 526, column: 6)
!1774 = !DILocation(line: 526, column: 17, scope: !1773)
!1775 = !DILocation(line: 526, column: 23, scope: !1773)
!1776 = !DILocation(line: 526, column: 14, scope: !1773)
!1777 = !DILocation(line: 526, column: 31, scope: !1773)
!1778 = !DILocation(line: 526, column: 35, scope: !1773)
!1779 = !DILocation(line: 526, column: 45, scope: !1773)
!1780 = !DILocation(line: 526, column: 51, scope: !1773)
!1781 = !DILocation(line: 526, column: 42, scope: !1773)
!1782 = !DILocation(line: 526, column: 6, scope: !1757)
!1783 = !DILocation(line: 527, column: 3, scope: !1773)
!1784 = !DILocation(line: 528, column: 2, scope: !1757)
!1785 = !DILocation(line: 529, column: 1, scope: !1757)
!1786 = distinct !DISubprogram(name: "to_iova", scope: !2, file: !2, line: 46, type: !1787, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1789)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!236, !246}
!1789 = !{!1790, !1791}
!1790 = !DILocalVariable(name: "node", arg: 1, scope: !1786, file: !2, line: 46, type: !246)
!1791 = !DILocalVariable(name: "__mptr", scope: !1792, file: !2, line: 48, type: !223)
!1792 = distinct !DILexicalBlock(scope: !1786, file: !2, line: 48, column: 9)
!1793 = !DILocation(line: 46, column: 45, scope: !1786)
!1794 = !DILocation(line: 48, column: 9, scope: !1792)
!1795 = !DILocation(line: 48, column: 9, scope: !1786)
!1796 = !DILocation(line: 48, column: 2, scope: !1786)
!1797 = distinct !DISubprogram(name: "__adjust_overlap_range", scope: !2, file: !2, line: 559, type: !1798, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1801)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{null, !236, !1800, !1800}
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!1801 = !{!1802, !1803, !1804}
!1802 = !DILocalVariable(name: "iova", arg: 1, scope: !1797, file: !2, line: 559, type: !236)
!1803 = !DILocalVariable(name: "pfn_lo", arg: 2, scope: !1797, file: !2, line: 560, type: !1800)
!1804 = !DILocalVariable(name: "pfn_hi", arg: 3, scope: !1797, file: !2, line: 560, type: !1800)
!1805 = !DILocation(line: 559, column: 37, scope: !1797)
!1806 = !DILocation(line: 560, column: 17, scope: !1797)
!1807 = !DILocation(line: 560, column: 40, scope: !1797)
!1808 = !DILocation(line: 562, column: 7, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1797, file: !2, line: 562, column: 6)
!1810 = !DILocation(line: 562, column: 6, scope: !1809)
!1811 = !DILocation(line: 562, column: 16, scope: !1809)
!1812 = !DILocation(line: 562, column: 22, scope: !1809)
!1813 = !DILocation(line: 562, column: 14, scope: !1809)
!1814 = !DILocation(line: 562, column: 6, scope: !1797)
!1815 = !DILocation(line: 563, column: 19, scope: !1809)
!1816 = !DILocation(line: 563, column: 18, scope: !1809)
!1817 = !DILocation(line: 563, column: 3, scope: !1809)
!1818 = !DILocation(line: 563, column: 9, scope: !1809)
!1819 = !DILocation(line: 563, column: 16, scope: !1809)
!1820 = !DILocation(line: 564, column: 7, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1797, file: !2, line: 564, column: 6)
!1822 = !DILocation(line: 564, column: 6, scope: !1821)
!1823 = !DILocation(line: 564, column: 16, scope: !1821)
!1824 = !DILocation(line: 564, column: 22, scope: !1821)
!1825 = !DILocation(line: 564, column: 14, scope: !1821)
!1826 = !DILocation(line: 564, column: 6, scope: !1797)
!1827 = !DILocation(line: 565, column: 13, scope: !1821)
!1828 = !DILocation(line: 565, column: 19, scope: !1821)
!1829 = !DILocation(line: 565, column: 26, scope: !1821)
!1830 = !DILocation(line: 565, column: 4, scope: !1821)
!1831 = !DILocation(line: 565, column: 11, scope: !1821)
!1832 = !DILocation(line: 565, column: 3, scope: !1821)
!1833 = !DILocation(line: 566, column: 1, scope: !1797)
!1834 = !DISubprogram(name: "rb_next", scope: !574, file: !574, line: 44, type: !1640, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1835 = distinct !DISubprogram(name: "__insert_new_range", scope: !2, file: !2, line: 546, type: !1645, scopeLine: 548, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1836)
!1836 = !{!1837, !1838, !1839, !1840}
!1837 = !DILocalVariable(name: "iovad", arg: 1, scope: !1835, file: !2, line: 546, type: !307)
!1838 = !DILocalVariable(name: "pfn_lo", arg: 2, scope: !1835, file: !2, line: 547, type: !233)
!1839 = !DILocalVariable(name: "pfn_hi", arg: 3, scope: !1835, file: !2, line: 547, type: !233)
!1840 = !DILocalVariable(name: "iova", scope: !1835, file: !2, line: 549, type: !236)
!1841 = !DILocation(line: 546, column: 40, scope: !1835)
!1842 = !DILocation(line: 547, column: 16, scope: !1835)
!1843 = !DILocation(line: 547, column: 38, scope: !1835)
!1844 = !DILocation(line: 549, column: 2, scope: !1835)
!1845 = !DILocation(line: 549, column: 15, scope: !1835)
!1846 = !DILocation(line: 551, column: 29, scope: !1835)
!1847 = !DILocation(line: 551, column: 37, scope: !1835)
!1848 = !DILocation(line: 551, column: 9, scope: !1835)
!1849 = !DILocation(line: 551, column: 7, scope: !1835)
!1850 = !DILocation(line: 552, column: 6, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1835, file: !2, line: 552, column: 6)
!1852 = !DILocation(line: 552, column: 6, scope: !1835)
!1853 = !DILocation(line: 553, column: 23, scope: !1851)
!1854 = !DILocation(line: 553, column: 30, scope: !1851)
!1855 = !DILocation(line: 553, column: 38, scope: !1851)
!1856 = !DILocation(line: 553, column: 3, scope: !1851)
!1857 = !DILocation(line: 555, column: 9, scope: !1835)
!1858 = !DILocation(line: 556, column: 1, scope: !1835)
!1859 = !DILocation(line: 555, column: 2, scope: !1835)
!1860 = distinct !DISubprogram(name: "iova_domain_init_rcaches", scope: !2, file: !2, line: 720, type: !1861, scopeLine: 721, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1863)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!13, !307}
!1863 = !{!1864, !1865, !1866, !1867, !1868, !1872, !1873, !1879, !1881}
!1864 = !DILocalVariable(name: "iovad", arg: 1, scope: !1860, file: !2, line: 720, type: !307)
!1865 = !DILocalVariable(name: "cpu", scope: !1860, file: !2, line: 722, type: !208)
!1866 = !DILocalVariable(name: "i", scope: !1860, file: !2, line: 723, type: !13)
!1867 = !DILocalVariable(name: "ret", scope: !1860, file: !2, line: 723, type: !13)
!1868 = !DILocalVariable(name: "cpu_rcache", scope: !1869, file: !2, line: 732, type: !251)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !2, line: 731, column: 50)
!1870 = distinct !DILexicalBlock(scope: !1871, file: !2, line: 731, column: 2)
!1871 = distinct !DILexicalBlock(scope: !1860, file: !2, line: 731, column: 2)
!1872 = !DILocalVariable(name: "rcache", scope: !1869, file: !2, line: 733, type: !323)
!1873 = !DILocalVariable(name: "__vpp_verify", scope: !1874, file: !2, line: 745, type: !1410)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !2, line: 745, column: 17)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !2, line: 745, column: 17)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !2, line: 744, column: 30)
!1877 = distinct !DILexicalBlock(scope: !1878, file: !2, line: 744, column: 3)
!1878 = distinct !DILexicalBlock(scope: !1869, file: !2, line: 744, column: 3)
!1879 = !DILocalVariable(name: "__ptr", scope: !1880, file: !2, line: 745, type: !233)
!1880 = distinct !DILexicalBlock(scope: !1875, file: !2, line: 745, column: 17)
!1881 = !DILabel(scope: !1860, name: "out_err", file: !2, line: 763)
!1882 = !DILocation(line: 720, column: 50, scope: !1860)
!1883 = !DILocation(line: 722, column: 2, scope: !1860)
!1884 = !DILocation(line: 722, column: 15, scope: !1860)
!1885 = !DILocation(line: 723, column: 2, scope: !1860)
!1886 = !DILocation(line: 723, column: 6, scope: !1860)
!1887 = !DILocation(line: 723, column: 9, scope: !1860)
!1888 = !DILocation(line: 725, column: 19, scope: !1860)
!1889 = !DILocation(line: 725, column: 2, scope: !1860)
!1890 = !DILocation(line: 725, column: 9, scope: !1860)
!1891 = !DILocation(line: 725, column: 17, scope: !1860)
!1892 = !DILocation(line: 728, column: 7, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1860, file: !2, line: 728, column: 6)
!1894 = !DILocation(line: 728, column: 14, scope: !1893)
!1895 = !DILocation(line: 728, column: 6, scope: !1860)
!1896 = !DILocation(line: 729, column: 3, scope: !1893)
!1897 = !DILocation(line: 731, column: 9, scope: !1871)
!1898 = !DILocation(line: 731, column: 7, scope: !1871)
!1899 = !DILocation(line: 731, column: 14, scope: !1870)
!1900 = !DILocation(line: 731, column: 16, scope: !1870)
!1901 = !DILocation(line: 731, column: 2, scope: !1871)
!1902 = !DILocation(line: 732, column: 3, scope: !1869)
!1903 = !DILocation(line: 732, column: 27, scope: !1869)
!1904 = !DILocation(line: 733, column: 3, scope: !1869)
!1905 = !DILocation(line: 733, column: 23, scope: !1869)
!1906 = !DILocation(line: 735, column: 13, scope: !1869)
!1907 = !DILocation(line: 735, column: 20, scope: !1869)
!1908 = !DILocation(line: 735, column: 28, scope: !1869)
!1909 = !DILocation(line: 735, column: 10, scope: !1869)
!1910 = !DILocation(line: 736, column: 3, scope: !1869)
!1911 = !DILocation(line: 736, column: 3, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1869, file: !2, line: 736, column: 3)
!1913 = !DILocation(line: 737, column: 3, scope: !1869)
!1914 = !DILocation(line: 737, column: 11, scope: !1869)
!1915 = !DILocation(line: 737, column: 22, scope: !1869)
!1916 = !DILocation(line: 739, column: 12, scope: !1869)
!1917 = !DILocation(line: 738, column: 25, scope: !1869)
!1918 = !DILocation(line: 738, column: 3, scope: !1869)
!1919 = !DILocation(line: 738, column: 11, scope: !1869)
!1920 = !DILocation(line: 738, column: 23, scope: !1869)
!1921 = !DILocation(line: 740, column: 8, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1869, file: !2, line: 740, column: 7)
!1923 = !DILocation(line: 740, column: 16, scope: !1922)
!1924 = !DILocation(line: 740, column: 7, scope: !1869)
!1925 = !DILocation(line: 741, column: 8, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1922, file: !2, line: 740, column: 29)
!1927 = !DILocation(line: 742, column: 4, scope: !1926)
!1928 = !DILocation(line: 744, column: 3, scope: !1878)
!1929 = !DILocation(line: 744, column: 3, scope: !1877)
!1930 = !DILocation(line: 745, column: 17, scope: !1875)
!1931 = !DILocation(line: 745, column: 17, scope: !1874)
!1932 = !DILocation(line: 745, column: 17, scope: !1880)
!1933 = !DILocation(line: 745, column: 15, scope: !1876)
!1934 = !DILocation(line: 747, column: 4, scope: !1876)
!1935 = !DILocation(line: 747, column: 4, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1876, file: !2, line: 747, column: 4)
!1937 = !DILocation(line: 748, column: 25, scope: !1876)
!1938 = !DILocation(line: 748, column: 4, scope: !1876)
!1939 = !DILocation(line: 748, column: 16, scope: !1876)
!1940 = !DILocation(line: 748, column: 23, scope: !1876)
!1941 = !DILocation(line: 749, column: 23, scope: !1876)
!1942 = !DILocation(line: 749, column: 4, scope: !1876)
!1943 = !DILocation(line: 749, column: 16, scope: !1876)
!1944 = !DILocation(line: 749, column: 21, scope: !1876)
!1945 = !DILocation(line: 750, column: 9, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1876, file: !2, line: 750, column: 8)
!1947 = !DILocation(line: 750, column: 21, scope: !1946)
!1948 = !DILocation(line: 750, column: 28, scope: !1946)
!1949 = !DILocation(line: 750, column: 32, scope: !1946)
!1950 = !DILocation(line: 750, column: 44, scope: !1946)
!1951 = !DILocation(line: 750, column: 8, scope: !1876)
!1952 = !DILocation(line: 751, column: 9, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1946, file: !2, line: 750, column: 50)
!1954 = !DILocation(line: 752, column: 5, scope: !1953)
!1955 = !DILocation(line: 754, column: 3, scope: !1876)
!1956 = distinct !{!1956, !1928, !1957, !926, !927}
!1957 = !DILocation(line: 754, column: 3, scope: !1878)
!1958 = !DILocation(line: 755, column: 2, scope: !1870)
!1959 = !DILocation(line: 755, column: 2, scope: !1869)
!1960 = !DILocation(line: 731, column: 45, scope: !1870)
!1961 = !DILocation(line: 731, column: 2, scope: !1870)
!1962 = distinct !{!1962, !1901, !1963, !926, !927}
!1963 = !DILocation(line: 755, column: 2, scope: !1871)
!1964 = !DILocation(line: 758, column: 14, scope: !1860)
!1965 = !DILocation(line: 758, column: 21, scope: !1860)
!1966 = !DILocation(line: 757, column: 8, scope: !1860)
!1967 = !DILocation(line: 757, column: 6, scope: !1860)
!1968 = !DILocation(line: 759, column: 6, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1860, file: !2, line: 759, column: 6)
!1970 = !DILocation(line: 759, column: 6, scope: !1860)
!1971 = !DILocation(line: 760, column: 3, scope: !1969)
!1972 = !DILocation(line: 761, column: 2, scope: !1860)
!1973 = !DILocation(line: 763, column: 1, scope: !1860)
!1974 = !DILocation(line: 764, column: 20, scope: !1860)
!1975 = !DILocation(line: 764, column: 2, scope: !1860)
!1976 = !DILocation(line: 765, column: 9, scope: !1860)
!1977 = !DILocation(line: 765, column: 2, scope: !1860)
!1978 = !DILocation(line: 766, column: 1, scope: !1860)
!1979 = distinct !DISubprogram(name: "kcalloc", scope: !213, file: !213, line: 666, type: !1980, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1986)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!223, !1982, !1982, !250}
!1982 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !225, line: 61, baseType: !1983)
!1983 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1984, line: 72, baseType: !1985)
!1984 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1985 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1984, line: 16, baseType: !233)
!1986 = !{!1987, !1988, !1989}
!1987 = !DILocalVariable(name: "n", arg: 1, scope: !1979, file: !213, line: 666, type: !1982)
!1988 = !DILocalVariable(name: "size", arg: 2, scope: !1979, file: !213, line: 666, type: !1982)
!1989 = !DILocalVariable(name: "flags", arg: 3, scope: !1979, file: !213, line: 666, type: !250)
!1990 = !DILocation(line: 666, column: 55, scope: !1979)
!1991 = !DILocation(line: 666, column: 65, scope: !1979)
!1992 = !DILocation(line: 666, column: 77, scope: !1979)
!1993 = !DILocation(line: 668, column: 23, scope: !1979)
!1994 = !DILocation(line: 668, column: 26, scope: !1979)
!1995 = !DILocation(line: 668, column: 32, scope: !1979)
!1996 = !DILocation(line: 668, column: 38, scope: !1979)
!1997 = !DILocation(line: 668, column: 9, scope: !1979)
!1998 = !DILocation(line: 668, column: 2, scope: !1979)
!1999 = !DISubprogram(name: "__alloc_percpu", scope: !2000, file: !2000, line: 133, type: !2001, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2000 = !DIFile(filename: "./include/linux/percpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5b443d1a4673980cdbec5f10c6cbbaa")
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!223, !1982, !1982}
!2003 = distinct !DISubprogram(name: "iova_magazine_alloc", scope: !2, file: !2, line: 648, type: !2004, scopeLine: 649, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2006)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!298, !250}
!2006 = !{!2007, !2008}
!2007 = !DILocalVariable(name: "flags", arg: 1, scope: !2003, file: !2, line: 648, type: !250)
!2008 = !DILocalVariable(name: "mag", scope: !2003, file: !2, line: 650, type: !298)
!2009 = !DILocation(line: 648, column: 56, scope: !2003)
!2010 = !DILocation(line: 650, column: 2, scope: !2003)
!2011 = !DILocation(line: 650, column: 24, scope: !2003)
!2012 = !DILocation(line: 652, column: 30, scope: !2003)
!2013 = !DILocation(line: 652, column: 8, scope: !2003)
!2014 = !DILocation(line: 652, column: 6, scope: !2003)
!2015 = !DILocation(line: 653, column: 6, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2003, file: !2, line: 653, column: 6)
!2017 = !DILocation(line: 653, column: 6, scope: !2003)
!2018 = !DILocation(line: 654, column: 3, scope: !2016)
!2019 = !DILocation(line: 654, column: 8, scope: !2016)
!2020 = !DILocation(line: 654, column: 13, scope: !2016)
!2021 = !DILocation(line: 656, column: 9, scope: !2003)
!2022 = !DILocation(line: 657, column: 1, scope: !2003)
!2023 = !DILocation(line: 656, column: 2, scope: !2003)
!2024 = distinct !DISubprogram(name: "cpuhp_state_add_instance_nocalls", scope: !12, file: !12, line: 410, type: !2025, scopeLine: 412, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2027)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!13, !11, !337}
!2027 = !{!2028, !2029}
!2028 = !DILocalVariable(name: "state", arg: 1, scope: !2024, file: !12, line: 410, type: !11)
!2029 = !DILocalVariable(name: "node", arg: 2, scope: !2024, file: !12, line: 411, type: !337)
!2030 = !DILocation(line: 410, column: 69, scope: !2024)
!2031 = !DILocation(line: 411, column: 29, scope: !2024)
!2032 = !DILocation(line: 413, column: 36, scope: !2024)
!2033 = !DILocation(line: 413, column: 43, scope: !2024)
!2034 = !DILocation(line: 413, column: 9, scope: !2024)
!2035 = !DILocation(line: 413, column: 2, scope: !2024)
!2036 = distinct !DISubprogram(name: "free_iova_rcaches", scope: !2, file: !2, line: 893, type: !1465, scopeLine: 894, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2037)
!2037 = !{!2038, !2039, !2040, !2041, !2042, !2043, !2044, !2053}
!2038 = !DILocalVariable(name: "iovad", arg: 1, scope: !2036, file: !2, line: 893, type: !307)
!2039 = !DILocalVariable(name: "rcache", scope: !2036, file: !2, line: 895, type: !323)
!2040 = !DILocalVariable(name: "cpu_rcache", scope: !2036, file: !2, line: 896, type: !251)
!2041 = !DILocalVariable(name: "cpu", scope: !2036, file: !2, line: 897, type: !208)
!2042 = !DILocalVariable(name: "i", scope: !2036, file: !2, line: 898, type: !13)
!2043 = !DILocalVariable(name: "j", scope: !2036, file: !2, line: 898, type: !13)
!2044 = !DILocalVariable(name: "__vpp_verify", scope: !2045, file: !2, line: 905, type: !1410)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !2, line: 905, column: 17)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !2, line: 905, column: 17)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !2, line: 904, column: 30)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !2, line: 904, column: 3)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !2, line: 904, column: 3)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !2, line: 900, column: 50)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !2, line: 900, column: 2)
!2052 = distinct !DILexicalBlock(scope: !2036, file: !2, line: 900, column: 2)
!2053 = !DILocalVariable(name: "__ptr", scope: !2054, file: !2, line: 905, type: !233)
!2054 = distinct !DILexicalBlock(scope: !2046, file: !2, line: 905, column: 17)
!2055 = !DILocation(line: 893, column: 51, scope: !2036)
!2056 = !DILocation(line: 895, column: 2, scope: !2036)
!2057 = !DILocation(line: 895, column: 22, scope: !2036)
!2058 = !DILocation(line: 896, column: 2, scope: !2036)
!2059 = !DILocation(line: 896, column: 26, scope: !2036)
!2060 = !DILocation(line: 897, column: 2, scope: !2036)
!2061 = !DILocation(line: 897, column: 15, scope: !2036)
!2062 = !DILocation(line: 898, column: 2, scope: !2036)
!2063 = !DILocation(line: 898, column: 6, scope: !2036)
!2064 = !DILocation(line: 898, column: 9, scope: !2036)
!2065 = !DILocation(line: 900, column: 9, scope: !2052)
!2066 = !DILocation(line: 900, column: 7, scope: !2052)
!2067 = !DILocation(line: 900, column: 14, scope: !2051)
!2068 = !DILocation(line: 900, column: 16, scope: !2051)
!2069 = !DILocation(line: 900, column: 2, scope: !2052)
!2070 = !DILocation(line: 901, column: 13, scope: !2050)
!2071 = !DILocation(line: 901, column: 20, scope: !2050)
!2072 = !DILocation(line: 901, column: 28, scope: !2050)
!2073 = !DILocation(line: 901, column: 10, scope: !2050)
!2074 = !DILocation(line: 902, column: 8, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2050, file: !2, line: 902, column: 7)
!2076 = !DILocation(line: 902, column: 16, scope: !2075)
!2077 = !DILocation(line: 902, column: 7, scope: !2050)
!2078 = !DILocation(line: 903, column: 4, scope: !2075)
!2079 = !DILocation(line: 904, column: 3, scope: !2049)
!2080 = !DILocation(line: 904, column: 3, scope: !2048)
!2081 = !DILocation(line: 905, column: 17, scope: !2046)
!2082 = !DILocation(line: 905, column: 17, scope: !2045)
!2083 = !DILocation(line: 905, column: 17, scope: !2054)
!2084 = !DILocation(line: 905, column: 15, scope: !2047)
!2085 = !DILocation(line: 906, column: 23, scope: !2047)
!2086 = !DILocation(line: 906, column: 35, scope: !2047)
!2087 = !DILocation(line: 906, column: 4, scope: !2047)
!2088 = !DILocation(line: 907, column: 23, scope: !2047)
!2089 = !DILocation(line: 907, column: 35, scope: !2047)
!2090 = !DILocation(line: 907, column: 4, scope: !2047)
!2091 = !DILocation(line: 908, column: 3, scope: !2047)
!2092 = distinct !{!2092, !2079, !2093, !926, !927}
!2093 = !DILocation(line: 908, column: 3, scope: !2049)
!2094 = !DILocation(line: 909, column: 15, scope: !2050)
!2095 = !DILocation(line: 909, column: 23, scope: !2050)
!2096 = !DILocation(line: 909, column: 3, scope: !2050)
!2097 = !DILocation(line: 910, column: 10, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2050, file: !2, line: 910, column: 3)
!2099 = !DILocation(line: 910, column: 8, scope: !2098)
!2100 = !DILocation(line: 910, column: 15, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2098, file: !2, line: 910, column: 3)
!2102 = !DILocation(line: 910, column: 19, scope: !2101)
!2103 = !DILocation(line: 910, column: 27, scope: !2101)
!2104 = !DILocation(line: 910, column: 17, scope: !2101)
!2105 = !DILocation(line: 910, column: 3, scope: !2098)
!2106 = !DILocation(line: 911, column: 23, scope: !2101)
!2107 = !DILocation(line: 911, column: 31, scope: !2101)
!2108 = !DILocation(line: 911, column: 37, scope: !2101)
!2109 = !DILocation(line: 911, column: 4, scope: !2101)
!2110 = !DILocation(line: 910, column: 39, scope: !2101)
!2111 = !DILocation(line: 910, column: 3, scope: !2101)
!2112 = distinct !{!2112, !2105, !2113, !926, !927}
!2113 = !DILocation(line: 911, column: 39, scope: !2098)
!2114 = !DILocation(line: 912, column: 2, scope: !2050)
!2115 = !DILocation(line: 900, column: 45, scope: !2051)
!2116 = !DILocation(line: 900, column: 2, scope: !2051)
!2117 = distinct !{!2117, !2069, !2118, !926, !927}
!2118 = !DILocation(line: 912, column: 2, scope: !2052)
!2119 = !DILocation(line: 914, column: 8, scope: !2036)
!2120 = !DILocation(line: 914, column: 15, scope: !2036)
!2121 = !DILocation(line: 914, column: 2, scope: !2036)
!2122 = !DILocation(line: 915, column: 2, scope: !2036)
!2123 = !DILocation(line: 915, column: 9, scope: !2036)
!2124 = !DILocation(line: 915, column: 17, scope: !2036)
!2125 = !DILocation(line: 916, column: 1, scope: !2036)
!2126 = distinct !DISubprogram(name: "variable__ffs", scope: !2127, file: !2127, line: 250, type: !1315, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2128)
!2127 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!2128 = !{!2129}
!2129 = !DILocalVariable(name: "word", arg: 1, scope: !2126, file: !2127, line: 250, type: !233)
!2130 = !DILocation(line: 250, column: 66, scope: !2126)
!2131 = !DILocation(line: 254, column: 11, scope: !2126)
!2132 = !DILocation(line: 252, column: 2, scope: !2126)
!2133 = !{i64 322022}
!2134 = !DILocation(line: 255, column: 9, scope: !2126)
!2135 = !DILocation(line: 255, column: 2, scope: !2126)
!2136 = !DISubprogram(name: "__cpuhp_setup_state", scope: !12, file: !12, line: 263, type: !2137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!13, !11, !655, !538, !2139, !2139, !538}
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!13, !208}
!2142 = !DISubprogram(name: "__cpuhp_remove_state", scope: !12, file: !12, line: 434, type: !2143, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{null, !11, !538}
!2145 = distinct !DISubprogram(name: "kmem_cache_zalloc", scope: !213, file: !213, line: 709, type: !2146, scopeLine: 710, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2148)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!223, !404, !250}
!2148 = !{!2149, !2150}
!2149 = !DILocalVariable(name: "k", arg: 1, scope: !2145, file: !213, line: 709, type: !404)
!2150 = !DILocalVariable(name: "flags", arg: 2, scope: !2145, file: !213, line: 709, type: !250)
!2151 = !DILocation(line: 709, column: 58, scope: !2145)
!2152 = !DILocation(line: 709, column: 67, scope: !2145)
!2153 = !DILocation(line: 711, column: 26, scope: !2145)
!2154 = !DILocation(line: 711, column: 29, scope: !2145)
!2155 = !DILocation(line: 711, column: 35, scope: !2145)
!2156 = !DILocation(line: 711, column: 9, scope: !2145)
!2157 = !DILocation(line: 711, column: 2, scope: !2145)
!2158 = !DISubprogram(name: "kmem_cache_alloc", scope: !213, file: !213, line: 500, type: !2146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2159 = distinct !DISubprogram(name: "fls_long", scope: !2160, file: !2160, line: 204, type: !2161, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2163)
!2160 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!208, !233}
!2163 = !{!2164}
!2164 = !DILocalVariable(name: "l", arg: 1, scope: !2159, file: !2160, line: 204, type: !233)
!2165 = !DILocation(line: 204, column: 47, scope: !2159)
!2166 = !DILocation(line: 208, column: 15, scope: !2159)
!2167 = !DILocation(line: 208, column: 9, scope: !2159)
!2168 = !DILocation(line: 208, column: 2, scope: !2159)
!2169 = distinct !DISubprogram(name: "__get_cached_rbnode", scope: !2, file: !2, line: 77, type: !2170, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2172)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!246, !307, !233}
!2172 = !{!2173, !2174}
!2173 = !DILocalVariable(name: "iovad", arg: 1, scope: !2169, file: !2, line: 77, type: !307)
!2174 = !DILocalVariable(name: "limit_pfn", arg: 2, scope: !2169, file: !2, line: 77, type: !233)
!2175 = !DILocation(line: 77, column: 41, scope: !2169)
!2176 = !DILocation(line: 77, column: 62, scope: !2169)
!2177 = !DILocation(line: 79, column: 6, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2169, file: !2, line: 79, column: 6)
!2179 = !DILocation(line: 79, column: 19, scope: !2178)
!2180 = !DILocation(line: 79, column: 26, scope: !2178)
!2181 = !DILocation(line: 79, column: 16, scope: !2178)
!2182 = !DILocation(line: 79, column: 6, scope: !2169)
!2183 = !DILocation(line: 80, column: 10, scope: !2178)
!2184 = !DILocation(line: 80, column: 17, scope: !2178)
!2185 = !DILocation(line: 80, column: 3, scope: !2178)
!2186 = !DILocation(line: 82, column: 9, scope: !2169)
!2187 = !DILocation(line: 82, column: 16, scope: !2169)
!2188 = !DILocation(line: 82, column: 2, scope: !2169)
!2189 = !DILocation(line: 83, column: 1, scope: !2169)
!2190 = !DISubprogram(name: "rb_prev", scope: !574, file: !574, line: 45, type: !1640, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2191 = distinct !DISubprogram(name: "iova_find_limit", scope: !2, file: !2, line: 113, type: !2170, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2192)
!2192 = !{!2193, !2194, !2195, !2196, !2197}
!2193 = !DILocalVariable(name: "iovad", arg: 1, scope: !2191, file: !2, line: 113, type: !307)
!2194 = !DILocalVariable(name: "limit_pfn", arg: 2, scope: !2191, file: !2, line: 113, type: !233)
!2195 = !DILocalVariable(name: "node", scope: !2191, file: !2, line: 115, type: !246)
!2196 = !DILocalVariable(name: "next", scope: !2191, file: !2, line: 115, type: !246)
!2197 = !DILabel(scope: !2191, name: "search_left", file: !2, line: 131)
!2198 = !DILocation(line: 113, column: 60, scope: !2191)
!2199 = !DILocation(line: 113, column: 81, scope: !2191)
!2200 = !DILocation(line: 115, column: 2, scope: !2191)
!2201 = !DILocation(line: 115, column: 18, scope: !2191)
!2202 = !DILocation(line: 115, column: 25, scope: !2191)
!2203 = !DILocation(line: 124, column: 6, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2191, file: !2, line: 124, column: 6)
!2205 = !DILocation(line: 124, column: 18, scope: !2204)
!2206 = !DILocation(line: 124, column: 25, scope: !2204)
!2207 = !DILocation(line: 124, column: 16, scope: !2204)
!2208 = !DILocation(line: 124, column: 6, scope: !2191)
!2209 = !DILocation(line: 125, column: 11, scope: !2204)
!2210 = !DILocation(line: 125, column: 18, scope: !2204)
!2211 = !DILocation(line: 125, column: 25, scope: !2204)
!2212 = !DILocation(line: 125, column: 3, scope: !2204)
!2213 = !DILocation(line: 127, column: 9, scope: !2191)
!2214 = !DILocation(line: 127, column: 16, scope: !2191)
!2215 = !DILocation(line: 127, column: 23, scope: !2191)
!2216 = !DILocation(line: 127, column: 7, scope: !2191)
!2217 = !DILocation(line: 128, column: 2, scope: !2191)
!2218 = !DILocation(line: 128, column: 17, scope: !2191)
!2219 = !DILocation(line: 128, column: 9, scope: !2191)
!2220 = !DILocation(line: 128, column: 24, scope: !2191)
!2221 = !DILocation(line: 128, column: 33, scope: !2191)
!2222 = !DILocation(line: 128, column: 31, scope: !2191)
!2223 = !DILocation(line: 129, column: 10, scope: !2191)
!2224 = !DILocation(line: 129, column: 16, scope: !2191)
!2225 = !DILocation(line: 129, column: 8, scope: !2191)
!2226 = distinct !{!2226, !2217, !2224, !926, !927}
!2227 = !DILocation(line: 131, column: 1, scope: !2191)
!2228 = !DILocation(line: 132, column: 2, scope: !2191)
!2229 = !DILocation(line: 132, column: 9, scope: !2191)
!2230 = !DILocation(line: 132, column: 15, scope: !2191)
!2231 = !DILocation(line: 132, column: 23, scope: !2191)
!2232 = !DILocation(line: 132, column: 34, scope: !2191)
!2233 = !DILocation(line: 132, column: 40, scope: !2191)
!2234 = !DILocation(line: 132, column: 26, scope: !2191)
!2235 = !DILocation(line: 132, column: 50, scope: !2191)
!2236 = !DILocation(line: 132, column: 60, scope: !2191)
!2237 = !DILocation(line: 132, column: 57, scope: !2191)
!2238 = !DILocation(line: 0, scope: !2191)
!2239 = !DILocation(line: 133, column: 10, scope: !2191)
!2240 = !DILocation(line: 133, column: 16, scope: !2191)
!2241 = !DILocation(line: 133, column: 8, scope: !2191)
!2242 = distinct !{!2242, !2228, !2240, !926, !927}
!2243 = !DILocation(line: 135, column: 7, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2191, file: !2, line: 135, column: 6)
!2245 = !DILocation(line: 135, column: 13, scope: !2244)
!2246 = !DILocation(line: 135, column: 6, scope: !2191)
!2247 = !DILocation(line: 136, column: 10, scope: !2244)
!2248 = !DILocation(line: 136, column: 3, scope: !2244)
!2249 = !DILocation(line: 138, column: 9, scope: !2191)
!2250 = !DILocation(line: 138, column: 15, scope: !2191)
!2251 = !DILocation(line: 138, column: 7, scope: !2191)
!2252 = !DILocation(line: 139, column: 2, scope: !2191)
!2253 = !DILocation(line: 139, column: 9, scope: !2191)
!2254 = !DILocation(line: 139, column: 15, scope: !2191)
!2255 = !DILocation(line: 140, column: 10, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2191, file: !2, line: 139, column: 25)
!2257 = !DILocation(line: 140, column: 16, scope: !2256)
!2258 = !DILocation(line: 140, column: 8, scope: !2256)
!2259 = !DILocation(line: 141, column: 15, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2256, file: !2, line: 141, column: 7)
!2261 = !DILocation(line: 141, column: 7, scope: !2260)
!2262 = !DILocation(line: 141, column: 22, scope: !2260)
!2263 = !DILocation(line: 141, column: 32, scope: !2260)
!2264 = !DILocation(line: 141, column: 29, scope: !2260)
!2265 = !DILocation(line: 141, column: 7, scope: !2256)
!2266 = !DILocation(line: 142, column: 11, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2260, file: !2, line: 141, column: 43)
!2268 = !DILocation(line: 142, column: 9, scope: !2267)
!2269 = !DILocation(line: 143, column: 4, scope: !2267)
!2270 = distinct !{!2270, !2252, !2271, !926, !927}
!2271 = !DILocation(line: 145, column: 2, scope: !2191)
!2272 = !DILocation(line: 147, column: 9, scope: !2191)
!2273 = !DILocation(line: 147, column: 2, scope: !2191)
!2274 = !DILocation(line: 148, column: 1, scope: !2191)
!2275 = distinct !DISubprogram(name: "iova_insert_rbtree", scope: !2, file: !2, line: 152, type: !2276, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2278)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{null, !603, !236, !246}
!2278 = !{!2279, !2280, !2281, !2282, !2283, !2284, !2286, !2291}
!2279 = !DILocalVariable(name: "root", arg: 1, scope: !2275, file: !2, line: 152, type: !603)
!2280 = !DILocalVariable(name: "iova", arg: 2, scope: !2275, file: !2, line: 152, type: !236)
!2281 = !DILocalVariable(name: "start", arg: 3, scope: !2275, file: !2, line: 153, type: !246)
!2282 = !DILocalVariable(name: "new", scope: !2275, file: !2, line: 155, type: !577)
!2283 = !DILocalVariable(name: "parent", scope: !2275, file: !2, line: 155, type: !246)
!2284 = !DILocalVariable(name: "this", scope: !2285, file: !2, line: 160, type: !236)
!2285 = distinct !DILexicalBlock(scope: !2275, file: !2, line: 159, column: 15)
!2286 = !DILocalVariable(name: "__ret_warn_on", scope: !2287, file: !2, line: 169, type: !13)
!2287 = distinct !DILexicalBlock(scope: !2288, file: !2, line: 169, column: 4)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !2, line: 168, column: 8)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !2, line: 166, column: 12)
!2290 = distinct !DILexicalBlock(scope: !2285, file: !2, line: 164, column: 7)
!2291 = !DILocalVariable(name: "__flags", scope: !2292, file: !2, line: 169, type: !13)
!2292 = distinct !DILexicalBlock(scope: !2293, file: !2, line: 169, column: 4)
!2293 = distinct !DILexicalBlock(scope: !2287, file: !2, line: 169, column: 4)
!2294 = !DILocation(line: 152, column: 36, scope: !2275)
!2295 = !DILocation(line: 152, column: 55, scope: !2275)
!2296 = !DILocation(line: 153, column: 22, scope: !2275)
!2297 = !DILocation(line: 155, column: 2, scope: !2275)
!2298 = !DILocation(line: 155, column: 19, scope: !2275)
!2299 = !DILocation(line: 155, column: 25, scope: !2275)
!2300 = !DILocation(line: 157, column: 9, scope: !2275)
!2301 = !DILocation(line: 157, column: 8, scope: !2275)
!2302 = !DILocation(line: 157, column: 29, scope: !2275)
!2303 = !DILocation(line: 157, column: 35, scope: !2275)
!2304 = !DILocation(line: 157, column: 6, scope: !2275)
!2305 = !DILocation(line: 159, column: 2, scope: !2275)
!2306 = !DILocation(line: 159, column: 10, scope: !2275)
!2307 = !DILocation(line: 159, column: 9, scope: !2275)
!2308 = !DILocation(line: 160, column: 3, scope: !2285)
!2309 = !DILocation(line: 160, column: 16, scope: !2285)
!2310 = !DILocation(line: 160, column: 32, scope: !2285)
!2311 = !DILocation(line: 160, column: 31, scope: !2285)
!2312 = !DILocation(line: 160, column: 23, scope: !2285)
!2313 = !DILocation(line: 162, column: 13, scope: !2285)
!2314 = !DILocation(line: 162, column: 12, scope: !2285)
!2315 = !DILocation(line: 162, column: 10, scope: !2285)
!2316 = !DILocation(line: 164, column: 7, scope: !2290)
!2317 = !DILocation(line: 164, column: 13, scope: !2290)
!2318 = !DILocation(line: 164, column: 22, scope: !2290)
!2319 = !DILocation(line: 164, column: 28, scope: !2290)
!2320 = !DILocation(line: 164, column: 20, scope: !2290)
!2321 = !DILocation(line: 164, column: 7, scope: !2285)
!2322 = !DILocation(line: 165, column: 14, scope: !2290)
!2323 = !DILocation(line: 165, column: 13, scope: !2290)
!2324 = !DILocation(line: 165, column: 20, scope: !2290)
!2325 = !DILocation(line: 165, column: 8, scope: !2290)
!2326 = !DILocation(line: 165, column: 4, scope: !2290)
!2327 = !DILocation(line: 166, column: 12, scope: !2289)
!2328 = !DILocation(line: 166, column: 18, scope: !2289)
!2329 = !DILocation(line: 166, column: 27, scope: !2289)
!2330 = !DILocation(line: 166, column: 33, scope: !2289)
!2331 = !DILocation(line: 166, column: 25, scope: !2289)
!2332 = !DILocation(line: 166, column: 12, scope: !2290)
!2333 = !DILocation(line: 167, column: 14, scope: !2289)
!2334 = !DILocation(line: 167, column: 13, scope: !2289)
!2335 = !DILocation(line: 167, column: 20, scope: !2289)
!2336 = !DILocation(line: 167, column: 8, scope: !2289)
!2337 = !DILocation(line: 167, column: 4, scope: !2289)
!2338 = !DILocation(line: 169, column: 4, scope: !2287)
!2339 = !DILocation(line: 169, column: 4, scope: !2293)
!2340 = !DILocation(line: 169, column: 4, scope: !2292)
!2341 = !DILocation(line: 169, column: 4, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2292, file: !2, line: 169, column: 4)
!2343 = !DILocation(line: 169, column: 4, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2292, file: !2, line: 169, column: 4)
!2345 = !{i64 2154594727, i64 2154594756, i64 2154594802, i64 2154594860, i64 2154594914, i64 2154594968, i64 2154595023, i64 2154595054, i64 2154595362, i64 2154595368, i64 2154595415, i64 2154595438, i64 2154595464}
!2346 = !DILocation(line: 169, column: 4, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2292, file: !2, line: 169, column: 4)
!2348 = !DILocation(line: 169, column: 4, scope: !2288)
!2349 = !DILocation(line: 170, column: 4, scope: !2288)
!2350 = !DILocation(line: 172, column: 2, scope: !2275)
!2351 = distinct !{!2351, !2305, !2350, !926, !927}
!2352 = !DILocation(line: 174, column: 16, scope: !2275)
!2353 = !DILocation(line: 174, column: 22, scope: !2275)
!2354 = !DILocation(line: 174, column: 28, scope: !2275)
!2355 = !DILocation(line: 174, column: 36, scope: !2275)
!2356 = !DILocation(line: 174, column: 2, scope: !2275)
!2357 = !DILocation(line: 175, column: 19, scope: !2275)
!2358 = !DILocation(line: 175, column: 25, scope: !2275)
!2359 = !DILocation(line: 175, column: 31, scope: !2275)
!2360 = !DILocation(line: 175, column: 2, scope: !2275)
!2361 = !DILocation(line: 176, column: 1, scope: !2275)
!2362 = distinct !DISubprogram(name: "__cached_rbnode_insert_update", scope: !2, file: !2, line: 86, type: !1127, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2363)
!2363 = !{!2364, !2365}
!2364 = !DILocalVariable(name: "iovad", arg: 1, scope: !2362, file: !2, line: 86, type: !307)
!2365 = !DILocalVariable(name: "new", arg: 2, scope: !2362, file: !2, line: 86, type: !236)
!2366 = !DILocation(line: 86, column: 51, scope: !2362)
!2367 = !DILocation(line: 86, column: 71, scope: !2362)
!2368 = !DILocation(line: 88, column: 6, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2362, file: !2, line: 88, column: 6)
!2370 = !DILocation(line: 88, column: 11, scope: !2369)
!2371 = !DILocation(line: 88, column: 20, scope: !2369)
!2372 = !DILocation(line: 88, column: 27, scope: !2369)
!2373 = !DILocation(line: 88, column: 18, scope: !2369)
!2374 = !DILocation(line: 88, column: 6, scope: !2362)
!2375 = !DILocation(line: 89, column: 27, scope: !2369)
!2376 = !DILocation(line: 89, column: 32, scope: !2369)
!2377 = !DILocation(line: 89, column: 3, scope: !2369)
!2378 = !DILocation(line: 89, column: 10, scope: !2369)
!2379 = !DILocation(line: 89, column: 24, scope: !2369)
!2380 = !DILocation(line: 91, column: 25, scope: !2369)
!2381 = !DILocation(line: 91, column: 30, scope: !2369)
!2382 = !DILocation(line: 91, column: 3, scope: !2369)
!2383 = !DILocation(line: 91, column: 10, scope: !2369)
!2384 = !DILocation(line: 91, column: 22, scope: !2369)
!2385 = !DILocation(line: 92, column: 1, scope: !2362)
!2386 = distinct !DISubprogram(name: "fls64", scope: !2127, file: !2127, line: 401, type: !2387, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2389)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!13, !1305}
!2389 = !{!2390, !2391}
!2390 = !DILocalVariable(name: "x", arg: 1, scope: !2386, file: !2127, line: 401, type: !1305)
!2391 = !DILocalVariable(name: "bitpos", scope: !2386, file: !2127, line: 403, type: !13)
!2392 = !DILocation(line: 401, column: 40, scope: !2386)
!2393 = !DILocation(line: 403, column: 2, scope: !2386)
!2394 = !DILocation(line: 403, column: 6, scope: !2386)
!2395 = !DILocation(line: 409, column: 2, scope: !2386)
!2396 = !DILocation(line: 411, column: 14, scope: !2386)
!2397 = !{i64 326050}
!2398 = !DILocation(line: 412, column: 9, scope: !2386)
!2399 = !DILocation(line: 412, column: 16, scope: !2386)
!2400 = !DILocation(line: 413, column: 1, scope: !2386)
!2401 = !DILocation(line: 412, column: 2, scope: !2386)
!2402 = !DISubprogram(name: "kmem_cache_free", scope: !213, file: !213, line: 503, type: !2403, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{null, !404, !223}
!2405 = distinct !DISubprogram(name: "queued_spin_is_locked", scope: !2406, file: !2406, line: 51, type: !2407, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2410)
!2406 = !DIFile(filename: "./include/asm-generic/qspinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9ee2071dbdb30625b016b6622681cc28")
!2407 = !DISubroutineType(types: !2408)
!2408 = !{!13, !2409}
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!2410 = !{!2411}
!2411 = !DILocalVariable(name: "lock", arg: 1, scope: !2405, file: !2406, line: 51, type: !2409)
!2412 = !DILocation(line: 51, column: 68, scope: !2405)
!2413 = !DILocation(line: 57, column: 22, scope: !2405)
!2414 = !DILocation(line: 57, column: 28, scope: !2405)
!2415 = !DILocation(line: 57, column: 9, scope: !2405)
!2416 = !DILocation(line: 57, column: 2, scope: !2405)
!2417 = distinct !DISubprogram(name: "atomic_read", scope: !2418, file: !2418, line: 30, type: !2419, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2423)
!2418 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!13, !2421}
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!2423 = !{!2424}
!2424 = !DILocalVariable(name: "v", arg: 1, scope: !2417, file: !2418, line: 30, type: !2421)
!2425 = !DILocation(line: 30, column: 29, scope: !2417)
!2426 = !DILocation(line: 32, column: 25, scope: !2417)
!2427 = !DILocation(line: 32, column: 2, scope: !2417)
!2428 = !DILocation(line: 33, column: 25, scope: !2417)
!2429 = !DILocation(line: 33, column: 9, scope: !2417)
!2430 = !DILocation(line: 33, column: 2, scope: !2417)
!2431 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !2432, file: !2432, line: 66, type: !2433, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2438)
!2432 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!2433 = !DISubroutineType(types: !2434)
!2434 = !{null, !2435, !1982}
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2437)
!2437 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2438 = !{!2439, !2440}
!2439 = !DILocalVariable(name: "v", arg: 1, scope: !2431, file: !2432, line: 66, type: !2435)
!2440 = !DILocalVariable(name: "size", arg: 2, scope: !2431, file: !2432, line: 66, type: !1982)
!2441 = !DILocation(line: 66, column: 73, scope: !2431)
!2442 = !DILocation(line: 66, column: 83, scope: !2431)
!2443 = !DILocation(line: 68, column: 19, scope: !2431)
!2444 = !DILocation(line: 68, column: 22, scope: !2431)
!2445 = !DILocation(line: 68, column: 2, scope: !2431)
!2446 = !DILocation(line: 69, column: 2, scope: !2431)
!2447 = !DILocation(line: 70, column: 1, scope: !2431)
!2448 = distinct !DISubprogram(name: "raw_atomic_read", scope: !2449, file: !2449, line: 442, type: !2419, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2450)
!2449 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!2450 = !{!2451}
!2451 = !DILocalVariable(name: "v", arg: 1, scope: !2448, file: !2449, line: 442, type: !2421)
!2452 = !DILocation(line: 442, column: 33, scope: !2448)
!2453 = !DILocation(line: 444, column: 26, scope: !2448)
!2454 = !DILocation(line: 444, column: 9, scope: !2448)
!2455 = !DILocation(line: 444, column: 2, scope: !2448)
!2456 = distinct !DISubprogram(name: "kasan_check_read", scope: !2457, file: !2457, line: 40, type: !2458, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2460)
!2457 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!538, !2435, !208}
!2460 = !{!2461, !2462}
!2461 = !DILocalVariable(name: "p", arg: 1, scope: !2456, file: !2457, line: 40, type: !2435)
!2462 = !DILocalVariable(name: "size", arg: 2, scope: !2456, file: !2457, line: 40, type: !208)
!2463 = !DILocation(line: 40, column: 58, scope: !2456)
!2464 = !DILocation(line: 40, column: 74, scope: !2456)
!2465 = !DILocation(line: 42, column: 2, scope: !2456)
!2466 = distinct !DISubprogram(name: "kcsan_check_access", scope: !2467, file: !2467, line: 229, type: !2468, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2470)
!2467 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!2468 = !DISubroutineType(types: !2469)
!2469 = !{null, !2435, !1982, !13}
!2470 = !{!2471, !2472, !2473}
!2471 = !DILocalVariable(name: "ptr", arg: 1, scope: !2466, file: !2467, line: 229, type: !2435)
!2472 = !DILocalVariable(name: "size", arg: 2, scope: !2466, file: !2467, line: 229, type: !1982)
!2473 = !DILocalVariable(name: "type", arg: 3, scope: !2466, file: !2467, line: 230, type: !13)
!2474 = !DILocation(line: 229, column: 60, scope: !2466)
!2475 = !DILocation(line: 229, column: 72, scope: !2466)
!2476 = !DILocation(line: 230, column: 15, scope: !2466)
!2477 = !DILocation(line: 230, column: 23, scope: !2466)
!2478 = distinct !DISubprogram(name: "arch_atomic_read", scope: !2479, file: !2479, line: 17, type: !2419, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2480)
!2479 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!2480 = !{!2481}
!2481 = !DILocalVariable(name: "v", arg: 1, scope: !2478, file: !2479, line: 17, type: !2421)
!2482 = !DILocation(line: 17, column: 61, scope: !2478)
!2483 = !DILocation(line: 23, column: 9, scope: !2478)
!2484 = !DILocation(line: 23, column: 2, scope: !2478)
!2485 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !1049, file: !1049, line: 43, type: !2486, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{null, !557, !233}
!2488 = distinct !DISubprogram(name: "__cached_rbnode_delete_update", scope: !2, file: !2, line: 95, type: !1127, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2489)
!2489 = !{!2490, !2491, !2492}
!2490 = !DILocalVariable(name: "iovad", arg: 1, scope: !2488, file: !2, line: 95, type: !307)
!2491 = !DILocalVariable(name: "free", arg: 2, scope: !2488, file: !2, line: 95, type: !236)
!2492 = !DILocalVariable(name: "cached_iova", scope: !2488, file: !2, line: 97, type: !236)
!2493 = !DILocation(line: 95, column: 51, scope: !2488)
!2494 = !DILocation(line: 95, column: 71, scope: !2488)
!2495 = !DILocation(line: 97, column: 2, scope: !2488)
!2496 = !DILocation(line: 97, column: 15, scope: !2488)
!2497 = !DILocation(line: 99, column: 24, scope: !2488)
!2498 = !DILocation(line: 99, column: 31, scope: !2488)
!2499 = !DILocation(line: 99, column: 16, scope: !2488)
!2500 = !DILocation(line: 99, column: 14, scope: !2488)
!2501 = !DILocation(line: 100, column: 6, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2488, file: !2, line: 100, column: 6)
!2503 = !DILocation(line: 100, column: 14, scope: !2502)
!2504 = !DILocation(line: 100, column: 11, scope: !2502)
!2505 = !DILocation(line: 100, column: 26, scope: !2502)
!2506 = !DILocation(line: 101, column: 7, scope: !2502)
!2507 = !DILocation(line: 101, column: 13, scope: !2502)
!2508 = !DILocation(line: 101, column: 22, scope: !2502)
!2509 = !DILocation(line: 101, column: 29, scope: !2502)
!2510 = !DILocation(line: 101, column: 20, scope: !2502)
!2511 = !DILocation(line: 101, column: 43, scope: !2502)
!2512 = !DILocation(line: 102, column: 7, scope: !2502)
!2513 = !DILocation(line: 102, column: 13, scope: !2502)
!2514 = !DILocation(line: 102, column: 23, scope: !2502)
!2515 = !DILocation(line: 102, column: 36, scope: !2502)
!2516 = !DILocation(line: 102, column: 20, scope: !2502)
!2517 = !DILocation(line: 100, column: 6, scope: !2488)
!2518 = !DILocation(line: 103, column: 35, scope: !2502)
!2519 = !DILocation(line: 103, column: 41, scope: !2502)
!2520 = !DILocation(line: 103, column: 26, scope: !2502)
!2521 = !DILocation(line: 103, column: 3, scope: !2502)
!2522 = !DILocation(line: 103, column: 10, scope: !2502)
!2523 = !DILocation(line: 103, column: 24, scope: !2502)
!2524 = !DILocation(line: 105, column: 6, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2488, file: !2, line: 105, column: 6)
!2526 = !DILocation(line: 105, column: 12, scope: !2525)
!2527 = !DILocation(line: 105, column: 21, scope: !2525)
!2528 = !DILocation(line: 105, column: 28, scope: !2525)
!2529 = !DILocation(line: 105, column: 19, scope: !2525)
!2530 = !DILocation(line: 105, column: 6, scope: !2488)
!2531 = !DILocation(line: 106, column: 29, scope: !2525)
!2532 = !DILocation(line: 106, column: 36, scope: !2525)
!2533 = !DILocation(line: 106, column: 3, scope: !2525)
!2534 = !DILocation(line: 106, column: 10, scope: !2525)
!2535 = !DILocation(line: 106, column: 27, scope: !2525)
!2536 = !DILocation(line: 108, column: 24, scope: !2488)
!2537 = !DILocation(line: 108, column: 31, scope: !2488)
!2538 = !DILocation(line: 108, column: 16, scope: !2488)
!2539 = !DILocation(line: 108, column: 14, scope: !2488)
!2540 = !DILocation(line: 109, column: 6, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2488, file: !2, line: 109, column: 6)
!2542 = !DILocation(line: 109, column: 12, scope: !2541)
!2543 = !DILocation(line: 109, column: 22, scope: !2541)
!2544 = !DILocation(line: 109, column: 35, scope: !2541)
!2545 = !DILocation(line: 109, column: 19, scope: !2541)
!2546 = !DILocation(line: 109, column: 6, scope: !2488)
!2547 = !DILocation(line: 110, column: 33, scope: !2541)
!2548 = !DILocation(line: 110, column: 39, scope: !2541)
!2549 = !DILocation(line: 110, column: 24, scope: !2541)
!2550 = !DILocation(line: 110, column: 3, scope: !2541)
!2551 = !DILocation(line: 110, column: 10, scope: !2541)
!2552 = !DILocation(line: 110, column: 22, scope: !2541)
!2553 = !DILocation(line: 111, column: 1, scope: !2488)
!2554 = !DISubprogram(name: "rb_erase", scope: !574, file: !574, line: 40, type: !601, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2555 = !DISubprogram(name: "_find_next_bit", scope: !1354, file: !1354, line: 11, type: !1355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2556 = distinct !DISubprogram(name: "cpuhp_state_remove_instance_nocalls", scope: !12, file: !12, line: 511, type: !2025, scopeLine: 513, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2557)
!2557 = !{!2558, !2559}
!2558 = !DILocalVariable(name: "state", arg: 1, scope: !2556, file: !12, line: 511, type: !11)
!2559 = !DILocalVariable(name: "node", arg: 2, scope: !2556, file: !12, line: 512, type: !337)
!2560 = !DILocation(line: 511, column: 72, scope: !2556)
!2561 = !DILocation(line: 512, column: 32, scope: !2556)
!2562 = !DILocation(line: 514, column: 39, scope: !2556)
!2563 = !DILocation(line: 514, column: 46, scope: !2556)
!2564 = !DILocation(line: 514, column: 9, scope: !2556)
!2565 = !DILocation(line: 514, column: 2, scope: !2556)
!2566 = !DISubprogram(name: "__cpuhp_state_remove_instance", scope: !12, file: !12, line: 485, type: !2567, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!13, !11, !337, !538}
!2569 = distinct !DISubprogram(name: "alloc_and_init_iova", scope: !2, file: !2, line: 532, type: !2570, scopeLine: 533, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2572)
!2570 = !DISubroutineType(types: !2571)
!2571 = !{!236, !233, !233}
!2572 = !{!2573, !2574, !2575}
!2573 = !DILocalVariable(name: "pfn_lo", arg: 1, scope: !2569, file: !2, line: 532, type: !233)
!2574 = !DILocalVariable(name: "pfn_hi", arg: 2, scope: !2569, file: !2, line: 532, type: !233)
!2575 = !DILocalVariable(name: "iova", scope: !2569, file: !2, line: 534, type: !236)
!2576 = !DILocation(line: 532, column: 35, scope: !2569)
!2577 = !DILocation(line: 532, column: 57, scope: !2569)
!2578 = !DILocation(line: 534, column: 2, scope: !2569)
!2579 = !DILocation(line: 534, column: 15, scope: !2569)
!2580 = !DILocation(line: 536, column: 9, scope: !2569)
!2581 = !DILocation(line: 536, column: 7, scope: !2569)
!2582 = !DILocation(line: 537, column: 6, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2569, file: !2, line: 537, column: 6)
!2584 = !DILocation(line: 537, column: 6, scope: !2569)
!2585 = !DILocation(line: 538, column: 18, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2583, file: !2, line: 537, column: 12)
!2587 = !DILocation(line: 538, column: 3, scope: !2586)
!2588 = !DILocation(line: 538, column: 9, scope: !2586)
!2589 = !DILocation(line: 538, column: 16, scope: !2586)
!2590 = !DILocation(line: 539, column: 18, scope: !2586)
!2591 = !DILocation(line: 539, column: 3, scope: !2586)
!2592 = !DILocation(line: 539, column: 9, scope: !2586)
!2593 = !DILocation(line: 539, column: 16, scope: !2586)
!2594 = !DILocation(line: 540, column: 2, scope: !2586)
!2595 = !DILocation(line: 542, column: 9, scope: !2569)
!2596 = !DILocation(line: 543, column: 1, scope: !2569)
!2597 = !DILocation(line: 542, column: 2, scope: !2569)
!2598 = distinct !DISubprogram(name: "kmalloc_array", scope: !213, file: !213, line: 629, type: !1980, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2599)
!2599 = !{!2600, !2601, !2602, !2603}
!2600 = !DILocalVariable(name: "n", arg: 1, scope: !2598, file: !213, line: 629, type: !1982)
!2601 = !DILocalVariable(name: "size", arg: 2, scope: !2598, file: !213, line: 629, type: !1982)
!2602 = !DILocalVariable(name: "flags", arg: 3, scope: !2598, file: !213, line: 629, type: !250)
!2603 = !DILocalVariable(name: "bytes", scope: !2598, file: !213, line: 631, type: !1982)
!2604 = !DILocation(line: 629, column: 61, scope: !2598)
!2605 = !DILocation(line: 629, column: 71, scope: !2598)
!2606 = !DILocation(line: 629, column: 83, scope: !2598)
!2607 = !DILocation(line: 631, column: 2, scope: !2598)
!2608 = !DILocation(line: 631, column: 9, scope: !2598)
!2609 = !DILocation(line: 633, column: 6, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2598, file: !213, line: 633, column: 6)
!2611 = !DILocation(line: 633, column: 6, scope: !2598)
!2612 = !DILocation(line: 634, column: 3, scope: !2610)
!2613 = !DILocation(line: 635, column: 27, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2598, file: !213, line: 635, column: 6)
!2615 = !DILocation(line: 635, column: 6, scope: !2614)
!2616 = !DILocation(line: 635, column: 30, scope: !2614)
!2617 = !DILocation(line: 635, column: 54, scope: !2614)
!2618 = !DILocation(line: 635, column: 33, scope: !2614)
!2619 = !DILocation(line: 635, column: 6, scope: !2598)
!2620 = !DILocation(line: 636, column: 18, scope: !2614)
!2621 = !DILocation(line: 636, column: 25, scope: !2614)
!2622 = !DILocation(line: 636, column: 10, scope: !2614)
!2623 = !DILocation(line: 636, column: 3, scope: !2614)
!2624 = !DILocation(line: 637, column: 19, scope: !2598)
!2625 = !DILocation(line: 637, column: 26, scope: !2598)
!2626 = !DILocation(line: 637, column: 9, scope: !2598)
!2627 = !DILocation(line: 637, column: 2, scope: !2598)
!2628 = !DILocation(line: 638, column: 1, scope: !2598)
!2629 = distinct !DISubprogram(name: "__must_check_overflow", scope: !2630, file: !2630, line: 51, type: !2631, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2633)
!2630 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!538, !538}
!2633 = !{!2634}
!2634 = !DILocalVariable(name: "overflow", arg: 1, scope: !2629, file: !2630, line: 51, type: !538)
!2635 = !DILocation(line: 51, column: 60, scope: !2629)
!2636 = !DILocation(line: 53, column: 9, scope: !2629)
!2637 = !DILocation(line: 53, column: 2, scope: !2629)
!2638 = distinct !DISubprogram(name: "kmalloc", scope: !213, file: !213, line: 591, type: !2639, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2641)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{!223, !1982, !250}
!2641 = !{!2642, !2643, !2644}
!2642 = !DILocalVariable(name: "size", arg: 1, scope: !2638, file: !213, line: 591, type: !1982)
!2643 = !DILocalVariable(name: "flags", arg: 2, scope: !2638, file: !213, line: 591, type: !250)
!2644 = !DILocalVariable(name: "index", scope: !2645, file: !213, line: 594, type: !208)
!2645 = distinct !DILexicalBlock(scope: !2646, file: !213, line: 593, column: 42)
!2646 = distinct !DILexicalBlock(scope: !2638, file: !213, line: 593, column: 6)
!2647 = !DILocation(line: 591, column: 61, scope: !2638)
!2648 = !DILocation(line: 591, column: 73, scope: !2638)
!2649 = !DILocation(line: 593, column: 27, scope: !2646)
!2650 = !DILocation(line: 593, column: 6, scope: !2646)
!2651 = !DILocation(line: 593, column: 33, scope: !2646)
!2652 = !DILocation(line: 593, column: 36, scope: !2646)
!2653 = !DILocation(line: 593, column: 6, scope: !2638)
!2654 = !DILocation(line: 594, column: 3, scope: !2645)
!2655 = !DILocation(line: 594, column: 16, scope: !2645)
!2656 = !DILocation(line: 596, column: 7, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2645, file: !213, line: 596, column: 7)
!2658 = !DILocation(line: 596, column: 12, scope: !2657)
!2659 = !DILocation(line: 596, column: 7, scope: !2645)
!2660 = !DILocation(line: 597, column: 25, scope: !2657)
!2661 = !DILocation(line: 597, column: 31, scope: !2657)
!2662 = !DILocation(line: 597, column: 11, scope: !2657)
!2663 = !DILocation(line: 597, column: 4, scope: !2657)
!2664 = !DILocation(line: 599, column: 11, scope: !2645)
!2665 = !DILocation(line: 599, column: 9, scope: !2645)
!2666 = !DILocation(line: 601, column: 33, scope: !2645)
!2667 = !DILocation(line: 601, column: 40, scope: !2645)
!2668 = !DILocation(line: 601, column: 20, scope: !2645)
!2669 = !DILocation(line: 601, column: 5, scope: !2645)
!2670 = !DILocation(line: 601, column: 51, scope: !2645)
!2671 = !DILocation(line: 602, column: 5, scope: !2645)
!2672 = !DILocation(line: 602, column: 12, scope: !2645)
!2673 = !DILocation(line: 600, column: 10, scope: !2645)
!2674 = !DILocation(line: 600, column: 3, scope: !2645)
!2675 = !DILocation(line: 603, column: 2, scope: !2646)
!2676 = !DILocation(line: 604, column: 19, scope: !2638)
!2677 = !DILocation(line: 604, column: 25, scope: !2638)
!2678 = !DILocation(line: 604, column: 9, scope: !2638)
!2679 = !DILocation(line: 604, column: 2, scope: !2638)
!2680 = !DILocation(line: 605, column: 1, scope: !2638)
!2681 = !DISubprogram(name: "__kmalloc", scope: !213, file: !213, line: 488, type: !2639, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2682 = !DISubprogram(name: "kmalloc_large", scope: !213, file: !213, line: 531, type: !2639, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2683 = distinct !DISubprogram(name: "__kmalloc_index", scope: !213, file: !213, line: 444, type: !2684, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2686)
!2684 = !DISubroutineType(types: !2685)
!2685 = !{!208, !1982, !538}
!2686 = !{!2687, !2688}
!2687 = !DILocalVariable(name: "size", arg: 1, scope: !2683, file: !213, line: 444, type: !1982)
!2688 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !2683, file: !213, line: 445, type: !538)
!2689 = !DILocation(line: 444, column: 60, scope: !2683)
!2690 = !DILocation(line: 445, column: 16, scope: !2683)
!2691 = !DILocation(line: 447, column: 7, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2683, file: !213, line: 447, column: 6)
!2693 = !DILocation(line: 447, column: 6, scope: !2683)
!2694 = !DILocation(line: 448, column: 3, scope: !2692)
!2695 = !DILocation(line: 450, column: 6, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2683, file: !213, line: 450, column: 6)
!2697 = !DILocation(line: 450, column: 11, scope: !2696)
!2698 = !DILocation(line: 450, column: 6, scope: !2683)
!2699 = !DILocation(line: 451, column: 3, scope: !2696)
!2700 = !DILocation(line: 453, column: 32, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2683, file: !213, line: 453, column: 6)
!2702 = !DILocation(line: 453, column: 37, scope: !2701)
!2703 = !DILocation(line: 453, column: 42, scope: !2701)
!2704 = !DILocation(line: 453, column: 45, scope: !2701)
!2705 = !DILocation(line: 453, column: 50, scope: !2701)
!2706 = !DILocation(line: 453, column: 6, scope: !2683)
!2707 = !DILocation(line: 454, column: 3, scope: !2701)
!2708 = !DILocation(line: 455, column: 32, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2683, file: !213, line: 455, column: 6)
!2710 = !DILocation(line: 455, column: 37, scope: !2709)
!2711 = !DILocation(line: 455, column: 43, scope: !2709)
!2712 = !DILocation(line: 455, column: 46, scope: !2709)
!2713 = !DILocation(line: 455, column: 51, scope: !2709)
!2714 = !DILocation(line: 455, column: 6, scope: !2683)
!2715 = !DILocation(line: 456, column: 3, scope: !2709)
!2716 = !DILocation(line: 457, column: 6, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2683, file: !213, line: 457, column: 6)
!2718 = !DILocation(line: 457, column: 11, scope: !2717)
!2719 = !DILocation(line: 457, column: 6, scope: !2683)
!2720 = !DILocation(line: 457, column: 26, scope: !2717)
!2721 = !DILocation(line: 458, column: 6, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2683, file: !213, line: 458, column: 6)
!2723 = !DILocation(line: 458, column: 11, scope: !2722)
!2724 = !DILocation(line: 458, column: 6, scope: !2683)
!2725 = !DILocation(line: 458, column: 26, scope: !2722)
!2726 = !DILocation(line: 459, column: 6, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2683, file: !213, line: 459, column: 6)
!2728 = !DILocation(line: 459, column: 11, scope: !2727)
!2729 = !DILocation(line: 459, column: 6, scope: !2683)
!2730 = !DILocation(line: 459, column: 26, scope: !2727)
!2731 = !DILocation(line: 460, column: 6, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2683, file: !213, line: 460, column: 6)
!2733 = !DILocation(line: 460, column: 11, scope: !2732)
!2734 = !DILocation(line: 460, column: 6, scope: !2683)
!2735 = !DILocation(line: 460, column: 26, scope: !2732)
!2736 = !DILocation(line: 461, column: 6, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2683, file: !213, line: 461, column: 6)
!2738 = !DILocation(line: 461, column: 11, scope: !2737)
!2739 = !DILocation(line: 461, column: 6, scope: !2683)
!2740 = !DILocation(line: 461, column: 26, scope: !2737)
!2741 = !DILocation(line: 462, column: 6, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2683, file: !213, line: 462, column: 6)
!2743 = !DILocation(line: 462, column: 11, scope: !2742)
!2744 = !DILocation(line: 462, column: 6, scope: !2683)
!2745 = !DILocation(line: 462, column: 26, scope: !2742)
!2746 = !DILocation(line: 463, column: 6, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2683, file: !213, line: 463, column: 6)
!2748 = !DILocation(line: 463, column: 11, scope: !2747)
!2749 = !DILocation(line: 463, column: 6, scope: !2683)
!2750 = !DILocation(line: 463, column: 26, scope: !2747)
!2751 = !DILocation(line: 464, column: 6, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2683, file: !213, line: 464, column: 6)
!2753 = !DILocation(line: 464, column: 11, scope: !2752)
!2754 = !DILocation(line: 464, column: 6, scope: !2683)
!2755 = !DILocation(line: 464, column: 26, scope: !2752)
!2756 = !DILocation(line: 465, column: 6, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2683, file: !213, line: 465, column: 6)
!2758 = !DILocation(line: 465, column: 11, scope: !2757)
!2759 = !DILocation(line: 465, column: 6, scope: !2683)
!2760 = !DILocation(line: 465, column: 26, scope: !2757)
!2761 = !DILocation(line: 466, column: 6, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2683, file: !213, line: 466, column: 6)
!2763 = !DILocation(line: 466, column: 11, scope: !2762)
!2764 = !DILocation(line: 466, column: 6, scope: !2683)
!2765 = !DILocation(line: 466, column: 26, scope: !2762)
!2766 = !DILocation(line: 467, column: 6, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2683, file: !213, line: 467, column: 6)
!2768 = !DILocation(line: 467, column: 11, scope: !2767)
!2769 = !DILocation(line: 467, column: 6, scope: !2683)
!2770 = !DILocation(line: 467, column: 26, scope: !2767)
!2771 = !DILocation(line: 468, column: 6, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2683, file: !213, line: 468, column: 6)
!2773 = !DILocation(line: 468, column: 11, scope: !2772)
!2774 = !DILocation(line: 468, column: 6, scope: !2683)
!2775 = !DILocation(line: 468, column: 26, scope: !2772)
!2776 = !DILocation(line: 469, column: 6, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2683, file: !213, line: 469, column: 6)
!2778 = !DILocation(line: 469, column: 11, scope: !2777)
!2779 = !DILocation(line: 469, column: 6, scope: !2683)
!2780 = !DILocation(line: 469, column: 26, scope: !2777)
!2781 = !DILocation(line: 470, column: 6, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2683, file: !213, line: 470, column: 6)
!2783 = !DILocation(line: 470, column: 11, scope: !2782)
!2784 = !DILocation(line: 470, column: 6, scope: !2683)
!2785 = !DILocation(line: 470, column: 26, scope: !2782)
!2786 = !DILocation(line: 471, column: 6, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2683, file: !213, line: 471, column: 6)
!2788 = !DILocation(line: 471, column: 11, scope: !2787)
!2789 = !DILocation(line: 471, column: 6, scope: !2683)
!2790 = !DILocation(line: 471, column: 26, scope: !2787)
!2791 = !DILocation(line: 472, column: 6, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2683, file: !213, line: 472, column: 6)
!2793 = !DILocation(line: 472, column: 11, scope: !2792)
!2794 = !DILocation(line: 472, column: 6, scope: !2683)
!2795 = !DILocation(line: 472, column: 26, scope: !2792)
!2796 = !DILocation(line: 473, column: 6, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2683, file: !213, line: 473, column: 6)
!2798 = !DILocation(line: 473, column: 11, scope: !2797)
!2799 = !DILocation(line: 473, column: 6, scope: !2683)
!2800 = !DILocation(line: 473, column: 26, scope: !2797)
!2801 = !DILocation(line: 474, column: 6, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2683, file: !213, line: 474, column: 6)
!2803 = !DILocation(line: 474, column: 11, scope: !2802)
!2804 = !DILocation(line: 474, column: 6, scope: !2683)
!2805 = !DILocation(line: 474, column: 27, scope: !2802)
!2806 = !DILocation(line: 475, column: 6, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2683, file: !213, line: 475, column: 6)
!2808 = !DILocation(line: 475, column: 11, scope: !2807)
!2809 = !DILocation(line: 475, column: 6, scope: !2683)
!2810 = !DILocation(line: 475, column: 32, scope: !2807)
!2811 = !DILocation(line: 477, column: 50, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2683, file: !213, line: 477, column: 6)
!2813 = !DILocation(line: 477, column: 6, scope: !2683)
!2814 = !DILocation(line: 478, column: 3, scope: !2812)
!2815 = !DILocation(line: 478, column: 3, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2817, file: !213, line: 478, column: 3)
!2817 = distinct !DILexicalBlock(scope: !2812, file: !213, line: 478, column: 3)
!2818 = !{i32 -2141562145}
!2819 = !DILocation(line: 478, column: 3, scope: !2817)
!2820 = !DILocation(line: 480, column: 3, scope: !2812)
!2821 = !DILocation(line: 480, column: 3, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2812, file: !213, line: 480, column: 3)
!2823 = !DILocation(line: 480, column: 3, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2822, file: !213, line: 480, column: 3)
!2825 = !DILocation(line: 480, column: 3, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2822, file: !213, line: 480, column: 3)
!2827 = !{i64 2153405354, i64 2153405383, i64 2153405429, i64 2153405487, i64 2153405541, i64 2153405595, i64 2153405650, i64 2153405681}
!2828 = !DILocation(line: 483, column: 2, scope: !2683)
!2829 = !DILocation(line: 484, column: 1, scope: !2683)
!2830 = !DISubprogram(name: "kmalloc_trace", scope: !213, file: !213, line: 525, type: !2831, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{!223, !404, !250, !1982}
!2833 = distinct !DISubprogram(name: "kmalloc_type", scope: !213, file: !213, line: 401, type: !2834, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2836)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{!212, !250, !233}
!2836 = !{!2837, !2838}
!2837 = !DILocalVariable(name: "flags", arg: 1, scope: !2833, file: !213, line: 401, type: !250)
!2838 = !DILocalVariable(name: "caller", arg: 2, scope: !2833, file: !213, line: 401, type: !233)
!2839 = !DILocation(line: 401, column: 67, scope: !2833)
!2840 = !DILocation(line: 401, column: 88, scope: !2833)
!2841 = !DILocation(line: 407, column: 6, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2833, file: !213, line: 407, column: 6)
!2843 = !DILocation(line: 407, column: 6, scope: !2833)
!2844 = !DILocation(line: 413, column: 3, scope: !2842)
!2845 = !DILocation(line: 423, column: 38, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2833, file: !213, line: 423, column: 6)
!2847 = !DILocation(line: 423, column: 44, scope: !2846)
!2848 = !DILocation(line: 423, column: 6, scope: !2833)
!2849 = !DILocation(line: 424, column: 3, scope: !2846)
!2850 = !DILocation(line: 426, column: 3, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2833, file: !213, line: 425, column: 6)
!2852 = !DILocation(line: 429, column: 1, scope: !2833)
!2853 = !DISubprogram(name: "__compiletime_assert_229", scope: !213, file: !213, line: 478, type: !717, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2854 = !DISubprogram(name: "__cpuhp_state_add_instance", scope: !12, file: !12, line: 378, type: !2567, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2855 = distinct !DISubprogram(name: "__order_base_2", scope: !535, file: !535, line: 199, type: !2856, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2858)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!13, !233}
!2858 = !{!2859}
!2859 = !DILocalVariable(name: "n", arg: 1, scope: !2855, file: !535, line: 199, type: !233)
!2860 = !DILocation(line: 199, column: 34, scope: !2855)
!2861 = !DILocation(line: 201, column: 9, scope: !2855)
!2862 = !DILocation(line: 201, column: 11, scope: !2855)
!2863 = !DILocation(line: 201, column: 17, scope: !2855)
!2864 = !DILocation(line: 201, column: 30, scope: !2855)
!2865 = !DILocation(line: 201, column: 2, scope: !2855)
!2866 = distinct !DISubprogram(name: "__iova_rcache_insert", scope: !2, file: !2, line: 775, type: !2867, scopeLine: 778, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2869)
!2867 = !DISubroutineType(types: !2868)
!2868 = !{!538, !307, !323, !233}
!2869 = !{!2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2880, !2882, !2886, !2887, !2892}
!2870 = !DILocalVariable(name: "iovad", arg: 1, scope: !2866, file: !2, line: 775, type: !307)
!2871 = !DILocalVariable(name: "rcache", arg: 2, scope: !2866, file: !2, line: 776, type: !323)
!2872 = !DILocalVariable(name: "iova_pfn", arg: 3, scope: !2866, file: !2, line: 777, type: !233)
!2873 = !DILocalVariable(name: "mag_to_free", scope: !2866, file: !2, line: 779, type: !298)
!2874 = !DILocalVariable(name: "cpu_rcache", scope: !2866, file: !2, line: 780, type: !251)
!2875 = !DILocalVariable(name: "can_insert", scope: !2866, file: !2, line: 781, type: !538)
!2876 = !DILocalVariable(name: "flags", scope: !2866, file: !2, line: 782, type: !233)
!2877 = !DILocalVariable(name: "__vpp_verify", scope: !2878, file: !2, line: 784, type: !1410)
!2878 = distinct !DILexicalBlock(scope: !2879, file: !2, line: 784, column: 15)
!2879 = distinct !DILexicalBlock(scope: !2866, file: !2, line: 784, column: 15)
!2880 = !DILocalVariable(name: "tcp_ptr__", scope: !2881, file: !2, line: 784, type: !233)
!2881 = distinct !DILexicalBlock(scope: !2879, file: !2, line: 784, column: 15)
!2882 = !DILocalVariable(name: "__dummy", scope: !2883, file: !2, line: 785, type: !233)
!2883 = distinct !DILexicalBlock(scope: !2884, file: !2, line: 785, column: 2)
!2884 = distinct !DILexicalBlock(scope: !2885, file: !2, line: 785, column: 2)
!2885 = distinct !DILexicalBlock(scope: !2866, file: !2, line: 785, column: 2)
!2886 = !DILocalVariable(name: "__dummy2", scope: !2883, file: !2, line: 785, type: !233)
!2887 = !DILocalVariable(name: "__tmp", scope: !2888, file: !2, line: 790, type: !298)
!2888 = distinct !DILexicalBlock(scope: !2889, file: !2, line: 790, column: 3)
!2889 = distinct !DILexicalBlock(scope: !2890, file: !2, line: 789, column: 52)
!2890 = distinct !DILexicalBlock(scope: !2891, file: !2, line: 789, column: 13)
!2891 = distinct !DILexicalBlock(scope: !2866, file: !2, line: 787, column: 6)
!2892 = !DILocalVariable(name: "new_mag", scope: !2893, file: !2, line: 793, type: !298)
!2893 = distinct !DILexicalBlock(scope: !2890, file: !2, line: 792, column: 9)
!2894 = !DILocation(line: 775, column: 54, scope: !2866)
!2895 = !DILocation(line: 776, column: 26, scope: !2866)
!2896 = !DILocation(line: 777, column: 20, scope: !2866)
!2897 = !DILocation(line: 779, column: 2, scope: !2866)
!2898 = !DILocation(line: 779, column: 24, scope: !2866)
!2899 = !DILocation(line: 780, column: 2, scope: !2866)
!2900 = !DILocation(line: 780, column: 26, scope: !2866)
!2901 = !DILocation(line: 781, column: 2, scope: !2866)
!2902 = !DILocation(line: 781, column: 7, scope: !2866)
!2903 = !DILocation(line: 782, column: 2, scope: !2866)
!2904 = !DILocation(line: 782, column: 16, scope: !2866)
!2905 = !DILocation(line: 784, column: 15, scope: !2879)
!2906 = !DILocation(line: 784, column: 15, scope: !2878)
!2907 = !DILocation(line: 784, column: 15, scope: !2881)
!2908 = !{i64 2154645967}
!2909 = !DILocation(line: 784, column: 13, scope: !2866)
!2910 = !DILocation(line: 785, column: 2, scope: !2866)
!2911 = !DILocation(line: 785, column: 2, scope: !2885)
!2912 = !DILocation(line: 785, column: 2, scope: !2883)
!2913 = !DILocation(line: 785, column: 2, scope: !2884)
!2914 = !DILocation(line: 787, column: 26, scope: !2891)
!2915 = !DILocation(line: 787, column: 38, scope: !2891)
!2916 = !DILocation(line: 787, column: 7, scope: !2891)
!2917 = !DILocation(line: 787, column: 6, scope: !2866)
!2918 = !DILocation(line: 788, column: 14, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2891, file: !2, line: 787, column: 47)
!2920 = !DILocation(line: 789, column: 2, scope: !2919)
!2921 = !DILocation(line: 789, column: 33, scope: !2890)
!2922 = !DILocation(line: 789, column: 45, scope: !2890)
!2923 = !DILocation(line: 789, column: 14, scope: !2890)
!2924 = !DILocation(line: 789, column: 13, scope: !2891)
!2925 = !DILocation(line: 790, column: 3, scope: !2889)
!2926 = !DILocation(line: 790, column: 3, scope: !2888)
!2927 = !DILocation(line: 791, column: 14, scope: !2889)
!2928 = !DILocation(line: 792, column: 2, scope: !2889)
!2929 = !DILocation(line: 793, column: 3, scope: !2893)
!2930 = !DILocation(line: 793, column: 25, scope: !2893)
!2931 = !DILocation(line: 793, column: 35, scope: !2893)
!2932 = !DILocation(line: 795, column: 7, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2893, file: !2, line: 795, column: 7)
!2934 = !DILocation(line: 795, column: 7, scope: !2893)
!2935 = !DILocation(line: 796, column: 15, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2933, file: !2, line: 795, column: 16)
!2937 = !DILocation(line: 796, column: 23, scope: !2936)
!2938 = !DILocation(line: 796, column: 4, scope: !2936)
!2939 = !DILocation(line: 797, column: 8, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2936, file: !2, line: 797, column: 8)
!2941 = !DILocation(line: 797, column: 16, scope: !2940)
!2942 = !DILocation(line: 797, column: 27, scope: !2940)
!2943 = !DILocation(line: 797, column: 8, scope: !2936)
!2944 = !DILocation(line: 799, column: 7, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2940, file: !2, line: 797, column: 46)
!2946 = !DILocation(line: 799, column: 19, scope: !2945)
!2947 = !DILocation(line: 798, column: 5, scope: !2945)
!2948 = !DILocation(line: 798, column: 13, scope: !2945)
!2949 = !DILocation(line: 798, column: 19, scope: !2945)
!2950 = !DILocation(line: 798, column: 27, scope: !2945)
!2951 = !DILocation(line: 798, column: 37, scope: !2945)
!2952 = !DILocation(line: 798, column: 41, scope: !2945)
!2953 = !DILocation(line: 800, column: 4, scope: !2945)
!2954 = !DILocation(line: 801, column: 19, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2940, file: !2, line: 800, column: 11)
!2956 = !DILocation(line: 801, column: 31, scope: !2955)
!2957 = !DILocation(line: 801, column: 17, scope: !2955)
!2958 = !DILocation(line: 803, column: 17, scope: !2936)
!2959 = !DILocation(line: 803, column: 25, scope: !2936)
!2960 = !DILocation(line: 803, column: 4, scope: !2936)
!2961 = !DILocation(line: 805, column: 25, scope: !2936)
!2962 = !DILocation(line: 805, column: 4, scope: !2936)
!2963 = !DILocation(line: 805, column: 16, scope: !2936)
!2964 = !DILocation(line: 805, column: 23, scope: !2936)
!2965 = !DILocation(line: 806, column: 15, scope: !2936)
!2966 = !DILocation(line: 807, column: 3, scope: !2936)
!2967 = !DILocation(line: 808, column: 2, scope: !2890)
!2968 = !DILocation(line: 810, column: 6, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2866, file: !2, line: 810, column: 6)
!2970 = !DILocation(line: 810, column: 6, scope: !2866)
!2971 = !DILocation(line: 811, column: 22, scope: !2969)
!2972 = !DILocation(line: 811, column: 34, scope: !2969)
!2973 = !DILocation(line: 811, column: 42, scope: !2969)
!2974 = !DILocation(line: 811, column: 3, scope: !2969)
!2975 = !DILocation(line: 813, column: 26, scope: !2866)
!2976 = !DILocation(line: 813, column: 38, scope: !2866)
!2977 = !DILocation(line: 813, column: 44, scope: !2866)
!2978 = !DILocation(line: 813, column: 2, scope: !2866)
!2979 = !DILocation(line: 815, column: 6, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2866, file: !2, line: 815, column: 6)
!2981 = !DILocation(line: 815, column: 6, scope: !2866)
!2982 = !DILocation(line: 816, column: 27, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2980, file: !2, line: 815, column: 19)
!2984 = !DILocation(line: 816, column: 40, scope: !2983)
!2985 = !DILocation(line: 816, column: 3, scope: !2983)
!2986 = !DILocation(line: 817, column: 22, scope: !2983)
!2987 = !DILocation(line: 817, column: 3, scope: !2983)
!2988 = !DILocation(line: 818, column: 2, scope: !2983)
!2989 = !DILocation(line: 820, column: 9, scope: !2866)
!2990 = !DILocation(line: 821, column: 1, scope: !2866)
!2991 = !DILocation(line: 820, column: 2, scope: !2866)
!2992 = distinct !DISubprogram(name: "iova_magazine_full", scope: !2, file: !2, line: 687, type: !2993, scopeLine: 688, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2995)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!538, !298}
!2995 = !{!2996}
!2996 = !DILocalVariable(name: "mag", arg: 1, scope: !2992, file: !2, line: 687, type: !298)
!2997 = !DILocation(line: 687, column: 54, scope: !2992)
!2998 = !DILocation(line: 689, column: 9, scope: !2992)
!2999 = !DILocation(line: 689, column: 14, scope: !2992)
!3000 = !DILocation(line: 689, column: 19, scope: !2992)
!3001 = !DILocation(line: 689, column: 2, scope: !2992)
!3002 = distinct !DISubprogram(name: "spin_lock", scope: !554, file: !554, line: 349, type: !3003, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3005)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{null, !558}
!3005 = !{!3006}
!3006 = !DILocalVariable(name: "lock", arg: 1, scope: !3002, file: !554, line: 349, type: !558)
!3007 = !DILocation(line: 349, column: 51, scope: !3002)
!3008 = !DILocation(line: 351, column: 2, scope: !3002)
!3009 = !DILocation(line: 352, column: 1, scope: !3002)
!3010 = distinct !DISubprogram(name: "spin_unlock", scope: !554, file: !554, line: 389, type: !3003, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3011)
!3011 = !{!3012}
!3012 = !DILocalVariable(name: "lock", arg: 1, scope: !3010, file: !554, line: 389, type: !558)
!3013 = !DILocation(line: 389, column: 53, scope: !3010)
!3014 = !DILocation(line: 391, column: 2, scope: !3010)
!3015 = !DILocation(line: 392, column: 1, scope: !3010)
!3016 = distinct !DISubprogram(name: "iova_magazine_push", scope: !2, file: !2, line: 715, type: !3017, scopeLine: 716, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3019)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{null, !298, !233}
!3019 = !{!3020, !3021}
!3020 = !DILocalVariable(name: "mag", arg: 1, scope: !3016, file: !2, line: 715, type: !298)
!3021 = !DILocalVariable(name: "pfn", arg: 2, scope: !3016, file: !2, line: 715, type: !233)
!3022 = !DILocation(line: 715, column: 54, scope: !3016)
!3023 = !DILocation(line: 715, column: 73, scope: !3016)
!3024 = !DILocation(line: 717, column: 27, scope: !3016)
!3025 = !DILocation(line: 717, column: 2, scope: !3016)
!3026 = !DILocation(line: 717, column: 7, scope: !3016)
!3027 = !DILocation(line: 717, column: 12, scope: !3016)
!3028 = !DILocation(line: 717, column: 17, scope: !3016)
!3029 = !DILocation(line: 717, column: 21, scope: !3016)
!3030 = !DILocation(line: 717, column: 25, scope: !3016)
!3031 = !DILocation(line: 718, column: 1, scope: !3016)
!3032 = distinct !DISubprogram(name: "iova_magazine_free_pfns", scope: !2, file: !2, line: 665, type: !3033, scopeLine: 666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3035)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{null, !298, !307}
!3035 = !{!3036, !3037, !3038, !3039, !3040, !3044, !3045, !3049, !3052}
!3036 = !DILocalVariable(name: "mag", arg: 1, scope: !3032, file: !2, line: 665, type: !298)
!3037 = !DILocalVariable(name: "iovad", arg: 2, scope: !3032, file: !2, line: 665, type: !307)
!3038 = !DILocalVariable(name: "flags", scope: !3032, file: !2, line: 667, type: !233)
!3039 = !DILocalVariable(name: "i", scope: !3032, file: !2, line: 668, type: !13)
!3040 = !DILocalVariable(name: "__dummy", scope: !3041, file: !2, line: 670, type: !233)
!3041 = distinct !DILexicalBlock(scope: !3042, file: !2, line: 670, column: 2)
!3042 = distinct !DILexicalBlock(scope: !3043, file: !2, line: 670, column: 2)
!3043 = distinct !DILexicalBlock(scope: !3032, file: !2, line: 670, column: 2)
!3044 = !DILocalVariable(name: "__dummy2", scope: !3041, file: !2, line: 670, type: !233)
!3045 = !DILocalVariable(name: "iova", scope: !3046, file: !2, line: 673, type: !236)
!3046 = distinct !DILexicalBlock(scope: !3047, file: !2, line: 672, column: 35)
!3047 = distinct !DILexicalBlock(scope: !3048, file: !2, line: 672, column: 2)
!3048 = distinct !DILexicalBlock(scope: !3032, file: !2, line: 672, column: 2)
!3049 = !DILocalVariable(name: "__ret_warn_on", scope: !3050, file: !2, line: 675, type: !13)
!3050 = distinct !DILexicalBlock(scope: !3051, file: !2, line: 675, column: 7)
!3051 = distinct !DILexicalBlock(scope: !3046, file: !2, line: 675, column: 7)
!3052 = !DILocalVariable(name: "__flags", scope: !3053, file: !2, line: 675, type: !13)
!3053 = distinct !DILexicalBlock(scope: !3054, file: !2, line: 675, column: 7)
!3054 = distinct !DILexicalBlock(scope: !3050, file: !2, line: 675, column: 7)
!3055 = !DILocation(line: 665, column: 47, scope: !3032)
!3056 = !DILocation(line: 665, column: 72, scope: !3032)
!3057 = !DILocation(line: 667, column: 2, scope: !3032)
!3058 = !DILocation(line: 667, column: 16, scope: !3032)
!3059 = !DILocation(line: 668, column: 2, scope: !3032)
!3060 = !DILocation(line: 668, column: 6, scope: !3032)
!3061 = !DILocation(line: 670, column: 2, scope: !3032)
!3062 = !DILocation(line: 670, column: 2, scope: !3043)
!3063 = !DILocation(line: 670, column: 2, scope: !3041)
!3064 = !DILocation(line: 670, column: 2, scope: !3042)
!3065 = !DILocation(line: 672, column: 9, scope: !3048)
!3066 = !DILocation(line: 672, column: 7, scope: !3048)
!3067 = !DILocation(line: 672, column: 15, scope: !3047)
!3068 = !DILocation(line: 672, column: 19, scope: !3047)
!3069 = !DILocation(line: 672, column: 24, scope: !3047)
!3070 = !DILocation(line: 672, column: 17, scope: !3047)
!3071 = !DILocation(line: 672, column: 2, scope: !3048)
!3072 = !DILocation(line: 673, column: 3, scope: !3046)
!3073 = !DILocation(line: 673, column: 16, scope: !3046)
!3074 = !DILocation(line: 673, column: 41, scope: !3046)
!3075 = !DILocation(line: 673, column: 48, scope: !3046)
!3076 = !DILocation(line: 673, column: 53, scope: !3046)
!3077 = !DILocation(line: 673, column: 58, scope: !3046)
!3078 = !DILocation(line: 673, column: 23, scope: !3046)
!3079 = !DILocation(line: 675, column: 7, scope: !3050)
!3080 = !DILocation(line: 675, column: 7, scope: !3054)
!3081 = !DILocation(line: 675, column: 7, scope: !3053)
!3082 = !DILocation(line: 675, column: 7, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3053, file: !2, line: 675, column: 7)
!3084 = !DILocation(line: 675, column: 7, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3053, file: !2, line: 675, column: 7)
!3086 = !{i64 2154639790, i64 2154639819, i64 2154639865, i64 2154639923, i64 2154639977, i64 2154640031, i64 2154640086, i64 2154640117, i64 2154640425, i64 2154640431, i64 2154640478, i64 2154640501, i64 2154640527}
!3087 = !DILocation(line: 675, column: 7, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3053, file: !2, line: 675, column: 7)
!3089 = !DILocation(line: 675, column: 7, scope: !3051)
!3090 = !DILocation(line: 675, column: 7, scope: !3046)
!3091 = !DILocation(line: 676, column: 4, scope: !3051)
!3092 = !DILocation(line: 678, column: 15, scope: !3046)
!3093 = !DILocation(line: 678, column: 22, scope: !3046)
!3094 = !DILocation(line: 678, column: 3, scope: !3046)
!3095 = !DILocation(line: 679, column: 17, scope: !3046)
!3096 = !DILocation(line: 679, column: 3, scope: !3046)
!3097 = !DILocation(line: 680, column: 2, scope: !3047)
!3098 = !DILocation(line: 680, column: 2, scope: !3046)
!3099 = !DILocation(line: 672, column: 30, scope: !3047)
!3100 = !DILocation(line: 672, column: 2, scope: !3047)
!3101 = distinct !{!3101, !3071, !3102, !926, !927}
!3102 = !DILocation(line: 680, column: 2, scope: !3048)
!3103 = !DILocation(line: 682, column: 26, scope: !3032)
!3104 = !DILocation(line: 682, column: 33, scope: !3032)
!3105 = !DILocation(line: 682, column: 51, scope: !3032)
!3106 = !DILocation(line: 682, column: 2, scope: !3032)
!3107 = !DILocation(line: 684, column: 2, scope: !3032)
!3108 = !DILocation(line: 684, column: 7, scope: !3032)
!3109 = !DILocation(line: 684, column: 12, scope: !3032)
!3110 = !DILocation(line: 685, column: 1, scope: !3032)
!3111 = distinct !DISubprogram(name: "iova_magazine_free", scope: !2, file: !2, line: 659, type: !3112, scopeLine: 660, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3114)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{null, !298}
!3114 = !{!3115}
!3115 = !DILocalVariable(name: "mag", arg: 1, scope: !3111, file: !2, line: 659, type: !298)
!3116 = !DILocation(line: 659, column: 54, scope: !3111)
!3117 = !DILocation(line: 661, column: 8, scope: !3111)
!3118 = !DILocation(line: 661, column: 2, scope: !3111)
!3119 = !DILocation(line: 662, column: 1, scope: !3111)
!3120 = !DISubprogram(name: "_raw_spin_lock", scope: !1049, file: !1049, line: 22, type: !3121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{null, !557}
!3123 = !DISubprogram(name: "_raw_spin_unlock", scope: !1049, file: !1049, line: 39, type: !3121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3124 = !DISubprogram(name: "kfree", scope: !213, file: !213, line: 227, type: !3125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{null, !1410}
!3127 = distinct !DISubprogram(name: "__iova_rcache_get", scope: !2, file: !2, line: 839, type: !3128, scopeLine: 841, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3130)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{!233, !323, !233}
!3130 = !{!3131, !3132, !3133, !3134, !3135, !3136, !3137, !3140, !3142, !3146, !3147}
!3131 = !DILocalVariable(name: "rcache", arg: 1, scope: !3127, file: !2, line: 839, type: !323)
!3132 = !DILocalVariable(name: "limit_pfn", arg: 2, scope: !3127, file: !2, line: 840, type: !233)
!3133 = !DILocalVariable(name: "cpu_rcache", scope: !3127, file: !2, line: 842, type: !251)
!3134 = !DILocalVariable(name: "iova_pfn", scope: !3127, file: !2, line: 843, type: !233)
!3135 = !DILocalVariable(name: "has_pfn", scope: !3127, file: !2, line: 844, type: !538)
!3136 = !DILocalVariable(name: "flags", scope: !3127, file: !2, line: 845, type: !233)
!3137 = !DILocalVariable(name: "__vpp_verify", scope: !3138, file: !2, line: 847, type: !1410)
!3138 = distinct !DILexicalBlock(scope: !3139, file: !2, line: 847, column: 15)
!3139 = distinct !DILexicalBlock(scope: !3127, file: !2, line: 847, column: 15)
!3140 = !DILocalVariable(name: "tcp_ptr__", scope: !3141, file: !2, line: 847, type: !233)
!3141 = distinct !DILexicalBlock(scope: !3139, file: !2, line: 847, column: 15)
!3142 = !DILocalVariable(name: "__dummy", scope: !3143, file: !2, line: 848, type: !233)
!3143 = distinct !DILexicalBlock(scope: !3144, file: !2, line: 848, column: 2)
!3144 = distinct !DILexicalBlock(scope: !3145, file: !2, line: 848, column: 2)
!3145 = distinct !DILexicalBlock(scope: !3127, file: !2, line: 848, column: 2)
!3146 = !DILocalVariable(name: "__dummy2", scope: !3143, file: !2, line: 848, type: !233)
!3147 = !DILocalVariable(name: "__tmp", scope: !3148, file: !2, line: 853, type: !298)
!3148 = distinct !DILexicalBlock(scope: !3149, file: !2, line: 853, column: 3)
!3149 = distinct !DILexicalBlock(scope: !3150, file: !2, line: 852, column: 53)
!3150 = distinct !DILexicalBlock(scope: !3151, file: !2, line: 852, column: 13)
!3151 = distinct !DILexicalBlock(scope: !3127, file: !2, line: 850, column: 6)
!3152 = !DILocation(line: 839, column: 60, scope: !3127)
!3153 = !DILocation(line: 840, column: 26, scope: !3127)
!3154 = !DILocation(line: 842, column: 2, scope: !3127)
!3155 = !DILocation(line: 842, column: 26, scope: !3127)
!3156 = !DILocation(line: 843, column: 2, scope: !3127)
!3157 = !DILocation(line: 843, column: 16, scope: !3127)
!3158 = !DILocation(line: 844, column: 2, scope: !3127)
!3159 = !DILocation(line: 844, column: 7, scope: !3127)
!3160 = !DILocation(line: 845, column: 2, scope: !3127)
!3161 = !DILocation(line: 845, column: 16, scope: !3127)
!3162 = !DILocation(line: 847, column: 15, scope: !3139)
!3163 = !DILocation(line: 847, column: 15, scope: !3138)
!3164 = !DILocation(line: 847, column: 15, scope: !3141)
!3165 = !{i64 2154647623}
!3166 = !DILocation(line: 847, column: 13, scope: !3127)
!3167 = !DILocation(line: 848, column: 2, scope: !3127)
!3168 = !DILocation(line: 848, column: 2, scope: !3145)
!3169 = !DILocation(line: 848, column: 2, scope: !3143)
!3170 = !DILocation(line: 848, column: 2, scope: !3144)
!3171 = !DILocation(line: 850, column: 27, scope: !3151)
!3172 = !DILocation(line: 850, column: 39, scope: !3151)
!3173 = !DILocation(line: 850, column: 7, scope: !3151)
!3174 = !DILocation(line: 850, column: 6, scope: !3127)
!3175 = !DILocation(line: 851, column: 11, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3151, file: !2, line: 850, column: 48)
!3177 = !DILocation(line: 852, column: 2, scope: !3176)
!3178 = !DILocation(line: 852, column: 34, scope: !3150)
!3179 = !DILocation(line: 852, column: 46, scope: !3150)
!3180 = !DILocation(line: 852, column: 14, scope: !3150)
!3181 = !DILocation(line: 852, column: 13, scope: !3151)
!3182 = !DILocation(line: 853, column: 3, scope: !3149)
!3183 = !DILocation(line: 853, column: 3, scope: !3148)
!3184 = !DILocation(line: 854, column: 11, scope: !3149)
!3185 = !DILocation(line: 855, column: 2, scope: !3149)
!3186 = !DILocation(line: 856, column: 14, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3150, file: !2, line: 855, column: 9)
!3188 = !DILocation(line: 856, column: 22, scope: !3187)
!3189 = !DILocation(line: 856, column: 3, scope: !3187)
!3190 = !DILocation(line: 857, column: 7, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !3187, file: !2, line: 857, column: 7)
!3192 = !DILocation(line: 857, column: 15, scope: !3191)
!3193 = !DILocation(line: 857, column: 26, scope: !3191)
!3194 = !DILocation(line: 857, column: 7, scope: !3187)
!3195 = !DILocation(line: 858, column: 23, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3191, file: !2, line: 857, column: 31)
!3197 = !DILocation(line: 858, column: 35, scope: !3196)
!3198 = !DILocation(line: 858, column: 4, scope: !3196)
!3199 = !DILocation(line: 859, column: 25, scope: !3196)
!3200 = !DILocation(line: 859, column: 33, scope: !3196)
!3201 = !DILocation(line: 859, column: 41, scope: !3196)
!3202 = !DILocation(line: 859, column: 49, scope: !3196)
!3203 = !DILocation(line: 859, column: 39, scope: !3196)
!3204 = !DILocation(line: 859, column: 4, scope: !3196)
!3205 = !DILocation(line: 859, column: 16, scope: !3196)
!3206 = !DILocation(line: 859, column: 23, scope: !3196)
!3207 = !DILocation(line: 860, column: 12, scope: !3196)
!3208 = !DILocation(line: 861, column: 3, scope: !3196)
!3209 = !DILocation(line: 862, column: 16, scope: !3187)
!3210 = !DILocation(line: 862, column: 24, scope: !3187)
!3211 = !DILocation(line: 862, column: 3, scope: !3187)
!3212 = !DILocation(line: 865, column: 6, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3127, file: !2, line: 865, column: 6)
!3214 = !DILocation(line: 865, column: 6, scope: !3127)
!3215 = !DILocation(line: 866, column: 32, scope: !3213)
!3216 = !DILocation(line: 866, column: 44, scope: !3213)
!3217 = !DILocation(line: 866, column: 52, scope: !3213)
!3218 = !DILocation(line: 866, column: 14, scope: !3213)
!3219 = !DILocation(line: 866, column: 12, scope: !3213)
!3220 = !DILocation(line: 866, column: 3, scope: !3213)
!3221 = !DILocation(line: 868, column: 26, scope: !3127)
!3222 = !DILocation(line: 868, column: 38, scope: !3127)
!3223 = !DILocation(line: 868, column: 44, scope: !3127)
!3224 = !DILocation(line: 868, column: 2, scope: !3127)
!3225 = !DILocation(line: 870, column: 9, scope: !3127)
!3226 = !DILocation(line: 871, column: 1, scope: !3127)
!3227 = !DILocation(line: 870, column: 2, scope: !3127)
!3228 = distinct !DISubprogram(name: "iova_magazine_empty", scope: !2, file: !2, line: 692, type: !2993, scopeLine: 693, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3229)
!3229 = !{!3230}
!3230 = !DILocalVariable(name: "mag", arg: 1, scope: !3228, file: !2, line: 692, type: !298)
!3231 = !DILocation(line: 692, column: 55, scope: !3228)
!3232 = !DILocation(line: 694, column: 9, scope: !3228)
!3233 = !DILocation(line: 694, column: 14, scope: !3228)
!3234 = !DILocation(line: 694, column: 19, scope: !3228)
!3235 = !DILocation(line: 694, column: 2, scope: !3228)
!3236 = distinct !DISubprogram(name: "iova_magazine_pop", scope: !2, file: !2, line: 697, type: !3237, scopeLine: 699, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3239)
!3237 = !DISubroutineType(types: !3238)
!3238 = !{!233, !298, !233}
!3239 = !{!3240, !3241, !3242, !3243}
!3240 = !DILocalVariable(name: "mag", arg: 1, scope: !3236, file: !2, line: 697, type: !298)
!3241 = !DILocalVariable(name: "limit_pfn", arg: 2, scope: !3236, file: !2, line: 698, type: !233)
!3242 = !DILocalVariable(name: "i", scope: !3236, file: !2, line: 700, type: !13)
!3243 = !DILocalVariable(name: "pfn", scope: !3236, file: !2, line: 701, type: !233)
!3244 = !DILocation(line: 697, column: 62, scope: !3236)
!3245 = !DILocation(line: 698, column: 26, scope: !3236)
!3246 = !DILocation(line: 700, column: 2, scope: !3236)
!3247 = !DILocation(line: 700, column: 6, scope: !3236)
!3248 = !DILocation(line: 701, column: 2, scope: !3236)
!3249 = !DILocation(line: 701, column: 16, scope: !3236)
!3250 = !DILocation(line: 704, column: 11, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3236, file: !2, line: 704, column: 2)
!3252 = !DILocation(line: 704, column: 16, scope: !3251)
!3253 = !DILocation(line: 704, column: 21, scope: !3251)
!3254 = !DILocation(line: 704, column: 9, scope: !3251)
!3255 = !DILocation(line: 704, column: 7, scope: !3251)
!3256 = !DILocation(line: 704, column: 26, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3251, file: !2, line: 704, column: 2)
!3258 = !DILocation(line: 704, column: 31, scope: !3257)
!3259 = !DILocation(line: 704, column: 36, scope: !3257)
!3260 = !DILocation(line: 704, column: 41, scope: !3257)
!3261 = !DILocation(line: 704, column: 39, scope: !3257)
!3262 = !DILocation(line: 704, column: 2, scope: !3251)
!3263 = !DILocation(line: 705, column: 7, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3257, file: !2, line: 705, column: 7)
!3265 = !DILocation(line: 705, column: 9, scope: !3264)
!3266 = !DILocation(line: 705, column: 7, scope: !3257)
!3267 = !DILocation(line: 706, column: 4, scope: !3264)
!3268 = !DILocation(line: 705, column: 12, scope: !3264)
!3269 = !DILocation(line: 704, column: 53, scope: !3257)
!3270 = !DILocation(line: 704, column: 2, scope: !3257)
!3271 = distinct !{!3271, !3262, !3272, !926, !927}
!3272 = !DILocation(line: 706, column: 11, scope: !3251)
!3273 = !DILocation(line: 709, column: 8, scope: !3236)
!3274 = !DILocation(line: 709, column: 13, scope: !3236)
!3275 = !DILocation(line: 709, column: 18, scope: !3236)
!3276 = !DILocation(line: 709, column: 6, scope: !3236)
!3277 = !DILocation(line: 710, column: 17, scope: !3236)
!3278 = !DILocation(line: 710, column: 22, scope: !3236)
!3279 = !DILocation(line: 710, column: 29, scope: !3236)
!3280 = !DILocation(line: 710, column: 34, scope: !3236)
!3281 = !DILocation(line: 710, column: 27, scope: !3236)
!3282 = !DILocation(line: 710, column: 2, scope: !3236)
!3283 = !DILocation(line: 710, column: 7, scope: !3236)
!3284 = !DILocation(line: 710, column: 12, scope: !3236)
!3285 = !DILocation(line: 710, column: 15, scope: !3236)
!3286 = !DILocation(line: 712, column: 9, scope: !3236)
!3287 = !DILocation(line: 712, column: 2, scope: !3236)
!3288 = !DILocation(line: 713, column: 1, scope: !3236)
!3289 = !DISubprogram(name: "free_percpu", scope: !2000, file: !2000, line: 134, type: !705, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
