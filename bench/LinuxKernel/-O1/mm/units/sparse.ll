; ModuleID = 'mm/sparse.c'
source_filename = "mm/sparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mem_section: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad mem_section ; .previous"

%struct.cpuinfo_x86 = type { %union.anon, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.0, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { i64, [88 x i8] }
%struct.mem_section = type { i64, ptr }
%struct.mem_section_usage = type { %struct.callback_head, [1 x i64], [0 x i64] }
%struct.callback_head = type { ptr, ptr }
%struct.pglist_data = type { [4 x %struct.zone], [2 x %struct.zonelist], i32, i64, i64, i64, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i64, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i64, i64, i64, [56 x i8], %struct.cacheline_padding, %struct.lruvec, i64, [48 x i8], %struct.cacheline_padding, ptr, [41 x %struct.atomic64_t], ptr, [40 x i8] }
%struct.zone = type { [4 x i64], i64, i64, [4 x i64], i32, ptr, ptr, ptr, i32, i32, i64, %struct.atomic64_t, i64, i64, ptr, i32, [28 x i8], %struct.cacheline_padding, [11 x %struct.free_area], i64, %struct.spinlock, [28 x i8], %struct.cacheline_padding, i64, i64, [2 x i64], i64, i64, i32, i32, i32, i8, i8, [2 x i8], %struct.cacheline_padding, [10 x %struct.atomic64_t], [6 x %struct.atomic64_t] }
%struct.atomic64_t = type { i64 }
%struct.free_area = type { [4 x %struct.list_head], i64 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.zonelist = type { [257 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i64, i64, %struct.atomic64_t, [2 x i64], i64 }
%struct.cacheline_padding = type { [0 x i8] }
%struct.page = type { i64, %union.anon.16, %union.anon.25, %struct.atomic_t, [8 x i8] }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { %union.anon.18, ptr, %union.anon.20, i64 }
%union.anon.18 = type { %struct.list_head }
%union.anon.20 = type { i64 }
%union.anon.25 = type { %struct.atomic_t }

@mem_section = hidden global ptr null, align 8, !dbg !0
@__UNIQUE_ID___addressable_mem_section336 = internal global ptr @mem_section, section ".discard.addressable", align 8, !dbg !307
@sparsemap_buf = internal global ptr null, section ".init.data", align 8, !dbg !311
@sparsemap_buf_end = internal global ptr null, section ".init.data", align 8, !dbg !313
@__highest_present_section_nr = hidden global i64 0, align 8, !dbg !309
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@.str = private unnamed_addr constant [12 x i8] c"mm/sparse.c\00", align 1, !dbg !315
@.str.1 = private unnamed_addr constant [46 x i8] c"%s: Failed to allocate %lu bytes align=0x%lx\0A\00", align 1, !dbg !320
@__func__.memory_present = private unnamed_addr constant [15 x i8] c"memory_present\00", align 1, !dbg !325
@physmem_end = external dso_local global i64, align 8
@mminit_loglevel = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [77 x i8] c"\014mminit::pfnvalidation Start of range %lu -> %lu exceeds SPARSEMEM max %lu\0A\00", align 1, !dbg !330
@.str.3 = private unnamed_addr constant [75 x i8] c"\014mminit::pfnvalidation End of range %lu -> %lu exceeds SPARSEMEM max %lu\0A\00", align 1, !dbg !335
@.str.4 = private unnamed_addr constant [41 x i8] c"%s: Failed to allocate %lu bytes nid=%d\0A\00", align 1, !dbg !340
@__func__.sparse_index_alloc = private unnamed_addr constant [19 x i8] c"sparse_index_alloc\00", align 1, !dbg !345
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !350
@node_data = external dso_local global [0 x ptr], align 8
@.str.6 = private unnamed_addr constant [40 x i8] c"\013%s: node[%d] usemap allocation failed\00", align 1, !dbg !355
@__func__.sparse_init_nid = private unnamed_addr constant [16 x i8] c"sparse_init_nid\00", align 1, !dbg !360
@.str.7 = private unnamed_addr constant [77 x i8] c"\013%s: node[%d] memory map backing failed. Some memory will not be available.\00", align 1, !dbg !365
@page_offset_base = external dso_local global i64, align 8
@phys_base = external dso_local global i64, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_mem_section336], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @subsection_map_init(i64 noundef %pfn, i64 noundef %nr_pages) #0 section ".init.text" align 16 !dbg !402 {
entry:
  %pfn.addr = alloca i64, align 8
  %nr_pages.addr = alloca i64, align 8
  %end_sec = alloca i32, align 4
  %nr = alloca i64, align 8
  %start_sec = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %ms = alloca ptr, align 8
  %pfns = alloca i64, align 8
  %__UNIQUE_ID___x337 = alloca i64, align 8
  %__UNIQUE_ID___y338 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp8 = alloca i32, align 4
  store i64 %pfn, ptr %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn.addr, metadata !406, metadata !DIExpression()), !dbg !419
  store i64 %nr_pages, ptr %nr_pages.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr_pages.addr, metadata !407, metadata !DIExpression()), !dbg !420
  call void @llvm.lifetime.start.p0(i64 4, ptr %end_sec) #19, !dbg !421
  call void @llvm.dbg.declare(metadata ptr %end_sec, metadata !408, metadata !DIExpression()), !dbg !422
  %0 = load i64, ptr %pfn.addr, align 8, !dbg !423
  %1 = load i64, ptr %nr_pages.addr, align 8, !dbg !424
  %add = add i64 %0, %1, !dbg !425
  %sub = sub i64 %add, 1, !dbg !426
  %call = call i64 @pfn_to_section_nr(i64 noundef %sub) #20, !dbg !427
  %conv = trunc i64 %call to i32, !dbg !427
  store i32 %conv, ptr %end_sec, align 4, !dbg !422
  call void @llvm.lifetime.start.p0(i64 8, ptr %nr) #19, !dbg !428
  call void @llvm.dbg.declare(metadata ptr %nr, metadata !409, metadata !DIExpression()), !dbg !429
  call void @llvm.lifetime.start.p0(i64 8, ptr %start_sec) #19, !dbg !428
  call void @llvm.dbg.declare(metadata ptr %start_sec, metadata !410, metadata !DIExpression()), !dbg !430
  %2 = load i64, ptr %pfn.addr, align 8, !dbg !431
  %call1 = call i64 @pfn_to_section_nr(i64 noundef %2) #20, !dbg !432
  store i64 %call1, ptr %start_sec, align 8, !dbg !430
  %3 = load i64, ptr %nr_pages.addr, align 8, !dbg !433
  %tobool = icmp ne i64 %3, 0, !dbg !433
  br i1 %tobool, label %if.end, label %if.then, !dbg !435

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !436

if.end:                                           ; preds = %entry
  %4 = load i64, ptr %start_sec, align 8, !dbg !437
  store i64 %4, ptr %nr, align 8, !dbg !438
  br label %for.cond, !dbg !439

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i64, ptr %nr, align 8, !dbg !440
  %6 = load i32, ptr %end_sec, align 4, !dbg !441
  %conv2 = sext i32 %6 to i64, !dbg !441
  %cmp = icmp ule i64 %5, %conv2, !dbg !442
  br i1 %cmp, label %for.body, label %for.end, !dbg !443

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %ms) #19, !dbg !444
  call void @llvm.dbg.declare(metadata ptr %ms, metadata !411, metadata !DIExpression()), !dbg !445
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfns) #19, !dbg !446
  call void @llvm.dbg.declare(metadata ptr %pfns, metadata !415, metadata !DIExpression()), !dbg !447
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x337) #19, !dbg !448
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x337, metadata !416, metadata !DIExpression()), !dbg !448
  %7 = load i64, ptr %nr_pages.addr, align 8, !dbg !448
  store i64 %7, ptr %__UNIQUE_ID___x337, align 8, !dbg !448
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y338) #19, !dbg !448
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y338, metadata !418, metadata !DIExpression()), !dbg !448
  %8 = load i64, ptr %pfn.addr, align 8, !dbg !448
  %and = and i64 %8, 32767, !dbg !448
  %sub4 = sub i64 32768, %and, !dbg !448
  store i64 %sub4, ptr %__UNIQUE_ID___y338, align 8, !dbg !448
  %9 = load i64, ptr %__UNIQUE_ID___x337, align 8, !dbg !448
  %10 = load i64, ptr %__UNIQUE_ID___y338, align 8, !dbg !448
  %cmp5 = icmp ult i64 %9, %10, !dbg !448
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !448

cond.true:                                        ; preds = %for.body
  %11 = load i64, ptr %__UNIQUE_ID___x337, align 8, !dbg !448
  br label %cond.end, !dbg !448

cond.false:                                       ; preds = %for.body
  %12 = load i64, ptr %__UNIQUE_ID___y338, align 8, !dbg !448
  br label %cond.end, !dbg !448

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %11, %cond.true ], [ %12, %cond.false ], !dbg !448
  store i64 %cond, ptr %tmp, align 8, !dbg !448
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y338) #19, !dbg !449
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x337) #19, !dbg !449
  %13 = load i64, ptr %tmp, align 8, !dbg !448
  store i64 %13, ptr %pfns, align 8, !dbg !450
  %14 = load i64, ptr %nr, align 8, !dbg !451
  %call7 = call ptr @__nr_to_section(i64 noundef %14) #20, !dbg !452
  store ptr %call7, ptr %ms, align 8, !dbg !453
  %15 = load ptr, ptr %ms, align 8, !dbg !454
  %usage = getelementptr inbounds %struct.mem_section, ptr %15, i32 0, i32 1, !dbg !455
  %16 = load ptr, ptr %usage, align 8, !dbg !455
  %subsection_map = getelementptr inbounds %struct.mem_section_usage, ptr %16, i32 0, i32 1, !dbg !456
  %arraydecay = getelementptr inbounds [1 x i64], ptr %subsection_map, i64 0, i64 0, !dbg !454
  %17 = load i64, ptr %pfn.addr, align 8, !dbg !457
  %18 = load i64, ptr %pfns, align 8, !dbg !458
  call void @subsection_mask_set(ptr noundef %arraydecay, i64 noundef %17, i64 noundef %18) #20, !dbg !459
  store i32 0, ptr %tmp8, align 4, !dbg !460
  %19 = load i32, ptr %tmp8, align 4, !dbg !463
  %20 = load i64, ptr %pfns, align 8, !dbg !464
  %21 = load i64, ptr %pfn.addr, align 8, !dbg !465
  %add9 = add i64 %21, %20, !dbg !465
  store i64 %add9, ptr %pfn.addr, align 8, !dbg !465
  %22 = load i64, ptr %pfns, align 8, !dbg !466
  %23 = load i64, ptr %nr_pages.addr, align 8, !dbg !467
  %sub10 = sub i64 %23, %22, !dbg !467
  store i64 %sub10, ptr %nr_pages.addr, align 8, !dbg !467
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfns) #19, !dbg !468
  call void @llvm.lifetime.end.p0(i64 8, ptr %ms) #19, !dbg !468
  br label %for.inc, !dbg !469

for.inc:                                          ; preds = %cond.end
  %24 = load i64, ptr %nr, align 8, !dbg !470
  %inc = add i64 %24, 1, !dbg !470
  store i64 %inc, ptr %nr, align 8, !dbg !470
  br label %for.cond, !dbg !471, !llvm.loop !472

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !476
  br label %cleanup, !dbg !476

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %start_sec) #19, !dbg !476
  call void @llvm.lifetime.end.p0(i64 8, ptr %nr) #19, !dbg !476
  call void @llvm.lifetime.end.p0(i64 4, ptr %end_sec) #19, !dbg !476
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !476

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pfn_to_section_nr(i64 noundef %pfn) #3 align 16 !dbg !477 {
entry:
  %pfn.addr = alloca i64, align 8
  store i64 %pfn, ptr %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn.addr, metadata !481, metadata !DIExpression()), !dbg !482
  %0 = load i64, ptr %pfn.addr, align 8, !dbg !483
  %shr = lshr i64 %0, 15, !dbg !484
  ret i64 %shr, !dbg !485
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__nr_to_section(i64 noundef %nr) #3 align 16 !dbg !486 {
entry:
  %retval = alloca ptr, align 8
  %nr.addr = alloca i64, align 8
  %root = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !490, metadata !DIExpression()), !dbg !492
  call void @llvm.lifetime.start.p0(i64 8, ptr %root) #19, !dbg !493
  call void @llvm.dbg.declare(metadata ptr %root, metadata !491, metadata !DIExpression()), !dbg !494
  %0 = load i64, ptr %nr.addr, align 8, !dbg !495
  %div = udiv i64 %0, 256, !dbg !495
  store i64 %div, ptr %root, align 8, !dbg !494
  %1 = load i64, ptr %root, align 8, !dbg !496
  %call = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #20, !dbg !496
  %2 = zext i1 %call to i64, !dbg !496
  %cond = select i1 %call, i32 52, i32 46, !dbg !496
  %sub = sub i32 %cond, 27, !dbg !496
  %sh_prom = zext i32 %sub to i64, !dbg !496
  %shl = shl i64 1, %sh_prom, !dbg !496
  %add = add i64 %shl, 256, !dbg !496
  %sub1 = sub i64 %add, 1, !dbg !496
  %div2 = udiv i64 %sub1, 256, !dbg !496
  %cmp = icmp uge i64 %1, %div2, !dbg !496
  %lnot = xor i1 %cmp, true, !dbg !496
  %lnot3 = xor i1 %lnot, true, !dbg !496
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !496
  %conv = sext i32 %lnot.ext to i64, !dbg !496
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !496
  %tobool = icmp ne i64 %expval, 0, !dbg !496
  br i1 %tobool, label %if.then, label %if.end, !dbg !498

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !499
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !499

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr @mem_section, align 8, !dbg !500
  %tobool4 = icmp ne ptr %3, null, !dbg !500
  br i1 %tobool4, label %lor.lhs.false, label %if.then6, !dbg !502

lor.lhs.false:                                    ; preds = %if.end
  %4 = load ptr, ptr @mem_section, align 8, !dbg !503
  %5 = load i64, ptr %root, align 8, !dbg !504
  %arrayidx = getelementptr ptr, ptr %4, i64 %5, !dbg !503
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !503
  %tobool5 = icmp ne ptr %6, null, !dbg !503
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !505

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  store ptr null, ptr %retval, align 8, !dbg !506
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !506

if.end7:                                          ; preds = %lor.lhs.false
  %7 = load ptr, ptr @mem_section, align 8, !dbg !507
  %8 = load i64, ptr %root, align 8, !dbg !508
  %arrayidx8 = getelementptr ptr, ptr %7, i64 %8, !dbg !507
  %9 = load ptr, ptr %arrayidx8, align 8, !dbg !507
  %10 = load i64, ptr %nr.addr, align 8, !dbg !509
  %and = and i64 %10, 255, !dbg !510
  %arrayidx9 = getelementptr %struct.mem_section, ptr %9, i64 %and, !dbg !507
  store ptr %arrayidx9, ptr %retval, align 8, !dbg !511
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !511

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %root) #19, !dbg !512
  %11 = load ptr, ptr %retval, align 8, !dbg !512
  ret ptr %11, !dbg !512
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @subsection_mask_set(ptr noundef %map, i64 noundef %pfn, i64 noundef %nr_pages) #4 align 16 !dbg !513 {
entry:
  %map.addr = alloca ptr, align 8
  %pfn.addr = alloca i64, align 8
  %nr_pages.addr = alloca i64, align 8
  %idx = alloca i32, align 4
  %end = alloca i32, align 4
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !517, metadata !DIExpression()), !dbg !522
  store i64 %pfn, ptr %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn.addr, metadata !518, metadata !DIExpression()), !dbg !523
  store i64 %nr_pages, ptr %nr_pages.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr_pages.addr, metadata !519, metadata !DIExpression()), !dbg !524
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #19, !dbg !525
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !520, metadata !DIExpression()), !dbg !526
  %0 = load i64, ptr %pfn.addr, align 8, !dbg !527
  %call = call i32 @subsection_map_index(i64 noundef %0) #20, !dbg !528
  store i32 %call, ptr %idx, align 4, !dbg !526
  call void @llvm.lifetime.start.p0(i64 4, ptr %end) #19, !dbg !529
  call void @llvm.dbg.declare(metadata ptr %end, metadata !521, metadata !DIExpression()), !dbg !530
  %1 = load i64, ptr %pfn.addr, align 8, !dbg !531
  %2 = load i64, ptr %nr_pages.addr, align 8, !dbg !532
  %add = add i64 %1, %2, !dbg !533
  %sub = sub i64 %add, 1, !dbg !534
  %call1 = call i32 @subsection_map_index(i64 noundef %sub) #20, !dbg !535
  store i32 %call1, ptr %end, align 4, !dbg !530
  %3 = load ptr, ptr %map.addr, align 8, !dbg !536
  %4 = load i32, ptr %idx, align 4, !dbg !537
  %5 = load i32, ptr %end, align 4, !dbg !538
  %6 = load i32, ptr %idx, align 4, !dbg !539
  %sub2 = sub i32 %5, %6, !dbg !540
  %add3 = add i32 %sub2, 1, !dbg !541
  call void @bitmap_set(ptr noundef %3, i32 noundef %4, i32 noundef %add3) #20, !dbg !542
  call void @llvm.lifetime.end.p0(i64 4, ptr %end) #19, !dbg !543
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #19, !dbg !543
  ret void, !dbg !543
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @mem_section_usage_size() #4 align 16 !dbg !544 {
entry:
  %call = call i64 @usemap_size() #20, !dbg !547
  %add = add i64 24, %call, !dbg !548
  ret i64 %add, !dbg !549
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @usemap_size() #4 align 16 !dbg !550 {
entry:
  ret i64 32, !dbg !553
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden ptr @sparse_buffer_alloc(i64 noundef %size) #0 section ".init.text" align 16 !dbg !554 {
entry:
  %size.addr = alloca i64, align 8
  %ptr = alloca ptr, align 8
  %__y = alloca i64, align 8
  %tmp = alloca i64, align 8
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !558, metadata !DIExpression()), !dbg !564
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #19, !dbg !565
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !559, metadata !DIExpression()), !dbg !566
  store ptr null, ptr %ptr, align 8, !dbg !566
  %0 = load ptr, ptr @sparsemap_buf, align 8, !dbg !567
  %tobool = icmp ne ptr %0, null, !dbg !567
  br i1 %tobool, label %if.then, label %if.end9, !dbg !568

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__y) #19, !dbg !569
  call void @llvm.dbg.declare(metadata ptr %__y, metadata !560, metadata !DIExpression()), !dbg !569
  %1 = load i64, ptr %size.addr, align 8, !dbg !569
  store i64 %1, ptr %__y, align 8, !dbg !569
  %2 = load ptr, ptr @sparsemap_buf, align 8, !dbg !569
  %3 = ptrtoint ptr %2 to i64, !dbg !569
  %4 = load i64, ptr %__y, align 8, !dbg !569
  %sub = sub i64 %4, 1, !dbg !569
  %add = add i64 %3, %sub, !dbg !569
  %5 = load i64, ptr %__y, align 8, !dbg !569
  %div = udiv i64 %add, %5, !dbg !569
  %6 = load i64, ptr %__y, align 8, !dbg !569
  %mul = mul i64 %div, %6, !dbg !569
  store i64 %mul, ptr %tmp, align 8, !dbg !569
  call void @llvm.lifetime.end.p0(i64 8, ptr %__y) #19, !dbg !570
  %7 = load i64, ptr %tmp, align 8, !dbg !569
  %8 = inttoptr i64 %7 to ptr, !dbg !571
  store ptr %8, ptr %ptr, align 8, !dbg !572
  %9 = load ptr, ptr %ptr, align 8, !dbg !573
  %10 = load i64, ptr %size.addr, align 8, !dbg !575
  %add.ptr = getelementptr i8, ptr %9, i64 %10, !dbg !576
  %11 = load ptr, ptr @sparsemap_buf_end, align 8, !dbg !577
  %cmp = icmp ugt ptr %add.ptr, %11, !dbg !578
  br i1 %cmp, label %if.then1, label %if.else, !dbg !579

if.then1:                                         ; preds = %if.then
  store ptr null, ptr %ptr, align 8, !dbg !580
  br label %if.end8, !dbg !581

if.else:                                          ; preds = %if.then
  %12 = load ptr, ptr %ptr, align 8, !dbg !582
  %13 = load ptr, ptr @sparsemap_buf, align 8, !dbg !585
  %sub.ptr.lhs.cast = ptrtoint ptr %12 to i64, !dbg !586
  %sub.ptr.rhs.cast = ptrtoint ptr %13 to i64, !dbg !586
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !586
  %cmp2 = icmp ugt i64 %sub.ptr.sub, 0, !dbg !587
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !588

if.then3:                                         ; preds = %if.else
  %14 = load ptr, ptr %ptr, align 8, !dbg !589
  %15 = load ptr, ptr @sparsemap_buf, align 8, !dbg !590
  %sub.ptr.lhs.cast4 = ptrtoint ptr %14 to i64, !dbg !591
  %sub.ptr.rhs.cast5 = ptrtoint ptr %15 to i64, !dbg !591
  %sub.ptr.sub6 = sub i64 %sub.ptr.lhs.cast4, %sub.ptr.rhs.cast5, !dbg !591
  call void @sparse_buffer_free(i64 noundef %sub.ptr.sub6) #21, !dbg !592
  br label %if.end, !dbg !592

if.end:                                           ; preds = %if.then3, %if.else
  %16 = load ptr, ptr %ptr, align 8, !dbg !593
  %17 = load i64, ptr %size.addr, align 8, !dbg !594
  %add.ptr7 = getelementptr i8, ptr %16, i64 %17, !dbg !595
  store ptr %add.ptr7, ptr @sparsemap_buf, align 8, !dbg !596
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then1
  br label %if.end9, !dbg !597

if.end9:                                          ; preds = %if.end8, %entry
  %18 = load ptr, ptr %ptr, align 8, !dbg !598
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #19, !dbg !599
  ret ptr %18, !dbg !600
}

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @sparse_buffer_free(i64 noundef %size) #5 section ".init.text" align 16 !dbg !601 {
entry:
  %size.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !605, metadata !DIExpression()), !dbg !611
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !612
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !606, metadata !DIExpression()), !dbg !612
  %0 = load ptr, ptr @sparsemap_buf, align 8, !dbg !612
  %tobool = icmp ne ptr %0, null, !dbg !612
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !612

lor.rhs:                                          ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !612
  %cmp = icmp eq i64 %1, 0, !dbg !612
  br label %lor.end, !dbg !612

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp, %lor.rhs ]
  %lnot = xor i1 %2, true, !dbg !612
  %lnot1 = xor i1 %lnot, true, !dbg !612
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !612
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !612
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !613
  %tobool2 = icmp ne i32 %3, 0, !dbg !613
  %lnot3 = xor i1 %tobool2, true, !dbg !613
  %lnot5 = xor i1 %lnot3, true, !dbg !613
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !613
  %conv = sext i32 %lnot.ext6 to i64, !dbg !613
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !613
  %tobool7 = icmp ne i64 %expval, 0, !dbg !613
  br i1 %tobool7, label %if.then, label %if.end, !dbg !612

if.then:                                          ; preds = %lor.end
  br label %do.body, !dbg !613

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #19, !dbg !614
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !608, metadata !DIExpression()), !dbg !614
  store i32 2305, ptr %__flags, align 4, !dbg !614
  br label %do.body8, !dbg !614

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !615

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !615

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !614

do.body9:                                         ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !617
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 453, i32 %4, i64 12) #19, !dbg !617, !srcloc !619
  br label %do.cond10, !dbg !617

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !617

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !614

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !620

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !620

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #19, !dbg !613
  br label %do.cond15, !dbg !614

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !614

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !614

if.end:                                           ; preds = %do.end16, %lor.end
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !612
  %tobool17 = icmp ne i32 %5, 0, !dbg !612
  %lnot18 = xor i1 %tobool17, true, !dbg !612
  %lnot20 = xor i1 %lnot18, true, !dbg !612
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !612
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !612
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !612
  store i64 %expval23, ptr %tmp, align 8, !dbg !613
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !622
  %6 = load i64, ptr %tmp, align 8, !dbg !612
  %7 = load ptr, ptr @sparsemap_buf, align 8, !dbg !623
  %8 = load i64, ptr %size.addr, align 8, !dbg !624
  call void @memblock_free(ptr noundef %7, i64 noundef %8) #20, !dbg !625
  ret void, !dbg !626
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define weak hidden void @vmemmap_populate_print_last() #0 section ".init.text" align 16 !dbg !627 {
entry:
  ret void, !dbg !630
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @sparse_init() #0 section ".init.text" align 16 !dbg !631 {
entry:
  %pnum_end = alloca i64, align 8
  %pnum_begin = alloca i64, align 8
  %map_count = alloca i64, align 8
  %nid_begin = alloca i32, align 4
  %nid = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %pnum_end) #19, !dbg !641
  call void @llvm.dbg.declare(metadata ptr %pnum_end, metadata !633, metadata !DIExpression()), !dbg !642
  call void @llvm.lifetime.start.p0(i64 8, ptr %pnum_begin) #19, !dbg !641
  call void @llvm.dbg.declare(metadata ptr %pnum_begin, metadata !634, metadata !DIExpression()), !dbg !643
  call void @llvm.lifetime.start.p0(i64 8, ptr %map_count) #19, !dbg !641
  call void @llvm.dbg.declare(metadata ptr %map_count, metadata !635, metadata !DIExpression()), !dbg !644
  store i64 1, ptr %map_count, align 8, !dbg !644
  call void @llvm.lifetime.start.p0(i64 4, ptr %nid_begin) #19, !dbg !645
  call void @llvm.dbg.declare(metadata ptr %nid_begin, metadata !636, metadata !DIExpression()), !dbg !646
  call void @memblocks_present() #21, !dbg !647
  %call = call i64 @first_present_section_nr() #20, !dbg !648
  store i64 %call, ptr %pnum_begin, align 8, !dbg !649
  %0 = load i64, ptr %pnum_begin, align 8, !dbg !650
  %call1 = call ptr @__nr_to_section(i64 noundef %0) #20, !dbg !651
  %call2 = call i32 @sparse_early_nid(ptr noundef %call1) #20, !dbg !652
  store i32 %call2, ptr %nid_begin, align 4, !dbg !653
  call void @set_pageblock_order() #20, !dbg !654
  %1 = load i64, ptr %pnum_begin, align 8, !dbg !655
  %add = add i64 %1, 1, !dbg !655
  %sub = sub i64 %add, 1, !dbg !655
  %call3 = call i64 @next_present_section_nr(i64 noundef %sub) #20, !dbg !655
  store i64 %call3, ptr %pnum_end, align 8, !dbg !655
  br label %for.cond, !dbg !655

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, ptr %pnum_end, align 8, !dbg !656
  %cmp = icmp ne i64 %2, -1, !dbg !656
  br i1 %cmp, label %for.body, label %for.end, !dbg !655

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %nid) #19, !dbg !657
  call void @llvm.dbg.declare(metadata ptr %nid, metadata !637, metadata !DIExpression()), !dbg !658
  %3 = load i64, ptr %pnum_end, align 8, !dbg !659
  %call4 = call ptr @__nr_to_section(i64 noundef %3) #20, !dbg !660
  %call5 = call i32 @sparse_early_nid(ptr noundef %call4) #20, !dbg !661
  store i32 %call5, ptr %nid, align 4, !dbg !658
  %4 = load i32, ptr %nid, align 4, !dbg !662
  %5 = load i32, ptr %nid_begin, align 4, !dbg !664
  %cmp6 = icmp eq i32 %4, %5, !dbg !665
  br i1 %cmp6, label %if.then, label %if.end, !dbg !666

if.then:                                          ; preds = %for.body
  %6 = load i64, ptr %map_count, align 8, !dbg !667
  %inc = add i64 %6, 1, !dbg !667
  store i64 %inc, ptr %map_count, align 8, !dbg !667
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !669

if.end:                                           ; preds = %for.body
  %7 = load i32, ptr %nid_begin, align 4, !dbg !670
  %8 = load i64, ptr %pnum_begin, align 8, !dbg !671
  %9 = load i64, ptr %pnum_end, align 8, !dbg !672
  %10 = load i64, ptr %map_count, align 8, !dbg !673
  call void @sparse_init_nid(i32 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10) #21, !dbg !674
  %11 = load i32, ptr %nid, align 4, !dbg !675
  store i32 %11, ptr %nid_begin, align 4, !dbg !676
  %12 = load i64, ptr %pnum_end, align 8, !dbg !677
  store i64 %12, ptr %pnum_begin, align 8, !dbg !678
  store i64 1, ptr %map_count, align 8, !dbg !679
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !680
  br label %cleanup, !dbg !680

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %nid) #19, !dbg !680
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !681

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %13 = load i64, ptr %pnum_end, align 8, !dbg !656
  %call7 = call i64 @next_present_section_nr(i64 noundef %13) #20, !dbg !656
  store i64 %call7, ptr %pnum_end, align 8, !dbg !656
  br label %for.cond, !dbg !656, !llvm.loop !682

for.end:                                          ; preds = %for.cond
  %14 = load i32, ptr %nid_begin, align 4, !dbg !684
  %15 = load i64, ptr %pnum_begin, align 8, !dbg !685
  %16 = load i64, ptr %pnum_end, align 8, !dbg !686
  %17 = load i64, ptr %map_count, align 8, !dbg !687
  call void @sparse_init_nid(i32 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17) #21, !dbg !688
  call void @vmemmap_populate_print_last() #21, !dbg !689
  call void @llvm.lifetime.end.p0(i64 4, ptr %nid_begin) #19, !dbg !690
  call void @llvm.lifetime.end.p0(i64 8, ptr %map_count) #19, !dbg !690
  call void @llvm.lifetime.end.p0(i64 8, ptr %pnum_begin) #19, !dbg !690
  call void @llvm.lifetime.end.p0(i64 8, ptr %pnum_end) #19, !dbg !690
  ret void, !dbg !690

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @memblocks_present() #0 section ".init.text" align 16 !dbg !691 {
entry:
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %i = alloca i32, align 4
  %nid = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #19, !dbg !697
  call void @llvm.dbg.declare(metadata ptr %start, metadata !693, metadata !DIExpression()), !dbg !698
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #19, !dbg !697
  call void @llvm.dbg.declare(metadata ptr %end, metadata !694, metadata !DIExpression()), !dbg !699
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #19, !dbg !700
  call void @llvm.dbg.declare(metadata ptr %i, metadata !695, metadata !DIExpression()), !dbg !701
  call void @llvm.lifetime.start.p0(i64 4, ptr %nid) #19, !dbg !700
  call void @llvm.dbg.declare(metadata ptr %nid, metadata !696, metadata !DIExpression()), !dbg !702
  store i32 -1, ptr %i, align 4, !dbg !703
  call void @__next_mem_pfn_range(ptr noundef %i, i32 noundef 64, ptr noundef %start, ptr noundef %end, ptr noundef %nid) #20, !dbg !703
  br label %for.cond, !dbg !703

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !705
  %cmp = icmp sge i32 %0, 0, !dbg !705
  br i1 %cmp, label %for.body, label %for.end, !dbg !703

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %nid, align 4, !dbg !707
  %2 = load i64, ptr %start, align 8, !dbg !708
  %3 = load i64, ptr %end, align 8, !dbg !709
  call void @memory_present(i32 noundef %1, i64 noundef %2, i64 noundef %3) #21, !dbg !710
  br label %for.inc, !dbg !710

for.inc:                                          ; preds = %for.body
  call void @__next_mem_pfn_range(ptr noundef %i, i32 noundef 64, ptr noundef %start, ptr noundef %end, ptr noundef %nid) #20, !dbg !705
  br label %for.cond, !dbg !705, !llvm.loop !711

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %nid) #19, !dbg !713
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #19, !dbg !713
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #19, !dbg !713
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #19, !dbg !713
  ret void, !dbg !713
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @first_present_section_nr() #3 align 16 !dbg !714 {
entry:
  %call = call i64 @next_present_section_nr(i64 noundef -1) #20, !dbg !715
  ret i64 %call, !dbg !716
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sparse_early_nid(ptr noundef %section) #3 align 16 !dbg !717 {
entry:
  %section.addr = alloca ptr, align 8
  store ptr %section, ptr %section.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %section.addr, metadata !721, metadata !DIExpression()), !dbg !722
  %0 = load ptr, ptr %section.addr, align 8, !dbg !723
  %section_mem_map = getelementptr inbounds %struct.mem_section, ptr %0, i32 0, i32 0, !dbg !724
  %1 = load i64, ptr %section_mem_map, align 8, !dbg !724
  %shr = lshr i64 %1, 4, !dbg !725
  %conv = trunc i64 %shr to i32, !dbg !726
  ret i32 %conv, !dbg !727
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !728 dso_local void @set_pageblock_order() #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @next_present_section_nr(i64 noundef %section_nr) #3 align 16 !dbg !729 {
entry:
  %retval = alloca i64, align 8
  %section_nr.addr = alloca i64, align 8
  store i64 %section_nr, ptr %section_nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %section_nr.addr, metadata !731, metadata !DIExpression()), !dbg !732
  br label %while.cond, !dbg !733

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i64, ptr %section_nr.addr, align 8, !dbg !734
  %inc = add i64 %0, 1, !dbg !734
  store i64 %inc, ptr %section_nr.addr, align 8, !dbg !734
  %1 = load i64, ptr @__highest_present_section_nr, align 8, !dbg !735
  %cmp = icmp ule i64 %inc, %1, !dbg !736
  br i1 %cmp, label %while.body, label %while.end, !dbg !733

while.body:                                       ; preds = %while.cond
  %2 = load i64, ptr %section_nr.addr, align 8, !dbg !737
  %call = call i32 @present_section_nr(i64 noundef %2) #20, !dbg !740
  %tobool = icmp ne i32 %call, 0, !dbg !740
  br i1 %tobool, label %if.then, label %if.end, !dbg !741

if.then:                                          ; preds = %while.body
  %3 = load i64, ptr %section_nr.addr, align 8, !dbg !742
  store i64 %3, ptr %retval, align 8, !dbg !743
  br label %return, !dbg !743

if.end:                                           ; preds = %while.body
  br label %while.cond, !dbg !733, !llvm.loop !744

while.end:                                        ; preds = %while.cond
  store i64 -1, ptr %retval, align 8, !dbg !746
  br label %return, !dbg !746

return:                                           ; preds = %while.end, %if.then
  %4 = load i64, ptr %retval, align 8, !dbg !747
  ret i64 %4, !dbg !747
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @sparse_init_nid(i32 noundef %nid, i64 noundef %pnum_begin, i64 noundef %pnum_end, i64 noundef %map_count) #0 section ".init.text" align 16 !dbg !748 {
entry:
  %nid.addr = alloca i32, align 4
  %pnum_begin.addr = alloca i64, align 8
  %pnum_end.addr = alloca i64, align 8
  %map_count.addr = alloca i64, align 8
  %usage = alloca ptr, align 8
  %pnum = alloca i64, align 8
  %map = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %pfn = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp16 = alloca i32, align 4
  %ms = alloca ptr, align 8
  store i32 %nid, ptr %nid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !752, metadata !DIExpression()), !dbg !5925
  store i64 %pnum_begin, ptr %pnum_begin.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pnum_begin.addr, metadata !753, metadata !DIExpression()), !dbg !5926
  store i64 %pnum_end, ptr %pnum_end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pnum_end.addr, metadata !754, metadata !DIExpression()), !dbg !5927
  store i64 %map_count, ptr %map_count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map_count.addr, metadata !755, metadata !DIExpression()), !dbg !5928
  call void @llvm.lifetime.start.p0(i64 8, ptr %usage) #19, !dbg !5929
  call void @llvm.dbg.declare(metadata ptr %usage, metadata !756, metadata !DIExpression()), !dbg !5930
  call void @llvm.lifetime.start.p0(i64 8, ptr %pnum) #19, !dbg !5931
  call void @llvm.dbg.declare(metadata ptr %pnum, metadata !757, metadata !DIExpression()), !dbg !5932
  call void @llvm.lifetime.start.p0(i64 8, ptr %map) #19, !dbg !5933
  call void @llvm.dbg.declare(metadata ptr %map, metadata !758, metadata !DIExpression()), !dbg !5934
  %0 = load i32, ptr %nid.addr, align 4, !dbg !5935
  %idxprom = sext i32 %0 to i64, !dbg !5935
  %arrayidx = getelementptr [0 x ptr], ptr @node_data, i64 0, i64 %idxprom, !dbg !5935
  %1 = load ptr, ptr %arrayidx, align 8, !dbg !5935
  %call = call i64 @mem_section_usage_size() #20, !dbg !5936
  %2 = load i64, ptr %map_count.addr, align 8, !dbg !5937
  %mul = mul i64 %call, %2, !dbg !5938
  %call1 = call ptr @sparse_early_usemaps_alloc_pgdat_section(ptr noundef %1, i64 noundef %mul) #21, !dbg !5939
  store ptr %call1, ptr %usage, align 8, !dbg !5940
  %3 = load ptr, ptr %usage, align 8, !dbg !5941
  %tobool = icmp ne ptr %3, null, !dbg !5941
  br i1 %tobool, label %if.end, label %if.then, !dbg !5943

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5944

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !5947

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5947

do.end:                                           ; preds = %do.cond
  %4 = load i32, ptr %nid.addr, align 4, !dbg !5944
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6, ptr noundef @__func__.sparse_init_nid, i32 noundef %4) #21, !dbg !5944
  store i32 %call2, ptr %tmp, align 4, !dbg !5947
  %5 = load i32, ptr %tmp, align 4, !dbg !5944
  br label %failed, !dbg !5949

if.end:                                           ; preds = %entry
  %6 = load i64, ptr %map_count.addr, align 8, !dbg !5950
  %call3 = call i64 @section_map_size() #21, !dbg !5951
  %mul4 = mul i64 %6, %call3, !dbg !5952
  %7 = load i32, ptr %nid.addr, align 4, !dbg !5953
  call void @sparse_buffer_init(i64 noundef %mul4, i32 noundef %7) #21, !dbg !5954
  %8 = load i64, ptr %pnum_begin.addr, align 8, !dbg !5955
  %sub = sub i64 %8, 1, !dbg !5955
  %call5 = call i64 @next_present_section_nr(i64 noundef %sub) #20, !dbg !5955
  store i64 %call5, ptr %pnum, align 8, !dbg !5955
  br label %for.cond, !dbg !5955

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i64, ptr %pnum, align 8, !dbg !5956
  %cmp = icmp ne i64 %9, -1, !dbg !5956
  br i1 %cmp, label %for.body, label %for.end, !dbg !5955

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfn) #19, !dbg !5957
  call void @llvm.dbg.declare(metadata ptr %pfn, metadata !5916, metadata !DIExpression()), !dbg !5958
  %10 = load i64, ptr %pnum, align 8, !dbg !5959
  %call6 = call i64 @section_nr_to_pfn(i64 noundef %10) #20, !dbg !5960
  store i64 %call6, ptr %pfn, align 8, !dbg !5958
  %11 = load i64, ptr %pnum, align 8, !dbg !5961
  %12 = load i64, ptr %pnum_end.addr, align 8, !dbg !5963
  %cmp7 = icmp uge i64 %11, %12, !dbg !5964
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !5965

if.then8:                                         ; preds = %for.body
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5966

if.end9:                                          ; preds = %for.body
  %13 = load i64, ptr %pfn, align 8, !dbg !5967
  %14 = load i32, ptr %nid.addr, align 4, !dbg !5968
  %call10 = call ptr @__populate_section_memmap(i64 noundef %13, i64 noundef 32768, i32 noundef %14, ptr noundef null, ptr noundef null) #20, !dbg !5969
  store ptr %call10, ptr %map, align 8, !dbg !5970
  %15 = load ptr, ptr %map, align 8, !dbg !5971
  %tobool11 = icmp ne ptr %15, null, !dbg !5971
  br i1 %tobool11, label %if.end18, label %if.then12, !dbg !5973

if.then12:                                        ; preds = %if.end9
  br label %do.body13, !dbg !5974

do.body13:                                        ; preds = %if.then12
  br label %do.cond14, !dbg !5977

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !5977

do.end15:                                         ; preds = %do.cond14
  %16 = load i32, ptr %nid.addr, align 4, !dbg !5974
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7, ptr noundef @__func__.sparse_init_nid, i32 noundef %16) #21, !dbg !5974
  store i32 %call17, ptr %tmp16, align 4, !dbg !5977
  %17 = load i32, ptr %tmp16, align 4, !dbg !5974
  %18 = load i64, ptr %pnum, align 8, !dbg !5979
  store i64 %18, ptr %pnum_begin.addr, align 8, !dbg !5980
  call void @sparse_buffer_fini() #21, !dbg !5981
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5982

if.end18:                                         ; preds = %if.end9
  %19 = load i32, ptr %nid.addr, align 4, !dbg !5983
  %20 = load ptr, ptr %usage, align 8, !dbg !5984
  call void @check_usemap_section_nr(i32 noundef %19, ptr noundef %20) #21, !dbg !5985
  %21 = load i64, ptr %pnum, align 8, !dbg !5986
  %call19 = call ptr @__nr_to_section(i64 noundef %21) #20, !dbg !5987
  %22 = load i64, ptr %pnum, align 8, !dbg !5988
  %23 = load ptr, ptr %map, align 8, !dbg !5989
  %24 = load ptr, ptr %usage, align 8, !dbg !5990
  call void @sparse_init_one_section(ptr noundef %call19, i64 noundef %22, ptr noundef %23, ptr noundef %24, i64 noundef 8) #21, !dbg !5991
  %25 = load ptr, ptr %usage, align 8, !dbg !5992
  %call20 = call i64 @mem_section_usage_size() #20, !dbg !5993
  %add.ptr = getelementptr i8, ptr %25, i64 %call20, !dbg !5994
  store ptr %add.ptr, ptr %usage, align 8, !dbg !5995
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5996
  br label %cleanup, !dbg !5996

cleanup:                                          ; preds = %do.end15, %if.end18, %if.then8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfn) #19, !dbg !5996
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup37 [
    i32 0, label %cleanup.cont
    i32 5, label %for.end
    i32 4, label %failed
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !5997

for.inc:                                          ; preds = %cleanup.cont
  %26 = load i64, ptr %pnum, align 8, !dbg !5956
  %call21 = call i64 @next_present_section_nr(i64 noundef %26) #20, !dbg !5956
  store i64 %call21, ptr %pnum, align 8, !dbg !5956
  br label %for.cond, !dbg !5956, !llvm.loop !5998

for.end:                                          ; preds = %cleanup, %for.cond
  call void @sparse_buffer_fini() #21, !dbg !6000
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup37, !dbg !6001

failed:                                           ; preds = %cleanup, %do.end
  call void @llvm.dbg.label(metadata !5920), !dbg !6002
  %27 = load i64, ptr %pnum_begin.addr, align 8, !dbg !6003
  %sub22 = sub i64 %27, 1, !dbg !6003
  %call23 = call i64 @next_present_section_nr(i64 noundef %sub22) #20, !dbg !6003
  store i64 %call23, ptr %pnum, align 8, !dbg !6003
  br label %for.cond24, !dbg !6003

for.cond24:                                       ; preds = %for.inc34, %failed
  %28 = load i64, ptr %pnum, align 8, !dbg !6004
  %cmp25 = icmp ne i64 %28, -1, !dbg !6004
  br i1 %cmp25, label %for.body26, label %for.end36, !dbg !6003

for.body26:                                       ; preds = %for.cond24
  call void @llvm.lifetime.start.p0(i64 8, ptr %ms) #19, !dbg !6005
  call void @llvm.dbg.declare(metadata ptr %ms, metadata !5921, metadata !DIExpression()), !dbg !6006
  %29 = load i64, ptr %pnum, align 8, !dbg !6007
  %30 = load i64, ptr %pnum_end.addr, align 8, !dbg !6009
  %cmp27 = icmp uge i64 %29, %30, !dbg !6010
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6011

if.then28:                                        ; preds = %for.body26
  store i32 10, ptr %cleanup.dest.slot, align 4
  br label %cleanup31, !dbg !6012

if.end29:                                         ; preds = %for.body26
  %31 = load i64, ptr %pnum, align 8, !dbg !6013
  %call30 = call ptr @__nr_to_section(i64 noundef %31) #20, !dbg !6014
  store ptr %call30, ptr %ms, align 8, !dbg !6015
  %32 = load ptr, ptr %ms, align 8, !dbg !6016
  %section_mem_map = getelementptr inbounds %struct.mem_section, ptr %32, i32 0, i32 0, !dbg !6017
  store i64 0, ptr %section_mem_map, align 8, !dbg !6018
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6019
  br label %cleanup31, !dbg !6019

cleanup31:                                        ; preds = %if.end29, %if.then28
  call void @llvm.lifetime.end.p0(i64 8, ptr %ms) #19, !dbg !6019
  %cleanup.dest32 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest32, label %unreachable [
    i32 0, label %cleanup.cont33
    i32 10, label %for.end36
  ]

cleanup.cont33:                                   ; preds = %cleanup31
  br label %for.inc34, !dbg !6020

for.inc34:                                        ; preds = %cleanup.cont33
  %33 = load i64, ptr %pnum, align 8, !dbg !6004
  %call35 = call i64 @next_present_section_nr(i64 noundef %33) #20, !dbg !6004
  store i64 %call35, ptr %pnum, align 8, !dbg !6004
  br label %for.cond24, !dbg !6004, !llvm.loop !6021

for.end36:                                        ; preds = %cleanup31, %for.cond24
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6023
  br label %cleanup37, !dbg !6023

cleanup37:                                        ; preds = %for.end36, %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %map) #19, !dbg !6023
  call void @llvm.lifetime.end.p0(i64 8, ptr %pnum) #19, !dbg !6023
  call void @llvm.lifetime.end.p0(i64 8, ptr %usage) #19, !dbg !6023
  %cleanup.dest40 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest40, label %unreachable [
    i32 0, label %cleanup.cont41
    i32 1, label %cleanup.cont41
  ]

cleanup.cont41:                                   ; preds = %cleanup37, %cleanup37
  ret void, !dbg !6023

unreachable:                                      ; preds = %cleanup37, %cleanup31
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_static_cpu_has(i16 noundef zeroext %bit) #7 align 16 !dbg !6024 {
entry:
  %retval = alloca i1, align 1
  %bit.addr = alloca i16, align 2
  store i16 %bit, ptr %bit.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !6029, metadata !DIExpression()), !dbg !6032
  %0 = load i16, ptr %bit.addr, align 2, !dbg !6033
  %1 = load i16, ptr %bit.addr, align 2, !dbg !6034
  %conv = zext i16 %1 to i32, !dbg !6034
  %and = and i32 %conv, 7, !dbg !6035
  %shl = shl i32 1, %and, !dbg !6036
  %2 = load i16, ptr %bit.addr, align 2, !dbg !6037
  %conv1 = zext i16 %2 to i32, !dbg !6037
  %shr = ashr i32 %conv1, 3, !dbg !6038
  %idxprom = sext i32 %shr to i64, !dbg !6039
  %arrayidx = getelementptr i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10), i64 %idxprom, !dbg !6039
  callbr void asm sideeffect "# ALT: oldinstr2\0A661:\0A\09jmp 6f\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+21)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ${0:c}\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09jmp ${4:l}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09\0A6652:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A testb $1,${2:P} (% rip)\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %shl, ptr %arrayidx) #19
          to label %asm.fallthrough [label %t_yes, label %t_no], !dbg !6040, !srcloc !6041

asm.fallthrough:                                  ; preds = %entry
  br label %t_yes, !dbg !6040

t_yes:                                            ; preds = %asm.fallthrough, %entry
  call void @llvm.dbg.label(metadata !6030), !dbg !6042
  store i1 true, ptr %retval, align 1, !dbg !6043
  br label %return, !dbg !6043

t_no:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !6031), !dbg !6044
  store i1 false, ptr %retval, align 1, !dbg !6045
  br label %return, !dbg !6045

return:                                           ; preds = %t_no, %t_yes
  %3 = load i1, ptr %retval, align 1, !dbg !6046
  ret i1 %3, !dbg !6046
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @subsection_map_index(i64 noundef %pfn) #3 align 16 !dbg !6047 {
entry:
  %pfn.addr = alloca i64, align 8
  store i64 %pfn, ptr %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn.addr, metadata !6051, metadata !DIExpression()), !dbg !6052
  %0 = load i64, ptr %pfn.addr, align 8, !dbg !6053
  %and = and i64 %0, 32767, !dbg !6054
  %div = udiv i64 %and, 512, !dbg !6055
  %conv = trunc i64 %div to i32, !dbg !6056
  ret i32 %conv, !dbg !6057
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bitmap_set(ptr noundef %map, i32 noundef %start, i32 noundef %nbits) #7 align 16 !dbg !6058 {
entry:
  %map.addr = alloca ptr, align 8
  %start.addr = alloca i32, align 4
  %nbits.addr = alloca i32, align 4
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !6063, metadata !DIExpression()), !dbg !6066
  store i32 %start, ptr %start.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !6064, metadata !DIExpression()), !dbg !6067
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !6065, metadata !DIExpression()), !dbg !6068
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !6069
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6071
  br i1 %1, label %land.lhs.true, label %if.else, !dbg !6072

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !6073
  %cmp = icmp eq i32 %2, 1, !dbg !6074
  br i1 %cmp, label %if.then, label %if.else, !dbg !6075

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, ptr %start.addr, align 4, !dbg !6076
  %4 = call i1 @llvm.is.constant.i32(i32 %3), !dbg !6076
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !6076

land.lhs.true1:                                   ; preds = %if.then
  %5 = load ptr, ptr %map.addr, align 8, !dbg !6076
  %6 = ptrtoint ptr %5 to i64, !dbg !6076
  %cmp2 = icmp ne i64 %6, 0, !dbg !6076
  %conv = zext i1 %cmp2 to i32, !dbg !6076
  %7 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !6076
  br i1 %7, label %land.lhs.true3, label %cond.false, !dbg !6076

land.lhs.true3:                                   ; preds = %land.lhs.true1
  %8 = load ptr, ptr %map.addr, align 8, !dbg !6076
  %9 = ptrtoint ptr %8 to i64, !dbg !6076
  %cmp4 = icmp ne i64 %9, 0, !dbg !6076
  br i1 %cmp4, label %land.lhs.true6, label %cond.false, !dbg !6076

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %10 = load ptr, ptr %map.addr, align 8, !dbg !6076
  %11 = load i64, ptr %10, align 8, !dbg !6076
  %12 = call i1 @llvm.is.constant.i64(i64 %11), !dbg !6076
  br i1 %12, label %cond.true, label %cond.false, !dbg !6076

cond.true:                                        ; preds = %land.lhs.true6
  %13 = load i32, ptr %start.addr, align 4, !dbg !6076
  %conv7 = zext i32 %13 to i64, !dbg !6076
  %14 = load ptr, ptr %map.addr, align 8, !dbg !6076
  call void @generic___set_bit(i64 noundef %conv7, ptr noundef %14) #20, !dbg !6076
  br label %cond.end, !dbg !6076

cond.false:                                       ; preds = %land.lhs.true6, %land.lhs.true3, %land.lhs.true1, %if.then
  %15 = load i32, ptr %start.addr, align 4, !dbg !6076
  %conv8 = zext i32 %15 to i64, !dbg !6076
  %16 = load ptr, ptr %map.addr, align 8, !dbg !6076
  call void @___set_bit(i64 noundef %conv8, ptr noundef %16) #20, !dbg !6076
  br label %cond.end, !dbg !6076

cond.end:                                         ; preds = %cond.false, %cond.true
  br label %if.end41, !dbg !6076

if.else:                                          ; preds = %land.lhs.true, %entry
  %17 = load i32, ptr %start.addr, align 4, !dbg !6077
  %18 = load i32, ptr %nbits.addr, align 4, !dbg !6077
  %add = add i32 %17, %18, !dbg !6077
  %19 = call i1 @llvm.is.constant.i32(i32 %add), !dbg !6077
  br i1 %19, label %land.lhs.true9, label %if.else24, !dbg !6077

land.lhs.true9:                                   ; preds = %if.else
  %20 = load i32, ptr %start.addr, align 4, !dbg !6077
  %21 = load i32, ptr %nbits.addr, align 4, !dbg !6077
  %add10 = add i32 %20, %21, !dbg !6077
  %cmp11 = icmp ule i32 %add10, 64, !dbg !6077
  br i1 %cmp11, label %land.lhs.true13, label %if.else24, !dbg !6077

land.lhs.true13:                                  ; preds = %land.lhs.true9
  %22 = load i32, ptr %start.addr, align 4, !dbg !6077
  %23 = load i32, ptr %nbits.addr, align 4, !dbg !6077
  %add14 = add i32 %22, %23, !dbg !6077
  %cmp15 = icmp ugt i32 %add14, 0, !dbg !6077
  br i1 %cmp15, label %if.then17, label %if.else24, !dbg !6079

if.then17:                                        ; preds = %land.lhs.true13
  %24 = load i32, ptr %start.addr, align 4, !dbg !6080
  %sh_prom = zext i32 %24 to i64, !dbg !6080
  %shl = shl i64 1, %sh_prom, !dbg !6080
  %sub = sub i64 -1, %shl, !dbg !6080
  %add18 = add i64 %sub, 1, !dbg !6080
  %25 = load i32, ptr %start.addr, align 4, !dbg !6080
  %26 = load i32, ptr %nbits.addr, align 4, !dbg !6080
  %add19 = add i32 %25, %26, !dbg !6080
  %sub20 = sub i32 %add19, 1, !dbg !6080
  %sub21 = sub i32 63, %sub20, !dbg !6080
  %sh_prom22 = zext i32 %sub21 to i64, !dbg !6080
  %shr = lshr i64 -1, %sh_prom22, !dbg !6080
  %and = and i64 %add18, %shr, !dbg !6080
  %add23 = add i64 0, %and, !dbg !6080
  %27 = load ptr, ptr %map.addr, align 8, !dbg !6081
  %28 = load i64, ptr %27, align 8, !dbg !6082
  %or = or i64 %28, %add23, !dbg !6082
  store i64 %or, ptr %27, align 8, !dbg !6082
  br label %if.end40, !dbg !6083

if.else24:                                        ; preds = %land.lhs.true13, %land.lhs.true9, %if.else
  %29 = load i32, ptr %start.addr, align 4, !dbg !6084
  %and25 = and i32 %29, 7, !dbg !6086
  %30 = call i1 @llvm.is.constant.i32(i32 %and25), !dbg !6087
  br i1 %30, label %land.lhs.true26, label %if.else39, !dbg !6088

land.lhs.true26:                                  ; preds = %if.else24
  %31 = load i32, ptr %start.addr, align 4, !dbg !6089
  %and27 = and i32 %31, 7, !dbg !6089
  %cmp28 = icmp eq i32 %and27, 0, !dbg !6089
  br i1 %cmp28, label %land.lhs.true30, label %if.else39, !dbg !6090

land.lhs.true30:                                  ; preds = %land.lhs.true26
  %32 = load i32, ptr %nbits.addr, align 4, !dbg !6091
  %and31 = and i32 %32, 7, !dbg !6092
  %33 = call i1 @llvm.is.constant.i32(i32 %and31), !dbg !6093
  br i1 %33, label %land.lhs.true32, label %if.else39, !dbg !6094

land.lhs.true32:                                  ; preds = %land.lhs.true30
  %34 = load i32, ptr %nbits.addr, align 4, !dbg !6095
  %and33 = and i32 %34, 7, !dbg !6095
  %cmp34 = icmp eq i32 %and33, 0, !dbg !6095
  br i1 %cmp34, label %if.then36, label %if.else39, !dbg !6096

if.then36:                                        ; preds = %land.lhs.true32
  %35 = load ptr, ptr %map.addr, align 8, !dbg !6097
  %36 = load i32, ptr %start.addr, align 4, !dbg !6098
  %div = udiv i32 %36, 8, !dbg !6099
  %idx.ext = zext i32 %div to i64, !dbg !6100
  %add.ptr = getelementptr i8, ptr %35, i64 %idx.ext, !dbg !6100
  %37 = load i32, ptr %nbits.addr, align 4, !dbg !6101
  %div37 = udiv i32 %37, 8, !dbg !6102
  %conv38 = zext i32 %div37 to i64, !dbg !6101
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr, i8 -1, i64 %conv38, i1 false), !dbg !6103
  br label %if.end, !dbg !6103

if.else39:                                        ; preds = %land.lhs.true32, %land.lhs.true30, %land.lhs.true26, %if.else24
  %38 = load ptr, ptr %map.addr, align 8, !dbg !6104
  %39 = load i32, ptr %start.addr, align 4, !dbg !6105
  %40 = load i32, ptr %nbits.addr, align 4, !dbg !6106
  call void @__bitmap_set(ptr noundef %38, i32 noundef %39, i32 noundef %40) #20, !dbg !6107
  br label %if.end

if.end:                                           ; preds = %if.else39, %if.then36
  br label %if.end40

if.end40:                                         ; preds = %if.end, %if.then17
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %cond.end
  ret void, !dbg !6108
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @generic___set_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6109 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %p = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6116, metadata !DIExpression()), !dbg !6120
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6117, metadata !DIExpression()), !dbg !6121
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #19, !dbg !6122
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6118, metadata !DIExpression()), !dbg !6123
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6124
  %rem = urem i64 %0, 64, !dbg !6124
  %shl = shl i64 1, %rem, !dbg !6124
  store i64 %shl, ptr %mask, align 8, !dbg !6123
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #19, !dbg !6125
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6119, metadata !DIExpression()), !dbg !6126
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6127
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6128
  %div = udiv i64 %2, 64, !dbg !6128
  %add.ptr = getelementptr i64, ptr %1, i64 %div, !dbg !6129
  store ptr %add.ptr, ptr %p, align 8, !dbg !6126
  %3 = load i64, ptr %mask, align 8, !dbg !6130
  %4 = load ptr, ptr %p, align 8, !dbg !6131
  %5 = load i64, ptr %4, align 8, !dbg !6132
  %or = or i64 %5, %3, !dbg !6132
  store i64 %or, ptr %4, align 8, !dbg !6132
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #19, !dbg !6133
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #19, !dbg !6133
  ret void, !dbg !6133
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @___set_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6134 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6137, metadata !DIExpression()), !dbg !6139
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6138, metadata !DIExpression()), !dbg !6140
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6141
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6142
  %div = udiv i64 %1, 64, !dbg !6142
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6143
  call void @instrument_write(ptr noundef %add.ptr, i64 noundef 8) #20, !dbg !6144
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6145
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6146
  call void @arch___set_bit(i64 noundef %2, ptr noundef %3) #20, !dbg !6147
  ret void, !dbg !6148
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6149 dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_write(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !6152 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6160, metadata !DIExpression()), !dbg !6162
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6161, metadata !DIExpression()), !dbg !6163
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6164
  %1 = load i64, ptr %size.addr, align 8, !dbg !6165
  %conv = trunc i64 %1 to i32, !dbg !6165
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #20, !dbg !6166
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6167
  %3 = load i64, ptr %size.addr, align 8, !dbg !6167
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 1) #20, !dbg !6167
  ret void, !dbg !6168
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch___set_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6169 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6172, metadata !DIExpression()), !dbg !6174
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6173, metadata !DIExpression()), !dbg !6175
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6176
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6177
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #19, !dbg !6178, !srcloc !6179
  ret void, !dbg !6180
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !6181 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6186, metadata !DIExpression()), !dbg !6188
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6187, metadata !DIExpression()), !dbg !6189
  ret i1 true, !dbg !6190
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !6191 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6196, metadata !DIExpression()), !dbg !6199
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6197, metadata !DIExpression()), !dbg !6200
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6198, metadata !DIExpression()), !dbg !6201
  ret void, !dbg !6202
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6203 dso_local void @memblock_free(ptr noundef, i64 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6207 dso_local void @__next_mem_pfn_range(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @memory_present(i32 noundef %nid, i64 noundef %start, i64 noundef %end) #0 section ".init.text" align 16 !dbg !6210 {
entry:
  %nid.addr = alloca i32, align 4
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %pfn = alloca i64, align 8
  %size = alloca i64, align 8
  %align = alloca i64, align 8
  %section = alloca i64, align 8
  %ms = alloca ptr, align 8
  store i32 %nid, ptr %nid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !6214, metadata !DIExpression()), !dbg !6227
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !6215, metadata !DIExpression()), !dbg !6228
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !6216, metadata !DIExpression()), !dbg !6229
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfn) #19, !dbg !6230
  call void @llvm.dbg.declare(metadata ptr %pfn, metadata !6217, metadata !DIExpression()), !dbg !6231
  %0 = load ptr, ptr @mem_section, align 8, !dbg !6232
  %tobool = icmp ne ptr %0, null, !dbg !6232
  %lnot = xor i1 %tobool, true, !dbg !6232
  %lnot1 = xor i1 %lnot, true, !dbg !6232
  %lnot2 = xor i1 %lnot1, true, !dbg !6232
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6232
  %conv = sext i32 %lnot.ext to i64, !dbg !6232
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6232
  %tobool3 = icmp ne i64 %expval, 0, !dbg !6232
  br i1 %tobool3, label %if.then, label %if.end9, !dbg !6233

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #19, !dbg !6234
  call void @llvm.dbg.declare(metadata ptr %size, metadata !6218, metadata !DIExpression()), !dbg !6235
  call void @llvm.lifetime.start.p0(i64 8, ptr %align) #19, !dbg !6234
  call void @llvm.dbg.declare(metadata ptr %align, metadata !6221, metadata !DIExpression()), !dbg !6236
  %call = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #20, !dbg !6237
  %1 = zext i1 %call to i64, !dbg !6237
  %cond = select i1 %call, i32 52, i32 46, !dbg !6237
  %sub = sub i32 %cond, 27, !dbg !6237
  %sh_prom = zext i32 %sub to i64, !dbg !6237
  %shl = shl i64 1, %sh_prom, !dbg !6237
  %add = add i64 %shl, 256, !dbg !6237
  %sub5 = sub i64 %add, 1, !dbg !6237
  %div = udiv i64 %sub5, 256, !dbg !6237
  %mul = mul i64 8, %div, !dbg !6238
  store i64 %mul, ptr %size, align 8, !dbg !6239
  store i64 64, ptr %align, align 8, !dbg !6240
  %2 = load i64, ptr %size, align 8, !dbg !6241
  %3 = load i64, ptr %align, align 8, !dbg !6242
  %call6 = call ptr @memblock_alloc(i64 noundef %2, i64 noundef %3) #20, !dbg !6243
  store ptr %call6, ptr @mem_section, align 8, !dbg !6244
  %4 = load ptr, ptr @mem_section, align 8, !dbg !6245
  %tobool7 = icmp ne ptr %4, null, !dbg !6245
  br i1 %tobool7, label %if.end, label %if.then8, !dbg !6247

if.then8:                                         ; preds = %if.then
  %5 = load i64, ptr %size, align 8, !dbg !6248
  %6 = load i64, ptr %align, align 8, !dbg !6249
  call void (ptr, ...) @panic(ptr noundef @.str.1, ptr noundef @__func__.memory_present, i64 noundef %5, i64 noundef %6) #22, !dbg !6250
  unreachable, !dbg !6250

if.end:                                           ; preds = %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %align) #19, !dbg !6251
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #19, !dbg !6251
  br label %if.end9, !dbg !6252

if.end9:                                          ; preds = %if.end, %entry
  %7 = load i64, ptr %start.addr, align 8, !dbg !6253
  %and = and i64 %7, -32768, !dbg !6253
  store i64 %and, ptr %start.addr, align 8, !dbg !6253
  call void @mminit_validate_memmodel_limits(ptr noundef %start.addr, ptr noundef %end.addr) #21, !dbg !6254
  %8 = load i64, ptr %start.addr, align 8, !dbg !6255
  store i64 %8, ptr %pfn, align 8, !dbg !6256
  br label %for.cond, !dbg !6257

for.cond:                                         ; preds = %for.inc, %if.end9
  %9 = load i64, ptr %pfn, align 8, !dbg !6258
  %10 = load i64, ptr %end.addr, align 8, !dbg !6259
  %cmp = icmp ult i64 %9, %10, !dbg !6260
  br i1 %cmp, label %for.body, label %for.end, !dbg !6261

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %section) #19, !dbg !6262
  call void @llvm.dbg.declare(metadata ptr %section, metadata !6222, metadata !DIExpression()), !dbg !6263
  %11 = load i64, ptr %pfn, align 8, !dbg !6264
  %call11 = call i64 @pfn_to_section_nr(i64 noundef %11) #20, !dbg !6265
  store i64 %call11, ptr %section, align 8, !dbg !6263
  call void @llvm.lifetime.start.p0(i64 8, ptr %ms) #19, !dbg !6266
  call void @llvm.dbg.declare(metadata ptr %ms, metadata !6226, metadata !DIExpression()), !dbg !6267
  %12 = load i64, ptr %section, align 8, !dbg !6268
  %13 = load i32, ptr %nid.addr, align 4, !dbg !6269
  %call12 = call i32 @sparse_index_init(i64 noundef %12, i32 noundef %13) #21, !dbg !6270
  %14 = load i64, ptr %section, align 8, !dbg !6271
  %15 = load i32, ptr %nid.addr, align 4, !dbg !6272
  call void @set_section_nid(i64 noundef %14, i32 noundef %15) #20, !dbg !6273
  %16 = load i64, ptr %section, align 8, !dbg !6274
  %call13 = call ptr @__nr_to_section(i64 noundef %16) #20, !dbg !6275
  store ptr %call13, ptr %ms, align 8, !dbg !6276
  %17 = load ptr, ptr %ms, align 8, !dbg !6277
  %section_mem_map = getelementptr inbounds %struct.mem_section, ptr %17, i32 0, i32 0, !dbg !6279
  %18 = load i64, ptr %section_mem_map, align 8, !dbg !6279
  %tobool14 = icmp ne i64 %18, 0, !dbg !6277
  br i1 %tobool14, label %if.end18, label %if.then15, !dbg !6280

if.then15:                                        ; preds = %for.body
  %19 = load i32, ptr %nid.addr, align 4, !dbg !6281
  %call16 = call i64 @sparse_encode_early_nid(i32 noundef %19) #20, !dbg !6283
  %or = or i64 %call16, 4, !dbg !6284
  %20 = load ptr, ptr %ms, align 8, !dbg !6285
  %section_mem_map17 = getelementptr inbounds %struct.mem_section, ptr %20, i32 0, i32 0, !dbg !6286
  store i64 %or, ptr %section_mem_map17, align 8, !dbg !6287
  %21 = load ptr, ptr %ms, align 8, !dbg !6288
  %22 = load i64, ptr %section, align 8, !dbg !6289
  call void @__section_mark_present(ptr noundef %21, i64 noundef %22) #20, !dbg !6290
  br label %if.end18, !dbg !6291

if.end18:                                         ; preds = %if.then15, %for.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %ms) #19, !dbg !6292
  call void @llvm.lifetime.end.p0(i64 8, ptr %section) #19, !dbg !6292
  br label %for.inc, !dbg !6293

for.inc:                                          ; preds = %if.end18
  %23 = load i64, ptr %pfn, align 8, !dbg !6294
  %add19 = add i64 %23, 32768, !dbg !6294
  store i64 %add19, ptr %pfn, align 8, !dbg !6294
  br label %for.cond, !dbg !6295, !llvm.loop !6296

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfn) #19, !dbg !6298
  ret void, !dbg !6298
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @memblock_alloc(i64 noundef %size, i64 noundef %align) #7 align 16 !dbg !6299 {
entry:
  %size.addr = alloca i64, align 8
  %align.addr = alloca i64, align 8
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6303, metadata !DIExpression()), !dbg !6305
  store i64 %align, ptr %align.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %align.addr, metadata !6304, metadata !DIExpression()), !dbg !6306
  %0 = load i64, ptr %size.addr, align 8, !dbg !6307
  %1 = load i64, ptr %align.addr, align 8, !dbg !6308
  %call = call ptr @memblock_alloc_try_nid(i64 noundef %0, i64 noundef %1, i64 noundef 0, i64 noundef 0, i32 noundef -1) #20, !dbg !6309
  ret ptr %call, !dbg !6310
}

; Function Attrs: cold noredzone noreturn null_pointer_is_valid
declare !dbg !6311 dso_local void @panic(ptr noundef, ...) #11

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @mminit_validate_memmodel_limits(ptr noundef %start_pfn, ptr noundef %end_pfn) #0 section ".init.text" align 16 !dbg !6315 {
entry:
  %start_pfn.addr = alloca ptr, align 8
  %end_pfn.addr = alloca ptr, align 8
  %max_sparsemem_pfn = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp22 = alloca i64, align 8
  %tmp40 = alloca i32, align 4
  %__ret_warn_on45 = alloca i32, align 4
  %__flags56 = alloca i32, align 4
  %tmp69 = alloca i64, align 8
  store ptr %start_pfn, ptr %start_pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start_pfn.addr, metadata !6319, metadata !DIExpression()), !dbg !6336
  store ptr %end_pfn, ptr %end_pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end_pfn.addr, metadata !6320, metadata !DIExpression()), !dbg !6337
  call void @llvm.lifetime.start.p0(i64 8, ptr %max_sparsemem_pfn) #19, !dbg !6338
  call void @llvm.dbg.declare(metadata ptr %max_sparsemem_pfn, metadata !6321, metadata !DIExpression()), !dbg !6339
  %0 = load i64, ptr @physmem_end, align 8, !dbg !6340
  %add = add i64 %0, 1, !dbg !6341
  %shr = lshr i64 %add, 12, !dbg !6342
  store i64 %shr, ptr %max_sparsemem_pfn, align 8, !dbg !6339
  %1 = load ptr, ptr %start_pfn.addr, align 8, !dbg !6343
  %2 = load i64, ptr %1, align 8, !dbg !6344
  %3 = load i64, ptr %max_sparsemem_pfn, align 8, !dbg !6345
  %cmp = icmp ugt i64 %2, %3, !dbg !6346
  br i1 %cmp, label %if.then, label %if.else, !dbg !6347

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6348

do.body:                                          ; preds = %if.then
  %4 = load i32, ptr @mminit_loglevel, align 4, !dbg !6349
  %cmp1 = icmp slt i32 0, %4, !dbg !6349
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !6352

if.then2:                                         ; preds = %do.body
  br label %do.body3, !dbg !6353

do.body3:                                         ; preds = %if.then2
  br label %do.cond, !dbg !6357

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !6357

do.end:                                           ; preds = %do.cond
  %5 = load ptr, ptr %start_pfn.addr, align 8, !dbg !6353
  %6 = load i64, ptr %5, align 8, !dbg !6353
  %7 = load ptr, ptr %end_pfn.addr, align 8, !dbg !6353
  %8 = load i64, ptr %7, align 8, !dbg !6353
  %9 = load i64, ptr %max_sparsemem_pfn, align 8, !dbg !6353
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, i64 noundef %6, i64 noundef %8, i64 noundef %9) #21, !dbg !6353
  store i32 %call, ptr %tmp, align 4, !dbg !6357
  %10 = load i32, ptr %tmp, align 4, !dbg !6353
  br label %if.end, !dbg !6359

if.end:                                           ; preds = %do.end, %do.body
  br label %do.cond4, !dbg !6352

do.cond4:                                         ; preds = %if.end
  br label %do.end5, !dbg !6352

do.end5:                                          ; preds = %do.cond4
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !6360
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6322, metadata !DIExpression()), !dbg !6360
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !6360
  %11 = load i32, ptr %__ret_warn_on, align 4, !dbg !6361
  %tobool = icmp ne i32 %11, 0, !dbg !6361
  %lnot = xor i1 %tobool, true, !dbg !6361
  %lnot6 = xor i1 %lnot, true, !dbg !6361
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !6361
  %conv = sext i32 %lnot.ext to i64, !dbg !6361
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6361
  %tobool7 = icmp ne i64 %expval, 0, !dbg !6361
  br i1 %tobool7, label %if.then8, label %if.end21, !dbg !6360

if.then8:                                         ; preds = %do.end5
  br label %do.body9, !dbg !6361

do.body9:                                         ; preds = %if.then8
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #19, !dbg !6362
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6326, metadata !DIExpression()), !dbg !6362
  store i32 2307, ptr %__flags, align 4, !dbg !6362
  br label %do.body10, !dbg !6362

do.body10:                                        ; preds = %do.body9
  br label %do.cond11, !dbg !6363

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !6363

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !6362

do.body13:                                        ; preds = %do.end12
  %12 = load i32, ptr %__flags, align 4, !dbg !6365
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 142, i32 %12, i64 12) #19, !dbg !6365, !srcloc !6367
  br label %do.cond14, !dbg !6365

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !6365

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !6362

do.body16:                                        ; preds = %do.end15
  br label %do.cond17, !dbg !6368

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !6368

do.end18:                                         ; preds = %do.cond17
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #19, !dbg !6361
  br label %do.cond19, !dbg !6362

do.cond19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !6362

do.end20:                                         ; preds = %do.cond19
  br label %if.end21, !dbg !6362

if.end21:                                         ; preds = %do.end20, %do.end5
  %13 = load i32, ptr %__ret_warn_on, align 4, !dbg !6360
  %tobool23 = icmp ne i32 %13, 0, !dbg !6360
  %lnot24 = xor i1 %tobool23, true, !dbg !6360
  %lnot26 = xor i1 %lnot24, true, !dbg !6360
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !6360
  %conv28 = sext i32 %lnot.ext27 to i64, !dbg !6360
  %expval29 = call i64 @llvm.expect.i64(i64 %conv28, i64 0), !dbg !6360
  store i64 %expval29, ptr %tmp22, align 8, !dbg !6361
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !6370
  %14 = load i64, ptr %tmp22, align 8, !dbg !6360
  %15 = load i64, ptr %max_sparsemem_pfn, align 8, !dbg !6371
  %16 = load ptr, ptr %start_pfn.addr, align 8, !dbg !6372
  store i64 %15, ptr %16, align 8, !dbg !6373
  %17 = load i64, ptr %max_sparsemem_pfn, align 8, !dbg !6374
  %18 = load ptr, ptr %end_pfn.addr, align 8, !dbg !6375
  store i64 %17, ptr %18, align 8, !dbg !6376
  br label %if.end78, !dbg !6377

if.else:                                          ; preds = %entry
  %19 = load ptr, ptr %end_pfn.addr, align 8, !dbg !6378
  %20 = load i64, ptr %19, align 8, !dbg !6379
  %21 = load i64, ptr %max_sparsemem_pfn, align 8, !dbg !6380
  %cmp30 = icmp ugt i64 %20, %21, !dbg !6381
  br i1 %cmp30, label %if.then32, label %if.end77, !dbg !6382

if.then32:                                        ; preds = %if.else
  br label %do.body33, !dbg !6383

do.body33:                                        ; preds = %if.then32
  %22 = load i32, ptr @mminit_loglevel, align 4, !dbg !6384
  %cmp34 = icmp slt i32 0, %22, !dbg !6384
  br i1 %cmp34, label %if.then36, label %if.end42, !dbg !6387

if.then36:                                        ; preds = %do.body33
  br label %do.body37, !dbg !6388

do.body37:                                        ; preds = %if.then36
  br label %do.cond38, !dbg !6392

do.cond38:                                        ; preds = %do.body37
  br label %do.end39, !dbg !6392

do.end39:                                         ; preds = %do.cond38
  %23 = load ptr, ptr %start_pfn.addr, align 8, !dbg !6388
  %24 = load i64, ptr %23, align 8, !dbg !6388
  %25 = load ptr, ptr %end_pfn.addr, align 8, !dbg !6388
  %26 = load i64, ptr %25, align 8, !dbg !6388
  %27 = load i64, ptr %max_sparsemem_pfn, align 8, !dbg !6388
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, i64 noundef %24, i64 noundef %26, i64 noundef %27) #21, !dbg !6388
  store i32 %call41, ptr %tmp40, align 4, !dbg !6392
  %28 = load i32, ptr %tmp40, align 4, !dbg !6388
  br label %if.end42, !dbg !6394

if.end42:                                         ; preds = %do.end39, %do.body33
  br label %do.cond43, !dbg !6387

do.cond43:                                        ; preds = %if.end42
  br label %do.end44, !dbg !6387

do.end44:                                         ; preds = %do.cond43
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on45) #19, !dbg !6395
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on45, metadata !6329, metadata !DIExpression()), !dbg !6395
  store i32 1, ptr %__ret_warn_on45, align 4, !dbg !6395
  %29 = load i32, ptr %__ret_warn_on45, align 4, !dbg !6396
  %tobool46 = icmp ne i32 %29, 0, !dbg !6396
  %lnot47 = xor i1 %tobool46, true, !dbg !6396
  %lnot49 = xor i1 %lnot47, true, !dbg !6396
  %lnot.ext50 = zext i1 %lnot49 to i32, !dbg !6396
  %conv51 = sext i32 %lnot.ext50 to i64, !dbg !6396
  %expval52 = call i64 @llvm.expect.i64(i64 %conv51, i64 0), !dbg !6396
  %tobool53 = icmp ne i64 %expval52, 0, !dbg !6396
  br i1 %tobool53, label %if.then54, label %if.end68, !dbg !6395

if.then54:                                        ; preds = %do.end44
  br label %do.body55, !dbg !6396

do.body55:                                        ; preds = %if.then54
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags56) #19, !dbg !6397
  call void @llvm.dbg.declare(metadata ptr %__flags56, metadata !6333, metadata !DIExpression()), !dbg !6397
  store i32 2307, ptr %__flags56, align 4, !dbg !6397
  br label %do.body57, !dbg !6397

do.body57:                                        ; preds = %do.body55
  br label %do.cond58, !dbg !6398

do.cond58:                                        ; preds = %do.body57
  br label %do.end59, !dbg !6398

do.end59:                                         ; preds = %do.cond58
  br label %do.body60, !dbg !6397

do.body60:                                        ; preds = %do.end59
  %30 = load i32, ptr %__flags56, align 4, !dbg !6400
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 149, i32 %30, i64 12) #19, !dbg !6400, !srcloc !6402
  br label %do.cond61, !dbg !6400

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !6400

do.end62:                                         ; preds = %do.cond61
  br label %do.body63, !dbg !6397

do.body63:                                        ; preds = %do.end62
  br label %do.cond64, !dbg !6403

do.cond64:                                        ; preds = %do.body63
  br label %do.end65, !dbg !6403

do.end65:                                         ; preds = %do.cond64
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags56) #19, !dbg !6396
  br label %do.cond66, !dbg !6397

do.cond66:                                        ; preds = %do.end65
  br label %do.end67, !dbg !6397

do.end67:                                         ; preds = %do.cond66
  br label %if.end68, !dbg !6397

if.end68:                                         ; preds = %do.end67, %do.end44
  %31 = load i32, ptr %__ret_warn_on45, align 4, !dbg !6395
  %tobool70 = icmp ne i32 %31, 0, !dbg !6395
  %lnot71 = xor i1 %tobool70, true, !dbg !6395
  %lnot73 = xor i1 %lnot71, true, !dbg !6395
  %lnot.ext74 = zext i1 %lnot73 to i32, !dbg !6395
  %conv75 = sext i32 %lnot.ext74 to i64, !dbg !6395
  %expval76 = call i64 @llvm.expect.i64(i64 %conv75, i64 0), !dbg !6395
  store i64 %expval76, ptr %tmp69, align 8, !dbg !6396
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on45) #19, !dbg !6405
  %32 = load i64, ptr %tmp69, align 8, !dbg !6395
  %33 = load i64, ptr %max_sparsemem_pfn, align 8, !dbg !6406
  %34 = load ptr, ptr %end_pfn.addr, align 8, !dbg !6407
  store i64 %33, ptr %34, align 8, !dbg !6408
  br label %if.end77, !dbg !6409

if.end77:                                         ; preds = %if.end68, %if.else
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.end21
  call void @llvm.lifetime.end.p0(i64 8, ptr %max_sparsemem_pfn) #19, !dbg !6410
  ret void, !dbg !6410
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @sparse_index_init(i64 noundef %section_nr, i32 noundef %nid) #0 section ".init.text" align 16 !dbg !6411 {
entry:
  %retval = alloca i32, align 4
  %section_nr.addr = alloca i64, align 8
  %nid.addr = alloca i32, align 4
  %root = alloca i64, align 8
  %section = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %section_nr, ptr %section_nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %section_nr.addr, metadata !6415, metadata !DIExpression()), !dbg !6419
  store i32 %nid, ptr %nid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !6416, metadata !DIExpression()), !dbg !6420
  call void @llvm.lifetime.start.p0(i64 8, ptr %root) #19, !dbg !6421
  call void @llvm.dbg.declare(metadata ptr %root, metadata !6417, metadata !DIExpression()), !dbg !6422
  %0 = load i64, ptr %section_nr.addr, align 8, !dbg !6423
  %div = udiv i64 %0, 256, !dbg !6423
  store i64 %div, ptr %root, align 8, !dbg !6422
  call void @llvm.lifetime.start.p0(i64 8, ptr %section) #19, !dbg !6424
  call void @llvm.dbg.declare(metadata ptr %section, metadata !6418, metadata !DIExpression()), !dbg !6425
  %1 = load ptr, ptr @mem_section, align 8, !dbg !6426
  %2 = load i64, ptr %root, align 8, !dbg !6428
  %arrayidx = getelementptr ptr, ptr %1, i64 %2, !dbg !6426
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !6426
  %tobool = icmp ne ptr %3, null, !dbg !6426
  br i1 %tobool, label %if.then, label %if.end, !dbg !6429

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6430
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6430

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %nid.addr, align 4, !dbg !6431
  %call = call ptr @sparse_index_alloc(i32 noundef %4) #20, !dbg !6432
  store ptr %call, ptr %section, align 8, !dbg !6433
  %5 = load ptr, ptr %section, align 8, !dbg !6434
  %tobool1 = icmp ne ptr %5, null, !dbg !6434
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !6436

if.then2:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !6437
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6437

if.end3:                                          ; preds = %if.end
  %6 = load ptr, ptr %section, align 8, !dbg !6438
  %7 = load ptr, ptr @mem_section, align 8, !dbg !6439
  %8 = load i64, ptr %root, align 8, !dbg !6440
  %arrayidx4 = getelementptr ptr, ptr %7, i64 %8, !dbg !6439
  store ptr %6, ptr %arrayidx4, align 8, !dbg !6441
  store i32 0, ptr %retval, align 4, !dbg !6442
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6442

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %section) #19, !dbg !6443
  call void @llvm.lifetime.end.p0(i64 8, ptr %root) #19, !dbg !6443
  %9 = load i32, ptr %retval, align 4, !dbg !6443
  ret i32 %9, !dbg !6443
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_section_nid(i64 noundef %section_nr, i32 noundef %nid) #3 align 16 !dbg !6444 {
entry:
  %section_nr.addr = alloca i64, align 8
  %nid.addr = alloca i32, align 4
  store i64 %section_nr, ptr %section_nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %section_nr.addr, metadata !6448, metadata !DIExpression()), !dbg !6450
  store i32 %nid, ptr %nid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !6449, metadata !DIExpression()), !dbg !6451
  ret void, !dbg !6452
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @sparse_encode_early_nid(i32 noundef %nid) #3 align 16 !dbg !6453 {
entry:
  %nid.addr = alloca i32, align 4
  store i32 %nid, ptr %nid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !6457, metadata !DIExpression()), !dbg !6458
  %0 = load i32, ptr %nid.addr, align 4, !dbg !6459
  %conv = sext i32 %0 to i64, !dbg !6460
  %shl = shl i64 %conv, 4, !dbg !6461
  ret i64 %shl, !dbg !6462
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__section_mark_present(ptr noundef %ms, i64 noundef %section_nr) #4 align 16 !dbg !6463 {
entry:
  %ms.addr = alloca ptr, align 8
  %section_nr.addr = alloca i64, align 8
  store ptr %ms, ptr %ms.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ms.addr, metadata !6467, metadata !DIExpression()), !dbg !6469
  store i64 %section_nr, ptr %section_nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %section_nr.addr, metadata !6468, metadata !DIExpression()), !dbg !6470
  %0 = load i64, ptr %section_nr.addr, align 8, !dbg !6471
  %1 = load i64, ptr @__highest_present_section_nr, align 8, !dbg !6473
  %cmp = icmp ugt i64 %0, %1, !dbg !6474
  br i1 %cmp, label %if.then, label %if.end, !dbg !6475

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %section_nr.addr, align 8, !dbg !6476
  store i64 %2, ptr @__highest_present_section_nr, align 8, !dbg !6477
  br label %if.end, !dbg !6478

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %ms.addr, align 8, !dbg !6479
  %section_mem_map = getelementptr inbounds %struct.mem_section, ptr %3, i32 0, i32 0, !dbg !6480
  %4 = load i64, ptr %section_mem_map, align 8, !dbg !6481
  %or = or i64 %4, 1, !dbg !6481
  store i64 %or, ptr %section_mem_map, align 8, !dbg !6481
  ret void, !dbg !6482
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6483 dso_local ptr @memblock_alloc_try_nid(i64 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) #6

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6486 dso_local i32 @_printk(ptr noundef, ...) #12

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @sparse_index_alloc(i32 noundef %nid) #13 section ".ref.text" align 16 !dbg !6490 {
entry:
  %nid.addr = alloca i32, align 4
  %section = alloca ptr, align 8
  %array_size = alloca i64, align 8
  store i32 %nid, ptr %nid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !6494, metadata !DIExpression()), !dbg !6497
  call void @llvm.lifetime.start.p0(i64 8, ptr %section) #19, !dbg !6498
  call void @llvm.dbg.declare(metadata ptr %section, metadata !6495, metadata !DIExpression()), !dbg !6499
  store ptr null, ptr %section, align 8, !dbg !6499
  call void @llvm.lifetime.start.p0(i64 8, ptr %array_size) #19, !dbg !6500
  call void @llvm.dbg.declare(metadata ptr %array_size, metadata !6496, metadata !DIExpression()), !dbg !6501
  store i64 4096, ptr %array_size, align 8, !dbg !6501
  %call = call zeroext i1 @slab_is_available() #20, !dbg !6502
  br i1 %call, label %if.then, label %if.else, !dbg !6504

if.then:                                          ; preds = %entry
  %0 = load i64, ptr %array_size, align 8, !dbg !6505
  %1 = load i32, ptr %nid.addr, align 4, !dbg !6507
  %call1 = call noalias ptr @kzalloc_node(i64 noundef %0, i32 noundef 3264, i32 noundef %1) #23, !dbg !6508
  store ptr %call1, ptr %section, align 8, !dbg !6509
  br label %if.end4, !dbg !6510

if.else:                                          ; preds = %entry
  %2 = load i64, ptr %array_size, align 8, !dbg !6511
  %3 = load i32, ptr %nid.addr, align 4, !dbg !6513
  %call2 = call ptr @memblock_alloc_node(i64 noundef %2, i64 noundef 64, i32 noundef %3) #20, !dbg !6514
  store ptr %call2, ptr %section, align 8, !dbg !6515
  %4 = load ptr, ptr %section, align 8, !dbg !6516
  %tobool = icmp ne ptr %4, null, !dbg !6516
  br i1 %tobool, label %if.end, label %if.then3, !dbg !6518

if.then3:                                         ; preds = %if.else
  %5 = load i64, ptr %array_size, align 8, !dbg !6519
  %6 = load i32, ptr %nid.addr, align 4, !dbg !6520
  call void (ptr, ...) @panic(ptr noundef @.str.4, ptr noundef @__func__.sparse_index_alloc, i64 noundef %5, i32 noundef %6) #22, !dbg !6521
  unreachable, !dbg !6521

if.end:                                           ; preds = %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  %7 = load ptr, ptr %section, align 8, !dbg !6522
  call void @llvm.lifetime.end.p0(i64 8, ptr %array_size) #19, !dbg !6523
  call void @llvm.lifetime.end.p0(i64 8, ptr %section) #19, !dbg !6523
  ret ptr %7, !dbg !6524
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6525 dso_local zeroext i1 @slab_is_available() #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc_node(i64 noundef %size, i32 noundef %flags, i32 noundef %node) #14 align 16 !dbg !6526 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %node.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6530, metadata !DIExpression()), !dbg !6533
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6531, metadata !DIExpression()), !dbg !6534
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !6532, metadata !DIExpression()), !dbg !6535
  %0 = load i64, ptr %size.addr, align 8, !dbg !6536
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6537
  %or = or i32 %1, 256, !dbg !6538
  %2 = load i32, ptr %node.addr, align 4, !dbg !6539
  %call = call noalias ptr @kmalloc_node(i64 noundef %0, i32 noundef %or, i32 noundef %2) #23, !dbg !6540
  ret ptr %call, !dbg !6541
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @memblock_alloc_node(i64 noundef %size, i64 noundef %align, i32 noundef %nid) #3 align 16 !dbg !6542 {
entry:
  %size.addr = alloca i64, align 8
  %align.addr = alloca i64, align 8
  %nid.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6546, metadata !DIExpression()), !dbg !6549
  store i64 %align, ptr %align.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %align.addr, metadata !6547, metadata !DIExpression()), !dbg !6550
  store i32 %nid, ptr %nid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !6548, metadata !DIExpression()), !dbg !6551
  %0 = load i64, ptr %size.addr, align 8, !dbg !6552
  %1 = load i64, ptr %align.addr, align 8, !dbg !6553
  %2 = load i32, ptr %nid.addr, align 4, !dbg !6554
  %call = call ptr @memblock_alloc_try_nid(i64 noundef %0, i64 noundef %1, i64 noundef 0, i64 noundef 0, i32 noundef %2) #20, !dbg !6555
  ret ptr %call, !dbg !6556
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc_node(i64 noundef %size, i32 noundef %flags, i32 noundef %node) #15 align 16 !dbg !6557 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %node.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6559, metadata !DIExpression()), !dbg !6565
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6560, metadata !DIExpression()), !dbg !6566
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !6561, metadata !DIExpression()), !dbg !6567
  %0 = load i64, ptr %size.addr, align 8, !dbg !6568
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6569
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6570

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6571
  %tobool = icmp ne i64 %2, 0, !dbg !6571
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6572

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #19, !dbg !6573
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6562, metadata !DIExpression()), !dbg !6574
  %3 = load i64, ptr %size.addr, align 8, !dbg !6575
  %cmp = icmp ugt i64 %3, 8192, !dbg !6577
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6578

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6579
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6580
  %6 = load i32, ptr %node.addr, align 4, !dbg !6581
  %call = call noalias align 4096 ptr @kmalloc_large_node(i64 noundef %4, i32 noundef %5, i32 noundef %6) #23, !dbg !6582
  store ptr %call, ptr %retval, align 8, !dbg !6583
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6583

if.end:                                           ; preds = %if.then
  %7 = load i64, ptr %size.addr, align 8, !dbg !6584
  %call2 = call i32 @__kmalloc_index(i64 noundef %7, i1 noundef zeroext true) #20, !dbg !6584
  store i32 %call2, ptr %index, align 4, !dbg !6585
  %8 = load i32, ptr %flags.addr, align 4, !dbg !6586
  %9 = call ptr @llvm.returnaddress(i32 0), !dbg !6587
  %10 = ptrtoint ptr %9 to i64, !dbg !6587
  %call3 = call i32 @kmalloc_type(i32 noundef %8, i64 noundef %10) #20, !dbg !6588
  %idxprom = zext i32 %call3 to i64, !dbg !6589
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6589
  %11 = load i32, ptr %index, align 4, !dbg !6590
  %idxprom4 = zext i32 %11 to i64, !dbg !6589
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6589
  %12 = load ptr, ptr %arrayidx5, align 8, !dbg !6589
  %13 = load i32, ptr %flags.addr, align 4, !dbg !6591
  %14 = load i32, ptr %node.addr, align 4, !dbg !6592
  %15 = load i64, ptr %size.addr, align 8, !dbg !6593
  %call6 = call noalias align 8 ptr @kmalloc_node_trace(ptr noundef %12, i32 noundef %13, i32 noundef %14, i64 noundef %15) #24, !dbg !6594
  store ptr %call6, ptr %retval, align 8, !dbg !6595
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6595

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #19, !dbg !6596
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %16 = load i64, ptr %size.addr, align 8, !dbg !6597
  %17 = load i32, ptr %flags.addr, align 4, !dbg !6598
  %18 = load i32, ptr %node.addr, align 4, !dbg !6599
  %call8 = call noalias align 8 ptr @__kmalloc_node(i64 noundef %16, i32 noundef %17, i32 noundef %18) #23, !dbg !6600
  store ptr %call8, ptr %retval, align 8, !dbg !6601
  br label %return, !dbg !6601

return:                                           ; preds = %if.end7, %cleanup
  %19 = load ptr, ptr %retval, align 8, !dbg !6602
  ret ptr %19, !dbg !6602
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6603 dso_local noalias ptr @kmalloc_large_node(i64 noundef, i32 noundef, i32 noundef) #16

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #7 align 16 !dbg !6604 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6608, metadata !DIExpression()), !dbg !6610
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6609, metadata !DIExpression()), !dbg !6611
  %0 = load i64, ptr %size.addr, align 8, !dbg !6612
  %tobool = icmp ne i64 %0, 0, !dbg !6612
  br i1 %tobool, label %if.end, label %if.then, !dbg !6614

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6615
  br label %return, !dbg !6615

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6616
  %cmp = icmp ule i64 %1, 8, !dbg !6618
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6619

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6620
  br label %return, !dbg !6620

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6621
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6623
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6624

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6625
  %cmp4 = icmp ule i64 %3, 96, !dbg !6626
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6627

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6628
  br label %return, !dbg !6628

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6629
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6631
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6632

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6633
  %cmp9 = icmp ule i64 %5, 192, !dbg !6634
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6635

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6636
  br label %return, !dbg !6636

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6637
  %cmp12 = icmp ule i64 %6, 8, !dbg !6639
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6640

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6641
  br label %return, !dbg !6641

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6642
  %cmp15 = icmp ule i64 %7, 16, !dbg !6644
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6645

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6646
  br label %return, !dbg !6646

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6647
  %cmp18 = icmp ule i64 %8, 32, !dbg !6649
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6650

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6651
  br label %return, !dbg !6651

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6652
  %cmp21 = icmp ule i64 %9, 64, !dbg !6654
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6655

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6656
  br label %return, !dbg !6656

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6657
  %cmp24 = icmp ule i64 %10, 128, !dbg !6659
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6660

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6661
  br label %return, !dbg !6661

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6662
  %cmp27 = icmp ule i64 %11, 256, !dbg !6664
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6665

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6666
  br label %return, !dbg !6666

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6667
  %cmp30 = icmp ule i64 %12, 512, !dbg !6669
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6670

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6671
  br label %return, !dbg !6671

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6672
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6674
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6675

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6676
  br label %return, !dbg !6676

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6677
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6679
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6680

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6681
  br label %return, !dbg !6681

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6682
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6684
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6685

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6686
  br label %return, !dbg !6686

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6687
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6689
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6690

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6691
  br label %return, !dbg !6691

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6692
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6694
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6695

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6696
  br label %return, !dbg !6696

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6697
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6699
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6700

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6701
  br label %return, !dbg !6701

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6702
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6704
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6705

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6706
  br label %return, !dbg !6706

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6707
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6709
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6710

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6711
  br label %return, !dbg !6711

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6712
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6714
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6715

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6716
  br label %return, !dbg !6716

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6717
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6719
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6720

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6721
  br label %return, !dbg !6721

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6722
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6724
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6725

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6726
  br label %return, !dbg !6726

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6727
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6729
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6730

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6731
  br label %return, !dbg !6731

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6732, !range !6734, !noundef !1779
  %tobool69 = trunc i8 %25 to i1, !dbg !6732
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6735

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6736

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_206() #25, !dbg !6737, !srcloc !6740
  unreachable, !dbg !6737

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6741

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6742

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6743

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6745

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6743

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 480, i32 0, i64 12) #19, !dbg !6747, !srcloc !6749
  br label %do.end75, !dbg !6747

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6743

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6750
  br label %return, !dbg !6750

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6751
  ret i32 %26, !dbg !6751
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(3)
declare !dbg !6752 dso_local noalias ptr @kmalloc_node_trace(ptr noundef, i32 noundef, i32 noundef, i64 noundef) #17

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #7 align 16 !dbg !6758 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6762, metadata !DIExpression()), !dbg !6764
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6763, metadata !DIExpression()), !dbg !6765
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6766
  %and = and i32 %0, 17, !dbg !6766
  %cmp = icmp eq i32 %and, 0, !dbg !6766
  %lnot = xor i1 %cmp, true, !dbg !6766
  %lnot1 = xor i1 %lnot, true, !dbg !6766
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6766
  %conv = sext i32 %lnot.ext to i64, !dbg !6766
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6766
  %tobool = icmp ne i64 %expval, 0, !dbg !6766
  br i1 %tobool, label %if.then, label %if.end, !dbg !6768

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6769
  br label %return, !dbg !6769

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6770
  %and2 = and i32 %1, 1, !dbg !6772
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6772
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6773

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6774
  br label %return, !dbg !6774

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6775
  br label %return, !dbg !6775

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6777
  ret i32 %2, !dbg !6777
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6778 dso_local noalias ptr @__kmalloc_node(i64 noundef, i32 noundef, i32 noundef) #16

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6779 dso_local void @__compiletime_assert_206() #18

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @present_section_nr(i64 noundef %nr) #3 align 16 !dbg !6780 {
entry:
  %nr.addr = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6782, metadata !DIExpression()), !dbg !6783
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6784
  %call = call ptr @__nr_to_section(i64 noundef %0) #20, !dbg !6785
  %call1 = call i32 @present_section(ptr noundef %call) #20, !dbg !6786
  ret i32 %call1, !dbg !6787
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @present_section(ptr noundef %section) #3 align 16 !dbg !6788 {
entry:
  %section.addr = alloca ptr, align 8
  store ptr %section, ptr %section.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %section.addr, metadata !6790, metadata !DIExpression()), !dbg !6791
  %0 = load ptr, ptr %section.addr, align 8, !dbg !6792
  %tobool = icmp ne ptr %0, null, !dbg !6792
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !6793

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %section.addr, align 8, !dbg !6794
  %section_mem_map = getelementptr inbounds %struct.mem_section, ptr %1, i32 0, i32 0, !dbg !6795
  %2 = load i64, ptr %section_mem_map, align 8, !dbg !6795
  %and = and i64 %2, 1, !dbg !6796
  %tobool1 = icmp ne i64 %and, 0, !dbg !6793
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ], !dbg !6797
  %land.ext = zext i1 %3 to i32, !dbg !6793
  ret i32 %land.ext, !dbg !6798
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal ptr @sparse_early_usemaps_alloc_pgdat_section(ptr noundef %pgdat, i64 noundef %size) #0 section ".init.text" align 16 !dbg !6799 {
entry:
  %pgdat.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %pgdat, ptr %pgdat.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgdat.addr, metadata !6803, metadata !DIExpression()), !dbg !6805
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6804, metadata !DIExpression()), !dbg !6806
  %0 = load i64, ptr %size.addr, align 8, !dbg !6807
  %1 = load ptr, ptr %pgdat.addr, align 8, !dbg !6808
  %node_id = getelementptr inbounds %struct.pglist_data, ptr %1, i32 0, i32 6, !dbg !6809
  %2 = load i32, ptr %node_id, align 64, !dbg !6809
  %call = call ptr @memblock_alloc_node(i64 noundef %0, i64 noundef 64, i32 noundef %2) #20, !dbg !6810
  ret ptr %call, !dbg !6811
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @sparse_buffer_init(i64 noundef %size, i32 noundef %nid) #0 section ".init.text" align 16 !dbg !6812 {
entry:
  %size.addr = alloca i64, align 8
  %nid.addr = alloca i32, align 4
  %addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6814, metadata !DIExpression()), !dbg !6822
  store i32 %nid, ptr %nid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !6815, metadata !DIExpression()), !dbg !6823
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #19, !dbg !6824
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !6816, metadata !DIExpression()), !dbg !6825
  %0 = load i64, ptr @page_offset_base, align 8, !dbg !6826
  %add = add i64 16777216, %0, !dbg !6826
  %1 = inttoptr i64 %add to ptr, !dbg !6826
  %2 = ptrtoint ptr %1 to i64, !dbg !6826
  %call = call i64 @__phys_addr_nodebug(i64 noundef %2) #20, !dbg !6826
  store i64 %call, ptr %addr, align 8, !dbg !6825
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !6827
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6817, metadata !DIExpression()), !dbg !6827
  %3 = load ptr, ptr @sparsemap_buf, align 8, !dbg !6827
  %tobool = icmp ne ptr %3, null, !dbg !6827
  %lnot = xor i1 %tobool, true, !dbg !6827
  %lnot1 = xor i1 %lnot, true, !dbg !6827
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6827
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6827
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !6828
  %tobool2 = icmp ne i32 %4, 0, !dbg !6828
  %lnot3 = xor i1 %tobool2, true, !dbg !6828
  %lnot5 = xor i1 %lnot3, true, !dbg !6828
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !6828
  %conv = sext i32 %lnot.ext6 to i64, !dbg !6828
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6828
  %tobool7 = icmp ne i64 %expval, 0, !dbg !6828
  br i1 %tobool7, label %if.then, label %if.end, !dbg !6827

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6828

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #19, !dbg !6829
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6819, metadata !DIExpression()), !dbg !6829
  store i32 2305, ptr %__flags, align 4, !dbg !6829
  br label %do.body8, !dbg !6829

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !6830

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !6830

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !6829

do.body9:                                         ; preds = %do.end
  %5 = load i32, ptr %__flags, align 4, !dbg !6832
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 460, i32 %5, i64 12) #19, !dbg !6832, !srcloc !6834
  br label %do.cond10, !dbg !6832

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !6832

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !6829

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !6835

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !6835

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #19, !dbg !6828
  br label %do.cond15, !dbg !6829

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !6829

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !6829

if.end:                                           ; preds = %do.end16, %entry
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !6827
  %tobool17 = icmp ne i32 %6, 0, !dbg !6827
  %lnot18 = xor i1 %tobool17, true, !dbg !6827
  %lnot20 = xor i1 %lnot18, true, !dbg !6827
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !6827
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !6827
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !6827
  store i64 %expval23, ptr %tmp, align 8, !dbg !6828
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !6837
  %7 = load i64, ptr %tmp, align 8, !dbg !6827
  %8 = load i64, ptr %size.addr, align 8, !dbg !6838
  %call24 = call i64 @section_map_size() #21, !dbg !6839
  %9 = load i64, ptr %addr, align 8, !dbg !6840
  %10 = load i32, ptr %nid.addr, align 4, !dbg !6841
  %call25 = call ptr @memmap_alloc(i64 noundef %8, i64 noundef %call24, i64 noundef %9, i32 noundef %10, i1 noundef zeroext true) #20, !dbg !6842
  store ptr %call25, ptr @sparsemap_buf, align 8, !dbg !6843
  %11 = load ptr, ptr @sparsemap_buf, align 8, !dbg !6844
  %12 = load i64, ptr %size.addr, align 8, !dbg !6845
  %add.ptr = getelementptr i8, ptr %11, i64 %12, !dbg !6846
  store ptr %add.ptr, ptr @sparsemap_buf_end, align 8, !dbg !6847
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #19, !dbg !6848
  ret void, !dbg !6848
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i64 @section_map_size() #0 section ".init.text" align 16 !dbg !6849 {
entry:
  ret i64 2097152, !dbg !6850
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @section_nr_to_pfn(i64 noundef %sec) #3 align 16 !dbg !6851 {
entry:
  %sec.addr = alloca i64, align 8
  store i64 %sec, ptr %sec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sec.addr, metadata !6853, metadata !DIExpression()), !dbg !6854
  %0 = load i64, ptr %sec.addr, align 8, !dbg !6855
  %shl = shl i64 %0, 15, !dbg !6856
  ret i64 %shl, !dbg !6857
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6858 dso_local ptr @__populate_section_memmap(i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) #6

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @sparse_buffer_fini() #0 section ".init.text" align 16 !dbg !6862 {
entry:
  %size = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #19, !dbg !6865
  call void @llvm.dbg.declare(metadata ptr %size, metadata !6864, metadata !DIExpression()), !dbg !6866
  %0 = load ptr, ptr @sparsemap_buf_end, align 8, !dbg !6867
  %1 = load ptr, ptr @sparsemap_buf, align 8, !dbg !6868
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !6869
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64, !dbg !6869
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !6869
  store i64 %sub.ptr.sub, ptr %size, align 8, !dbg !6866
  %2 = load ptr, ptr @sparsemap_buf, align 8, !dbg !6870
  %tobool = icmp ne ptr %2, null, !dbg !6870
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6872

land.lhs.true:                                    ; preds = %entry
  %3 = load i64, ptr %size, align 8, !dbg !6873
  %cmp = icmp ugt i64 %3, 0, !dbg !6874
  br i1 %cmp, label %if.then, label %if.end, !dbg !6875

if.then:                                          ; preds = %land.lhs.true
  %4 = load i64, ptr %size, align 8, !dbg !6876
  call void @sparse_buffer_free(i64 noundef %4) #21, !dbg !6877
  br label %if.end, !dbg !6877

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  store ptr null, ptr @sparsemap_buf, align 8, !dbg !6878
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #19, !dbg !6879
  ret void, !dbg !6879
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @check_usemap_section_nr(i32 noundef %nid, ptr noundef %usage) #0 section ".init.text" align 16 !dbg !6880 {
entry:
  %nid.addr = alloca i32, align 4
  %usage.addr = alloca ptr, align 8
  store i32 %nid, ptr %nid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !6884, metadata !DIExpression()), !dbg !6886
  store ptr %usage, ptr %usage.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %usage.addr, metadata !6885, metadata !DIExpression()), !dbg !6887
  ret void, !dbg !6888
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @sparse_init_one_section(ptr noundef %ms, i64 noundef %pnum, ptr noundef %mem_map, ptr noundef %usage, i64 noundef %flags) #0 section ".init.text" align 16 !dbg !6889 {
entry:
  %ms.addr = alloca ptr, align 8
  %pnum.addr = alloca i64, align 8
  %mem_map.addr = alloca ptr, align 8
  %usage.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  store ptr %ms, ptr %ms.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ms.addr, metadata !6893, metadata !DIExpression()), !dbg !6898
  store i64 %pnum, ptr %pnum.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pnum.addr, metadata !6894, metadata !DIExpression()), !dbg !6899
  store ptr %mem_map, ptr %mem_map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mem_map.addr, metadata !6895, metadata !DIExpression()), !dbg !6900
  store ptr %usage, ptr %usage.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %usage.addr, metadata !6896, metadata !DIExpression()), !dbg !6901
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6897, metadata !DIExpression()), !dbg !6902
  %0 = load ptr, ptr %ms.addr, align 8, !dbg !6903
  %section_mem_map = getelementptr inbounds %struct.mem_section, ptr %0, i32 0, i32 0, !dbg !6904
  %1 = load i64, ptr %section_mem_map, align 8, !dbg !6905
  %and = and i64 %1, 15, !dbg !6905
  store i64 %and, ptr %section_mem_map, align 8, !dbg !6905
  %2 = load ptr, ptr %mem_map.addr, align 8, !dbg !6906
  %3 = load i64, ptr %pnum.addr, align 8, !dbg !6907
  %call = call i64 @sparse_encode_mem_map(ptr noundef %2, i64 noundef %3) #20, !dbg !6908
  %or = or i64 %call, 2, !dbg !6909
  %4 = load i64, ptr %flags.addr, align 8, !dbg !6910
  %or1 = or i64 %or, %4, !dbg !6911
  %5 = load ptr, ptr %ms.addr, align 8, !dbg !6912
  %section_mem_map2 = getelementptr inbounds %struct.mem_section, ptr %5, i32 0, i32 0, !dbg !6913
  %6 = load i64, ptr %section_mem_map2, align 8, !dbg !6914
  %or3 = or i64 %6, %or1, !dbg !6914
  store i64 %or3, ptr %section_mem_map2, align 8, !dbg !6914
  %7 = load ptr, ptr %usage.addr, align 8, !dbg !6915
  %8 = load ptr, ptr %ms.addr, align 8, !dbg !6916
  %usage4 = getelementptr inbounds %struct.mem_section, ptr %8, i32 0, i32 1, !dbg !6917
  store ptr %7, ptr %usage4, align 8, !dbg !6918
  ret void, !dbg !6919
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__phys_addr_nodebug(i64 noundef %x) #7 align 16 !dbg !6920 {
entry:
  %x.addr = alloca i64, align 8
  %y = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !6923, metadata !DIExpression()), !dbg !6925
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #19, !dbg !6926
  call void @llvm.dbg.declare(metadata ptr %y, metadata !6924, metadata !DIExpression()), !dbg !6927
  %0 = load i64, ptr %x.addr, align 8, !dbg !6928
  %sub = sub i64 %0, -2147483648, !dbg !6929
  store i64 %sub, ptr %y, align 8, !dbg !6927
  %1 = load i64, ptr %y, align 8, !dbg !6930
  %2 = load i64, ptr %x.addr, align 8, !dbg !6931
  %3 = load i64, ptr %y, align 8, !dbg !6932
  %cmp = icmp ugt i64 %2, %3, !dbg !6933
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6934

cond.true:                                        ; preds = %entry
  %4 = load i64, ptr @phys_base, align 8, !dbg !6935
  br label %cond.end, !dbg !6934

cond.false:                                       ; preds = %entry
  %5 = load i64, ptr @page_offset_base, align 8, !dbg !6936
  %sub1 = sub i64 -2147483648, %5, !dbg !6937
  br label %cond.end, !dbg !6934

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %sub1, %cond.false ], !dbg !6934
  %add = add i64 %1, %cond, !dbg !6938
  store i64 %add, ptr %x.addr, align 8, !dbg !6939
  %6 = load i64, ptr %x.addr, align 8, !dbg !6940
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #19, !dbg !6941
  ret i64 %6, !dbg !6942
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6943 dso_local ptr @memmap_alloc(i64 noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @sparse_encode_mem_map(ptr noundef %mem_map, i64 noundef %pnum) #4 align 16 !dbg !6946 {
entry:
  %mem_map.addr = alloca ptr, align 8
  %pnum.addr = alloca i64, align 8
  %coded_mem_map = alloca i64, align 8
  store ptr %mem_map, ptr %mem_map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mem_map.addr, metadata !6950, metadata !DIExpression()), !dbg !6953
  store i64 %pnum, ptr %pnum.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pnum.addr, metadata !6951, metadata !DIExpression()), !dbg !6954
  call void @llvm.lifetime.start.p0(i64 8, ptr %coded_mem_map) #19, !dbg !6955
  call void @llvm.dbg.declare(metadata ptr %coded_mem_map, metadata !6952, metadata !DIExpression()), !dbg !6956
  %0 = load ptr, ptr %mem_map.addr, align 8, !dbg !6957
  %1 = load i64, ptr %pnum.addr, align 8, !dbg !6958
  %call = call i64 @section_nr_to_pfn(i64 noundef %1) #20, !dbg !6959
  %idx.neg = sub i64 0, %call, !dbg !6960
  %add.ptr = getelementptr %struct.page, ptr %0, i64 %idx.neg, !dbg !6960
  %2 = ptrtoint ptr %add.ptr to i64, !dbg !6961
  store i64 %2, ptr %coded_mem_map, align 8, !dbg !6956
  br label %do.body, !dbg !6962

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6963

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6963

do.end:                                           ; preds = %do.cond
  br label %do.body1, !dbg !6965

do.body1:                                         ; preds = %do.end
  %3 = load i64, ptr %coded_mem_map, align 8, !dbg !6966
  %and = and i64 %3, 15, !dbg !6966
  %tobool = icmp ne i64 %and, 0, !dbg !6966
  %lnot = xor i1 %tobool, true, !dbg !6966
  %lnot2 = xor i1 %lnot, true, !dbg !6966
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6966
  %conv = sext i32 %lnot.ext to i64, !dbg !6966
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6966
  %tobool3 = icmp ne i64 %expval, 0, !dbg !6966
  br i1 %tobool3, label %if.then, label %if.end, !dbg !6969

if.then:                                          ; preds = %do.body1
  br label %do.body4, !dbg !6966

do.body4:                                         ; preds = %if.then
  br label %do.body5, !dbg !6970

do.body5:                                         ; preds = %do.body4
  br label %do.cond6, !dbg !6972

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !6972

do.end7:                                          ; preds = %do.cond6
  br label %do.body8, !dbg !6970

do.body8:                                         ; preds = %do.end7
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 284, i32 0, i64 12) #19, !dbg !6974, !srcloc !6976
  br label %do.cond9, !dbg !6974

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !6974

do.end10:                                         ; preds = %do.cond9
  unreachable, !dbg !6970

do.cond11:                                        ; No predecessors!
  br label %do.end12, !dbg !6970

do.end12:                                         ; preds = %do.cond11
  br label %if.end, !dbg !6970

if.end:                                           ; preds = %do.end12, %do.body1
  br label %do.cond13, !dbg !6969

do.cond13:                                        ; preds = %if.end
  br label %do.end14, !dbg !6969

do.end14:                                         ; preds = %do.cond13
  %4 = load i64, ptr %coded_mem_map, align 8, !dbg !6977
  call void @llvm.lifetime.end.p0(i64 8, ptr %coded_mem_map) #19, !dbg !6978
  ret i64 %4, !dbg !6979
}

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { cold noredzone noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { noredzone null_pointer_is_valid allocsize(3) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #18 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #19 = { nounwind }
attributes #20 = { noredzone }
attributes #21 = { cold noredzone }
attributes #22 = { cold noredzone noreturn }
attributes #23 = { noredzone allocsize(0) }
attributes #24 = { noredzone allocsize(3) }
attributes #25 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!393, !394, !395, !396, !397, !398, !399, !400}
!llvm.ident = !{!401}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mem_section", scope: !2, file: !3, line: 27, type: !367, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF mm/.sparse.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22mm/sparse\22 -D KBUILD_BASENAME=\22sparse\22 -D KBUILD_MODNAME=\22sparse\22 -D __KBUILD_MODNAME=kmod_sparse -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o mm/sparse.ll mm/sparse.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !296, globals: !306, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "mm/sparse.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1c0674b7885d72ff7c2723a5237e4387")
!4 = !{!5, !11, !18, !26, !32, !42, !49, !57, !153, !169, !175, !180, !185, !191, !197, !204, !209, !217, !224, !233, !238, !243, !249, !261, !267, !274, !281, !288}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pageblock_bits", file: !12, line: 18, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/pageblock-flags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "add0a9fb11b72cf495bcb031212ae266")
!13 = !{!14, !15, !16, !17}
!14 = !DIEnumerator(name: "PB_migrate", value: 0)
!15 = !DIEnumerator(name: "PB_migrate_end", value: 2)
!16 = !DIEnumerator(name: "PB_migrate_skip", value: 3)
!17 = !DIEnumerator(name: "NR_PAGEBLOCK_BITS", value: 4)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 1873, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e018db7b4c78b2d835997a33e792065c")
!20 = !{!21, !22, !23, !24, !25}
!21 = !DIEnumerator(name: "SECTION_MARKED_PRESENT_BIT", value: 0)
!22 = !DIEnumerator(name: "SECTION_HAS_MEM_MAP_BIT", value: 1)
!23 = !DIEnumerator(name: "SECTION_IS_ONLINE_BIT", value: 2)
!24 = !DIEnumerator(name: "SECTION_IS_EARLY_BIT", value: 3)
!25 = !DIEnumerator(name: "SECTION_MAP_LAST_BIT", value: 4)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mminit_level", file: !27, line: 801, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "mm/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "59e6069cd469a2e9f5955693d212ff63")
!28 = !{!29, !30, !31}
!29 = !DIEnumerator(name: "MMINIT_WARNING", value: 0)
!30 = !DIEnumerator(name: "MMINIT_VERIFY", value: 1)
!31 = !DIEnumerator(name: "MMINIT_TRACE", value: 2)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !33, line: 364, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!34 = !{!35, !36, !37, !38, !39, !40, !41}
!35 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!36 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!37 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!38 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!39 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!40 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!41 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !43, line: 312, baseType: !7, size: 32, elements: !44)
!43 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!44 = !{!45, !46, !47, !48}
!45 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!46 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!47 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!48 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !50, line: 9, baseType: !7, size: 32, elements: !51)
!50 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!51 = !{!52, !53, !54, !55, !56}
!52 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!53 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!54 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!55 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!56 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !59, file: !58, line: 147, baseType: !7, size: 32, elements: !150)
!58 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !58, line: 135, size: 512, elements: !60)
!60 = !{!61, !65, !67, !69, !73, !74, !90, !148, !149}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !59, file: !58, line: 136, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!64 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !59, file: !58, line: 137, baseType: !66, size: 64, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !59, file: !58, line: 138, baseType: !68, size: 32, offset: 128)
!68 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !59, file: !58, line: 139, baseType: !70, size: 16, offset: 160)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !71, line: 24, baseType: !72)
!71 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!72 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !59, file: !58, line: 150, baseType: !57, size: 32, offset: 192)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !59, file: !58, line: 151, baseType: !75, size: 64, offset: 256)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !58, line: 64, baseType: !77)
!77 = !DISubroutineType(types: !78)
!78 = !{!68, !79, !68, !66, !80, !86}
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !71, line: 61, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !83, line: 72, baseType: !84)
!83 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !83, line: 16, baseType: !85)
!85 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !71, line: 52, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !83, line: 88, baseType: !89)
!89 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !59, file: !58, line: 152, baseType: !91, size: 64, offset: 320)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !58, line: 117, size: 256, elements: !93)
!93 = !{!94, !99}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !92, file: !58, line: 118, baseType: !95, size: 32)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !71, line: 174, baseType: !96)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 172, size: 32, elements: !97)
!97 = !{!98}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !96, file: !71, line: 173, baseType: !68, size: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !92, file: !58, line: 119, baseType: !100, size: 192, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !101, line: 41, baseType: !102)
!101 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !101, line: 37, size: 192, elements: !103)
!103 = !{!104, !142}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !102, file: !101, line: 38, baseType: !105, size: 32)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !106, line: 29, baseType: !107)
!106 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !106, line: 17, size: 32, elements: !108)
!108 = !{!109}
!109 = !DIDerivedType(tag: DW_TAG_member, scope: !107, file: !106, line: 18, baseType: !110, size: 32)
!110 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !107, file: !106, line: 18, size: 32, elements: !111)
!111 = !{!112}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !110, file: !106, line: 19, baseType: !113, size: 32)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !114, line: 14, size: 32, elements: !115)
!114 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!115 = !{!116}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !113, file: !114, line: 15, baseType: !117, size: 32)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !118, line: 44, baseType: !119)
!118 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !118, line: 14, size: 32, elements: !120)
!120 = !{!121}
!121 = !DIDerivedType(tag: DW_TAG_member, scope: !119, file: !118, line: 15, baseType: !122, size: 32)
!122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !119, file: !118, line: 15, size: 32, elements: !123)
!123 = !{!124, !125, !135}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !122, file: !118, line: 16, baseType: !95, size: 32)
!125 = !DIDerivedType(tag: DW_TAG_member, scope: !122, file: !118, line: 24, baseType: !126, size: 16)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !122, file: !118, line: 24, size: 16, elements: !127)
!127 = !{!128, !134}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !126, file: !118, line: 25, baseType: !129, size: 8)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !130, line: 17, baseType: !131)
!130 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !132, line: 21, baseType: !133)
!132 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!133 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !126, file: !118, line: 26, baseType: !129, size: 8, offset: 8)
!135 = !DIDerivedType(tag: DW_TAG_member, scope: !122, file: !118, line: 28, baseType: !136, size: 32)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !122, file: !118, line: 28, size: 32, elements: !137)
!137 = !{!138, !141}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !136, file: !118, line: 29, baseType: !139, size: 16)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !130, line: 19, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !132, line: 24, baseType: !72)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !136, file: !118, line: 30, baseType: !139, size: 16, offset: 16)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !102, file: !101, line: 39, baseType: !143, size: 128, offset: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !71, line: 190, size: 128, elements: !144)
!144 = !{!145, !147}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !143, file: !71, line: 191, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !143, file: !71, line: 191, baseType: !146, size: 64, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !59, file: !58, line: 153, baseType: !66, size: 64, offset: 384)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !59, file: !58, line: 154, baseType: !66, size: 64, offset: 448)
!150 = !{!151, !152}
!151 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!152 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !154, line: 1325, baseType: !7, size: 32, elements: !155)
!154 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!155 = !{!156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168}
!156 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!157 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!158 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!159 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!160 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!161 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!162 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!163 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!164 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!165 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!166 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!167 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!168 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!169 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !170, line: 26, baseType: !7, size: 32, elements: !171)
!170 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!171 = !{!172, !173, !174}
!172 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!173 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!174 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!175 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !176, line: 32, baseType: !7, size: 32, elements: !177)
!176 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!177 = !{!178, !179}
!178 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!179 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!180 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !181, line: 2052, baseType: !7, size: 32, elements: !182)
!181 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!182 = !{!183, !184}
!183 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!184 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!185 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !186, line: 54, baseType: !7, size: 32, elements: !187)
!186 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!187 = !{!188, !189, !190}
!188 = !DIEnumerator(name: "USRQUOTA", value: 0)
!189 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!190 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!191 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !192, line: 45, baseType: !7, size: 32, elements: !193)
!192 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!193 = !{!194, !195, !196}
!194 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!195 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!196 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!197 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !198, line: 487, baseType: !7, size: 32, elements: !199)
!198 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!199 = !{!200, !201, !202, !203}
!200 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!201 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!202 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!203 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!204 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !205, line: 65, baseType: !7, size: 32, elements: !206)
!205 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!206 = !{!207, !208}
!207 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!208 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!209 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !210, line: 620, baseType: !7, size: 32, elements: !211)
!210 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!211 = !{!212, !213, !214, !215, !216}
!212 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!213 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!214 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!215 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!216 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!217 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !210, line: 597, baseType: !68, size: 32, elements: !218)
!218 = !{!219, !220, !221, !222, !223}
!219 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!220 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!221 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!222 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!223 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!224 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !198, line: 547, baseType: !7, size: 32, elements: !225)
!225 = !{!226, !227, !228, !229, !230, !231, !232}
!226 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!227 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!228 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!229 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!230 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!231 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!232 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!233 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !198, line: 564, baseType: !7, size: 32, elements: !234)
!234 = !{!235, !236, !237}
!235 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!236 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!237 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!238 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !198, line: 577, baseType: !7, size: 32, elements: !239)
!239 = !{!240, !241, !242}
!240 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!241 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!242 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!243 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !198, line: 503, baseType: !7, size: 32, elements: !244)
!244 = !{!245, !246, !247, !248}
!245 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!246 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!247 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!248 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!249 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !250, line: 44, baseType: !7, size: 32, elements: !251)
!250 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!251 = !{!252, !253, !254, !255, !256, !257, !258, !259, !260}
!252 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!253 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!254 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!255 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!256 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!257 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!258 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!259 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!260 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!261 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !262, line: 16, baseType: !7, size: 32, elements: !263)
!262 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!263 = !{!264, !265, !266}
!264 = !DIEnumerator(name: "TT_NONE", value: 0)
!265 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!266 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!267 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "zone_type", file: !19, line: 720, baseType: !7, size: 32, elements: !268)
!268 = !{!269, !270, !271, !272, !273}
!269 = !DIEnumerator(name: "ZONE_DMA", value: 0)
!270 = !DIEnumerator(name: "ZONE_DMA32", value: 1)
!271 = !DIEnumerator(name: "ZONE_NORMAL", value: 2)
!272 = !DIEnumerator(name: "ZONE_MOVABLE", value: 3)
!273 = !DIEnumerator(name: "__MAX_NR_ZONES", value: 4)
!274 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !275, line: 15, baseType: !7, size: 32, elements: !276)
!275 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!276 = !{!277, !278, !279, !280}
!277 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!278 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!279 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!280 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!281 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !282, line: 51, baseType: !7, size: 32, elements: !283)
!282 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!283 = !{!284, !285, !286, !287}
!284 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!285 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!286 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!287 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!288 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !289, line: 68, baseType: !7, size: 32, elements: !290)
!289 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!290 = !{!291, !292, !293, !294, !295}
!291 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!292 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!293 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!294 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!295 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!296 = !{!66, !85, !62, !297, !298, !68, !7, !300, !301, !302, !305}
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !71, line: 42, baseType: !85)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !304)
!304 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !71, line: 154, baseType: !7)
!306 = !{!307, !0, !309, !311, !313, !315, !320, !325, !330, !335, !340, !345, !350, !355, !360, !365}
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mem_section336", scope: !2, file: !3, line: 32, type: !66, isLocal: true, isDefinition: true)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(name: "__highest_present_section_nr", scope: !2, file: !3, line: 163, type: !85, isLocal: false, isDefinition: true)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(name: "sparsemap_buf", scope: !2, file: !3, line: 448, type: !66, isLocal: true, isDefinition: true)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(name: "sparsemap_buf_end", scope: !2, file: !3, line: 449, type: !66, isLocal: true, isDefinition: true)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !3, line: 453, type: !317, isLocal: true, isDefinition: true)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 96, elements: !318)
!318 = !{!319}
!319 = !DISubrange(count: 12)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(scope: null, file: !3, line: 237, type: !322, isLocal: true, isDefinition: true)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 368, elements: !323)
!323 = !{!324}
!324 = !DISubrange(count: 46)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(scope: null, file: !3, line: 238, type: !327, isLocal: true, isDefinition: true)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 120, elements: !328)
!328 = !{!329}
!329 = !DISubrange(count: 15)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(scope: null, file: !3, line: 139, type: !332, isLocal: true, isDefinition: true)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 616, elements: !333)
!333 = !{!334}
!334 = !DISubrange(count: 77)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(scope: null, file: !3, line: 146, type: !337, isLocal: true, isDefinition: true)
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 600, elements: !338)
!338 = !{!339}
!339 = !DISubrange(count: 75)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(scope: null, file: !3, line: 75, type: !342, isLocal: true, isDefinition: true)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 328, elements: !343)
!343 = !{!344}
!344 = !DISubrange(count: 41)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(scope: null, file: !3, line: 76, type: !347, isLocal: true, isDefinition: true)
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 152, elements: !348)
!348 = !{!349}
!349 = !DISubrange(count: 19)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(scope: null, file: !33, line: 480, type: !352, isLocal: true, isDefinition: true)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 168, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 21)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(scope: null, file: !3, line: 516, type: !357, isLocal: true, isDefinition: true)
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 320, elements: !358)
!358 = !{!359}
!359 = !DISubrange(count: 40)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(scope: null, file: !3, line: 516, type: !362, isLocal: true, isDefinition: true)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 128, elements: !363)
!363 = !{!364}
!364 = !DISubrange(count: 16)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(scope: null, file: !3, line: 529, type: !332, isLocal: true, isDefinition: true)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_section", file: !19, line: 1790, size: 128, elements: !370)
!370 = !{!371, !372}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "section_mem_map", scope: !369, file: !19, line: 1803, baseType: !85, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !369, file: !19, line: 1805, baseType: !373, size: 64, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_section_usage", file: !19, line: 1777, size: 192, elements: !375)
!375 = !{!376, !385, !389}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !374, file: !19, line: 1778, baseType: !377, size: 128, align: 64)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !71, line: 232, size: 128, align: 64, elements: !378)
!378 = !{!379, !381}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !377, file: !71, line: 233, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !377, file: !71, line: 234, baseType: !382, size: 64, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DISubroutineType(types: !384)
!384 = !{null, !380}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "subsection_map", scope: !374, file: !19, line: 1780, baseType: !386, size: 64, offset: 128)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 64, elements: !387)
!387 = !{!388}
!388 = !DISubrange(count: 1)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "pageblock_flags", scope: !374, file: !19, line: 1783, baseType: !390, offset: 192)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, elements: !391)
!391 = !{!392}
!392 = !DISubrange(count: 0)
!393 = !{i32 7, !"Dwarf Version", i32 5}
!394 = !{i32 2, !"Debug Info Version", i32 3}
!395 = !{i32 1, !"wchar_size", i32 2}
!396 = !{i32 8, !"cf-protection-branch", i32 1}
!397 = !{i32 4, !"function_return_thunk_extern", i32 1}
!398 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!399 = !{i32 1, !"Code Model", i32 2}
!400 = !{i32 1, !"override-stack-alignment", i32 8}
!401 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!402 = distinct !DISubprogram(name: "subsection_map_init", scope: !3, file: !3, line: 193, type: !403, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !405)
!403 = !DISubroutineType(types: !404)
!404 = !{null, !85, !85}
!405 = !{!406, !407, !408, !409, !410, !411, !415, !416, !418}
!406 = !DILocalVariable(name: "pfn", arg: 1, scope: !402, file: !3, line: 193, type: !85)
!407 = !DILocalVariable(name: "nr_pages", arg: 2, scope: !402, file: !3, line: 193, type: !85)
!408 = !DILocalVariable(name: "end_sec", scope: !402, file: !3, line: 195, type: !68)
!409 = !DILocalVariable(name: "nr", scope: !402, file: !3, line: 196, type: !85)
!410 = !DILocalVariable(name: "start_sec", scope: !402, file: !3, line: 196, type: !85)
!411 = !DILocalVariable(name: "ms", scope: !412, file: !3, line: 202, type: !368)
!412 = distinct !DILexicalBlock(scope: !413, file: !3, line: 201, column: 44)
!413 = distinct !DILexicalBlock(scope: !414, file: !3, line: 201, column: 2)
!414 = distinct !DILexicalBlock(scope: !402, file: !3, line: 201, column: 2)
!415 = !DILocalVariable(name: "pfns", scope: !412, file: !3, line: 203, type: !85)
!416 = !DILocalVariable(name: "__UNIQUE_ID___x337", scope: !417, file: !3, line: 205, type: !85)
!417 = distinct !DILexicalBlock(scope: !412, file: !3, line: 205, column: 10)
!418 = !DILocalVariable(name: "__UNIQUE_ID___y338", scope: !417, file: !3, line: 205, type: !85)
!419 = !DILocation(line: 193, column: 47, scope: !402)
!420 = !DILocation(line: 193, column: 66, scope: !402)
!421 = !DILocation(line: 195, column: 2, scope: !402)
!422 = !DILocation(line: 195, column: 6, scope: !402)
!423 = !DILocation(line: 195, column: 34, scope: !402)
!424 = !DILocation(line: 195, column: 40, scope: !402)
!425 = !DILocation(line: 195, column: 38, scope: !402)
!426 = !DILocation(line: 195, column: 49, scope: !402)
!427 = !DILocation(line: 195, column: 16, scope: !402)
!428 = !DILocation(line: 196, column: 2, scope: !402)
!429 = !DILocation(line: 196, column: 16, scope: !402)
!430 = !DILocation(line: 196, column: 20, scope: !402)
!431 = !DILocation(line: 196, column: 50, scope: !402)
!432 = !DILocation(line: 196, column: 32, scope: !402)
!433 = !DILocation(line: 198, column: 7, scope: !434)
!434 = distinct !DILexicalBlock(scope: !402, file: !3, line: 198, column: 6)
!435 = !DILocation(line: 198, column: 6, scope: !402)
!436 = !DILocation(line: 199, column: 3, scope: !434)
!437 = !DILocation(line: 201, column: 12, scope: !414)
!438 = !DILocation(line: 201, column: 10, scope: !414)
!439 = !DILocation(line: 201, column: 7, scope: !414)
!440 = !DILocation(line: 201, column: 23, scope: !413)
!441 = !DILocation(line: 201, column: 29, scope: !413)
!442 = !DILocation(line: 201, column: 26, scope: !413)
!443 = !DILocation(line: 201, column: 2, scope: !414)
!444 = !DILocation(line: 202, column: 3, scope: !412)
!445 = !DILocation(line: 202, column: 23, scope: !412)
!446 = !DILocation(line: 203, column: 3, scope: !412)
!447 = !DILocation(line: 203, column: 17, scope: !412)
!448 = !DILocation(line: 205, column: 10, scope: !417)
!449 = !DILocation(line: 205, column: 10, scope: !412)
!450 = !DILocation(line: 205, column: 8, scope: !412)
!451 = !DILocation(line: 207, column: 24, scope: !412)
!452 = !DILocation(line: 207, column: 8, scope: !412)
!453 = !DILocation(line: 207, column: 6, scope: !412)
!454 = !DILocation(line: 208, column: 23, scope: !412)
!455 = !DILocation(line: 208, column: 27, scope: !412)
!456 = !DILocation(line: 208, column: 34, scope: !412)
!457 = !DILocation(line: 208, column: 50, scope: !412)
!458 = !DILocation(line: 208, column: 55, scope: !412)
!459 = !DILocation(line: 208, column: 3, scope: !412)
!460 = !DILocation(line: 210, column: 3, scope: !461)
!461 = distinct !DILexicalBlock(scope: !462, file: !3, line: 210, column: 3)
!462 = distinct !DILexicalBlock(scope: !412, file: !3, line: 210, column: 3)
!463 = !DILocation(line: 210, column: 3, scope: !462)
!464 = !DILocation(line: 214, column: 10, scope: !412)
!465 = !DILocation(line: 214, column: 7, scope: !412)
!466 = !DILocation(line: 215, column: 15, scope: !412)
!467 = !DILocation(line: 215, column: 12, scope: !412)
!468 = !DILocation(line: 216, column: 2, scope: !413)
!469 = !DILocation(line: 216, column: 2, scope: !412)
!470 = !DILocation(line: 201, column: 40, scope: !413)
!471 = !DILocation(line: 201, column: 2, scope: !413)
!472 = distinct !{!472, !443, !473, !474, !475}
!473 = !DILocation(line: 216, column: 2, scope: !414)
!474 = !{!"llvm.loop.mustprogress"}
!475 = !{!"llvm.loop.unroll.disable"}
!476 = !DILocation(line: 217, column: 1, scope: !402)
!477 = distinct !DISubprogram(name: "pfn_to_section_nr", scope: !19, file: !19, line: 1749, type: !478, scopeLine: 1750, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !480)
!478 = !DISubroutineType(types: !479)
!479 = !{!85, !85}
!480 = !{!481}
!481 = !DILocalVariable(name: "pfn", arg: 1, scope: !477, file: !19, line: 1749, type: !85)
!482 = !DILocation(line: 1749, column: 61, scope: !477)
!483 = !DILocation(line: 1751, column: 9, scope: !477)
!484 = !DILocation(line: 1751, column: 13, scope: !477)
!485 = !DILocation(line: 1751, column: 2, scope: !477)
!486 = distinct !DISubprogram(name: "__nr_to_section", scope: !19, file: !19, line: 1841, type: !487, scopeLine: 1842, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !489)
!487 = !DISubroutineType(types: !488)
!488 = !{!368, !85}
!489 = !{!490, !491}
!490 = !DILocalVariable(name: "nr", arg: 1, scope: !486, file: !19, line: 1841, type: !85)
!491 = !DILocalVariable(name: "root", scope: !486, file: !19, line: 1843, type: !85)
!492 = !DILocation(line: 1841, column: 65, scope: !486)
!493 = !DILocation(line: 1843, column: 2, scope: !486)
!494 = !DILocation(line: 1843, column: 16, scope: !486)
!495 = !DILocation(line: 1843, column: 23, scope: !486)
!496 = !DILocation(line: 1845, column: 6, scope: !497)
!497 = distinct !DILexicalBlock(scope: !486, file: !19, line: 1845, column: 6)
!498 = !DILocation(line: 1845, column: 6, scope: !486)
!499 = !DILocation(line: 1846, column: 3, scope: !497)
!500 = !DILocation(line: 1849, column: 7, scope: !501)
!501 = distinct !DILexicalBlock(scope: !486, file: !19, line: 1849, column: 6)
!502 = !DILocation(line: 1849, column: 19, scope: !501)
!503 = !DILocation(line: 1849, column: 23, scope: !501)
!504 = !DILocation(line: 1849, column: 35, scope: !501)
!505 = !DILocation(line: 1849, column: 6, scope: !486)
!506 = !DILocation(line: 1850, column: 3, scope: !501)
!507 = !DILocation(line: 1852, column: 10, scope: !486)
!508 = !DILocation(line: 1852, column: 22, scope: !486)
!509 = !DILocation(line: 1852, column: 28, scope: !486)
!510 = !DILocation(line: 1852, column: 31, scope: !486)
!511 = !DILocation(line: 1852, column: 2, scope: !486)
!512 = !DILocation(line: 1853, column: 1, scope: !486)
!513 = distinct !DISubprogram(name: "subsection_mask_set", scope: !3, file: !3, line: 184, type: !514, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !516)
!514 = !DISubroutineType(types: !515)
!515 = !{null, !301, !85, !85}
!516 = !{!517, !518, !519, !520, !521}
!517 = !DILocalVariable(name: "map", arg: 1, scope: !513, file: !3, line: 184, type: !301)
!518 = !DILocalVariable(name: "pfn", arg: 2, scope: !513, file: !3, line: 184, type: !85)
!519 = !DILocalVariable(name: "nr_pages", arg: 3, scope: !513, file: !3, line: 185, type: !85)
!520 = !DILocalVariable(name: "idx", scope: !513, file: !3, line: 187, type: !68)
!521 = !DILocalVariable(name: "end", scope: !513, file: !3, line: 188, type: !68)
!522 = !DILocation(line: 184, column: 48, scope: !513)
!523 = !DILocation(line: 184, column: 67, scope: !513)
!524 = !DILocation(line: 185, column: 17, scope: !513)
!525 = !DILocation(line: 187, column: 2, scope: !513)
!526 = !DILocation(line: 187, column: 6, scope: !513)
!527 = !DILocation(line: 187, column: 33, scope: !513)
!528 = !DILocation(line: 187, column: 12, scope: !513)
!529 = !DILocation(line: 188, column: 2, scope: !513)
!530 = !DILocation(line: 188, column: 6, scope: !513)
!531 = !DILocation(line: 188, column: 33, scope: !513)
!532 = !DILocation(line: 188, column: 39, scope: !513)
!533 = !DILocation(line: 188, column: 37, scope: !513)
!534 = !DILocation(line: 188, column: 48, scope: !513)
!535 = !DILocation(line: 188, column: 12, scope: !513)
!536 = !DILocation(line: 190, column: 13, scope: !513)
!537 = !DILocation(line: 190, column: 18, scope: !513)
!538 = !DILocation(line: 190, column: 23, scope: !513)
!539 = !DILocation(line: 190, column: 29, scope: !513)
!540 = !DILocation(line: 190, column: 27, scope: !513)
!541 = !DILocation(line: 190, column: 33, scope: !513)
!542 = !DILocation(line: 190, column: 2, scope: !513)
!543 = !DILocation(line: 191, column: 1, scope: !513)
!544 = distinct !DISubprogram(name: "mem_section_usage_size", scope: !3, file: !3, line: 315, type: !545, scopeLine: 316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!545 = !DISubroutineType(types: !546)
!546 = !{!81}
!547 = !DILocation(line: 317, column: 44, scope: !544)
!548 = !DILocation(line: 317, column: 42, scope: !544)
!549 = !DILocation(line: 317, column: 2, scope: !544)
!550 = distinct !DISubprogram(name: "usemap_size", scope: !3, file: !3, line: 310, type: !551, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!551 = !DISubroutineType(types: !552)
!552 = !{!85}
!553 = !DILocation(line: 312, column: 2, scope: !550)
!554 = distinct !DISubprogram(name: "sparse_buffer_alloc", scope: !3, file: !3, line: 479, type: !555, scopeLine: 480, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !557)
!555 = !DISubroutineType(types: !556)
!556 = !{!66, !85}
!557 = !{!558, !559, !560}
!558 = !DILocalVariable(name: "size", arg: 1, scope: !554, file: !3, line: 479, type: !85)
!559 = !DILocalVariable(name: "ptr", scope: !554, file: !3, line: 481, type: !66)
!560 = !DILocalVariable(name: "__y", scope: !561, file: !3, line: 484, type: !85)
!561 = distinct !DILexicalBlock(scope: !562, file: !3, line: 484, column: 18)
!562 = distinct !DILexicalBlock(scope: !563, file: !3, line: 483, column: 21)
!563 = distinct !DILexicalBlock(scope: !554, file: !3, line: 483, column: 6)
!564 = !DILocation(line: 479, column: 52, scope: !554)
!565 = !DILocation(line: 481, column: 2, scope: !554)
!566 = !DILocation(line: 481, column: 8, scope: !554)
!567 = !DILocation(line: 483, column: 6, scope: !563)
!568 = !DILocation(line: 483, column: 6, scope: !554)
!569 = !DILocation(line: 484, column: 18, scope: !561)
!570 = !DILocation(line: 484, column: 18, scope: !562)
!571 = !DILocation(line: 484, column: 9, scope: !562)
!572 = !DILocation(line: 484, column: 7, scope: !562)
!573 = !DILocation(line: 485, column: 7, scope: !574)
!574 = distinct !DILexicalBlock(scope: !562, file: !3, line: 485, column: 7)
!575 = !DILocation(line: 485, column: 13, scope: !574)
!576 = !DILocation(line: 485, column: 11, scope: !574)
!577 = !DILocation(line: 485, column: 20, scope: !574)
!578 = !DILocation(line: 485, column: 18, scope: !574)
!579 = !DILocation(line: 485, column: 7, scope: !562)
!580 = !DILocation(line: 486, column: 8, scope: !574)
!581 = !DILocation(line: 486, column: 4, scope: !574)
!582 = !DILocation(line: 489, column: 24, scope: !583)
!583 = distinct !DILexicalBlock(scope: !584, file: !3, line: 489, column: 8)
!584 = distinct !DILexicalBlock(scope: !574, file: !3, line: 487, column: 8)
!585 = !DILocation(line: 489, column: 30, scope: !583)
!586 = !DILocation(line: 489, column: 28, scope: !583)
!587 = !DILocation(line: 489, column: 45, scope: !583)
!588 = !DILocation(line: 489, column: 8, scope: !584)
!589 = !DILocation(line: 490, column: 40, scope: !583)
!590 = !DILocation(line: 490, column: 46, scope: !583)
!591 = !DILocation(line: 490, column: 44, scope: !583)
!592 = !DILocation(line: 490, column: 5, scope: !583)
!593 = !DILocation(line: 491, column: 20, scope: !584)
!594 = !DILocation(line: 491, column: 26, scope: !584)
!595 = !DILocation(line: 491, column: 24, scope: !584)
!596 = !DILocation(line: 491, column: 18, scope: !584)
!597 = !DILocation(line: 493, column: 2, scope: !562)
!598 = !DILocation(line: 494, column: 9, scope: !554)
!599 = !DILocation(line: 495, column: 1, scope: !554)
!600 = !DILocation(line: 494, column: 2, scope: !554)
!601 = distinct !DISubprogram(name: "sparse_buffer_free", scope: !3, file: !3, line: 451, type: !602, scopeLine: 452, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !604)
!602 = !DISubroutineType(types: !603)
!603 = !{null, !85}
!604 = !{!605, !606, !608}
!605 = !DILocalVariable(name: "size", arg: 1, scope: !601, file: !3, line: 451, type: !85)
!606 = !DILocalVariable(name: "__ret_warn_on", scope: !607, file: !3, line: 453, type: !68)
!607 = distinct !DILexicalBlock(scope: !601, file: !3, line: 453, column: 2)
!608 = !DILocalVariable(name: "__flags", scope: !609, file: !3, line: 453, type: !68)
!609 = distinct !DILexicalBlock(scope: !610, file: !3, line: 453, column: 2)
!610 = distinct !DILexicalBlock(scope: !607, file: !3, line: 453, column: 2)
!611 = !DILocation(line: 451, column: 63, scope: !601)
!612 = !DILocation(line: 453, column: 2, scope: !607)
!613 = !DILocation(line: 453, column: 2, scope: !610)
!614 = !DILocation(line: 453, column: 2, scope: !609)
!615 = !DILocation(line: 453, column: 2, scope: !616)
!616 = distinct !DILexicalBlock(scope: !609, file: !3, line: 453, column: 2)
!617 = !DILocation(line: 453, column: 2, scope: !618)
!618 = distinct !DILexicalBlock(scope: !609, file: !3, line: 453, column: 2)
!619 = !{i64 2155604135, i64 2155604164, i64 2155604210, i64 2155604268, i64 2155604322, i64 2155604376, i64 2155604431, i64 2155604462, i64 2155604770, i64 2155604776, i64 2155604823, i64 2155604846, i64 2155604872}
!620 = !DILocation(line: 453, column: 2, scope: !621)
!621 = distinct !DILexicalBlock(scope: !609, file: !3, line: 453, column: 2)
!622 = !DILocation(line: 453, column: 2, scope: !601)
!623 = !DILocation(line: 454, column: 16, scope: !601)
!624 = !DILocation(line: 454, column: 31, scope: !601)
!625 = !DILocation(line: 454, column: 2, scope: !601)
!626 = !DILocation(line: 455, column: 1, scope: !601)
!627 = distinct !DISubprogram(name: "vmemmap_populate_print_last", scope: !3, file: !3, line: 497, type: !628, scopeLine: 498, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!628 = !DISubroutineType(types: !629)
!629 = !{null}
!630 = !DILocation(line: 499, column: 1, scope: !627)
!631 = distinct !DISubprogram(name: "sparse_init", scope: !3, file: !3, line: 558, type: !628, scopeLine: 559, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !632)
!632 = !{!633, !634, !635, !636, !637}
!633 = !DILocalVariable(name: "pnum_end", scope: !631, file: !3, line: 560, type: !85)
!634 = !DILocalVariable(name: "pnum_begin", scope: !631, file: !3, line: 560, type: !85)
!635 = !DILocalVariable(name: "map_count", scope: !631, file: !3, line: 560, type: !85)
!636 = !DILocalVariable(name: "nid_begin", scope: !631, file: !3, line: 561, type: !68)
!637 = !DILocalVariable(name: "nid", scope: !638, file: !3, line: 572, type: !68)
!638 = distinct !DILexicalBlock(scope: !639, file: !3, line: 571, column: 56)
!639 = distinct !DILexicalBlock(scope: !640, file: !3, line: 571, column: 2)
!640 = distinct !DILexicalBlock(scope: !631, file: !3, line: 571, column: 2)
!641 = !DILocation(line: 560, column: 2, scope: !631)
!642 = !DILocation(line: 560, column: 16, scope: !631)
!643 = !DILocation(line: 560, column: 26, scope: !631)
!644 = !DILocation(line: 560, column: 38, scope: !631)
!645 = !DILocation(line: 561, column: 2, scope: !631)
!646 = !DILocation(line: 561, column: 6, scope: !631)
!647 = !DILocation(line: 563, column: 2, scope: !631)
!648 = !DILocation(line: 565, column: 15, scope: !631)
!649 = !DILocation(line: 565, column: 13, scope: !631)
!650 = !DILocation(line: 566, column: 47, scope: !631)
!651 = !DILocation(line: 566, column: 31, scope: !631)
!652 = !DILocation(line: 566, column: 14, scope: !631)
!653 = !DILocation(line: 566, column: 12, scope: !631)
!654 = !DILocation(line: 569, column: 2, scope: !631)
!655 = !DILocation(line: 571, column: 2, scope: !640)
!656 = !DILocation(line: 571, column: 2, scope: !639)
!657 = !DILocation(line: 572, column: 3, scope: !638)
!658 = !DILocation(line: 572, column: 7, scope: !638)
!659 = !DILocation(line: 572, column: 46, scope: !638)
!660 = !DILocation(line: 572, column: 30, scope: !638)
!661 = !DILocation(line: 572, column: 13, scope: !638)
!662 = !DILocation(line: 574, column: 7, scope: !663)
!663 = distinct !DILexicalBlock(scope: !638, file: !3, line: 574, column: 7)
!664 = !DILocation(line: 574, column: 14, scope: !663)
!665 = !DILocation(line: 574, column: 11, scope: !663)
!666 = !DILocation(line: 574, column: 7, scope: !638)
!667 = !DILocation(line: 575, column: 13, scope: !668)
!668 = distinct !DILexicalBlock(scope: !663, file: !3, line: 574, column: 25)
!669 = !DILocation(line: 576, column: 4, scope: !668)
!670 = !DILocation(line: 579, column: 19, scope: !638)
!671 = !DILocation(line: 579, column: 30, scope: !638)
!672 = !DILocation(line: 579, column: 42, scope: !638)
!673 = !DILocation(line: 579, column: 52, scope: !638)
!674 = !DILocation(line: 579, column: 3, scope: !638)
!675 = !DILocation(line: 580, column: 15, scope: !638)
!676 = !DILocation(line: 580, column: 13, scope: !638)
!677 = !DILocation(line: 581, column: 16, scope: !638)
!678 = !DILocation(line: 581, column: 14, scope: !638)
!679 = !DILocation(line: 582, column: 13, scope: !638)
!680 = !DILocation(line: 583, column: 2, scope: !639)
!681 = !DILocation(line: 583, column: 2, scope: !638)
!682 = distinct !{!682, !655, !683, !474, !475}
!683 = !DILocation(line: 583, column: 2, scope: !640)
!684 = !DILocation(line: 585, column: 18, scope: !631)
!685 = !DILocation(line: 585, column: 29, scope: !631)
!686 = !DILocation(line: 585, column: 41, scope: !631)
!687 = !DILocation(line: 585, column: 51, scope: !631)
!688 = !DILocation(line: 585, column: 2, scope: !631)
!689 = !DILocation(line: 586, column: 2, scope: !631)
!690 = !DILocation(line: 587, column: 1, scope: !631)
!691 = distinct !DISubprogram(name: "memblocks_present", scope: !3, file: !3, line: 265, type: !628, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !692)
!692 = !{!693, !694, !695, !696}
!693 = !DILocalVariable(name: "start", scope: !691, file: !3, line: 267, type: !85)
!694 = !DILocalVariable(name: "end", scope: !691, file: !3, line: 267, type: !85)
!695 = !DILocalVariable(name: "i", scope: !691, file: !3, line: 268, type: !68)
!696 = !DILocalVariable(name: "nid", scope: !691, file: !3, line: 268, type: !68)
!697 = !DILocation(line: 267, column: 2, scope: !691)
!698 = !DILocation(line: 267, column: 16, scope: !691)
!699 = !DILocation(line: 267, column: 23, scope: !691)
!700 = !DILocation(line: 268, column: 2, scope: !691)
!701 = !DILocation(line: 268, column: 6, scope: !691)
!702 = !DILocation(line: 268, column: 9, scope: !691)
!703 = !DILocation(line: 270, column: 2, scope: !704)
!704 = distinct !DILexicalBlock(scope: !691, file: !3, line: 270, column: 2)
!705 = !DILocation(line: 270, column: 2, scope: !706)
!706 = distinct !DILexicalBlock(scope: !704, file: !3, line: 270, column: 2)
!707 = !DILocation(line: 271, column: 18, scope: !706)
!708 = !DILocation(line: 271, column: 23, scope: !706)
!709 = !DILocation(line: 271, column: 30, scope: !706)
!710 = !DILocation(line: 271, column: 3, scope: !706)
!711 = distinct !{!711, !703, !712, !474, !475}
!712 = !DILocation(line: 271, column: 33, scope: !704)
!713 = !DILocation(line: 272, column: 1, scope: !691)
!714 = distinct !DISubprogram(name: "first_present_section_nr", scope: !3, file: !3, line: 178, type: !551, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!715 = !DILocation(line: 180, column: 9, scope: !714)
!716 = !DILocation(line: 180, column: 2, scope: !714)
!717 = distinct !DISubprogram(name: "sparse_early_nid", scope: !3, file: !3, line: 123, type: !718, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !720)
!718 = !DISubroutineType(types: !719)
!719 = !{!68, !368}
!720 = !{!721}
!721 = !DILocalVariable(name: "section", arg: 1, scope: !717, file: !3, line: 123, type: !368)
!722 = !DILocation(line: 123, column: 56, scope: !717)
!723 = !DILocation(line: 125, column: 10, scope: !717)
!724 = !DILocation(line: 125, column: 19, scope: !717)
!725 = !DILocation(line: 125, column: 35, scope: !717)
!726 = !DILocation(line: 125, column: 9, scope: !717)
!727 = !DILocation(line: 125, column: 2, scope: !717)
!728 = !DISubprogram(name: "set_pageblock_order", scope: !27, file: !27, line: 875, type: !628, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!729 = distinct !DISubprogram(name: "next_present_section_nr", scope: !19, file: !19, line: 2034, type: !478, scopeLine: 2035, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !730)
!730 = !{!731}
!731 = !DILocalVariable(name: "section_nr", arg: 1, scope: !729, file: !19, line: 2034, type: !85)
!732 = !DILocation(line: 2034, column: 67, scope: !729)
!733 = !DILocation(line: 2036, column: 2, scope: !729)
!734 = !DILocation(line: 2036, column: 9, scope: !729)
!735 = !DILocation(line: 2036, column: 25, scope: !729)
!736 = !DILocation(line: 2036, column: 22, scope: !729)
!737 = !DILocation(line: 2037, column: 26, scope: !738)
!738 = distinct !DILexicalBlock(scope: !739, file: !19, line: 2037, column: 7)
!739 = distinct !DILexicalBlock(scope: !729, file: !19, line: 2036, column: 55)
!740 = !DILocation(line: 2037, column: 7, scope: !738)
!741 = !DILocation(line: 2037, column: 7, scope: !739)
!742 = !DILocation(line: 2038, column: 11, scope: !738)
!743 = !DILocation(line: 2038, column: 4, scope: !738)
!744 = distinct !{!744, !733, !745, !474, !475}
!745 = !DILocation(line: 2039, column: 2, scope: !729)
!746 = !DILocation(line: 2041, column: 2, scope: !729)
!747 = !DILocation(line: 2042, column: 1, scope: !729)
!748 = distinct !DISubprogram(name: "sparse_init_nid", scope: !3, file: !3, line: 505, type: !749, scopeLine: 508, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !751)
!749 = !DISubroutineType(types: !750)
!750 = !{null, !68, !85, !85, !85}
!751 = !{!752, !753, !754, !755, !756, !757, !758, !5916, !5920, !5921}
!752 = !DILocalVariable(name: "nid", arg: 1, scope: !748, file: !3, line: 505, type: !68)
!753 = !DILocalVariable(name: "pnum_begin", arg: 2, scope: !748, file: !3, line: 505, type: !85)
!754 = !DILocalVariable(name: "pnum_end", arg: 3, scope: !748, file: !3, line: 506, type: !85)
!755 = !DILocalVariable(name: "map_count", arg: 4, scope: !748, file: !3, line: 507, type: !85)
!756 = !DILocalVariable(name: "usage", scope: !748, file: !3, line: 509, type: !373)
!757 = !DILocalVariable(name: "pnum", scope: !748, file: !3, line: 510, type: !85)
!758 = !DILocalVariable(name: "map", scope: !748, file: !3, line: 511, type: !759)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !154, line: 74, size: 512, align: 128, elements: !761)
!761 = !{!762, !763, !5910, !5915}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !760, file: !154, line: 75, baseType: !85, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, scope: !760, file: !154, line: 83, baseType: !764, size: 320, offset: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !760, file: !154, line: 83, size: 320, elements: !765)
!765 = !{!766, !5837, !5851, !5855, !5909}
!766 = !DIDerivedType(tag: DW_TAG_member, scope: !764, file: !154, line: 84, baseType: !767, size: 320)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !764, file: !154, line: 84, size: 320, elements: !768)
!768 = !{!769, !780, !5831, !5836}
!769 = !DIDerivedType(tag: DW_TAG_member, scope: !767, file: !154, line: 90, baseType: !770, size: 128)
!770 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !767, file: !154, line: 90, size: 128, elements: !771)
!771 = !{!772, !773, !778, !779}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !770, file: !154, line: 91, baseType: !143, size: 128)
!773 = !DIDerivedType(tag: DW_TAG_member, scope: !770, file: !154, line: 94, baseType: !774, size: 128)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !770, file: !154, line: 94, size: 128, elements: !775)
!775 = !{!776, !777}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !774, file: !154, line: 96, baseType: !66, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !774, file: !154, line: 98, baseType: !7, size: 32, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !770, file: !154, line: 102, baseType: !143, size: 128)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !770, file: !154, line: 103, baseType: !143, size: 128)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !767, file: !154, line: 106, baseType: !781, size: 64, offset: 128)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !181, line: 472, size: 1536, align: 64, elements: !783)
!783 = !{!784, !5678, !5679, !5680, !5681, !5682, !5683, !5684, !5685, !5825, !5826, !5827, !5828, !5829, !5830}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !782, file: !181, line: 473, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !181, line: 641, size: 4800, elements: !787)
!787 = !{!788, !789, !790, !798, !799, !806, !807, !810, !811, !5617, !5618, !5619, !5620, !5621, !5626, !5627, !5628, !5629, !5630, !5631, !5632, !5633, !5634, !5635, !5636, !5637, !5638, !5639, !5640, !5641, !5642, !5643, !5644, !5649, !5650, !5651, !5652, !5653, !5654, !5655, !5660, !5663, !5664, !5665, !5674, !5675, !5676, !5677}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !786, file: !181, line: 642, baseType: !70, size: 16)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !786, file: !181, line: 643, baseType: !72, size: 16, offset: 16)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !786, file: !181, line: 644, baseType: !791, size: 32, offset: 32)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !792, line: 23, baseType: !793)
!792 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !792, line: 21, size: 32, elements: !794)
!794 = !{!795}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !793, file: !792, line: 22, baseType: !796, size: 32)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !71, line: 37, baseType: !797)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !83, line: 49, baseType: !7)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !786, file: !181, line: 645, baseType: !143, size: 128, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !786, file: !181, line: 646, baseType: !800, size: 32, offset: 192)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !792, line: 28, baseType: !801)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !792, line: 26, size: 32, elements: !802)
!802 = !{!803}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !801, file: !792, line: 27, baseType: !804, size: 32)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !71, line: 38, baseType: !805)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !83, line: 50, baseType: !7)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !786, file: !181, line: 647, baseType: !7, size: 32, offset: 224)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !786, file: !181, line: 650, baseType: !808, size: 64, offset: 256)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !181, line: 607, flags: DIFlagFwdDecl)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !786, file: !181, line: 651, baseType: !808, size: 64, offset: 320)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !786, file: !181, line: 654, baseType: !812, size: 64, offset: 384)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !814)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !181, line: 1966, size: 2048, align: 512, elements: !815)
!815 = !{!816, !5451, !5461, !5465, !5469, !5473, !5477, !5481, !5485, !5489, !5493, !5494, !5498, !5502, !5539, !5568, !5572, !5578, !5582, !5586, !5590, !5594, !5598, !5604, !5608}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !814, file: !181, line: 1967, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DISubroutineType(types: !819)
!819 = !{!820, !785, !820, !7}
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !822, line: 82, size: 1536, elements: !823)
!822 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!823 = !{!824, !825, !835, !843, !844, !864, !865, !869, !882, !5434, !5435, !5436, !5437, !5443, !5444, !5445}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !821, file: !822, line: 84, baseType: !7, size: 32)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !821, file: !822, line: 85, baseType: !826, size: 32, offset: 32)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !827, line: 275, baseType: !828)
!827 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !827, line: 275, size: 32, elements: !829)
!829 = !{!830}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !828, file: !827, line: 275, baseType: !831, size: 32)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !827, line: 69, baseType: !832)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !827, line: 64, size: 32, elements: !833)
!833 = !{!834}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !832, file: !827, line: 65, baseType: !7, size: 32)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !821, file: !822, line: 86, baseType: !836, size: 128, offset: 64)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !837, line: 38, size: 128, elements: !838)
!837 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!838 = !{!839, !841}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !836, file: !837, line: 39, baseType: !840, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !836, file: !837, line: 39, baseType: !842, size: 64, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !821, file: !822, line: 87, baseType: !820, size: 64, offset: 192)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !821, file: !822, line: 88, baseType: !845, size: 128, offset: 256)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !822, line: 49, size: 128, elements: !846)
!846 = !{!847, !861}
!847 = !DIDerivedType(tag: DW_TAG_member, scope: !845, file: !822, line: 50, baseType: !848, size: 64)
!848 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !845, file: !822, line: 50, size: 64, elements: !849)
!849 = !{!850, !857}
!850 = !DIDerivedType(tag: DW_TAG_member, scope: !848, file: !822, line: 51, baseType: !851, size: 64)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !848, file: !822, line: 51, size: 64, elements: !852)
!852 = !{!853, !856}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !851, file: !822, line: 52, baseType: !854, size: 32)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !130, line: 21, baseType: !855)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !132, line: 27, baseType: !7)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !851, file: !822, line: 52, baseType: !854, size: 32, offset: 32)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !848, file: !822, line: 54, baseType: !858, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !130, line: 23, baseType: !859)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !132, line: 31, baseType: !860)
!860 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !845, file: !822, line: 56, baseType: !862, size: 64, offset: 64)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !821, file: !822, line: 89, baseType: !785, size: 64, offset: 384)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !821, file: !822, line: 91, baseType: !866, size: 256, offset: 448)
!866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 256, elements: !867)
!867 = !{!868}
!868 = !DISubrange(count: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !821, file: !822, line: 94, baseType: !870, size: 64, offset: 704)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !871, line: 25, size: 64, elements: !872)
!871 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!872 = !{!873}
!873 = !DIDerivedType(tag: DW_TAG_member, scope: !870, file: !871, line: 26, baseType: !874, size: 64)
!874 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !870, file: !871, line: 26, size: 64, elements: !875)
!875 = !{!876, !877}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !874, file: !871, line: 28, baseType: !859, size: 64, align: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, scope: !874, file: !871, line: 30, baseType: !878, size: 64)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !874, file: !871, line: 30, size: 64, elements: !879)
!879 = !{!880, !881}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !878, file: !871, line: 31, baseType: !105, size: 32)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !878, file: !871, line: 32, baseType: !68, size: 32, offset: 32)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !821, file: !822, line: 95, baseType: !883, size: 64, offset: 768)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !885)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !822, line: 128, size: 1024, align: 512, elements: !886)
!886 = !{!887, !891, !892, !899, !905, !909, !913, !917, !918, !922, !926, !5424, !5428}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !885, file: !822, line: 129, baseType: !888, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DISubroutineType(types: !890)
!890 = !{!68, !820, !7}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !885, file: !822, line: 130, baseType: !888, size: 64, offset: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !885, file: !822, line: 131, baseType: !893, size: 64, offset: 128)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DISubroutineType(types: !895)
!895 = !{!68, !896, !898}
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !821)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !885, file: !822, line: 132, baseType: !900, size: 64, offset: 192)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DISubroutineType(types: !902)
!902 = !{!68, !896, !7, !62, !903}
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !845)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !885, file: !822, line: 134, baseType: !906, size: 64, offset: 256)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DISubroutineType(types: !908)
!908 = !{!68, !896}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !885, file: !822, line: 135, baseType: !910, size: 64, offset: 320)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DISubroutineType(types: !912)
!912 = !{!68, !820}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !885, file: !822, line: 136, baseType: !914, size: 64, offset: 384)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DISubroutineType(types: !916)
!916 = !{null, !820}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !885, file: !822, line: 137, baseType: !914, size: 64, offset: 448)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !885, file: !822, line: 138, baseType: !919, size: 64, offset: 512)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DISubroutineType(types: !921)
!921 = !{null, !820, !785}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !885, file: !822, line: 139, baseType: !923, size: 64, offset: 576)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{!300, !820, !300, !68}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !885, file: !822, line: 140, baseType: !927, size: 64, offset: 640)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DISubroutineType(types: !929)
!929 = !{!930, !5423}
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !932, line: 70, size: 256, elements: !933)
!932 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!933 = !{!934, !935, !5419, !5420}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !931, file: !932, line: 71, baseType: !820, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !931, file: !932, line: 72, baseType: !936, size: 64, offset: 64)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !181, line: 1190, size: 10752, elements: !938)
!938 = !{!939, !940, !943, !944, !945, !946, !2707, !2859, !2899, !2984, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !3001, !3005, !3006, !3568, !3571, !3629, !3632, !3633, !3634, !3675, !5353, !5354, !5355, !5356, !5357, !5358, !5361, !5362, !5369, !5370, !5371, !5372, !5373, !5388, !5389, !5390, !5391, !5392, !5393, !5394, !5395, !5410, !5411, !5412, !5413, !5414, !5415, !5416, !5417, !5418}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !937, file: !181, line: 1191, baseType: !143, size: 128)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !937, file: !181, line: 1192, baseType: !941, size: 32, offset: 128)
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !71, line: 21, baseType: !942)
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !71, line: 18, baseType: !854)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !937, file: !181, line: 1193, baseType: !133, size: 8, offset: 160)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !937, file: !181, line: 1194, baseType: !85, size: 64, offset: 192)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !937, file: !181, line: 1195, baseType: !87, size: 64, offset: 256)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !937, file: !181, line: 1196, baseType: !947, size: 64, offset: 320)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !181, line: 2366, size: 576, elements: !949)
!949 = !{!950, !951, !952, !958, !962, !966, !970, !2695, !2696, !2697, !2699, !2700, !2701, !2703, !2704, !2705, !2706}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !948, file: !181, line: 2367, baseType: !62, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !948, file: !181, line: 2368, baseType: !68, size: 32, offset: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !948, file: !181, line: 2376, baseType: !953, size: 64, offset: 128)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DISubroutineType(types: !955)
!955 = !{!68, !956}
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !932, line: 21, flags: DIFlagFwdDecl)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !948, file: !181, line: 2377, baseType: !959, size: 64, offset: 192)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !961)
!961 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !181, line: 75, flags: DIFlagFwdDecl)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !948, file: !181, line: 2378, baseType: !963, size: 64, offset: 256)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DISubroutineType(types: !965)
!965 = !{!820, !947, !68, !62, !66}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !948, file: !181, line: 2380, baseType: !967, size: 64, offset: 320)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DISubroutineType(types: !969)
!969 = !{null, !936}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !948, file: !181, line: 2381, baseType: !971, size: 64, offset: 384)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !43, line: 402, size: 9216, align: 512, elements: !973)
!973 = !{!974, !975, !976, !980, !2355, !2381, !2382, !2383, !2384, !2388, !2391, !2392, !2393, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2461, !2465, !2485, !2503, !2504, !2505, !2506, !2515, !2538, !2539, !2542, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2556, !2557, !2656, !2664, !2665, !2666, !2668, !2672, !2673, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2690, !2691, !2692, !2694}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !972, file: !43, line: 403, baseType: !42, size: 32)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !972, file: !43, line: 406, baseType: !143, size: 128, offset: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !972, file: !43, line: 409, baseType: !977, size: 448, offset: 192)
!977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 448, elements: !978)
!978 = !{!979}
!979 = !DISubrange(count: 56)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !972, file: !43, line: 417, baseType: !981, size: 768, offset: 640)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !43, line: 45, size: 768, elements: !982)
!982 = !{!983, !2349, !2350, !2351, !2354}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !981, file: !43, line: 46, baseType: !984, size: 512)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !985, line: 64, size: 512, elements: !986)
!985 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!986 = !{!987, !988, !989, !991, !1037, !2247, !2339, !2344, !2345, !2346, !2347, !2348}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !984, file: !985, line: 65, baseType: !62, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !984, file: !985, line: 66, baseType: !143, size: 128, offset: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !984, file: !985, line: 67, baseType: !990, size: 64, offset: 192)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !984, file: !985, line: 68, baseType: !992, size: 64, offset: 256)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !985, line: 168, size: 768, elements: !994)
!994 = !{!995, !996, !997, !998}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !993, file: !985, line: 169, baseType: !143, size: 128)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !993, file: !985, line: 170, baseType: !105, size: 32, offset: 128)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !993, file: !985, line: 171, baseType: !984, size: 512, offset: 192)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !993, file: !985, line: 172, baseType: !999, size: 64, offset: 704)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1001)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !985, line: 133, size: 192, elements: !1002)
!1002 = !{!1003, !1010, !1015}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1001, file: !985, line: 134, baseType: !1004, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1005)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!68, !1008}
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !984)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1001, file: !985, line: 135, baseType: !1011, size: 64, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1012)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!62, !1008}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1001, file: !985, line: 136, baseType: !1016, size: 64, offset: 128)
!1016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1017)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!68, !1008, !1020}
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !985, line: 125, size: 20736, elements: !1022)
!1022 = !{!1023, !1027, !1031, !1032, !1036}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1021, file: !985, line: 126, baseType: !1024, size: 192)
!1024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 192, elements: !1025)
!1025 = !{!1026}
!1026 = !DISubrange(count: 3)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1021, file: !985, line: 127, baseType: !1028, size: 4096, offset: 192)
!1028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 4096, elements: !1029)
!1029 = !{!1030}
!1030 = !DISubrange(count: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1021, file: !985, line: 128, baseType: !68, size: 32, offset: 4288)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1021, file: !985, line: 129, baseType: !1033, size: 16384, offset: 4320)
!1033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 16384, elements: !1034)
!1034 = !{!1035}
!1035 = !DISubrange(count: 2048)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1021, file: !985, line: 130, baseType: !68, size: 32, offset: 20704)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !984, file: !985, line: 69, baseType: !1038, size: 64, offset: 320)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1040)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !985, line: 116, size: 384, elements: !1041)
!1041 = !{!1042, !1046, !1068, !2208, !2239, !2243}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1040, file: !985, line: 117, baseType: !1043, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{null, !990}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1040, file: !985, line: 118, baseType: !1047, size: 64, offset: 64)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1049)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1050, line: 254, size: 128, elements: !1051)
!1050 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1051 = !{!1052, !1064}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1049, file: !1050, line: 255, baseType: !1053, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!1056, !990, !1059, !300}
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !71, line: 66, baseType: !1057)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !83, line: 73, baseType: !1058)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !83, line: 15, baseType: !304)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1050, line: 30, size: 128, elements: !1061)
!1061 = !{!1062, !1063}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1060, file: !1050, line: 31, baseType: !62, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1060, file: !1050, line: 32, baseType: !70, size: 16, offset: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1049, file: !1050, line: 256, baseType: !1065, size: 64, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!1056, !990, !1059, !62, !81}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1040, file: !985, line: 119, baseType: !1069, size: 64, offset: 128)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1072)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1050, line: 84, size: 320, elements: !1073)
!1073 = !{!1074, !1075, !1079, !2204, !2206}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1072, file: !1050, line: 85, baseType: !62, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1072, file: !1050, line: 86, baseType: !1076, size: 64, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!70, !990, !1059, !68}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1072, file: !1050, line: 88, baseType: !1080, size: 64, offset: 128)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!70, !990, !1083, !68}
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1050, line: 175, size: 512, elements: !1085)
!1085 = !{!1086, !1087, !1088, !1089, !1093, !2199, !2200}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1084, file: !1050, line: 176, baseType: !1060, size: 128)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1084, file: !1050, line: 177, baseType: !81, size: 64, offset: 128)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1084, file: !1050, line: 178, baseType: !66, size: 64, offset: 192)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1084, file: !1050, line: 179, baseType: !1090, size: 64, offset: 256)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!781}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1084, file: !1050, line: 180, baseType: !1094, size: 64, offset: 320)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!1056, !1097, !990, !1083, !300, !87, !81}
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !181, line: 994, size: 1856, align: 64, elements: !1099)
!1099 = !{!1100, !1111, !1112, !1114, !1123, !1136, !1137, !1138, !1204, !1563, !1572, !1578, !1579, !2189, !2190, !2191, !2192, !2194, !2195, !2198}
!1100 = !DIDerivedType(tag: DW_TAG_member, scope: !1098, file: !181, line: 995, baseType: !1101, size: 128)
!1101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1098, file: !181, line: 995, size: 128, elements: !1102)
!1102 = !{!1103, !1109, !1110}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1101, file: !181, line: 996, baseType: !1104, size: 64)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1105, line: 60, size: 64, elements: !1106)
!1105 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1106 = !{!1107}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1104, file: !1105, line: 61, baseType: !1108, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1101, file: !181, line: 997, baseType: !377, size: 128, align: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1101, file: !181, line: 998, baseType: !7, size: 32)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1098, file: !181, line: 1005, baseType: !105, size: 32, offset: 128)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1098, file: !181, line: 1006, baseType: !1113, size: 32, offset: 160)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !71, line: 156, baseType: !7)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1098, file: !181, line: 1007, baseType: !1115, size: 64, offset: 192)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1116, line: 13, baseType: !1117)
!1116 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!1117 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !71, line: 181, baseType: !1118)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 179, size: 64, elements: !1119)
!1119 = !{!1120}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1118, file: !71, line: 180, baseType: !1121, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !130, line: 22, baseType: !1122)
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !132, line: 30, baseType: !89)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1098, file: !181, line: 1008, baseType: !1124, size: 256, offset: 256)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1125, line: 66, size: 256, elements: !1126)
!1125 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!1126 = !{!1127, !1128, !1130, !1135}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1124, file: !1125, line: 67, baseType: !1115, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1124, file: !1125, line: 68, baseType: !1129, size: 32, offset: 64)
!1129 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !114, line: 23, baseType: !113)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1124, file: !1125, line: 70, baseType: !1131, size: 32, offset: 96)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !1132, line: 15, size: 32, elements: !1133)
!1132 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!1133 = !{!1134}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1131, file: !1132, line: 20, baseType: !95, size: 32)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1124, file: !1125, line: 72, baseType: !143, size: 128, offset: 128)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1098, file: !181, line: 1009, baseType: !87, size: 64, offset: 512)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1098, file: !181, line: 1010, baseType: !7, size: 32, offset: 576)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1098, file: !181, line: 1011, baseType: !1139, size: 256, offset: 640)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !181, line: 948, size: 256, elements: !1140)
!1140 = !{!1141, !1162, !1200, !1201, !1202, !1203}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1139, file: !181, line: 949, baseType: !1142, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1143, line: 34, baseType: !1144)
!1143 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1143, line: 25, size: 64, elements: !1145)
!1145 = !{!1146}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1144, file: !1143, line: 26, baseType: !1147, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1148, line: 27, baseType: !1149)
!1148 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1148, line: 13, size: 64, elements: !1150)
!1150 = !{!1151, !1161}
!1151 = !DIDerivedType(tag: DW_TAG_member, scope: !1149, file: !1148, line: 14, baseType: !1152, size: 32)
!1152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1149, file: !1148, line: 14, size: 32, elements: !1153)
!1153 = !{!1154, !1155}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1152, file: !1148, line: 15, baseType: !95, size: 32)
!1155 = !DIDerivedType(tag: DW_TAG_member, scope: !1152, file: !1148, line: 16, baseType: !1156, size: 32)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1152, file: !1148, line: 16, size: 32, elements: !1157)
!1157 = !{!1158, !1159}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1156, file: !1148, line: 18, baseType: !129, size: 8)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1156, file: !1148, line: 19, baseType: !1160, size: 24, offset: 8)
!1160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 24, elements: !1025)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1149, file: !1148, line: 26, baseType: !117, size: 32, offset: 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1139, file: !181, line: 950, baseType: !1163, size: 64, offset: 64)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !50, line: 59, size: 768, elements: !1165)
!1165 = !{!1166, !1172, !1173, !1174, !1187, !1188, !1189, !1190}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1164, file: !50, line: 61, baseType: !1167, size: 32)
!1167 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1168, line: 113, baseType: !1169)
!1168 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1168, line: 111, size: 32, elements: !1170)
!1170 = !{!1171}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1169, file: !1168, line: 112, baseType: !95, size: 32)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1164, file: !50, line: 62, baseType: !7, size: 32, offset: 32)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1164, file: !50, line: 63, baseType: !105, size: 32, offset: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1164, file: !50, line: 65, baseType: !1175, size: 256, offset: 128)
!1175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1176, size: 256, elements: !1185)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !71, line: 194, size: 64, elements: !1177)
!1177 = !{!1178}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1176, file: !71, line: 195, baseType: !1179, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !71, line: 198, size: 128, elements: !1181)
!1181 = !{!1182, !1183}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1180, file: !71, line: 199, baseType: !1179, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1180, file: !71, line: 199, baseType: !1184, size: 64, offset: 64)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1185 = !{!1186}
!1186 = !DISubrange(count: 4)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1164, file: !50, line: 66, baseType: !1176, size: 64, offset: 384)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1164, file: !50, line: 68, baseType: !100, size: 192, offset: 448)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1164, file: !50, line: 69, baseType: !377, size: 128, align: 64, offset: 640)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1164, file: !50, line: 70, baseType: !1191, offset: 768)
!1191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1192, elements: !1198)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !50, line: 54, size: 128, elements: !1193)
!1193 = !{!1194, !1195}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1192, file: !50, line: 55, baseType: !68, size: 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1192, file: !50, line: 56, baseType: !1196, size: 64, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !50, line: 56, flags: DIFlagFwdDecl)
!1198 = !{!1199}
!1199 = !DISubrange(count: -1)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1139, file: !181, line: 951, baseType: !49, size: 32, offset: 128)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1139, file: !181, line: 952, baseType: !791, size: 32, offset: 160)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1139, file: !181, line: 952, baseType: !791, size: 32, offset: 192)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1139, file: !181, line: 953, baseType: !68, size: 32, offset: 224)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1098, file: !181, line: 1012, baseType: !1205, size: 64, offset: 896)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1207)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1208, line: 110, size: 1472, elements: !1209)
!1208 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1209 = !{!1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1226, !1227, !1228, !1229, !1230, !1231, !1361, !1362, !1363, !1364, !1365, !1396, !1549, !1550, !1558}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1207, file: !1208, line: 111, baseType: !1115, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1207, file: !1208, line: 112, baseType: !791, size: 32, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1207, file: !1208, line: 113, baseType: !800, size: 32, offset: 96)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1207, file: !1208, line: 114, baseType: !791, size: 32, offset: 128)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1207, file: !1208, line: 115, baseType: !800, size: 32, offset: 160)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1207, file: !1208, line: 116, baseType: !791, size: 32, offset: 192)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1207, file: !1208, line: 117, baseType: !800, size: 32, offset: 224)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1207, file: !1208, line: 118, baseType: !791, size: 32, offset: 256)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1207, file: !1208, line: 119, baseType: !800, size: 32, offset: 288)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1207, file: !1208, line: 120, baseType: !7, size: 32, offset: 320)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1207, file: !1208, line: 121, baseType: !1221, size: 64, offset: 384)
!1221 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1222, line: 24, baseType: !1223)
!1222 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1222, line: 24, size: 64, elements: !1224)
!1224 = !{!1225}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1223, file: !1222, line: 24, baseType: !858, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1207, file: !1208, line: 122, baseType: !1221, size: 64, offset: 448)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1207, file: !1208, line: 123, baseType: !1221, size: 64, offset: 512)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1207, file: !1208, line: 124, baseType: !1221, size: 64, offset: 576)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1207, file: !1208, line: 125, baseType: !1221, size: 64, offset: 640)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1207, file: !1208, line: 127, baseType: !133, size: 8, offset: 704)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1207, file: !1208, line: 129, baseType: !1232, size: 64, offset: 768)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1234, line: 195, size: 1728, elements: !1235)
!1234 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1235 = !{!1236, !1237, !1242, !1254, !1263, !1266, !1267, !1274, !1275, !1276, !1277, !1280, !1281, !1282, !1284, !1285, !1325, !1346}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1233, file: !1234, line: 196, baseType: !1167, size: 32)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1233, file: !1234, line: 197, baseType: !1238, size: 32, offset: 32)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1234, line: 28, baseType: !1239)
!1239 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !71, line: 104, baseType: !1240)
!1240 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !130, line: 20, baseType: !1241)
!1241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !132, line: 26, baseType: !68)
!1242 = !DIDerivedType(tag: DW_TAG_member, scope: !1233, file: !1234, line: 198, baseType: !1243, size: 192, offset: 64)
!1243 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1233, file: !1234, line: 198, size: 192, elements: !1244)
!1244 = !{!1245, !1246}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1243, file: !1234, line: 199, baseType: !143, size: 128)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1243, file: !1234, line: 200, baseType: !1247, size: 192, align: 64)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1248, line: 5, size: 192, align: 64, elements: !1249)
!1248 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!1249 = !{!1250, !1251, !1253}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1247, file: !1248, line: 6, baseType: !85, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1247, file: !1248, line: 7, baseType: !1252, size: 64, offset: 64)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1247, file: !1248, line: 8, baseType: !1252, size: 64, offset: 128)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1233, file: !1234, line: 205, baseType: !1255, size: 320, offset: 256)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1256, line: 48, size: 320, elements: !1257)
!1256 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1257 = !{!1258, !1259, !1260, !1261, !1262}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1255, file: !1256, line: 49, baseType: !1115, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1255, file: !1256, line: 55, baseType: !1115, size: 64, offset: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1255, file: !1256, line: 57, baseType: !1131, size: 32, offset: 128)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1255, file: !1256, line: 59, baseType: !1129, size: 32, offset: 160)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1255, file: !1256, line: 60, baseType: !143, size: 128, offset: 192)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1233, file: !1234, line: 206, baseType: !1264, size: 64, offset: 576)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1234, line: 206, flags: DIFlagFwdDecl)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1233, file: !1234, line: 207, baseType: !66, size: 64, offset: 640)
!1267 = !DIDerivedType(tag: DW_TAG_member, scope: !1233, file: !1234, line: 208, baseType: !1268, size: 64, offset: 704)
!1268 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1233, file: !1234, line: 208, size: 64, elements: !1269)
!1269 = !{!1270, !1273}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1268, file: !1234, line: 209, baseType: !1271, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1272, line: 8, baseType: !1122)
!1272 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1268, file: !1234, line: 210, baseType: !1271, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1233, file: !1234, line: 212, baseType: !1271, size: 64, offset: 768)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1233, file: !1234, line: 213, baseType: !791, size: 32, offset: 832)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1233, file: !1234, line: 214, baseType: !800, size: 32, offset: 864)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1233, file: !1234, line: 215, baseType: !1278, size: 32, offset: 896)
!1278 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1234, line: 31, baseType: !1279)
!1279 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !71, line: 110, baseType: !854)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1233, file: !1234, line: 216, baseType: !72, size: 16, offset: 928)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1233, file: !1234, line: 217, baseType: !72, size: 16, offset: 944)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1233, file: !1234, line: 221, baseType: !1283, size: 16, offset: 960)
!1283 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1233, file: !1234, line: 228, baseType: !85, size: 64, offset: 1024)
!1285 = !DIDerivedType(tag: DW_TAG_member, scope: !1233, file: !1234, line: 245, baseType: !1286, size: 320, offset: 1088)
!1286 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1233, file: !1234, line: 245, size: 320, elements: !1287)
!1287 = !{!1288, !1317}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1286, file: !1234, line: 246, baseType: !1289, size: 320)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1234, line: 114, size: 320, elements: !1290)
!1290 = !{!1291, !1292, !1304, !1307, !1316}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1289, file: !1234, line: 116, baseType: !85, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, scope: !1289, file: !1234, line: 117, baseType: !1293, size: 64, offset: 64)
!1293 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1289, file: !1234, line: 117, size: 64, elements: !1294)
!1294 = !{!1295, !1303}
!1295 = !DIDerivedType(tag: DW_TAG_member, scope: !1293, file: !1234, line: 118, baseType: !1296, size: 64)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1293, file: !1234, line: 118, size: 64, elements: !1297)
!1297 = !{!1298, !1299}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1296, file: !1234, line: 120, baseType: !139, size: 16)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1296, file: !1234, line: 121, baseType: !1300, size: 48, offset: 16)
!1300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 48, elements: !1301)
!1301 = !{!1302}
!1302 = !DISubrange(count: 6)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1293, file: !1234, line: 127, baseType: !85, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1289, file: !1234, line: 129, baseType: !1305, size: 64, offset: 128)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1234, line: 102, flags: DIFlagFwdDecl)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1289, file: !1234, line: 130, baseType: !1308, size: 64, offset: 192)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1234, line: 108, size: 192, elements: !1310)
!1310 = !{!1311, !1312, !1313}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1309, file: !1234, line: 109, baseType: !377, size: 128, align: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1309, file: !1234, line: 110, baseType: !1167, size: 32, offset: 128)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1309, file: !1234, line: 111, baseType: !1314, size: 8, offset: 160)
!1314 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !71, line: 35, baseType: !1315)
!1315 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1289, file: !1234, line: 131, baseType: !62, size: 64, offset: 256)
!1317 = !DIDerivedType(tag: DW_TAG_member, scope: !1286, file: !1234, line: 247, baseType: !1318, size: 320)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1286, file: !1234, line: 247, size: 320, elements: !1319)
!1319 = !{!1320, !1321, !1322, !1323, !1324}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1318, file: !1234, line: 248, baseType: !85, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1318, file: !1234, line: 249, baseType: !85, size: 64, offset: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1318, file: !1234, line: 250, baseType: !1305, size: 64, offset: 128)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1318, file: !1234, line: 251, baseType: !1308, size: 64, offset: 192)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1318, file: !1234, line: 252, baseType: !300, size: 64, offset: 256)
!1325 = !DIDerivedType(tag: DW_TAG_member, scope: !1233, file: !1234, line: 260, baseType: !1326, size: 256, offset: 1408)
!1326 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1233, file: !1234, line: 260, size: 256, elements: !1327)
!1327 = !{!1328, !1334}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1326, file: !1234, line: 261, baseType: !1329, size: 256)
!1329 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1234, line: 134, size: 256, elements: !1330)
!1330 = !{!1331, !1332}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1329, file: !1234, line: 135, baseType: !66, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1329, file: !1234, line: 136, baseType: !1333, size: 256)
!1333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 256, elements: !1185)
!1334 = !DIDerivedType(tag: DW_TAG_member, scope: !1326, file: !1234, line: 262, baseType: !1335, size: 256)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1326, file: !1234, line: 262, size: 256, elements: !1336)
!1336 = !{!1337, !1338}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1335, file: !1234, line: 264, baseType: !143, size: 128)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1335, file: !1234, line: 265, baseType: !1339, size: 128, offset: 128)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1340, line: 22, size: 128, elements: !1341)
!1340 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1341 = !{!1342, !1345}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1339, file: !1340, line: 23, baseType: !1343, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1340, line: 23, flags: DIFlagFwdDecl)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1339, file: !1340, line: 24, baseType: !85, size: 64, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1233, file: !1234, line: 280, baseType: !1347, size: 64, offset: 1664)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1234, line: 176, size: 192, elements: !1349)
!1349 = !{!1350, !1359, !1360}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1348, file: !1234, line: 177, baseType: !1351, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1234, line: 171, baseType: !1352)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!68, !1232, !1355, !1357, !1232}
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1306)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1329)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1348, file: !1234, line: 178, baseType: !1232, size: 64, offset: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1348, file: !1234, line: 179, baseType: !1305, size: 64, offset: 128)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1207, file: !1208, line: 130, baseType: !1232, size: 64, offset: 832)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1207, file: !1208, line: 131, baseType: !1232, size: 64, offset: 896)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1207, file: !1208, line: 132, baseType: !1232, size: 64, offset: 960)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1207, file: !1208, line: 135, baseType: !66, size: 64, offset: 1024)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1207, file: !1208, line: 137, baseType: !1366, size: 64, offset: 1088)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1368, line: 14, size: 1088, elements: !1369)
!1368 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1369 = !{!1370, !1371, !1380, !1381, !1382, !1383, !1384, !1385}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1367, file: !1368, line: 15, baseType: !1167, size: 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1367, file: !1368, line: 17, baseType: !1372, size: 320, offset: 64)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1373, line: 22, size: 320, elements: !1374)
!1373 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1374 = !{!1375, !1376, !1377, !1378}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1372, file: !1373, line: 23, baseType: !1129, size: 32)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1372, file: !1373, line: 24, baseType: !1121, size: 64, offset: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1372, file: !1373, line: 26, baseType: !143, size: 128, offset: 128)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1372, file: !1373, line: 28, baseType: !1379, size: 64, offset: 256)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1367, file: !1368, line: 19, baseType: !85, size: 64, offset: 384)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1367, file: !1368, line: 20, baseType: !1115, size: 64, offset: 448)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1367, file: !1368, line: 23, baseType: !1180, size: 128, offset: 512)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1367, file: !1368, line: 24, baseType: !791, size: 32, offset: 640)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1367, file: !1368, line: 29, baseType: !1115, size: 64, offset: 704)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1367, file: !1368, line: 36, baseType: !1386, size: 320, offset: 768)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1387, line: 15, size: 320, elements: !1388)
!1387 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1388 = !{!1389, !1390, !1391, !1392, !1393, !1394, !1395}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1386, file: !1387, line: 16, baseType: !1129, size: 32)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1386, file: !1387, line: 18, baseType: !68, size: 32, offset: 32)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1386, file: !1387, line: 19, baseType: !68, size: 32, offset: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1386, file: !1387, line: 20, baseType: !68, size: 32, offset: 96)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1386, file: !1387, line: 21, baseType: !68, size: 32, offset: 128)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1386, file: !1387, line: 22, baseType: !85, size: 64, offset: 192)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1386, file: !1387, line: 23, baseType: !85, size: 64, offset: 256)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1207, file: !1208, line: 138, baseType: !1397, size: 64, offset: 1152)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1399, line: 68, size: 4800, elements: !1400)
!1399 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!1400 = !{!1401, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1440, !1441, !1442, !1443, !1444, !1445, !1457, !1530, !1531, !1545, !1547}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !1398, file: !1399, line: 69, baseType: !1402, size: 576)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !1399, line: 23, size: 576, elements: !1403)
!1403 = !{!1404, !1405}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !1402, file: !1399, line: 24, baseType: !854, size: 32)
!1405 = !DIDerivedType(tag: DW_TAG_member, scope: !1402, file: !1399, line: 25, baseType: !1406, size: 512, offset: 64)
!1406 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1402, file: !1399, line: 25, size: 512, elements: !1407)
!1407 = !{!1408, !1417}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !1406, file: !1399, line: 26, baseType: !1409, size: 480)
!1409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1410, size: 480, elements: !1415)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !1399, line: 17, size: 96, elements: !1411)
!1411 = !{!1412, !1413, !1414}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1410, file: !1399, line: 18, baseType: !854, size: 32)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !1410, file: !1399, line: 19, baseType: !854, size: 32, offset: 32)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1410, file: !1399, line: 20, baseType: !854, size: 32, offset: 64)
!1415 = !{!1416}
!1416 = !DISubrange(count: 5)
!1417 = !DIDerivedType(tag: DW_TAG_member, scope: !1406, file: !1399, line: 27, baseType: !1418, size: 128)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1406, file: !1399, line: 27, size: 128, elements: !1419)
!1419 = !{!1420, !1422}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1418, file: !1399, line: 28, baseType: !1421, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !1418, file: !1399, line: 29, baseType: !1421, size: 64, offset: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !1398, file: !1399, line: 70, baseType: !1402, size: 576, offset: 576)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !1398, file: !1399, line: 71, baseType: !1402, size: 576, offset: 1152)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1398, file: !1399, line: 72, baseType: !1397, size: 64, offset: 1728)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1398, file: !1399, line: 73, baseType: !68, size: 32, offset: 1792)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1398, file: !1399, line: 74, baseType: !791, size: 32, offset: 1824)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1398, file: !1399, line: 75, baseType: !800, size: 32, offset: 1856)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1398, file: !1399, line: 76, baseType: !1430, size: 192, offset: 1920)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1431, line: 9, size: 192, elements: !1432)
!1431 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1432 = !{!1433, !1434, !1438, !1439}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1430, file: !1431, line: 10, baseType: !1115, size: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1430, file: !1431, line: 11, baseType: !1435, size: 64, offset: 64)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1437)
!1437 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1431, line: 7, flags: DIFlagFwdDecl)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1430, file: !1431, line: 12, baseType: !7, size: 32, offset: 128)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1430, file: !1431, line: 13, baseType: !1167, size: 32, offset: 160)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1398, file: !1399, line: 77, baseType: !85, size: 64, offset: 2112)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !1398, file: !1399, line: 80, baseType: !1314, size: 8, offset: 2176)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !1398, file: !1399, line: 88, baseType: !143, size: 128, offset: 2240)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !1398, file: !1399, line: 89, baseType: !1232, size: 64, offset: 2368)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !1398, file: !1399, line: 90, baseType: !1255, size: 320, offset: 2432)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1398, file: !1399, line: 97, baseType: !1446, size: 256, offset: 2752)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1447, line: 98, size: 256, elements: !1448)
!1447 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1448 = !{!1449, !1450, !1451}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1446, file: !1447, line: 99, baseType: !1115, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1446, file: !1447, line: 100, baseType: !143, size: 128, offset: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1446, file: !1447, line: 101, baseType: !1452, size: 64, offset: 192)
!1452 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1447, line: 21, baseType: !1453)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{null, !1456}
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1398, file: !1399, line: 99, baseType: !1458, size: 768, offset: 3008)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !58, line: 199, size: 768, elements: !1459)
!1459 = !{!1460, !1465}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1458, file: !58, line: 200, baseType: !1461, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!68, !1464}
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1458, file: !58, line: 201, baseType: !1466, size: 704, offset: 64)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !58, line: 193, size: 704, elements: !1467)
!1467 = !{!1468, !1526}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1466, file: !58, line: 195, baseType: !1469, size: 640)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !58, line: 173, size: 640, elements: !1470)
!1470 = !{!1471, !1483, !1495, !1496, !1516, !1517, !1519, !1525}
!1471 = !DIDerivedType(tag: DW_TAG_member, scope: !1469, file: !58, line: 174, baseType: !1472, size: 192)
!1472 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1469, file: !58, line: 174, size: 192, elements: !1473)
!1473 = !{!1474, !1482}
!1474 = !DIDerivedType(tag: DW_TAG_member, scope: !1472, file: !58, line: 175, baseType: !1475, size: 192)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1472, file: !58, line: 175, size: 192, elements: !1476)
!1476 = !{!1477, !1478, !1479, !1480, !1481}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1475, file: !58, line: 176, baseType: !79, size: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1475, file: !58, line: 177, baseType: !68, size: 32, offset: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1475, file: !58, line: 178, baseType: !68, size: 32, offset: 96)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1475, file: !58, line: 179, baseType: !68, size: 32, offset: 128)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1475, file: !58, line: 180, baseType: !68, size: 32, offset: 160)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1472, file: !58, line: 182, baseType: !377, size: 128, align: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1469, file: !58, line: 184, baseType: !1484, size: 64, offset: 192)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1486, line: 26, size: 256, elements: !1487)
!1486 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1487 = !{!1488, !1489}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1485, file: !1486, line: 27, baseType: !7, size: 32)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1485, file: !1486, line: 28, baseType: !1490, size: 192, offset: 64)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1491, line: 43, size: 192, elements: !1492)
!1491 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1492 = !{!1493, !1494}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1490, file: !1491, line: 44, baseType: !1129, size: 32)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1490, file: !1491, line: 45, baseType: !143, size: 128, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1469, file: !58, line: 185, baseType: !79, size: 64, offset: 256)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1469, file: !58, line: 186, baseType: !1497, size: 64, offset: 320)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !58, line: 204, size: 960, elements: !1499)
!1499 = !{!1500, !1501, !1505, !1512}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1498, file: !58, line: 205, baseType: !1458, size: 768)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1498, file: !58, line: 206, baseType: !1502, size: 64, offset: 768)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!1464, !1497}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1498, file: !58, line: 207, baseType: !1506, size: 64, offset: 832)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{null, !1509, !1510, !1511}
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1498, file: !58, line: 209, baseType: !1513, size: 64, offset: 896)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!68, !1509, !79}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1469, file: !58, line: 187, baseType: !1464, size: 64, offset: 384)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1469, file: !58, line: 188, baseType: !1518, size: 64, offset: 448)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1469, file: !58, line: 189, baseType: !1520, size: 64, offset: 512)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !58, line: 157, size: 256, elements: !1522)
!1522 = !{!1523, !1524}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1521, file: !58, line: 158, baseType: !1247, size: 192, align: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1521, file: !58, line: 159, baseType: !1509, size: 64, offset: 192)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1469, file: !58, line: 190, baseType: !1176, size: 64, offset: 576)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1466, file: !58, line: 196, baseType: !1527, size: 64, offset: 640)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1248, line: 12, size: 64, elements: !1528)
!1528 = !{!1529}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1527, file: !1248, line: 13, baseType: !1252, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !1398, file: !1399, line: 100, baseType: !1509, size: 64, offset: 3776)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1398, file: !1399, line: 102, baseType: !1532, size: 64, offset: 3840)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1399, line: 107, size: 1152, elements: !1534)
!1534 = !{!1535, !1536, !1537, !1538, !1539, !1543}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1533, file: !1399, line: 108, baseType: !1180, size: 128)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1533, file: !1399, line: 109, baseType: !1397, size: 64, offset: 128)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1533, file: !1399, line: 110, baseType: !791, size: 32, offset: 192)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1533, file: !1399, line: 111, baseType: !95, size: 32, offset: 224)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1533, file: !1399, line: 112, baseType: !1540, size: 640, offset: 256)
!1540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1115, size: 640, elements: !1541)
!1541 = !{!1542}
!1542 = !DISubrange(count: 10)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1533, file: !1399, line: 113, baseType: !1544, size: 256, offset: 896)
!1544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1115, size: 256, elements: !1185)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !1398, file: !1399, line: 103, baseType: !1546, size: 640, offset: 3904)
!1546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 640, elements: !1541)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !1398, file: !1399, line: 104, baseType: !1548, size: 256, offset: 4544)
!1548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 256, elements: !1185)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1207, file: !1208, line: 139, baseType: !1532, size: 64, offset: 1216)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1207, file: !1208, line: 140, baseType: !1551, size: 64, offset: 1280)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1208, line: 25, size: 64, elements: !1553)
!1553 = !{!1554, !1555, !1556}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1552, file: !1208, line: 26, baseType: !95, size: 32)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1552, file: !1208, line: 27, baseType: !68, size: 32, offset: 32)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1552, file: !1208, line: 28, baseType: !1557, offset: 64)
!1557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !800, elements: !1198)
!1558 = !DIDerivedType(tag: DW_TAG_member, scope: !1207, file: !1208, line: 142, baseType: !1559, size: 128, offset: 1344)
!1559 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1207, file: !1208, line: 142, size: 128, elements: !1560)
!1560 = !{!1561, !1562}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1559, file: !1208, line: 143, baseType: !68, size: 32)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1559, file: !1208, line: 144, baseType: !377, size: 128, align: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1098, file: !181, line: 1013, baseType: !1564, size: 256, offset: 960)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !181, line: 970, size: 256, elements: !1565)
!1565 = !{!1566, !1567, !1568, !1569, !1570, !1571}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1564, file: !181, line: 971, baseType: !85, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1564, file: !181, line: 972, baseType: !7, size: 32, offset: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1564, file: !181, line: 973, baseType: !7, size: 32, offset: 96)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1564, file: !181, line: 974, baseType: !7, size: 32, offset: 128)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1564, file: !181, line: 975, baseType: !7, size: 32, offset: 160)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1564, file: !181, line: 976, baseType: !87, size: 64, offset: 192)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1098, file: !181, line: 1014, baseType: !1573, size: 128, offset: 1216)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1574, line: 8, size: 128, elements: !1575)
!1574 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1575 = !{!1576, !1577}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1573, file: !1574, line: 9, baseType: !930, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1573, file: !1574, line: 10, baseType: !820, size: 64, offset: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1098, file: !181, line: 1015, baseType: !785, size: 64, offset: 1344)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1098, file: !181, line: 1016, baseType: !1580, size: 64, offset: 1408)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1582)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !181, line: 1914, size: 2112, elements: !1583)
!1583 = !{!1584, !1585, !1589, !1593, !1597, !1708, !1709, !1715, !1728, !1736, !1740, !1741, !2072, !2073, !2077, !2082, !2083, !2087, !2091, !2097, !2098, !2102, !2103, !2110, !2114, !2118, !2124, !2128, !2170, !2174, !2178, !2179, !2185}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1582, file: !181, line: 1915, baseType: !971, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1582, file: !181, line: 1916, baseType: !1586, size: 64, offset: 64)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!87, !1097, !87, !68}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1582, file: !181, line: 1917, baseType: !1590, size: 64, offset: 128)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!1056, !1097, !300, !81, !86}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1582, file: !181, line: 1918, baseType: !1594, size: 64, offset: 192)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!1056, !1097, !62, !81, !86}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1582, file: !181, line: 1919, baseType: !1598, size: 64, offset: 256)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!1056, !1601, !1706}
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !181, line: 373, size: 384, elements: !1603)
!1603 = !{!1604, !1605, !1606, !1610, !1611, !1612, !1613}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1602, file: !181, line: 374, baseType: !1097, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1602, file: !181, line: 375, baseType: !87, size: 64, offset: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1602, file: !181, line: 376, baseType: !1607, size: 64, offset: 128)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{null, !1601, !304}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1602, file: !181, line: 377, baseType: !66, size: 64, offset: 192)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1602, file: !181, line: 378, baseType: !68, size: 32, offset: 256)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1602, file: !181, line: 379, baseType: !139, size: 16, offset: 288)
!1613 = !DIDerivedType(tag: DW_TAG_member, scope: !1602, file: !181, line: 380, baseType: !1614, size: 64, offset: 320)
!1614 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1602, file: !181, line: 380, size: 64, elements: !1615)
!1615 = !{!1616, !1702}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1614, file: !181, line: 386, baseType: !1617, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1619, line: 998, size: 448, elements: !1620)
!1619 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1620 = !{!1621, !1688, !1689}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !1618, file: !1619, line: 999, baseType: !1622, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !154, line: 293, size: 1536, elements: !1624)
!1624 = !{!1625, !1655, !1669}
!1625 = !DIDerivedType(tag: DW_TAG_member, scope: !1623, file: !154, line: 295, baseType: !1626, size: 512)
!1626 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1623, file: !154, line: 295, size: 512, elements: !1627)
!1627 = !{!1628, !1654}
!1628 = !DIDerivedType(tag: DW_TAG_member, scope: !1626, file: !154, line: 296, baseType: !1629, size: 448)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1626, file: !154, line: 296, size: 448, elements: !1630)
!1630 = !{!1631, !1632, !1641, !1642, !1643, !1652, !1653}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1629, file: !154, line: 298, baseType: !85, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, scope: !1629, file: !154, line: 299, baseType: !1633, size: 128, offset: 64)
!1633 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1629, file: !154, line: 299, size: 128, elements: !1634)
!1634 = !{!1635, !1636}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1633, file: !154, line: 300, baseType: !143, size: 128)
!1636 = !DIDerivedType(tag: DW_TAG_member, scope: !1633, file: !154, line: 302, baseType: !1637, size: 128)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1633, file: !154, line: 302, size: 128, elements: !1638)
!1638 = !{!1639, !1640}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1637, file: !154, line: 303, baseType: !66, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1637, file: !154, line: 305, baseType: !7, size: 32, offset: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1629, file: !154, line: 310, baseType: !781, size: 64, offset: 192)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1629, file: !154, line: 311, baseType: !85, size: 64, offset: 256)
!1643 = !DIDerivedType(tag: DW_TAG_member, scope: !1629, file: !154, line: 312, baseType: !1644, size: 64, offset: 320)
!1644 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1629, file: !154, line: 312, size: 64, elements: !1645)
!1645 = !{!1646, !1647}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1644, file: !154, line: 313, baseType: !66, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1644, file: !154, line: 314, baseType: !1648, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !154, line: 257, baseType: !1649)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !154, line: 255, size: 64, elements: !1650)
!1650 = !{!1651}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1649, file: !154, line: 256, baseType: !85, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1629, file: !154, line: 316, baseType: !95, size: 32, offset: 384)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1629, file: !154, line: 317, baseType: !95, size: 32, offset: 416)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1626, file: !154, line: 323, baseType: !760, size: 512, align: 128)
!1655 = !DIDerivedType(tag: DW_TAG_member, scope: !1623, file: !154, line: 325, baseType: !1656, size: 512, offset: 512)
!1656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1623, file: !154, line: 325, size: 512, elements: !1657)
!1657 = !{!1658, !1668}
!1658 = !DIDerivedType(tag: DW_TAG_member, scope: !1656, file: !154, line: 326, baseType: !1659, size: 320)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1656, file: !154, line: 326, size: 320, elements: !1660)
!1660 = !{!1661, !1662, !1663, !1664, !1665, !1666, !1667}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1659, file: !154, line: 327, baseType: !85, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1659, file: !154, line: 328, baseType: !85, size: 64, offset: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1659, file: !154, line: 329, baseType: !85, size: 64, offset: 128)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1659, file: !154, line: 331, baseType: !95, size: 32, offset: 192)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1659, file: !154, line: 332, baseType: !95, size: 32, offset: 224)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1659, file: !154, line: 333, baseType: !95, size: 32, offset: 256)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1659, file: !154, line: 335, baseType: !7, size: 32, offset: 288)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1656, file: !154, line: 339, baseType: !760, size: 512, align: 128)
!1669 = !DIDerivedType(tag: DW_TAG_member, scope: !1623, file: !154, line: 341, baseType: !1670, size: 512, offset: 1024)
!1670 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1623, file: !154, line: 341, size: 512, elements: !1671)
!1671 = !{!1672, !1681, !1687}
!1672 = !DIDerivedType(tag: DW_TAG_member, scope: !1670, file: !154, line: 342, baseType: !1673, size: 384)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1670, file: !154, line: 342, size: 384, elements: !1674)
!1674 = !{!1675, !1676, !1677, !1678, !1679, !1680}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1673, file: !154, line: 343, baseType: !85, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1673, file: !154, line: 344, baseType: !85, size: 64, offset: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1673, file: !154, line: 346, baseType: !66, size: 64, offset: 128)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1673, file: !154, line: 347, baseType: !66, size: 64, offset: 192)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1673, file: !154, line: 348, baseType: !66, size: 64, offset: 256)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1673, file: !154, line: 349, baseType: !66, size: 64, offset: 320)
!1681 = !DIDerivedType(tag: DW_TAG_member, scope: !1670, file: !154, line: 352, baseType: !1682, size: 256)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1670, file: !154, line: 352, size: 256, elements: !1683)
!1683 = !{!1684, !1685, !1686}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1682, file: !154, line: 353, baseType: !85, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1682, file: !154, line: 354, baseType: !85, size: 64, offset: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1682, file: !154, line: 356, baseType: !143, size: 128, offset: 128)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1670, file: !154, line: 359, baseType: !760, size: 512, align: 128)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1618, file: !1619, line: 1000, baseType: !68, size: 32, offset: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1618, file: !1619, line: 1001, baseType: !1690, size: 320, offset: 128)
!1690 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !101, line: 14, baseType: !1691)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !101, line: 30, size: 320, elements: !1692)
!1692 = !{!1693, !1694, !1695, !1701}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1691, file: !101, line: 31, baseType: !7, size: 32)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1691, file: !101, line: 32, baseType: !66, size: 64, offset: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1691, file: !101, line: 33, baseType: !1696, size: 64, offset: 128)
!1696 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !101, line: 16, baseType: !1697)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!68, !1700, !7, !68, !66}
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1691, file: !101, line: 34, baseType: !143, size: 128, offset: 192)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1614, file: !181, line: 395, baseType: !1703, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!1056, !66}
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !181, line: 69, flags: DIFlagFwdDecl)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1582, file: !181, line: 1920, baseType: !1598, size: 64, offset: 320)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1582, file: !181, line: 1921, baseType: !1710, size: 64, offset: 384)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!68, !1601, !1713, !7}
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !181, line: 53, flags: DIFlagFwdDecl)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1582, file: !181, line: 1923, baseType: !1716, size: 64, offset: 448)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!68, !1097, !1719}
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !181, line: 1858, size: 128, elements: !1721)
!1721 = !{!1722, !1727}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1720, file: !181, line: 1859, baseType: !1723, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !181, line: 1855, baseType: !1724)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!1314, !1719, !62, !68, !87, !858, !7}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1720, file: !181, line: 1860, baseType: !87, size: 64, offset: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1582, file: !181, line: 1924, baseType: !1729, size: 64, offset: 512)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!1732, !1097, !1734}
!1732 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1733, line: 59, baseType: !7)
!1733 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !181, line: 61, flags: DIFlagFwdDecl)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1582, file: !181, line: 1925, baseType: !1737, size: 64, offset: 576)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!304, !1097, !7, !85}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1582, file: !181, line: 1926, baseType: !1737, size: 64, offset: 640)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1582, file: !181, line: 1927, baseType: !1742, size: 64, offset: 704)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!68, !1097, !1745}
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !154, line: 625, size: 1344, elements: !1747)
!1747 = !{!1748, !1757, !1915, !1921, !1928, !1929, !1934, !1935, !1940, !1941, !1957, !2065, !2066, !2067, !2068, !2069, !2070}
!1748 = !DIDerivedType(tag: DW_TAG_member, scope: !1746, file: !154, line: 628, baseType: !1749, size: 128)
!1749 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1746, file: !154, line: 628, size: 128, elements: !1750)
!1750 = !{!1751, !1756}
!1751 = !DIDerivedType(tag: DW_TAG_member, scope: !1749, file: !154, line: 629, baseType: !1752, size: 128)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1749, file: !154, line: 629, size: 128, elements: !1753)
!1753 = !{!1754, !1755}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1752, file: !154, line: 631, baseType: !85, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1752, file: !154, line: 632, baseType: !85, size: 64, offset: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1749, file: !154, line: 635, baseType: !377, size: 128, align: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1746, file: !154, line: 639, baseType: !1758, size: 64, offset: 128)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !154, line: 733, size: 10240, elements: !1760)
!1760 = !{!1761, !1913}
!1761 = !DIDerivedType(tag: DW_TAG_member, scope: !1759, file: !154, line: 734, baseType: !1762, size: 10240)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1759, file: !154, line: 734, size: 10240, elements: !1763)
!1763 = !{!1764, !1768, !1782, !1786, !1787, !1788, !1789, !1790, !1791, !1800, !1801, !1802, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1841, !1843, !1846, !1893, !1894, !1895, !1898, !1899, !1900, !1903, !1904, !1905, !1911, !1912}
!1764 = !DIDerivedType(tag: DW_TAG_member, scope: !1762, file: !154, line: 739, baseType: !1765, size: 512, align: 512)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1762, file: !154, line: 739, size: 512, align: 512, elements: !1766)
!1766 = !{!1767}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1765, file: !154, line: 747, baseType: !95, size: 32)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1762, file: !154, line: 750, baseType: !1769, size: 128, offset: 512)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1770, line: 218, size: 128, elements: !1771)
!1770 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1771 = !{!1772, !1780, !1781}
!1772 = !DIDerivedType(tag: DW_TAG_member, scope: !1769, file: !1770, line: 219, baseType: !1773, size: 32)
!1773 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1769, file: !1770, line: 219, size: 32, elements: !1774)
!1774 = !{!1775, !1776}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1773, file: !1770, line: 220, baseType: !105, size: 32)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1773, file: !1770, line: 221, baseType: !1777)
!1777 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1770, line: 197, baseType: !1778)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1770, line: 197, elements: !1779)
!1779 = !{}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1769, file: !1770, line: 223, baseType: !7, size: 32, offset: 32)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1769, file: !1770, line: 224, baseType: !66, size: 64, offset: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1762, file: !154, line: 752, baseType: !1783, size: 64, offset: 640)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{!85, !1097, !85, !85, !85, !85}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1762, file: !154, line: 756, baseType: !85, size: 64, offset: 704)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1762, file: !154, line: 757, baseType: !85, size: 64, offset: 768)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1762, file: !154, line: 760, baseType: !85, size: 64, offset: 832)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1762, file: !154, line: 761, baseType: !85, size: 64, offset: 896)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1762, file: !154, line: 763, baseType: !85, size: 64, offset: 960)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1762, file: !154, line: 764, baseType: !1792, size: 64, offset: 1024)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1794, line: 299, baseType: !1795)
!1794 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1794, line: 299, size: 64, elements: !1796)
!1796 = !{!1797}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1795, file: !1794, line: 299, baseType: !1798, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1799, line: 18, baseType: !85)
!1799 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1762, file: !154, line: 773, baseType: !95, size: 32, offset: 1088)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1762, file: !154, line: 785, baseType: !95, size: 32, offset: 1120)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1762, file: !154, line: 795, baseType: !1803, size: 64, offset: 1152)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !154, line: 726, size: 128, elements: !1805)
!1805 = !{!1806, !1807}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1804, file: !154, line: 727, baseType: !858, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1804, file: !154, line: 728, baseType: !68, size: 32, offset: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1762, file: !154, line: 801, baseType: !85, size: 64, offset: 1216)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1762, file: !154, line: 804, baseType: !1115, size: 64, offset: 1280)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1762, file: !154, line: 806, baseType: !68, size: 32, offset: 1344)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1762, file: !154, line: 808, baseType: !105, size: 32, offset: 1376)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1762, file: !154, line: 823, baseType: !1255, size: 320, offset: 1408)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1762, file: !154, line: 825, baseType: !143, size: 128, offset: 1728)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1762, file: !154, line: 845, baseType: !68, size: 32, offset: 1856)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1762, file: !154, line: 849, baseType: !85, size: 64, offset: 1920)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1762, file: !154, line: 850, baseType: !85, size: 64, offset: 1984)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1762, file: !154, line: 852, baseType: !85, size: 64, offset: 2048)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1762, file: !154, line: 853, baseType: !85, size: 64, offset: 2112)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1762, file: !154, line: 854, baseType: !1117, size: 64, offset: 2176)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1762, file: !154, line: 855, baseType: !85, size: 64, offset: 2240)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1762, file: !154, line: 856, baseType: !85, size: 64, offset: 2304)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1762, file: !154, line: 857, baseType: !85, size: 64, offset: 2368)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1762, file: !154, line: 858, baseType: !85, size: 64, offset: 2432)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1762, file: !154, line: 865, baseType: !831, size: 32, offset: 2496)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1762, file: !154, line: 867, baseType: !105, size: 32, offset: 2528)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1762, file: !154, line: 869, baseType: !85, size: 64, offset: 2560)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1762, file: !154, line: 869, baseType: !85, size: 64, offset: 2624)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1762, file: !154, line: 869, baseType: !85, size: 64, offset: 2688)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1762, file: !154, line: 869, baseType: !85, size: 64, offset: 2752)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1762, file: !154, line: 870, baseType: !85, size: 64, offset: 2816)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1762, file: !154, line: 870, baseType: !85, size: 64, offset: 2880)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1762, file: !154, line: 870, baseType: !85, size: 64, offset: 2944)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1762, file: !154, line: 871, baseType: !85, size: 64, offset: 3008)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1762, file: !154, line: 871, baseType: !85, size: 64, offset: 3072)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1762, file: !154, line: 871, baseType: !85, size: 64, offset: 3136)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1762, file: !154, line: 871, baseType: !85, size: 64, offset: 3200)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1762, file: !154, line: 873, baseType: !1838, size: 3328, offset: 3264)
!1838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 3328, elements: !1839)
!1839 = !{!1840}
!1840 = !DISubrange(count: 52)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1762, file: !154, line: 875, baseType: !1842, size: 1280, offset: 6592)
!1842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1372, size: 1280, elements: !1185)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1762, file: !154, line: 877, baseType: !1844, size: 64, offset: 7872)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !154, line: 877, flags: DIFlagFwdDecl)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1762, file: !154, line: 880, baseType: !1847, size: 1088, offset: 7936)
!1847 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1848, line: 72, baseType: !1849)
!1848 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1848, line: 23, size: 1088, elements: !1850)
!1850 = !{!1851, !1852, !1853, !1854, !1855, !1858, !1859, !1860, !1861, !1888, !1889, !1890}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1849, file: !1848, line: 28, baseType: !858, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1849, file: !1848, line: 38, baseType: !1117, size: 64, offset: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1849, file: !1848, line: 40, baseType: !85, size: 64, offset: 128)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1849, file: !1848, line: 43, baseType: !1255, size: 320, offset: 192)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1849, file: !1848, line: 44, baseType: !1856, size: 64, offset: 512)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1848, line: 44, flags: DIFlagFwdDecl)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1849, file: !1848, line: 48, baseType: !85, size: 64, offset: 576)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1849, file: !1848, line: 59, baseType: !1124, size: 256, offset: 640)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1849, file: !1848, line: 60, baseType: !66, size: 64, offset: 896)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1849, file: !1848, line: 61, baseType: !1862, size: 64, offset: 960)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1864)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1865, line: 13, size: 1216, elements: !1866)
!1865 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1866 = !{!1867, !1868, !1869, !1870, !1871, !1872, !1873, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1864, file: !1865, line: 14, baseType: !66, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1864, file: !1865, line: 15, baseType: !85, size: 64, offset: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1864, file: !1865, line: 17, baseType: !85, size: 64, offset: 128)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1864, file: !1865, line: 17, baseType: !85, size: 64, offset: 192)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1864, file: !1865, line: 18, baseType: !85, size: 64, offset: 256)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1864, file: !1865, line: 18, baseType: !85, size: 64, offset: 320)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1864, file: !1865, line: 19, baseType: !1874, size: 64, offset: 384)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1864, file: !1865, line: 21, baseType: !304, size: 64, offset: 448)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1864, file: !1865, line: 23, baseType: !304, size: 64, offset: 512)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1864, file: !1865, line: 24, baseType: !304, size: 64, offset: 576)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1864, file: !1865, line: 25, baseType: !304, size: 64, offset: 640)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1864, file: !1865, line: 26, baseType: !304, size: 64, offset: 704)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1864, file: !1865, line: 27, baseType: !304, size: 64, offset: 768)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1864, file: !1865, line: 28, baseType: !304, size: 64, offset: 832)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1864, file: !1865, line: 29, baseType: !304, size: 64, offset: 896)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1864, file: !1865, line: 30, baseType: !304, size: 64, offset: 960)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1864, file: !1865, line: 31, baseType: !304, size: 64, offset: 1024)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1864, file: !1865, line: 32, baseType: !304, size: 64, offset: 1088)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1864, file: !1865, line: 33, baseType: !304, size: 64, offset: 1152)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1849, file: !1848, line: 63, baseType: !95, size: 32, offset: 1024)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1849, file: !1848, line: 69, baseType: !139, size: 16, offset: 1056)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1849, file: !1848, line: 70, baseType: !1891, size: 16, offset: 1072)
!1891 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !130, line: 18, baseType: !1892)
!1892 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !132, line: 23, baseType: !1283)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1762, file: !154, line: 882, baseType: !85, size: 64, offset: 9024)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1762, file: !154, line: 885, baseType: !105, size: 32, offset: 9088)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1762, file: !154, line: 886, baseType: !1896, size: 64, offset: 9152)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !154, line: 732, flags: DIFlagFwdDecl)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1762, file: !154, line: 901, baseType: !1397, size: 64, offset: 9216)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1762, file: !154, line: 904, baseType: !1097, size: 64, offset: 9280)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1762, file: !154, line: 906, baseType: !1901, size: 64, offset: 9344)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !154, line: 906, flags: DIFlagFwdDecl)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1762, file: !154, line: 930, baseType: !95, size: 32, offset: 9408)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1762, file: !154, line: 933, baseType: !95, size: 32, offset: 9440)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1762, file: !154, line: 935, baseType: !1906, size: 64, offset: 9472)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !282, line: 103, size: 64, elements: !1907)
!1907 = !{!1908}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1906, file: !282, line: 104, baseType: !1909, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !282, line: 101, flags: DIFlagFwdDecl)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1762, file: !154, line: 940, baseType: !1115, size: 64, offset: 9536)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1762, file: !154, line: 942, baseType: !1446, size: 256, offset: 9600)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1759, file: !154, line: 986, baseType: !1914, offset: 10240)
!1914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, elements: !1198)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1746, file: !154, line: 640, baseType: !1916, size: 64, offset: 192)
!1916 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1794, line: 297, baseType: !1917)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1794, line: 297, size: 64, elements: !1918)
!1918 = !{!1919}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1917, file: !1794, line: 297, baseType: !1920, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1799, line: 19, baseType: !85)
!1921 = !DIDerivedType(tag: DW_TAG_member, scope: !1746, file: !154, line: 646, baseType: !1922, size: 64, offset: 256)
!1922 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1746, file: !154, line: 646, size: 64, elements: !1923)
!1923 = !{!1924, !1927}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1922, file: !154, line: 647, baseType: !1925, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1926)
!1926 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !154, line: 542, baseType: !85)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1922, file: !154, line: 648, baseType: !1926, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1746, file: !154, line: 666, baseType: !68, size: 32, offset: 320)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1746, file: !154, line: 667, baseType: !1930, size: 64, offset: 384)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !154, line: 579, size: 320, elements: !1932)
!1932 = !{!1933}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1931, file: !154, line: 580, baseType: !1255, size: 320)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1746, file: !154, line: 670, baseType: !1314, size: 8, offset: 448)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1746, file: !154, line: 681, baseType: !1936, size: 256, offset: 512)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1746, file: !154, line: 678, size: 256, elements: !1937)
!1937 = !{!1938, !1939}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1936, file: !154, line: 679, baseType: !1247, size: 192, align: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1936, file: !154, line: 680, baseType: !85, size: 64, offset: 192)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1746, file: !154, line: 689, baseType: !143, size: 128, offset: 768)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1746, file: !154, line: 691, baseType: !1942, size: 64, offset: 896)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1944, line: 31, size: 768, elements: !1945)
!1944 = !DIFile(filename: "./include/linux/rmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "424c17c81581cd4481af59c84df2437d")
!1945 = !{!1946, !1947, !1948, !1949, !1950, !1951, !1952}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1943, file: !1944, line: 32, baseType: !1942, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !1943, file: !1944, line: 33, baseType: !1255, size: 320, offset: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1943, file: !1944, line: 41, baseType: !95, size: 32, offset: 384)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "num_children", scope: !1943, file: !1944, line: 50, baseType: !85, size: 64, offset: 448)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "num_active_vmas", scope: !1943, file: !1944, line: 52, baseType: !85, size: 64, offset: 512)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1943, file: !1944, line: 54, baseType: !1942, size: 64, offset: 576)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1943, file: !1944, line: 66, baseType: !1953, size: 128, offset: 640)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1248, line: 26, size: 128, elements: !1954)
!1954 = !{!1955, !1956}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1953, file: !1248, line: 27, baseType: !1527, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1953, file: !1248, line: 28, baseType: !1252, size: 64, offset: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1746, file: !154, line: 694, baseType: !1958, size: 64, offset: 960)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1960)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1961, line: 563, size: 1024, elements: !1962)
!1961 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1962 = !{!1963, !1967, !1968, !1972, !1976, !1980, !2029, !2033, !2037, !2041, !2042, !2043, !2047, !2051, !2057, !2061}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1960, file: !1961, line: 564, baseType: !1964, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{null, !1745}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1960, file: !1961, line: 569, baseType: !1964, size: 64, offset: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1960, file: !1961, line: 571, baseType: !1969, size: 64, offset: 128)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!68, !1745, !85}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1960, file: !1961, line: 572, baseType: !1973, size: 64, offset: 192)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!68, !1745}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1960, file: !1961, line: 578, baseType: !1977, size: 64, offset: 256)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!68, !1745, !85, !85, !85}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1960, file: !1961, line: 580, baseType: !1981, size: 64, offset: 320)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{!1984, !1985}
!1984 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !154, line: 1184, baseType: !7)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1961, line: 512, size: 896, elements: !1987)
!1987 = !{!1988, !1996, !1997, !2004, !2011, !2021, !2022, !2023, !2025, !2027}
!1988 = !DIDerivedType(tag: DW_TAG_member, scope: !1986, file: !1961, line: 513, baseType: !1989, size: 320)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1986, file: !1961, line: 513, size: 320, elements: !1990)
!1990 = !{!1991, !1992, !1993, !1994, !1995}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1989, file: !1961, line: 514, baseType: !1745, size: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1989, file: !1961, line: 515, baseType: !305, size: 32, offset: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1989, file: !1961, line: 516, baseType: !85, size: 64, offset: 128)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1989, file: !1961, line: 517, baseType: !85, size: 64, offset: 192)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1989, file: !1961, line: 518, baseType: !85, size: 64, offset: 256)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1986, file: !1961, line: 520, baseType: !153, size: 32, offset: 320)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1986, file: !1961, line: 522, baseType: !1998, size: 64, offset: 384)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1799, line: 22, baseType: !2000)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1799, line: 22, size: 64, elements: !2001)
!2001 = !{!2002}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2000, file: !1799, line: 22, baseType: !2003, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1799, line: 15, baseType: !85)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1986, file: !1961, line: 524, baseType: !2005, size: 64, offset: 448)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1794, line: 372, baseType: !2007)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1794, line: 372, size: 64, elements: !2008)
!2008 = !{!2009}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2007, file: !1794, line: 372, baseType: !2010, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1799, line: 16, baseType: !85)
!2011 = !DIDerivedType(tag: DW_TAG_member, scope: !1986, file: !1961, line: 527, baseType: !2012, size: 64, offset: 512)
!2012 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1986, file: !1961, line: 527, size: 64, elements: !2013)
!2013 = !{!2014, !2020}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2012, file: !1961, line: 528, baseType: !2015, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1799, line: 21, baseType: !2016)
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1799, line: 21, size: 64, elements: !2017)
!2017 = !{!2018}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2016, file: !1799, line: 21, baseType: !2019, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1799, line: 14, baseType: !85)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2012, file: !1961, line: 529, baseType: !1999, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1986, file: !1961, line: 534, baseType: !759, size: 64, offset: 576)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1986, file: !1961, line: 535, baseType: !759, size: 64, offset: 640)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1986, file: !1961, line: 541, baseType: !2024, size: 64, offset: 704)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1986, file: !1961, line: 545, baseType: !2026, size: 64, offset: 768)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1986, file: !1961, line: 549, baseType: !2028, size: 64, offset: 832)
!2028 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1794, line: 520, baseType: !759)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1960, file: !1961, line: 581, baseType: !2030, size: 64, offset: 384)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{!1984, !1985, !7}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1960, file: !1961, line: 582, baseType: !2034, size: 64, offset: 448)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!1984, !1985, !85, !85}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1960, file: !1961, line: 584, baseType: !2038, size: 64, offset: 512)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!85, !1745}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1960, file: !1961, line: 588, baseType: !1981, size: 64, offset: 576)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1960, file: !1961, line: 591, baseType: !1981, size: 64, offset: 640)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1960, file: !1961, line: 597, baseType: !2044, size: 64, offset: 704)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!68, !1745, !85, !66, !68, !68}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1960, file: !1961, line: 603, baseType: !2048, size: 64, offset: 768)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DISubroutineType(types: !2050)
!2050 = !{!62, !1745}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1960, file: !1961, line: 613, baseType: !2052, size: 64, offset: 832)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!68, !1745, !2055}
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !154, line: 717, flags: DIFlagFwdDecl)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1960, file: !1961, line: 625, baseType: !2058, size: 64, offset: 896)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!2055, !1745, !85}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1960, file: !1961, line: 633, baseType: !2062, size: 64, offset: 960)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!759, !1745, !85}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1746, file: !154, line: 697, baseType: !85, size: 64, offset: 1024)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1746, file: !154, line: 699, baseType: !1097, size: 64, offset: 1088)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1746, file: !154, line: 700, baseType: !66, size: 64, offset: 1152)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1746, file: !154, line: 711, baseType: !1115, size: 64, offset: 1216)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1746, file: !154, line: 717, baseType: !2055, size: 64, offset: 1280)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1746, file: !154, line: 722, baseType: !2071, offset: 1344)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !154, line: 570, elements: !1779)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1582, file: !181, line: 1928, baseType: !85, size: 64, offset: 768)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1582, file: !181, line: 1929, baseType: !2074, size: 64, offset: 832)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{!68, !785, !1097}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1582, file: !181, line: 1930, baseType: !2078, size: 64, offset: 896)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!68, !1097, !2081}
!2081 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !181, line: 1061, baseType: !66)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1582, file: !181, line: 1931, baseType: !2074, size: 64, offset: 960)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1582, file: !181, line: 1932, baseType: !2084, size: 64, offset: 1024)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!68, !1097, !87, !87, !68}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1582, file: !181, line: 1933, baseType: !2088, size: 64, offset: 1088)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{!68, !68, !1097, !68}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1582, file: !181, line: 1934, baseType: !2092, size: 64, offset: 1152)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!68, !1097, !68, !2095}
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !181, line: 1063, flags: DIFlagFwdDecl)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1582, file: !181, line: 1935, baseType: !1783, size: 64, offset: 1216)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1582, file: !181, line: 1936, baseType: !2099, size: 64, offset: 1280)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!68, !68}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1582, file: !181, line: 1937, baseType: !2092, size: 64, offset: 1344)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1582, file: !181, line: 1938, baseType: !2104, size: 64, offset: 1408)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{!1056, !2107, !1097, !86, !81, !7}
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !2109, line: 59, flags: DIFlagFwdDecl)
!2109 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1582, file: !181, line: 1939, baseType: !2111, size: 64, offset: 1472)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!1056, !1097, !86, !2107, !81, !7}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1582, file: !181, line: 1940, baseType: !2115, size: 64, offset: 1536)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{null, !1097}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1582, file: !181, line: 1941, baseType: !2119, size: 64, offset: 1600)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!68, !1097, !68, !2122, !2123}
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1582, file: !181, line: 1942, baseType: !2125, size: 64, offset: 1664)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!304, !1097, !68, !87, !87}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1582, file: !181, line: 1944, baseType: !2129, size: 64, offset: 1728)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{null, !2132, !1097}
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2134, line: 17, size: 960, elements: !2135)
!2134 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2135 = !{!2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2165, !2166, !2169}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2133, file: !2134, line: 18, baseType: !300, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2133, file: !2134, line: 19, baseType: !81, size: 64, offset: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2133, file: !2134, line: 20, baseType: !81, size: 64, offset: 128)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2133, file: !2134, line: 21, baseType: !81, size: 64, offset: 192)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2133, file: !2134, line: 22, baseType: !81, size: 64, offset: 256)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2133, file: !2134, line: 23, baseType: !87, size: 64, offset: 320)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2133, file: !2134, line: 24, baseType: !87, size: 64, offset: 384)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2133, file: !2134, line: 25, baseType: !1124, size: 256, offset: 448)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2133, file: !2134, line: 26, baseType: !2145, size: 64, offset: 704)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2147)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2134, line: 32, size: 256, elements: !2148)
!2148 = !{!2149, !2153, !2157, !2161}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2147, file: !2134, line: 33, baseType: !2150, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!66, !2132, !86}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2147, file: !2134, line: 34, baseType: !2154, size: 64, offset: 64)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{null, !2132, !66}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2147, file: !2134, line: 35, baseType: !2158, size: 64, offset: 128)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{!66, !2132, !66, !86}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2147, file: !2134, line: 36, baseType: !2162, size: 64, offset: 192)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{!68, !2132, !66}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2133, file: !2134, line: 27, baseType: !68, size: 32, offset: 768)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2133, file: !2134, line: 28, baseType: !2167, size: 64, offset: 832)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1098)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2133, file: !2134, line: 29, baseType: !66, size: 64, offset: 896)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1582, file: !181, line: 1948, baseType: !2171, size: 64, offset: 1792)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{!1056, !1097, !87, !1097, !87, !81, !7}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1582, file: !181, line: 1950, baseType: !2175, size: 64, offset: 1856)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!87, !1097, !87, !1097, !87, !87, !7}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1582, file: !181, line: 1953, baseType: !2084, size: 64, offset: 1920)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1582, file: !181, line: 1954, baseType: !2180, size: 64, offset: 1984)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{!68, !2183, !7}
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !181, line: 1911, flags: DIFlagFwdDecl)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1582, file: !181, line: 1955, baseType: !2186, size: 64, offset: 2048)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{!68, !2183, !1713, !7}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1098, file: !181, line: 1018, baseType: !858, size: 64, offset: 1472)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1098, file: !181, line: 1020, baseType: !66, size: 64, offset: 1536)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1098, file: !181, line: 1023, baseType: !66, size: 64, offset: 1600)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1098, file: !181, line: 1027, baseType: !2193, size: 64, offset: 1664)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1098, file: !181, line: 1029, baseType: !781, size: 64, offset: 1728)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1098, file: !181, line: 1030, baseType: !2196, size: 32, offset: 1792)
!2196 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2197, line: 8, baseType: !854)
!2197 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1098, file: !181, line: 1031, baseType: !2196, size: 32, offset: 1824)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1084, file: !1050, line: 182, baseType: !1094, size: 64, offset: 384)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1084, file: !1050, line: 184, baseType: !2201, size: 64, offset: 448)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DISubroutineType(types: !2203)
!2203 = !{!68, !1097, !990, !1083, !1745}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1072, file: !1050, line: 90, baseType: !2205, size: 64, offset: 192)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1072, file: !1050, line: 91, baseType: !2207, size: 64, offset: 256)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1040, file: !985, line: 120, baseType: !2209, size: 64, offset: 192)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{!2212, !1008}
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2214)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !170, line: 39, size: 384, elements: !2215)
!2215 = !{!2216, !2217, !2221, !2225, !2231, !2235}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2214, file: !170, line: 40, baseType: !169, size: 32)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2214, file: !170, line: 41, baseType: !2218, size: 64, offset: 64)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!1314}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2214, file: !170, line: 42, baseType: !2222, size: 64, offset: 128)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!66}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2214, file: !170, line: 43, baseType: !2226, size: 64, offset: 192)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!1874, !2229}
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !170, line: 19, flags: DIFlagFwdDecl)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2214, file: !170, line: 44, baseType: !2232, size: 64, offset: 256)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!1874}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2214, file: !170, line: 45, baseType: !2236, size: 64, offset: 320)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{null, !66}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1040, file: !985, line: 121, baseType: !2240, size: 64, offset: 256)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{!1874, !1008}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1040, file: !985, line: 122, baseType: !2244, size: 64, offset: 320)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{null, !1008, !1510, !1511}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !984, file: !985, line: 70, baseType: !2248, size: 64, offset: 384)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2250, line: 190, size: 1152, elements: !2251)
!2250 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2251 = !{!2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2331, !2332, !2333, !2334, !2335, !2338}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2249, file: !2250, line: 191, baseType: !95, size: 32)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2249, file: !2250, line: 192, baseType: !95, size: 32, offset: 32)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2249, file: !2250, line: 202, baseType: !2248, size: 64, offset: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2249, file: !2250, line: 203, baseType: !62, size: 64, offset: 128)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2249, file: !2250, line: 205, baseType: !1247, size: 192, align: 64, offset: 192)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2249, file: !2250, line: 207, baseType: !1874, size: 64, offset: 384)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2249, file: !2250, line: 208, baseType: !7, size: 32, offset: 448)
!2259 = !DIDerivedType(tag: DW_TAG_member, scope: !2249, file: !2250, line: 209, baseType: !2260, size: 256, offset: 512)
!2260 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2249, file: !2250, line: 209, size: 256, elements: !2261)
!2261 = !{!2262, !2271, !2275}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2260, file: !2250, line: 210, baseType: !2263, size: 256)
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2250, line: 153, size: 256, elements: !2264)
!2264 = !{!2265, !2266, !2267, !2270}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2263, file: !2250, line: 154, baseType: !85, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2263, file: !2250, line: 156, baseType: !1527, size: 64, offset: 64)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2263, file: !2250, line: 162, baseType: !2268, size: 64, offset: 128)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2250, line: 162, flags: DIFlagFwdDecl)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2263, file: !2250, line: 167, baseType: !85, size: 64, offset: 192)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2260, file: !2250, line: 211, baseType: !2272, size: 64)
!2272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2250, line: 170, size: 64, elements: !2273)
!2273 = !{!2274}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2272, file: !2250, line: 171, baseType: !2248, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2260, file: !2250, line: 212, baseType: !2276, size: 256)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2250, line: 174, size: 256, elements: !2277)
!2277 = !{!2278, !2326, !2329, !2330}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2276, file: !2250, line: 175, baseType: !2279, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2281)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2250, line: 271, size: 768, elements: !2282)
!2282 = !{!2283, !2303, !2307, !2308, !2309, !2310, !2311, !2315, !2316, !2317, !2318, !2322}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2281, file: !2250, line: 276, baseType: !2284, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!68, !2287}
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2250, line: 251, size: 1216, elements: !2289)
!2289 = !{!2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2288, file: !2250, line: 253, baseType: !2248, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2288, file: !2250, line: 254, baseType: !1097, size: 64, offset: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2288, file: !2250, line: 255, baseType: !2132, size: 64, offset: 128)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2288, file: !2250, line: 256, baseType: !66, size: 64, offset: 192)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2288, file: !2250, line: 259, baseType: !1124, size: 256, offset: 256)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2288, file: !2250, line: 260, baseType: !1124, size: 256, offset: 512)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2288, file: !2250, line: 261, baseType: !68, size: 32, offset: 768)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2288, file: !2250, line: 262, baseType: !143, size: 128, offset: 832)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2288, file: !2250, line: 263, baseType: !300, size: 64, offset: 960)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2288, file: !2250, line: 265, baseType: !81, size: 64, offset: 1024)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2288, file: !2250, line: 266, baseType: !1314, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2288, file: !2250, line: 267, baseType: !1314, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2288, file: !2250, line: 268, baseType: !1958, size: 64, offset: 1152)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2281, file: !2250, line: 277, baseType: !2304, size: 64, offset: 64)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{null, !2287}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2281, file: !2250, line: 290, baseType: !2162, size: 64, offset: 128)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2281, file: !2250, line: 292, baseType: !2150, size: 64, offset: 192)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2281, file: !2250, line: 293, baseType: !2158, size: 64, offset: 256)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2281, file: !2250, line: 294, baseType: !2154, size: 64, offset: 320)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2281, file: !2250, line: 296, baseType: !2312, size: 64, offset: 384)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!1056, !2287, !300, !81, !87}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2281, file: !2250, line: 306, baseType: !81, size: 64, offset: 448)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2281, file: !2250, line: 313, baseType: !1314, size: 8, offset: 512)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2281, file: !2250, line: 314, baseType: !2312, size: 64, offset: 576)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2281, file: !2250, line: 317, baseType: !2319, size: 64, offset: 640)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!1732, !2287, !1734}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2281, file: !2250, line: 320, baseType: !2323, size: 64, offset: 704)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!68, !2287, !1745}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2276, file: !2250, line: 176, baseType: !2327, size: 64, offset: 64)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2250, line: 35, flags: DIFlagFwdDecl)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2276, file: !2250, line: 177, baseType: !87, size: 64, offset: 128)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2276, file: !2250, line: 178, baseType: !2248, size: 64, offset: 192)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2249, file: !2250, line: 215, baseType: !66, size: 64, offset: 768)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2249, file: !2250, line: 221, baseType: !858, size: 64, offset: 832)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2249, file: !2250, line: 223, baseType: !72, size: 16, offset: 896)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2249, file: !2250, line: 224, baseType: !70, size: 16, offset: 912)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2249, file: !2250, line: 225, baseType: !2336, size: 64, offset: 960)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2250, line: 36, flags: DIFlagFwdDecl)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2249, file: !2250, line: 227, baseType: !377, size: 128, align: 64, offset: 1024)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !984, file: !985, line: 71, baseType: !2340, size: 32, offset: 448)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2341, line: 19, size: 32, elements: !2342)
!2341 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2342 = !{!2343}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2340, file: !2341, line: 20, baseType: !1167, size: 32)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !984, file: !985, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !984, file: !985, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !984, file: !985, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !984, file: !985, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !984, file: !985, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !981, file: !43, line: 47, baseType: !971, size: 64, offset: 512)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !981, file: !43, line: 48, baseType: !990, size: 64, offset: 576)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !981, file: !43, line: 49, baseType: !2352, size: 64, offset: 640)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !43, line: 49, flags: DIFlagFwdDecl)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !981, file: !43, line: 50, baseType: !1484, size: 64, offset: 704)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !972, file: !43, line: 418, baseType: !2356, size: 64, offset: 1408)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !43, line: 53, size: 448, elements: !2358)
!2358 = !{!2359, !2360, !2365, !2369, !2373, !2377}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2357, file: !43, line: 54, baseType: !1060, size: 128)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2357, file: !43, line: 55, baseType: !2361, size: 64, offset: 128)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!1056, !2356, !2364, !300}
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2357, file: !43, line: 57, baseType: !2366, size: 64, offset: 192)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!1056, !2356, !2364, !62, !81}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2357, file: !43, line: 59, baseType: !2370, size: 64, offset: 256)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{null, !971, !62}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2357, file: !43, line: 60, baseType: !2374, size: 64, offset: 320)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!68, !971}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2357, file: !43, line: 61, baseType: !2378, size: 64, offset: 384)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{null, !971}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !972, file: !43, line: 419, baseType: !62, size: 64, offset: 1472)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !972, file: !43, line: 420, baseType: !62, size: 64, offset: 1536)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !972, file: !43, line: 421, baseType: !990, size: 64, offset: 1600)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !972, file: !43, line: 424, baseType: !2385, size: 64, offset: 1664)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2387)
!2387 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !43, line: 424, flags: DIFlagFwdDecl)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !972, file: !43, line: 425, baseType: !2389, size: 64, offset: 1728)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1240)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !972, file: !43, line: 426, baseType: !7, size: 32, offset: 1792)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !972, file: !43, line: 435, baseType: !1124, size: 256, offset: 1856)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !972, file: !43, line: 437, baseType: !2394, size: 64, offset: 2112)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2396, line: 69, size: 320, elements: !2397)
!2396 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2397 = !{!2398, !2399, !2400, !2417, !2419, !2423, !2424}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2395, file: !2396, line: 70, baseType: !62, size: 64)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2395, file: !2396, line: 71, baseType: !971, size: 64, offset: 64)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2395, file: !2396, line: 72, baseType: !2401, size: 64, offset: 128)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2403)
!2403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2396, line: 47, size: 256, elements: !2404)
!2404 = !{!2405, !2406, !2412, !2416}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2403, file: !2396, line: 49, baseType: !7, size: 32)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2403, file: !2396, line: 51, baseType: !2407, size: 64, offset: 64)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!68, !62, !2410}
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2395)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2403, file: !2396, line: 53, baseType: !2413, size: 64, offset: 128)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!68, !300, !2410}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2403, file: !2396, line: 55, baseType: !2236, size: 64, offset: 192)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2395, file: !2396, line: 73, baseType: !2418, size: 16, offset: 192)
!2418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2395, file: !2396, line: 74, baseType: !2420, size: 8, offset: 208)
!2420 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !130, line: 16, baseType: !2421)
!2421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !132, line: 20, baseType: !2422)
!2422 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2395, file: !2396, line: 75, baseType: !129, size: 8, offset: 216)
!2424 = !DIDerivedType(tag: DW_TAG_member, scope: !2395, file: !2396, line: 76, baseType: !2425, size: 64, offset: 256)
!2425 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2395, file: !2396, line: 76, size: 64, elements: !2426)
!2426 = !{!2427, !2428, !2435}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2425, file: !2396, line: 77, baseType: !66, size: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2425, file: !2396, line: 78, baseType: !2429, size: 64)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2431)
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2396, line: 86, size: 128, elements: !2432)
!2432 = !{!2433, !2434}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2431, file: !2396, line: 87, baseType: !7, size: 32)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2431, file: !2396, line: 88, baseType: !300, size: 64, offset: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2425, file: !2396, line: 79, baseType: !2436, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2438)
!2438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2396, line: 92, size: 256, elements: !2439)
!2439 = !{!2440, !2441, !2442, !2444, !2445}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2438, file: !2396, line: 94, baseType: !7, size: 32)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2438, file: !2396, line: 95, baseType: !7, size: 32, offset: 32)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2438, file: !2396, line: 96, baseType: !2443, size: 64, offset: 64)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2438, file: !2396, line: 97, baseType: !2401, size: 64, offset: 128)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2438, file: !2396, line: 98, baseType: !66, size: 64, offset: 192)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !972, file: !43, line: 438, baseType: !7, size: 32, offset: 2176)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !972, file: !43, line: 441, baseType: !7, size: 32, offset: 2208)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !972, file: !43, line: 442, baseType: !2385, size: 64, offset: 2240)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !972, file: !43, line: 443, baseType: !2389, size: 64, offset: 2304)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !972, file: !43, line: 444, baseType: !1314, size: 8, offset: 2368)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !972, file: !43, line: 451, baseType: !1314, size: 8, offset: 2376)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !972, file: !43, line: 454, baseType: !7, size: 32, offset: 2400)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !972, file: !43, line: 455, baseType: !2454, size: 64, offset: 2432)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2456, line: 23, size: 96, elements: !2457)
!2456 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2457 = !{!2458, !2459, !2460}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2455, file: !2456, line: 24, baseType: !68, size: 32)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2455, file: !2456, line: 24, baseType: !68, size: 32, offset: 32)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2455, file: !2456, line: 24, baseType: !68, size: 32, offset: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !972, file: !43, line: 458, baseType: !2462, size: 64, offset: 2496)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!68}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !972, file: !43, line: 460, baseType: !2466, size: 4032, align: 512, offset: 2560)
!2466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2467, size: 4032, elements: !2483)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !43, line: 362, size: 576, elements: !2468)
!2468 = !{!2469, !2470, !2471}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2467, file: !43, line: 363, baseType: !66, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2467, file: !43, line: 364, baseType: !7, size: 32, offset: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2467, file: !43, line: 367, baseType: !2472, size: 448, offset: 128)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !43, line: 319, size: 448, elements: !2473)
!2473 = !{!2474, !2475}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2472, file: !43, line: 320, baseType: !971, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2472, file: !43, line: 321, baseType: !2476, size: 384, offset: 64)
!2476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2477, line: 40, size: 384, elements: !2478)
!2477 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2478 = !{!2479}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2476, file: !2477, line: 41, baseType: !2480, size: 384, align: 64)
!2480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1247, size: 384, align: 64, elements: !2481)
!2481 = !{!2482}
!2482 = !DISubrange(count: 2)
!2483 = !{!2484}
!2484 = !DISubrange(count: 7)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !972, file: !43, line: 463, baseType: !2486, size: 192, offset: 6592)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2487, line: 8, size: 192, elements: !2488)
!2487 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2488 = !{!2489, !2490, !2492}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2486, file: !2487, line: 10, baseType: !7, size: 32)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2486, file: !2487, line: 11, baseType: !2491, size: 64, offset: 64)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2486, file: !2487, line: 12, baseType: !2493, size: 64, offset: 128)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2495, line: 59, size: 48, elements: !2496)
!2495 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2496 = !{!2497, !2498, !2499, !2500, !2501, !2502}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2494, file: !2495, line: 60, baseType: !1891, size: 16)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2494, file: !2495, line: 61, baseType: !1891, size: 16, offset: 16)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2494, file: !2495, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2494, file: !2495, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2494, file: !2495, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2494, file: !2495, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !972, file: !43, line: 465, baseType: !85, size: 64, offset: 6784)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !972, file: !43, line: 469, baseType: !7, size: 32, offset: 6848)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !972, file: !43, line: 470, baseType: !143, size: 128, offset: 6912)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !972, file: !43, line: 471, baseType: !2507, size: 64, offset: 7040)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2509, line: 33, size: 96, elements: !2510)
!2509 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2510 = !{!2511, !2512, !2513, !2514}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2508, file: !2509, line: 37, baseType: !68, size: 32)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2508, file: !2509, line: 43, baseType: !68, size: 32, offset: 32)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2508, file: !2509, line: 45, baseType: !72, size: 16, offset: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2508, file: !2509, line: 47, baseType: !72, size: 16, offset: 80)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !972, file: !43, line: 476, baseType: !2516, size: 64, offset: 7104)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !43, line: 378, size: 256, elements: !2518)
!2518 = !{!2519, !2535, !2536, !2537}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2517, file: !43, line: 379, baseType: !2520, size: 64)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2522, line: 204, baseType: !2523)
!2522 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2522, line: 197, size: 192, elements: !2524)
!2524 = !{!2525, !2527, !2528, !2529, !2531, !2533}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2523, file: !2522, line: 198, baseType: !2526, size: 32)
!2526 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2522, line: 21, baseType: !855)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2523, file: !2522, line: 199, baseType: !133, size: 8, offset: 32)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2523, file: !2522, line: 200, baseType: !133, size: 8, offset: 40)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2523, file: !2522, line: 201, baseType: !2530, size: 16, offset: 48)
!2530 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2522, line: 17, baseType: !140)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2523, file: !2522, line: 202, baseType: !2532, size: 64, offset: 64)
!2532 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2522, line: 16, baseType: !859)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2523, file: !2522, line: 203, baseType: !2534, size: 64, offset: 128)
!2534 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2522, line: 22, baseType: !859)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2517, file: !43, line: 380, baseType: !7, size: 32, offset: 64)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2517, file: !43, line: 381, baseType: !300, size: 64, offset: 128)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2517, file: !43, line: 382, baseType: !300, size: 64, offset: 192)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !972, file: !43, line: 477, baseType: !2517, size: 256, offset: 7168)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !972, file: !43, line: 480, baseType: !2540, size: 64, offset: 7424)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !43, line: 480, flags: DIFlagFwdDecl)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !972, file: !43, line: 483, baseType: !2543, size: 64, offset: 7488)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !43, line: 483, flags: DIFlagFwdDecl)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !972, file: !43, line: 488, baseType: !300, size: 64, offset: 7552)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !972, file: !43, line: 492, baseType: !66, size: 64, offset: 7616)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !972, file: !43, line: 493, baseType: !7, size: 32, offset: 7680)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !972, file: !43, line: 495, baseType: !66, size: 64, offset: 7744)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !972, file: !43, line: 496, baseType: !7, size: 32, offset: 7808)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !972, file: !43, line: 499, baseType: !7, size: 32, offset: 7840)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !972, file: !43, line: 500, baseType: !2552, size: 64, offset: 7872)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2554, line: 45, baseType: !2555)
!2554 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !972, file: !43, line: 503, baseType: !7, size: 32, offset: 7936)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !972, file: !43, line: 504, baseType: !2558, size: 64, offset: 8000)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2561, line: 96, size: 192, elements: !2562)
!2561 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2562 = !{!2563, !2564, !2617, !2620}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2560, file: !2561, line: 97, baseType: !7, size: 32)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2560, file: !2561, line: 98, baseType: !2565, size: 64, offset: 64)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2561, line: 24, size: 3072, elements: !2567)
!2567 = !{!2568, !2570, !2571, !2572, !2573, !2586, !2587, !2588, !2589, !2601, !2602, !2603, !2614, !2615, !2616}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2566, file: !2561, line: 26, baseType: !2569, size: 128)
!2569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1115, size: 128, elements: !2481)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2566, file: !2561, line: 27, baseType: !2569, size: 128, offset: 128)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2566, file: !2561, line: 28, baseType: !68, size: 32, offset: 256)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2566, file: !2561, line: 31, baseType: !105, size: 32, align: 512, offset: 512)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2566, file: !2561, line: 32, baseType: !2574, size: 960, offset: 576)
!2574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2575, line: 206, size: 960, elements: !2576)
!2575 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2576 = !{!2577, !2578, !2581, !2583, !2584, !2585}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2574, file: !2575, line: 207, baseType: !380, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2574, file: !2575, line: 208, baseType: !2579, size: 256, offset: 64)
!2579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2580, size: 256, elements: !1185)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2574, file: !2575, line: 209, baseType: !2582, size: 256, offset: 320)
!2582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 256, elements: !1185)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2574, file: !2575, line: 213, baseType: !304, size: 64, offset: 576)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2574, file: !2575, line: 215, baseType: !1548, size: 256, offset: 640)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2574, file: !2575, line: 216, baseType: !129, size: 8, offset: 896)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2566, file: !2561, line: 33, baseType: !85, size: 64, offset: 1536)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2566, file: !2561, line: 34, baseType: !85, size: 64, offset: 1600)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2566, file: !2561, line: 35, baseType: !1314, size: 8, offset: 1664)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2566, file: !2561, line: 36, baseType: !2590, size: 320, offset: 1728)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2591, line: 11, size: 320, elements: !2592)
!2591 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2592 = !{!2593, !2594, !2595, !2600}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2590, file: !2591, line: 16, baseType: !1180, size: 128)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2590, file: !2591, line: 17, baseType: !85, size: 64, offset: 128)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2590, file: !2591, line: 18, baseType: !2596, size: 64, offset: 192)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{null, !2599}
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2590, file: !2591, line: 19, baseType: !854, size: 32, offset: 256)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2566, file: !2561, line: 37, baseType: !1446, size: 256, offset: 2048)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2566, file: !2561, line: 38, baseType: !377, size: 128, align: 64, offset: 2304)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2566, file: !2561, line: 39, baseType: !2604, size: 64, offset: 2432)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2561, line: 49, size: 768, elements: !2606)
!2606 = !{!2607, !2608, !2609, !2610, !2611, !2612, !2613}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2605, file: !2561, line: 50, baseType: !105, size: 32)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2605, file: !2561, line: 51, baseType: !2582, size: 256, offset: 64)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2605, file: !2561, line: 53, baseType: !2582, size: 256, offset: 320)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2605, file: !2561, line: 54, baseType: !85, size: 64, offset: 576)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2605, file: !2561, line: 55, baseType: !2604, size: 64, offset: 640)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2605, file: !2561, line: 56, baseType: !68, size: 32, offset: 704)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2605, file: !2561, line: 57, baseType: !68, size: 32, offset: 736)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2566, file: !2561, line: 40, baseType: !85, size: 64, offset: 2496)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2566, file: !2561, line: 42, baseType: !68, size: 32, offset: 2560)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2566, file: !2561, line: 43, baseType: !2559, size: 64, offset: 2624)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2560, file: !2561, line: 99, baseType: !2618, offset: 128)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2619, line: 211, elements: !1779)
!2619 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2560, file: !2561, line: 100, baseType: !2621, size: 64, offset: 128)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2561, line: 63, size: 3008, elements: !2623)
!2623 = !{!2624, !2625, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2655}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2622, file: !2561, line: 64, baseType: !2604, size: 64)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2622, file: !2561, line: 65, baseType: !2626, size: 192, offset: 64)
!2626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2604, size: 192, elements: !1025)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2622, file: !2561, line: 67, baseType: !68, size: 32, offset: 256)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2622, file: !2561, line: 68, baseType: !1124, size: 256, offset: 320)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2622, file: !2561, line: 69, baseType: !105, size: 32, offset: 576)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2622, file: !2561, line: 70, baseType: !1124, size: 256, offset: 640)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2622, file: !2561, line: 71, baseType: !85, size: 64, offset: 896)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2622, file: !2561, line: 72, baseType: !85, size: 64, offset: 960)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2622, file: !2561, line: 73, baseType: !85, size: 64, offset: 1024)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2622, file: !2561, line: 74, baseType: !85, size: 64, offset: 1088)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2622, file: !2561, line: 75, baseType: !85, size: 64, offset: 1152)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2622, file: !2561, line: 76, baseType: !85, size: 64, offset: 1216)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2622, file: !2561, line: 77, baseType: !85, size: 64, offset: 1280)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2622, file: !2561, line: 78, baseType: !85, size: 64, offset: 1344)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2622, file: !2561, line: 79, baseType: !1314, size: 8, offset: 1408)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2622, file: !2561, line: 80, baseType: !85, size: 64, offset: 1472)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2622, file: !2561, line: 81, baseType: !1124, size: 256, offset: 1536)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2622, file: !2561, line: 82, baseType: !1485, size: 256, offset: 1792)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2622, file: !2561, line: 84, baseType: !95, size: 32, offset: 2048)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2622, file: !2561, line: 87, baseType: !85, size: 64, offset: 2112)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2622, file: !2561, line: 88, baseType: !85, size: 64, offset: 2176)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2622, file: !2561, line: 89, baseType: !2647, size: 704, offset: 2240)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1447, line: 111, size: 704, elements: !2648)
!2648 = !{!2649, !2650, !2651, !2654}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2647, file: !1447, line: 112, baseType: !1446, size: 256)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2647, file: !1447, line: 113, baseType: !2590, size: 320, offset: 256)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2647, file: !1447, line: 116, baseType: !2652, size: 64, offset: 576)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1447, line: 18, flags: DIFlagFwdDecl)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2647, file: !1447, line: 117, baseType: !68, size: 32, offset: 640)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2622, file: !2561, line: 90, baseType: !2559, size: 64, offset: 2944)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !972, file: !43, line: 515, baseType: !2657, size: 64, offset: 8064)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2659, line: 117, size: 128, elements: !2660)
!2659 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2660 = !{!2661, !2662, !2663}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2658, file: !2659, line: 118, baseType: !1240, size: 32)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2658, file: !2659, line: 119, baseType: !1240, size: 32, offset: 32)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2658, file: !2659, line: 120, baseType: !304, size: 64, offset: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !972, file: !43, line: 516, baseType: !7, size: 32, offset: 8128)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !972, file: !43, line: 519, baseType: !7, size: 32, offset: 8160)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !972, file: !43, line: 520, baseType: !2667, size: 64, offset: 8192)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !972, file: !43, line: 523, baseType: !2669, size: 64, offset: 8256)
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !43, line: 523, flags: DIFlagFwdDecl)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !972, file: !43, line: 524, baseType: !7, size: 32, offset: 8320)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !972, file: !43, line: 525, baseType: !2674, size: 64, offset: 8384)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !43, line: 525, flags: DIFlagFwdDecl)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !972, file: !43, line: 526, baseType: !7, size: 32, offset: 8448)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !972, file: !43, line: 533, baseType: !66, size: 64, offset: 8512)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !972, file: !43, line: 534, baseType: !7, size: 32, offset: 8576)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !972, file: !43, line: 535, baseType: !301, size: 64, offset: 8640)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !972, file: !43, line: 536, baseType: !7, size: 32, offset: 8704)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !972, file: !43, line: 539, baseType: !68, size: 32, offset: 8736)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !972, file: !43, line: 540, baseType: !2684, size: 64, offset: 8768)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2686, line: 32, size: 64, elements: !2687)
!2686 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2687 = !{!2688, !2689}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2685, file: !2686, line: 33, baseType: !1240, size: 32)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2685, file: !2686, line: 34, baseType: !1240, size: 32, offset: 32)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !972, file: !43, line: 563, baseType: !143, size: 128, offset: 8832)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !972, file: !43, line: 565, baseType: !143, size: 128, offset: 8960)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !972, file: !43, line: 568, baseType: !2693, size: 64, offset: 9088)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !972, file: !43, line: 570, baseType: !95, size: 32, offset: 9152)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !948, file: !181, line: 2382, baseType: !947, size: 64, offset: 448)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !948, file: !181, line: 2383, baseType: !1176, size: 64, offset: 512)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !948, file: !181, line: 2385, baseType: !2698, offset: 576)
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2619, line: 206, elements: !1779)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !948, file: !181, line: 2386, baseType: !2698, offset: 576)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !948, file: !181, line: 2387, baseType: !2698, offset: 576)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !948, file: !181, line: 2388, baseType: !2702, offset: 576)
!2702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2698, elements: !1025)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !948, file: !181, line: 2390, baseType: !2698, offset: 576)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !948, file: !181, line: 2391, baseType: !2698, offset: 576)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !948, file: !181, line: 2392, baseType: !2698, offset: 576)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !948, file: !181, line: 2393, baseType: !2698, offset: 576)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !937, file: !181, line: 1197, baseType: !2708, size: 64, offset: 384)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2710)
!2710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !181, line: 2057, size: 1664, elements: !2711)
!2711 = !{!2712, !2716, !2720, !2721, !2725, !2749, !2753, !2754, !2755, !2759, !2763, !2767, !2768, !2769, !2775, !2779, !2780, !2784, !2785, !2786, !2787, !2791, !2795, !2842, !2857, !2858}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2710, file: !181, line: 2058, baseType: !2713, size: 64)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!785, !936}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2710, file: !181, line: 2059, baseType: !2717, size: 64, offset: 64)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{null, !785}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2710, file: !181, line: 2060, baseType: !2717, size: 64, offset: 128)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2710, file: !181, line: 2062, baseType: !2722, size: 64, offset: 192)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{null, !785, !68}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2710, file: !181, line: 2063, baseType: !2726, size: 64, offset: 256)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!68, !785, !2729}
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !176, line: 42, size: 384, elements: !2731)
!2731 = !{!2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !2730, file: !176, line: 43, baseType: !304, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !2730, file: !176, line: 45, baseType: !304, size: 64, offset: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !2730, file: !176, line: 52, baseType: !87, size: 64, offset: 128)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !2730, file: !176, line: 53, baseType: !87, size: 64, offset: 192)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !2730, file: !176, line: 55, baseType: !175, size: 32, offset: 256)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !2730, file: !176, line: 57, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !2730, file: !176, line: 58, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !2730, file: !176, line: 59, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !2730, file: !176, line: 60, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !2730, file: !176, line: 61, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !2730, file: !176, line: 62, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !2730, file: !176, line: 63, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !2730, file: !176, line: 71, baseType: !7, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !2730, file: !176, line: 78, baseType: !2746, size: 64, offset: 320)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !176, line: 78, flags: DIFlagFwdDecl)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2710, file: !181, line: 2064, baseType: !2750, size: 64, offset: 320)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{!68, !785}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2710, file: !181, line: 2065, baseType: !2717, size: 64, offset: 384)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2710, file: !181, line: 2066, baseType: !967, size: 64, offset: 448)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2710, file: !181, line: 2067, baseType: !2756, size: 64, offset: 512)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DISubroutineType(types: !2758)
!2758 = !{!68, !936, !68}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2710, file: !181, line: 2068, baseType: !2760, size: 64, offset: 576)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!68, !936, !180}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2710, file: !181, line: 2069, baseType: !2764, size: 64, offset: 640)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2765 = !DISubroutineType(types: !2766)
!2766 = !{!68, !936}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2710, file: !181, line: 2070, baseType: !2760, size: 64, offset: 704)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2710, file: !181, line: 2071, baseType: !2764, size: 64, offset: 768)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2710, file: !181, line: 2072, baseType: !2770, size: 64, offset: 832)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{!68, !820, !2773}
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !181, line: 62, flags: DIFlagFwdDecl)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2710, file: !181, line: 2073, baseType: !2776, size: 64, offset: 896)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{!68, !936, !2491, !300}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2710, file: !181, line: 2074, baseType: !967, size: 64, offset: 960)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2710, file: !181, line: 2076, baseType: !2781, size: 64, offset: 1024)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!68, !2132, !820}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2710, file: !181, line: 2077, baseType: !2781, size: 64, offset: 1088)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2710, file: !181, line: 2078, baseType: !2781, size: 64, offset: 1152)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2710, file: !181, line: 2079, baseType: !2781, size: 64, offset: 1216)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2710, file: !181, line: 2081, baseType: !2788, size: 64, offset: 1280)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{!1056, !936, !68, !300, !81, !87}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2710, file: !181, line: 2082, baseType: !2792, size: 64, offset: 1344)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!1056, !936, !68, !62, !81, !87}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2710, file: !181, line: 2083, baseType: !2796, size: 64, offset: 1408)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!2799, !785}
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !186, line: 296, size: 1664, elements: !2802)
!2802 = !{!2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2827, !2828, !2829}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2801, file: !186, line: 297, baseType: !1180, size: 128)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2801, file: !186, line: 298, baseType: !143, size: 128, offset: 128)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2801, file: !186, line: 299, baseType: !143, size: 128, offset: 256)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2801, file: !186, line: 300, baseType: !143, size: 128, offset: 384)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2801, file: !186, line: 301, baseType: !1124, size: 256, offset: 512)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2801, file: !186, line: 302, baseType: !105, size: 32, offset: 768)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2801, file: !186, line: 303, baseType: !95, size: 32, offset: 800)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2801, file: !186, line: 304, baseType: !936, size: 64, offset: 832)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2801, file: !186, line: 305, baseType: !2812, size: 64, offset: 896)
!2812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !186, line: 68, size: 64, elements: !2813)
!2813 = !{!2814, !2826}
!2814 = !DIDerivedType(tag: DW_TAG_member, scope: !2812, file: !186, line: 69, baseType: !2815, size: 32)
!2815 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2812, file: !186, line: 69, size: 32, elements: !2816)
!2816 = !{!2817, !2818, !2819}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2815, file: !186, line: 70, baseType: !791, size: 32)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2815, file: !186, line: 71, baseType: !800, size: 32)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2815, file: !186, line: 72, baseType: !2820, size: 32)
!2820 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2821, line: 24, baseType: !2822)
!2821 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2822 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2821, line: 22, size: 32, elements: !2823)
!2823 = !{!2824}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2822, file: !2821, line: 23, baseType: !2825, size: 32)
!2825 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2821, line: 20, baseType: !797)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2812, file: !186, line: 74, baseType: !185, size: 32, offset: 32)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2801, file: !186, line: 306, baseType: !87, size: 64, offset: 960)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2801, file: !186, line: 307, baseType: !85, size: 64, offset: 1024)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2801, file: !186, line: 308, baseType: !2830, size: 576, offset: 1088)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !186, line: 205, size: 576, elements: !2831)
!2831 = !{!2832, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2830, file: !186, line: 206, baseType: !2833, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !186, line: 66, baseType: !89)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2830, file: !186, line: 207, baseType: !2833, size: 64, offset: 64)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2830, file: !186, line: 208, baseType: !2833, size: 64, offset: 128)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2830, file: !186, line: 209, baseType: !2833, size: 64, offset: 192)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2830, file: !186, line: 210, baseType: !2833, size: 64, offset: 256)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2830, file: !186, line: 211, baseType: !2833, size: 64, offset: 320)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2830, file: !186, line: 212, baseType: !2833, size: 64, offset: 384)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2830, file: !186, line: 213, baseType: !1271, size: 64, offset: 448)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2830, file: !186, line: 214, baseType: !1271, size: 64, offset: 512)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2710, file: !181, line: 2085, baseType: !2843, size: 64, offset: 1472)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{!304, !936, !2846}
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2848, line: 15, size: 256, elements: !2849)
!2848 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2849 = !{!2850, !2851, !2852, !2853, !2854}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2847, file: !2848, line: 16, baseType: !305, size: 32)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2847, file: !2848, line: 19, baseType: !68, size: 32, offset: 32)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2847, file: !2848, line: 26, baseType: !85, size: 64, offset: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2847, file: !2848, line: 33, baseType: !85, size: 64, offset: 128)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2847, file: !2848, line: 36, baseType: !2855, size: 64, offset: 192)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !154, line: 33, flags: DIFlagFwdDecl)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2710, file: !181, line: 2087, baseType: !2843, size: 64, offset: 1536)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2710, file: !181, line: 2089, baseType: !967, size: 64, offset: 1600)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !937, file: !181, line: 1198, baseType: !2860, size: 64, offset: 448)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2862)
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !186, line: 324, size: 704, elements: !2863)
!2863 = !{!2864, !2868, !2872, !2876, !2877, !2878, !2879, !2880, !2885, !2890, !2894}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2862, file: !186, line: 325, baseType: !2865, size: 64)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{!68, !2800}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2862, file: !186, line: 326, baseType: !2869, size: 64, offset: 64)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{!2800, !936, !68}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2862, file: !186, line: 327, baseType: !2873, size: 64, offset: 128)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{null, !2800}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2862, file: !186, line: 328, baseType: !2865, size: 64, offset: 192)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2862, file: !186, line: 329, baseType: !2865, size: 64, offset: 256)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2862, file: !186, line: 330, baseType: !2865, size: 64, offset: 320)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2862, file: !186, line: 331, baseType: !2756, size: 64, offset: 384)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2862, file: !186, line: 334, baseType: !2881, size: 64, offset: 448)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!2884, !785}
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2862, file: !186, line: 335, baseType: !2886, size: 64, offset: 512)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!68, !785, !2889}
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2862, file: !186, line: 337, baseType: !2891, size: 64, offset: 576)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{!68, !785, !2884}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2862, file: !186, line: 339, baseType: !2895, size: 64, offset: 640)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{!68, !936, !2898}
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !937, file: !181, line: 1199, baseType: !2900, size: 64, offset: 512)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2902)
!2902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !186, line: 430, size: 704, elements: !2903)
!2903 = !{!2904, !2910, !2911, !2915, !2916, !2917, !2932, !2955, !2959, !2960, !2983}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2902, file: !186, line: 431, baseType: !2905, size: 64)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{!68, !936, !68, !68, !2908}
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1573)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2902, file: !186, line: 432, baseType: !2756, size: 64, offset: 64)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2902, file: !186, line: 433, baseType: !2912, size: 64, offset: 128)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!68, !936, !7}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2902, file: !186, line: 434, baseType: !2912, size: 64, offset: 192)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2902, file: !186, line: 435, baseType: !2756, size: 64, offset: 256)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2902, file: !186, line: 436, baseType: !2918, size: 64, offset: 320)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{!68, !936, !68, !2921}
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !186, line: 417, size: 256, elements: !2923)
!2923 = !{!2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2922, file: !186, line: 418, baseType: !68, size: 32)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2922, file: !186, line: 419, baseType: !7, size: 32, offset: 32)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2922, file: !186, line: 420, baseType: !7, size: 32, offset: 64)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2922, file: !186, line: 422, baseType: !7, size: 32, offset: 96)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2922, file: !186, line: 423, baseType: !7, size: 32, offset: 128)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2922, file: !186, line: 424, baseType: !7, size: 32, offset: 160)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2922, file: !186, line: 425, baseType: !7, size: 32, offset: 192)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2922, file: !186, line: 426, baseType: !7, size: 32, offset: 224)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2902, file: !186, line: 437, baseType: !2933, size: 64, offset: 384)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{!68, !936, !2812, !2936}
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !186, line: 345, size: 960, elements: !2938)
!2938 = !{!2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2937, file: !186, line: 346, baseType: !68, size: 32)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2937, file: !186, line: 347, baseType: !858, size: 64, offset: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2937, file: !186, line: 348, baseType: !858, size: 64, offset: 128)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2937, file: !186, line: 349, baseType: !858, size: 64, offset: 192)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2937, file: !186, line: 350, baseType: !858, size: 64, offset: 256)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2937, file: !186, line: 351, baseType: !858, size: 64, offset: 320)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2937, file: !186, line: 352, baseType: !858, size: 64, offset: 384)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2937, file: !186, line: 353, baseType: !1121, size: 64, offset: 448)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2937, file: !186, line: 355, baseType: !1121, size: 64, offset: 512)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2937, file: !186, line: 356, baseType: !68, size: 32, offset: 576)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2937, file: !186, line: 357, baseType: !68, size: 32, offset: 608)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2937, file: !186, line: 358, baseType: !858, size: 64, offset: 640)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2937, file: !186, line: 359, baseType: !858, size: 64, offset: 704)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2937, file: !186, line: 360, baseType: !858, size: 64, offset: 768)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2937, file: !186, line: 361, baseType: !1121, size: 64, offset: 832)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2937, file: !186, line: 362, baseType: !68, size: 32, offset: 896)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2902, file: !186, line: 438, baseType: !2956, size: 64, offset: 448)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!68, !936, !2898, !2936}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2902, file: !186, line: 440, baseType: !2933, size: 64, offset: 512)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2902, file: !186, line: 441, baseType: !2961, size: 64, offset: 576)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{!68, !936, !2964}
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !186, line: 411, size: 1408, elements: !2966)
!2966 = !{!2967, !2968}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2965, file: !186, line: 412, baseType: !7, size: 32)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2965, file: !186, line: 413, baseType: !2969, size: 1344, offset: 64)
!2969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2970, size: 1344, elements: !1025)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !186, line: 397, size: 448, elements: !2971)
!2971 = !{!2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2982}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2970, file: !186, line: 398, baseType: !7, size: 32)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2970, file: !186, line: 399, baseType: !7, size: 32, offset: 32)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2970, file: !186, line: 401, baseType: !7, size: 32, offset: 64)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2970, file: !186, line: 402, baseType: !7, size: 32, offset: 96)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2970, file: !186, line: 403, baseType: !7, size: 32, offset: 128)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2970, file: !186, line: 404, baseType: !7, size: 32, offset: 160)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2970, file: !186, line: 405, baseType: !7, size: 32, offset: 192)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2970, file: !186, line: 406, baseType: !860, size: 64, offset: 256)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2970, file: !186, line: 407, baseType: !2981, size: 64, offset: 320)
!2981 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !71, line: 132, baseType: !858)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2970, file: !186, line: 408, baseType: !2981, size: 64, offset: 384)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2902, file: !186, line: 442, baseType: !2912, size: 64, offset: 640)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !937, file: !181, line: 1200, baseType: !2985, size: 64, offset: 576)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2987)
!2987 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !181, line: 54, flags: DIFlagFwdDecl)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !937, file: !181, line: 1201, baseType: !85, size: 64, offset: 640)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !937, file: !181, line: 1202, baseType: !85, size: 64, offset: 704)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !937, file: !181, line: 1203, baseType: !85, size: 64, offset: 768)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !937, file: !181, line: 1204, baseType: !820, size: 64, offset: 832)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !937, file: !181, line: 1205, baseType: !1255, size: 320, offset: 896)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !937, file: !181, line: 1206, baseType: !68, size: 32, offset: 1216)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !937, file: !181, line: 1207, baseType: !95, size: 32, offset: 1248)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !937, file: !181, line: 1209, baseType: !66, size: 64, offset: 1280)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !937, file: !181, line: 1211, baseType: !2997, size: 64, offset: 1344)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3000)
!3000 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !181, line: 1211, flags: DIFlagFwdDecl)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !937, file: !181, line: 1223, baseType: !3002, size: 64, offset: 1408)
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !837, line: 34, size: 64, elements: !3003)
!3003 = !{!3004}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3002, file: !837, line: 35, baseType: !840, size: 64)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !937, file: !181, line: 1224, baseType: !143, size: 128, offset: 1472)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !937, file: !181, line: 1225, baseType: !3007, size: 64, offset: 1600)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !3009, line: 40, size: 7424, elements: !3010)
!3009 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!3010 = !{!3011, !3013, !3014, !3017, !3021, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3048, !3049}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !3008, file: !3009, line: 41, baseType: !3012, size: 64)
!3012 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !71, line: 131, baseType: !858)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !3008, file: !3009, line: 42, baseType: !3012, size: 64, offset: 64)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !3008, file: !3009, line: 43, baseType: !3015, size: 64, offset: 128)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !2109, line: 1453, flags: DIFlagFwdDecl)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !3008, file: !3009, line: 44, baseType: !3018, size: 64, offset: 192)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !3020, line: 74, flags: DIFlagFwdDecl)
!3020 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !3008, file: !3009, line: 45, baseType: !3022, size: 64, offset: 256)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !3009, line: 45, flags: DIFlagFwdDecl)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !3008, file: !3009, line: 46, baseType: !85, size: 64, offset: 320)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !3008, file: !3009, line: 47, baseType: !1314, size: 8, offset: 384)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !3008, file: !3009, line: 48, baseType: !129, size: 8, offset: 392)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !3008, file: !3009, line: 49, baseType: !1314, size: 8, offset: 400)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !3008, file: !3009, line: 50, baseType: !1314, size: 8, offset: 408)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !3008, file: !3009, line: 51, baseType: !941, size: 32, offset: 416)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !3008, file: !3009, line: 52, baseType: !95, size: 32, offset: 448)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !3008, file: !3009, line: 53, baseType: !105, size: 32, offset: 480)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !3008, file: !3009, line: 54, baseType: !785, size: 64, offset: 512)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !3008, file: !3009, line: 55, baseType: !66, size: 64, offset: 576)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !3008, file: !3009, line: 56, baseType: !66, size: 64, offset: 640)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !3008, file: !3009, line: 57, baseType: !3036, size: 64, offset: 704)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3038)
!3038 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !3009, line: 57, flags: DIFlagFwdDecl)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !3008, file: !3009, line: 58, baseType: !1124, size: 256, offset: 768)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !3008, file: !3009, line: 60, baseType: !68, size: 32, offset: 1024)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !3008, file: !3009, line: 61, baseType: !68, size: 32, offset: 1056)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !3008, file: !3009, line: 62, baseType: !990, size: 64, offset: 1088)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !3008, file: !3009, line: 65, baseType: !1124, size: 256, offset: 1152)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !3008, file: !3009, line: 66, baseType: !936, size: 64, offset: 1408)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !3008, file: !3009, line: 68, baseType: !3046, size: 64, offset: 1472)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !3009, line: 68, flags: DIFlagFwdDecl)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !3008, file: !3009, line: 72, baseType: !1314, size: 8, offset: 1536)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !3008, file: !3009, line: 77, baseType: !3050, size: 5824, offset: 1600)
!3050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !198, line: 705, size: 5824, elements: !3051)
!3051 = !{!3052, !3053, !3055, !3058, !3059, !3112, !3182, !3183, !3184, !3185, !3186, !3193, !3353, !3366, !3376, !3380, !3382, !3383, !3384, !3388, !3395, !3396, !3399, !3402, !3406, !3510, !3511, !3512, !3513, !3514, !3515, !3545, !3546, !3547, !3550, !3553, !3562, !3563, !3564, !3565, !3566, !3567}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3050, file: !198, line: 706, baseType: !984, size: 512)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3050, file: !198, line: 707, baseType: !3054, size: 64, offset: 512)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3050, file: !198, line: 709, baseType: !3056, size: 64, offset: 576)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !198, line: 37, flags: DIFlagFwdDecl)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3050, file: !198, line: 711, baseType: !62, size: 64, offset: 640)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3050, file: !198, line: 712, baseType: !3060, size: 64, offset: 704)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3062)
!3062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !198, line: 89, size: 384, elements: !3063)
!3063 = !{!3064, !3065, !3066, !3072, !3077, !3081}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3062, file: !198, line: 90, baseType: !62, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3062, file: !198, line: 91, baseType: !1069, size: 64, offset: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3062, file: !198, line: 92, baseType: !3067, size: 64, offset: 128)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!68, !3070, !1020}
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3050)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3062, file: !198, line: 93, baseType: !3073, size: 64, offset: 192)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{!300, !3070, !3076, !1510, !1511}
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3062, file: !198, line: 95, baseType: !3078, size: 64, offset: 256)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{null, !3054}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3062, file: !198, line: 97, baseType: !3082, size: 64, offset: 320)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3084)
!3084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !210, line: 286, size: 1472, elements: !3085)
!3085 = !{!3086, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3084, file: !210, line: 287, baseType: !3087, size: 64)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!68, !3054}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3084, file: !210, line: 288, baseType: !3078, size: 64, offset: 64)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3084, file: !210, line: 289, baseType: !3087, size: 64, offset: 128)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3084, file: !210, line: 290, baseType: !3087, size: 64, offset: 192)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3084, file: !210, line: 291, baseType: !3087, size: 64, offset: 256)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3084, file: !210, line: 292, baseType: !3087, size: 64, offset: 320)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3084, file: !210, line: 293, baseType: !3087, size: 64, offset: 384)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3084, file: !210, line: 294, baseType: !3087, size: 64, offset: 448)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3084, file: !210, line: 295, baseType: !3087, size: 64, offset: 512)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3084, file: !210, line: 296, baseType: !3087, size: 64, offset: 576)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3084, file: !210, line: 297, baseType: !3087, size: 64, offset: 640)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3084, file: !210, line: 298, baseType: !3087, size: 64, offset: 704)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3084, file: !210, line: 299, baseType: !3087, size: 64, offset: 768)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3084, file: !210, line: 300, baseType: !3087, size: 64, offset: 832)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3084, file: !210, line: 301, baseType: !3087, size: 64, offset: 896)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3084, file: !210, line: 302, baseType: !3087, size: 64, offset: 960)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3084, file: !210, line: 303, baseType: !3087, size: 64, offset: 1024)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3084, file: !210, line: 304, baseType: !3087, size: 64, offset: 1088)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3084, file: !210, line: 305, baseType: !3087, size: 64, offset: 1152)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3084, file: !210, line: 306, baseType: !3087, size: 64, offset: 1216)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3084, file: !210, line: 307, baseType: !3087, size: 64, offset: 1280)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3084, file: !210, line: 308, baseType: !3087, size: 64, offset: 1344)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3084, file: !210, line: 309, baseType: !3087, size: 64, offset: 1408)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3050, file: !198, line: 714, baseType: !3113, size: 64, offset: 768)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3115)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3116, line: 80, size: 1344, elements: !3117)
!3116 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!3117 = !{!3118, !3119, !3120, !3121, !3122, !3123, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3181}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3115, file: !3116, line: 81, baseType: !62, size: 64)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3115, file: !3116, line: 82, baseType: !62, size: 64, offset: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3115, file: !3116, line: 83, baseType: !1069, size: 64, offset: 128)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3115, file: !3116, line: 84, baseType: !1069, size: 64, offset: 192)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3115, file: !3116, line: 85, baseType: !1069, size: 64, offset: 256)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3115, file: !3116, line: 87, baseType: !3124, size: 64, offset: 320)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!68, !3054, !3127}
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !192, line: 96, size: 1152, elements: !3129)
!3129 = !{!3130, !3131, !3132, !3133, !3134, !3135, !3136, !3140, !3144, !3145, !3146, !3147, !3148, !3156, !3157, !3158, !3159, !3160, !3161}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3128, file: !192, line: 97, baseType: !62, size: 64)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3128, file: !192, line: 98, baseType: !3113, size: 64, offset: 64)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3128, file: !192, line: 100, baseType: !971, size: 64, offset: 128)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3128, file: !192, line: 101, baseType: !62, size: 64, offset: 192)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3128, file: !192, line: 103, baseType: !1314, size: 8, offset: 256)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3128, file: !192, line: 104, baseType: !191, size: 32, offset: 288)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3128, file: !192, line: 106, baseType: !3137, size: 64, offset: 320)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3139)
!3139 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !192, line: 106, flags: DIFlagFwdDecl)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3128, file: !192, line: 107, baseType: !3141, size: 64, offset: 384)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3143)
!3143 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !192, line: 107, flags: DIFlagFwdDecl)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3128, file: !192, line: 109, baseType: !3087, size: 64, offset: 448)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3128, file: !192, line: 110, baseType: !3078, size: 64, offset: 512)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3128, file: !192, line: 111, baseType: !3087, size: 64, offset: 576)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3128, file: !192, line: 112, baseType: !3078, size: 64, offset: 640)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3128, file: !192, line: 113, baseType: !3149, size: 64, offset: 704)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{!68, !3054, !3152}
!3152 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !210, line: 60, baseType: !3153)
!3153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !210, line: 58, size: 32, elements: !3154)
!3154 = !{!3155}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3153, file: !210, line: 59, baseType: !68, size: 32)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3128, file: !192, line: 114, baseType: !3087, size: 64, offset: 768)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3128, file: !192, line: 115, baseType: !1069, size: 64, offset: 832)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3128, file: !192, line: 116, baseType: !1069, size: 64, offset: 896)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3128, file: !192, line: 118, baseType: !3082, size: 64, offset: 960)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3128, file: !192, line: 119, baseType: !3078, size: 64, offset: 1024)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3128, file: !192, line: 121, baseType: !3162, size: 64, offset: 1088)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !192, line: 121, flags: DIFlagFwdDecl)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3115, file: !3116, line: 88, baseType: !3067, size: 64, offset: 384)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3115, file: !3116, line: 89, baseType: !3087, size: 64, offset: 448)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3115, file: !3116, line: 90, baseType: !3078, size: 64, offset: 512)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3115, file: !3116, line: 91, baseType: !3078, size: 64, offset: 576)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3115, file: !3116, line: 92, baseType: !3078, size: 64, offset: 640)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3115, file: !3116, line: 94, baseType: !3087, size: 64, offset: 704)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3115, file: !3116, line: 95, baseType: !3087, size: 64, offset: 768)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3115, file: !3116, line: 97, baseType: !3149, size: 64, offset: 832)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3115, file: !3116, line: 98, baseType: !3087, size: 64, offset: 896)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3115, file: !3116, line: 100, baseType: !3087, size: 64, offset: 960)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3115, file: !3116, line: 102, baseType: !3087, size: 64, offset: 1024)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !3115, file: !3116, line: 103, baseType: !3078, size: 64, offset: 1088)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3115, file: !3116, line: 105, baseType: !3082, size: 64, offset: 1152)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3115, file: !3116, line: 107, baseType: !3178, size: 64, offset: 1216)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3180)
!3180 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3116, line: 107, flags: DIFlagFwdDecl)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3115, file: !3116, line: 109, baseType: !1314, size: 8, offset: 1280)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3050, file: !198, line: 715, baseType: !3127, size: 64, offset: 832)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3050, file: !198, line: 717, baseType: !66, size: 64, offset: 896)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3050, file: !198, line: 719, baseType: !66, size: 64, offset: 960)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3050, file: !198, line: 721, baseType: !1124, size: 256, offset: 1024)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3050, file: !198, line: 725, baseType: !3187, size: 448, offset: 1280)
!3187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !198, line: 517, size: 448, elements: !3188)
!3188 = !{!3189, !3190, !3191, !3192}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3187, file: !198, line: 518, baseType: !143, size: 128)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3187, file: !198, line: 519, baseType: !143, size: 128, offset: 128)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !3187, file: !198, line: 520, baseType: !143, size: 128, offset: 256)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3187, file: !198, line: 521, baseType: !197, size: 32, offset: 384)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3050, file: !198, line: 726, baseType: !3194, size: 2496, offset: 1728)
!3194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !210, line: 663, size: 2496, elements: !3195)
!3195 = !{!3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3240, !3241, !3242, !3243, !3244, !3245, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3346, !3350}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3194, file: !210, line: 664, baseType: !3152, size: 32)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3194, file: !210, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3194, file: !210, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3194, file: !210, line: 667, baseType: !1314, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3194, file: !210, line: 668, baseType: !1314, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3194, file: !210, line: 669, baseType: !1314, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3194, file: !210, line: 670, baseType: !1314, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3194, file: !210, line: 671, baseType: !1314, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3194, file: !210, line: 672, baseType: !1314, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3194, file: !210, line: 673, baseType: !1314, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3194, file: !210, line: 674, baseType: !1314, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3194, file: !210, line: 675, baseType: !854, size: 32, offset: 64)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3194, file: !210, line: 676, baseType: !105, size: 32, offset: 96)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3194, file: !210, line: 678, baseType: !143, size: 128, offset: 128)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3194, file: !210, line: 679, baseType: !1485, size: 256, offset: 256)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3194, file: !210, line: 680, baseType: !3212, size: 64, offset: 512)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3214, line: 43, size: 1536, elements: !3215)
!3214 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!3215 = !{!3216, !3217, !3218, !3219, !3220, !3223, !3224, !3225, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3213, file: !3214, line: 44, baseType: !62, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3213, file: !3214, line: 45, baseType: !68, size: 32, offset: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3213, file: !3214, line: 46, baseType: !143, size: 128, offset: 128)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3213, file: !3214, line: 47, baseType: !105, size: 32, offset: 256)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3213, file: !3214, line: 48, baseType: !3221, size: 64, offset: 320)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !210, line: 629, flags: DIFlagFwdDecl)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3213, file: !3214, line: 49, baseType: !2590, size: 320, offset: 384)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3213, file: !3214, line: 50, baseType: !85, size: 64, offset: 704)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3213, file: !3214, line: 51, baseType: !3226, size: 64, offset: 768)
!3226 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !3227, line: 29, baseType: !1121)
!3227 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3213, file: !3214, line: 52, baseType: !3226, size: 64, offset: 832)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3213, file: !3214, line: 53, baseType: !3226, size: 64, offset: 896)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3213, file: !3214, line: 54, baseType: !3226, size: 64, offset: 960)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3213, file: !3214, line: 55, baseType: !3226, size: 64, offset: 1024)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3213, file: !3214, line: 56, baseType: !85, size: 64, offset: 1088)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3213, file: !3214, line: 57, baseType: !85, size: 64, offset: 1152)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3213, file: !3214, line: 58, baseType: !85, size: 64, offset: 1216)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3213, file: !3214, line: 59, baseType: !85, size: 64, offset: 1280)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3213, file: !3214, line: 60, baseType: !85, size: 64, offset: 1344)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3213, file: !3214, line: 61, baseType: !3054, size: 64, offset: 1408)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3213, file: !3214, line: 62, baseType: !1314, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3213, file: !3214, line: 63, baseType: !1314, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3194, file: !210, line: 681, baseType: !1314, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3194, file: !210, line: 682, baseType: !1314, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3194, file: !210, line: 683, baseType: !1314, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3194, file: !210, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3194, file: !210, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3194, file: !210, line: 690, baseType: !3246, size: 512, offset: 640)
!3246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !205, line: 118, size: 512, elements: !3247)
!3247 = !{!3248, !3254, !3255, !3260, !3308, !3309, !3310, !3311}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3246, file: !205, line: 119, baseType: !3249, size: 256)
!3249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !3250, line: 9, size: 256, elements: !3251)
!3250 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!3251 = !{!3252, !3253}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3249, file: !3250, line: 10, baseType: !1247, size: 192, align: 64)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3249, file: !3250, line: 11, baseType: !3226, size: 64, offset: 192)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !3246, file: !205, line: 120, baseType: !3226, size: 64, offset: 256)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3246, file: !205, line: 121, baseType: !3256, size: 64, offset: 320)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!204, !3259}
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3246, file: !205, line: 122, baseType: !3261, size: 64, offset: 384)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !205, line: 159, size: 512, align: 512, elements: !3263)
!3263 = !{!3264, !3289, !3290, !3293, !3298, !3299, !3303, !3307}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !3262, file: !205, line: 160, baseType: !3265, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !205, line: 215, size: 4608, align: 512, elements: !3267)
!3267 = !{!3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3266, file: !205, line: 216, baseType: !1129, size: 32)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3266, file: !205, line: 217, baseType: !7, size: 32, offset: 32)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !3266, file: !205, line: 218, baseType: !7, size: 32, offset: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !3266, file: !205, line: 219, baseType: !7, size: 32, offset: 96)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !3266, file: !205, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !3266, file: !205, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !3266, file: !205, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !3266, file: !205, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3266, file: !205, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3266, file: !205, line: 226, baseType: !7, size: 32, offset: 160)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !3266, file: !205, line: 227, baseType: !72, size: 16, offset: 192)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !3266, file: !205, line: 228, baseType: !72, size: 16, offset: 208)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !3266, file: !205, line: 229, baseType: !7, size: 32, offset: 224)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !3266, file: !205, line: 235, baseType: !3226, size: 64, offset: 256)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !3266, file: !205, line: 236, baseType: !3259, size: 64, offset: 320)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !3266, file: !205, line: 237, baseType: !3226, size: 64, offset: 384)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !3266, file: !205, line: 238, baseType: !3259, size: 64, offset: 448)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !3266, file: !205, line: 239, baseType: !3286, size: 4096, align: 512, offset: 512)
!3286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3262, size: 4096, align: 512, elements: !3287)
!3287 = !{!3288}
!3288 = !DISubrange(count: 8)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3262, file: !205, line: 161, baseType: !7, size: 32, offset: 64)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3262, file: !205, line: 162, baseType: !3291, size: 32, offset: 96)
!3291 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !71, line: 32, baseType: !3292)
!3292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !83, line: 96, baseType: !68)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3262, file: !205, line: 163, baseType: !3294, size: 32, offset: 128)
!3294 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !827, line: 274, baseType: !3295)
!3295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !827, line: 274, size: 32, elements: !3296)
!3296 = !{!3297}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3295, file: !827, line: 274, baseType: !831, size: 32)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !3262, file: !205, line: 164, baseType: !3259, size: 64, offset: 192)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3262, file: !205, line: 165, baseType: !3300, size: 128, offset: 256)
!3300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !3250, line: 14, size: 128, elements: !3301)
!3301 = !{!3302}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !3300, file: !3250, line: 15, baseType: !1953, size: 128)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !3262, file: !205, line: 166, baseType: !3304, size: 64, offset: 384)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{!3226}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3262, file: !205, line: 167, baseType: !3226, size: 64, offset: 448)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3246, file: !205, line: 123, baseType: !129, size: 8, offset: 448)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !3246, file: !205, line: 124, baseType: !129, size: 8, offset: 456)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !3246, file: !205, line: 125, baseType: !129, size: 8, offset: 464)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !3246, file: !205, line: 126, baseType: !129, size: 8, offset: 472)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3194, file: !210, line: 691, baseType: !858, size: 64, offset: 1152)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3194, file: !210, line: 692, baseType: !1446, size: 256, offset: 1216)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3194, file: !210, line: 693, baseType: !100, size: 192, offset: 1472)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3194, file: !210, line: 694, baseType: !3221, size: 64, offset: 1664)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3194, file: !210, line: 695, baseType: !95, size: 32, offset: 1728)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3194, file: !210, line: 696, baseType: !95, size: 32, offset: 1760)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3194, file: !210, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3194, file: !210, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3194, file: !210, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3194, file: !210, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !3194, file: !210, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3194, file: !210, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3194, file: !210, line: 703, baseType: !1314, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3194, file: !210, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3194, file: !210, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3194, file: !210, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3194, file: !210, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3194, file: !210, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3194, file: !210, line: 709, baseType: !7, size: 32, offset: 1824)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3194, file: !210, line: 710, baseType: !209, size: 32, offset: 1856)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3194, file: !210, line: 711, baseType: !217, size: 32, offset: 1888)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !3194, file: !210, line: 712, baseType: !217, size: 32, offset: 1920)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3194, file: !210, line: 713, baseType: !68, size: 32, offset: 1952)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3194, file: !210, line: 714, baseType: !68, size: 32, offset: 1984)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3194, file: !210, line: 715, baseType: !858, size: 64, offset: 2048)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3194, file: !210, line: 716, baseType: !858, size: 64, offset: 2112)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3194, file: !210, line: 717, baseType: !858, size: 64, offset: 2176)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3194, file: !210, line: 718, baseType: !858, size: 64, offset: 2240)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3194, file: !210, line: 720, baseType: !3341, size: 64, offset: 2304)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !210, line: 632, size: 64, elements: !3343)
!3343 = !{!3344, !3345}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3342, file: !210, line: 633, baseType: !105, size: 32)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3342, file: !210, line: 634, baseType: !7, size: 32, offset: 32)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3194, file: !210, line: 721, baseType: !3347, size: 64, offset: 2368)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{null, !3054, !1240}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3194, file: !210, line: 722, baseType: !3351, size: 64, offset: 2432)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !210, line: 722, flags: DIFlagFwdDecl)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3050, file: !198, line: 727, baseType: !3354, size: 64, offset: 4224)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !210, line: 742, size: 1792, elements: !3356)
!3356 = !{!3357, !3358, !3359, !3363, !3364, !3365}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3355, file: !210, line: 743, baseType: !3084, size: 1472)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3355, file: !210, line: 744, baseType: !3087, size: 64, offset: 1472)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3355, file: !210, line: 745, baseType: !3360, size: 64, offset: 1536)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{null, !3054, !1314}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3355, file: !210, line: 746, baseType: !3087, size: 64, offset: 1600)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3355, file: !210, line: 747, baseType: !3078, size: 64, offset: 1664)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3355, file: !210, line: 748, baseType: !3078, size: 64, offset: 1728)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !3050, file: !198, line: 736, baseType: !3367, size: 128, offset: 4288)
!3367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !198, line: 529, size: 128, elements: !3368)
!3368 = !{!3369, !3373}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3367, file: !198, line: 531, baseType: !3370, size: 64)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3372, line: 13, flags: DIFlagFwdDecl)
!3372 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3367, file: !198, line: 532, baseType: !3374, size: 64, offset: 64)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !198, line: 49, flags: DIFlagFwdDecl)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3050, file: !198, line: 738, baseType: !3377, size: 64, offset: 4416)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3379)
!3379 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !198, line: 738, flags: DIFlagFwdDecl)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3050, file: !198, line: 740, baseType: !3381, size: 64, offset: 4480)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3050, file: !198, line: 741, baseType: !858, size: 64, offset: 4544)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3050, file: !198, line: 746, baseType: !858, size: 64, offset: 4608)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3050, file: !198, line: 747, baseType: !3385, size: 64, offset: 4672)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3387)
!3387 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !198, line: 747, flags: DIFlagFwdDecl)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3050, file: !198, line: 749, baseType: !3389, size: 64, offset: 4736)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !198, line: 428, size: 128, elements: !3391)
!3391 = !{!3392, !3393, !3394}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3390, file: !198, line: 433, baseType: !7, size: 32)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3390, file: !198, line: 434, baseType: !7, size: 32, offset: 32)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3390, file: !198, line: 435, baseType: !85, size: 64, offset: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3050, file: !198, line: 751, baseType: !143, size: 128, offset: 4800)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !3050, file: !198, line: 762, baseType: !3397, size: 64, offset: 4928)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !198, line: 762, flags: DIFlagFwdDecl)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3050, file: !198, line: 770, baseType: !3400, offset: 4992)
!3400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3401, line: 5, elements: !1779)
!3401 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3050, file: !198, line: 772, baseType: !3403, size: 64, offset: 4992)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3405, line: 18, flags: DIFlagFwdDecl)
!3405 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3050, file: !198, line: 773, baseType: !3407, size: 64, offset: 5056)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3409, line: 41, size: 512, elements: !3410)
!3409 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!3410 = !{!3411, !3412, !3506, !3507, !3508, !3509}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3408, file: !3409, line: 42, baseType: !3407, size: 64)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3408, file: !3409, line: 43, baseType: !3413, size: 64, offset: 64)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3415)
!3415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3409, line: 125, size: 1408, elements: !3416)
!3416 = !{!3417, !3421, !3425, !3431, !3435, !3436, !3441, !3445, !3449, !3453, !3457, !3458, !3462, !3466, !3470, !3481, !3482, !3483, !3484, !3494, !3498, !3502}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3415, file: !3409, line: 126, baseType: !3418, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!3407, !3407}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3415, file: !3409, line: 127, baseType: !3422, size: 64, offset: 64)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DISubroutineType(types: !3424)
!3424 = !{null, !3407}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3415, file: !3409, line: 128, baseType: !3426, size: 64, offset: 128)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{!1314, !3429}
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3408)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3415, file: !3409, line: 129, baseType: !3432, size: 64, offset: 192)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{!1874, !3429, !3070}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !3415, file: !3409, line: 131, baseType: !3426, size: 64, offset: 256)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !3415, file: !3409, line: 133, baseType: !3437, size: 64, offset: 320)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!3440, !3429}
!3440 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !3409, line: 132, flags: DIFlagFwdDecl)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3415, file: !3409, line: 134, baseType: !3442, size: 64, offset: 384)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3443 = !DISubroutineType(types: !3444)
!3444 = !{!1314, !3429, !62}
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3415, file: !3409, line: 136, baseType: !3446, size: 64, offset: 448)
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3447 = !DISubroutineType(types: !3448)
!3448 = !{!68, !3429, !62, !7, !66, !81}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3415, file: !3409, line: 141, baseType: !3450, size: 64, offset: 512)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{!68, !3429, !62, !2667, !81}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3415, file: !3409, line: 144, baseType: !3454, size: 64, offset: 576)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DISubroutineType(types: !3456)
!3456 = !{!62, !3429}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3415, file: !3409, line: 145, baseType: !3454, size: 64, offset: 640)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3415, file: !3409, line: 146, baseType: !3459, size: 64, offset: 704)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{!3407, !3429}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3415, file: !3409, line: 148, baseType: !3463, size: 64, offset: 768)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = !DISubroutineType(types: !3465)
!3465 = !{!3407, !3429, !3407}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3415, file: !3409, line: 151, baseType: !3467, size: 64, offset: 832)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = !DISubroutineType(types: !3469)
!3469 = !{!3407, !3429, !62}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3415, file: !3409, line: 153, baseType: !3471, size: 64, offset: 896)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!68, !3429, !62, !62, !7, !7, !3474}
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3409, line: 94, size: 640, elements: !3476)
!3476 = !{!3477, !3478, !3479}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3475, file: !3409, line: 95, baseType: !3407, size: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3475, file: !3409, line: 96, baseType: !7, size: 32, offset: 64)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3475, file: !3409, line: 97, baseType: !3480, size: 512, offset: 128)
!3480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !858, size: 512, elements: !3287)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3415, file: !3409, line: 158, baseType: !3463, size: 64, offset: 960)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3415, file: !3409, line: 161, baseType: !3459, size: 64, offset: 1024)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3415, file: !3409, line: 163, baseType: !3418, size: 64, offset: 1088)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3415, file: !3409, line: 164, baseType: !3485, size: 64, offset: 1152)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{!68, !3429, !3488}
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3409, line: 73, size: 128, elements: !3490)
!3490 = !{!3491, !3492, !3493}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3489, file: !3409, line: 74, baseType: !7, size: 32)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3489, file: !3409, line: 75, baseType: !7, size: 32, offset: 32)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3489, file: !3409, line: 76, baseType: !3429, size: 64, offset: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !3415, file: !3409, line: 166, baseType: !3495, size: 64, offset: 1216)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = !DISubroutineType(types: !3497)
!3497 = !{!66, !3407, !68}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !3415, file: !3409, line: 167, baseType: !3499, size: 64, offset: 1280)
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = !DISubroutineType(types: !3501)
!3501 = !{!68, !3429, !7}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3415, file: !3409, line: 168, baseType: !3503, size: 64, offset: 1344)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{!68, !3407}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3408, file: !3409, line: 44, baseType: !3054, size: 64, offset: 128)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3408, file: !3409, line: 45, baseType: !143, size: 128, offset: 192)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3408, file: !3409, line: 46, baseType: !143, size: 128, offset: 320)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3408, file: !3409, line: 47, baseType: !129, size: 8, offset: 448)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !3050, file: !198, line: 776, baseType: !68, size: 32, offset: 5120)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3050, file: !198, line: 778, baseType: !941, size: 32, offset: 5152)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3050, file: !198, line: 779, baseType: !854, size: 32, offset: 5184)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3050, file: !198, line: 781, baseType: !105, size: 32, offset: 5216)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3050, file: !198, line: 782, baseType: !143, size: 128, offset: 5248)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3050, file: !198, line: 784, baseType: !3516, size: 64, offset: 5376)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3518)
!3518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3519, line: 52, size: 768, elements: !3520)
!3519 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3520 = !{!3521, !3522, !3523, !3524, !3525, !3529, !3533, !3534, !3535, !3536, !3540, !3544}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3518, file: !3519, line: 53, baseType: !62, size: 64)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3518, file: !3519, line: 55, baseType: !1069, size: 64, offset: 64)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3518, file: !3519, line: 56, baseType: !1069, size: 64, offset: 128)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3518, file: !3519, line: 58, baseType: !3067, size: 64, offset: 192)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3518, file: !3519, line: 59, baseType: !3526, size: 64, offset: 256)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DISubroutineType(types: !3528)
!3528 = !{!300, !3070, !3076}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3518, file: !3519, line: 61, baseType: !3530, size: 64, offset: 320)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DISubroutineType(types: !3532)
!3532 = !{null, !3516}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3518, file: !3519, line: 62, baseType: !3078, size: 64, offset: 384)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3518, file: !3519, line: 64, baseType: !3087, size: 64, offset: 448)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3518, file: !3519, line: 66, baseType: !2212, size: 64, offset: 512)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3518, file: !3519, line: 67, baseType: !3537, size: 64, offset: 576)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{!1874, !3070}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3518, file: !3519, line: 69, baseType: !3541, size: 64, offset: 640)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DISubroutineType(types: !3543)
!3543 = !{null, !3070, !1510, !1511}
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3518, file: !3519, line: 71, baseType: !3082, size: 64, offset: 704)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3050, file: !198, line: 785, baseType: !1069, size: 64, offset: 5440)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3050, file: !198, line: 787, baseType: !3078, size: 64, offset: 5504)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3050, file: !198, line: 788, baseType: !3548, size: 64, offset: 5568)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !198, line: 46, flags: DIFlagFwdDecl)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3050, file: !198, line: 789, baseType: !3551, size: 64, offset: 5632)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !198, line: 48, flags: DIFlagFwdDecl)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !3050, file: !198, line: 791, baseType: !3554, size: 64, offset: 5696)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !198, line: 597, size: 128, elements: !3556)
!3556 = !{!3557, !3558, !3559, !3560, !3561}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3555, file: !198, line: 598, baseType: !224, size: 32)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3555, file: !198, line: 599, baseType: !233, size: 32, offset: 32)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3555, file: !198, line: 600, baseType: !238, size: 32, offset: 64)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3555, file: !198, line: 601, baseType: !1314, size: 8, offset: 96)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3555, file: !198, line: 602, baseType: !1314, size: 8, offset: 104)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !3050, file: !198, line: 793, baseType: !243, size: 32, offset: 5760)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3050, file: !198, line: 795, baseType: !1314, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3050, file: !198, line: 796, baseType: !1314, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3050, file: !198, line: 797, baseType: !1314, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3050, file: !198, line: 798, baseType: !1314, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !3050, file: !198, line: 799, baseType: !1314, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !937, file: !181, line: 1226, baseType: !3569, size: 64, offset: 1664)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !181, line: 1226, flags: DIFlagFwdDecl)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !937, file: !181, line: 1227, baseType: !3572, size: 64, offset: 1728)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !250, line: 163, size: 6848, elements: !3574)
!3574 = !{!3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3621, !3622, !3623, !3624, !3626, !3627, !3628}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3573, file: !250, line: 164, baseType: !858, size: 64)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3573, file: !250, line: 165, baseType: !1247, size: 192, align: 64, offset: 64)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !3573, file: !250, line: 166, baseType: !143, size: 128, offset: 256)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3573, file: !250, line: 167, baseType: !85, size: 64, offset: 384)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !3573, file: !250, line: 168, baseType: !85, size: 64, offset: 448)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3573, file: !250, line: 170, baseType: !2340, size: 32, offset: 512)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3573, file: !250, line: 171, baseType: !7, size: 32, offset: 544)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !3573, file: !250, line: 172, baseType: !7, size: 32, offset: 576)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !3573, file: !250, line: 173, baseType: !7, size: 32, offset: 608)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !3573, file: !250, line: 173, baseType: !7, size: 32, offset: 640)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !3573, file: !250, line: 179, baseType: !1115, size: 64, offset: 704)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !3573, file: !250, line: 184, baseType: !85, size: 64, offset: 768)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !3573, file: !250, line: 186, baseType: !3588, size: 4672, offset: 832)
!3588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !250, line: 105, size: 4672, elements: !3589)
!3589 = !{!3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3614, !3615, !3616, !3617, !3618, !3619, !3620}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !3588, file: !250, line: 106, baseType: !3572, size: 64)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3588, file: !250, line: 108, baseType: !85, size: 64, offset: 64)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !3588, file: !250, line: 109, baseType: !85, size: 64, offset: 128)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !3588, file: !250, line: 111, baseType: !143, size: 128, offset: 192)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !3588, file: !250, line: 112, baseType: !143, size: 128, offset: 320)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !3588, file: !250, line: 113, baseType: !143, size: 128, offset: 448)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !3588, file: !250, line: 114, baseType: !143, size: 128, offset: 576)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3588, file: !250, line: 115, baseType: !105, size: 32, offset: 704)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !3588, file: !250, line: 117, baseType: !95, size: 32, offset: 736)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !3588, file: !250, line: 118, baseType: !1842, size: 1280, offset: 768)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !3588, file: !250, line: 120, baseType: !85, size: 64, offset: 2048)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !3588, file: !250, line: 121, baseType: !85, size: 64, offset: 2112)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !3588, file: !250, line: 122, baseType: !85, size: 64, offset: 2176)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !3588, file: !250, line: 123, baseType: !85, size: 64, offset: 2240)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !3588, file: !250, line: 124, baseType: !85, size: 64, offset: 2304)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !3588, file: !250, line: 132, baseType: !85, size: 64, offset: 2368)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !3588, file: !250, line: 133, baseType: !85, size: 64, offset: 2432)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !3588, file: !250, line: 135, baseType: !3608, size: 384, offset: 2496)
!3608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !3609, line: 76, size: 384, elements: !3610)
!3609 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!3610 = !{!3611, !3612, !3613}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3608, file: !3609, line: 78, baseType: !1372, size: 320)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3608, file: !3609, line: 80, baseType: !7, size: 32, offset: 320)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3608, file: !3609, line: 81, baseType: !1129, size: 32, offset: 352)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !3588, file: !250, line: 136, baseType: !68, size: 32, offset: 2880)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !3588, file: !250, line: 137, baseType: !249, size: 32, offset: 2912)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !3588, file: !250, line: 139, baseType: !105, size: 32, offset: 2944)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !3588, file: !250, line: 140, baseType: !143, size: 128, offset: 3008)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !3588, file: !250, line: 141, baseType: !2647, size: 704, offset: 3136)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !3588, file: !250, line: 142, baseType: !2647, size: 704, offset: 3840)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !3588, file: !250, line: 144, baseType: !143, size: 128, offset: 4544)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !3573, file: !250, line: 187, baseType: !143, size: 128, offset: 5504)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !3573, file: !250, line: 193, baseType: !100, size: 192, offset: 5632)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3573, file: !250, line: 195, baseType: !3054, size: 64, offset: 5824)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3573, file: !250, line: 196, baseType: !3625, size: 512, offset: 5888)
!3625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 512, elements: !1029)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3573, file: !250, line: 197, baseType: !3054, size: 64, offset: 6400)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !3573, file: !250, line: 199, baseType: !2590, size: 320, offset: 6464)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !3573, file: !250, line: 202, baseType: !820, size: 64, offset: 6784)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !937, file: !181, line: 1228, baseType: !3630, size: 64, offset: 1792)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !181, line: 1228, flags: DIFlagFwdDecl)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !937, file: !181, line: 1229, baseType: !1180, size: 128, offset: 1856)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !937, file: !181, line: 1230, baseType: !7, size: 32, offset: 1984)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !937, file: !181, line: 1231, baseType: !3635, size: 2496, offset: 2048)
!3635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !186, line: 521, size: 2496, elements: !3636)
!3636 = !{!3637, !3638, !3639, !3641, !3673}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3635, file: !186, line: 522, baseType: !7, size: 32)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3635, file: !186, line: 523, baseType: !1255, size: 320, offset: 64)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3635, file: !186, line: 524, baseType: !3640, size: 192, offset: 384)
!3640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !785, size: 192, elements: !1025)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3635, file: !186, line: 525, baseType: !3642, size: 1728, offset: 576)
!3642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3643, size: 1728, elements: !1025)
!3643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !186, line: 222, size: 576, elements: !3644)
!3644 = !{!3645, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3643, file: !186, line: 223, baseType: !3646, size: 64)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !186, line: 445, size: 256, elements: !3648)
!3648 = !{!3649, !3650, !3663, !3664}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3647, file: !186, line: 446, baseType: !68, size: 32)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3647, file: !186, line: 447, baseType: !3651, size: 64, offset: 64)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3653)
!3653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !186, line: 312, size: 512, elements: !3654)
!3654 = !{!3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3653, file: !186, line: 313, baseType: !2756, size: 64)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3653, file: !186, line: 314, baseType: !2756, size: 64, offset: 64)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3653, file: !186, line: 315, baseType: !2756, size: 64, offset: 128)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3653, file: !186, line: 316, baseType: !2756, size: 64, offset: 192)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3653, file: !186, line: 317, baseType: !2865, size: 64, offset: 256)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3653, file: !186, line: 318, baseType: !2865, size: 64, offset: 320)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3653, file: !186, line: 319, baseType: !2865, size: 64, offset: 384)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3653, file: !186, line: 320, baseType: !2895, size: 64, offset: 448)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3647, file: !186, line: 448, baseType: !971, size: 64, offset: 128)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3647, file: !186, line: 449, baseType: !3646, size: 64, offset: 192)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3643, file: !186, line: 224, baseType: !68, size: 32, offset: 64)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3643, file: !186, line: 226, baseType: !143, size: 128, offset: 128)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3643, file: !186, line: 227, baseType: !85, size: 64, offset: 256)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3643, file: !186, line: 228, baseType: !7, size: 32, offset: 320)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3643, file: !186, line: 229, baseType: !7, size: 32, offset: 352)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3643, file: !186, line: 230, baseType: !2833, size: 64, offset: 384)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3643, file: !186, line: 231, baseType: !2833, size: 64, offset: 448)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3643, file: !186, line: 232, baseType: !66, size: 64, offset: 512)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3635, file: !186, line: 526, baseType: !3674, size: 192, offset: 2304)
!3674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3651, size: 192, elements: !1025)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !937, file: !181, line: 1233, baseType: !3676, size: 2368, offset: 4544)
!3676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !181, line: 1184, size: 2368, elements: !3677)
!3677 = !{!3678, !3679, !3680}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3676, file: !181, line: 1185, baseType: !72, size: 16)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3676, file: !181, line: 1186, baseType: !72, size: 16, offset: 16)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3676, file: !181, line: 1187, baseType: !3681, size: 2304, offset: 64)
!3681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3682, size: 2304, elements: !1025)
!3682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3683, line: 12, size: 768, elements: !3684)
!3683 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3684 = !{!3685, !3693, !3694, !5351, !5352}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3682, file: !3683, line: 13, baseType: !3686, size: 384)
!3686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3687, line: 17, size: 384, elements: !3688)
!3687 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3688 = !{!3689, !3690, !3691, !3692}
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3686, file: !3687, line: 18, baseType: !68, size: 32)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3686, file: !3687, line: 19, baseType: !68, size: 32, offset: 32)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3686, file: !3687, line: 20, baseType: !100, size: 192, offset: 64)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3686, file: !3687, line: 22, baseType: !377, size: 128, align: 64, offset: 256)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3682, file: !3683, line: 14, baseType: !2443, size: 64, offset: 384)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3682, file: !3683, line: 15, baseType: !3695, size: 64, offset: 448)
!3695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3696, line: 16, size: 64, elements: !3697)
!3696 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3697 = !{!3698}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3695, file: !3696, line: 17, baseType: !3699, size: 64)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !2109, line: 746, size: 58368, elements: !3701)
!3701 = !{!3702, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3782, !3793, !3813, !3817, !3820, !3851, !3852, !3853, !3854, !3862, !3864, !3865, !3866, !3867, !3868, !3869, !3880, !3881, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3898, !3899, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3987, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4035, !4041, !4042, !4043, !4044, !4045, !4047, !4050, !4057, !4062, !4065, !4068, !4071, !4387, !4586, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4624, !4625, !4626, !4635, !4643, !4644, !4645, !4646, !4647, !4652, !4653, !4654, !4657, !4658, !4661, !4664, !4670, !4677, !4852, !4853, !4939, !4940, !4941, !4942, !4943, !4949, !4950, !4951, !4952, !4953, !4954, !4957, !4960, !4961, !4964, !4965, !4966, !4969, !4970, !4971, !4972, !4973, !4974, !4987, !4988, !4989, !4990, !4991, !4992, !4993, !4994, !4995, !5006, !5007, !5013, !5016, !5017, !5018, !5019, !5020, !5021, !5022, !5023, !5095, !5097, !5098, !5099, !5100, !5101, !5102, !5118, !5119, !5120, !5121, !5122, !5123, !5124, !5125, !5126, !5127, !5128, !5132, !5133, !5134}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !3700, file: !2109, line: 752, baseType: !3703, size: 192)
!3703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !3704, line: 56, size: 192, elements: !3705)
!3704 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!3705 = !{!3706, !3707, !3708, !3709}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3703, file: !3704, line: 57, baseType: !85, size: 64)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !3703, file: !3704, line: 58, baseType: !85, size: 64, offset: 64)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3703, file: !3704, line: 59, baseType: !854, size: 32, offset: 128)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3703, file: !3704, line: 61, baseType: !854, size: 32, offset: 160)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !3700, file: !2109, line: 754, baseType: !7, size: 32, offset: 192)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3700, file: !2109, line: 767, baseType: !66, size: 64, offset: 256)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3700, file: !2109, line: 768, baseType: !1167, size: 32, offset: 320)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3700, file: !2109, line: 770, baseType: !7, size: 32, offset: 352)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !3700, file: !2109, line: 771, baseType: !7, size: 32, offset: 384)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !3700, file: !2109, line: 774, baseType: !68, size: 32, offset: 416)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !3700, file: !2109, line: 775, baseType: !3717, size: 128, offset: 448)
!3717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !3718, line: 58, size: 128, elements: !3719)
!3718 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!3719 = !{!3720, !3721, !3726, !3727}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !3717, file: !3718, line: 59, baseType: !1104, size: 64)
!3721 = !DIDerivedType(tag: DW_TAG_member, scope: !3717, file: !3718, line: 60, baseType: !3722, size: 32, offset: 64)
!3722 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3717, file: !3718, line: 60, size: 32, elements: !3723)
!3723 = !{!3724, !3725}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !3722, file: !3718, line: 61, baseType: !7, size: 32)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !3722, file: !3718, line: 62, baseType: !95, size: 32)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !3717, file: !3718, line: 65, baseType: !139, size: 16, offset: 96)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !3717, file: !3718, line: 65, baseType: !139, size: 16, offset: 112)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !3700, file: !2109, line: 776, baseType: !7, size: 32, offset: 576)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !3700, file: !2109, line: 777, baseType: !85, size: 64, offset: 640)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !3700, file: !2109, line: 778, baseType: !3699, size: 64, offset: 704)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !3700, file: !2109, line: 787, baseType: !68, size: 32, offset: 768)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !3700, file: !2109, line: 788, baseType: !68, size: 32, offset: 800)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3700, file: !2109, line: 790, baseType: !68, size: 32, offset: 832)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3700, file: !2109, line: 792, baseType: !68, size: 32, offset: 864)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !3700, file: !2109, line: 793, baseType: !68, size: 32, offset: 896)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !3700, file: !2109, line: 794, baseType: !68, size: 32, offset: 928)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !3700, file: !2109, line: 795, baseType: !7, size: 32, offset: 960)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !3700, file: !2109, line: 797, baseType: !3739, size: 2048, offset: 1024)
!3739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !2109, line: 551, size: 2048, elements: !3740)
!3740 = !{!3741, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3761, !3764, !3765, !3766}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !3739, file: !2109, line: 553, baseType: !3742, size: 128)
!3742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !2109, line: 411, size: 128, elements: !3743)
!3743 = !{!3744, !3745}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3742, file: !2109, line: 412, baseType: !85, size: 64)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !3742, file: !2109, line: 413, baseType: !854, size: 32, offset: 64)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !3739, file: !2109, line: 554, baseType: !1247, size: 192, align: 64, offset: 128)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3739, file: !2109, line: 555, baseType: !858, size: 64, offset: 320)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !3739, file: !2109, line: 556, baseType: !858, size: 64, offset: 384)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3739, file: !2109, line: 558, baseType: !143, size: 128, offset: 448)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3739, file: !2109, line: 559, baseType: !7, size: 32, offset: 576)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !3739, file: !2109, line: 561, baseType: !858, size: 64, offset: 640)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3739, file: !2109, line: 562, baseType: !858, size: 64, offset: 704)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !3739, file: !2109, line: 563, baseType: !858, size: 64, offset: 768)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !3739, file: !2109, line: 564, baseType: !858, size: 64, offset: 832)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !3739, file: !2109, line: 565, baseType: !1121, size: 64, offset: 896)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3739, file: !2109, line: 566, baseType: !858, size: 64, offset: 960)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !3739, file: !2109, line: 568, baseType: !858, size: 64, offset: 1024)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3739, file: !2109, line: 571, baseType: !68, size: 32, offset: 1088)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3739, file: !2109, line: 572, baseType: !3760, size: 64, offset: 1152)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !3739, file: !2109, line: 574, baseType: !3762, size: 64, offset: 1216)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !2109, line: 49, flags: DIFlagFwdDecl)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !3739, file: !2109, line: 576, baseType: !3762, size: 64, offset: 1280)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !3739, file: !2109, line: 578, baseType: !85, size: 64, offset: 1344)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !3739, file: !2109, line: 588, baseType: !3767, size: 512, align: 512, offset: 1536)
!3767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !2109, line: 497, size: 512, align: 512, elements: !3768)
!3768 = !{!3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !3767, file: !2109, line: 498, baseType: !858, size: 64)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !3767, file: !2109, line: 499, baseType: !858, size: 64, offset: 64)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !3767, file: !2109, line: 500, baseType: !858, size: 64, offset: 128)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !3767, file: !2109, line: 501, baseType: !854, size: 32, offset: 192)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !3767, file: !2109, line: 502, baseType: !854, size: 32, offset: 224)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !3767, file: !2109, line: 503, baseType: !85, size: 64, offset: 256)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !3767, file: !2109, line: 504, baseType: !85, size: 64, offset: 320)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !3767, file: !2109, line: 505, baseType: !85, size: 64, offset: 384)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !3767, file: !2109, line: 506, baseType: !3778, size: 64, align: 64, offset: 448)
!3778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !2109, line: 445, size: 64, align: 64, elements: !3779)
!3779 = !{!3780, !3781}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !3778, file: !2109, line: 446, baseType: !7, size: 32)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !3778, file: !2109, line: 447, baseType: !7, size: 32, offset: 32)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3700, file: !2109, line: 798, baseType: !3783, size: 384, offset: 3072)
!3783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !2109, line: 592, size: 384, elements: !3784)
!3784 = !{!3785, !3786, !3787, !3788, !3789, !3790, !3791}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !3783, file: !2109, line: 593, baseType: !143, size: 128)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3783, file: !2109, line: 594, baseType: !85, size: 64, offset: 128)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !3783, file: !2109, line: 595, baseType: !85, size: 64, offset: 192)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !3783, file: !2109, line: 596, baseType: !7, size: 32, offset: 256)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3783, file: !2109, line: 597, baseType: !72, size: 16, offset: 288)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !3783, file: !2109, line: 598, baseType: !72, size: 16, offset: 304)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !3783, file: !2109, line: 600, baseType: !3792, size: 64, offset: 320)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !3700, file: !2109, line: 799, baseType: !3794, size: 1792, offset: 3456)
!3794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !2109, line: 610, size: 1792, elements: !3795)
!3795 = !{!3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3794, file: !2109, line: 611, baseType: !1247, size: 192, align: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !3794, file: !2109, line: 618, baseType: !858, size: 64, offset: 192)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !3794, file: !2109, line: 619, baseType: !858, size: 64, offset: 256)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !3794, file: !2109, line: 620, baseType: !858, size: 64, offset: 320)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !3794, file: !2109, line: 621, baseType: !858, size: 64, offset: 384)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !3794, file: !2109, line: 622, baseType: !858, size: 64, offset: 448)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !3794, file: !2109, line: 629, baseType: !1121, size: 64, offset: 512)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3794, file: !2109, line: 630, baseType: !858, size: 64, offset: 576)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3794, file: !2109, line: 631, baseType: !7, size: 32, offset: 640)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !3794, file: !2109, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !3794, file: !2109, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !3794, file: !2109, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !3794, file: !2109, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !3794, file: !2109, line: 662, baseType: !3246, size: 512, offset: 704)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !3794, file: !2109, line: 671, baseType: !3246, size: 512, offset: 1216)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !3794, file: !2109, line: 679, baseType: !3812, size: 64, offset: 1728)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !3700, file: !2109, line: 800, baseType: !3814, size: 64, offset: 5248)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3816)
!3816 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !2109, line: 800, flags: DIFlagFwdDecl)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !3700, file: !2109, line: 809, baseType: !3818, size: 64, offset: 5312)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !2109, line: 70, flags: DIFlagFwdDecl)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3700, file: !2109, line: 825, baseType: !3821, size: 2048, align: 512, offset: 5632)
!3821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !2109, line: 509, size: 2048, align: 512, elements: !3822)
!3822 = !{!3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3821, file: !2109, line: 511, baseType: !858, size: 64)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3821, file: !2109, line: 512, baseType: !858, size: 64, offset: 64)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3821, file: !2109, line: 513, baseType: !858, size: 64, offset: 128)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3821, file: !2109, line: 514, baseType: !858, size: 64, offset: 192)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3821, file: !2109, line: 515, baseType: !858, size: 64, offset: 256)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3821, file: !2109, line: 516, baseType: !858, size: 64, offset: 320)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3821, file: !2109, line: 518, baseType: !858, size: 64, offset: 384)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3821, file: !2109, line: 519, baseType: !858, size: 64, offset: 448)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3821, file: !2109, line: 520, baseType: !1121, size: 64, offset: 512)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3821, file: !2109, line: 522, baseType: !858, size: 64, offset: 576)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3821, file: !2109, line: 523, baseType: !858, size: 64, offset: 640)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3821, file: !2109, line: 524, baseType: !1121, size: 64, offset: 704)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3821, file: !2109, line: 526, baseType: !1121, size: 64, offset: 768)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3821, file: !2109, line: 527, baseType: !858, size: 64, offset: 832)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3821, file: !2109, line: 529, baseType: !858, size: 64, offset: 896)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3821, file: !2109, line: 530, baseType: !858, size: 64, offset: 960)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3821, file: !2109, line: 531, baseType: !858, size: 64, offset: 1024)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3821, file: !2109, line: 532, baseType: !858, size: 64, offset: 1088)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3821, file: !2109, line: 533, baseType: !858, size: 64, offset: 1152)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3821, file: !2109, line: 535, baseType: !858, size: 64, offset: 1216)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3821, file: !2109, line: 536, baseType: !858, size: 64, offset: 1280)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3821, file: !2109, line: 537, baseType: !858, size: 64, offset: 1344)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3821, file: !2109, line: 538, baseType: !858, size: 64, offset: 1408)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3821, file: !2109, line: 539, baseType: !858, size: 64, offset: 1472)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3821, file: !2109, line: 540, baseType: !858, size: 64, offset: 1536)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3821, file: !2109, line: 541, baseType: !858, size: 64, offset: 1600)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3821, file: !2109, line: 542, baseType: !858, size: 64, offset: 1664)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3821, file: !2109, line: 543, baseType: !858, size: 64, offset: 1728)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !3700, file: !2109, line: 833, baseType: !7, size: 32, offset: 7680)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !3700, file: !2109, line: 836, baseType: !7, size: 32, offset: 7712)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !3700, file: !2109, line: 837, baseType: !68, size: 32, offset: 7744)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !3700, file: !2109, line: 838, baseType: !3855, size: 64, offset: 7808)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3857)
!3857 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !3858, line: 19, baseType: !3859)
!3858 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!3859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !3858, line: 19, size: 64, elements: !3860)
!3860 = !{!3861}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3859, file: !3858, line: 19, baseType: !386, size: 64)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !3700, file: !2109, line: 839, baseType: !3863, size: 64, offset: 7872)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !3700, file: !2109, line: 840, baseType: !3857, size: 64, offset: 7936)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !3700, file: !2109, line: 841, baseType: !66, size: 64, offset: 8000)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !3700, file: !2109, line: 843, baseType: !72, size: 16, offset: 8064)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !3700, file: !2109, line: 845, baseType: !72, size: 16, offset: 8080)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !3700, file: !2109, line: 848, baseType: !68, size: 32, offset: 8096)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !3700, file: !2109, line: 849, baseType: !3870, size: 32, offset: 8128)
!3870 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !2109, line: 718, size: 32, elements: !3871)
!3871 = !{!3872, !3879}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3870, file: !2109, line: 724, baseType: !3873, size: 32)
!3873 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3870, file: !2109, line: 719, size: 32, elements: !3874)
!3874 = !{!3875, !3876, !3877, !3878}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3873, file: !2109, line: 720, baseType: !129, size: 8)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3873, file: !2109, line: 721, baseType: !129, size: 8, offset: 8)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3873, file: !2109, line: 722, baseType: !129, size: 8, offset: 16)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3873, file: !2109, line: 723, baseType: !129, size: 8, offset: 24)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3870, file: !2109, line: 725, baseType: !854, size: 32)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !3700, file: !2109, line: 850, baseType: !143, size: 128, offset: 8192)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !3700, file: !2109, line: 851, baseType: !3882, size: 64, offset: 8320)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !2109, line: 60, flags: DIFlagFwdDecl)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !3700, file: !2109, line: 855, baseType: !85, size: 64, offset: 8384)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !3700, file: !2109, line: 856, baseType: !129, size: 8, offset: 8448)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !3700, file: !2109, line: 857, baseType: !129, size: 8, offset: 8456)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !3700, file: !2109, line: 858, baseType: !68, size: 32, offset: 8480)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !3700, file: !2109, line: 859, baseType: !143, size: 128, offset: 8512)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !3700, file: !2109, line: 860, baseType: !68, size: 32, offset: 8640)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !3700, file: !2109, line: 861, baseType: !143, size: 128, offset: 8704)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !3700, file: !2109, line: 873, baseType: !3892, size: 256, offset: 8832)
!3892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !2109, line: 376, size: 256, elements: !3893)
!3893 = !{!3894, !3895, !3896, !3897}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3892, file: !2109, line: 381, baseType: !85, size: 64)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3892, file: !2109, line: 384, baseType: !860, size: 64, offset: 64)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3892, file: !2109, line: 389, baseType: !860, size: 64, offset: 128)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3892, file: !2109, line: 392, baseType: !860, size: 64, offset: 192)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3700, file: !2109, line: 875, baseType: !143, size: 128, offset: 9088)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !3700, file: !2109, line: 877, baseType: !3900, size: 320, offset: 9216)
!3900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3901, line: 86, size: 320, elements: !3902)
!3901 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3902 = !{!3903, !3904, !3905}
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3900, file: !3901, line: 87, baseType: !68, size: 32)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3900, file: !3901, line: 88, baseType: !143, size: 128, offset: 64)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3900, file: !3901, line: 89, baseType: !143, size: 128, offset: 192)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !3700, file: !2109, line: 878, baseType: !1247, size: 192, align: 64, offset: 9536)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3700, file: !2109, line: 881, baseType: !1758, size: 64, offset: 9728)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !3700, file: !2109, line: 882, baseType: !1758, size: 64, offset: 9792)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !3700, file: !2109, line: 884, baseType: !68, size: 32, offset: 9856)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !3700, file: !2109, line: 885, baseType: !68, size: 32, offset: 9888)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !3700, file: !2109, line: 886, baseType: !68, size: 32, offset: 9920)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !3700, file: !2109, line: 888, baseType: !68, size: 32, offset: 9952)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !3700, file: !2109, line: 890, baseType: !85, size: 64, offset: 9984)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !3700, file: !2109, line: 893, baseType: !7, size: 32, offset: 10048)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !3700, file: !2109, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !3700, file: !2109, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !3700, file: !2109, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !3700, file: !2109, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !3700, file: !2109, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !3700, file: !2109, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !3700, file: !2109, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !3700, file: !2109, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !3700, file: !2109, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3700, file: !2109, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !3700, file: !2109, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !3700, file: !2109, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !3700, file: !2109, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !3700, file: !2109, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !3700, file: !2109, line: 969, baseType: !85, size: 64, offset: 10176)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !3700, file: !2109, line: 971, baseType: !3931, size: 448, offset: 10240)
!3931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !262, line: 25, size: 448, elements: !3932)
!3932 = !{!3933, !3934, !3939}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3931, file: !262, line: 26, baseType: !85, size: 64)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3931, file: !262, line: 27, baseType: !3935, size: 64, offset: 64)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = !DISubroutineType(types: !3937)
!3937 = !{!304, !3938}
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3939 = !DIDerivedType(tag: DW_TAG_member, scope: !3931, file: !262, line: 28, baseType: !3940, size: 320, offset: 128)
!3940 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3931, file: !262, line: 28, size: 320, elements: !3941)
!3941 = !{!3942, !3952, !3977}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3940, file: !262, line: 37, baseType: !3943, size: 320)
!3943 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3940, file: !262, line: 30, size: 320, elements: !3944)
!3944 = !{!3945, !3947, !3948, !3949, !3950, !3951}
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3943, file: !262, line: 31, baseType: !3946, size: 64)
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3943, file: !262, line: 32, baseType: !854, size: 32, offset: 64)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3943, file: !262, line: 33, baseType: !854, size: 32, offset: 96)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3943, file: !262, line: 34, baseType: !854, size: 32, offset: 128)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3943, file: !262, line: 35, baseType: !858, size: 64, offset: 192)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3943, file: !262, line: 36, baseType: !3946, size: 64, offset: 256)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3940, file: !262, line: 47, baseType: !3953, size: 192)
!3953 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3940, file: !262, line: 39, size: 192, elements: !3954)
!3954 = !{!3955, !3956, !3957, !3976}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3953, file: !262, line: 40, baseType: !3291, size: 32)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3953, file: !262, line: 41, baseType: !261, size: 32, offset: 32)
!3957 = !DIDerivedType(tag: DW_TAG_member, scope: !3953, file: !262, line: 42, baseType: !3958, size: 64, offset: 64)
!3958 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3953, file: !262, line: 42, size: 64, elements: !3959)
!3959 = !{!3960, !3968}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3958, file: !262, line: 43, baseType: !3961, size: 64)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3963, line: 7, size: 128, elements: !3964)
!3963 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3964 = !{!3965, !3967}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3962, file: !3963, line: 8, baseType: !3966, size: 64)
!3966 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !83, line: 93, baseType: !89)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3962, file: !3963, line: 9, baseType: !89, size: 64, offset: 64)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3958, file: !262, line: 44, baseType: !3969, size: 64)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3971, line: 7, size: 64, elements: !3972)
!3971 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3972 = !{!3973, !3975}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3970, file: !3971, line: 8, baseType: !3974, size: 32)
!3974 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3971, line: 5, baseType: !1240)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3970, file: !3971, line: 9, baseType: !1240, size: 32, offset: 32)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3953, file: !262, line: 46, baseType: !858, size: 64, offset: 128)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3940, file: !262, line: 55, baseType: !3978, size: 256)
!3978 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3940, file: !262, line: 49, size: 256, elements: !3979)
!3979 = !{!3980, !3983, !3984, !3985, !3986}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3978, file: !262, line: 50, baseType: !3981, size: 64)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !262, line: 14, flags: DIFlagFwdDecl)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3978, file: !262, line: 51, baseType: !68, size: 32, offset: 64)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3978, file: !262, line: 52, baseType: !68, size: 32, offset: 96)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3978, file: !262, line: 53, baseType: !85, size: 64, offset: 128)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3978, file: !262, line: 54, baseType: !85, size: 64, offset: 192)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3700, file: !2109, line: 973, baseType: !3988, size: 32, offset: 10688)
!3988 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !71, line: 27, baseType: !3989)
!3989 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !83, line: 28, baseType: !68)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !3700, file: !2109, line: 974, baseType: !3988, size: 32, offset: 10720)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !3700, file: !2109, line: 978, baseType: !85, size: 64, offset: 10752)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !3700, file: !2109, line: 987, baseType: !3699, size: 64, offset: 10816)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3700, file: !2109, line: 990, baseType: !3699, size: 64, offset: 10880)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3700, file: !2109, line: 995, baseType: !143, size: 128, offset: 10944)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3700, file: !2109, line: 996, baseType: !143, size: 128, offset: 11072)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3700, file: !2109, line: 997, baseType: !3699, size: 64, offset: 11200)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !3700, file: !2109, line: 1005, baseType: !143, size: 128, offset: 11264)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !3700, file: !2109, line: 1006, baseType: !143, size: 128, offset: 11392)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !3700, file: !2109, line: 1009, baseType: !1163, size: 64, offset: 11520)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !3700, file: !2109, line: 1010, baseType: !4001, size: 512, offset: 11584)
!4001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1180, size: 512, elements: !1185)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !3700, file: !2109, line: 1011, baseType: !143, size: 128, offset: 12096)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !3700, file: !2109, line: 1012, baseType: !143, size: 128, offset: 12224)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !3700, file: !2109, line: 1014, baseType: !1484, size: 64, offset: 12352)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !3700, file: !2109, line: 1017, baseType: !2491, size: 64, offset: 12416)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !3700, file: !2109, line: 1020, baseType: !2491, size: 64, offset: 12480)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !3700, file: !2109, line: 1023, baseType: !66, size: 64, offset: 12544)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3700, file: !2109, line: 1025, baseType: !858, size: 64, offset: 12608)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3700, file: !2109, line: 1026, baseType: !858, size: 64, offset: 12672)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3700, file: !2109, line: 1031, baseType: !858, size: 64, offset: 12736)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3700, file: !2109, line: 1032, baseType: !4012, size: 192, offset: 12800)
!4012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !2109, line: 324, size: 192, elements: !4013)
!4013 = !{!4014, !4015, !4016}
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4012, file: !2109, line: 326, baseType: !858, size: 64)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4012, file: !2109, line: 327, baseType: !858, size: 64, offset: 64)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4012, file: !2109, line: 328, baseType: !1129, size: 32, offset: 128)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3700, file: !2109, line: 1041, baseType: !85, size: 64, offset: 12992)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3700, file: !2109, line: 1042, baseType: !85, size: 64, offset: 13056)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !3700, file: !2109, line: 1045, baseType: !858, size: 64, offset: 13120)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !3700, file: !2109, line: 1048, baseType: !858, size: 64, offset: 13184)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3700, file: !2109, line: 1051, baseType: !85, size: 64, offset: 13248)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3700, file: !2109, line: 1052, baseType: !85, size: 64, offset: 13312)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3700, file: !2109, line: 1055, baseType: !4024, size: 640, offset: 13376)
!4024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !4025, line: 132, size: 640, elements: !4026)
!4025 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!4026 = !{!4027, !4033, !4034}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !4024, file: !4025, line: 133, baseType: !4028, size: 576)
!4028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4029, size: 576, elements: !1025)
!4029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !4025, line: 117, size: 192, elements: !4030)
!4030 = !{!4031, !4032}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !4029, file: !4025, line: 118, baseType: !858, size: 64)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !4029, file: !4025, line: 119, baseType: !3300, size: 128, offset: 64)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !4024, file: !4025, line: 134, baseType: !7, size: 32, offset: 576)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !4024, file: !4025, line: 135, baseType: !7, size: 32, offset: 608)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !3700, file: !2109, line: 1058, baseType: !4036, size: 448, offset: 14016)
!4036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !4025, line: 144, size: 448, elements: !4037)
!4037 = !{!4038, !4039, !4040}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4036, file: !4025, line: 145, baseType: !377, size: 128, align: 64)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4036, file: !4025, line: 146, baseType: !1124, size: 256, offset: 128)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !4036, file: !4025, line: 147, baseType: !7, size: 32, offset: 384)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !3700, file: !2109, line: 1064, baseType: !1205, size: 64, offset: 14464)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !3700, file: !2109, line: 1067, baseType: !1205, size: 64, offset: 14528)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3700, file: !2109, line: 1070, baseType: !1205, size: 64, offset: 14592)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !3700, file: !2109, line: 1074, baseType: !1232, size: 64, offset: 14656)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3700, file: !2109, line: 1084, baseType: !4046, size: 128, offset: 14720)
!4046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 128, elements: !363)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !3700, file: !2109, line: 1086, baseType: !4048, size: 64, offset: 14848)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !2109, line: 55, flags: DIFlagFwdDecl)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !3700, file: !2109, line: 1089, baseType: !4051, size: 64, offset: 14912)
!4051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !4052, line: 12, size: 64, elements: !4053)
!4052 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!4053 = !{!4054}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !4051, file: !4052, line: 13, baseType: !4055, size: 64)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !4052, line: 8, flags: DIFlagFwdDecl)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !3700, file: !2109, line: 1090, baseType: !4058, size: 128, offset: 14976)
!4058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !4059, line: 13, size: 128, elements: !4060)
!4059 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!4060 = !{!4061}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !4058, file: !4059, line: 14, baseType: !143, size: 128)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3700, file: !2109, line: 1097, baseType: !4063, size: 64, offset: 15104)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !2109, line: 50, flags: DIFlagFwdDecl)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3700, file: !2109, line: 1100, baseType: !4066, size: 64, offset: 15168)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4067 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !2109, line: 1100, flags: DIFlagFwdDecl)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !3700, file: !2109, line: 1103, baseType: !4069, size: 64, offset: 15232)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !2109, line: 53, flags: DIFlagFwdDecl)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3700, file: !2109, line: 1107, baseType: !4072, size: 64, offset: 15296)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !4074, line: 31, size: 576, elements: !4075)
!4074 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!4075 = !{!4076, !4077, !4080, !4083, !4086, !4087, !4090, !4093, !4094}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4073, file: !4074, line: 32, baseType: !1167, size: 32)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !4073, file: !4074, line: 33, baseType: !4078, size: 64, offset: 64)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !4074, line: 9, flags: DIFlagFwdDecl)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !4073, file: !4074, line: 34, baseType: !4081, size: 64, offset: 128)
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !4074, line: 10, flags: DIFlagFwdDecl)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !4073, file: !4074, line: 35, baseType: !4084, size: 64, offset: 192)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !4074, line: 8, flags: DIFlagFwdDecl)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !4073, file: !4074, line: 36, baseType: !1196, size: 64, offset: 256)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !4073, file: !4074, line: 37, baseType: !4088, size: 64, offset: 320)
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1234, line: 34, flags: DIFlagFwdDecl)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !4073, file: !4074, line: 38, baseType: !4091, size: 64, offset: 384)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !4074, line: 38, flags: DIFlagFwdDecl)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !4073, file: !4074, line: 39, baseType: !4091, size: 64, offset: 448)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !4073, file: !4074, line: 40, baseType: !4095, size: 64, offset: 512)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !4097, line: 771, size: 384, elements: !4098)
!4097 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!4098 = !{!4099, !4100, !4101, !4102}
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4096, file: !4097, line: 772, baseType: !1430, size: 192)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !4096, file: !4097, line: 773, baseType: !1397, size: 64, offset: 192)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !4096, file: !4097, line: 774, baseType: !1532, size: 64, offset: 256)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !4096, file: !4097, line: 775, baseType: !4103, size: 64, offset: 320)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !4105, line: 209, size: 4736, elements: !4106)
!4105 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!4106 = !{!4107, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386}
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !4104, file: !4105, line: 215, baseType: !4108, size: 896)
!4108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4109, size: 896, elements: !4164)
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !4105, line: 152, size: 1600, elements: !4111)
!4111 = !{!4112, !4215, !4330, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4365}
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !4110, file: !4105, line: 154, baseType: !4113, size: 64)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !4105, line: 389, size: 7872, elements: !4115)
!4115 = !{!4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4135, !4136, !4138, !4139, !4140, !4141, !4142, !4143, !4161, !4162, !4166, !4167, !4168, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4202, !4205, !4206, !4213}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4114, file: !4105, line: 391, baseType: !4110, size: 1600)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4114, file: !4105, line: 393, baseType: !85, size: 64, offset: 1600)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4114, file: !4105, line: 401, baseType: !68, size: 32, offset: 1664)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !4114, file: !4105, line: 404, baseType: !68, size: 32, offset: 1696)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !4114, file: !4105, line: 417, baseType: !68, size: 32, offset: 1728)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !4114, file: !4105, line: 418, baseType: !68, size: 32, offset: 1760)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !4114, file: !4105, line: 419, baseType: !68, size: 32, offset: 1792)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !4114, file: !4105, line: 432, baseType: !68, size: 32, offset: 1824)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !4114, file: !4105, line: 433, baseType: !68, size: 32, offset: 1856)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !4114, file: !4105, line: 434, baseType: !68, size: 32, offset: 1888)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !4114, file: !4105, line: 436, baseType: !68, size: 32, offset: 1920)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !4114, file: !4105, line: 439, baseType: !7, size: 32, offset: 1952)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4114, file: !4105, line: 441, baseType: !2248, size: 64, offset: 1984)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !4114, file: !4105, line: 442, baseType: !4130, size: 448, offset: 2048)
!4130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !4105, line: 138, size: 448, elements: !4131)
!4131 = !{!4132, !4133, !4134}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4130, file: !4105, line: 140, baseType: !2248, size: 64)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !4130, file: !4105, line: 141, baseType: !85, size: 64, offset: 64)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !4130, file: !4105, line: 142, baseType: !2590, size: 320, offset: 128)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !4114, file: !4105, line: 443, baseType: !4130, size: 448, offset: 2496)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !4114, file: !4105, line: 446, baseType: !4137, offset: 2944)
!4137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4130, elements: !391)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !4114, file: !4105, line: 455, baseType: !139, size: 16, offset: 2944)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !4114, file: !4105, line: 456, baseType: !139, size: 16, offset: 2960)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !4114, file: !4105, line: 457, baseType: !139, size: 16, offset: 2976)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !4114, file: !4105, line: 458, baseType: !139, size: 16, offset: 2992)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !4114, file: !4105, line: 461, baseType: !4108, size: 896, offset: 3008)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4114, file: !4105, line: 463, baseType: !4144, size: 64, offset: 3904)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !4105, line: 537, size: 41664, elements: !4146)
!4146 = !{!4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4160}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !4145, file: !4105, line: 538, baseType: !2268, size: 64)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !4145, file: !4105, line: 541, baseType: !7, size: 32, offset: 64)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !4145, file: !4105, line: 544, baseType: !68, size: 32, offset: 96)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !4145, file: !4105, line: 547, baseType: !143, size: 128, offset: 128)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4145, file: !4105, line: 548, baseType: !377, size: 128, align: 64, offset: 256)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !4145, file: !4105, line: 555, baseType: !4114, size: 7872, offset: 384)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !4145, file: !4105, line: 558, baseType: !4113, size: 64, offset: 8256)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !4145, file: !4105, line: 561, baseType: !95, size: 32, offset: 8320)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4145, file: !4105, line: 564, baseType: !7, size: 32, offset: 8352)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !4145, file: !4105, line: 567, baseType: !4157, size: 32768, offset: 8384)
!4157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 32768, elements: !4158)
!4158 = !{!4159}
!4159 = !DISubrange(count: 4096)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4145, file: !4105, line: 570, baseType: !3625, size: 512, offset: 41152)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !4114, file: !4105, line: 469, baseType: !143, size: 128, offset: 3968)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !4114, file: !4105, line: 478, baseType: !4163, size: 1792, offset: 4096)
!4163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 1792, elements: !4164)
!4164 = !{!4165}
!4165 = !DISubrange(count: 14)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !4114, file: !4105, line: 487, baseType: !4113, size: 64, offset: 5888)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !4114, file: !4105, line: 488, baseType: !4113, size: 64, offset: 5952)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !4114, file: !4105, line: 491, baseType: !4169, size: 64, offset: 6016)
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4170, size: 64)
!4170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !4105, line: 327, size: 896, elements: !4171)
!4171 = !{!4172, !4175, !4185, !4186, !4187, !4188, !4189}
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !4170, file: !4105, line: 332, baseType: !4173)
!4173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !4174, line: 64, elements: !1779)
!4174 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !4170, file: !4105, line: 333, baseType: !4176, size: 192)
!4176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !4105, line: 299, size: 192, elements: !4177)
!4177 = !{!4178}
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !4176, file: !4105, line: 300, baseType: !4179, size: 192)
!4179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !4180, line: 17, size: 192, elements: !4181)
!4180 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!4181 = !{!4182, !4183, !4184}
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4179, file: !4180, line: 18, baseType: !858, size: 64)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4179, file: !4180, line: 19, baseType: !858, size: 64, offset: 64)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4179, file: !4180, line: 20, baseType: !860, size: 64, offset: 128)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !4170, file: !4105, line: 339, baseType: !4176, size: 192, offset: 192)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !4170, file: !4105, line: 347, baseType: !4176, size: 192, offset: 384)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !4170, file: !4105, line: 353, baseType: !4176, size: 192, offset: 576)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !4170, file: !4105, line: 366, baseType: !4113, size: 64, offset: 768)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !4170, file: !4105, line: 367, baseType: !4113, size: 64, offset: 832)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !4114, file: !4105, line: 492, baseType: !143, size: 128, offset: 6080)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !4114, file: !4105, line: 495, baseType: !4176, size: 192, offset: 6208)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !4114, file: !4105, line: 496, baseType: !4176, size: 192, offset: 6400)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4114, file: !4105, line: 497, baseType: !4012, size: 192, offset: 6592)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !4114, file: !4105, line: 503, baseType: !143, size: 128, offset: 6784)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !4114, file: !4105, line: 504, baseType: !1124, size: 256, offset: 6912)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !4114, file: !4105, line: 507, baseType: !100, size: 192, offset: 7168)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !4114, file: !4105, line: 510, baseType: !1446, size: 256, offset: 7360)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !4114, file: !4105, line: 513, baseType: !4199, size: 64, offset: 7616)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !4201, line: 214, elements: !1779)
!4201 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !4114, file: !4105, line: 516, baseType: !4203, offset: 7680)
!4203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !4204, line: 76, elements: !1779)
!4204 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !4114, file: !4105, line: 519, baseType: !95, size: 32, offset: 7680)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !4114, file: !4105, line: 522, baseType: !4207, size: 128, offset: 7712)
!4207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !4105, line: 370, size: 128, elements: !4208)
!4208 = !{!4209, !4210, !4211, !4212}
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4207, file: !4105, line: 372, baseType: !1314, size: 8)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !4207, file: !4105, line: 375, baseType: !68, size: 32, offset: 32)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !4207, file: !4105, line: 380, baseType: !68, size: 32, offset: 64)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !4207, file: !4105, line: 386, baseType: !68, size: 32, offset: 96)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !4114, file: !4105, line: 529, baseType: !4214, offset: 7872)
!4214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4113, elements: !1198)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4110, file: !4105, line: 157, baseType: !4216, size: 64, offset: 64)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !4105, line: 669, size: 1984, elements: !4218)
!4218 = !{!4219, !4223, !4227, !4231, !4232, !4233, !4234, !4238, !4242, !4243, !4249, !4253, !4254, !4255, !4259, !4263, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4290, !4291, !4328, !4329}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !4217, file: !4105, line: 670, baseType: !4220, size: 64)
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4221, size: 64)
!4221 = !DISubroutineType(types: !4222)
!4222 = !{!4109, !4109}
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !4217, file: !4105, line: 671, baseType: !4224, size: 64, offset: 64)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = !DISubroutineType(types: !4226)
!4226 = !{!68, !4109}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !4217, file: !4105, line: 672, baseType: !4228, size: 64, offset: 128)
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4229, size: 64)
!4229 = !DISubroutineType(types: !4230)
!4230 = !{null, !4109}
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !4217, file: !4105, line: 673, baseType: !4228, size: 64, offset: 192)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !4217, file: !4105, line: 674, baseType: !4228, size: 64, offset: 256)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !4217, file: !4105, line: 675, baseType: !4228, size: 64, offset: 320)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !4217, file: !4105, line: 676, baseType: !4235, size: 64, offset: 384)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = !DISubroutineType(types: !4237)
!4237 = !{null, !4109, !68}
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !4217, file: !4105, line: 677, baseType: !4239, size: 64, offset: 448)
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = !DISubroutineType(types: !4241)
!4241 = !{!68, !2132, !4109}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !4217, file: !4105, line: 679, baseType: !4239, size: 64, offset: 512)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !4217, file: !4105, line: 682, baseType: !4244, size: 64, offset: 576)
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4245 = !DISubroutineType(types: !4246)
!4246 = !{!68, !4247}
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4248 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !4105, line: 30, flags: DIFlagFwdDecl)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !4217, file: !4105, line: 683, baseType: !4250, size: 64, offset: 640)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = !DISubroutineType(types: !4252)
!4252 = !{null, !4247}
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4217, file: !4105, line: 684, baseType: !4250, size: 64, offset: 704)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !4217, file: !4105, line: 685, baseType: !2693, size: 64, offset: 768)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !4217, file: !4105, line: 686, baseType: !4256, size: 64, offset: 832)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{!68, !3699, !4103}
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !4217, file: !4105, line: 688, baseType: !4260, size: 64, offset: 896)
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = !DISubroutineType(types: !4262)
!4262 = !{null, !3699, !4103}
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !4217, file: !4105, line: 689, baseType: !4264, size: 64, offset: 960)
!4264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4265, size: 64)
!4265 = !DISubroutineType(types: !4266)
!4266 = !{null, !3699}
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4217, file: !4105, line: 690, baseType: !4264, size: 64, offset: 1024)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4217, file: !4105, line: 691, baseType: !4264, size: 64, offset: 1088)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !4217, file: !4105, line: 692, baseType: !4228, size: 64, offset: 1152)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4217, file: !4105, line: 694, baseType: !1314, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !4217, file: !4105, line: 707, baseType: !1314, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !4217, file: !4105, line: 719, baseType: !1314, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4217, file: !4105, line: 722, baseType: !68, size: 32, offset: 1248)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4217, file: !4105, line: 723, baseType: !62, size: 64, offset: 1280)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !4217, file: !4105, line: 726, baseType: !62, size: 64, offset: 1344)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4217, file: !4105, line: 729, baseType: !4144, size: 64, offset: 1408)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !4217, file: !4105, line: 732, baseType: !4278, size: 192, offset: 1472)
!4278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !4279, line: 19, size: 192, elements: !4280)
!4279 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!4280 = !{!4281, !4288, !4289}
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !4278, file: !4279, line: 20, baseType: !4282, size: 128)
!4282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !4283, line: 296, size: 128, elements: !4284)
!4283 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!4284 = !{!4285, !4286, !4287}
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !4282, file: !4283, line: 297, baseType: !105, size: 32)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !4282, file: !4283, line: 299, baseType: !305, size: 32, offset: 32)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !4282, file: !4283, line: 300, baseType: !66, size: 64, offset: 64)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !4278, file: !4279, line: 21, baseType: !7, size: 32, offset: 128)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !4278, file: !4279, line: 22, baseType: !7, size: 32, offset: 160)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !4217, file: !4105, line: 738, baseType: !143, size: 128, offset: 1664)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !4217, file: !4105, line: 744, baseType: !4292, size: 64, offset: 1792)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !4105, line: 580, size: 1728, elements: !4294)
!4294 = !{!4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4304, !4305, !4306, !4310, !4314, !4315, !4316, !4317, !4318, !4322, !4326, !4327}
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4293, file: !4105, line: 586, baseType: !3625, size: 512)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4293, file: !4105, line: 587, baseType: !85, size: 64, offset: 512)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4293, file: !4105, line: 593, baseType: !81, size: 64, offset: 576)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4293, file: !4105, line: 596, baseType: !7, size: 32, offset: 640)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !4293, file: !4105, line: 604, baseType: !7, size: 32, offset: 672)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4293, file: !4105, line: 610, baseType: !4216, size: 64, offset: 704)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4293, file: !4105, line: 611, baseType: !143, size: 128, offset: 768)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !4293, file: !4105, line: 612, baseType: !4303, size: 64, offset: 896)
!4303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4293, file: !4105, line: 614, baseType: !2284, size: 64, offset: 960)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4293, file: !4105, line: 615, baseType: !2304, size: 64, offset: 1024)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !4293, file: !4105, line: 621, baseType: !4307, size: 64, offset: 1088)
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4308, size: 64)
!4308 = !DISubroutineType(types: !4309)
!4309 = !{!858, !4109, !4292}
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !4293, file: !4105, line: 625, baseType: !4311, size: 64, offset: 1152)
!4311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4312, size: 64)
!4312 = !DISubroutineType(types: !4313)
!4313 = !{!1121, !4109, !4292}
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4293, file: !4105, line: 628, baseType: !2162, size: 64, offset: 1216)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4293, file: !4105, line: 631, baseType: !2150, size: 64, offset: 1280)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4293, file: !4105, line: 632, baseType: !2158, size: 64, offset: 1344)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4293, file: !4105, line: 633, baseType: !2154, size: 64, offset: 1408)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !4293, file: !4105, line: 640, baseType: !4319, size: 64, offset: 1472)
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 64)
!4320 = !DISubroutineType(types: !4321)
!4321 = !{!68, !4109, !4292, !858}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !4293, file: !4105, line: 645, baseType: !4323, size: 64, offset: 1536)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = !DISubroutineType(types: !4325)
!4325 = !{!68, !4109, !4292, !1121}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4293, file: !4105, line: 654, baseType: !2312, size: 64, offset: 1600)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4293, file: !4105, line: 657, baseType: !2319, size: 64, offset: 1664)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !4217, file: !4105, line: 745, baseType: !4292, size: 64, offset: 1856)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !4217, file: !4105, line: 754, baseType: !7, size: 32, offset: 1920)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4110, file: !4105, line: 160, baseType: !4331, size: 128, offset: 128)
!4331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !4332, line: 105, size: 128, elements: !4333)
!4332 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!4333 = !{!4334, !4335}
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !4331, file: !4332, line: 110, baseType: !85, size: 64)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4331, file: !4332, line: 118, baseType: !4336, size: 64, offset: 64)
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4337, size: 64)
!4337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !4332, line: 95, size: 448, elements: !4338)
!4338 = !{!4339, !4340, !4346, !4347, !4348, !4349, !4350}
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4337, file: !4332, line: 96, baseType: !1115, size: 64)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4337, file: !4332, line: 97, baseType: !4341, size: 64, offset: 64)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4342 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !4332, line: 60, baseType: !4343)
!4343 = !DISubroutineType(types: !4344)
!4344 = !{null, !4345}
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4331, size: 64)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !4337, file: !4332, line: 98, baseType: !4341, size: 64, offset: 128)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !4337, file: !4332, line: 99, baseType: !1314, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !4337, file: !4332, line: 100, baseType: !1314, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4337, file: !4332, line: 101, baseType: !377, size: 128, align: 64, offset: 256)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4337, file: !4332, line: 102, baseType: !4345, size: 64, offset: 384)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4110, file: !4105, line: 163, baseType: !143, size: 128, offset: 256)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4110, file: !4105, line: 164, baseType: !143, size: 128, offset: 384)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !4110, file: !4105, line: 167, baseType: !143, size: 128, offset: 512)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4110, file: !4105, line: 173, baseType: !68, size: 32, offset: 640)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4110, file: !4105, line: 175, baseType: !7, size: 32, offset: 672)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !4110, file: !4105, line: 183, baseType: !858, size: 64, offset: 704)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !4110, file: !4105, line: 189, baseType: !95, size: 32, offset: 768)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !4110, file: !4105, line: 192, baseType: !1446, size: 256, offset: 832)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !4110, file: !4105, line: 193, baseType: !4360, size: 448, offset: 1088)
!4360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1447, line: 120, size: 448, elements: !4361)
!4361 = !{!4362, !4363, !4364}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4360, file: !1447, line: 121, baseType: !1446, size: 256)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4360, file: !1447, line: 122, baseType: !377, size: 128, align: 64, offset: 256)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4360, file: !1447, line: 125, baseType: !2652, size: 64, offset: 384)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4110, file: !4105, line: 199, baseType: !4109, size: 64, offset: 1536)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4104, file: !4105, line: 218, baseType: !1167, size: 32, offset: 896)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !4104, file: !4105, line: 226, baseType: !4103, size: 64, offset: 960)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !4104, file: !4105, line: 229, baseType: !4113, size: 64, offset: 1024)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !4104, file: !4105, line: 232, baseType: !68, size: 32, offset: 1088)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !4104, file: !4105, line: 241, baseType: !143, size: 128, offset: 1152)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !4104, file: !4105, line: 242, baseType: !143, size: 128, offset: 1280)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !4104, file: !4105, line: 243, baseType: !143, size: 128, offset: 1408)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !4104, file: !4105, line: 246, baseType: !143, size: 128, offset: 1536)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !4104, file: !4105, line: 255, baseType: !4163, size: 1792, offset: 1664)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !4104, file: !4105, line: 258, baseType: !143, size: 128, offset: 3456)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !4104, file: !4105, line: 259, baseType: !143, size: 128, offset: 3584)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !4104, file: !4105, line: 265, baseType: !1180, size: 128, offset: 3712)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !4104, file: !4105, line: 271, baseType: !143, size: 128, offset: 3840)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !4104, file: !4105, line: 277, baseType: !143, size: 128, offset: 3968)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !4104, file: !4105, line: 278, baseType: !143, size: 128, offset: 4096)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !4104, file: !4105, line: 279, baseType: !143, size: 128, offset: 4224)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !4104, file: !4105, line: 288, baseType: !4113, size: 64, offset: 4352)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !4104, file: !4105, line: 289, baseType: !4113, size: 64, offset: 4416)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !4104, file: !4105, line: 290, baseType: !4103, size: 64, offset: 4480)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !4104, file: !4105, line: 293, baseType: !1314, size: 8, offset: 4544)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !4104, file: !4105, line: 296, baseType: !377, size: 128, align: 64, offset: 4608)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3700, file: !2109, line: 1110, baseType: !4388, size: 64, offset: 15360)
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4389, size: 64)
!4389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !4390, line: 93, size: 8768, elements: !4391)
!4390 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!4391 = !{!4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4440, !4449, !4450, !4452, !4453, !4454, !4457, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4495, !4496, !4503, !4513, !4576, !4577, !4580, !4581, !4582, !4583, !4584, !4585}
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !4389, file: !4390, line: 94, baseType: !1167, size: 32)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !4389, file: !4390, line: 95, baseType: !95, size: 32, offset: 32)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4389, file: !4390, line: 96, baseType: !68, size: 32, offset: 64)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !4389, file: !4390, line: 97, baseType: !68, size: 32, offset: 96)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !4389, file: !4390, line: 98, baseType: !143, size: 128, offset: 128)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !4389, file: !4390, line: 100, baseType: !100, size: 192, offset: 256)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !4389, file: !4390, line: 103, baseType: !3699, size: 64, offset: 448)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !4389, file: !4390, line: 106, baseType: !4400, size: 192, offset: 512)
!4400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !4401, line: 32, size: 192, elements: !4402)
!4401 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!4402 = !{!4403, !4404}
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4400, file: !4401, line: 33, baseType: !143, size: 128)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4400, file: !4401, line: 34, baseType: !4405, size: 64, offset: 128)
!4405 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !4406, line: 25, baseType: !4407)
!4406 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!4407 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4406, line: 23, size: 64, elements: !4408)
!4408 = !{!4409}
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !4407, file: !4406, line: 24, baseType: !386, size: 64)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !4389, file: !4390, line: 109, baseType: !1176, size: 64, offset: 704)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !4389, file: !4390, line: 112, baseType: !68, size: 32, offset: 768)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !4389, file: !4390, line: 114, baseType: !68, size: 32, offset: 800)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !4389, file: !4390, line: 115, baseType: !3699, size: 64, offset: 832)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !4389, file: !4390, line: 118, baseType: !68, size: 32, offset: 896)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4389, file: !4390, line: 119, baseType: !7, size: 32, offset: 928)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !4389, file: !4390, line: 121, baseType: !4417, size: 64, offset: 960)
!4417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4418, size: 64)
!4418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !4390, line: 80, size: 448, elements: !4419)
!4419 = !{!4420, !4421, !4427}
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4418, file: !4390, line: 81, baseType: !95, size: 32)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !4418, file: !4390, line: 82, baseType: !4422, size: 128, offset: 64)
!4422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !4390, line: 75, size: 128, elements: !4423)
!4423 = !{!4424, !4425}
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4422, file: !4390, line: 76, baseType: !3699, size: 64)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4422, file: !4390, line: 77, baseType: !4426, size: 64, offset: 64)
!4426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4422, size: 64)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !4418, file: !4390, line: 83, baseType: !1485, size: 256, offset: 192)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !4389, file: !4390, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !4389, file: !4390, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !4389, file: !4390, line: 138, baseType: !7, size: 32, offset: 1056)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !4389, file: !4390, line: 139, baseType: !143, size: 128, offset: 1088)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !4389, file: !4390, line: 142, baseType: !3246, size: 512, offset: 1216)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !4389, file: !4390, line: 143, baseType: !3226, size: 64, offset: 1728)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !4389, file: !4390, line: 150, baseType: !4435, size: 256, offset: 1792)
!4435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4436, size: 256, elements: !2481)
!4436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !4390, line: 38, size: 128, elements: !4437)
!4437 = !{!4438, !4439}
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4436, file: !4390, line: 39, baseType: !858, size: 64)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !4436, file: !4390, line: 40, baseType: !858, size: 64, offset: 64)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !4389, file: !4390, line: 156, baseType: !4441, size: 192, offset: 2048)
!4441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !4390, line: 66, size: 192, elements: !4442)
!4442 = !{!4443}
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !4441, file: !4390, line: 67, baseType: !4444, size: 192)
!4444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !4390, line: 47, size: 192, elements: !4445)
!4445 = !{!4446, !4447, !4448}
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4444, file: !4390, line: 48, baseType: !1117, size: 64)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4444, file: !4390, line: 49, baseType: !1117, size: 64, offset: 64)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4444, file: !4390, line: 50, baseType: !1117, size: 64, offset: 128)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !4389, file: !4390, line: 160, baseType: !4024, size: 640, offset: 2240)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !4389, file: !4390, line: 163, baseType: !4451, size: 256, offset: 2880)
!4451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1163, size: 256, elements: !1185)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !4389, file: !4390, line: 169, baseType: !1163, size: 64, offset: 3136)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !4389, file: !4390, line: 172, baseType: !68, size: 32, offset: 3200)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !4389, file: !4390, line: 174, baseType: !4455, size: 64, offset: 3264)
!4455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4456, size: 64)
!4456 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !4390, line: 174, flags: DIFlagFwdDecl)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !4389, file: !4390, line: 185, baseType: !4458, size: 64, offset: 3328)
!4458 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !827, line: 860, baseType: !4459)
!4459 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !827, line: 853, size: 64, elements: !4460)
!4460 = !{!4461, !4462}
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !4459, file: !827, line: 858, baseType: !826, size: 32)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4459, file: !827, line: 859, baseType: !105, size: 32, offset: 32)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4389, file: !4390, line: 186, baseType: !858, size: 64, offset: 3392)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4389, file: !4390, line: 186, baseType: !858, size: 64, offset: 3456)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !4389, file: !4390, line: 186, baseType: !858, size: 64, offset: 3520)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !4389, file: !4390, line: 186, baseType: !858, size: 64, offset: 3584)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !4389, file: !4390, line: 187, baseType: !858, size: 64, offset: 3648)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !4389, file: !4390, line: 188, baseType: !858, size: 64, offset: 3712)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4389, file: !4390, line: 189, baseType: !4012, size: 192, offset: 3776)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4389, file: !4390, line: 190, baseType: !85, size: 64, offset: 3968)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4389, file: !4390, line: 190, baseType: !85, size: 64, offset: 4032)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !4389, file: !4390, line: 190, baseType: !85, size: 64, offset: 4096)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !4389, file: !4390, line: 190, baseType: !85, size: 64, offset: 4160)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !4389, file: !4390, line: 191, baseType: !85, size: 64, offset: 4224)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !4389, file: !4390, line: 191, baseType: !85, size: 64, offset: 4288)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !4389, file: !4390, line: 191, baseType: !85, size: 64, offset: 4352)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !4389, file: !4390, line: 191, baseType: !85, size: 64, offset: 4416)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !4389, file: !4390, line: 192, baseType: !85, size: 64, offset: 4480)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !4389, file: !4390, line: 192, baseType: !85, size: 64, offset: 4544)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !4389, file: !4390, line: 192, baseType: !85, size: 64, offset: 4608)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !4389, file: !4390, line: 192, baseType: !85, size: 64, offset: 4672)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !4389, file: !4390, line: 193, baseType: !85, size: 64, offset: 4736)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !4389, file: !4390, line: 193, baseType: !85, size: 64, offset: 4800)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !4389, file: !4390, line: 194, baseType: !4485, size: 448, offset: 4864)
!4485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !4486, line: 12, size: 448, elements: !4487)
!4486 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!4487 = !{!4488, !4489, !4490, !4491, !4492, !4493, !4494}
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !4485, file: !4486, line: 15, baseType: !858, size: 64)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !4485, file: !4486, line: 17, baseType: !858, size: 64, offset: 64)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !4485, file: !4486, line: 19, baseType: !858, size: 64, offset: 128)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !4485, file: !4486, line: 21, baseType: !858, size: 64, offset: 192)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4485, file: !4486, line: 29, baseType: !858, size: 64, offset: 256)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4485, file: !4486, line: 35, baseType: !858, size: 64, offset: 320)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4485, file: !4486, line: 44, baseType: !858, size: 64, offset: 384)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !4389, file: !4390, line: 202, baseType: !860, size: 64, offset: 5312)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !4389, file: !4390, line: 213, baseType: !4497, size: 2048, offset: 5376)
!4497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4498, size: 2048, elements: !363)
!4498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !4499, line: 43, size: 128, elements: !4500)
!4499 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!4500 = !{!4501, !4502}
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !4498, file: !4499, line: 44, baseType: !84, size: 64)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !4498, file: !4499, line: 45, baseType: !84, size: 64, offset: 64)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !4389, file: !4390, line: 216, baseType: !4504, size: 448, offset: 7424)
!4504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !4390, line: 30, size: 448, elements: !4505)
!4505 = !{!4506, !4507, !4508, !4509, !4510, !4511, !4512}
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4504, file: !4390, line: 31, baseType: !68, size: 32)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4504, file: !4390, line: 32, baseType: !304, size: 64, offset: 64)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !4504, file: !4390, line: 33, baseType: !85, size: 64, offset: 128)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4504, file: !4390, line: 34, baseType: !858, size: 64, offset: 192)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4504, file: !4390, line: 34, baseType: !858, size: 64, offset: 256)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4504, file: !4390, line: 35, baseType: !85, size: 64, offset: 320)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4504, file: !4390, line: 35, baseType: !85, size: 64, offset: 384)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !4389, file: !4390, line: 219, baseType: !4514, size: 64, offset: 7872)
!4514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4515, size: 64)
!4515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !4516, line: 41, size: 3456, elements: !4517)
!4516 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!4517 = !{!4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4532, !4533, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575}
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4515, file: !4516, line: 47, baseType: !140, size: 16)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4515, file: !4516, line: 48, baseType: !855, size: 32, offset: 32)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4515, file: !4516, line: 54, baseType: !131, size: 8, offset: 64)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !4515, file: !4516, line: 55, baseType: !131, size: 8, offset: 72)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !4515, file: !4516, line: 73, baseType: !859, size: 64, align: 64, offset: 128)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !4515, file: !4516, line: 74, baseType: !859, size: 64, offset: 192)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !4515, file: !4516, line: 81, baseType: !859, size: 64, offset: 256)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !4515, file: !4516, line: 82, baseType: !859, size: 64, offset: 320)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !4515, file: !4516, line: 85, baseType: !859, size: 64, offset: 384)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !4515, file: !4516, line: 86, baseType: !859, size: 64, offset: 448)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !4515, file: !4516, line: 94, baseType: !859, size: 64, offset: 512)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !4515, file: !4516, line: 102, baseType: !859, size: 64, offset: 576)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !4515, file: !4516, line: 107, baseType: !4531, size: 256, offset: 640)
!4531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 256, elements: !867)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !4515, file: !4516, line: 108, baseType: !131, size: 8, align: 64, offset: 896)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !4515, file: !4516, line: 110, baseType: !4534, size: 24, offset: 904)
!4534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 24, elements: !1025)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !4515, file: !4516, line: 111, baseType: !855, size: 32, align: 64, offset: 960)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !4515, file: !4516, line: 113, baseType: !855, size: 32, offset: 992)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !4515, file: !4516, line: 114, baseType: !855, size: 32, offset: 1024)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !4515, file: !4516, line: 115, baseType: !855, size: 32, offset: 1056)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !4515, file: !4516, line: 117, baseType: !855, size: 32, offset: 1088)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !4515, file: !4516, line: 118, baseType: !859, size: 64, align: 64, offset: 1152)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4515, file: !4516, line: 120, baseType: !859, size: 64, offset: 1216)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4515, file: !4516, line: 121, baseType: !859, size: 64, offset: 1280)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4515, file: !4516, line: 122, baseType: !859, size: 64, offset: 1344)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4515, file: !4516, line: 123, baseType: !859, size: 64, offset: 1408)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !4515, file: !4516, line: 133, baseType: !859, size: 64, offset: 1472)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !4515, file: !4516, line: 137, baseType: !859, size: 64, offset: 1536)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !4515, file: !4516, line: 142, baseType: !859, size: 64, offset: 1600)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !4515, file: !4516, line: 143, baseType: !859, size: 64, offset: 1664)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !4515, file: !4516, line: 146, baseType: !859, size: 64, offset: 1728)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !4515, file: !4516, line: 147, baseType: !859, size: 64, offset: 1792)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !4515, file: !4516, line: 148, baseType: !859, size: 64, offset: 1856)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !4515, file: !4516, line: 149, baseType: !859, size: 64, offset: 1920)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4515, file: !4516, line: 154, baseType: !859, size: 64, offset: 1984)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4515, file: !4516, line: 155, baseType: !859, size: 64, offset: 2048)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4515, file: !4516, line: 156, baseType: !859, size: 64, offset: 2112)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4515, file: !4516, line: 158, baseType: !859, size: 64, offset: 2176)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4515, file: !4516, line: 159, baseType: !859, size: 64, offset: 2240)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !4515, file: !4516, line: 162, baseType: !859, size: 64, offset: 2304)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !4515, file: !4516, line: 163, baseType: !859, size: 64, offset: 2368)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !4515, file: !4516, line: 164, baseType: !859, size: 64, offset: 2432)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !4515, file: !4516, line: 167, baseType: !859, size: 64, offset: 2496)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !4515, file: !4516, line: 168, baseType: !859, size: 64, offset: 2560)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !4515, file: !4516, line: 171, baseType: !859, size: 64, offset: 2624)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !4515, file: !4516, line: 172, baseType: !859, size: 64, offset: 2688)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !4515, file: !4516, line: 175, baseType: !859, size: 64, offset: 2752)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !4515, file: !4516, line: 178, baseType: !859, size: 64, offset: 2816)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !4515, file: !4516, line: 179, baseType: !859, size: 64, offset: 2880)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !4515, file: !4516, line: 182, baseType: !855, size: 32, offset: 2944)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !4515, file: !4516, line: 186, baseType: !859, size: 64, align: 64, offset: 3008)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !4515, file: !4516, line: 194, baseType: !859, size: 64, offset: 3072)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !4515, file: !4516, line: 195, baseType: !859, size: 64, offset: 3136)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !4515, file: !4516, line: 199, baseType: !859, size: 64, offset: 3200)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !4515, file: !4516, line: 200, baseType: !859, size: 64, offset: 3264)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !4515, file: !4516, line: 203, baseType: !859, size: 64, offset: 3328)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !4515, file: !4516, line: 204, baseType: !859, size: 64, offset: 3392)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !4389, file: !4390, line: 222, baseType: !7, size: 32, offset: 7936)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !4389, file: !4390, line: 223, baseType: !4578, size: 64, offset: 8000)
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4579, size: 64)
!4579 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !4390, line: 223, flags: DIFlagFwdDecl)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !4389, file: !4390, line: 230, baseType: !1314, size: 8, offset: 8064)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !4389, file: !4390, line: 231, baseType: !1283, size: 16, offset: 8080)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !4389, file: !4390, line: 232, baseType: !1283, size: 16, offset: 8096)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !4389, file: !4390, line: 234, baseType: !1758, size: 64, offset: 8128)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !4389, file: !4390, line: 237, baseType: !1124, size: 256, offset: 8192)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !4389, file: !4390, line: 243, baseType: !1255, size: 320, offset: 8448)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !3700, file: !2109, line: 1111, baseType: !4587, size: 64, offset: 15424)
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !4390, line: 20, size: 16640, elements: !4589)
!4589 = !{!4590, !4591, !4592, !4593}
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !4588, file: !4390, line: 21, baseType: !105, size: 32)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4588, file: !4390, line: 22, baseType: !1167, size: 32, offset: 32)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !4588, file: !4390, line: 23, baseType: !100, size: 192, offset: 64)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4588, file: !4390, line: 24, baseType: !4594, size: 16384, offset: 256)
!4594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4595, size: 16384, elements: !1029)
!4595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !4401, line: 51, size: 256, elements: !4596)
!4596 = !{!4597}
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !4595, file: !4401, line: 52, baseType: !4598, size: 256)
!4598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !4401, line: 37, size: 256, elements: !4599)
!4599 = !{!4600, !4607, !4608, !4612}
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !4598, file: !4401, line: 39, baseType: !4601, size: 64)
!4601 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !4602, line: 83, baseType: !4603)
!4602 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4604, size: 64)
!4604 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !4602, line: 82, baseType: !4605)
!4605 = !DISubroutineType(types: !4606)
!4606 = !{null, !68}
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !4598, file: !4401, line: 40, baseType: !85, size: 64, offset: 64)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !4598, file: !4401, line: 46, baseType: !4609, size: 64, offset: 128)
!4609 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !4602, line: 86, baseType: !4610)
!4610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4611, size: 64)
!4611 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !4602, line: 85, baseType: !628)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !4598, file: !4401, line: 48, baseType: !4405, size: 64, offset: 192)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3700, file: !2109, line: 1112, baseType: !4405, size: 64, offset: 15488)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !3700, file: !2109, line: 1113, baseType: !4405, size: 64, offset: 15552)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !3700, file: !2109, line: 1115, baseType: !4405, size: 64, offset: 15616)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !3700, file: !2109, line: 1116, baseType: !4400, size: 192, offset: 15680)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !3700, file: !2109, line: 1117, baseType: !85, size: 64, offset: 15872)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !3700, file: !2109, line: 1118, baseType: !81, size: 64, offset: 15936)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !3700, file: !2109, line: 1119, baseType: !7, size: 32, offset: 16000)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !3700, file: !2109, line: 1121, baseType: !380, size: 64, offset: 16064)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !3700, file: !2109, line: 1125, baseType: !4622, size: 64, offset: 16128)
!4622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4623, size: 64)
!4623 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !2109, line: 43, flags: DIFlagFwdDecl)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !3700, file: !2109, line: 1127, baseType: !791, size: 32, offset: 16192)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !3700, file: !2109, line: 1128, baseType: !7, size: 32, offset: 16224)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !3700, file: !2109, line: 1130, baseType: !4627, size: 128, offset: 16256)
!4627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4628, line: 37, size: 128, elements: !4629)
!4628 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!4629 = !{!4630, !4631, !4632}
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4627, file: !4628, line: 38, baseType: !68, size: 32)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4627, file: !4628, line: 39, baseType: !95, size: 32, offset: 32)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4627, file: !4628, line: 40, baseType: !4633, size: 64, offset: 64)
!4633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4634, size: 64)
!4634 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4628, line: 24, flags: DIFlagFwdDecl)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !3700, file: !2109, line: 1131, baseType: !4636, size: 256, offset: 16384)
!4636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !4637, line: 12, size: 256, elements: !4638)
!4637 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!4638 = !{!4639, !4640, !4641, !4642}
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !4636, file: !4637, line: 13, baseType: !300, size: 64)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4636, file: !4637, line: 14, baseType: !85, size: 64, offset: 64)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4636, file: !4637, line: 15, baseType: !85, size: 64, offset: 128)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !4636, file: !4637, line: 16, baseType: !1314, size: 8, offset: 192)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !3700, file: !2109, line: 1134, baseType: !858, size: 64, offset: 16640)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !3700, file: !2109, line: 1135, baseType: !858, size: 64, offset: 16704)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !3700, file: !2109, line: 1138, baseType: !105, size: 32, offset: 16768)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !3700, file: !2109, line: 1141, baseType: !1129, size: 32, offset: 16800)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !3700, file: !2109, line: 1143, baseType: !4648, size: 64, offset: 16832)
!4648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !2109, line: 735, size: 64, elements: !4649)
!4649 = !{!4650}
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4648, file: !2109, line: 736, baseType: !4651, size: 64)
!4651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !3700, file: !2109, line: 1147, baseType: !1953, size: 128, offset: 16896)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !3700, file: !2109, line: 1149, baseType: !3699, size: 64, offset: 17024)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !3700, file: !2109, line: 1151, baseType: !4655, size: 64, offset: 17088)
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4656, size: 64)
!4656 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !2109, line: 1151, flags: DIFlagFwdDecl)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !3700, file: !2109, line: 1188, baseType: !66, size: 64, offset: 17152)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !3700, file: !2109, line: 1191, baseType: !4659, size: 64, offset: 17216)
!4659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4660, size: 64)
!4660 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2109, line: 44, flags: DIFlagFwdDecl)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !3700, file: !2109, line: 1194, baseType: !4662, size: 64, offset: 17280)
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !2109, line: 45, flags: DIFlagFwdDecl)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !3700, file: !2109, line: 1197, baseType: !4665, size: 64, offset: 17344)
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !4667, line: 155, size: 64, elements: !4668)
!4667 = !DIFile(filename: "./include/linux/swap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b48f968c4d3c1313a5ba7451c8be5b79")
!4668 = !{!4669}
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed", scope: !4666, file: !4667, line: 157, baseType: !85, size: 64)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !3700, file: !2109, line: 1199, baseType: !4671, size: 64, offset: 17408)
!4671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4672, size: 64)
!4672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3020, line: 99, size: 128, elements: !4673)
!4673 = !{!4674, !4675, !4676}
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4672, file: !3020, line: 100, baseType: !1115, size: 64)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !4672, file: !3020, line: 101, baseType: !95, size: 32, offset: 64)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !4672, file: !3020, line: 103, baseType: !72, size: 16, offset: 96)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !3700, file: !2109, line: 1202, baseType: !4678, size: 64, offset: 17472)
!4678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4679, size: 64)
!4679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !27, line: 588, size: 128, elements: !4680)
!4680 = !{!4681, !4851}
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "cc", scope: !4679, file: !27, line: 589, baseType: !4682, size: 64)
!4682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4683, size: 64)
!4683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compact_control", file: !27, line: 544, size: 1024, elements: !4684)
!4684 = !{!4685, !4686, !4687, !4688, !4689, !4690, !4691, !4692, !4830, !4831, !4832, !4833, !4834, !4836, !4837, !4838, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850}
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "freepages", scope: !4683, file: !27, line: 545, baseType: !143, size: 128)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "migratepages", scope: !4683, file: !27, line: 546, baseType: !143, size: 128, offset: 128)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freepages", scope: !4683, file: !27, line: 547, baseType: !7, size: 32, offset: 256)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migratepages", scope: !4683, file: !27, line: 548, baseType: !7, size: 32, offset: 288)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "free_pfn", scope: !4683, file: !27, line: 549, baseType: !85, size: 64, offset: 320)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_pfn", scope: !4683, file: !27, line: 556, baseType: !85, size: 64, offset: 384)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "fast_start_pfn", scope: !4683, file: !27, line: 557, baseType: !85, size: 64, offset: 448)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "zone", scope: !4683, file: !27, line: 558, baseType: !4693, size: 64, offset: 512)
!4693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4694, size: 64)
!4694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zone", file: !19, line: 815, size: 9728, align: 512, elements: !4695)
!4695 = !{!4696, !4697, !4698, !4699, !4700, !4701, !4774, !4786, !4795, !4796, !4797, !4798, !4799, !4800, !4801, !4802, !4803, !4804, !4813, !4814, !4815, !4816, !4817, !4818, !4819, !4820, !4821, !4822, !4823, !4824, !4825, !4826, !4827, !4828}
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "_watermark", scope: !4694, file: !19, line: 819, baseType: !2582, size: 256)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "watermark_boost", scope: !4694, file: !19, line: 820, baseType: !85, size: 64, offset: 256)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "nr_reserved_highatomic", scope: !4694, file: !19, line: 822, baseType: !85, size: 64, offset: 320)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "lowmem_reserve", scope: !4694, file: !19, line: 833, baseType: !1548, size: 256, offset: 384)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4694, file: !19, line: 836, baseType: !68, size: 32, offset: 640)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "zone_pgdat", scope: !4694, file: !19, line: 838, baseType: !4702, size: 64, offset: 704)
!4702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4703, size: 64)
!4703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pglist_data", file: !19, line: 1266, size: 112128, elements: !4704)
!4704 = !{!4705, !4707, !4719, !4720, !4721, !4722, !4723, !4724, !4725, !4726, !4728, !4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4737, !4738, !4739, !4740, !4741, !4742, !4748, !4760, !4761, !4762, !4769, !4771}
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "node_zones", scope: !4703, file: !19, line: 1272, baseType: !4706, size: 38912, align: 512)
!4706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4694, size: 38912, align: 512, elements: !1185)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "node_zonelists", scope: !4703, file: !19, line: 1279, baseType: !4708, size: 65792, offset: 38912)
!4708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4709, size: 65792, elements: !2481)
!4709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zonelist", file: !19, line: 1214, size: 32896, elements: !4710)
!4710 = !{!4711}
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "_zonerefs", scope: !4709, file: !19, line: 1215, baseType: !4712, size: 32896)
!4712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4713, size: 32896, elements: !4717)
!4713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zoneref", file: !19, line: 1195, size: 128, elements: !4714)
!4714 = !{!4715, !4716}
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "zone", scope: !4713, file: !19, line: 1196, baseType: !4693, size: 64)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "zone_idx", scope: !4713, file: !19, line: 1197, baseType: !68, size: 32, offset: 64)
!4717 = !{!4718}
!4718 = !DISubrange(count: 257)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "nr_zones", scope: !4703, file: !19, line: 1281, baseType: !68, size: 32, offset: 104704)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "node_start_pfn", scope: !4703, file: !19, line: 1303, baseType: !85, size: 64, offset: 104768)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "node_present_pages", scope: !4703, file: !19, line: 1304, baseType: !85, size: 64, offset: 104832)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "node_spanned_pages", scope: !4703, file: !19, line: 1305, baseType: !85, size: 64, offset: 104896)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4703, file: !19, line: 1307, baseType: !68, size: 32, offset: 104960)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "kswapd_wait", scope: !4703, file: !19, line: 1308, baseType: !100, size: 192, offset: 105024)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "pfmemalloc_wait", scope: !4703, file: !19, line: 1309, baseType: !100, size: 192, offset: 105216)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_wait", scope: !4703, file: !19, line: 1312, baseType: !4727, size: 768, offset: 105408)
!4727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 768, elements: !1185)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "nr_writeback_throttled", scope: !4703, file: !19, line: 1314, baseType: !95, size: 32, offset: 106176)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "nr_reclaim_start", scope: !4703, file: !19, line: 1315, baseType: !85, size: 64, offset: 106240)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "kswapd", scope: !4703, file: !19, line: 1320, baseType: !3699, size: 64, offset: 106304)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "kswapd_order", scope: !4703, file: !19, line: 1321, baseType: !68, size: 32, offset: 106368)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "kswapd_highest_zoneidx", scope: !4703, file: !19, line: 1322, baseType: !267, size: 32, offset: 106400)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "kswapd_failures", scope: !4703, file: !19, line: 1324, baseType: !68, size: 32, offset: 106432)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "kcompactd_max_order", scope: !4703, file: !19, line: 1327, baseType: !68, size: 32, offset: 106464)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "kcompactd_highest_zoneidx", scope: !4703, file: !19, line: 1328, baseType: !267, size: 32, offset: 106496)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "kcompactd_wait", scope: !4703, file: !19, line: 1329, baseType: !100, size: 192, offset: 106560)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "kcompactd", scope: !4703, file: !19, line: 1330, baseType: !3699, size: 64, offset: 106752)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "proactive_compact_trigger", scope: !4703, file: !19, line: 1331, baseType: !1314, size: 8, offset: 106816)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "totalreserve_pages", scope: !4703, file: !19, line: 1337, baseType: !85, size: 64, offset: 106880)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "min_unmapped_pages", scope: !4703, file: !19, line: 1343, baseType: !85, size: 64, offset: 106944)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "min_slab_pages", scope: !4703, file: !19, line: 1344, baseType: !85, size: 64, offset: 107008)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "_pad1_", scope: !4703, file: !19, line: 1348, baseType: !4743, align: 512, offset: 107520)
!4743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cacheline_padding", file: !4744, line: 93, align: 512, elements: !4745)
!4744 = !DIFile(filename: "./include/linux/cache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "599edcbe9a1f0cbc1eddd4ed9f4096ef")
!4745 = !{!4746}
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !4743, file: !4744, line: 94, baseType: !4747)
!4747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, elements: !391)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "__lruvec", scope: !4703, file: !19, line: 1384, baseType: !4749, size: 1088, offset: 107520)
!4749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lruvec", file: !19, line: 620, size: 1088, elements: !4750)
!4750 = !{!4751, !4753, !4754, !4755, !4756, !4757, !4759}
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "lists", scope: !4749, file: !19, line: 621, baseType: !4752, size: 640)
!4752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 640, elements: !1415)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "lru_lock", scope: !4749, file: !19, line: 623, baseType: !105, size: 32, offset: 640)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "anon_cost", scope: !4749, file: !19, line: 629, baseType: !85, size: 64, offset: 704)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "file_cost", scope: !4749, file: !19, line: 630, baseType: !85, size: 64, offset: 768)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "nonresident_age", scope: !4749, file: !19, line: 632, baseType: !1115, size: 64, offset: 832)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "refaults", scope: !4749, file: !19, line: 634, baseType: !4758, size: 128, offset: 896)
!4758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 128, elements: !2481)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4749, file: !19, line: 636, baseType: !85, size: 64, offset: 1024)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4703, file: !19, line: 1386, baseType: !85, size: 64, offset: 108608)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "_pad2_", scope: !4703, file: !19, line: 1395, baseType: !4743, align: 512, offset: 109056)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "per_cpu_nodestats", scope: !4703, file: !19, line: 1398, baseType: !4763, size: 64, offset: 109056)
!4763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4764, size: 64)
!4764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "per_cpu_nodestat", file: !19, line: 713, size: 336, elements: !4765)
!4765 = !{!4766, !4767}
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "stat_threshold", scope: !4764, file: !19, line: 714, baseType: !2420, size: 8)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "vm_node_stat_diff", scope: !4764, file: !19, line: 715, baseType: !4768, size: 328, offset: 8)
!4768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2420, size: 328, elements: !343)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "vm_stat", scope: !4703, file: !19, line: 1399, baseType: !4770, size: 2624, offset: 109120)
!4770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1115, size: 2624, elements: !343)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "memtier", scope: !4703, file: !19, line: 1401, baseType: !4772, size: 64, offset: 111744)
!4772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4773, size: 64)
!4773 = !DICompositeType(tag: DW_TAG_structure_type, name: "memory_tier", file: !19, line: 1401, flags: DIFlagFwdDecl)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "per_cpu_pageset", scope: !4694, file: !19, line: 839, baseType: !4775, size: 64, offset: 768)
!4775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4776, size: 64)
!4776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "per_cpu_pages", file: !19, line: 684, size: 2048, align: 512, elements: !4777)
!4777 = !{!4778, !4779, !4780, !4781, !4782, !4783, !4784}
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4776, file: !19, line: 685, baseType: !105, size: 32)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4776, file: !19, line: 686, baseType: !68, size: 32, offset: 32)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !4776, file: !19, line: 687, baseType: !68, size: 32, offset: 64)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4776, file: !19, line: 688, baseType: !68, size: 32, offset: 96)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "free_factor", scope: !4776, file: !19, line: 689, baseType: !1283, size: 16, offset: 128)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "expire", scope: !4776, file: !19, line: 691, baseType: !1283, size: 16, offset: 144)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "lists", scope: !4776, file: !19, line: 695, baseType: !4785, size: 1536, offset: 192)
!4785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 1536, elements: !318)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "per_cpu_zonestats", scope: !4694, file: !19, line: 840, baseType: !4787, size: 64, offset: 832)
!4787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4788, size: 64)
!4788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "per_cpu_zonestat", file: !19, line: 698, size: 512, elements: !4789)
!4789 = !{!4790, !4792, !4793}
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "vm_stat_diff", scope: !4788, file: !19, line: 700, baseType: !4791, size: 80)
!4791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2420, size: 80, elements: !1541)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "stat_threshold", scope: !4788, file: !19, line: 701, baseType: !2420, size: 8, offset: 80)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "vm_numa_event", scope: !4788, file: !19, line: 709, baseType: !4794, size: 384, offset: 128)
!4794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 384, elements: !1301)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "pageset_high", scope: !4694, file: !19, line: 845, baseType: !68, size: 32, offset: 896)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "pageset_batch", scope: !4694, file: !19, line: 846, baseType: !68, size: 32, offset: 928)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "zone_start_pfn", scope: !4694, file: !19, line: 857, baseType: !85, size: 64, offset: 960)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "managed_pages", scope: !4694, file: !19, line: 901, baseType: !1115, size: 64, offset: 1024)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "spanned_pages", scope: !4694, file: !19, line: 902, baseType: !85, size: 64, offset: 1088)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "present_pages", scope: !4694, file: !19, line: 903, baseType: !85, size: 64, offset: 1152)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4694, file: !19, line: 911, baseType: !62, size: 64, offset: 1216)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !4694, file: !19, line: 927, baseType: !68, size: 32, offset: 1280)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "_pad1_", scope: !4694, file: !19, line: 930, baseType: !4743, align: 512, offset: 1536)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "free_area", scope: !4694, file: !19, line: 933, baseType: !4805, size: 6336, offset: 1536)
!4805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4806, size: 6336, elements: !4811)
!4806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "free_area", file: !19, line: 113, size: 576, elements: !4807)
!4807 = !{!4808, !4810}
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "free_list", scope: !4806, file: !19, line: 114, baseType: !4809, size: 512)
!4809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 512, elements: !1185)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "nr_free", scope: !4806, file: !19, line: 115, baseType: !85, size: 64, offset: 512)
!4811 = !{!4812}
!4812 = !DISubrange(count: 11)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4694, file: !19, line: 941, baseType: !85, size: 64, offset: 7872)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4694, file: !19, line: 944, baseType: !105, size: 32, offset: 7936)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "_pad2_", scope: !4694, file: !19, line: 947, baseType: !4743, align: 512, offset: 8192)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_drift_mark", scope: !4694, file: !19, line: 954, baseType: !85, size: 64, offset: 8192)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "compact_cached_free_pfn", scope: !4694, file: !19, line: 958, baseType: !85, size: 64, offset: 8256)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "compact_cached_migrate_pfn", scope: !4694, file: !19, line: 960, baseType: !4758, size: 128, offset: 8320)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "compact_init_migrate_pfn", scope: !4694, file: !19, line: 961, baseType: !85, size: 64, offset: 8448)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "compact_init_free_pfn", scope: !4694, file: !19, line: 962, baseType: !85, size: 64, offset: 8512)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "compact_considered", scope: !4694, file: !19, line: 972, baseType: !7, size: 32, offset: 8576)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "compact_defer_shift", scope: !4694, file: !19, line: 973, baseType: !7, size: 32, offset: 8608)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "compact_order_failed", scope: !4694, file: !19, line: 974, baseType: !68, size: 32, offset: 8640)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "compact_blockskip_flush", scope: !4694, file: !19, line: 979, baseType: !1314, size: 8, offset: 8672)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "contiguous", scope: !4694, file: !19, line: 982, baseType: !1314, size: 8, offset: 8680)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "_pad3_", scope: !4694, file: !19, line: 984, baseType: !4743, align: 512, offset: 8704)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "vm_stat", scope: !4694, file: !19, line: 986, baseType: !1540, size: 640, offset: 8704)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "vm_numa_event", scope: !4694, file: !19, line: 987, baseType: !4829, size: 384, offset: 9344)
!4829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1115, size: 384, elements: !1301)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "total_migrate_scanned", scope: !4683, file: !27, line: 559, baseType: !85, size: 64, offset: 576)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "total_free_scanned", scope: !4683, file: !27, line: 560, baseType: !85, size: 64, offset: 640)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "fast_search_fail", scope: !4683, file: !27, line: 561, baseType: !72, size: 16, offset: 704)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "search_order", scope: !4683, file: !27, line: 562, baseType: !1283, size: 16, offset: 720)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !4683, file: !27, line: 563, baseType: !4835, size: 32, offset: 736)
!4835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !305)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !4683, file: !27, line: 564, baseType: !68, size: 32, offset: 768)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "migratetype", scope: !4683, file: !27, line: 565, baseType: !68, size: 32, offset: 800)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_flags", scope: !4683, file: !27, line: 566, baseType: !4839, size: 32, offset: 832)
!4839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "highest_zoneidx", scope: !4683, file: !27, line: 567, baseType: !2555, size: 32, offset: 864)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4683, file: !27, line: 568, baseType: !274, size: 32, offset: 896)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_skip_hint", scope: !4683, file: !27, line: 569, baseType: !1314, size: 8, offset: 928)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "no_set_skip_hint", scope: !4683, file: !27, line: 570, baseType: !1314, size: 8, offset: 936)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_block_suitable", scope: !4683, file: !27, line: 571, baseType: !1314, size: 8, offset: 944)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "direct_compaction", scope: !4683, file: !27, line: 572, baseType: !1314, size: 8, offset: 952)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "proactive_compaction", scope: !4683, file: !27, line: 573, baseType: !1314, size: 8, offset: 960)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "whole_zone", scope: !4683, file: !27, line: 574, baseType: !1314, size: 8, offset: 968)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "contended", scope: !4683, file: !27, line: 575, baseType: !1314, size: 8, offset: 976)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pageblock", scope: !4683, file: !27, line: 576, baseType: !1314, size: 8, offset: 984)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_contig", scope: !4683, file: !27, line: 581, baseType: !1314, size: 8, offset: 992)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4679, file: !27, line: 590, baseType: !759, size: 64, offset: 64)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !3700, file: !2109, line: 1205, baseType: !85, size: 64, offset: 17536)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !3700, file: !2109, line: 1206, baseType: !4854, size: 64, offset: 17600)
!4854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4855, size: 64)
!4855 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !4401, line: 14, baseType: !4856)
!4856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !4401, line: 12, size: 384, elements: !4857)
!4857 = !{!4858}
!4858 = !DIDerivedType(tag: DW_TAG_member, scope: !4856, file: !4401, line: 13, baseType: !4859, size: 384)
!4859 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4856, file: !4401, line: 13, size: 384, elements: !4860)
!4860 = !{!4861, !4862, !4863, !4864}
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4859, file: !4401, line: 13, baseType: !68, size: 32)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4859, file: !4401, line: 13, baseType: !68, size: 32, offset: 32)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4859, file: !4401, line: 13, baseType: !68, size: 32, offset: 64)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4859, file: !4401, line: 13, baseType: !4865, size: 256, offset: 128)
!4865 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4866, line: 37, size: 256, elements: !4867)
!4866 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4867 = !{!4868, !4873, !4886, !4892, !4901, !4928, !4933}
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4865, file: !4866, line: 42, baseType: !4869, size: 64)
!4869 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4865, file: !4866, line: 39, size: 64, elements: !4870)
!4870 = !{!4871, !4872}
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4869, file: !4866, line: 40, baseType: !3989, size: 32)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4869, file: !4866, line: 41, baseType: !797, size: 32, offset: 32)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4865, file: !4866, line: 50, baseType: !4874, size: 192)
!4874 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4865, file: !4866, line: 45, size: 192, elements: !4875)
!4875 = !{!4876, !4878, !4879, !4885}
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4874, file: !4866, line: 46, baseType: !4877, size: 32)
!4877 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !83, line: 95, baseType: !68)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4874, file: !4866, line: 47, baseType: !68, size: 32, offset: 32)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4874, file: !4866, line: 48, baseType: !4880, size: 64, offset: 64)
!4880 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4866, line: 11, baseType: !4881)
!4881 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4866, line: 8, size: 64, elements: !4882)
!4882 = !{!4883, !4884}
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4881, file: !4866, line: 9, baseType: !68, size: 32)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4881, file: !4866, line: 10, baseType: !66, size: 64)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4874, file: !4866, line: 49, baseType: !68, size: 32, offset: 128)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4865, file: !4866, line: 57, baseType: !4887, size: 128)
!4887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4865, file: !4866, line: 53, size: 128, elements: !4888)
!4888 = !{!4889, !4890, !4891}
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4887, file: !4866, line: 54, baseType: !3989, size: 32)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4887, file: !4866, line: 55, baseType: !797, size: 32, offset: 32)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4887, file: !4866, line: 56, baseType: !4880, size: 64, offset: 64)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4865, file: !4866, line: 66, baseType: !4893, size: 256)
!4893 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4865, file: !4866, line: 60, size: 256, elements: !4894)
!4894 = !{!4895, !4896, !4897, !4898, !4900}
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4893, file: !4866, line: 61, baseType: !3989, size: 32)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4893, file: !4866, line: 62, baseType: !797, size: 32, offset: 32)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4893, file: !4866, line: 63, baseType: !68, size: 32, offset: 64)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4893, file: !4866, line: 64, baseType: !4899, size: 64, offset: 128)
!4899 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !83, line: 94, baseType: !1058)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4893, file: !4866, line: 65, baseType: !4899, size: 64, offset: 192)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4865, file: !4866, line: 105, baseType: !4902, size: 256)
!4902 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4865, file: !4866, line: 69, size: 256, elements: !4903)
!4903 = !{!4904, !4905}
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4902, file: !4866, line: 70, baseType: !66, size: 64)
!4905 = !DIDerivedType(tag: DW_TAG_member, scope: !4902, file: !4866, line: 79, baseType: !4906, size: 192, offset: 64)
!4906 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4902, file: !4866, line: 79, size: 192, elements: !4907)
!4907 = !{!4908, !4909, !4910, !4917, !4922}
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4906, file: !4866, line: 81, baseType: !68, size: 32)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4906, file: !4866, line: 86, baseType: !1283, size: 16)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4906, file: !4866, line: 92, baseType: !4911, size: 192)
!4911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4906, file: !4866, line: 88, size: 192, elements: !4912)
!4912 = !{!4913, !4915, !4916}
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4911, file: !4866, line: 89, baseType: !4914, size: 64)
!4914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 64, elements: !3287)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4911, file: !4866, line: 90, baseType: !66, size: 64, offset: 64)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4911, file: !4866, line: 91, baseType: !66, size: 64, offset: 128)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4906, file: !4866, line: 97, baseType: !4918, size: 96)
!4918 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4906, file: !4866, line: 94, size: 96, elements: !4919)
!4919 = !{!4920, !4921}
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4918, file: !4866, line: 95, baseType: !4914, size: 64)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4918, file: !4866, line: 96, baseType: !855, size: 32, offset: 64)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4906, file: !4866, line: 103, baseType: !4923, size: 128)
!4923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4906, file: !4866, line: 99, size: 128, elements: !4924)
!4924 = !{!4925, !4926, !4927}
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4923, file: !4866, line: 100, baseType: !85, size: 64)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4923, file: !4866, line: 101, baseType: !855, size: 32, offset: 64)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4923, file: !4866, line: 102, baseType: !855, size: 32, offset: 96)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4865, file: !4866, line: 111, baseType: !4929, size: 128)
!4929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4865, file: !4866, line: 108, size: 128, elements: !4930)
!4930 = !{!4931, !4932}
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4929, file: !4866, line: 109, baseType: !304, size: 64)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4929, file: !4866, line: 110, baseType: !68, size: 32, offset: 64)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4865, file: !4866, line: 118, baseType: !4934, size: 128)
!4934 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4865, file: !4866, line: 114, size: 128, elements: !4935)
!4935 = !{!4936, !4937, !4938}
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4934, file: !4866, line: 115, baseType: !66, size: 64)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4934, file: !4866, line: 116, baseType: !68, size: 32, offset: 64)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4934, file: !4866, line: 117, baseType: !7, size: 32, offset: 96)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3700, file: !2109, line: 1208, baseType: !4485, size: 448, offset: 17664)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !3700, file: !2109, line: 1215, baseType: !858, size: 64, offset: 18112)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !3700, file: !2109, line: 1217, baseType: !858, size: 64, offset: 18176)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !3700, file: !2109, line: 1219, baseType: !858, size: 64, offset: 18240)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !3700, file: !2109, line: 1223, baseType: !4944, size: 64, offset: 18304)
!4944 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4945, line: 99, baseType: !4946)
!4945 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4946 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4945, line: 99, size: 64, elements: !4947)
!4947 = !{!4948}
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4946, file: !4945, line: 99, baseType: !386, size: 64)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !3700, file: !2109, line: 1225, baseType: !826, size: 32, offset: 18368)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !3700, file: !2109, line: 1226, baseType: !68, size: 32, offset: 18400)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !3700, file: !2109, line: 1227, baseType: !68, size: 32, offset: 18432)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !3700, file: !2109, line: 1231, baseType: !4103, size: 64, offset: 18496)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !3700, file: !2109, line: 1233, baseType: !143, size: 128, offset: 18560)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !3700, file: !2109, line: 1240, baseType: !4955, size: 64, offset: 18688)
!4955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4956, size: 64)
!4956 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !2109, line: 62, flags: DIFlagFwdDecl)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !3700, file: !2109, line: 1242, baseType: !4958, size: 64, offset: 18752)
!4958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4959, size: 64)
!4959 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !2109, line: 1242, flags: DIFlagFwdDecl)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !3700, file: !2109, line: 1244, baseType: !143, size: 128, offset: 18816)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !3700, file: !2109, line: 1245, baseType: !4962, size: 64, offset: 18944)
!4962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4963, size: 64)
!4963 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !2109, line: 51, flags: DIFlagFwdDecl)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !3700, file: !2109, line: 1246, baseType: !1124, size: 256, offset: 19008)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !3700, file: !2109, line: 1247, baseType: !7, size: 32, offset: 19264)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !3700, file: !2109, line: 1250, baseType: !4967, size: 64, offset: 19328)
!4967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4968, size: 64)
!4968 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !2109, line: 57, flags: DIFlagFwdDecl)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !3700, file: !2109, line: 1251, baseType: !1124, size: 256, offset: 19392)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !3700, file: !2109, line: 1252, baseType: !143, size: 128, offset: 19648)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !3700, file: !2109, line: 1259, baseType: !2055, size: 64, offset: 19776)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !3700, file: !2109, line: 1260, baseType: !1283, size: 16, offset: 19840)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !3700, file: !2109, line: 1261, baseType: !1283, size: 16, offset: 19856)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !3700, file: !2109, line: 1314, baseType: !4975, size: 64, offset: 19904)
!4975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4976, size: 64)
!4976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4977, line: 62, size: 256, align: 256, elements: !4978)
!4977 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4978 = !{!4979, !4980, !4981, !4982, !4983, !4984, !4985}
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4976, file: !4977, line: 75, baseType: !855, size: 32)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4976, file: !4977, line: 90, baseType: !855, size: 32, offset: 32)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4976, file: !4977, line: 112, baseType: !859, size: 64, offset: 64)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4976, file: !4977, line: 132, baseType: !855, size: 32, offset: 128)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4976, file: !4977, line: 140, baseType: !855, size: 32, offset: 160)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4976, file: !4977, line: 149, baseType: !855, size: 32, offset: 192)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4976, file: !4977, line: 154, baseType: !4986, offset: 224)
!4986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, elements: !1198)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !3700, file: !2109, line: 1315, baseType: !854, size: 32, offset: 19968)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !3700, file: !2109, line: 1316, baseType: !854, size: 32, offset: 20000)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !3700, file: !2109, line: 1321, baseType: !85, size: 64, offset: 20032)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3700, file: !2109, line: 1325, baseType: !68, size: 32, offset: 20096)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !3700, file: !2109, line: 1326, baseType: !68, size: 32, offset: 20128)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !3700, file: !2109, line: 1327, baseType: !68, size: 32, offset: 20160)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !3700, file: !2109, line: 1328, baseType: !68, size: 32, offset: 20192)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !3700, file: !2109, line: 1329, baseType: !377, size: 128, align: 64, offset: 20224)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !3700, file: !2109, line: 1332, baseType: !4996, size: 128, offset: 20352)
!4996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4997, line: 51, size: 128, elements: !4998)
!4997 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4998 = !{!4999, !5004, !5005}
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4996, file: !4997, line: 60, baseType: !5000, size: 64)
!5000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !5001, line: 7, size: 64, elements: !5002)
!5001 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!5002 = !{!5003}
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !5000, file: !5001, line: 12, baseType: !3859, size: 64)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4996, file: !4997, line: 63, baseType: !1314, size: 8, offset: 64)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4996, file: !4997, line: 70, baseType: !1314, size: 8, offset: 72)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !3700, file: !2109, line: 1335, baseType: !2107, size: 64, offset: 20480)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !3700, file: !2109, line: 1337, baseType: !5008, size: 128, offset: 20544)
!5008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4997, line: 39, size: 128, elements: !5009)
!5009 = !{!5010, !5011, !5012}
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5008, file: !4997, line: 40, baseType: !759, size: 64)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5008, file: !4997, line: 42, baseType: !855, size: 32, offset: 64)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5008, file: !4997, line: 43, baseType: !855, size: 32, offset: 96)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !3700, file: !2109, line: 1340, baseType: !5014, size: 64, offset: 20672)
!5014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5015, size: 64)
!5015 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !2109, line: 69, flags: DIFlagFwdDecl)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !3700, file: !2109, line: 1351, baseType: !68, size: 32, offset: 20736)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !3700, file: !2109, line: 1352, baseType: !68, size: 32, offset: 20768)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !3700, file: !2109, line: 1354, baseType: !85, size: 64, offset: 20800)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !3700, file: !2109, line: 1364, baseType: !858, size: 64, offset: 20864)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !3700, file: !2109, line: 1365, baseType: !858, size: 64, offset: 20928)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !3700, file: !2109, line: 1412, baseType: !85, size: 64, offset: 20992)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !3700, file: !2109, line: 1453, baseType: !3015, size: 64, offset: 21056)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !3700, file: !2109, line: 1457, baseType: !5024, size: 64, offset: 21120)
!5024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5025, size: 64)
!5025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !282, line: 61, size: 576, elements: !5026)
!5026 = !{!5027, !5028, !5047, !5050, !5051, !5084, !5094}
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5025, file: !282, line: 62, baseType: !281, size: 32)
!5028 = !DIDerivedType(tag: DW_TAG_member, scope: !5025, file: !282, line: 64, baseType: !5029, size: 192, offset: 64)
!5029 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5025, file: !282, line: 64, size: 192, elements: !5030)
!5030 = !{!5031, !5042}
!5031 = !DIDerivedType(tag: DW_TAG_member, scope: !5029, file: !282, line: 65, baseType: !5032, size: 192)
!5032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5029, file: !282, line: 65, size: 192, elements: !5033)
!5033 = !{!5034, !5041}
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !5032, file: !282, line: 66, baseType: !5035, size: 128)
!5035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !5036, line: 50, size: 128, elements: !5037)
!5036 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!5037 = !{!5038, !5039, !5040}
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !5035, file: !5036, line: 52, baseType: !85, size: 64)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !5035, file: !5036, line: 54, baseType: !7, size: 32, offset: 64)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !5035, file: !5036, line: 55, baseType: !7, size: 32, offset: 96)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !5032, file: !282, line: 67, baseType: !85, size: 64, offset: 128)
!5042 = !DIDerivedType(tag: DW_TAG_member, scope: !5029, file: !282, line: 70, baseType: !5043, size: 192)
!5043 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5029, file: !282, line: 70, size: 192, elements: !5044)
!5044 = !{!5045, !5046}
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !5043, file: !282, line: 71, baseType: !377, size: 128, align: 64)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !5043, file: !282, line: 72, baseType: !85, size: 64, offset: 128)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !5025, file: !282, line: 76, baseType: !5048, size: 64, offset: 256)
!5048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5049, size: 64)
!5049 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !282, line: 76, flags: DIFlagFwdDecl)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !5025, file: !282, line: 77, baseType: !85, size: 64, offset: 320)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !5025, file: !282, line: 79, baseType: !5052, size: 64, offset: 384)
!5052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5053, size: 64)
!5053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !5036, line: 25, size: 256, elements: !5054)
!5054 = !{!5055, !5061, !5065}
!5055 = !DIDerivedType(tag: DW_TAG_member, scope: !5053, file: !5036, line: 26, baseType: !5056, size: 128)
!5056 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5053, file: !5036, line: 26, size: 128, elements: !5057)
!5057 = !{!5058, !5060}
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5056, file: !5036, line: 27, baseType: !5059, size: 128)
!5059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 128, elements: !363)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !5056, file: !5036, line: 28, baseType: !5059, size: 128)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5053, file: !5036, line: 31, baseType: !5062, size: 64, offset: 128)
!5062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5063, size: 64)
!5063 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5064)
!5064 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !5036, line: 23, flags: DIFlagFwdDecl)
!5065 = !DIDerivedType(tag: DW_TAG_member, scope: !5053, file: !5036, line: 33, baseType: !5066, size: 64, offset: 192)
!5066 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5053, file: !5036, line: 33, size: 64, elements: !5067)
!5067 = !{!5068, !5074, !5079}
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !5066, file: !5036, line: 38, baseType: !5069, size: 64)
!5069 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5066, file: !5036, line: 34, size: 64, elements: !5070)
!5070 = !{!5071, !5072, !5073}
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !5069, file: !5036, line: 35, baseType: !1240, size: 32)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5069, file: !5036, line: 36, baseType: !129, size: 8, offset: 32)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !5069, file: !5036, line: 37, baseType: !129, size: 8, offset: 40)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !5066, file: !5036, line: 42, baseType: !5075, size: 16)
!5075 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5066, file: !5036, line: 39, size: 16, elements: !5076)
!5076 = !{!5077, !5078}
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !5075, file: !5036, line: 40, baseType: !129, size: 8)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5075, file: !5036, line: 41, baseType: !129, size: 8, offset: 8)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !5066, file: !5036, line: 46, baseType: !5080, size: 16)
!5080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5066, file: !5036, line: 43, size: 16, elements: !5081)
!5081 = !{!5082, !5083}
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !5080, file: !5036, line: 44, baseType: !129, size: 8)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5080, file: !5036, line: 45, baseType: !129, size: 8, offset: 8)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !5025, file: !282, line: 81, baseType: !5085, size: 64, offset: 448)
!5085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5086, size: 64)
!5086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !282, line: 85, size: 384, elements: !5087)
!5087 = !{!5088, !5089, !5090, !5091, !5092, !5093}
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !5086, file: !282, line: 86, baseType: !5048, size: 64)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5086, file: !282, line: 87, baseType: !85, size: 64, offset: 64)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !5086, file: !282, line: 88, baseType: !85, size: 64, offset: 128)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !5086, file: !282, line: 89, baseType: !85, size: 64, offset: 192)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !5086, file: !282, line: 90, baseType: !1314, size: 8, offset: 256)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5086, file: !282, line: 92, baseType: !5085, size: 64, offset: 320)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5025, file: !282, line: 82, baseType: !7, size: 32, offset: 512)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !3700, file: !2109, line: 1463, baseType: !5096, offset: 21184)
!5096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !2109, line: 739, elements: !1779)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3700, file: !2109, line: 1470, baseType: !377, size: 128, align: 64, offset: 21184)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3700, file: !2109, line: 1471, baseType: !1167, size: 32, offset: 21312)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !3700, file: !2109, line: 1472, baseType: !68, size: 32, offset: 21344)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !3700, file: !2109, line: 1474, baseType: !3699, size: 64, offset: 21376)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !3700, file: !2109, line: 1475, baseType: !2590, size: 320, offset: 21440)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !3700, file: !2109, line: 1478, baseType: !5103, size: 64, offset: 21760)
!5103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5104, size: 64)
!5104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !5105, line: 49, size: 512, elements: !5106)
!5105 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!5106 = !{!5107, !5108, !5109, !5110, !5111, !5113, !5114, !5115, !5117}
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5104, file: !5105, line: 50, baseType: !5103, size: 64)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5104, file: !5105, line: 51, baseType: !66, size: 64, offset: 64)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5104, file: !5105, line: 52, baseType: !85, size: 64, offset: 128)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5104, file: !5105, line: 53, baseType: !85, size: 64, offset: 192)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !5104, file: !5105, line: 54, baseType: !5112, size: 64, offset: 256)
!5112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !5104, file: !5105, line: 56, baseType: !7, size: 32, offset: 320)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !5104, file: !5105, line: 58, baseType: !7, size: 32, offset: 352)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !5104, file: !5105, line: 59, baseType: !5116, size: 64, offset: 384)
!5116 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !71, line: 159, baseType: !858)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !5104, file: !5105, line: 60, baseType: !1874, size: 64, offset: 448)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !3700, file: !2109, line: 1482, baseType: !1167, size: 32, offset: 21824)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3700, file: !2109, line: 1489, baseType: !66, size: 64, offset: 21888)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !3700, file: !2109, line: 1504, baseType: !66, size: 64, offset: 21952)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !3700, file: !2109, line: 1505, baseType: !859, size: 64, offset: 22016)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !3700, file: !2109, line: 1506, baseType: !858, size: 64, offset: 22080)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !3700, file: !2109, line: 1507, baseType: !859, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !3700, file: !2109, line: 1508, baseType: !859, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !3700, file: !2109, line: 1509, baseType: !859, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !3700, file: !2109, line: 1510, baseType: !377, size: 128, align: 64, offset: 22208)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !3700, file: !2109, line: 1511, baseType: !68, size: 32, offset: 22336)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !3700, file: !2109, line: 1515, baseType: !5129, size: 64, offset: 22400)
!5129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1105, line: 56, size: 64, elements: !5130)
!5130 = !{!5131}
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !5129, file: !1105, line: 57, baseType: !1108, size: 64)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !3700, file: !2109, line: 1518, baseType: !5129, size: 64, offset: 22464)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !3700, file: !2109, line: 1528, baseType: !377, size: 128, align: 64, offset: 22528)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3700, file: !2109, line: 1552, baseType: !5135, size: 35328, offset: 23040)
!5135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !5136, line: 430, size: 35328, elements: !5137)
!5136 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!5137 = !{!5138, !5156, !5157, !5158, !5159, !5160, !5161, !5162, !5163, !5167, !5168, !5169, !5170, !5171, !5172, !5175, !5176, !5177, !5178}
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !5135, file: !5136, line: 432, baseType: !5139, size: 192)
!5139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5140, size: 192, elements: !1025)
!5140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !5141, line: 16, size: 64, elements: !5142)
!5141 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!5142 = !{!5143, !5144, !5145, !5146, !5147, !5148, !5149, !5150, !5151, !5152, !5153, !5154, !5155}
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !5140, file: !5141, line: 17, baseType: !139, size: 16)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !5140, file: !5141, line: 18, baseType: !139, size: 16, offset: 16)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !5140, file: !5141, line: 19, baseType: !139, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5140, file: !5141, line: 19, baseType: !139, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !5140, file: !5141, line: 19, baseType: !139, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !5140, file: !5141, line: 19, baseType: !139, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5140, file: !5141, line: 19, baseType: !139, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !5140, file: !5141, line: 20, baseType: !139, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !5140, file: !5141, line: 20, baseType: !139, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !5140, file: !5141, line: 20, baseType: !139, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !5140, file: !5141, line: 20, baseType: !139, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !5140, file: !5141, line: 20, baseType: !139, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !5140, file: !5141, line: 20, baseType: !139, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5135, file: !5136, line: 436, baseType: !85, size: 64, offset: 192)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !5135, file: !5136, line: 440, baseType: !72, size: 16, offset: 256)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !5135, file: !5136, line: 441, baseType: !72, size: 16, offset: 272)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !5135, file: !5136, line: 442, baseType: !72, size: 16, offset: 288)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !5135, file: !5136, line: 443, baseType: !72, size: 16, offset: 304)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !5135, file: !5136, line: 447, baseType: !85, size: 64, offset: 320)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !5135, file: !5136, line: 448, baseType: !85, size: 64, offset: 384)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !5135, file: !5136, line: 459, baseType: !5164, size: 256, offset: 448)
!5164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5165, size: 256, elements: !1185)
!5165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5166, size: 64)
!5166 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !5136, line: 428, flags: DIFlagFwdDecl)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !5135, file: !5136, line: 461, baseType: !85, size: 64, offset: 704)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !5135, file: !5136, line: 463, baseType: !85, size: 64, offset: 768)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !5135, file: !5136, line: 465, baseType: !85, size: 64, offset: 832)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !5135, file: !5136, line: 466, baseType: !85, size: 64, offset: 896)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !5135, file: !5136, line: 467, baseType: !85, size: 64, offset: 960)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !5135, file: !5136, line: 473, baseType: !5173, size: 64, offset: 1024)
!5173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5174, size: 64)
!5174 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !5136, line: 10, flags: DIFlagFwdDecl)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !5135, file: !5136, line: 480, baseType: !85, size: 64, offset: 1088)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !5135, file: !5136, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !5135, file: !5136, line: 491, baseType: !854, size: 32, offset: 1184)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !5135, file: !5136, line: 501, baseType: !5179, size: 33792, offset: 1536)
!5179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !5180, line: 448, size: 33792, elements: !5181)
!5180 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!5181 = !{!5182, !5183, !5184, !5342, !5343, !5349, !5350}
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !5179, file: !5180, line: 461, baseType: !7, size: 32)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !5179, file: !5180, line: 468, baseType: !85, size: 64, offset: 64)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !5179, file: !5180, line: 476, baseType: !5185, size: 64, offset: 128)
!5185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5186, size: 64)
!5186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !5180, line: 356, size: 33280, align: 512, elements: !5187)
!5187 = !{!5188, !5189, !5190, !5191, !5192, !5193, !5194, !5195, !5196, !5197}
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5186, file: !5180, line: 358, baseType: !7, size: 32)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !5186, file: !5180, line: 361, baseType: !7, size: 32, offset: 32)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5186, file: !5180, line: 364, baseType: !858, size: 64, offset: 64)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !5186, file: !5180, line: 367, baseType: !858, size: 64, offset: 128)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !5186, file: !5180, line: 370, baseType: !858, size: 64, offset: 192)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !5186, file: !5180, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !5186, file: !5180, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !5186, file: !5180, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !5186, file: !5180, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5186, file: !5180, line: 397, baseType: !5198, size: 32768, offset: 512)
!5198 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !5180, line: 348, size: 32768, elements: !5199)
!5199 = !{!5200, !5215, !5250, !5327, !5340}
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !5198, file: !5180, line: 349, baseType: !5201, size: 896)
!5201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !5180, line: 12, size: 896, elements: !5202)
!5202 = !{!5203, !5204, !5205, !5206, !5207, !5208, !5209, !5210, !5214}
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5201, file: !5180, line: 13, baseType: !854, size: 32)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5201, file: !5180, line: 14, baseType: !854, size: 32, offset: 32)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5201, file: !5180, line: 15, baseType: !854, size: 32, offset: 64)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5201, file: !5180, line: 16, baseType: !854, size: 32, offset: 96)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5201, file: !5180, line: 17, baseType: !854, size: 32, offset: 128)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5201, file: !5180, line: 18, baseType: !854, size: 32, offset: 160)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5201, file: !5180, line: 19, baseType: !854, size: 32, offset: 192)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5201, file: !5180, line: 22, baseType: !5211, size: 640, offset: 224)
!5211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !854, size: 640, elements: !5212)
!5212 = !{!5213}
!5213 = !DISubrange(count: 20)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5201, file: !5180, line: 25, baseType: !854, size: 32, offset: 864)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !5198, file: !5180, line: 350, baseType: !5216, size: 4096, align: 128)
!5216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !5180, line: 34, size: 4096, align: 128, elements: !5217)
!5217 = !{!5218, !5219, !5220, !5221, !5222, !5237, !5238, !5239, !5241, !5243, !5245}
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5216, file: !5180, line: 35, baseType: !139, size: 16)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5216, file: !5180, line: 36, baseType: !139, size: 16, offset: 16)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5216, file: !5180, line: 37, baseType: !139, size: 16, offset: 32)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !5216, file: !5180, line: 38, baseType: !139, size: 16, offset: 48)
!5222 = !DIDerivedType(tag: DW_TAG_member, scope: !5216, file: !5180, line: 39, baseType: !5223, size: 128, offset: 64)
!5223 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5216, file: !5180, line: 39, size: 128, elements: !5224)
!5224 = !{!5225, !5230}
!5225 = !DIDerivedType(tag: DW_TAG_member, scope: !5223, file: !5180, line: 40, baseType: !5226, size: 128)
!5226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5223, file: !5180, line: 40, size: 128, elements: !5227)
!5227 = !{!5228, !5229}
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !5226, file: !5180, line: 41, baseType: !858, size: 64)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !5226, file: !5180, line: 42, baseType: !858, size: 64, offset: 64)
!5230 = !DIDerivedType(tag: DW_TAG_member, scope: !5223, file: !5180, line: 44, baseType: !5231, size: 128)
!5231 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5223, file: !5180, line: 44, size: 128, elements: !5232)
!5232 = !{!5233, !5234, !5235, !5236}
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5231, file: !5180, line: 45, baseType: !854, size: 32)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5231, file: !5180, line: 46, baseType: !854, size: 32, offset: 32)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5231, file: !5180, line: 47, baseType: !854, size: 32, offset: 64)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5231, file: !5180, line: 48, baseType: !854, size: 32, offset: 96)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !5216, file: !5180, line: 51, baseType: !854, size: 32, offset: 192)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !5216, file: !5180, line: 52, baseType: !854, size: 32, offset: 224)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5216, file: !5180, line: 55, baseType: !5240, size: 1024, offset: 256)
!5240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !854, size: 1024, elements: !867)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !5216, file: !5180, line: 58, baseType: !5242, size: 2048, offset: 1280)
!5242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !854, size: 2048, elements: !1029)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5216, file: !5180, line: 60, baseType: !5244, size: 384, offset: 3328)
!5244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !854, size: 384, elements: !318)
!5245 = !DIDerivedType(tag: DW_TAG_member, scope: !5216, file: !5180, line: 62, baseType: !5246, size: 384, offset: 3712)
!5246 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5216, file: !5180, line: 62, size: 384, elements: !5247)
!5247 = !{!5248, !5249}
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !5246, file: !5180, line: 63, baseType: !5244, size: 384)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !5246, file: !5180, line: 64, baseType: !5244, size: 384)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !5198, file: !5180, line: 351, baseType: !5251, size: 1088)
!5251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !5180, line: 79, size: 1088, elements: !5252)
!5252 = !{!5253, !5254, !5255, !5256, !5257, !5258, !5259, !5260, !5261, !5262, !5263, !5264, !5265, !5266, !5267, !5326}
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5251, file: !5180, line: 80, baseType: !854, size: 32)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5251, file: !5180, line: 81, baseType: !854, size: 32, offset: 32)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5251, file: !5180, line: 82, baseType: !854, size: 32, offset: 64)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5251, file: !5180, line: 83, baseType: !854, size: 32, offset: 96)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5251, file: !5180, line: 84, baseType: !854, size: 32, offset: 128)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5251, file: !5180, line: 85, baseType: !854, size: 32, offset: 160)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5251, file: !5180, line: 86, baseType: !854, size: 32, offset: 192)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5251, file: !5180, line: 88, baseType: !5211, size: 640, offset: 224)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !5251, file: !5180, line: 89, baseType: !129, size: 8, offset: 864)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !5251, file: !5180, line: 90, baseType: !129, size: 8, offset: 872)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !5251, file: !5180, line: 91, baseType: !129, size: 8, offset: 880)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !5251, file: !5180, line: 92, baseType: !129, size: 8, offset: 888)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !5251, file: !5180, line: 93, baseType: !129, size: 8, offset: 896)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !5251, file: !5180, line: 94, baseType: !129, size: 8, offset: 904)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5251, file: !5180, line: 95, baseType: !5268, size: 64, offset: 960)
!5268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5269, size: 64)
!5269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !5270, line: 11, size: 128, elements: !5271)
!5270 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!5271 = !{!5272, !5273}
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !5269, file: !5270, line: 12, baseType: !304, size: 64)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5269, file: !5270, line: 13, baseType: !5274, size: 64, offset: 64)
!5274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5275, size: 64)
!5275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !5276, line: 103, size: 1344, elements: !5277)
!5276 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!5277 = !{!5278, !5279, !5280, !5281, !5282, !5283, !5284, !5285, !5286, !5287, !5288, !5289, !5290, !5291, !5292, !5293, !5294, !5295, !5306, !5307, !5308}
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !5275, file: !5276, line: 109, baseType: !85, size: 64)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !5275, file: !5276, line: 110, baseType: !85, size: 64, offset: 64)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !5275, file: !5276, line: 111, baseType: !85, size: 64, offset: 128)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !5275, file: !5276, line: 112, baseType: !85, size: 64, offset: 192)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !5275, file: !5276, line: 113, baseType: !85, size: 64, offset: 256)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !5275, file: !5276, line: 114, baseType: !85, size: 64, offset: 320)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !5275, file: !5276, line: 117, baseType: !85, size: 64, offset: 384)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !5275, file: !5276, line: 118, baseType: !85, size: 64, offset: 448)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !5275, file: !5276, line: 119, baseType: !85, size: 64, offset: 512)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !5275, file: !5276, line: 120, baseType: !85, size: 64, offset: 576)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !5275, file: !5276, line: 121, baseType: !85, size: 64, offset: 640)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !5275, file: !5276, line: 122, baseType: !85, size: 64, offset: 704)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !5275, file: !5276, line: 123, baseType: !85, size: 64, offset: 768)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !5275, file: !5276, line: 124, baseType: !85, size: 64, offset: 832)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !5275, file: !5276, line: 125, baseType: !85, size: 64, offset: 896)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !5275, file: !5276, line: 139, baseType: !85, size: 64, offset: 960)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !5275, file: !5276, line: 142, baseType: !85, size: 64, offset: 1024)
!5295 = !DIDerivedType(tag: DW_TAG_member, scope: !5275, file: !5276, line: 144, baseType: !5296, size: 64, offset: 1088)
!5296 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5275, file: !5276, line: 144, size: 64, elements: !5297)
!5297 = !{!5298, !5299, !5300}
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5296, file: !5276, line: 146, baseType: !139, size: 16)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !5296, file: !5276, line: 148, baseType: !858, size: 64)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !5296, file: !5276, line: 150, baseType: !5301, size: 64)
!5301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !5276, line: 59, size: 64, elements: !5302)
!5302 = !{!5303, !5304, !5305}
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5301, file: !5276, line: 61, baseType: !858, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !5301, file: !5276, line: 63, baseType: !858, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !5301, file: !5276, line: 65, baseType: !858, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5275, file: !5276, line: 153, baseType: !85, size: 64, offset: 1152)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5275, file: !5276, line: 154, baseType: !85, size: 64, offset: 1216)
!5308 = !DIDerivedType(tag: DW_TAG_member, scope: !5275, file: !5276, line: 156, baseType: !5309, size: 64, offset: 1280)
!5309 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5275, file: !5276, line: 156, size: 64, elements: !5310)
!5310 = !{!5311, !5312, !5313}
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5309, file: !5276, line: 158, baseType: !139, size: 16)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !5309, file: !5276, line: 160, baseType: !858, size: 64)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !5309, file: !5276, line: 162, baseType: !5314, size: 64)
!5314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !5276, line: 69, size: 64, elements: !5315)
!5315 = !{!5316, !5317, !5318, !5319, !5320, !5321, !5322, !5323, !5324, !5325}
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5314, file: !5276, line: 71, baseType: !858, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !5314, file: !5276, line: 73, baseType: !858, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !5314, file: !5276, line: 75, baseType: !858, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !5314, file: !5276, line: 77, baseType: !858, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !5314, file: !5276, line: 80, baseType: !858, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5314, file: !5276, line: 83, baseType: !858, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !5314, file: !5276, line: 86, baseType: !858, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !5314, file: !5276, line: 88, baseType: !858, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !5314, file: !5276, line: 93, baseType: !858, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !5314, file: !5276, line: 100, baseType: !858, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !5251, file: !5180, line: 96, baseType: !854, size: 32, offset: 1024)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !5198, file: !5180, line: 352, baseType: !5328, size: 4608, align: 512)
!5328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !5180, line: 333, size: 4608, align: 512, elements: !5329)
!5329 = !{!5330, !5331, !5338}
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5328, file: !5180, line: 334, baseType: !5216, size: 4096, align: 128)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5328, file: !5180, line: 335, baseType: !5332, size: 512, offset: 4096)
!5332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !5180, line: 312, size: 512, elements: !5333)
!5333 = !{!5334, !5335, !5336}
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5332, file: !5180, line: 313, baseType: !858, size: 64)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5332, file: !5180, line: 314, baseType: !858, size: 64, offset: 64)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5332, file: !5180, line: 315, baseType: !5337, size: 384, offset: 128)
!5337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !858, size: 384, elements: !1301)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5328, file: !5180, line: 336, baseType: !5339, offset: 4608)
!5339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, elements: !1198)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !5198, file: !5180, line: 353, baseType: !5341, size: 32768)
!5341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 32768, elements: !4158)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !5179, file: !5180, line: 484, baseType: !5185, size: 64, offset: 192)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5179, file: !5180, line: 491, baseType: !5344, size: 128, offset: 256)
!5344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !5180, line: 404, size: 128, elements: !5345)
!5345 = !{!5346, !5347, !5348}
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5344, file: !5180, line: 424, baseType: !858, size: 64)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5344, file: !5180, line: 432, baseType: !7, size: 32, offset: 64)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5344, file: !5180, line: 440, baseType: !7, size: 32, offset: 96)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !5179, file: !5180, line: 498, baseType: !5344, size: 128, offset: 384)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !5179, file: !5180, line: 508, baseType: !5186, size: 33280, align: 512, offset: 512)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3682, file: !3683, line: 16, baseType: !100, size: 192, offset: 512)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3682, file: !3683, line: 17, baseType: !95, size: 32, offset: 704)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !937, file: !181, line: 1240, baseType: !66, size: 64, offset: 6912)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !937, file: !181, line: 1243, baseType: !854, size: 32, offset: 6976)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !937, file: !181, line: 1245, baseType: !1271, size: 64, offset: 7040)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !937, file: !181, line: 1246, baseType: !1271, size: 64, offset: 7104)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !937, file: !181, line: 1248, baseType: !855, size: 32, offset: 7168)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !937, file: !181, line: 1249, baseType: !5359, size: 64, offset: 7232)
!5359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5360, size: 64)
!5360 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !181, line: 634, flags: DIFlagFwdDecl)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !937, file: !181, line: 1252, baseType: !4531, size: 256, offset: 7296)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !937, file: !181, line: 1253, baseType: !5363, size: 128, offset: 7552)
!5363 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !5364, line: 21, baseType: !5365)
!5364 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!5365 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5364, line: 19, size: 128, elements: !5366)
!5366 = !{!5367}
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !5365, file: !5364, line: 20, baseType: !5368, size: 128)
!5368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 128, elements: !363)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !937, file: !181, line: 1255, baseType: !7, size: 32, offset: 7680)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !937, file: !181, line: 1261, baseType: !1124, size: 256, offset: 7744)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !937, file: !181, line: 1267, baseType: !62, size: 64, offset: 8000)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !937, file: !181, line: 1269, baseType: !883, size: 64, offset: 8064)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !937, file: !181, line: 1271, baseType: !5374, size: 448, offset: 8128)
!5374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2848, line: 63, size: 448, elements: !5375)
!5375 = !{!5376, !5381, !5382, !5383, !5384, !5385, !5386}
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !5374, file: !2848, line: 64, baseType: !5377, size: 64)
!5377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5378, size: 64)
!5378 = !DISubroutineType(types: !5379)
!5379 = !{!85, !5380, !2846}
!5380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5374, size: 64)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !5374, file: !2848, line: 66, baseType: !5377, size: 64, offset: 64)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !5374, file: !2848, line: 69, baseType: !304, size: 64, offset: 128)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !5374, file: !2848, line: 70, baseType: !68, size: 32, offset: 192)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5374, file: !2848, line: 71, baseType: !7, size: 32, offset: 224)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5374, file: !2848, line: 74, baseType: !143, size: 128, offset: 256)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !5374, file: !2848, line: 85, baseType: !5387, size: 64, offset: 384)
!5387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !937, file: !181, line: 1274, baseType: !1115, size: 64, offset: 8576)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !937, file: !181, line: 1280, baseType: !1115, size: 64, offset: 8640)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !937, file: !181, line: 1283, baseType: !68, size: 32, offset: 8704)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !937, file: !181, line: 1286, baseType: !2196, size: 32, offset: 8736)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !937, file: !181, line: 1289, baseType: !2652, size: 64, offset: 8768)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !937, file: !181, line: 1290, baseType: !1176, size: 64, offset: 8832)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !937, file: !181, line: 1297, baseType: !1397, size: 64, offset: 8896)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !937, file: !181, line: 1304, baseType: !5396, size: 64, offset: 8960)
!5396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !5397, line: 49, size: 64, elements: !5398)
!5397 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!5398 = !{!5399}
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5396, file: !5397, line: 50, baseType: !5400, size: 64)
!5400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5401, size: 64)
!5401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !5397, line: 41, size: 512, align: 512, elements: !5402)
!5402 = !{!5403, !5404, !5409}
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5401, file: !5397, line: 43, baseType: !105, size: 32)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !5401, file: !5397, line: 45, baseType: !5405, size: 192, offset: 64)
!5405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !5397, line: 29, size: 192, elements: !5406)
!5406 = !{!5407, !5408}
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5405, file: !5397, line: 30, baseType: !143, size: 128)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !5405, file: !5397, line: 32, baseType: !304, size: 64, offset: 128)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !5401, file: !5397, line: 46, baseType: !304, size: 64, offset: 256)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !937, file: !181, line: 1305, baseType: !5396, size: 64, offset: 9024)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !937, file: !181, line: 1306, baseType: !377, size: 128, align: 64, offset: 9088)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !937, file: !181, line: 1307, baseType: !1446, size: 256, offset: 9216)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !937, file: !181, line: 1309, baseType: !1124, size: 256, offset: 9472)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !937, file: !181, line: 1314, baseType: !68, size: 32, offset: 9728)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !937, file: !181, line: 1317, baseType: !105, size: 32, align: 512, offset: 10240)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !937, file: !181, line: 1318, baseType: !143, size: 128, offset: 10304)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !937, file: !181, line: 1320, baseType: !105, size: 32, offset: 10432)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !937, file: !181, line: 1321, baseType: !143, size: 128, offset: 10496)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !931, file: !932, line: 73, baseType: !68, size: 32, offset: 128)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !931, file: !932, line: 74, baseType: !5421, size: 64, offset: 192)
!5421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5422, size: 64)
!5422 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1222, line: 42, flags: DIFlagFwdDecl)
!5423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !885, file: !822, line: 141, baseType: !5425, size: 64, offset: 704)
!5425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5426, size: 64)
!5426 = !DISubroutineType(types: !5427)
!5427 = !{!68, !2908, !1314}
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !885, file: !822, line: 142, baseType: !5429, size: 64, offset: 768)
!5429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5430, size: 64)
!5430 = !DISubroutineType(types: !5431)
!5431 = !{!820, !820, !5432}
!5432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5433, size: 64)
!5433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !786)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !821, file: !822, line: 96, baseType: !936, size: 64, offset: 832)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !821, file: !822, line: 97, baseType: !85, size: 64, offset: 896)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !821, file: !822, line: 98, baseType: !66, size: 64, offset: 960)
!5437 = !DIDerivedType(tag: DW_TAG_member, scope: !821, file: !822, line: 100, baseType: !5438, size: 128, offset: 1024)
!5438 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !821, file: !822, line: 100, size: 128, elements: !5439)
!5439 = !{!5440, !5441}
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !5438, file: !822, line: 101, baseType: !143, size: 128)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !5438, file: !822, line: 102, baseType: !5442, size: 64)
!5442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !821, file: !822, line: 104, baseType: !143, size: 128, offset: 1152)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !821, file: !822, line: 105, baseType: !143, size: 128, offset: 1280)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !821, file: !822, line: 113, baseType: !5446, size: 128, offset: 1408)
!5446 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !821, file: !822, line: 109, size: 128, elements: !5447)
!5447 = !{!5448, !5449, !5450}
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !5446, file: !822, line: 110, baseType: !1180, size: 128)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !5446, file: !822, line: 111, baseType: !836, size: 128)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !5446, file: !822, line: 112, baseType: !377, size: 128, align: 64)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !814, file: !181, line: 1968, baseType: !5452, size: 64, offset: 64)
!5452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5453, size: 64)
!5453 = !DISubroutineType(types: !5454)
!5454 = !{!62, !820, !785, !5455}
!5455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5456, size: 64)
!5456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !5457, line: 10, size: 128, elements: !5458)
!5457 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!5458 = !{!5459, !5460}
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !5456, file: !5457, line: 11, baseType: !2236, size: 64)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !5456, file: !5457, line: 12, baseType: !66, size: 64, offset: 64)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !814, file: !181, line: 1969, baseType: !5462, size: 64, offset: 128)
!5462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5463, size: 64)
!5463 = !DISubroutineType(types: !5464)
!5464 = !{!68, !5421, !785, !68}
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !814, file: !181, line: 1970, baseType: !5466, size: 64, offset: 192)
!5466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5467, size: 64)
!5467 = !DISubroutineType(types: !5468)
!5468 = !{!808, !785, !68, !1314}
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !814, file: !181, line: 1972, baseType: !5470, size: 64, offset: 256)
!5470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5471, size: 64)
!5471 = !DISubroutineType(types: !5472)
!5472 = !{!68, !820, !300, !68}
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !814, file: !181, line: 1974, baseType: !5474, size: 64, offset: 320)
!5474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5475, size: 64)
!5475 = !DISubroutineType(types: !5476)
!5476 = !{!68, !5421, !785, !820, !70, !1314}
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !814, file: !181, line: 1976, baseType: !5478, size: 64, offset: 384)
!5478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5479, size: 64)
!5479 = !DISubroutineType(types: !5480)
!5480 = !{!68, !820, !785, !820}
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !814, file: !181, line: 1977, baseType: !5482, size: 64, offset: 448)
!5482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5483, size: 64)
!5483 = !DISubroutineType(types: !5484)
!5484 = !{!68, !785, !820}
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !814, file: !181, line: 1978, baseType: !5486, size: 64, offset: 512)
!5486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5487, size: 64)
!5487 = !DISubroutineType(types: !5488)
!5488 = !{!68, !5421, !785, !820, !62}
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !814, file: !181, line: 1980, baseType: !5490, size: 64, offset: 576)
!5490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5491, size: 64)
!5491 = !DISubroutineType(types: !5492)
!5492 = !{!68, !5421, !785, !820, !70}
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !814, file: !181, line: 1982, baseType: !5482, size: 64, offset: 640)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !814, file: !181, line: 1983, baseType: !5495, size: 64, offset: 704)
!5495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5496, size: 64)
!5496 = !DISubroutineType(types: !5497)
!5497 = !{!68, !5421, !785, !820, !70, !941}
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !814, file: !181, line: 1985, baseType: !5499, size: 64, offset: 768)
!5499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5500, size: 64)
!5500 = !DISubroutineType(types: !5501)
!5501 = !{!68, !5421, !785, !820, !785, !820, !7}
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !814, file: !181, line: 1987, baseType: !5503, size: 64, offset: 832)
!5503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5504, size: 64)
!5504 = !DISubroutineType(types: !5505)
!5505 = !{!68, !5421, !820, !5506}
!5506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5507, size: 64)
!5507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !181, line: 226, size: 640, elements: !5508)
!5508 = !{!5509, !5510, !5511, !5521, !5530, !5531, !5536, !5537, !5538}
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !5507, file: !181, line: 227, baseType: !7, size: 32)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !5507, file: !181, line: 228, baseType: !70, size: 16, offset: 32)
!5511 = !DIDerivedType(tag: DW_TAG_member, scope: !5507, file: !181, line: 241, baseType: !5512, size: 32, offset: 64)
!5512 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5507, file: !181, line: 241, size: 32, elements: !5513)
!5513 = !{!5514, !5515}
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !5512, file: !181, line: 242, baseType: !791, size: 32)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !5512, file: !181, line: 243, baseType: !5516, size: 32)
!5516 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !5517, line: 16, baseType: !5518)
!5517 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!5518 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5517, line: 14, size: 32, elements: !5519)
!5519 = !{!5520}
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5518, file: !5517, line: 15, baseType: !796, size: 32)
!5521 = !DIDerivedType(tag: DW_TAG_member, scope: !5507, file: !181, line: 245, baseType: !5522, size: 32, offset: 96)
!5522 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5507, file: !181, line: 245, size: 32, elements: !5523)
!5523 = !{!5524, !5525}
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !5522, file: !181, line: 246, baseType: !800, size: 32)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !5522, file: !181, line: 247, baseType: !5526, size: 32)
!5526 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !5517, line: 20, baseType: !5527)
!5527 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5517, line: 18, size: 32, elements: !5528)
!5528 = !{!5529}
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5527, file: !5517, line: 19, baseType: !804, size: 32)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !5507, file: !181, line: 249, baseType: !87, size: 64, offset: 128)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !5507, file: !181, line: 250, baseType: !5532, size: 128, offset: 192)
!5532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1272, line: 13, size: 128, elements: !5533)
!5533 = !{!5534, !5535}
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5532, file: !1272, line: 14, baseType: !1271, size: 64)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5532, file: !1272, line: 15, baseType: !304, size: 64, offset: 64)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !5507, file: !181, line: 251, baseType: !5532, size: 128, offset: 320)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !5507, file: !181, line: 252, baseType: !5532, size: 128, offset: 448)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !5507, file: !181, line: 259, baseType: !1097, size: 64, offset: 576)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !814, file: !181, line: 1988, baseType: !5540, size: 64, offset: 896)
!5540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5541, size: 64)
!5541 = !DISubroutineType(types: !5542)
!5542 = !{!68, !5421, !2908, !5543, !854, !7}
!5543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5544, size: 64)
!5544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !5545, line: 22, size: 1280, elements: !5546)
!5545 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!5546 = !{!5547, !5548, !5549, !5550, !5551, !5552, !5553, !5554, !5555, !5556, !5557, !5558, !5559, !5560, !5561, !5562, !5563, !5564, !5565, !5566, !5567}
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !5544, file: !5545, line: 23, baseType: !854, size: 32)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5544, file: !5545, line: 24, baseType: !70, size: 16, offset: 32)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !5544, file: !5545, line: 25, baseType: !7, size: 32, offset: 64)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !5544, file: !5545, line: 26, baseType: !1279, size: 32, offset: 96)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !5544, file: !5545, line: 27, baseType: !858, size: 64, offset: 128)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !5544, file: !5545, line: 28, baseType: !858, size: 64, offset: 192)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !5544, file: !5545, line: 41, baseType: !858, size: 64, offset: 256)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5544, file: !5545, line: 42, baseType: !941, size: 32, offset: 320)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !5544, file: !5545, line: 43, baseType: !941, size: 32, offset: 352)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !5544, file: !5545, line: 44, baseType: !791, size: 32, offset: 384)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !5544, file: !5545, line: 45, baseType: !800, size: 32, offset: 416)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5544, file: !5545, line: 46, baseType: !87, size: 64, offset: 448)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !5544, file: !5545, line: 47, baseType: !5532, size: 128, offset: 512)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !5544, file: !5545, line: 48, baseType: !5532, size: 128, offset: 640)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !5544, file: !5545, line: 49, baseType: !5532, size: 128, offset: 768)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !5544, file: !5545, line: 50, baseType: !5532, size: 128, offset: 896)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !5544, file: !5545, line: 51, baseType: !858, size: 64, offset: 1024)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !5544, file: !5545, line: 52, baseType: !858, size: 64, offset: 1088)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !5544, file: !5545, line: 53, baseType: !854, size: 32, offset: 1152)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !5544, file: !5545, line: 54, baseType: !854, size: 32, offset: 1184)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !5544, file: !5545, line: 55, baseType: !858, size: 64, offset: 1216)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !814, file: !181, line: 1990, baseType: !5569, size: 64, offset: 960)
!5569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5570, size: 64)
!5570 = !DISubroutineType(types: !5571)
!5571 = !{!1056, !820, !300, !81}
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !814, file: !181, line: 1991, baseType: !5573, size: 64, offset: 1024)
!5573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5574, size: 64)
!5574 = !DISubroutineType(types: !5575)
!5575 = !{!68, !785, !5576, !858, !858}
!5576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5577, size: 64)
!5577 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !181, line: 55, flags: DIFlagFwdDecl)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !814, file: !181, line: 1993, baseType: !5579, size: 64, offset: 1088)
!5579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5580, size: 64)
!5580 = !DISubroutineType(types: !5581)
!5581 = !{!68, !785, !68}
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !814, file: !181, line: 1994, baseType: !5583, size: 64, offset: 1152)
!5583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5584, size: 64)
!5584 = !DISubroutineType(types: !5585)
!5585 = !{!68, !785, !820, !1097, !7, !70}
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !814, file: !181, line: 1997, baseType: !5587, size: 64, offset: 1216)
!5587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5588, size: 64)
!5588 = !DISubroutineType(types: !5589)
!5589 = !{!68, !5421, !785, !1097, !70}
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !814, file: !181, line: 1999, baseType: !5591, size: 64, offset: 1280)
!5591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5592, size: 64)
!5592 = !DISubroutineType(types: !5593)
!5593 = !{!808, !5421, !820, !68}
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !814, file: !181, line: 2001, baseType: !5595, size: 64, offset: 1344)
!5595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5596, size: 64)
!5596 = !DISubroutineType(types: !5597)
!5597 = !{!68, !5421, !820, !808, !68}
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !814, file: !181, line: 2003, baseType: !5599, size: 64, offset: 1408)
!5599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5600, size: 64)
!5600 = !DISubroutineType(types: !5601)
!5601 = !{!68, !5421, !820, !5602}
!5602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5603, size: 64)
!5603 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !181, line: 76, flags: DIFlagFwdDecl)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !814, file: !181, line: 2005, baseType: !5605, size: 64, offset: 1472)
!5605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5606, size: 64)
!5606 = !DISubroutineType(types: !5607)
!5607 = !{!68, !820, !5602}
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !814, file: !181, line: 2006, baseType: !5609, size: 64, offset: 1536)
!5609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5610, size: 64)
!5610 = !DISubroutineType(types: !5611)
!5611 = !{!5612, !785}
!5612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5613, size: 64)
!5613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !181, line: 3192, size: 192, elements: !5614)
!5614 = !{!5615, !5616}
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !5613, file: !181, line: 3193, baseType: !4282, size: 128)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !5613, file: !181, line: 3194, baseType: !854, size: 32, offset: 128)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !786, file: !181, line: 655, baseType: !936, size: 64, offset: 448)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !786, file: !181, line: 656, baseType: !781, size: 64, offset: 512)
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !786, file: !181, line: 659, baseType: !66, size: 64, offset: 576)
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !786, file: !181, line: 663, baseType: !85, size: 64, offset: 640)
!5621 = !DIDerivedType(tag: DW_TAG_member, scope: !786, file: !181, line: 671, baseType: !5622, size: 32, offset: 704)
!5622 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !786, file: !181, line: 671, size: 32, elements: !5623)
!5623 = !{!5624, !5625}
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !5622, file: !181, line: 672, baseType: !4839, size: 32)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !5622, file: !181, line: 673, baseType: !7, size: 32)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !786, file: !181, line: 675, baseType: !941, size: 32, offset: 736)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !786, file: !181, line: 676, baseType: !87, size: 64, offset: 768)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !786, file: !181, line: 677, baseType: !5532, size: 128, offset: 832)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !786, file: !181, line: 678, baseType: !5532, size: 128, offset: 960)
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !786, file: !181, line: 679, baseType: !5532, size: 128, offset: 1088)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !786, file: !181, line: 680, baseType: !105, size: 32, offset: 1216)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !786, file: !181, line: 681, baseType: !72, size: 16, offset: 1248)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !786, file: !181, line: 682, baseType: !129, size: 8, offset: 1264)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !786, file: !181, line: 683, baseType: !129, size: 8, offset: 1272)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !786, file: !181, line: 684, baseType: !2981, size: 64, offset: 1280)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !786, file: !181, line: 691, baseType: !85, size: 64, offset: 1344)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !786, file: !181, line: 692, baseType: !1255, size: 320, offset: 1408)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !786, file: !181, line: 694, baseType: !85, size: 64, offset: 1728)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !786, file: !181, line: 695, baseType: !85, size: 64, offset: 1792)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !786, file: !181, line: 697, baseType: !1180, size: 128, offset: 1856)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !786, file: !181, line: 698, baseType: !143, size: 128, offset: 1984)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !786, file: !181, line: 707, baseType: !143, size: 128, offset: 2112)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !786, file: !181, line: 708, baseType: !143, size: 128, offset: 2240)
!5644 = !DIDerivedType(tag: DW_TAG_member, scope: !786, file: !181, line: 709, baseType: !5645, size: 128, offset: 2368)
!5645 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !786, file: !181, line: 709, size: 128, elements: !5646)
!5646 = !{!5647, !5648}
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !5645, file: !181, line: 710, baseType: !1176, size: 64)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !5645, file: !181, line: 711, baseType: !377, size: 128, align: 64)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !786, file: !181, line: 713, baseType: !1117, size: 64, offset: 2496)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !786, file: !181, line: 714, baseType: !1117, size: 64, offset: 2560)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !786, file: !181, line: 715, baseType: !95, size: 32, offset: 2624)
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !786, file: !181, line: 716, baseType: !95, size: 32, offset: 2656)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !786, file: !181, line: 717, baseType: !95, size: 32, offset: 2688)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !786, file: !181, line: 719, baseType: !95, size: 32, offset: 2720)
!5655 = !DIDerivedType(tag: DW_TAG_member, scope: !786, file: !181, line: 721, baseType: !5656, size: 64, offset: 2752)
!5656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !786, file: !181, line: 721, size: 64, elements: !5657)
!5657 = !{!5658, !5659}
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !5656, file: !181, line: 722, baseType: !1580, size: 64)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !5656, file: !181, line: 723, baseType: !2717, size: 64)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !786, file: !181, line: 725, baseType: !5661, size: 64, offset: 2816)
!5661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5662, size: 64)
!5662 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !181, line: 725, flags: DIFlagFwdDecl)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !786, file: !181, line: 726, baseType: !782, size: 1536, align: 64, offset: 2880)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !786, file: !181, line: 727, baseType: !143, size: 128, offset: 4416)
!5665 = !DIDerivedType(tag: DW_TAG_member, scope: !786, file: !181, line: 728, baseType: !5666, size: 64, offset: 4544)
!5666 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !786, file: !181, line: 728, size: 64, elements: !5667)
!5667 = !{!5668, !5669, !5672, !5673}
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !5666, file: !181, line: 729, baseType: !2107, size: 64)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !5666, file: !181, line: 730, baseType: !5670, size: 64)
!5670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5671, size: 64)
!5671 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !181, line: 730, flags: DIFlagFwdDecl)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !5666, file: !181, line: 731, baseType: !300, size: 64)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !5666, file: !181, line: 732, baseType: !7, size: 32)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !786, file: !181, line: 735, baseType: !855, size: 32, offset: 4608)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !786, file: !181, line: 738, baseType: !855, size: 32, offset: 4640)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !786, file: !181, line: 739, baseType: !5359, size: 64, offset: 4672)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !786, file: !181, line: 750, baseType: !66, size: 64, offset: 4736)
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !782, file: !181, line: 474, baseType: !4282, size: 128, offset: 64)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !782, file: !181, line: 475, baseType: !1255, size: 320, offset: 192)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !782, file: !181, line: 476, baseType: !305, size: 32, offset: 512)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !782, file: !181, line: 477, baseType: !95, size: 32, offset: 544)
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !782, file: !181, line: 482, baseType: !1953, size: 128, offset: 576)
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !782, file: !181, line: 483, baseType: !85, size: 64, offset: 704)
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !782, file: !181, line: 484, baseType: !85, size: 64, offset: 768)
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !782, file: !181, line: 485, baseType: !5686, size: 64, offset: 832)
!5686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5687, size: 64)
!5687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5688)
!5688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !181, line: 404, size: 1280, elements: !5689)
!5689 = !{!5690, !5694, !5698, !5702, !5706, !5722, !5726, !5730, !5734, !5738, !5742, !5746, !5747, !5751, !5755, !5759, !5764, !5768, !5820, !5821}
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !5688, file: !181, line: 405, baseType: !5691, size: 64)
!5691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5692, size: 64)
!5692 = !DISubroutineType(types: !5693)
!5693 = !{!68, !759, !2729}
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !5688, file: !181, line: 406, baseType: !5695, size: 64, offset: 64)
!5695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5696, size: 64)
!5696 = !DISubroutineType(types: !5697)
!5697 = !{!68, !1097, !1622}
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !5688, file: !181, line: 409, baseType: !5699, size: 64, offset: 128)
!5699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5700, size: 64)
!5700 = !DISubroutineType(types: !5701)
!5701 = !{!68, !781, !2729}
!5702 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !5688, file: !181, line: 412, baseType: !5703, size: 64, offset: 192)
!5703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5704, size: 64)
!5704 = !DISubroutineType(types: !5705)
!5705 = !{!1314, !781, !1622}
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !5688, file: !181, line: 414, baseType: !5707, size: 64, offset: 256)
!5707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5708, size: 64)
!5708 = !DISubroutineType(types: !5709)
!5709 = !{null, !5710}
!5710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5711, size: 64)
!5711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1619, line: 1276, size: 448, elements: !5712)
!5712 = !{!5713, !5714, !5715, !5717, !5718, !5719, !5720, !5721}
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !5711, file: !1619, line: 1277, baseType: !1097, size: 64)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !5711, file: !1619, line: 1278, baseType: !781, size: 64, offset: 64)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !5711, file: !1619, line: 1279, baseType: !5716, size: 64, offset: 128)
!5716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !5711, file: !1619, line: 1281, baseType: !85, size: 64, offset: 192)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !5711, file: !1619, line: 1282, baseType: !7, size: 32, offset: 256)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !5711, file: !1619, line: 1283, baseType: !7, size: 32, offset: 288)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !5711, file: !1619, line: 1284, baseType: !1314, size: 8, offset: 320)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !5711, file: !1619, line: 1285, baseType: !85, size: 64, offset: 384)
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !5688, file: !181, line: 416, baseType: !5723, size: 64, offset: 320)
!5723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5724, size: 64)
!5724 = !DISubroutineType(types: !5725)
!5725 = !{!68, !1097, !781, !87, !7, !5112, !2123}
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !5688, file: !181, line: 419, baseType: !5727, size: 64, offset: 384)
!5727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5728, size: 64)
!5728 = !DISubroutineType(types: !5729)
!5729 = !{!68, !1097, !781, !87, !7, !7, !759, !66}
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !5688, file: !181, line: 424, baseType: !5731, size: 64, offset: 448)
!5731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5732, size: 64)
!5732 = !DISubroutineType(types: !5733)
!5733 = !{!3012, !781, !3012}
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !5688, file: !181, line: 425, baseType: !5735, size: 64, offset: 512)
!5735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5736, size: 64)
!5736 = !DISubroutineType(types: !5737)
!5737 = !{null, !1622, !81, !81}
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !5688, file: !181, line: 426, baseType: !5739, size: 64, offset: 576)
!5739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5740, size: 64)
!5740 = !DISubroutineType(types: !5741)
!5741 = !{!1314, !1622, !305}
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !5688, file: !181, line: 427, baseType: !5743, size: 64, offset: 640)
!5743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5744, size: 64)
!5744 = !DISubroutineType(types: !5745)
!5745 = !{null, !1622}
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !5688, file: !181, line: 428, baseType: !1598, size: 64, offset: 704)
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !5688, file: !181, line: 433, baseType: !5748, size: 64, offset: 768)
!5748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5749, size: 64)
!5749 = !DISubroutineType(types: !5750)
!5750 = !{!68, !781, !1622, !1622, !274}
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !5688, file: !181, line: 435, baseType: !5752, size: 64, offset: 832)
!5752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5753, size: 64)
!5753 = !DISubroutineType(types: !5754)
!5754 = !{!68, !1622}
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !5688, file: !181, line: 436, baseType: !5756, size: 64, offset: 896)
!5756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5757, size: 64)
!5757 = !DISubroutineType(types: !5758)
!5758 = !{!1314, !1622, !81, !81}
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !5688, file: !181, line: 438, baseType: !5760, size: 64, offset: 960)
!5760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5761, size: 64)
!5761 = !DISubroutineType(types: !5762)
!5762 = !{null, !1622, !5763, !5763}
!5763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !5688, file: !181, line: 439, baseType: !5765, size: 64, offset: 1024)
!5765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5766, size: 64)
!5766 = !DISubroutineType(types: !5767)
!5767 = !{!68, !781, !759}
!5768 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !5688, file: !181, line: 442, baseType: !5769, size: 64, offset: 1088)
!5769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5770, size: 64)
!5770 = !DISubroutineType(types: !5771)
!5771 = !{!68, !5772, !1097, !5819}
!5772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5773, size: 64)
!5773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !4667, line: 282, size: 2176, elements: !5774)
!5774 = !{!5775, !5776, !5777, !5778, !5779, !5780, !5781, !5783, !5790, !5795, !5796, !5797, !5798, !5799, !5800, !5801, !5802, !5808, !5809, !5810, !5811, !5812, !5813, !5814, !5815, !5816, !5817}
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !5773, file: !4667, line: 283, baseType: !4331, size: 128)
!5776 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5773, file: !4667, line: 284, baseType: !85, size: 64, offset: 128)
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !5773, file: !4667, line: 285, baseType: !1283, size: 16, offset: 192)
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5773, file: !4667, line: 286, baseType: !3900, size: 320, offset: 256)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5773, file: !4667, line: 287, baseType: !2422, size: 8, offset: 576)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !5773, file: !4667, line: 288, baseType: !7, size: 32, offset: 608)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "swap_map", scope: !5773, file: !4667, line: 289, baseType: !5782, size: 64, offset: 640)
!5782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_info", scope: !5773, file: !4667, line: 290, baseType: !5784, size: 64, offset: 704)
!5784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5785, size: 64)
!5785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_info", file: !4667, line: 250, size: 64, elements: !5786)
!5786 = !{!5787, !5788, !5789}
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5785, file: !4667, line: 251, baseType: !105, size: 32)
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5785, file: !4667, line: 257, baseType: !7, size: 24, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5785, file: !4667, line: 258, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !5773, file: !4667, line: 291, baseType: !5791, size: 128, offset: 768)
!5791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_list", file: !4667, line: 274, size: 128, elements: !5792)
!5792 = !{!5793, !5794}
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5791, file: !4667, line: 275, baseType: !5785, size: 64)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !5791, file: !4667, line: 276, baseType: !5785, size: 64, offset: 64)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_bit", scope: !5773, file: !4667, line: 292, baseType: !7, size: 32, offset: 896)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "highest_bit", scope: !5773, file: !4667, line: 293, baseType: !7, size: 32, offset: 928)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !5773, file: !4667, line: 294, baseType: !7, size: 32, offset: 960)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "inuse_pages", scope: !5773, file: !4667, line: 295, baseType: !7, size: 32, offset: 992)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next", scope: !5773, file: !4667, line: 296, baseType: !7, size: 32, offset: 1024)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_nr", scope: !5773, file: !4667, line: 297, baseType: !7, size: 32, offset: 1056)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next_cpu", scope: !5773, file: !4667, line: 298, baseType: !2443, size: 64, offset: 1088)
!5802 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_cluster", scope: !5773, file: !4667, line: 299, baseType: !5803, size: 64, offset: 1152)
!5803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5804, size: 64)
!5804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_cluster", file: !4667, line: 269, size: 96, elements: !5805)
!5805 = !{!5806, !5807}
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5804, file: !4667, line: 270, baseType: !5785, size: 64)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5804, file: !4667, line: 271, baseType: !7, size: 32, offset: 64)
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "swap_extent_root", scope: !5773, file: !4667, line: 300, baseType: !1527, size: 64, offset: 1216)
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !5773, file: !4667, line: 301, baseType: !3007, size: 64, offset: 1280)
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "swap_file", scope: !5773, file: !4667, line: 302, baseType: !1097, size: 64, offset: 1344)
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "old_block_size", scope: !5773, file: !4667, line: 303, baseType: !7, size: 32, offset: 1408)
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !5773, file: !4667, line: 304, baseType: !1485, size: 256, offset: 1472)
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5773, file: !4667, line: 305, baseType: !105, size: 32, offset: 1728)
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "cont_lock", scope: !5773, file: !4667, line: 318, baseType: !105, size: 32, offset: 1760)
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "discard_work", scope: !5773, file: !4667, line: 322, baseType: !1446, size: 256, offset: 1792)
!5816 = !DIDerivedType(tag: DW_TAG_member, name: "discard_clusters", scope: !5773, file: !4667, line: 323, baseType: !5791, size: 128, offset: 2048)
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "avail_lists", scope: !5773, file: !4667, line: 324, baseType: !5818, offset: 2176)
!5818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3900, elements: !1198)
!5819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !5688, file: !181, line: 444, baseType: !2115, size: 64, offset: 1152)
!5821 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !5688, file: !181, line: 445, baseType: !5822, size: 64, offset: 1216)
!5822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5823, size: 64)
!5823 = !DISubroutineType(types: !5824)
!5824 = !{!68, !1601, !1706}
!5825 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !782, file: !181, line: 486, baseType: !85, size: 64, offset: 896)
!5826 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !782, file: !181, line: 487, baseType: !1255, size: 320, offset: 960)
!5827 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !782, file: !181, line: 488, baseType: !2196, size: 32, offset: 1280)
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !782, file: !181, line: 489, baseType: !105, size: 32, offset: 1312)
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !782, file: !181, line: 490, baseType: !143, size: 128, offset: 1344)
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !782, file: !181, line: 491, baseType: !66, size: 64, offset: 1472)
!5831 = !DIDerivedType(tag: DW_TAG_member, scope: !767, file: !154, line: 107, baseType: !5832, size: 64, offset: 192)
!5832 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !767, file: !154, line: 107, size: 64, elements: !5833)
!5833 = !{!5834, !5835}
!5834 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5832, file: !154, line: 108, baseType: !85, size: 64)
!5835 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !5832, file: !154, line: 109, baseType: !85, size: 64)
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !767, file: !154, line: 117, baseType: !85, size: 64, offset: 256)
!5837 = !DIDerivedType(tag: DW_TAG_member, scope: !764, file: !154, line: 119, baseType: !5838, size: 320)
!5838 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !764, file: !154, line: 119, size: 320, elements: !5839)
!5839 = !{!5840, !5841, !5844, !5845, !5846}
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !5838, file: !154, line: 124, baseType: !85, size: 64)
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !5838, file: !154, line: 125, baseType: !5842, size: 64, offset: 64)
!5842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5843, size: 64)
!5843 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !154, line: 125, flags: DIFlagFwdDecl)
!5844 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !5838, file: !154, line: 126, baseType: !85, size: 64, offset: 128)
!5845 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !5838, file: !154, line: 127, baseType: !85, size: 64, offset: 192)
!5846 = !DIDerivedType(tag: DW_TAG_member, scope: !5838, file: !154, line: 128, baseType: !5847, size: 64, offset: 256)
!5847 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5838, file: !154, line: 128, size: 64, elements: !5848)
!5848 = !{!5849, !5850}
!5849 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !5847, file: !154, line: 133, baseType: !85, size: 64)
!5850 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !5847, file: !154, line: 138, baseType: !1115, size: 64)
!5851 = !DIDerivedType(tag: DW_TAG_member, scope: !764, file: !154, line: 141, baseType: !5852, size: 64)
!5852 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !764, file: !154, line: 141, size: 64, elements: !5853)
!5853 = !{!5854}
!5854 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !5852, file: !154, line: 142, baseType: !85, size: 64)
!5855 = !DIDerivedType(tag: DW_TAG_member, scope: !764, file: !154, line: 144, baseType: !5856, size: 128)
!5856 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !764, file: !154, line: 144, size: 128, elements: !5857)
!5857 = !{!5858, !5908}
!5858 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !5856, file: !154, line: 146, baseType: !5859, size: 64)
!5859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5860, size: 64)
!5860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !289, line: 126, size: 1216, elements: !5861)
!5861 = !{!5862, !5871, !5872, !5873, !5874, !5875, !5876, !5890, !5891, !5892}
!5862 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !5860, file: !289, line: 127, baseType: !5863, size: 384)
!5863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !289, line: 21, size: 384, elements: !5864)
!5864 = !{!5865, !5866, !5867, !5868, !5869, !5870}
!5865 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !5863, file: !289, line: 22, baseType: !85, size: 64)
!5866 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !5863, file: !289, line: 23, baseType: !299, size: 64, offset: 64)
!5867 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !5863, file: !289, line: 24, baseType: !299, size: 64, offset: 128)
!5868 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5863, file: !289, line: 25, baseType: !85, size: 64, offset: 192)
!5869 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !5863, file: !289, line: 26, baseType: !85, size: 64, offset: 256)
!5870 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !5863, file: !289, line: 27, baseType: !85, size: 64, offset: 320)
!5871 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5860, file: !289, line: 128, baseType: !4331, size: 128, offset: 384)
!5872 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !5860, file: !289, line: 129, baseType: !1485, size: 256, offset: 512)
!5873 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5860, file: !289, line: 130, baseType: !288, size: 32, offset: 768)
!5874 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5860, file: !289, line: 131, baseType: !7, size: 32, offset: 800)
!5875 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !5860, file: !289, line: 132, baseType: !85, size: 64, offset: 832)
!5876 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5860, file: !289, line: 133, baseType: !5877, size: 64, offset: 896)
!5877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5878, size: 64)
!5878 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5879)
!5879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !289, line: 77, size: 192, elements: !5880)
!5880 = !{!5881, !5885, !5886}
!5881 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !5879, file: !289, line: 83, baseType: !5882, size: 64)
!5882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5883, size: 64)
!5883 = !DISubroutineType(types: !5884)
!5884 = !{null, !759}
!5885 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !5879, file: !289, line: 89, baseType: !1981, size: 64, offset: 64)
!5886 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !5879, file: !289, line: 100, baseType: !5887, size: 64, offset: 128)
!5887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5888, size: 64)
!5888 = !DISubroutineType(types: !5889)
!5889 = !{!68, !5859, !85, !85, !68}
!5890 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5860, file: !289, line: 134, baseType: !66, size: 64, offset: 960)
!5891 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !5860, file: !289, line: 135, baseType: !68, size: 32, offset: 1024)
!5892 = !DIDerivedType(tag: DW_TAG_member, scope: !5860, file: !289, line: 136, baseType: !5893, size: 128, offset: 1088)
!5893 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5860, file: !289, line: 136, size: 128, elements: !5894)
!5894 = !{!5895, !5901}
!5895 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !5893, file: !289, line: 137, baseType: !5896, size: 128)
!5896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !5897, line: 6, size: 128, elements: !5898)
!5897 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!5898 = !{!5899, !5900}
!5899 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5896, file: !5897, line: 7, baseType: !858, size: 64)
!5900 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5896, file: !5897, line: 8, baseType: !858, size: 64, offset: 64)
!5901 = !DIDerivedType(tag: DW_TAG_member, scope: !5893, file: !289, line: 138, baseType: !5902)
!5902 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5893, file: !289, line: 138, elements: !5903)
!5903 = !{!5904, !5906}
!5904 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !5902, file: !289, line: 138, baseType: !5905)
!5905 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5902, file: !289, line: 138, elements: !1779)
!5906 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !5902, file: !289, line: 138, baseType: !5907)
!5907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5896, elements: !1198)
!5908 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !5856, file: !154, line: 147, baseType: !66, size: 64, offset: 64)
!5909 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !764, file: !154, line: 161, baseType: !377, size: 128, align: 64)
!5910 = !DIDerivedType(tag: DW_TAG_member, scope: !760, file: !154, line: 164, baseType: !5911, size: 32, offset: 384)
!5911 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !760, file: !154, line: 164, size: 32, elements: !5912)
!5912 = !{!5913, !5914}
!5913 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !5911, file: !154, line: 169, baseType: !95, size: 32)
!5914 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !5911, file: !154, line: 177, baseType: !7, size: 32)
!5915 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !760, file: !154, line: 181, baseType: !95, size: 32, offset: 416)
!5916 = !DILocalVariable(name: "pfn", scope: !5917, file: !3, line: 521, type: !85)
!5917 = distinct !DILexicalBlock(scope: !5918, file: !3, line: 520, column: 48)
!5918 = distinct !DILexicalBlock(scope: !5919, file: !3, line: 520, column: 2)
!5919 = distinct !DILexicalBlock(scope: !748, file: !3, line: 520, column: 2)
!5920 = !DILabel(scope: !748, name: "failed", file: !3, line: 542)
!5921 = !DILocalVariable(name: "ms", scope: !5922, file: !3, line: 545, type: !368)
!5922 = distinct !DILexicalBlock(scope: !5923, file: !3, line: 544, column: 48)
!5923 = distinct !DILexicalBlock(scope: !5924, file: !3, line: 544, column: 2)
!5924 = distinct !DILexicalBlock(scope: !748, file: !3, line: 544, column: 2)
!5925 = !DILocation(line: 505, column: 40, scope: !748)
!5926 = !DILocation(line: 505, column: 59, scope: !748)
!5927 = !DILocation(line: 506, column: 22, scope: !748)
!5928 = !DILocation(line: 507, column: 22, scope: !748)
!5929 = !DILocation(line: 509, column: 2, scope: !748)
!5930 = !DILocation(line: 509, column: 28, scope: !748)
!5931 = !DILocation(line: 510, column: 2, scope: !748)
!5932 = !DILocation(line: 510, column: 16, scope: !748)
!5933 = !DILocation(line: 511, column: 2, scope: !748)
!5934 = !DILocation(line: 511, column: 15, scope: !748)
!5935 = !DILocation(line: 513, column: 51, scope: !748)
!5936 = !DILocation(line: 514, column: 4, scope: !748)
!5937 = !DILocation(line: 514, column: 31, scope: !748)
!5938 = !DILocation(line: 514, column: 29, scope: !748)
!5939 = !DILocation(line: 513, column: 10, scope: !748)
!5940 = !DILocation(line: 513, column: 8, scope: !748)
!5941 = !DILocation(line: 515, column: 7, scope: !5942)
!5942 = distinct !DILexicalBlock(scope: !748, file: !3, line: 515, column: 6)
!5943 = !DILocation(line: 515, column: 6, scope: !748)
!5944 = !DILocation(line: 516, column: 3, scope: !5945)
!5945 = distinct !DILexicalBlock(scope: !5946, file: !3, line: 516, column: 3)
!5946 = distinct !DILexicalBlock(scope: !5942, file: !3, line: 515, column: 14)
!5947 = !DILocation(line: 516, column: 3, scope: !5948)
!5948 = distinct !DILexicalBlock(scope: !5945, file: !3, line: 516, column: 3)
!5949 = !DILocation(line: 517, column: 3, scope: !5946)
!5950 = !DILocation(line: 519, column: 21, scope: !748)
!5951 = !DILocation(line: 519, column: 33, scope: !748)
!5952 = !DILocation(line: 519, column: 31, scope: !748)
!5953 = !DILocation(line: 519, column: 53, scope: !748)
!5954 = !DILocation(line: 519, column: 2, scope: !748)
!5955 = !DILocation(line: 520, column: 2, scope: !5919)
!5956 = !DILocation(line: 520, column: 2, scope: !5918)
!5957 = !DILocation(line: 521, column: 3, scope: !5917)
!5958 = !DILocation(line: 521, column: 17, scope: !5917)
!5959 = !DILocation(line: 521, column: 41, scope: !5917)
!5960 = !DILocation(line: 521, column: 23, scope: !5917)
!5961 = !DILocation(line: 523, column: 7, scope: !5962)
!5962 = distinct !DILexicalBlock(scope: !5917, file: !3, line: 523, column: 7)
!5963 = !DILocation(line: 523, column: 15, scope: !5962)
!5964 = !DILocation(line: 523, column: 12, scope: !5962)
!5965 = !DILocation(line: 523, column: 7, scope: !5917)
!5966 = !DILocation(line: 524, column: 4, scope: !5962)
!5967 = !DILocation(line: 526, column: 35, scope: !5917)
!5968 = !DILocation(line: 527, column: 5, scope: !5917)
!5969 = !DILocation(line: 526, column: 9, scope: !5917)
!5970 = !DILocation(line: 526, column: 7, scope: !5917)
!5971 = !DILocation(line: 528, column: 8, scope: !5972)
!5972 = distinct !DILexicalBlock(scope: !5917, file: !3, line: 528, column: 7)
!5973 = !DILocation(line: 528, column: 7, scope: !5917)
!5974 = !DILocation(line: 529, column: 4, scope: !5975)
!5975 = distinct !DILexicalBlock(scope: !5976, file: !3, line: 529, column: 4)
!5976 = distinct !DILexicalBlock(scope: !5972, file: !3, line: 528, column: 13)
!5977 = !DILocation(line: 529, column: 4, scope: !5978)
!5978 = distinct !DILexicalBlock(scope: !5975, file: !3, line: 529, column: 4)
!5979 = !DILocation(line: 531, column: 17, scope: !5976)
!5980 = !DILocation(line: 531, column: 15, scope: !5976)
!5981 = !DILocation(line: 532, column: 4, scope: !5976)
!5982 = !DILocation(line: 533, column: 4, scope: !5976)
!5983 = !DILocation(line: 535, column: 27, scope: !5917)
!5984 = !DILocation(line: 535, column: 32, scope: !5917)
!5985 = !DILocation(line: 535, column: 3, scope: !5917)
!5986 = !DILocation(line: 536, column: 43, scope: !5917)
!5987 = !DILocation(line: 536, column: 27, scope: !5917)
!5988 = !DILocation(line: 536, column: 50, scope: !5917)
!5989 = !DILocation(line: 536, column: 56, scope: !5917)
!5990 = !DILocation(line: 536, column: 61, scope: !5917)
!5991 = !DILocation(line: 536, column: 3, scope: !5917)
!5992 = !DILocation(line: 538, column: 20, scope: !5917)
!5993 = !DILocation(line: 538, column: 28, scope: !5917)
!5994 = !DILocation(line: 538, column: 26, scope: !5917)
!5995 = !DILocation(line: 538, column: 9, scope: !5917)
!5996 = !DILocation(line: 539, column: 2, scope: !5918)
!5997 = !DILocation(line: 539, column: 2, scope: !5917)
!5998 = distinct !{!5998, !5955, !5999, !474, !475}
!5999 = !DILocation(line: 539, column: 2, scope: !5919)
!6000 = !DILocation(line: 540, column: 2, scope: !748)
!6001 = !DILocation(line: 541, column: 2, scope: !748)
!6002 = !DILocation(line: 542, column: 1, scope: !748)
!6003 = !DILocation(line: 544, column: 2, scope: !5924)
!6004 = !DILocation(line: 544, column: 2, scope: !5923)
!6005 = !DILocation(line: 545, column: 3, scope: !5922)
!6006 = !DILocation(line: 545, column: 23, scope: !5922)
!6007 = !DILocation(line: 547, column: 7, scope: !6008)
!6008 = distinct !DILexicalBlock(scope: !5922, file: !3, line: 547, column: 7)
!6009 = !DILocation(line: 547, column: 15, scope: !6008)
!6010 = !DILocation(line: 547, column: 12, scope: !6008)
!6011 = !DILocation(line: 547, column: 7, scope: !5922)
!6012 = !DILocation(line: 548, column: 4, scope: !6008)
!6013 = !DILocation(line: 549, column: 24, scope: !5922)
!6014 = !DILocation(line: 549, column: 8, scope: !5922)
!6015 = !DILocation(line: 549, column: 6, scope: !5922)
!6016 = !DILocation(line: 550, column: 3, scope: !5922)
!6017 = !DILocation(line: 550, column: 7, scope: !5922)
!6018 = !DILocation(line: 550, column: 23, scope: !5922)
!6019 = !DILocation(line: 551, column: 2, scope: !5923)
!6020 = !DILocation(line: 551, column: 2, scope: !5922)
!6021 = distinct !{!6021, !6003, !6022, !474, !475}
!6022 = !DILocation(line: 551, column: 2, scope: !5924)
!6023 = !DILocation(line: 552, column: 1, scope: !748)
!6024 = distinct !DISubprogram(name: "_static_cpu_has", scope: !6025, file: !6025, line: 173, type: !6026, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6028)
!6025 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!6026 = !DISubroutineType(types: !6027)
!6027 = !{!1314, !139}
!6028 = !{!6029, !6030, !6031}
!6029 = !DILocalVariable(name: "bit", arg: 1, scope: !6024, file: !6025, line: 173, type: !139)
!6030 = !DILabel(scope: !6024, name: "t_yes", file: !6025, line: 187)
!6031 = !DILabel(scope: !6024, name: "t_no", file: !6025, line: 189)
!6032 = !DILocation(line: 173, column: 49, scope: !6024)
!6033 = !DILocation(line: 183, column: 24, scope: !6024)
!6034 = !DILocation(line: 184, column: 30, scope: !6024)
!6035 = !DILocation(line: 184, column: 34, scope: !6024)
!6036 = !DILocation(line: 184, column: 26, scope: !6024)
!6037 = !DILocation(line: 185, column: 70, scope: !6024)
!6038 = !DILocation(line: 185, column: 74, scope: !6024)
!6039 = !DILocation(line: 185, column: 25, scope: !6024)
!6040 = !DILocation(line: 175, column: 2, scope: !6024)
!6041 = !{i64 2149660043, i64 2149660076, i64 2149660082, i64 2149660098, i64 2149660117, i64 2149660148, i64 2149661101, i64 2149659690, i64 2149661107, i64 2149661155, i64 2149661219, i64 2149661283, i64 2149661340, i64 2149661547, i64 2149661595, i64 2149661659, i64 2149661723, i64 2149661780, i64 2149659808, i64 2149659833, i64 2149661990, i64 2149662118, i64 2149662051, i64 2149662132, i64 2149662146, i64 2149662262, i64 2149662207, i64 2149662276, i64 2149659967, i64 1138880, i64 1138920, i64 1138929, i64 1138979, i64 1139000, i64 1139020}
!6042 = !DILocation(line: 187, column: 1, scope: !6024)
!6043 = !DILocation(line: 188, column: 2, scope: !6024)
!6044 = !DILocation(line: 189, column: 1, scope: !6024)
!6045 = !DILocation(line: 190, column: 2, scope: !6024)
!6046 = !DILocation(line: 191, column: 1, scope: !6024)
!6047 = distinct !DISubprogram(name: "subsection_map_index", scope: !19, file: !19, line: 1962, type: !6048, scopeLine: 1963, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6050)
!6048 = !DISubroutineType(types: !6049)
!6049 = !{!68, !85}
!6050 = !{!6051}
!6051 = !DILocalVariable(name: "pfn", arg: 1, scope: !6047, file: !19, line: 1962, type: !85)
!6052 = !DILocation(line: 1962, column: 54, scope: !6047)
!6053 = !DILocation(line: 1964, column: 10, scope: !6047)
!6054 = !DILocation(line: 1964, column: 14, scope: !6047)
!6055 = !DILocation(line: 1964, column: 38, scope: !6047)
!6056 = !DILocation(line: 1964, column: 9, scope: !6047)
!6057 = !DILocation(line: 1964, column: 2, scope: !6047)
!6058 = distinct !DISubprogram(name: "bitmap_set", scope: !6059, file: !6059, line: 469, type: !6060, scopeLine: 471, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6062)
!6059 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!6060 = !DISubroutineType(types: !6061)
!6061 = !{null, !301, !7, !7}
!6062 = !{!6063, !6064, !6065}
!6063 = !DILocalVariable(name: "map", arg: 1, scope: !6058, file: !6059, line: 469, type: !301)
!6064 = !DILocalVariable(name: "start", arg: 2, scope: !6058, file: !6059, line: 469, type: !7)
!6065 = !DILocalVariable(name: "nbits", arg: 3, scope: !6058, file: !6059, line: 470, type: !7)
!6066 = !DILocation(line: 469, column: 55, scope: !6058)
!6067 = !DILocation(line: 469, column: 73, scope: !6058)
!6068 = !DILocation(line: 470, column: 16, scope: !6058)
!6069 = !DILocation(line: 472, column: 27, scope: !6070)
!6070 = distinct !DILexicalBlock(scope: !6058, file: !6059, line: 472, column: 6)
!6071 = !DILocation(line: 472, column: 6, scope: !6070)
!6072 = !DILocation(line: 472, column: 34, scope: !6070)
!6073 = !DILocation(line: 472, column: 37, scope: !6070)
!6074 = !DILocation(line: 472, column: 43, scope: !6070)
!6075 = !DILocation(line: 472, column: 6, scope: !6058)
!6076 = !DILocation(line: 473, column: 3, scope: !6070)
!6077 = !DILocation(line: 474, column: 11, scope: !6078)
!6078 = distinct !DILexicalBlock(scope: !6070, file: !6059, line: 474, column: 11)
!6079 = !DILocation(line: 474, column: 11, scope: !6070)
!6080 = !DILocation(line: 475, column: 11, scope: !6078)
!6081 = !DILocation(line: 475, column: 4, scope: !6078)
!6082 = !DILocation(line: 475, column: 8, scope: !6078)
!6083 = !DILocation(line: 475, column: 3, scope: !6078)
!6084 = !DILocation(line: 476, column: 32, scope: !6085)
!6085 = distinct !DILexicalBlock(scope: !6078, file: !6059, line: 476, column: 11)
!6086 = !DILocation(line: 476, column: 38, scope: !6085)
!6087 = !DILocation(line: 476, column: 11, scope: !6085)
!6088 = !DILocation(line: 476, column: 57, scope: !6085)
!6089 = !DILocation(line: 477, column: 4, scope: !6085)
!6090 = !DILocation(line: 477, column: 44, scope: !6085)
!6091 = !DILocation(line: 478, column: 25, scope: !6085)
!6092 = !DILocation(line: 478, column: 31, scope: !6085)
!6093 = !DILocation(line: 478, column: 4, scope: !6085)
!6094 = !DILocation(line: 478, column: 50, scope: !6085)
!6095 = !DILocation(line: 479, column: 4, scope: !6085)
!6096 = !DILocation(line: 476, column: 11, scope: !6078)
!6097 = !DILocation(line: 480, column: 18, scope: !6085)
!6098 = !DILocation(line: 480, column: 24, scope: !6085)
!6099 = !DILocation(line: 480, column: 30, scope: !6085)
!6100 = !DILocation(line: 480, column: 22, scope: !6085)
!6101 = !DILocation(line: 480, column: 41, scope: !6085)
!6102 = !DILocation(line: 480, column: 47, scope: !6085)
!6103 = !DILocation(line: 480, column: 3, scope: !6085)
!6104 = !DILocation(line: 482, column: 16, scope: !6085)
!6105 = !DILocation(line: 482, column: 21, scope: !6085)
!6106 = !DILocation(line: 482, column: 28, scope: !6085)
!6107 = !DILocation(line: 482, column: 3, scope: !6085)
!6108 = !DILocation(line: 483, column: 1, scope: !6058)
!6109 = distinct !DISubprogram(name: "generic___set_bit", scope: !6110, file: !6110, line: 28, type: !6111, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6115)
!6110 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!6111 = !DISubroutineType(types: !6112)
!6112 = !{null, !85, !6113}
!6113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6114, size: 64)
!6114 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !85)
!6115 = !{!6116, !6117, !6118, !6119}
!6116 = !DILocalVariable(name: "nr", arg: 1, scope: !6109, file: !6110, line: 28, type: !85)
!6117 = !DILocalVariable(name: "addr", arg: 2, scope: !6109, file: !6110, line: 28, type: !6113)
!6118 = !DILocalVariable(name: "mask", scope: !6109, file: !6110, line: 30, type: !85)
!6119 = !DILocalVariable(name: "p", scope: !6109, file: !6110, line: 31, type: !301)
!6120 = !DILocation(line: 28, column: 33, scope: !6109)
!6121 = !DILocation(line: 28, column: 61, scope: !6109)
!6122 = !DILocation(line: 30, column: 2, scope: !6109)
!6123 = !DILocation(line: 30, column: 16, scope: !6109)
!6124 = !DILocation(line: 30, column: 23, scope: !6109)
!6125 = !DILocation(line: 31, column: 2, scope: !6109)
!6126 = !DILocation(line: 31, column: 17, scope: !6109)
!6127 = !DILocation(line: 31, column: 39, scope: !6109)
!6128 = !DILocation(line: 31, column: 47, scope: !6109)
!6129 = !DILocation(line: 31, column: 45, scope: !6109)
!6130 = !DILocation(line: 33, column: 9, scope: !6109)
!6131 = !DILocation(line: 33, column: 3, scope: !6109)
!6132 = !DILocation(line: 33, column: 6, scope: !6109)
!6133 = !DILocation(line: 34, column: 1, scope: !6109)
!6134 = distinct !DISubprogram(name: "___set_bit", scope: !6135, file: !6135, line: 26, type: !6111, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6136)
!6135 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!6136 = !{!6137, !6138}
!6137 = !DILocalVariable(name: "nr", arg: 1, scope: !6134, file: !6135, line: 26, type: !85)
!6138 = !DILocalVariable(name: "addr", arg: 2, scope: !6134, file: !6135, line: 26, type: !6113)
!6139 = !DILocation(line: 26, column: 26, scope: !6134)
!6140 = !DILocation(line: 26, column: 54, scope: !6134)
!6141 = !DILocation(line: 28, column: 19, scope: !6134)
!6142 = !DILocation(line: 28, column: 26, scope: !6134)
!6143 = !DILocation(line: 28, column: 24, scope: !6134)
!6144 = !DILocation(line: 28, column: 2, scope: !6134)
!6145 = !DILocation(line: 29, column: 17, scope: !6134)
!6146 = !DILocation(line: 29, column: 21, scope: !6134)
!6147 = !DILocation(line: 29, column: 2, scope: !6134)
!6148 = !DILocation(line: 30, column: 1, scope: !6134)
!6149 = !DISubprogram(name: "__bitmap_set", scope: !6059, file: !6059, line: 174, type: !6150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6150 = !DISubroutineType(types: !6151)
!6151 = !{null, !301, !7, !68}
!6152 = distinct !DISubprogram(name: "instrument_write", scope: !6153, file: !6153, line: 38, type: !6154, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6159)
!6153 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6154 = !DISubroutineType(types: !6155)
!6155 = !{null, !6156, !81}
!6156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6157, size: 64)
!6157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6158)
!6158 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6159 = !{!6160, !6161}
!6160 = !DILocalVariable(name: "v", arg: 1, scope: !6152, file: !6153, line: 38, type: !6156)
!6161 = !DILocalVariable(name: "size", arg: 2, scope: !6152, file: !6153, line: 38, type: !81)
!6162 = !DILocation(line: 38, column: 67, scope: !6152)
!6163 = !DILocation(line: 38, column: 77, scope: !6152)
!6164 = !DILocation(line: 40, column: 20, scope: !6152)
!6165 = !DILocation(line: 40, column: 23, scope: !6152)
!6166 = !DILocation(line: 40, column: 2, scope: !6152)
!6167 = !DILocation(line: 41, column: 2, scope: !6152)
!6168 = !DILocation(line: 42, column: 1, scope: !6152)
!6169 = distinct !DISubprogram(name: "arch___set_bit", scope: !6170, file: !6170, line: 66, type: !6111, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6171)
!6170 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6171 = !{!6172, !6173}
!6172 = !DILocalVariable(name: "nr", arg: 1, scope: !6169, file: !6170, line: 66, type: !85)
!6173 = !DILocalVariable(name: "addr", arg: 2, scope: !6169, file: !6170, line: 66, type: !6113)
!6174 = !DILocation(line: 66, column: 30, scope: !6169)
!6175 = !DILocation(line: 66, column: 58, scope: !6169)
!6176 = !DILocation(line: 68, column: 44, scope: !6169)
!6177 = !DILocation(line: 68, column: 56, scope: !6169)
!6178 = !DILocation(line: 68, column: 2, scope: !6169)
!6179 = !{i64 2148315041}
!6180 = !DILocation(line: 69, column: 1, scope: !6169)
!6181 = distinct !DISubprogram(name: "kasan_check_write", scope: !6182, file: !6182, line: 44, type: !6183, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6185)
!6182 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6183 = !DISubroutineType(types: !6184)
!6184 = !{!1314, !6156, !7}
!6185 = !{!6186, !6187}
!6186 = !DILocalVariable(name: "p", arg: 1, scope: !6181, file: !6182, line: 44, type: !6156)
!6187 = !DILocalVariable(name: "size", arg: 2, scope: !6181, file: !6182, line: 44, type: !7)
!6188 = !DILocation(line: 44, column: 59, scope: !6181)
!6189 = !DILocation(line: 44, column: 75, scope: !6181)
!6190 = !DILocation(line: 46, column: 2, scope: !6181)
!6191 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6192, file: !6192, line: 229, type: !6193, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6195)
!6192 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6193 = !DISubroutineType(types: !6194)
!6194 = !{null, !6156, !81, !68}
!6195 = !{!6196, !6197, !6198}
!6196 = !DILocalVariable(name: "ptr", arg: 1, scope: !6191, file: !6192, line: 229, type: !6156)
!6197 = !DILocalVariable(name: "size", arg: 2, scope: !6191, file: !6192, line: 229, type: !81)
!6198 = !DILocalVariable(name: "type", arg: 3, scope: !6191, file: !6192, line: 230, type: !68)
!6199 = !DILocation(line: 229, column: 60, scope: !6191)
!6200 = !DILocation(line: 229, column: 72, scope: !6191)
!6201 = !DILocation(line: 230, column: 15, scope: !6191)
!6202 = !DILocation(line: 230, column: 23, scope: !6191)
!6203 = !DISubprogram(name: "memblock_free", scope: !6204, file: !6204, line: 133, type: !6205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6204 = !DIFile(filename: "./include/linux/memblock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee488cc8c6522cca1567fc06e1716948")
!6205 = !DISubroutineType(types: !6206)
!6206 = !{null, !66, !81}
!6207 = !DISubprogram(name: "__next_mem_pfn_range", scope: !6204, file: !6204, line: 272, type: !6208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6208 = !DISubroutineType(types: !6209)
!6209 = !{null, !2491, !68, !301, !301, !2491}
!6210 = distinct !DISubprogram(name: "memory_present", scope: !3, file: !3, line: 225, type: !6211, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6213)
!6211 = !DISubroutineType(types: !6212)
!6212 = !{null, !68, !85, !85}
!6213 = !{!6214, !6215, !6216, !6217, !6218, !6221, !6222, !6226}
!6214 = !DILocalVariable(name: "nid", arg: 1, scope: !6210, file: !3, line: 225, type: !68)
!6215 = !DILocalVariable(name: "start", arg: 2, scope: !6210, file: !3, line: 225, type: !85)
!6216 = !DILocalVariable(name: "end", arg: 3, scope: !6210, file: !3, line: 225, type: !85)
!6217 = !DILocalVariable(name: "pfn", scope: !6210, file: !3, line: 227, type: !85)
!6218 = !DILocalVariable(name: "size", scope: !6219, file: !3, line: 231, type: !85)
!6219 = distinct !DILexicalBlock(scope: !6220, file: !3, line: 230, column: 30)
!6220 = distinct !DILexicalBlock(scope: !6210, file: !3, line: 230, column: 6)
!6221 = !DILocalVariable(name: "align", scope: !6219, file: !3, line: 231, type: !85)
!6222 = !DILocalVariable(name: "section", scope: !6223, file: !3, line: 245, type: !85)
!6223 = distinct !DILexicalBlock(scope: !6224, file: !3, line: 244, column: 57)
!6224 = distinct !DILexicalBlock(scope: !6225, file: !3, line: 244, column: 2)
!6225 = distinct !DILexicalBlock(scope: !6210, file: !3, line: 244, column: 2)
!6226 = !DILocalVariable(name: "ms", scope: !6223, file: !3, line: 246, type: !368)
!6227 = !DILocation(line: 225, column: 39, scope: !6210)
!6228 = !DILocation(line: 225, column: 58, scope: !6210)
!6229 = !DILocation(line: 225, column: 79, scope: !6210)
!6230 = !DILocation(line: 227, column: 2, scope: !6210)
!6231 = !DILocation(line: 227, column: 16, scope: !6210)
!6232 = !DILocation(line: 230, column: 6, scope: !6220)
!6233 = !DILocation(line: 230, column: 6, scope: !6210)
!6234 = !DILocation(line: 231, column: 3, scope: !6219)
!6235 = !DILocation(line: 231, column: 17, scope: !6219)
!6236 = !DILocation(line: 231, column: 23, scope: !6219)
!6237 = !DILocation(line: 233, column: 41, scope: !6219)
!6238 = !DILocation(line: 233, column: 39, scope: !6219)
!6239 = !DILocation(line: 233, column: 8, scope: !6219)
!6240 = !DILocation(line: 234, column: 9, scope: !6219)
!6241 = !DILocation(line: 235, column: 32, scope: !6219)
!6242 = !DILocation(line: 235, column: 38, scope: !6219)
!6243 = !DILocation(line: 235, column: 17, scope: !6219)
!6244 = !DILocation(line: 235, column: 15, scope: !6219)
!6245 = !DILocation(line: 236, column: 8, scope: !6246)
!6246 = distinct !DILexicalBlock(scope: !6219, file: !3, line: 236, column: 7)
!6247 = !DILocation(line: 236, column: 7, scope: !6219)
!6248 = !DILocation(line: 238, column: 20, scope: !6246)
!6249 = !DILocation(line: 238, column: 26, scope: !6246)
!6250 = !DILocation(line: 237, column: 4, scope: !6246)
!6251 = !DILocation(line: 239, column: 2, scope: !6220)
!6252 = !DILocation(line: 239, column: 2, scope: !6219)
!6253 = !DILocation(line: 242, column: 8, scope: !6210)
!6254 = !DILocation(line: 243, column: 2, scope: !6210)
!6255 = !DILocation(line: 244, column: 13, scope: !6225)
!6256 = !DILocation(line: 244, column: 11, scope: !6225)
!6257 = !DILocation(line: 244, column: 7, scope: !6225)
!6258 = !DILocation(line: 244, column: 20, scope: !6224)
!6259 = !DILocation(line: 244, column: 26, scope: !6224)
!6260 = !DILocation(line: 244, column: 24, scope: !6224)
!6261 = !DILocation(line: 244, column: 2, scope: !6225)
!6262 = !DILocation(line: 245, column: 3, scope: !6223)
!6263 = !DILocation(line: 245, column: 17, scope: !6223)
!6264 = !DILocation(line: 245, column: 45, scope: !6223)
!6265 = !DILocation(line: 245, column: 27, scope: !6223)
!6266 = !DILocation(line: 246, column: 3, scope: !6223)
!6267 = !DILocation(line: 246, column: 23, scope: !6223)
!6268 = !DILocation(line: 248, column: 21, scope: !6223)
!6269 = !DILocation(line: 248, column: 30, scope: !6223)
!6270 = !DILocation(line: 248, column: 3, scope: !6223)
!6271 = !DILocation(line: 249, column: 19, scope: !6223)
!6272 = !DILocation(line: 249, column: 28, scope: !6223)
!6273 = !DILocation(line: 249, column: 3, scope: !6223)
!6274 = !DILocation(line: 251, column: 24, scope: !6223)
!6275 = !DILocation(line: 251, column: 8, scope: !6223)
!6276 = !DILocation(line: 251, column: 6, scope: !6223)
!6277 = !DILocation(line: 252, column: 8, scope: !6278)
!6278 = distinct !DILexicalBlock(scope: !6223, file: !3, line: 252, column: 7)
!6279 = !DILocation(line: 252, column: 12, scope: !6278)
!6280 = !DILocation(line: 252, column: 7, scope: !6223)
!6281 = !DILocation(line: 253, column: 50, scope: !6282)
!6282 = distinct !DILexicalBlock(scope: !6278, file: !3, line: 252, column: 29)
!6283 = !DILocation(line: 253, column: 26, scope: !6282)
!6284 = !DILocation(line: 253, column: 55, scope: !6282)
!6285 = !DILocation(line: 253, column: 4, scope: !6282)
!6286 = !DILocation(line: 253, column: 8, scope: !6282)
!6287 = !DILocation(line: 253, column: 24, scope: !6282)
!6288 = !DILocation(line: 255, column: 27, scope: !6282)
!6289 = !DILocation(line: 255, column: 31, scope: !6282)
!6290 = !DILocation(line: 255, column: 4, scope: !6282)
!6291 = !DILocation(line: 256, column: 3, scope: !6282)
!6292 = !DILocation(line: 257, column: 2, scope: !6224)
!6293 = !DILocation(line: 257, column: 2, scope: !6223)
!6294 = !DILocation(line: 244, column: 35, scope: !6224)
!6295 = !DILocation(line: 244, column: 2, scope: !6224)
!6296 = distinct !{!6296, !6261, !6297, !474, !475}
!6297 = !DILocation(line: 257, column: 2, scope: !6225)
!6298 = !DILocation(line: 258, column: 1, scope: !6210)
!6299 = distinct !DISubprogram(name: "memblock_alloc", scope: !6204, file: !6204, line: 426, type: !6300, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6302)
!6300 = !DISubroutineType(types: !6301)
!6301 = !{!66, !5116, !5116}
!6302 = !{!6303, !6304}
!6303 = !DILocalVariable(name: "size", arg: 1, scope: !6299, file: !6204, line: 426, type: !5116)
!6304 = !DILocalVariable(name: "align", arg: 2, scope: !6299, file: !6204, line: 426, type: !5116)
!6305 = !DILocation(line: 426, column: 57, scope: !6299)
!6306 = !DILocation(line: 426, column: 75, scope: !6299)
!6307 = !DILocation(line: 428, column: 32, scope: !6299)
!6308 = !DILocation(line: 428, column: 38, scope: !6299)
!6309 = !DILocation(line: 428, column: 9, scope: !6299)
!6310 = !DILocation(line: 428, column: 2, scope: !6299)
!6311 = !DISubprogram(name: "panic", scope: !6312, file: !6312, line: 12, type: !6313, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6312 = !DIFile(filename: "./include/linux/panic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3219e8109531a92b450817dd7e3cc0fb")
!6313 = !DISubroutineType(types: !6314)
!6314 = !{null, !62, null}
!6315 = distinct !DISubprogram(name: "mminit_validate_memmodel_limits", scope: !3, file: !3, line: 129, type: !6316, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6318)
!6316 = !DISubroutineType(types: !6317)
!6317 = !{null, !301, !301}
!6318 = !{!6319, !6320, !6321, !6322, !6326, !6329, !6333}
!6319 = !DILocalVariable(name: "start_pfn", arg: 1, scope: !6315, file: !3, line: 129, type: !301)
!6320 = !DILocalVariable(name: "end_pfn", arg: 2, scope: !6315, file: !3, line: 130, type: !301)
!6321 = !DILocalVariable(name: "max_sparsemem_pfn", scope: !6315, file: !3, line: 132, type: !85)
!6322 = !DILocalVariable(name: "__ret_warn_on", scope: !6323, file: !3, line: 142, type: !68)
!6323 = distinct !DILexicalBlock(scope: !6324, file: !3, line: 142, column: 3)
!6324 = distinct !DILexicalBlock(scope: !6325, file: !3, line: 138, column: 38)
!6325 = distinct !DILexicalBlock(scope: !6315, file: !3, line: 138, column: 6)
!6326 = !DILocalVariable(name: "__flags", scope: !6327, file: !3, line: 142, type: !68)
!6327 = distinct !DILexicalBlock(scope: !6328, file: !3, line: 142, column: 3)
!6328 = distinct !DILexicalBlock(scope: !6323, file: !3, line: 142, column: 3)
!6329 = !DILocalVariable(name: "__ret_warn_on", scope: !6330, file: !3, line: 149, type: !68)
!6330 = distinct !DILexicalBlock(scope: !6331, file: !3, line: 149, column: 3)
!6331 = distinct !DILexicalBlock(scope: !6332, file: !3, line: 145, column: 43)
!6332 = distinct !DILexicalBlock(scope: !6325, file: !3, line: 145, column: 13)
!6333 = !DILocalVariable(name: "__flags", scope: !6334, file: !3, line: 149, type: !68)
!6334 = distinct !DILexicalBlock(scope: !6335, file: !3, line: 149, column: 3)
!6335 = distinct !DILexicalBlock(scope: !6330, file: !3, line: 149, column: 3)
!6336 = !DILocation(line: 129, column: 70, scope: !6315)
!6337 = !DILocation(line: 130, column: 22, scope: !6315)
!6338 = !DILocation(line: 132, column: 2, scope: !6315)
!6339 = !DILocation(line: 132, column: 16, scope: !6315)
!6340 = !DILocation(line: 132, column: 37, scope: !6315)
!6341 = !DILocation(line: 132, column: 49, scope: !6315)
!6342 = !DILocation(line: 132, column: 54, scope: !6315)
!6343 = !DILocation(line: 138, column: 7, scope: !6325)
!6344 = !DILocation(line: 138, column: 6, scope: !6325)
!6345 = !DILocation(line: 138, column: 19, scope: !6325)
!6346 = !DILocation(line: 138, column: 17, scope: !6325)
!6347 = !DILocation(line: 138, column: 6, scope: !6315)
!6348 = !DILocation(line: 139, column: 3, scope: !6324)
!6349 = !DILocation(line: 139, column: 3, scope: !6350)
!6350 = distinct !DILexicalBlock(scope: !6351, file: !3, line: 139, column: 3)
!6351 = distinct !DILexicalBlock(scope: !6324, file: !3, line: 139, column: 3)
!6352 = !DILocation(line: 139, column: 3, scope: !6351)
!6353 = !DILocation(line: 139, column: 3, scope: !6354)
!6354 = distinct !DILexicalBlock(scope: !6355, file: !3, line: 139, column: 3)
!6355 = distinct !DILexicalBlock(scope: !6356, file: !3, line: 139, column: 3)
!6356 = distinct !DILexicalBlock(scope: !6350, file: !3, line: 139, column: 3)
!6357 = !DILocation(line: 139, column: 3, scope: !6358)
!6358 = distinct !DILexicalBlock(scope: !6354, file: !3, line: 139, column: 3)
!6359 = !DILocation(line: 139, column: 3, scope: !6356)
!6360 = !DILocation(line: 142, column: 3, scope: !6323)
!6361 = !DILocation(line: 142, column: 3, scope: !6328)
!6362 = !DILocation(line: 142, column: 3, scope: !6327)
!6363 = !DILocation(line: 142, column: 3, scope: !6364)
!6364 = distinct !DILexicalBlock(scope: !6327, file: !3, line: 142, column: 3)
!6365 = !DILocation(line: 142, column: 3, scope: !6366)
!6366 = distinct !DILexicalBlock(scope: !6327, file: !3, line: 142, column: 3)
!6367 = !{i64 2155540884, i64 2155540913, i64 2155540959, i64 2155541017, i64 2155541071, i64 2155541125, i64 2155541180, i64 2155541211, i64 2155541519, i64 2155541525, i64 2155541572, i64 2155541595, i64 2155541621}
!6368 = !DILocation(line: 142, column: 3, scope: !6369)
!6369 = distinct !DILexicalBlock(scope: !6327, file: !3, line: 142, column: 3)
!6370 = !DILocation(line: 142, column: 3, scope: !6324)
!6371 = !DILocation(line: 143, column: 16, scope: !6324)
!6372 = !DILocation(line: 143, column: 4, scope: !6324)
!6373 = !DILocation(line: 143, column: 14, scope: !6324)
!6374 = !DILocation(line: 144, column: 14, scope: !6324)
!6375 = !DILocation(line: 144, column: 4, scope: !6324)
!6376 = !DILocation(line: 144, column: 12, scope: !6324)
!6377 = !DILocation(line: 145, column: 2, scope: !6324)
!6378 = !DILocation(line: 145, column: 14, scope: !6332)
!6379 = !DILocation(line: 145, column: 13, scope: !6332)
!6380 = !DILocation(line: 145, column: 24, scope: !6332)
!6381 = !DILocation(line: 145, column: 22, scope: !6332)
!6382 = !DILocation(line: 145, column: 13, scope: !6325)
!6383 = !DILocation(line: 146, column: 3, scope: !6331)
!6384 = !DILocation(line: 146, column: 3, scope: !6385)
!6385 = distinct !DILexicalBlock(scope: !6386, file: !3, line: 146, column: 3)
!6386 = distinct !DILexicalBlock(scope: !6331, file: !3, line: 146, column: 3)
!6387 = !DILocation(line: 146, column: 3, scope: !6386)
!6388 = !DILocation(line: 146, column: 3, scope: !6389)
!6389 = distinct !DILexicalBlock(scope: !6390, file: !3, line: 146, column: 3)
!6390 = distinct !DILexicalBlock(scope: !6391, file: !3, line: 146, column: 3)
!6391 = distinct !DILexicalBlock(scope: !6385, file: !3, line: 146, column: 3)
!6392 = !DILocation(line: 146, column: 3, scope: !6393)
!6393 = distinct !DILexicalBlock(scope: !6389, file: !3, line: 146, column: 3)
!6394 = !DILocation(line: 146, column: 3, scope: !6391)
!6395 = !DILocation(line: 149, column: 3, scope: !6330)
!6396 = !DILocation(line: 149, column: 3, scope: !6335)
!6397 = !DILocation(line: 149, column: 3, scope: !6334)
!6398 = !DILocation(line: 149, column: 3, scope: !6399)
!6399 = distinct !DILexicalBlock(scope: !6334, file: !3, line: 149, column: 3)
!6400 = !DILocation(line: 149, column: 3, scope: !6401)
!6401 = distinct !DILexicalBlock(scope: !6334, file: !3, line: 149, column: 3)
!6402 = !{i64 2155544222, i64 2155544251, i64 2155544297, i64 2155544355, i64 2155544409, i64 2155544463, i64 2155544518, i64 2155544549, i64 2155544857, i64 2155544863, i64 2155544910, i64 2155544933, i64 2155544959}
!6403 = !DILocation(line: 149, column: 3, scope: !6404)
!6404 = distinct !DILexicalBlock(scope: !6334, file: !3, line: 149, column: 3)
!6405 = !DILocation(line: 149, column: 3, scope: !6331)
!6406 = !DILocation(line: 150, column: 14, scope: !6331)
!6407 = !DILocation(line: 150, column: 4, scope: !6331)
!6408 = !DILocation(line: 150, column: 12, scope: !6331)
!6409 = !DILocation(line: 151, column: 2, scope: !6331)
!6410 = !DILocation(line: 152, column: 1, scope: !6315)
!6411 = distinct !DISubprogram(name: "sparse_index_init", scope: !3, file: !3, line: 82, type: !6412, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6414)
!6412 = !DISubroutineType(types: !6413)
!6413 = !{!68, !85, !68}
!6414 = !{!6415, !6416, !6417, !6418}
!6415 = !DILocalVariable(name: "section_nr", arg: 1, scope: !6411, file: !3, line: 82, type: !85)
!6416 = !DILocalVariable(name: "nid", arg: 2, scope: !6411, file: !3, line: 82, type: !68)
!6417 = !DILocalVariable(name: "root", scope: !6411, file: !3, line: 84, type: !85)
!6418 = !DILocalVariable(name: "section", scope: !6411, file: !3, line: 85, type: !368)
!6419 = !DILocation(line: 82, column: 54, scope: !6411)
!6420 = !DILocation(line: 82, column: 70, scope: !6411)
!6421 = !DILocation(line: 84, column: 2, scope: !6411)
!6422 = !DILocation(line: 84, column: 16, scope: !6411)
!6423 = !DILocation(line: 84, column: 23, scope: !6411)
!6424 = !DILocation(line: 85, column: 2, scope: !6411)
!6425 = !DILocation(line: 85, column: 22, scope: !6411)
!6426 = !DILocation(line: 94, column: 6, scope: !6427)
!6427 = distinct !DILexicalBlock(scope: !6411, file: !3, line: 94, column: 6)
!6428 = !DILocation(line: 94, column: 18, scope: !6427)
!6429 = !DILocation(line: 94, column: 6, scope: !6411)
!6430 = !DILocation(line: 95, column: 3, scope: !6427)
!6431 = !DILocation(line: 97, column: 31, scope: !6411)
!6432 = !DILocation(line: 97, column: 12, scope: !6411)
!6433 = !DILocation(line: 97, column: 10, scope: !6411)
!6434 = !DILocation(line: 98, column: 7, scope: !6435)
!6435 = distinct !DILexicalBlock(scope: !6411, file: !3, line: 98, column: 6)
!6436 = !DILocation(line: 98, column: 6, scope: !6411)
!6437 = !DILocation(line: 99, column: 3, scope: !6435)
!6438 = !DILocation(line: 101, column: 22, scope: !6411)
!6439 = !DILocation(line: 101, column: 2, scope: !6411)
!6440 = !DILocation(line: 101, column: 14, scope: !6411)
!6441 = !DILocation(line: 101, column: 20, scope: !6411)
!6442 = !DILocation(line: 103, column: 2, scope: !6411)
!6443 = !DILocation(line: 104, column: 1, scope: !6411)
!6444 = distinct !DISubprogram(name: "set_section_nid", scope: !3, file: !3, line: 57, type: !6445, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6447)
!6445 = !DISubroutineType(types: !6446)
!6446 = !{null, !85, !68}
!6447 = !{!6448, !6449}
!6448 = !DILocalVariable(name: "section_nr", arg: 1, scope: !6444, file: !3, line: 57, type: !85)
!6449 = !DILocalVariable(name: "nid", arg: 2, scope: !6444, file: !3, line: 57, type: !68)
!6450 = !DILocation(line: 57, column: 50, scope: !6444)
!6451 = !DILocation(line: 57, column: 66, scope: !6444)
!6452 = !DILocation(line: 59, column: 1, scope: !6444)
!6453 = distinct !DISubprogram(name: "sparse_encode_early_nid", scope: !3, file: !3, line: 118, type: !6454, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6456)
!6454 = !DISubroutineType(types: !6455)
!6455 = !{!85, !68}
!6456 = !{!6457}
!6457 = !DILocalVariable(name: "nid", arg: 1, scope: !6453, file: !3, line: 118, type: !68)
!6458 = !DILocation(line: 118, column: 57, scope: !6453)
!6459 = !DILocation(line: 120, column: 25, scope: !6453)
!6460 = !DILocation(line: 120, column: 10, scope: !6453)
!6461 = !DILocation(line: 120, column: 29, scope: !6453)
!6462 = !DILocation(line: 120, column: 2, scope: !6453)
!6463 = distinct !DISubprogram(name: "__section_mark_present", scope: !3, file: !3, line: 164, type: !6464, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6466)
!6464 = !DISubroutineType(types: !6465)
!6465 = !{null, !368, !85}
!6466 = !{!6467, !6468}
!6467 = !DILocalVariable(name: "ms", arg: 1, scope: !6463, file: !3, line: 164, type: !368)
!6468 = !DILocalVariable(name: "section_nr", arg: 2, scope: !6463, file: !3, line: 165, type: !85)
!6469 = !DILocation(line: 164, column: 56, scope: !6463)
!6470 = !DILocation(line: 165, column: 17, scope: !6463)
!6471 = !DILocation(line: 167, column: 6, scope: !6472)
!6472 = distinct !DILexicalBlock(scope: !6463, file: !3, line: 167, column: 6)
!6473 = !DILocation(line: 167, column: 19, scope: !6472)
!6474 = !DILocation(line: 167, column: 17, scope: !6472)
!6475 = !DILocation(line: 167, column: 6, scope: !6463)
!6476 = !DILocation(line: 168, column: 34, scope: !6472)
!6477 = !DILocation(line: 168, column: 32, scope: !6472)
!6478 = !DILocation(line: 168, column: 3, scope: !6472)
!6479 = !DILocation(line: 170, column: 2, scope: !6463)
!6480 = !DILocation(line: 170, column: 6, scope: !6463)
!6481 = !DILocation(line: 170, column: 22, scope: !6463)
!6482 = !DILocation(line: 171, column: 1, scope: !6463)
!6483 = !DISubprogram(name: "memblock_alloc_try_nid", scope: !6204, file: !6204, line: 422, type: !6484, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6484 = !DISubroutineType(types: !6485)
!6485 = !{!66, !5116, !5116, !5116, !5116, !68}
!6486 = !DISubprogram(name: "_printk", scope: !6487, file: !6487, line: 153, type: !6488, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6487 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6488 = !DISubroutineType(types: !6489)
!6489 = !{!68, !62, null}
!6490 = distinct !DISubprogram(name: "sparse_index_alloc", scope: !3, file: !3, line: 63, type: !6491, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6493)
!6491 = !DISubroutineType(types: !6492)
!6492 = !{!368, !68}
!6493 = !{!6494, !6495, !6496}
!6494 = !DILocalVariable(name: "nid", arg: 1, scope: !6490, file: !3, line: 63, type: !68)
!6495 = !DILocalVariable(name: "section", scope: !6490, file: !3, line: 65, type: !368)
!6496 = !DILocalVariable(name: "array_size", scope: !6490, file: !3, line: 66, type: !85)
!6497 = !DILocation(line: 63, column: 66, scope: !6490)
!6498 = !DILocation(line: 65, column: 2, scope: !6490)
!6499 = !DILocation(line: 65, column: 22, scope: !6490)
!6500 = !DILocation(line: 66, column: 2, scope: !6490)
!6501 = !DILocation(line: 66, column: 16, scope: !6490)
!6502 = !DILocation(line: 69, column: 6, scope: !6503)
!6503 = distinct !DILexicalBlock(scope: !6490, file: !3, line: 69, column: 6)
!6504 = !DILocation(line: 69, column: 6, scope: !6490)
!6505 = !DILocation(line: 70, column: 26, scope: !6506)
!6506 = distinct !DILexicalBlock(scope: !6503, file: !3, line: 69, column: 27)
!6507 = !DILocation(line: 70, column: 50, scope: !6506)
!6508 = !DILocation(line: 70, column: 13, scope: !6506)
!6509 = !DILocation(line: 70, column: 11, scope: !6506)
!6510 = !DILocation(line: 71, column: 2, scope: !6506)
!6511 = !DILocation(line: 72, column: 33, scope: !6512)
!6512 = distinct !DILexicalBlock(scope: !6503, file: !3, line: 71, column: 9)
!6513 = !DILocation(line: 73, column: 12, scope: !6512)
!6514 = !DILocation(line: 72, column: 13, scope: !6512)
!6515 = !DILocation(line: 72, column: 11, scope: !6512)
!6516 = !DILocation(line: 74, column: 8, scope: !6517)
!6517 = distinct !DILexicalBlock(scope: !6512, file: !3, line: 74, column: 7)
!6518 = !DILocation(line: 74, column: 7, scope: !6512)
!6519 = !DILocation(line: 76, column: 20, scope: !6517)
!6520 = !DILocation(line: 76, column: 32, scope: !6517)
!6521 = !DILocation(line: 75, column: 4, scope: !6517)
!6522 = !DILocation(line: 79, column: 9, scope: !6490)
!6523 = !DILocation(line: 80, column: 1, scope: !6490)
!6524 = !DILocation(line: 79, column: 2, scope: !6490)
!6525 = !DISubprogram(name: "slab_is_available", scope: !33, file: !33, line: 187, type: !2219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6526 = distinct !DISubprogram(name: "kzalloc_node", scope: !33, file: !33, line: 730, type: !6527, scopeLine: 731, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6529)
!6527 = !DISubroutineType(types: !6528)
!6528 = !{!66, !81, !305, !68}
!6529 = !{!6530, !6531, !6532}
!6530 = !DILocalVariable(name: "size", arg: 1, scope: !6526, file: !33, line: 730, type: !81)
!6531 = !DILocalVariable(name: "flags", arg: 2, scope: !6526, file: !33, line: 730, type: !305)
!6532 = !DILocalVariable(name: "node", arg: 3, scope: !6526, file: !33, line: 730, type: !68)
!6533 = !DILocation(line: 730, column: 57, scope: !6526)
!6534 = !DILocation(line: 730, column: 69, scope: !6526)
!6535 = !DILocation(line: 730, column: 80, scope: !6526)
!6536 = !DILocation(line: 732, column: 22, scope: !6526)
!6537 = !DILocation(line: 732, column: 28, scope: !6526)
!6538 = !DILocation(line: 732, column: 34, scope: !6526)
!6539 = !DILocation(line: 732, column: 48, scope: !6526)
!6540 = !DILocation(line: 732, column: 9, scope: !6526)
!6541 = !DILocation(line: 732, column: 2, scope: !6526)
!6542 = distinct !DISubprogram(name: "memblock_alloc_node", scope: !6204, file: !6204, line: 455, type: !6543, scopeLine: 457, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6545)
!6543 = !DISubroutineType(types: !6544)
!6544 = !{!66, !5116, !5116, !68}
!6545 = !{!6546, !6547, !6548}
!6546 = !DILocalVariable(name: "size", arg: 1, scope: !6542, file: !6204, line: 455, type: !5116)
!6547 = !DILocalVariable(name: "align", arg: 2, scope: !6542, file: !6204, line: 456, type: !5116)
!6548 = !DILocalVariable(name: "nid", arg: 3, scope: !6542, file: !6204, line: 456, type: !68)
!6549 = !DILocation(line: 455, column: 53, scope: !6542)
!6550 = !DILocation(line: 456, column: 19, scope: !6542)
!6551 = !DILocation(line: 456, column: 30, scope: !6542)
!6552 = !DILocation(line: 458, column: 32, scope: !6542)
!6553 = !DILocation(line: 458, column: 38, scope: !6542)
!6554 = !DILocation(line: 459, column: 38, scope: !6542)
!6555 = !DILocation(line: 458, column: 9, scope: !6542)
!6556 = !DILocation(line: 458, column: 2, scope: !6542)
!6557 = distinct !DISubprogram(name: "kmalloc_node", scope: !33, file: !33, line: 607, type: !6527, scopeLine: 608, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6558)
!6558 = !{!6559, !6560, !6561, !6562}
!6559 = !DILocalVariable(name: "size", arg: 1, scope: !6557, file: !33, line: 607, type: !81)
!6560 = !DILocalVariable(name: "flags", arg: 2, scope: !6557, file: !33, line: 607, type: !305)
!6561 = !DILocalVariable(name: "node", arg: 3, scope: !6557, file: !33, line: 607, type: !68)
!6562 = !DILocalVariable(name: "index", scope: !6563, file: !33, line: 610, type: !7)
!6563 = distinct !DILexicalBlock(scope: !6564, file: !33, line: 609, column: 42)
!6564 = distinct !DILexicalBlock(scope: !6557, file: !33, line: 609, column: 6)
!6565 = !DILocation(line: 607, column: 66, scope: !6557)
!6566 = !DILocation(line: 607, column: 78, scope: !6557)
!6567 = !DILocation(line: 607, column: 89, scope: !6557)
!6568 = !DILocation(line: 609, column: 27, scope: !6564)
!6569 = !DILocation(line: 609, column: 6, scope: !6564)
!6570 = !DILocation(line: 609, column: 33, scope: !6564)
!6571 = !DILocation(line: 609, column: 36, scope: !6564)
!6572 = !DILocation(line: 609, column: 6, scope: !6557)
!6573 = !DILocation(line: 610, column: 3, scope: !6563)
!6574 = !DILocation(line: 610, column: 16, scope: !6563)
!6575 = !DILocation(line: 612, column: 7, scope: !6576)
!6576 = distinct !DILexicalBlock(scope: !6563, file: !33, line: 612, column: 7)
!6577 = !DILocation(line: 612, column: 12, scope: !6576)
!6578 = !DILocation(line: 612, column: 7, scope: !6563)
!6579 = !DILocation(line: 613, column: 30, scope: !6576)
!6580 = !DILocation(line: 613, column: 36, scope: !6576)
!6581 = !DILocation(line: 613, column: 43, scope: !6576)
!6582 = !DILocation(line: 613, column: 11, scope: !6576)
!6583 = !DILocation(line: 613, column: 4, scope: !6576)
!6584 = !DILocation(line: 615, column: 11, scope: !6563)
!6585 = !DILocation(line: 615, column: 9, scope: !6563)
!6586 = !DILocation(line: 617, column: 33, scope: !6563)
!6587 = !DILocation(line: 617, column: 40, scope: !6563)
!6588 = !DILocation(line: 617, column: 20, scope: !6563)
!6589 = !DILocation(line: 617, column: 5, scope: !6563)
!6590 = !DILocation(line: 617, column: 51, scope: !6563)
!6591 = !DILocation(line: 618, column: 5, scope: !6563)
!6592 = !DILocation(line: 618, column: 12, scope: !6563)
!6593 = !DILocation(line: 618, column: 18, scope: !6563)
!6594 = !DILocation(line: 616, column: 10, scope: !6563)
!6595 = !DILocation(line: 616, column: 3, scope: !6563)
!6596 = !DILocation(line: 619, column: 2, scope: !6564)
!6597 = !DILocation(line: 620, column: 24, scope: !6557)
!6598 = !DILocation(line: 620, column: 30, scope: !6557)
!6599 = !DILocation(line: 620, column: 37, scope: !6557)
!6600 = !DILocation(line: 620, column: 9, scope: !6557)
!6601 = !DILocation(line: 620, column: 2, scope: !6557)
!6602 = !DILocation(line: 621, column: 1, scope: !6557)
!6603 = !DISubprogram(name: "kmalloc_large_node", scope: !33, file: !33, line: 534, type: !6527, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6604 = distinct !DISubprogram(name: "__kmalloc_index", scope: !33, file: !33, line: 444, type: !6605, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6607)
!6605 = !DISubroutineType(types: !6606)
!6606 = !{!7, !81, !1314}
!6607 = !{!6608, !6609}
!6608 = !DILocalVariable(name: "size", arg: 1, scope: !6604, file: !33, line: 444, type: !81)
!6609 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6604, file: !33, line: 445, type: !1314)
!6610 = !DILocation(line: 444, column: 60, scope: !6604)
!6611 = !DILocation(line: 445, column: 16, scope: !6604)
!6612 = !DILocation(line: 447, column: 7, scope: !6613)
!6613 = distinct !DILexicalBlock(scope: !6604, file: !33, line: 447, column: 6)
!6614 = !DILocation(line: 447, column: 6, scope: !6604)
!6615 = !DILocation(line: 448, column: 3, scope: !6613)
!6616 = !DILocation(line: 450, column: 6, scope: !6617)
!6617 = distinct !DILexicalBlock(scope: !6604, file: !33, line: 450, column: 6)
!6618 = !DILocation(line: 450, column: 11, scope: !6617)
!6619 = !DILocation(line: 450, column: 6, scope: !6604)
!6620 = !DILocation(line: 451, column: 3, scope: !6617)
!6621 = !DILocation(line: 453, column: 32, scope: !6622)
!6622 = distinct !DILexicalBlock(scope: !6604, file: !33, line: 453, column: 6)
!6623 = !DILocation(line: 453, column: 37, scope: !6622)
!6624 = !DILocation(line: 453, column: 42, scope: !6622)
!6625 = !DILocation(line: 453, column: 45, scope: !6622)
!6626 = !DILocation(line: 453, column: 50, scope: !6622)
!6627 = !DILocation(line: 453, column: 6, scope: !6604)
!6628 = !DILocation(line: 454, column: 3, scope: !6622)
!6629 = !DILocation(line: 455, column: 32, scope: !6630)
!6630 = distinct !DILexicalBlock(scope: !6604, file: !33, line: 455, column: 6)
!6631 = !DILocation(line: 455, column: 37, scope: !6630)
!6632 = !DILocation(line: 455, column: 43, scope: !6630)
!6633 = !DILocation(line: 455, column: 46, scope: !6630)
!6634 = !DILocation(line: 455, column: 51, scope: !6630)
!6635 = !DILocation(line: 455, column: 6, scope: !6604)
!6636 = !DILocation(line: 456, column: 3, scope: !6630)
!6637 = !DILocation(line: 457, column: 6, scope: !6638)
!6638 = distinct !DILexicalBlock(scope: !6604, file: !33, line: 457, column: 6)
!6639 = !DILocation(line: 457, column: 11, scope: !6638)
!6640 = !DILocation(line: 457, column: 6, scope: !6604)
!6641 = !DILocation(line: 457, column: 26, scope: !6638)
!6642 = !DILocation(line: 458, column: 6, scope: !6643)
!6643 = distinct !DILexicalBlock(scope: !6604, file: !33, line: 458, column: 6)
!6644 = !DILocation(line: 458, column: 11, scope: !6643)
!6645 = !DILocation(line: 458, column: 6, scope: !6604)
!6646 = !DILocation(line: 458, column: 26, scope: !6643)
!6647 = !DILocation(line: 459, column: 6, scope: !6648)
!6648 = distinct !DILexicalBlock(scope: !6604, file: !33, line: 459, column: 6)
!6649 = !DILocation(line: 459, column: 11, scope: !6648)
!6650 = !DILocation(line: 459, column: 6, scope: !6604)
!6651 = !DILocation(line: 459, column: 26, scope: !6648)
!6652 = !DILocation(line: 460, column: 6, scope: !6653)
!6653 = distinct !DILexicalBlock(scope: !6604, file: !33, line: 460, column: 6)
!6654 = !DILocation(line: 460, column: 11, scope: !6653)
!6655 = !DILocation(line: 460, column: 6, scope: !6604)
!6656 = !DILocation(line: 460, column: 26, scope: !6653)
!6657 = !DILocation(line: 461, column: 6, scope: !6658)
!6658 = distinct !DILexicalBlock(scope: !6604, file: !33, line: 461, column: 6)
!6659 = !DILocation(line: 461, column: 11, scope: !6658)
!6660 = !DILocation(line: 461, column: 6, scope: !6604)
!6661 = !DILocation(line: 461, column: 26, scope: !6658)
!6662 = !DILocation(line: 462, column: 6, scope: !6663)
!6663 = distinct !DILexicalBlock(scope: !6604, file: !33, line: 462, column: 6)
!6664 = !DILocation(line: 462, column: 11, scope: !6663)
!6665 = !DILocation(line: 462, column: 6, scope: !6604)
!6666 = !DILocation(line: 462, column: 26, scope: !6663)
!6667 = !DILocation(line: 463, column: 6, scope: !6668)
!6668 = distinct !DILexicalBlock(scope: !6604, file: !33, line: 463, column: 6)
!6669 = !DILocation(line: 463, column: 11, scope: !6668)
!6670 = !DILocation(line: 463, column: 6, scope: !6604)
!6671 = !DILocation(line: 463, column: 26, scope: !6668)
!6672 = !DILocation(line: 464, column: 6, scope: !6673)
!6673 = distinct !DILexicalBlock(scope: !6604, file: !33, line: 464, column: 6)
!6674 = !DILocation(line: 464, column: 11, scope: !6673)
!6675 = !DILocation(line: 464, column: 6, scope: !6604)
!6676 = !DILocation(line: 464, column: 26, scope: !6673)
!6677 = !DILocation(line: 465, column: 6, scope: !6678)
!6678 = distinct !DILexicalBlock(scope: !6604, file: !33, line: 465, column: 6)
!6679 = !DILocation(line: 465, column: 11, scope: !6678)
!6680 = !DILocation(line: 465, column: 6, scope: !6604)
!6681 = !DILocation(line: 465, column: 26, scope: !6678)
!6682 = !DILocation(line: 466, column: 6, scope: !6683)
!6683 = distinct !DILexicalBlock(scope: !6604, file: !33, line: 466, column: 6)
!6684 = !DILocation(line: 466, column: 11, scope: !6683)
!6685 = !DILocation(line: 466, column: 6, scope: !6604)
!6686 = !DILocation(line: 466, column: 26, scope: !6683)
!6687 = !DILocation(line: 467, column: 6, scope: !6688)
!6688 = distinct !DILexicalBlock(scope: !6604, file: !33, line: 467, column: 6)
!6689 = !DILocation(line: 467, column: 11, scope: !6688)
!6690 = !DILocation(line: 467, column: 6, scope: !6604)
!6691 = !DILocation(line: 467, column: 26, scope: !6688)
!6692 = !DILocation(line: 468, column: 6, scope: !6693)
!6693 = distinct !DILexicalBlock(scope: !6604, file: !33, line: 468, column: 6)
!6694 = !DILocation(line: 468, column: 11, scope: !6693)
!6695 = !DILocation(line: 468, column: 6, scope: !6604)
!6696 = !DILocation(line: 468, column: 26, scope: !6693)
!6697 = !DILocation(line: 469, column: 6, scope: !6698)
!6698 = distinct !DILexicalBlock(scope: !6604, file: !33, line: 469, column: 6)
!6699 = !DILocation(line: 469, column: 11, scope: !6698)
!6700 = !DILocation(line: 469, column: 6, scope: !6604)
!6701 = !DILocation(line: 469, column: 26, scope: !6698)
!6702 = !DILocation(line: 470, column: 6, scope: !6703)
!6703 = distinct !DILexicalBlock(scope: !6604, file: !33, line: 470, column: 6)
!6704 = !DILocation(line: 470, column: 11, scope: !6703)
!6705 = !DILocation(line: 470, column: 6, scope: !6604)
!6706 = !DILocation(line: 470, column: 26, scope: !6703)
!6707 = !DILocation(line: 471, column: 6, scope: !6708)
!6708 = distinct !DILexicalBlock(scope: !6604, file: !33, line: 471, column: 6)
!6709 = !DILocation(line: 471, column: 11, scope: !6708)
!6710 = !DILocation(line: 471, column: 6, scope: !6604)
!6711 = !DILocation(line: 471, column: 26, scope: !6708)
!6712 = !DILocation(line: 472, column: 6, scope: !6713)
!6713 = distinct !DILexicalBlock(scope: !6604, file: !33, line: 472, column: 6)
!6714 = !DILocation(line: 472, column: 11, scope: !6713)
!6715 = !DILocation(line: 472, column: 6, scope: !6604)
!6716 = !DILocation(line: 472, column: 26, scope: !6713)
!6717 = !DILocation(line: 473, column: 6, scope: !6718)
!6718 = distinct !DILexicalBlock(scope: !6604, file: !33, line: 473, column: 6)
!6719 = !DILocation(line: 473, column: 11, scope: !6718)
!6720 = !DILocation(line: 473, column: 6, scope: !6604)
!6721 = !DILocation(line: 473, column: 26, scope: !6718)
!6722 = !DILocation(line: 474, column: 6, scope: !6723)
!6723 = distinct !DILexicalBlock(scope: !6604, file: !33, line: 474, column: 6)
!6724 = !DILocation(line: 474, column: 11, scope: !6723)
!6725 = !DILocation(line: 474, column: 6, scope: !6604)
!6726 = !DILocation(line: 474, column: 27, scope: !6723)
!6727 = !DILocation(line: 475, column: 6, scope: !6728)
!6728 = distinct !DILexicalBlock(scope: !6604, file: !33, line: 475, column: 6)
!6729 = !DILocation(line: 475, column: 11, scope: !6728)
!6730 = !DILocation(line: 475, column: 6, scope: !6604)
!6731 = !DILocation(line: 475, column: 32, scope: !6728)
!6732 = !DILocation(line: 477, column: 50, scope: !6733)
!6733 = distinct !DILexicalBlock(scope: !6604, file: !33, line: 477, column: 6)
!6734 = !{i8 0, i8 2}
!6735 = !DILocation(line: 477, column: 6, scope: !6604)
!6736 = !DILocation(line: 478, column: 3, scope: !6733)
!6737 = !DILocation(line: 478, column: 3, scope: !6738)
!6738 = distinct !DILexicalBlock(scope: !6739, file: !33, line: 478, column: 3)
!6739 = distinct !DILexicalBlock(scope: !6733, file: !33, line: 478, column: 3)
!6740 = !{i32 -2142310505}
!6741 = !DILocation(line: 478, column: 3, scope: !6739)
!6742 = !DILocation(line: 480, column: 3, scope: !6733)
!6743 = !DILocation(line: 480, column: 3, scope: !6744)
!6744 = distinct !DILexicalBlock(scope: !6733, file: !33, line: 480, column: 3)
!6745 = !DILocation(line: 480, column: 3, scope: !6746)
!6746 = distinct !DILexicalBlock(scope: !6744, file: !33, line: 480, column: 3)
!6747 = !DILocation(line: 480, column: 3, scope: !6748)
!6748 = distinct !DILexicalBlock(scope: !6744, file: !33, line: 480, column: 3)
!6749 = !{i64 2152656994, i64 2152657023, i64 2152657069, i64 2152657127, i64 2152657181, i64 2152657235, i64 2152657290, i64 2152657321}
!6750 = !DILocation(line: 483, column: 2, scope: !6604)
!6751 = !DILocation(line: 484, column: 1, scope: !6604)
!6752 = !DISubprogram(name: "kmalloc_node_trace", scope: !33, file: !33, line: 528, type: !6753, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6753 = !DISubroutineType(types: !6754)
!6754 = !{!66, !6755, !305, !68, !81}
!6755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6756, size: 64)
!6756 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6757, line: 11, flags: DIFlagFwdDecl)
!6757 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!6758 = distinct !DISubprogram(name: "kmalloc_type", scope: !33, file: !33, line: 401, type: !6759, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6761)
!6759 = !DISubroutineType(types: !6760)
!6760 = !{!32, !305, !85}
!6761 = !{!6762, !6763}
!6762 = !DILocalVariable(name: "flags", arg: 1, scope: !6758, file: !33, line: 401, type: !305)
!6763 = !DILocalVariable(name: "caller", arg: 2, scope: !6758, file: !33, line: 401, type: !85)
!6764 = !DILocation(line: 401, column: 67, scope: !6758)
!6765 = !DILocation(line: 401, column: 88, scope: !6758)
!6766 = !DILocation(line: 407, column: 6, scope: !6767)
!6767 = distinct !DILexicalBlock(scope: !6758, file: !33, line: 407, column: 6)
!6768 = !DILocation(line: 407, column: 6, scope: !6758)
!6769 = !DILocation(line: 413, column: 3, scope: !6767)
!6770 = !DILocation(line: 423, column: 38, scope: !6771)
!6771 = distinct !DILexicalBlock(scope: !6758, file: !33, line: 423, column: 6)
!6772 = !DILocation(line: 423, column: 44, scope: !6771)
!6773 = !DILocation(line: 423, column: 6, scope: !6758)
!6774 = !DILocation(line: 424, column: 3, scope: !6771)
!6775 = !DILocation(line: 426, column: 3, scope: !6776)
!6776 = distinct !DILexicalBlock(scope: !6758, file: !33, line: 425, column: 6)
!6777 = !DILocation(line: 429, column: 1, scope: !6758)
!6778 = !DISubprogram(name: "__kmalloc_node", scope: !33, file: !33, line: 520, type: !6527, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6779 = !DISubprogram(name: "__compiletime_assert_206", scope: !33, file: !33, line: 478, type: !628, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6780 = distinct !DISubprogram(name: "present_section_nr", scope: !19, file: !19, line: 1906, type: !6048, scopeLine: 1907, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6781)
!6781 = !{!6782}
!6782 = !DILocalVariable(name: "nr", arg: 1, scope: !6780, file: !19, line: 1906, type: !85)
!6783 = !DILocation(line: 1906, column: 52, scope: !6780)
!6784 = !DILocation(line: 1908, column: 41, scope: !6780)
!6785 = !DILocation(line: 1908, column: 25, scope: !6780)
!6786 = !DILocation(line: 1908, column: 9, scope: !6780)
!6787 = !DILocation(line: 1908, column: 2, scope: !6780)
!6788 = distinct !DISubprogram(name: "present_section", scope: !19, file: !19, line: 1901, type: !718, scopeLine: 1902, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6789)
!6789 = !{!6790}
!6790 = !DILocalVariable(name: "section", arg: 1, scope: !6788, file: !19, line: 1901, type: !368)
!6791 = !DILocation(line: 1901, column: 55, scope: !6788)
!6792 = !DILocation(line: 1903, column: 10, scope: !6788)
!6793 = !DILocation(line: 1903, column: 18, scope: !6788)
!6794 = !DILocation(line: 1903, column: 22, scope: !6788)
!6795 = !DILocation(line: 1903, column: 31, scope: !6788)
!6796 = !DILocation(line: 1903, column: 47, scope: !6788)
!6797 = !DILocation(line: 0, scope: !6788)
!6798 = !DILocation(line: 1903, column: 2, scope: !6788)
!6799 = distinct !DISubprogram(name: "sparse_early_usemaps_alloc_pgdat_section", scope: !3, file: !3, line: 404, type: !6800, scopeLine: 406, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6802)
!6800 = !DISubroutineType(types: !6801)
!6801 = !{!373, !4702, !85}
!6802 = !{!6803, !6804}
!6803 = !DILocalVariable(name: "pgdat", arg: 1, scope: !6799, file: !3, line: 404, type: !4702)
!6804 = !DILocalVariable(name: "size", arg: 2, scope: !6799, file: !3, line: 405, type: !85)
!6805 = !DILocation(line: 404, column: 62, scope: !6799)
!6806 = !DILocation(line: 405, column: 21, scope: !6799)
!6807 = !DILocation(line: 407, column: 29, scope: !6799)
!6808 = !DILocation(line: 407, column: 52, scope: !6799)
!6809 = !DILocation(line: 407, column: 59, scope: !6799)
!6810 = !DILocation(line: 407, column: 9, scope: !6799)
!6811 = !DILocation(line: 407, column: 2, scope: !6799)
!6812 = distinct !DISubprogram(name: "sparse_buffer_init", scope: !3, file: !3, line: 457, type: !6445, scopeLine: 458, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6813)
!6813 = !{!6814, !6815, !6816, !6817, !6819}
!6814 = !DILocalVariable(name: "size", arg: 1, scope: !6812, file: !3, line: 457, type: !85)
!6815 = !DILocalVariable(name: "nid", arg: 2, scope: !6812, file: !3, line: 457, type: !68)
!6816 = !DILocalVariable(name: "addr", scope: !6812, file: !3, line: 459, type: !5116)
!6817 = !DILocalVariable(name: "__ret_warn_on", scope: !6818, file: !3, line: 460, type: !68)
!6818 = distinct !DILexicalBlock(scope: !6812, file: !3, line: 460, column: 2)
!6819 = !DILocalVariable(name: "__flags", scope: !6820, file: !3, line: 460, type: !68)
!6820 = distinct !DILexicalBlock(scope: !6821, file: !3, line: 460, column: 2)
!6821 = distinct !DILexicalBlock(scope: !6818, file: !3, line: 460, column: 2)
!6822 = !DILocation(line: 457, column: 53, scope: !6812)
!6823 = !DILocation(line: 457, column: 63, scope: !6812)
!6824 = !DILocation(line: 459, column: 2, scope: !6812)
!6825 = !DILocation(line: 459, column: 14, scope: !6812)
!6826 = !DILocation(line: 459, column: 21, scope: !6812)
!6827 = !DILocation(line: 460, column: 2, scope: !6818)
!6828 = !DILocation(line: 460, column: 2, scope: !6821)
!6829 = !DILocation(line: 460, column: 2, scope: !6820)
!6830 = !DILocation(line: 460, column: 2, scope: !6831)
!6831 = distinct !DILexicalBlock(scope: !6820, file: !3, line: 460, column: 2)
!6832 = !DILocation(line: 460, column: 2, scope: !6833)
!6833 = distinct !DILexicalBlock(scope: !6820, file: !3, line: 460, column: 2)
!6834 = !{i64 2155606308, i64 2155606337, i64 2155606383, i64 2155606441, i64 2155606495, i64 2155606549, i64 2155606604, i64 2155606635, i64 2155606943, i64 2155606949, i64 2155606996, i64 2155607019, i64 2155607045}
!6835 = !DILocation(line: 460, column: 2, scope: !6836)
!6836 = distinct !DILexicalBlock(scope: !6820, file: !3, line: 460, column: 2)
!6837 = !DILocation(line: 460, column: 2, scope: !6812)
!6838 = !DILocation(line: 466, column: 31, scope: !6812)
!6839 = !DILocation(line: 466, column: 37, scope: !6812)
!6840 = !DILocation(line: 466, column: 57, scope: !6812)
!6841 = !DILocation(line: 466, column: 63, scope: !6812)
!6842 = !DILocation(line: 466, column: 18, scope: !6812)
!6843 = !DILocation(line: 466, column: 16, scope: !6812)
!6844 = !DILocation(line: 467, column: 22, scope: !6812)
!6845 = !DILocation(line: 467, column: 38, scope: !6812)
!6846 = !DILocation(line: 467, column: 36, scope: !6812)
!6847 = !DILocation(line: 467, column: 20, scope: !6812)
!6848 = !DILocation(line: 468, column: 1, scope: !6812)
!6849 = distinct !DISubprogram(name: "section_map_size", scope: !3, file: !3, line: 417, type: !551, scopeLine: 418, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6850 = !DILocation(line: 419, column: 2, scope: !6849)
!6851 = distinct !DISubprogram(name: "section_nr_to_pfn", scope: !19, file: !19, line: 1753, type: !478, scopeLine: 1754, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6852)
!6852 = !{!6853}
!6853 = !DILocalVariable(name: "sec", arg: 1, scope: !6851, file: !19, line: 1753, type: !85)
!6854 = !DILocation(line: 1753, column: 61, scope: !6851)
!6855 = !DILocation(line: 1755, column: 9, scope: !6851)
!6856 = !DILocation(line: 1755, column: 13, scope: !6851)
!6857 = !DILocation(line: 1755, column: 2, scope: !6851)
!6858 = !DISubprogram(name: "__populate_section_memmap", scope: !1961, file: !1961, line: 3764, type: !6859, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6859 = !DISubroutineType(types: !6860)
!6860 = !{!759, !85, !85, !68, !6861, !5859}
!6861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5863, size: 64)
!6862 = distinct !DISubprogram(name: "sparse_buffer_fini", scope: !3, file: !3, line: 470, type: !628, scopeLine: 471, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6863)
!6863 = !{!6864}
!6864 = !DILocalVariable(name: "size", scope: !6862, file: !3, line: 472, type: !85)
!6865 = !DILocation(line: 472, column: 2, scope: !6862)
!6866 = !DILocation(line: 472, column: 16, scope: !6862)
!6867 = !DILocation(line: 472, column: 23, scope: !6862)
!6868 = !DILocation(line: 472, column: 43, scope: !6862)
!6869 = !DILocation(line: 472, column: 41, scope: !6862)
!6870 = !DILocation(line: 474, column: 6, scope: !6871)
!6871 = distinct !DILexicalBlock(scope: !6862, file: !3, line: 474, column: 6)
!6872 = !DILocation(line: 474, column: 20, scope: !6871)
!6873 = !DILocation(line: 474, column: 23, scope: !6871)
!6874 = !DILocation(line: 474, column: 28, scope: !6871)
!6875 = !DILocation(line: 474, column: 6, scope: !6862)
!6876 = !DILocation(line: 475, column: 22, scope: !6871)
!6877 = !DILocation(line: 475, column: 3, scope: !6871)
!6878 = !DILocation(line: 476, column: 16, scope: !6862)
!6879 = !DILocation(line: 477, column: 1, scope: !6862)
!6880 = distinct !DISubprogram(name: "check_usemap_section_nr", scope: !3, file: !3, line: 410, type: !6881, scopeLine: 412, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6883)
!6881 = !DISubroutineType(types: !6882)
!6882 = !{null, !68, !373}
!6883 = !{!6884, !6885}
!6884 = !DILocalVariable(name: "nid", arg: 1, scope: !6880, file: !3, line: 410, type: !68)
!6885 = !DILocalVariable(name: "usage", arg: 2, scope: !6880, file: !3, line: 411, type: !373)
!6886 = !DILocation(line: 410, column: 48, scope: !6880)
!6887 = !DILocation(line: 411, column: 29, scope: !6880)
!6888 = !DILocation(line: 413, column: 1, scope: !6880)
!6889 = distinct !DISubprogram(name: "sparse_init_one_section", scope: !3, file: !3, line: 300, type: !6890, scopeLine: 303, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6892)
!6890 = !DISubroutineType(types: !6891)
!6891 = !{null, !368, !85, !759, !373, !85}
!6892 = !{!6893, !6894, !6895, !6896, !6897}
!6893 = !DILocalVariable(name: "ms", arg: 1, scope: !6889, file: !3, line: 300, type: !368)
!6894 = !DILocalVariable(name: "pnum", arg: 2, scope: !6889, file: !3, line: 301, type: !85)
!6895 = !DILocalVariable(name: "mem_map", arg: 3, scope: !6889, file: !3, line: 301, type: !759)
!6896 = !DILocalVariable(name: "usage", arg: 4, scope: !6889, file: !3, line: 302, type: !373)
!6897 = !DILocalVariable(name: "flags", arg: 5, scope: !6889, file: !3, line: 302, type: !85)
!6898 = !DILocation(line: 300, column: 67, scope: !6889)
!6899 = !DILocation(line: 301, column: 17, scope: !6889)
!6900 = !DILocation(line: 301, column: 36, scope: !6889)
!6901 = !DILocation(line: 302, column: 29, scope: !6889)
!6902 = !DILocation(line: 302, column: 50, scope: !6889)
!6903 = !DILocation(line: 304, column: 2, scope: !6889)
!6904 = !DILocation(line: 304, column: 6, scope: !6889)
!6905 = !DILocation(line: 304, column: 22, scope: !6889)
!6906 = !DILocation(line: 305, column: 47, scope: !6889)
!6907 = !DILocation(line: 305, column: 56, scope: !6889)
!6908 = !DILocation(line: 305, column: 25, scope: !6889)
!6909 = !DILocation(line: 306, column: 3, scope: !6889)
!6910 = !DILocation(line: 306, column: 27, scope: !6889)
!6911 = !DILocation(line: 306, column: 25, scope: !6889)
!6912 = !DILocation(line: 305, column: 2, scope: !6889)
!6913 = !DILocation(line: 305, column: 6, scope: !6889)
!6914 = !DILocation(line: 305, column: 22, scope: !6889)
!6915 = !DILocation(line: 307, column: 14, scope: !6889)
!6916 = !DILocation(line: 307, column: 2, scope: !6889)
!6917 = !DILocation(line: 307, column: 6, scope: !6889)
!6918 = !DILocation(line: 307, column: 12, scope: !6889)
!6919 = !DILocation(line: 308, column: 1, scope: !6889)
!6920 = distinct !DISubprogram(name: "__phys_addr_nodebug", scope: !6921, file: !6921, line: 22, type: !478, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6922)
!6921 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e8642b887a42f979954681cc5f73dc7c")
!6922 = !{!6923, !6924}
!6923 = !DILocalVariable(name: "x", arg: 1, scope: !6920, file: !6921, line: 22, type: !85)
!6924 = !DILocalVariable(name: "y", scope: !6920, file: !6921, line: 24, type: !85)
!6925 = !DILocation(line: 22, column: 72, scope: !6920)
!6926 = !DILocation(line: 24, column: 2, scope: !6920)
!6927 = !DILocation(line: 24, column: 16, scope: !6920)
!6928 = !DILocation(line: 24, column: 20, scope: !6920)
!6929 = !DILocation(line: 24, column: 22, scope: !6920)
!6930 = !DILocation(line: 27, column: 6, scope: !6920)
!6931 = !DILocation(line: 27, column: 12, scope: !6920)
!6932 = !DILocation(line: 27, column: 16, scope: !6920)
!6933 = !DILocation(line: 27, column: 14, scope: !6920)
!6934 = !DILocation(line: 27, column: 11, scope: !6920)
!6935 = !DILocation(line: 27, column: 21, scope: !6920)
!6936 = !DILocation(line: 27, column: 55, scope: !6920)
!6937 = !DILocation(line: 27, column: 53, scope: !6920)
!6938 = !DILocation(line: 27, column: 8, scope: !6920)
!6939 = !DILocation(line: 27, column: 4, scope: !6920)
!6940 = !DILocation(line: 29, column: 9, scope: !6920)
!6941 = !DILocation(line: 30, column: 1, scope: !6920)
!6942 = !DILocation(line: 29, column: 2, scope: !6920)
!6943 = !DISubprogram(name: "memmap_alloc", scope: !27, file: !27, line: 521, type: !6944, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6944 = !DISubroutineType(types: !6945)
!6945 = !{!66, !5116, !5116, !5116, !68, !1314}
!6946 = distinct !DISubprogram(name: "sparse_encode_mem_map", scope: !3, file: !3, line: 279, type: !6947, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6949)
!6947 = !DISubroutineType(types: !6948)
!6948 = !{!85, !759, !85}
!6949 = !{!6950, !6951, !6952}
!6950 = !DILocalVariable(name: "mem_map", arg: 1, scope: !6946, file: !3, line: 279, type: !759)
!6951 = !DILocalVariable(name: "pnum", arg: 2, scope: !6946, file: !3, line: 279, type: !85)
!6952 = !DILocalVariable(name: "coded_mem_map", scope: !6946, file: !3, line: 281, type: !85)
!6953 = !DILocation(line: 279, column: 57, scope: !6946)
!6954 = !DILocation(line: 279, column: 80, scope: !6946)
!6955 = !DILocation(line: 281, column: 2, scope: !6946)
!6956 = !DILocation(line: 281, column: 16, scope: !6946)
!6957 = !DILocation(line: 282, column: 19, scope: !6946)
!6958 = !DILocation(line: 282, column: 48, scope: !6946)
!6959 = !DILocation(line: 282, column: 30, scope: !6946)
!6960 = !DILocation(line: 282, column: 27, scope: !6946)
!6961 = !DILocation(line: 282, column: 3, scope: !6946)
!6962 = !DILocation(line: 283, column: 2, scope: !6946)
!6963 = !DILocation(line: 283, column: 2, scope: !6964)
!6964 = distinct !DILexicalBlock(scope: !6946, file: !3, line: 283, column: 2)
!6965 = !DILocation(line: 284, column: 2, scope: !6946)
!6966 = !DILocation(line: 284, column: 2, scope: !6967)
!6967 = distinct !DILexicalBlock(scope: !6968, file: !3, line: 284, column: 2)
!6968 = distinct !DILexicalBlock(scope: !6946, file: !3, line: 284, column: 2)
!6969 = !DILocation(line: 284, column: 2, scope: !6968)
!6970 = !DILocation(line: 284, column: 2, scope: !6971)
!6971 = distinct !DILexicalBlock(scope: !6967, file: !3, line: 284, column: 2)
!6972 = !DILocation(line: 284, column: 2, scope: !6973)
!6973 = distinct !DILexicalBlock(scope: !6971, file: !3, line: 284, column: 2)
!6974 = !DILocation(line: 284, column: 2, scope: !6975)
!6975 = distinct !DILexicalBlock(scope: !6971, file: !3, line: 284, column: 2)
!6976 = !{i64 2155583990, i64 2155584019, i64 2155584065, i64 2155584123, i64 2155584177, i64 2155584231, i64 2155584286, i64 2155584317}
!6977 = !DILocation(line: 285, column: 9, scope: !6946)
!6978 = !DILocation(line: 286, column: 1, scope: !6946)
!6979 = !DILocation(line: 285, column: 2, scope: !6946)
