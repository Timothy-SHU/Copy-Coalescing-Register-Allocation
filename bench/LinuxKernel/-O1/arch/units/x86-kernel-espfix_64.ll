; ModuleID = 'arch/x86/kernel/espfix_64.c'
source_filename = "arch/x86/kernel/espfix_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pgd_t = type { i64 }
%struct.mm_struct = type { %struct.anon, [0 x i64] }
%struct.anon = type { %struct.anon.0, %struct.maple_tree, ptr, i64, i64, i64, i64, i64, ptr, %struct.atomic_t, %struct.atomic_t, ptr, i64, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [52 x i64], [4 x %struct.percpu_counter], ptr, %struct.mm_context_t, i64, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, %struct.uprobes_state, %struct.atomic64_t, %struct.work_struct, [48 x i8] }
%struct.anon.0 = type { %struct.atomic_t, [60 x i8] }
%struct.maple_tree = type { %union.anon, i32, ptr }
%union.anon = type { %struct.spinlock }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.seqcount = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.mm_context_t = type { i64, %struct.atomic64_t, i64, %struct.rw_semaphore, ptr, i64, %struct.mutex, ptr, ptr, %struct.atomic_t, i16, i16 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type { ptr }
%struct.atomic64_t = type { i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.pud_t = type { i64 }
%struct.cpuinfo_x86 = type { %union.anon.39, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.41, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.39 = type { i32 }
%union.anon.41 = type { i64, [88 x i8] }
%struct.nodemask_t = type { [1 x i64] }
%struct.p4d_t = type { i64 }
%struct.pmd_t = type { i64 }
%struct.pte_t = type { i64 }

@init_top_pgt = external dso_local global [0 x %struct.pgd_t], align 8
@pgdir_shift = external dso_local global i32, align 4
@init_mm = external dso_local global %struct.mm_struct, align 64
@espfix_pud_page = internal global [512 x %struct.pud_t] zeroinitializer, section ".bss..page_aligned", align 4096, !dbg !0
@espfix_stack = hidden global i64 0, section ".data..percpu..read_mostly", align 8, !dbg !5429
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@espfix_pages = internal global [1 x ptr] zeroinitializer, align 8, !dbg !5433
@espfix_init_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @espfix_init_mutex, i64 16), ptr getelementptr (i8, ptr @espfix_init_mutex, i64 16) } }, align 8, !dbg !5440
@__supported_pte_mask = external dso_local global i64, align 8
@espfix_waddr = hidden global i64 0, section ".data..percpu..read_mostly", align 8, !dbg !5431
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@page_offset_base = external dso_local global i64, align 8
@ptrs_per_p4d = external dso_local global i32, align 4
@slot_random = internal global i32 0, align 4, !dbg !5436
@page_random = internal global i32 0, align 4, !dbg !5438
@numa_node = external dso_local global i32, section ".data..percpu", align 4
@.str = private unnamed_addr constant [40 x i8] c"\014%pGg allocation from offline node %d\0A\00", align 1, !dbg !5442
@node_states = external dso_local global [6 x %struct.nodemask_t], align 16
@vmemmap_base = external dso_local global i64, align 8
@phys_base = external dso_local global i64, align 8

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @init_espfix_bsp() #0 section ".init.text" align 16 !dbg !5458 {
entry:
  %pgd = alloca ptr, align 8
  %p4d = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgd) #12, !dbg !5462
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !5460, metadata !DIExpression()), !dbg !5463
  call void @llvm.lifetime.start.p0(i64 8, ptr %p4d) #12, !dbg !5464
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !5461, metadata !DIExpression()), !dbg !5465
  %0 = load i32, ptr @pgdir_shift, align 4, !dbg !5466
  %sh_prom = zext i32 %0 to i64, !dbg !5466
  %shr = lshr i64 -1099511627776, %sh_prom, !dbg !5466
  %and = and i64 %shr, 511, !dbg !5466
  %arrayidx = getelementptr [0 x %struct.pgd_t], ptr @init_top_pgt, i64 0, i64 %and, !dbg !5467
  store ptr %arrayidx, ptr %pgd, align 8, !dbg !5468
  %1 = load ptr, ptr %pgd, align 8, !dbg !5469
  %call = call ptr @p4d_alloc(ptr noundef @init_mm, ptr noundef %1, i64 noundef -1099511627776) #13, !dbg !5470
  store ptr %call, ptr %p4d, align 8, !dbg !5471
  %2 = load ptr, ptr %p4d, align 8, !dbg !5472
  call void @p4d_populate(ptr noundef @init_mm, ptr noundef %2, ptr noundef @espfix_pud_page) #13, !dbg !5473
  call void @init_espfix_random() #13, !dbg !5474
  call void @init_espfix_ap(i32 noundef 0) #13, !dbg !5475
  call void @llvm.lifetime.end.p0(i64 8, ptr %p4d) #12, !dbg !5476
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgd) #12, !dbg !5476
  ret void, !dbg !5476
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @p4d_alloc(ptr noundef %mm, ptr noundef %pgd, i64 noundef %address) #3 align 16 !dbg !5477 {
entry:
  %mm.addr = alloca ptr, align 8
  %pgd.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !5481, metadata !DIExpression()), !dbg !5484
  store ptr %pgd, ptr %pgd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd.addr, metadata !5482, metadata !DIExpression()), !dbg !5485
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !5483, metadata !DIExpression()), !dbg !5486
  %0 = load ptr, ptr %pgd.addr, align 8, !dbg !5487
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %0, i32 0, i32 0, !dbg !5487
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !5487
  %call = call i32 @pgd_none(i64 %1) #13, !dbg !5487
  %tobool = icmp ne i32 %call, 0, !dbg !5487
  %lnot = xor i1 %tobool, true, !dbg !5487
  %lnot1 = xor i1 %lnot, true, !dbg !5487
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5487
  %conv = sext i32 %lnot.ext to i64, !dbg !5487
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5487
  %tobool2 = icmp ne i64 %expval, 0, !dbg !5487
  br i1 %tobool2, label %land.lhs.true, label %cond.false, !dbg !5488

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %mm.addr, align 8, !dbg !5489
  %3 = load ptr, ptr %pgd.addr, align 8, !dbg !5490
  %4 = load i64, ptr %address.addr, align 8, !dbg !5491
  %call3 = call i32 @__p4d_alloc(ptr noundef %2, ptr noundef %3, i64 noundef %4) #13, !dbg !5492
  %tobool4 = icmp ne i32 %call3, 0, !dbg !5492
  br i1 %tobool4, label %cond.true, label %cond.false, !dbg !5493

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end, !dbg !5493

cond.false:                                       ; preds = %land.lhs.true, %entry
  %5 = load ptr, ptr %pgd.addr, align 8, !dbg !5494
  %6 = load i64, ptr %address.addr, align 8, !dbg !5495
  %call5 = call ptr @p4d_offset(ptr noundef %5, i64 noundef %6) #13, !dbg !5496
  br label %cond.end, !dbg !5493

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ null, %cond.true ], [ %call5, %cond.false ], !dbg !5493
  ret ptr %cond, !dbg !5497
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @p4d_populate(ptr noundef %mm, ptr noundef %p4d, ptr noundef %pud) #3 align 16 !dbg !5498 {
entry:
  %mm.addr = alloca ptr, align 8
  %p4d.addr = alloca ptr, align 8
  %pud.addr = alloca ptr, align 8
  %agg.tmp = alloca %struct.p4d_t, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !5503, metadata !DIExpression()), !dbg !5506
  store ptr %p4d, ptr %p4d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d.addr, metadata !5504, metadata !DIExpression()), !dbg !5507
  store ptr %pud, ptr %pud.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pud.addr, metadata !5505, metadata !DIExpression()), !dbg !5508
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !5509
  %1 = load ptr, ptr %pud.addr, align 8, !dbg !5510
  %2 = ptrtoint ptr %1 to i64, !dbg !5510
  %call = call i64 @__phys_addr_nodebug(i64 noundef %2) #13, !dbg !5510
  %shr = lshr i64 %call, 12, !dbg !5511
  call void @paravirt_alloc_pud(ptr noundef %0, i64 noundef %shr) #13, !dbg !5512
  %3 = load ptr, ptr %p4d.addr, align 8, !dbg !5513
  %4 = load ptr, ptr %pud.addr, align 8, !dbg !5513
  %5 = ptrtoint ptr %4 to i64, !dbg !5513
  %call1 = call i64 @__phys_addr_nodebug(i64 noundef %5) #13, !dbg !5513
  %or = or i64 103, %call1, !dbg !5513
  %call2 = call i64 @native_make_p4d(i64 noundef %or) #13, !dbg !5513
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %agg.tmp, i32 0, i32 0, !dbg !5513
  store i64 %call2, ptr %coerce.dive, align 8, !dbg !5513
  %coerce.dive3 = getelementptr inbounds %struct.p4d_t, ptr %agg.tmp, i32 0, i32 0, !dbg !5513
  %6 = load i64, ptr %coerce.dive3, align 8, !dbg !5513
  call void @native_set_p4d(ptr noundef %3, i64 %6) #13, !dbg !5513
  ret void, !dbg !5514
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_espfix_random() #4 align 16 !dbg !5515 {
entry:
  %rand = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %rand) #12, !dbg !5518
  call void @llvm.dbg.declare(metadata ptr %rand, metadata !5517, metadata !DIExpression()), !dbg !5519
  %call = call i64 @get_random_long() #13, !dbg !5520
  store i64 %call, ptr %rand, align 8, !dbg !5519
  %0 = load i64, ptr %rand, align 8, !dbg !5521
  %rem = urem i64 %0, 64, !dbg !5522
  %conv = trunc i64 %rem to i32, !dbg !5521
  store i32 %conv, ptr @slot_random, align 4, !dbg !5523
  %1 = load i64, ptr %rand, align 8, !dbg !5524
  %div = udiv i64 %1, 64, !dbg !5525
  %and = and i64 %div, 2047, !dbg !5526
  %conv1 = trunc i64 %and to i32, !dbg !5527
  store i32 %conv1, ptr @page_random, align 4, !dbg !5528
  call void @llvm.lifetime.end.p0(i64 8, ptr %rand) #12, !dbg !5529
  ret void, !dbg !5529
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @init_espfix_ap(i32 noundef %cpu) #4 align 16 !dbg !5530 {
entry:
  %cpu.addr = alloca i32, align 4
  %page = alloca i32, align 4
  %addr = alloca i64, align 8
  %pud = alloca %struct.pud_t, align 8
  %pud_p = alloca ptr, align 8
  %pmd = alloca %struct.pmd_t, align 8
  %pmd_p = alloca ptr, align 8
  %pte = alloca %struct.pte_t, align 8
  %pte_p = alloca ptr, align 8
  %n = alloca i32, align 4
  %node = alloca i32, align 4
  %stack_page = alloca ptr, align 8
  %ptemask = alloca i64, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp9 = alloca ptr, align 8
  %tmp25 = alloca ptr, align 8
  %page37 = alloca ptr, align 8
  %tmp40 = alloca %struct.pud_t, align 8
  %page56 = alloca ptr, align 8
  %tmp59 = alloca %struct.pmd_t, align 8
  %tmp81 = alloca %struct.pte_t, align 8
  %__vpp_verify110 = alloca ptr, align 8
  %tmp113 = alloca ptr, align 8
  %__ptr114 = alloca i64, align 8
  %tmp115 = alloca ptr, align 8
  %__vpp_verify122 = alloca ptr, align 8
  %tmp125 = alloca ptr, align 8
  %__ptr126 = alloca i64, align 8
  %tmp127 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5532, metadata !DIExpression()), !dbg !5569
  call void @llvm.lifetime.start.p0(i64 4, ptr %page) #12, !dbg !5570
  call void @llvm.dbg.declare(metadata ptr %page, metadata !5533, metadata !DIExpression()), !dbg !5571
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #12, !dbg !5572
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !5534, metadata !DIExpression()), !dbg !5573
  call void @llvm.lifetime.start.p0(i64 8, ptr %pud) #12, !dbg !5574
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !5535, metadata !DIExpression()), !dbg !5575
  call void @llvm.lifetime.start.p0(i64 8, ptr %pud_p) #12, !dbg !5574
  call void @llvm.dbg.declare(metadata ptr %pud_p, metadata !5536, metadata !DIExpression()), !dbg !5576
  call void @llvm.lifetime.start.p0(i64 8, ptr %pmd) #12, !dbg !5577
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !5537, metadata !DIExpression()), !dbg !5578
  call void @llvm.lifetime.start.p0(i64 8, ptr %pmd_p) #12, !dbg !5577
  call void @llvm.dbg.declare(metadata ptr %pmd_p, metadata !5538, metadata !DIExpression()), !dbg !5579
  call void @llvm.lifetime.start.p0(i64 8, ptr %pte) #12, !dbg !5580
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !5539, metadata !DIExpression()), !dbg !5581
  call void @llvm.lifetime.start.p0(i64 8, ptr %pte_p) #12, !dbg !5580
  call void @llvm.dbg.declare(metadata ptr %pte_p, metadata !5540, metadata !DIExpression()), !dbg !5582
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #12, !dbg !5583
  call void @llvm.dbg.declare(metadata ptr %n, metadata !5541, metadata !DIExpression()), !dbg !5584
  call void @llvm.lifetime.start.p0(i64 4, ptr %node) #12, !dbg !5583
  call void @llvm.dbg.declare(metadata ptr %node, metadata !5542, metadata !DIExpression()), !dbg !5585
  call void @llvm.lifetime.start.p0(i64 8, ptr %stack_page) #12, !dbg !5586
  call void @llvm.dbg.declare(metadata ptr %stack_page, metadata !5543, metadata !DIExpression()), !dbg !5587
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptemask) #12, !dbg !5588
  call void @llvm.dbg.declare(metadata ptr %ptemask, metadata !5544, metadata !DIExpression()), !dbg !5589
  br label %do.body, !dbg !5590

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !5591
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5545, metadata !DIExpression()), !dbg !5591
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5591
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5591
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !5590
  br label %do.cond, !dbg !5591

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5591

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #12, !dbg !5592
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5549, metadata !DIExpression()), !dbg !5592
  store i64 ptrtoint (ptr @espfix_stack to i64), ptr %__ptr, align 8, !dbg !5592
  %1 = load i64, ptr %__ptr, align 8, !dbg !5592
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !5592
  %idxprom = sext i32 %2 to i64, !dbg !5592
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !5592
  %3 = load i64, ptr %arrayidx, align 8, !dbg !5592
  %add = add i64 %1, %3, !dbg !5592
  %4 = inttoptr i64 %add to ptr, !dbg !5592
  store ptr %4, ptr %tmp1, align 8, !dbg !5592
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #12, !dbg !5590
  %5 = load ptr, ptr %tmp1, align 8, !dbg !5592
  store ptr %5, ptr %tmp, align 8, !dbg !5591
  %6 = load ptr, ptr %tmp, align 8, !dbg !5590
  %7 = load i64, ptr %6, align 8, !dbg !5593
  %tobool = icmp ne i64 %7, 0, !dbg !5593
  %lnot = xor i1 %tobool, true, !dbg !5593
  %lnot2 = xor i1 %lnot, true, !dbg !5593
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5593
  %conv = sext i32 %lnot.ext to i64, !dbg !5593
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5593
  %tobool3 = icmp ne i64 %expval, 0, !dbg !5593
  br i1 %tobool3, label %if.then, label %if.end, !dbg !5594

if.then:                                          ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5595

if.end:                                           ; preds = %do.end
  %8 = load i32, ptr %cpu.addr, align 4, !dbg !5596
  %call = call i64 @espfix_base_addr(i32 noundef %8) #13, !dbg !5597
  store i64 %call, ptr %addr, align 8, !dbg !5598
  %9 = load i32, ptr %cpu.addr, align 4, !dbg !5599
  %conv4 = sext i32 %9 to i64, !dbg !5599
  %div = udiv i64 %conv4, 64, !dbg !5600
  %conv5 = trunc i64 %div to i32, !dbg !5599
  store i32 %conv5, ptr %page, align 4, !dbg !5601
  br label %do.body6, !dbg !5602

do.body6:                                         ; preds = %if.end
  br label %do.cond7, !dbg !5604

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !5604

do.end8:                                          ; preds = %do.cond7
  %10 = load i32, ptr %page, align 4, !dbg !5602
  %idxprom10 = zext i32 %10 to i64, !dbg !5602
  %arrayidx11 = getelementptr [1 x ptr], ptr @espfix_pages, i64 0, i64 %idxprom10, !dbg !5602
  %11 = load volatile ptr, ptr %arrayidx11, align 8, !dbg !5602
  store ptr %11, ptr %tmp9, align 8, !dbg !5604
  %12 = load ptr, ptr %tmp9, align 8, !dbg !5602
  store ptr %12, ptr %stack_page, align 8, !dbg !5606
  %13 = load ptr, ptr %stack_page, align 8, !dbg !5607
  %tobool12 = icmp ne ptr %13, null, !dbg !5607
  %lnot13 = xor i1 %tobool12, true, !dbg !5607
  %lnot15 = xor i1 %lnot13, true, !dbg !5607
  %lnot.ext16 = zext i1 %lnot15 to i32, !dbg !5607
  %conv17 = sext i32 %lnot.ext16 to i64, !dbg !5607
  %expval18 = call i64 @llvm.expect.i64(i64 %conv17, i64 1), !dbg !5607
  %tobool19 = icmp ne i64 %expval18, 0, !dbg !5607
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !5609

if.then20:                                        ; preds = %do.end8
  br label %done, !dbg !5610

if.end21:                                         ; preds = %do.end8
  call void @mutex_lock(ptr noundef @espfix_init_mutex) #13, !dbg !5611
  br label %do.body22, !dbg !5612

do.body22:                                        ; preds = %if.end21
  br label %do.cond23, !dbg !5614

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !5614

do.end24:                                         ; preds = %do.cond23
  %14 = load i32, ptr %page, align 4, !dbg !5612
  %idxprom26 = zext i32 %14 to i64, !dbg !5612
  %arrayidx27 = getelementptr [1 x ptr], ptr @espfix_pages, i64 0, i64 %idxprom26, !dbg !5612
  %15 = load volatile ptr, ptr %arrayidx27, align 8, !dbg !5612
  store ptr %15, ptr %tmp25, align 8, !dbg !5614
  %16 = load ptr, ptr %tmp25, align 8, !dbg !5612
  store ptr %16, ptr %stack_page, align 8, !dbg !5616
  %17 = load ptr, ptr %stack_page, align 8, !dbg !5617
  %tobool28 = icmp ne ptr %17, null, !dbg !5617
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !5619

if.then29:                                        ; preds = %do.end24
  br label %unlock_done, !dbg !5620

if.end30:                                         ; preds = %do.end24
  %18 = load i32, ptr %cpu.addr, align 4, !dbg !5621
  %call31 = call i32 @cpu_to_node(i32 noundef %18) #13, !dbg !5622
  store i32 %call31, ptr %node, align 4, !dbg !5623
  %19 = load i64, ptr @__supported_pte_mask, align 8, !dbg !5624
  store i64 %19, ptr %ptemask, align 8, !dbg !5625
  %20 = load i64, ptr %addr, align 8, !dbg !5626
  %call32 = call i64 @pud_index(i64 noundef %20) #13, !dbg !5627
  %arrayidx33 = getelementptr [512 x %struct.pud_t], ptr @espfix_pud_page, i64 0, i64 %call32, !dbg !5628
  store ptr %arrayidx33, ptr %pud_p, align 8, !dbg !5629
  %21 = load ptr, ptr %pud_p, align 8, !dbg !5630
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pud, ptr align 8 %21, i64 8, i1 false), !dbg !5631
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !5632
  %22 = load i64, ptr %coerce.dive, align 8, !dbg !5632
  %call34 = call i32 @pud_present(i64 %22) #13, !dbg !5632
  %tobool35 = icmp ne i32 %call34, 0, !dbg !5632
  br i1 %tobool35, label %if.end50, label %if.then36, !dbg !5633

if.then36:                                        ; preds = %if.end30
  call void @llvm.lifetime.start.p0(i64 8, ptr %page37) #12, !dbg !5634
  call void @llvm.dbg.declare(metadata ptr %page37, metadata !5551, metadata !DIExpression()), !dbg !5635
  %23 = load i32, ptr %node, align 4, !dbg !5636
  %call38 = call ptr @alloc_pages_node(i32 noundef %23, i32 noundef 3520, i32 noundef 0) #13, !dbg !5637
  store ptr %call38, ptr %page37, align 8, !dbg !5635
  %24 = load ptr, ptr %page37, align 8, !dbg !5638
  %call39 = call ptr @lowmem_page_address(ptr noundef %24) #13, !dbg !5638
  store ptr %call39, ptr %pmd_p, align 8, !dbg !5639
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp40) #12, !dbg !5640
  %25 = load ptr, ptr %pmd_p, align 8, !dbg !5640
  %26 = ptrtoint ptr %25 to i64, !dbg !5640
  %call41 = call i64 @__phys_addr_nodebug(i64 noundef %26) #13, !dbg !5640
  %27 = load i64, ptr %ptemask, align 8, !dbg !5640
  %and = and i64 -9223372036854775711, %27, !dbg !5640
  %or = or i64 %call41, %and, !dbg !5640
  %call42 = call i64 @native_make_pud(i64 noundef %or) #13, !dbg !5640
  %coerce.dive43 = getelementptr inbounds %struct.pud_t, ptr %tmp40, i32 0, i32 0, !dbg !5640
  store i64 %call42, ptr %coerce.dive43, align 8, !dbg !5640
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pud, ptr align 8 %tmp40, i64 8, i1 false), !dbg !5640
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp40) #12, !dbg !5640
  %28 = load ptr, ptr %pmd_p, align 8, !dbg !5641
  %29 = ptrtoint ptr %28 to i64, !dbg !5641
  %call44 = call i64 @__phys_addr_nodebug(i64 noundef %29) #13, !dbg !5641
  %shr = lshr i64 %call44, 12, !dbg !5642
  call void @paravirt_alloc_pmd(ptr noundef @init_mm, i64 noundef %shr) #13, !dbg !5643
  store i32 0, ptr %n, align 4, !dbg !5644
  br label %for.cond, !dbg !5646

for.cond:                                         ; preds = %for.inc, %if.then36
  %30 = load i32, ptr %n, align 4, !dbg !5647
  %conv45 = sext i32 %30 to i64, !dbg !5647
  %cmp = icmp ult i64 %conv45, 4, !dbg !5649
  br i1 %cmp, label %for.body, label %for.end, !dbg !5650

for.body:                                         ; preds = %for.cond
  %31 = load ptr, ptr %pud_p, align 8, !dbg !5651
  %32 = load i32, ptr %n, align 4, !dbg !5651
  %idxprom47 = sext i32 %32 to i64, !dbg !5651
  %arrayidx48 = getelementptr %struct.pud_t, ptr %31, i64 %idxprom47, !dbg !5651
  %coerce.dive49 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !5651
  %33 = load i64, ptr %coerce.dive49, align 8, !dbg !5651
  call void @native_set_pud(ptr noundef %arrayidx48, i64 %33) #13, !dbg !5651
  br label %for.inc, !dbg !5651

for.inc:                                          ; preds = %for.body
  %34 = load i32, ptr %n, align 4, !dbg !5652
  %inc = add i32 %34, 1, !dbg !5652
  store i32 %inc, ptr %n, align 4, !dbg !5652
  br label %for.cond, !dbg !5653, !llvm.loop !5654

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %page37) #12, !dbg !5658
  br label %if.end50, !dbg !5659

if.end50:                                         ; preds = %for.end, %if.end30
  %35 = load i64, ptr %addr, align 8, !dbg !5660
  %call51 = call ptr @pmd_offset(ptr noundef %pud, i64 noundef %35) #13, !dbg !5661
  store ptr %call51, ptr %pmd_p, align 8, !dbg !5662
  %36 = load ptr, ptr %pmd_p, align 8, !dbg !5663
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pmd, ptr align 8 %36, i64 8, i1 false), !dbg !5664
  %coerce.dive52 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !5665
  %37 = load i64, ptr %coerce.dive52, align 8, !dbg !5665
  %call53 = call i32 @pmd_present(i64 %37) #13, !dbg !5665
  %tobool54 = icmp ne i32 %call53, 0, !dbg !5665
  br i1 %tobool54, label %if.end77, label %if.then55, !dbg !5666

if.then55:                                        ; preds = %if.end50
  call void @llvm.lifetime.start.p0(i64 8, ptr %page56) #12, !dbg !5667
  call void @llvm.dbg.declare(metadata ptr %page56, metadata !5554, metadata !DIExpression()), !dbg !5668
  %38 = load i32, ptr %node, align 4, !dbg !5669
  %call57 = call ptr @alloc_pages_node(i32 noundef %38, i32 noundef 3520, i32 noundef 0) #13, !dbg !5670
  store ptr %call57, ptr %page56, align 8, !dbg !5668
  %39 = load ptr, ptr %page56, align 8, !dbg !5671
  %call58 = call ptr @lowmem_page_address(ptr noundef %39) #13, !dbg !5671
  store ptr %call58, ptr %pte_p, align 8, !dbg !5672
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp59) #12, !dbg !5673
  %40 = load ptr, ptr %pte_p, align 8, !dbg !5673
  %41 = ptrtoint ptr %40 to i64, !dbg !5673
  %call60 = call i64 @__phys_addr_nodebug(i64 noundef %41) #13, !dbg !5673
  %42 = load i64, ptr %ptemask, align 8, !dbg !5673
  %and61 = and i64 -9223372036854775711, %42, !dbg !5673
  %or62 = or i64 %call60, %and61, !dbg !5673
  %call63 = call i64 @native_make_pmd(i64 noundef %or62) #13, !dbg !5673
  %coerce.dive64 = getelementptr inbounds %struct.pmd_t, ptr %tmp59, i32 0, i32 0, !dbg !5673
  store i64 %call63, ptr %coerce.dive64, align 8, !dbg !5673
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pmd, ptr align 8 %tmp59, i64 8, i1 false), !dbg !5673
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp59) #12, !dbg !5673
  %43 = load ptr, ptr %pte_p, align 8, !dbg !5674
  %44 = ptrtoint ptr %43 to i64, !dbg !5674
  %call65 = call i64 @__phys_addr_nodebug(i64 noundef %44) #13, !dbg !5674
  %shr66 = lshr i64 %call65, 12, !dbg !5675
  call void @paravirt_alloc_pte(ptr noundef @init_mm, i64 noundef %shr66) #13, !dbg !5676
  store i32 0, ptr %n, align 4, !dbg !5677
  br label %for.cond67, !dbg !5679

for.cond67:                                       ; preds = %for.inc74, %if.then55
  %45 = load i32, ptr %n, align 4, !dbg !5680
  %cmp68 = icmp slt i32 %45, 512, !dbg !5682
  br i1 %cmp68, label %for.body70, label %for.end76, !dbg !5683

for.body70:                                       ; preds = %for.cond67
  %46 = load ptr, ptr %pmd_p, align 8, !dbg !5684
  %47 = load i32, ptr %n, align 4, !dbg !5684
  %idxprom71 = sext i32 %47 to i64, !dbg !5684
  %arrayidx72 = getelementptr %struct.pmd_t, ptr %46, i64 %idxprom71, !dbg !5684
  %coerce.dive73 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !5684
  %48 = load i64, ptr %coerce.dive73, align 8, !dbg !5684
  call void @native_set_pmd(ptr noundef %arrayidx72, i64 %48) #13, !dbg !5684
  br label %for.inc74, !dbg !5684

for.inc74:                                        ; preds = %for.body70
  %49 = load i32, ptr %n, align 4, !dbg !5685
  %inc75 = add i32 %49, 1, !dbg !5685
  store i32 %inc75, ptr %n, align 4, !dbg !5685
  br label %for.cond67, !dbg !5686, !llvm.loop !5687

for.end76:                                        ; preds = %for.cond67
  call void @llvm.lifetime.end.p0(i64 8, ptr %page56) #12, !dbg !5689
  br label %if.end77, !dbg !5690

if.end77:                                         ; preds = %for.end76, %if.end50
  %50 = load i64, ptr %addr, align 8, !dbg !5691
  %call78 = call ptr @pte_offset_kernel(ptr noundef %pmd, i64 noundef %50) #13, !dbg !5692
  store ptr %call78, ptr %pte_p, align 8, !dbg !5693
  %51 = load i32, ptr %node, align 4, !dbg !5694
  %call79 = call ptr @alloc_pages_node(i32 noundef %51, i32 noundef 3264, i32 noundef 0) #13, !dbg !5694
  %call80 = call ptr @lowmem_page_address(ptr noundef %call79) #13, !dbg !5694
  store ptr %call80, ptr %stack_page, align 8, !dbg !5695
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp81) #12, !dbg !5696
  %52 = load ptr, ptr %stack_page, align 8, !dbg !5696
  %53 = ptrtoint ptr %52 to i64, !dbg !5696
  %call82 = call i64 @__phys_addr_nodebug(i64 noundef %53) #13, !dbg !5696
  %54 = load i64, ptr %ptemask, align 8, !dbg !5696
  %and83 = and i64 -9223372036854775519, %54, !dbg !5696
  %or84 = or i64 %call82, %and83, !dbg !5696
  %call85 = call i64 @native_make_pte(i64 noundef %or84) #13, !dbg !5696
  %coerce.dive86 = getelementptr inbounds %struct.pte_t, ptr %tmp81, i32 0, i32 0, !dbg !5696
  store i64 %call85, ptr %coerce.dive86, align 8, !dbg !5696
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pte, ptr align 8 %tmp81, i64 8, i1 false), !dbg !5696
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp81) #12, !dbg !5696
  store i32 0, ptr %n, align 4, !dbg !5697
  br label %for.cond87, !dbg !5699

for.cond87:                                       ; preds = %for.inc95, %if.end77
  %55 = load i32, ptr %n, align 4, !dbg !5700
  %conv88 = sext i32 %55 to i64, !dbg !5700
  %cmp89 = icmp ult i64 %conv88, 32, !dbg !5702
  br i1 %cmp89, label %for.body91, label %for.end97, !dbg !5703

for.body91:                                       ; preds = %for.cond87
  %56 = load ptr, ptr %pte_p, align 8, !dbg !5704
  %57 = load i32, ptr %n, align 4, !dbg !5704
  %conv92 = sext i32 %57 to i64, !dbg !5704
  %mul = mul i64 %conv92, 16, !dbg !5704
  %arrayidx93 = getelementptr %struct.pte_t, ptr %56, i64 %mul, !dbg !5704
  %coerce.dive94 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !5704
  %58 = load i64, ptr %coerce.dive94, align 8, !dbg !5704
  call void @native_set_pte(ptr noundef %arrayidx93, i64 %58) #13, !dbg !5704
  br label %for.inc95, !dbg !5704

for.inc95:                                        ; preds = %for.body91
  %59 = load i32, ptr %n, align 4, !dbg !5705
  %inc96 = add i32 %59, 1, !dbg !5705
  store i32 %inc96, ptr %n, align 4, !dbg !5705
  br label %for.cond87, !dbg !5706, !llvm.loop !5707

for.end97:                                        ; preds = %for.cond87
  br label %do.body98, !dbg !5709

do.body98:                                        ; preds = %for.end97
  br label %do.body99, !dbg !5710

do.body99:                                        ; preds = %do.body98
  br label %do.cond100, !dbg !5712

do.cond100:                                       ; preds = %do.body99
  br label %do.end101, !dbg !5712

do.end101:                                        ; preds = %do.cond100
  br label %do.body102, !dbg !5710

do.body102:                                       ; preds = %do.end101
  %60 = load ptr, ptr %stack_page, align 8, !dbg !5714
  %61 = load i32, ptr %page, align 4, !dbg !5714
  %idxprom103 = zext i32 %61 to i64, !dbg !5714
  %arrayidx104 = getelementptr [1 x ptr], ptr @espfix_pages, i64 0, i64 %idxprom103, !dbg !5714
  store volatile ptr %60, ptr %arrayidx104, align 8, !dbg !5714
  br label %do.cond105, !dbg !5714

do.cond105:                                       ; preds = %do.body102
  br label %do.end106, !dbg !5714

do.end106:                                        ; preds = %do.cond105
  br label %do.cond107, !dbg !5710

do.cond107:                                       ; preds = %do.end106
  br label %do.end108, !dbg !5710

do.end108:                                        ; preds = %do.cond107
  br label %unlock_done, !dbg !5710

unlock_done:                                      ; preds = %do.end108, %if.then29
  call void @llvm.dbg.label(metadata !5557), !dbg !5716
  call void @mutex_unlock(ptr noundef @espfix_init_mutex) #13, !dbg !5717
  br label %done, !dbg !5717

done:                                             ; preds = %unlock_done, %if.then20
  call void @llvm.dbg.label(metadata !5558), !dbg !5718
  %62 = load i64, ptr %addr, align 8, !dbg !5719
  br label %do.body109, !dbg !5720

do.body109:                                       ; preds = %done
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify110) #12, !dbg !5721
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify110, metadata !5559, metadata !DIExpression()), !dbg !5721
  store ptr null, ptr %__vpp_verify110, align 8, !dbg !5721
  %63 = load ptr, ptr %__vpp_verify110, align 8, !dbg !5721
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify110) #12, !dbg !5720
  br label %do.cond111, !dbg !5721

do.cond111:                                       ; preds = %do.body109
  br label %do.end112, !dbg !5721

do.end112:                                        ; preds = %do.cond111
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr114) #12, !dbg !5722
  call void @llvm.dbg.declare(metadata ptr %__ptr114, metadata !5562, metadata !DIExpression()), !dbg !5722
  store i64 ptrtoint (ptr @espfix_stack to i64), ptr %__ptr114, align 8, !dbg !5722
  %64 = load i64, ptr %__ptr114, align 8, !dbg !5722
  %65 = load i32, ptr %cpu.addr, align 4, !dbg !5722
  %idxprom116 = sext i32 %65 to i64, !dbg !5722
  %arrayidx117 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom116, !dbg !5722
  %66 = load i64, ptr %arrayidx117, align 8, !dbg !5722
  %add118 = add i64 %64, %66, !dbg !5722
  %67 = inttoptr i64 %add118 to ptr, !dbg !5722
  store ptr %67, ptr %tmp115, align 8, !dbg !5722
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr114) #12, !dbg !5720
  %68 = load ptr, ptr %tmp115, align 8, !dbg !5722
  store ptr %68, ptr %tmp113, align 8, !dbg !5721
  %69 = load ptr, ptr %tmp113, align 8, !dbg !5720
  store i64 %62, ptr %69, align 8, !dbg !5723
  %70 = load ptr, ptr %stack_page, align 8, !dbg !5724
  %71 = ptrtoint ptr %70 to i64, !dbg !5725
  %72 = load i64, ptr %addr, align 8, !dbg !5726
  %and119 = and i64 %72, 4095, !dbg !5727
  %add120 = add i64 %71, %and119, !dbg !5728
  br label %do.body121, !dbg !5729

do.body121:                                       ; preds = %do.end112
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify122) #12, !dbg !5730
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify122, metadata !5564, metadata !DIExpression()), !dbg !5730
  store ptr null, ptr %__vpp_verify122, align 8, !dbg !5730
  %73 = load ptr, ptr %__vpp_verify122, align 8, !dbg !5730
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify122) #12, !dbg !5729
  br label %do.cond123, !dbg !5730

do.cond123:                                       ; preds = %do.body121
  br label %do.end124, !dbg !5730

do.end124:                                        ; preds = %do.cond123
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr126) #12, !dbg !5731
  call void @llvm.dbg.declare(metadata ptr %__ptr126, metadata !5567, metadata !DIExpression()), !dbg !5731
  store i64 ptrtoint (ptr @espfix_waddr to i64), ptr %__ptr126, align 8, !dbg !5731
  %74 = load i64, ptr %__ptr126, align 8, !dbg !5731
  %75 = load i32, ptr %cpu.addr, align 4, !dbg !5731
  %idxprom128 = sext i32 %75 to i64, !dbg !5731
  %arrayidx129 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom128, !dbg !5731
  %76 = load i64, ptr %arrayidx129, align 8, !dbg !5731
  %add130 = add i64 %74, %76, !dbg !5731
  %77 = inttoptr i64 %add130 to ptr, !dbg !5731
  store ptr %77, ptr %tmp127, align 8, !dbg !5731
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr126) #12, !dbg !5729
  %78 = load ptr, ptr %tmp127, align 8, !dbg !5731
  store ptr %78, ptr %tmp125, align 8, !dbg !5730
  %79 = load ptr, ptr %tmp125, align 8, !dbg !5729
  store i64 %add120, ptr %79, align 8, !dbg !5732
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5733
  br label %cleanup, !dbg !5733

cleanup:                                          ; preds = %do.end124, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptemask) #12, !dbg !5733
  call void @llvm.lifetime.end.p0(i64 8, ptr %stack_page) #12, !dbg !5733
  call void @llvm.lifetime.end.p0(i64 4, ptr %node) #12, !dbg !5733
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #12, !dbg !5733
  call void @llvm.lifetime.end.p0(i64 8, ptr %pte_p) #12, !dbg !5733
  call void @llvm.lifetime.end.p0(i64 8, ptr %pte) #12, !dbg !5733
  call void @llvm.lifetime.end.p0(i64 8, ptr %pmd_p) #12, !dbg !5733
  call void @llvm.lifetime.end.p0(i64 8, ptr %pmd) #12, !dbg !5733
  call void @llvm.lifetime.end.p0(i64 8, ptr %pud_p) #12, !dbg !5733
  call void @llvm.lifetime.end.p0(i64 8, ptr %pud) #12, !dbg !5733
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #12, !dbg !5733
  call void @llvm.lifetime.end.p0(i64 4, ptr %page) #12, !dbg !5733
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5733

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @espfix_base_addr(i32 noundef %cpu) #3 align 16 !dbg !5734 {
entry:
  %cpu.addr = alloca i32, align 4
  %page = alloca i64, align 8
  %slot = alloca i64, align 8
  %addr = alloca i64, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5738, metadata !DIExpression()), !dbg !5742
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #12, !dbg !5743
  call void @llvm.dbg.declare(metadata ptr %page, metadata !5739, metadata !DIExpression()), !dbg !5744
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot) #12, !dbg !5743
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !5740, metadata !DIExpression()), !dbg !5745
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #12, !dbg !5746
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !5741, metadata !DIExpression()), !dbg !5747
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !5748
  %conv = zext i32 %0 to i64, !dbg !5748
  %div = udiv i64 %conv, 64, !dbg !5749
  %1 = load i32, ptr @page_random, align 4, !dbg !5750
  %conv1 = zext i32 %1 to i64, !dbg !5750
  %xor = xor i64 %div, %conv1, !dbg !5751
  store i64 %xor, ptr %page, align 8, !dbg !5752
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !5753
  %3 = load i32, ptr @slot_random, align 4, !dbg !5754
  %add = add i32 %2, %3, !dbg !5755
  %conv2 = zext i32 %add to i64, !dbg !5756
  %rem = urem i64 %conv2, 64, !dbg !5757
  store i64 %rem, ptr %slot, align 8, !dbg !5758
  %4 = load i64, ptr %page, align 8, !dbg !5759
  %shl = shl i64 %4, 12, !dbg !5760
  %5 = load i64, ptr %slot, align 8, !dbg !5761
  %mul = mul i64 %5, 64, !dbg !5762
  %add3 = add i64 %shl, %mul, !dbg !5763
  store i64 %add3, ptr %addr, align 8, !dbg !5764
  %6 = load i64, ptr %addr, align 8, !dbg !5765
  %and = and i64 %6, 65535, !dbg !5766
  %7 = load i64, ptr %addr, align 8, !dbg !5767
  %and4 = and i64 %7, -65536, !dbg !5768
  %shl5 = shl i64 %and4, 16, !dbg !5769
  %or = or i64 %and, %shl5, !dbg !5770
  store i64 %or, ptr %addr, align 8, !dbg !5771
  %8 = load i64, ptr %addr, align 8, !dbg !5772
  %add6 = add i64 %8, -1099511627776, !dbg !5772
  store i64 %add6, ptr %addr, align 8, !dbg !5772
  %9 = load i64, ptr %addr, align 8, !dbg !5773
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #12, !dbg !5774
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot) #12, !dbg !5774
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #12, !dbg !5774
  ret i64 %9, !dbg !5775
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5776 dso_local void @mutex_lock(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpu_to_node(i32 noundef %cpu) #3 align 16 !dbg !5780 {
entry:
  %cpu.addr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5783, metadata !DIExpression()), !dbg !5789
  br label %do.body, !dbg !5790

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !5791
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5784, metadata !DIExpression()), !dbg !5791
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5791
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5791
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !5790
  br label %do.end, !dbg !5791

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #12, !dbg !5792
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5787, metadata !DIExpression()), !dbg !5792
  store i64 ptrtoint (ptr @numa_node to i64), ptr %__ptr, align 8, !dbg !5792
  %1 = load i64, ptr %__ptr, align 8, !dbg !5792
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !5792
  %idxprom = sext i32 %2 to i64, !dbg !5792
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !5792
  %3 = load i64, ptr %arrayidx, align 8, !dbg !5792
  %add = add i64 %1, %3, !dbg !5792
  %4 = inttoptr i64 %add to ptr, !dbg !5792
  store ptr %4, ptr %tmp1, align 8, !dbg !5792
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #12, !dbg !5790
  %5 = load ptr, ptr %tmp1, align 8, !dbg !5792
  store ptr %5, ptr %tmp, align 8, !dbg !5791
  %6 = load ptr, ptr %tmp, align 8, !dbg !5790
  %7 = load i32, ptr %6, align 4, !dbg !5793
  ret i32 %7, !dbg !5794
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pud_index(i64 noundef %address) #3 align 16 !dbg !5795 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !5800, metadata !DIExpression()), !dbg !5801
  %0 = load i64, ptr %address.addr, align 8, !dbg !5802
  %shr = lshr i64 %0, 30, !dbg !5803
  %and = and i64 %shr, 511, !dbg !5804
  ret i64 %and, !dbg !5805
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pud_present(i64 %pud.coerce) #3 align 16 !dbg !5806 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !5811, metadata !DIExpression()), !dbg !5812
  %coerce.dive1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !5813
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !5813
  %call = call i64 @pud_flags(i64 %0) #13, !dbg !5813
  %and = and i64 %call, 1, !dbg !5814
  %conv = trunc i64 %and to i32, !dbg !5813
  ret i32 %conv, !dbg !5815
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @alloc_pages_node(i32 noundef %nid, i32 noundef %gfp_mask, i32 noundef %order) #3 align 16 !dbg !5816 {
entry:
  %nid.addr = alloca i32, align 4
  %gfp_mask.addr = alloca i32, align 4
  %order.addr = alloca i32, align 4
  store i32 %nid, ptr %nid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !5820, metadata !DIExpression()), !dbg !5823
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !5821, metadata !DIExpression()), !dbg !5824
  store i32 %order, ptr %order.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %order.addr, metadata !5822, metadata !DIExpression()), !dbg !5825
  %0 = load i32, ptr %nid.addr, align 4, !dbg !5826
  %cmp = icmp eq i32 %0, -1, !dbg !5828
  br i1 %cmp, label %if.then, label %if.end, !dbg !5829

if.then:                                          ; preds = %entry
  %call = call i32 @numa_mem_id() #13, !dbg !5830
  store i32 %call, ptr %nid.addr, align 4, !dbg !5831
  br label %if.end, !dbg !5832

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %nid.addr, align 4, !dbg !5833
  %2 = load i32, ptr %gfp_mask.addr, align 4, !dbg !5834
  %3 = load i32, ptr %order.addr, align 4, !dbg !5835
  %call1 = call ptr @__alloc_pages_node(i32 noundef %1, i32 noundef %2, i32 noundef %3) #13, !dbg !5836
  ret ptr %call1, !dbg !5837
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @lowmem_page_address(ptr noundef %page) #8 align 16 !dbg !5838 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5844, metadata !DIExpression()), !dbg !5845
  %0 = load ptr, ptr %page.addr, align 8, !dbg !5846
  %1 = load i64, ptr @vmemmap_base, align 8, !dbg !5846
  %2 = inttoptr i64 %1 to ptr, !dbg !5846
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !5846
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64, !dbg !5846
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5846
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !5846
  %shl = shl i64 %sub.ptr.div, 12, !dbg !5846
  %3 = load i64, ptr @page_offset_base, align 8, !dbg !5846
  %add = add i64 %shl, %3, !dbg !5846
  %4 = inttoptr i64 %add to ptr, !dbg !5846
  ret ptr %4, !dbg !5847
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_make_pud(i64 noundef %val) #3 align 16 !dbg !5848 {
entry:
  %retval = alloca %struct.pud_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5852, metadata !DIExpression()), !dbg !5853
  %pud = getelementptr inbounds %struct.pud_t, ptr %retval, i32 0, i32 0, !dbg !5854
  %0 = load i64, ptr %val.addr, align 8, !dbg !5855
  store i64 %0, ptr %pud, align 8, !dbg !5854
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %retval, i32 0, i32 0, !dbg !5856
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !5856
  ret i64 %1, !dbg !5856
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__phys_addr_nodebug(i64 noundef %x) #8 align 16 !dbg !5857 {
entry:
  %x.addr = alloca i64, align 8
  %y = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !5860, metadata !DIExpression()), !dbg !5862
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #12, !dbg !5863
  call void @llvm.dbg.declare(metadata ptr %y, metadata !5861, metadata !DIExpression()), !dbg !5864
  %0 = load i64, ptr %x.addr, align 8, !dbg !5865
  %sub = sub i64 %0, -2147483648, !dbg !5866
  store i64 %sub, ptr %y, align 8, !dbg !5864
  %1 = load i64, ptr %y, align 8, !dbg !5867
  %2 = load i64, ptr %x.addr, align 8, !dbg !5868
  %3 = load i64, ptr %y, align 8, !dbg !5869
  %cmp = icmp ugt i64 %2, %3, !dbg !5870
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5871

cond.true:                                        ; preds = %entry
  %4 = load i64, ptr @phys_base, align 8, !dbg !5872
  br label %cond.end, !dbg !5871

cond.false:                                       ; preds = %entry
  %5 = load i64, ptr @page_offset_base, align 8, !dbg !5873
  %sub1 = sub i64 -2147483648, %5, !dbg !5874
  br label %cond.end, !dbg !5871

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %sub1, %cond.false ], !dbg !5871
  %add = add i64 %1, %cond, !dbg !5875
  store i64 %add, ptr %x.addr, align 8, !dbg !5876
  %6 = load i64, ptr %x.addr, align 8, !dbg !5877
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #12, !dbg !5878
  ret i64 %6, !dbg !5879
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @paravirt_alloc_pmd(ptr noundef %mm, i64 noundef %pfn) #3 align 16 !dbg !5880 {
entry:
  %mm.addr = alloca ptr, align 8
  %pfn.addr = alloca i64, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !5884, metadata !DIExpression()), !dbg !5886
  store i64 %pfn, ptr %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn.addr, metadata !5885, metadata !DIExpression()), !dbg !5887
  ret void, !dbg !5888
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_set_pud(ptr noundef %pudp, i64 %pud.coerce) #3 align 16 !dbg !5889 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %pudp.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  store ptr %pudp, ptr %pudp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pudp.addr, metadata !5894, metadata !DIExpression()), !dbg !5896
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !5895, metadata !DIExpression()), !dbg !5897
  br label %do.body, !dbg !5898

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5899

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5901

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5899

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %pudp.addr, align 8, !dbg !5903
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %pud, i64 8, i1 true), !dbg !5903
  br label %do.end3, !dbg !5903

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5899

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !5905
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pmd_offset(ptr noundef %pud, i64 noundef %address) #3 align 16 !dbg !5906 {
entry:
  %pud.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  store ptr %pud, ptr %pud.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pud.addr, metadata !5910, metadata !DIExpression()), !dbg !5912
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !5911, metadata !DIExpression()), !dbg !5913
  %0 = load ptr, ptr %pud.addr, align 8, !dbg !5914
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %0, i32 0, i32 0, !dbg !5915
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !5915
  %call = call ptr @pud_pgtable(i64 %1) #13, !dbg !5915
  %2 = load i64, ptr %address.addr, align 8, !dbg !5916
  %call1 = call i64 @pmd_index(i64 noundef %2) #13, !dbg !5917
  %add.ptr = getelementptr %struct.pmd_t, ptr %call, i64 %call1, !dbg !5918
  ret ptr %add.ptr, !dbg !5919
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pmd_present(i64 %pmd.coerce) #3 align 16 !dbg !5920 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !5924, metadata !DIExpression()), !dbg !5925
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !5926
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !5926
  %call = call i64 @pmd_flags(i64 %0) #13, !dbg !5926
  %and = and i64 %call, 385, !dbg !5927
  %conv = trunc i64 %and to i32, !dbg !5926
  ret i32 %conv, !dbg !5928
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_make_pmd(i64 noundef %val) #3 align 16 !dbg !5929 {
entry:
  %retval = alloca %struct.pmd_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5933, metadata !DIExpression()), !dbg !5934
  %pmd = getelementptr inbounds %struct.pmd_t, ptr %retval, i32 0, i32 0, !dbg !5935
  %0 = load i64, ptr %val.addr, align 8, !dbg !5936
  store i64 %0, ptr %pmd, align 8, !dbg !5935
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %retval, i32 0, i32 0, !dbg !5937
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !5937
  ret i64 %1, !dbg !5937
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @paravirt_alloc_pte(ptr noundef %mm, i64 noundef %pfn) #3 align 16 !dbg !5938 {
entry:
  %mm.addr = alloca ptr, align 8
  %pfn.addr = alloca i64, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !5940, metadata !DIExpression()), !dbg !5942
  store i64 %pfn, ptr %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn.addr, metadata !5941, metadata !DIExpression()), !dbg !5943
  ret void, !dbg !5944
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_set_pmd(ptr noundef %pmdp, i64 %pmd.coerce) #3 align 16 !dbg !5945 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %pmdp.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  store ptr %pmdp, ptr %pmdp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmdp.addr, metadata !5949, metadata !DIExpression()), !dbg !5951
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !5950, metadata !DIExpression()), !dbg !5952
  br label %do.body, !dbg !5953

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5954

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5956

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5954

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %pmdp.addr, align 8, !dbg !5958
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %pmd, i64 8, i1 true), !dbg !5958
  br label %do.end3, !dbg !5958

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5954

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !5960
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pte_offset_kernel(ptr noundef %pmd, i64 noundef %address) #3 align 16 !dbg !5961 {
entry:
  %pmd.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  store ptr %pmd, ptr %pmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd.addr, metadata !5965, metadata !DIExpression()), !dbg !5967
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !5966, metadata !DIExpression()), !dbg !5968
  %0 = load ptr, ptr %pmd.addr, align 8, !dbg !5969
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %0, i32 0, i32 0, !dbg !5970
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !5970
  %call = call i64 @pmd_page_vaddr(i64 %1) #13, !dbg !5970
  %2 = inttoptr i64 %call to ptr, !dbg !5971
  %3 = load i64, ptr %address.addr, align 8, !dbg !5972
  %call1 = call i64 @pte_index(i64 noundef %3) #13, !dbg !5973
  %add.ptr = getelementptr %struct.pte_t, ptr %2, i64 %call1, !dbg !5974
  ret ptr %add.ptr, !dbg !5975
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_make_pte(i64 noundef %val) #3 align 16 !dbg !5976 {
entry:
  %retval = alloca %struct.pte_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5980, metadata !DIExpression()), !dbg !5981
  %pte = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !5982
  %0 = load i64, ptr %val.addr, align 8, !dbg !5983
  store i64 %0, ptr %pte, align 8, !dbg !5982
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !5984
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !5984
  ret i64 %1, !dbg !5984
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_set_pte(ptr noundef %ptep, i64 %pte.coerce) #3 align 16 !dbg !5985 {
entry:
  %pte = alloca %struct.pte_t, align 8
  %ptep.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  store ptr %ptep, ptr %ptep.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptep.addr, metadata !5989, metadata !DIExpression()), !dbg !5991
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !5990, metadata !DIExpression()), !dbg !5992
  br label %do.body, !dbg !5993

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5994

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5996

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5994

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %ptep.addr, align 8, !dbg !5998
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %pte, i64 8, i1 true), !dbg !5998
  br label %do.end3, !dbg !5998

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5994

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !6000
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6001 dso_local void @mutex_unlock(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pgd_none(i64 %pgd.coerce) #3 align 16 !dbg !6002 {
entry:
  %retval = alloca i32, align 4
  %pgd = alloca %struct.pgd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !6006, metadata !DIExpression()), !dbg !6007
  br i1 false, label %cond.true, label %cond.false, !dbg !6008

cond.true:                                        ; preds = %entry
  br i1 false, label %if.end, label %if.then, !dbg !6009

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false4, !dbg !6008

cond.true1:                                       ; preds = %cond.false
  br i1 false, label %cond.true2, label %cond.false3, !dbg !6009

cond.true2:                                       ; preds = %cond.true1
  br i1 true, label %if.end, label %if.then, !dbg !6009

cond.false3:                                      ; preds = %cond.true1
  %call = call zeroext i1 @arch_test_bit(i64 noundef 528, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !6009
  br i1 %call, label %if.end, label %if.then, !dbg !6009

cond.false4:                                      ; preds = %cond.false
  %call5 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #13, !dbg !6009
  br i1 %call5, label %if.end, label %if.then, !dbg !6008

if.then:                                          ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  store i32 0, ptr %retval, align 4, !dbg !6011
  br label %return, !dbg !6011

if.end:                                           ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  %coerce.dive6 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !6012
  %0 = load i64, ptr %coerce.dive6, align 8, !dbg !6012
  %call7 = call i64 @native_pgd_val(i64 %0) #13, !dbg !6012
  %tobool = icmp ne i64 %call7, 0, !dbg !6013
  %lnot = xor i1 %tobool, true, !dbg !6013
  %lnot.ext = zext i1 %lnot to i32, !dbg !6013
  store i32 %lnot.ext, ptr %retval, align 4, !dbg !6014
  br label %return, !dbg !6014

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, ptr %retval, align 4, !dbg !6015
  ret i32 %1, !dbg !6015
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6016 dso_local i32 @__p4d_alloc(ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @p4d_offset(ptr noundef %pgd, i64 noundef %address) #3 align 16 !dbg !6019 {
entry:
  %retval = alloca ptr, align 8
  %pgd.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  store ptr %pgd, ptr %pgd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd.addr, metadata !6023, metadata !DIExpression()), !dbg !6025
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !6024, metadata !DIExpression()), !dbg !6026
  br i1 false, label %cond.true, label %cond.false, !dbg !6027

cond.true:                                        ; preds = %entry
  br i1 false, label %if.end, label %if.then, !dbg !6028

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false4, !dbg !6027

cond.true1:                                       ; preds = %cond.false
  br i1 false, label %cond.true2, label %cond.false3, !dbg !6028

cond.true2:                                       ; preds = %cond.true1
  br i1 true, label %if.end, label %if.then, !dbg !6028

cond.false3:                                      ; preds = %cond.true1
  %call = call zeroext i1 @arch_test_bit(i64 noundef 528, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !6028
  br i1 %call, label %if.end, label %if.then, !dbg !6028

cond.false4:                                      ; preds = %cond.false
  %call5 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #13, !dbg !6028
  br i1 %call5, label %if.end, label %if.then, !dbg !6027

if.then:                                          ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  %0 = load ptr, ptr %pgd.addr, align 8, !dbg !6030
  store ptr %0, ptr %retval, align 8, !dbg !6031
  br label %return, !dbg !6031

if.end:                                           ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  %1 = load ptr, ptr %pgd.addr, align 8, !dbg !6032
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %1, i32 0, i32 0, !dbg !6033
  %2 = load i64, ptr %coerce.dive, align 8, !dbg !6033
  %call6 = call i64 @pgd_page_vaddr(i64 %2) #13, !dbg !6033
  %3 = inttoptr i64 %call6 to ptr, !dbg !6034
  %4 = load i64, ptr %address.addr, align 8, !dbg !6035
  %call7 = call i64 @p4d_index(i64 noundef %4) #13, !dbg !6036
  %add.ptr = getelementptr %struct.p4d_t, ptr %3, i64 %call7, !dbg !6037
  store ptr %add.ptr, ptr %retval, align 8, !dbg !6038
  br label %return, !dbg !6038

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !6039
  ret ptr %5, !dbg !6039
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !6040 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6048, metadata !DIExpression()), !dbg !6050
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6049, metadata !DIExpression()), !dbg !6051
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6052
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6053
  br i1 %1, label %cond.true, label %cond.false, !dbg !6053

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6054
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6055
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !6056
  %conv = zext i1 %call to i32, !dbg !6056
  br label %cond.end, !dbg !6053

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6057
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6058
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #13, !dbg !6059
  %conv2 = zext i1 %call1 to i32, !dbg !6059
  br label %cond.end, !dbg !6053

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6053
  %tobool = icmp ne i32 %cond, 0, !dbg !6053
  ret i1 %tobool, !dbg !6060
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_static_cpu_has(i16 noundef zeroext %bit) #8 align 16 !dbg !6061 {
entry:
  %retval = alloca i1, align 1
  %bit.addr = alloca i16, align 2
  store i16 %bit, ptr %bit.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !6066, metadata !DIExpression()), !dbg !6069
  %0 = load i16, ptr %bit.addr, align 2, !dbg !6070
  %1 = load i16, ptr %bit.addr, align 2, !dbg !6071
  %conv = zext i16 %1 to i32, !dbg !6071
  %and = and i32 %conv, 7, !dbg !6072
  %shl = shl i32 1, %and, !dbg !6073
  %2 = load i16, ptr %bit.addr, align 2, !dbg !6074
  %conv1 = zext i16 %2 to i32, !dbg !6074
  %shr = ashr i32 %conv1, 3, !dbg !6075
  %idxprom = sext i32 %shr to i64, !dbg !6076
  %arrayidx = getelementptr i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10), i64 %idxprom, !dbg !6076
  callbr void asm sideeffect "# ALT: oldinstr2\0A661:\0A\09jmp 6f\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+21)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ${0:c}\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09jmp ${4:l}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09\0A6652:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A testb $1,${2:P} (% rip)\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %shl, ptr %arrayidx) #12
          to label %asm.fallthrough [label %t_yes, label %t_no], !dbg !6077, !srcloc !6078

asm.fallthrough:                                  ; preds = %entry
  br label %t_yes, !dbg !6077

t_yes:                                            ; preds = %asm.fallthrough, %entry
  call void @llvm.dbg.label(metadata !6067), !dbg !6079
  store i1 true, ptr %retval, align 1, !dbg !6080
  br label %return, !dbg !6080

t_no:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !6068), !dbg !6081
  store i1 false, ptr %retval, align 1, !dbg !6082
  br label %return, !dbg !6082

return:                                           ; preds = %t_no, %t_yes
  %3 = load i1, ptr %retval, align 1, !dbg !6083
  ret i1 %3, !dbg !6083
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_pgd_val(i64 %pgd.coerce) #3 align 16 !dbg !6084 {
entry:
  %pgd = alloca %struct.pgd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !6088, metadata !DIExpression()), !dbg !6089
  %pgd1 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !6090
  %0 = load i64, ptr %pgd1, align 8, !dbg !6090
  %and = and i64 %0, -1, !dbg !6091
  ret i64 %and, !dbg !6092
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !6093 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6097, metadata !DIExpression()), !dbg !6099
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6098, metadata !DIExpression()), !dbg !6100
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6101
  %and = and i64 %0, 63, !dbg !6102
  %shl = shl i64 1, %and, !dbg !6103
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6104
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6105
  %shr = ashr i64 %2, 6, !dbg !6106
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6104
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6104
  %and1 = and i64 %shl, %3, !dbg !6107
  %cmp = icmp ne i64 %and1, 0, !dbg !6108
  ret i1 %cmp, !dbg !6109
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !6110 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6112, metadata !DIExpression()), !dbg !6115
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6113, metadata !DIExpression()), !dbg !6116
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #12, !dbg !6117
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6114, metadata !DIExpression()), !dbg !6118
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6119
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6120
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #12, !dbg !6121, !srcloc !6122
  %3 = icmp ult i8 %2, 2, !dbg !6121
  call void @llvm.assume(i1 %3), !dbg !6121
  store i8 %2, ptr %oldbit, align 1, !dbg !6121
  %4 = load i8, ptr %oldbit, align 1, !dbg !6123, !range !6124, !noundef !1022
  %tobool = trunc i8 %4 to i1, !dbg !6123
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #12, !dbg !6125
  ret i1 %tobool, !dbg !6126
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pgd_page_vaddr(i64 %pgd.coerce) #3 align 16 !dbg !6127 {
entry:
  %pgd = alloca %struct.pgd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !6131, metadata !DIExpression()), !dbg !6132
  %coerce.dive1 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !6133
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6133
  %call = call i64 @native_pgd_val(i64 %0) #13, !dbg !6133
  %and = and i64 %call, 4503599627366400, !dbg !6133
  %1 = load i64, ptr @page_offset_base, align 8, !dbg !6133
  %add = add i64 %and, %1, !dbg !6133
  %2 = inttoptr i64 %add to ptr, !dbg !6133
  %3 = ptrtoint ptr %2 to i64, !dbg !6134
  ret i64 %3, !dbg !6135
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @p4d_index(i64 noundef %address) #3 align 16 !dbg !6136 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !6138, metadata !DIExpression()), !dbg !6139
  %0 = load i64, ptr %address.addr, align 8, !dbg !6140
  %shr = lshr i64 %0, 39, !dbg !6141
  %1 = load i32, ptr @ptrs_per_p4d, align 4, !dbg !6142
  %sub = sub i32 %1, 1, !dbg !6143
  %conv = zext i32 %sub to i64, !dbg !6144
  %and = and i64 %shr, %conv, !dbg !6145
  ret i64 %and, !dbg !6146
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @paravirt_alloc_pud(ptr noundef %mm, i64 noundef %pfn) #3 align 16 !dbg !6147 {
entry:
  %mm.addr = alloca ptr, align 8
  %pfn.addr = alloca i64, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6149, metadata !DIExpression()), !dbg !6151
  store i64 %pfn, ptr %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn.addr, metadata !6150, metadata !DIExpression()), !dbg !6152
  ret void, !dbg !6153
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_set_p4d(ptr noundef %p4dp, i64 %p4d.coerce) #3 align 16 !dbg !6154 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %p4dp.addr = alloca ptr, align 8
  %pgd = alloca %struct.pgd_t, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca %struct.pgd_t, align 8
  %tmp16 = alloca %struct.pgd_t, align 8
  %tmp25 = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  store ptr %p4dp, ptr %p4dp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p4dp.addr, metadata !6158, metadata !DIExpression()), !dbg !6161
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !6159, metadata !DIExpression()), !dbg !6162
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgd) #12, !dbg !6163
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !6160, metadata !DIExpression()), !dbg !6164
  br i1 false, label %cond.true, label %cond.false, !dbg !6165

cond.true:                                        ; preds = %entry
  br i1 false, label %if.then, label %if.end, !dbg !6166

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false4, !dbg !6165

cond.true1:                                       ; preds = %cond.false
  br i1 false, label %cond.true2, label %cond.false3, !dbg !6166

cond.true2:                                       ; preds = %cond.true1
  br i1 true, label %if.then, label %if.end, !dbg !6166

cond.false3:                                      ; preds = %cond.true1
  %call = call zeroext i1 @arch_test_bit(i64 noundef 528, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !6166
  br i1 %call, label %if.then, label %if.end, !dbg !6166

cond.false4:                                      ; preds = %cond.false
  %call5 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #13, !dbg !6166
  br i1 %call5, label %if.then, label %if.end, !dbg !6165

if.then:                                          ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  br label %do.body, !dbg !6168

do.body:                                          ; preds = %if.then
  br label %do.body6, !dbg !6170

do.body6:                                         ; preds = %do.body
  br label %do.cond, !dbg !6172

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !6172

do.end:                                           ; preds = %do.cond
  br label %do.body7, !dbg !6170

do.body7:                                         ; preds = %do.end
  %0 = load ptr, ptr %p4dp.addr, align 8, !dbg !6174
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %p4d, i64 8, i1 true), !dbg !6174
  br label %do.cond8, !dbg !6174

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !6174

do.end9:                                          ; preds = %do.cond8
  br label %do.cond10, !dbg !6170

do.cond10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !6170

do.end11:                                         ; preds = %do.cond10
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6176

if.end:                                           ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #12, !dbg !6177
  %coerce.dive12 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !6178
  %1 = load i64, ptr %coerce.dive12, align 8, !dbg !6178
  %call13 = call i64 @native_p4d_val(i64 %1) #13, !dbg !6178
  %call14 = call i64 @native_make_pgd(i64 noundef %call13) #13, !dbg !6177
  %coerce.dive15 = getelementptr inbounds %struct.pgd_t, ptr %tmp, i32 0, i32 0, !dbg !6177
  store i64 %call14, ptr %coerce.dive15, align 8, !dbg !6177
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pgd, ptr align 8 %tmp, i64 8, i1 false), !dbg !6177
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #12, !dbg !6177
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp16) #12, !dbg !6179
  %2 = load ptr, ptr %p4dp.addr, align 8, !dbg !6180
  %coerce.dive17 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !6179
  %3 = load i64, ptr %coerce.dive17, align 8, !dbg !6179
  %call18 = call i64 @pti_set_user_pgtbl(ptr noundef %2, i64 %3) #13, !dbg !6179
  %coerce.dive19 = getelementptr inbounds %struct.pgd_t, ptr %tmp16, i32 0, i32 0, !dbg !6179
  store i64 %call18, ptr %coerce.dive19, align 8, !dbg !6179
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pgd, ptr align 8 %tmp16, i64 8, i1 false), !dbg !6179
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp16) #12, !dbg !6179
  br label %do.body20, !dbg !6181

do.body20:                                        ; preds = %if.end
  br label %do.body21, !dbg !6182

do.body21:                                        ; preds = %do.body20
  br label %do.cond22, !dbg !6184

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !6184

do.end23:                                         ; preds = %do.cond22
  br label %do.body24, !dbg !6182

do.body24:                                        ; preds = %do.end23
  %4 = load ptr, ptr %p4dp.addr, align 8, !dbg !6186
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp25) #12, !dbg !6186
  %coerce.dive26 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !6186
  %5 = load i64, ptr %coerce.dive26, align 8, !dbg !6186
  %call27 = call i64 @native_pgd_val(i64 %5) #13, !dbg !6186
  %call28 = call i64 @native_make_p4d(i64 noundef %call27) #13, !dbg !6186
  %coerce.dive29 = getelementptr inbounds %struct.p4d_t, ptr %tmp25, i32 0, i32 0, !dbg !6186
  store volatile i64 %call28, ptr %coerce.dive29, align 8, !dbg !6186
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %4, ptr align 8 %tmp25, i64 8, i1 true), !dbg !6186
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp25) #12, !dbg !6186
  br label %do.cond30, !dbg !6186

do.cond30:                                        ; preds = %do.body24
  br label %do.end31, !dbg !6186

do.end31:                                         ; preds = %do.cond30
  br label %do.cond32, !dbg !6182

do.cond32:                                        ; preds = %do.end31
  br label %do.end33, !dbg !6182

do.end33:                                         ; preds = %do.cond32
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6188
  br label %cleanup, !dbg !6188

cleanup:                                          ; preds = %do.end33, %do.end11
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgd) #12, !dbg !6188
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6188

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_make_p4d(i64 noundef %val) #3 align 16 !dbg !6189 {
entry:
  %retval = alloca %struct.p4d_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6193, metadata !DIExpression()), !dbg !6194
  %p4d = getelementptr inbounds %struct.p4d_t, ptr %retval, i32 0, i32 0, !dbg !6195
  %0 = load i64, ptr %val.addr, align 8, !dbg !6196
  store i64 %0, ptr %p4d, align 8, !dbg !6195
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %retval, i32 0, i32 0, !dbg !6197
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !6197
  ret i64 %1, !dbg !6197
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_make_pgd(i64 noundef %val) #3 align 16 !dbg !6198 {
entry:
  %retval = alloca %struct.pgd_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6202, metadata !DIExpression()), !dbg !6203
  %pgd = getelementptr inbounds %struct.pgd_t, ptr %retval, i32 0, i32 0, !dbg !6204
  %0 = load i64, ptr %val.addr, align 8, !dbg !6205
  %and = and i64 %0, -1, !dbg !6206
  store i64 %and, ptr %pgd, align 8, !dbg !6204
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %retval, i32 0, i32 0, !dbg !6207
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !6207
  ret i64 %1, !dbg !6207
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_p4d_val(i64 %p4d.coerce) #3 align 16 !dbg !6208 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !6212, metadata !DIExpression()), !dbg !6213
  %p4d1 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !6214
  %0 = load i64, ptr %p4d1, align 8, !dbg !6214
  ret i64 %0, !dbg !6215
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pti_set_user_pgtbl(ptr noundef %pgdp, i64 %pgd.coerce) #3 align 16 !dbg !6216 {
entry:
  %retval = alloca %struct.pgd_t, align 8
  %pgd = alloca %struct.pgd_t, align 8
  %pgdp.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  store ptr %pgdp, ptr %pgdp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgdp.addr, metadata !6220, metadata !DIExpression()), !dbg !6222
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !6221, metadata !DIExpression()), !dbg !6223
  br i1 false, label %cond.true, label %cond.false2, !dbg !6224

cond.true:                                        ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false, !dbg !6225

cond.true1:                                       ; preds = %cond.true
  br i1 true, label %if.end, label %if.then, !dbg !6225

cond.false:                                       ; preds = %cond.true
  %call = call zeroext i1 @arch_test_bit(i64 noundef 235, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !6225
  br i1 %call, label %if.end, label %if.then, !dbg !6225

cond.false2:                                      ; preds = %entry
  %call3 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 235) #13, !dbg !6225
  br i1 %call3, label %if.end, label %if.then, !dbg !6224

if.then:                                          ; preds = %cond.false2, %cond.false, %cond.true1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %pgd, i64 8, i1 false), !dbg !6227
  br label %return, !dbg !6228

if.end:                                           ; preds = %cond.false2, %cond.false, %cond.true1
  %0 = load ptr, ptr %pgdp.addr, align 8, !dbg !6229
  %coerce.dive4 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !6230
  %1 = load i64, ptr %coerce.dive4, align 8, !dbg !6230
  %call5 = call i64 @__pti_set_user_pgtbl(ptr noundef %0, i64 %1) #13, !dbg !6230
  %coerce.dive6 = getelementptr inbounds %struct.pgd_t, ptr %retval, i32 0, i32 0, !dbg !6230
  store i64 %call5, ptr %coerce.dive6, align 8, !dbg !6230
  br label %return, !dbg !6231

return:                                           ; preds = %if.end, %if.then
  %coerce.dive7 = getelementptr inbounds %struct.pgd_t, ptr %retval, i32 0, i32 0, !dbg !6232
  %2 = load i64, ptr %coerce.dive7, align 8, !dbg !6232
  ret i64 %2, !dbg !6232
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6233 dso_local i64 @__pti_set_user_pgtbl(ptr noundef, i64) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @get_random_long() #3 align 16 !dbg !6234 {
entry:
  %call = call i64 @get_random_u64() #13, !dbg !6238
  ret i64 %call, !dbg !6239
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6240 dso_local i64 @get_random_u64() #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pud_flags(i64 %pud.coerce) #3 align 16 !dbg !6243 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !6247, metadata !DIExpression()), !dbg !6248
  %coerce.dive1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !6249
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6249
  %call = call i64 @native_pud_val(i64 %0) #13, !dbg !6249
  %coerce.dive2 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !6250
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !6250
  %call3 = call i64 @pud_flags_mask(i64 %1) #13, !dbg !6250
  %and = and i64 %call, %call3, !dbg !6251
  ret i64 %and, !dbg !6252
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_pud_val(i64 %pud.coerce) #3 align 16 !dbg !6253 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !6255, metadata !DIExpression()), !dbg !6256
  %pud1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !6257
  %0 = load i64, ptr %pud1, align 8, !dbg !6257
  ret i64 %0, !dbg !6258
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pud_flags_mask(i64 %pud.coerce) #3 align 16 !dbg !6259 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !6261, metadata !DIExpression()), !dbg !6262
  %coerce.dive1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !6263
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6263
  %call = call i64 @pud_pfn_mask(i64 %0) #13, !dbg !6263
  %not = xor i64 %call, -1, !dbg !6264
  ret i64 %not, !dbg !6265
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pud_pfn_mask(i64 %pud.coerce) #3 align 16 !dbg !6266 {
entry:
  %retval = alloca i64, align 8
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !6268, metadata !DIExpression()), !dbg !6269
  %coerce.dive1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !6270
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6270
  %call = call i64 @native_pud_val(i64 %0) #13, !dbg !6270
  %and = and i64 %call, 128, !dbg !6272
  %tobool = icmp ne i64 %and, 0, !dbg !6272
  br i1 %tobool, label %if.then, label %if.else, !dbg !6273

if.then:                                          ; preds = %entry
  store i64 4503598553628672, ptr %retval, align 8, !dbg !6274
  br label %return, !dbg !6274

if.else:                                          ; preds = %entry
  store i64 4503599627366400, ptr %retval, align 8, !dbg !6275
  br label %return, !dbg !6275

return:                                           ; preds = %if.else, %if.then
  %1 = load i64, ptr %retval, align 8, !dbg !6276
  ret i64 %1, !dbg !6276
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @numa_mem_id() #3 align 16 !dbg !6277 {
entry:
  %call = call i32 @numa_node_id() #13, !dbg !6278
  ret i32 %call, !dbg !6279
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__alloc_pages_node(i32 noundef %nid, i32 noundef %gfp_mask, i32 noundef %order) #3 align 16 !dbg !6280 {
entry:
  %nid.addr = alloca i32, align 4
  %gfp_mask.addr = alloca i32, align 4
  %order.addr = alloca i32, align 4
  store i32 %nid, ptr %nid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !6282, metadata !DIExpression()), !dbg !6285
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !6283, metadata !DIExpression()), !dbg !6286
  store i32 %order, ptr %order.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %order.addr, metadata !6284, metadata !DIExpression()), !dbg !6287
  %0 = load i32, ptr %nid.addr, align 4, !dbg !6288
  %1 = load i32, ptr %gfp_mask.addr, align 4, !dbg !6289
  call void @warn_if_node_offline(i32 noundef %0, i32 noundef %1) #13, !dbg !6290
  %2 = load i32, ptr %gfp_mask.addr, align 4, !dbg !6291
  %3 = load i32, ptr %order.addr, align 4, !dbg !6292
  %4 = load i32, ptr %nid.addr, align 4, !dbg !6293
  %call = call ptr @__alloc_pages(i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef null) #13, !dbg !6294
  ret ptr %call, !dbg !6295
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @numa_node_id() #3 align 16 !dbg !6296 {
entry:
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #12, !dbg !6304
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6298, metadata !DIExpression()), !dbg !6304
  br label %do.body, !dbg !6304

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6305
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6300, metadata !DIExpression()), !dbg !6305
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6305
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6305
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6304
  br label %do.cond, !dbg !6305

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6305

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #12, !dbg !6306
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6302, metadata !DIExpression()), !dbg !6306
  %1 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @numa_node) #14, !dbg !6306, !srcloc !6307
  store i32 %1, ptr %pfo_val__, align 4, !dbg !6306
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !6306
  %conv = zext i32 %2 to i64, !dbg !6306
  %conv1 = trunc i64 %conv to i32, !dbg !6306
  store i32 %conv1, ptr %tmp, align 4, !dbg !6306
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #12, !dbg !6304
  %3 = load i32, ptr %tmp, align 4, !dbg !6306
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !6304
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !6304
  store i32 %4, ptr %tmp2, align 4, !dbg !6304
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #12, !dbg !6308
  %5 = load i32, ptr %tmp2, align 4, !dbg !6304
  ret i32 %5, !dbg !6309
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @warn_if_node_offline(i32 noundef %this_node, i32 noundef %gfp_mask) #3 align 16 !dbg !6310 {
entry:
  %this_node.addr = alloca i32, align 4
  %gfp_mask.addr = alloca i32, align 4
  %warn_gfp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %this_node, ptr %this_node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %this_node.addr, metadata !6314, metadata !DIExpression()), !dbg !6317
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !6315, metadata !DIExpression()), !dbg !6318
  call void @llvm.lifetime.start.p0(i64 4, ptr %warn_gfp) #12, !dbg !6319
  call void @llvm.dbg.declare(metadata ptr %warn_gfp, metadata !6316, metadata !DIExpression()), !dbg !6320
  %0 = load i32, ptr %gfp_mask.addr, align 4, !dbg !6321
  %and = and i32 %0, 2105344, !dbg !6322
  store i32 %and, ptr %warn_gfp, align 4, !dbg !6320
  %1 = load i32, ptr %warn_gfp, align 4, !dbg !6323
  %cmp = icmp ne i32 %1, 2105344, !dbg !6325
  br i1 %cmp, label %if.then, label %if.end, !dbg !6326

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6327

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %this_node.addr, align 4, !dbg !6328
  %call = call i32 @node_state(i32 noundef %2, i32 noundef 1) #13, !dbg !6328
  %tobool = icmp ne i32 %call, 0, !dbg !6328
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !6330

if.then1:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6331

if.end2:                                          ; preds = %if.end
  br label %do.body, !dbg !6332

do.body:                                          ; preds = %if.end2
  br label %do.cond, !dbg !6334

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6334

do.end:                                           ; preds = %do.cond
  %3 = load i32, ptr %this_node.addr, align 4, !dbg !6332
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef @.str, ptr noundef %gfp_mask.addr, i32 noundef %3) #15, !dbg !6332
  store i32 %call3, ptr %tmp, align 4, !dbg !6334
  %4 = load i32, ptr %tmp, align 4, !dbg !6332
  call void @dump_stack() #15, !dbg !6336
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6337
  br label %cleanup, !dbg !6337

cleanup:                                          ; preds = %do.end, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %warn_gfp) #12, !dbg !6337
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6337

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6338 dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @node_state(i32 noundef %node, i32 noundef %state) #3 align 16 !dbg !6342 {
entry:
  %node.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !6346, metadata !DIExpression()), !dbg !6348
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !6347, metadata !DIExpression()), !dbg !6349
  %0 = load i32, ptr %node.addr, align 4, !dbg !6350
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6350
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !6350

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %state.addr, align 4, !dbg !6350
  %idxprom = zext i32 %2 to i64, !dbg !6350
  %arrayidx = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom, !dbg !6350
  %bits = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx, i32 0, i32 0, !dbg !6350
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !6350
  %3 = ptrtoint ptr %arraydecay to i64, !dbg !6350
  %cmp = icmp ne i64 %3, 0, !dbg !6350
  %conv = zext i1 %cmp to i32, !dbg !6350
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !6350
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !6350

land.lhs.true1:                                   ; preds = %land.lhs.true
  %5 = load i32, ptr %state.addr, align 4, !dbg !6350
  %idxprom2 = zext i32 %5 to i64, !dbg !6350
  %arrayidx3 = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom2, !dbg !6350
  %bits4 = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx3, i32 0, i32 0, !dbg !6350
  %arraydecay5 = getelementptr inbounds [1 x i64], ptr %bits4, i64 0, i64 0, !dbg !6350
  %6 = ptrtoint ptr %arraydecay5 to i64, !dbg !6350
  %cmp6 = icmp ne i64 %6, 0, !dbg !6350
  br i1 %cmp6, label %land.lhs.true8, label %cond.false, !dbg !6350

land.lhs.true8:                                   ; preds = %land.lhs.true1
  %7 = load i32, ptr %state.addr, align 4, !dbg !6350
  %idxprom9 = zext i32 %7 to i64, !dbg !6350
  %arrayidx10 = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom9, !dbg !6350
  %bits11 = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx10, i32 0, i32 0, !dbg !6350
  %arraydecay12 = getelementptr inbounds [1 x i64], ptr %bits11, i64 0, i64 0, !dbg !6350
  %8 = load i64, ptr %arraydecay12, align 8, !dbg !6350
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !6350
  br i1 %9, label %cond.true, label %cond.false, !dbg !6350

cond.true:                                        ; preds = %land.lhs.true8
  %10 = load i32, ptr %node.addr, align 4, !dbg !6350
  %conv13 = sext i32 %10 to i64, !dbg !6350
  %11 = load i32, ptr %state.addr, align 4, !dbg !6350
  %idxprom14 = zext i32 %11 to i64, !dbg !6350
  %arrayidx15 = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom14, !dbg !6350
  %bits16 = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx15, i32 0, i32 0, !dbg !6350
  %arraydecay17 = getelementptr inbounds [1 x i64], ptr %bits16, i64 0, i64 0, !dbg !6350
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv13, ptr noundef %arraydecay17) #13, !dbg !6350
  %conv18 = zext i1 %call to i32, !dbg !6350
  br label %cond.end, !dbg !6350

cond.false:                                       ; preds = %land.lhs.true8, %land.lhs.true1, %land.lhs.true, %entry
  %12 = load i32, ptr %node.addr, align 4, !dbg !6350
  %conv19 = sext i32 %12 to i64, !dbg !6350
  %13 = load i32, ptr %state.addr, align 4, !dbg !6350
  %idxprom20 = zext i32 %13 to i64, !dbg !6350
  %arrayidx21 = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom20, !dbg !6350
  %bits22 = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx21, i32 0, i32 0, !dbg !6350
  %arraydecay23 = getelementptr inbounds [1 x i64], ptr %bits22, i64 0, i64 0, !dbg !6350
  %call24 = call zeroext i1 @_test_bit(i64 noundef %conv19, ptr noundef %arraydecay23) #13, !dbg !6350
  %conv25 = zext i1 %call24 to i32, !dbg !6350
  br label %cond.end, !dbg !6350

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv18, %cond.true ], [ %conv25, %cond.false ], !dbg !6350
  ret i32 %cond, !dbg !6351
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6352 dso_local i32 @_printk(ptr noundef, ...) #11

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6356 dso_local void @dump_stack() #11

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !6357 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6360, metadata !DIExpression()), !dbg !6365
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6361, metadata !DIExpression()), !dbg !6366
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12, !dbg !6367
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6362, metadata !DIExpression()), !dbg !6368
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6369
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6370
  %div = udiv i64 %1, 64, !dbg !6370
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6371
  store ptr %add.ptr, ptr %p, align 8, !dbg !6368
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #12, !dbg !6372
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6363, metadata !DIExpression()), !dbg !6373
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6374
  %rem = urem i64 %2, 64, !dbg !6374
  %shl = shl i64 1, %rem, !dbg !6374
  store i64 %shl, ptr %mask, align 8, !dbg !6373
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #12, !dbg !6375
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6364, metadata !DIExpression()), !dbg !6376
  %3 = load ptr, ptr %p, align 8, !dbg !6377
  %4 = load i64, ptr %3, align 8, !dbg !6378
  store i64 %4, ptr %val, align 8, !dbg !6376
  %5 = load i64, ptr %val, align 8, !dbg !6379
  %6 = load i64, ptr %mask, align 8, !dbg !6380
  %and = and i64 %5, %6, !dbg !6381
  %tobool = icmp ne i64 %and, 0, !dbg !6382
  %lnot = xor i1 %tobool, true, !dbg !6382
  %lnot1 = xor i1 %lnot, true, !dbg !6383
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #12, !dbg !6384
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #12, !dbg !6384
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12, !dbg !6384
  ret i1 %lnot1, !dbg !6385
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !6386 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6389, metadata !DIExpression()), !dbg !6391
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6390, metadata !DIExpression()), !dbg !6392
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6393
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6394
  %div = udiv i64 %1, 64, !dbg !6394
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6395
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #13, !dbg !6396
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6397
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6398
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !6399
  ret i1 %call, !dbg !6400
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #8 align 16 !dbg !6401 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6409, metadata !DIExpression()), !dbg !6411
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6410, metadata !DIExpression()), !dbg !6412
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6413
  %1 = load i64, ptr %size.addr, align 8, !dbg !6414
  %conv = trunc i64 %1 to i32, !dbg !6414
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #13, !dbg !6415
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6416
  %3 = load i64, ptr %size.addr, align 8, !dbg !6416
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #13, !dbg !6416
  ret void, !dbg !6417
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !6418 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6423, metadata !DIExpression()), !dbg !6425
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6424, metadata !DIExpression()), !dbg !6426
  ret i1 true, !dbg !6427
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !6428 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6433, metadata !DIExpression()), !dbg !6436
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6434, metadata !DIExpression()), !dbg !6437
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6435, metadata !DIExpression()), !dbg !6438
  ret void, !dbg !6439
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pud_pgtable(i64 %pud.coerce) #3 align 16 !dbg !6440 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !6444, metadata !DIExpression()), !dbg !6445
  %coerce.dive1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !6446
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6446
  %call = call i64 @native_pud_val(i64 %0) #13, !dbg !6446
  %coerce.dive2 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !6446
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !6446
  %call3 = call i64 @pud_pfn_mask(i64 %1) #13, !dbg !6446
  %and = and i64 %call, %call3, !dbg !6446
  %2 = load i64, ptr @page_offset_base, align 8, !dbg !6446
  %add = add i64 %and, %2, !dbg !6446
  %3 = inttoptr i64 %add to ptr, !dbg !6446
  ret ptr %3, !dbg !6447
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmd_index(i64 noundef %address) #3 align 16 !dbg !6448 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !6450, metadata !DIExpression()), !dbg !6451
  %0 = load i64, ptr %address.addr, align 8, !dbg !6452
  %shr = lshr i64 %0, 21, !dbg !6453
  %and = and i64 %shr, 511, !dbg !6454
  ret i64 %and, !dbg !6455
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmd_flags(i64 %pmd.coerce) #3 align 16 !dbg !6456 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !6460, metadata !DIExpression()), !dbg !6461
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !6462
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6462
  %call = call i64 @native_pmd_val(i64 %0) #13, !dbg !6462
  %coerce.dive2 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !6463
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !6463
  %call3 = call i64 @pmd_flags_mask(i64 %1) #13, !dbg !6463
  %and = and i64 %call, %call3, !dbg !6464
  ret i64 %and, !dbg !6465
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_pmd_val(i64 %pmd.coerce) #3 align 16 !dbg !6466 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !6468, metadata !DIExpression()), !dbg !6469
  %pmd1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !6470
  %0 = load i64, ptr %pmd1, align 8, !dbg !6470
  ret i64 %0, !dbg !6471
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmd_flags_mask(i64 %pmd.coerce) #3 align 16 !dbg !6472 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !6474, metadata !DIExpression()), !dbg !6475
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !6476
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6476
  %call = call i64 @pmd_pfn_mask(i64 %0) #13, !dbg !6476
  %not = xor i64 %call, -1, !dbg !6477
  ret i64 %not, !dbg !6478
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmd_pfn_mask(i64 %pmd.coerce) #3 align 16 !dbg !6479 {
entry:
  %retval = alloca i64, align 8
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !6481, metadata !DIExpression()), !dbg !6482
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !6483
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6483
  %call = call i64 @native_pmd_val(i64 %0) #13, !dbg !6483
  %and = and i64 %call, 128, !dbg !6485
  %tobool = icmp ne i64 %and, 0, !dbg !6485
  br i1 %tobool, label %if.then, label %if.else, !dbg !6486

if.then:                                          ; preds = %entry
  store i64 4503599625273344, ptr %retval, align 8, !dbg !6487
  br label %return, !dbg !6487

if.else:                                          ; preds = %entry
  store i64 4503599627366400, ptr %retval, align 8, !dbg !6488
  br label %return, !dbg !6488

return:                                           ; preds = %if.else, %if.then
  %1 = load i64, ptr %retval, align 8, !dbg !6489
  ret i64 %1, !dbg !6489
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmd_page_vaddr(i64 %pmd.coerce) #3 align 16 !dbg !6490 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !6494, metadata !DIExpression()), !dbg !6495
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !6496
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6496
  %call = call i64 @native_pmd_val(i64 %0) #13, !dbg !6496
  %coerce.dive2 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !6496
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !6496
  %call3 = call i64 @pmd_pfn_mask(i64 %1) #13, !dbg !6496
  %and = and i64 %call, %call3, !dbg !6496
  %2 = load i64, ptr @page_offset_base, align 8, !dbg !6496
  %add = add i64 %and, %2, !dbg !6496
  %3 = inttoptr i64 %add to ptr, !dbg !6496
  %4 = ptrtoint ptr %3 to i64, !dbg !6497
  ret i64 %4, !dbg !6498
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pte_index(i64 noundef %address) #3 align 16 !dbg !6499 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !6501, metadata !DIExpression()), !dbg !6502
  %0 = load i64, ptr %address.addr, align 8, !dbg !6503
  %shr = lshr i64 %0, 12, !dbg !6504
  %and = and i64 %shr, 511, !dbg !6505
  ret i64 %and, !dbg !6506
}

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { noredzone }
attributes #14 = { nounwind memory(read) }
attributes #15 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5449, !5450, !5451, !5452, !5453, !5454, !5455, !5456}
!llvm.ident = !{!5457}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "espfix_pud_page", scope: !2, file: !3, line: 65, type: !5448, isLocal: true, isDefinition: true, align: 32768)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.espfix_64.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/espfix_64\22 -D KBUILD_BASENAME=\22espfix_64\22 -D KBUILD_MODNAME=\22espfix_64\22 -D __KBUILD_MODNAME=kmod_espfix_64 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/espfix_64.ll arch/x86/kernel/espfix_64.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !199, globals: !5428, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/espfix_64.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5142424821b304a71fa23a5d3ed9ca43")
!4 = !{!5, !13, !18, !114, !120, !127, !135, !151, !157, !162, !168, !175, !183, !188}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !14, line: 65, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!17 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !20, file: !19, line: 147, baseType: !7, size: 32, elements: !111)
!19 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !19, line: 135, size: 512, elements: !21)
!21 = !{!22, !26, !28, !30, !34, !35, !51, !109, !110}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !20, file: !19, line: 136, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!25 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !20, file: !19, line: 137, baseType: !27, size: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !20, file: !19, line: 138, baseType: !29, size: 32, offset: 128)
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !20, file: !19, line: 139, baseType: !31, size: 16, offset: 160)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !32, line: 24, baseType: !33)
!32 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!33 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !20, file: !19, line: 150, baseType: !18, size: 32, offset: 192)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !20, file: !19, line: 151, baseType: !36, size: 64, offset: 256)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !19, line: 64, baseType: !38)
!38 = !DISubroutineType(types: !39)
!39 = !{!29, !40, !29, !27, !41, !47}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !32, line: 61, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !44, line: 72, baseType: !45)
!44 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !44, line: 16, baseType: !46)
!46 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !32, line: 52, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !44, line: 88, baseType: !50)
!50 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !20, file: !19, line: 152, baseType: !52, size: 64, offset: 320)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !19, line: 117, size: 256, elements: !54)
!54 = !{!55, !60}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !53, file: !19, line: 118, baseType: !56, size: 32)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !32, line: 174, baseType: !57)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !32, line: 172, size: 32, elements: !58)
!58 = !{!59}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !57, file: !32, line: 173, baseType: !29, size: 32)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !53, file: !19, line: 119, baseType: !61, size: 192, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !62, line: 41, baseType: !63)
!62 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !62, line: 37, size: 192, elements: !64)
!64 = !{!65, !103}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !63, file: !62, line: 38, baseType: !66, size: 32)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !67, line: 29, baseType: !68)
!67 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !67, line: 17, size: 32, elements: !69)
!69 = !{!70}
!70 = !DIDerivedType(tag: DW_TAG_member, scope: !68, file: !67, line: 18, baseType: !71, size: 32)
!71 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !68, file: !67, line: 18, size: 32, elements: !72)
!72 = !{!73}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !71, file: !67, line: 19, baseType: !74, size: 32)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !75, line: 14, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!76 = !{!77}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !74, file: !75, line: 15, baseType: !78, size: 32)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !79, line: 44, baseType: !80)
!79 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !79, line: 14, size: 32, elements: !81)
!81 = !{!82}
!82 = !DIDerivedType(tag: DW_TAG_member, scope: !80, file: !79, line: 15, baseType: !83, size: 32)
!83 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !80, file: !79, line: 15, size: 32, elements: !84)
!84 = !{!85, !86, !96}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !83, file: !79, line: 16, baseType: !56, size: 32)
!86 = !DIDerivedType(tag: DW_TAG_member, scope: !83, file: !79, line: 24, baseType: !87, size: 16)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !83, file: !79, line: 24, size: 16, elements: !88)
!88 = !{!89, !95}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !87, file: !79, line: 25, baseType: !90, size: 8)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !91, line: 17, baseType: !92)
!91 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !93, line: 21, baseType: !94)
!93 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!94 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !87, file: !79, line: 26, baseType: !90, size: 8, offset: 8)
!96 = !DIDerivedType(tag: DW_TAG_member, scope: !83, file: !79, line: 28, baseType: !97, size: 32)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !83, file: !79, line: 28, size: 32, elements: !98)
!98 = !{!99, !102}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !97, file: !79, line: 29, baseType: !100, size: 16)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !91, line: 19, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !93, line: 24, baseType: !33)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !97, file: !79, line: 30, baseType: !100, size: 16, offset: 16)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !63, file: !62, line: 39, baseType: !104, size: 128, offset: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !32, line: 190, size: 128, elements: !105)
!105 = !{!106, !108}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !104, file: !32, line: 191, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !104, file: !32, line: 191, baseType: !107, size: 64, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !20, file: !19, line: 153, baseType: !27, size: 64, offset: 384)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !20, file: !19, line: 154, baseType: !27, size: 64, offset: 448)
!111 = !{!112, !113}
!112 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!113 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !115, line: 16, baseType: !7, size: 32, elements: !116)
!115 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!116 = !{!117, !118, !119}
!117 = !DIEnumerator(name: "TT_NONE", value: 0)
!118 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!119 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !121, line: 51, baseType: !7, size: 32, elements: !122)
!121 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!122 = !{!123, !124, !125, !126}
!123 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!124 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!125 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!126 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !128, line: 9, baseType: !7, size: 32, elements: !129)
!128 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!129 = !{!130, !131, !132, !133, !134}
!130 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!131 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!132 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!133 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!134 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !136, line: 1325, baseType: !7, size: 32, elements: !137)
!136 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!137 = !{!138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150}
!138 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!139 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!140 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!141 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!142 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!143 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!144 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!145 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!146 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!147 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!148 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!149 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!150 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !152, line: 26, baseType: !7, size: 32, elements: !153)
!152 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!153 = !{!154, !155, !156}
!154 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!155 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!156 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !158, line: 2052, baseType: !7, size: 32, elements: !159)
!158 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!159 = !{!160, !161}
!160 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!161 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!162 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !163, line: 54, baseType: !7, size: 32, elements: !164)
!163 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!164 = !{!165, !166, !167}
!165 = !DIEnumerator(name: "USRQUOTA", value: 0)
!166 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!167 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !169, line: 15, baseType: !7, size: 32, elements: !170)
!169 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!170 = !{!171, !172, !173, !174}
!171 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!172 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!173 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!174 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!175 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !176, line: 68, baseType: !7, size: 32, elements: !177)
!176 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!177 = !{!178, !179, !180, !181, !182}
!178 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!179 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!180 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!181 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!182 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !184, line: 10, baseType: !7, size: 32, elements: !185)
!184 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!185 = !{!186, !187}
!186 = !DIEnumerator(name: "false", value: 0)
!187 = !DIEnumerator(name: "true", value: 1)
!188 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "node_states", file: !189, line: 398, baseType: !7, size: 32, elements: !190)
!189 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!190 = !{!191, !192, !193, !194, !195, !196, !197, !198}
!191 = !DIEnumerator(name: "N_POSSIBLE", value: 0)
!192 = !DIEnumerator(name: "N_ONLINE", value: 1)
!193 = !DIEnumerator(name: "N_NORMAL_MEMORY", value: 2)
!194 = !DIEnumerator(name: "N_HIGH_MEMORY", value: 2)
!195 = !DIEnumerator(name: "N_MEMORY", value: 3)
!196 = !DIEnumerator(name: "N_CPU", value: 4)
!197 = !DIEnumerator(name: "N_GENERIC_INITIATOR", value: 5)
!198 = !DIEnumerator(name: "NR_NODE_STATES", value: 6)
!199 = !{!200, !27, !46, !201, !204, !205, !212, !213, !218, !29, !23, !219, !226, !227, !231, !233, !239, !240, !241, !243, !5422, !5424, !5426}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !27)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !32, line: 154, baseType: !7)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !207, line: 22, baseType: !208)
!207 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !207, line: 22, size: 64, elements: !209)
!209 = !{!210}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !208, file: !207, line: 22, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !207, line: 15, baseType: !46)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !207, line: 14, baseType: !46)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !207, line: 21, baseType: !215)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !207, line: 21, size: 64, elements: !216)
!216 = !{!217}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !215, file: !207, line: 21, baseType: !212, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "p4d_t", file: !221, line: 346, baseType: !222)
!221 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !221, line: 346, size: 64, elements: !223)
!223 = !{!224}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "p4d", scope: !222, file: !221, line: 346, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "p4dval_t", file: !207, line: 17, baseType: !46)
!226 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !32, line: 159, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !91, line: 23, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !93, line: 31, baseType: !230)
!230 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !220)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !221, line: 299, baseType: !235)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !221, line: 299, size: 64, elements: !236)
!236 = !{!237}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !235, file: !221, line: 299, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !207, line: 18, baseType: !46)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !32, line: 42, baseType: !46)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !136, line: 74, size: 512, align: 128, elements: !245)
!245 = !{!246, !247, !5416, !5421}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !244, file: !136, line: 75, baseType: !46, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, scope: !244, file: !136, line: 83, baseType: !248, size: 320, offset: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !244, file: !136, line: 83, size: 320, elements: !249)
!249 = !{!250, !5323, !5337, !5341, !5415}
!250 = !DIDerivedType(tag: DW_TAG_member, scope: !248, file: !136, line: 84, baseType: !251, size: 320)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !248, file: !136, line: 84, size: 320, elements: !252)
!252 = !{!253, !264, !5317, !5322}
!253 = !DIDerivedType(tag: DW_TAG_member, scope: !251, file: !136, line: 90, baseType: !254, size: 128)
!254 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !251, file: !136, line: 90, size: 128, elements: !255)
!255 = !{!256, !257, !262, !263}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !254, file: !136, line: 91, baseType: !104, size: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, scope: !254, file: !136, line: 94, baseType: !258, size: 128)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !254, file: !136, line: 94, size: 128, elements: !259)
!259 = !{!260, !261}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !258, file: !136, line: 96, baseType: !27, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !258, file: !136, line: 98, baseType: !7, size: 32, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !254, file: !136, line: 102, baseType: !104, size: 128)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !254, file: !136, line: 103, baseType: !104, size: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !251, file: !136, line: 106, baseType: !265, size: 64, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !158, line: 472, size: 1536, align: 64, elements: !267)
!267 = !{!268, !5208, !5209, !5210, !5211, !5212, !5213, !5214, !5215, !5311, !5312, !5313, !5314, !5315, !5316}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !266, file: !158, line: 473, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !158, line: 641, size: 4800, elements: !271)
!271 = !{!272, !273, !274, !282, !283, !290, !291, !294, !295, !5146, !5147, !5148, !5149, !5150, !5156, !5157, !5158, !5159, !5160, !5161, !5162, !5163, !5164, !5165, !5166, !5167, !5168, !5169, !5170, !5171, !5172, !5173, !5174, !5179, !5180, !5181, !5182, !5183, !5184, !5185, !5190, !5193, !5194, !5195, !5204, !5205, !5206, !5207}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !270, file: !158, line: 642, baseType: !31, size: 16)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !270, file: !158, line: 643, baseType: !33, size: 16, offset: 16)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !270, file: !158, line: 644, baseType: !275, size: 32, offset: 32)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !276, line: 23, baseType: !277)
!276 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !276, line: 21, size: 32, elements: !278)
!278 = !{!279}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !277, file: !276, line: 22, baseType: !280, size: 32)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !32, line: 37, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !44, line: 49, baseType: !7)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !270, file: !158, line: 645, baseType: !104, size: 128, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !270, file: !158, line: 646, baseType: !284, size: 32, offset: 192)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !276, line: 28, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !276, line: 26, size: 32, elements: !286)
!286 = !{!287}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !285, file: !276, line: 27, baseType: !288, size: 32)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !32, line: 38, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !44, line: 50, baseType: !7)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !270, file: !158, line: 647, baseType: !7, size: 32, offset: 224)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !270, file: !158, line: 650, baseType: !292, size: 64, offset: 256)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !158, line: 607, flags: DIFlagFwdDecl)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !270, file: !158, line: 651, baseType: !292, size: 64, offset: 320)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !270, file: !158, line: 654, baseType: !296, size: 64, offset: 384)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !298)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !158, line: 1966, size: 2048, align: 512, elements: !299)
!299 = !{!300, !4980, !4990, !4994, !4998, !5002, !5006, !5010, !5014, !5018, !5022, !5023, !5027, !5031, !5068, !5097, !5101, !5107, !5111, !5115, !5119, !5123, !5127, !5133, !5137}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !298, file: !158, line: 1967, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!304, !269, !304, !7}
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !306, line: 82, size: 1536, elements: !307)
!306 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!307 = !{!308, !309, !319, !327, !328, !345, !346, !350, !363, !4963, !4964, !4965, !4966, !4972, !4973, !4974}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !305, file: !306, line: 84, baseType: !7, size: 32)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !305, file: !306, line: 85, baseType: !310, size: 32, offset: 32)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !311, line: 275, baseType: !312)
!311 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !311, line: 275, size: 32, elements: !313)
!313 = !{!314}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !312, file: !311, line: 275, baseType: !315, size: 32)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !311, line: 69, baseType: !316)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !311, line: 64, size: 32, elements: !317)
!317 = !{!318}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !316, file: !311, line: 65, baseType: !7, size: 32)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !305, file: !306, line: 86, baseType: !320, size: 128, offset: 64)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !321, line: 38, size: 128, elements: !322)
!321 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!322 = !{!323, !325}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !320, file: !321, line: 39, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !320, file: !321, line: 39, baseType: !326, size: 64, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !305, file: !306, line: 87, baseType: !304, size: 64, offset: 192)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !305, file: !306, line: 88, baseType: !329, size: 128, offset: 256)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !306, line: 49, size: 128, elements: !330)
!330 = !{!331, !342}
!331 = !DIDerivedType(tag: DW_TAG_member, scope: !329, file: !306, line: 50, baseType: !332, size: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !329, file: !306, line: 50, size: 64, elements: !333)
!333 = !{!334, !341}
!334 = !DIDerivedType(tag: DW_TAG_member, scope: !332, file: !306, line: 51, baseType: !335, size: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !332, file: !306, line: 51, size: 64, elements: !336)
!336 = !{!337, !340}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !335, file: !306, line: 52, baseType: !338, size: 32)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !91, line: 21, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !93, line: 27, baseType: !7)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !335, file: !306, line: 52, baseType: !338, size: 32, offset: 32)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !332, file: !306, line: 54, baseType: !228, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !329, file: !306, line: 56, baseType: !343, size: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !305, file: !306, line: 89, baseType: !269, size: 64, offset: 384)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !305, file: !306, line: 91, baseType: !347, size: 256, offset: 448)
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 256, elements: !348)
!348 = !{!349}
!349 = !DISubrange(count: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !305, file: !306, line: 94, baseType: !351, size: 64, offset: 704)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !352, line: 25, size: 64, elements: !353)
!352 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!353 = !{!354}
!354 = !DIDerivedType(tag: DW_TAG_member, scope: !351, file: !352, line: 26, baseType: !355, size: 64)
!355 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !351, file: !352, line: 26, size: 64, elements: !356)
!356 = !{!357, !358}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !355, file: !352, line: 28, baseType: !229, size: 64, align: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, scope: !355, file: !352, line: 30, baseType: !359, size: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !355, file: !352, line: 30, size: 64, elements: !360)
!360 = !{!361, !362}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !359, file: !352, line: 31, baseType: !66, size: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !359, file: !352, line: 32, baseType: !29, size: 32, offset: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !305, file: !306, line: 95, baseType: !364, size: 64, offset: 768)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !366)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !306, line: 128, size: 1024, align: 512, elements: !367)
!367 = !{!368, !372, !373, !380, !386, !390, !394, !398, !399, !403, !408, !4953, !4957}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !366, file: !306, line: 129, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{!29, !304, !7}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !366, file: !306, line: 130, baseType: !369, size: 64, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !366, file: !306, line: 131, baseType: !374, size: 64, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{!29, !377, !379}
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !305)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !366, file: !306, line: 132, baseType: !381, size: 64, offset: 192)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{!29, !377, !7, !23, !384}
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !329)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !366, file: !306, line: 134, baseType: !387, size: 64, offset: 256)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DISubroutineType(types: !389)
!389 = !{!29, !377}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !366, file: !306, line: 135, baseType: !391, size: 64, offset: 320)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DISubroutineType(types: !393)
!393 = !{!29, !304}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !366, file: !306, line: 136, baseType: !395, size: 64, offset: 384)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{null, !304}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !366, file: !306, line: 137, baseType: !395, size: 64, offset: 448)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !366, file: !306, line: 138, baseType: !400, size: 64, offset: 512)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !304, !269}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !366, file: !306, line: 139, baseType: !404, size: 64, offset: 576)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DISubroutineType(types: !406)
!406 = !{!407, !304, !407, !29}
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !366, file: !306, line: 140, baseType: !409, size: 64, offset: 640)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{!412, !4952}
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !414, line: 70, size: 256, elements: !415)
!414 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!415 = !{!416, !417, !4948, !4949}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !413, file: !414, line: 71, baseType: !304, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !413, file: !414, line: 72, baseType: !418, size: 64, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !158, line: 1190, size: 10752, elements: !420)
!420 = !{!421, !422, !425, !426, !427, !428, !4520, !4654, !4694, !4779, !4783, !4784, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4796, !4800, !4801, !4804, !4807, !4810, !4813, !4814, !4815, !4856, !4882, !4883, !4884, !4885, !4886, !4887, !4890, !4892, !4898, !4899, !4900, !4901, !4902, !4917, !4918, !4919, !4920, !4921, !4922, !4923, !4924, !4939, !4940, !4941, !4942, !4943, !4944, !4945, !4946, !4947}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !419, file: !158, line: 1191, baseType: !104, size: 128)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !419, file: !158, line: 1192, baseType: !423, size: 32, offset: 128)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !32, line: 21, baseType: !424)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !32, line: 18, baseType: !338)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !419, file: !158, line: 1193, baseType: !94, size: 8, offset: 160)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !419, file: !158, line: 1194, baseType: !46, size: 64, offset: 192)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !419, file: !158, line: 1195, baseType: !48, size: 64, offset: 256)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !419, file: !158, line: 1196, baseType: !429, size: 64, offset: 320)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !158, line: 2366, size: 576, elements: !431)
!431 = !{!432, !433, !434, !440, !444, !448, !452, !4508, !4509, !4510, !4512, !4513, !4514, !4516, !4517, !4518, !4519}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !430, file: !158, line: 2367, baseType: !23, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !430, file: !158, line: 2368, baseType: !29, size: 32, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !430, file: !158, line: 2376, baseType: !435, size: 64, offset: 128)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!29, !438}
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !414, line: 21, flags: DIFlagFwdDecl)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !430, file: !158, line: 2377, baseType: !441, size: 64, offset: 192)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !443)
!443 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !158, line: 75, flags: DIFlagFwdDecl)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !430, file: !158, line: 2378, baseType: !445, size: 64, offset: 256)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{!304, !429, !29, !23, !27}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !430, file: !158, line: 2380, baseType: !449, size: 64, offset: 320)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{null, !418}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !430, file: !158, line: 2381, baseType: !453, size: 64, offset: 384)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !455)
!455 = !{!456, !457, !458, !462, !4193, !4219, !4220, !4221, !4222, !4226, !4229, !4230, !4231, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4299, !4303, !4319, !4336, !4337, !4338, !4339, !4348, !4371, !4372, !4375, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4389, !4390, !4469, !4477, !4478, !4479, !4481, !4485, !4486, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4503, !4504, !4505, !4507}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !454, file: !6, line: 403, baseType: !5, size: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !454, file: !6, line: 406, baseType: !104, size: 128, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !454, file: !6, line: 409, baseType: !459, size: 448, offset: 192)
!459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 448, elements: !460)
!460 = !{!461}
!461 = !DISubrange(count: 56)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !454, file: !6, line: 417, baseType: !463, size: 768, offset: 640)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !464)
!464 = !{!465, !4187, !4188, !4189, !4192}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !463, file: !6, line: 46, baseType: !466, size: 512)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !467, line: 64, size: 512, elements: !468)
!467 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!468 = !{!469, !470, !471, !473, !519, !4085, !4177, !4182, !4183, !4184, !4185, !4186}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !466, file: !467, line: 65, baseType: !23, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !466, file: !467, line: 66, baseType: !104, size: 128, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !466, file: !467, line: 67, baseType: !472, size: 64, offset: 192)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !466, file: !467, line: 68, baseType: !474, size: 64, offset: 256)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !467, line: 168, size: 768, elements: !476)
!476 = !{!477, !478, !479, !480}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !475, file: !467, line: 169, baseType: !104, size: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !475, file: !467, line: 170, baseType: !66, size: 32, offset: 128)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !475, file: !467, line: 171, baseType: !466, size: 512, offset: 192)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !475, file: !467, line: 172, baseType: !481, size: 64, offset: 704)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !483)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !467, line: 133, size: 192, elements: !484)
!484 = !{!485, !492, !497}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !483, file: !467, line: 134, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !487)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!29, !490}
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !466)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !483, file: !467, line: 135, baseType: !493, size: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !494)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!23, !490}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !483, file: !467, line: 136, baseType: !498, size: 64, offset: 128)
!498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !499)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!29, !490, !502}
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !467, line: 125, size: 20736, elements: !504)
!504 = !{!505, !509, !513, !514, !518}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !503, file: !467, line: 126, baseType: !506, size: 192)
!506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 192, elements: !507)
!507 = !{!508}
!508 = !DISubrange(count: 3)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !503, file: !467, line: 127, baseType: !510, size: 4096, offset: 192)
!510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 4096, elements: !511)
!511 = !{!512}
!512 = !DISubrange(count: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !503, file: !467, line: 128, baseType: !29, size: 32, offset: 4288)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !503, file: !467, line: 129, baseType: !515, size: 16384, offset: 4320)
!515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 16384, elements: !516)
!516 = !{!517}
!517 = !DISubrange(count: 2048)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !503, file: !467, line: 130, baseType: !29, size: 32, offset: 20704)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !466, file: !467, line: 69, baseType: !520, size: 64, offset: 320)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !522)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !467, line: 116, size: 384, elements: !523)
!523 = !{!524, !528, !550, !4048, !4077, !4081}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !522, file: !467, line: 117, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{null, !472}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !522, file: !467, line: 118, baseType: !529, size: 64, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !531)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !532, line: 254, size: 128, elements: !533)
!532 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!533 = !{!534, !546}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !531, file: !532, line: 255, baseType: !535, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!538, !472, !541, !407}
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !32, line: 66, baseType: !539)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !44, line: 73, baseType: !540)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !44, line: 15, baseType: !226)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !532, line: 30, size: 128, elements: !543)
!543 = !{!544, !545}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !542, file: !532, line: 31, baseType: !23, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !542, file: !532, line: 32, baseType: !31, size: 16, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !531, file: !532, line: 256, baseType: !547, size: 64, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{!538, !472, !541, !23, !42}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !522, file: !467, line: 119, baseType: !551, size: 64, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !554)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !532, line: 84, size: 320, elements: !555)
!555 = !{!556, !557, !561, !4044, !4046}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !554, file: !532, line: 85, baseType: !23, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !554, file: !532, line: 86, baseType: !558, size: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{!31, !472, !541, !29}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !554, file: !532, line: 88, baseType: !562, size: 64, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!31, !472, !565, !29}
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !532, line: 175, size: 512, elements: !567)
!567 = !{!568, !569, !570, !571, !575, !4039, !4040}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !566, file: !532, line: 176, baseType: !542, size: 128)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !566, file: !532, line: 177, baseType: !42, size: 64, offset: 128)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !566, file: !532, line: 178, baseType: !27, size: 64, offset: 192)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !566, file: !532, line: 179, baseType: !572, size: 64, offset: 256)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!265}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !566, file: !532, line: 180, baseType: !576, size: 64, offset: 320)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{!538, !579, !472, !565, !407, !48, !42}
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !158, line: 994, size: 1856, align: 64, elements: !581)
!581 = !{!582, !601, !602, !604, !613, !626, !627, !628, !3537, !3538, !3547, !3553, !3554, !4030, !4031, !4032, !4033, !4034, !4035, !4038}
!582 = !DIDerivedType(tag: DW_TAG_member, scope: !580, file: !158, line: 995, baseType: !583, size: 128)
!583 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !580, file: !158, line: 995, size: 128, elements: !584)
!584 = !{!585, !591, !600}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !583, file: !158, line: 996, baseType: !586, size: 64)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !587, line: 60, size: 64, elements: !588)
!587 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!588 = !{!589}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !586, file: !587, line: 61, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !583, file: !158, line: 997, baseType: !592, size: 128, align: 64)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !32, line: 232, size: 128, align: 64, elements: !593)
!593 = !{!594, !596}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !592, file: !32, line: 233, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !592, file: !32, line: 234, baseType: !597, size: 64, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{null, !595}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !583, file: !158, line: 998, baseType: !7, size: 32)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !580, file: !158, line: 1005, baseType: !66, size: 32, offset: 128)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !580, file: !158, line: 1006, baseType: !603, size: 32, offset: 160)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !32, line: 156, baseType: !7)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !580, file: !158, line: 1007, baseType: !605, size: 64, offset: 192)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !606, line: 13, baseType: !607)
!606 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !32, line: 181, baseType: !608)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !32, line: 179, size: 64, elements: !609)
!609 = !{!610}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !608, file: !32, line: 180, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !91, line: 22, baseType: !612)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !93, line: 30, baseType: !50)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !580, file: !158, line: 1008, baseType: !614, size: 256, offset: 256)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !615, line: 66, size: 256, elements: !616)
!615 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!616 = !{!617, !618, !620, !625}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !614, file: !615, line: 67, baseType: !605, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !614, file: !615, line: 68, baseType: !619, size: 32, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !75, line: 23, baseType: !74)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !614, file: !615, line: 70, baseType: !621, size: 32, offset: 96)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !622, line: 15, size: 32, elements: !623)
!622 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!623 = !{!624}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !621, file: !622, line: 20, baseType: !56, size: 32)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !614, file: !615, line: 72, baseType: !104, size: 128, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !580, file: !158, line: 1009, baseType: !48, size: 64, offset: 512)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !580, file: !158, line: 1010, baseType: !7, size: 32, offset: 576)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !580, file: !158, line: 1011, baseType: !629, size: 256, offset: 640)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !158, line: 948, size: 256, elements: !630)
!630 = !{!631, !652, !3533, !3534, !3535, !3536}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !629, file: !158, line: 949, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !633, line: 34, baseType: !634)
!633 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !633, line: 25, size: 64, elements: !635)
!635 = !{!636}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !634, file: !633, line: 26, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !638, line: 27, baseType: !639)
!638 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !638, line: 13, size: 64, elements: !640)
!640 = !{!641, !651}
!641 = !DIDerivedType(tag: DW_TAG_member, scope: !639, file: !638, line: 14, baseType: !642, size: 32)
!642 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !639, file: !638, line: 14, size: 32, elements: !643)
!643 = !{!644, !645}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !642, file: !638, line: 15, baseType: !56, size: 32)
!645 = !DIDerivedType(tag: DW_TAG_member, scope: !642, file: !638, line: 16, baseType: !646, size: 32)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !642, file: !638, line: 16, size: 32, elements: !647)
!647 = !{!648, !649}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !646, file: !638, line: 18, baseType: !90, size: 8)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !646, file: !638, line: 19, baseType: !650, size: 24, offset: 8)
!650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 24, elements: !507)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !639, file: !638, line: 26, baseType: !78, size: 32, offset: 32)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !629, file: !158, line: 950, baseType: !653, size: 64, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !128, line: 59, size: 768, elements: !655)
!655 = !{!656, !662, !663, !664, !677, !678, !679, !680}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !654, file: !128, line: 61, baseType: !657, size: 32)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !658, line: 113, baseType: !659)
!658 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !658, line: 111, size: 32, elements: !660)
!660 = !{!661}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !659, file: !658, line: 112, baseType: !56, size: 32)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !654, file: !128, line: 62, baseType: !7, size: 32, offset: 32)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !654, file: !128, line: 63, baseType: !66, size: 32, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !654, file: !128, line: 65, baseType: !665, size: 256, offset: 128)
!665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !666, size: 256, elements: !675)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !32, line: 194, size: 64, elements: !667)
!667 = !{!668}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !666, file: !32, line: 195, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !32, line: 198, size: 128, elements: !671)
!671 = !{!672, !673}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !670, file: !32, line: 199, baseType: !669, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !670, file: !32, line: 199, baseType: !674, size: 64, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!675 = !{!676}
!676 = !DISubrange(count: 4)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !654, file: !128, line: 66, baseType: !666, size: 64, offset: 384)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !654, file: !128, line: 68, baseType: !61, size: 192, offset: 448)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !654, file: !128, line: 69, baseType: !592, size: 128, align: 64, offset: 640)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !654, file: !128, line: 70, baseType: !681, offset: 768)
!681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !682, elements: !1429)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !128, line: 54, size: 128, elements: !683)
!683 = !{!684, !685}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !682, file: !128, line: 55, baseType: !29, size: 32)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !682, file: !128, line: 56, baseType: !686, size: 64, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !688, line: 26, size: 1152, elements: !689)
!688 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!689 = !{!690, !703, !704, !705, !3522, !3523, !3524, !3525, !3528, !3529, !3530, !3531, !3532}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !687, file: !688, line: 27, baseType: !691, size: 192)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !692, line: 19, size: 192, elements: !693)
!692 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!693 = !{!694, !701, !702}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !691, file: !692, line: 20, baseType: !695, size: 128)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !696, line: 296, size: 128, elements: !697)
!696 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!697 = !{!698, !699, !700}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !695, file: !696, line: 297, baseType: !66, size: 32)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !695, file: !696, line: 299, baseType: !204, size: 32, offset: 32)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !695, file: !696, line: 300, baseType: !27, size: 64, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !691, file: !692, line: 21, baseType: !7, size: 32, offset: 128)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !691, file: !692, line: 22, baseType: !7, size: 32, offset: 160)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !687, file: !688, line: 28, baseType: !592, size: 128, align: 64, offset: 192)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !687, file: !688, line: 29, baseType: !7, size: 32, offset: 320)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !687, file: !688, line: 30, baseType: !706, size: 64, offset: 384)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !708, line: 746, size: 58368, elements: !709)
!708 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!709 = !{!710, !718, !719, !720, !721, !722, !723, !724, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !797, !808, !903, !907, !910, !941, !942, !943, !944, !955, !957, !958, !959, !960, !961, !962, !973, !974, !977, !978, !979, !980, !981, !982, !983, !984, !991, !992, !999, !1000, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1510, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1558, !1564, !1634, !1635, !1636, !1637, !1641, !1644, !1651, !1656, !1659, !1662, !1665, !2786, !2920, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2960, !2961, !2962, !2971, !2979, !2980, !2981, !2982, !2983, !2988, !2989, !2990, !2993, !2994, !2997, !3000, !3003, !3011, !3014, !3015, !3101, !3102, !3103, !3104, !3105, !3110, !3111, !3112, !3113, !3116, !3117, !3120, !3123, !3124, !3127, !3128, !3129, !3132, !3133, !3134, !3137, !3138, !3139, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3170, !3173, !3179, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3191, !3263, !3265, !3266, !3267, !3268, !3269, !3270, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3299, !3300, !3301}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !707, file: !708, line: 752, baseType: !711, size: 192)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !712, line: 56, size: 192, elements: !713)
!712 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!713 = !{!714, !715, !716, !717}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !711, file: !712, line: 57, baseType: !46, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !711, file: !712, line: 58, baseType: !46, size: 64, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !711, file: !712, line: 59, baseType: !338, size: 32, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !711, file: !712, line: 61, baseType: !338, size: 32, offset: 160)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !707, file: !708, line: 754, baseType: !7, size: 32, offset: 192)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !707, file: !708, line: 767, baseType: !27, size: 64, offset: 256)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !707, file: !708, line: 768, baseType: !657, size: 32, offset: 320)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !707, file: !708, line: 770, baseType: !7, size: 32, offset: 352)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !707, file: !708, line: 771, baseType: !7, size: 32, offset: 384)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !707, file: !708, line: 774, baseType: !29, size: 32, offset: 416)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !707, file: !708, line: 775, baseType: !725, size: 128, offset: 448)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !726, line: 58, size: 128, elements: !727)
!726 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!727 = !{!728, !729, !734, !735}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !725, file: !726, line: 59, baseType: !586, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, scope: !725, file: !726, line: 60, baseType: !730, size: 32, offset: 64)
!730 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !725, file: !726, line: 60, size: 32, elements: !731)
!731 = !{!732, !733}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !730, file: !726, line: 61, baseType: !7, size: 32)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !730, file: !726, line: 62, baseType: !56, size: 32)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !725, file: !726, line: 65, baseType: !100, size: 16, offset: 96)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !725, file: !726, line: 65, baseType: !100, size: 16, offset: 112)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !707, file: !708, line: 776, baseType: !7, size: 32, offset: 576)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !707, file: !708, line: 777, baseType: !46, size: 64, offset: 640)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !707, file: !708, line: 778, baseType: !706, size: 64, offset: 704)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !707, file: !708, line: 787, baseType: !29, size: 32, offset: 768)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !707, file: !708, line: 788, baseType: !29, size: 32, offset: 800)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !707, file: !708, line: 790, baseType: !29, size: 32, offset: 832)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !707, file: !708, line: 792, baseType: !29, size: 32, offset: 864)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !707, file: !708, line: 793, baseType: !29, size: 32, offset: 896)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !707, file: !708, line: 794, baseType: !29, size: 32, offset: 928)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !707, file: !708, line: 795, baseType: !7, size: 32, offset: 960)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !707, file: !708, line: 797, baseType: !747, size: 2048, offset: 1024)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !708, line: 551, size: 2048, elements: !748)
!748 = !{!749, !754, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !776, !779, !780, !781}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !747, file: !708, line: 553, baseType: !750, size: 128)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !708, line: 411, size: 128, elements: !751)
!751 = !{!752, !753}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !750, file: !708, line: 412, baseType: !46, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !750, file: !708, line: 413, baseType: !338, size: 32, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !747, file: !708, line: 554, baseType: !755, size: 192, align: 64, offset: 128)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !756, line: 5, size: 192, align: 64, elements: !757)
!756 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!757 = !{!758, !759, !761}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !755, file: !756, line: 6, baseType: !46, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !755, file: !756, line: 7, baseType: !760, size: 64, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !755, file: !756, line: 8, baseType: !760, size: 64, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !747, file: !708, line: 555, baseType: !228, size: 64, offset: 320)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !747, file: !708, line: 556, baseType: !228, size: 64, offset: 384)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !747, file: !708, line: 558, baseType: !104, size: 128, offset: 448)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !747, file: !708, line: 559, baseType: !7, size: 32, offset: 576)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !747, file: !708, line: 561, baseType: !228, size: 64, offset: 640)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !747, file: !708, line: 562, baseType: !228, size: 64, offset: 704)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !747, file: !708, line: 563, baseType: !228, size: 64, offset: 768)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !747, file: !708, line: 564, baseType: !228, size: 64, offset: 832)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !747, file: !708, line: 565, baseType: !611, size: 64, offset: 896)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !747, file: !708, line: 566, baseType: !228, size: 64, offset: 960)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !747, file: !708, line: 568, baseType: !228, size: 64, offset: 1024)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !747, file: !708, line: 571, baseType: !29, size: 32, offset: 1088)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !747, file: !708, line: 572, baseType: !775, size: 64, offset: 1152)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !747, file: !708, line: 574, baseType: !777, size: 64, offset: 1216)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !708, line: 49, flags: DIFlagFwdDecl)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !747, file: !708, line: 576, baseType: !777, size: 64, offset: 1280)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !747, file: !708, line: 578, baseType: !46, size: 64, offset: 1344)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !747, file: !708, line: 588, baseType: !782, size: 512, align: 512, offset: 1536)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !708, line: 497, size: 512, align: 512, elements: !783)
!783 = !{!784, !785, !786, !787, !788, !789, !790, !791, !792}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !782, file: !708, line: 498, baseType: !228, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !782, file: !708, line: 499, baseType: !228, size: 64, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !782, file: !708, line: 500, baseType: !228, size: 64, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !782, file: !708, line: 501, baseType: !338, size: 32, offset: 192)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !782, file: !708, line: 502, baseType: !338, size: 32, offset: 224)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !782, file: !708, line: 503, baseType: !46, size: 64, offset: 256)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !782, file: !708, line: 504, baseType: !46, size: 64, offset: 320)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !782, file: !708, line: 505, baseType: !46, size: 64, offset: 384)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !782, file: !708, line: 506, baseType: !793, size: 64, align: 64, offset: 448)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !708, line: 445, size: 64, align: 64, elements: !794)
!794 = !{!795, !796}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !793, file: !708, line: 446, baseType: !7, size: 32)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !793, file: !708, line: 447, baseType: !7, size: 32, offset: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !707, file: !708, line: 798, baseType: !798, size: 384, offset: 3072)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !708, line: 592, size: 384, elements: !799)
!799 = !{!800, !801, !802, !803, !804, !805, !806}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !798, file: !708, line: 593, baseType: !104, size: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !798, file: !708, line: 594, baseType: !46, size: 64, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !798, file: !708, line: 595, baseType: !46, size: 64, offset: 192)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !798, file: !708, line: 596, baseType: !7, size: 32, offset: 256)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !798, file: !708, line: 597, baseType: !33, size: 16, offset: 288)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !798, file: !708, line: 598, baseType: !33, size: 16, offset: 304)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !798, file: !708, line: 600, baseType: !807, size: 64, offset: 320)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !707, file: !708, line: 799, baseType: !809, size: 1792, offset: 3456)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !708, line: 610, size: 1792, elements: !810)
!810 = !{!811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !900, !901}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !809, file: !708, line: 611, baseType: !755, size: 192, align: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !809, file: !708, line: 618, baseType: !228, size: 64, offset: 192)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !809, file: !708, line: 619, baseType: !228, size: 64, offset: 256)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !809, file: !708, line: 620, baseType: !228, size: 64, offset: 320)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !809, file: !708, line: 621, baseType: !228, size: 64, offset: 384)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !809, file: !708, line: 622, baseType: !228, size: 64, offset: 448)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !809, file: !708, line: 629, baseType: !611, size: 64, offset: 512)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !809, file: !708, line: 630, baseType: !228, size: 64, offset: 576)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !809, file: !708, line: 631, baseType: !7, size: 32, offset: 640)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !809, file: !708, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !809, file: !708, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !809, file: !708, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !809, file: !708, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !809, file: !708, line: 662, baseType: !825, size: 512, offset: 704)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !14, line: 118, size: 512, elements: !826)
!826 = !{!827, !835, !836, !841, !896, !897, !898, !899}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !825, file: !14, line: 119, baseType: !828, size: 256)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !829, line: 9, size: 256, elements: !830)
!829 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!830 = !{!831, !832}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !828, file: !829, line: 10, baseType: !755, size: 192, align: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !828, file: !829, line: 11, baseType: !833, size: 64, offset: 192)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !834, line: 29, baseType: !611)
!834 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!835 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !825, file: !14, line: 120, baseType: !833, size: 64, offset: 256)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !825, file: !14, line: 121, baseType: !837, size: 64, offset: 320)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{!13, !840}
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !825, file: !14, line: 122, baseType: !842, size: 64, offset: 384)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !14, line: 159, size: 512, align: 512, elements: !844)
!844 = !{!845, !870, !871, !874, !879, !880, !891, !895}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !843, file: !14, line: 160, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !14, line: 215, size: 4608, align: 512, elements: !848)
!848 = !{!849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !847, file: !14, line: 216, baseType: !619, size: 32)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !847, file: !14, line: 217, baseType: !7, size: 32, offset: 32)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !847, file: !14, line: 218, baseType: !7, size: 32, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !847, file: !14, line: 219, baseType: !7, size: 32, offset: 96)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !847, file: !14, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !847, file: !14, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !847, file: !14, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !847, file: !14, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !847, file: !14, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !847, file: !14, line: 226, baseType: !7, size: 32, offset: 160)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !847, file: !14, line: 227, baseType: !33, size: 16, offset: 192)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !847, file: !14, line: 228, baseType: !33, size: 16, offset: 208)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !847, file: !14, line: 229, baseType: !7, size: 32, offset: 224)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !847, file: !14, line: 235, baseType: !833, size: 64, offset: 256)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !847, file: !14, line: 236, baseType: !840, size: 64, offset: 320)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !847, file: !14, line: 237, baseType: !833, size: 64, offset: 384)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !847, file: !14, line: 238, baseType: !840, size: 64, offset: 448)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !847, file: !14, line: 239, baseType: !867, size: 4096, align: 512, offset: 512)
!867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !843, size: 4096, align: 512, elements: !868)
!868 = !{!869}
!869 = !DISubrange(count: 8)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !843, file: !14, line: 161, baseType: !7, size: 32, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !843, file: !14, line: 162, baseType: !872, size: 32, offset: 96)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !32, line: 32, baseType: !873)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !44, line: 96, baseType: !29)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !843, file: !14, line: 163, baseType: !875, size: 32, offset: 128)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !311, line: 274, baseType: !876)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !311, line: 274, size: 32, elements: !877)
!877 = !{!878}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !876, file: !311, line: 274, baseType: !315, size: 32)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !843, file: !14, line: 164, baseType: !840, size: 64, offset: 192)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !843, file: !14, line: 165, baseType: !881, size: 128, offset: 256)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !829, line: 14, size: 128, elements: !882)
!882 = !{!883}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !881, file: !829, line: 15, baseType: !884, size: 128)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !756, line: 26, size: 128, elements: !885)
!885 = !{!886, !890}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !884, file: !756, line: 27, baseType: !887, size: 64)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !756, line: 12, size: 64, elements: !888)
!888 = !{!889}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !887, file: !756, line: 13, baseType: !760, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !884, file: !756, line: 28, baseType: !760, size: 64, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !843, file: !14, line: 166, baseType: !892, size: 64, offset: 384)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DISubroutineType(types: !894)
!894 = !{!833}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !843, file: !14, line: 167, baseType: !833, size: 64, offset: 448)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !825, file: !14, line: 123, baseType: !90, size: 8, offset: 448)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !825, file: !14, line: 124, baseType: !90, size: 8, offset: 456)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !825, file: !14, line: 125, baseType: !90, size: 8, offset: 464)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !825, file: !14, line: 126, baseType: !90, size: 8, offset: 472)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !809, file: !708, line: 671, baseType: !825, size: 512, offset: 1216)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !809, file: !708, line: 679, baseType: !902, size: 64, offset: 1728)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !707, file: !708, line: 800, baseType: !904, size: 64, offset: 5248)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !906)
!906 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !708, line: 800, flags: DIFlagFwdDecl)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !707, file: !708, line: 809, baseType: !908, size: 64, offset: 5312)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !708, line: 70, flags: DIFlagFwdDecl)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !707, file: !708, line: 825, baseType: !911, size: 2048, align: 512, offset: 5632)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !708, line: 509, size: 2048, align: 512, elements: !912)
!912 = !{!913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !911, file: !708, line: 511, baseType: !228, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !911, file: !708, line: 512, baseType: !228, size: 64, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !911, file: !708, line: 513, baseType: !228, size: 64, offset: 128)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !911, file: !708, line: 514, baseType: !228, size: 64, offset: 192)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !911, file: !708, line: 515, baseType: !228, size: 64, offset: 256)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !911, file: !708, line: 516, baseType: !228, size: 64, offset: 320)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !911, file: !708, line: 518, baseType: !228, size: 64, offset: 384)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !911, file: !708, line: 519, baseType: !228, size: 64, offset: 448)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !911, file: !708, line: 520, baseType: !611, size: 64, offset: 512)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !911, file: !708, line: 522, baseType: !228, size: 64, offset: 576)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !911, file: !708, line: 523, baseType: !228, size: 64, offset: 640)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !911, file: !708, line: 524, baseType: !611, size: 64, offset: 704)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !911, file: !708, line: 526, baseType: !611, size: 64, offset: 768)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !911, file: !708, line: 527, baseType: !228, size: 64, offset: 832)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !911, file: !708, line: 529, baseType: !228, size: 64, offset: 896)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !911, file: !708, line: 530, baseType: !228, size: 64, offset: 960)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !911, file: !708, line: 531, baseType: !228, size: 64, offset: 1024)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !911, file: !708, line: 532, baseType: !228, size: 64, offset: 1088)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !911, file: !708, line: 533, baseType: !228, size: 64, offset: 1152)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !911, file: !708, line: 535, baseType: !228, size: 64, offset: 1216)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !911, file: !708, line: 536, baseType: !228, size: 64, offset: 1280)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !911, file: !708, line: 537, baseType: !228, size: 64, offset: 1344)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !911, file: !708, line: 538, baseType: !228, size: 64, offset: 1408)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !911, file: !708, line: 539, baseType: !228, size: 64, offset: 1472)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !911, file: !708, line: 540, baseType: !228, size: 64, offset: 1536)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !911, file: !708, line: 541, baseType: !228, size: 64, offset: 1600)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !911, file: !708, line: 542, baseType: !228, size: 64, offset: 1664)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !911, file: !708, line: 543, baseType: !228, size: 64, offset: 1728)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !707, file: !708, line: 833, baseType: !7, size: 32, offset: 7680)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !707, file: !708, line: 836, baseType: !7, size: 32, offset: 7712)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !707, file: !708, line: 837, baseType: !29, size: 32, offset: 7744)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !707, file: !708, line: 838, baseType: !945, size: 64, offset: 7808)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !947)
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !948, line: 19, baseType: !949)
!948 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !948, line: 19, size: 64, elements: !950)
!950 = !{!951}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !949, file: !948, line: 19, baseType: !952, size: 64)
!952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 64, elements: !953)
!953 = !{!954}
!954 = !DISubrange(count: 1)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !707, file: !708, line: 839, baseType: !956, size: 64, offset: 7872)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !707, file: !708, line: 840, baseType: !947, size: 64, offset: 7936)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !707, file: !708, line: 841, baseType: !27, size: 64, offset: 8000)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !707, file: !708, line: 843, baseType: !33, size: 16, offset: 8064)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !707, file: !708, line: 845, baseType: !33, size: 16, offset: 8080)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !707, file: !708, line: 848, baseType: !29, size: 32, offset: 8096)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !707, file: !708, line: 849, baseType: !963, size: 32, offset: 8128)
!963 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !708, line: 718, size: 32, elements: !964)
!964 = !{!965, !972}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !963, file: !708, line: 724, baseType: !966, size: 32)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !963, file: !708, line: 719, size: 32, elements: !967)
!967 = !{!968, !969, !970, !971}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !966, file: !708, line: 720, baseType: !90, size: 8)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !966, file: !708, line: 721, baseType: !90, size: 8, offset: 8)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !966, file: !708, line: 722, baseType: !90, size: 8, offset: 16)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !966, file: !708, line: 723, baseType: !90, size: 8, offset: 24)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !963, file: !708, line: 725, baseType: !338, size: 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !707, file: !708, line: 850, baseType: !104, size: 128, offset: 8192)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !707, file: !708, line: 851, baseType: !975, size: 64, offset: 8320)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !708, line: 60, flags: DIFlagFwdDecl)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !707, file: !708, line: 855, baseType: !46, size: 64, offset: 8384)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !707, file: !708, line: 856, baseType: !90, size: 8, offset: 8448)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !707, file: !708, line: 857, baseType: !90, size: 8, offset: 8456)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !707, file: !708, line: 858, baseType: !29, size: 32, offset: 8480)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !707, file: !708, line: 859, baseType: !104, size: 128, offset: 8512)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !707, file: !708, line: 860, baseType: !29, size: 32, offset: 8640)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !707, file: !708, line: 861, baseType: !104, size: 128, offset: 8704)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !707, file: !708, line: 873, baseType: !985, size: 256, offset: 8832)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !708, line: 376, size: 256, elements: !986)
!986 = !{!987, !988, !989, !990}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !985, file: !708, line: 381, baseType: !46, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !985, file: !708, line: 384, baseType: !230, size: 64, offset: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !985, file: !708, line: 389, baseType: !230, size: 64, offset: 128)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !985, file: !708, line: 392, baseType: !230, size: 64, offset: 192)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !707, file: !708, line: 875, baseType: !104, size: 128, offset: 9088)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !707, file: !708, line: 877, baseType: !993, size: 320, offset: 9216)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !994, line: 86, size: 320, elements: !995)
!994 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!995 = !{!996, !997, !998}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !993, file: !994, line: 87, baseType: !29, size: 32)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !993, file: !994, line: 88, baseType: !104, size: 128, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !993, file: !994, line: 89, baseType: !104, size: 128, offset: 192)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !707, file: !708, line: 878, baseType: !755, size: 192, align: 64, offset: 9536)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !707, file: !708, line: 881, baseType: !1001, size: 64, offset: 9728)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !136, line: 733, size: 10240, elements: !1003)
!1003 = !{!1004, !1427}
!1004 = !DIDerivedType(tag: DW_TAG_member, scope: !1002, file: !136, line: 734, baseType: !1005, size: 10240)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1002, file: !136, line: 734, size: 10240, elements: !1006)
!1006 = !{!1007, !1011, !1025, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1043, !1044, !1045, !1046, !1047, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1084, !1096, !1099, !1147, !1148, !1149, !1152, !1413, !1414, !1417, !1418, !1419, !1425, !1426}
!1007 = !DIDerivedType(tag: DW_TAG_member, scope: !1005, file: !136, line: 739, baseType: !1008, size: 512, align: 512)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1005, file: !136, line: 739, size: 512, align: 512, elements: !1009)
!1009 = !{!1010}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1008, file: !136, line: 747, baseType: !56, size: 32)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1005, file: !136, line: 750, baseType: !1012, size: 128, offset: 512)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1013, line: 218, size: 128, elements: !1014)
!1013 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1014 = !{!1015, !1023, !1024}
!1015 = !DIDerivedType(tag: DW_TAG_member, scope: !1012, file: !1013, line: 219, baseType: !1016, size: 32)
!1016 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1012, file: !1013, line: 219, size: 32, elements: !1017)
!1017 = !{!1018, !1019}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1016, file: !1013, line: 220, baseType: !66, size: 32)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1016, file: !1013, line: 221, baseType: !1020)
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1013, line: 197, baseType: !1021)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1013, line: 197, elements: !1022)
!1022 = !{}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1012, file: !1013, line: 223, baseType: !7, size: 32, offset: 32)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1012, file: !1013, line: 224, baseType: !27, size: 64, offset: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1005, file: !136, line: 752, baseType: !1026, size: 64, offset: 640)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!46, !579, !46, !46, !46, !46}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1005, file: !136, line: 756, baseType: !46, size: 64, offset: 704)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1005, file: !136, line: 757, baseType: !46, size: 64, offset: 768)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1005, file: !136, line: 760, baseType: !46, size: 64, offset: 832)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1005, file: !136, line: 761, baseType: !46, size: 64, offset: 896)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1005, file: !136, line: 763, baseType: !46, size: 64, offset: 960)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1005, file: !136, line: 764, baseType: !233, size: 64, offset: 1024)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1005, file: !136, line: 773, baseType: !56, size: 32, offset: 1088)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1005, file: !136, line: 785, baseType: !56, size: 32, offset: 1120)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1005, file: !136, line: 795, baseType: !1038, size: 64, offset: 1152)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !136, line: 726, size: 128, elements: !1040)
!1040 = !{!1041, !1042}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1039, file: !136, line: 727, baseType: !228, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1039, file: !136, line: 728, baseType: !29, size: 32, offset: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1005, file: !136, line: 801, baseType: !46, size: 64, offset: 1216)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1005, file: !136, line: 804, baseType: !605, size: 64, offset: 1280)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1005, file: !136, line: 806, baseType: !29, size: 32, offset: 1344)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1005, file: !136, line: 808, baseType: !66, size: 32, offset: 1376)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1005, file: !136, line: 823, baseType: !1048, size: 320, offset: 1408)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1049, line: 48, size: 320, elements: !1050)
!1049 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1050 = !{!1051, !1052, !1053, !1054, !1055}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1048, file: !1049, line: 49, baseType: !605, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1048, file: !1049, line: 55, baseType: !605, size: 64, offset: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1048, file: !1049, line: 57, baseType: !621, size: 32, offset: 128)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1048, file: !1049, line: 59, baseType: !619, size: 32, offset: 160)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1048, file: !1049, line: 60, baseType: !104, size: 128, offset: 192)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1005, file: !136, line: 825, baseType: !104, size: 128, offset: 1728)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1005, file: !136, line: 845, baseType: !29, size: 32, offset: 1856)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1005, file: !136, line: 849, baseType: !46, size: 64, offset: 1920)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1005, file: !136, line: 850, baseType: !46, size: 64, offset: 1984)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1005, file: !136, line: 852, baseType: !46, size: 64, offset: 2048)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1005, file: !136, line: 853, baseType: !46, size: 64, offset: 2112)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1005, file: !136, line: 854, baseType: !607, size: 64, offset: 2176)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1005, file: !136, line: 855, baseType: !46, size: 64, offset: 2240)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1005, file: !136, line: 856, baseType: !46, size: 64, offset: 2304)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1005, file: !136, line: 857, baseType: !46, size: 64, offset: 2368)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1005, file: !136, line: 858, baseType: !46, size: 64, offset: 2432)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1005, file: !136, line: 865, baseType: !315, size: 32, offset: 2496)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1005, file: !136, line: 867, baseType: !66, size: 32, offset: 2528)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1005, file: !136, line: 869, baseType: !46, size: 64, offset: 2560)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1005, file: !136, line: 869, baseType: !46, size: 64, offset: 2624)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1005, file: !136, line: 869, baseType: !46, size: 64, offset: 2688)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1005, file: !136, line: 869, baseType: !46, size: 64, offset: 2752)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1005, file: !136, line: 870, baseType: !46, size: 64, offset: 2816)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1005, file: !136, line: 870, baseType: !46, size: 64, offset: 2880)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1005, file: !136, line: 870, baseType: !46, size: 64, offset: 2944)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1005, file: !136, line: 871, baseType: !46, size: 64, offset: 3008)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1005, file: !136, line: 871, baseType: !46, size: 64, offset: 3072)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1005, file: !136, line: 871, baseType: !46, size: 64, offset: 3136)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1005, file: !136, line: 871, baseType: !46, size: 64, offset: 3200)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1005, file: !136, line: 873, baseType: !1081, size: 3328, offset: 3264)
!1081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 3328, elements: !1082)
!1082 = !{!1083}
!1083 = !DISubrange(count: 52)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1005, file: !136, line: 875, baseType: !1085, size: 1280, offset: 6592)
!1085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1086, size: 1280, elements: !675)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1087, line: 22, size: 320, elements: !1088)
!1087 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1088 = !{!1089, !1090, !1091, !1092}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1086, file: !1087, line: 23, baseType: !619, size: 32)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1086, file: !1087, line: 24, baseType: !611, size: 64, offset: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1086, file: !1087, line: 26, baseType: !104, size: 128, offset: 128)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1086, file: !1087, line: 28, baseType: !1093, size: 64, offset: 256)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !91, line: 20, baseType: !1095)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !93, line: 26, baseType: !29)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1005, file: !136, line: 877, baseType: !1097, size: 64, offset: 7872)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !136, line: 877, flags: DIFlagFwdDecl)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1005, file: !136, line: 880, baseType: !1100, size: 1088, offset: 7936)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1101, line: 72, baseType: !1102)
!1101 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1101, line: 23, size: 1088, elements: !1103)
!1103 = !{!1104, !1105, !1106, !1107, !1108, !1111, !1112, !1113, !1114, !1141, !1142, !1143}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1102, file: !1101, line: 28, baseType: !228, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1102, file: !1101, line: 38, baseType: !607, size: 64, offset: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1102, file: !1101, line: 40, baseType: !46, size: 64, offset: 128)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1102, file: !1101, line: 43, baseType: !1048, size: 320, offset: 192)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1102, file: !1101, line: 44, baseType: !1109, size: 64, offset: 512)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1101, line: 44, flags: DIFlagFwdDecl)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1102, file: !1101, line: 48, baseType: !46, size: 64, offset: 576)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1102, file: !1101, line: 59, baseType: !614, size: 256, offset: 640)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1102, file: !1101, line: 60, baseType: !27, size: 64, offset: 896)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1102, file: !1101, line: 61, baseType: !1115, size: 64, offset: 960)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1117)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1118, line: 13, size: 1216, elements: !1119)
!1118 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1119 = !{!1120, !1121, !1122, !1123, !1124, !1125, !1126, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1117, file: !1118, line: 14, baseType: !27, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1117, file: !1118, line: 15, baseType: !46, size: 64, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1117, file: !1118, line: 17, baseType: !46, size: 64, offset: 128)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1117, file: !1118, line: 17, baseType: !46, size: 64, offset: 192)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1117, file: !1118, line: 18, baseType: !46, size: 64, offset: 256)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1117, file: !1118, line: 18, baseType: !46, size: 64, offset: 320)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1117, file: !1118, line: 19, baseType: !1127, size: 64, offset: 384)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1117, file: !1118, line: 21, baseType: !226, size: 64, offset: 448)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1117, file: !1118, line: 23, baseType: !226, size: 64, offset: 512)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1117, file: !1118, line: 24, baseType: !226, size: 64, offset: 576)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1117, file: !1118, line: 25, baseType: !226, size: 64, offset: 640)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1117, file: !1118, line: 26, baseType: !226, size: 64, offset: 704)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1117, file: !1118, line: 27, baseType: !226, size: 64, offset: 768)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1117, file: !1118, line: 28, baseType: !226, size: 64, offset: 832)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1117, file: !1118, line: 29, baseType: !226, size: 64, offset: 896)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1117, file: !1118, line: 30, baseType: !226, size: 64, offset: 960)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1117, file: !1118, line: 31, baseType: !226, size: 64, offset: 1024)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1117, file: !1118, line: 32, baseType: !226, size: 64, offset: 1088)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1117, file: !1118, line: 33, baseType: !226, size: 64, offset: 1152)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1102, file: !1101, line: 63, baseType: !56, size: 32, offset: 1024)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1102, file: !1101, line: 69, baseType: !100, size: 16, offset: 1056)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1102, file: !1101, line: 70, baseType: !1144, size: 16, offset: 1072)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !91, line: 18, baseType: !1145)
!1145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !93, line: 23, baseType: !1146)
!1146 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1005, file: !136, line: 882, baseType: !46, size: 64, offset: 9024)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1005, file: !136, line: 885, baseType: !66, size: 32, offset: 9088)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1005, file: !136, line: 886, baseType: !1150, size: 64, offset: 9152)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !136, line: 732, flags: DIFlagFwdDecl)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1005, file: !136, line: 901, baseType: !1153, size: 64, offset: 9216)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1155, line: 68, size: 4800, elements: !1156)
!1155 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!1156 = !{!1157, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1196, !1197, !1200, !1201, !1311, !1312, !1324, !1394, !1395, !1409, !1411}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !1154, file: !1155, line: 69, baseType: !1158, size: 576)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !1155, line: 23, size: 576, elements: !1159)
!1159 = !{!1160, !1161}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !1158, file: !1155, line: 24, baseType: !338, size: 32)
!1161 = !DIDerivedType(tag: DW_TAG_member, scope: !1158, file: !1155, line: 25, baseType: !1162, size: 512, offset: 64)
!1162 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1158, file: !1155, line: 25, size: 512, elements: !1163)
!1163 = !{!1164, !1173}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !1162, file: !1155, line: 26, baseType: !1165, size: 480)
!1165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1166, size: 480, elements: !1171)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !1155, line: 17, size: 96, elements: !1167)
!1167 = !{!1168, !1169, !1170}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1166, file: !1155, line: 18, baseType: !338, size: 32)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !1166, file: !1155, line: 19, baseType: !338, size: 32, offset: 32)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1166, file: !1155, line: 20, baseType: !338, size: 32, offset: 64)
!1171 = !{!1172}
!1172 = !DISubrange(count: 5)
!1173 = !DIDerivedType(tag: DW_TAG_member, scope: !1162, file: !1155, line: 27, baseType: !1174, size: 128)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1162, file: !1155, line: 27, size: 128, elements: !1175)
!1175 = !{!1176, !1178}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1174, file: !1155, line: 28, baseType: !1177, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !1174, file: !1155, line: 29, baseType: !1177, size: 64, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !1154, file: !1155, line: 70, baseType: !1158, size: 576, offset: 576)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !1154, file: !1155, line: 71, baseType: !1158, size: 576, offset: 1152)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1154, file: !1155, line: 72, baseType: !1153, size: 64, offset: 1728)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1154, file: !1155, line: 73, baseType: !29, size: 32, offset: 1792)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1154, file: !1155, line: 74, baseType: !275, size: 32, offset: 1824)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1154, file: !1155, line: 75, baseType: !284, size: 32, offset: 1856)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1154, file: !1155, line: 76, baseType: !1186, size: 192, offset: 1920)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1187, line: 9, size: 192, elements: !1188)
!1187 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1188 = !{!1189, !1190, !1194, !1195}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1186, file: !1187, line: 10, baseType: !605, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1186, file: !1187, line: 11, baseType: !1191, size: 64, offset: 64)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1193)
!1193 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1187, line: 7, flags: DIFlagFwdDecl)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1186, file: !1187, line: 12, baseType: !7, size: 32, offset: 128)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1186, file: !1187, line: 13, baseType: !657, size: 32, offset: 160)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1154, file: !1155, line: 77, baseType: !46, size: 64, offset: 2112)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !1154, file: !1155, line: 80, baseType: !1198, size: 8, offset: 2176)
!1198 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !32, line: 35, baseType: !1199)
!1199 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !1154, file: !1155, line: 88, baseType: !104, size: 128, offset: 2240)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !1154, file: !1155, line: 89, baseType: !1202, size: 64, offset: 2368)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1204, line: 195, size: 1728, elements: !1205)
!1204 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1205 = !{!1206, !1207, !1210, !1215, !1216, !1219, !1220, !1227, !1228, !1229, !1230, !1233, !1234, !1235, !1236, !1237, !1275, !1296}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1203, file: !1204, line: 196, baseType: !657, size: 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1203, file: !1204, line: 197, baseType: !1208, size: 32, offset: 32)
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1204, line: 28, baseType: !1209)
!1209 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !32, line: 104, baseType: !1094)
!1210 = !DIDerivedType(tag: DW_TAG_member, scope: !1203, file: !1204, line: 198, baseType: !1211, size: 192, offset: 64)
!1211 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1203, file: !1204, line: 198, size: 192, elements: !1212)
!1212 = !{!1213, !1214}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1211, file: !1204, line: 199, baseType: !104, size: 128)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1211, file: !1204, line: 200, baseType: !755, size: 192, align: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1203, file: !1204, line: 205, baseType: !1048, size: 320, offset: 256)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1203, file: !1204, line: 206, baseType: !1217, size: 64, offset: 576)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1204, line: 206, flags: DIFlagFwdDecl)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1203, file: !1204, line: 207, baseType: !27, size: 64, offset: 640)
!1220 = !DIDerivedType(tag: DW_TAG_member, scope: !1203, file: !1204, line: 208, baseType: !1221, size: 64, offset: 704)
!1221 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1203, file: !1204, line: 208, size: 64, elements: !1222)
!1222 = !{!1223, !1226}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1221, file: !1204, line: 209, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1225, line: 8, baseType: !612)
!1225 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1221, file: !1204, line: 210, baseType: !1224, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1203, file: !1204, line: 212, baseType: !1224, size: 64, offset: 768)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1203, file: !1204, line: 213, baseType: !275, size: 32, offset: 832)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1203, file: !1204, line: 214, baseType: !284, size: 32, offset: 864)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1203, file: !1204, line: 215, baseType: !1231, size: 32, offset: 896)
!1231 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1204, line: 31, baseType: !1232)
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !32, line: 110, baseType: !338)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1203, file: !1204, line: 216, baseType: !33, size: 16, offset: 928)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1203, file: !1204, line: 217, baseType: !33, size: 16, offset: 944)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1203, file: !1204, line: 221, baseType: !1146, size: 16, offset: 960)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1203, file: !1204, line: 228, baseType: !46, size: 64, offset: 1024)
!1237 = !DIDerivedType(tag: DW_TAG_member, scope: !1203, file: !1204, line: 245, baseType: !1238, size: 320, offset: 1088)
!1238 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1203, file: !1204, line: 245, size: 320, elements: !1239)
!1239 = !{!1240, !1267}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1238, file: !1204, line: 246, baseType: !1241, size: 320)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1204, line: 114, size: 320, elements: !1242)
!1242 = !{!1243, !1244, !1256, !1259, !1266}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1241, file: !1204, line: 116, baseType: !46, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, scope: !1241, file: !1204, line: 117, baseType: !1245, size: 64, offset: 64)
!1245 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1241, file: !1204, line: 117, size: 64, elements: !1246)
!1246 = !{!1247, !1255}
!1247 = !DIDerivedType(tag: DW_TAG_member, scope: !1245, file: !1204, line: 118, baseType: !1248, size: 64)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1245, file: !1204, line: 118, size: 64, elements: !1249)
!1249 = !{!1250, !1251}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1248, file: !1204, line: 120, baseType: !100, size: 16)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1248, file: !1204, line: 121, baseType: !1252, size: 48, offset: 16)
!1252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 48, elements: !1253)
!1253 = !{!1254}
!1254 = !DISubrange(count: 6)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1245, file: !1204, line: 127, baseType: !46, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1241, file: !1204, line: 129, baseType: !1257, size: 64, offset: 128)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1204, line: 102, flags: DIFlagFwdDecl)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1241, file: !1204, line: 130, baseType: !1260, size: 64, offset: 192)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1204, line: 108, size: 192, elements: !1262)
!1262 = !{!1263, !1264, !1265}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1261, file: !1204, line: 109, baseType: !592, size: 128, align: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1261, file: !1204, line: 110, baseType: !657, size: 32, offset: 128)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1261, file: !1204, line: 111, baseType: !1198, size: 8, offset: 160)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1241, file: !1204, line: 131, baseType: !23, size: 64, offset: 256)
!1267 = !DIDerivedType(tag: DW_TAG_member, scope: !1238, file: !1204, line: 247, baseType: !1268, size: 320)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1238, file: !1204, line: 247, size: 320, elements: !1269)
!1269 = !{!1270, !1271, !1272, !1273, !1274}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1268, file: !1204, line: 248, baseType: !46, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1268, file: !1204, line: 249, baseType: !46, size: 64, offset: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1268, file: !1204, line: 250, baseType: !1257, size: 64, offset: 128)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1268, file: !1204, line: 251, baseType: !1260, size: 64, offset: 192)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1268, file: !1204, line: 252, baseType: !407, size: 64, offset: 256)
!1275 = !DIDerivedType(tag: DW_TAG_member, scope: !1203, file: !1204, line: 260, baseType: !1276, size: 256, offset: 1408)
!1276 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1203, file: !1204, line: 260, size: 256, elements: !1277)
!1277 = !{!1278, !1284}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1276, file: !1204, line: 261, baseType: !1279, size: 256)
!1279 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1204, line: 134, size: 256, elements: !1280)
!1280 = !{!1281, !1282}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1279, file: !1204, line: 135, baseType: !27, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1279, file: !1204, line: 136, baseType: !1283, size: 256)
!1283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 256, elements: !675)
!1284 = !DIDerivedType(tag: DW_TAG_member, scope: !1276, file: !1204, line: 262, baseType: !1285, size: 256)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1276, file: !1204, line: 262, size: 256, elements: !1286)
!1286 = !{!1287, !1288}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1285, file: !1204, line: 264, baseType: !104, size: 128)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1285, file: !1204, line: 265, baseType: !1289, size: 128, offset: 128)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1290, line: 22, size: 128, elements: !1291)
!1290 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1291 = !{!1292, !1295}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1289, file: !1290, line: 23, baseType: !1293, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1290, line: 23, flags: DIFlagFwdDecl)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1289, file: !1290, line: 24, baseType: !46, size: 64, offset: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1203, file: !1204, line: 280, baseType: !1297, size: 64, offset: 1664)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1204, line: 176, size: 192, elements: !1299)
!1299 = !{!1300, !1309, !1310}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1298, file: !1204, line: 177, baseType: !1301, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1204, line: 171, baseType: !1302)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!29, !1202, !1305, !1307, !1202}
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1258)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1279)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1298, file: !1204, line: 178, baseType: !1202, size: 64, offset: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1298, file: !1204, line: 179, baseType: !1257, size: 64, offset: 128)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !1154, file: !1155, line: 90, baseType: !1048, size: 320, offset: 2432)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1154, file: !1155, line: 97, baseType: !1313, size: 256, offset: 2752)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1314, line: 98, size: 256, elements: !1315)
!1314 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1315 = !{!1316, !1317, !1318}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1313, file: !1314, line: 99, baseType: !605, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1313, file: !1314, line: 100, baseType: !104, size: 128, offset: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1313, file: !1314, line: 101, baseType: !1319, size: 64, offset: 192)
!1319 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1314, line: 21, baseType: !1320)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{null, !1323}
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1154, file: !1155, line: 99, baseType: !1325, size: 768, offset: 3008)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !19, line: 199, size: 768, elements: !1326)
!1326 = !{!1327, !1332}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1325, file: !19, line: 200, baseType: !1328, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!29, !1331}
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1325, file: !19, line: 201, baseType: !1333, size: 704, offset: 64)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !19, line: 193, size: 704, elements: !1334)
!1334 = !{!1335, !1393}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1333, file: !19, line: 195, baseType: !1336, size: 640)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !19, line: 173, size: 640, elements: !1337)
!1337 = !{!1338, !1350, !1362, !1363, !1383, !1384, !1386, !1392}
!1338 = !DIDerivedType(tag: DW_TAG_member, scope: !1336, file: !19, line: 174, baseType: !1339, size: 192)
!1339 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1336, file: !19, line: 174, size: 192, elements: !1340)
!1340 = !{!1341, !1349}
!1341 = !DIDerivedType(tag: DW_TAG_member, scope: !1339, file: !19, line: 175, baseType: !1342, size: 192)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1339, file: !19, line: 175, size: 192, elements: !1343)
!1343 = !{!1344, !1345, !1346, !1347, !1348}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1342, file: !19, line: 176, baseType: !40, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1342, file: !19, line: 177, baseType: !29, size: 32, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1342, file: !19, line: 178, baseType: !29, size: 32, offset: 96)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1342, file: !19, line: 179, baseType: !29, size: 32, offset: 128)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1342, file: !19, line: 180, baseType: !29, size: 32, offset: 160)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1339, file: !19, line: 182, baseType: !592, size: 128, align: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1336, file: !19, line: 184, baseType: !1351, size: 64, offset: 192)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1353, line: 26, size: 256, elements: !1354)
!1353 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1354 = !{!1355, !1356}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1352, file: !1353, line: 27, baseType: !7, size: 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1352, file: !1353, line: 28, baseType: !1357, size: 192, offset: 64)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1358, line: 43, size: 192, elements: !1359)
!1358 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1359 = !{!1360, !1361}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1357, file: !1358, line: 44, baseType: !619, size: 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1357, file: !1358, line: 45, baseType: !104, size: 128, offset: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1336, file: !19, line: 185, baseType: !40, size: 64, offset: 256)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1336, file: !19, line: 186, baseType: !1364, size: 64, offset: 320)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !19, line: 204, size: 960, elements: !1366)
!1366 = !{!1367, !1368, !1372, !1379}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1365, file: !19, line: 205, baseType: !1325, size: 768)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1365, file: !19, line: 206, baseType: !1369, size: 64, offset: 768)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!1331, !1364}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1365, file: !19, line: 207, baseType: !1373, size: 64, offset: 832)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{null, !1376, !1377, !1378}
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1365, file: !19, line: 209, baseType: !1380, size: 64, offset: 896)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!29, !1376, !40}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1336, file: !19, line: 187, baseType: !1331, size: 64, offset: 384)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1336, file: !19, line: 188, baseType: !1385, size: 64, offset: 448)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1336, file: !19, line: 189, baseType: !1387, size: 64, offset: 512)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !19, line: 157, size: 256, elements: !1389)
!1389 = !{!1390, !1391}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1388, file: !19, line: 158, baseType: !755, size: 192, align: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1388, file: !19, line: 159, baseType: !1376, size: 64, offset: 192)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1336, file: !19, line: 190, baseType: !666, size: 64, offset: 576)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1333, file: !19, line: 196, baseType: !887, size: 64, offset: 640)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !1154, file: !1155, line: 100, baseType: !1376, size: 64, offset: 3776)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1154, file: !1155, line: 102, baseType: !1396, size: 64, offset: 3840)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1155, line: 107, size: 1152, elements: !1398)
!1398 = !{!1399, !1400, !1401, !1402, !1403, !1407}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1397, file: !1155, line: 108, baseType: !670, size: 128)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1397, file: !1155, line: 109, baseType: !1153, size: 64, offset: 128)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1397, file: !1155, line: 110, baseType: !275, size: 32, offset: 192)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1397, file: !1155, line: 111, baseType: !56, size: 32, offset: 224)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1397, file: !1155, line: 112, baseType: !1404, size: 640, offset: 256)
!1404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !605, size: 640, elements: !1405)
!1405 = !{!1406}
!1406 = !DISubrange(count: 10)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1397, file: !1155, line: 113, baseType: !1408, size: 256, offset: 896)
!1408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !605, size: 256, elements: !675)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !1154, file: !1155, line: 103, baseType: !1410, size: 640, offset: 3904)
!1410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 640, elements: !1405)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !1154, file: !1155, line: 104, baseType: !1412, size: 256, offset: 4544)
!1412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 256, elements: !675)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1005, file: !136, line: 904, baseType: !579, size: 64, offset: 9280)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1005, file: !136, line: 906, baseType: !1415, size: 64, offset: 9344)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !136, line: 906, flags: DIFlagFwdDecl)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1005, file: !136, line: 930, baseType: !56, size: 32, offset: 9408)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1005, file: !136, line: 933, baseType: !56, size: 32, offset: 9440)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1005, file: !136, line: 935, baseType: !1420, size: 64, offset: 9472)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !121, line: 103, size: 64, elements: !1421)
!1421 = !{!1422}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1420, file: !121, line: 104, baseType: !1423, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !121, line: 101, flags: DIFlagFwdDecl)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1005, file: !136, line: 940, baseType: !605, size: 64, offset: 9536)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1005, file: !136, line: 942, baseType: !1313, size: 256, offset: 9600)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1002, file: !136, line: 986, baseType: !1428, offset: 10240)
!1428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, elements: !1429)
!1429 = !{!1430}
!1430 = !DISubrange(count: -1)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !707, file: !708, line: 882, baseType: !1001, size: 64, offset: 9792)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !707, file: !708, line: 884, baseType: !29, size: 32, offset: 9856)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !707, file: !708, line: 885, baseType: !29, size: 32, offset: 9888)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !707, file: !708, line: 886, baseType: !29, size: 32, offset: 9920)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !707, file: !708, line: 888, baseType: !29, size: 32, offset: 9952)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !707, file: !708, line: 890, baseType: !46, size: 64, offset: 9984)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !707, file: !708, line: 893, baseType: !7, size: 32, offset: 10048)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !707, file: !708, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !707, file: !708, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !707, file: !708, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !707, file: !708, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !707, file: !708, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !707, file: !708, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !707, file: !708, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !707, file: !708, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !707, file: !708, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !707, file: !708, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !707, file: !708, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !707, file: !708, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !707, file: !708, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !707, file: !708, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !707, file: !708, line: 969, baseType: !46, size: 64, offset: 10176)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !707, file: !708, line: 971, baseType: !1454, size: 448, offset: 10240)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !115, line: 25, size: 448, elements: !1455)
!1455 = !{!1456, !1457, !1462}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1454, file: !115, line: 26, baseType: !46, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1454, file: !115, line: 27, baseType: !1458, size: 64, offset: 64)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{!226, !1461}
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, scope: !1454, file: !115, line: 28, baseType: !1463, size: 320, offset: 128)
!1463 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1454, file: !115, line: 28, size: 320, elements: !1464)
!1464 = !{!1465, !1475, !1500}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1463, file: !115, line: 37, baseType: !1466, size: 320)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1463, file: !115, line: 30, size: 320, elements: !1467)
!1467 = !{!1468, !1470, !1471, !1472, !1473, !1474}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1466, file: !115, line: 31, baseType: !1469, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1466, file: !115, line: 32, baseType: !338, size: 32, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1466, file: !115, line: 33, baseType: !338, size: 32, offset: 96)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1466, file: !115, line: 34, baseType: !338, size: 32, offset: 128)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1466, file: !115, line: 35, baseType: !228, size: 64, offset: 192)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1466, file: !115, line: 36, baseType: !1469, size: 64, offset: 256)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1463, file: !115, line: 47, baseType: !1476, size: 192)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1463, file: !115, line: 39, size: 192, elements: !1477)
!1477 = !{!1478, !1479, !1480, !1499}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1476, file: !115, line: 40, baseType: !872, size: 32)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1476, file: !115, line: 41, baseType: !114, size: 32, offset: 32)
!1480 = !DIDerivedType(tag: DW_TAG_member, scope: !1476, file: !115, line: 42, baseType: !1481, size: 64, offset: 64)
!1481 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1476, file: !115, line: 42, size: 64, elements: !1482)
!1482 = !{!1483, !1491}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1481, file: !115, line: 43, baseType: !1484, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1486, line: 7, size: 128, elements: !1487)
!1486 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1487 = !{!1488, !1490}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1485, file: !1486, line: 8, baseType: !1489, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !44, line: 93, baseType: !50)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1485, file: !1486, line: 9, baseType: !50, size: 64, offset: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1481, file: !115, line: 44, baseType: !1492, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1494, line: 7, size: 64, elements: !1495)
!1494 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1495 = !{!1496, !1498}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1493, file: !1494, line: 8, baseType: !1497, size: 32)
!1497 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1494, line: 5, baseType: !1094)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1493, file: !1494, line: 9, baseType: !1094, size: 32, offset: 32)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1476, file: !115, line: 46, baseType: !228, size: 64, offset: 128)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1463, file: !115, line: 55, baseType: !1501, size: 256)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1463, file: !115, line: 49, size: 256, elements: !1502)
!1502 = !{!1503, !1506, !1507, !1508, !1509}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1501, file: !115, line: 50, baseType: !1504, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !115, line: 14, flags: DIFlagFwdDecl)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1501, file: !115, line: 51, baseType: !29, size: 32, offset: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1501, file: !115, line: 52, baseType: !29, size: 32, offset: 96)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1501, file: !115, line: 53, baseType: !46, size: 64, offset: 128)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1501, file: !115, line: 54, baseType: !46, size: 64, offset: 192)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !707, file: !708, line: 973, baseType: !1511, size: 32, offset: 10688)
!1511 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !32, line: 27, baseType: !1512)
!1512 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !44, line: 28, baseType: !29)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !707, file: !708, line: 974, baseType: !1511, size: 32, offset: 10720)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !707, file: !708, line: 978, baseType: !46, size: 64, offset: 10752)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !707, file: !708, line: 987, baseType: !706, size: 64, offset: 10816)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !707, file: !708, line: 990, baseType: !706, size: 64, offset: 10880)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !707, file: !708, line: 995, baseType: !104, size: 128, offset: 10944)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !707, file: !708, line: 996, baseType: !104, size: 128, offset: 11072)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !707, file: !708, line: 997, baseType: !706, size: 64, offset: 11200)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !707, file: !708, line: 1005, baseType: !104, size: 128, offset: 11264)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !707, file: !708, line: 1006, baseType: !104, size: 128, offset: 11392)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !707, file: !708, line: 1009, baseType: !653, size: 64, offset: 11520)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !707, file: !708, line: 1010, baseType: !1524, size: 512, offset: 11584)
!1524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !670, size: 512, elements: !675)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !707, file: !708, line: 1011, baseType: !104, size: 128, offset: 12096)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !707, file: !708, line: 1012, baseType: !104, size: 128, offset: 12224)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !707, file: !708, line: 1014, baseType: !1351, size: 64, offset: 12352)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !707, file: !708, line: 1017, baseType: !239, size: 64, offset: 12416)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !707, file: !708, line: 1020, baseType: !239, size: 64, offset: 12480)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !707, file: !708, line: 1023, baseType: !27, size: 64, offset: 12544)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !707, file: !708, line: 1025, baseType: !228, size: 64, offset: 12608)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !707, file: !708, line: 1026, baseType: !228, size: 64, offset: 12672)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !707, file: !708, line: 1031, baseType: !228, size: 64, offset: 12736)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !707, file: !708, line: 1032, baseType: !1535, size: 192, offset: 12800)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !708, line: 324, size: 192, elements: !1536)
!1536 = !{!1537, !1538, !1539}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1535, file: !708, line: 326, baseType: !228, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1535, file: !708, line: 327, baseType: !228, size: 64, offset: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1535, file: !708, line: 328, baseType: !619, size: 32, offset: 128)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !707, file: !708, line: 1041, baseType: !46, size: 64, offset: 12992)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !707, file: !708, line: 1042, baseType: !46, size: 64, offset: 13056)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !707, file: !708, line: 1045, baseType: !228, size: 64, offset: 13120)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !707, file: !708, line: 1048, baseType: !228, size: 64, offset: 13184)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !707, file: !708, line: 1051, baseType: !46, size: 64, offset: 13248)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !707, file: !708, line: 1052, baseType: !46, size: 64, offset: 13312)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !707, file: !708, line: 1055, baseType: !1547, size: 640, offset: 13376)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1548, line: 132, size: 640, elements: !1549)
!1548 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1549 = !{!1550, !1556, !1557}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1547, file: !1548, line: 133, baseType: !1551, size: 576)
!1551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1552, size: 576, elements: !507)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1548, line: 117, size: 192, elements: !1553)
!1553 = !{!1554, !1555}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1552, file: !1548, line: 118, baseType: !228, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1552, file: !1548, line: 119, baseType: !881, size: 128, offset: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1547, file: !1548, line: 134, baseType: !7, size: 32, offset: 576)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1547, file: !1548, line: 135, baseType: !7, size: 32, offset: 608)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !707, file: !708, line: 1058, baseType: !1559, size: 448, offset: 14016)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1548, line: 144, size: 448, elements: !1560)
!1560 = !{!1561, !1562, !1563}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1559, file: !1548, line: 145, baseType: !592, size: 128, align: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1559, file: !1548, line: 146, baseType: !614, size: 256, offset: 128)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1559, file: !1548, line: 147, baseType: !7, size: 32, offset: 384)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !707, file: !708, line: 1064, baseType: !1565, size: 64, offset: 14464)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1567)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1568, line: 110, size: 1472, elements: !1569)
!1568 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1569 = !{!1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1619, !1620, !1621, !1629}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1567, file: !1568, line: 111, baseType: !605, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1567, file: !1568, line: 112, baseType: !275, size: 32, offset: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1567, file: !1568, line: 113, baseType: !284, size: 32, offset: 96)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1567, file: !1568, line: 114, baseType: !275, size: 32, offset: 128)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1567, file: !1568, line: 115, baseType: !284, size: 32, offset: 160)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1567, file: !1568, line: 116, baseType: !275, size: 32, offset: 192)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1567, file: !1568, line: 117, baseType: !284, size: 32, offset: 224)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1567, file: !1568, line: 118, baseType: !275, size: 32, offset: 256)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1567, file: !1568, line: 119, baseType: !284, size: 32, offset: 288)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1567, file: !1568, line: 120, baseType: !7, size: 32, offset: 320)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1567, file: !1568, line: 121, baseType: !1581, size: 64, offset: 384)
!1581 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1582, line: 24, baseType: !1583)
!1582 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1582, line: 24, size: 64, elements: !1584)
!1584 = !{!1585}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1583, file: !1582, line: 24, baseType: !228, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1567, file: !1568, line: 122, baseType: !1581, size: 64, offset: 448)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1567, file: !1568, line: 123, baseType: !1581, size: 64, offset: 512)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1567, file: !1568, line: 124, baseType: !1581, size: 64, offset: 576)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1567, file: !1568, line: 125, baseType: !1581, size: 64, offset: 640)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1567, file: !1568, line: 127, baseType: !94, size: 8, offset: 704)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1567, file: !1568, line: 129, baseType: !1202, size: 64, offset: 768)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1567, file: !1568, line: 130, baseType: !1202, size: 64, offset: 832)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1567, file: !1568, line: 131, baseType: !1202, size: 64, offset: 896)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1567, file: !1568, line: 132, baseType: !1202, size: 64, offset: 960)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1567, file: !1568, line: 135, baseType: !27, size: 64, offset: 1024)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1567, file: !1568, line: 137, baseType: !1597, size: 64, offset: 1088)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1599, line: 14, size: 1088, elements: !1600)
!1599 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1600 = !{!1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1598, file: !1599, line: 15, baseType: !657, size: 32)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1598, file: !1599, line: 17, baseType: !1086, size: 320, offset: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1598, file: !1599, line: 19, baseType: !46, size: 64, offset: 384)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1598, file: !1599, line: 20, baseType: !605, size: 64, offset: 448)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1598, file: !1599, line: 23, baseType: !670, size: 128, offset: 512)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1598, file: !1599, line: 24, baseType: !275, size: 32, offset: 640)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1598, file: !1599, line: 29, baseType: !605, size: 64, offset: 704)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1598, file: !1599, line: 36, baseType: !1609, size: 320, offset: 768)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1610, line: 15, size: 320, elements: !1611)
!1610 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1611 = !{!1612, !1613, !1614, !1615, !1616, !1617, !1618}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1609, file: !1610, line: 16, baseType: !619, size: 32)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1609, file: !1610, line: 18, baseType: !29, size: 32, offset: 32)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1609, file: !1610, line: 19, baseType: !29, size: 32, offset: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1609, file: !1610, line: 20, baseType: !29, size: 32, offset: 96)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1609, file: !1610, line: 21, baseType: !29, size: 32, offset: 128)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1609, file: !1610, line: 22, baseType: !46, size: 64, offset: 192)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1609, file: !1610, line: 23, baseType: !46, size: 64, offset: 256)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1567, file: !1568, line: 138, baseType: !1153, size: 64, offset: 1152)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1567, file: !1568, line: 139, baseType: !1396, size: 64, offset: 1216)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1567, file: !1568, line: 140, baseType: !1622, size: 64, offset: 1280)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1568, line: 25, size: 64, elements: !1624)
!1624 = !{!1625, !1626, !1627}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1623, file: !1568, line: 26, baseType: !56, size: 32)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1623, file: !1568, line: 27, baseType: !29, size: 32, offset: 32)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1623, file: !1568, line: 28, baseType: !1628, offset: 64)
!1628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, elements: !1429)
!1629 = !DIDerivedType(tag: DW_TAG_member, scope: !1567, file: !1568, line: 142, baseType: !1630, size: 128, offset: 1344)
!1630 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1567, file: !1568, line: 142, size: 128, elements: !1631)
!1631 = !{!1632, !1633}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1630, file: !1568, line: 143, baseType: !29, size: 32)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1630, file: !1568, line: 144, baseType: !592, size: 128, align: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !707, file: !708, line: 1067, baseType: !1565, size: 64, offset: 14528)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !707, file: !708, line: 1070, baseType: !1565, size: 64, offset: 14592)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !707, file: !708, line: 1074, baseType: !1202, size: 64, offset: 14656)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !707, file: !708, line: 1084, baseType: !1638, size: 128, offset: 14720)
!1638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 128, elements: !1639)
!1639 = !{!1640}
!1640 = !DISubrange(count: 16)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !707, file: !708, line: 1086, baseType: !1642, size: 64, offset: 14848)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !708, line: 55, flags: DIFlagFwdDecl)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !707, file: !708, line: 1089, baseType: !1645, size: 64, offset: 14912)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1646, line: 12, size: 64, elements: !1647)
!1646 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1647 = !{!1648}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1645, file: !1646, line: 13, baseType: !1649, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1646, line: 8, flags: DIFlagFwdDecl)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !707, file: !708, line: 1090, baseType: !1652, size: 128, offset: 14976)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1653, line: 13, size: 128, elements: !1654)
!1653 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1654 = !{!1655}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1652, file: !1653, line: 14, baseType: !104, size: 128)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !707, file: !708, line: 1097, baseType: !1657, size: 64, offset: 15104)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !708, line: 50, flags: DIFlagFwdDecl)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !707, file: !708, line: 1100, baseType: !1660, size: 64, offset: 15168)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !708, line: 1100, flags: DIFlagFwdDecl)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !707, file: !708, line: 1103, baseType: !1663, size: 64, offset: 15232)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !708, line: 53, flags: DIFlagFwdDecl)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !707, file: !708, line: 1107, baseType: !1666, size: 64, offset: 15296)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1668, line: 31, size: 576, elements: !1669)
!1668 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!1669 = !{!1670, !1671, !1692, !1695, !1698, !1699, !2779, !2782, !2783}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1667, file: !1668, line: 32, baseType: !657, size: 32)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1667, file: !1668, line: 33, baseType: !1672, size: 64, offset: 64)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1674, line: 24, size: 3456, elements: !1675)
!1674 = !DIFile(filename: "./include/linux/utsname.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d7c7738a60e085c4dfa8b09989fd6dce")
!1675 = !{!1676, !1689, !1690, !1691}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1673, file: !1674, line: 25, baseType: !1677, size: 3120)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "new_utsname", file: !1678, line: 25, size: 3120, elements: !1679)
!1678 = !DIFile(filename: "./include/uapi/linux/utsname.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ce568c2f88d7dce3b32bd7d3c8b00b87")
!1679 = !{!1680, !1684, !1685, !1686, !1687, !1688}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "sysname", scope: !1677, file: !1678, line: 26, baseType: !1681, size: 520)
!1681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 520, elements: !1682)
!1682 = !{!1683}
!1683 = !DISubrange(count: 65)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !1677, file: !1678, line: 27, baseType: !1681, size: 520, offset: 520)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1677, file: !1678, line: 28, baseType: !1681, size: 520, offset: 1040)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1677, file: !1678, line: 29, baseType: !1681, size: 520, offset: 1560)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1677, file: !1678, line: 30, baseType: !1681, size: 520, offset: 2080)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "domainname", scope: !1677, file: !1678, line: 31, baseType: !1681, size: 520, offset: 2600)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1673, file: !1674, line: 26, baseType: !1153, size: 64, offset: 3136)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1673, file: !1674, line: 27, baseType: !1396, size: 64, offset: 3200)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1673, file: !1674, line: 28, baseType: !1186, size: 192, offset: 3264)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1667, file: !1668, line: 34, baseType: !1693, size: 64, offset: 128)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1668, line: 10, flags: DIFlagFwdDecl)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1667, file: !1668, line: 35, baseType: !1696, size: 64, offset: 192)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1668, line: 8, flags: DIFlagFwdDecl)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1667, file: !1668, line: 36, baseType: !686, size: 64, offset: 256)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1667, file: !1668, line: 37, baseType: !1700, size: 64, offset: 320)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1702, line: 61, size: 27648, elements: !1703)
!1702 = !DIFile(filename: "./include/net/net_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9448d530239774cde6340b292589a220")
!1703 = !{!1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1723, !1724, !1725, !1729, !1730, !1731, !1734, !1735, !1738, !1740, !1741, !1742, !1757, !1758, !1762, !1763, !1775, !1845, !1851, !1863, !1876, !2455, !2626, !2646, !2704, !2707, !2721, !2777, !2778}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "passive", scope: !1701, file: !1702, line: 65, baseType: !657, size: 32)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "rules_mod_lock", scope: !1701, file: !1702, line: 68, baseType: !66, size: 32, offset: 32)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "dev_unreg_count", scope: !1701, file: !1702, line: 70, baseType: !56, size: 32, offset: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "dev_base_seq", scope: !1701, file: !1702, line: 72, baseType: !7, size: 32, offset: 96)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !1701, file: !1702, line: 73, baseType: !338, size: 32, offset: 128)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "nsid_lock", scope: !1701, file: !1702, line: 75, baseType: !66, size: 32, offset: 160)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "fnhe_genid", scope: !1701, file: !1702, line: 76, baseType: !56, size: 32, offset: 192)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1701, file: !1702, line: 78, baseType: !104, size: 128, offset: 256)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "exit_list", scope: !1701, file: !1702, line: 79, baseType: !104, size: 128, offset: 384)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "defer_free_list", scope: !1701, file: !1702, line: 85, baseType: !586, size: 64, offset: 512)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_list", scope: !1701, file: !1702, line: 86, baseType: !586, size: 64, offset: 576)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "key_domain", scope: !1701, file: !1702, line: 89, baseType: !1260, size: 64, offset: 640)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1701, file: !1702, line: 91, baseType: !1153, size: 64, offset: 704)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1701, file: !1702, line: 92, baseType: !1396, size: 64, offset: 768)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "netns_ids", scope: !1701, file: !1702, line: 93, baseType: !691, size: 192, offset: 832)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1701, file: !1702, line: 95, baseType: !1186, size: 192, offset: 1024)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt_tracker", scope: !1701, file: !1702, line: 96, baseType: !1721, offset: 1216)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ref_tracker_dir", file: !1722, line: 11, elements: !1022)
!1722 = !DIFile(filename: "./include/linux/ref_tracker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2430b45a012be0c6416a948c13597f4b")
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "notrefcnt_tracker", scope: !1701, file: !1702, line: 97, baseType: !1721, offset: 1216)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "dev_base_head", scope: !1701, file: !1702, line: 100, baseType: !104, size: 128, offset: 1216)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "proc_net", scope: !1701, file: !1702, line: 101, baseType: !1726, size: 64, offset: 1344)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !1728, line: 131, flags: DIFlagFwdDecl)
!1728 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "proc_net_stat", scope: !1701, file: !1702, line: 102, baseType: !1726, size: 64, offset: 1408)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !1701, file: !1702, line: 105, baseType: !1325, size: 768, offset: 1472)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "rtnl", scope: !1701, file: !1702, line: 108, baseType: !1732, size: 64, offset: 2240)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !152, line: 19, flags: DIFlagFwdDecl)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "genl_sock", scope: !1701, file: !1702, line: 109, baseType: !1732, size: 64, offset: 2304)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_sock", scope: !1701, file: !1702, line: 111, baseType: !1736, size: 64, offset: 2368)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DICompositeType(tag: DW_TAG_structure_type, name: "uevent_sock", file: !1702, line: 53, flags: DIFlagFwdDecl)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name_head", scope: !1701, file: !1702, line: 113, baseType: !1739, size: 64, offset: 2432)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "dev_index_head", scope: !1701, file: !1702, line: 114, baseType: !1739, size: 64, offset: 2496)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "dev_by_index", scope: !1701, file: !1702, line: 115, baseType: !695, size: 128, offset: 2560)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "netdev_chain", scope: !1701, file: !1702, line: 116, baseType: !1743, size: 64, offset: 2688)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_notifier_head", file: !1744, line: 70, size: 64, elements: !1745)
!1744 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!1745 = !{!1746}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1743, file: !1744, line: 71, baseType: !1747, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !1744, line: 54, size: 192, elements: !1749)
!1749 = !{!1750, !1755, !1756}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !1748, file: !1744, line: 55, baseType: !1751, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !1744, line: 51, baseType: !1752)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!29, !1747, !46, !27}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1748, file: !1744, line: 56, baseType: !1747, size: 64, offset: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1748, file: !1744, line: 57, baseType: !29, size: 32, offset: 128)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "hash_mix", scope: !1701, file: !1702, line: 121, baseType: !338, size: 32, offset: 2752)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "loopback_dev", scope: !1701, file: !1702, line: 123, baseType: !1759, size: 64, offset: 2816)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DICompositeType(tag: DW_TAG_structure_type, name: "net_device", file: !1761, line: 10, flags: DIFlagFwdDecl)
!1761 = !DIFile(filename: "./include/net/dst_ops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0ddc782c85737bd5bc289b976340e94f")
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "rules_ops", scope: !1701, file: !1702, line: 126, baseType: !104, size: 128, offset: 2880)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "core", scope: !1701, file: !1702, line: 128, baseType: !1764, size: 256, offset: 3008)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_core", file: !1765, line: 11, size: 256, elements: !1766)
!1765 = !DIFile(filename: "./include/net/netns/core.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18c9bedf6eb8c587f29284e442644416")
!1766 = !{!1767, !1768, !1769, !1770, !1773}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_hdr", scope: !1764, file: !1765, line: 13, baseType: !1376, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_somaxconn", scope: !1764, file: !1765, line: 15, baseType: !29, size: 32, offset: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_txrehash", scope: !1764, file: !1765, line: 16, baseType: !90, size: 8, offset: 96)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "prot_inuse", scope: !1764, file: !1765, line: 19, baseType: !1771, size: 64, offset: 128)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DICompositeType(tag: DW_TAG_structure_type, name: "prot_inuse", file: !1765, line: 8, flags: DIFlagFwdDecl)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "rps_default_mask", scope: !1764, file: !1765, line: 23, baseType: !1774, size: 64, offset: 192)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "mib", scope: !1701, file: !1702, line: 129, baseType: !1776, size: 832, offset: 3264)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_mib", file: !1777, line: 7, size: 832, elements: !1778)
!1777 = !DIFile(filename: "./include/net/netns/mib.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ba22b1e9bdeaf8d7b85d4f8f9594169")
!1778 = !{!1779, !1791, !1792, !1798, !1806, !1812, !1813, !1814, !1815, !1823, !1831, !1839, !1844}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "ip_statistics", scope: !1776, file: !1777, line: 8, baseType: !1780, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipstats_mib", file: !1782, line: 51, size: 2432, elements: !1783)
!1782 = !DIFile(filename: "./include/net/snmp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b4e66422a0c08c32beca5964652b5d9b")
!1783 = !{!1784, !1788}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "mibs", scope: !1781, file: !1782, line: 53, baseType: !1785, size: 2432)
!1785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 2432, elements: !1786)
!1786 = !{!1787}
!1787 = !DISubrange(count: 38)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "syncp", scope: !1781, file: !1782, line: 54, baseType: !1789, offset: 2432)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !1790, line: 64, elements: !1022)
!1790 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6_statistics", scope: !1776, file: !1777, line: 10, baseType: !1780, size: 64, offset: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_statistics", scope: !1776, file: !1777, line: 13, baseType: !1793, size: 64, offset: 128)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_mib", file: !1782, line: 92, size: 1024, elements: !1795)
!1795 = !{!1796}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "mibs", scope: !1794, file: !1782, line: 93, baseType: !1797, size: 1024)
!1797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 1024, elements: !1639)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "net_statistics", scope: !1776, file: !1777, line: 14, baseType: !1799, size: 64, offset: 192)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linux_mib", file: !1782, line: 104, size: 8128, elements: !1801)
!1801 = !{!1802}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "mibs", scope: !1800, file: !1782, line: 105, baseType: !1803, size: 8128)
!1803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 8128, elements: !1804)
!1804 = !{!1805}
!1805 = !DISubrange(count: 127)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "udp_statistics", scope: !1776, file: !1777, line: 16, baseType: !1807, size: 64, offset: 256)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "udp_mib", file: !1782, line: 98, size: 640, elements: !1809)
!1809 = !{!1810}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "mibs", scope: !1808, file: !1782, line: 99, baseType: !1811, size: 640)
!1811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 640, elements: !1405)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "udp_stats_in6", scope: !1776, file: !1777, line: 18, baseType: !1807, size: 64, offset: 320)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "udplite_statistics", scope: !1776, file: !1777, line: 31, baseType: !1807, size: 64, offset: 384)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "udplite_stats_in6", scope: !1776, file: !1777, line: 33, baseType: !1807, size: 64, offset: 448)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "icmp_statistics", scope: !1776, file: !1777, line: 36, baseType: !1816, size: 64, offset: 512)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmp_mib", file: !1782, line: 59, size: 1920, elements: !1818)
!1818 = !{!1819}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "mibs", scope: !1817, file: !1782, line: 60, baseType: !1820, size: 1920)
!1820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 1920, elements: !1821)
!1821 = !{!1822}
!1822 = !DISubrange(count: 30)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "icmpmsg_statistics", scope: !1776, file: !1777, line: 37, baseType: !1824, size: 64, offset: 576)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmpmsg_mib", file: !1782, line: 64, size: 32768, elements: !1826)
!1826 = !{!1827}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "mibs", scope: !1825, file: !1782, line: 65, baseType: !1828, size: 32768)
!1828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !605, size: 32768, elements: !1829)
!1829 = !{!1830}
!1830 = !DISubrange(count: 512)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "icmpv6_statistics", scope: !1776, file: !1777, line: 39, baseType: !1832, size: 64, offset: 640)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmpv6_mib", file: !1782, line: 71, size: 448, elements: !1834)
!1834 = !{!1835}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "mibs", scope: !1833, file: !1782, line: 72, baseType: !1836, size: 448)
!1836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 448, elements: !1837)
!1837 = !{!1838}
!1838 = !DISubrange(count: 7)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "icmpv6msg_statistics", scope: !1776, file: !1777, line: 40, baseType: !1840, size: 64, offset: 704)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmpv6msg_mib", file: !1782, line: 81, size: 32768, elements: !1842)
!1842 = !{!1843}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "mibs", scope: !1841, file: !1782, line: 82, baseType: !1828, size: 32768)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "proc_net_devsnmp6", scope: !1776, file: !1777, line: 41, baseType: !1726, size: 64, offset: 768)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !1701, file: !1702, line: 130, baseType: !1846, size: 320, offset: 4096)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_packet", file: !1847, line: 11, size: 320, elements: !1848)
!1847 = !DIFile(filename: "./include/net/netns/packet.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9993c7d0edda08e4a61acc9b7e9bef6b")
!1848 = !{!1849, !1850}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "sklist_lock", scope: !1846, file: !1847, line: 12, baseType: !614, size: 256)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "sklist", scope: !1846, file: !1847, line: 13, baseType: !666, size: 64, offset: 256)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "unx", scope: !1701, file: !1702, line: 132, baseType: !1852, size: 256, offset: 4416)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_unix", file: !1853, line: 16, size: 256, elements: !1854)
!1853 = !DIFile(filename: "./include/net/netns/unix.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9b0a0c994514b5bcede3924402949afb")
!1854 = !{!1855, !1861, !1862}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !1852, file: !1853, line: 17, baseType: !1856, size: 128)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unix_table", file: !1853, line: 10, size: 128, elements: !1857)
!1857 = !{!1858, !1860}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "locks", scope: !1856, file: !1853, line: 11, baseType: !1859, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "buckets", scope: !1856, file: !1853, line: 12, baseType: !1739, size: 64, offset: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_max_dgram_qlen", scope: !1852, file: !1853, line: 18, baseType: !29, size: 32, offset: 128)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "ctl", scope: !1852, file: !1853, line: 19, baseType: !1376, size: 64, offset: 192)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "nexthop", scope: !1701, file: !1702, line: 134, baseType: !1864, size: 576, offset: 4672)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_nexthop", file: !1865, line: 12, size: 576, elements: !1866)
!1865 = !DIFile(filename: "./include/net/netns/nexthop.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9226e726e069a329f5fede8d471a5b93")
!1866 = !{!1867, !1868, !1869, !1870, !1871}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1864, file: !1865, line: 13, baseType: !887, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "devhash", scope: !1864, file: !1865, line: 14, baseType: !1739, size: 64, offset: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1864, file: !1865, line: 16, baseType: !7, size: 32, offset: 128)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_allocated", scope: !1864, file: !1865, line: 17, baseType: !338, size: 32, offset: 160)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_chain", scope: !1864, file: !1865, line: 18, baseType: !1872, size: 384, offset: 192)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !1744, line: 65, size: 384, elements: !1873)
!1873 = !{!1874, !1875}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !1872, file: !1744, line: 66, baseType: !1048, size: 320)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1872, file: !1744, line: 67, baseType: !1747, size: 64, offset: 320)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4", scope: !1701, file: !1702, line: 135, baseType: !1877, size: 5632, offset: 5632)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_ipv4", file: !1878, line: 44, size: 5632, elements: !1879)
!1878 = !DIFile(filename: "./include/net/netns/ipv4.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "984d85e204c6d0b56270eed465b5c766")
!1879 = !{!1880, !1888, !1891, !1892, !1893, !1894, !1895, !1896, !1899, !1900, !1903, !1904, !1907, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1922, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2404, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2431, !2432, !2433, !2434, !2435, !2438, !2439, !2440, !2441, !2444, !2445, !2446, !2447, !2448}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_death_row", scope: !1877, file: !1878, line: 45, baseType: !1881, size: 1024)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inet_timewait_death_row", file: !1878, line: 34, size: 1024, elements: !1882)
!1882 = !{!1883, !1884, !1887}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "tw_refcount", scope: !1881, file: !1878, line: 35, baseType: !657, size: 32)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "hashinfo", scope: !1881, file: !1878, line: 38, baseType: !1885, size: 64, align: 512, offset: 512)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DICompositeType(tag: DW_TAG_structure_type, name: "inet_hashinfo", file: !1878, line: 32, flags: DIFlagFwdDecl)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_max_tw_buckets", scope: !1881, file: !1878, line: 39, baseType: !29, size: 32, offset: 576)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "udp_table", scope: !1877, file: !1878, line: 46, baseType: !1889, size: 64, offset: 1024)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DICompositeType(tag: DW_TAG_structure_type, name: "udp_table", file: !1878, line: 46, flags: DIFlagFwdDecl)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "forw_hdr", scope: !1877, file: !1878, line: 49, baseType: !1376, size: 64, offset: 1088)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "frags_hdr", scope: !1877, file: !1878, line: 50, baseType: !1376, size: 64, offset: 1152)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4_hdr", scope: !1877, file: !1878, line: 51, baseType: !1376, size: 64, offset: 1216)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "route_hdr", scope: !1877, file: !1878, line: 52, baseType: !1376, size: 64, offset: 1280)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "xfrm4_hdr", scope: !1877, file: !1878, line: 53, baseType: !1376, size: 64, offset: 1344)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "devconf_all", scope: !1877, file: !1878, line: 55, baseType: !1897, size: 64, offset: 1408)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipv4_devconf", file: !1878, line: 16, flags: DIFlagFwdDecl)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "devconf_dflt", scope: !1877, file: !1878, line: 56, baseType: !1897, size: 64, offset: 1472)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "ra_chain", scope: !1877, file: !1878, line: 57, baseType: !1901, size: 64, offset: 1536)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DICompositeType(tag: DW_TAG_structure_type, name: "ip_ra_chain", file: !1878, line: 57, flags: DIFlagFwdDecl)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "ra_mutex", scope: !1877, file: !1878, line: 58, baseType: !614, size: 256, offset: 1600)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "rules_ops", scope: !1877, file: !1878, line: 60, baseType: !1905, size: 64, offset: 1856)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DICompositeType(tag: DW_TAG_structure_type, name: "fib_rules_ops", file: !1878, line: 17, flags: DIFlagFwdDecl)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "fib_main", scope: !1877, file: !1878, line: 61, baseType: !1908, size: 64, offset: 1920)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DICompositeType(tag: DW_TAG_structure_type, name: "fib_table", file: !1878, line: 19, flags: DIFlagFwdDecl)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "fib_default", scope: !1877, file: !1878, line: 62, baseType: !1908, size: 64, offset: 1984)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "fib_rules_require_fldissect", scope: !1877, file: !1878, line: 63, baseType: !7, size: 32, offset: 2048)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "fib_has_custom_rules", scope: !1877, file: !1878, line: 64, baseType: !1198, size: 8, offset: 2080)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "fib_has_custom_local_routes", scope: !1877, file: !1878, line: 66, baseType: !1198, size: 8, offset: 2088)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "fib_offload_disabled", scope: !1877, file: !1878, line: 67, baseType: !1198, size: 8, offset: 2096)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_shrink_window", scope: !1877, file: !1878, line: 68, baseType: !90, size: 8, offset: 2104)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "fib_table_hash", scope: !1877, file: !1878, line: 72, baseType: !1739, size: 64, offset: 2112)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "fibnl", scope: !1877, file: !1878, line: 73, baseType: !1732, size: 64, offset: 2176)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "mc_autojoin_sk", scope: !1877, file: !1878, line: 75, baseType: !1732, size: 64, offset: 2240)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "peers", scope: !1877, file: !1878, line: 77, baseType: !1920, size: 64, offset: 2304)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DICompositeType(tag: DW_TAG_structure_type, name: "inet_peer_base", file: !1878, line: 77, flags: DIFlagFwdDecl)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "fqdir", scope: !1877, file: !1878, line: 78, baseType: !1923, size: 64, offset: 2368)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fqdir", file: !1925, line: 13, size: 2560, elements: !1926)
!1925 = !DIFile(filename: "./include/net/inet_frag.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0fbce9165be02acf2490f91012eb3f9")
!1926 = !{!1927, !1928, !1929, !1930, !1931, !2294, !2295, !2296, !2297, !2298, !2299}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "high_thresh", scope: !1924, file: !1925, line: 15, baseType: !226, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "low_thresh", scope: !1924, file: !1925, line: 16, baseType: !226, size: 64, offset: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1924, file: !1925, line: 17, baseType: !29, size: 32, offset: 128)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "max_dist", scope: !1924, file: !1925, line: 18, baseType: !29, size: 32, offset: 160)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1924, file: !1925, line: 19, baseType: !1932, size: 64, offset: 192)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inet_frags", file: !1925, line: 107, size: 1024, elements: !1934)
!1934 = !{!1935, !1936, !2241, !2245, !2246, !2250, !2251, !2292, !2293}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "qsize", scope: !1933, file: !1925, line: 108, baseType: !7, size: 32)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !1933, file: !1925, line: 110, baseType: !1937, size: 64, offset: 64)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{null, !1940, !1127}
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inet_frag_queue", file: !1925, line: 85, size: 1408, elements: !1942)
!1942 = !{!1943, !1949, !1984, !1996, !1997, !1998, !1999, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1941, file: !1925, line: 86, baseType: !1944, size: 64)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !1945, line: 17, size: 64, elements: !1946)
!1945 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!1946 = !{!1947}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1944, file: !1945, line: 18, baseType: !1948, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1941, file: !1925, line: 90, baseType: !1950, size: 352, offset: 64)
!1950 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1941, file: !1925, line: 87, size: 352, elements: !1951)
!1951 = !{!1952, !1964}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !1950, file: !1925, line: 88, baseType: !1953, size: 160)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frag_v4_compare_key", file: !1925, line: 48, size: 160, elements: !1954)
!1954 = !{!1955, !1958, !1959, !1960, !1961, !1963}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !1953, file: !1925, line: 49, baseType: !1956, size: 32)
!1956 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !1957, line: 39, baseType: !339)
!1957 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "daddr", scope: !1953, file: !1925, line: 50, baseType: !1956, size: 32, offset: 32)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1953, file: !1925, line: 51, baseType: !338, size: 32, offset: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "vif", scope: !1953, file: !1925, line: 52, baseType: !338, size: 32, offset: 96)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1953, file: !1925, line: 53, baseType: !1962, size: 16, offset: 128)
!1962 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !1957, line: 37, baseType: !101)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !1953, file: !1925, line: 54, baseType: !100, size: 16, offset: 144)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !1950, file: !1925, line: 89, baseType: !1965, size: 352)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frag_v6_compare_key", file: !1925, line: 57, size: 352, elements: !1966)
!1966 = !{!1967, !1980, !1981, !1982, !1983}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !1965, file: !1925, line: 58, baseType: !1968, size: 128)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !1969, line: 33, size: 128, elements: !1970)
!1969 = !DIFile(filename: "./include/uapi/linux/in6.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11968d76cd940ab2457ae2228c519d4f")
!1970 = !{!1971}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "in6_u", scope: !1968, file: !1969, line: 40, baseType: !1972, size: 128)
!1972 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1968, file: !1969, line: 34, size: 128, elements: !1973)
!1973 = !{!1974, !1976, !1978}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "u6_addr8", scope: !1972, file: !1969, line: 35, baseType: !1975, size: 128)
!1975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 128, elements: !1639)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "u6_addr16", scope: !1972, file: !1969, line: 37, baseType: !1977, size: 128)
!1977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1962, size: 128, elements: !868)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "u6_addr32", scope: !1972, file: !1969, line: 38, baseType: !1979, size: 128)
!1979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1956, size: 128, elements: !675)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "daddr", scope: !1965, file: !1925, line: 59, baseType: !1968, size: 128, offset: 128)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1965, file: !1925, line: 60, baseType: !338, size: 32, offset: 256)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1965, file: !1925, line: 61, baseType: !1956, size: 32, offset: 288)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "iif", scope: !1965, file: !1925, line: 62, baseType: !338, size: 32, offset: 320)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1941, file: !1925, line: 91, baseType: !1985, size: 320, offset: 448)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1986, line: 11, size: 320, elements: !1987)
!1986 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1987 = !{!1988, !1989, !1990, !1995}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1985, file: !1986, line: 16, baseType: !670, size: 128)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1985, file: !1986, line: 17, baseType: !46, size: 64, offset: 128)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1985, file: !1986, line: 18, baseType: !1991, size: 64, offset: 192)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{null, !1994}
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1985, file: !1986, line: 19, baseType: !338, size: 32, offset: 256)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1941, file: !1925, line: 92, baseType: !66, size: 32, offset: 768)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1941, file: !1925, line: 93, baseType: !657, size: 32, offset: 800)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "rb_fragments", scope: !1941, file: !1925, line: 94, baseType: !887, size: 64, offset: 832)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "fragments_tail", scope: !1941, file: !1925, line: 95, baseType: !2000, size: 64, offset: 896)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sk_buff", file: !2002, line: 840, size: 1792, elements: !2003)
!2002 = !DIFile(filename: "./include/linux/skbuff.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f57efcd2f012c07abad2ca113941da8")
!2003 = !{!2004, !2020, !2021, !2026, !2030, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2214, !2216, !2217, !2219, !2220, !2221, !2222}
!2004 = !DIDerivedType(tag: DW_TAG_member, scope: !2001, file: !2002, line: 841, baseType: !2005, size: 192)
!2005 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2001, file: !2002, line: 841, size: 192, elements: !2006)
!2006 = !{!2007, !2017, !2018, !2019}
!2007 = !DIDerivedType(tag: DW_TAG_member, scope: !2005, file: !2002, line: 842, baseType: !2008, size: 192)
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2005, file: !2002, line: 842, size: 192, elements: !2009)
!2009 = !{!2010, !2011, !2012}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2008, file: !2002, line: 844, baseType: !2000, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !2008, file: !2002, line: 845, baseType: !2000, size: 64, offset: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, scope: !2008, file: !2002, line: 847, baseType: !2013, size: 64, offset: 128)
!2013 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2008, file: !2002, line: 847, size: 64, elements: !2014)
!2014 = !{!2015, !2016}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2013, file: !2002, line: 848, baseType: !1759, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "dev_scratch", scope: !2013, file: !2002, line: 853, baseType: !46, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "rbnode", scope: !2005, file: !2002, line: 856, baseType: !755, size: 192, align: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2005, file: !2002, line: 857, baseType: !104, size: 128)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "ll_node", scope: !2005, file: !2002, line: 858, baseType: !586, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "sk", scope: !2001, file: !2002, line: 861, baseType: !1732, size: 64, offset: 192)
!2021 = !DIDerivedType(tag: DW_TAG_member, scope: !2001, file: !2002, line: 863, baseType: !2022, size: 64, offset: 256)
!2022 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2001, file: !2002, line: 863, size: 64, elements: !2023)
!2023 = !{!2024, !2025}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !2022, file: !2002, line: 864, baseType: !833, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "skb_mstamp_ns", scope: !2022, file: !2002, line: 865, baseType: !228, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !2001, file: !2002, line: 873, baseType: !2027, size: 384, align: 64, offset: 320)
!2027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 384, elements: !2028)
!2028 = !{!2029}
!2029 = !DISubrange(count: 48)
!2030 = !DIDerivedType(tag: DW_TAG_member, scope: !2001, file: !2002, line: 875, baseType: !2031, size: 128, offset: 704)
!2031 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2001, file: !2002, line: 875, size: 128, elements: !2032)
!2032 = !{!2033, !2041}
!2033 = !DIDerivedType(tag: DW_TAG_member, scope: !2031, file: !2002, line: 876, baseType: !2034, size: 128)
!2034 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2031, file: !2002, line: 876, size: 128, elements: !2035)
!2035 = !{!2036, !2037}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_skb_refdst", scope: !2034, file: !2002, line: 877, baseType: !46, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "destructor", scope: !2034, file: !2002, line: 878, baseType: !2038, size: 64, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{null, !2000}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_tsorted_anchor", scope: !2031, file: !2002, line: 880, baseType: !104, size: 128)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_nfct", scope: !2001, file: !2002, line: 887, baseType: !46, size: 64, offset: 832)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2001, file: !2002, line: 889, baseType: !7, size: 32, offset: 896)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !2001, file: !2002, line: 890, baseType: !7, size: 32, offset: 928)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "mac_len", scope: !2001, file: !2002, line: 891, baseType: !101, size: 16, offset: 960)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_len", scope: !2001, file: !2002, line: 892, baseType: !101, size: 16, offset: 976)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "queue_mapping", scope: !2001, file: !2002, line: 897, baseType: !101, size: 16, offset: 992)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "__cloned_offset", scope: !2001, file: !2002, line: 908, baseType: !2049, offset: 1008)
!2049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, elements: !2050)
!2050 = !{!2051}
!2051 = !DISubrange(count: 0)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "cloned", scope: !2001, file: !2002, line: 910, baseType: !92, size: 1, offset: 1008, flags: DIFlagBitField, extraData: i64 1008)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "nohdr", scope: !2001, file: !2002, line: 911, baseType: !92, size: 1, offset: 1009, flags: DIFlagBitField, extraData: i64 1008)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "fclone", scope: !2001, file: !2002, line: 912, baseType: !92, size: 2, offset: 1010, flags: DIFlagBitField, extraData: i64 1008)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "peeked", scope: !2001, file: !2002, line: 913, baseType: !92, size: 1, offset: 1012, flags: DIFlagBitField, extraData: i64 1008)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "head_frag", scope: !2001, file: !2002, line: 914, baseType: !92, size: 1, offset: 1013, flags: DIFlagBitField, extraData: i64 1008)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "pfmemalloc", scope: !2001, file: !2002, line: 915, baseType: !92, size: 1, offset: 1014, flags: DIFlagBitField, extraData: i64 1008)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "pp_recycle", scope: !2001, file: !2002, line: 916, baseType: !92, size: 1, offset: 1015, flags: DIFlagBitField, extraData: i64 1008)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "active_extensions", scope: !2001, file: !2002, line: 918, baseType: !92, size: 8, offset: 1016)
!2060 = !DIDerivedType(tag: DW_TAG_member, scope: !2001, file: !2002, line: 924, baseType: !2061, size: 448, offset: 1024)
!2061 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2001, file: !2002, line: 924, size: 448, elements: !2062)
!2062 = !{!2063, !2139}
!2063 = !DIDerivedType(tag: DW_TAG_member, scope: !2061, file: !2002, line: 924, baseType: !2064, size: 448)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2061, file: !2002, line: 924, size: 448, elements: !2065)
!2065 = !{!2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2104, !2105, !2106, !2107, !2116, !2121, !2122, !2127, !2132, !2133, !2134, !2135, !2136, !2137, !2138}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "__pkt_type_offset", scope: !2064, file: !2002, line: 924, baseType: !2049)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_type", scope: !2064, file: !2002, line: 924, baseType: !92, size: 3, flags: DIFlagBitField, extraData: i64 0)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_df", scope: !2064, file: !2002, line: 924, baseType: !92, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "dst_pending_confirm", scope: !2064, file: !2002, line: 924, baseType: !92, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "ip_summed", scope: !2064, file: !2002, line: 924, baseType: !92, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "ooo_okay", scope: !2064, file: !2002, line: 924, baseType: !92, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "__mono_tc_offset", scope: !2064, file: !2002, line: 924, baseType: !2049, offset: 8)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "mono_delivery_time", scope: !2064, file: !2002, line: 924, baseType: !92, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "tc_at_ingress", scope: !2064, file: !2002, line: 924, baseType: !92, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 8)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "tc_skip_classify", scope: !2064, file: !2002, line: 924, baseType: !92, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 8)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "remcsum_offload", scope: !2064, file: !2002, line: 924, baseType: !92, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 8)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "csum_complete_sw", scope: !2064, file: !2002, line: 924, baseType: !92, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 8)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "csum_level", scope: !2064, file: !2002, line: 924, baseType: !92, size: 2, offset: 13, flags: DIFlagBitField, extraData: i64 8)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "inner_protocol_type", scope: !2064, file: !2002, line: 924, baseType: !92, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 8)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "l4_hash", scope: !2064, file: !2002, line: 924, baseType: !92, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 8)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "sw_hash", scope: !2064, file: !2002, line: 924, baseType: !92, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 8)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "wifi_acked_valid", scope: !2064, file: !2002, line: 924, baseType: !92, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 8)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "wifi_acked", scope: !2064, file: !2002, line: 924, baseType: !92, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 8)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "no_fcs", scope: !2064, file: !2002, line: 924, baseType: !92, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 8)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "encapsulation", scope: !2064, file: !2002, line: 924, baseType: !92, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 8)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "encap_hdr_csum", scope: !2064, file: !2002, line: 924, baseType: !92, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 8)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "csum_valid", scope: !2064, file: !2002, line: 924, baseType: !92, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 8)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "ndisc_nodetype", scope: !2064, file: !2002, line: 924, baseType: !92, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 8)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "redirected", scope: !2064, file: !2002, line: 924, baseType: !92, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 8)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "nf_skip_egress", scope: !2064, file: !2002, line: 924, baseType: !92, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 8)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "slow_gro", scope: !2064, file: !2002, line: 924, baseType: !92, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 8)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "tc_index", scope: !2064, file: !2002, line: 924, baseType: !101, size: 16, offset: 32)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_cpu", scope: !2064, file: !2002, line: 924, baseType: !100, size: 16, offset: 48)
!2094 = !DIDerivedType(tag: DW_TAG_member, scope: !2064, file: !2002, line: 924, baseType: !2095, size: 32, offset: 64)
!2095 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2064, file: !2002, line: 924, size: 32, elements: !2096)
!2096 = !{!2097, !2099}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "csum", scope: !2095, file: !2002, line: 924, baseType: !2098, size: 32)
!2098 = !DIDerivedType(tag: DW_TAG_typedef, name: "__wsum", file: !1957, line: 44, baseType: !339)
!2099 = !DIDerivedType(tag: DW_TAG_member, scope: !2095, file: !2002, line: 924, baseType: !2100, size: 32)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2095, file: !2002, line: 924, size: 32, elements: !2101)
!2101 = !{!2102, !2103}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "csum_start", scope: !2100, file: !2002, line: 924, baseType: !101, size: 16)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "csum_offset", scope: !2100, file: !2002, line: 924, baseType: !101, size: 16, offset: 16)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2064, file: !2002, line: 924, baseType: !339, size: 32, offset: 96)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "skb_iif", scope: !2064, file: !2002, line: 924, baseType: !29, size: 32, offset: 128)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2064, file: !2002, line: 924, baseType: !339, size: 32, offset: 160)
!2107 = !DIDerivedType(tag: DW_TAG_member, scope: !2064, file: !2002, line: 924, baseType: !2108, size: 32, offset: 192)
!2108 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2064, file: !2002, line: 924, size: 32, elements: !2109)
!2109 = !{!2110, !2111}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_all", scope: !2108, file: !2002, line: 924, baseType: !338, size: 32)
!2111 = !DIDerivedType(tag: DW_TAG_member, scope: !2108, file: !2002, line: 924, baseType: !2112, size: 32)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2108, file: !2002, line: 924, size: 32, elements: !2113)
!2113 = !{!2114, !2115}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_proto", scope: !2112, file: !2002, line: 924, baseType: !1962, size: 16)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_tci", scope: !2112, file: !2002, line: 924, baseType: !101, size: 16, offset: 16)
!2116 = !DIDerivedType(tag: DW_TAG_member, scope: !2064, file: !2002, line: 924, baseType: !2117, size: 32, offset: 224)
!2117 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2064, file: !2002, line: 924, size: 32, elements: !2118)
!2118 = !{!2119, !2120}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "napi_id", scope: !2117, file: !2002, line: 924, baseType: !7, size: 32)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "sender_cpu", scope: !2117, file: !2002, line: 924, baseType: !7, size: 32)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "secmark", scope: !2064, file: !2002, line: 924, baseType: !339, size: 32, offset: 256)
!2122 = !DIDerivedType(tag: DW_TAG_member, scope: !2064, file: !2002, line: 924, baseType: !2123, size: 32, offset: 288)
!2123 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2064, file: !2002, line: 924, size: 32, elements: !2124)
!2124 = !{!2125, !2126}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "mark", scope: !2123, file: !2002, line: 924, baseType: !339, size: 32)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_tailroom", scope: !2123, file: !2002, line: 924, baseType: !339, size: 32)
!2127 = !DIDerivedType(tag: DW_TAG_member, scope: !2064, file: !2002, line: 924, baseType: !2128, size: 16, offset: 320)
!2128 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2064, file: !2002, line: 924, size: 16, elements: !2129)
!2129 = !{!2130, !2131}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "inner_protocol", scope: !2128, file: !2002, line: 924, baseType: !1962, size: 16)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "inner_ipproto", scope: !2128, file: !2002, line: 924, baseType: !92, size: 8)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "inner_transport_header", scope: !2064, file: !2002, line: 924, baseType: !101, size: 16, offset: 336)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "inner_network_header", scope: !2064, file: !2002, line: 924, baseType: !101, size: 16, offset: 352)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "inner_mac_header", scope: !2064, file: !2002, line: 924, baseType: !101, size: 16, offset: 368)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !2064, file: !2002, line: 924, baseType: !1962, size: 16, offset: 384)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "transport_header", scope: !2064, file: !2002, line: 924, baseType: !101, size: 16, offset: 400)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "network_header", scope: !2064, file: !2002, line: 924, baseType: !101, size: 16, offset: 416)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "mac_header", scope: !2064, file: !2002, line: 924, baseType: !101, size: 16, offset: 432)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !2061, file: !2002, line: 924, baseType: !2140, size: 448)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2061, file: !2002, line: 924, size: 448, elements: !2141)
!2141 = !{!2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2179, !2180, !2181, !2182, !2191, !2196, !2197, !2202, !2207, !2208, !2209, !2210, !2211, !2212, !2213}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "__pkt_type_offset", scope: !2140, file: !2002, line: 924, baseType: !2049)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_type", scope: !2140, file: !2002, line: 924, baseType: !92, size: 3, flags: DIFlagBitField, extraData: i64 0)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_df", scope: !2140, file: !2002, line: 924, baseType: !92, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "dst_pending_confirm", scope: !2140, file: !2002, line: 924, baseType: !92, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "ip_summed", scope: !2140, file: !2002, line: 924, baseType: !92, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "ooo_okay", scope: !2140, file: !2002, line: 924, baseType: !92, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "__mono_tc_offset", scope: !2140, file: !2002, line: 924, baseType: !2049, offset: 8)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "mono_delivery_time", scope: !2140, file: !2002, line: 924, baseType: !92, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "tc_at_ingress", scope: !2140, file: !2002, line: 924, baseType: !92, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 8)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "tc_skip_classify", scope: !2140, file: !2002, line: 924, baseType: !92, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 8)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "remcsum_offload", scope: !2140, file: !2002, line: 924, baseType: !92, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 8)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "csum_complete_sw", scope: !2140, file: !2002, line: 924, baseType: !92, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 8)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "csum_level", scope: !2140, file: !2002, line: 924, baseType: !92, size: 2, offset: 13, flags: DIFlagBitField, extraData: i64 8)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "inner_protocol_type", scope: !2140, file: !2002, line: 924, baseType: !92, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 8)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "l4_hash", scope: !2140, file: !2002, line: 924, baseType: !92, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 8)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "sw_hash", scope: !2140, file: !2002, line: 924, baseType: !92, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 8)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "wifi_acked_valid", scope: !2140, file: !2002, line: 924, baseType: !92, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 8)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "wifi_acked", scope: !2140, file: !2002, line: 924, baseType: !92, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 8)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "no_fcs", scope: !2140, file: !2002, line: 924, baseType: !92, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 8)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "encapsulation", scope: !2140, file: !2002, line: 924, baseType: !92, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 8)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "encap_hdr_csum", scope: !2140, file: !2002, line: 924, baseType: !92, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 8)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "csum_valid", scope: !2140, file: !2002, line: 924, baseType: !92, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 8)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "ndisc_nodetype", scope: !2140, file: !2002, line: 924, baseType: !92, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 8)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "redirected", scope: !2140, file: !2002, line: 924, baseType: !92, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 8)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "nf_skip_egress", scope: !2140, file: !2002, line: 924, baseType: !92, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 8)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "slow_gro", scope: !2140, file: !2002, line: 924, baseType: !92, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 8)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "tc_index", scope: !2140, file: !2002, line: 924, baseType: !101, size: 16, offset: 32)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_cpu", scope: !2140, file: !2002, line: 924, baseType: !100, size: 16, offset: 48)
!2170 = !DIDerivedType(tag: DW_TAG_member, scope: !2140, file: !2002, line: 924, baseType: !2171, size: 32, offset: 64)
!2171 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2140, file: !2002, line: 924, size: 32, elements: !2172)
!2172 = !{!2173, !2174}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "csum", scope: !2171, file: !2002, line: 924, baseType: !2098, size: 32)
!2174 = !DIDerivedType(tag: DW_TAG_member, scope: !2171, file: !2002, line: 924, baseType: !2175, size: 32)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2171, file: !2002, line: 924, size: 32, elements: !2176)
!2176 = !{!2177, !2178}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "csum_start", scope: !2175, file: !2002, line: 924, baseType: !101, size: 16)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "csum_offset", scope: !2175, file: !2002, line: 924, baseType: !101, size: 16, offset: 16)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2140, file: !2002, line: 924, baseType: !339, size: 32, offset: 96)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "skb_iif", scope: !2140, file: !2002, line: 924, baseType: !29, size: 32, offset: 128)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2140, file: !2002, line: 924, baseType: !339, size: 32, offset: 160)
!2182 = !DIDerivedType(tag: DW_TAG_member, scope: !2140, file: !2002, line: 924, baseType: !2183, size: 32, offset: 192)
!2183 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2140, file: !2002, line: 924, size: 32, elements: !2184)
!2184 = !{!2185, !2186}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_all", scope: !2183, file: !2002, line: 924, baseType: !338, size: 32)
!2186 = !DIDerivedType(tag: DW_TAG_member, scope: !2183, file: !2002, line: 924, baseType: !2187, size: 32)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2183, file: !2002, line: 924, size: 32, elements: !2188)
!2188 = !{!2189, !2190}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_proto", scope: !2187, file: !2002, line: 924, baseType: !1962, size: 16)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_tci", scope: !2187, file: !2002, line: 924, baseType: !101, size: 16, offset: 16)
!2191 = !DIDerivedType(tag: DW_TAG_member, scope: !2140, file: !2002, line: 924, baseType: !2192, size: 32, offset: 224)
!2192 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2140, file: !2002, line: 924, size: 32, elements: !2193)
!2193 = !{!2194, !2195}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "napi_id", scope: !2192, file: !2002, line: 924, baseType: !7, size: 32)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "sender_cpu", scope: !2192, file: !2002, line: 924, baseType: !7, size: 32)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "secmark", scope: !2140, file: !2002, line: 924, baseType: !339, size: 32, offset: 256)
!2197 = !DIDerivedType(tag: DW_TAG_member, scope: !2140, file: !2002, line: 924, baseType: !2198, size: 32, offset: 288)
!2198 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2140, file: !2002, line: 924, size: 32, elements: !2199)
!2199 = !{!2200, !2201}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "mark", scope: !2198, file: !2002, line: 924, baseType: !339, size: 32)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_tailroom", scope: !2198, file: !2002, line: 924, baseType: !339, size: 32)
!2202 = !DIDerivedType(tag: DW_TAG_member, scope: !2140, file: !2002, line: 924, baseType: !2203, size: 16, offset: 320)
!2203 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2140, file: !2002, line: 924, size: 16, elements: !2204)
!2204 = !{!2205, !2206}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "inner_protocol", scope: !2203, file: !2002, line: 924, baseType: !1962, size: 16)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "inner_ipproto", scope: !2203, file: !2002, line: 924, baseType: !92, size: 8)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "inner_transport_header", scope: !2140, file: !2002, line: 924, baseType: !101, size: 16, offset: 336)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "inner_network_header", scope: !2140, file: !2002, line: 924, baseType: !101, size: 16, offset: 352)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "inner_mac_header", scope: !2140, file: !2002, line: 924, baseType: !101, size: 16, offset: 368)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !2140, file: !2002, line: 924, baseType: !1962, size: 16, offset: 384)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "transport_header", scope: !2140, file: !2002, line: 924, baseType: !101, size: 16, offset: 400)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "network_header", scope: !2140, file: !2002, line: 924, baseType: !101, size: 16, offset: 416)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "mac_header", scope: !2140, file: !2002, line: 924, baseType: !101, size: 16, offset: 432)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2001, file: !2002, line: 1047, baseType: !2215, size: 32, offset: 1472)
!2215 = !DIDerivedType(tag: DW_TAG_typedef, name: "sk_buff_data_t", file: !2002, line: 683, baseType: !7)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2001, file: !2002, line: 1048, baseType: !2215, size: 32, offset: 1504)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2001, file: !2002, line: 1049, baseType: !2218, size: 64, offset: 1536)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2001, file: !2002, line: 1050, baseType: !2218, size: 64, offset: 1600)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "truesize", scope: !2001, file: !2002, line: 1051, baseType: !7, size: 32, offset: 1664)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !2001, file: !2002, line: 1052, baseType: !657, size: 32, offset: 1696)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !2001, file: !2002, line: 1056, baseType: !2223, size: 64, offset: 1728)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "skb_ext", file: !2002, line: 4679, size: 64, elements: !2225)
!2225 = !{!2226, !2227, !2229, !2230}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2224, file: !2002, line: 4680, baseType: !657, size: 32)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2224, file: !2002, line: 4681, baseType: !2228, size: 8, offset: 32)
!2228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 8, elements: !953)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "chunks", scope: !2224, file: !2002, line: 4682, baseType: !90, size: 8, offset: 40)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2224, file: !2002, line: 4683, baseType: !2231, align: 64, offset: 64)
!2231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, elements: !1429)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "last_run_head", scope: !1941, file: !1925, line: 96, baseType: !2000, size: 64, offset: 960)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !1941, file: !1925, line: 97, baseType: !833, size: 64, offset: 1024)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1941, file: !1925, line: 98, baseType: !29, size: 32, offset: 1088)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "meat", scope: !1941, file: !1925, line: 99, baseType: !29, size: 32, offset: 1120)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "mono_delivery_time", scope: !1941, file: !1925, line: 100, baseType: !90, size: 8, offset: 1152)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1941, file: !1925, line: 101, baseType: !92, size: 8, offset: 1160)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "max_size", scope: !1941, file: !1925, line: 102, baseType: !100, size: 16, offset: 1168)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "fqdir", scope: !1941, file: !1925, line: 103, baseType: !1923, size: 64, offset: 1216)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1941, file: !1925, line: 104, baseType: !592, size: 128, align: 64, offset: 1280)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "destructor", scope: !1933, file: !1925, line: 112, baseType: !2242, size: 64, offset: 128)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{null, !1940}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "frag_expire", scope: !1933, file: !1925, line: 113, baseType: !1991, size: 64, offset: 192)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "frags_cachep", scope: !1933, file: !1925, line: 114, baseType: !2247, size: 64, offset: 256)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2249, line: 11, flags: DIFlagFwdDecl)
!2249 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "frags_cache_name", scope: !1933, file: !1925, line: 115, baseType: !23, size: 64, offset: 320)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "rhash_params", scope: !1933, file: !1925, line: 116, baseType: !2252, size: 320, offset: 384)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhashtable_params", file: !1945, line: 56, size: 320, elements: !2253)
!2253 = !{!2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2266, !2268}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "nelem_hint", scope: !2252, file: !1945, line: 57, baseType: !100, size: 16)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !2252, file: !1945, line: 58, baseType: !100, size: 16, offset: 16)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "key_offset", scope: !2252, file: !1945, line: 59, baseType: !100, size: 16, offset: 32)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "head_offset", scope: !2252, file: !1945, line: 60, baseType: !100, size: 16, offset: 48)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "max_size", scope: !2252, file: !1945, line: 61, baseType: !7, size: 32, offset: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "min_size", scope: !2252, file: !1945, line: 62, baseType: !100, size: 16, offset: 96)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "automatic_shrinking", scope: !2252, file: !1945, line: 63, baseType: !1198, size: 8, offset: 112)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "hashfn", scope: !2252, file: !1945, line: 64, baseType: !2262, size: 64, offset: 128)
!2262 = !DIDerivedType(tag: DW_TAG_typedef, name: "rht_hashfn_t", file: !1945, line: 38, baseType: !2263)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!338, !1127, !338, !338}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "obj_hashfn", scope: !2252, file: !1945, line: 65, baseType: !2267, size: 64, offset: 192)
!2267 = !DIDerivedType(tag: DW_TAG_typedef, name: "rht_obj_hashfn_t", file: !1945, line: 39, baseType: !2263)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "obj_cmpfn", scope: !2252, file: !1945, line: 66, baseType: !2269, size: 64, offset: 256)
!2269 = !DIDerivedType(tag: DW_TAG_typedef, name: "rht_obj_cmpfn_t", file: !1945, line: 40, baseType: !2270)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{!29, !2273, !1127}
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhashtable_compare_arg", file: !1945, line: 33, size: 128, elements: !2275)
!2275 = !{!2276, !2291}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !2274, file: !1945, line: 34, baseType: !2277, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhashtable", file: !1945, line: 81, size: 1088, elements: !2279)
!2279 = !{!2280, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "tbl", scope: !2278, file: !1945, line: 82, baseType: !2281, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DICompositeType(tag: DW_TAG_structure_type, name: "bucket_table", file: !1945, line: 26, flags: DIFlagFwdDecl)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !2278, file: !1945, line: 83, baseType: !7, size: 32, offset: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "max_elems", scope: !2278, file: !1945, line: 84, baseType: !7, size: 32, offset: 96)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2278, file: !1945, line: 85, baseType: !2252, size: 320, offset: 128)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "rhlist", scope: !2278, file: !1945, line: 86, baseType: !1198, size: 8, offset: 448)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "run_work", scope: !2278, file: !1945, line: 87, baseType: !1313, size: 256, offset: 512)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2278, file: !1945, line: 88, baseType: !614, size: 256, offset: 768)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2278, file: !1945, line: 89, baseType: !66, size: 32, offset: 1024)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "nelems", scope: !2278, file: !1945, line: 90, baseType: !56, size: 32, offset: 1056)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2274, file: !1945, line: 35, baseType: !1127, size: 64, offset: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1933, file: !1925, line: 117, baseType: !657, size: 32, offset: 704)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1933, file: !1925, line: 118, baseType: !1352, size: 256, offset: 768)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "net", scope: !1924, file: !1925, line: 20, baseType: !1700, size: 64, offset: 256)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !1924, file: !1925, line: 21, baseType: !1198, size: 8, offset: 320)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "rhashtable", scope: !1924, file: !1925, line: 23, baseType: !2278, size: 1088, align: 512, offset: 512)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1924, file: !1925, line: 26, baseType: !605, size: 64, align: 512, offset: 2048)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1924, file: !1925, line: 27, baseType: !1313, size: 256, offset: 2112)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "free_list", scope: !1924, file: !1925, line: 28, baseType: !586, size: 64, offset: 2368)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_icmp_echo_ignore_all", scope: !1877, file: !1878, line: 80, baseType: !90, size: 8, offset: 2432)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_icmp_echo_enable_probe", scope: !1877, file: !1878, line: 81, baseType: !90, size: 8, offset: 2440)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_icmp_echo_ignore_broadcasts", scope: !1877, file: !1878, line: 82, baseType: !90, size: 8, offset: 2448)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_icmp_ignore_bogus_error_responses", scope: !1877, file: !1878, line: 83, baseType: !90, size: 8, offset: 2456)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_icmp_errors_use_inbound_ifaddr", scope: !1877, file: !1878, line: 84, baseType: !90, size: 8, offset: 2464)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_icmp_ratelimit", scope: !1877, file: !1878, line: 85, baseType: !29, size: 32, offset: 2496)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_icmp_ratemask", scope: !1877, file: !1878, line: 86, baseType: !29, size: 32, offset: 2528)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "ip_rt_min_pmtu", scope: !1877, file: !1878, line: 88, baseType: !338, size: 32, offset: 2560)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "ip_rt_mtu_expires", scope: !1877, file: !1878, line: 89, baseType: !29, size: 32, offset: 2592)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "ip_rt_min_advmss", scope: !1877, file: !1878, line: 90, baseType: !29, size: 32, offset: 2624)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "ip_local_ports", scope: !1877, file: !1878, line: 92, baseType: !2311, size: 160, offset: 2656)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "local_ports", file: !1878, line: 21, size: 160, elements: !2312)
!2312 = !{!2313, !2319, !2323}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2311, file: !1878, line: 22, baseType: !2314, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !311, line: 860, baseType: !2315)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !311, line: 853, size: 64, elements: !2316)
!2316 = !{!2317, !2318}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2315, file: !311, line: 858, baseType: !310, size: 32)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2315, file: !311, line: 859, baseType: !66, size: 32, offset: 32)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2311, file: !1878, line: 23, baseType: !2320, size: 64, offset: 64)
!2320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 64, elements: !2321)
!2321 = !{!2322}
!2322 = !DISubrange(count: 2)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "warned", scope: !2311, file: !1878, line: 24, baseType: !1198, size: 8, offset: 128)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_ecn", scope: !1877, file: !1878, line: 94, baseType: !90, size: 8, offset: 2816)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_ecn_fallback", scope: !1877, file: !1878, line: 95, baseType: !90, size: 8, offset: 2824)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_ip_default_ttl", scope: !1877, file: !1878, line: 97, baseType: !90, size: 8, offset: 2832)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_ip_no_pmtu_disc", scope: !1877, file: !1878, line: 98, baseType: !90, size: 8, offset: 2840)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_ip_fwd_use_pmtu", scope: !1877, file: !1878, line: 99, baseType: !90, size: 8, offset: 2848)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_ip_fwd_update_priority", scope: !1877, file: !1878, line: 100, baseType: !90, size: 8, offset: 2856)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_ip_nonlocal_bind", scope: !1877, file: !1878, line: 101, baseType: !90, size: 8, offset: 2864)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_ip_autobind_reuse", scope: !1877, file: !1878, line: 102, baseType: !90, size: 8, offset: 2872)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_ip_dynaddr", scope: !1877, file: !1878, line: 104, baseType: !90, size: 8, offset: 2880)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_ip_early_demux", scope: !1877, file: !1878, line: 105, baseType: !90, size: 8, offset: 2888)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_early_demux", scope: !1877, file: !1878, line: 109, baseType: !90, size: 8, offset: 2896)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_udp_early_demux", scope: !1877, file: !1878, line: 110, baseType: !90, size: 8, offset: 2904)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_nexthop_compat_mode", scope: !1877, file: !1878, line: 112, baseType: !90, size: 8, offset: 2912)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_fwmark_reflect", scope: !1877, file: !1878, line: 114, baseType: !90, size: 8, offset: 2920)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_fwmark_accept", scope: !1877, file: !1878, line: 115, baseType: !90, size: 8, offset: 2928)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_mtu_probing", scope: !1877, file: !1878, line: 119, baseType: !90, size: 8, offset: 2936)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_mtu_probe_floor", scope: !1877, file: !1878, line: 120, baseType: !29, size: 32, offset: 2944)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_base_mss", scope: !1877, file: !1878, line: 121, baseType: !29, size: 32, offset: 2976)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_min_snd_mss", scope: !1877, file: !1878, line: 122, baseType: !29, size: 32, offset: 3008)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_probe_threshold", scope: !1877, file: !1878, line: 123, baseType: !29, size: 32, offset: 3040)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_probe_interval", scope: !1877, file: !1878, line: 124, baseType: !338, size: 32, offset: 3072)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_keepalive_time", scope: !1877, file: !1878, line: 126, baseType: !29, size: 32, offset: 3104)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_keepalive_intvl", scope: !1877, file: !1878, line: 127, baseType: !29, size: 32, offset: 3136)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_keepalive_probes", scope: !1877, file: !1878, line: 128, baseType: !90, size: 8, offset: 3168)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_syn_retries", scope: !1877, file: !1878, line: 130, baseType: !90, size: 8, offset: 3176)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_synack_retries", scope: !1877, file: !1878, line: 131, baseType: !90, size: 8, offset: 3184)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_syncookies", scope: !1877, file: !1878, line: 132, baseType: !90, size: 8, offset: 3192)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_migrate_req", scope: !1877, file: !1878, line: 133, baseType: !90, size: 8, offset: 3200)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_comp_sack_nr", scope: !1877, file: !1878, line: 134, baseType: !90, size: 8, offset: 3208)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_reordering", scope: !1877, file: !1878, line: 135, baseType: !29, size: 32, offset: 3232)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_retries1", scope: !1877, file: !1878, line: 136, baseType: !90, size: 8, offset: 3264)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_retries2", scope: !1877, file: !1878, line: 137, baseType: !90, size: 8, offset: 3272)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_orphan_retries", scope: !1877, file: !1878, line: 138, baseType: !90, size: 8, offset: 3280)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_tw_reuse", scope: !1877, file: !1878, line: 139, baseType: !90, size: 8, offset: 3288)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_fin_timeout", scope: !1877, file: !1878, line: 140, baseType: !29, size: 32, offset: 3296)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_notsent_lowat", scope: !1877, file: !1878, line: 141, baseType: !7, size: 32, offset: 3328)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_sack", scope: !1877, file: !1878, line: 142, baseType: !90, size: 8, offset: 3360)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_window_scaling", scope: !1877, file: !1878, line: 143, baseType: !90, size: 8, offset: 3368)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_timestamps", scope: !1877, file: !1878, line: 144, baseType: !90, size: 8, offset: 3376)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_early_retrans", scope: !1877, file: !1878, line: 145, baseType: !90, size: 8, offset: 3384)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_recovery", scope: !1877, file: !1878, line: 146, baseType: !90, size: 8, offset: 3392)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_thin_linear_timeouts", scope: !1877, file: !1878, line: 147, baseType: !90, size: 8, offset: 3400)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_slow_start_after_idle", scope: !1877, file: !1878, line: 148, baseType: !90, size: 8, offset: 3408)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_retrans_collapse", scope: !1877, file: !1878, line: 149, baseType: !90, size: 8, offset: 3416)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_stdurg", scope: !1877, file: !1878, line: 150, baseType: !90, size: 8, offset: 3424)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_rfc1337", scope: !1877, file: !1878, line: 151, baseType: !90, size: 8, offset: 3432)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_abort_on_overflow", scope: !1877, file: !1878, line: 152, baseType: !90, size: 8, offset: 3440)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_fack", scope: !1877, file: !1878, line: 153, baseType: !90, size: 8, offset: 3448)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_max_reordering", scope: !1877, file: !1878, line: 154, baseType: !29, size: 32, offset: 3456)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_adv_win_scale", scope: !1877, file: !1878, line: 155, baseType: !29, size: 32, offset: 3488)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_dsack", scope: !1877, file: !1878, line: 156, baseType: !90, size: 8, offset: 3520)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_app_win", scope: !1877, file: !1878, line: 157, baseType: !90, size: 8, offset: 3528)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_frto", scope: !1877, file: !1878, line: 158, baseType: !90, size: 8, offset: 3536)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_nometrics_save", scope: !1877, file: !1878, line: 159, baseType: !90, size: 8, offset: 3544)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_no_ssthresh_metrics_save", scope: !1877, file: !1878, line: 160, baseType: !90, size: 8, offset: 3552)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_moderate_rcvbuf", scope: !1877, file: !1878, line: 161, baseType: !90, size: 8, offset: 3560)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_tso_win_divisor", scope: !1877, file: !1878, line: 162, baseType: !90, size: 8, offset: 3568)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_workaround_signed_windows", scope: !1877, file: !1878, line: 163, baseType: !90, size: 8, offset: 3576)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_limit_output_bytes", scope: !1877, file: !1878, line: 164, baseType: !29, size: 32, offset: 3584)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_challenge_ack_limit", scope: !1877, file: !1878, line: 165, baseType: !29, size: 32, offset: 3616)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_min_rtt_wlen", scope: !1877, file: !1878, line: 166, baseType: !29, size: 32, offset: 3648)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_min_tso_segs", scope: !1877, file: !1878, line: 167, baseType: !90, size: 8, offset: 3680)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_tso_rtt_log", scope: !1877, file: !1878, line: 168, baseType: !90, size: 8, offset: 3688)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_autocorking", scope: !1877, file: !1878, line: 169, baseType: !90, size: 8, offset: 3696)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_reflect_tos", scope: !1877, file: !1878, line: 170, baseType: !90, size: 8, offset: 3704)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_invalid_ratelimit", scope: !1877, file: !1878, line: 171, baseType: !29, size: 32, offset: 3712)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_pacing_ss_ratio", scope: !1877, file: !1878, line: 172, baseType: !29, size: 32, offset: 3744)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_pacing_ca_ratio", scope: !1877, file: !1878, line: 173, baseType: !29, size: 32, offset: 3776)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_wmem", scope: !1877, file: !1878, line: 174, baseType: !2393, size: 96, offset: 3808)
!2393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 96, elements: !507)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_rmem", scope: !1877, file: !1878, line: 175, baseType: !2393, size: 96, offset: 3904)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_child_ehash_entries", scope: !1877, file: !1878, line: 176, baseType: !7, size: 32, offset: 4000)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_comp_sack_delay_ns", scope: !1877, file: !1878, line: 177, baseType: !46, size: 64, offset: 4032)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_comp_sack_slack_ns", scope: !1877, file: !1878, line: 178, baseType: !46, size: 64, offset: 4096)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_max_syn_backlog", scope: !1877, file: !1878, line: 179, baseType: !29, size: 32, offset: 4160)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_fastopen", scope: !1877, file: !1878, line: 180, baseType: !29, size: 32, offset: 4192)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_congestion_control", scope: !1877, file: !1878, line: 181, baseType: !2401, size: 64, offset: 4224)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2403)
!2403 = !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_congestion_ops", file: !1878, line: 181, flags: DIFlagFwdDecl)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_fastopen_ctx", scope: !1877, file: !1878, line: 182, baseType: !2405, size: 64, offset: 4288)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_fastopen_context", file: !1878, line: 42, flags: DIFlagFwdDecl)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_fastopen_blackhole_timeout", scope: !1877, file: !1878, line: 183, baseType: !7, size: 32, offset: 4352)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "tfo_active_disable_times", scope: !1877, file: !1878, line: 184, baseType: !56, size: 32, offset: 4384)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "tfo_active_disable_stamp", scope: !1877, file: !1878, line: 185, baseType: !46, size: 64, offset: 4416)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_challenge_timestamp", scope: !1877, file: !1878, line: 186, baseType: !338, size: 32, offset: 4480)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_challenge_count", scope: !1877, file: !1878, line: 187, baseType: !338, size: 32, offset: 4512)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_plb_enabled", scope: !1877, file: !1878, line: 188, baseType: !90, size: 8, offset: 4544)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_plb_idle_rehash_rounds", scope: !1877, file: !1878, line: 189, baseType: !90, size: 8, offset: 4552)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_plb_rehash_rounds", scope: !1877, file: !1878, line: 190, baseType: !90, size: 8, offset: 4560)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_plb_suspend_rto_sec", scope: !1877, file: !1878, line: 191, baseType: !90, size: 8, offset: 4568)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_plb_cong_thresh", scope: !1877, file: !1878, line: 192, baseType: !29, size: 32, offset: 4576)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_udp_wmem_min", scope: !1877, file: !1878, line: 194, baseType: !29, size: 32, offset: 4608)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_udp_rmem_min", scope: !1877, file: !1878, line: 195, baseType: !29, size: 32, offset: 4640)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_fib_notify_on_flag_change", scope: !1877, file: !1878, line: 197, baseType: !90, size: 8, offset: 4672)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_syn_linear_timeouts", scope: !1877, file: !1878, line: 198, baseType: !90, size: 8, offset: 4680)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_igmp_llm_reports", scope: !1877, file: !1878, line: 204, baseType: !90, size: 8, offset: 4688)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_igmp_max_memberships", scope: !1877, file: !1878, line: 205, baseType: !29, size: 32, offset: 4704)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_igmp_max_msf", scope: !1877, file: !1878, line: 206, baseType: !29, size: 32, offset: 4736)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_igmp_qrv", scope: !1877, file: !1878, line: 207, baseType: !29, size: 32, offset: 4768)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "ping_group_range", scope: !1877, file: !1878, line: 209, baseType: !2426, size: 128, offset: 4800)
!2426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ping_group_range", file: !1878, line: 27, size: 128, elements: !2427)
!2427 = !{!2428, !2429}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2426, file: !1878, line: 28, baseType: !2314, size: 64)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2426, file: !1878, line: 29, baseType: !2430, size: 64, offset: 64)
!2430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 64, elements: !2321)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "dev_addr_genid", scope: !1877, file: !1878, line: 211, baseType: !56, size: 32, offset: 4928)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_udp_child_hash_entries", scope: !1877, file: !1878, line: 213, baseType: !7, size: 32, offset: 4960)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_local_reserved_ports", scope: !1877, file: !1878, line: 216, baseType: !200, size: 64, offset: 4992)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_ip_prot_sock", scope: !1877, file: !1878, line: 217, baseType: !29, size: 32, offset: 5056)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "mrt", scope: !1877, file: !1878, line: 222, baseType: !2436, size: 64, offset: 5120)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DICompositeType(tag: DW_TAG_structure_type, name: "mr_table", file: !1878, line: 222, flags: DIFlagFwdDecl)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_fib_multipath_hash_fields", scope: !1877, file: !1878, line: 229, baseType: !338, size: 32, offset: 5184)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_fib_multipath_use_neigh", scope: !1877, file: !1878, line: 230, baseType: !90, size: 8, offset: 5216)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_fib_multipath_hash_policy", scope: !1877, file: !1878, line: 231, baseType: !90, size: 8, offset: 5224)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_ops", scope: !1877, file: !1878, line: 234, baseType: !2442, size: 64, offset: 5248)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DICompositeType(tag: DW_TAG_structure_type, name: "fib_notifier_ops", file: !1878, line: 234, flags: DIFlagFwdDecl)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "fib_seq", scope: !1877, file: !1878, line: 235, baseType: !7, size: 32, offset: 5312)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "ipmr_notifier_ops", scope: !1877, file: !1878, line: 237, baseType: !2442, size: 64, offset: 5376)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "ipmr_seq", scope: !1877, file: !1878, line: 238, baseType: !7, size: 32, offset: 5440)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "rt_genid", scope: !1877, file: !1878, line: 240, baseType: !56, size: 32, offset: 5472)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "ip_id_key", scope: !1877, file: !1878, line: 241, baseType: !2449, size: 128, offset: 5504)
!2449 = !DIDerivedType(tag: DW_TAG_typedef, name: "siphash_key_t", file: !2450, line: 21, baseType: !2451)
!2450 = !DIFile(filename: "./include/linux/siphash.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d57c3335a3ba0d593037d2e9c3d8f6e3")
!2451 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2450, line: 19, size: 128, elements: !2452)
!2452 = !{!2453}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2451, file: !2450, line: 20, baseType: !2454, size: 128)
!2454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 128, elements: !2321)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6", scope: !1701, file: !1702, line: 137, baseType: !2456, size: 6144, offset: 11264)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_ipv6", file: !2457, line: 61, size: 6144, elements: !2458)
!2457 = !DIFile(filename: "./include/net/netns/ipv6.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd307fc6de84f37ce4af8cda3288a428")
!2458 = !{!2459, !2523, !2568, !2571, !2572, !2573, !2574, !2577, !2580, !2583, !2584, !2585, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2609, !2610, !2611, !2614, !2615, !2616, !2617, !2623}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_dst_ops", scope: !2456, file: !2457, line: 63, baseType: !2460, size: 1536)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dst_ops", file: !1761, line: 15, size: 1536, elements: !2461)
!2461 = !{!2462, !2463, !2464, !2469, !2475, !2481, !2482, !2486, !2490, !2494, !2498, !2499, !2503, !2507, !2511, !2517, !2521, !2522}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !2460, file: !1761, line: 16, baseType: !33, size: 16)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "gc_thresh", scope: !2460, file: !1761, line: 17, baseType: !7, size: 32, offset: 32)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !2460, file: !1761, line: 19, baseType: !2465, size: 64, offset: 64)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{null, !2468}
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2460, file: !1761, line: 20, baseType: !2470, size: 64, offset: 128)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!2473, !2473, !339}
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DICompositeType(tag: DW_TAG_structure_type, name: "dst_entry", file: !1761, line: 8, flags: DIFlagFwdDecl)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "default_advmss", scope: !2460, file: !1761, line: 21, baseType: !2476, size: 64, offset: 192)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!7, !2479}
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2474)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !2460, file: !1761, line: 22, baseType: !2476, size: 64, offset: 256)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "cow_metrics", scope: !2460, file: !1761, line: 23, baseType: !2483, size: 64, offset: 320)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{!1469, !2473, !46}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !2460, file: !1761, line: 24, baseType: !2487, size: 64, offset: 384)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{null, !2473}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "ifdown", scope: !2460, file: !1761, line: 25, baseType: !2491, size: 64, offset: 448)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{null, !2473, !1759}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "negative_advice", scope: !2460, file: !1761, line: 27, baseType: !2495, size: 64, offset: 512)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{null, !1732, !2473}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "link_failure", scope: !2460, file: !1761, line: 28, baseType: !2038, size: 64, offset: 576)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "update_pmtu", scope: !2460, file: !1761, line: 29, baseType: !2500, size: 64, offset: 640)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{null, !2473, !1732, !2000, !338, !1198}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "redirect", scope: !2460, file: !1761, line: 32, baseType: !2504, size: 64, offset: 704)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{null, !2473, !1732, !2000}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "local_out", scope: !2460, file: !1761, line: 34, baseType: !2508, size: 64, offset: 768)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{!29, !1700, !1732, !2000}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "neigh_lookup", scope: !2460, file: !1761, line: 35, baseType: !2512, size: 64, offset: 832)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!2515, !2479, !2000, !1127}
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DICompositeType(tag: DW_TAG_structure_type, name: "neighbour", file: !1761, line: 35, flags: DIFlagFwdDecl)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_neigh", scope: !2460, file: !1761, line: 38, baseType: !2518, size: 64, offset: 896)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{null, !2479, !1127}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "kmem_cachep", scope: !2460, file: !1761, line: 41, baseType: !2247, size: 64, offset: 960)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "pcpuc_entries", scope: !2460, file: !1761, line: 43, baseType: !1086, size: 320, align: 512, offset: 1024)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl", scope: !2456, file: !2457, line: 65, baseType: !2524, size: 1472, offset: 1536)
!2524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_sysctl_ipv6", file: !2457, line: 15, size: 1472, elements: !2525)
!2525 = !{!2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !2524, file: !2457, line: 17, baseType: !1376, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "route_hdr", scope: !2524, file: !2457, line: 18, baseType: !1376, size: 64, offset: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "icmp_hdr", scope: !2524, file: !2457, line: 19, baseType: !1376, size: 64, offset: 128)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "frags_hdr", scope: !2524, file: !2457, line: 20, baseType: !1376, size: 64, offset: 192)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "xfrm6_hdr", scope: !2524, file: !2457, line: 21, baseType: !1376, size: 64, offset: 256)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "flush_delay", scope: !2524, file: !2457, line: 23, baseType: !29, size: 32, offset: 320)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_rt_max_size", scope: !2524, file: !2457, line: 24, baseType: !29, size: 32, offset: 352)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_rt_gc_min_interval", scope: !2524, file: !2457, line: 25, baseType: !29, size: 32, offset: 384)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_rt_gc_timeout", scope: !2524, file: !2457, line: 26, baseType: !29, size: 32, offset: 416)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_rt_gc_interval", scope: !2524, file: !2457, line: 27, baseType: !29, size: 32, offset: 448)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_rt_gc_elasticity", scope: !2524, file: !2457, line: 28, baseType: !29, size: 32, offset: 480)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_rt_mtu_expires", scope: !2524, file: !2457, line: 29, baseType: !29, size: 32, offset: 512)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_rt_min_advmss", scope: !2524, file: !2457, line: 30, baseType: !29, size: 32, offset: 544)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "multipath_hash_fields", scope: !2524, file: !2457, line: 31, baseType: !338, size: 32, offset: 576)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "multipath_hash_policy", scope: !2524, file: !2457, line: 32, baseType: !90, size: 8, offset: 608)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "bindv6only", scope: !2524, file: !2457, line: 33, baseType: !90, size: 8, offset: 616)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "flowlabel_consistency", scope: !2524, file: !2457, line: 34, baseType: !90, size: 8, offset: 624)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "auto_flowlabels", scope: !2524, file: !2457, line: 35, baseType: !90, size: 8, offset: 632)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "icmpv6_time", scope: !2524, file: !2457, line: 36, baseType: !29, size: 32, offset: 640)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "icmpv6_echo_ignore_all", scope: !2524, file: !2457, line: 37, baseType: !90, size: 8, offset: 672)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "icmpv6_echo_ignore_multicast", scope: !2524, file: !2457, line: 38, baseType: !90, size: 8, offset: 680)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "icmpv6_echo_ignore_anycast", scope: !2524, file: !2457, line: 39, baseType: !90, size: 8, offset: 688)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "icmpv6_ratemask", scope: !2524, file: !2457, line: 40, baseType: !2549, size: 256, offset: 704)
!2549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 256, elements: !675)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "icmpv6_ratemask_ptr", scope: !2524, file: !2457, line: 41, baseType: !200, size: 64, offset: 960)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "anycast_src_echo_reply", scope: !2524, file: !2457, line: 42, baseType: !90, size: 8, offset: 1024)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "ip_nonlocal_bind", scope: !2524, file: !2457, line: 43, baseType: !90, size: 8, offset: 1032)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "fwmark_reflect", scope: !2524, file: !2457, line: 44, baseType: !90, size: 8, offset: 1040)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "flowlabel_state_ranges", scope: !2524, file: !2457, line: 45, baseType: !90, size: 8, offset: 1048)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "idgen_retries", scope: !2524, file: !2457, line: 46, baseType: !29, size: 32, offset: 1056)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "idgen_delay", scope: !2524, file: !2457, line: 47, baseType: !29, size: 32, offset: 1088)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "flowlabel_reflect", scope: !2524, file: !2457, line: 48, baseType: !29, size: 32, offset: 1120)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "max_dst_opts_cnt", scope: !2524, file: !2457, line: 49, baseType: !29, size: 32, offset: 1152)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "max_hbh_opts_cnt", scope: !2524, file: !2457, line: 50, baseType: !29, size: 32, offset: 1184)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "max_dst_opts_len", scope: !2524, file: !2457, line: 51, baseType: !29, size: 32, offset: 1216)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "max_hbh_opts_len", scope: !2524, file: !2457, line: 52, baseType: !29, size: 32, offset: 1248)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "seg6_flowlabel", scope: !2524, file: !2457, line: 53, baseType: !29, size: 32, offset: 1280)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "ioam6_id", scope: !2524, file: !2457, line: 54, baseType: !338, size: 32, offset: 1312)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "ioam6_id_wide", scope: !2524, file: !2457, line: 55, baseType: !228, size: 64, offset: 1344)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "skip_notify_on_dev_down", scope: !2524, file: !2457, line: 56, baseType: !90, size: 8, offset: 1408)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "fib_notify_on_flag_change", scope: !2524, file: !2457, line: 57, baseType: !90, size: 8, offset: 1416)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "icmpv6_error_anycast_as_unicast", scope: !2524, file: !2457, line: 58, baseType: !90, size: 8, offset: 1424)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "devconf_all", scope: !2456, file: !2457, line: 66, baseType: !2569, size: 64, offset: 3008)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipv6_devconf", file: !2457, line: 66, flags: DIFlagFwdDecl)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "devconf_dflt", scope: !2456, file: !2457, line: 67, baseType: !2569, size: 64, offset: 3072)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "peers", scope: !2456, file: !2457, line: 68, baseType: !1920, size: 64, offset: 3136)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "fqdir", scope: !2456, file: !2457, line: 69, baseType: !1923, size: 64, offset: 3200)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "fib6_null_entry", scope: !2456, file: !2457, line: 70, baseType: !2575, size: 64, offset: 3264)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = !DICompositeType(tag: DW_TAG_structure_type, name: "fib6_info", file: !2457, line: 70, flags: DIFlagFwdDecl)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_null_entry", scope: !2456, file: !2457, line: 71, baseType: !2578, size: 64, offset: 3328)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt6_info", file: !2457, line: 71, flags: DIFlagFwdDecl)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "rt6_stats", scope: !2456, file: !2457, line: 72, baseType: !2581, size: 64, offset: 3392)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt6_statistics", file: !2457, line: 72, flags: DIFlagFwdDecl)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_fib_timer", scope: !2456, file: !2457, line: 73, baseType: !1985, size: 320, offset: 3456)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "fib_table_hash", scope: !2456, file: !2457, line: 74, baseType: !1739, size: 64, offset: 3776)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "fib6_main_tbl", scope: !2456, file: !2457, line: 75, baseType: !2586, size: 64, offset: 3840)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DICompositeType(tag: DW_TAG_structure_type, name: "fib6_table", file: !2457, line: 75, flags: DIFlagFwdDecl)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "fib6_walkers", scope: !2456, file: !2457, line: 76, baseType: !104, size: 128, offset: 3904)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "fib6_walker_lock", scope: !2456, file: !2457, line: 77, baseType: !632, size: 64, offset: 4032)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "fib6_gc_lock", scope: !2456, file: !2457, line: 78, baseType: !66, size: 32, offset: 4096)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_rt_gc_expire", scope: !2456, file: !2457, line: 79, baseType: !56, size: 32, offset: 4128)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_rt_last_gc", scope: !2456, file: !2457, line: 80, baseType: !46, size: 64, offset: 4160)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "flowlabel_has_excl", scope: !2456, file: !2457, line: 81, baseType: !94, size: 8, offset: 4224)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "ndisc_sk", scope: !2456, file: !2457, line: 93, baseType: !1732, size: 64, offset: 4288)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_sk", scope: !2456, file: !2457, line: 94, baseType: !1732, size: 64, offset: 4352)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "igmp_sk", scope: !2456, file: !2457, line: 95, baseType: !1732, size: 64, offset: 4416)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "mc_autojoin_sk", scope: !2456, file: !2457, line: 96, baseType: !1732, size: 64, offset: 4480)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "inet6_addr_lst", scope: !2456, file: !2457, line: 98, baseType: !1739, size: 64, offset: 4544)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "addrconf_hash_lock", scope: !2456, file: !2457, line: 99, baseType: !66, size: 32, offset: 4608)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "addr_chk_work", scope: !2456, file: !2457, line: 100, baseType: !2601, size: 704, offset: 4672)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1314, line: 111, size: 704, elements: !2602)
!2602 = !{!2603, !2604, !2605, !2608}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2601, file: !1314, line: 112, baseType: !1313, size: 256)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2601, file: !1314, line: 113, baseType: !1985, size: 320, offset: 256)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2601, file: !1314, line: 116, baseType: !2606, size: 64, offset: 576)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1314, line: 18, flags: DIFlagFwdDecl)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2601, file: !1314, line: 117, baseType: !29, size: 32, offset: 640)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "dev_addr_genid", scope: !2456, file: !2457, line: 110, baseType: !56, size: 32, offset: 5376)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "fib6_sernum", scope: !2456, file: !2457, line: 111, baseType: !56, size: 32, offset: 5408)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "seg6_data", scope: !2456, file: !2457, line: 112, baseType: !2612, size: 64, offset: 5440)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DICompositeType(tag: DW_TAG_structure_type, name: "seg6_pernet_data", file: !2457, line: 112, flags: DIFlagFwdDecl)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_ops", scope: !2456, file: !2457, line: 113, baseType: !2442, size: 64, offset: 5504)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "ip6mr_notifier_ops", scope: !2456, file: !2457, line: 114, baseType: !2442, size: 64, offset: 5568)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "ipmr_seq", scope: !2456, file: !2457, line: 115, baseType: !7, size: 32, offset: 5632)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "ip6addrlbl_table", scope: !2456, file: !2457, line: 120, baseType: !2618, size: 128, offset: 5696)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2456, file: !2457, line: 116, size: 128, elements: !2619)
!2619 = !{!2620, !2621, !2622}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2618, file: !2457, line: 117, baseType: !666, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2618, file: !2457, line: 118, baseType: !66, size: 32, offset: 64)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2618, file: !2457, line: 119, baseType: !338, size: 32, offset: 96)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "ioam6_data", scope: !2456, file: !2457, line: 121, baseType: !2624, size: 64, offset: 5824)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DICompositeType(tag: DW_TAG_structure_type, name: "ioam6_pernet_data", file: !2457, line: 121, flags: DIFlagFwdDecl)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "nf", scope: !1701, file: !1702, line: 146, baseType: !2627, size: 1536, offset: 17408)
!2627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_nf", file: !2628, line: 11, size: 1536, elements: !2629)
!2628 = !DIFile(filename: "./include/net/netns/netfilter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a540a45d672d0c2786c47c3c5b579081")
!2629 = !{!2630, !2631, !2638, !2639, !2643, !2644, !2645}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "proc_netfilter", scope: !2627, file: !2628, line: 13, baseType: !1726, size: 64)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "nf_loggers", scope: !2627, file: !2628, line: 15, baseType: !2632, size: 704, offset: 64)
!2632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2633, size: 704, elements: !2636)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2635)
!2635 = !DICompositeType(tag: DW_TAG_structure_type, name: "nf_logger", file: !2628, line: 8, flags: DIFlagFwdDecl)
!2636 = !{!2637}
!2637 = !DISubrange(count: 11)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "nf_log_dir_header", scope: !2627, file: !2628, line: 17, baseType: !1376, size: 64, offset: 768)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "hooks_ipv4", scope: !2627, file: !2628, line: 22, baseType: !2640, size: 320, offset: 832)
!2640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2641, size: 320, elements: !1171)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DICompositeType(tag: DW_TAG_structure_type, name: "nf_hook_entries", file: !2628, line: 22, flags: DIFlagFwdDecl)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "hooks_ipv6", scope: !2627, file: !2628, line: 23, baseType: !2640, size: 320, offset: 1152)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_ipv4_users", scope: !2627, file: !2628, line: 31, baseType: !7, size: 32, offset: 1472)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_ipv6_users", scope: !2627, file: !2628, line: 34, baseType: !7, size: 32, offset: 1504)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "ct", scope: !1701, file: !1702, line: 148, baseType: !2647, size: 832, offset: 18944)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_ct", file: !2648, line: 96, size: 832, elements: !2649)
!2648 = !DIFile(filename: "./include/net/netns/conntrack.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "21e64ccd6dbd9c20f643db61f6885b6e")
!2649 = !{!2650, !2651, !2652, !2653, !2654, !2655, !2673, !2676}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_log_invalid", scope: !2647, file: !2648, line: 100, baseType: !90, size: 8)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_events", scope: !2647, file: !2648, line: 101, baseType: !90, size: 8, offset: 8)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_acct", scope: !2647, file: !2648, line: 102, baseType: !90, size: 8, offset: 16)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tstamp", scope: !2647, file: !2648, line: 103, baseType: !90, size: 8, offset: 24)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_checksum", scope: !2647, file: !2648, line: 104, baseType: !90, size: 8, offset: 32)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !2647, file: !2648, line: 106, baseType: !2656, size: 64, offset: 64)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_conntrack_stat", file: !2658, line: 8, size: 416, elements: !2659)
!2658 = !DIFile(filename: "./include/linux/netfilter/nf_conntrack_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72d1f1db376003bedde4743ba2b455f9")
!2659 = !{!2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "found", scope: !2657, file: !2658, line: 9, baseType: !7, size: 32)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "invalid", scope: !2657, file: !2658, line: 10, baseType: !7, size: 32, offset: 32)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "insert", scope: !2657, file: !2658, line: 11, baseType: !7, size: 32, offset: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "insert_failed", scope: !2657, file: !2658, line: 12, baseType: !7, size: 32, offset: 96)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "clash_resolve", scope: !2657, file: !2658, line: 13, baseType: !7, size: 32, offset: 128)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "drop", scope: !2657, file: !2658, line: 14, baseType: !7, size: 32, offset: 160)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "early_drop", scope: !2657, file: !2658, line: 15, baseType: !7, size: 32, offset: 192)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !2657, file: !2658, line: 16, baseType: !7, size: 32, offset: 224)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "expect_new", scope: !2657, file: !2658, line: 17, baseType: !7, size: 32, offset: 256)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "expect_create", scope: !2657, file: !2658, line: 18, baseType: !7, size: 32, offset: 288)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "expect_delete", scope: !2657, file: !2658, line: 19, baseType: !7, size: 32, offset: 320)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "search_restart", scope: !2657, file: !2658, line: 20, baseType: !7, size: 32, offset: 352)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "chaintoolong", scope: !2657, file: !2658, line: 21, baseType: !7, size: 32, offset: 384)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "nf_conntrack_event_cb", scope: !2647, file: !2648, line: 107, baseType: !2674, size: 64, offset: 128)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = !DICompositeType(tag: DW_TAG_structure_type, name: "nf_ct_event_notifier", file: !2648, line: 107, flags: DIFlagFwdDecl)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "nf_ct_proto", scope: !2647, file: !2648, line: 108, baseType: !2677, size: 640, offset: 192)
!2677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nf_ip_net", file: !2648, line: 79, size: 640, elements: !2678)
!2678 = !{!2679, !2683, !2694, !2699, !2703}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "generic", scope: !2677, file: !2648, line: 80, baseType: !2680, size: 32)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nf_generic_net", file: !2648, line: 21, size: 32, elements: !2681)
!2681 = !{!2682}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2680, file: !2648, line: 22, baseType: !7, size: 32)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "tcp", scope: !2677, file: !2648, line: 81, baseType: !2684, size: 480, offset: 32)
!2684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nf_tcp_net", file: !2648, line: 25, size: 480, elements: !2685)
!2685 = !{!2686, !2690, !2691, !2692, !2693}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "timeouts", scope: !2684, file: !2648, line: 26, baseType: !2687, size: 448)
!2687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 448, elements: !2688)
!2688 = !{!2689}
!2689 = !DISubrange(count: 14)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_loose", scope: !2684, file: !2648, line: 27, baseType: !90, size: 8, offset: 448)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_be_liberal", scope: !2684, file: !2648, line: 28, baseType: !90, size: 8, offset: 456)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_max_retrans", scope: !2684, file: !2648, line: 29, baseType: !90, size: 8, offset: 464)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_ignore_invalid_rst", scope: !2684, file: !2648, line: 30, baseType: !90, size: 8, offset: 472)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "udp", scope: !2677, file: !2648, line: 82, baseType: !2695, size: 64, offset: 512)
!2695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nf_udp_net", file: !2648, line: 42, size: 64, elements: !2696)
!2696 = !{!2697}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "timeouts", scope: !2695, file: !2648, line: 43, baseType: !2698, size: 64)
!2698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !2321)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "icmp", scope: !2677, file: !2648, line: 83, baseType: !2700, size: 32, offset: 576)
!2700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nf_icmp_net", file: !2648, line: 49, size: 32, elements: !2701)
!2701 = !{!2702}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2700, file: !2648, line: 50, baseType: !7, size: 32)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "icmpv6", scope: !2677, file: !2648, line: 84, baseType: !2700, size: 32, offset: 608)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "gen", scope: !1701, file: !1702, line: 160, baseType: !2705, size: 64, offset: 19776)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DICompositeType(tag: DW_TAG_structure_type, name: "net_generic", file: !1702, line: 52, flags: DIFlagFwdDecl)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !1701, file: !1702, line: 163, baseType: !2708, size: 512, offset: 19840)
!2708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_bpf", file: !2709, line: 21, size: 512, elements: !2710)
!2709 = !DIFile(filename: "./include/net/netns/bpf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05106686771ead514c5766084ac70d8b")
!2710 = !{!2711, !2715, !2719}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "run_array", scope: !2708, file: !2709, line: 23, baseType: !2712, size: 128)
!2712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2713, size: 128, elements: !2321)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog_array", file: !2709, line: 12, flags: DIFlagFwdDecl)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "progs", scope: !2708, file: !2709, line: 24, baseType: !2716, size: 128, offset: 128)
!2716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2717, size: 128, elements: !2321)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog", file: !2709, line: 11, flags: DIFlagFwdDecl)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2708, file: !2709, line: 25, baseType: !2720, size: 256, offset: 256)
!2720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 256, elements: !2321)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "xfrm", scope: !1701, file: !1702, line: 167, baseType: !2722, size: 6656, offset: 20480)
!2722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_xfrm", file: !2723, line: 32, size: 6656, elements: !2724)
!2723 = !DIFile(filename: "./include/net/netns/xfrm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "692aed6e9598ebb84e84dba1a8ae5b74")
!2724 = !{!2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2739, !2749, !2751, !2752, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "state_all", scope: !2722, file: !2723, line: 33, baseType: !104, size: 128)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "state_bydst", scope: !2722, file: !2723, line: 42, baseType: !1739, size: 64, offset: 128)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "state_bysrc", scope: !2722, file: !2723, line: 43, baseType: !1739, size: 64, offset: 192)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "state_byspi", scope: !2722, file: !2723, line: 44, baseType: !1739, size: 64, offset: 256)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "state_byseq", scope: !2722, file: !2723, line: 45, baseType: !1739, size: 64, offset: 320)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "state_hmask", scope: !2722, file: !2723, line: 46, baseType: !7, size: 32, offset: 384)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "state_num", scope: !2722, file: !2723, line: 47, baseType: !7, size: 32, offset: 416)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "state_hash_work", scope: !2722, file: !2723, line: 48, baseType: !1313, size: 256, offset: 448)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "policy_all", scope: !2722, file: !2723, line: 50, baseType: !104, size: 128, offset: 704)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "policy_byidx", scope: !2722, file: !2723, line: 51, baseType: !1739, size: 64, offset: 832)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "policy_idx_hmask", scope: !2722, file: !2723, line: 52, baseType: !7, size: 32, offset: 896)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "idx_generator", scope: !2722, file: !2723, line: 53, baseType: !7, size: 32, offset: 928)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "policy_inexact", scope: !2722, file: !2723, line: 54, baseType: !2738, size: 192, offset: 960)
!2738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !666, size: 192, elements: !507)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "policy_bydst", scope: !2722, file: !2723, line: 55, baseType: !2740, size: 384, offset: 1152)
!2740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2741, size: 384, elements: !507)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xfrm_policy_hash", file: !2723, line: 14, size: 128, elements: !2742)
!2742 = !{!2743, !2744, !2745, !2746, !2747, !2748}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !2741, file: !2723, line: 15, baseType: !1739, size: 64)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "hmask", scope: !2741, file: !2723, line: 16, baseType: !7, size: 32, offset: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "dbits4", scope: !2741, file: !2723, line: 17, baseType: !90, size: 8, offset: 96)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "sbits4", scope: !2741, file: !2723, line: 18, baseType: !90, size: 8, offset: 104)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "dbits6", scope: !2741, file: !2723, line: 19, baseType: !90, size: 8, offset: 112)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "sbits6", scope: !2741, file: !2723, line: 20, baseType: !90, size: 8, offset: 120)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "policy_count", scope: !2722, file: !2723, line: 56, baseType: !2750, size: 192, offset: 1536)
!2750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 192, elements: !1253)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "policy_hash_work", scope: !2722, file: !2723, line: 57, baseType: !1313, size: 256, offset: 1728)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "policy_hthresh", scope: !2722, file: !2723, line: 58, baseType: !2753, size: 384, offset: 1984)
!2753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xfrm_policy_hthresh", file: !2723, line: 23, size: 384, elements: !2754)
!2754 = !{!2755, !2756, !2757, !2758, !2759, !2760}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2753, file: !2723, line: 24, baseType: !1313, size: 256)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2753, file: !2723, line: 25, baseType: !2314, size: 64, offset: 256)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "lbits4", scope: !2753, file: !2723, line: 26, baseType: !90, size: 8, offset: 320)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "rbits4", scope: !2753, file: !2723, line: 27, baseType: !90, size: 8, offset: 328)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "lbits6", scope: !2753, file: !2723, line: 28, baseType: !90, size: 8, offset: 336)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "rbits6", scope: !2753, file: !2723, line: 29, baseType: !90, size: 8, offset: 344)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "inexact_bins", scope: !2722, file: !2723, line: 59, baseType: !104, size: 128, offset: 2368)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "nlsk", scope: !2722, file: !2723, line: 62, baseType: !1732, size: 64, offset: 2496)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "nlsk_stash", scope: !2722, file: !2723, line: 63, baseType: !1732, size: 64, offset: 2560)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_aevent_etime", scope: !2722, file: !2723, line: 65, baseType: !338, size: 32, offset: 2624)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_aevent_rseqth", scope: !2722, file: !2723, line: 66, baseType: !338, size: 32, offset: 2656)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_larval_drop", scope: !2722, file: !2723, line: 67, baseType: !29, size: 32, offset: 2688)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_acq_expires", scope: !2722, file: !2723, line: 68, baseType: !338, size: 32, offset: 2720)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "policy_default", scope: !2722, file: !2723, line: 70, baseType: !650, size: 24, offset: 2752)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_hdr", scope: !2722, file: !2723, line: 73, baseType: !1376, size: 64, offset: 2816)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "xfrm4_dst_ops", scope: !2722, file: !2723, line: 76, baseType: !2460, size: 1536, offset: 3072)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "xfrm6_dst_ops", scope: !2722, file: !2723, line: 78, baseType: !2460, size: 1536, offset: 4608)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "xfrm_state_lock", scope: !2722, file: !2723, line: 80, baseType: !66, size: 32, offset: 6144)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "xfrm_state_hash_generation", scope: !2722, file: !2723, line: 81, baseType: !310, size: 32, offset: 6176)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "xfrm_policy_hash_generation", scope: !2722, file: !2723, line: 82, baseType: !310, size: 32, offset: 6208)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "xfrm_policy_lock", scope: !2722, file: !2723, line: 84, baseType: !66, size: 32, offset: 6240)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "xfrm_cfg_mutex", scope: !2722, file: !2723, line: 85, baseType: !614, size: 256, offset: 6272)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "net_cookie", scope: !1701, file: !1702, line: 170, baseType: !228, size: 64, offset: 27136)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "diag_nlsk", scope: !1701, file: !1702, line: 190, baseType: !1732, size: 64, offset: 27200)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1667, file: !1668, line: 38, baseType: !2780, size: 64, offset: 384)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1668, line: 38, flags: DIFlagFwdDecl)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1667, file: !1668, line: 39, baseType: !2780, size: 64, offset: 448)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1667, file: !1668, line: 40, baseType: !2784, size: 64, offset: 512)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1668, line: 12, flags: DIFlagFwdDecl)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !707, file: !708, line: 1110, baseType: !2787, size: 64, offset: 15360)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2789, line: 93, size: 8768, elements: !2790)
!2789 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2790 = !{!2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2839, !2848, !2849, !2851, !2852, !2853, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2889, !2890, !2897, !2907, !2910, !2911, !2914, !2915, !2916, !2917, !2918, !2919}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2788, file: !2789, line: 94, baseType: !657, size: 32)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2788, file: !2789, line: 95, baseType: !56, size: 32, offset: 32)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2788, file: !2789, line: 96, baseType: !29, size: 32, offset: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2788, file: !2789, line: 97, baseType: !29, size: 32, offset: 96)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2788, file: !2789, line: 98, baseType: !104, size: 128, offset: 128)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2788, file: !2789, line: 100, baseType: !61, size: 192, offset: 256)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2788, file: !2789, line: 103, baseType: !706, size: 64, offset: 448)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2788, file: !2789, line: 106, baseType: !2799, size: 192, offset: 512)
!2799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2800, line: 32, size: 192, elements: !2801)
!2800 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2801 = !{!2802, !2803}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2799, file: !2800, line: 33, baseType: !104, size: 128)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2799, file: !2800, line: 34, baseType: !2804, size: 64, offset: 128)
!2804 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2805, line: 25, baseType: !2806)
!2805 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2805, line: 23, size: 64, elements: !2807)
!2807 = !{!2808}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2806, file: !2805, line: 24, baseType: !952, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2788, file: !2789, line: 109, baseType: !666, size: 64, offset: 704)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2788, file: !2789, line: 112, baseType: !29, size: 32, offset: 768)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2788, file: !2789, line: 114, baseType: !29, size: 32, offset: 800)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2788, file: !2789, line: 115, baseType: !706, size: 64, offset: 832)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2788, file: !2789, line: 118, baseType: !29, size: 32, offset: 896)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2788, file: !2789, line: 119, baseType: !7, size: 32, offset: 928)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2788, file: !2789, line: 121, baseType: !2816, size: 64, offset: 960)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2789, line: 80, size: 448, elements: !2818)
!2818 = !{!2819, !2820, !2826}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2817, file: !2789, line: 81, baseType: !56, size: 32)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2817, file: !2789, line: 82, baseType: !2821, size: 128, offset: 64)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2789, line: 75, size: 128, elements: !2822)
!2822 = !{!2823, !2824}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2821, file: !2789, line: 76, baseType: !706, size: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2821, file: !2789, line: 77, baseType: !2825, size: 64, offset: 64)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2817, file: !2789, line: 83, baseType: !1352, size: 256, offset: 192)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2788, file: !2789, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2788, file: !2789, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2788, file: !2789, line: 138, baseType: !7, size: 32, offset: 1056)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2788, file: !2789, line: 139, baseType: !104, size: 128, offset: 1088)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2788, file: !2789, line: 142, baseType: !825, size: 512, offset: 1216)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2788, file: !2789, line: 143, baseType: !833, size: 64, offset: 1728)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2788, file: !2789, line: 150, baseType: !2834, size: 256, offset: 1792)
!2834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2835, size: 256, elements: !2321)
!2835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2789, line: 38, size: 128, elements: !2836)
!2836 = !{!2837, !2838}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2835, file: !2789, line: 39, baseType: !228, size: 64)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2835, file: !2789, line: 40, baseType: !228, size: 64, offset: 64)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2788, file: !2789, line: 156, baseType: !2840, size: 192, offset: 2048)
!2840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2789, line: 66, size: 192, elements: !2841)
!2841 = !{!2842}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2840, file: !2789, line: 67, baseType: !2843, size: 192)
!2843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2789, line: 47, size: 192, elements: !2844)
!2844 = !{!2845, !2846, !2847}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2843, file: !2789, line: 48, baseType: !607, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2843, file: !2789, line: 49, baseType: !607, size: 64, offset: 64)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2843, file: !2789, line: 50, baseType: !607, size: 64, offset: 128)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2788, file: !2789, line: 160, baseType: !1547, size: 640, offset: 2240)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2788, file: !2789, line: 163, baseType: !2850, size: 256, offset: 2880)
!2850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !653, size: 256, elements: !675)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2788, file: !2789, line: 169, baseType: !653, size: 64, offset: 3136)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2788, file: !2789, line: 172, baseType: !29, size: 32, offset: 3200)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2788, file: !2789, line: 174, baseType: !2854, size: 64, offset: 3264)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2789, line: 174, flags: DIFlagFwdDecl)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2788, file: !2789, line: 185, baseType: !2314, size: 64, offset: 3328)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2788, file: !2789, line: 186, baseType: !228, size: 64, offset: 3392)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2788, file: !2789, line: 186, baseType: !228, size: 64, offset: 3456)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2788, file: !2789, line: 186, baseType: !228, size: 64, offset: 3520)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2788, file: !2789, line: 186, baseType: !228, size: 64, offset: 3584)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2788, file: !2789, line: 187, baseType: !228, size: 64, offset: 3648)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2788, file: !2789, line: 188, baseType: !228, size: 64, offset: 3712)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2788, file: !2789, line: 189, baseType: !1535, size: 192, offset: 3776)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2788, file: !2789, line: 190, baseType: !46, size: 64, offset: 3968)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2788, file: !2789, line: 190, baseType: !46, size: 64, offset: 4032)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2788, file: !2789, line: 190, baseType: !46, size: 64, offset: 4096)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2788, file: !2789, line: 190, baseType: !46, size: 64, offset: 4160)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2788, file: !2789, line: 191, baseType: !46, size: 64, offset: 4224)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2788, file: !2789, line: 191, baseType: !46, size: 64, offset: 4288)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2788, file: !2789, line: 191, baseType: !46, size: 64, offset: 4352)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2788, file: !2789, line: 191, baseType: !46, size: 64, offset: 4416)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2788, file: !2789, line: 192, baseType: !46, size: 64, offset: 4480)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2788, file: !2789, line: 192, baseType: !46, size: 64, offset: 4544)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2788, file: !2789, line: 192, baseType: !46, size: 64, offset: 4608)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2788, file: !2789, line: 192, baseType: !46, size: 64, offset: 4672)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2788, file: !2789, line: 193, baseType: !46, size: 64, offset: 4736)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2788, file: !2789, line: 193, baseType: !46, size: 64, offset: 4800)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2788, file: !2789, line: 194, baseType: !2879, size: 448, offset: 4864)
!2879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2880, line: 12, size: 448, elements: !2881)
!2880 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2881 = !{!2882, !2883, !2884, !2885, !2886, !2887, !2888}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2879, file: !2880, line: 15, baseType: !228, size: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2879, file: !2880, line: 17, baseType: !228, size: 64, offset: 64)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2879, file: !2880, line: 19, baseType: !228, size: 64, offset: 128)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2879, file: !2880, line: 21, baseType: !228, size: 64, offset: 192)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2879, file: !2880, line: 29, baseType: !228, size: 64, offset: 256)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2879, file: !2880, line: 35, baseType: !228, size: 64, offset: 320)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2879, file: !2880, line: 44, baseType: !228, size: 64, offset: 384)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2788, file: !2789, line: 202, baseType: !230, size: 64, offset: 5312)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2788, file: !2789, line: 213, baseType: !2891, size: 2048, offset: 5376)
!2891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2892, size: 2048, elements: !1639)
!2892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2893, line: 43, size: 128, elements: !2894)
!2893 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2894 = !{!2895, !2896}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2892, file: !2893, line: 44, baseType: !45, size: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2892, file: !2893, line: 45, baseType: !45, size: 64, offset: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2788, file: !2789, line: 216, baseType: !2898, size: 448, offset: 7424)
!2898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2789, line: 30, size: 448, elements: !2899)
!2899 = !{!2900, !2901, !2902, !2903, !2904, !2905, !2906}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2898, file: !2789, line: 31, baseType: !29, size: 32)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2898, file: !2789, line: 32, baseType: !226, size: 64, offset: 64)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2898, file: !2789, line: 33, baseType: !46, size: 64, offset: 128)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2898, file: !2789, line: 34, baseType: !228, size: 64, offset: 192)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2898, file: !2789, line: 34, baseType: !228, size: 64, offset: 256)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2898, file: !2789, line: 35, baseType: !46, size: 64, offset: 320)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2898, file: !2789, line: 35, baseType: !46, size: 64, offset: 384)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2788, file: !2789, line: 219, baseType: !2908, size: 64, offset: 7872)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2789, line: 219, flags: DIFlagFwdDecl)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2788, file: !2789, line: 222, baseType: !7, size: 32, offset: 7936)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2788, file: !2789, line: 223, baseType: !2912, size: 64, offset: 8000)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2789, line: 223, flags: DIFlagFwdDecl)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2788, file: !2789, line: 230, baseType: !1198, size: 8, offset: 8064)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2788, file: !2789, line: 231, baseType: !1146, size: 16, offset: 8080)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2788, file: !2789, line: 232, baseType: !1146, size: 16, offset: 8096)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2788, file: !2789, line: 234, baseType: !1001, size: 64, offset: 8128)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2788, file: !2789, line: 237, baseType: !614, size: 256, offset: 8192)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2788, file: !2789, line: 243, baseType: !1048, size: 320, offset: 8448)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !707, file: !708, line: 1111, baseType: !2921, size: 64, offset: 15424)
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2789, line: 20, size: 16640, elements: !2923)
!2923 = !{!2924, !2925, !2926, !2927}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2922, file: !2789, line: 21, baseType: !66, size: 32)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2922, file: !2789, line: 22, baseType: !657, size: 32, offset: 32)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2922, file: !2789, line: 23, baseType: !61, size: 192, offset: 64)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2922, file: !2789, line: 24, baseType: !2928, size: 16384, offset: 256)
!2928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2929, size: 16384, elements: !511)
!2929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2800, line: 51, size: 256, elements: !2930)
!2930 = !{!2931}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2929, file: !2800, line: 52, baseType: !2932, size: 256)
!2932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2800, line: 37, size: 256, elements: !2933)
!2933 = !{!2934, !2941, !2942, !2948}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2932, file: !2800, line: 39, baseType: !2935, size: 64)
!2935 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2936, line: 83, baseType: !2937)
!2936 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2936, line: 82, baseType: !2939)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{null, !29}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2932, file: !2800, line: 40, baseType: !46, size: 64, offset: 64)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2932, file: !2800, line: 46, baseType: !2943, size: 64, offset: 128)
!2943 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2936, line: 86, baseType: !2944)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2936, line: 85, baseType: !2946)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{null}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2932, file: !2800, line: 48, baseType: !2804, size: 64, offset: 192)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !707, file: !708, line: 1112, baseType: !2804, size: 64, offset: 15488)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !707, file: !708, line: 1113, baseType: !2804, size: 64, offset: 15552)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !707, file: !708, line: 1115, baseType: !2804, size: 64, offset: 15616)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !707, file: !708, line: 1116, baseType: !2799, size: 192, offset: 15680)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !707, file: !708, line: 1117, baseType: !46, size: 64, offset: 15872)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !707, file: !708, line: 1118, baseType: !42, size: 64, offset: 15936)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !707, file: !708, line: 1119, baseType: !7, size: 32, offset: 16000)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !707, file: !708, line: 1121, baseType: !595, size: 64, offset: 16064)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !707, file: !708, line: 1125, baseType: !2958, size: 64, offset: 16128)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !708, line: 43, flags: DIFlagFwdDecl)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !707, file: !708, line: 1127, baseType: !275, size: 32, offset: 16192)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !707, file: !708, line: 1128, baseType: !7, size: 32, offset: 16224)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !707, file: !708, line: 1130, baseType: !2963, size: 128, offset: 16256)
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2964, line: 37, size: 128, elements: !2965)
!2964 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2965 = !{!2966, !2967, !2968}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2963, file: !2964, line: 38, baseType: !29, size: 32)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2963, file: !2964, line: 39, baseType: !56, size: 32, offset: 32)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2963, file: !2964, line: 40, baseType: !2969, size: 64, offset: 64)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2964, line: 24, flags: DIFlagFwdDecl)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !707, file: !708, line: 1131, baseType: !2972, size: 256, offset: 16384)
!2972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2973, line: 12, size: 256, elements: !2974)
!2973 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2974 = !{!2975, !2976, !2977, !2978}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2972, file: !2973, line: 13, baseType: !407, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2972, file: !2973, line: 14, baseType: !46, size: 64, offset: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2972, file: !2973, line: 15, baseType: !46, size: 64, offset: 128)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2972, file: !2973, line: 16, baseType: !1198, size: 8, offset: 192)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !707, file: !708, line: 1134, baseType: !228, size: 64, offset: 16640)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !707, file: !708, line: 1135, baseType: !228, size: 64, offset: 16704)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !707, file: !708, line: 1138, baseType: !66, size: 32, offset: 16768)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !707, file: !708, line: 1141, baseType: !619, size: 32, offset: 16800)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !707, file: !708, line: 1143, baseType: !2984, size: 64, offset: 16832)
!2984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !708, line: 735, size: 64, elements: !2985)
!2985 = !{!2986}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2984, file: !708, line: 736, baseType: !2987, size: 64)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !707, file: !708, line: 1147, baseType: !884, size: 128, offset: 16896)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !707, file: !708, line: 1149, baseType: !706, size: 64, offset: 17024)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !707, file: !708, line: 1151, baseType: !2991, size: 64, offset: 17088)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !708, line: 1151, flags: DIFlagFwdDecl)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !707, file: !708, line: 1188, baseType: !27, size: 64, offset: 17152)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !707, file: !708, line: 1191, baseType: !2995, size: 64, offset: 17216)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !708, line: 44, flags: DIFlagFwdDecl)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !707, file: !708, line: 1194, baseType: !2998, size: 64, offset: 17280)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !708, line: 45, flags: DIFlagFwdDecl)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !707, file: !708, line: 1197, baseType: !3001, size: 64, offset: 17344)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !708, line: 61, flags: DIFlagFwdDecl)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !707, file: !708, line: 1199, baseType: !3004, size: 64, offset: 17408)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3006, line: 99, size: 128, elements: !3007)
!3006 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3007 = !{!3008, !3009, !3010}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3005, file: !3006, line: 100, baseType: !605, size: 64)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3005, file: !3006, line: 101, baseType: !56, size: 32, offset: 64)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3005, file: !3006, line: 103, baseType: !33, size: 16, offset: 96)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !707, file: !708, line: 1202, baseType: !3012, size: 64, offset: 17472)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !708, line: 48, flags: DIFlagFwdDecl)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !707, file: !708, line: 1205, baseType: !46, size: 64, offset: 17536)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !707, file: !708, line: 1206, baseType: !3016, size: 64, offset: 17600)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2800, line: 14, baseType: !3018)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2800, line: 12, size: 384, elements: !3019)
!3019 = !{!3020}
!3020 = !DIDerivedType(tag: DW_TAG_member, scope: !3018, file: !2800, line: 13, baseType: !3021, size: 384)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3018, file: !2800, line: 13, size: 384, elements: !3022)
!3022 = !{!3023, !3024, !3025, !3026}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3021, file: !2800, line: 13, baseType: !29, size: 32)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3021, file: !2800, line: 13, baseType: !29, size: 32, offset: 32)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3021, file: !2800, line: 13, baseType: !29, size: 32, offset: 64)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3021, file: !2800, line: 13, baseType: !3027, size: 256, offset: 128)
!3027 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3028, line: 37, size: 256, elements: !3029)
!3028 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3029 = !{!3030, !3035, !3048, !3054, !3063, !3090, !3095}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3027, file: !3028, line: 42, baseType: !3031, size: 64)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3027, file: !3028, line: 39, size: 64, elements: !3032)
!3032 = !{!3033, !3034}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3031, file: !3028, line: 40, baseType: !1512, size: 32)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3031, file: !3028, line: 41, baseType: !281, size: 32, offset: 32)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3027, file: !3028, line: 50, baseType: !3036, size: 192)
!3036 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3027, file: !3028, line: 45, size: 192, elements: !3037)
!3037 = !{!3038, !3040, !3041, !3047}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3036, file: !3028, line: 46, baseType: !3039, size: 32)
!3039 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !44, line: 95, baseType: !29)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3036, file: !3028, line: 47, baseType: !29, size: 32, offset: 32)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3036, file: !3028, line: 48, baseType: !3042, size: 64, offset: 64)
!3042 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3028, line: 11, baseType: !3043)
!3043 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3028, line: 8, size: 64, elements: !3044)
!3044 = !{!3045, !3046}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3043, file: !3028, line: 9, baseType: !29, size: 32)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3043, file: !3028, line: 10, baseType: !27, size: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3036, file: !3028, line: 49, baseType: !29, size: 32, offset: 128)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3027, file: !3028, line: 57, baseType: !3049, size: 128)
!3049 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3027, file: !3028, line: 53, size: 128, elements: !3050)
!3050 = !{!3051, !3052, !3053}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3049, file: !3028, line: 54, baseType: !1512, size: 32)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3049, file: !3028, line: 55, baseType: !281, size: 32, offset: 32)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3049, file: !3028, line: 56, baseType: !3042, size: 64, offset: 64)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3027, file: !3028, line: 66, baseType: !3055, size: 256)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3027, file: !3028, line: 60, size: 256, elements: !3056)
!3056 = !{!3057, !3058, !3059, !3060, !3062}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3055, file: !3028, line: 61, baseType: !1512, size: 32)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3055, file: !3028, line: 62, baseType: !281, size: 32, offset: 32)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3055, file: !3028, line: 63, baseType: !29, size: 32, offset: 64)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3055, file: !3028, line: 64, baseType: !3061, size: 64, offset: 128)
!3061 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !44, line: 94, baseType: !540)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3055, file: !3028, line: 65, baseType: !3061, size: 64, offset: 192)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3027, file: !3028, line: 105, baseType: !3064, size: 256)
!3064 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3027, file: !3028, line: 69, size: 256, elements: !3065)
!3065 = !{!3066, !3067}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3064, file: !3028, line: 70, baseType: !27, size: 64)
!3067 = !DIDerivedType(tag: DW_TAG_member, scope: !3064, file: !3028, line: 79, baseType: !3068, size: 192, offset: 64)
!3068 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3064, file: !3028, line: 79, size: 192, elements: !3069)
!3069 = !{!3070, !3071, !3072, !3079, !3084}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3068, file: !3028, line: 81, baseType: !29, size: 32)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3068, file: !3028, line: 86, baseType: !1146, size: 16)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3068, file: !3028, line: 92, baseType: !3073, size: 192)
!3073 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3068, file: !3028, line: 88, size: 192, elements: !3074)
!3074 = !{!3075, !3077, !3078}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3073, file: !3028, line: 89, baseType: !3076, size: 64)
!3076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !868)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3073, file: !3028, line: 90, baseType: !27, size: 64, offset: 64)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3073, file: !3028, line: 91, baseType: !27, size: 64, offset: 128)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3068, file: !3028, line: 97, baseType: !3080, size: 96)
!3080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3068, file: !3028, line: 94, size: 96, elements: !3081)
!3081 = !{!3082, !3083}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3080, file: !3028, line: 95, baseType: !3076, size: 64)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3080, file: !3028, line: 96, baseType: !339, size: 32, offset: 64)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3068, file: !3028, line: 103, baseType: !3085, size: 128)
!3085 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3068, file: !3028, line: 99, size: 128, elements: !3086)
!3086 = !{!3087, !3088, !3089}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3085, file: !3028, line: 100, baseType: !46, size: 64)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3085, file: !3028, line: 101, baseType: !339, size: 32, offset: 64)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3085, file: !3028, line: 102, baseType: !339, size: 32, offset: 96)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3027, file: !3028, line: 111, baseType: !3091, size: 128)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3027, file: !3028, line: 108, size: 128, elements: !3092)
!3092 = !{!3093, !3094}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3091, file: !3028, line: 109, baseType: !226, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3091, file: !3028, line: 110, baseType: !29, size: 32, offset: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3027, file: !3028, line: 118, baseType: !3096, size: 128)
!3096 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3027, file: !3028, line: 114, size: 128, elements: !3097)
!3097 = !{!3098, !3099, !3100}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3096, file: !3028, line: 115, baseType: !27, size: 64)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3096, file: !3028, line: 116, baseType: !29, size: 32, offset: 64)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3096, file: !3028, line: 117, baseType: !7, size: 32, offset: 96)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !707, file: !708, line: 1208, baseType: !2879, size: 448, offset: 17664)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !707, file: !708, line: 1215, baseType: !228, size: 64, offset: 18112)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !707, file: !708, line: 1217, baseType: !228, size: 64, offset: 18176)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !707, file: !708, line: 1219, baseType: !228, size: 64, offset: 18240)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !707, file: !708, line: 1223, baseType: !3106, size: 64, offset: 18304)
!3106 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !189, line: 99, baseType: !3107)
!3107 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !189, line: 99, size: 64, elements: !3108)
!3108 = !{!3109}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3107, file: !189, line: 99, baseType: !952, size: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !707, file: !708, line: 1225, baseType: !310, size: 32, offset: 18368)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !707, file: !708, line: 1226, baseType: !29, size: 32, offset: 18400)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !707, file: !708, line: 1227, baseType: !29, size: 32, offset: 18432)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !707, file: !708, line: 1231, baseType: !3114, size: 64, offset: 18496)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !708, line: 1231, flags: DIFlagFwdDecl)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !707, file: !708, line: 1233, baseType: !104, size: 128, offset: 18560)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !707, file: !708, line: 1240, baseType: !3118, size: 64, offset: 18688)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3119, size: 64)
!3119 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !708, line: 62, flags: DIFlagFwdDecl)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !707, file: !708, line: 1242, baseType: !3121, size: 64, offset: 18752)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !708, line: 1242, flags: DIFlagFwdDecl)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !707, file: !708, line: 1244, baseType: !104, size: 128, offset: 18816)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !707, file: !708, line: 1245, baseType: !3125, size: 64, offset: 18944)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !708, line: 51, flags: DIFlagFwdDecl)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !707, file: !708, line: 1246, baseType: !614, size: 256, offset: 19008)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !707, file: !708, line: 1247, baseType: !7, size: 32, offset: 19264)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !707, file: !708, line: 1250, baseType: !3130, size: 64, offset: 19328)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !708, line: 57, flags: DIFlagFwdDecl)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !707, file: !708, line: 1251, baseType: !614, size: 256, offset: 19392)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !707, file: !708, line: 1252, baseType: !104, size: 128, offset: 19648)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !707, file: !708, line: 1259, baseType: !3135, size: 64, offset: 19776)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !708, line: 54, flags: DIFlagFwdDecl)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !707, file: !708, line: 1260, baseType: !1146, size: 16, offset: 19840)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !707, file: !708, line: 1261, baseType: !1146, size: 16, offset: 19856)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !707, file: !708, line: 1314, baseType: !3140, size: 64, offset: 19904)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3142, line: 62, size: 256, align: 256, elements: !3143)
!3142 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3143 = !{!3144, !3145, !3146, !3147, !3148, !3149, !3150}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3141, file: !3142, line: 75, baseType: !339, size: 32)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3141, file: !3142, line: 90, baseType: !339, size: 32, offset: 32)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3141, file: !3142, line: 112, baseType: !229, size: 64, offset: 64)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3141, file: !3142, line: 132, baseType: !339, size: 32, offset: 128)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3141, file: !3142, line: 140, baseType: !339, size: 32, offset: 160)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3141, file: !3142, line: 149, baseType: !339, size: 32, offset: 192)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3141, file: !3142, line: 154, baseType: !2231, offset: 224)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !707, file: !708, line: 1315, baseType: !338, size: 32, offset: 19968)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !707, file: !708, line: 1316, baseType: !338, size: 32, offset: 20000)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !707, file: !708, line: 1321, baseType: !46, size: 64, offset: 20032)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !707, file: !708, line: 1325, baseType: !29, size: 32, offset: 20096)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !707, file: !708, line: 1326, baseType: !29, size: 32, offset: 20128)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !707, file: !708, line: 1327, baseType: !29, size: 32, offset: 20160)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !707, file: !708, line: 1328, baseType: !29, size: 32, offset: 20192)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !707, file: !708, line: 1329, baseType: !592, size: 128, align: 64, offset: 20224)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !707, file: !708, line: 1332, baseType: !3160, size: 128, offset: 20352)
!3160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3161, line: 51, size: 128, elements: !3162)
!3161 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3162 = !{!3163, !3168, !3169}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3160, file: !3161, line: 60, baseType: !3164, size: 64)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3165, line: 7, size: 64, elements: !3166)
!3165 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3166 = !{!3167}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3164, file: !3165, line: 12, baseType: !949, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3160, file: !3161, line: 63, baseType: !1198, size: 8, offset: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3160, file: !3161, line: 70, baseType: !1198, size: 8, offset: 72)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !707, file: !708, line: 1335, baseType: !3171, size: 64, offset: 20480)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !708, line: 59, flags: DIFlagFwdDecl)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !707, file: !708, line: 1337, baseType: !3174, size: 128, offset: 20544)
!3174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3161, line: 39, size: 128, elements: !3175)
!3175 = !{!3176, !3177, !3178}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3174, file: !3161, line: 40, baseType: !243, size: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3174, file: !3161, line: 42, baseType: !339, size: 32, offset: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3174, file: !3161, line: 43, baseType: !339, size: 32, offset: 96)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !707, file: !708, line: 1340, baseType: !3180, size: 64, offset: 20672)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !708, line: 69, flags: DIFlagFwdDecl)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !707, file: !708, line: 1351, baseType: !29, size: 32, offset: 20736)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !707, file: !708, line: 1352, baseType: !29, size: 32, offset: 20768)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !707, file: !708, line: 1354, baseType: !46, size: 64, offset: 20800)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !707, file: !708, line: 1364, baseType: !228, size: 64, offset: 20864)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !707, file: !708, line: 1365, baseType: !228, size: 64, offset: 20928)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !707, file: !708, line: 1412, baseType: !46, size: 64, offset: 20992)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !707, file: !708, line: 1453, baseType: !3189, size: 64, offset: 21056)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !708, line: 1453, flags: DIFlagFwdDecl)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !707, file: !708, line: 1457, baseType: !3192, size: 64, offset: 21120)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !121, line: 61, size: 576, elements: !3194)
!3194 = !{!3195, !3196, !3215, !3218, !3219, !3252, !3262}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3193, file: !121, line: 62, baseType: !120, size: 32)
!3196 = !DIDerivedType(tag: DW_TAG_member, scope: !3193, file: !121, line: 64, baseType: !3197, size: 192, offset: 64)
!3197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3193, file: !121, line: 64, size: 192, elements: !3198)
!3198 = !{!3199, !3210}
!3199 = !DIDerivedType(tag: DW_TAG_member, scope: !3197, file: !121, line: 65, baseType: !3200, size: 192)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3197, file: !121, line: 65, size: 192, elements: !3201)
!3201 = !{!3202, !3209}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3200, file: !121, line: 66, baseType: !3203, size: 128)
!3203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3204, line: 50, size: 128, elements: !3205)
!3204 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3205 = !{!3206, !3207, !3208}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3203, file: !3204, line: 52, baseType: !46, size: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3203, file: !3204, line: 54, baseType: !7, size: 32, offset: 64)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3203, file: !3204, line: 55, baseType: !7, size: 32, offset: 96)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3200, file: !121, line: 67, baseType: !46, size: 64, offset: 128)
!3210 = !DIDerivedType(tag: DW_TAG_member, scope: !3197, file: !121, line: 70, baseType: !3211, size: 192)
!3211 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3197, file: !121, line: 70, size: 192, elements: !3212)
!3212 = !{!3213, !3214}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3211, file: !121, line: 71, baseType: !592, size: 128, align: 64)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3211, file: !121, line: 72, baseType: !46, size: 64, offset: 128)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3193, file: !121, line: 76, baseType: !3216, size: 64, offset: 256)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !121, line: 76, flags: DIFlagFwdDecl)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3193, file: !121, line: 77, baseType: !46, size: 64, offset: 320)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3193, file: !121, line: 79, baseType: !3220, size: 64, offset: 384)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3204, line: 25, size: 256, elements: !3222)
!3222 = !{!3223, !3229, !3233}
!3223 = !DIDerivedType(tag: DW_TAG_member, scope: !3221, file: !3204, line: 26, baseType: !3224, size: 128)
!3224 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3221, file: !3204, line: 26, size: 128, elements: !3225)
!3225 = !{!3226, !3228}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3224, file: !3204, line: 27, baseType: !3227, size: 128)
!3227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 128, elements: !1639)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3224, file: !3204, line: 28, baseType: !3227, size: 128)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3221, file: !3204, line: 31, baseType: !3230, size: 64, offset: 128)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3232)
!3232 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3204, line: 23, flags: DIFlagFwdDecl)
!3233 = !DIDerivedType(tag: DW_TAG_member, scope: !3221, file: !3204, line: 33, baseType: !3234, size: 64, offset: 192)
!3234 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3221, file: !3204, line: 33, size: 64, elements: !3235)
!3235 = !{!3236, !3242, !3247}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3234, file: !3204, line: 38, baseType: !3237, size: 64)
!3237 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3234, file: !3204, line: 34, size: 64, elements: !3238)
!3238 = !{!3239, !3240, !3241}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3237, file: !3204, line: 35, baseType: !1094, size: 32)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3237, file: !3204, line: 36, baseType: !90, size: 8, offset: 32)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3237, file: !3204, line: 37, baseType: !90, size: 8, offset: 40)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3234, file: !3204, line: 42, baseType: !3243, size: 16)
!3243 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3234, file: !3204, line: 39, size: 16, elements: !3244)
!3244 = !{!3245, !3246}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3243, file: !3204, line: 40, baseType: !90, size: 8)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3243, file: !3204, line: 41, baseType: !90, size: 8, offset: 8)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3234, file: !3204, line: 46, baseType: !3248, size: 16)
!3248 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3234, file: !3204, line: 43, size: 16, elements: !3249)
!3249 = !{!3250, !3251}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3248, file: !3204, line: 44, baseType: !90, size: 8)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3248, file: !3204, line: 45, baseType: !90, size: 8, offset: 8)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3193, file: !121, line: 81, baseType: !3253, size: 64, offset: 448)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !121, line: 85, size: 384, elements: !3255)
!3255 = !{!3256, !3257, !3258, !3259, !3260, !3261}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3254, file: !121, line: 86, baseType: !3216, size: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3254, file: !121, line: 87, baseType: !46, size: 64, offset: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3254, file: !121, line: 88, baseType: !46, size: 64, offset: 128)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3254, file: !121, line: 89, baseType: !46, size: 64, offset: 192)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3254, file: !121, line: 90, baseType: !1198, size: 8, offset: 256)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3254, file: !121, line: 92, baseType: !3253, size: 64, offset: 320)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3193, file: !121, line: 82, baseType: !7, size: 32, offset: 512)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !707, file: !708, line: 1463, baseType: !3264, offset: 21184)
!3264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !708, line: 739, elements: !1022)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !707, file: !708, line: 1470, baseType: !592, size: 128, align: 64, offset: 21184)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !707, file: !708, line: 1471, baseType: !657, size: 32, offset: 21312)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !707, file: !708, line: 1472, baseType: !29, size: 32, offset: 21344)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !707, file: !708, line: 1474, baseType: !706, size: 64, offset: 21376)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !707, file: !708, line: 1475, baseType: !1985, size: 320, offset: 21440)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !707, file: !708, line: 1478, baseType: !3271, size: 64, offset: 21760)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3273, line: 49, size: 512, elements: !3274)
!3273 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3274 = !{!3275, !3276, !3277, !3278, !3279, !3281, !3282, !3283, !3284}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3272, file: !3273, line: 50, baseType: !3271, size: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3272, file: !3273, line: 51, baseType: !27, size: 64, offset: 64)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3272, file: !3273, line: 52, baseType: !46, size: 64, offset: 128)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3272, file: !3273, line: 53, baseType: !46, size: 64, offset: 192)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3272, file: !3273, line: 54, baseType: !3280, size: 64, offset: 256)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3272, file: !3273, line: 56, baseType: !7, size: 32, offset: 320)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3272, file: !3273, line: 58, baseType: !7, size: 32, offset: 352)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3272, file: !3273, line: 59, baseType: !227, size: 64, offset: 384)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3272, file: !3273, line: 60, baseType: !1127, size: 64, offset: 448)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !707, file: !708, line: 1482, baseType: !657, size: 32, offset: 21824)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !707, file: !708, line: 1489, baseType: !27, size: 64, offset: 21888)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !707, file: !708, line: 1504, baseType: !27, size: 64, offset: 21952)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !707, file: !708, line: 1505, baseType: !229, size: 64, offset: 22016)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !707, file: !708, line: 1506, baseType: !228, size: 64, offset: 22080)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !707, file: !708, line: 1507, baseType: !229, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !707, file: !708, line: 1508, baseType: !229, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !707, file: !708, line: 1509, baseType: !229, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !707, file: !708, line: 1510, baseType: !592, size: 128, align: 64, offset: 22208)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !707, file: !708, line: 1511, baseType: !29, size: 32, offset: 22336)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !707, file: !708, line: 1515, baseType: !3296, size: 64, offset: 22400)
!3296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !587, line: 56, size: 64, elements: !3297)
!3297 = !{!3298}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3296, file: !587, line: 57, baseType: !590, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !707, file: !708, line: 1518, baseType: !3296, size: 64, offset: 22464)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !707, file: !708, line: 1528, baseType: !592, size: 128, align: 64, offset: 22528)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !707, file: !708, line: 1552, baseType: !3302, size: 35328, offset: 23040)
!3302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3303, line: 430, size: 35328, elements: !3304)
!3303 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3304 = !{!3305, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3334, !3335, !3336, !3337, !3338, !3339, !3342, !3343, !3344, !3345}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3302, file: !3303, line: 432, baseType: !3306, size: 192)
!3306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3307, size: 192, elements: !507)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3308, line: 16, size: 64, elements: !3309)
!3308 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3309 = !{!3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3307, file: !3308, line: 17, baseType: !100, size: 16)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3307, file: !3308, line: 18, baseType: !100, size: 16, offset: 16)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3307, file: !3308, line: 19, baseType: !100, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3307, file: !3308, line: 19, baseType: !100, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3307, file: !3308, line: 19, baseType: !100, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3307, file: !3308, line: 19, baseType: !100, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3307, file: !3308, line: 19, baseType: !100, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3307, file: !3308, line: 20, baseType: !100, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3307, file: !3308, line: 20, baseType: !100, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3307, file: !3308, line: 20, baseType: !100, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3307, file: !3308, line: 20, baseType: !100, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3307, file: !3308, line: 20, baseType: !100, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3307, file: !3308, line: 20, baseType: !100, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3302, file: !3303, line: 436, baseType: !46, size: 64, offset: 192)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3302, file: !3303, line: 440, baseType: !33, size: 16, offset: 256)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3302, file: !3303, line: 441, baseType: !33, size: 16, offset: 272)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3302, file: !3303, line: 442, baseType: !33, size: 16, offset: 288)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3302, file: !3303, line: 443, baseType: !33, size: 16, offset: 304)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3302, file: !3303, line: 447, baseType: !46, size: 64, offset: 320)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3302, file: !3303, line: 448, baseType: !46, size: 64, offset: 384)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3302, file: !3303, line: 459, baseType: !3331, size: 256, offset: 448)
!3331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3332, size: 256, elements: !675)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3303, line: 428, flags: DIFlagFwdDecl)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3302, file: !3303, line: 461, baseType: !46, size: 64, offset: 704)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3302, file: !3303, line: 463, baseType: !46, size: 64, offset: 768)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3302, file: !3303, line: 465, baseType: !46, size: 64, offset: 832)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3302, file: !3303, line: 466, baseType: !46, size: 64, offset: 896)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3302, file: !3303, line: 467, baseType: !46, size: 64, offset: 960)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3302, file: !3303, line: 473, baseType: !3340, size: 64, offset: 1024)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3303, line: 10, flags: DIFlagFwdDecl)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3302, file: !3303, line: 480, baseType: !46, size: 64, offset: 1088)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3302, file: !3303, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3302, file: !3303, line: 491, baseType: !338, size: 32, offset: 1184)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3302, file: !3303, line: 501, baseType: !3346, size: 33792, offset: 1536)
!3346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3347, line: 448, size: 33792, elements: !3348)
!3347 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3348 = !{!3349, !3350, !3351, !3513, !3514, !3520, !3521}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3346, file: !3347, line: 461, baseType: !7, size: 32)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3346, file: !3347, line: 468, baseType: !46, size: 64, offset: 64)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3346, file: !3347, line: 476, baseType: !3352, size: 64, offset: 128)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3347, line: 356, size: 33280, align: 512, elements: !3354)
!3354 = !{!3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3353, file: !3347, line: 358, baseType: !7, size: 32)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3353, file: !3347, line: 361, baseType: !7, size: 32, offset: 32)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3353, file: !3347, line: 364, baseType: !228, size: 64, offset: 64)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3353, file: !3347, line: 367, baseType: !228, size: 64, offset: 128)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3353, file: !3347, line: 370, baseType: !228, size: 64, offset: 192)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3353, file: !3347, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3353, file: !3347, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3353, file: !3347, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3353, file: !3347, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3353, file: !3347, line: 397, baseType: !3365, size: 32768, offset: 512)
!3365 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3347, line: 348, size: 32768, elements: !3366)
!3366 = !{!3367, !3382, !3419, !3496, !3509}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3365, file: !3347, line: 349, baseType: !3368, size: 896)
!3368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3347, line: 12, size: 896, elements: !3369)
!3369 = !{!3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3381}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3368, file: !3347, line: 13, baseType: !338, size: 32)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3368, file: !3347, line: 14, baseType: !338, size: 32, offset: 32)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3368, file: !3347, line: 15, baseType: !338, size: 32, offset: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3368, file: !3347, line: 16, baseType: !338, size: 32, offset: 96)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3368, file: !3347, line: 17, baseType: !338, size: 32, offset: 128)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3368, file: !3347, line: 18, baseType: !338, size: 32, offset: 160)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3368, file: !3347, line: 19, baseType: !338, size: 32, offset: 192)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3368, file: !3347, line: 22, baseType: !3378, size: 640, offset: 224)
!3378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 640, elements: !3379)
!3379 = !{!3380}
!3380 = !DISubrange(count: 20)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3368, file: !3347, line: 25, baseType: !338, size: 32, offset: 864)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3365, file: !3347, line: 350, baseType: !3383, size: 4096, align: 128)
!3383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3347, line: 34, size: 4096, align: 128, elements: !3384)
!3384 = !{!3385, !3386, !3387, !3388, !3389, !3404, !3405, !3406, !3408, !3410, !3414}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3383, file: !3347, line: 35, baseType: !100, size: 16)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3383, file: !3347, line: 36, baseType: !100, size: 16, offset: 16)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3383, file: !3347, line: 37, baseType: !100, size: 16, offset: 32)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3383, file: !3347, line: 38, baseType: !100, size: 16, offset: 48)
!3389 = !DIDerivedType(tag: DW_TAG_member, scope: !3383, file: !3347, line: 39, baseType: !3390, size: 128, offset: 64)
!3390 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3383, file: !3347, line: 39, size: 128, elements: !3391)
!3391 = !{!3392, !3397}
!3392 = !DIDerivedType(tag: DW_TAG_member, scope: !3390, file: !3347, line: 40, baseType: !3393, size: 128)
!3393 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3390, file: !3347, line: 40, size: 128, elements: !3394)
!3394 = !{!3395, !3396}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3393, file: !3347, line: 41, baseType: !228, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3393, file: !3347, line: 42, baseType: !228, size: 64, offset: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, scope: !3390, file: !3347, line: 44, baseType: !3398, size: 128)
!3398 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3390, file: !3347, line: 44, size: 128, elements: !3399)
!3399 = !{!3400, !3401, !3402, !3403}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3398, file: !3347, line: 45, baseType: !338, size: 32)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3398, file: !3347, line: 46, baseType: !338, size: 32, offset: 32)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3398, file: !3347, line: 47, baseType: !338, size: 32, offset: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3398, file: !3347, line: 48, baseType: !338, size: 32, offset: 96)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3383, file: !3347, line: 51, baseType: !338, size: 32, offset: 192)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3383, file: !3347, line: 52, baseType: !338, size: 32, offset: 224)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3383, file: !3347, line: 55, baseType: !3407, size: 1024, offset: 256)
!3407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 1024, elements: !348)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3383, file: !3347, line: 58, baseType: !3409, size: 2048, offset: 1280)
!3409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 2048, elements: !511)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3383, file: !3347, line: 60, baseType: !3411, size: 384, offset: 3328)
!3411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 384, elements: !3412)
!3412 = !{!3413}
!3413 = !DISubrange(count: 12)
!3414 = !DIDerivedType(tag: DW_TAG_member, scope: !3383, file: !3347, line: 62, baseType: !3415, size: 384, offset: 3712)
!3415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3383, file: !3347, line: 62, size: 384, elements: !3416)
!3416 = !{!3417, !3418}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3415, file: !3347, line: 63, baseType: !3411, size: 384)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3415, file: !3347, line: 64, baseType: !3411, size: 384)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3365, file: !3347, line: 351, baseType: !3420, size: 1088)
!3420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3347, line: 79, size: 1088, elements: !3421)
!3421 = !{!3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3495}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3420, file: !3347, line: 80, baseType: !338, size: 32)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3420, file: !3347, line: 81, baseType: !338, size: 32, offset: 32)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3420, file: !3347, line: 82, baseType: !338, size: 32, offset: 64)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3420, file: !3347, line: 83, baseType: !338, size: 32, offset: 96)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3420, file: !3347, line: 84, baseType: !338, size: 32, offset: 128)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3420, file: !3347, line: 85, baseType: !338, size: 32, offset: 160)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3420, file: !3347, line: 86, baseType: !338, size: 32, offset: 192)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3420, file: !3347, line: 88, baseType: !3378, size: 640, offset: 224)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3420, file: !3347, line: 89, baseType: !90, size: 8, offset: 864)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3420, file: !3347, line: 90, baseType: !90, size: 8, offset: 872)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3420, file: !3347, line: 91, baseType: !90, size: 8, offset: 880)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3420, file: !3347, line: 92, baseType: !90, size: 8, offset: 888)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3420, file: !3347, line: 93, baseType: !90, size: 8, offset: 896)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3420, file: !3347, line: 94, baseType: !90, size: 8, offset: 904)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3420, file: !3347, line: 95, baseType: !3437, size: 64, offset: 960)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3439, line: 11, size: 128, elements: !3440)
!3439 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3440 = !{!3441, !3442}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3438, file: !3439, line: 12, baseType: !226, size: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3438, file: !3439, line: 13, baseType: !3443, size: 64, offset: 64)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3445, line: 103, size: 1344, elements: !3446)
!3445 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3446 = !{!3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3475, !3476, !3477}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3444, file: !3445, line: 109, baseType: !46, size: 64)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3444, file: !3445, line: 110, baseType: !46, size: 64, offset: 64)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3444, file: !3445, line: 111, baseType: !46, size: 64, offset: 128)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3444, file: !3445, line: 112, baseType: !46, size: 64, offset: 192)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3444, file: !3445, line: 113, baseType: !46, size: 64, offset: 256)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3444, file: !3445, line: 114, baseType: !46, size: 64, offset: 320)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3444, file: !3445, line: 117, baseType: !46, size: 64, offset: 384)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3444, file: !3445, line: 118, baseType: !46, size: 64, offset: 448)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3444, file: !3445, line: 119, baseType: !46, size: 64, offset: 512)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3444, file: !3445, line: 120, baseType: !46, size: 64, offset: 576)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3444, file: !3445, line: 121, baseType: !46, size: 64, offset: 640)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3444, file: !3445, line: 122, baseType: !46, size: 64, offset: 704)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3444, file: !3445, line: 123, baseType: !46, size: 64, offset: 768)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3444, file: !3445, line: 124, baseType: !46, size: 64, offset: 832)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3444, file: !3445, line: 125, baseType: !46, size: 64, offset: 896)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3444, file: !3445, line: 139, baseType: !46, size: 64, offset: 960)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3444, file: !3445, line: 142, baseType: !46, size: 64, offset: 1024)
!3464 = !DIDerivedType(tag: DW_TAG_member, scope: !3444, file: !3445, line: 144, baseType: !3465, size: 64, offset: 1088)
!3465 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3444, file: !3445, line: 144, size: 64, elements: !3466)
!3466 = !{!3467, !3468, !3469}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3465, file: !3445, line: 146, baseType: !100, size: 16)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3465, file: !3445, line: 148, baseType: !228, size: 64)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3465, file: !3445, line: 150, baseType: !3470, size: 64)
!3470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3445, line: 59, size: 64, elements: !3471)
!3471 = !{!3472, !3473, !3474}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3470, file: !3445, line: 61, baseType: !228, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3470, file: !3445, line: 63, baseType: !228, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3470, file: !3445, line: 65, baseType: !228, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3444, file: !3445, line: 153, baseType: !46, size: 64, offset: 1152)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3444, file: !3445, line: 154, baseType: !46, size: 64, offset: 1216)
!3477 = !DIDerivedType(tag: DW_TAG_member, scope: !3444, file: !3445, line: 156, baseType: !3478, size: 64, offset: 1280)
!3478 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3444, file: !3445, line: 156, size: 64, elements: !3479)
!3479 = !{!3480, !3481, !3482}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3478, file: !3445, line: 158, baseType: !100, size: 16)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3478, file: !3445, line: 160, baseType: !228, size: 64)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3478, file: !3445, line: 162, baseType: !3483, size: 64)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3445, line: 69, size: 64, elements: !3484)
!3484 = !{!3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3483, file: !3445, line: 71, baseType: !228, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3483, file: !3445, line: 73, baseType: !228, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3483, file: !3445, line: 75, baseType: !228, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3483, file: !3445, line: 77, baseType: !228, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3483, file: !3445, line: 80, baseType: !228, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3483, file: !3445, line: 83, baseType: !228, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3483, file: !3445, line: 86, baseType: !228, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3483, file: !3445, line: 88, baseType: !228, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3483, file: !3445, line: 93, baseType: !228, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3483, file: !3445, line: 100, baseType: !228, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3420, file: !3347, line: 96, baseType: !338, size: 32, offset: 1024)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3365, file: !3347, line: 352, baseType: !3497, size: 4608, align: 512)
!3497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3347, line: 333, size: 4608, align: 512, elements: !3498)
!3498 = !{!3499, !3500, !3507}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3497, file: !3347, line: 334, baseType: !3383, size: 4096, align: 128)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3497, file: !3347, line: 335, baseType: !3501, size: 512, offset: 4096)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3347, line: 312, size: 512, elements: !3502)
!3502 = !{!3503, !3504, !3505}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3501, file: !3347, line: 313, baseType: !228, size: 64)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3501, file: !3347, line: 314, baseType: !228, size: 64, offset: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3501, file: !3347, line: 315, baseType: !3506, size: 384, offset: 128)
!3506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 384, elements: !1253)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3497, file: !3347, line: 336, baseType: !3508, offset: 4608)
!3508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, elements: !1429)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3365, file: !3347, line: 353, baseType: !3510, size: 32768)
!3510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 32768, elements: !3511)
!3511 = !{!3512}
!3512 = !DISubrange(count: 4096)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3346, file: !3347, line: 484, baseType: !3352, size: 64, offset: 192)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3346, file: !3347, line: 491, baseType: !3515, size: 128, offset: 256)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3347, line: 404, size: 128, elements: !3516)
!3516 = !{!3517, !3518, !3519}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3515, file: !3347, line: 424, baseType: !228, size: 64)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3515, file: !3347, line: 432, baseType: !7, size: 32, offset: 64)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3515, file: !3347, line: 440, baseType: !7, size: 32, offset: 96)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3346, file: !3347, line: 498, baseType: !3515, size: 128, offset: 384)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3346, file: !3347, line: 508, baseType: !3353, size: 33280, align: 512, offset: 512)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !687, file: !688, line: 31, baseType: !2247, size: 64, offset: 448)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !687, file: !688, line: 32, baseType: !7, size: 32, offset: 512)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !687, file: !688, line: 33, baseType: !686, size: 64, offset: 576)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !687, file: !688, line: 35, baseType: !3526, size: 64, offset: 640)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !688, line: 17, flags: DIFlagFwdDecl)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !687, file: !688, line: 37, baseType: !1153, size: 64, offset: 704)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !687, file: !688, line: 38, baseType: !1396, size: 64, offset: 768)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !687, file: !688, line: 39, baseType: !29, size: 32, offset: 832)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !687, file: !688, line: 40, baseType: !1186, size: 192, offset: 896)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !687, file: !688, line: 42, baseType: !29, size: 32, offset: 1088)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !629, file: !158, line: 951, baseType: !127, size: 32, offset: 128)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !629, file: !158, line: 952, baseType: !275, size: 32, offset: 160)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !629, file: !158, line: 952, baseType: !275, size: 32, offset: 192)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !629, file: !158, line: 953, baseType: !29, size: 32, offset: 224)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !580, file: !158, line: 1012, baseType: !1565, size: 64, offset: 896)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !580, file: !158, line: 1013, baseType: !3539, size: 256, offset: 960)
!3539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !158, line: 970, size: 256, elements: !3540)
!3540 = !{!3541, !3542, !3543, !3544, !3545, !3546}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3539, file: !158, line: 971, baseType: !46, size: 64)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3539, file: !158, line: 972, baseType: !7, size: 32, offset: 64)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3539, file: !158, line: 973, baseType: !7, size: 32, offset: 96)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3539, file: !158, line: 974, baseType: !7, size: 32, offset: 128)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3539, file: !158, line: 975, baseType: !7, size: 32, offset: 160)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3539, file: !158, line: 976, baseType: !48, size: 64, offset: 192)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !580, file: !158, line: 1014, baseType: !3548, size: 128, offset: 1216)
!3548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !3549, line: 8, size: 128, elements: !3550)
!3549 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!3550 = !{!3551, !3552}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !3548, file: !3549, line: 9, baseType: !412, size: 64)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !3548, file: !3549, line: 10, baseType: !304, size: 64, offset: 64)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !580, file: !158, line: 1015, baseType: !269, size: 64, offset: 1344)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !580, file: !158, line: 1016, baseType: !3555, size: 64, offset: 1408)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3557)
!3557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !158, line: 1914, size: 2112, elements: !3558)
!3558 = !{!3559, !3560, !3564, !3568, !3572, !3738, !3739, !3745, !3758, !3765, !3769, !3770, !3916, !3917, !3921, !3926, !3927, !3931, !3935, !3941, !3942, !3946, !3947, !3951, !3955, !3959, !3965, !3969, !4011, !4015, !4019, !4020, !4026}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3557, file: !158, line: 1915, baseType: !453, size: 64)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3557, file: !158, line: 1916, baseType: !3561, size: 64, offset: 64)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{!48, !579, !48, !29}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3557, file: !158, line: 1917, baseType: !3565, size: 64, offset: 128)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{!538, !579, !407, !42, !47}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3557, file: !158, line: 1918, baseType: !3569, size: 64, offset: 192)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DISubroutineType(types: !3571)
!3571 = !{!538, !579, !23, !42, !47}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3557, file: !158, line: 1919, baseType: !3573, size: 64, offset: 256)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3574 = !DISubroutineType(types: !3575)
!3575 = !{!538, !3576, !3681}
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !158, line: 373, size: 384, elements: !3578)
!3578 = !{!3579, !3580, !3581, !3585, !3586, !3587, !3588}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !3577, file: !158, line: 374, baseType: !579, size: 64)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !3577, file: !158, line: 375, baseType: !48, size: 64, offset: 64)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !3577, file: !158, line: 376, baseType: !3582, size: 64, offset: 128)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{null, !3576, !226}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3577, file: !158, line: 377, baseType: !27, size: 64, offset: 192)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !3577, file: !158, line: 378, baseType: !29, size: 32, offset: 256)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !3577, file: !158, line: 379, baseType: !100, size: 16, offset: 288)
!3588 = !DIDerivedType(tag: DW_TAG_member, scope: !3577, file: !158, line: 380, baseType: !3589, size: 64, offset: 320)
!3589 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3577, file: !158, line: 380, size: 64, elements: !3590)
!3590 = !{!3591, !3677}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !3589, file: !158, line: 386, baseType: !3592, size: 64)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !3594, line: 998, size: 448, elements: !3595)
!3594 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!3595 = !{!3596, !3663, !3664}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !3593, file: !3594, line: 999, baseType: !3597, size: 64)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !136, line: 293, size: 1536, elements: !3599)
!3599 = !{!3600, !3630, !3644}
!3600 = !DIDerivedType(tag: DW_TAG_member, scope: !3598, file: !136, line: 295, baseType: !3601, size: 512)
!3601 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3598, file: !136, line: 295, size: 512, elements: !3602)
!3602 = !{!3603, !3629}
!3603 = !DIDerivedType(tag: DW_TAG_member, scope: !3601, file: !136, line: 296, baseType: !3604, size: 448)
!3604 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3601, file: !136, line: 296, size: 448, elements: !3605)
!3605 = !{!3606, !3607, !3616, !3617, !3618, !3627, !3628}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3604, file: !136, line: 298, baseType: !46, size: 64)
!3607 = !DIDerivedType(tag: DW_TAG_member, scope: !3604, file: !136, line: 299, baseType: !3608, size: 128, offset: 64)
!3608 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3604, file: !136, line: 299, size: 128, elements: !3609)
!3609 = !{!3610, !3611}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3608, file: !136, line: 300, baseType: !104, size: 128)
!3611 = !DIDerivedType(tag: DW_TAG_member, scope: !3608, file: !136, line: 302, baseType: !3612, size: 128)
!3612 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3608, file: !136, line: 302, size: 128, elements: !3613)
!3613 = !{!3614, !3615}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3612, file: !136, line: 303, baseType: !27, size: 64)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3612, file: !136, line: 305, baseType: !7, size: 32, offset: 64)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3604, file: !136, line: 310, baseType: !265, size: 64, offset: 192)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3604, file: !136, line: 311, baseType: !46, size: 64, offset: 256)
!3618 = !DIDerivedType(tag: DW_TAG_member, scope: !3604, file: !136, line: 312, baseType: !3619, size: 64, offset: 320)
!3619 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3604, file: !136, line: 312, size: 64, elements: !3620)
!3620 = !{!3621, !3622}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3619, file: !136, line: 313, baseType: !27, size: 64)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3619, file: !136, line: 314, baseType: !3623, size: 64)
!3623 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !136, line: 257, baseType: !3624)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !136, line: 255, size: 64, elements: !3625)
!3625 = !{!3626}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3624, file: !136, line: 256, baseType: !46, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3604, file: !136, line: 316, baseType: !56, size: 32, offset: 384)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3604, file: !136, line: 317, baseType: !56, size: 32, offset: 416)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3601, file: !136, line: 323, baseType: !244, size: 512, align: 128)
!3630 = !DIDerivedType(tag: DW_TAG_member, scope: !3598, file: !136, line: 325, baseType: !3631, size: 512, offset: 512)
!3631 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3598, file: !136, line: 325, size: 512, elements: !3632)
!3632 = !{!3633, !3643}
!3633 = !DIDerivedType(tag: DW_TAG_member, scope: !3631, file: !136, line: 326, baseType: !3634, size: 320)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3631, file: !136, line: 326, size: 320, elements: !3635)
!3635 = !{!3636, !3637, !3638, !3639, !3640, !3641, !3642}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3634, file: !136, line: 327, baseType: !46, size: 64)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3634, file: !136, line: 328, baseType: !46, size: 64, offset: 64)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3634, file: !136, line: 329, baseType: !46, size: 64, offset: 128)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3634, file: !136, line: 331, baseType: !56, size: 32, offset: 192)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3634, file: !136, line: 332, baseType: !56, size: 32, offset: 224)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3634, file: !136, line: 333, baseType: !56, size: 32, offset: 256)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3634, file: !136, line: 335, baseType: !7, size: 32, offset: 288)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3631, file: !136, line: 339, baseType: !244, size: 512, align: 128)
!3644 = !DIDerivedType(tag: DW_TAG_member, scope: !3598, file: !136, line: 341, baseType: !3645, size: 512, offset: 1024)
!3645 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3598, file: !136, line: 341, size: 512, elements: !3646)
!3646 = !{!3647, !3656, !3662}
!3647 = !DIDerivedType(tag: DW_TAG_member, scope: !3645, file: !136, line: 342, baseType: !3648, size: 384)
!3648 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3645, file: !136, line: 342, size: 384, elements: !3649)
!3649 = !{!3650, !3651, !3652, !3653, !3654, !3655}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3648, file: !136, line: 343, baseType: !46, size: 64)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3648, file: !136, line: 344, baseType: !46, size: 64, offset: 64)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3648, file: !136, line: 346, baseType: !27, size: 64, offset: 128)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3648, file: !136, line: 347, baseType: !27, size: 64, offset: 192)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3648, file: !136, line: 348, baseType: !27, size: 64, offset: 256)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3648, file: !136, line: 349, baseType: !27, size: 64, offset: 320)
!3656 = !DIDerivedType(tag: DW_TAG_member, scope: !3645, file: !136, line: 352, baseType: !3657, size: 256)
!3657 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3645, file: !136, line: 352, size: 256, elements: !3658)
!3658 = !{!3659, !3660, !3661}
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3657, file: !136, line: 353, baseType: !46, size: 64)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3657, file: !136, line: 354, baseType: !46, size: 64, offset: 64)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3657, file: !136, line: 356, baseType: !104, size: 128, offset: 128)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3645, file: !136, line: 359, baseType: !244, size: 512, align: 128)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !3593, file: !3594, line: 1000, baseType: !29, size: 32, offset: 64)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !3593, file: !3594, line: 1001, baseType: !3665, size: 320, offset: 128)
!3665 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !62, line: 14, baseType: !3666)
!3666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !62, line: 30, size: 320, elements: !3667)
!3667 = !{!3668, !3669, !3670, !3676}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3666, file: !62, line: 31, baseType: !7, size: 32)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3666, file: !62, line: 32, baseType: !27, size: 64, offset: 64)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3666, file: !62, line: 33, baseType: !3671, size: 64, offset: 128)
!3671 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !62, line: 16, baseType: !3672)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!29, !3675, !7, !29, !27}
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3666, file: !62, line: 34, baseType: !104, size: 128, offset: 192)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !3589, file: !158, line: 395, baseType: !3678, size: 64)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{!538, !27}
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !3683, line: 41, size: 320, elements: !3684)
!3683 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!3684 = !{!3685, !3686, !3687, !3688, !3689, !3690, !3695, !3733}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !3682, file: !3683, line: 42, baseType: !90, size: 8)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !3682, file: !3683, line: 43, baseType: !1198, size: 8, offset: 8)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !3682, file: !3683, line: 44, baseType: !1198, size: 8, offset: 16)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !3682, file: !3683, line: 45, baseType: !1198, size: 8, offset: 24)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !3682, file: !3683, line: 46, baseType: !1198, size: 8, offset: 32)
!3690 = !DIDerivedType(tag: DW_TAG_member, scope: !3682, file: !3683, line: 47, baseType: !3691, size: 64, offset: 64)
!3691 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3682, file: !3683, line: 47, size: 64, elements: !3692)
!3692 = !{!3693, !3694}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !3691, file: !3683, line: 48, baseType: !42, size: 64)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !3691, file: !3683, line: 49, baseType: !29, size: 32)
!3695 = !DIDerivedType(tag: DW_TAG_member, scope: !3682, file: !3683, line: 61, baseType: !3696, size: 128, offset: 128)
!3696 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3682, file: !3683, line: 61, size: 128, elements: !3697)
!3697 = !{!3698, !3704}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !3696, file: !3683, line: 67, baseType: !3699, size: 128)
!3699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !3700, line: 17, size: 128, elements: !3701)
!3700 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!3701 = !{!3702, !3703}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !3699, file: !3700, line: 19, baseType: !27, size: 64)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !3699, file: !3700, line: 20, baseType: !43, size: 64, offset: 64)
!3704 = !DIDerivedType(tag: DW_TAG_member, scope: !3696, file: !3683, line: 68, baseType: !3705, size: 128)
!3705 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3696, file: !3683, line: 68, size: 128, elements: !3706)
!3706 = !{!3707, !3732}
!3707 = !DIDerivedType(tag: DW_TAG_member, scope: !3705, file: !3683, line: 69, baseType: !3708, size: 64)
!3708 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3705, file: !3683, line: 69, size: 64, elements: !3709)
!3709 = !{!3710, !3713, !3720, !3729, !3731}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !3708, file: !3683, line: 71, baseType: !3711, size: 64)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3699)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !3708, file: !3683, line: 72, baseType: !3714, size: 64)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3716)
!3716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !3683, line: 17, size: 128, elements: !3717)
!3717 = !{!3718, !3719}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !3716, file: !3683, line: 18, baseType: !27, size: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !3716, file: !3683, line: 19, baseType: !42, size: 64, offset: 64)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !3708, file: !3683, line: 73, baseType: !3721, size: 64)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3723)
!3723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !3724, line: 31, size: 128, elements: !3725)
!3724 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!3725 = !{!3726, !3727, !3728}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !3723, file: !3724, line: 32, baseType: !243, size: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !3723, file: !3724, line: 33, baseType: !7, size: 32, offset: 64)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !3723, file: !3724, line: 34, baseType: !7, size: 32, offset: 96)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !3708, file: !3683, line: 74, baseType: !3730, size: 64)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !3708, file: !3683, line: 75, baseType: !27, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3705, file: !3683, line: 77, baseType: !42, size: 64, offset: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, scope: !3682, file: !3683, line: 80, baseType: !3734, size: 64, offset: 256)
!3734 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3682, file: !3683, line: 80, size: 64, elements: !3735)
!3735 = !{!3736, !3737}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !3734, file: !3683, line: 81, baseType: !46, size: 64)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !3734, file: !3683, line: 82, baseType: !48, size: 64)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3557, file: !158, line: 1920, baseType: !3573, size: 64, offset: 320)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3557, file: !158, line: 1921, baseType: !3740, size: 64, offset: 384)
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{!29, !3576, !3743, !7}
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !158, line: 53, flags: DIFlagFwdDecl)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3557, file: !158, line: 1923, baseType: !3746, size: 64, offset: 448)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = !DISubroutineType(types: !3748)
!3748 = !{!29, !579, !3749}
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !158, line: 1858, size: 128, elements: !3751)
!3751 = !{!3752, !3757}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3750, file: !158, line: 1859, baseType: !3753, size: 64)
!3753 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !158, line: 1855, baseType: !3754)
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = !DISubroutineType(types: !3756)
!3756 = !{!1198, !3749, !23, !29, !48, !228, !7}
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3750, file: !158, line: 1860, baseType: !48, size: 64, offset: 64)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3557, file: !158, line: 1924, baseType: !3759, size: 64, offset: 512)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{!3762, !579, !3763}
!3762 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1957, line: 59, baseType: !7)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !158, line: 61, flags: DIFlagFwdDecl)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3557, file: !158, line: 1925, baseType: !3766, size: 64, offset: 576)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{!226, !579, !7, !46}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3557, file: !158, line: 1926, baseType: !3766, size: 64, offset: 640)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3557, file: !158, line: 1927, baseType: !3771, size: 64, offset: 704)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{!29, !579, !3774}
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !136, line: 625, size: 1344, elements: !3776)
!3776 = !{!3777, !3786, !3787, !3793, !3800, !3801, !3806, !3807, !3812, !3813, !3816, !3909, !3910, !3911, !3912, !3913, !3914}
!3777 = !DIDerivedType(tag: DW_TAG_member, scope: !3775, file: !136, line: 628, baseType: !3778, size: 128)
!3778 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3775, file: !136, line: 628, size: 128, elements: !3779)
!3779 = !{!3780, !3785}
!3780 = !DIDerivedType(tag: DW_TAG_member, scope: !3778, file: !136, line: 629, baseType: !3781, size: 128)
!3781 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3778, file: !136, line: 629, size: 128, elements: !3782)
!3782 = !{!3783, !3784}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !3781, file: !136, line: 631, baseType: !46, size: 64)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !3781, file: !136, line: 632, baseType: !46, size: 64, offset: 64)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !3778, file: !136, line: 635, baseType: !592, size: 128, align: 64)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !3775, file: !136, line: 639, baseType: !1001, size: 64, offset: 128)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !3775, file: !136, line: 640, baseType: !3788, size: 64, offset: 192)
!3788 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !221, line: 297, baseType: !3789)
!3789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !221, line: 297, size: 64, elements: !3790)
!3790 = !{!3791}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !3789, file: !221, line: 297, baseType: !3792, size: 64)
!3792 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !207, line: 19, baseType: !46)
!3793 = !DIDerivedType(tag: DW_TAG_member, scope: !3775, file: !136, line: 646, baseType: !3794, size: 64, offset: 256)
!3794 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3775, file: !136, line: 646, size: 64, elements: !3795)
!3795 = !{!3796, !3799}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !3794, file: !136, line: 647, baseType: !3797, size: 64)
!3797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3798)
!3798 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !136, line: 542, baseType: !46)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !3794, file: !136, line: 648, baseType: !3798, size: 64)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !3775, file: !136, line: 666, baseType: !29, size: 32, offset: 320)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !3775, file: !136, line: 667, baseType: !3802, size: 64, offset: 384)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !136, line: 579, size: 320, elements: !3804)
!3804 = !{!3805}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3803, file: !136, line: 580, baseType: !1048, size: 320)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !3775, file: !136, line: 670, baseType: !1198, size: 8, offset: 448)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !3775, file: !136, line: 681, baseType: !3808, size: 256, offset: 512)
!3808 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3775, file: !136, line: 678, size: 256, elements: !3809)
!3809 = !{!3810, !3811}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3808, file: !136, line: 679, baseType: !755, size: 192, align: 64)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !3808, file: !136, line: 680, baseType: !46, size: 64, offset: 192)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !3775, file: !136, line: 689, baseType: !104, size: 128, offset: 768)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !3775, file: !136, line: 691, baseType: !3814, size: 64, offset: 896)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !136, line: 691, flags: DIFlagFwdDecl)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3775, file: !136, line: 694, baseType: !3817, size: 64, offset: 960)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3819)
!3819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !3820, line: 563, size: 1024, elements: !3821)
!3820 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!3821 = !{!3822, !3826, !3827, !3831, !3835, !3839, !3875, !3879, !3883, !3887, !3888, !3889, !3893, !3897, !3901, !3905}
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3819, file: !3820, line: 564, baseType: !3823, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = !DISubroutineType(types: !3825)
!3825 = !{null, !3774}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3819, file: !3820, line: 569, baseType: !3823, size: 64, offset: 64)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !3819, file: !3820, line: 571, baseType: !3828, size: 64, offset: 128)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!29, !3774, !46}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !3819, file: !3820, line: 572, baseType: !3832, size: 64, offset: 192)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{!29, !3774}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !3819, file: !3820, line: 578, baseType: !3836, size: 64, offset: 256)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{!29, !3774, !46, !46, !46}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !3819, file: !3820, line: 580, baseType: !3840, size: 64, offset: 320)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{!3843, !3844}
!3843 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !136, line: 1184, baseType: !7)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !3820, line: 512, size: 896, elements: !3846)
!3846 = !{!3847, !3855, !3856, !3857, !3864, !3869, !3870, !3871, !3872, !3873}
!3847 = !DIDerivedType(tag: DW_TAG_member, scope: !3845, file: !3820, line: 513, baseType: !3848, size: 320)
!3848 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3845, file: !3820, line: 513, size: 320, elements: !3849)
!3849 = !{!3850, !3851, !3852, !3853, !3854}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !3848, file: !3820, line: 514, baseType: !3774, size: 64)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3848, file: !3820, line: 515, baseType: !204, size: 32, offset: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !3848, file: !3820, line: 516, baseType: !46, size: 64, offset: 128)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !3848, file: !3820, line: 517, baseType: !46, size: 64, offset: 192)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !3848, file: !3820, line: 518, baseType: !46, size: 64, offset: 256)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3845, file: !3820, line: 520, baseType: !135, size: 32, offset: 320)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !3845, file: !3820, line: 522, baseType: !205, size: 64, offset: 384)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !3845, file: !3820, line: 524, baseType: !3858, size: 64, offset: 448)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !221, line: 372, baseType: !3860)
!3860 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !221, line: 372, size: 64, elements: !3861)
!3861 = !{!3862}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !3860, file: !221, line: 372, baseType: !3863, size: 64)
!3863 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !207, line: 16, baseType: !46)
!3864 = !DIDerivedType(tag: DW_TAG_member, scope: !3845, file: !3820, line: 527, baseType: !3865, size: 64, offset: 512)
!3865 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3845, file: !3820, line: 527, size: 64, elements: !3866)
!3866 = !{!3867, !3868}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !3865, file: !3820, line: 528, baseType: !214, size: 64)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !3865, file: !3820, line: 529, baseType: !206, size: 64)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !3845, file: !3820, line: 534, baseType: !243, size: 64, offset: 576)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3845, file: !3820, line: 535, baseType: !243, size: 64, offset: 640)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !3845, file: !3820, line: 541, baseType: !213, size: 64, offset: 704)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !3845, file: !3820, line: 545, baseType: !1859, size: 64, offset: 768)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !3845, file: !3820, line: 549, baseType: !3874, size: 64, offset: 832)
!3874 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !221, line: 520, baseType: !243)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !3819, file: !3820, line: 581, baseType: !3876, size: 64, offset: 384)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{!3843, !3844, !7}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !3819, file: !3820, line: 582, baseType: !3880, size: 64, offset: 448)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DISubroutineType(types: !3882)
!3882 = !{!3843, !3844, !46, !46}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !3819, file: !3820, line: 584, baseType: !3884, size: 64, offset: 512)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DISubroutineType(types: !3886)
!3886 = !{!46, !3774}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !3819, file: !3820, line: 588, baseType: !3840, size: 64, offset: 576)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !3819, file: !3820, line: 591, baseType: !3840, size: 64, offset: 640)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !3819, file: !3820, line: 597, baseType: !3890, size: 64, offset: 704)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{!29, !3774, !46, !27, !29, !29}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3819, file: !3820, line: 603, baseType: !3894, size: 64, offset: 768)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = !DISubroutineType(types: !3896)
!3896 = !{!23, !3774}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !3819, file: !3820, line: 613, baseType: !3898, size: 64, offset: 832)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{!29, !3774, !3135}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !3819, file: !3820, line: 625, baseType: !3902, size: 64, offset: 896)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{!3135, !3774, !46}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !3819, file: !3820, line: 633, baseType: !3906, size: 64, offset: 960)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{!243, !3774, !46}
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !3775, file: !136, line: 697, baseType: !46, size: 64, offset: 1024)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !3775, file: !136, line: 699, baseType: !579, size: 64, offset: 1088)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !3775, file: !136, line: 700, baseType: !27, size: 64, offset: 1152)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !3775, file: !136, line: 711, baseType: !605, size: 64, offset: 1216)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !3775, file: !136, line: 717, baseType: !3135, size: 64, offset: 1280)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !3775, file: !136, line: 722, baseType: !3915, offset: 1344)
!3915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !136, line: 570, elements: !1022)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3557, file: !158, line: 1928, baseType: !46, size: 64, offset: 768)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3557, file: !158, line: 1929, baseType: !3918, size: 64, offset: 832)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{!29, !269, !579}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3557, file: !158, line: 1930, baseType: !3922, size: 64, offset: 896)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{!29, !579, !3925}
!3925 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !158, line: 1061, baseType: !27)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3557, file: !158, line: 1931, baseType: !3918, size: 64, offset: 960)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3557, file: !158, line: 1932, baseType: !3928, size: 64, offset: 1024)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = !DISubroutineType(types: !3930)
!3930 = !{!29, !579, !48, !48, !29}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3557, file: !158, line: 1933, baseType: !3932, size: 64, offset: 1088)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!29, !29, !579, !29}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3557, file: !158, line: 1934, baseType: !3936, size: 64, offset: 1152)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{!29, !579, !29, !3939}
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !158, line: 1063, flags: DIFlagFwdDecl)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3557, file: !158, line: 1935, baseType: !1026, size: 64, offset: 1216)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3557, file: !158, line: 1936, baseType: !3943, size: 64, offset: 1280)
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{!29, !29}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3557, file: !158, line: 1937, baseType: !3936, size: 64, offset: 1344)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3557, file: !158, line: 1938, baseType: !3948, size: 64, offset: 1408)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{!538, !3171, !579, !47, !42, !7}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3557, file: !158, line: 1939, baseType: !3952, size: 64, offset: 1472)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{!538, !579, !47, !3171, !42, !7}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3557, file: !158, line: 1940, baseType: !3956, size: 64, offset: 1536)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = !DISubroutineType(types: !3958)
!3958 = !{null, !579}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3557, file: !158, line: 1941, baseType: !3960, size: 64, offset: 1600)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3961 = !DISubroutineType(types: !3962)
!3962 = !{!29, !579, !29, !3963, !3964}
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3557, file: !158, line: 1942, baseType: !3966, size: 64, offset: 1664)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{!226, !579, !29, !48, !48}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3557, file: !158, line: 1944, baseType: !3970, size: 64, offset: 1728)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{null, !3973, !579}
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !3975, line: 17, size: 960, elements: !3976)
!3975 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!3976 = !{!3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !4006, !4007, !4010}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3974, file: !3975, line: 18, baseType: !407, size: 64)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3974, file: !3975, line: 19, baseType: !42, size: 64, offset: 64)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !3974, file: !3975, line: 20, baseType: !42, size: 64, offset: 128)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3974, file: !3975, line: 21, baseType: !42, size: 64, offset: 192)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !3974, file: !3975, line: 22, baseType: !42, size: 64, offset: 256)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3974, file: !3975, line: 23, baseType: !48, size: 64, offset: 320)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !3974, file: !3975, line: 24, baseType: !48, size: 64, offset: 384)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3974, file: !3975, line: 25, baseType: !614, size: 256, offset: 448)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !3974, file: !3975, line: 26, baseType: !3986, size: 64, offset: 704)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3988)
!3988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !3975, line: 32, size: 256, elements: !3989)
!3989 = !{!3990, !3994, !3998, !4002}
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3988, file: !3975, line: 33, baseType: !3991, size: 64)
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!3992 = !DISubroutineType(types: !3993)
!3993 = !{!27, !3973, !47}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !3988, file: !3975, line: 34, baseType: !3995, size: 64, offset: 64)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{null, !3973, !27}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3988, file: !3975, line: 35, baseType: !3999, size: 64, offset: 128)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = !DISubroutineType(types: !4001)
!4001 = !{!27, !3973, !27, !47}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3988, file: !3975, line: 36, baseType: !4003, size: 64, offset: 192)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{!29, !3973, !27}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !3974, file: !3975, line: 27, baseType: !29, size: 32, offset: 768)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3974, file: !3975, line: 28, baseType: !4008, size: 64, offset: 832)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !580)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3974, file: !3975, line: 29, baseType: !27, size: 64, offset: 896)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3557, file: !158, line: 1948, baseType: !4012, size: 64, offset: 1792)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = !DISubroutineType(types: !4014)
!4014 = !{!538, !579, !48, !579, !48, !42, !7}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3557, file: !158, line: 1950, baseType: !4016, size: 64, offset: 1856)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4017 = !DISubroutineType(types: !4018)
!4018 = !{!48, !579, !48, !579, !48, !48, !7}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3557, file: !158, line: 1953, baseType: !3928, size: 64, offset: 1920)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3557, file: !158, line: 1954, baseType: !4021, size: 64, offset: 1984)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{!29, !4024, !7}
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !158, line: 1911, flags: DIFlagFwdDecl)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3557, file: !158, line: 1955, baseType: !4027, size: 64, offset: 2048)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = !DISubroutineType(types: !4029)
!4029 = !{!29, !4024, !3743, !7}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !580, file: !158, line: 1018, baseType: !228, size: 64, offset: 1472)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !580, file: !158, line: 1020, baseType: !27, size: 64, offset: 1536)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !580, file: !158, line: 1023, baseType: !27, size: 64, offset: 1600)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !580, file: !158, line: 1027, baseType: !1739, size: 64, offset: 1664)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !580, file: !158, line: 1029, baseType: !265, size: 64, offset: 1728)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !580, file: !158, line: 1030, baseType: !4036, size: 32, offset: 1792)
!4036 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !4037, line: 8, baseType: !338)
!4037 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !580, file: !158, line: 1031, baseType: !4036, size: 32, offset: 1824)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !566, file: !532, line: 182, baseType: !576, size: 64, offset: 384)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !566, file: !532, line: 184, baseType: !4041, size: 64, offset: 448)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = !DISubroutineType(types: !4043)
!4043 = !{!29, !579, !472, !565, !3774}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !554, file: !532, line: 90, baseType: !4045, size: 64, offset: 192)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !554, file: !532, line: 91, baseType: !4047, size: 64, offset: 256)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !522, file: !467, line: 120, baseType: !4049, size: 64, offset: 192)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!4052, !490}
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4054)
!4054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !152, line: 39, size: 384, elements: !4055)
!4055 = !{!4056, !4057, !4061, !4065, !4069, !4073}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4054, file: !152, line: 40, baseType: !151, size: 32)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4054, file: !152, line: 41, baseType: !4058, size: 64, offset: 64)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{!1198}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4054, file: !152, line: 42, baseType: !4062, size: 64, offset: 128)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{!27}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4054, file: !152, line: 43, baseType: !4066, size: 64, offset: 192)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4067 = !DISubroutineType(types: !4068)
!4068 = !{!1127, !1732}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4054, file: !152, line: 44, baseType: !4070, size: 64, offset: 256)
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4071 = !DISubroutineType(types: !4072)
!4072 = !{!1127}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4054, file: !152, line: 45, baseType: !4074, size: 64, offset: 320)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = !DISubroutineType(types: !4076)
!4076 = !{null, !27}
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !522, file: !467, line: 121, baseType: !4078, size: 64, offset: 256)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = !DISubroutineType(types: !4080)
!4080 = !{!1127, !490}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !522, file: !467, line: 122, baseType: !4082, size: 64, offset: 320)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DISubroutineType(types: !4084)
!4084 = !{null, !490, !1377, !1378}
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !466, file: !467, line: 70, baseType: !4086, size: 64, offset: 384)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !4088, line: 190, size: 1152, elements: !4089)
!4088 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!4089 = !{!4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4169, !4170, !4171, !4172, !4173, !4176}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4087, file: !4088, line: 191, baseType: !56, size: 32)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4087, file: !4088, line: 192, baseType: !56, size: 32, offset: 32)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4087, file: !4088, line: 202, baseType: !4086, size: 64, offset: 64)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4087, file: !4088, line: 203, baseType: !23, size: 64, offset: 128)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4087, file: !4088, line: 205, baseType: !755, size: 192, align: 64, offset: 192)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4087, file: !4088, line: 207, baseType: !1127, size: 64, offset: 384)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4087, file: !4088, line: 208, baseType: !7, size: 32, offset: 448)
!4097 = !DIDerivedType(tag: DW_TAG_member, scope: !4087, file: !4088, line: 209, baseType: !4098, size: 256, offset: 512)
!4098 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4087, file: !4088, line: 209, size: 256, elements: !4099)
!4099 = !{!4100, !4109, !4113}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4098, file: !4088, line: 210, baseType: !4101, size: 256)
!4101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !4088, line: 153, size: 256, elements: !4102)
!4102 = !{!4103, !4104, !4105, !4108}
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4101, file: !4088, line: 154, baseType: !46, size: 64)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4101, file: !4088, line: 156, baseType: !887, size: 64, offset: 64)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4101, file: !4088, line: 162, baseType: !4106, size: 64, offset: 128)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !4088, line: 162, flags: DIFlagFwdDecl)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4101, file: !4088, line: 167, baseType: !46, size: 64, offset: 192)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4098, file: !4088, line: 211, baseType: !4110, size: 64)
!4110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !4088, line: 170, size: 64, elements: !4111)
!4111 = !{!4112}
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4110, file: !4088, line: 171, baseType: !4086, size: 64)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4098, file: !4088, line: 212, baseType: !4114, size: 256)
!4114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !4088, line: 174, size: 256, elements: !4115)
!4115 = !{!4116, !4164, !4167, !4168}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4114, file: !4088, line: 175, baseType: !4117, size: 64)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4119)
!4119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !4088, line: 271, size: 768, elements: !4120)
!4120 = !{!4121, !4141, !4145, !4146, !4147, !4148, !4149, !4153, !4154, !4155, !4156, !4160}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4119, file: !4088, line: 276, baseType: !4122, size: 64)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DISubroutineType(types: !4124)
!4124 = !{!29, !4125}
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !4088, line: 251, size: 1216, elements: !4127)
!4127 = !{!4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4126, file: !4088, line: 253, baseType: !4086, size: 64)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4126, file: !4088, line: 254, baseType: !579, size: 64, offset: 64)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4126, file: !4088, line: 255, baseType: !3973, size: 64, offset: 128)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4126, file: !4088, line: 256, baseType: !27, size: 64, offset: 192)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4126, file: !4088, line: 259, baseType: !614, size: 256, offset: 256)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4126, file: !4088, line: 260, baseType: !614, size: 256, offset: 512)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4126, file: !4088, line: 261, baseType: !29, size: 32, offset: 768)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4126, file: !4088, line: 262, baseType: !104, size: 128, offset: 832)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4126, file: !4088, line: 263, baseType: !407, size: 64, offset: 960)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4126, file: !4088, line: 265, baseType: !42, size: 64, offset: 1024)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4126, file: !4088, line: 266, baseType: !1198, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4126, file: !4088, line: 267, baseType: !1198, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4126, file: !4088, line: 268, baseType: !3817, size: 64, offset: 1152)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4119, file: !4088, line: 277, baseType: !4142, size: 64, offset: 64)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = !DISubroutineType(types: !4144)
!4144 = !{null, !4125}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4119, file: !4088, line: 290, baseType: !4003, size: 64, offset: 128)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4119, file: !4088, line: 292, baseType: !3991, size: 64, offset: 192)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4119, file: !4088, line: 293, baseType: !3999, size: 64, offset: 256)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4119, file: !4088, line: 294, baseType: !3995, size: 64, offset: 320)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4119, file: !4088, line: 296, baseType: !4150, size: 64, offset: 384)
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{!538, !4125, !407, !42, !48}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4119, file: !4088, line: 306, baseType: !42, size: 64, offset: 448)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4119, file: !4088, line: 313, baseType: !1198, size: 8, offset: 512)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4119, file: !4088, line: 314, baseType: !4150, size: 64, offset: 576)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4119, file: !4088, line: 317, baseType: !4157, size: 64, offset: 640)
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4158 = !DISubroutineType(types: !4159)
!4159 = !{!3762, !4125, !3763}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4119, file: !4088, line: 320, baseType: !4161, size: 64, offset: 704)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = !DISubroutineType(types: !4163)
!4163 = !{!29, !4125, !3774}
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4114, file: !4088, line: 176, baseType: !4165, size: 64, offset: 64)
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4166, size: 64)
!4166 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !4088, line: 35, flags: DIFlagFwdDecl)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4114, file: !4088, line: 177, baseType: !48, size: 64, offset: 128)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4114, file: !4088, line: 178, baseType: !4086, size: 64, offset: 192)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4087, file: !4088, line: 215, baseType: !27, size: 64, offset: 768)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4087, file: !4088, line: 221, baseType: !228, size: 64, offset: 832)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4087, file: !4088, line: 223, baseType: !33, size: 16, offset: 896)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4087, file: !4088, line: 224, baseType: !31, size: 16, offset: 912)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4087, file: !4088, line: 225, baseType: !4174, size: 64, offset: 960)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !4088, line: 36, flags: DIFlagFwdDecl)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4087, file: !4088, line: 227, baseType: !592, size: 128, align: 64, offset: 1024)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !466, file: !467, line: 71, baseType: !4178, size: 32, offset: 448)
!4178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4179, line: 19, size: 32, elements: !4180)
!4179 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4180 = !{!4181}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4178, file: !4179, line: 20, baseType: !657, size: 32)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !466, file: !467, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !466, file: !467, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !466, file: !467, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !466, file: !467, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !466, file: !467, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !463, file: !6, line: 47, baseType: !453, size: 64, offset: 512)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !463, file: !6, line: 48, baseType: !472, size: 64, offset: 576)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !463, file: !6, line: 49, baseType: !4190, size: 64, offset: 640)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !463, file: !6, line: 50, baseType: !1351, size: 64, offset: 704)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !454, file: !6, line: 418, baseType: !4194, size: 64, offset: 1408)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !4196)
!4196 = !{!4197, !4198, !4203, !4207, !4211, !4215}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4195, file: !6, line: 54, baseType: !542, size: 128)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4195, file: !6, line: 55, baseType: !4199, size: 64, offset: 128)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{!538, !4194, !4202, !407}
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4195, file: !6, line: 57, baseType: !4204, size: 64, offset: 192)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = !DISubroutineType(types: !4206)
!4206 = !{!538, !4194, !4202, !23, !42}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !4195, file: !6, line: 59, baseType: !4208, size: 64, offset: 256)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{null, !453, !23}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !4195, file: !6, line: 60, baseType: !4212, size: 64, offset: 320)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{!29, !453}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4195, file: !6, line: 61, baseType: !4216, size: 64, offset: 384)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = !DISubroutineType(types: !4218)
!4218 = !{null, !453}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !454, file: !6, line: 419, baseType: !23, size: 64, offset: 1472)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !454, file: !6, line: 420, baseType: !23, size: 64, offset: 1536)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !454, file: !6, line: 421, baseType: !472, size: 64, offset: 1600)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !454, file: !6, line: 424, baseType: !4223, size: 64, offset: 1664)
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4225)
!4225 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !454, file: !6, line: 425, baseType: !4227, size: 64, offset: 1728)
!4227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4228, size: 64)
!4228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1094)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !454, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !454, file: !6, line: 435, baseType: !614, size: 256, offset: 1856)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !454, file: !6, line: 437, baseType: !4232, size: 64, offset: 2112)
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 64)
!4233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !4234, line: 69, size: 320, elements: !4235)
!4234 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!4235 = !{!4236, !4237, !4238, !4255, !4257, !4261, !4262}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4233, file: !4234, line: 70, baseType: !23, size: 64)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4233, file: !4234, line: 71, baseType: !453, size: 64, offset: 64)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4233, file: !4234, line: 72, baseType: !4239, size: 64, offset: 128)
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4241)
!4241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !4234, line: 47, size: 256, elements: !4242)
!4242 = !{!4243, !4244, !4250, !4254}
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4241, file: !4234, line: 49, baseType: !7, size: 32)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4241, file: !4234, line: 51, baseType: !4245, size: 64, offset: 64)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DISubroutineType(types: !4247)
!4247 = !{!29, !23, !4248}
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4233)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4241, file: !4234, line: 53, baseType: !4251, size: 64, offset: 128)
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = !DISubroutineType(types: !4253)
!4253 = !{!29, !407, !4248}
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4241, file: !4234, line: 55, baseType: !4074, size: 64, offset: 192)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4233, file: !4234, line: 73, baseType: !4256, size: 16, offset: 192)
!4256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4233, file: !4234, line: 74, baseType: !4258, size: 8, offset: 208)
!4258 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !91, line: 16, baseType: !4259)
!4259 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !93, line: 20, baseType: !4260)
!4260 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4233, file: !4234, line: 75, baseType: !90, size: 8, offset: 216)
!4262 = !DIDerivedType(tag: DW_TAG_member, scope: !4233, file: !4234, line: 76, baseType: !4263, size: 64, offset: 256)
!4263 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4233, file: !4234, line: 76, size: 64, elements: !4264)
!4264 = !{!4265, !4266, !4273}
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4263, file: !4234, line: 77, baseType: !27, size: 64)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4263, file: !4234, line: 78, baseType: !4267, size: 64)
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4269)
!4269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !4234, line: 86, size: 128, elements: !4270)
!4270 = !{!4271, !4272}
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !4269, file: !4234, line: 87, baseType: !7, size: 32)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4269, file: !4234, line: 88, baseType: !407, size: 64, offset: 64)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !4263, file: !4234, line: 79, baseType: !4274, size: 64)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4276)
!4276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !4234, line: 92, size: 256, elements: !4277)
!4277 = !{!4278, !4279, !4280, !4282, !4283}
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4276, file: !4234, line: 94, baseType: !7, size: 32)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !4276, file: !4234, line: 95, baseType: !7, size: 32, offset: 32)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4276, file: !4234, line: 96, baseType: !4281, size: 64, offset: 64)
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4276, file: !4234, line: 97, baseType: !4239, size: 64, offset: 128)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !4276, file: !4234, line: 98, baseType: !27, size: 64, offset: 192)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !454, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !454, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !454, file: !6, line: 442, baseType: !4223, size: 64, offset: 2240)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !454, file: !6, line: 443, baseType: !4227, size: 64, offset: 2304)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !454, file: !6, line: 444, baseType: !1198, size: 8, offset: 2368)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !454, file: !6, line: 451, baseType: !1198, size: 8, offset: 2376)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !454, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !454, file: !6, line: 455, baseType: !4292, size: 64, offset: 2432)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !4294, line: 23, size: 96, elements: !4295)
!4294 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!4295 = !{!4296, !4297, !4298}
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4293, file: !4294, line: 24, baseType: !29, size: 32)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !4293, file: !4294, line: 24, baseType: !29, size: 32, offset: 32)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4293, file: !4294, line: 24, baseType: !29, size: 32, offset: 64)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !454, file: !6, line: 458, baseType: !4300, size: 64, offset: 2496)
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = !DISubroutineType(types: !4302)
!4302 = !{!29}
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !454, file: !6, line: 460, baseType: !4304, size: 4032, align: 512, offset: 2560)
!4304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4305, size: 4032, elements: !1837)
!4305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !4306)
!4306 = !{!4307, !4308, !4309}
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4305, file: !6, line: 363, baseType: !27, size: 64)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4305, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !4305, file: !6, line: 367, baseType: !4310, size: 448, offset: 128)
!4310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !4311)
!4311 = !{!4312, !4313}
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4310, file: !6, line: 320, baseType: !453, size: 64)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4310, file: !6, line: 321, baseType: !4314, size: 384, offset: 64)
!4314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !4315, line: 40, size: 384, elements: !4316)
!4315 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!4316 = !{!4317}
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4314, file: !4315, line: 41, baseType: !4318, size: 384, align: 64)
!4318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !755, size: 384, align: 64, elements: !2321)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !454, file: !6, line: 463, baseType: !4320, size: 192, offset: 6592)
!4320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !4321, line: 8, size: 192, elements: !4322)
!4321 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!4322 = !{!4323, !4324, !4325}
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !4320, file: !4321, line: 10, baseType: !7, size: 32)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !4320, file: !4321, line: 11, baseType: !239, size: 64, offset: 64)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !4320, file: !4321, line: 12, baseType: !4326, size: 64, offset: 128)
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4327, size: 64)
!4327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !4328, line: 59, size: 48, elements: !4329)
!4328 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!4329 = !{!4330, !4331, !4332, !4333, !4334, !4335}
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !4327, file: !4328, line: 60, baseType: !1144, size: 16)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !4327, file: !4328, line: 61, baseType: !1144, size: 16, offset: 16)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !4327, file: !4328, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !4327, file: !4328, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4327, file: !4328, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4327, file: !4328, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !454, file: !6, line: 465, baseType: !46, size: 64, offset: 6784)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !454, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !454, file: !6, line: 470, baseType: !104, size: 128, offset: 6912)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !454, file: !6, line: 471, baseType: !4340, size: 64, offset: 7040)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !4342, line: 33, size: 96, elements: !4343)
!4342 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!4343 = !{!4344, !4345, !4346, !4347}
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !4341, file: !4342, line: 37, baseType: !29, size: 32)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !4341, file: !4342, line: 43, baseType: !29, size: 32, offset: 32)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !4341, file: !4342, line: 45, baseType: !33, size: 16, offset: 64)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4341, file: !4342, line: 47, baseType: !33, size: 16, offset: 80)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !454, file: !6, line: 476, baseType: !4349, size: 64, offset: 7104)
!4349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4350, size: 64)
!4350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !4351)
!4351 = !{!4352, !4368, !4369, !4370}
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !4350, file: !6, line: 379, baseType: !4353, size: 64)
!4353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4354, size: 64)
!4354 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !4355, line: 204, baseType: !4356)
!4355 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!4356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !4355, line: 197, size: 192, elements: !4357)
!4357 = !{!4358, !4360, !4361, !4362, !4364, !4366}
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !4356, file: !4355, line: 198, baseType: !4359, size: 32)
!4359 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !4355, line: 21, baseType: !339)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !4356, file: !4355, line: 199, baseType: !94, size: 8, offset: 32)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !4356, file: !4355, line: 200, baseType: !94, size: 8, offset: 40)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !4356, file: !4355, line: 201, baseType: !4363, size: 16, offset: 48)
!4363 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !4355, line: 17, baseType: !101)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !4356, file: !4355, line: 202, baseType: !4365, size: 64, offset: 64)
!4365 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !4355, line: 16, baseType: !229)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !4356, file: !4355, line: 203, baseType: !4367, size: 64, offset: 128)
!4367 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !4355, line: 22, baseType: !229)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !4350, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !4350, file: !6, line: 381, baseType: !407, size: 64, offset: 128)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !4350, file: !6, line: 382, baseType: !407, size: 64, offset: 192)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !454, file: !6, line: 477, baseType: !4350, size: 256, offset: 7168)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !454, file: !6, line: 480, baseType: !4373, size: 64, offset: 7424)
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4374, size: 64)
!4374 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !454, file: !6, line: 483, baseType: !4376, size: 64, offset: 7488)
!4376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4377, size: 64)
!4377 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !454, file: !6, line: 488, baseType: !407, size: 64, offset: 7552)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !454, file: !6, line: 492, baseType: !27, size: 64, offset: 7616)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !454, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !454, file: !6, line: 495, baseType: !27, size: 64, offset: 7744)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !454, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !454, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !454, file: !6, line: 500, baseType: !4385, size: 64, offset: 7872)
!4385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4386, size: 64)
!4386 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !4387, line: 45, baseType: !4388)
!4387 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!4388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !454, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !454, file: !6, line: 504, baseType: !4391, size: 64, offset: 8000)
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4393, size: 64)
!4393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !4394, line: 96, size: 192, elements: !4395)
!4394 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!4395 = !{!4396, !4397, !4438, !4441}
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !4393, file: !4394, line: 97, baseType: !7, size: 32)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !4393, file: !4394, line: 98, baseType: !4398, size: 64, offset: 64)
!4398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4399, size: 64)
!4399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !4394, line: 24, size: 3072, elements: !4400)
!4400 = !{!4401, !4403, !4404, !4405, !4406, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4435, !4436, !4437}
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !4399, file: !4394, line: 26, baseType: !4402, size: 128)
!4402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !605, size: 128, elements: !2321)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !4399, file: !4394, line: 27, baseType: !4402, size: 128, offset: 128)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !4399, file: !4394, line: 28, baseType: !29, size: 32, offset: 256)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4399, file: !4394, line: 31, baseType: !66, size: 32, align: 512, offset: 512)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !4399, file: !4394, line: 32, baseType: !4407, size: 960, offset: 576)
!4407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !4408, line: 206, size: 960, elements: !4409)
!4408 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!4409 = !{!4410, !4411, !4414, !4415, !4416, !4417}
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4407, file: !4408, line: 207, baseType: !595, size: 64)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !4407, file: !4408, line: 208, baseType: !4412, size: 256, offset: 64)
!4412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4413, size: 256, elements: !675)
!4413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !4407, file: !4408, line: 209, baseType: !2549, size: 256, offset: 320)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4407, file: !4408, line: 213, baseType: !226, size: 64, offset: 576)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !4407, file: !4408, line: 215, baseType: !1412, size: 256, offset: 640)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4407, file: !4408, line: 216, baseType: !90, size: 8, offset: 896)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4399, file: !4394, line: 33, baseType: !46, size: 64, offset: 1536)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4399, file: !4394, line: 34, baseType: !46, size: 64, offset: 1600)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !4399, file: !4394, line: 35, baseType: !1198, size: 8, offset: 1664)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !4399, file: !4394, line: 36, baseType: !1985, size: 320, offset: 1728)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4399, file: !4394, line: 37, baseType: !1313, size: 256, offset: 2048)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !4399, file: !4394, line: 38, baseType: !592, size: 128, align: 64, offset: 2304)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !4399, file: !4394, line: 39, baseType: !4425, size: 64, offset: 2432)
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !4394, line: 49, size: 768, elements: !4427)
!4427 = !{!4428, !4429, !4430, !4431, !4432, !4433, !4434}
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4426, file: !4394, line: 50, baseType: !66, size: 32)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !4426, file: !4394, line: 51, baseType: !2549, size: 256, offset: 64)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !4426, file: !4394, line: 53, baseType: !2549, size: 256, offset: 320)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4426, file: !4394, line: 54, baseType: !46, size: 64, offset: 576)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !4426, file: !4394, line: 55, baseType: !4425, size: 64, offset: 640)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !4426, file: !4394, line: 56, baseType: !29, size: 32, offset: 704)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !4426, file: !4394, line: 57, baseType: !29, size: 32, offset: 736)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !4399, file: !4394, line: 40, baseType: !46, size: 64, offset: 2496)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4399, file: !4394, line: 42, baseType: !29, size: 32, offset: 2560)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !4399, file: !4394, line: 43, baseType: !4392, size: 64, offset: 2624)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !4393, file: !4394, line: 99, baseType: !4439, offset: 128)
!4439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !4440, line: 211, elements: !1022)
!4440 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !4393, file: !4394, line: 100, baseType: !4442, size: 64, offset: 128)
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4443, size: 64)
!4443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !4394, line: 63, size: 3008, elements: !4444)
!4444 = !{!4445, !4446, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468}
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4443, file: !4394, line: 64, baseType: !4425, size: 64)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4443, file: !4394, line: 65, baseType: !4447, size: 192, offset: 64)
!4447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4425, size: 192, elements: !507)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !4443, file: !4394, line: 67, baseType: !29, size: 32, offset: 256)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !4443, file: !4394, line: 68, baseType: !614, size: 256, offset: 320)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4443, file: !4394, line: 69, baseType: !66, size: 32, offset: 576)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !4443, file: !4394, line: 70, baseType: !614, size: 256, offset: 640)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !4443, file: !4394, line: 71, baseType: !46, size: 64, offset: 896)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4443, file: !4394, line: 72, baseType: !46, size: 64, offset: 960)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4443, file: !4394, line: 73, baseType: !46, size: 64, offset: 1024)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !4443, file: !4394, line: 74, baseType: !46, size: 64, offset: 1088)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !4443, file: !4394, line: 75, baseType: !46, size: 64, offset: 1152)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !4443, file: !4394, line: 76, baseType: !46, size: 64, offset: 1216)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !4443, file: !4394, line: 77, baseType: !46, size: 64, offset: 1280)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !4443, file: !4394, line: 78, baseType: !46, size: 64, offset: 1344)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !4443, file: !4394, line: 79, baseType: !1198, size: 8, offset: 1408)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !4443, file: !4394, line: 80, baseType: !46, size: 64, offset: 1472)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !4443, file: !4394, line: 81, baseType: !614, size: 256, offset: 1536)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !4443, file: !4394, line: 82, baseType: !1352, size: 256, offset: 1792)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !4443, file: !4394, line: 84, baseType: !56, size: 32, offset: 2048)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !4443, file: !4394, line: 87, baseType: !46, size: 64, offset: 2112)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !4443, file: !4394, line: 88, baseType: !46, size: 64, offset: 2176)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4443, file: !4394, line: 89, baseType: !2601, size: 704, offset: 2240)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !4443, file: !4394, line: 90, baseType: !4392, size: 64, offset: 2944)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !454, file: !6, line: 515, baseType: !4470, size: 64, offset: 8064)
!4470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4471, size: 64)
!4471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4472, line: 117, size: 128, elements: !4473)
!4472 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4473 = !{!4474, !4475, !4476}
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4471, file: !4472, line: 118, baseType: !1094, size: 32)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4471, file: !4472, line: 119, baseType: !1094, size: 32, offset: 32)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4471, file: !4472, line: 120, baseType: !226, size: 64, offset: 64)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !454, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !454, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !454, file: !6, line: 520, baseType: !4480, size: 64, offset: 8192)
!4480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !454, file: !6, line: 523, baseType: !4482, size: 64, offset: 8256)
!4482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4483, size: 64)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !454, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !454, file: !6, line: 525, baseType: !4487, size: 64, offset: 8384)
!4487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4488, size: 64)
!4488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4489, size: 64)
!4489 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !454, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !454, file: !6, line: 533, baseType: !27, size: 64, offset: 8512)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !454, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !454, file: !6, line: 535, baseType: !200, size: 64, offset: 8640)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !454, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !454, file: !6, line: 539, baseType: !29, size: 32, offset: 8736)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !454, file: !6, line: 540, baseType: !4497, size: 64, offset: 8768)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !4499, line: 32, size: 64, elements: !4500)
!4499 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!4500 = !{!4501, !4502}
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4498, file: !4499, line: 33, baseType: !1094, size: 32)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4498, file: !4499, line: 34, baseType: !1094, size: 32, offset: 32)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !454, file: !6, line: 563, baseType: !104, size: 128, offset: 8832)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !454, file: !6, line: 565, baseType: !104, size: 128, offset: 8960)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !454, file: !6, line: 568, baseType: !4506, size: 64, offset: 9088)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !454, file: !6, line: 570, baseType: !56, size: 32, offset: 9152)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !430, file: !158, line: 2382, baseType: !429, size: 64, offset: 448)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !430, file: !158, line: 2383, baseType: !666, size: 64, offset: 512)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !430, file: !158, line: 2385, baseType: !4511, offset: 576)
!4511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !4440, line: 206, elements: !1022)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !430, file: !158, line: 2386, baseType: !4511, offset: 576)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !430, file: !158, line: 2387, baseType: !4511, offset: 576)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !430, file: !158, line: 2388, baseType: !4515, offset: 576)
!4515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4511, elements: !507)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !430, file: !158, line: 2390, baseType: !4511, offset: 576)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !430, file: !158, line: 2391, baseType: !4511, offset: 576)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !430, file: !158, line: 2392, baseType: !4511, offset: 576)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !430, file: !158, line: 2393, baseType: !4511, offset: 576)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !419, file: !158, line: 1197, baseType: !4521, size: 64, offset: 384)
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4523)
!4523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !158, line: 2057, size: 1664, elements: !4524)
!4524 = !{!4525, !4529, !4533, !4534, !4538, !4544, !4548, !4549, !4550, !4554, !4558, !4562, !4563, !4564, !4570, !4574, !4575, !4579, !4580, !4581, !4582, !4586, !4590, !4637, !4652, !4653}
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !4523, file: !158, line: 2058, baseType: !4526, size: 64)
!4526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4527, size: 64)
!4527 = !DISubroutineType(types: !4528)
!4528 = !{!269, !418}
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !4523, file: !158, line: 2059, baseType: !4530, size: 64, offset: 64)
!4530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4531, size: 64)
!4531 = !DISubroutineType(types: !4532)
!4532 = !{null, !269}
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4523, file: !158, line: 2060, baseType: !4530, size: 64, offset: 128)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !4523, file: !158, line: 2062, baseType: !4535, size: 64, offset: 192)
!4535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4536, size: 64)
!4536 = !DISubroutineType(types: !4537)
!4537 = !{null, !269, !29}
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !4523, file: !158, line: 2063, baseType: !4539, size: 64, offset: 256)
!4539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4540, size: 64)
!4540 = !DISubroutineType(types: !4541)
!4541 = !{!29, !269, !4542}
!4542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4543, size: 64)
!4543 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !158, line: 309, flags: DIFlagFwdDecl)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !4523, file: !158, line: 2064, baseType: !4545, size: 64, offset: 320)
!4545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4546, size: 64)
!4546 = !DISubroutineType(types: !4547)
!4547 = !{!29, !269}
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !4523, file: !158, line: 2065, baseType: !4530, size: 64, offset: 384)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !4523, file: !158, line: 2066, baseType: !449, size: 64, offset: 448)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !4523, file: !158, line: 2067, baseType: !4551, size: 64, offset: 512)
!4551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4552, size: 64)
!4552 = !DISubroutineType(types: !4553)
!4553 = !{!29, !418, !29}
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !4523, file: !158, line: 2068, baseType: !4555, size: 64, offset: 576)
!4555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4556, size: 64)
!4556 = !DISubroutineType(types: !4557)
!4557 = !{!29, !418, !157}
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !4523, file: !158, line: 2069, baseType: !4559, size: 64, offset: 640)
!4559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4560, size: 64)
!4560 = !DISubroutineType(types: !4561)
!4561 = !{!29, !418}
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !4523, file: !158, line: 2070, baseType: !4555, size: 64, offset: 704)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !4523, file: !158, line: 2071, baseType: !4559, size: 64, offset: 768)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !4523, file: !158, line: 2072, baseType: !4565, size: 64, offset: 832)
!4565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4566, size: 64)
!4566 = !DISubroutineType(types: !4567)
!4567 = !{!29, !304, !4568}
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4569, size: 64)
!4569 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !158, line: 62, flags: DIFlagFwdDecl)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !4523, file: !158, line: 2073, baseType: !4571, size: 64, offset: 896)
!4571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4572, size: 64)
!4572 = !DISubroutineType(types: !4573)
!4573 = !{!29, !418, !239, !407}
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !4523, file: !158, line: 2074, baseType: !449, size: 64, offset: 960)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !4523, file: !158, line: 2076, baseType: !4576, size: 64, offset: 1024)
!4576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4577, size: 64)
!4577 = !DISubroutineType(types: !4578)
!4578 = !{!29, !3973, !304}
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !4523, file: !158, line: 2077, baseType: !4576, size: 64, offset: 1088)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !4523, file: !158, line: 2078, baseType: !4576, size: 64, offset: 1152)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !4523, file: !158, line: 2079, baseType: !4576, size: 64, offset: 1216)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !4523, file: !158, line: 2081, baseType: !4583, size: 64, offset: 1280)
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{!538, !418, !29, !407, !42, !48}
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !4523, file: !158, line: 2082, baseType: !4587, size: 64, offset: 1344)
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4588 = !DISubroutineType(types: !4589)
!4589 = !{!538, !418, !29, !23, !42, !48}
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !4523, file: !158, line: 2083, baseType: !4591, size: 64, offset: 1408)
!4591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4592, size: 64)
!4592 = !DISubroutineType(types: !4593)
!4593 = !{!4594, !269}
!4594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4595, size: 64)
!4595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4596, size: 64)
!4596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !163, line: 296, size: 1664, elements: !4597)
!4597 = !{!4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606, !4622, !4623, !4624}
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !4596, file: !163, line: 297, baseType: !670, size: 128)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !4596, file: !163, line: 298, baseType: !104, size: 128, offset: 128)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !4596, file: !163, line: 299, baseType: !104, size: 128, offset: 256)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !4596, file: !163, line: 300, baseType: !104, size: 128, offset: 384)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !4596, file: !163, line: 301, baseType: !614, size: 256, offset: 512)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !4596, file: !163, line: 302, baseType: !66, size: 32, offset: 768)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !4596, file: !163, line: 303, baseType: !56, size: 32, offset: 800)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !4596, file: !163, line: 304, baseType: !418, size: 64, offset: 832)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !4596, file: !163, line: 305, baseType: !4607, size: 64, offset: 896)
!4607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !163, line: 68, size: 64, elements: !4608)
!4608 = !{!4609, !4621}
!4609 = !DIDerivedType(tag: DW_TAG_member, scope: !4607, file: !163, line: 69, baseType: !4610, size: 32)
!4610 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4607, file: !163, line: 69, size: 32, elements: !4611)
!4611 = !{!4612, !4613, !4614}
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4610, file: !163, line: 70, baseType: !275, size: 32)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4610, file: !163, line: 71, baseType: !284, size: 32)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !4610, file: !163, line: 72, baseType: !4615, size: 32)
!4615 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !4616, line: 24, baseType: !4617)
!4616 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!4617 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4616, line: 22, size: 32, elements: !4618)
!4618 = !{!4619}
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4617, file: !4616, line: 23, baseType: !4620, size: 32)
!4620 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !4616, line: 20, baseType: !281)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4607, file: !163, line: 74, baseType: !162, size: 32, offset: 32)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !4596, file: !163, line: 306, baseType: !48, size: 64, offset: 960)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !4596, file: !163, line: 307, baseType: !46, size: 64, offset: 1024)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !4596, file: !163, line: 308, baseType: !4625, size: 576, offset: 1088)
!4625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !163, line: 205, size: 576, elements: !4626)
!4626 = !{!4627, !4629, !4630, !4631, !4632, !4633, !4634, !4635, !4636}
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !4625, file: !163, line: 206, baseType: !4628, size: 64)
!4628 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !163, line: 66, baseType: !50)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !4625, file: !163, line: 207, baseType: !4628, size: 64, offset: 64)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !4625, file: !163, line: 208, baseType: !4628, size: 64, offset: 128)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !4625, file: !163, line: 209, baseType: !4628, size: 64, offset: 192)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !4625, file: !163, line: 210, baseType: !4628, size: 64, offset: 256)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !4625, file: !163, line: 211, baseType: !4628, size: 64, offset: 320)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !4625, file: !163, line: 212, baseType: !4628, size: 64, offset: 384)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !4625, file: !163, line: 213, baseType: !1224, size: 64, offset: 448)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !4625, file: !163, line: 214, baseType: !1224, size: 64, offset: 512)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !4523, file: !158, line: 2085, baseType: !4638, size: 64, offset: 1472)
!4638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4639, size: 64)
!4639 = !DISubroutineType(types: !4640)
!4640 = !{!226, !418, !4641}
!4641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4642, size: 64)
!4642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !4643, line: 15, size: 256, elements: !4644)
!4643 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!4644 = !{!4645, !4646, !4647, !4648, !4649}
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !4642, file: !4643, line: 16, baseType: !204, size: 32)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4642, file: !4643, line: 19, baseType: !29, size: 32, offset: 32)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !4642, file: !4643, line: 26, baseType: !46, size: 64, offset: 64)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !4642, file: !4643, line: 33, baseType: !46, size: 64, offset: 128)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !4642, file: !4643, line: 36, baseType: !4650, size: 64, offset: 192)
!4650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4651, size: 64)
!4651 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !136, line: 33, flags: DIFlagFwdDecl)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !4523, file: !158, line: 2087, baseType: !4638, size: 64, offset: 1536)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4523, file: !158, line: 2089, baseType: !449, size: 64, offset: 1600)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !419, file: !158, line: 1198, baseType: !4655, size: 64, offset: 448)
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4656, size: 64)
!4656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4657)
!4657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !163, line: 324, size: 704, elements: !4658)
!4658 = !{!4659, !4663, !4667, !4671, !4672, !4673, !4674, !4675, !4680, !4685, !4689}
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !4657, file: !163, line: 325, baseType: !4660, size: 64)
!4660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4661, size: 64)
!4661 = !DISubroutineType(types: !4662)
!4662 = !{!29, !4595}
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !4657, file: !163, line: 326, baseType: !4664, size: 64, offset: 64)
!4664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4665, size: 64)
!4665 = !DISubroutineType(types: !4666)
!4666 = !{!4595, !418, !29}
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !4657, file: !163, line: 327, baseType: !4668, size: 64, offset: 128)
!4668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4669, size: 64)
!4669 = !DISubroutineType(types: !4670)
!4670 = !{null, !4595}
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !4657, file: !163, line: 328, baseType: !4660, size: 64, offset: 192)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !4657, file: !163, line: 329, baseType: !4660, size: 64, offset: 256)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !4657, file: !163, line: 330, baseType: !4660, size: 64, offset: 320)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !4657, file: !163, line: 331, baseType: !4551, size: 64, offset: 384)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !4657, file: !163, line: 334, baseType: !4676, size: 64, offset: 448)
!4676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4677, size: 64)
!4677 = !DISubroutineType(types: !4678)
!4678 = !{!4679, !269}
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4628, size: 64)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !4657, file: !163, line: 335, baseType: !4681, size: 64, offset: 512)
!4681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4682, size: 64)
!4682 = !DISubroutineType(types: !4683)
!4683 = !{!29, !269, !4684}
!4684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4615, size: 64)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !4657, file: !163, line: 337, baseType: !4686, size: 64, offset: 576)
!4686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4687, size: 64)
!4687 = !DISubroutineType(types: !4688)
!4688 = !{!29, !269, !4679}
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4657, file: !163, line: 339, baseType: !4690, size: 64, offset: 640)
!4690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4691, size: 64)
!4691 = !DISubroutineType(types: !4692)
!4692 = !{!29, !418, !4693}
!4693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4607, size: 64)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !419, file: !158, line: 1199, baseType: !4695, size: 64, offset: 512)
!4695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4696, size: 64)
!4696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4697)
!4697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !163, line: 430, size: 704, elements: !4698)
!4698 = !{!4699, !4705, !4706, !4710, !4711, !4712, !4727, !4750, !4754, !4755, !4778}
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !4697, file: !163, line: 431, baseType: !4700, size: 64)
!4700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4701, size: 64)
!4701 = !DISubroutineType(types: !4702)
!4702 = !{!29, !418, !29, !29, !4703}
!4703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4704, size: 64)
!4704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3548)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !4697, file: !163, line: 432, baseType: !4551, size: 64, offset: 64)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !4697, file: !163, line: 433, baseType: !4707, size: 64, offset: 128)
!4707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4708, size: 64)
!4708 = !DISubroutineType(types: !4709)
!4709 = !{!29, !418, !7}
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !4697, file: !163, line: 434, baseType: !4707, size: 64, offset: 192)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !4697, file: !163, line: 435, baseType: !4551, size: 64, offset: 256)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !4697, file: !163, line: 436, baseType: !4713, size: 64, offset: 320)
!4713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4714, size: 64)
!4714 = !DISubroutineType(types: !4715)
!4715 = !{!29, !418, !29, !4716}
!4716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4717, size: 64)
!4717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !163, line: 417, size: 256, elements: !4718)
!4718 = !{!4719, !4720, !4721, !4722, !4723, !4724, !4725, !4726}
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !4717, file: !163, line: 418, baseType: !29, size: 32)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !4717, file: !163, line: 419, baseType: !7, size: 32, offset: 32)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !4717, file: !163, line: 420, baseType: !7, size: 32, offset: 64)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !4717, file: !163, line: 422, baseType: !7, size: 32, offset: 96)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !4717, file: !163, line: 423, baseType: !7, size: 32, offset: 128)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !4717, file: !163, line: 424, baseType: !7, size: 32, offset: 160)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !4717, file: !163, line: 425, baseType: !7, size: 32, offset: 192)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !4717, file: !163, line: 426, baseType: !7, size: 32, offset: 224)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !4697, file: !163, line: 437, baseType: !4728, size: 64, offset: 384)
!4728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4729, size: 64)
!4729 = !DISubroutineType(types: !4730)
!4730 = !{!29, !418, !4607, !4731}
!4731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4732, size: 64)
!4732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !163, line: 345, size: 960, elements: !4733)
!4733 = !{!4734, !4735, !4736, !4737, !4738, !4739, !4740, !4741, !4742, !4743, !4744, !4745, !4746, !4747, !4748, !4749}
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !4732, file: !163, line: 346, baseType: !29, size: 32)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !4732, file: !163, line: 347, baseType: !228, size: 64, offset: 64)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !4732, file: !163, line: 348, baseType: !228, size: 64, offset: 128)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !4732, file: !163, line: 349, baseType: !228, size: 64, offset: 192)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !4732, file: !163, line: 350, baseType: !228, size: 64, offset: 256)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !4732, file: !163, line: 351, baseType: !228, size: 64, offset: 320)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !4732, file: !163, line: 352, baseType: !228, size: 64, offset: 384)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !4732, file: !163, line: 353, baseType: !611, size: 64, offset: 448)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !4732, file: !163, line: 355, baseType: !611, size: 64, offset: 512)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !4732, file: !163, line: 356, baseType: !29, size: 32, offset: 576)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !4732, file: !163, line: 357, baseType: !29, size: 32, offset: 608)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !4732, file: !163, line: 358, baseType: !228, size: 64, offset: 640)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !4732, file: !163, line: 359, baseType: !228, size: 64, offset: 704)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !4732, file: !163, line: 360, baseType: !228, size: 64, offset: 768)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !4732, file: !163, line: 361, baseType: !611, size: 64, offset: 832)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !4732, file: !163, line: 362, baseType: !29, size: 32, offset: 896)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !4697, file: !163, line: 438, baseType: !4751, size: 64, offset: 448)
!4751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4752, size: 64)
!4752 = !DISubroutineType(types: !4753)
!4753 = !{!29, !418, !4693, !4731}
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !4697, file: !163, line: 440, baseType: !4728, size: 64, offset: 512)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !4697, file: !163, line: 441, baseType: !4756, size: 64, offset: 576)
!4756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4757, size: 64)
!4757 = !DISubroutineType(types: !4758)
!4758 = !{!29, !418, !4759}
!4759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4760, size: 64)
!4760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !163, line: 411, size: 1408, elements: !4761)
!4761 = !{!4762, !4763}
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !4760, file: !163, line: 412, baseType: !7, size: 32)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !4760, file: !163, line: 413, baseType: !4764, size: 1344, offset: 64)
!4764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4765, size: 1344, elements: !507)
!4765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !163, line: 397, size: 448, elements: !4766)
!4766 = !{!4767, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4777}
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4765, file: !163, line: 398, baseType: !7, size: 32)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !4765, file: !163, line: 399, baseType: !7, size: 32, offset: 32)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !4765, file: !163, line: 401, baseType: !7, size: 32, offset: 64)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !4765, file: !163, line: 402, baseType: !7, size: 32, offset: 96)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !4765, file: !163, line: 403, baseType: !7, size: 32, offset: 128)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !4765, file: !163, line: 404, baseType: !7, size: 32, offset: 160)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !4765, file: !163, line: 405, baseType: !7, size: 32, offset: 192)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4765, file: !163, line: 406, baseType: !230, size: 64, offset: 256)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4765, file: !163, line: 407, baseType: !4776, size: 64, offset: 320)
!4776 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !32, line: 132, baseType: !228)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !4765, file: !163, line: 408, baseType: !4776, size: 64, offset: 384)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !4697, file: !163, line: 442, baseType: !4707, size: 64, offset: 640)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !419, file: !158, line: 1200, baseType: !4780, size: 64, offset: 576)
!4780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4781, size: 64)
!4781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4782)
!4782 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !158, line: 54, flags: DIFlagFwdDecl)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !419, file: !158, line: 1201, baseType: !46, size: 64, offset: 640)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !419, file: !158, line: 1202, baseType: !46, size: 64, offset: 704)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !419, file: !158, line: 1203, baseType: !46, size: 64, offset: 768)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !419, file: !158, line: 1204, baseType: !304, size: 64, offset: 832)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !419, file: !158, line: 1205, baseType: !1048, size: 320, offset: 896)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !419, file: !158, line: 1206, baseType: !29, size: 32, offset: 1216)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !419, file: !158, line: 1207, baseType: !56, size: 32, offset: 1248)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !419, file: !158, line: 1209, baseType: !27, size: 64, offset: 1280)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !419, file: !158, line: 1211, baseType: !4792, size: 64, offset: 1344)
!4792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4793, size: 64)
!4793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4794, size: 64)
!4794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4795)
!4795 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !158, line: 1211, flags: DIFlagFwdDecl)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !419, file: !158, line: 1223, baseType: !4797, size: 64, offset: 1408)
!4797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !321, line: 34, size: 64, elements: !4798)
!4798 = !{!4799}
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4797, file: !321, line: 35, baseType: !324, size: 64)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !419, file: !158, line: 1224, baseType: !104, size: 128, offset: 1472)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !419, file: !158, line: 1225, baseType: !4802, size: 64, offset: 1600)
!4802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4803, size: 64)
!4803 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !158, line: 1225, flags: DIFlagFwdDecl)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !419, file: !158, line: 1226, baseType: !4805, size: 64, offset: 1664)
!4805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4806, size: 64)
!4806 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !158, line: 1226, flags: DIFlagFwdDecl)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !419, file: !158, line: 1227, baseType: !4808, size: 64, offset: 1728)
!4808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4809, size: 64)
!4809 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !158, line: 50, flags: DIFlagFwdDecl)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !419, file: !158, line: 1228, baseType: !4811, size: 64, offset: 1792)
!4811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4812, size: 64)
!4812 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !158, line: 1228, flags: DIFlagFwdDecl)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !419, file: !158, line: 1229, baseType: !670, size: 128, offset: 1856)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !419, file: !158, line: 1230, baseType: !7, size: 32, offset: 1984)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !419, file: !158, line: 1231, baseType: !4816, size: 2496, offset: 2048)
!4816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !163, line: 521, size: 2496, elements: !4817)
!4817 = !{!4818, !4819, !4820, !4822, !4854}
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4816, file: !163, line: 522, baseType: !7, size: 32)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !4816, file: !163, line: 523, baseType: !1048, size: 320, offset: 64)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4816, file: !163, line: 524, baseType: !4821, size: 192, offset: 384)
!4821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 192, elements: !507)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4816, file: !163, line: 525, baseType: !4823, size: 1728, offset: 576)
!4823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4824, size: 1728, elements: !507)
!4824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !163, line: 222, size: 576, elements: !4825)
!4825 = !{!4826, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853}
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !4824, file: !163, line: 223, baseType: !4827, size: 64)
!4827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4828, size: 64)
!4828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !163, line: 445, size: 256, elements: !4829)
!4829 = !{!4830, !4831, !4844, !4845}
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !4828, file: !163, line: 446, baseType: !29, size: 32)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !4828, file: !163, line: 447, baseType: !4832, size: 64, offset: 64)
!4832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4833, size: 64)
!4833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4834)
!4834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !163, line: 312, size: 512, elements: !4835)
!4835 = !{!4836, !4837, !4838, !4839, !4840, !4841, !4842, !4843}
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !4834, file: !163, line: 313, baseType: !4551, size: 64)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !4834, file: !163, line: 314, baseType: !4551, size: 64, offset: 64)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !4834, file: !163, line: 315, baseType: !4551, size: 64, offset: 128)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !4834, file: !163, line: 316, baseType: !4551, size: 64, offset: 192)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !4834, file: !163, line: 317, baseType: !4660, size: 64, offset: 256)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !4834, file: !163, line: 318, baseType: !4660, size: 64, offset: 320)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !4834, file: !163, line: 319, baseType: !4660, size: 64, offset: 384)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4834, file: !163, line: 320, baseType: !4690, size: 64, offset: 448)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !4828, file: !163, line: 448, baseType: !453, size: 64, offset: 128)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !4828, file: !163, line: 449, baseType: !4827, size: 64, offset: 192)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !4824, file: !163, line: 224, baseType: !29, size: 32, offset: 64)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !4824, file: !163, line: 226, baseType: !104, size: 128, offset: 128)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !4824, file: !163, line: 227, baseType: !46, size: 64, offset: 256)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !4824, file: !163, line: 228, baseType: !7, size: 32, offset: 320)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !4824, file: !163, line: 229, baseType: !7, size: 32, offset: 352)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !4824, file: !163, line: 230, baseType: !4628, size: 64, offset: 384)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !4824, file: !163, line: 231, baseType: !4628, size: 64, offset: 448)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !4824, file: !163, line: 232, baseType: !27, size: 64, offset: 512)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4816, file: !163, line: 526, baseType: !4855, size: 192, offset: 2304)
!4855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4832, size: 192, elements: !507)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !419, file: !158, line: 1233, baseType: !4857, size: 2368, offset: 4544)
!4857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !158, line: 1184, size: 2368, elements: !4858)
!4858 = !{!4859, !4860, !4861}
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4857, file: !158, line: 1185, baseType: !33, size: 16)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !4857, file: !158, line: 1186, baseType: !33, size: 16, offset: 16)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !4857, file: !158, line: 1187, baseType: !4862, size: 2304, offset: 64)
!4862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4863, size: 2304, elements: !507)
!4863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4864, line: 12, size: 768, elements: !4865)
!4864 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!4865 = !{!4866, !4874, !4875, !4880, !4881}
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4863, file: !4864, line: 13, baseType: !4867, size: 384)
!4867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !4868, line: 17, size: 384, elements: !4869)
!4868 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!4869 = !{!4870, !4871, !4872, !4873}
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !4867, file: !4868, line: 18, baseType: !29, size: 32)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !4867, file: !4868, line: 19, baseType: !29, size: 32, offset: 32)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !4867, file: !4868, line: 20, baseType: !61, size: 192, offset: 64)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !4867, file: !4868, line: 22, baseType: !592, size: 128, align: 64, offset: 256)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4863, file: !4864, line: 14, baseType: !4281, size: 64, offset: 384)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4863, file: !4864, line: 15, baseType: !4876, size: 64, offset: 448)
!4876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !4877, line: 16, size: 64, elements: !4878)
!4877 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!4878 = !{!4879}
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4876, file: !4877, line: 17, baseType: !706, size: 64)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4863, file: !4864, line: 16, baseType: !61, size: 192, offset: 512)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4863, file: !4864, line: 17, baseType: !56, size: 32, offset: 704)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !419, file: !158, line: 1240, baseType: !27, size: 64, offset: 6912)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !419, file: !158, line: 1243, baseType: !338, size: 32, offset: 6976)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !419, file: !158, line: 1245, baseType: !1224, size: 64, offset: 7040)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !419, file: !158, line: 1246, baseType: !1224, size: 64, offset: 7104)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !419, file: !158, line: 1248, baseType: !339, size: 32, offset: 7168)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !419, file: !158, line: 1249, baseType: !4888, size: 64, offset: 7232)
!4888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4889, size: 64)
!4889 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !158, line: 634, flags: DIFlagFwdDecl)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !419, file: !158, line: 1252, baseType: !4891, size: 256, offset: 7296)
!4891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 256, elements: !348)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !419, file: !158, line: 1253, baseType: !4893, size: 128, offset: 7552)
!4893 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4894, line: 21, baseType: !4895)
!4894 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4895 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4894, line: 19, size: 128, elements: !4896)
!4896 = !{!4897}
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4895, file: !4894, line: 20, baseType: !1975, size: 128)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !419, file: !158, line: 1255, baseType: !7, size: 32, offset: 7680)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !419, file: !158, line: 1261, baseType: !614, size: 256, offset: 7744)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !419, file: !158, line: 1267, baseType: !23, size: 64, offset: 8000)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !419, file: !158, line: 1269, baseType: !364, size: 64, offset: 8064)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !419, file: !158, line: 1271, baseType: !4903, size: 448, offset: 8128)
!4903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !4643, line: 63, size: 448, elements: !4904)
!4904 = !{!4905, !4910, !4911, !4912, !4913, !4914, !4915}
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4903, file: !4643, line: 64, baseType: !4906, size: 64)
!4906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4907, size: 64)
!4907 = !DISubroutineType(types: !4908)
!4908 = !{!46, !4909, !4641}
!4909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4903, size: 64)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4903, file: !4643, line: 66, baseType: !4906, size: 64, offset: 64)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4903, file: !4643, line: 69, baseType: !226, size: 64, offset: 128)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4903, file: !4643, line: 70, baseType: !29, size: 32, offset: 192)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4903, file: !4643, line: 71, baseType: !7, size: 32, offset: 224)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4903, file: !4643, line: 74, baseType: !104, size: 128, offset: 256)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4903, file: !4643, line: 85, baseType: !4916, size: 64, offset: 384)
!4916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !419, file: !158, line: 1274, baseType: !605, size: 64, offset: 8576)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !419, file: !158, line: 1280, baseType: !605, size: 64, offset: 8640)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !419, file: !158, line: 1283, baseType: !29, size: 32, offset: 8704)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !419, file: !158, line: 1286, baseType: !4036, size: 32, offset: 8736)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !419, file: !158, line: 1289, baseType: !2606, size: 64, offset: 8768)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !419, file: !158, line: 1290, baseType: !666, size: 64, offset: 8832)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !419, file: !158, line: 1297, baseType: !1153, size: 64, offset: 8896)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !419, file: !158, line: 1304, baseType: !4925, size: 64, offset: 8960)
!4925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4926, line: 49, size: 64, elements: !4927)
!4926 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4927 = !{!4928}
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4925, file: !4926, line: 50, baseType: !4929, size: 64)
!4929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4930, size: 64)
!4930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4926, line: 41, size: 512, align: 512, elements: !4931)
!4931 = !{!4932, !4933, !4938}
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4930, file: !4926, line: 43, baseType: !66, size: 32)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4930, file: !4926, line: 45, baseType: !4934, size: 192, offset: 64)
!4934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4926, line: 29, size: 192, elements: !4935)
!4935 = !{!4936, !4937}
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4934, file: !4926, line: 30, baseType: !104, size: 128)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4934, file: !4926, line: 32, baseType: !226, size: 64, offset: 128)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4930, file: !4926, line: 46, baseType: !226, size: 64, offset: 256)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !419, file: !158, line: 1305, baseType: !4925, size: 64, offset: 9024)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !419, file: !158, line: 1306, baseType: !592, size: 128, align: 64, offset: 9088)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !419, file: !158, line: 1307, baseType: !1313, size: 256, offset: 9216)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !419, file: !158, line: 1309, baseType: !614, size: 256, offset: 9472)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !419, file: !158, line: 1314, baseType: !29, size: 32, offset: 9728)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !419, file: !158, line: 1317, baseType: !66, size: 32, align: 512, offset: 10240)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !419, file: !158, line: 1318, baseType: !104, size: 128, offset: 10304)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !419, file: !158, line: 1320, baseType: !66, size: 32, offset: 10432)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !419, file: !158, line: 1321, baseType: !104, size: 128, offset: 10496)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !413, file: !414, line: 73, baseType: !29, size: 32, offset: 128)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !413, file: !414, line: 74, baseType: !4950, size: 64, offset: 192)
!4950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4951, size: 64)
!4951 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1582, line: 42, flags: DIFlagFwdDecl)
!4952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !366, file: !306, line: 141, baseType: !4954, size: 64, offset: 704)
!4954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4955, size: 64)
!4955 = !DISubroutineType(types: !4956)
!4956 = !{!29, !4703, !1198}
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !366, file: !306, line: 142, baseType: !4958, size: 64, offset: 768)
!4958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4959, size: 64)
!4959 = !DISubroutineType(types: !4960)
!4960 = !{!304, !304, !4961}
!4961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4962, size: 64)
!4962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !270)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !305, file: !306, line: 96, baseType: !418, size: 64, offset: 832)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !305, file: !306, line: 97, baseType: !46, size: 64, offset: 896)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !305, file: !306, line: 98, baseType: !27, size: 64, offset: 960)
!4966 = !DIDerivedType(tag: DW_TAG_member, scope: !305, file: !306, line: 100, baseType: !4967, size: 128, offset: 1024)
!4967 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !305, file: !306, line: 100, size: 128, elements: !4968)
!4968 = !{!4969, !4970}
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4967, file: !306, line: 101, baseType: !104, size: 128)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4967, file: !306, line: 102, baseType: !4971, size: 64)
!4971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !305, file: !306, line: 104, baseType: !104, size: 128, offset: 1152)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !305, file: !306, line: 105, baseType: !104, size: 128, offset: 1280)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !305, file: !306, line: 113, baseType: !4975, size: 128, offset: 1408)
!4975 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !305, file: !306, line: 109, size: 128, elements: !4976)
!4976 = !{!4977, !4978, !4979}
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4975, file: !306, line: 110, baseType: !670, size: 128)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4975, file: !306, line: 111, baseType: !320, size: 128)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4975, file: !306, line: 112, baseType: !592, size: 128, align: 64)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !298, file: !158, line: 1968, baseType: !4981, size: 64, offset: 64)
!4981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4982, size: 64)
!4982 = !DISubroutineType(types: !4983)
!4983 = !{!23, !304, !269, !4984}
!4984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4985, size: 64)
!4985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4986, line: 10, size: 128, elements: !4987)
!4986 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4987 = !{!4988, !4989}
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4985, file: !4986, line: 11, baseType: !4074, size: 64)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4985, file: !4986, line: 12, baseType: !27, size: 64, offset: 64)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !298, file: !158, line: 1969, baseType: !4991, size: 64, offset: 128)
!4991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4992, size: 64)
!4992 = !DISubroutineType(types: !4993)
!4993 = !{!29, !4950, !269, !29}
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !298, file: !158, line: 1970, baseType: !4995, size: 64, offset: 192)
!4995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4996, size: 64)
!4996 = !DISubroutineType(types: !4997)
!4997 = !{!292, !269, !29, !1198}
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !298, file: !158, line: 1972, baseType: !4999, size: 64, offset: 256)
!4999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5000, size: 64)
!5000 = !DISubroutineType(types: !5001)
!5001 = !{!29, !304, !407, !29}
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !298, file: !158, line: 1974, baseType: !5003, size: 64, offset: 320)
!5003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5004, size: 64)
!5004 = !DISubroutineType(types: !5005)
!5005 = !{!29, !4950, !269, !304, !31, !1198}
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !298, file: !158, line: 1976, baseType: !5007, size: 64, offset: 384)
!5007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5008, size: 64)
!5008 = !DISubroutineType(types: !5009)
!5009 = !{!29, !304, !269, !304}
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !298, file: !158, line: 1977, baseType: !5011, size: 64, offset: 448)
!5011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5012, size: 64)
!5012 = !DISubroutineType(types: !5013)
!5013 = !{!29, !269, !304}
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !298, file: !158, line: 1978, baseType: !5015, size: 64, offset: 512)
!5015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5016, size: 64)
!5016 = !DISubroutineType(types: !5017)
!5017 = !{!29, !4950, !269, !304, !23}
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !298, file: !158, line: 1980, baseType: !5019, size: 64, offset: 576)
!5019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5020, size: 64)
!5020 = !DISubroutineType(types: !5021)
!5021 = !{!29, !4950, !269, !304, !31}
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !298, file: !158, line: 1982, baseType: !5011, size: 64, offset: 640)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !298, file: !158, line: 1983, baseType: !5024, size: 64, offset: 704)
!5024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5025, size: 64)
!5025 = !DISubroutineType(types: !5026)
!5026 = !{!29, !4950, !269, !304, !31, !423}
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !298, file: !158, line: 1985, baseType: !5028, size: 64, offset: 768)
!5028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5029, size: 64)
!5029 = !DISubroutineType(types: !5030)
!5030 = !{!29, !4950, !269, !304, !269, !304, !7}
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !298, file: !158, line: 1987, baseType: !5032, size: 64, offset: 832)
!5032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5033, size: 64)
!5033 = !DISubroutineType(types: !5034)
!5034 = !{!29, !4950, !304, !5035}
!5035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5036, size: 64)
!5036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !158, line: 226, size: 640, elements: !5037)
!5037 = !{!5038, !5039, !5040, !5050, !5059, !5060, !5065, !5066, !5067}
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !5036, file: !158, line: 227, baseType: !7, size: 32)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !5036, file: !158, line: 228, baseType: !31, size: 16, offset: 32)
!5040 = !DIDerivedType(tag: DW_TAG_member, scope: !5036, file: !158, line: 241, baseType: !5041, size: 32, offset: 64)
!5041 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5036, file: !158, line: 241, size: 32, elements: !5042)
!5042 = !{!5043, !5044}
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !5041, file: !158, line: 242, baseType: !275, size: 32)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !5041, file: !158, line: 243, baseType: !5045, size: 32)
!5045 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !5046, line: 16, baseType: !5047)
!5046 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!5047 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5046, line: 14, size: 32, elements: !5048)
!5048 = !{!5049}
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5047, file: !5046, line: 15, baseType: !280, size: 32)
!5050 = !DIDerivedType(tag: DW_TAG_member, scope: !5036, file: !158, line: 245, baseType: !5051, size: 32, offset: 96)
!5051 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5036, file: !158, line: 245, size: 32, elements: !5052)
!5052 = !{!5053, !5054}
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !5051, file: !158, line: 246, baseType: !284, size: 32)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !5051, file: !158, line: 247, baseType: !5055, size: 32)
!5055 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !5046, line: 20, baseType: !5056)
!5056 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5046, line: 18, size: 32, elements: !5057)
!5057 = !{!5058}
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5056, file: !5046, line: 19, baseType: !288, size: 32)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !5036, file: !158, line: 249, baseType: !48, size: 64, offset: 128)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !5036, file: !158, line: 250, baseType: !5061, size: 128, offset: 192)
!5061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1225, line: 13, size: 128, elements: !5062)
!5062 = !{!5063, !5064}
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5061, file: !1225, line: 14, baseType: !1224, size: 64)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5061, file: !1225, line: 15, baseType: !226, size: 64, offset: 64)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !5036, file: !158, line: 251, baseType: !5061, size: 128, offset: 320)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !5036, file: !158, line: 252, baseType: !5061, size: 128, offset: 448)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !5036, file: !158, line: 259, baseType: !579, size: 64, offset: 576)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !298, file: !158, line: 1988, baseType: !5069, size: 64, offset: 896)
!5069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5070, size: 64)
!5070 = !DISubroutineType(types: !5071)
!5071 = !{!29, !4950, !4703, !5072, !338, !7}
!5072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5073, size: 64)
!5073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !5074, line: 22, size: 1280, elements: !5075)
!5074 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!5075 = !{!5076, !5077, !5078, !5079, !5080, !5081, !5082, !5083, !5084, !5085, !5086, !5087, !5088, !5089, !5090, !5091, !5092, !5093, !5094, !5095, !5096}
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !5073, file: !5074, line: 23, baseType: !338, size: 32)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5073, file: !5074, line: 24, baseType: !31, size: 16, offset: 32)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !5073, file: !5074, line: 25, baseType: !7, size: 32, offset: 64)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !5073, file: !5074, line: 26, baseType: !1232, size: 32, offset: 96)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !5073, file: !5074, line: 27, baseType: !228, size: 64, offset: 128)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !5073, file: !5074, line: 28, baseType: !228, size: 64, offset: 192)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !5073, file: !5074, line: 41, baseType: !228, size: 64, offset: 256)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5073, file: !5074, line: 42, baseType: !423, size: 32, offset: 320)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !5073, file: !5074, line: 43, baseType: !423, size: 32, offset: 352)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !5073, file: !5074, line: 44, baseType: !275, size: 32, offset: 384)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !5073, file: !5074, line: 45, baseType: !284, size: 32, offset: 416)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5073, file: !5074, line: 46, baseType: !48, size: 64, offset: 448)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !5073, file: !5074, line: 47, baseType: !5061, size: 128, offset: 512)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !5073, file: !5074, line: 48, baseType: !5061, size: 128, offset: 640)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !5073, file: !5074, line: 49, baseType: !5061, size: 128, offset: 768)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !5073, file: !5074, line: 50, baseType: !5061, size: 128, offset: 896)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !5073, file: !5074, line: 51, baseType: !228, size: 64, offset: 1024)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !5073, file: !5074, line: 52, baseType: !228, size: 64, offset: 1088)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !5073, file: !5074, line: 53, baseType: !338, size: 32, offset: 1152)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !5073, file: !5074, line: 54, baseType: !338, size: 32, offset: 1184)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !5073, file: !5074, line: 55, baseType: !228, size: 64, offset: 1216)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !298, file: !158, line: 1990, baseType: !5098, size: 64, offset: 960)
!5098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5099, size: 64)
!5099 = !DISubroutineType(types: !5100)
!5100 = !{!538, !304, !407, !42}
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !298, file: !158, line: 1991, baseType: !5102, size: 64, offset: 1024)
!5102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5103, size: 64)
!5103 = !DISubroutineType(types: !5104)
!5104 = !{!29, !269, !5105, !228, !228}
!5105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5106, size: 64)
!5106 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !158, line: 55, flags: DIFlagFwdDecl)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !298, file: !158, line: 1993, baseType: !5108, size: 64, offset: 1088)
!5108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5109, size: 64)
!5109 = !DISubroutineType(types: !5110)
!5110 = !{!29, !269, !29}
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !298, file: !158, line: 1994, baseType: !5112, size: 64, offset: 1152)
!5112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5113, size: 64)
!5113 = !DISubroutineType(types: !5114)
!5114 = !{!29, !269, !304, !579, !7, !31}
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !298, file: !158, line: 1997, baseType: !5116, size: 64, offset: 1216)
!5116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5117, size: 64)
!5117 = !DISubroutineType(types: !5118)
!5118 = !{!29, !4950, !269, !579, !31}
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !298, file: !158, line: 1999, baseType: !5120, size: 64, offset: 1280)
!5120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5121, size: 64)
!5121 = !DISubroutineType(types: !5122)
!5122 = !{!292, !4950, !304, !29}
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !298, file: !158, line: 2001, baseType: !5124, size: 64, offset: 1344)
!5124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5125, size: 64)
!5125 = !DISubroutineType(types: !5126)
!5126 = !{!29, !4950, !304, !292, !29}
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !298, file: !158, line: 2003, baseType: !5128, size: 64, offset: 1408)
!5128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5129, size: 64)
!5129 = !DISubroutineType(types: !5130)
!5130 = !{!29, !4950, !304, !5131}
!5131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5132, size: 64)
!5132 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !158, line: 76, flags: DIFlagFwdDecl)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !298, file: !158, line: 2005, baseType: !5134, size: 64, offset: 1472)
!5134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5135, size: 64)
!5135 = !DISubroutineType(types: !5136)
!5136 = !{!29, !304, !5131}
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !298, file: !158, line: 2006, baseType: !5138, size: 64, offset: 1536)
!5138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5139, size: 64)
!5139 = !DISubroutineType(types: !5140)
!5140 = !{!5141, !269}
!5141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5142, size: 64)
!5142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !158, line: 3192, size: 192, elements: !5143)
!5143 = !{!5144, !5145}
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !5142, file: !158, line: 3193, baseType: !695, size: 128)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !5142, file: !158, line: 3194, baseType: !338, size: 32, offset: 128)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !270, file: !158, line: 655, baseType: !418, size: 64, offset: 448)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !270, file: !158, line: 656, baseType: !265, size: 64, offset: 512)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !270, file: !158, line: 659, baseType: !27, size: 64, offset: 576)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !270, file: !158, line: 663, baseType: !46, size: 64, offset: 640)
!5150 = !DIDerivedType(tag: DW_TAG_member, scope: !270, file: !158, line: 671, baseType: !5151, size: 32, offset: 704)
!5151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !270, file: !158, line: 671, size: 32, elements: !5152)
!5152 = !{!5153, !5155}
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !5151, file: !158, line: 672, baseType: !5154, size: 32)
!5154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !5151, file: !158, line: 673, baseType: !7, size: 32)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !270, file: !158, line: 675, baseType: !423, size: 32, offset: 736)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !270, file: !158, line: 676, baseType: !48, size: 64, offset: 768)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !270, file: !158, line: 677, baseType: !5061, size: 128, offset: 832)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !270, file: !158, line: 678, baseType: !5061, size: 128, offset: 960)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !270, file: !158, line: 679, baseType: !5061, size: 128, offset: 1088)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !270, file: !158, line: 680, baseType: !66, size: 32, offset: 1216)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !270, file: !158, line: 681, baseType: !33, size: 16, offset: 1248)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !270, file: !158, line: 682, baseType: !90, size: 8, offset: 1264)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !270, file: !158, line: 683, baseType: !90, size: 8, offset: 1272)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !270, file: !158, line: 684, baseType: !4776, size: 64, offset: 1280)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !270, file: !158, line: 691, baseType: !46, size: 64, offset: 1344)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !270, file: !158, line: 692, baseType: !1048, size: 320, offset: 1408)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !270, file: !158, line: 694, baseType: !46, size: 64, offset: 1728)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !270, file: !158, line: 695, baseType: !46, size: 64, offset: 1792)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !270, file: !158, line: 697, baseType: !670, size: 128, offset: 1856)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !270, file: !158, line: 698, baseType: !104, size: 128, offset: 1984)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !270, file: !158, line: 707, baseType: !104, size: 128, offset: 2112)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !270, file: !158, line: 708, baseType: !104, size: 128, offset: 2240)
!5174 = !DIDerivedType(tag: DW_TAG_member, scope: !270, file: !158, line: 709, baseType: !5175, size: 128, offset: 2368)
!5175 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !270, file: !158, line: 709, size: 128, elements: !5176)
!5176 = !{!5177, !5178}
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !5175, file: !158, line: 710, baseType: !666, size: 64)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !5175, file: !158, line: 711, baseType: !592, size: 128, align: 64)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !270, file: !158, line: 713, baseType: !607, size: 64, offset: 2496)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !270, file: !158, line: 714, baseType: !607, size: 64, offset: 2560)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !270, file: !158, line: 715, baseType: !56, size: 32, offset: 2624)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !270, file: !158, line: 716, baseType: !56, size: 32, offset: 2656)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !270, file: !158, line: 717, baseType: !56, size: 32, offset: 2688)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !270, file: !158, line: 719, baseType: !56, size: 32, offset: 2720)
!5185 = !DIDerivedType(tag: DW_TAG_member, scope: !270, file: !158, line: 721, baseType: !5186, size: 64, offset: 2752)
!5186 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !270, file: !158, line: 721, size: 64, elements: !5187)
!5187 = !{!5188, !5189}
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !5186, file: !158, line: 722, baseType: !3555, size: 64)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !5186, file: !158, line: 723, baseType: !4530, size: 64)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !270, file: !158, line: 725, baseType: !5191, size: 64, offset: 2816)
!5191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5192, size: 64)
!5192 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !158, line: 725, flags: DIFlagFwdDecl)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !270, file: !158, line: 726, baseType: !266, size: 1536, align: 64, offset: 2880)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !270, file: !158, line: 727, baseType: !104, size: 128, offset: 4416)
!5195 = !DIDerivedType(tag: DW_TAG_member, scope: !270, file: !158, line: 728, baseType: !5196, size: 64, offset: 4544)
!5196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !270, file: !158, line: 728, size: 64, elements: !5197)
!5197 = !{!5198, !5199, !5202, !5203}
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !5196, file: !158, line: 729, baseType: !3171, size: 64)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !5196, file: !158, line: 730, baseType: !5200, size: 64)
!5200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5201, size: 64)
!5201 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !158, line: 730, flags: DIFlagFwdDecl)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !5196, file: !158, line: 731, baseType: !407, size: 64)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !5196, file: !158, line: 732, baseType: !7, size: 32)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !270, file: !158, line: 735, baseType: !339, size: 32, offset: 4608)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !270, file: !158, line: 738, baseType: !339, size: 32, offset: 4640)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !270, file: !158, line: 739, baseType: !4888, size: 64, offset: 4672)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !270, file: !158, line: 750, baseType: !27, size: 64, offset: 4736)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !266, file: !158, line: 474, baseType: !695, size: 128, offset: 64)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !266, file: !158, line: 475, baseType: !1048, size: 320, offset: 192)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !266, file: !158, line: 476, baseType: !204, size: 32, offset: 512)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !266, file: !158, line: 477, baseType: !56, size: 32, offset: 544)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !266, file: !158, line: 482, baseType: !884, size: 128, offset: 576)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !266, file: !158, line: 483, baseType: !46, size: 64, offset: 704)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !266, file: !158, line: 484, baseType: !46, size: 64, offset: 768)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !266, file: !158, line: 485, baseType: !5216, size: 64, offset: 832)
!5216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5217, size: 64)
!5217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5218)
!5218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !158, line: 404, size: 1280, elements: !5219)
!5219 = !{!5220, !5224, !5228, !5232, !5236, !5252, !5256, !5260, !5265, !5269, !5273, !5277, !5278, !5282, !5286, !5290, !5295, !5299, !5306, !5307}
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !5218, file: !158, line: 405, baseType: !5221, size: 64)
!5221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5222, size: 64)
!5222 = !DISubroutineType(types: !5223)
!5223 = !{!29, !243, !4542}
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !5218, file: !158, line: 406, baseType: !5225, size: 64, offset: 64)
!5225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5226, size: 64)
!5226 = !DISubroutineType(types: !5227)
!5227 = !{!29, !579, !3597}
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !5218, file: !158, line: 409, baseType: !5229, size: 64, offset: 128)
!5229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5230, size: 64)
!5230 = !DISubroutineType(types: !5231)
!5231 = !{!29, !265, !4542}
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !5218, file: !158, line: 412, baseType: !5233, size: 64, offset: 192)
!5233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5234, size: 64)
!5234 = !DISubroutineType(types: !5235)
!5235 = !{!1198, !265, !3597}
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !5218, file: !158, line: 414, baseType: !5237, size: 64, offset: 256)
!5237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5238, size: 64)
!5238 = !DISubroutineType(types: !5239)
!5239 = !{null, !5240}
!5240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5241, size: 64)
!5241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !3594, line: 1276, size: 448, elements: !5242)
!5242 = !{!5243, !5244, !5245, !5247, !5248, !5249, !5250, !5251}
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !5241, file: !3594, line: 1277, baseType: !579, size: 64)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !5241, file: !3594, line: 1278, baseType: !265, size: 64, offset: 64)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !5241, file: !3594, line: 1279, baseType: !5246, size: 64, offset: 128)
!5246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !5241, file: !3594, line: 1281, baseType: !46, size: 64, offset: 192)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !5241, file: !3594, line: 1282, baseType: !7, size: 32, offset: 256)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !5241, file: !3594, line: 1283, baseType: !7, size: 32, offset: 288)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !5241, file: !3594, line: 1284, baseType: !1198, size: 8, offset: 320)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !5241, file: !3594, line: 1285, baseType: !46, size: 64, offset: 384)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !5218, file: !158, line: 416, baseType: !5253, size: 64, offset: 320)
!5253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5254, size: 64)
!5254 = !DISubroutineType(types: !5255)
!5255 = !{!29, !579, !265, !48, !7, !3280, !3964}
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !5218, file: !158, line: 419, baseType: !5257, size: 64, offset: 384)
!5257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5258, size: 64)
!5258 = !DISubroutineType(types: !5259)
!5259 = !{!29, !579, !265, !48, !7, !7, !243, !27}
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !5218, file: !158, line: 424, baseType: !5261, size: 64, offset: 448)
!5261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5262, size: 64)
!5262 = !DISubroutineType(types: !5263)
!5263 = !{!5264, !265, !5264}
!5264 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !32, line: 131, baseType: !228)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !5218, file: !158, line: 425, baseType: !5266, size: 64, offset: 512)
!5266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5267, size: 64)
!5267 = !DISubroutineType(types: !5268)
!5268 = !{null, !3597, !42, !42}
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !5218, file: !158, line: 426, baseType: !5270, size: 64, offset: 576)
!5270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5271, size: 64)
!5271 = !DISubroutineType(types: !5272)
!5272 = !{!1198, !3597, !204}
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !5218, file: !158, line: 427, baseType: !5274, size: 64, offset: 640)
!5274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5275, size: 64)
!5275 = !DISubroutineType(types: !5276)
!5276 = !{null, !3597}
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !5218, file: !158, line: 428, baseType: !3573, size: 64, offset: 704)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !5218, file: !158, line: 433, baseType: !5279, size: 64, offset: 768)
!5279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5280, size: 64)
!5280 = !DISubroutineType(types: !5281)
!5281 = !{!29, !265, !3597, !3597, !168}
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !5218, file: !158, line: 435, baseType: !5283, size: 64, offset: 832)
!5283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5284, size: 64)
!5284 = !DISubroutineType(types: !5285)
!5285 = !{!29, !3597}
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !5218, file: !158, line: 436, baseType: !5287, size: 64, offset: 896)
!5287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5288, size: 64)
!5288 = !DISubroutineType(types: !5289)
!5289 = !{!1198, !3597, !42, !42}
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !5218, file: !158, line: 438, baseType: !5291, size: 64, offset: 960)
!5291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5292, size: 64)
!5292 = !DISubroutineType(types: !5293)
!5293 = !{null, !3597, !5294, !5294}
!5294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !5218, file: !158, line: 439, baseType: !5296, size: 64, offset: 1024)
!5296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5297, size: 64)
!5297 = !DISubroutineType(types: !5298)
!5298 = !{!29, !265, !243}
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !5218, file: !158, line: 442, baseType: !5300, size: 64, offset: 1088)
!5300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5301, size: 64)
!5301 = !DISubroutineType(types: !5302)
!5302 = !{!29, !5303, !579, !5305}
!5303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5304, size: 64)
!5304 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !158, line: 66, flags: DIFlagFwdDecl)
!5305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5264, size: 64)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !5218, file: !158, line: 444, baseType: !3956, size: 64, offset: 1152)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !5218, file: !158, line: 445, baseType: !5308, size: 64, offset: 1216)
!5308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5309, size: 64)
!5309 = !DISubroutineType(types: !5310)
!5310 = !{!29, !3576, !3681}
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !266, file: !158, line: 486, baseType: !46, size: 64, offset: 896)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !266, file: !158, line: 487, baseType: !1048, size: 320, offset: 960)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !266, file: !158, line: 488, baseType: !4036, size: 32, offset: 1280)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !266, file: !158, line: 489, baseType: !66, size: 32, offset: 1312)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !266, file: !158, line: 490, baseType: !104, size: 128, offset: 1344)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !266, file: !158, line: 491, baseType: !27, size: 64, offset: 1472)
!5317 = !DIDerivedType(tag: DW_TAG_member, scope: !251, file: !136, line: 107, baseType: !5318, size: 64, offset: 192)
!5318 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !251, file: !136, line: 107, size: 64, elements: !5319)
!5319 = !{!5320, !5321}
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5318, file: !136, line: 108, baseType: !46, size: 64)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !5318, file: !136, line: 109, baseType: !46, size: 64)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !251, file: !136, line: 117, baseType: !46, size: 64, offset: 256)
!5323 = !DIDerivedType(tag: DW_TAG_member, scope: !248, file: !136, line: 119, baseType: !5324, size: 320)
!5324 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !248, file: !136, line: 119, size: 320, elements: !5325)
!5325 = !{!5326, !5327, !5330, !5331, !5332}
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !5324, file: !136, line: 124, baseType: !46, size: 64)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !5324, file: !136, line: 125, baseType: !5328, size: 64, offset: 64)
!5328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5329, size: 64)
!5329 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !136, line: 125, flags: DIFlagFwdDecl)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !5324, file: !136, line: 126, baseType: !46, size: 64, offset: 128)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !5324, file: !136, line: 127, baseType: !46, size: 64, offset: 192)
!5332 = !DIDerivedType(tag: DW_TAG_member, scope: !5324, file: !136, line: 128, baseType: !5333, size: 64, offset: 256)
!5333 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5324, file: !136, line: 128, size: 64, elements: !5334)
!5334 = !{!5335, !5336}
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !5333, file: !136, line: 133, baseType: !46, size: 64)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !5333, file: !136, line: 138, baseType: !605, size: 64)
!5337 = !DIDerivedType(tag: DW_TAG_member, scope: !248, file: !136, line: 141, baseType: !5338, size: 64)
!5338 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !248, file: !136, line: 141, size: 64, elements: !5339)
!5339 = !{!5340}
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !5338, file: !136, line: 142, baseType: !46, size: 64)
!5341 = !DIDerivedType(tag: DW_TAG_member, scope: !248, file: !136, line: 144, baseType: !5342, size: 128)
!5342 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !248, file: !136, line: 144, size: 128, elements: !5343)
!5343 = !{!5344, !5414}
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !5342, file: !136, line: 146, baseType: !5345, size: 64)
!5345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5346, size: 64)
!5346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !176, line: 126, size: 1216, elements: !5347)
!5347 = !{!5348, !5357, !5378, !5379, !5380, !5381, !5382, !5396, !5397, !5398}
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !5346, file: !176, line: 127, baseType: !5349, size: 384)
!5349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !176, line: 21, size: 384, elements: !5350)
!5350 = !{!5351, !5352, !5353, !5354, !5355, !5356}
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !5349, file: !176, line: 22, baseType: !46, size: 64)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !5349, file: !176, line: 23, baseType: !242, size: 64, offset: 64)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !5349, file: !176, line: 24, baseType: !242, size: 64, offset: 128)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5349, file: !176, line: 25, baseType: !46, size: 64, offset: 192)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !5349, file: !176, line: 26, baseType: !46, size: 64, offset: 256)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !5349, file: !176, line: 27, baseType: !46, size: 64, offset: 320)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5346, file: !176, line: 128, baseType: !5358, size: 128, offset: 384)
!5358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !5359, line: 105, size: 128, elements: !5360)
!5359 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!5360 = !{!5361, !5362}
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !5358, file: !5359, line: 110, baseType: !46, size: 64)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5358, file: !5359, line: 118, baseType: !5363, size: 64, offset: 64)
!5363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5364, size: 64)
!5364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !5359, line: 95, size: 448, elements: !5365)
!5365 = !{!5366, !5367, !5373, !5374, !5375, !5376, !5377}
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5364, file: !5359, line: 96, baseType: !605, size: 64)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5364, file: !5359, line: 97, baseType: !5368, size: 64, offset: 64)
!5368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5369, size: 64)
!5369 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !5359, line: 60, baseType: !5370)
!5370 = !DISubroutineType(types: !5371)
!5371 = !{null, !5372}
!5372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5358, size: 64)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !5364, file: !5359, line: 98, baseType: !5368, size: 64, offset: 128)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !5364, file: !5359, line: 99, baseType: !1198, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !5364, file: !5359, line: 100, baseType: !1198, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !5364, file: !5359, line: 101, baseType: !592, size: 128, align: 64, offset: 256)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5364, file: !5359, line: 102, baseType: !5372, size: 64, offset: 384)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !5346, file: !176, line: 129, baseType: !1352, size: 256, offset: 512)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5346, file: !176, line: 130, baseType: !175, size: 32, offset: 768)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5346, file: !176, line: 131, baseType: !7, size: 32, offset: 800)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !5346, file: !176, line: 132, baseType: !46, size: 64, offset: 832)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5346, file: !176, line: 133, baseType: !5383, size: 64, offset: 896)
!5383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5384, size: 64)
!5384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5385)
!5385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !176, line: 77, size: 192, elements: !5386)
!5386 = !{!5387, !5391, !5392}
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !5385, file: !176, line: 83, baseType: !5388, size: 64)
!5388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5389, size: 64)
!5389 = !DISubroutineType(types: !5390)
!5390 = !{null, !243}
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !5385, file: !176, line: 89, baseType: !3840, size: 64, offset: 64)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !5385, file: !176, line: 100, baseType: !5393, size: 64, offset: 128)
!5393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5394, size: 64)
!5394 = !DISubroutineType(types: !5395)
!5395 = !{!29, !5345, !46, !46, !29}
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5346, file: !176, line: 134, baseType: !27, size: 64, offset: 960)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !5346, file: !176, line: 135, baseType: !29, size: 32, offset: 1024)
!5398 = !DIDerivedType(tag: DW_TAG_member, scope: !5346, file: !176, line: 136, baseType: !5399, size: 128, offset: 1088)
!5399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5346, file: !176, line: 136, size: 128, elements: !5400)
!5400 = !{!5401, !5407}
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !5399, file: !176, line: 137, baseType: !5402, size: 128)
!5402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !5403, line: 6, size: 128, elements: !5404)
!5403 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!5404 = !{!5405, !5406}
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5402, file: !5403, line: 7, baseType: !228, size: 64)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5402, file: !5403, line: 8, baseType: !228, size: 64, offset: 64)
!5407 = !DIDerivedType(tag: DW_TAG_member, scope: !5399, file: !176, line: 138, baseType: !5408)
!5408 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5399, file: !176, line: 138, elements: !5409)
!5409 = !{!5410, !5412}
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !5408, file: !176, line: 138, baseType: !5411)
!5411 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5408, file: !176, line: 138, elements: !1022)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !5408, file: !176, line: 138, baseType: !5413)
!5413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5402, elements: !1429)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !5342, file: !136, line: 147, baseType: !27, size: 64, offset: 64)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !248, file: !136, line: 161, baseType: !592, size: 128, align: 64)
!5416 = !DIDerivedType(tag: DW_TAG_member, scope: !244, file: !136, line: 164, baseType: !5417, size: 32, offset: 384)
!5417 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !244, file: !136, line: 164, size: 32, elements: !5418)
!5418 = !{!5419, !5420}
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !5417, file: !136, line: 169, baseType: !56, size: 32)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !5417, file: !136, line: 177, baseType: !7, size: 32)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !244, file: !136, line: 181, baseType: !56, size: 32, offset: 416)
!5422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5423, size: 64)
!5423 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !3859)
!5424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5425, size: 64)
!5425 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !206)
!5426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5427, size: 64)
!5427 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !214)
!5428 = !{!5429, !5431, !5433, !0, !5436, !5438, !5440, !5442}
!5429 = !DIGlobalVariableExpression(var: !5430, expr: !DIExpression())
!5430 = distinct !DIGlobalVariable(name: "espfix_stack", scope: !2, file: !3, line: 55, type: !46, isLocal: false, isDefinition: true)
!5431 = !DIGlobalVariableExpression(var: !5432, expr: !DIExpression())
!5432 = distinct !DIGlobalVariable(name: "espfix_waddr", scope: !2, file: !3, line: 56, type: !46, isLocal: false, isDefinition: true)
!5433 = !DIGlobalVariableExpression(var: !5434, expr: !DIExpression())
!5434 = distinct !DIGlobalVariable(name: "espfix_pages", scope: !2, file: !3, line: 63, type: !5435, isLocal: true, isDefinition: true)
!5435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 64, elements: !953)
!5436 = !DIGlobalVariableExpression(var: !5437, expr: !DIExpression())
!5437 = distinct !DIGlobalVariable(name: "slot_random", scope: !2, file: !3, line: 68, type: !7, isLocal: true, isDefinition: true)
!5438 = !DIGlobalVariableExpression(var: !5439, expr: !DIExpression())
!5439 = distinct !DIGlobalVariable(name: "page_random", scope: !2, file: !3, line: 68, type: !7, isLocal: true, isDefinition: true)
!5440 = !DIGlobalVariableExpression(var: !5441, expr: !DIExpression())
!5441 = distinct !DIGlobalVariable(name: "espfix_init_mutex", scope: !2, file: !3, line: 59, type: !614, isLocal: true, isDefinition: true)
!5442 = !DIGlobalVariableExpression(var: !5443, expr: !DIExpression())
!5443 = distinct !DIGlobalVariable(scope: null, file: !5444, line: 223, type: !5445, isLocal: true, isDefinition: true)
!5444 = !DIFile(filename: "./include/linux/gfp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9839e6e1390b3a0e2df74dd95101fbc5")
!5445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 320, elements: !5446)
!5446 = !{!5447}
!5447 = !DISubrange(count: 40)
!5448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3859, size: 32768, elements: !1829)
!5449 = !{i32 7, !"Dwarf Version", i32 5}
!5450 = !{i32 2, !"Debug Info Version", i32 3}
!5451 = !{i32 1, !"wchar_size", i32 2}
!5452 = !{i32 8, !"cf-protection-branch", i32 1}
!5453 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5454 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5455 = !{i32 1, !"Code Model", i32 2}
!5456 = !{i32 1, !"override-stack-alignment", i32 8}
!5457 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5458 = distinct !DISubprogram(name: "init_espfix_bsp", scope: !3, file: !3, line: 104, type: !2946, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5459)
!5459 = !{!5460, !5461}
!5460 = !DILocalVariable(name: "pgd", scope: !5458, file: !3, line: 106, type: !233)
!5461 = !DILocalVariable(name: "p4d", scope: !5458, file: !3, line: 107, type: !219)
!5462 = !DILocation(line: 106, column: 2, scope: !5458)
!5463 = !DILocation(line: 106, column: 9, scope: !5458)
!5464 = !DILocation(line: 107, column: 2, scope: !5458)
!5465 = !DILocation(line: 107, column: 9, scope: !5458)
!5466 = !DILocation(line: 110, column: 22, scope: !5458)
!5467 = !DILocation(line: 110, column: 9, scope: !5458)
!5468 = !DILocation(line: 110, column: 6, scope: !5458)
!5469 = !DILocation(line: 111, column: 28, scope: !5458)
!5470 = !DILocation(line: 111, column: 8, scope: !5458)
!5471 = !DILocation(line: 111, column: 6, scope: !5458)
!5472 = !DILocation(line: 112, column: 25, scope: !5458)
!5473 = !DILocation(line: 112, column: 2, scope: !5458)
!5474 = !DILocation(line: 115, column: 2, scope: !5458)
!5475 = !DILocation(line: 118, column: 2, scope: !5458)
!5476 = !DILocation(line: 119, column: 1, scope: !5458)
!5477 = distinct !DISubprogram(name: "p4d_alloc", scope: !3820, file: !3820, line: 2776, type: !5478, scopeLine: 2778, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5480)
!5478 = !DISubroutineType(types: !5479)
!5479 = !{!219, !1001, !233, !46}
!5480 = !{!5481, !5482, !5483}
!5481 = !DILocalVariable(name: "mm", arg: 1, scope: !5477, file: !3820, line: 2776, type: !1001)
!5482 = !DILocalVariable(name: "pgd", arg: 2, scope: !5477, file: !3820, line: 2776, type: !233)
!5483 = !DILocalVariable(name: "address", arg: 3, scope: !5477, file: !3820, line: 2777, type: !46)
!5484 = !DILocation(line: 2776, column: 50, scope: !5477)
!5485 = !DILocation(line: 2776, column: 61, scope: !5477)
!5486 = !DILocation(line: 2777, column: 17, scope: !5477)
!5487 = !DILocation(line: 2779, column: 10, scope: !5477)
!5488 = !DILocation(line: 2779, column: 35, scope: !5477)
!5489 = !DILocation(line: 2779, column: 50, scope: !5477)
!5490 = !DILocation(line: 2779, column: 54, scope: !5477)
!5491 = !DILocation(line: 2779, column: 59, scope: !5477)
!5492 = !DILocation(line: 2779, column: 38, scope: !5477)
!5493 = !DILocation(line: 2779, column: 9, scope: !5477)
!5494 = !DILocation(line: 2780, column: 21, scope: !5477)
!5495 = !DILocation(line: 2780, column: 26, scope: !5477)
!5496 = !DILocation(line: 2780, column: 10, scope: !5477)
!5497 = !DILocation(line: 2779, column: 2, scope: !5477)
!5498 = distinct !DISubprogram(name: "p4d_populate", scope: !5499, file: !5499, line: 113, type: !5500, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5502)
!5499 = !DIFile(filename: "./arch/x86/include/asm/pgalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "93a43353e04f697ff6ff74bd20375be3")
!5500 = !DISubroutineType(types: !5501)
!5501 = !{null, !1001, !219, !3858}
!5502 = !{!5503, !5504, !5505}
!5503 = !DILocalVariable(name: "mm", arg: 1, scope: !5498, file: !5499, line: 113, type: !1001)
!5504 = !DILocalVariable(name: "p4d", arg: 2, scope: !5498, file: !5499, line: 113, type: !219)
!5505 = !DILocalVariable(name: "pud", arg: 3, scope: !5498, file: !5499, line: 113, type: !3858)
!5506 = !DILocation(line: 113, column: 51, scope: !5498)
!5507 = !DILocation(line: 113, column: 62, scope: !5498)
!5508 = !DILocation(line: 113, column: 74, scope: !5498)
!5509 = !DILocation(line: 115, column: 21, scope: !5498)
!5510 = !DILocation(line: 115, column: 25, scope: !5498)
!5511 = !DILocation(line: 115, column: 35, scope: !5498)
!5512 = !DILocation(line: 115, column: 2, scope: !5498)
!5513 = !DILocation(line: 116, column: 2, scope: !5498)
!5514 = !DILocation(line: 117, column: 1, scope: !5498)
!5515 = distinct !DISubprogram(name: "init_espfix_random", scope: !3, file: !3, line: 95, type: !2946, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5516)
!5516 = !{!5517}
!5517 = !DILocalVariable(name: "rand", scope: !5515, file: !3, line: 97, type: !46)
!5518 = !DILocation(line: 97, column: 2, scope: !5515)
!5519 = !DILocation(line: 97, column: 16, scope: !5515)
!5520 = !DILocation(line: 97, column: 23, scope: !5515)
!5521 = !DILocation(line: 99, column: 16, scope: !5515)
!5522 = !DILocation(line: 99, column: 21, scope: !5515)
!5523 = !DILocation(line: 99, column: 14, scope: !5515)
!5524 = !DILocation(line: 100, column: 17, scope: !5515)
!5525 = !DILocation(line: 100, column: 22, scope: !5515)
!5526 = !DILocation(line: 101, column: 3, scope: !5515)
!5527 = !DILocation(line: 100, column: 16, scope: !5515)
!5528 = !DILocation(line: 100, column: 14, scope: !5515)
!5529 = !DILocation(line: 102, column: 1, scope: !5515)
!5530 = distinct !DISubprogram(name: "init_espfix_ap", scope: !3, file: !3, line: 121, type: !2939, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5531)
!5531 = !{!5532, !5533, !5534, !5535, !5536, !5537, !5538, !5539, !5540, !5541, !5542, !5543, !5544, !5545, !5549, !5551, !5554, !5557, !5558, !5559, !5562, !5564, !5567}
!5532 = !DILocalVariable(name: "cpu", arg: 1, scope: !5530, file: !3, line: 121, type: !29)
!5533 = !DILocalVariable(name: "page", scope: !5530, file: !3, line: 123, type: !7)
!5534 = !DILocalVariable(name: "addr", scope: !5530, file: !3, line: 124, type: !46)
!5535 = !DILocalVariable(name: "pud", scope: !5530, file: !3, line: 125, type: !3859)
!5536 = !DILocalVariable(name: "pud_p", scope: !5530, file: !3, line: 125, type: !3858)
!5537 = !DILocalVariable(name: "pmd", scope: !5530, file: !3, line: 126, type: !206)
!5538 = !DILocalVariable(name: "pmd_p", scope: !5530, file: !3, line: 126, type: !205)
!5539 = !DILocalVariable(name: "pte", scope: !5530, file: !3, line: 127, type: !214)
!5540 = !DILocalVariable(name: "pte_p", scope: !5530, file: !3, line: 127, type: !213)
!5541 = !DILocalVariable(name: "n", scope: !5530, file: !3, line: 128, type: !29)
!5542 = !DILocalVariable(name: "node", scope: !5530, file: !3, line: 128, type: !29)
!5543 = !DILocalVariable(name: "stack_page", scope: !5530, file: !3, line: 129, type: !27)
!5544 = !DILocalVariable(name: "ptemask", scope: !5530, file: !3, line: 130, type: !212)
!5545 = !DILocalVariable(name: "__vpp_verify", scope: !5546, file: !3, line: 133, type: !1127)
!5546 = distinct !DILexicalBlock(scope: !5547, file: !3, line: 133, column: 6)
!5547 = distinct !DILexicalBlock(scope: !5548, file: !3, line: 133, column: 6)
!5548 = distinct !DILexicalBlock(scope: !5530, file: !3, line: 133, column: 6)
!5549 = !DILocalVariable(name: "__ptr", scope: !5550, file: !3, line: 133, type: !46)
!5550 = distinct !DILexicalBlock(scope: !5547, file: !3, line: 133, column: 6)
!5551 = !DILocalVariable(name: "page", scope: !5552, file: !3, line: 157, type: !243)
!5552 = distinct !DILexicalBlock(scope: !5553, file: !3, line: 156, column: 25)
!5553 = distinct !DILexicalBlock(scope: !5530, file: !3, line: 156, column: 6)
!5554 = !DILocalVariable(name: "page", scope: !5555, file: !3, line: 169, type: !243)
!5555 = distinct !DILexicalBlock(scope: !5556, file: !3, line: 168, column: 25)
!5556 = distinct !DILexicalBlock(scope: !5530, file: !3, line: 168, column: 6)
!5557 = !DILabel(scope: !5530, name: "unlock_done", file: !3, line: 191)
!5558 = !DILabel(scope: !5530, name: "done", file: !3, line: 193)
!5559 = !DILocalVariable(name: "__vpp_verify", scope: !5560, file: !3, line: 194, type: !1127)
!5560 = distinct !DILexicalBlock(scope: !5561, file: !3, line: 194, column: 2)
!5561 = distinct !DILexicalBlock(scope: !5530, file: !3, line: 194, column: 2)
!5562 = !DILocalVariable(name: "__ptr", scope: !5563, file: !3, line: 194, type: !46)
!5563 = distinct !DILexicalBlock(scope: !5561, file: !3, line: 194, column: 2)
!5564 = !DILocalVariable(name: "__vpp_verify", scope: !5565, file: !3, line: 195, type: !1127)
!5565 = distinct !DILexicalBlock(scope: !5566, file: !3, line: 195, column: 2)
!5566 = distinct !DILexicalBlock(scope: !5530, file: !3, line: 195, column: 2)
!5567 = !DILocalVariable(name: "__ptr", scope: !5568, file: !3, line: 195, type: !46)
!5568 = distinct !DILexicalBlock(scope: !5566, file: !3, line: 195, column: 2)
!5569 = !DILocation(line: 121, column: 25, scope: !5530)
!5570 = !DILocation(line: 123, column: 2, scope: !5530)
!5571 = !DILocation(line: 123, column: 15, scope: !5530)
!5572 = !DILocation(line: 124, column: 2, scope: !5530)
!5573 = !DILocation(line: 124, column: 16, scope: !5530)
!5574 = !DILocation(line: 125, column: 2, scope: !5530)
!5575 = !DILocation(line: 125, column: 8, scope: !5530)
!5576 = !DILocation(line: 125, column: 14, scope: !5530)
!5577 = !DILocation(line: 126, column: 2, scope: !5530)
!5578 = !DILocation(line: 126, column: 8, scope: !5530)
!5579 = !DILocation(line: 126, column: 14, scope: !5530)
!5580 = !DILocation(line: 127, column: 2, scope: !5530)
!5581 = !DILocation(line: 127, column: 8, scope: !5530)
!5582 = !DILocation(line: 127, column: 14, scope: !5530)
!5583 = !DILocation(line: 128, column: 2, scope: !5530)
!5584 = !DILocation(line: 128, column: 6, scope: !5530)
!5585 = !DILocation(line: 128, column: 9, scope: !5530)
!5586 = !DILocation(line: 129, column: 2, scope: !5530)
!5587 = !DILocation(line: 129, column: 8, scope: !5530)
!5588 = !DILocation(line: 130, column: 2, scope: !5530)
!5589 = !DILocation(line: 130, column: 11, scope: !5530)
!5590 = !DILocation(line: 133, column: 6, scope: !5547)
!5591 = !DILocation(line: 133, column: 6, scope: !5546)
!5592 = !DILocation(line: 133, column: 6, scope: !5550)
!5593 = !DILocation(line: 133, column: 6, scope: !5548)
!5594 = !DILocation(line: 133, column: 6, scope: !5530)
!5595 = !DILocation(line: 134, column: 3, scope: !5548)
!5596 = !DILocation(line: 136, column: 26, scope: !5530)
!5597 = !DILocation(line: 136, column: 9, scope: !5530)
!5598 = !DILocation(line: 136, column: 7, scope: !5530)
!5599 = !DILocation(line: 137, column: 9, scope: !5530)
!5600 = !DILocation(line: 137, column: 12, scope: !5530)
!5601 = !DILocation(line: 137, column: 7, scope: !5530)
!5602 = !DILocation(line: 140, column: 15, scope: !5603)
!5603 = distinct !DILexicalBlock(scope: !5530, file: !3, line: 140, column: 15)
!5604 = !DILocation(line: 140, column: 15, scope: !5605)
!5605 = distinct !DILexicalBlock(scope: !5603, file: !3, line: 140, column: 15)
!5606 = !DILocation(line: 140, column: 13, scope: !5530)
!5607 = !DILocation(line: 141, column: 6, scope: !5608)
!5608 = distinct !DILexicalBlock(scope: !5530, file: !3, line: 141, column: 6)
!5609 = !DILocation(line: 141, column: 6, scope: !5530)
!5610 = !DILocation(line: 142, column: 3, scope: !5608)
!5611 = !DILocation(line: 144, column: 2, scope: !5530)
!5612 = !DILocation(line: 147, column: 15, scope: !5613)
!5613 = distinct !DILexicalBlock(scope: !5530, file: !3, line: 147, column: 15)
!5614 = !DILocation(line: 147, column: 15, scope: !5615)
!5615 = distinct !DILexicalBlock(scope: !5613, file: !3, line: 147, column: 15)
!5616 = !DILocation(line: 147, column: 13, scope: !5530)
!5617 = !DILocation(line: 148, column: 6, scope: !5618)
!5618 = distinct !DILexicalBlock(scope: !5530, file: !3, line: 148, column: 6)
!5619 = !DILocation(line: 148, column: 6, scope: !5530)
!5620 = !DILocation(line: 149, column: 3, scope: !5618)
!5621 = !DILocation(line: 151, column: 21, scope: !5530)
!5622 = !DILocation(line: 151, column: 9, scope: !5530)
!5623 = !DILocation(line: 151, column: 7, scope: !5530)
!5624 = !DILocation(line: 152, column: 12, scope: !5530)
!5625 = !DILocation(line: 152, column: 10, scope: !5530)
!5626 = !DILocation(line: 154, column: 37, scope: !5530)
!5627 = !DILocation(line: 154, column: 27, scope: !5530)
!5628 = !DILocation(line: 154, column: 11, scope: !5530)
!5629 = !DILocation(line: 154, column: 8, scope: !5530)
!5630 = !DILocation(line: 155, column: 9, scope: !5530)
!5631 = !DILocation(line: 155, column: 8, scope: !5530)
!5632 = !DILocation(line: 156, column: 7, scope: !5553)
!5633 = !DILocation(line: 156, column: 6, scope: !5530)
!5634 = !DILocation(line: 157, column: 3, scope: !5552)
!5635 = !DILocation(line: 157, column: 16, scope: !5552)
!5636 = !DILocation(line: 157, column: 40, scope: !5552)
!5637 = !DILocation(line: 157, column: 23, scope: !5552)
!5638 = !DILocation(line: 159, column: 20, scope: !5552)
!5639 = !DILocation(line: 159, column: 9, scope: !5552)
!5640 = !DILocation(line: 160, column: 9, scope: !5552)
!5641 = !DILocation(line: 161, column: 32, scope: !5552)
!5642 = !DILocation(line: 161, column: 44, scope: !5552)
!5643 = !DILocation(line: 161, column: 3, scope: !5552)
!5644 = !DILocation(line: 162, column: 10, scope: !5645)
!5645 = distinct !DILexicalBlock(scope: !5552, file: !3, line: 162, column: 3)
!5646 = !DILocation(line: 162, column: 8, scope: !5645)
!5647 = !DILocation(line: 162, column: 15, scope: !5648)
!5648 = distinct !DILexicalBlock(scope: !5645, file: !3, line: 162, column: 3)
!5649 = !DILocation(line: 162, column: 17, scope: !5648)
!5650 = !DILocation(line: 162, column: 3, scope: !5645)
!5651 = !DILocation(line: 163, column: 4, scope: !5648)
!5652 = !DILocation(line: 162, column: 39, scope: !5648)
!5653 = !DILocation(line: 162, column: 3, scope: !5648)
!5654 = distinct !{!5654, !5650, !5655, !5656, !5657}
!5655 = !DILocation(line: 163, column: 4, scope: !5645)
!5656 = !{!"llvm.loop.mustprogress"}
!5657 = !{!"llvm.loop.unroll.disable"}
!5658 = !DILocation(line: 164, column: 2, scope: !5553)
!5659 = !DILocation(line: 164, column: 2, scope: !5552)
!5660 = !DILocation(line: 166, column: 27, scope: !5530)
!5661 = !DILocation(line: 166, column: 10, scope: !5530)
!5662 = !DILocation(line: 166, column: 8, scope: !5530)
!5663 = !DILocation(line: 167, column: 9, scope: !5530)
!5664 = !DILocation(line: 167, column: 8, scope: !5530)
!5665 = !DILocation(line: 168, column: 7, scope: !5556)
!5666 = !DILocation(line: 168, column: 6, scope: !5530)
!5667 = !DILocation(line: 169, column: 3, scope: !5555)
!5668 = !DILocation(line: 169, column: 16, scope: !5555)
!5669 = !DILocation(line: 169, column: 40, scope: !5555)
!5670 = !DILocation(line: 169, column: 23, scope: !5555)
!5671 = !DILocation(line: 171, column: 20, scope: !5555)
!5672 = !DILocation(line: 171, column: 9, scope: !5555)
!5673 = !DILocation(line: 172, column: 9, scope: !5555)
!5674 = !DILocation(line: 173, column: 32, scope: !5555)
!5675 = !DILocation(line: 173, column: 44, scope: !5555)
!5676 = !DILocation(line: 173, column: 3, scope: !5555)
!5677 = !DILocation(line: 174, column: 10, scope: !5678)
!5678 = distinct !DILexicalBlock(scope: !5555, file: !3, line: 174, column: 3)
!5679 = !DILocation(line: 174, column: 8, scope: !5678)
!5680 = !DILocation(line: 174, column: 15, scope: !5681)
!5681 = distinct !DILexicalBlock(scope: !5678, file: !3, line: 174, column: 3)
!5682 = !DILocation(line: 174, column: 17, scope: !5681)
!5683 = !DILocation(line: 174, column: 3, scope: !5678)
!5684 = !DILocation(line: 175, column: 4, scope: !5681)
!5685 = !DILocation(line: 174, column: 39, scope: !5681)
!5686 = !DILocation(line: 174, column: 3, scope: !5681)
!5687 = distinct !{!5687, !5683, !5688, !5656, !5657}
!5688 = !DILocation(line: 175, column: 4, scope: !5678)
!5689 = !DILocation(line: 176, column: 2, scope: !5556)
!5690 = !DILocation(line: 176, column: 2, scope: !5555)
!5691 = !DILocation(line: 178, column: 34, scope: !5530)
!5692 = !DILocation(line: 178, column: 10, scope: !5530)
!5693 = !DILocation(line: 178, column: 8, scope: !5530)
!5694 = !DILocation(line: 179, column: 15, scope: !5530)
!5695 = !DILocation(line: 179, column: 13, scope: !5530)
!5696 = !DILocation(line: 184, column: 8, scope: !5530)
!5697 = !DILocation(line: 185, column: 9, scope: !5698)
!5698 = distinct !DILexicalBlock(scope: !5530, file: !3, line: 185, column: 2)
!5699 = !DILocation(line: 185, column: 7, scope: !5698)
!5700 = !DILocation(line: 185, column: 14, scope: !5701)
!5701 = distinct !DILexicalBlock(scope: !5698, file: !3, line: 185, column: 2)
!5702 = !DILocation(line: 185, column: 16, scope: !5701)
!5703 = !DILocation(line: 185, column: 2, scope: !5698)
!5704 = !DILocation(line: 186, column: 3, scope: !5701)
!5705 = !DILocation(line: 185, column: 38, scope: !5701)
!5706 = !DILocation(line: 185, column: 2, scope: !5701)
!5707 = distinct !{!5707, !5703, !5708, !5656, !5657}
!5708 = !DILocation(line: 186, column: 3, scope: !5698)
!5709 = !DILocation(line: 189, column: 2, scope: !5530)
!5710 = !DILocation(line: 189, column: 2, scope: !5711)
!5711 = distinct !DILexicalBlock(scope: !5530, file: !3, line: 189, column: 2)
!5712 = !DILocation(line: 189, column: 2, scope: !5713)
!5713 = distinct !DILexicalBlock(scope: !5711, file: !3, line: 189, column: 2)
!5714 = !DILocation(line: 189, column: 2, scope: !5715)
!5715 = distinct !DILexicalBlock(scope: !5711, file: !3, line: 189, column: 2)
!5716 = !DILocation(line: 191, column: 1, scope: !5530)
!5717 = !DILocation(line: 192, column: 2, scope: !5530)
!5718 = !DILocation(line: 193, column: 1, scope: !5530)
!5719 = !DILocation(line: 194, column: 31, scope: !5530)
!5720 = !DILocation(line: 194, column: 2, scope: !5561)
!5721 = !DILocation(line: 194, column: 2, scope: !5560)
!5722 = !DILocation(line: 194, column: 2, scope: !5563)
!5723 = !DILocation(line: 194, column: 29, scope: !5530)
!5724 = !DILocation(line: 195, column: 46, scope: !5530)
!5725 = !DILocation(line: 195, column: 31, scope: !5530)
!5726 = !DILocation(line: 196, column: 14, scope: !5530)
!5727 = !DILocation(line: 196, column: 19, scope: !5530)
!5728 = !DILocation(line: 196, column: 11, scope: !5530)
!5729 = !DILocation(line: 195, column: 2, scope: !5566)
!5730 = !DILocation(line: 195, column: 2, scope: !5565)
!5731 = !DILocation(line: 195, column: 2, scope: !5568)
!5732 = !DILocation(line: 195, column: 29, scope: !5530)
!5733 = !DILocation(line: 197, column: 1, scope: !5530)
!5734 = distinct !DISubprogram(name: "espfix_base_addr", scope: !3, file: !3, line: 75, type: !5735, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5737)
!5735 = !DISubroutineType(types: !5736)
!5736 = !{!46, !7}
!5737 = !{!5738, !5739, !5740, !5741}
!5738 = !DILocalVariable(name: "cpu", arg: 1, scope: !5734, file: !3, line: 75, type: !7)
!5739 = !DILocalVariable(name: "page", scope: !5734, file: !3, line: 77, type: !46)
!5740 = !DILocalVariable(name: "slot", scope: !5734, file: !3, line: 77, type: !46)
!5741 = !DILocalVariable(name: "addr", scope: !5734, file: !3, line: 78, type: !46)
!5742 = !DILocation(line: 75, column: 59, scope: !5734)
!5743 = !DILocation(line: 77, column: 2, scope: !5734)
!5744 = !DILocation(line: 77, column: 16, scope: !5734)
!5745 = !DILocation(line: 77, column: 22, scope: !5734)
!5746 = !DILocation(line: 78, column: 2, scope: !5734)
!5747 = !DILocation(line: 78, column: 16, scope: !5734)
!5748 = !DILocation(line: 80, column: 10, scope: !5734)
!5749 = !DILocation(line: 80, column: 14, scope: !5734)
!5750 = !DILocation(line: 80, column: 42, scope: !5734)
!5751 = !DILocation(line: 80, column: 40, scope: !5734)
!5752 = !DILocation(line: 80, column: 7, scope: !5734)
!5753 = !DILocation(line: 81, column: 10, scope: !5734)
!5754 = !DILocation(line: 81, column: 16, scope: !5734)
!5755 = !DILocation(line: 81, column: 14, scope: !5734)
!5756 = !DILocation(line: 81, column: 9, scope: !5734)
!5757 = !DILocation(line: 81, column: 29, scope: !5734)
!5758 = !DILocation(line: 81, column: 7, scope: !5734)
!5759 = !DILocation(line: 82, column: 10, scope: !5734)
!5760 = !DILocation(line: 82, column: 15, scope: !5734)
!5761 = !DILocation(line: 82, column: 33, scope: !5734)
!5762 = !DILocation(line: 82, column: 38, scope: !5734)
!5763 = !DILocation(line: 82, column: 30, scope: !5734)
!5764 = !DILocation(line: 82, column: 7, scope: !5734)
!5765 = !DILocation(line: 83, column: 10, scope: !5734)
!5766 = !DILocation(line: 83, column: 15, scope: !5734)
!5767 = !DILocation(line: 83, column: 31, scope: !5734)
!5768 = !DILocation(line: 83, column: 36, scope: !5734)
!5769 = !DILocation(line: 83, column: 49, scope: !5734)
!5770 = !DILocation(line: 83, column: 27, scope: !5734)
!5771 = !DILocation(line: 83, column: 7, scope: !5734)
!5772 = !DILocation(line: 84, column: 7, scope: !5734)
!5773 = !DILocation(line: 85, column: 9, scope: !5734)
!5774 = !DILocation(line: 86, column: 1, scope: !5734)
!5775 = !DILocation(line: 85, column: 2, scope: !5734)
!5776 = !DISubprogram(name: "mutex_lock", scope: !615, file: !615, line: 227, type: !5777, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5777 = !DISubroutineType(types: !5778)
!5778 = !{null, !5779}
!5779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!5780 = distinct !DISubprogram(name: "cpu_to_node", scope: !5781, file: !5781, line: 94, type: !3944, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5782)
!5781 = !DIFile(filename: "./include/linux/topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cc15680d35900f366282ea60d185adfa")
!5782 = !{!5783, !5784, !5787}
!5783 = !DILocalVariable(name: "cpu", arg: 1, scope: !5780, file: !5781, line: 94, type: !29)
!5784 = !DILocalVariable(name: "__vpp_verify", scope: !5785, file: !5781, line: 96, type: !1127)
!5785 = distinct !DILexicalBlock(scope: !5786, file: !5781, line: 96, column: 9)
!5786 = distinct !DILexicalBlock(scope: !5780, file: !5781, line: 96, column: 9)
!5787 = !DILocalVariable(name: "__ptr", scope: !5788, file: !5781, line: 96, type: !46)
!5788 = distinct !DILexicalBlock(scope: !5786, file: !5781, line: 96, column: 9)
!5789 = !DILocation(line: 94, column: 35, scope: !5780)
!5790 = !DILocation(line: 96, column: 9, scope: !5786)
!5791 = !DILocation(line: 96, column: 9, scope: !5785)
!5792 = !DILocation(line: 96, column: 9, scope: !5788)
!5793 = !DILocation(line: 96, column: 9, scope: !5780)
!5794 = !DILocation(line: 96, column: 2, scope: !5780)
!5795 = distinct !DISubprogram(name: "pud_index", scope: !5796, file: !5796, line: 79, type: !5797, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5799)
!5796 = !DIFile(filename: "./include/linux/pgtable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "42556a9f65ab908dd6bd67424d19f5be")
!5797 = !DISubroutineType(types: !5798)
!5798 = !{!46, !46}
!5799 = !{!5800}
!5800 = !DILocalVariable(name: "address", arg: 1, scope: !5795, file: !5796, line: 79, type: !46)
!5801 = !DILocation(line: 79, column: 53, scope: !5795)
!5802 = !DILocation(line: 81, column: 10, scope: !5795)
!5803 = !DILocation(line: 81, column: 18, scope: !5795)
!5804 = !DILocation(line: 81, column: 32, scope: !5795)
!5805 = !DILocation(line: 81, column: 2, scope: !5795)
!5806 = distinct !DISubprogram(name: "pud_present", scope: !5807, file: !5807, line: 1056, type: !5808, scopeLine: 1057, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5810)
!5807 = !DIFile(filename: "./arch/x86/include/asm/pgtable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "40a9f4cb2b1b2fff495e3ab16a522abc")
!5808 = !DISubroutineType(types: !5809)
!5809 = !{!29, !3859}
!5810 = !{!5811}
!5811 = !DILocalVariable(name: "pud", arg: 1, scope: !5806, file: !5807, line: 1056, type: !3859)
!5812 = !DILocation(line: 1056, column: 37, scope: !5806)
!5813 = !DILocation(line: 1058, column: 9, scope: !5806)
!5814 = !DILocation(line: 1058, column: 24, scope: !5806)
!5815 = !DILocation(line: 1058, column: 2, scope: !5806)
!5816 = distinct !DISubprogram(name: "alloc_pages_node", scope: !5444, file: !5444, line: 254, type: !5817, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5819)
!5817 = !DISubroutineType(types: !5818)
!5818 = !{!243, !29, !204, !7}
!5819 = !{!5820, !5821, !5822}
!5820 = !DILocalVariable(name: "nid", arg: 1, scope: !5816, file: !5444, line: 254, type: !29)
!5821 = !DILocalVariable(name: "gfp_mask", arg: 2, scope: !5816, file: !5444, line: 254, type: !204)
!5822 = !DILocalVariable(name: "order", arg: 3, scope: !5816, file: !5444, line: 255, type: !7)
!5823 = !DILocation(line: 254, column: 49, scope: !5816)
!5824 = !DILocation(line: 254, column: 60, scope: !5816)
!5825 = !DILocation(line: 255, column: 20, scope: !5816)
!5826 = !DILocation(line: 257, column: 6, scope: !5827)
!5827 = distinct !DILexicalBlock(scope: !5816, file: !5444, line: 257, column: 6)
!5828 = !DILocation(line: 257, column: 10, scope: !5827)
!5829 = !DILocation(line: 257, column: 6, scope: !5816)
!5830 = !DILocation(line: 258, column: 9, scope: !5827)
!5831 = !DILocation(line: 258, column: 7, scope: !5827)
!5832 = !DILocation(line: 258, column: 3, scope: !5827)
!5833 = !DILocation(line: 260, column: 28, scope: !5816)
!5834 = !DILocation(line: 260, column: 33, scope: !5816)
!5835 = !DILocation(line: 260, column: 43, scope: !5816)
!5836 = !DILocation(line: 260, column: 9, scope: !5816)
!5837 = !DILocation(line: 260, column: 2, scope: !5816)
!5838 = distinct !DISubprogram(name: "lowmem_page_address", scope: !3820, file: !3820, line: 2176, type: !5839, scopeLine: 2177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5843)
!5839 = !DISubroutineType(types: !5840)
!5840 = !{!27, !5841}
!5841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5842, size: 64)
!5842 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!5843 = !{!5844}
!5844 = !DILocalVariable(name: "page", arg: 1, scope: !5838, file: !3820, line: 2176, type: !5841)
!5845 = !DILocation(line: 2176, column: 69, scope: !5838)
!5846 = !DILocation(line: 2178, column: 9, scope: !5838)
!5847 = !DILocation(line: 2178, column: 2, scope: !5838)
!5848 = distinct !DISubprogram(name: "native_make_pud", scope: !221, file: !221, line: 374, type: !5849, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5851)
!5849 = !DISubroutineType(types: !5850)
!5850 = !{!3859, !211}
!5851 = !{!5852}
!5852 = !DILocalVariable(name: "val", arg: 1, scope: !5848, file: !221, line: 374, type: !211)
!5853 = !DILocation(line: 374, column: 46, scope: !5848)
!5854 = !DILocation(line: 376, column: 17, scope: !5848)
!5855 = !DILocation(line: 376, column: 19, scope: !5848)
!5856 = !DILocation(line: 376, column: 2, scope: !5848)
!5857 = distinct !DISubprogram(name: "__phys_addr_nodebug", scope: !5858, file: !5858, line: 22, type: !5797, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5859)
!5858 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e8642b887a42f979954681cc5f73dc7c")
!5859 = !{!5860, !5861}
!5860 = !DILocalVariable(name: "x", arg: 1, scope: !5857, file: !5858, line: 22, type: !46)
!5861 = !DILocalVariable(name: "y", scope: !5857, file: !5858, line: 24, type: !46)
!5862 = !DILocation(line: 22, column: 72, scope: !5857)
!5863 = !DILocation(line: 24, column: 2, scope: !5857)
!5864 = !DILocation(line: 24, column: 16, scope: !5857)
!5865 = !DILocation(line: 24, column: 20, scope: !5857)
!5866 = !DILocation(line: 24, column: 22, scope: !5857)
!5867 = !DILocation(line: 27, column: 6, scope: !5857)
!5868 = !DILocation(line: 27, column: 12, scope: !5857)
!5869 = !DILocation(line: 27, column: 16, scope: !5857)
!5870 = !DILocation(line: 27, column: 14, scope: !5857)
!5871 = !DILocation(line: 27, column: 11, scope: !5857)
!5872 = !DILocation(line: 27, column: 21, scope: !5857)
!5873 = !DILocation(line: 27, column: 55, scope: !5857)
!5874 = !DILocation(line: 27, column: 53, scope: !5857)
!5875 = !DILocation(line: 27, column: 8, scope: !5857)
!5876 = !DILocation(line: 27, column: 4, scope: !5857)
!5877 = !DILocation(line: 29, column: 9, scope: !5857)
!5878 = !DILocation(line: 30, column: 1, scope: !5857)
!5879 = !DILocation(line: 29, column: 2, scope: !5857)
!5880 = distinct !DISubprogram(name: "paravirt_alloc_pmd", scope: !5499, file: !5499, line: 21, type: !5881, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5883)
!5881 = !DISubroutineType(types: !5882)
!5882 = !{null, !1001, !46}
!5883 = !{!5884, !5885}
!5884 = !DILocalVariable(name: "mm", arg: 1, scope: !5880, file: !5499, line: 21, type: !1001)
!5885 = !DILocalVariable(name: "pfn", arg: 2, scope: !5880, file: !5499, line: 21, type: !46)
!5886 = !DILocation(line: 21, column: 57, scope: !5880)
!5887 = !DILocation(line: 21, column: 75, scope: !5880)
!5888 = !DILocation(line: 21, column: 81, scope: !5880)
!5889 = distinct !DISubprogram(name: "native_set_pud", scope: !5890, file: !5890, line: 117, type: !5891, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5893)
!5890 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2362587396c42a8ad932bab8fed5cb38")
!5891 = !DISubroutineType(types: !5892)
!5892 = !{null, !3858, !3859}
!5893 = !{!5894, !5895}
!5894 = !DILocalVariable(name: "pudp", arg: 1, scope: !5889, file: !5890, line: 117, type: !3858)
!5895 = !DILocalVariable(name: "pud", arg: 2, scope: !5889, file: !5890, line: 117, type: !3859)
!5896 = !DILocation(line: 117, column: 42, scope: !5889)
!5897 = !DILocation(line: 117, column: 54, scope: !5889)
!5898 = !DILocation(line: 119, column: 2, scope: !5889)
!5899 = !DILocation(line: 119, column: 2, scope: !5900)
!5900 = distinct !DILexicalBlock(scope: !5889, file: !5890, line: 119, column: 2)
!5901 = !DILocation(line: 119, column: 2, scope: !5902)
!5902 = distinct !DILexicalBlock(scope: !5900, file: !5890, line: 119, column: 2)
!5903 = !DILocation(line: 119, column: 2, scope: !5904)
!5904 = distinct !DILexicalBlock(scope: !5900, file: !5890, line: 119, column: 2)
!5905 = !DILocation(line: 120, column: 1, scope: !5889)
!5906 = distinct !DISubprogram(name: "pmd_offset", scope: !5796, file: !5796, line: 121, type: !5907, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5909)
!5907 = !DISubroutineType(types: !5908)
!5908 = !{!205, !3858, !46}
!5909 = !{!5910, !5911}
!5910 = !DILocalVariable(name: "pud", arg: 1, scope: !5906, file: !5796, line: 121, type: !3858)
!5911 = !DILocalVariable(name: "address", arg: 2, scope: !5906, file: !5796, line: 121, type: !46)
!5912 = !DILocation(line: 121, column: 40, scope: !5906)
!5913 = !DILocation(line: 121, column: 59, scope: !5906)
!5914 = !DILocation(line: 123, column: 22, scope: !5906)
!5915 = !DILocation(line: 123, column: 9, scope: !5906)
!5916 = !DILocation(line: 123, column: 39, scope: !5906)
!5917 = !DILocation(line: 123, column: 29, scope: !5906)
!5918 = !DILocation(line: 123, column: 27, scope: !5906)
!5919 = !DILocation(line: 123, column: 2, scope: !5906)
!5920 = distinct !DISubprogram(name: "pmd_present", scope: !5807, file: !5807, line: 975, type: !5921, scopeLine: 976, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5923)
!5921 = !DISubroutineType(types: !5922)
!5922 = !{!29, !206}
!5923 = !{!5924}
!5924 = !DILocalVariable(name: "pmd", arg: 1, scope: !5920, file: !5807, line: 975, type: !206)
!5925 = !DILocation(line: 975, column: 37, scope: !5920)
!5926 = !DILocation(line: 983, column: 9, scope: !5920)
!5927 = !DILocation(line: 983, column: 24, scope: !5920)
!5928 = !DILocation(line: 983, column: 2, scope: !5920)
!5929 = distinct !DISubprogram(name: "native_make_pmd", scope: !221, file: !221, line: 398, type: !5930, scopeLine: 399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5932)
!5930 = !DISubroutineType(types: !5931)
!5931 = !{!206, !211}
!5932 = !{!5933}
!5933 = !DILocalVariable(name: "val", arg: 1, scope: !5929, file: !221, line: 398, type: !211)
!5934 = !DILocation(line: 398, column: 46, scope: !5929)
!5935 = !DILocation(line: 400, column: 17, scope: !5929)
!5936 = !DILocation(line: 400, column: 26, scope: !5929)
!5937 = !DILocation(line: 400, column: 2, scope: !5929)
!5938 = distinct !DISubprogram(name: "paravirt_alloc_pte", scope: !5499, file: !5499, line: 20, type: !5881, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5939)
!5939 = !{!5940, !5941}
!5940 = !DILocalVariable(name: "mm", arg: 1, scope: !5938, file: !5499, line: 20, type: !1001)
!5941 = !DILocalVariable(name: "pfn", arg: 2, scope: !5938, file: !5499, line: 20, type: !46)
!5942 = !DILocation(line: 20, column: 57, scope: !5938)
!5943 = !DILocation(line: 20, column: 75, scope: !5938)
!5944 = !DILocation(line: 20, column: 81, scope: !5938)
!5945 = distinct !DISubprogram(name: "native_set_pmd", scope: !5890, file: !5890, line: 81, type: !5946, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5948)
!5946 = !DISubroutineType(types: !5947)
!5947 = !{null, !205, !206}
!5948 = !{!5949, !5950}
!5949 = !DILocalVariable(name: "pmdp", arg: 1, scope: !5945, file: !5890, line: 81, type: !205)
!5950 = !DILocalVariable(name: "pmd", arg: 2, scope: !5945, file: !5890, line: 81, type: !206)
!5951 = !DILocation(line: 81, column: 42, scope: !5945)
!5952 = !DILocation(line: 81, column: 54, scope: !5945)
!5953 = !DILocation(line: 83, column: 2, scope: !5945)
!5954 = !DILocation(line: 83, column: 2, scope: !5955)
!5955 = distinct !DILexicalBlock(scope: !5945, file: !5890, line: 83, column: 2)
!5956 = !DILocation(line: 83, column: 2, scope: !5957)
!5957 = distinct !DILexicalBlock(scope: !5955, file: !5890, line: 83, column: 2)
!5958 = !DILocation(line: 83, column: 2, scope: !5959)
!5959 = distinct !DILexicalBlock(scope: !5955, file: !5890, line: 83, column: 2)
!5960 = !DILocation(line: 84, column: 1, scope: !5945)
!5961 = distinct !DISubprogram(name: "pte_offset_kernel", scope: !5796, file: !5796, line: 92, type: !5962, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5964)
!5962 = !DISubroutineType(types: !5963)
!5963 = !{!213, !205, !46}
!5964 = !{!5965, !5966}
!5965 = !DILocalVariable(name: "pmd", arg: 1, scope: !5961, file: !5796, line: 92, type: !205)
!5966 = !DILocalVariable(name: "address", arg: 2, scope: !5961, file: !5796, line: 92, type: !46)
!5967 = !DILocation(line: 92, column: 47, scope: !5961)
!5968 = !DILocation(line: 92, column: 66, scope: !5961)
!5969 = !DILocation(line: 94, column: 34, scope: !5961)
!5970 = !DILocation(line: 94, column: 18, scope: !5961)
!5971 = !DILocation(line: 94, column: 9, scope: !5961)
!5972 = !DILocation(line: 94, column: 51, scope: !5961)
!5973 = !DILocation(line: 94, column: 41, scope: !5961)
!5974 = !DILocation(line: 94, column: 39, scope: !5961)
!5975 = !DILocation(line: 94, column: 2, scope: !5961)
!5976 = distinct !DISubprogram(name: "native_make_pte", scope: !221, file: !221, line: 473, type: !5977, scopeLine: 474, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5979)
!5977 = !DISubroutineType(types: !5978)
!5978 = !{!214, !212}
!5979 = !{!5980}
!5980 = !DILocalVariable(name: "val", arg: 1, scope: !5976, file: !221, line: 473, type: !212)
!5981 = !DILocation(line: 473, column: 46, scope: !5976)
!5982 = !DILocation(line: 475, column: 17, scope: !5976)
!5983 = !DILocation(line: 475, column: 26, scope: !5976)
!5984 = !DILocation(line: 475, column: 2, scope: !5976)
!5985 = distinct !DISubprogram(name: "native_set_pte", scope: !5890, file: !5890, line: 65, type: !5986, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5988)
!5986 = !DISubroutineType(types: !5987)
!5987 = !{null, !213, !214}
!5988 = !{!5989, !5990}
!5989 = !DILocalVariable(name: "ptep", arg: 1, scope: !5985, file: !5890, line: 65, type: !213)
!5990 = !DILocalVariable(name: "pte", arg: 2, scope: !5985, file: !5890, line: 65, type: !214)
!5991 = !DILocation(line: 65, column: 42, scope: !5985)
!5992 = !DILocation(line: 65, column: 54, scope: !5985)
!5993 = !DILocation(line: 67, column: 2, scope: !5985)
!5994 = !DILocation(line: 67, column: 2, scope: !5995)
!5995 = distinct !DILexicalBlock(scope: !5985, file: !5890, line: 67, column: 2)
!5996 = !DILocation(line: 67, column: 2, scope: !5997)
!5997 = distinct !DILexicalBlock(scope: !5995, file: !5890, line: 67, column: 2)
!5998 = !DILocation(line: 67, column: 2, scope: !5999)
!5999 = distinct !DILexicalBlock(scope: !5995, file: !5890, line: 67, column: 2)
!6000 = !DILocation(line: 68, column: 1, scope: !5985)
!6001 = !DISubprogram(name: "mutex_unlock", scope: !615, file: !615, line: 246, type: !5777, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6002 = distinct !DISubprogram(name: "pgd_none", scope: !5807, file: !5807, line: 1169, type: !6003, scopeLine: 1170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6005)
!6003 = !DISubroutineType(types: !6004)
!6004 = !{!29, !234}
!6005 = !{!6006}
!6006 = !DILocalVariable(name: "pgd", arg: 1, scope: !6002, file: !5807, line: 1169, type: !234)
!6007 = !DILocation(line: 1169, column: 34, scope: !6002)
!6008 = !DILocation(line: 1171, column: 6, scope: !6002)
!6009 = !DILocation(line: 1171, column: 7, scope: !6010)
!6010 = distinct !DILexicalBlock(scope: !6002, file: !5807, line: 1171, column: 6)
!6011 = !DILocation(line: 1172, column: 3, scope: !6010)
!6012 = !DILocation(line: 1179, column: 10, scope: !6002)
!6013 = !DILocation(line: 1179, column: 9, scope: !6002)
!6014 = !DILocation(line: 1179, column: 2, scope: !6002)
!6015 = !DILocation(line: 1180, column: 1, scope: !6002)
!6016 = !DISubprogram(name: "__p4d_alloc", scope: !3820, file: !3820, line: 2681, type: !6017, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6017 = !DISubroutineType(types: !6018)
!6018 = !{!29, !1001, !233, !46}
!6019 = distinct !DISubprogram(name: "p4d_offset", scope: !5807, file: !5807, line: 1149, type: !6020, scopeLine: 1150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6022)
!6020 = !DISubroutineType(types: !6021)
!6021 = !{!219, !233, !46}
!6022 = !{!6023, !6024}
!6023 = !DILocalVariable(name: "pgd", arg: 1, scope: !6019, file: !5807, line: 1149, type: !233)
!6024 = !DILocalVariable(name: "address", arg: 2, scope: !6019, file: !5807, line: 1149, type: !46)
!6025 = !DILocation(line: 1149, column: 40, scope: !6019)
!6026 = !DILocation(line: 1149, column: 59, scope: !6019)
!6027 = !DILocation(line: 1151, column: 6, scope: !6019)
!6028 = !DILocation(line: 1151, column: 7, scope: !6029)
!6029 = distinct !DILexicalBlock(scope: !6019, file: !5807, line: 1151, column: 6)
!6030 = !DILocation(line: 1152, column: 19, scope: !6029)
!6031 = !DILocation(line: 1152, column: 3, scope: !6029)
!6032 = !DILocation(line: 1153, column: 34, scope: !6019)
!6033 = !DILocation(line: 1153, column: 18, scope: !6019)
!6034 = !DILocation(line: 1153, column: 9, scope: !6019)
!6035 = !DILocation(line: 1153, column: 51, scope: !6019)
!6036 = !DILocation(line: 1153, column: 41, scope: !6019)
!6037 = !DILocation(line: 1153, column: 39, scope: !6019)
!6038 = !DILocation(line: 1153, column: 2, scope: !6019)
!6039 = !DILocation(line: 1154, column: 1, scope: !6019)
!6040 = distinct !DISubprogram(name: "arch_test_bit", scope: !6041, file: !6041, line: 237, type: !6042, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6047)
!6041 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6042 = !DISubroutineType(types: !6043)
!6043 = !{!1198, !46, !6044}
!6044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6045, size: 64)
!6045 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6046)
!6046 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !46)
!6047 = !{!6048, !6049}
!6048 = !DILocalVariable(name: "nr", arg: 1, scope: !6040, file: !6041, line: 237, type: !46)
!6049 = !DILocalVariable(name: "addr", arg: 2, scope: !6040, file: !6041, line: 237, type: !6044)
!6050 = !DILocation(line: 237, column: 29, scope: !6040)
!6051 = !DILocation(line: 237, column: 63, scope: !6040)
!6052 = !DILocation(line: 239, column: 30, scope: !6040)
!6053 = !DILocation(line: 239, column: 9, scope: !6040)
!6054 = !DILocation(line: 239, column: 54, scope: !6040)
!6055 = !DILocation(line: 239, column: 58, scope: !6040)
!6056 = !DILocation(line: 239, column: 36, scope: !6040)
!6057 = !DILocation(line: 240, column: 26, scope: !6040)
!6058 = !DILocation(line: 240, column: 30, scope: !6040)
!6059 = !DILocation(line: 240, column: 8, scope: !6040)
!6060 = !DILocation(line: 239, column: 2, scope: !6040)
!6061 = distinct !DISubprogram(name: "_static_cpu_has", scope: !6062, file: !6062, line: 173, type: !6063, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6065)
!6062 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!6063 = !DISubroutineType(types: !6064)
!6064 = !{!1198, !100}
!6065 = !{!6066, !6067, !6068}
!6066 = !DILocalVariable(name: "bit", arg: 1, scope: !6061, file: !6062, line: 173, type: !100)
!6067 = !DILabel(scope: !6061, name: "t_yes", file: !6062, line: 187)
!6068 = !DILabel(scope: !6061, name: "t_no", file: !6062, line: 189)
!6069 = !DILocation(line: 173, column: 49, scope: !6061)
!6070 = !DILocation(line: 183, column: 24, scope: !6061)
!6071 = !DILocation(line: 184, column: 30, scope: !6061)
!6072 = !DILocation(line: 184, column: 34, scope: !6061)
!6073 = !DILocation(line: 184, column: 26, scope: !6061)
!6074 = !DILocation(line: 185, column: 70, scope: !6061)
!6075 = !DILocation(line: 185, column: 74, scope: !6061)
!6076 = !DILocation(line: 185, column: 25, scope: !6061)
!6077 = !DILocation(line: 175, column: 2, scope: !6061)
!6078 = !{i64 2149462051, i64 2149462084, i64 2149462090, i64 2149462106, i64 2149462125, i64 2149462156, i64 2149463109, i64 2149461698, i64 2149463115, i64 2149463163, i64 2149463227, i64 2149463291, i64 2149463348, i64 2149463555, i64 2149463603, i64 2149463667, i64 2149463731, i64 2149463788, i64 2149461816, i64 2149461841, i64 2149463998, i64 2149464126, i64 2149464059, i64 2149464140, i64 2149464154, i64 2149464270, i64 2149464215, i64 2149464284, i64 2149461975, i64 1588796, i64 1588836, i64 1588845, i64 1588895, i64 1588916, i64 1588936}
!6079 = !DILocation(line: 187, column: 1, scope: !6061)
!6080 = !DILocation(line: 188, column: 2, scope: !6061)
!6081 = !DILocation(line: 189, column: 1, scope: !6061)
!6082 = !DILocation(line: 190, column: 2, scope: !6061)
!6083 = !DILocation(line: 191, column: 1, scope: !6061)
!6084 = distinct !DISubprogram(name: "native_pgd_val", scope: !221, file: !221, line: 335, type: !6085, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6087)
!6085 = !DISubroutineType(types: !6086)
!6086 = !{!238, !234}
!6087 = !{!6088}
!6088 = !DILocalVariable(name: "pgd", arg: 1, scope: !6084, file: !221, line: 335, type: !234)
!6089 = !DILocation(line: 335, column: 45, scope: !6084)
!6090 = !DILocation(line: 337, column: 13, scope: !6084)
!6091 = !DILocation(line: 337, column: 17, scope: !6084)
!6092 = !DILocation(line: 337, column: 2, scope: !6084)
!6093 = distinct !DISubprogram(name: "constant_test_bit", scope: !6041, file: !6041, line: 204, type: !6094, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6096)
!6094 = !DISubroutineType(types: !6095)
!6095 = !{!1198, !226, !6044}
!6096 = !{!6097, !6098}
!6097 = !DILocalVariable(name: "nr", arg: 1, scope: !6093, file: !6041, line: 204, type: !226)
!6098 = !DILocalVariable(name: "addr", arg: 2, scope: !6093, file: !6041, line: 204, type: !6044)
!6099 = !DILocation(line: 204, column: 52, scope: !6093)
!6100 = !DILocation(line: 204, column: 86, scope: !6093)
!6101 = !DILocation(line: 206, column: 19, scope: !6093)
!6102 = !DILocation(line: 206, column: 22, scope: !6093)
!6103 = !DILocation(line: 206, column: 15, scope: !6093)
!6104 = !DILocation(line: 207, column: 4, scope: !6093)
!6105 = !DILocation(line: 207, column: 9, scope: !6093)
!6106 = !DILocation(line: 207, column: 12, scope: !6093)
!6107 = !DILocation(line: 206, column: 44, scope: !6093)
!6108 = !DILocation(line: 207, column: 37, scope: !6093)
!6109 = !DILocation(line: 206, column: 2, scope: !6093)
!6110 = distinct !DISubprogram(name: "variable_test_bit", scope: !6041, file: !6041, line: 224, type: !6094, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6111)
!6111 = !{!6112, !6113, !6114}
!6112 = !DILocalVariable(name: "nr", arg: 1, scope: !6110, file: !6041, line: 224, type: !226)
!6113 = !DILocalVariable(name: "addr", arg: 2, scope: !6110, file: !6041, line: 224, type: !6044)
!6114 = !DILocalVariable(name: "oldbit", scope: !6110, file: !6041, line: 226, type: !1198)
!6115 = !DILocation(line: 224, column: 52, scope: !6110)
!6116 = !DILocation(line: 224, column: 86, scope: !6110)
!6117 = !DILocation(line: 226, column: 2, scope: !6110)
!6118 = !DILocation(line: 226, column: 7, scope: !6110)
!6119 = !DILocation(line: 231, column: 33, scope: !6110)
!6120 = !DILocation(line: 231, column: 46, scope: !6110)
!6121 = !DILocation(line: 228, column: 2, scope: !6110)
!6122 = !{i64 2148611291, i64 2148611365}
!6123 = !DILocation(line: 233, column: 9, scope: !6110)
!6124 = !{i8 0, i8 2}
!6125 = !DILocation(line: 234, column: 1, scope: !6110)
!6126 = !DILocation(line: 233, column: 2, scope: !6110)
!6127 = distinct !DISubprogram(name: "pgd_page_vaddr", scope: !5807, file: !5807, line: 1137, type: !6128, scopeLine: 1138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6130)
!6128 = !DISubroutineType(types: !6129)
!6129 = !{!46, !234}
!6130 = !{!6131}
!6131 = !DILocalVariable(name: "pgd", arg: 1, scope: !6127, file: !5807, line: 1137, type: !234)
!6132 = !DILocation(line: 1137, column: 50, scope: !6127)
!6133 = !DILocation(line: 1139, column: 24, scope: !6127)
!6134 = !DILocation(line: 1139, column: 9, scope: !6127)
!6135 = !DILocation(line: 1139, column: 2, scope: !6127)
!6136 = distinct !DISubprogram(name: "p4d_index", scope: !5807, file: !5807, line: 1124, type: !5797, scopeLine: 1125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6137)
!6137 = !{!6138}
!6138 = !DILocalVariable(name: "address", arg: 1, scope: !6136, file: !5807, line: 1124, type: !46)
!6139 = !DILocation(line: 1124, column: 53, scope: !6136)
!6140 = !DILocation(line: 1126, column: 10, scope: !6136)
!6141 = !DILocation(line: 1126, column: 18, scope: !6136)
!6142 = !DILocation(line: 1126, column: 35, scope: !6136)
!6143 = !DILocation(line: 1126, column: 48, scope: !6136)
!6144 = !DILocation(line: 1126, column: 34, scope: !6136)
!6145 = !DILocation(line: 1126, column: 32, scope: !6136)
!6146 = !DILocation(line: 1126, column: 2, scope: !6136)
!6147 = distinct !DISubprogram(name: "paravirt_alloc_pud", scope: !5499, file: !5499, line: 24, type: !5881, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6148)
!6148 = !{!6149, !6150}
!6149 = !DILocalVariable(name: "mm", arg: 1, scope: !6147, file: !5499, line: 24, type: !1001)
!6150 = !DILocalVariable(name: "pfn", arg: 2, scope: !6147, file: !5499, line: 24, type: !46)
!6151 = !DILocation(line: 24, column: 57, scope: !6147)
!6152 = !DILocation(line: 24, column: 75, scope: !6147)
!6153 = !DILocation(line: 24, column: 81, scope: !6147)
!6154 = distinct !DISubprogram(name: "native_set_p4d", scope: !5890, file: !5890, line: 142, type: !6155, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6157)
!6155 = !DISubroutineType(types: !6156)
!6156 = !{null, !219, !220}
!6157 = !{!6158, !6159, !6160}
!6158 = !DILocalVariable(name: "p4dp", arg: 1, scope: !6154, file: !5890, line: 142, type: !219)
!6159 = !DILocalVariable(name: "p4d", arg: 2, scope: !6154, file: !5890, line: 142, type: !220)
!6160 = !DILocalVariable(name: "pgd", scope: !6154, file: !5890, line: 144, type: !234)
!6161 = !DILocation(line: 142, column: 42, scope: !6154)
!6162 = !DILocation(line: 142, column: 54, scope: !6154)
!6163 = !DILocation(line: 144, column: 2, scope: !6154)
!6164 = !DILocation(line: 144, column: 8, scope: !6154)
!6165 = !DILocation(line: 146, column: 6, scope: !6154)
!6166 = !DILocation(line: 146, column: 6, scope: !6167)
!6167 = distinct !DILexicalBlock(scope: !6154, file: !5890, line: 146, column: 6)
!6168 = !DILocation(line: 147, column: 3, scope: !6169)
!6169 = distinct !DILexicalBlock(scope: !6167, file: !5890, line: 146, column: 72)
!6170 = !DILocation(line: 147, column: 3, scope: !6171)
!6171 = distinct !DILexicalBlock(scope: !6169, file: !5890, line: 147, column: 3)
!6172 = !DILocation(line: 147, column: 3, scope: !6173)
!6173 = distinct !DILexicalBlock(scope: !6171, file: !5890, line: 147, column: 3)
!6174 = !DILocation(line: 147, column: 3, scope: !6175)
!6175 = distinct !DILexicalBlock(scope: !6171, file: !5890, line: 147, column: 3)
!6176 = !DILocation(line: 148, column: 3, scope: !6169)
!6177 = !DILocation(line: 151, column: 8, scope: !6154)
!6178 = !DILocation(line: 151, column: 24, scope: !6154)
!6179 = !DILocation(line: 152, column: 8, scope: !6154)
!6180 = !DILocation(line: 152, column: 36, scope: !6154)
!6181 = !DILocation(line: 153, column: 2, scope: !6154)
!6182 = !DILocation(line: 153, column: 2, scope: !6183)
!6183 = distinct !DILexicalBlock(scope: !6154, file: !5890, line: 153, column: 2)
!6184 = !DILocation(line: 153, column: 2, scope: !6185)
!6185 = distinct !DILexicalBlock(scope: !6183, file: !5890, line: 153, column: 2)
!6186 = !DILocation(line: 153, column: 2, scope: !6187)
!6187 = distinct !DILexicalBlock(scope: !6183, file: !5890, line: 153, column: 2)
!6188 = !DILocation(line: 154, column: 1, scope: !6154)
!6189 = distinct !DISubprogram(name: "native_make_p4d", scope: !221, file: !221, line: 348, type: !6190, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6192)
!6190 = !DISubroutineType(types: !6191)
!6191 = !{!220, !3863}
!6192 = !{!6193}
!6193 = !DILocalVariable(name: "val", arg: 1, scope: !6189, file: !221, line: 348, type: !3863)
!6194 = !DILocation(line: 348, column: 46, scope: !6189)
!6195 = !DILocation(line: 350, column: 17, scope: !6189)
!6196 = !DILocation(line: 350, column: 19, scope: !6189)
!6197 = !DILocation(line: 350, column: 2, scope: !6189)
!6198 = distinct !DISubprogram(name: "native_make_pgd", scope: !221, file: !221, line: 330, type: !6199, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6201)
!6199 = !DISubroutineType(types: !6200)
!6200 = !{!234, !238}
!6201 = !{!6202}
!6202 = !DILocalVariable(name: "val", arg: 1, scope: !6198, file: !221, line: 330, type: !238)
!6203 = !DILocation(line: 330, column: 46, scope: !6198)
!6204 = !DILocation(line: 332, column: 17, scope: !6198)
!6205 = !DILocation(line: 332, column: 19, scope: !6198)
!6206 = !DILocation(line: 332, column: 23, scope: !6198)
!6207 = !DILocation(line: 332, column: 2, scope: !6198)
!6208 = distinct !DISubprogram(name: "native_p4d_val", scope: !221, file: !221, line: 353, type: !6209, scopeLine: 354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6211)
!6209 = !DISubroutineType(types: !6210)
!6210 = !{!225, !220}
!6211 = !{!6212}
!6212 = !DILocalVariable(name: "p4d", arg: 1, scope: !6208, file: !221, line: 353, type: !220)
!6213 = !DILocation(line: 353, column: 45, scope: !6208)
!6214 = !DILocation(line: 355, column: 13, scope: !6208)
!6215 = !DILocation(line: 355, column: 2, scope: !6208)
!6216 = distinct !DISubprogram(name: "pti_set_user_pgtbl", scope: !5807, file: !5807, line: 903, type: !6217, scopeLine: 904, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6219)
!6217 = !DISubroutineType(types: !6218)
!6218 = !{!234, !233, !234}
!6219 = !{!6220, !6221}
!6220 = !DILocalVariable(name: "pgdp", arg: 1, scope: !6216, file: !5807, line: 903, type: !233)
!6221 = !DILocalVariable(name: "pgd", arg: 2, scope: !6216, file: !5807, line: 903, type: !234)
!6222 = !DILocation(line: 903, column: 47, scope: !6216)
!6223 = !DILocation(line: 903, column: 59, scope: !6216)
!6224 = !DILocation(line: 905, column: 6, scope: !6216)
!6225 = !DILocation(line: 905, column: 7, scope: !6226)
!6226 = distinct !DILexicalBlock(scope: !6216, file: !5807, line: 905, column: 6)
!6227 = !DILocation(line: 906, column: 10, scope: !6226)
!6228 = !DILocation(line: 906, column: 3, scope: !6226)
!6229 = !DILocation(line: 907, column: 30, scope: !6216)
!6230 = !DILocation(line: 907, column: 9, scope: !6216)
!6231 = !DILocation(line: 907, column: 2, scope: !6216)
!6232 = !DILocation(line: 908, column: 1, scope: !6216)
!6233 = !DISubprogram(name: "__pti_set_user_pgtbl", scope: !5807, file: !5807, line: 896, type: !6217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6234 = distinct !DISubprogram(name: "get_random_long", scope: !6235, file: !6235, line: 44, type: !6236, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6235 = !DIFile(filename: "./include/linux/random.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ff56c5c661379ff0da8775246644d01")
!6236 = !DISubroutineType(types: !6237)
!6237 = !{!46}
!6238 = !DILocation(line: 47, column: 9, scope: !6234)
!6239 = !DILocation(line: 47, column: 2, scope: !6234)
!6240 = !DISubprogram(name: "get_random_u64", scope: !6235, file: !6235, line: 43, type: !6241, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6241 = !DISubroutineType(types: !6242)
!6242 = !{!228}
!6243 = distinct !DISubprogram(name: "pud_flags", scope: !221, file: !221, line: 450, type: !6244, scopeLine: 451, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6246)
!6244 = !DISubroutineType(types: !6245)
!6245 = !{!3863, !3859}
!6246 = !{!6247}
!6247 = !DILocalVariable(name: "pud", arg: 1, scope: !6243, file: !221, line: 450, type: !3859)
!6248 = !DILocation(line: 450, column: 40, scope: !6243)
!6249 = !DILocation(line: 452, column: 9, scope: !6243)
!6250 = !DILocation(line: 452, column: 31, scope: !6243)
!6251 = !DILocation(line: 452, column: 29, scope: !6243)
!6252 = !DILocation(line: 452, column: 2, scope: !6243)
!6253 = distinct !DISubprogram(name: "native_pud_val", scope: !221, file: !221, line: 379, type: !6244, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6254)
!6254 = !{!6255}
!6255 = !DILocalVariable(name: "pud", arg: 1, scope: !6253, file: !221, line: 379, type: !3859)
!6256 = !DILocation(line: 379, column: 45, scope: !6253)
!6257 = !DILocation(line: 381, column: 13, scope: !6253)
!6258 = !DILocation(line: 381, column: 2, scope: !6253)
!6259 = distinct !DISubprogram(name: "pud_flags_mask", scope: !221, file: !221, line: 445, type: !6244, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6260)
!6260 = !{!6261}
!6261 = !DILocalVariable(name: "pud", arg: 1, scope: !6259, file: !221, line: 445, type: !3859)
!6262 = !DILocation(line: 445, column: 45, scope: !6259)
!6263 = !DILocation(line: 447, column: 10, scope: !6259)
!6264 = !DILocation(line: 447, column: 9, scope: !6259)
!6265 = !DILocation(line: 447, column: 2, scope: !6259)
!6266 = distinct !DISubprogram(name: "pud_pfn_mask", scope: !221, file: !221, line: 437, type: !6244, scopeLine: 438, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6267)
!6267 = !{!6268}
!6268 = !DILocalVariable(name: "pud", arg: 1, scope: !6266, file: !221, line: 437, type: !3859)
!6269 = !DILocation(line: 437, column: 43, scope: !6266)
!6270 = !DILocation(line: 439, column: 6, scope: !6271)
!6271 = distinct !DILexicalBlock(scope: !6266, file: !221, line: 439, column: 6)
!6272 = !DILocation(line: 439, column: 26, scope: !6271)
!6273 = !DILocation(line: 439, column: 6, scope: !6266)
!6274 = !DILocation(line: 440, column: 3, scope: !6271)
!6275 = !DILocation(line: 442, column: 3, scope: !6271)
!6276 = !DILocation(line: 443, column: 1, scope: !6266)
!6277 = distinct !DISubprogram(name: "numa_mem_id", scope: !5781, file: !5781, line: 168, type: !4301, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6278 = !DILocation(line: 170, column: 9, scope: !6277)
!6279 = !DILocation(line: 170, column: 2, scope: !6277)
!6280 = distinct !DISubprogram(name: "__alloc_pages_node", scope: !5444, file: !5444, line: 232, type: !5817, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6281)
!6281 = !{!6282, !6283, !6284}
!6282 = !DILocalVariable(name: "nid", arg: 1, scope: !6280, file: !5444, line: 232, type: !29)
!6283 = !DILocalVariable(name: "gfp_mask", arg: 2, scope: !6280, file: !5444, line: 232, type: !204)
!6284 = !DILocalVariable(name: "order", arg: 3, scope: !6280, file: !5444, line: 232, type: !7)
!6285 = !DILocation(line: 232, column: 24, scope: !6280)
!6286 = !DILocation(line: 232, column: 35, scope: !6280)
!6287 = !DILocation(line: 232, column: 58, scope: !6280)
!6288 = !DILocation(line: 235, column: 23, scope: !6280)
!6289 = !DILocation(line: 235, column: 28, scope: !6280)
!6290 = !DILocation(line: 235, column: 2, scope: !6280)
!6291 = !DILocation(line: 237, column: 23, scope: !6280)
!6292 = !DILocation(line: 237, column: 33, scope: !6280)
!6293 = !DILocation(line: 237, column: 40, scope: !6280)
!6294 = !DILocation(line: 237, column: 9, scope: !6280)
!6295 = !DILocation(line: 237, column: 2, scope: !6280)
!6296 = distinct !DISubprogram(name: "numa_node_id", scope: !5781, file: !5781, line: 87, type: !4301, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6297)
!6297 = !{!6298, !6300, !6302}
!6298 = !DILocalVariable(name: "pscr_ret__", scope: !6299, file: !5781, line: 89, type: !29)
!6299 = distinct !DILexicalBlock(scope: !6296, file: !5781, line: 89, column: 9)
!6300 = !DILocalVariable(name: "__vpp_verify", scope: !6301, file: !5781, line: 89, type: !1127)
!6301 = distinct !DILexicalBlock(scope: !6299, file: !5781, line: 89, column: 9)
!6302 = !DILocalVariable(name: "pfo_val__", scope: !6303, file: !5781, line: 89, type: !338)
!6303 = distinct !DILexicalBlock(scope: !6299, file: !5781, line: 89, column: 9)
!6304 = !DILocation(line: 89, column: 9, scope: !6299)
!6305 = !DILocation(line: 89, column: 9, scope: !6301)
!6306 = !DILocation(line: 89, column: 9, scope: !6303)
!6307 = !{i64 2152051519}
!6308 = !DILocation(line: 89, column: 9, scope: !6296)
!6309 = !DILocation(line: 89, column: 2, scope: !6296)
!6310 = distinct !DISubprogram(name: "warn_if_node_offline", scope: !5444, file: !5444, line: 213, type: !6311, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6313)
!6311 = !DISubroutineType(types: !6312)
!6312 = !{null, !29, !204}
!6313 = !{!6314, !6315, !6316}
!6314 = !DILocalVariable(name: "this_node", arg: 1, scope: !6310, file: !5444, line: 213, type: !29)
!6315 = !DILocalVariable(name: "gfp_mask", arg: 2, scope: !6310, file: !5444, line: 213, type: !204)
!6316 = !DILocalVariable(name: "warn_gfp", scope: !6310, file: !5444, line: 215, type: !204)
!6317 = !DILocation(line: 213, column: 45, scope: !6310)
!6318 = !DILocation(line: 213, column: 62, scope: !6310)
!6319 = !DILocation(line: 215, column: 2, scope: !6310)
!6320 = !DILocation(line: 215, column: 8, scope: !6310)
!6321 = !DILocation(line: 215, column: 19, scope: !6310)
!6322 = !DILocation(line: 215, column: 28, scope: !6310)
!6323 = !DILocation(line: 217, column: 6, scope: !6324)
!6324 = distinct !DILexicalBlock(scope: !6310, file: !5444, line: 217, column: 6)
!6325 = !DILocation(line: 217, column: 15, scope: !6324)
!6326 = !DILocation(line: 217, column: 6, scope: !6310)
!6327 = !DILocation(line: 218, column: 3, scope: !6324)
!6328 = !DILocation(line: 220, column: 6, scope: !6329)
!6329 = distinct !DILexicalBlock(scope: !6310, file: !5444, line: 220, column: 6)
!6330 = !DILocation(line: 220, column: 6, scope: !6310)
!6331 = !DILocation(line: 221, column: 3, scope: !6329)
!6332 = !DILocation(line: 223, column: 2, scope: !6333)
!6333 = distinct !DILexicalBlock(scope: !6310, file: !5444, line: 223, column: 2)
!6334 = !DILocation(line: 223, column: 2, scope: !6335)
!6335 = distinct !DILexicalBlock(scope: !6333, file: !5444, line: 223, column: 2)
!6336 = !DILocation(line: 224, column: 2, scope: !6310)
!6337 = !DILocation(line: 225, column: 1, scope: !6310)
!6338 = !DISubprogram(name: "__alloc_pages", scope: !5444, file: !5444, line: 177, type: !6339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6339 = !DISubroutineType(types: !6340)
!6340 = !{!243, !204, !7, !29, !6341}
!6341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!6342 = distinct !DISubprogram(name: "node_state", scope: !189, file: !189, line: 421, type: !6343, scopeLine: 422, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6345)
!6343 = !DISubroutineType(types: !6344)
!6344 = !{!29, !29, !188}
!6345 = !{!6346, !6347}
!6346 = !DILocalVariable(name: "node", arg: 1, scope: !6342, file: !189, line: 421, type: !29)
!6347 = !DILocalVariable(name: "state", arg: 2, scope: !6342, file: !189, line: 421, type: !188)
!6348 = !DILocation(line: 421, column: 34, scope: !6342)
!6349 = !DILocation(line: 421, column: 57, scope: !6342)
!6350 = !DILocation(line: 423, column: 9, scope: !6342)
!6351 = !DILocation(line: 423, column: 2, scope: !6342)
!6352 = !DISubprogram(name: "_printk", scope: !6353, file: !6353, line: 153, type: !6354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6353 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6354 = !DISubroutineType(types: !6355)
!6355 = !{!29, !23, null}
!6356 = !DISubprogram(name: "dump_stack", scope: !6353, file: !6353, line: 193, type: !2946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6357 = distinct !DISubprogram(name: "const_test_bit", scope: !6358, file: !6358, line: 166, type: !6042, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6359)
!6358 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!6359 = !{!6360, !6361, !6362, !6363, !6364}
!6360 = !DILocalVariable(name: "nr", arg: 1, scope: !6357, file: !6358, line: 166, type: !46)
!6361 = !DILocalVariable(name: "addr", arg: 2, scope: !6357, file: !6358, line: 166, type: !6044)
!6362 = !DILocalVariable(name: "p", scope: !6357, file: !6358, line: 168, type: !241)
!6363 = !DILocalVariable(name: "mask", scope: !6357, file: !6358, line: 169, type: !46)
!6364 = !DILocalVariable(name: "val", scope: !6357, file: !6358, line: 170, type: !46)
!6365 = !DILocation(line: 166, column: 30, scope: !6357)
!6366 = !DILocation(line: 166, column: 64, scope: !6357)
!6367 = !DILocation(line: 168, column: 2, scope: !6357)
!6368 = !DILocation(line: 168, column: 23, scope: !6357)
!6369 = !DILocation(line: 168, column: 50, scope: !6357)
!6370 = !DILocation(line: 168, column: 57, scope: !6357)
!6371 = !DILocation(line: 168, column: 55, scope: !6357)
!6372 = !DILocation(line: 169, column: 2, scope: !6357)
!6373 = !DILocation(line: 169, column: 16, scope: !6357)
!6374 = !DILocation(line: 169, column: 23, scope: !6357)
!6375 = !DILocation(line: 170, column: 2, scope: !6357)
!6376 = !DILocation(line: 170, column: 16, scope: !6357)
!6377 = !DILocation(line: 170, column: 23, scope: !6357)
!6378 = !DILocation(line: 170, column: 22, scope: !6357)
!6379 = !DILocation(line: 172, column: 12, scope: !6357)
!6380 = !DILocation(line: 172, column: 18, scope: !6357)
!6381 = !DILocation(line: 172, column: 16, scope: !6357)
!6382 = !DILocation(line: 172, column: 10, scope: !6357)
!6383 = !DILocation(line: 172, column: 9, scope: !6357)
!6384 = !DILocation(line: 173, column: 1, scope: !6357)
!6385 = !DILocation(line: 172, column: 2, scope: !6357)
!6386 = distinct !DISubprogram(name: "_test_bit", scope: !6387, file: !6387, line: 139, type: !6042, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6388)
!6387 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!6388 = !{!6389, !6390}
!6389 = !DILocalVariable(name: "nr", arg: 1, scope: !6386, file: !6387, line: 139, type: !46)
!6390 = !DILocalVariable(name: "addr", arg: 2, scope: !6386, file: !6387, line: 139, type: !6044)
!6391 = !DILocation(line: 139, column: 25, scope: !6386)
!6392 = !DILocation(line: 139, column: 59, scope: !6386)
!6393 = !DILocation(line: 141, column: 25, scope: !6386)
!6394 = !DILocation(line: 141, column: 32, scope: !6386)
!6395 = !DILocation(line: 141, column: 30, scope: !6386)
!6396 = !DILocation(line: 141, column: 2, scope: !6386)
!6397 = !DILocation(line: 142, column: 23, scope: !6386)
!6398 = !DILocation(line: 142, column: 27, scope: !6386)
!6399 = !DILocation(line: 142, column: 9, scope: !6386)
!6400 = !DILocation(line: 142, column: 2, scope: !6386)
!6401 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6402, file: !6402, line: 66, type: !6403, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6408)
!6402 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6403 = !DISubroutineType(types: !6404)
!6404 = !{null, !6405, !42}
!6405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6406, size: 64)
!6406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6407)
!6407 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6408 = !{!6409, !6410}
!6409 = !DILocalVariable(name: "v", arg: 1, scope: !6401, file: !6402, line: 66, type: !6405)
!6410 = !DILocalVariable(name: "size", arg: 2, scope: !6401, file: !6402, line: 66, type: !42)
!6411 = !DILocation(line: 66, column: 73, scope: !6401)
!6412 = !DILocation(line: 66, column: 83, scope: !6401)
!6413 = !DILocation(line: 68, column: 19, scope: !6401)
!6414 = !DILocation(line: 68, column: 22, scope: !6401)
!6415 = !DILocation(line: 68, column: 2, scope: !6401)
!6416 = !DILocation(line: 69, column: 2, scope: !6401)
!6417 = !DILocation(line: 70, column: 1, scope: !6401)
!6418 = distinct !DISubprogram(name: "kasan_check_read", scope: !6419, file: !6419, line: 40, type: !6420, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6422)
!6419 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6420 = !DISubroutineType(types: !6421)
!6421 = !{!1198, !6405, !7}
!6422 = !{!6423, !6424}
!6423 = !DILocalVariable(name: "p", arg: 1, scope: !6418, file: !6419, line: 40, type: !6405)
!6424 = !DILocalVariable(name: "size", arg: 2, scope: !6418, file: !6419, line: 40, type: !7)
!6425 = !DILocation(line: 40, column: 58, scope: !6418)
!6426 = !DILocation(line: 40, column: 74, scope: !6418)
!6427 = !DILocation(line: 42, column: 2, scope: !6418)
!6428 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6429, file: !6429, line: 229, type: !6430, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6432)
!6429 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6430 = !DISubroutineType(types: !6431)
!6431 = !{null, !6405, !42, !29}
!6432 = !{!6433, !6434, !6435}
!6433 = !DILocalVariable(name: "ptr", arg: 1, scope: !6428, file: !6429, line: 229, type: !6405)
!6434 = !DILocalVariable(name: "size", arg: 2, scope: !6428, file: !6429, line: 229, type: !42)
!6435 = !DILocalVariable(name: "type", arg: 3, scope: !6428, file: !6429, line: 230, type: !29)
!6436 = !DILocation(line: 229, column: 60, scope: !6428)
!6437 = !DILocation(line: 229, column: 72, scope: !6428)
!6438 = !DILocation(line: 230, column: 15, scope: !6428)
!6439 = !DILocation(line: 230, column: 23, scope: !6428)
!6440 = distinct !DISubprogram(name: "pud_pgtable", scope: !5807, file: !5807, line: 1061, type: !6441, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6443)
!6441 = !DISubroutineType(types: !6442)
!6442 = !{!205, !3859}
!6443 = !{!6444}
!6444 = !DILocalVariable(name: "pud", arg: 1, scope: !6440, file: !5807, line: 1061, type: !3859)
!6445 = !DILocation(line: 1061, column: 40, scope: !6440)
!6446 = !DILocation(line: 1063, column: 18, scope: !6440)
!6447 = !DILocation(line: 1063, column: 2, scope: !6440)
!6448 = distinct !DISubprogram(name: "pmd_index", scope: !5796, file: !5796, line: 71, type: !5797, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6449)
!6449 = !{!6450}
!6450 = !DILocalVariable(name: "address", arg: 1, scope: !6448, file: !5796, line: 71, type: !46)
!6451 = !DILocation(line: 71, column: 53, scope: !6448)
!6452 = !DILocation(line: 73, column: 10, scope: !6448)
!6453 = !DILocation(line: 73, column: 18, scope: !6448)
!6454 = !DILocation(line: 73, column: 32, scope: !6448)
!6455 = !DILocation(line: 73, column: 2, scope: !6448)
!6456 = distinct !DISubprogram(name: "pmd_flags", scope: !221, file: !221, line: 468, type: !6457, scopeLine: 469, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6459)
!6457 = !DISubroutineType(types: !6458)
!6458 = !{!211, !206}
!6459 = !{!6460}
!6460 = !DILocalVariable(name: "pmd", arg: 1, scope: !6456, file: !221, line: 468, type: !206)
!6461 = !DILocation(line: 468, column: 40, scope: !6456)
!6462 = !DILocation(line: 470, column: 9, scope: !6456)
!6463 = !DILocation(line: 470, column: 31, scope: !6456)
!6464 = !DILocation(line: 470, column: 29, scope: !6456)
!6465 = !DILocation(line: 470, column: 2, scope: !6456)
!6466 = distinct !DISubprogram(name: "native_pmd_val", scope: !221, file: !221, line: 403, type: !6457, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6467)
!6467 = !{!6468}
!6468 = !DILocalVariable(name: "pmd", arg: 1, scope: !6466, file: !221, line: 403, type: !206)
!6469 = !DILocation(line: 403, column: 45, scope: !6466)
!6470 = !DILocation(line: 405, column: 13, scope: !6466)
!6471 = !DILocation(line: 405, column: 2, scope: !6466)
!6472 = distinct !DISubprogram(name: "pmd_flags_mask", scope: !221, file: !221, line: 463, type: !6457, scopeLine: 464, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6473)
!6473 = !{!6474}
!6474 = !DILocalVariable(name: "pmd", arg: 1, scope: !6472, file: !221, line: 463, type: !206)
!6475 = !DILocation(line: 463, column: 45, scope: !6472)
!6476 = !DILocation(line: 465, column: 10, scope: !6472)
!6477 = !DILocation(line: 465, column: 9, scope: !6472)
!6478 = !DILocation(line: 465, column: 2, scope: !6472)
!6479 = distinct !DISubprogram(name: "pmd_pfn_mask", scope: !221, file: !221, line: 455, type: !6457, scopeLine: 456, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6480)
!6480 = !{!6481}
!6481 = !DILocalVariable(name: "pmd", arg: 1, scope: !6479, file: !221, line: 455, type: !206)
!6482 = !DILocation(line: 455, column: 43, scope: !6479)
!6483 = !DILocation(line: 457, column: 6, scope: !6484)
!6484 = distinct !DILexicalBlock(scope: !6479, file: !221, line: 457, column: 6)
!6485 = !DILocation(line: 457, column: 26, scope: !6484)
!6486 = !DILocation(line: 457, column: 6, scope: !6479)
!6487 = !DILocation(line: 458, column: 3, scope: !6484)
!6488 = !DILocation(line: 460, column: 3, scope: !6484)
!6489 = !DILocation(line: 461, column: 1, scope: !6479)
!6490 = distinct !DISubprogram(name: "pmd_page_vaddr", scope: !5807, file: !5807, line: 1012, type: !6491, scopeLine: 1013, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6493)
!6491 = !DISubroutineType(types: !6492)
!6492 = !{!46, !206}
!6493 = !{!6494}
!6494 = !DILocalVariable(name: "pmd", arg: 1, scope: !6490, file: !5807, line: 1012, type: !206)
!6495 = !DILocation(line: 1012, column: 50, scope: !6490)
!6496 = !DILocation(line: 1014, column: 24, scope: !6490)
!6497 = !DILocation(line: 1014, column: 9, scope: !6490)
!6498 = !DILocation(line: 1014, column: 2, scope: !6490)
!6499 = distinct !DISubprogram(name: "pte_index", scope: !5796, file: !5796, line: 65, type: !5797, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6500)
!6500 = !{!6501}
!6501 = !DILocalVariable(name: "address", arg: 1, scope: !6499, file: !5796, line: 65, type: !46)
!6502 = !DILocation(line: 65, column: 53, scope: !6499)
!6503 = !DILocation(line: 67, column: 10, scope: !6499)
!6504 = !DILocation(line: 67, column: 18, scope: !6499)
!6505 = !DILocation(line: 67, column: 33, scope: !6499)
!6506 = !DILocation(line: 67, column: 2, scope: !6499)
