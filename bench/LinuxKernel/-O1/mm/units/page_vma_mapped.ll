; ModuleID = 'mm/page_vma_mapped.c'
source_filename = "mm/page_vma_mapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { %union.anon.41, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.43, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.41 = type { i32 }
%union.anon.43 = type { i64, [88 x i8] }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.54 }
%struct.atomic_t = type { i32 }
%union.anon.54 = type { i64 }
%struct.pmd_t = type { i64 }
%struct.swp_entry_t = type { i64 }
%struct.pte_t = type { i64 }
%struct.page_vma_mapped_walk = type { i64, i64, i64, ptr, i64, ptr, ptr, ptr, i32 }
%struct.vm_area_struct = type { %union.anon.13, ptr, %struct.pgprot, %union.anon.15, i32, ptr, i8, %struct.anon.16, %struct.list_head, ptr, ptr, i64, ptr, ptr, %struct.atomic64_t, ptr, %struct.vm_userfaultfd_ctx }
%union.anon.13 = type { %struct.anon.14 }
%struct.anon.14 = type { i64, i64 }
%struct.pgprot = type { i64 }
%union.anon.15 = type { i64 }
%struct.anon.16 = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.mm_struct = type { %struct.anon.17, [0 x i64] }
%struct.anon.17 = type { %struct.anon.18, %struct.maple_tree, ptr, i64, i64, i64, i64, i64, ptr, %struct.atomic_t, %struct.atomic_t, ptr, i64, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [52 x i64], [4 x %struct.percpu_counter], ptr, %struct.mm_context_t, i64, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, %struct.uprobes_state, %struct.atomic64_t, %struct.work_struct, [48 x i8] }
%struct.anon.18 = type { %struct.atomic_t, [60 x i8] }
%struct.maple_tree = type { %union.anon.19, i32, ptr }
%union.anon.19 = type { %struct.spinlock }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.seqcount = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.mm_context_t = type { i64, %struct.atomic64_t, i64, %struct.rw_semaphore, ptr, i64, %struct.mutex, ptr, ptr, %struct.atomic_t, i16, i16 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.pgd_t = type { i64 }
%struct.p4d_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.hstate = type { %struct.mutex, %struct.lock_class_key, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, %struct.list_head, [64 x %struct.list_head], [64 x i32], [64 x i32], [64 x i32], [64 x i32], [8 x %struct.cftype], [10 x %struct.cftype], [32 x i8] }
%struct.lock_class_key = type {}
%struct.cftype = type { [64 x i8], i64, i64, i32, i32, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.20, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.21, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.22, ptr, %struct.address_space, %struct.list_head, %union.anon.23, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.20 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.21 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.22 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.23 = type { ptr }
%struct.hugetlbfs_sb_info = type { i64, i64, %struct.spinlock, ptr, ptr, %struct.kuid_t, %struct.kgid_t, i16 }
%struct.file = type { %union.anon.24, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.24 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.25, %struct.qspinlock }
%union.anon.25 = type { %struct.atomic_t }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i64, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i16, i16, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i64, i32, i32, %struct.list_head, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.ptdesc = type { i64, %union.anon.27, i64, %union.anon.29, %union.anon.30, i32, %struct.atomic_t }
%union.anon.27 = type { %struct.callback_head }
%union.anon.29 = type { ptr }
%union.anon.30 = type { i64 }
%struct.page = type { i64, %union.anon.31, %union.anon.40, %struct.atomic_t, [8 x i8] }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { %union.anon.33, ptr, %union.anon.35, i64 }
%union.anon.33 = type { %struct.list_head }
%union.anon.35 = type { i64 }
%union.anon.40 = type { %struct.atomic_t }
%struct.folio = type { %union.anon.44, %union.anon.49, %union.anon.51 }
%union.anon.44 = type { %struct.page }
%union.anon.49 = type { %struct.page }
%union.anon.51 = type { %struct.page }
%struct.anon.45 = type { i64, %union.anon.46, ptr, i64, %union.anon.48, %struct.atomic_t, %struct.atomic_t }
%union.anon.46 = type { %struct.list_head }
%union.anon.48 = type { ptr }
%struct.anon.50 = type { i64, i64, i64, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32 }
%struct.anon.38 = type { i64 }

@pgdir_shift = external dso_local global i32, align 4
@vmemmap_base = external dso_local global i64, align 8
@phys_base = external dso_local global i64, align 8
@page_offset_base = external dso_local global i64, align 8
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@ptrs_per_p4d = external dso_local global i32, align 4
@hugetlb_optimize_vmemmap_key = external dso_local global %struct.static_key_false, align 8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @page_vma_mapped_walk(ptr noundef %pvmw) #0 align 16 !dbg !5446 {
entry:
  %retval = alloca i1, align 1
  %pvmw.addr = alloca ptr, align 8
  %vma = alloca ptr, align 8
  %mm = alloca ptr, align 8
  %end = alloca i64, align 8
  %ptl = alloca ptr, align 8
  %pgd = alloca ptr, align 8
  %p4d = alloca ptr, align 8
  %pud = alloca ptr, align 8
  %pmde = alloca %struct.pmd_t, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %hstate = alloca ptr, align 8
  %size = alloca i64, align 8
  %tmp = alloca %struct.pmd_t, align 8
  %entry84 = alloca %struct.swp_entry_t, align 8
  %tmp91 = alloca %struct.swp_entry_t, align 8
  %tmp149 = alloca i32, align 4
  %ptl154 = alloca ptr, align 8
  %agg.tmp = alloca %struct.pte_t, align 8
  store ptr %pvmw, ptr %pvmw.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pvmw.addr, metadata !5462, metadata !DIExpression()), !dbg !5519
  call void @llvm.lifetime.start.p0(i64 8, ptr %vma) #11, !dbg !5520
  call void @llvm.dbg.declare(metadata ptr %vma, metadata !5463, metadata !DIExpression()), !dbg !5521
  %0 = load ptr, ptr %pvmw.addr, align 8, !dbg !5522
  %vma1 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %0, i32 0, i32 3, !dbg !5523
  %1 = load ptr, ptr %vma1, align 8, !dbg !5523
  store ptr %1, ptr %vma, align 8, !dbg !5521
  call void @llvm.lifetime.start.p0(i64 8, ptr %mm) #11, !dbg !5524
  call void @llvm.dbg.declare(metadata ptr %mm, metadata !5464, metadata !DIExpression()), !dbg !5525
  %2 = load ptr, ptr %vma, align 8, !dbg !5526
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 1, !dbg !5527
  %3 = load ptr, ptr %vm_mm, align 8, !dbg !5527
  store ptr %3, ptr %mm, align 8, !dbg !5525
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #11, !dbg !5528
  call void @llvm.dbg.declare(metadata ptr %end, metadata !5465, metadata !DIExpression()), !dbg !5529
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptl) #11, !dbg !5530
  call void @llvm.dbg.declare(metadata ptr %ptl, metadata !5466, metadata !DIExpression()), !dbg !5531
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgd) #11, !dbg !5532
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !5467, metadata !DIExpression()), !dbg !5533
  call void @llvm.lifetime.start.p0(i64 8, ptr %p4d) #11, !dbg !5534
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !5468, metadata !DIExpression()), !dbg !5535
  call void @llvm.lifetime.start.p0(i64 8, ptr %pud) #11, !dbg !5536
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !5469, metadata !DIExpression()), !dbg !5537
  call void @llvm.lifetime.start.p0(i64 8, ptr %pmde) #11, !dbg !5538
  call void @llvm.dbg.declare(metadata ptr %pmde, metadata !5470, metadata !DIExpression()), !dbg !5539
  %4 = load ptr, ptr %pvmw.addr, align 8, !dbg !5540
  %pmd = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %4, i32 0, i32 5, !dbg !5542
  %5 = load ptr, ptr %pmd, align 8, !dbg !5542
  %tobool = icmp ne ptr %5, null, !dbg !5540
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5543

land.lhs.true:                                    ; preds = %entry
  %6 = load ptr, ptr %pvmw.addr, align 8, !dbg !5544
  %pte = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %6, i32 0, i32 6, !dbg !5545
  %7 = load ptr, ptr %pte, align 8, !dbg !5545
  %tobool2 = icmp ne ptr %7, null, !dbg !5544
  br i1 %tobool2, label %if.end, label %if.then, !dbg !5546

if.then:                                          ; preds = %land.lhs.true
  %8 = load ptr, ptr %pvmw.addr, align 8, !dbg !5547
  %call = call zeroext i1 @not_found(ptr noundef %8) #12, !dbg !5548
  store i1 %call, ptr %retval, align 1, !dbg !5549
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup212, !dbg !5549

if.end:                                           ; preds = %land.lhs.true, %entry
  %9 = load ptr, ptr %vma, align 8, !dbg !5550
  %call3 = call zeroext i1 @is_vm_hugetlb_page(ptr noundef %9) #12, !dbg !5550
  %lnot = xor i1 %call3, true, !dbg !5550
  %lnot4 = xor i1 %lnot, true, !dbg !5550
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !5550
  %conv = sext i32 %lnot.ext to i64, !dbg !5550
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5550
  %tobool5 = icmp ne i64 %expval, 0, !dbg !5550
  br i1 %tobool5, label %if.then6, label %if.end28, !dbg !5551

if.then6:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %hstate) #11, !dbg !5552
  call void @llvm.dbg.declare(metadata ptr %hstate, metadata !5471, metadata !DIExpression()), !dbg !5553
  %10 = load ptr, ptr %vma, align 8, !dbg !5554
  %call7 = call ptr @hstate_vma(ptr noundef %10) #12, !dbg !5555
  store ptr %call7, ptr %hstate, align 8, !dbg !5553
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #11, !dbg !5556
  call void @llvm.dbg.declare(metadata ptr %size, metadata !5504, metadata !DIExpression()), !dbg !5557
  %11 = load ptr, ptr %hstate, align 8, !dbg !5558
  %call8 = call i64 @huge_page_size(ptr noundef %11) #12, !dbg !5559
  store i64 %call8, ptr %size, align 8, !dbg !5557
  %12 = load ptr, ptr %pvmw.addr, align 8, !dbg !5560
  %pte9 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %12, i32 0, i32 6, !dbg !5562
  %13 = load ptr, ptr %pte9, align 8, !dbg !5562
  %tobool10 = icmp ne ptr %13, null, !dbg !5560
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !5563

if.then11:                                        ; preds = %if.then6
  %14 = load ptr, ptr %pvmw.addr, align 8, !dbg !5564
  %call12 = call zeroext i1 @not_found(ptr noundef %14) #12, !dbg !5565
  store i1 %call12, ptr %retval, align 1, !dbg !5566
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5566

if.end13:                                         ; preds = %if.then6
  %15 = load ptr, ptr %vma, align 8, !dbg !5567
  %16 = load ptr, ptr %pvmw.addr, align 8, !dbg !5568
  %address = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %16, i32 0, i32 4, !dbg !5569
  %17 = load i64, ptr %address, align 8, !dbg !5569
  %18 = load i64, ptr %size, align 8, !dbg !5570
  %call14 = call ptr @hugetlb_walk(ptr noundef %15, i64 noundef %17, i64 noundef %18) #12, !dbg !5571
  %19 = load ptr, ptr %pvmw.addr, align 8, !dbg !5572
  %pte15 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %19, i32 0, i32 6, !dbg !5573
  store ptr %call14, ptr %pte15, align 8, !dbg !5574
  %20 = load ptr, ptr %pvmw.addr, align 8, !dbg !5575
  %pte16 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %20, i32 0, i32 6, !dbg !5577
  %21 = load ptr, ptr %pte16, align 8, !dbg !5577
  %tobool17 = icmp ne ptr %21, null, !dbg !5575
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !5578

if.then18:                                        ; preds = %if.end13
  store i1 false, ptr %retval, align 1, !dbg !5579
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5579

if.end19:                                         ; preds = %if.end13
  %22 = load ptr, ptr %hstate, align 8, !dbg !5580
  %23 = load ptr, ptr %mm, align 8, !dbg !5581
  %24 = load ptr, ptr %pvmw.addr, align 8, !dbg !5582
  %pte20 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %24, i32 0, i32 6, !dbg !5583
  %25 = load ptr, ptr %pte20, align 8, !dbg !5583
  %call21 = call ptr @huge_pte_lock(ptr noundef %22, ptr noundef %23, ptr noundef %25) #12, !dbg !5584
  %26 = load ptr, ptr %pvmw.addr, align 8, !dbg !5585
  %ptl22 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %26, i32 0, i32 7, !dbg !5586
  store ptr %call21, ptr %ptl22, align 8, !dbg !5587
  %27 = load ptr, ptr %pvmw.addr, align 8, !dbg !5588
  %call23 = call zeroext i1 @check_pte(ptr noundef %27) #12, !dbg !5590
  br i1 %call23, label %if.end26, label %if.then24, !dbg !5591

if.then24:                                        ; preds = %if.end19
  %28 = load ptr, ptr %pvmw.addr, align 8, !dbg !5592
  %call25 = call zeroext i1 @not_found(ptr noundef %28) #12, !dbg !5593
  store i1 %call25, ptr %retval, align 1, !dbg !5594
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5594

if.end26:                                         ; preds = %if.end19
  store i1 true, ptr %retval, align 1, !dbg !5595
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5595

cleanup:                                          ; preds = %if.end26, %if.then24, %if.then18, %if.then11
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #11, !dbg !5596
  call void @llvm.lifetime.end.p0(i64 8, ptr %hstate) #11, !dbg !5596
  br label %cleanup212

if.end28:                                         ; preds = %if.end
  %29 = load ptr, ptr %pvmw.addr, align 8, !dbg !5597
  %call29 = call i64 @vma_address_end(ptr noundef %29) #12, !dbg !5598
  store i64 %call29, ptr %end, align 8, !dbg !5599
  %30 = load ptr, ptr %pvmw.addr, align 8, !dbg !5600
  %pte30 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %30, i32 0, i32 6, !dbg !5602
  %31 = load ptr, ptr %pte30, align 8, !dbg !5602
  %tobool31 = icmp ne ptr %31, null, !dbg !5600
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !5603

if.then32:                                        ; preds = %if.end28
  br label %next_pte, !dbg !5604

if.end33:                                         ; preds = %if.end28
  br label %restart, !dbg !5602

restart:                                          ; preds = %if.end188, %if.then164, %if.end33
  call void @llvm.dbg.label(metadata !5505), !dbg !5605
  br label %do.body, !dbg !5606

do.body:                                          ; preds = %do.cond207, %restart
  %32 = load ptr, ptr %mm, align 8, !dbg !5607
  %33 = getelementptr inbounds %struct.mm_struct, ptr %32, i32 0, i32 0, !dbg !5607
  %pgd34 = getelementptr inbounds %struct.anon.17, ptr %33, i32 0, i32 8, !dbg !5607
  %34 = load ptr, ptr %pgd34, align 64, !dbg !5607
  %35 = load ptr, ptr %pvmw.addr, align 8, !dbg !5607
  %address35 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %35, i32 0, i32 4, !dbg !5607
  %36 = load i64, ptr %address35, align 8, !dbg !5607
  %call36 = call ptr @pgd_offset_pgd(ptr noundef %34, i64 noundef %36) #12, !dbg !5607
  store ptr %call36, ptr %pgd, align 8, !dbg !5608
  %37 = load ptr, ptr %pgd, align 8, !dbg !5609
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %37, i32 0, i32 0, !dbg !5611
  %38 = load i64, ptr %coerce.dive, align 8, !dbg !5611
  %call37 = call i32 @pgd_present(i64 %38) #12, !dbg !5611
  %tobool38 = icmp ne i32 %call37, 0, !dbg !5611
  br i1 %tobool38, label %if.end40, label %if.then39, !dbg !5612

if.then39:                                        ; preds = %do.body
  %39 = load ptr, ptr %pvmw.addr, align 8, !dbg !5613
  %40 = load i32, ptr @pgdir_shift, align 4, !dbg !5615
  %sh_prom = zext i32 %40 to i64, !dbg !5615
  %shl = shl i64 1, %sh_prom, !dbg !5615
  call void @step_forward(ptr noundef %39, i64 noundef %shl) #12, !dbg !5616
  br label %do.cond207, !dbg !5617

if.end40:                                         ; preds = %do.body
  %41 = load ptr, ptr %pgd, align 8, !dbg !5618
  %42 = load ptr, ptr %pvmw.addr, align 8, !dbg !5619
  %address41 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %42, i32 0, i32 4, !dbg !5620
  %43 = load i64, ptr %address41, align 8, !dbg !5620
  %call42 = call ptr @p4d_offset(ptr noundef %41, i64 noundef %43) #12, !dbg !5621
  store ptr %call42, ptr %p4d, align 8, !dbg !5622
  %44 = load ptr, ptr %p4d, align 8, !dbg !5623
  %coerce.dive43 = getelementptr inbounds %struct.p4d_t, ptr %44, i32 0, i32 0, !dbg !5625
  %45 = load i64, ptr %coerce.dive43, align 8, !dbg !5625
  %call44 = call i32 @p4d_present(i64 %45) #12, !dbg !5625
  %tobool45 = icmp ne i32 %call44, 0, !dbg !5625
  br i1 %tobool45, label %if.end47, label %if.then46, !dbg !5626

if.then46:                                        ; preds = %if.end40
  %46 = load ptr, ptr %pvmw.addr, align 8, !dbg !5627
  call void @step_forward(ptr noundef %46, i64 noundef 549755813888) #12, !dbg !5629
  br label %do.cond207, !dbg !5630

if.end47:                                         ; preds = %if.end40
  %47 = load ptr, ptr %p4d, align 8, !dbg !5631
  %48 = load ptr, ptr %pvmw.addr, align 8, !dbg !5632
  %address48 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %48, i32 0, i32 4, !dbg !5633
  %49 = load i64, ptr %address48, align 8, !dbg !5633
  %call49 = call ptr @pud_offset(ptr noundef %47, i64 noundef %49) #12, !dbg !5634
  store ptr %call49, ptr %pud, align 8, !dbg !5635
  %50 = load ptr, ptr %pud, align 8, !dbg !5636
  %coerce.dive50 = getelementptr inbounds %struct.pud_t, ptr %50, i32 0, i32 0, !dbg !5638
  %51 = load i64, ptr %coerce.dive50, align 8, !dbg !5638
  %call51 = call i32 @pud_present(i64 %51) #12, !dbg !5638
  %tobool52 = icmp ne i32 %call51, 0, !dbg !5638
  br i1 %tobool52, label %if.end54, label %if.then53, !dbg !5639

if.then53:                                        ; preds = %if.end47
  %52 = load ptr, ptr %pvmw.addr, align 8, !dbg !5640
  call void @step_forward(ptr noundef %52, i64 noundef 1073741824) #12, !dbg !5642
  br label %do.cond207, !dbg !5643

if.end54:                                         ; preds = %if.end47
  %53 = load ptr, ptr %pud, align 8, !dbg !5644
  %54 = load ptr, ptr %pvmw.addr, align 8, !dbg !5645
  %address55 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %54, i32 0, i32 4, !dbg !5646
  %55 = load i64, ptr %address55, align 8, !dbg !5646
  %call56 = call ptr @pmd_offset(ptr noundef %53, i64 noundef %55) #12, !dbg !5647
  %56 = load ptr, ptr %pvmw.addr, align 8, !dbg !5648
  %pmd57 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %56, i32 0, i32 5, !dbg !5649
  store ptr %call56, ptr %pmd57, align 8, !dbg !5650
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #11, !dbg !5651
  %57 = load ptr, ptr %pvmw.addr, align 8, !dbg !5652
  %pmd58 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %57, i32 0, i32 5, !dbg !5653
  %58 = load ptr, ptr %pmd58, align 8, !dbg !5653
  %call59 = call i64 @pmdp_get_lockless(ptr noundef %58) #12, !dbg !5651
  %coerce.dive60 = getelementptr inbounds %struct.pmd_t, ptr %tmp, i32 0, i32 0, !dbg !5651
  store i64 %call59, ptr %coerce.dive60, align 8, !dbg !5651
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pmde, ptr align 8 %tmp, i64 8, i1 false), !dbg !5651
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #11, !dbg !5651
  %coerce.dive61 = getelementptr inbounds %struct.pmd_t, ptr %pmde, i32 0, i32 0, !dbg !5654
  %59 = load i64, ptr %coerce.dive61, align 8, !dbg !5654
  %call62 = call i32 @pmd_trans_huge(i64 %59) #12, !dbg !5654
  %tobool63 = icmp ne i32 %call62, 0, !dbg !5654
  br i1 %tobool63, label %if.then75, label %lor.lhs.false, !dbg !5655

lor.lhs.false:                                    ; preds = %if.end54
  %coerce.dive64 = getelementptr inbounds %struct.pmd_t, ptr %pmde, i32 0, i32 0, !dbg !5656
  %60 = load i64, ptr %coerce.dive64, align 8, !dbg !5656
  %call65 = call i32 @is_pmd_migration_entry(i64 %60) #12, !dbg !5656
  %tobool66 = icmp ne i32 %call65, 0, !dbg !5656
  br i1 %tobool66, label %if.then75, label %lor.lhs.false67, !dbg !5657

lor.lhs.false67:                                  ; preds = %lor.lhs.false
  %coerce.dive68 = getelementptr inbounds %struct.pmd_t, ptr %pmde, i32 0, i32 0, !dbg !5658
  %61 = load i64, ptr %coerce.dive68, align 8, !dbg !5658
  %call69 = call i32 @pmd_present(i64 %61) #12, !dbg !5658
  %tobool70 = icmp ne i32 %call69, 0, !dbg !5658
  br i1 %tobool70, label %land.lhs.true71, label %if.else, !dbg !5659

land.lhs.true71:                                  ; preds = %lor.lhs.false67
  %coerce.dive72 = getelementptr inbounds %struct.pmd_t, ptr %pmde, i32 0, i32 0, !dbg !5660
  %62 = load i64, ptr %coerce.dive72, align 8, !dbg !5660
  %call73 = call i32 @pmd_devmap(i64 %62) #12, !dbg !5660
  %tobool74 = icmp ne i32 %call73, 0, !dbg !5660
  br i1 %tobool74, label %if.then75, label %if.else, !dbg !5661

if.then75:                                        ; preds = %land.lhs.true71, %lor.lhs.false, %if.end54
  %63 = load ptr, ptr %mm, align 8, !dbg !5662
  %64 = load ptr, ptr %pvmw.addr, align 8, !dbg !5663
  %pmd76 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %64, i32 0, i32 5, !dbg !5664
  %65 = load ptr, ptr %pmd76, align 8, !dbg !5664
  %call77 = call ptr @pmd_lock(ptr noundef %63, ptr noundef %65) #12, !dbg !5665
  %66 = load ptr, ptr %pvmw.addr, align 8, !dbg !5666
  %ptl78 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %66, i32 0, i32 7, !dbg !5667
  store ptr %call77, ptr %ptl78, align 8, !dbg !5668
  %67 = load ptr, ptr %pvmw.addr, align 8, !dbg !5669
  %pmd79 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %67, i32 0, i32 5, !dbg !5670
  %68 = load ptr, ptr %pmd79, align 8, !dbg !5670
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pmde, ptr align 8 %68, i64 8, i1 false), !dbg !5671
  %coerce.dive80 = getelementptr inbounds %struct.pmd_t, ptr %pmde, i32 0, i32 0, !dbg !5672
  %69 = load i64, ptr %coerce.dive80, align 8, !dbg !5672
  %call81 = call i32 @pmd_present(i64 %69) #12, !dbg !5672
  %tobool82 = icmp ne i32 %call81, 0, !dbg !5672
  br i1 %tobool82, label %if.end106, label %if.then83, !dbg !5673

if.then83:                                        ; preds = %if.then75
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry84) #11, !dbg !5674
  call void @llvm.dbg.declare(metadata ptr %entry84, metadata !5506, metadata !DIExpression()), !dbg !5675
  %call85 = call zeroext i1 @thp_migration_supported() #12, !dbg !5676
  br i1 %call85, label %lor.lhs.false86, label %if.then88, !dbg !5678

lor.lhs.false86:                                  ; preds = %if.then83
  %70 = load ptr, ptr %pvmw.addr, align 8, !dbg !5679
  %flags = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %70, i32 0, i32 8, !dbg !5680
  %71 = load i32, ptr %flags, align 8, !dbg !5680
  %and = and i32 %71, 2, !dbg !5681
  %tobool87 = icmp ne i32 %and, 0, !dbg !5681
  br i1 %tobool87, label %if.end90, label %if.then88, !dbg !5682

if.then88:                                        ; preds = %lor.lhs.false86, %if.then83
  %72 = load ptr, ptr %pvmw.addr, align 8, !dbg !5683
  %call89 = call zeroext i1 @not_found(ptr noundef %72) #12, !dbg !5684
  store i1 %call89, ptr %retval, align 1, !dbg !5685
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup105, !dbg !5685

if.end90:                                         ; preds = %lor.lhs.false86
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp91) #11, !dbg !5686
  %coerce.dive92 = getelementptr inbounds %struct.pmd_t, ptr %pmde, i32 0, i32 0, !dbg !5686
  %73 = load i64, ptr %coerce.dive92, align 8, !dbg !5686
  %call93 = call i64 @pmd_to_swp_entry(i64 %73) #12, !dbg !5686
  %coerce.dive94 = getelementptr inbounds %struct.swp_entry_t, ptr %tmp91, i32 0, i32 0, !dbg !5686
  store i64 %call93, ptr %coerce.dive94, align 8, !dbg !5686
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %entry84, ptr align 8 %tmp91, i64 8, i1 false), !dbg !5686
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp91) #11, !dbg !5686
  %coerce.dive95 = getelementptr inbounds %struct.swp_entry_t, ptr %entry84, i32 0, i32 0, !dbg !5687
  %74 = load i64, ptr %coerce.dive95, align 8, !dbg !5687
  %call96 = call i32 @is_migration_entry(i64 %74) #12, !dbg !5687
  %tobool97 = icmp ne i32 %call96, 0, !dbg !5687
  br i1 %tobool97, label %lor.lhs.false98, label %if.then102, !dbg !5689

lor.lhs.false98:                                  ; preds = %if.end90
  %coerce.dive99 = getelementptr inbounds %struct.swp_entry_t, ptr %entry84, i32 0, i32 0, !dbg !5690
  %75 = load i64, ptr %coerce.dive99, align 8, !dbg !5690
  %call100 = call i64 @swp_offset_pfn(i64 %75) #12, !dbg !5690
  %76 = load ptr, ptr %pvmw.addr, align 8, !dbg !5691
  %call101 = call zeroext i1 @check_pmd(i64 noundef %call100, ptr noundef %76) #12, !dbg !5692
  br i1 %call101, label %if.end104, label %if.then102, !dbg !5693

if.then102:                                       ; preds = %lor.lhs.false98, %if.end90
  %77 = load ptr, ptr %pvmw.addr, align 8, !dbg !5694
  %call103 = call zeroext i1 @not_found(ptr noundef %77) #12, !dbg !5695
  store i1 %call103, ptr %retval, align 1, !dbg !5696
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup105, !dbg !5696

if.end104:                                        ; preds = %lor.lhs.false98
  store i1 true, ptr %retval, align 1, !dbg !5697
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup105, !dbg !5697

cleanup105:                                       ; preds = %if.end104, %if.then102, %if.then88
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry84) #11, !dbg !5698
  br label %cleanup212

if.end106:                                        ; preds = %if.then75
  %coerce.dive107 = getelementptr inbounds %struct.pmd_t, ptr %pmde, i32 0, i32 0, !dbg !5699
  %78 = load i64, ptr %coerce.dive107, align 8, !dbg !5699
  %call108 = call i32 @pmd_trans_huge(i64 %78) #12, !dbg !5699
  %tobool109 = icmp ne i32 %call108, 0, !dbg !5699
  br i1 %tobool109, label %lor.end, label %lor.rhs, !dbg !5699

lor.rhs:                                          ; preds = %if.end106
  %coerce.dive110 = getelementptr inbounds %struct.pmd_t, ptr %pmde, i32 0, i32 0, !dbg !5699
  %79 = load i64, ptr %coerce.dive110, align 8, !dbg !5699
  %call111 = call i32 @pmd_devmap(i64 %79) #12, !dbg !5699
  %tobool112 = icmp ne i32 %call111, 0, !dbg !5699
  br label %lor.end, !dbg !5699

lor.end:                                          ; preds = %lor.rhs, %if.end106
  %80 = phi i1 [ true, %if.end106 ], [ %tobool112, %lor.rhs ]
  %lnot113 = xor i1 %80, true, !dbg !5699
  %lnot115 = xor i1 %lnot113, true, !dbg !5699
  %lnot.ext116 = zext i1 %lnot115 to i32, !dbg !5699
  %conv117 = sext i32 %lnot.ext116 to i64, !dbg !5699
  %expval118 = call i64 @llvm.expect.i64(i64 %conv117, i64 1), !dbg !5699
  %tobool119 = icmp ne i64 %expval118, 0, !dbg !5699
  br i1 %tobool119, label %if.then120, label %if.end133, !dbg !5701

if.then120:                                       ; preds = %lor.end
  %81 = load ptr, ptr %pvmw.addr, align 8, !dbg !5702
  %flags121 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %81, i32 0, i32 8, !dbg !5705
  %82 = load i32, ptr %flags121, align 8, !dbg !5705
  %and122 = and i32 %82, 2, !dbg !5706
  %tobool123 = icmp ne i32 %and122, 0, !dbg !5706
  br i1 %tobool123, label %if.then124, label %if.end126, !dbg !5707

if.then124:                                       ; preds = %if.then120
  %83 = load ptr, ptr %pvmw.addr, align 8, !dbg !5708
  %call125 = call zeroext i1 @not_found(ptr noundef %83) #12, !dbg !5709
  store i1 %call125, ptr %retval, align 1, !dbg !5710
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup212, !dbg !5710

if.end126:                                        ; preds = %if.then120
  %coerce.dive127 = getelementptr inbounds %struct.pmd_t, ptr %pmde, i32 0, i32 0, !dbg !5711
  %84 = load i64, ptr %coerce.dive127, align 8, !dbg !5711
  %call128 = call i64 @pmd_pfn(i64 %84) #12, !dbg !5711
  %85 = load ptr, ptr %pvmw.addr, align 8, !dbg !5713
  %call129 = call zeroext i1 @check_pmd(i64 noundef %call128, ptr noundef %85) #12, !dbg !5714
  br i1 %call129, label %if.end132, label %if.then130, !dbg !5715

if.then130:                                       ; preds = %if.end126
  %86 = load ptr, ptr %pvmw.addr, align 8, !dbg !5716
  %call131 = call zeroext i1 @not_found(ptr noundef %86) #12, !dbg !5717
  store i1 %call131, ptr %retval, align 1, !dbg !5718
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup212, !dbg !5718

if.end132:                                        ; preds = %if.end126
  store i1 true, ptr %retval, align 1, !dbg !5719
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup212, !dbg !5719

if.end133:                                        ; preds = %lor.end
  %87 = load ptr, ptr %pvmw.addr, align 8, !dbg !5720
  %ptl134 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %87, i32 0, i32 7, !dbg !5721
  %88 = load ptr, ptr %ptl134, align 8, !dbg !5721
  call void @spin_unlock(ptr noundef %88) #12, !dbg !5722
  %89 = load ptr, ptr %pvmw.addr, align 8, !dbg !5723
  %ptl135 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %89, i32 0, i32 7, !dbg !5724
  store ptr null, ptr %ptl135, align 8, !dbg !5725
  br label %if.end159, !dbg !5726

if.else:                                          ; preds = %land.lhs.true71, %lor.lhs.false67
  %coerce.dive136 = getelementptr inbounds %struct.pmd_t, ptr %pmde, i32 0, i32 0, !dbg !5727
  %90 = load i64, ptr %coerce.dive136, align 8, !dbg !5727
  %call137 = call i32 @pmd_present(i64 %90) #12, !dbg !5727
  %tobool138 = icmp ne i32 %call137, 0, !dbg !5727
  br i1 %tobool138, label %if.end158, label %if.then139, !dbg !5728

if.then139:                                       ; preds = %if.else
  %91 = load ptr, ptr %pvmw.addr, align 8, !dbg !5729
  %flags140 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %91, i32 0, i32 8, !dbg !5730
  %92 = load i32, ptr %flags140, align 8, !dbg !5730
  %and141 = and i32 %92, 1, !dbg !5731
  %tobool142 = icmp ne i32 %and141, 0, !dbg !5731
  br i1 %tobool142, label %land.lhs.true143, label %if.end157, !dbg !5732

land.lhs.true143:                                 ; preds = %if.then139
  %93 = load ptr, ptr %vma, align 8, !dbg !5733
  %94 = load ptr, ptr %pvmw.addr, align 8, !dbg !5734
  %address144 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %94, i32 0, i32 4, !dbg !5735
  %95 = load i64, ptr %address144, align 8, !dbg !5735
  %call145 = call zeroext i1 @transhuge_vma_suitable(ptr noundef %93, i64 noundef %95) #12, !dbg !5736
  br i1 %call145, label %land.lhs.true147, label %if.end157, !dbg !5737

land.lhs.true147:                                 ; preds = %land.lhs.true143
  %96 = load ptr, ptr %pvmw.addr, align 8, !dbg !5738
  %nr_pages = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %96, i32 0, i32 1, !dbg !5739
  %97 = load i64, ptr %nr_pages, align 8, !dbg !5739
  br label %do.body148, !dbg !5740

do.body148:                                       ; preds = %land.lhs.true147
  call void @__compiletime_assert_337() #13, !dbg !5742, !srcloc !5745
  unreachable, !dbg !5742

do.cond:                                          ; No predecessors!
  br label %do.end, !dbg !5746

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %tmp149, align 4, !dbg !5746
  %98 = load i32, ptr %tmp149, align 4, !dbg !5740
  %sub = sub i32 %98, 12, !dbg !5747
  %shl150 = shl i32 1, %sub, !dbg !5747
  %conv151 = sext i32 %shl150 to i64, !dbg !5747
  %cmp = icmp uge i64 %97, %conv151, !dbg !5748
  br i1 %cmp, label %if.then153, label %if.end157, !dbg !5749

if.then153:                                       ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptl154) #11, !dbg !5750
  call void @llvm.dbg.declare(metadata ptr %ptl154, metadata !5512, metadata !DIExpression()), !dbg !5751
  %99 = load ptr, ptr %mm, align 8, !dbg !5752
  %100 = load ptr, ptr %pvmw.addr, align 8, !dbg !5753
  %pmd155 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %100, i32 0, i32 5, !dbg !5754
  %101 = load ptr, ptr %pmd155, align 8, !dbg !5754
  %call156 = call ptr @pmd_lock(ptr noundef %99, ptr noundef %101) #12, !dbg !5755
  store ptr %call156, ptr %ptl154, align 8, !dbg !5751
  %102 = load ptr, ptr %ptl154, align 8, !dbg !5756
  call void @spin_unlock(ptr noundef %102) #12, !dbg !5757
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptl154) #11, !dbg !5758
  br label %if.end157, !dbg !5759

if.end157:                                        ; preds = %if.then153, %do.end, %land.lhs.true143, %if.then139
  %103 = load ptr, ptr %pvmw.addr, align 8, !dbg !5760
  call void @step_forward(ptr noundef %103, i64 noundef 2097152) #12, !dbg !5761
  br label %do.cond207, !dbg !5762

if.end158:                                        ; preds = %if.else
  br label %if.end159

if.end159:                                        ; preds = %if.end158, %if.end133
  %104 = load ptr, ptr %pvmw.addr, align 8, !dbg !5763
  %call160 = call zeroext i1 @map_pte(ptr noundef %104, ptr noundef %ptl) #12, !dbg !5765
  br i1 %call160, label %if.end166, label %if.then161, !dbg !5766

if.then161:                                       ; preds = %if.end159
  %105 = load ptr, ptr %pvmw.addr, align 8, !dbg !5767
  %pte162 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %105, i32 0, i32 6, !dbg !5770
  %106 = load ptr, ptr %pte162, align 8, !dbg !5770
  %tobool163 = icmp ne ptr %106, null, !dbg !5767
  br i1 %tobool163, label %if.end165, label %if.then164, !dbg !5771

if.then164:                                       ; preds = %if.then161
  br label %restart, !dbg !5772

if.end165:                                        ; preds = %if.then161
  br label %next_pte, !dbg !5773

if.end166:                                        ; preds = %if.end159
  br label %this_pte, !dbg !5774

this_pte:                                         ; preds = %if.end206, %if.end166
  call void @llvm.dbg.label(metadata !5517), !dbg !5775
  %107 = load ptr, ptr %pvmw.addr, align 8, !dbg !5776
  %call167 = call zeroext i1 @check_pte(ptr noundef %107) #12, !dbg !5778
  br i1 %call167, label %if.then168, label %if.end169, !dbg !5779

if.then168:                                       ; preds = %this_pte
  store i1 true, ptr %retval, align 1, !dbg !5780
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup212, !dbg !5780

if.end169:                                        ; preds = %this_pte
  br label %next_pte, !dbg !5781

next_pte:                                         ; preds = %if.end169, %if.end165, %if.then32
  call void @llvm.dbg.label(metadata !5518), !dbg !5782
  br label %do.body170, !dbg !5783

do.body170:                                       ; preds = %do.cond193, %next_pte
  %108 = load ptr, ptr %pvmw.addr, align 8, !dbg !5784
  %address171 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %108, i32 0, i32 4, !dbg !5786
  %109 = load i64, ptr %address171, align 8, !dbg !5787
  %add = add i64 %109, 4096, !dbg !5787
  store i64 %add, ptr %address171, align 8, !dbg !5787
  %110 = load ptr, ptr %pvmw.addr, align 8, !dbg !5788
  %address172 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %110, i32 0, i32 4, !dbg !5790
  %111 = load i64, ptr %address172, align 8, !dbg !5790
  %112 = load i64, ptr %end, align 8, !dbg !5791
  %cmp173 = icmp uge i64 %111, %112, !dbg !5792
  br i1 %cmp173, label %if.then175, label %if.end177, !dbg !5793

if.then175:                                       ; preds = %do.body170
  %113 = load ptr, ptr %pvmw.addr, align 8, !dbg !5794
  %call176 = call zeroext i1 @not_found(ptr noundef %113) #12, !dbg !5795
  store i1 %call176, ptr %retval, align 1, !dbg !5796
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup212, !dbg !5796

if.end177:                                        ; preds = %do.body170
  %114 = load ptr, ptr %pvmw.addr, align 8, !dbg !5797
  %address178 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %114, i32 0, i32 4, !dbg !5799
  %115 = load i64, ptr %address178, align 8, !dbg !5799
  %and179 = and i64 %115, 2093056, !dbg !5800
  %cmp180 = icmp eq i64 %and179, 0, !dbg !5801
  br i1 %cmp180, label %if.then182, label %if.end191, !dbg !5802

if.then182:                                       ; preds = %if.end177
  %116 = load ptr, ptr %pvmw.addr, align 8, !dbg !5803
  %ptl183 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %116, i32 0, i32 7, !dbg !5806
  %117 = load ptr, ptr %ptl183, align 8, !dbg !5806
  %tobool184 = icmp ne ptr %117, null, !dbg !5803
  br i1 %tobool184, label %if.then185, label %if.end188, !dbg !5807

if.then185:                                       ; preds = %if.then182
  %118 = load ptr, ptr %pvmw.addr, align 8, !dbg !5808
  %ptl186 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %118, i32 0, i32 7, !dbg !5810
  %119 = load ptr, ptr %ptl186, align 8, !dbg !5810
  call void @spin_unlock(ptr noundef %119) #12, !dbg !5811
  %120 = load ptr, ptr %pvmw.addr, align 8, !dbg !5812
  %ptl187 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %120, i32 0, i32 7, !dbg !5813
  store ptr null, ptr %ptl187, align 8, !dbg !5814
  br label %if.end188, !dbg !5815

if.end188:                                        ; preds = %if.then185, %if.then182
  %121 = load ptr, ptr %pvmw.addr, align 8, !dbg !5816
  %pte189 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %121, i32 0, i32 6, !dbg !5817
  %122 = load ptr, ptr %pte189, align 8, !dbg !5817
  call void @pte_unmap(ptr noundef %122) #12, !dbg !5818
  %123 = load ptr, ptr %pvmw.addr, align 8, !dbg !5819
  %pte190 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %123, i32 0, i32 6, !dbg !5820
  store ptr null, ptr %pte190, align 8, !dbg !5821
  br label %restart, !dbg !5822

if.end191:                                        ; preds = %if.end177
  %124 = load ptr, ptr %pvmw.addr, align 8, !dbg !5823
  %pte192 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %124, i32 0, i32 6, !dbg !5824
  %125 = load ptr, ptr %pte192, align 8, !dbg !5825
  %incdec.ptr = getelementptr %struct.pte_t, ptr %125, i32 1, !dbg !5825
  store ptr %incdec.ptr, ptr %pte192, align 8, !dbg !5825
  br label %do.cond193, !dbg !5826

do.cond193:                                       ; preds = %if.end191
  %126 = load ptr, ptr %pvmw.addr, align 8, !dbg !5827
  %pte194 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %126, i32 0, i32 6, !dbg !5828
  %127 = load ptr, ptr %pte194, align 8, !dbg !5828
  %call195 = call i64 @ptep_get(ptr noundef %127) #12, !dbg !5829
  %coerce.dive196 = getelementptr inbounds %struct.pte_t, ptr %agg.tmp, i32 0, i32 0, !dbg !5829
  store i64 %call195, ptr %coerce.dive196, align 8, !dbg !5829
  %coerce.dive197 = getelementptr inbounds %struct.pte_t, ptr %agg.tmp, i32 0, i32 0, !dbg !5830
  %128 = load i64, ptr %coerce.dive197, align 8, !dbg !5830
  %call198 = call i32 @pte_none(i64 %128) #12, !dbg !5830
  %tobool199 = icmp ne i32 %call198, 0, !dbg !5826
  br i1 %tobool199, label %do.body170, label %do.end200, !dbg !5826, !llvm.loop !5831

do.end200:                                        ; preds = %do.cond193
  %129 = load ptr, ptr %pvmw.addr, align 8, !dbg !5835
  %ptl201 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %129, i32 0, i32 7, !dbg !5837
  %130 = load ptr, ptr %ptl201, align 8, !dbg !5837
  %tobool202 = icmp ne ptr %130, null, !dbg !5835
  br i1 %tobool202, label %if.end206, label %if.then203, !dbg !5838

if.then203:                                       ; preds = %do.end200
  %131 = load ptr, ptr %ptl, align 8, !dbg !5839
  %132 = load ptr, ptr %pvmw.addr, align 8, !dbg !5841
  %ptl204 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %132, i32 0, i32 7, !dbg !5842
  store ptr %131, ptr %ptl204, align 8, !dbg !5843
  %133 = load ptr, ptr %pvmw.addr, align 8, !dbg !5844
  %ptl205 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %133, i32 0, i32 7, !dbg !5845
  %134 = load ptr, ptr %ptl205, align 8, !dbg !5845
  call void @spin_lock(ptr noundef %134) #12, !dbg !5846
  br label %if.end206, !dbg !5847

if.end206:                                        ; preds = %if.then203, %do.end200
  br label %this_pte, !dbg !5848

do.cond207:                                       ; preds = %if.end157, %if.then53, %if.then46, %if.then39
  %135 = load ptr, ptr %pvmw.addr, align 8, !dbg !5849
  %address208 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %135, i32 0, i32 4, !dbg !5850
  %136 = load i64, ptr %address208, align 8, !dbg !5850
  %137 = load i64, ptr %end, align 8, !dbg !5851
  %cmp209 = icmp ult i64 %136, %137, !dbg !5852
  br i1 %cmp209, label %do.body, label %do.end211, !dbg !5853, !llvm.loop !5854

do.end211:                                        ; preds = %do.cond207
  store i1 false, ptr %retval, align 1, !dbg !5856
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup212, !dbg !5856

cleanup212:                                       ; preds = %do.end211, %if.then175, %if.then168, %if.end132, %if.then130, %if.then124, %cleanup105, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pmde) #11, !dbg !5857
  call void @llvm.lifetime.end.p0(i64 8, ptr %pud) #11, !dbg !5857
  call void @llvm.lifetime.end.p0(i64 8, ptr %p4d) #11, !dbg !5857
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgd) #11, !dbg !5857
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptl) #11, !dbg !5857
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #11, !dbg !5857
  call void @llvm.lifetime.end.p0(i64 8, ptr %mm) #11, !dbg !5857
  call void @llvm.lifetime.end.p0(i64 8, ptr %vma) #11, !dbg !5857
  %138 = load i1, ptr %retval, align 1, !dbg !5857
  ret i1 %138, !dbg !5857
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @not_found(ptr noundef %pvmw) #3 align 16 !dbg !5858 {
entry:
  %pvmw.addr = alloca ptr, align 8
  store ptr %pvmw, ptr %pvmw.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pvmw.addr, metadata !5860, metadata !DIExpression()), !dbg !5861
  %0 = load ptr, ptr %pvmw.addr, align 8, !dbg !5862
  call void @page_vma_mapped_walk_done(ptr noundef %0) #12, !dbg !5863
  ret i1 false, !dbg !5864
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_vm_hugetlb_page(ptr noundef %vma) #3 align 16 !dbg !5865 {
entry:
  %vma.addr = alloca ptr, align 8
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !5870, metadata !DIExpression()), !dbg !5871
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !5872
  %1 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 3, !dbg !5873
  %2 = load i64, ptr %1, align 8, !dbg !5873
  %and = and i64 %2, 4194304, !dbg !5874
  %tobool = icmp ne i64 %and, 0, !dbg !5875
  %lnot = xor i1 %tobool, true, !dbg !5875
  %lnot1 = xor i1 %lnot, true, !dbg !5876
  ret i1 %lnot1, !dbg !5877
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @hstate_vma(ptr noundef %vma) #3 align 16 !dbg !5878 {
entry:
  %vma.addr = alloca ptr, align 8
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !5882, metadata !DIExpression()), !dbg !5883
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !5884
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 12, !dbg !5885
  %1 = load ptr, ptr %vm_file, align 8, !dbg !5885
  %call = call ptr @hstate_file(ptr noundef %1) #12, !dbg !5886
  ret ptr %call, !dbg !5887
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @huge_page_size(ptr noundef %h) #3 align 16 !dbg !5888 {
entry:
  %h.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !5894, metadata !DIExpression()), !dbg !5895
  %0 = load ptr, ptr %h.addr, align 8, !dbg !5896
  %order = getelementptr inbounds %struct.hstate, ptr %0, i32 0, i32 4, !dbg !5897
  %1 = load i32, ptr %order, align 8, !dbg !5897
  %sh_prom = zext i32 %1 to i64, !dbg !5898
  %shl = shl i64 4096, %sh_prom, !dbg !5898
  ret i64 %shl, !dbg !5899
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @hugetlb_walk(ptr noundef %vma, i64 noundef %addr, i64 noundef %sz) #3 align 16 !dbg !5900 {
entry:
  %vma.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %sz.addr = alloca i64, align 8
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !5904, metadata !DIExpression()), !dbg !5907
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5905, metadata !DIExpression()), !dbg !5908
  store i64 %sz, ptr %sz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sz.addr, metadata !5906, metadata !DIExpression()), !dbg !5909
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !5910
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 1, !dbg !5911
  %1 = load ptr, ptr %vm_mm, align 8, !dbg !5911
  %2 = load i64, ptr %addr.addr, align 8, !dbg !5912
  %3 = load i64, ptr %sz.addr, align 8, !dbg !5913
  %call = call ptr @huge_pte_offset(ptr noundef %1, i64 noundef %2, i64 noundef %3) #12, !dbg !5914
  ret ptr %call, !dbg !5915
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @huge_pte_lock(ptr noundef %h, ptr noundef %mm, ptr noundef %pte) #3 align 16 !dbg !5916 {
entry:
  %h.addr = alloca ptr, align 8
  %mm.addr = alloca ptr, align 8
  %pte.addr = alloca ptr, align 8
  %ptl = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !5920, metadata !DIExpression()), !dbg !5924
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !5921, metadata !DIExpression()), !dbg !5925
  store ptr %pte, ptr %pte.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pte.addr, metadata !5922, metadata !DIExpression()), !dbg !5926
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptl) #11, !dbg !5927
  call void @llvm.dbg.declare(metadata ptr %ptl, metadata !5923, metadata !DIExpression()), !dbg !5928
  %0 = load ptr, ptr %h.addr, align 8, !dbg !5929
  %1 = load ptr, ptr %mm.addr, align 8, !dbg !5930
  %2 = load ptr, ptr %pte.addr, align 8, !dbg !5931
  %call = call ptr @huge_pte_lockptr(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12, !dbg !5932
  store ptr %call, ptr %ptl, align 8, !dbg !5933
  %3 = load ptr, ptr %ptl, align 8, !dbg !5934
  call void @spin_lock(ptr noundef %3) #12, !dbg !5935
  %4 = load ptr, ptr %ptl, align 8, !dbg !5936
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptl) #11, !dbg !5937
  ret ptr %4, !dbg !5938
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_pte(ptr noundef %pvmw) #0 align 16 !dbg !5939 {
entry:
  %retval = alloca i1, align 1
  %pvmw.addr = alloca ptr, align 8
  %pfn = alloca i64, align 8
  %ptent = alloca %struct.pte_t, align 8
  %entry1 = alloca %struct.swp_entry_t, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca %struct.swp_entry_t, align 8
  %entry22 = alloca %struct.swp_entry_t, align 8
  %tmp23 = alloca %struct.swp_entry_t, align 8
  store ptr %pvmw, ptr %pvmw.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pvmw.addr, metadata !5941, metadata !DIExpression()), !dbg !5950
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfn) #11, !dbg !5951
  call void @llvm.dbg.declare(metadata ptr %pfn, metadata !5942, metadata !DIExpression()), !dbg !5952
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptent) #11, !dbg !5953
  call void @llvm.dbg.declare(metadata ptr %ptent, metadata !5943, metadata !DIExpression()), !dbg !5954
  %0 = load ptr, ptr %pvmw.addr, align 8, !dbg !5955
  %pte = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %0, i32 0, i32 6, !dbg !5956
  %1 = load ptr, ptr %pte, align 8, !dbg !5956
  %call = call i64 @ptep_get(ptr noundef %1) #12, !dbg !5957
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %ptent, i32 0, i32 0, !dbg !5957
  store i64 %call, ptr %coerce.dive, align 8, !dbg !5957
  %2 = load ptr, ptr %pvmw.addr, align 8, !dbg !5958
  %flags = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %2, i32 0, i32 8, !dbg !5959
  %3 = load i32, ptr %flags, align 8, !dbg !5959
  %and = and i32 %3, 2, !dbg !5960
  %tobool = icmp ne i32 %and, 0, !dbg !5960
  br i1 %tobool, label %if.then, label %if.else, !dbg !5961

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #11, !dbg !5962
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !5944, metadata !DIExpression()), !dbg !5963
  %coerce.dive2 = getelementptr inbounds %struct.pte_t, ptr %ptent, i32 0, i32 0, !dbg !5964
  %4 = load i64, ptr %coerce.dive2, align 8, !dbg !5964
  %call3 = call i32 @is_swap_pte(i64 %4) #12, !dbg !5964
  %tobool4 = icmp ne i32 %call3, 0, !dbg !5964
  br i1 %tobool4, label %if.end, label %if.then5, !dbg !5966

if.then5:                                         ; preds = %if.then
  store i1 false, ptr %retval, align 1, !dbg !5967
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5967

if.end:                                           ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #11, !dbg !5968
  %coerce.dive6 = getelementptr inbounds %struct.pte_t, ptr %ptent, i32 0, i32 0, !dbg !5968
  %5 = load i64, ptr %coerce.dive6, align 8, !dbg !5968
  %call7 = call i64 @pte_to_swp_entry(i64 %5) #12, !dbg !5968
  %coerce.dive8 = getelementptr inbounds %struct.swp_entry_t, ptr %tmp, i32 0, i32 0, !dbg !5968
  store i64 %call7, ptr %coerce.dive8, align 8, !dbg !5968
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %entry1, ptr align 8 %tmp, i64 8, i1 false), !dbg !5968
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #11, !dbg !5968
  %coerce.dive9 = getelementptr inbounds %struct.swp_entry_t, ptr %entry1, i32 0, i32 0, !dbg !5969
  %6 = load i64, ptr %coerce.dive9, align 8, !dbg !5969
  %call10 = call i32 @is_migration_entry(i64 %6) #12, !dbg !5969
  %tobool11 = icmp ne i32 %call10, 0, !dbg !5969
  br i1 %tobool11, label %if.end15, label %land.lhs.true, !dbg !5971

land.lhs.true:                                    ; preds = %if.end
  %coerce.dive12 = getelementptr inbounds %struct.swp_entry_t, ptr %entry1, i32 0, i32 0, !dbg !5972
  %7 = load i64, ptr %coerce.dive12, align 8, !dbg !5972
  %call13 = call zeroext i1 @is_device_exclusive_entry(i64 %7) #12, !dbg !5972
  br i1 %call13, label %if.end15, label %if.then14, !dbg !5973

if.then14:                                        ; preds = %land.lhs.true
  store i1 false, ptr %retval, align 1, !dbg !5974
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5974

if.end15:                                         ; preds = %land.lhs.true, %if.end
  %coerce.dive16 = getelementptr inbounds %struct.swp_entry_t, ptr %entry1, i32 0, i32 0, !dbg !5975
  %8 = load i64, ptr %coerce.dive16, align 8, !dbg !5975
  %call17 = call i64 @swp_offset_pfn(i64 %8) #12, !dbg !5975
  store i64 %call17, ptr %pfn, align 8, !dbg !5976
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5977
  br label %cleanup, !dbg !5977

cleanup:                                          ; preds = %if.end15, %if.then14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #11, !dbg !5977
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup50 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end48, !dbg !5978

if.else:                                          ; preds = %entry
  %coerce.dive18 = getelementptr inbounds %struct.pte_t, ptr %ptent, i32 0, i32 0, !dbg !5979
  %9 = load i64, ptr %coerce.dive18, align 8, !dbg !5979
  %call19 = call i32 @is_swap_pte(i64 %9) #12, !dbg !5979
  %tobool20 = icmp ne i32 %call19, 0, !dbg !5979
  br i1 %tobool20, label %if.then21, label %if.else39, !dbg !5980

if.then21:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry22) #11, !dbg !5981
  call void @llvm.dbg.declare(metadata ptr %entry22, metadata !5947, metadata !DIExpression()), !dbg !5982
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp23) #11, !dbg !5983
  %coerce.dive24 = getelementptr inbounds %struct.pte_t, ptr %ptent, i32 0, i32 0, !dbg !5983
  %10 = load i64, ptr %coerce.dive24, align 8, !dbg !5983
  %call25 = call i64 @pte_to_swp_entry(i64 %10) #12, !dbg !5983
  %coerce.dive26 = getelementptr inbounds %struct.swp_entry_t, ptr %tmp23, i32 0, i32 0, !dbg !5983
  store i64 %call25, ptr %coerce.dive26, align 8, !dbg !5983
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %entry22, ptr align 8 %tmp23, i64 8, i1 false), !dbg !5983
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp23) #11, !dbg !5983
  %coerce.dive27 = getelementptr inbounds %struct.swp_entry_t, ptr %entry22, i32 0, i32 0, !dbg !5984
  %11 = load i64, ptr %coerce.dive27, align 8, !dbg !5984
  %call28 = call zeroext i1 @is_device_private_entry(i64 %11) #12, !dbg !5984
  br i1 %call28, label %if.end33, label %land.lhs.true29, !dbg !5986

land.lhs.true29:                                  ; preds = %if.then21
  %coerce.dive30 = getelementptr inbounds %struct.swp_entry_t, ptr %entry22, i32 0, i32 0, !dbg !5987
  %12 = load i64, ptr %coerce.dive30, align 8, !dbg !5987
  %call31 = call zeroext i1 @is_device_exclusive_entry(i64 %12) #12, !dbg !5987
  br i1 %call31, label %if.end33, label %if.then32, !dbg !5988

if.then32:                                        ; preds = %land.lhs.true29
  store i1 false, ptr %retval, align 1, !dbg !5989
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup36, !dbg !5989

if.end33:                                         ; preds = %land.lhs.true29, %if.then21
  %coerce.dive34 = getelementptr inbounds %struct.swp_entry_t, ptr %entry22, i32 0, i32 0, !dbg !5990
  %13 = load i64, ptr %coerce.dive34, align 8, !dbg !5990
  %call35 = call i64 @swp_offset_pfn(i64 %13) #12, !dbg !5990
  store i64 %call35, ptr %pfn, align 8, !dbg !5991
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5992
  br label %cleanup36, !dbg !5992

cleanup36:                                        ; preds = %if.end33, %if.then32
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry22) #11, !dbg !5992
  %cleanup.dest37 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest37, label %cleanup50 [
    i32 0, label %cleanup.cont38
  ]

cleanup.cont38:                                   ; preds = %cleanup36
  br label %if.end47, !dbg !5993

if.else39:                                        ; preds = %if.else
  %coerce.dive40 = getelementptr inbounds %struct.pte_t, ptr %ptent, i32 0, i32 0, !dbg !5994
  %14 = load i64, ptr %coerce.dive40, align 8, !dbg !5994
  %call41 = call i32 @pte_present(i64 %14) #12, !dbg !5994
  %tobool42 = icmp ne i32 %call41, 0, !dbg !5994
  br i1 %tobool42, label %if.end44, label %if.then43, !dbg !5997

if.then43:                                        ; preds = %if.else39
  store i1 false, ptr %retval, align 1, !dbg !5998
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup50, !dbg !5998

if.end44:                                         ; preds = %if.else39
  %coerce.dive45 = getelementptr inbounds %struct.pte_t, ptr %ptent, i32 0, i32 0, !dbg !5999
  %15 = load i64, ptr %coerce.dive45, align 8, !dbg !5999
  %call46 = call i64 @pte_pfn(i64 %15) #12, !dbg !5999
  store i64 %call46, ptr %pfn, align 8, !dbg !6000
  br label %if.end47

if.end47:                                         ; preds = %if.end44, %cleanup.cont38
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %cleanup.cont
  %16 = load i64, ptr %pfn, align 8, !dbg !6001
  %17 = load ptr, ptr %pvmw.addr, align 8, !dbg !6002
  %pfn49 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %17, i32 0, i32 0, !dbg !6003
  %18 = load i64, ptr %pfn49, align 8, !dbg !6003
  %sub = sub i64 %16, %18, !dbg !6004
  %19 = load ptr, ptr %pvmw.addr, align 8, !dbg !6005
  %nr_pages = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %19, i32 0, i32 1, !dbg !6006
  %20 = load i64, ptr %nr_pages, align 8, !dbg !6006
  %cmp = icmp ult i64 %sub, %20, !dbg !6007
  store i1 %cmp, ptr %retval, align 1, !dbg !6008
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup50, !dbg !6008

cleanup50:                                        ; preds = %if.end48, %if.then43, %cleanup36, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptent) #11, !dbg !6009
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfn) #11, !dbg !6009
  %21 = load i1, ptr %retval, align 1, !dbg !6009
  ret i1 %21, !dbg !6009
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @vma_address_end(ptr noundef %pvmw) #3 align 16 !dbg !6010 {
entry:
  %retval = alloca i64, align 8
  %pvmw.addr = alloca ptr, align 8
  %vma = alloca ptr, align 8
  %pgoff = alloca i64, align 8
  %address = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pvmw, ptr %pvmw.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pvmw.addr, metadata !6014, metadata !DIExpression()), !dbg !6018
  call void @llvm.lifetime.start.p0(i64 8, ptr %vma) #11, !dbg !6019
  call void @llvm.dbg.declare(metadata ptr %vma, metadata !6015, metadata !DIExpression()), !dbg !6020
  %0 = load ptr, ptr %pvmw.addr, align 8, !dbg !6021
  %vma1 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %0, i32 0, i32 3, !dbg !6022
  %1 = load ptr, ptr %vma1, align 8, !dbg !6022
  store ptr %1, ptr %vma, align 8, !dbg !6020
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgoff) #11, !dbg !6023
  call void @llvm.dbg.declare(metadata ptr %pgoff, metadata !6016, metadata !DIExpression()), !dbg !6024
  call void @llvm.lifetime.start.p0(i64 8, ptr %address) #11, !dbg !6025
  call void @llvm.dbg.declare(metadata ptr %address, metadata !6017, metadata !DIExpression()), !dbg !6026
  %2 = load ptr, ptr %pvmw.addr, align 8, !dbg !6027
  %nr_pages = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %2, i32 0, i32 1, !dbg !6029
  %3 = load i64, ptr %nr_pages, align 8, !dbg !6029
  %cmp = icmp eq i64 %3, 1, !dbg !6030
  br i1 %cmp, label %if.then, label %if.end, !dbg !6031

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pvmw.addr, align 8, !dbg !6032
  %address2 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %4, i32 0, i32 4, !dbg !6033
  %5 = load i64, ptr %address2, align 8, !dbg !6033
  %add = add i64 %5, 4096, !dbg !6034
  store i64 %add, ptr %retval, align 8, !dbg !6035
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6035

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %pvmw.addr, align 8, !dbg !6036
  %pgoff3 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %6, i32 0, i32 2, !dbg !6037
  %7 = load i64, ptr %pgoff3, align 8, !dbg !6037
  %8 = load ptr, ptr %pvmw.addr, align 8, !dbg !6038
  %nr_pages4 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %8, i32 0, i32 1, !dbg !6039
  %9 = load i64, ptr %nr_pages4, align 8, !dbg !6039
  %add5 = add i64 %7, %9, !dbg !6040
  store i64 %add5, ptr %pgoff, align 8, !dbg !6041
  %10 = load ptr, ptr %vma, align 8, !dbg !6042
  %11 = getelementptr inbounds %struct.vm_area_struct, ptr %10, i32 0, i32 0, !dbg !6043
  %vm_start = getelementptr inbounds %struct.anon.14, ptr %11, i32 0, i32 0, !dbg !6043
  %12 = load i64, ptr %vm_start, align 8, !dbg !6043
  %13 = load i64, ptr %pgoff, align 8, !dbg !6044
  %14 = load ptr, ptr %vma, align 8, !dbg !6045
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %14, i32 0, i32 11, !dbg !6046
  %15 = load i64, ptr %vm_pgoff, align 8, !dbg !6046
  %sub = sub i64 %13, %15, !dbg !6047
  %shl = shl i64 %sub, 12, !dbg !6048
  %add6 = add i64 %12, %shl, !dbg !6049
  store i64 %add6, ptr %address, align 8, !dbg !6050
  %16 = load i64, ptr %address, align 8, !dbg !6051
  %17 = load ptr, ptr %vma, align 8, !dbg !6053
  %18 = getelementptr inbounds %struct.vm_area_struct, ptr %17, i32 0, i32 0, !dbg !6054
  %vm_start7 = getelementptr inbounds %struct.anon.14, ptr %18, i32 0, i32 0, !dbg !6054
  %19 = load i64, ptr %vm_start7, align 8, !dbg !6054
  %cmp8 = icmp ult i64 %16, %19, !dbg !6055
  br i1 %cmp8, label %if.then10, label %lor.lhs.false, !dbg !6056

lor.lhs.false:                                    ; preds = %if.end
  %20 = load i64, ptr %address, align 8, !dbg !6057
  %21 = load ptr, ptr %vma, align 8, !dbg !6058
  %22 = getelementptr inbounds %struct.vm_area_struct, ptr %21, i32 0, i32 0, !dbg !6059
  %vm_end = getelementptr inbounds %struct.anon.14, ptr %22, i32 0, i32 1, !dbg !6059
  %23 = load i64, ptr %vm_end, align 8, !dbg !6059
  %cmp9 = icmp ugt i64 %20, %23, !dbg !6060
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !6061

if.then10:                                        ; preds = %lor.lhs.false, %if.end
  %24 = load ptr, ptr %vma, align 8, !dbg !6062
  %25 = getelementptr inbounds %struct.vm_area_struct, ptr %24, i32 0, i32 0, !dbg !6063
  %vm_end11 = getelementptr inbounds %struct.anon.14, ptr %25, i32 0, i32 1, !dbg !6063
  %26 = load i64, ptr %vm_end11, align 8, !dbg !6063
  store i64 %26, ptr %address, align 8, !dbg !6064
  br label %if.end12, !dbg !6065

if.end12:                                         ; preds = %if.then10, %lor.lhs.false
  %27 = load i64, ptr %address, align 8, !dbg !6066
  store i64 %27, ptr %retval, align 8, !dbg !6067
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6067

cleanup:                                          ; preds = %if.end12, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %address) #11, !dbg !6068
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgoff) #11, !dbg !6068
  call void @llvm.lifetime.end.p0(i64 8, ptr %vma) #11, !dbg !6068
  %28 = load i64, ptr %retval, align 8, !dbg !6068
  ret i64 %28, !dbg !6068
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pgd_offset_pgd(ptr noundef %pgd, i64 noundef %address) #3 align 16 !dbg !6069 {
entry:
  %pgd.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  store ptr %pgd, ptr %pgd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd.addr, metadata !6074, metadata !DIExpression()), !dbg !6076
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !6075, metadata !DIExpression()), !dbg !6077
  %0 = load ptr, ptr %pgd.addr, align 8, !dbg !6078
  %1 = load i64, ptr %address.addr, align 8, !dbg !6079
  %2 = load i32, ptr @pgdir_shift, align 4, !dbg !6079
  %sh_prom = zext i32 %2 to i64, !dbg !6079
  %shr = lshr i64 %1, %sh_prom, !dbg !6079
  %and = and i64 %shr, 511, !dbg !6079
  %add.ptr = getelementptr %struct.pgd_t, ptr %0, i64 %and, !dbg !6080
  ret ptr %add.ptr, !dbg !6081
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pgd_present(i64 %pgd.coerce) #3 align 16 !dbg !6082 {
entry:
  %retval = alloca i32, align 4
  %pgd = alloca %struct.pgd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !6087, metadata !DIExpression()), !dbg !6088
  br i1 false, label %cond.true, label %cond.false, !dbg !6089

cond.true:                                        ; preds = %entry
  br i1 false, label %if.end, label %if.then, !dbg !6090

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false4, !dbg !6089

cond.true1:                                       ; preds = %cond.false
  br i1 false, label %cond.true2, label %cond.false3, !dbg !6090

cond.true2:                                       ; preds = %cond.true1
  br i1 true, label %if.end, label %if.then, !dbg !6090

cond.false3:                                      ; preds = %cond.true1
  %call = call zeroext i1 @arch_test_bit(i64 noundef 528, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #12, !dbg !6090
  br i1 %call, label %if.end, label %if.then, !dbg !6090

cond.false4:                                      ; preds = %cond.false
  %call5 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #12, !dbg !6090
  br i1 %call5, label %if.end, label %if.then, !dbg !6089

if.then:                                          ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  store i32 1, ptr %retval, align 4, !dbg !6092
  br label %return, !dbg !6092

if.end:                                           ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  %coerce.dive6 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !6093
  %0 = load i64, ptr %coerce.dive6, align 8, !dbg !6093
  %call7 = call i64 @pgd_flags(i64 %0) #12, !dbg !6093
  %and = and i64 %call7, 1, !dbg !6094
  %conv = trunc i64 %and to i32, !dbg !6093
  store i32 %conv, ptr %retval, align 4, !dbg !6095
  br label %return, !dbg !6095

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, ptr %retval, align 4, !dbg !6096
  ret i32 %1, !dbg !6096
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @step_forward(ptr noundef %pvmw, i64 noundef %size) #0 align 16 !dbg !6097 {
entry:
  %pvmw.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %pvmw, ptr %pvmw.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pvmw.addr, metadata !6101, metadata !DIExpression()), !dbg !6103
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6102, metadata !DIExpression()), !dbg !6104
  %0 = load ptr, ptr %pvmw.addr, align 8, !dbg !6105
  %address = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %0, i32 0, i32 4, !dbg !6106
  %1 = load i64, ptr %address, align 8, !dbg !6106
  %2 = load i64, ptr %size.addr, align 8, !dbg !6107
  %add = add i64 %1, %2, !dbg !6108
  %3 = load i64, ptr %size.addr, align 8, !dbg !6109
  %sub = sub i64 %3, 1, !dbg !6110
  %not = xor i64 %sub, -1, !dbg !6111
  %and = and i64 %add, %not, !dbg !6112
  %4 = load ptr, ptr %pvmw.addr, align 8, !dbg !6113
  %address1 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %4, i32 0, i32 4, !dbg !6114
  store i64 %and, ptr %address1, align 8, !dbg !6115
  %5 = load ptr, ptr %pvmw.addr, align 8, !dbg !6116
  %address2 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %5, i32 0, i32 4, !dbg !6118
  %6 = load i64, ptr %address2, align 8, !dbg !6118
  %tobool = icmp ne i64 %6, 0, !dbg !6116
  br i1 %tobool, label %if.end, label %if.then, !dbg !6119

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %pvmw.addr, align 8, !dbg !6120
  %address3 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %7, i32 0, i32 4, !dbg !6121
  store i64 -1, ptr %address3, align 8, !dbg !6122
  br label %if.end, !dbg !6120

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6123
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @p4d_offset(ptr noundef %pgd, i64 noundef %address) #3 align 16 !dbg !6124 {
entry:
  %retval = alloca ptr, align 8
  %pgd.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  store ptr %pgd, ptr %pgd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd.addr, metadata !6128, metadata !DIExpression()), !dbg !6130
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !6129, metadata !DIExpression()), !dbg !6131
  br i1 false, label %cond.true, label %cond.false, !dbg !6132

cond.true:                                        ; preds = %entry
  br i1 false, label %if.end, label %if.then, !dbg !6133

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false4, !dbg !6132

cond.true1:                                       ; preds = %cond.false
  br i1 false, label %cond.true2, label %cond.false3, !dbg !6133

cond.true2:                                       ; preds = %cond.true1
  br i1 true, label %if.end, label %if.then, !dbg !6133

cond.false3:                                      ; preds = %cond.true1
  %call = call zeroext i1 @arch_test_bit(i64 noundef 528, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #12, !dbg !6133
  br i1 %call, label %if.end, label %if.then, !dbg !6133

cond.false4:                                      ; preds = %cond.false
  %call5 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #12, !dbg !6133
  br i1 %call5, label %if.end, label %if.then, !dbg !6132

if.then:                                          ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  %0 = load ptr, ptr %pgd.addr, align 8, !dbg !6135
  store ptr %0, ptr %retval, align 8, !dbg !6136
  br label %return, !dbg !6136

if.end:                                           ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  %1 = load ptr, ptr %pgd.addr, align 8, !dbg !6137
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %1, i32 0, i32 0, !dbg !6138
  %2 = load i64, ptr %coerce.dive, align 8, !dbg !6138
  %call6 = call i64 @pgd_page_vaddr(i64 %2) #12, !dbg !6138
  %3 = inttoptr i64 %call6 to ptr, !dbg !6139
  %4 = load i64, ptr %address.addr, align 8, !dbg !6140
  %call7 = call i64 @p4d_index(i64 noundef %4) #12, !dbg !6141
  %add.ptr = getelementptr %struct.p4d_t, ptr %3, i64 %call7, !dbg !6142
  store ptr %add.ptr, ptr %retval, align 8, !dbg !6143
  br label %return, !dbg !6143

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !6144
  ret ptr %5, !dbg !6144
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @p4d_present(i64 %p4d.coerce) #3 align 16 !dbg !6145 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !6149, metadata !DIExpression()), !dbg !6150
  %coerce.dive1 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !6151
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6151
  %call = call i64 @p4d_flags(i64 %0) #12, !dbg !6151
  %and = and i64 %call, 1, !dbg !6152
  %conv = trunc i64 %and to i32, !dbg !6151
  ret i32 %conv, !dbg !6153
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pud_offset(ptr noundef %p4d, i64 noundef %address) #3 align 16 !dbg !6154 {
entry:
  %p4d.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  store ptr %p4d, ptr %p4d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d.addr, metadata !6158, metadata !DIExpression()), !dbg !6160
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !6159, metadata !DIExpression()), !dbg !6161
  %0 = load ptr, ptr %p4d.addr, align 8, !dbg !6162
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %0, i32 0, i32 0, !dbg !6163
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !6163
  %call = call ptr @p4d_pgtable(i64 %1) #12, !dbg !6163
  %2 = load i64, ptr %address.addr, align 8, !dbg !6164
  %call1 = call i64 @pud_index(i64 noundef %2) #12, !dbg !6165
  %add.ptr = getelementptr %struct.pud_t, ptr %call, i64 %call1, !dbg !6166
  ret ptr %add.ptr, !dbg !6167
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pud_present(i64 %pud.coerce) #3 align 16 !dbg !6168 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !6172, metadata !DIExpression()), !dbg !6173
  %coerce.dive1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !6174
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6174
  %call = call i64 @pud_flags(i64 %0) #12, !dbg !6174
  %and = and i64 %call, 1, !dbg !6175
  %conv = trunc i64 %and to i32, !dbg !6174
  ret i32 %conv, !dbg !6176
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pmd_offset(ptr noundef %pud, i64 noundef %address) #3 align 16 !dbg !6177 {
entry:
  %pud.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  store ptr %pud, ptr %pud.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pud.addr, metadata !6181, metadata !DIExpression()), !dbg !6183
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !6182, metadata !DIExpression()), !dbg !6184
  %0 = load ptr, ptr %pud.addr, align 8, !dbg !6185
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %0, i32 0, i32 0, !dbg !6186
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !6186
  %call = call ptr @pud_pgtable(i64 %1) #12, !dbg !6186
  %2 = load i64, ptr %address.addr, align 8, !dbg !6187
  %call1 = call i64 @pmd_index(i64 noundef %2) #12, !dbg !6188
  %add.ptr = getelementptr %struct.pmd_t, ptr %call, i64 %call1, !dbg !6189
  ret ptr %add.ptr, !dbg !6190
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmdp_get_lockless(ptr noundef %pmdp) #3 align 16 !dbg !6191 {
entry:
  %retval = alloca %struct.pmd_t, align 8
  %pmdp.addr = alloca ptr, align 8
  store ptr %pmdp, ptr %pmdp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmdp.addr, metadata !6195, metadata !DIExpression()), !dbg !6196
  %0 = load ptr, ptr %pmdp.addr, align 8, !dbg !6197
  %call = call i64 @pmdp_get(ptr noundef %0) #12, !dbg !6198
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %retval, i32 0, i32 0, !dbg !6198
  store i64 %call, ptr %coerce.dive, align 8, !dbg !6198
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %retval, i32 0, i32 0, !dbg !6199
  %1 = load i64, ptr %coerce.dive1, align 8, !dbg !6199
  ret i64 %1, !dbg !6199
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pmd_trans_huge(i64 %pmd.coerce) #3 align 16 !dbg !6200 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !6204, metadata !DIExpression()), !dbg !6205
  ret i32 0, !dbg !6206
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @is_pmd_migration_entry(i64 %pmd.coerce) #3 align 16 !dbg !6207 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !6210, metadata !DIExpression()), !dbg !6211
  ret i32 0, !dbg !6212
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pmd_present(i64 %pmd.coerce) #3 align 16 !dbg !6213 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !6215, metadata !DIExpression()), !dbg !6216
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !6217
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6217
  %call = call i64 @pmd_flags(i64 %0) #12, !dbg !6217
  %and = and i64 %call, 385, !dbg !6218
  %conv = trunc i64 %and to i32, !dbg !6217
  ret i32 %conv, !dbg !6219
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pmd_devmap(i64 %pmd.coerce) #3 align 16 !dbg !6220 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !6222, metadata !DIExpression()), !dbg !6223
  ret i32 0, !dbg !6224
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pmd_lock(ptr noundef %mm, ptr noundef %pmd) #3 align 16 !dbg !6225 {
entry:
  %mm.addr = alloca ptr, align 8
  %pmd.addr = alloca ptr, align 8
  %ptl = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6229, metadata !DIExpression()), !dbg !6232
  store ptr %pmd, ptr %pmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd.addr, metadata !6230, metadata !DIExpression()), !dbg !6233
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptl) #11, !dbg !6234
  call void @llvm.dbg.declare(metadata ptr %ptl, metadata !6231, metadata !DIExpression()), !dbg !6235
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !6236
  %1 = load ptr, ptr %pmd.addr, align 8, !dbg !6237
  %call = call ptr @pmd_lockptr(ptr noundef %0, ptr noundef %1) #12, !dbg !6238
  store ptr %call, ptr %ptl, align 8, !dbg !6235
  %2 = load ptr, ptr %ptl, align 8, !dbg !6239
  call void @spin_lock(ptr noundef %2) #12, !dbg !6240
  %3 = load ptr, ptr %ptl, align 8, !dbg !6241
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptl) #11, !dbg !6242
  ret ptr %3, !dbg !6243
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @thp_migration_supported() #3 align 16 !dbg !6244 {
entry:
  ret i1 false, !dbg !6246
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmd_to_swp_entry(i64 %pmd.coerce) #3 align 16 !dbg !6247 {
entry:
  %retval = alloca %struct.swp_entry_t, align 8
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !6251, metadata !DIExpression()), !dbg !6252
  %call = call i64 @swp_entry(i64 noundef 0, i64 noundef 0) #12, !dbg !6253
  %coerce.dive1 = getelementptr inbounds %struct.swp_entry_t, ptr %retval, i32 0, i32 0, !dbg !6253
  store i64 %call, ptr %coerce.dive1, align 8, !dbg !6253
  %coerce.dive2 = getelementptr inbounds %struct.swp_entry_t, ptr %retval, i32 0, i32 0, !dbg !6254
  %0 = load i64, ptr %coerce.dive2, align 8, !dbg !6254
  ret i64 %0, !dbg !6254
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @is_migration_entry(i64 %entry.coerce) #3 align 16 !dbg !6255 {
entry:
  %entry2 = alloca %struct.swp_entry_t, align 8
  %coerce.dive = getelementptr inbounds %struct.swp_entry_t, ptr %entry2, i32 0, i32 0
  store i64 %entry.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %entry2, metadata !6259, metadata !DIExpression()), !dbg !6260
  %coerce.dive3 = getelementptr inbounds %struct.swp_entry_t, ptr %entry2, i32 0, i32 0, !dbg !6261
  %0 = load i64, ptr %coerce.dive3, align 8, !dbg !6261
  %call = call i32 @swp_type(i64 %0) #12, !dbg !6261
  %cmp = icmp eq i32 %call, 28, !dbg !6261
  br i1 %cmp, label %lor.end, label %lor.lhs.false, !dbg !6261

lor.lhs.false:                                    ; preds = %entry
  %coerce.dive4 = getelementptr inbounds %struct.swp_entry_t, ptr %entry2, i32 0, i32 0, !dbg !6261
  %1 = load i64, ptr %coerce.dive4, align 8, !dbg !6261
  %call5 = call i32 @swp_type(i64 %1) #12, !dbg !6261
  %cmp6 = icmp eq i32 %call5, 29, !dbg !6261
  br i1 %cmp6, label %lor.end, label %lor.rhs, !dbg !6261

lor.rhs:                                          ; preds = %lor.lhs.false
  %coerce.dive7 = getelementptr inbounds %struct.swp_entry_t, ptr %entry2, i32 0, i32 0, !dbg !6261
  %2 = load i64, ptr %coerce.dive7, align 8, !dbg !6261
  %call8 = call i32 @swp_type(i64 %2) #12, !dbg !6261
  %cmp9 = icmp eq i32 %call8, 30, !dbg !6261
  br label %lor.end, !dbg !6261

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %3 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp9, %lor.rhs ]
  %lnot = xor i1 %3, true, !dbg !6261
  %lnot10 = xor i1 %lnot, true, !dbg !6261
  %lnot.ext = zext i1 %lnot10 to i32, !dbg !6261
  %conv = sext i32 %lnot.ext to i64, !dbg !6261
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6261
  %conv11 = trunc i64 %expval to i32, !dbg !6261
  ret i32 %conv11, !dbg !6262
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_pmd(i64 noundef %pfn, ptr noundef %pvmw) #0 align 16 !dbg !6263 {
entry:
  %retval = alloca i1, align 1
  %pfn.addr = alloca i64, align 8
  %pvmw.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store i64 %pfn, ptr %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn.addr, metadata !6267, metadata !DIExpression()), !dbg !6269
  store ptr %pvmw, ptr %pvmw.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pvmw.addr, metadata !6268, metadata !DIExpression()), !dbg !6270
  %0 = load i64, ptr %pfn.addr, align 8, !dbg !6271
  br label %do.body, !dbg !6273

do.body:                                          ; preds = %entry
  call void @__compiletime_assert_336() #13, !dbg !6275, !srcloc !6278
  unreachable, !dbg !6275

do.end:                                           ; No predecessors!
  store i32 0, ptr %tmp, align 4, !dbg !6279
  %1 = load i32, ptr %tmp, align 4, !dbg !6273
  %sub = sub i32 %1, 12, !dbg !6280
  %shl = shl i32 1, %sub, !dbg !6280
  %conv = sext i32 %shl to i64, !dbg !6280
  %add = add i64 %0, %conv, !dbg !6281
  %sub1 = sub i64 %add, 1, !dbg !6282
  %2 = load ptr, ptr %pvmw.addr, align 8, !dbg !6283
  %pfn2 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %2, i32 0, i32 0, !dbg !6284
  %3 = load i64, ptr %pfn2, align 8, !dbg !6284
  %cmp = icmp ult i64 %sub1, %3, !dbg !6285
  br i1 %cmp, label %if.then, label %if.end, !dbg !6286

if.then:                                          ; preds = %do.end
  store i1 false, ptr %retval, align 1, !dbg !6287
  br label %return, !dbg !6287

if.end:                                           ; preds = %do.end
  %4 = load i64, ptr %pfn.addr, align 8, !dbg !6288
  %5 = load ptr, ptr %pvmw.addr, align 8, !dbg !6290
  %pfn4 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %5, i32 0, i32 0, !dbg !6291
  %6 = load i64, ptr %pfn4, align 8, !dbg !6291
  %7 = load ptr, ptr %pvmw.addr, align 8, !dbg !6292
  %nr_pages = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %7, i32 0, i32 1, !dbg !6293
  %8 = load i64, ptr %nr_pages, align 8, !dbg !6293
  %add5 = add i64 %6, %8, !dbg !6294
  %sub6 = sub i64 %add5, 1, !dbg !6295
  %cmp7 = icmp ugt i64 %4, %sub6, !dbg !6296
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !6297

if.then9:                                         ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !6298
  br label %return, !dbg !6298

if.end10:                                         ; preds = %if.end
  store i1 true, ptr %retval, align 1, !dbg !6299
  br label %return, !dbg !6299

return:                                           ; preds = %if.end10, %if.then9, %if.then
  %9 = load i1, ptr %retval, align 1, !dbg !6300
  ret i1 %9, !dbg !6300
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @swp_offset_pfn(i64 %entry.coerce) #3 align 16 !dbg !6301 {
entry:
  %entry2 = alloca %struct.swp_entry_t, align 8
  %coerce.dive = getelementptr inbounds %struct.swp_entry_t, ptr %entry2, i32 0, i32 0
  store i64 %entry.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %entry2, metadata !6305, metadata !DIExpression()), !dbg !6306
  %coerce.dive3 = getelementptr inbounds %struct.swp_entry_t, ptr %entry2, i32 0, i32 0, !dbg !6307
  %0 = load i64, ptr %coerce.dive3, align 8, !dbg !6307
  %call = call i64 @swp_offset(i64 %0) #12, !dbg !6307
  %call4 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #12, !dbg !6308
  %1 = zext i1 %call4 to i64, !dbg !6308
  %cond = select i1 %call4, i32 52, i32 46, !dbg !6308
  %sub = sub i32 %cond, 12, !dbg !6308
  %sh_prom = zext i32 %sub to i64, !dbg !6308
  %shl = shl i64 1, %sh_prom, !dbg !6308
  %sub5 = sub i64 %shl, 1, !dbg !6308
  %and = and i64 %call, %sub5, !dbg !6309
  ret i64 %and, !dbg !6310
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmd_pfn(i64 %pmd.coerce) #3 align 16 !dbg !6311 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %pfn = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !6315, metadata !DIExpression()), !dbg !6317
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfn) #11, !dbg !6318
  call void @llvm.dbg.declare(metadata ptr %pfn, metadata !6316, metadata !DIExpression()), !dbg !6319
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !6320
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6320
  %call = call i64 @native_pmd_val(i64 %0) #12, !dbg !6320
  store i64 %call, ptr %pfn, align 8, !dbg !6319
  %1 = load i64, ptr %pfn, align 8, !dbg !6321
  %call2 = call i64 @protnone_mask(i64 noundef %1) #12, !dbg !6322
  %2 = load i64, ptr %pfn, align 8, !dbg !6323
  %xor = xor i64 %2, %call2, !dbg !6323
  store i64 %xor, ptr %pfn, align 8, !dbg !6323
  %3 = load i64, ptr %pfn, align 8, !dbg !6324
  %coerce.dive3 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !6325
  %4 = load i64, ptr %coerce.dive3, align 8, !dbg !6325
  %call4 = call i64 @pmd_pfn_mask(i64 %4) #12, !dbg !6325
  %and = and i64 %3, %call4, !dbg !6326
  %shr = lshr i64 %and, 12, !dbg !6327
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfn) #11, !dbg !6328
  ret i64 %shr, !dbg !6329
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #6 align 16 !dbg !6330 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6335, metadata !DIExpression()), !dbg !6336
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6337
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6337
  call void @_raw_spin_unlock(ptr noundef %1) #12, !dbg !6337
  ret void, !dbg !6338
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @transhuge_vma_suitable(ptr noundef %vma, i64 noundef %addr) #3 align 16 !dbg !6339 {
entry:
  %vma.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !6343, metadata !DIExpression()), !dbg !6345
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6344, metadata !DIExpression()), !dbg !6346
  ret i1 false, !dbg !6347
}

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6348 dso_local void @__compiletime_assert_337() #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @map_pte(ptr noundef %pvmw, ptr noundef %ptlp) #0 align 16 !dbg !6349 {
entry:
  %retval = alloca i1, align 1
  %pvmw.addr = alloca ptr, align 8
  %ptlp.addr = alloca ptr, align 8
  %ptent = alloca %struct.pte_t, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca %struct.pte_t, align 8
  %entry30 = alloca %struct.swp_entry_t, align 8
  %tmp31 = alloca %struct.swp_entry_t, align 8
  store ptr %pvmw, ptr %pvmw.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pvmw.addr, metadata !6354, metadata !DIExpression()), !dbg !6361
  store ptr %ptlp, ptr %ptlp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptlp.addr, metadata !6355, metadata !DIExpression()), !dbg !6362
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptent) #11, !dbg !6363
  call void @llvm.dbg.declare(metadata ptr %ptent, metadata !6356, metadata !DIExpression()), !dbg !6364
  %0 = load ptr, ptr %pvmw.addr, align 8, !dbg !6365
  %flags = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %0, i32 0, i32 8, !dbg !6367
  %1 = load i32, ptr %flags, align 8, !dbg !6367
  %and = and i32 %1, 1, !dbg !6368
  %tobool = icmp ne i32 %and, 0, !dbg !6368
  br i1 %tobool, label %if.then, label %if.end, !dbg !6369

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pvmw.addr, align 8, !dbg !6370
  %vma = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %2, i32 0, i32 3, !dbg !6372
  %3 = load ptr, ptr %vma, align 8, !dbg !6372
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 1, !dbg !6373
  %4 = load ptr, ptr %vm_mm, align 8, !dbg !6373
  %5 = load ptr, ptr %pvmw.addr, align 8, !dbg !6374
  %pmd = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %5, i32 0, i32 5, !dbg !6375
  %6 = load ptr, ptr %pmd, align 8, !dbg !6375
  %7 = load ptr, ptr %pvmw.addr, align 8, !dbg !6376
  %address = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %7, i32 0, i32 4, !dbg !6377
  %8 = load i64, ptr %address, align 8, !dbg !6377
  %9 = load ptr, ptr %pvmw.addr, align 8, !dbg !6378
  %ptl = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %9, i32 0, i32 7, !dbg !6379
  %call = call ptr @pte_offset_map_lock(ptr noundef %4, ptr noundef %6, i64 noundef %8, ptr noundef %ptl) #12, !dbg !6380
  %10 = load ptr, ptr %pvmw.addr, align 8, !dbg !6381
  %pte = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %10, i32 0, i32 6, !dbg !6382
  store ptr %call, ptr %pte, align 8, !dbg !6383
  %11 = load ptr, ptr %pvmw.addr, align 8, !dbg !6384
  %ptl1 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %11, i32 0, i32 7, !dbg !6385
  %12 = load ptr, ptr %ptl1, align 8, !dbg !6385
  %13 = load ptr, ptr %ptlp.addr, align 8, !dbg !6386
  store ptr %12, ptr %13, align 8, !dbg !6387
  %14 = load ptr, ptr %pvmw.addr, align 8, !dbg !6388
  %pte2 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %14, i32 0, i32 6, !dbg !6389
  %15 = load ptr, ptr %pte2, align 8, !dbg !6389
  %tobool3 = icmp ne ptr %15, null, !dbg !6390
  %lnot = xor i1 %tobool3, true, !dbg !6390
  %lnot4 = xor i1 %lnot, true, !dbg !6391
  store i1 %lnot4, ptr %retval, align 1, !dbg !6392
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup51, !dbg !6392

if.end:                                           ; preds = %entry
  %16 = load ptr, ptr %pvmw.addr, align 8, !dbg !6393
  %vma5 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %16, i32 0, i32 3, !dbg !6394
  %17 = load ptr, ptr %vma5, align 8, !dbg !6394
  %vm_mm6 = getelementptr inbounds %struct.vm_area_struct, ptr %17, i32 0, i32 1, !dbg !6395
  %18 = load ptr, ptr %vm_mm6, align 8, !dbg !6395
  %19 = load ptr, ptr %pvmw.addr, align 8, !dbg !6396
  %pmd7 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %19, i32 0, i32 5, !dbg !6397
  %20 = load ptr, ptr %pmd7, align 8, !dbg !6397
  %21 = load ptr, ptr %pvmw.addr, align 8, !dbg !6398
  %address8 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %21, i32 0, i32 4, !dbg !6399
  %22 = load i64, ptr %address8, align 8, !dbg !6399
  %23 = load ptr, ptr %ptlp.addr, align 8, !dbg !6400
  %call9 = call ptr @pte_offset_map_nolock(ptr noundef %18, ptr noundef %20, i64 noundef %22, ptr noundef %23) #12, !dbg !6401
  %24 = load ptr, ptr %pvmw.addr, align 8, !dbg !6402
  %pte10 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %24, i32 0, i32 6, !dbg !6403
  store ptr %call9, ptr %pte10, align 8, !dbg !6404
  %25 = load ptr, ptr %pvmw.addr, align 8, !dbg !6405
  %pte11 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %25, i32 0, i32 6, !dbg !6407
  %26 = load ptr, ptr %pte11, align 8, !dbg !6407
  %tobool12 = icmp ne ptr %26, null, !dbg !6405
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !6408

if.then13:                                        ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !6409
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup51, !dbg !6409

if.end14:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #11, !dbg !6410
  %27 = load ptr, ptr %pvmw.addr, align 8, !dbg !6411
  %pte15 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %27, i32 0, i32 6, !dbg !6412
  %28 = load ptr, ptr %pte15, align 8, !dbg !6412
  %call16 = call i64 @ptep_get(ptr noundef %28) #12, !dbg !6410
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %tmp, i32 0, i32 0, !dbg !6410
  store i64 %call16, ptr %coerce.dive, align 8, !dbg !6410
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %ptent, ptr align 8 %tmp, i64 8, i1 false), !dbg !6410
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #11, !dbg !6410
  %29 = load ptr, ptr %pvmw.addr, align 8, !dbg !6413
  %flags17 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %29, i32 0, i32 8, !dbg !6414
  %30 = load i32, ptr %flags17, align 8, !dbg !6414
  %and18 = and i32 %30, 2, !dbg !6415
  %tobool19 = icmp ne i32 %and18, 0, !dbg !6415
  br i1 %tobool19, label %if.then20, label %if.else, !dbg !6416

if.then20:                                        ; preds = %if.end14
  %coerce.dive21 = getelementptr inbounds %struct.pte_t, ptr %ptent, i32 0, i32 0, !dbg !6417
  %31 = load i64, ptr %coerce.dive21, align 8, !dbg !6417
  %call22 = call i32 @is_swap_pte(i64 %31) #12, !dbg !6417
  %tobool23 = icmp ne i32 %call22, 0, !dbg !6417
  br i1 %tobool23, label %if.end25, label %if.then24, !dbg !6420

if.then24:                                        ; preds = %if.then20
  store i1 false, ptr %retval, align 1, !dbg !6421
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup51, !dbg !6421

if.end25:                                         ; preds = %if.then20
  br label %if.end48, !dbg !6422

if.else:                                          ; preds = %if.end14
  %coerce.dive26 = getelementptr inbounds %struct.pte_t, ptr %ptent, i32 0, i32 0, !dbg !6423
  %32 = load i64, ptr %coerce.dive26, align 8, !dbg !6423
  %call27 = call i32 @is_swap_pte(i64 %32) #12, !dbg !6423
  %tobool28 = icmp ne i32 %call27, 0, !dbg !6423
  br i1 %tobool28, label %if.then29, label %if.else41, !dbg !6424

if.then29:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry30) #11, !dbg !6425
  call void @llvm.dbg.declare(metadata ptr %entry30, metadata !6357, metadata !DIExpression()), !dbg !6426
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp31) #11, !dbg !6427
  %coerce.dive32 = getelementptr inbounds %struct.pte_t, ptr %ptent, i32 0, i32 0, !dbg !6427
  %33 = load i64, ptr %coerce.dive32, align 8, !dbg !6427
  %call33 = call i64 @pte_to_swp_entry(i64 %33) #12, !dbg !6427
  %coerce.dive34 = getelementptr inbounds %struct.swp_entry_t, ptr %tmp31, i32 0, i32 0, !dbg !6427
  store i64 %call33, ptr %coerce.dive34, align 8, !dbg !6427
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %entry30, ptr align 8 %tmp31, i64 8, i1 false), !dbg !6427
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp31) #11, !dbg !6427
  %coerce.dive35 = getelementptr inbounds %struct.swp_entry_t, ptr %entry30, i32 0, i32 0, !dbg !6428
  %34 = load i64, ptr %coerce.dive35, align 8, !dbg !6428
  %call36 = call zeroext i1 @is_device_private_entry(i64 %34) #12, !dbg !6428
  br i1 %call36, label %if.end40, label %land.lhs.true, !dbg !6430

land.lhs.true:                                    ; preds = %if.then29
  %coerce.dive37 = getelementptr inbounds %struct.swp_entry_t, ptr %entry30, i32 0, i32 0, !dbg !6431
  %35 = load i64, ptr %coerce.dive37, align 8, !dbg !6431
  %call38 = call zeroext i1 @is_device_exclusive_entry(i64 %35) #12, !dbg !6431
  br i1 %call38, label %if.end40, label %if.then39, !dbg !6432

if.then39:                                        ; preds = %land.lhs.true
  store i1 false, ptr %retval, align 1, !dbg !6433
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6433

if.end40:                                         ; preds = %land.lhs.true, %if.then29
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6434
  br label %cleanup, !dbg !6434

cleanup:                                          ; preds = %if.end40, %if.then39
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry30) #11, !dbg !6434
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup51 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end47, !dbg !6435

if.else41:                                        ; preds = %if.else
  %coerce.dive42 = getelementptr inbounds %struct.pte_t, ptr %ptent, i32 0, i32 0, !dbg !6436
  %36 = load i64, ptr %coerce.dive42, align 8, !dbg !6436
  %call43 = call i32 @pte_present(i64 %36) #12, !dbg !6436
  %tobool44 = icmp ne i32 %call43, 0, !dbg !6436
  br i1 %tobool44, label %if.end46, label %if.then45, !dbg !6438

if.then45:                                        ; preds = %if.else41
  store i1 false, ptr %retval, align 1, !dbg !6439
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup51, !dbg !6439

if.end46:                                         ; preds = %if.else41
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %cleanup.cont
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end25
  %37 = load ptr, ptr %ptlp.addr, align 8, !dbg !6441
  %38 = load ptr, ptr %37, align 8, !dbg !6442
  %39 = load ptr, ptr %pvmw.addr, align 8, !dbg !6443
  %ptl49 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %39, i32 0, i32 7, !dbg !6444
  store ptr %38, ptr %ptl49, align 8, !dbg !6445
  %40 = load ptr, ptr %pvmw.addr, align 8, !dbg !6446
  %ptl50 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %40, i32 0, i32 7, !dbg !6447
  %41 = load ptr, ptr %ptl50, align 8, !dbg !6447
  call void @spin_lock(ptr noundef %41) #12, !dbg !6448
  store i1 true, ptr %retval, align 1, !dbg !6449
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup51, !dbg !6449

cleanup51:                                        ; preds = %if.end48, %if.then45, %cleanup, %if.then24, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptent) #11, !dbg !6450
  %42 = load i1, ptr %retval, align 1, !dbg !6450
  ret i1 %42, !dbg !6450
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pte_unmap(ptr noundef %pte) #3 align 16 !dbg !6451 {
entry:
  %pte.addr = alloca ptr, align 8
  store ptr %pte, ptr %pte.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pte.addr, metadata !6455, metadata !DIExpression()), !dbg !6456
  call void @rcu_read_unlock() #12, !dbg !6457
  ret void, !dbg !6458
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pte_none(i64 %pte.coerce) #3 align 16 !dbg !6459 {
entry:
  %pte = alloca %struct.pte_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !6463, metadata !DIExpression()), !dbg !6464
  %pte1 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !6465
  %0 = load i64, ptr %pte1, align 8, !dbg !6465
  %and = and i64 %0, -97, !dbg !6466
  %tobool = icmp ne i64 %and, 0, !dbg !6467
  %lnot = xor i1 %tobool, true, !dbg !6467
  %lnot.ext = zext i1 %lnot to i32, !dbg !6467
  ret i32 %lnot.ext, !dbg !6468
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ptep_get(ptr noundef %ptep) #3 align 16 !dbg !6469 {
entry:
  %retval = alloca %struct.pte_t, align 8
  %ptep.addr = alloca ptr, align 8
  store ptr %ptep, ptr %ptep.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptep.addr, metadata !6473, metadata !DIExpression()), !dbg !6474
  br label %do.body, !dbg !6475

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6477

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %ptep.addr, align 8, !dbg !6475
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %0, i64 8, i1 true), !dbg !6475
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !6479
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !6479
  ret i64 %1, !dbg !6479
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #6 align 16 !dbg !6480 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6482, metadata !DIExpression()), !dbg !6483
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6484
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6484
  call void @_raw_spin_lock(ptr noundef %1) #12, !dbg !6484
  ret void, !dbg !6485
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @page_mapped_in_vma(ptr noundef %page, ptr noundef %vma) #0 align 16 !dbg !6486 {
entry:
  %retval = alloca i32, align 4
  %page.addr = alloca ptr, align 8
  %vma.addr = alloca ptr, align 8
  %pvmw = alloca %struct.page_vma_mapped_walk, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6490, metadata !DIExpression()), !dbg !6493
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !6491, metadata !DIExpression()), !dbg !6494
  call void @llvm.lifetime.start.p0(i64 72, ptr %pvmw) #11, !dbg !6495
  call void @llvm.dbg.declare(metadata ptr %pvmw, metadata !6492, metadata !DIExpression()), !dbg !6496
  %pfn = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 0, !dbg !6497
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6498
  %1 = load i64, ptr @vmemmap_base, align 8, !dbg !6498
  %2 = inttoptr i64 %1 to ptr, !dbg !6498
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !6498
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64, !dbg !6498
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !6498
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !6498
  store i64 %sub.ptr.div, ptr %pfn, align 8, !dbg !6497
  %nr_pages = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 1, !dbg !6497
  store i64 1, ptr %nr_pages, align 8, !dbg !6497
  %pgoff = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 2, !dbg !6497
  store i64 0, ptr %pgoff, align 8, !dbg !6497
  %vma1 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 3, !dbg !6497
  %3 = load ptr, ptr %vma.addr, align 8, !dbg !6499
  store ptr %3, ptr %vma1, align 8, !dbg !6497
  %address = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 4, !dbg !6497
  store i64 0, ptr %address, align 8, !dbg !6497
  %pmd = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 5, !dbg !6497
  store ptr null, ptr %pmd, align 8, !dbg !6497
  %pte = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 6, !dbg !6497
  store ptr null, ptr %pte, align 8, !dbg !6497
  %ptl = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 7, !dbg !6497
  store ptr null, ptr %ptl, align 8, !dbg !6497
  %flags = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 8, !dbg !6497
  store i32 1, ptr %flags, align 8, !dbg !6497
  %4 = load ptr, ptr %page.addr, align 8, !dbg !6500
  %5 = load ptr, ptr %vma.addr, align 8, !dbg !6501
  %call = call i64 @vma_address(ptr noundef %4, ptr noundef %5) #12, !dbg !6502
  %address2 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 4, !dbg !6503
  store i64 %call, ptr %address2, align 8, !dbg !6504
  %address3 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 4, !dbg !6505
  %6 = load i64, ptr %address3, align 8, !dbg !6505
  %cmp = icmp eq i64 %6, -14, !dbg !6507
  br i1 %cmp, label %if.then, label %if.end, !dbg !6508

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6509
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6509

if.end:                                           ; preds = %entry
  %call4 = call zeroext i1 @page_vma_mapped_walk(ptr noundef %pvmw) #12, !dbg !6510
  br i1 %call4, label %if.end6, label %if.then5, !dbg !6512

if.then5:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !6513
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6513

if.end6:                                          ; preds = %if.end
  call void @page_vma_mapped_walk_done(ptr noundef %pvmw) #12, !dbg !6514
  store i32 1, ptr %retval, align 4, !dbg !6515
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6515

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 72, ptr %pvmw) #11, !dbg !6516
  %7 = load i32, ptr %retval, align 4, !dbg !6516
  ret i32 %7, !dbg !6516
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @vma_address(ptr noundef %page, ptr noundef %vma) #3 align 16 !dbg !6517 {
entry:
  %page.addr = alloca ptr, align 8
  %vma.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6521, metadata !DIExpression()), !dbg !6523
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !6522, metadata !DIExpression()), !dbg !6524
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6525
  %call = call i64 @page_to_pgoff(ptr noundef %0) #12, !dbg !6526
  %1 = load ptr, ptr %page.addr, align 8, !dbg !6527
  %call1 = call i64 @compound_nr(ptr noundef %1) #12, !dbg !6528
  %2 = load ptr, ptr %vma.addr, align 8, !dbg !6529
  %call2 = call i64 @vma_pgoff_address(i64 noundef %call, i64 noundef %call1, ptr noundef %2) #12, !dbg !6530
  ret i64 %call2, !dbg !6531
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @page_vma_mapped_walk_done(ptr noundef %pvmw) #3 align 16 !dbg !6532 {
entry:
  %pvmw.addr = alloca ptr, align 8
  store ptr %pvmw, ptr %pvmw.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pvmw.addr, metadata !6536, metadata !DIExpression()), !dbg !6537
  %0 = load ptr, ptr %pvmw.addr, align 8, !dbg !6538
  %pte = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %0, i32 0, i32 6, !dbg !6540
  %1 = load ptr, ptr %pte, align 8, !dbg !6540
  %tobool = icmp ne ptr %1, null, !dbg !6538
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6541

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %pvmw.addr, align 8, !dbg !6542
  %vma = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %2, i32 0, i32 3, !dbg !6543
  %3 = load ptr, ptr %vma, align 8, !dbg !6543
  %call = call zeroext i1 @is_vm_hugetlb_page(ptr noundef %3) #12, !dbg !6544
  br i1 %call, label %if.end, label %if.then, !dbg !6545

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %pvmw.addr, align 8, !dbg !6546
  %pte1 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %4, i32 0, i32 6, !dbg !6547
  %5 = load ptr, ptr %pte1, align 8, !dbg !6547
  call void @pte_unmap(ptr noundef %5) #12, !dbg !6548
  br label %if.end, !dbg !6548

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %6 = load ptr, ptr %pvmw.addr, align 8, !dbg !6549
  %ptl = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %6, i32 0, i32 7, !dbg !6551
  %7 = load ptr, ptr %ptl, align 8, !dbg !6551
  %tobool2 = icmp ne ptr %7, null, !dbg !6549
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !6552

if.then3:                                         ; preds = %if.end
  %8 = load ptr, ptr %pvmw.addr, align 8, !dbg !6553
  %ptl4 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %8, i32 0, i32 7, !dbg !6554
  %9 = load ptr, ptr %ptl4, align 8, !dbg !6554
  call void @spin_unlock(ptr noundef %9) #12, !dbg !6555
  br label %if.end5, !dbg !6555

if.end5:                                          ; preds = %if.then3, %if.end
  ret void, !dbg !6556
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @hstate_file(ptr noundef %f) #3 align 16 !dbg !6557 {
entry:
  %f.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !6561, metadata !DIExpression()), !dbg !6562
  %0 = load ptr, ptr %f.addr, align 8, !dbg !6563
  %call = call ptr @file_inode(ptr noundef %0) #12, !dbg !6564
  %call1 = call ptr @hstate_inode(ptr noundef %call) #12, !dbg !6565
  ret ptr %call1, !dbg !6566
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @hstate_inode(ptr noundef %i) #3 align 16 !dbg !6567 {
entry:
  %i.addr = alloca ptr, align 8
  store ptr %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6571, metadata !DIExpression()), !dbg !6572
  %0 = load ptr, ptr %i.addr, align 8, !dbg !6573
  %i_sb = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9, !dbg !6574
  %1 = load ptr, ptr %i_sb, align 8, !dbg !6574
  %call = call ptr @HUGETLBFS_SB(ptr noundef %1) #12, !dbg !6575
  %hstate = getelementptr inbounds %struct.hugetlbfs_sb_info, ptr %call, i32 0, i32 3, !dbg !6576
  %2 = load ptr, ptr %hstate, align 8, !dbg !6576
  ret ptr %2, !dbg !6577
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @file_inode(ptr noundef %f) #3 align 16 !dbg !6578 {
entry:
  %f.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !6582, metadata !DIExpression()), !dbg !6583
  %0 = load ptr, ptr %f.addr, align 8, !dbg !6584
  %f_inode = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 11, !dbg !6585
  %1 = load ptr, ptr %f_inode, align 8, !dbg !6585
  ret ptr %1, !dbg !6586
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @HUGETLBFS_SB(ptr noundef %sb) #3 align 16 !dbg !6587 {
entry:
  %sb.addr = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !6612, metadata !DIExpression()), !dbg !6613
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !6614
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 29, !dbg !6615
  %1 = load ptr, ptr %s_fs_info, align 32, !dbg !6615
  ret ptr %1, !dbg !6616
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6617 dso_local ptr @huge_pte_offset(ptr noundef, i64 noundef, i64 noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @huge_pte_lockptr(ptr noundef %h, ptr noundef %mm, ptr noundef %pte) #3 align 16 !dbg !6620 {
entry:
  %retval = alloca ptr, align 8
  %h.addr = alloca ptr, align 8
  %mm.addr = alloca ptr, align 8
  %pte.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !6622, metadata !DIExpression()), !dbg !6625
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6623, metadata !DIExpression()), !dbg !6626
  store ptr %pte, ptr %pte.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pte.addr, metadata !6624, metadata !DIExpression()), !dbg !6627
  %0 = load ptr, ptr %h.addr, align 8, !dbg !6628
  %call = call i64 @huge_page_size(ptr noundef %0) #12, !dbg !6630
  %cmp = icmp eq i64 %call, 2097152, !dbg !6631
  br i1 %cmp, label %if.then, label %if.end, !dbg !6632

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %mm.addr, align 8, !dbg !6633
  %2 = load ptr, ptr %pte.addr, align 8, !dbg !6634
  %call1 = call ptr @pmd_lockptr(ptr noundef %1, ptr noundef %2) #12, !dbg !6635
  store ptr %call1, ptr %retval, align 8, !dbg !6636
  br label %return, !dbg !6636

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %mm.addr, align 8, !dbg !6637
  %4 = getelementptr inbounds %struct.mm_struct, ptr %3, i32 0, i32 0, !dbg !6638
  %page_table_lock = getelementptr inbounds %struct.anon.17, ptr %4, i32 0, i32 15, !dbg !6638
  store ptr %page_table_lock, ptr %retval, align 8, !dbg !6639
  br label %return, !dbg !6639

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !6640
  ret ptr %5, !dbg !6640
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pmd_lockptr(ptr noundef %mm, ptr noundef %pmd) #3 align 16 !dbg !6641 {
entry:
  %mm.addr = alloca ptr, align 8
  %pmd.addr = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6643, metadata !DIExpression()), !dbg !6645
  store ptr %pmd, ptr %pmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd.addr, metadata !6644, metadata !DIExpression()), !dbg !6646
  %0 = load ptr, ptr %pmd.addr, align 8, !dbg !6647
  %call = call ptr @pmd_ptdesc(ptr noundef %0) #12, !dbg !6648
  %call1 = call ptr @ptlock_ptr(ptr noundef %call) #12, !dbg !6649
  ret ptr %call1, !dbg !6650
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ptlock_ptr(ptr noundef %ptdesc) #3 align 16 !dbg !6651 {
entry:
  %ptdesc.addr = alloca ptr, align 8
  store ptr %ptdesc, ptr %ptdesc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptdesc.addr, metadata !6655, metadata !DIExpression()), !dbg !6656
  %0 = load ptr, ptr %ptdesc.addr, align 8, !dbg !6657
  %1 = getelementptr inbounds %struct.ptdesc, ptr %0, i32 0, i32 4, !dbg !6658
  ret ptr %1, !dbg !6659
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pmd_ptdesc(ptr noundef %pmd) #3 align 16 !dbg !6660 {
entry:
  %pmd.addr = alloca ptr, align 8
  store ptr %pmd, ptr %pmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd.addr, metadata !6664, metadata !DIExpression()), !dbg !6665
  %0 = load ptr, ptr %pmd.addr, align 8, !dbg !6666
  %call = call ptr @pmd_pgtable_page(ptr noundef %0) #12, !dbg !6666
  ret ptr %call, !dbg !6667
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pmd_pgtable_page(ptr noundef %pmd) #3 align 16 !dbg !6668 {
entry:
  %pmd.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  store ptr %pmd, ptr %pmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd.addr, metadata !6672, metadata !DIExpression()), !dbg !6674
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #11, !dbg !6675
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6673, metadata !DIExpression()), !dbg !6676
  store i64 -4096, ptr %mask, align 8, !dbg !6676
  %0 = load i64, ptr @vmemmap_base, align 8, !dbg !6677
  %1 = inttoptr i64 %0 to ptr, !dbg !6677
  %2 = load ptr, ptr %pmd.addr, align 8, !dbg !6677
  %3 = ptrtoint ptr %2 to i64, !dbg !6677
  %4 = load i64, ptr %mask, align 8, !dbg !6677
  %and = and i64 %3, %4, !dbg !6677
  %5 = inttoptr i64 %and to ptr, !dbg !6677
  %6 = ptrtoint ptr %5 to i64, !dbg !6677
  %call = call i64 @__phys_addr_nodebug(i64 noundef %6) #12, !dbg !6677
  %shr = lshr i64 %call, 12, !dbg !6677
  %add.ptr = getelementptr %struct.page, ptr %1, i64 %shr, !dbg !6677
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #11, !dbg !6678
  ret ptr %add.ptr, !dbg !6679
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__phys_addr_nodebug(i64 noundef %x) #6 align 16 !dbg !6680 {
entry:
  %x.addr = alloca i64, align 8
  %y = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !6685, metadata !DIExpression()), !dbg !6687
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #11, !dbg !6688
  call void @llvm.dbg.declare(metadata ptr %y, metadata !6686, metadata !DIExpression()), !dbg !6689
  %0 = load i64, ptr %x.addr, align 8, !dbg !6690
  %sub = sub i64 %0, -2147483648, !dbg !6691
  store i64 %sub, ptr %y, align 8, !dbg !6689
  %1 = load i64, ptr %y, align 8, !dbg !6692
  %2 = load i64, ptr %x.addr, align 8, !dbg !6693
  %3 = load i64, ptr %y, align 8, !dbg !6694
  %cmp = icmp ugt i64 %2, %3, !dbg !6695
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6696

cond.true:                                        ; preds = %entry
  %4 = load i64, ptr @phys_base, align 8, !dbg !6697
  br label %cond.end, !dbg !6696

cond.false:                                       ; preds = %entry
  %5 = load i64, ptr @page_offset_base, align 8, !dbg !6698
  %sub1 = sub i64 -2147483648, %5, !dbg !6699
  br label %cond.end, !dbg !6696

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %sub1, %cond.false ], !dbg !6696
  %add = add i64 %1, %cond, !dbg !6700
  store i64 %add, ptr %x.addr, align 8, !dbg !6701
  %6 = load i64, ptr %x.addr, align 8, !dbg !6702
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #11, !dbg !6703
  ret i64 %6, !dbg !6704
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @is_swap_pte(i64 %pte.coerce) #3 align 16 !dbg !6705 {
entry:
  %pte = alloca %struct.pte_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !6707, metadata !DIExpression()), !dbg !6708
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !6709
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6709
  %call = call i32 @pte_none(i64 %0) #12, !dbg !6709
  %tobool = icmp ne i32 %call, 0, !dbg !6709
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !6710

land.rhs:                                         ; preds = %entry
  %coerce.dive2 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !6711
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !6711
  %call3 = call i32 @pte_present(i64 %1) #12, !dbg !6711
  %tobool4 = icmp ne i32 %call3, 0, !dbg !6712
  %lnot = xor i1 %tobool4, true, !dbg !6712
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ], !dbg !6713
  %land.ext = zext i1 %2 to i32, !dbg !6710
  ret i32 %land.ext, !dbg !6714
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pte_to_swp_entry(i64 %pte.coerce) #3 align 16 !dbg !6715 {
entry:
  %retval = alloca %struct.swp_entry_t, align 8
  %pte = alloca %struct.pte_t, align 8
  %arch_entry = alloca %struct.swp_entry_t, align 8
  %tmp = alloca %struct.pte_t, align 8
  %.compoundliteral = alloca %struct.swp_entry_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !6719, metadata !DIExpression()), !dbg !6721
  call void @llvm.lifetime.start.p0(i64 8, ptr %arch_entry) #11, !dbg !6722
  call void @llvm.dbg.declare(metadata ptr %arch_entry, metadata !6720, metadata !DIExpression()), !dbg !6723
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #11, !dbg !6724
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !6724
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6724
  %call = call i64 @pte_swp_clear_flags(i64 %0) #12, !dbg !6724
  %coerce.dive2 = getelementptr inbounds %struct.pte_t, ptr %tmp, i32 0, i32 0, !dbg !6724
  store i64 %call, ptr %coerce.dive2, align 8, !dbg !6724
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pte, ptr align 8 %tmp, i64 8, i1 false), !dbg !6724
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #11, !dbg !6724
  %val = getelementptr inbounds %struct.swp_entry_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !6725
  %coerce.dive3 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !6725
  %1 = load i64, ptr %coerce.dive3, align 8, !dbg !6725
  %call4 = call i64 @native_pte_val(i64 %1) #12, !dbg !6725
  store i64 %call4, ptr %val, align 8, !dbg !6725
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arch_entry, ptr align 8 %.compoundliteral, i64 8, i1 false), !dbg !6725
  %val5 = getelementptr inbounds %struct.swp_entry_t, ptr %arch_entry, i32 0, i32 0, !dbg !6726
  %2 = load i64, ptr %val5, align 8, !dbg !6726
  %shr = lshr i64 %2, 59, !dbg !6726
  %val6 = getelementptr inbounds %struct.swp_entry_t, ptr %arch_entry, i32 0, i32 0, !dbg !6727
  %3 = load i64, ptr %val6, align 8, !dbg !6727
  %not = xor i64 %3, -1, !dbg !6727
  %shl = shl i64 %not, 5, !dbg !6727
  %shr7 = lshr i64 %shl, 14, !dbg !6727
  %call8 = call i64 @swp_entry(i64 noundef %shr, i64 noundef %shr7) #12, !dbg !6728
  %coerce.dive9 = getelementptr inbounds %struct.swp_entry_t, ptr %retval, i32 0, i32 0, !dbg !6728
  store i64 %call8, ptr %coerce.dive9, align 8, !dbg !6728
  call void @llvm.lifetime.end.p0(i64 8, ptr %arch_entry) #11, !dbg !6729
  %coerce.dive10 = getelementptr inbounds %struct.swp_entry_t, ptr %retval, i32 0, i32 0, !dbg !6729
  %4 = load i64, ptr %coerce.dive10, align 8, !dbg !6729
  ret i64 %4, !dbg !6729
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_device_exclusive_entry(i64 %entry.coerce) #3 align 16 !dbg !6730 {
entry:
  %entry2 = alloca %struct.swp_entry_t, align 8
  %coerce.dive = getelementptr inbounds %struct.swp_entry_t, ptr %entry2, i32 0, i32 0
  store i64 %entry.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %entry2, metadata !6734, metadata !DIExpression()), !dbg !6735
  ret i1 false, !dbg !6736
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_device_private_entry(i64 %entry.coerce) #3 align 16 !dbg !6737 {
entry:
  %entry2 = alloca %struct.swp_entry_t, align 8
  %coerce.dive = getelementptr inbounds %struct.swp_entry_t, ptr %entry2, i32 0, i32 0
  store i64 %entry.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %entry2, metadata !6739, metadata !DIExpression()), !dbg !6740
  ret i1 false, !dbg !6741
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pte_present(i64 %a.coerce) #3 align 16 !dbg !6742 {
entry:
  %a = alloca %struct.pte_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %a, i32 0, i32 0
  store i64 %a.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %a, metadata !6744, metadata !DIExpression()), !dbg !6745
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, ptr %a, i32 0, i32 0, !dbg !6746
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6746
  %call = call i64 @pte_flags(i64 %0) #12, !dbg !6746
  %and = and i64 %call, 257, !dbg !6747
  %conv = trunc i64 %and to i32, !dbg !6746
  ret i32 %conv, !dbg !6748
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pte_pfn(i64 %pte.coerce) #3 align 16 !dbg !6749 {
entry:
  %pte = alloca %struct.pte_t, align 8
  %pfn = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !6753, metadata !DIExpression()), !dbg !6755
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfn) #11, !dbg !6756
  call void @llvm.dbg.declare(metadata ptr %pfn, metadata !6754, metadata !DIExpression()), !dbg !6757
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !6758
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6758
  %call = call i64 @native_pte_val(i64 %0) #12, !dbg !6758
  store i64 %call, ptr %pfn, align 8, !dbg !6757
  %1 = load i64, ptr %pfn, align 8, !dbg !6759
  %call2 = call i64 @protnone_mask(i64 noundef %1) #12, !dbg !6760
  %2 = load i64, ptr %pfn, align 8, !dbg !6761
  %xor = xor i64 %2, %call2, !dbg !6761
  store i64 %xor, ptr %pfn, align 8, !dbg !6761
  %3 = load i64, ptr %pfn, align 8, !dbg !6762
  %and = and i64 %3, 4503599627366400, !dbg !6763
  %shr = lshr i64 %and, 12, !dbg !6764
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfn) #11, !dbg !6765
  ret i64 %shr, !dbg !6766
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pte_swp_clear_flags(i64 %pte.coerce) #3 align 16 !dbg !6767 {
entry:
  %retval = alloca %struct.pte_t, align 8
  %pte = alloca %struct.pte_t, align 8
  %tmp = alloca %struct.pte_t, align 8
  %tmp9 = alloca %struct.pte_t, align 8
  %tmp18 = alloca %struct.pte_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !6771, metadata !DIExpression()), !dbg !6772
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !6773
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6773
  %call = call i32 @pte_swp_exclusive(i64 %0) #12, !dbg !6773
  %tobool = icmp ne i32 %call, 0, !dbg !6773
  br i1 %tobool, label %if.then, label %if.end, !dbg !6775

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #11, !dbg !6776
  %coerce.dive2 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !6776
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !6776
  %call3 = call i64 @pte_swp_clear_exclusive(i64 %1) #12, !dbg !6776
  %coerce.dive4 = getelementptr inbounds %struct.pte_t, ptr %tmp, i32 0, i32 0, !dbg !6776
  store i64 %call3, ptr %coerce.dive4, align 8, !dbg !6776
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pte, ptr align 8 %tmp, i64 8, i1 false), !dbg !6776
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #11, !dbg !6776
  br label %if.end, !dbg !6777

if.end:                                           ; preds = %if.then, %entry
  %coerce.dive5 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !6778
  %2 = load i64, ptr %coerce.dive5, align 8, !dbg !6778
  %call6 = call i32 @pte_swp_soft_dirty(i64 %2) #12, !dbg !6778
  %tobool7 = icmp ne i32 %call6, 0, !dbg !6778
  br i1 %tobool7, label %if.then8, label %if.end13, !dbg !6780

if.then8:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp9) #11, !dbg !6781
  %coerce.dive10 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !6781
  %3 = load i64, ptr %coerce.dive10, align 8, !dbg !6781
  %call11 = call i64 @pte_swp_clear_soft_dirty(i64 %3) #12, !dbg !6781
  %coerce.dive12 = getelementptr inbounds %struct.pte_t, ptr %tmp9, i32 0, i32 0, !dbg !6781
  store i64 %call11, ptr %coerce.dive12, align 8, !dbg !6781
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pte, ptr align 8 %tmp9, i64 8, i1 false), !dbg !6781
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp9) #11, !dbg !6781
  br label %if.end13, !dbg !6782

if.end13:                                         ; preds = %if.then8, %if.end
  %coerce.dive14 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !6783
  %4 = load i64, ptr %coerce.dive14, align 8, !dbg !6783
  %call15 = call i32 @pte_swp_uffd_wp(i64 %4) #12, !dbg !6783
  %tobool16 = icmp ne i32 %call15, 0, !dbg !6783
  br i1 %tobool16, label %if.then17, label %if.end22, !dbg !6785

if.then17:                                        ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp18) #11, !dbg !6786
  %coerce.dive19 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !6786
  %5 = load i64, ptr %coerce.dive19, align 8, !dbg !6786
  %call20 = call i64 @pte_swp_clear_uffd_wp(i64 %5) #12, !dbg !6786
  %coerce.dive21 = getelementptr inbounds %struct.pte_t, ptr %tmp18, i32 0, i32 0, !dbg !6786
  store i64 %call20, ptr %coerce.dive21, align 8, !dbg !6786
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pte, ptr align 8 %tmp18, i64 8, i1 false), !dbg !6786
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp18) #11, !dbg !6786
  br label %if.end22, !dbg !6787

if.end22:                                         ; preds = %if.then17, %if.end13
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %pte, i64 8, i1 false), !dbg !6788
  %coerce.dive23 = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !6789
  %6 = load i64, ptr %coerce.dive23, align 8, !dbg !6789
  ret i64 %6, !dbg !6789
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_pte_val(i64 %pte.coerce) #3 align 16 !dbg !6790 {
entry:
  %pte = alloca %struct.pte_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !6794, metadata !DIExpression()), !dbg !6795
  %pte1 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !6796
  %0 = load i64, ptr %pte1, align 8, !dbg !6796
  ret i64 %0, !dbg !6797
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @swp_entry(i64 noundef %type, i64 noundef %offset) #3 align 16 !dbg !6798 {
entry:
  %retval = alloca %struct.swp_entry_t, align 8
  %type.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  store i64 %type, ptr %type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6802, metadata !DIExpression()), !dbg !6805
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !6803, metadata !DIExpression()), !dbg !6806
  call void @llvm.dbg.declare(metadata ptr %retval, metadata !6804, metadata !DIExpression()), !dbg !6807
  %0 = load i64, ptr %type.addr, align 8, !dbg !6808
  %shl = shl i64 %0, 58, !dbg !6809
  %1 = load i64, ptr %offset.addr, align 8, !dbg !6810
  %and = and i64 %1, 288230376151711743, !dbg !6811
  %or = or i64 %shl, %and, !dbg !6812
  %val = getelementptr inbounds %struct.swp_entry_t, ptr %retval, i32 0, i32 0, !dbg !6813
  store i64 %or, ptr %val, align 8, !dbg !6814
  %coerce.dive = getelementptr inbounds %struct.swp_entry_t, ptr %retval, i32 0, i32 0, !dbg !6815
  %2 = load i64, ptr %coerce.dive, align 8, !dbg !6815
  ret i64 %2, !dbg !6815
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pte_swp_exclusive(i64 %pte.coerce) #3 align 16 !dbg !6816 {
entry:
  %pte = alloca %struct.pte_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !6818, metadata !DIExpression()), !dbg !6819
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !6820
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6820
  %call = call i64 @pte_flags(i64 %0) #12, !dbg !6820
  %and = and i64 %call, 8, !dbg !6821
  %conv = trunc i64 %and to i32, !dbg !6820
  ret i32 %conv, !dbg !6822
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pte_swp_clear_exclusive(i64 %pte.coerce) #3 align 16 !dbg !6823 {
entry:
  %retval = alloca %struct.pte_t, align 8
  %pte = alloca %struct.pte_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !6825, metadata !DIExpression()), !dbg !6826
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !6827
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6827
  %call = call i64 @pte_clear_flags(i64 %0, i64 noundef 8) #12, !dbg !6827
  %coerce.dive2 = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !6827
  store i64 %call, ptr %coerce.dive2, align 8, !dbg !6827
  %coerce.dive3 = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !6828
  %1 = load i64, ptr %coerce.dive3, align 8, !dbg !6828
  ret i64 %1, !dbg !6828
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pte_swp_soft_dirty(i64 %pte.coerce) #3 align 16 !dbg !6829 {
entry:
  %pte = alloca %struct.pte_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !6831, metadata !DIExpression()), !dbg !6832
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !6833
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6833
  %call = call i64 @pte_flags(i64 %0) #12, !dbg !6833
  %and = and i64 %call, 0, !dbg !6834
  %conv = trunc i64 %and to i32, !dbg !6833
  ret i32 %conv, !dbg !6835
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pte_swp_clear_soft_dirty(i64 %pte.coerce) #3 align 16 !dbg !6836 {
entry:
  %retval = alloca %struct.pte_t, align 8
  %pte = alloca %struct.pte_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !6838, metadata !DIExpression()), !dbg !6839
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !6840
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6840
  %call = call i64 @pte_clear_flags(i64 %0, i64 noundef 0) #12, !dbg !6840
  %coerce.dive2 = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !6840
  store i64 %call, ptr %coerce.dive2, align 8, !dbg !6840
  %coerce.dive3 = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !6841
  %1 = load i64, ptr %coerce.dive3, align 8, !dbg !6841
  ret i64 %1, !dbg !6841
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pte_swp_uffd_wp(i64 %pte.coerce) #6 align 16 !dbg !6842 {
entry:
  %pte = alloca %struct.pte_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !6845, metadata !DIExpression()), !dbg !6846
  ret i32 0, !dbg !6847
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pte_swp_clear_uffd_wp(i64 %pte.coerce) #6 align 16 !dbg !6848 {
entry:
  %retval = alloca %struct.pte_t, align 8
  %pte = alloca %struct.pte_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !6850, metadata !DIExpression()), !dbg !6851
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %pte, i64 8, i1 false), !dbg !6852
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !6853
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6853
  ret i64 %0, !dbg !6853
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pte_flags(i64 %pte.coerce) #3 align 16 !dbg !6854 {
entry:
  %pte = alloca %struct.pte_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !6856, metadata !DIExpression()), !dbg !6857
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !6858
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6858
  %call = call i64 @native_pte_val(i64 %0) #12, !dbg !6858
  %and = and i64 %call, -4503599627366401, !dbg !6859
  ret i64 %and, !dbg !6860
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pte_clear_flags(i64 %pte.coerce, i64 noundef %clear) #3 align 16 !dbg !6861 {
entry:
  %retval = alloca %struct.pte_t, align 8
  %pte = alloca %struct.pte_t, align 8
  %clear.addr = alloca i64, align 8
  %v = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !6865, metadata !DIExpression()), !dbg !6868
  store i64 %clear, ptr %clear.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %clear.addr, metadata !6866, metadata !DIExpression()), !dbg !6869
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #11, !dbg !6870
  call void @llvm.dbg.declare(metadata ptr %v, metadata !6867, metadata !DIExpression()), !dbg !6871
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !6872
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6872
  %call = call i64 @native_pte_val(i64 %0) #12, !dbg !6872
  store i64 %call, ptr %v, align 8, !dbg !6871
  %1 = load i64, ptr %v, align 8, !dbg !6873
  %2 = load i64, ptr %clear.addr, align 8, !dbg !6874
  %not = xor i64 %2, -1, !dbg !6875
  %and = and i64 %1, %not, !dbg !6876
  %call2 = call i64 @native_make_pte(i64 noundef %and) #12, !dbg !6877
  %coerce.dive3 = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !6877
  store i64 %call2, ptr %coerce.dive3, align 8, !dbg !6877
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #11, !dbg !6878
  %coerce.dive4 = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !6878
  %3 = load i64, ptr %coerce.dive4, align 8, !dbg !6878
  ret i64 %3, !dbg !6878
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_make_pte(i64 noundef %val) #3 align 16 !dbg !6879 {
entry:
  %retval = alloca %struct.pte_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6883, metadata !DIExpression()), !dbg !6884
  %pte = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !6885
  %0 = load i64, ptr %val.addr, align 8, !dbg !6886
  store i64 %0, ptr %pte, align 8, !dbg !6885
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !6887
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !6887
  ret i64 %1, !dbg !6887
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @protnone_mask(i64 noundef %val) #3 align 16 !dbg !6888 {
entry:
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6893, metadata !DIExpression()), !dbg !6894
  %0 = load i64, ptr %val.addr, align 8, !dbg !6895
  %call = call zeroext i1 @__pte_needs_invert(i64 noundef %0) #12, !dbg !6896
  %1 = zext i1 %call to i64, !dbg !6896
  %cond = select i1 %call, i64 -1, i64 0, !dbg !6896
  ret i64 %cond, !dbg !6897
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__pte_needs_invert(i64 noundef %val) #3 align 16 !dbg !6898 {
entry:
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6902, metadata !DIExpression()), !dbg !6903
  %0 = load i64, ptr %val.addr, align 8, !dbg !6904
  %tobool = icmp ne i64 %0, 0, !dbg !6904
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !6905

land.rhs:                                         ; preds = %entry
  %1 = load i64, ptr %val.addr, align 8, !dbg !6906
  %and = and i64 %1, 1, !dbg !6907
  %tobool1 = icmp ne i64 %and, 0, !dbg !6908
  %lnot = xor i1 %tobool1, true, !dbg !6908
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ], !dbg !6909
  ret i1 %2, !dbg !6910
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6911 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6916, metadata !DIExpression()), !dbg !6918
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6917, metadata !DIExpression()), !dbg !6919
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6920
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6921
  br i1 %1, label %cond.true, label %cond.false, !dbg !6921

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6922
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6923
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !6924
  %conv = zext i1 %call to i32, !dbg !6924
  br label %cond.end, !dbg !6921

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6925
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6926
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #12, !dbg !6927
  %conv2 = zext i1 %call1 to i32, !dbg !6927
  br label %cond.end, !dbg !6921

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6921
  %tobool = icmp ne i32 %cond, 0, !dbg !6921
  ret i1 %tobool, !dbg !6928
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_static_cpu_has(i16 noundef zeroext %bit) #6 align 16 !dbg !6929 {
entry:
  %retval = alloca i1, align 1
  %bit.addr = alloca i16, align 2
  store i16 %bit, ptr %bit.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !6934, metadata !DIExpression()), !dbg !6937
  %0 = load i16, ptr %bit.addr, align 2, !dbg !6938
  %1 = load i16, ptr %bit.addr, align 2, !dbg !6939
  %conv = zext i16 %1 to i32, !dbg !6939
  %and = and i32 %conv, 7, !dbg !6940
  %shl = shl i32 1, %and, !dbg !6941
  %2 = load i16, ptr %bit.addr, align 2, !dbg !6942
  %conv1 = zext i16 %2 to i32, !dbg !6942
  %shr = ashr i32 %conv1, 3, !dbg !6943
  %idxprom = sext i32 %shr to i64, !dbg !6944
  %arrayidx = getelementptr i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10), i64 %idxprom, !dbg !6944
  callbr void asm sideeffect "# ALT: oldinstr2\0A661:\0A\09jmp 6f\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+21)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ${0:c}\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09jmp ${4:l}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09\0A6652:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A testb $1,${2:P} (% rip)\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %shl, ptr %arrayidx) #11
          to label %asm.fallthrough [label %t_yes, label %t_no], !dbg !6945, !srcloc !6946

asm.fallthrough:                                  ; preds = %entry
  br label %t_yes, !dbg !6945

t_yes:                                            ; preds = %asm.fallthrough, %entry
  call void @llvm.dbg.label(metadata !6935), !dbg !6947
  store i1 true, ptr %retval, align 1, !dbg !6948
  br label %return, !dbg !6948

t_no:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !6936), !dbg !6949
  store i1 false, ptr %retval, align 1, !dbg !6950
  br label %return, !dbg !6950

return:                                           ; preds = %t_no, %t_yes
  %3 = load i1, ptr %retval, align 1, !dbg !6951
  ret i1 %3, !dbg !6951
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pgd_flags(i64 %pgd.coerce) #3 align 16 !dbg !6952 {
entry:
  %pgd = alloca %struct.pgd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !6956, metadata !DIExpression()), !dbg !6957
  %coerce.dive1 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !6958
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6958
  %call = call i64 @native_pgd_val(i64 %0) #12, !dbg !6958
  %and = and i64 %call, -4503599627366401, !dbg !6959
  ret i64 %and, !dbg !6960
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6961 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6965, metadata !DIExpression()), !dbg !6967
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6966, metadata !DIExpression()), !dbg !6968
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6969
  %and = and i64 %0, 63, !dbg !6970
  %shl = shl i64 1, %and, !dbg !6971
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6972
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6973
  %shr = ashr i64 %2, 6, !dbg !6974
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6972
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6972
  %and1 = and i64 %shl, %3, !dbg !6975
  %cmp = icmp ne i64 %and1, 0, !dbg !6976
  ret i1 %cmp, !dbg !6977
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6978 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6980, metadata !DIExpression()), !dbg !6983
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6981, metadata !DIExpression()), !dbg !6984
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #11, !dbg !6985
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6982, metadata !DIExpression()), !dbg !6986
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6987
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6988
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #11, !dbg !6989, !srcloc !6990
  %3 = icmp ult i8 %2, 2, !dbg !6989
  call void @llvm.assume(i1 %3), !dbg !6989
  store i8 %2, ptr %oldbit, align 1, !dbg !6989
  %4 = load i8, ptr %oldbit, align 1, !dbg !6991, !range !6992, !noundef !1335
  %tobool = trunc i8 %4 to i1, !dbg !6991
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #11, !dbg !6993
  ret i1 %tobool, !dbg !6994
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_pgd_val(i64 %pgd.coerce) #3 align 16 !dbg !6995 {
entry:
  %pgd = alloca %struct.pgd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !6997, metadata !DIExpression()), !dbg !6998
  %pgd1 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !6999
  %0 = load i64, ptr %pgd1, align 8, !dbg !6999
  %and = and i64 %0, -1, !dbg !7000
  ret i64 %and, !dbg !7001
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pgd_page_vaddr(i64 %pgd.coerce) #3 align 16 !dbg !7002 {
entry:
  %pgd = alloca %struct.pgd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !7006, metadata !DIExpression()), !dbg !7007
  %coerce.dive1 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !7008
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7008
  %call = call i64 @native_pgd_val(i64 %0) #12, !dbg !7008
  %and = and i64 %call, 4503599627366400, !dbg !7008
  %1 = load i64, ptr @page_offset_base, align 8, !dbg !7008
  %add = add i64 %and, %1, !dbg !7008
  %2 = inttoptr i64 %add to ptr, !dbg !7008
  %3 = ptrtoint ptr %2 to i64, !dbg !7009
  ret i64 %3, !dbg !7010
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @p4d_index(i64 noundef %address) #3 align 16 !dbg !7011 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !7013, metadata !DIExpression()), !dbg !7014
  %0 = load i64, ptr %address.addr, align 8, !dbg !7015
  %shr = lshr i64 %0, 39, !dbg !7016
  %1 = load i32, ptr @ptrs_per_p4d, align 4, !dbg !7017
  %sub = sub i32 %1, 1, !dbg !7018
  %conv = zext i32 %sub to i64, !dbg !7019
  %and = and i64 %shr, %conv, !dbg !7020
  ret i64 %and, !dbg !7021
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @p4d_flags(i64 %p4d.coerce) #3 align 16 !dbg !7022 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !7026, metadata !DIExpression()), !dbg !7027
  %coerce.dive1 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !7028
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7028
  %call = call i64 @native_p4d_val(i64 %0) #12, !dbg !7028
  %coerce.dive2 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !7029
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !7029
  %call3 = call i64 @p4d_flags_mask(i64 %1) #12, !dbg !7029
  %and = and i64 %call, %call3, !dbg !7030
  ret i64 %and, !dbg !7031
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_p4d_val(i64 %p4d.coerce) #3 align 16 !dbg !7032 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !7034, metadata !DIExpression()), !dbg !7035
  %p4d1 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !7036
  %0 = load i64, ptr %p4d1, align 8, !dbg !7036
  ret i64 %0, !dbg !7037
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @p4d_flags_mask(i64 %p4d.coerce) #3 align 16 !dbg !7038 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !7040, metadata !DIExpression()), !dbg !7041
  %coerce.dive1 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !7042
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7042
  %call = call i64 @p4d_pfn_mask(i64 %0) #12, !dbg !7042
  %not = xor i64 %call, -1, !dbg !7043
  ret i64 %not, !dbg !7044
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @p4d_pfn_mask(i64 %p4d.coerce) #3 align 16 !dbg !7045 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !7047, metadata !DIExpression()), !dbg !7048
  ret i64 4503599627366400, !dbg !7049
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @p4d_pgtable(i64 %p4d.coerce) #3 align 16 !dbg !7050 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !7054, metadata !DIExpression()), !dbg !7055
  %coerce.dive1 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !7056
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7056
  %call = call i64 @native_p4d_val(i64 %0) #12, !dbg !7056
  %coerce.dive2 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !7056
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !7056
  %call3 = call i64 @p4d_pfn_mask(i64 %1) #12, !dbg !7056
  %and = and i64 %call, %call3, !dbg !7056
  %2 = load i64, ptr @page_offset_base, align 8, !dbg !7056
  %add = add i64 %and, %2, !dbg !7056
  %3 = inttoptr i64 %add to ptr, !dbg !7056
  ret ptr %3, !dbg !7057
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pud_index(i64 noundef %address) #3 align 16 !dbg !7058 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !7060, metadata !DIExpression()), !dbg !7061
  %0 = load i64, ptr %address.addr, align 8, !dbg !7062
  %shr = lshr i64 %0, 30, !dbg !7063
  %and = and i64 %shr, 511, !dbg !7064
  ret i64 %and, !dbg !7065
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pud_flags(i64 %pud.coerce) #3 align 16 !dbg !7066 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !7070, metadata !DIExpression()), !dbg !7071
  %coerce.dive1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !7072
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7072
  %call = call i64 @native_pud_val(i64 %0) #12, !dbg !7072
  %coerce.dive2 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !7073
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !7073
  %call3 = call i64 @pud_flags_mask(i64 %1) #12, !dbg !7073
  %and = and i64 %call, %call3, !dbg !7074
  ret i64 %and, !dbg !7075
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_pud_val(i64 %pud.coerce) #3 align 16 !dbg !7076 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !7078, metadata !DIExpression()), !dbg !7079
  %pud1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !7080
  %0 = load i64, ptr %pud1, align 8, !dbg !7080
  ret i64 %0, !dbg !7081
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pud_flags_mask(i64 %pud.coerce) #3 align 16 !dbg !7082 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !7084, metadata !DIExpression()), !dbg !7085
  %coerce.dive1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !7086
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7086
  %call = call i64 @pud_pfn_mask(i64 %0) #12, !dbg !7086
  %not = xor i64 %call, -1, !dbg !7087
  ret i64 %not, !dbg !7088
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pud_pfn_mask(i64 %pud.coerce) #3 align 16 !dbg !7089 {
entry:
  %retval = alloca i64, align 8
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !7091, metadata !DIExpression()), !dbg !7092
  %coerce.dive1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !7093
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7093
  %call = call i64 @native_pud_val(i64 %0) #12, !dbg !7093
  %and = and i64 %call, 128, !dbg !7095
  %tobool = icmp ne i64 %and, 0, !dbg !7095
  br i1 %tobool, label %if.then, label %if.else, !dbg !7096

if.then:                                          ; preds = %entry
  store i64 4503598553628672, ptr %retval, align 8, !dbg !7097
  br label %return, !dbg !7097

if.else:                                          ; preds = %entry
  store i64 4503599627366400, ptr %retval, align 8, !dbg !7098
  br label %return, !dbg !7098

return:                                           ; preds = %if.else, %if.then
  %1 = load i64, ptr %retval, align 8, !dbg !7099
  ret i64 %1, !dbg !7099
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pud_pgtable(i64 %pud.coerce) #3 align 16 !dbg !7100 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !7104, metadata !DIExpression()), !dbg !7105
  %coerce.dive1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !7106
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7106
  %call = call i64 @native_pud_val(i64 %0) #12, !dbg !7106
  %coerce.dive2 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !7106
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !7106
  %call3 = call i64 @pud_pfn_mask(i64 %1) #12, !dbg !7106
  %and = and i64 %call, %call3, !dbg !7106
  %2 = load i64, ptr @page_offset_base, align 8, !dbg !7106
  %add = add i64 %and, %2, !dbg !7106
  %3 = inttoptr i64 %add to ptr, !dbg !7106
  ret ptr %3, !dbg !7107
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmd_index(i64 noundef %address) #3 align 16 !dbg !7108 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !7110, metadata !DIExpression()), !dbg !7111
  %0 = load i64, ptr %address.addr, align 8, !dbg !7112
  %shr = lshr i64 %0, 21, !dbg !7113
  %and = and i64 %shr, 511, !dbg !7114
  ret i64 %and, !dbg !7115
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmdp_get(ptr noundef %pmdp) #3 align 16 !dbg !7116 {
entry:
  %retval = alloca %struct.pmd_t, align 8
  %pmdp.addr = alloca ptr, align 8
  store ptr %pmdp, ptr %pmdp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmdp.addr, metadata !7118, metadata !DIExpression()), !dbg !7119
  br label %do.body, !dbg !7120

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7122

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %pmdp.addr, align 8, !dbg !7120
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %0, i64 8, i1 true), !dbg !7120
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %retval, i32 0, i32 0, !dbg !7124
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !7124
  ret i64 %1, !dbg !7124
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmd_flags(i64 %pmd.coerce) #3 align 16 !dbg !7125 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !7129, metadata !DIExpression()), !dbg !7130
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !7131
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7131
  %call = call i64 @native_pmd_val(i64 %0) #12, !dbg !7131
  %coerce.dive2 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !7132
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !7132
  %call3 = call i64 @pmd_flags_mask(i64 %1) #12, !dbg !7132
  %and = and i64 %call, %call3, !dbg !7133
  ret i64 %and, !dbg !7134
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_pmd_val(i64 %pmd.coerce) #3 align 16 !dbg !7135 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !7137, metadata !DIExpression()), !dbg !7138
  %pmd1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !7139
  %0 = load i64, ptr %pmd1, align 8, !dbg !7139
  ret i64 %0, !dbg !7140
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmd_flags_mask(i64 %pmd.coerce) #3 align 16 !dbg !7141 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !7143, metadata !DIExpression()), !dbg !7144
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !7145
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7145
  %call = call i64 @pmd_pfn_mask(i64 %0) #12, !dbg !7145
  %not = xor i64 %call, -1, !dbg !7146
  ret i64 %not, !dbg !7147
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmd_pfn_mask(i64 %pmd.coerce) #3 align 16 !dbg !7148 {
entry:
  %retval = alloca i64, align 8
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !7150, metadata !DIExpression()), !dbg !7151
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !7152
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7152
  %call = call i64 @native_pmd_val(i64 %0) #12, !dbg !7152
  %and = and i64 %call, 128, !dbg !7154
  %tobool = icmp ne i64 %and, 0, !dbg !7154
  br i1 %tobool, label %if.then, label %if.else, !dbg !7155

if.then:                                          ; preds = %entry
  store i64 4503599625273344, ptr %retval, align 8, !dbg !7156
  br label %return, !dbg !7156

if.else:                                          ; preds = %entry
  store i64 4503599627366400, ptr %retval, align 8, !dbg !7157
  br label %return, !dbg !7157

return:                                           ; preds = %if.else, %if.then
  %1 = load i64, ptr %retval, align 8, !dbg !7158
  ret i64 %1, !dbg !7158
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @swp_type(i64 %entry.coerce) #3 align 16 !dbg !7159 {
entry:
  %entry2 = alloca %struct.swp_entry_t, align 8
  %coerce.dive = getelementptr inbounds %struct.swp_entry_t, ptr %entry2, i32 0, i32 0
  store i64 %entry.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %entry2, metadata !7163, metadata !DIExpression()), !dbg !7164
  %val = getelementptr inbounds %struct.swp_entry_t, ptr %entry2, i32 0, i32 0, !dbg !7165
  %0 = load i64, ptr %val, align 8, !dbg !7165
  %shr = lshr i64 %0, 58, !dbg !7166
  %conv = trunc i64 %shr to i32, !dbg !7167
  ret i32 %conv, !dbg !7168
}

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !7169 dso_local void @__compiletime_assert_336() #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @swp_offset(i64 %entry.coerce) #3 align 16 !dbg !7170 {
entry:
  %entry2 = alloca %struct.swp_entry_t, align 8
  %coerce.dive = getelementptr inbounds %struct.swp_entry_t, ptr %entry2, i32 0, i32 0
  store i64 %entry.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %entry2, metadata !7172, metadata !DIExpression()), !dbg !7173
  %val = getelementptr inbounds %struct.swp_entry_t, ptr %entry2, i32 0, i32 0, !dbg !7174
  %0 = load i64, ptr %val, align 8, !dbg !7174
  %and = and i64 %0, 288230376151711743, !dbg !7175
  ret i64 %and, !dbg !7176
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7177 dso_local void @_raw_spin_unlock(ptr noundef) #8 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pte_offset_map_lock(ptr noundef %mm, ptr noundef %pmd, i64 noundef %addr, ptr noundef %ptlp) #3 align 16 !dbg !7182 {
entry:
  %mm.addr = alloca ptr, align 8
  %pmd.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %ptlp.addr = alloca ptr, align 8
  %pte = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !7186, metadata !DIExpression()), !dbg !7191
  store ptr %pmd, ptr %pmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd.addr, metadata !7187, metadata !DIExpression()), !dbg !7192
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7188, metadata !DIExpression()), !dbg !7193
  store ptr %ptlp, ptr %ptlp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptlp.addr, metadata !7189, metadata !DIExpression()), !dbg !7194
  call void @llvm.lifetime.start.p0(i64 8, ptr %pte) #11, !dbg !7195
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !7190, metadata !DIExpression()), !dbg !7196
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !7197
  %1 = load ptr, ptr %pmd.addr, align 8, !dbg !7197
  %2 = load i64, ptr %addr.addr, align 8, !dbg !7197
  %3 = load ptr, ptr %ptlp.addr, align 8, !dbg !7197
  %call = call ptr @__pte_offset_map_lock(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #12, !dbg !7197
  store ptr %call, ptr %pte, align 8, !dbg !7197
  %4 = load ptr, ptr %pte, align 8, !dbg !7198
  call void @llvm.lifetime.end.p0(i64 8, ptr %pte) #11, !dbg !7199
  ret ptr %4, !dbg !7200
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7201 dso_local ptr @pte_offset_map_nolock(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7202 dso_local ptr @__pte_offset_map_lock(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #3 align 16 !dbg !7203 {
entry:
  br label %do.body, !dbg !7205

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7206

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #12, !dbg !7208
  br label %do.body1, !dbg !7209

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !7210

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !7212
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7213 dso_local void @__rcu_read_unlock() #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7214 dso_local void @_raw_spin_lock(ptr noundef) #8 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @vma_pgoff_address(i64 noundef %pgoff, i64 noundef %nr_pages, ptr noundef %vma) #3 align 16 !dbg !7215 {
entry:
  %pgoff.addr = alloca i64, align 8
  %nr_pages.addr = alloca i64, align 8
  %vma.addr = alloca ptr, align 8
  %address = alloca i64, align 8
  store i64 %pgoff, ptr %pgoff.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgoff.addr, metadata !7219, metadata !DIExpression()), !dbg !7223
  store i64 %nr_pages, ptr %nr_pages.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr_pages.addr, metadata !7220, metadata !DIExpression()), !dbg !7224
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !7221, metadata !DIExpression()), !dbg !7225
  call void @llvm.lifetime.start.p0(i64 8, ptr %address) #11, !dbg !7226
  call void @llvm.dbg.declare(metadata ptr %address, metadata !7222, metadata !DIExpression()), !dbg !7227
  %0 = load i64, ptr %pgoff.addr, align 8, !dbg !7228
  %1 = load ptr, ptr %vma.addr, align 8, !dbg !7230
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 11, !dbg !7231
  %2 = load i64, ptr %vm_pgoff, align 8, !dbg !7231
  %cmp = icmp uge i64 %0, %2, !dbg !7232
  br i1 %cmp, label %if.then, label %if.else, !dbg !7233

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %vma.addr, align 8, !dbg !7234
  %4 = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 0, !dbg !7236
  %vm_start = getelementptr inbounds %struct.anon.14, ptr %4, i32 0, i32 0, !dbg !7236
  %5 = load i64, ptr %vm_start, align 8, !dbg !7236
  %6 = load i64, ptr %pgoff.addr, align 8, !dbg !7237
  %7 = load ptr, ptr %vma.addr, align 8, !dbg !7238
  %vm_pgoff1 = getelementptr inbounds %struct.vm_area_struct, ptr %7, i32 0, i32 11, !dbg !7239
  %8 = load i64, ptr %vm_pgoff1, align 8, !dbg !7239
  %sub = sub i64 %6, %8, !dbg !7240
  %shl = shl i64 %sub, 12, !dbg !7241
  %add = add i64 %5, %shl, !dbg !7242
  store i64 %add, ptr %address, align 8, !dbg !7243
  %9 = load i64, ptr %address, align 8, !dbg !7244
  %10 = load ptr, ptr %vma.addr, align 8, !dbg !7246
  %11 = getelementptr inbounds %struct.vm_area_struct, ptr %10, i32 0, i32 0, !dbg !7247
  %vm_start2 = getelementptr inbounds %struct.anon.14, ptr %11, i32 0, i32 0, !dbg !7247
  %12 = load i64, ptr %vm_start2, align 8, !dbg !7247
  %cmp3 = icmp ult i64 %9, %12, !dbg !7248
  br i1 %cmp3, label %if.then5, label %lor.lhs.false, !dbg !7249

lor.lhs.false:                                    ; preds = %if.then
  %13 = load i64, ptr %address, align 8, !dbg !7250
  %14 = load ptr, ptr %vma.addr, align 8, !dbg !7251
  %15 = getelementptr inbounds %struct.vm_area_struct, ptr %14, i32 0, i32 0, !dbg !7252
  %vm_end = getelementptr inbounds %struct.anon.14, ptr %15, i32 0, i32 1, !dbg !7252
  %16 = load i64, ptr %vm_end, align 8, !dbg !7252
  %cmp4 = icmp uge i64 %13, %16, !dbg !7253
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !7254

if.then5:                                         ; preds = %lor.lhs.false, %if.then
  store i64 -14, ptr %address, align 8, !dbg !7255
  br label %if.end, !dbg !7256

if.end:                                           ; preds = %if.then5, %lor.lhs.false
  br label %if.end14, !dbg !7257

if.else:                                          ; preds = %entry
  %17 = load i64, ptr %pgoff.addr, align 8, !dbg !7258
  %18 = load i64, ptr %nr_pages.addr, align 8, !dbg !7260
  %add6 = add i64 %17, %18, !dbg !7261
  %sub7 = sub i64 %add6, 1, !dbg !7262
  %19 = load ptr, ptr %vma.addr, align 8, !dbg !7263
  %vm_pgoff8 = getelementptr inbounds %struct.vm_area_struct, ptr %19, i32 0, i32 11, !dbg !7264
  %20 = load i64, ptr %vm_pgoff8, align 8, !dbg !7264
  %cmp9 = icmp uge i64 %sub7, %20, !dbg !7265
  br i1 %cmp9, label %if.then10, label %if.else12, !dbg !7266

if.then10:                                        ; preds = %if.else
  %21 = load ptr, ptr %vma.addr, align 8, !dbg !7267
  %22 = getelementptr inbounds %struct.vm_area_struct, ptr %21, i32 0, i32 0, !dbg !7269
  %vm_start11 = getelementptr inbounds %struct.anon.14, ptr %22, i32 0, i32 0, !dbg !7269
  %23 = load i64, ptr %vm_start11, align 8, !dbg !7269
  store i64 %23, ptr %address, align 8, !dbg !7270
  br label %if.end13, !dbg !7271

if.else12:                                        ; preds = %if.else
  store i64 -14, ptr %address, align 8, !dbg !7272
  br label %if.end13

if.end13:                                         ; preds = %if.else12, %if.then10
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end
  %24 = load i64, ptr %address, align 8, !dbg !7274
  call void @llvm.lifetime.end.p0(i64 8, ptr %address) #11, !dbg !7275
  ret i64 %24, !dbg !7276
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @page_to_pgoff(ptr noundef %page) #3 align 16 !dbg !7277 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !7281, metadata !DIExpression()), !dbg !7282
  %0 = load ptr, ptr %page.addr, align 8, !dbg !7283
  %call = call zeroext i1 @PageHuge(ptr noundef %0) #12, !dbg !7283
  %lnot = xor i1 %call, true, !dbg !7283
  %lnot1 = xor i1 %lnot, true, !dbg !7283
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7283
  %conv = sext i32 %lnot.ext to i64, !dbg !7283
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7283
  %tobool = icmp ne i64 %expval, 0, !dbg !7283
  br i1 %tobool, label %if.then, label %if.end, !dbg !7285

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %page.addr, align 8, !dbg !7286
  %call2 = call i64 @hugetlb_basepage_index(ptr noundef %1) #12, !dbg !7287
  store i64 %call2, ptr %retval, align 8, !dbg !7288
  br label %return, !dbg !7288

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %page.addr, align 8, !dbg !7289
  %call3 = call i64 @page_to_index(ptr noundef %2) #12, !dbg !7290
  store i64 %call3, ptr %retval, align 8, !dbg !7291
  br label %return, !dbg !7291

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, ptr %retval, align 8, !dbg !7292
  ret i64 %3, !dbg !7292
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @compound_nr(ptr noundef %page) #3 align 16 !dbg !7293 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %folio = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !7295, metadata !DIExpression()), !dbg !7297
  call void @llvm.lifetime.start.p0(i64 8, ptr %folio) #11, !dbg !7298
  call void @llvm.dbg.declare(metadata ptr %folio, metadata !7296, metadata !DIExpression()), !dbg !7299
  %0 = load ptr, ptr %page.addr, align 8, !dbg !7300
  store ptr %0, ptr %folio, align 8, !dbg !7299
  %1 = load ptr, ptr %folio, align 8, !dbg !7301
  %2 = getelementptr inbounds %struct.folio, ptr %1, i32 0, i32 0, !dbg !7301
  %flags = getelementptr inbounds %struct.anon.45, ptr %2, i32 0, i32 0, !dbg !7301
  %3 = ptrtoint ptr %flags to i64, !dbg !7301
  %cmp = icmp ne i64 %3, 0, !dbg !7301
  %conv = zext i1 %cmp to i32, !dbg !7301
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !7301
  br i1 %4, label %land.lhs.true, label %cond.false, !dbg !7301

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %folio, align 8, !dbg !7301
  %6 = getelementptr inbounds %struct.folio, ptr %5, i32 0, i32 0, !dbg !7301
  %flags1 = getelementptr inbounds %struct.anon.45, ptr %6, i32 0, i32 0, !dbg !7301
  %7 = ptrtoint ptr %flags1 to i64, !dbg !7301
  %cmp2 = icmp ne i64 %7, 0, !dbg !7301
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !7301

land.lhs.true4:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %folio, align 8, !dbg !7301
  %9 = getelementptr inbounds %struct.folio, ptr %8, i32 0, i32 0, !dbg !7301
  %flags5 = getelementptr inbounds %struct.anon.45, ptr %9, i32 0, i32 0, !dbg !7301
  %10 = load i64, ptr %flags5, align 16, !dbg !7301
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !7301
  br i1 %11, label %cond.true, label %cond.false, !dbg !7303

cond.true:                                        ; preds = %land.lhs.true4
  %12 = load ptr, ptr %folio, align 8, !dbg !7301
  %13 = getelementptr inbounds %struct.folio, ptr %12, i32 0, i32 0, !dbg !7301
  %flags6 = getelementptr inbounds %struct.anon.45, ptr %13, i32 0, i32 0, !dbg !7301
  %call = call zeroext i1 @const_test_bit(i64 noundef 6, ptr noundef %flags6) #12, !dbg !7301
  br i1 %call, label %if.end, label %if.then, !dbg !7301

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %14 = load ptr, ptr %folio, align 8, !dbg !7301
  %15 = getelementptr inbounds %struct.folio, ptr %14, i32 0, i32 0, !dbg !7301
  %flags8 = getelementptr inbounds %struct.anon.45, ptr %15, i32 0, i32 0, !dbg !7301
  %call9 = call zeroext i1 @_test_bit(i64 noundef 6, ptr noundef %flags8) #12, !dbg !7301
  br i1 %call9, label %if.end, label %if.then, !dbg !7303

if.then:                                          ; preds = %cond.false, %cond.true
  store i64 1, ptr %retval, align 8, !dbg !7304
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7304

if.end:                                           ; preds = %cond.false, %cond.true
  %16 = load ptr, ptr %folio, align 8, !dbg !7305
  %17 = getelementptr inbounds %struct.folio, ptr %16, i32 0, i32 1, !dbg !7306
  %_folio_nr_pages = getelementptr inbounds %struct.anon.50, ptr %17, i32 0, i32 6, !dbg !7306
  %18 = load i32, ptr %_folio_nr_pages, align 4, !dbg !7306
  %conv11 = zext i32 %18 to i64, !dbg !7305
  store i64 %conv11, ptr %retval, align 8, !dbg !7307
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7307

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %folio) #11, !dbg !7308
  %19 = load i64, ptr %retval, align 8, !dbg !7308
  ret i64 %19, !dbg !7308
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @PageHuge(ptr noundef %page) #3 align 16 !dbg !7309 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !7313, metadata !DIExpression()), !dbg !7314
  %0 = load ptr, ptr %page.addr, align 8, !dbg !7315
  %call = call i64 @_compound_head(ptr noundef %0) #12, !dbg !7315
  %1 = inttoptr i64 %call to ptr, !dbg !7315
  %call1 = call zeroext i1 @folio_test_hugetlb(ptr noundef %1) #12, !dbg !7316
  ret i1 %call1, !dbg !7317
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7318 dso_local i64 @hugetlb_basepage_index(ptr noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @page_to_index(ptr noundef %page) #3 align 16 !dbg !7319 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %head = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !7321, metadata !DIExpression()), !dbg !7323
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #11, !dbg !7324
  call void @llvm.dbg.declare(metadata ptr %head, metadata !7322, metadata !DIExpression()), !dbg !7325
  %0 = load ptr, ptr %page.addr, align 8, !dbg !7326
  %call = call i32 @PageTransTail(ptr noundef %0) #12, !dbg !7326
  %tobool = icmp ne i32 %call, 0, !dbg !7326
  %lnot = xor i1 %tobool, true, !dbg !7326
  %lnot1 = xor i1 %lnot, true, !dbg !7326
  %lnot2 = xor i1 %lnot1, true, !dbg !7326
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !7326
  %conv = sext i32 %lnot.ext to i64, !dbg !7326
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !7326
  %tobool3 = icmp ne i64 %expval, 0, !dbg !7326
  br i1 %tobool3, label %if.then, label %if.end, !dbg !7328

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %page.addr, align 8, !dbg !7329
  %2 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, !dbg !7330
  %3 = getelementptr inbounds %struct.anon.32, ptr %2, i32 0, i32 2, !dbg !7330
  %4 = load i64, ptr %3, align 8, !dbg !7330
  store i64 %4, ptr %retval, align 8, !dbg !7331
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7331

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %page.addr, align 8, !dbg !7332
  %call4 = call i64 @_compound_head(ptr noundef %5) #12, !dbg !7332
  %6 = inttoptr i64 %call4 to ptr, !dbg !7332
  store ptr %6, ptr %head, align 8, !dbg !7333
  %7 = load ptr, ptr %head, align 8, !dbg !7334
  %8 = getelementptr inbounds %struct.page, ptr %7, i32 0, i32 1, !dbg !7335
  %9 = getelementptr inbounds %struct.anon.32, ptr %8, i32 0, i32 2, !dbg !7335
  %10 = load i64, ptr %9, align 8, !dbg !7335
  %11 = load ptr, ptr %page.addr, align 8, !dbg !7336
  %add.ptr = getelementptr %struct.page, ptr %11, i64 %10, !dbg !7337
  %12 = load ptr, ptr %head, align 8, !dbg !7338
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !7339
  %sub.ptr.rhs.cast = ptrtoint ptr %12 to i64, !dbg !7339
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !7339
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !7339
  store i64 %sub.ptr.div, ptr %retval, align 8, !dbg !7340
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7340

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #11, !dbg !7341
  %13 = load i64, ptr %retval, align 8, !dbg !7341
  ret i64 %13, !dbg !7341
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @folio_test_hugetlb(ptr noundef %folio) #6 align 16 !dbg !7342 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !7346, metadata !DIExpression()), !dbg !7347
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !7347
  %1 = getelementptr inbounds %struct.folio, ptr %0, i32 0, i32 0, !dbg !7347
  %2 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 2, !dbg !7347
  %3 = load i32, ptr %2, align 16, !dbg !7347
  %and = and i32 %3, -268433408, !dbg !7347
  %cmp = icmp eq i32 %and, -268435456, !dbg !7347
  ret i1 %cmp, !dbg !7347
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @_compound_head(ptr noundef %page) #3 align 16 !dbg !7348 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %head = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !7352, metadata !DIExpression()), !dbg !7354
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #11, !dbg !7355
  call void @llvm.dbg.declare(metadata ptr %head, metadata !7353, metadata !DIExpression()), !dbg !7356
  br label %do.body, !dbg !7357

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !7359

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7359

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %page.addr, align 8, !dbg !7357
  %1 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, !dbg !7357
  %compound_head = getelementptr inbounds %struct.anon.38, ptr %1, i32 0, i32 0, !dbg !7357
  %2 = load volatile i64, ptr %compound_head, align 8, !dbg !7357
  store i64 %2, ptr %tmp, align 8, !dbg !7359
  %3 = load i64, ptr %tmp, align 8, !dbg !7357
  store i64 %3, ptr %head, align 8, !dbg !7356
  %4 = load i64, ptr %head, align 8, !dbg !7361
  %and = and i64 %4, 1, !dbg !7361
  %tobool = icmp ne i64 %and, 0, !dbg !7361
  %lnot = xor i1 %tobool, true, !dbg !7361
  %lnot1 = xor i1 %lnot, true, !dbg !7361
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7361
  %conv = sext i32 %lnot.ext to i64, !dbg !7361
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7361
  %tobool2 = icmp ne i64 %expval, 0, !dbg !7361
  br i1 %tobool2, label %if.then, label %if.end, !dbg !7363

if.then:                                          ; preds = %do.end
  %5 = load i64, ptr %head, align 8, !dbg !7364
  %sub = sub i64 %5, 1, !dbg !7365
  store i64 %sub, ptr %retval, align 8, !dbg !7366
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7366

if.end:                                           ; preds = %do.end
  %6 = load ptr, ptr %page.addr, align 8, !dbg !7367
  %call = call ptr @page_fixed_fake_head(ptr noundef %6) #12, !dbg !7368
  %7 = ptrtoint ptr %call to i64, !dbg !7369
  store i64 %7, ptr %retval, align 8, !dbg !7370
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7370

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #11, !dbg !7371
  %8 = load i64, ptr %retval, align 8, !dbg !7371
  ret i64 %8, !dbg !7371
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @page_fixed_fake_head(ptr noundef %page) #6 align 16 !dbg !7372 {
entry:
  %retval = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  %branch = alloca i8, align 1
  %tmp = alloca i64, align 8
  %head = alloca i64, align 8
  %tmp19 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !7376, metadata !DIExpression()), !dbg !7383
  call void @llvm.lifetime.start.p0(i64 1, ptr %branch) #11, !dbg !7384
  call void @llvm.dbg.declare(metadata ptr %branch, metadata !7377, metadata !DIExpression()), !dbg !7384
  %call = call zeroext i1 @arch_static_branch(ptr noundef @hugetlb_optimize_vmemmap_key, i1 noundef zeroext false) #12, !dbg !7385
  %frombool = zext i1 %call to i8, !dbg !7385
  store i8 %frombool, ptr %branch, align 1, !dbg !7385
  %0 = load i8, ptr %branch, align 1, !dbg !7384, !range !6992, !noundef !1335
  %tobool = trunc i8 %0 to i1, !dbg !7384
  %lnot = xor i1 %tobool, true, !dbg !7384
  %lnot1 = xor i1 %lnot, true, !dbg !7384
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7384
  %conv = sext i32 %lnot.ext to i64, !dbg !7384
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7384
  store i64 %expval, ptr %tmp, align 8, !dbg !7388
  call void @llvm.lifetime.end.p0(i64 1, ptr %branch) #11, !dbg !7389
  %1 = load i64, ptr %tmp, align 8, !dbg !7384
  %tobool2 = icmp ne i64 %1, 0, !dbg !7389
  br i1 %tobool2, label %if.end, label %if.then, !dbg !7390

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %page.addr, align 8, !dbg !7391
  store ptr %2, ptr %retval, align 8, !dbg !7392
  br label %return, !dbg !7392

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !dbg !7393
  %4 = ptrtoint ptr %3 to i64, !dbg !7393
  %and = and i64 %4, 4095, !dbg !7393
  %cmp = icmp eq i64 %and, 0, !dbg !7393
  br i1 %cmp, label %land.lhs.true, label %if.end31, !dbg !7394

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %page.addr, align 8, !dbg !7395
  %flags = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 0, !dbg !7395
  %6 = ptrtoint ptr %flags to i64, !dbg !7395
  %cmp4 = icmp ne i64 %6, 0, !dbg !7395
  %conv5 = zext i1 %cmp4 to i32, !dbg !7395
  %7 = call i1 @llvm.is.constant.i32(i32 %conv5), !dbg !7395
  br i1 %7, label %land.lhs.true6, label %cond.false, !dbg !7395

land.lhs.true6:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %page.addr, align 8, !dbg !7395
  %flags7 = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 0, !dbg !7395
  %9 = ptrtoint ptr %flags7 to i64, !dbg !7395
  %cmp8 = icmp ne i64 %9, 0, !dbg !7395
  br i1 %cmp8, label %land.lhs.true10, label %cond.false, !dbg !7395

land.lhs.true10:                                  ; preds = %land.lhs.true6
  %10 = load ptr, ptr %page.addr, align 8, !dbg !7395
  %flags11 = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 0, !dbg !7395
  %11 = load i64, ptr %flags11, align 16, !dbg !7395
  %12 = call i1 @llvm.is.constant.i64(i64 %11), !dbg !7395
  br i1 %12, label %cond.true, label %cond.false, !dbg !7396

cond.true:                                        ; preds = %land.lhs.true10
  %13 = load ptr, ptr %page.addr, align 8, !dbg !7395
  %flags12 = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 0, !dbg !7395
  %call13 = call zeroext i1 @const_test_bit(i64 noundef 6, ptr noundef %flags12) #12, !dbg !7395
  br i1 %call13, label %if.then18, label %if.end31, !dbg !7395

cond.false:                                       ; preds = %land.lhs.true10, %land.lhs.true6, %land.lhs.true
  %14 = load ptr, ptr %page.addr, align 8, !dbg !7395
  %flags15 = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 0, !dbg !7395
  %call16 = call zeroext i1 @_test_bit(i64 noundef 6, ptr noundef %flags15) #12, !dbg !7395
  br i1 %call16, label %if.then18, label %if.end31, !dbg !7396

if.then18:                                        ; preds = %cond.false, %cond.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #11, !dbg !7397
  call void @llvm.dbg.declare(metadata ptr %head, metadata !7380, metadata !DIExpression()), !dbg !7398
  br label %do.body, !dbg !7399

do.body:                                          ; preds = %if.then18
  br label %do.cond, !dbg !7401

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7401

do.end:                                           ; preds = %do.cond
  %15 = load ptr, ptr %page.addr, align 8, !dbg !7399
  %arrayidx = getelementptr %struct.page, ptr %15, i64 1, !dbg !7399
  %16 = getelementptr inbounds %struct.page, ptr %arrayidx, i32 0, i32 1, !dbg !7399
  %compound_head = getelementptr inbounds %struct.anon.38, ptr %16, i32 0, i32 0, !dbg !7399
  %17 = load volatile i64, ptr %compound_head, align 8, !dbg !7399
  store i64 %17, ptr %tmp19, align 8, !dbg !7401
  %18 = load i64, ptr %tmp19, align 8, !dbg !7399
  store i64 %18, ptr %head, align 8, !dbg !7398
  %19 = load i64, ptr %head, align 8, !dbg !7403
  %and20 = and i64 %19, 1, !dbg !7403
  %tobool21 = icmp ne i64 %and20, 0, !dbg !7403
  %lnot22 = xor i1 %tobool21, true, !dbg !7403
  %lnot24 = xor i1 %lnot22, true, !dbg !7403
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !7403
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !7403
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 1), !dbg !7403
  %tobool28 = icmp ne i64 %expval27, 0, !dbg !7403
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !7405

if.then29:                                        ; preds = %do.end
  %20 = load i64, ptr %head, align 8, !dbg !7406
  %sub = sub i64 %20, 1, !dbg !7407
  %21 = inttoptr i64 %sub to ptr, !dbg !7408
  store ptr %21, ptr %retval, align 8, !dbg !7409
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7409

if.end30:                                         ; preds = %do.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !7410
  br label %cleanup, !dbg !7410

cleanup:                                          ; preds = %if.end30, %if.then29
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #11, !dbg !7410
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end31, !dbg !7411

if.end31:                                         ; preds = %cleanup.cont, %cond.false, %cond.true, %if.end
  %22 = load ptr, ptr %page.addr, align 8, !dbg !7412
  store ptr %22, ptr %retval, align 8, !dbg !7413
  br label %return, !dbg !7413

return:                                           ; preds = %if.end31, %cleanup, %if.then
  %23 = load ptr, ptr %retval, align 8, !dbg !7414
  ret ptr %23, !dbg !7414

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #6 align 16 !dbg !7415 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !7432, metadata !DIExpression()), !dbg !7435
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !7433, metadata !DIExpression()), !dbg !7436
  %0 = load ptr, ptr %key.addr, align 8, !dbg !7437
  %1 = load i8, ptr %branch.addr, align 1, !dbg !7438, !range !6992, !noundef !1335
  %tobool = trunc i8 %1 to i1, !dbg !7438
  %conv = zext i1 %tobool to i32, !dbg !7438
  %or = or i32 2, %conv, !dbg !7439
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #11
          to label %asm.fallthrough [label %l_yes], !dbg !7440, !srcloc !7441

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !7442
  br label %return, !dbg !7442

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !7434), !dbg !7443
  store i1 true, ptr %retval, align 1, !dbg !7444
  br label %return, !dbg !7444

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !7445
  ret i1 %2, !dbg !7445
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !7446 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7449, metadata !DIExpression()), !dbg !7454
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7450, metadata !DIExpression()), !dbg !7455
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #11, !dbg !7456
  call void @llvm.dbg.declare(metadata ptr %p, metadata !7451, metadata !DIExpression()), !dbg !7457
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7458
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7459
  %div = udiv i64 %1, 64, !dbg !7459
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7460
  store ptr %add.ptr, ptr %p, align 8, !dbg !7457
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #11, !dbg !7461
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !7452, metadata !DIExpression()), !dbg !7462
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7463
  %rem = urem i64 %2, 64, !dbg !7463
  %shl = shl i64 1, %rem, !dbg !7463
  store i64 %shl, ptr %mask, align 8, !dbg !7462
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #11, !dbg !7464
  call void @llvm.dbg.declare(metadata ptr %val, metadata !7453, metadata !DIExpression()), !dbg !7465
  %3 = load ptr, ptr %p, align 8, !dbg !7466
  %4 = load i64, ptr %3, align 8, !dbg !7467
  store i64 %4, ptr %val, align 8, !dbg !7465
  %5 = load i64, ptr %val, align 8, !dbg !7468
  %6 = load i64, ptr %mask, align 8, !dbg !7469
  %and = and i64 %5, %6, !dbg !7470
  %tobool = icmp ne i64 %and, 0, !dbg !7471
  %lnot = xor i1 %tobool, true, !dbg !7471
  %lnot1 = xor i1 %lnot, true, !dbg !7472
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #11, !dbg !7473
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #11, !dbg !7473
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #11, !dbg !7473
  ret i1 %lnot1, !dbg !7474
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !7475 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7478, metadata !DIExpression()), !dbg !7480
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7479, metadata !DIExpression()), !dbg !7481
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7482
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7483
  %div = udiv i64 %1, 64, !dbg !7483
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7484
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #12, !dbg !7485
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7486
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7487
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !7488
  ret i1 %call, !dbg !7489
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !7490 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7498, metadata !DIExpression()), !dbg !7500
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7499, metadata !DIExpression()), !dbg !7501
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7502
  %1 = load i64, ptr %size.addr, align 8, !dbg !7503
  %conv = trunc i64 %1 to i32, !dbg !7503
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #12, !dbg !7504
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7505
  %3 = load i64, ptr %size.addr, align 8, !dbg !7505
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #12, !dbg !7505
  ret void, !dbg !7506
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !7507 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7512, metadata !DIExpression()), !dbg !7514
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7513, metadata !DIExpression()), !dbg !7515
  ret i1 true, !dbg !7516
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !7517 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7522, metadata !DIExpression()), !dbg !7525
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7523, metadata !DIExpression()), !dbg !7526
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !7524, metadata !DIExpression()), !dbg !7527
  ret void, !dbg !7528
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @PageTransTail(ptr noundef %page) #3 align 16 !dbg !7529 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !7533, metadata !DIExpression()), !dbg !7534
  ret i32 0, !dbg !7534
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="BUILD_BUG failed" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { noredzone }
attributes #13 = { noredzone noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5437, !5438, !5439, !5440, !5441, !5442, !5443, !5444}
!llvm.ident = !{!5445}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF mm/.page_vma_mapped.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22mm/page_vma_mapped\22 -D KBUILD_BASENAME=\22page_vma_mapped\22 -D KBUILD_MODNAME=\22page_vma_mapped\22 -D __KBUILD_MODNAME=kmod_page_vma_mapped -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o mm/page_vma_mapped.ll mm/page_vma_mapped.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !304, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "mm/page_vma_mapped.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e8b2a8fa8ac07fb597dac2520543567e")
!2 = !{!3, !12, !108, !115, !123, !139, !144, !151, !157, !164, !169, !177, !184, !190, !199, !204, !209, !215, !220, !226, !238, !244, !252, !259, !264}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !4, line: 9, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11}
!7 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!8 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!9 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!10 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!11 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !14, file: !13, line: 147, baseType: !5, size: 32, elements: !105)
!13 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !13, line: 135, size: 512, elements: !15)
!15 = !{!16, !20, !22, !24, !28, !29, !45, !103, !104}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !14, file: !13, line: 136, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !14, file: !13, line: 137, baseType: !21, size: 64, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !14, file: !13, line: 138, baseType: !23, size: 32, offset: 128)
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !14, file: !13, line: 139, baseType: !25, size: 16, offset: 160)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !26, line: 24, baseType: !27)
!26 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!27 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !14, file: !13, line: 150, baseType: !12, size: 32, offset: 192)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !14, file: !13, line: 151, baseType: !30, size: 64, offset: 256)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !13, line: 64, baseType: !32)
!32 = !DISubroutineType(types: !33)
!33 = !{!23, !34, !23, !21, !35, !41}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !26, line: 61, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !38, line: 72, baseType: !39)
!38 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !38, line: 16, baseType: !40)
!40 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !26, line: 52, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !38, line: 88, baseType: !44)
!44 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !14, file: !13, line: 152, baseType: !46, size: 64, offset: 320)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !13, line: 117, size: 256, elements: !48)
!48 = !{!49, !54}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !47, file: !13, line: 118, baseType: !50, size: 32)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !26, line: 174, baseType: !51)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !26, line: 172, size: 32, elements: !52)
!52 = !{!53}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !51, file: !26, line: 173, baseType: !23, size: 32)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !47, file: !13, line: 119, baseType: !55, size: 192, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !56, line: 41, baseType: !57)
!56 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !56, line: 37, size: 192, elements: !58)
!58 = !{!59, !97}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !57, file: !56, line: 38, baseType: !60, size: 32)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !61, line: 29, baseType: !62)
!61 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !61, line: 17, size: 32, elements: !63)
!63 = !{!64}
!64 = !DIDerivedType(tag: DW_TAG_member, scope: !62, file: !61, line: 18, baseType: !65, size: 32)
!65 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !62, file: !61, line: 18, size: 32, elements: !66)
!66 = !{!67}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !65, file: !61, line: 19, baseType: !68, size: 32)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !69, line: 14, size: 32, elements: !70)
!69 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!70 = !{!71}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !68, file: !69, line: 15, baseType: !72, size: 32)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !73, line: 44, baseType: !74)
!73 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !73, line: 14, size: 32, elements: !75)
!75 = !{!76}
!76 = !DIDerivedType(tag: DW_TAG_member, scope: !74, file: !73, line: 15, baseType: !77, size: 32)
!77 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !74, file: !73, line: 15, size: 32, elements: !78)
!78 = !{!79, !80, !90}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !77, file: !73, line: 16, baseType: !50, size: 32)
!80 = !DIDerivedType(tag: DW_TAG_member, scope: !77, file: !73, line: 24, baseType: !81, size: 16)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !77, file: !73, line: 24, size: 16, elements: !82)
!82 = !{!83, !89}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !81, file: !73, line: 25, baseType: !84, size: 8)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !85, line: 17, baseType: !86)
!85 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !87, line: 21, baseType: !88)
!87 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!88 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !81, file: !73, line: 26, baseType: !84, size: 8, offset: 8)
!90 = !DIDerivedType(tag: DW_TAG_member, scope: !77, file: !73, line: 28, baseType: !91, size: 32)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !77, file: !73, line: 28, size: 32, elements: !92)
!92 = !{!93, !96}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !91, file: !73, line: 29, baseType: !94, size: 16)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !85, line: 19, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !87, line: 24, baseType: !27)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !91, file: !73, line: 30, baseType: !94, size: 16, offset: 16)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !57, file: !56, line: 39, baseType: !98, size: 128, offset: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !26, line: 190, size: 128, elements: !99)
!99 = !{!100, !102}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !98, file: !26, line: 191, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !98, file: !26, line: 191, baseType: !101, size: 64, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !14, file: !13, line: 153, baseType: !21, size: 64, offset: 384)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !14, file: !13, line: 154, baseType: !21, size: 64, offset: 448)
!105 = !{!106, !107}
!106 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!107 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !109, line: 312, baseType: !5, size: 32, elements: !110)
!109 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!110 = !{!111, !112, !113, !114}
!111 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!112 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!113 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!114 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !116, line: 68, baseType: !5, size: 32, elements: !117)
!116 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!117 = !{!118, !119, !120, !121, !122}
!118 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!119 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!120 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!121 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!122 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !124, line: 1325, baseType: !5, size: 32, elements: !125)
!124 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!125 = !{!126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138}
!126 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!127 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!128 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!129 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!130 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!131 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!132 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!133 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!134 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!135 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!136 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!137 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!138 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !140, line: 32, baseType: !5, size: 32, elements: !141)
!140 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!141 = !{!142, !143}
!142 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!143 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !145, line: 15, baseType: !5, size: 32, elements: !146)
!145 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!146 = !{!147, !148, !149, !150}
!147 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!148 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!149 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!150 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !152, line: 45, baseType: !5, size: 32, elements: !153)
!152 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!153 = !{!154, !155, !156}
!154 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!155 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!156 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !158, line: 487, baseType: !5, size: 32, elements: !159)
!158 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!159 = !{!160, !161, !162, !163}
!160 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!161 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!162 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!163 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!164 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !165, line: 65, baseType: !5, size: 32, elements: !166)
!165 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!166 = !{!167, !168}
!167 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!168 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!169 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !170, line: 620, baseType: !5, size: 32, elements: !171)
!170 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!171 = !{!172, !173, !174, !175, !176}
!172 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!173 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!174 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!175 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!176 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!177 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !170, line: 597, baseType: !23, size: 32, elements: !178)
!178 = !{!179, !180, !181, !182, !183}
!179 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!180 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!181 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!182 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!183 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!184 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !185, line: 26, baseType: !5, size: 32, elements: !186)
!185 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!186 = !{!187, !188, !189}
!187 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!188 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!189 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !158, line: 547, baseType: !5, size: 32, elements: !191)
!191 = !{!192, !193, !194, !195, !196, !197, !198}
!192 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!193 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!194 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!195 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!196 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!197 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!198 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!199 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !158, line: 564, baseType: !5, size: 32, elements: !200)
!200 = !{!201, !202, !203}
!201 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!202 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!203 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!204 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !158, line: 577, baseType: !5, size: 32, elements: !205)
!205 = !{!206, !207, !208}
!206 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!207 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!208 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!209 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !158, line: 503, baseType: !5, size: 32, elements: !210)
!210 = !{!211, !212, !213, !214}
!211 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!212 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!213 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!214 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!215 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !216, line: 2052, baseType: !5, size: 32, elements: !217)
!216 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!217 = !{!218, !219}
!218 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!219 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!220 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !221, line: 54, baseType: !5, size: 32, elements: !222)
!221 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!222 = !{!223, !224, !225}
!223 = !DIEnumerator(name: "USRQUOTA", value: 0)
!224 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!225 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!226 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !227, line: 44, baseType: !5, size: 32, elements: !228)
!227 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!228 = !{!229, !230, !231, !232, !233, !234, !235, !236, !237}
!229 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!230 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!231 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!232 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!233 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!234 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!235 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!236 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!237 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!238 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !239, line: 16, baseType: !5, size: 32, elements: !240)
!239 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!240 = !{!241, !242, !243}
!241 = !DIEnumerator(name: "TT_NONE", value: 0)
!242 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!243 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!244 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "zone_type", file: !245, line: 720, baseType: !5, size: 32, elements: !246)
!245 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e018db7b4c78b2d835997a33e792065c")
!246 = !{!247, !248, !249, !250, !251}
!247 = !DIEnumerator(name: "ZONE_DMA", value: 0)
!248 = !DIEnumerator(name: "ZONE_DMA32", value: 1)
!249 = !DIEnumerator(name: "ZONE_NORMAL", value: 2)
!250 = !DIEnumerator(name: "ZONE_MOVABLE", value: 3)
!251 = !DIEnumerator(name: "__MAX_NR_ZONES", value: 4)
!252 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !253, line: 51, baseType: !5, size: 32, elements: !254)
!253 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!254 = !{!255, !256, !257, !258}
!255 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!256 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!257 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!258 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!259 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !260, line: 10, baseType: !5, size: 32, elements: !261)
!260 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!261 = !{!262, !263}
!262 = !DIEnumerator(name: "false", value: 0)
!263 = !DIEnumerator(name: "true", value: 1)
!264 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pageflags", file: !265, line: 100, baseType: !5, size: 32, elements: !266)
!265 = !DIFile(filename: "./include/linux/page-flags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "303e043415a1e5da18ffd489677b4d01")
!266 = !{!267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303}
!267 = !DIEnumerator(name: "PG_locked", value: 0)
!268 = !DIEnumerator(name: "PG_writeback", value: 1)
!269 = !DIEnumerator(name: "PG_referenced", value: 2)
!270 = !DIEnumerator(name: "PG_uptodate", value: 3)
!271 = !DIEnumerator(name: "PG_dirty", value: 4)
!272 = !DIEnumerator(name: "PG_lru", value: 5)
!273 = !DIEnumerator(name: "PG_head", value: 6)
!274 = !DIEnumerator(name: "PG_waiters", value: 7)
!275 = !DIEnumerator(name: "PG_active", value: 8)
!276 = !DIEnumerator(name: "PG_workingset", value: 9)
!277 = !DIEnumerator(name: "PG_error", value: 10)
!278 = !DIEnumerator(name: "PG_slab", value: 11)
!279 = !DIEnumerator(name: "PG_owner_priv_1", value: 12)
!280 = !DIEnumerator(name: "PG_arch_1", value: 13)
!281 = !DIEnumerator(name: "PG_reserved", value: 14)
!282 = !DIEnumerator(name: "PG_private", value: 15)
!283 = !DIEnumerator(name: "PG_private_2", value: 16)
!284 = !DIEnumerator(name: "PG_mappedtodisk", value: 17)
!285 = !DIEnumerator(name: "PG_reclaim", value: 18)
!286 = !DIEnumerator(name: "PG_swapbacked", value: 19)
!287 = !DIEnumerator(name: "PG_unevictable", value: 20)
!288 = !DIEnumerator(name: "PG_mlocked", value: 21)
!289 = !DIEnumerator(name: "PG_uncached", value: 22)
!290 = !DIEnumerator(name: "__NR_PAGEFLAGS", value: 23)
!291 = !DIEnumerator(name: "PG_readahead", value: 18)
!292 = !DIEnumerator(name: "PG_anon_exclusive", value: 17)
!293 = !DIEnumerator(name: "PG_checked", value: 12)
!294 = !DIEnumerator(name: "PG_swapcache", value: 12)
!295 = !DIEnumerator(name: "PG_fscache", value: 16)
!296 = !DIEnumerator(name: "PG_pinned", value: 12)
!297 = !DIEnumerator(name: "PG_savepinned", value: 4)
!298 = !DIEnumerator(name: "PG_foreign", value: 12)
!299 = !DIEnumerator(name: "PG_xen_remapped", value: 12)
!300 = !DIEnumerator(name: "PG_isolated", value: 18)
!301 = !DIEnumerator(name: "PG_reported", value: 3)
!302 = !DIEnumerator(name: "PG_has_hwpoisoned", value: 10)
!303 = !DIEnumerator(name: "PG_large_rmappable", value: 9)
!304 = !{!40, !305, !1555, !5388, !21, !1576, !606, !5415, !23, !2258, !17, !5416, !1562, !5422, !5425, !5428, !5430, !5433, !5434, !5435, !1178}
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !124, line: 74, size: 512, align: 128, elements: !307)
!307 = !{!308, !309, !5382, !5387}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !306, file: !124, line: 75, baseType: !40, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, scope: !306, file: !124, line: 83, baseType: !310, size: 320, offset: 64)
!310 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !306, file: !124, line: 83, size: 320, elements: !311)
!311 = !{!312, !5308, !5322, !5326, !5381}
!312 = !DIDerivedType(tag: DW_TAG_member, scope: !310, file: !124, line: 84, baseType: !313, size: 320)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !310, file: !124, line: 84, size: 320, elements: !314)
!314 = !{!315, !326, !5302, !5307}
!315 = !DIDerivedType(tag: DW_TAG_member, scope: !313, file: !124, line: 90, baseType: !316, size: 128)
!316 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !313, file: !124, line: 90, size: 128, elements: !317)
!317 = !{!318, !319, !324, !325}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !316, file: !124, line: 91, baseType: !98, size: 128)
!319 = !DIDerivedType(tag: DW_TAG_member, scope: !316, file: !124, line: 94, baseType: !320, size: 128)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !316, file: !124, line: 94, size: 128, elements: !321)
!321 = !{!322, !323}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !320, file: !124, line: 96, baseType: !21, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !320, file: !124, line: 98, baseType: !5, size: 32, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !316, file: !124, line: 102, baseType: !98, size: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !316, file: !124, line: 103, baseType: !98, size: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !313, file: !124, line: 106, baseType: !327, size: 64, offset: 128)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !216, line: 472, size: 1536, align: 64, elements: !329)
!329 = !{!330, !5148, !5149, !5150, !5151, !5152, !5153, !5154, !5155, !5296, !5297, !5298, !5299, !5300, !5301}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !328, file: !216, line: 473, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !216, line: 641, size: 4800, elements: !333)
!333 = !{!334, !335, !336, !344, !345, !352, !353, !356, !357, !5087, !5088, !5089, !5090, !5091, !5096, !5097, !5098, !5099, !5100, !5101, !5102, !5103, !5104, !5105, !5106, !5107, !5108, !5109, !5110, !5111, !5112, !5113, !5114, !5119, !5120, !5121, !5122, !5123, !5124, !5125, !5130, !5133, !5134, !5135, !5144, !5145, !5146, !5147}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !332, file: !216, line: 642, baseType: !25, size: 16)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !332, file: !216, line: 643, baseType: !27, size: 16, offset: 16)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !332, file: !216, line: 644, baseType: !337, size: 32, offset: 32)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !338, line: 23, baseType: !339)
!338 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !338, line: 21, size: 32, elements: !340)
!340 = !{!341}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !339, file: !338, line: 22, baseType: !342, size: 32)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !26, line: 37, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !38, line: 49, baseType: !5)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !332, file: !216, line: 645, baseType: !98, size: 128, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !332, file: !216, line: 646, baseType: !346, size: 32, offset: 192)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !338, line: 28, baseType: !347)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !338, line: 26, size: 32, elements: !348)
!348 = !{!349}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !347, file: !338, line: 27, baseType: !350, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !26, line: 38, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !38, line: 50, baseType: !5)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !332, file: !216, line: 647, baseType: !5, size: 32, offset: 224)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !332, file: !216, line: 650, baseType: !354, size: 64, offset: 256)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !216, line: 607, flags: DIFlagFwdDecl)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !332, file: !216, line: 651, baseType: !354, size: 64, offset: 320)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !332, file: !216, line: 654, baseType: !358, size: 64, offset: 384)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !360)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !216, line: 1966, size: 2048, align: 512, elements: !361)
!361 = !{!362, !4921, !4931, !4935, !4939, !4943, !4947, !4951, !4955, !4959, !4963, !4964, !4968, !4972, !5009, !5038, !5042, !5048, !5052, !5056, !5060, !5064, !5068, !5074, !5078}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !360, file: !216, line: 1967, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!366, !331, !366, !5}
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !368, line: 82, size: 1536, elements: !369)
!368 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!369 = !{!370, !371, !381, !389, !390, !410, !411, !415, !428, !4904, !4905, !4906, !4907, !4913, !4914, !4915}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !367, file: !368, line: 84, baseType: !5, size: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !367, file: !368, line: 85, baseType: !372, size: 32, offset: 32)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !373, line: 275, baseType: !374)
!373 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !373, line: 275, size: 32, elements: !375)
!375 = !{!376}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !374, file: !373, line: 275, baseType: !377, size: 32)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !373, line: 69, baseType: !378)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !373, line: 64, size: 32, elements: !379)
!379 = !{!380}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !378, file: !373, line: 65, baseType: !5, size: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !367, file: !368, line: 86, baseType: !382, size: 128, offset: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !383, line: 38, size: 128, elements: !384)
!383 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!384 = !{!385, !387}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !382, file: !383, line: 39, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !382, file: !383, line: 39, baseType: !388, size: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !367, file: !368, line: 87, baseType: !366, size: 64, offset: 192)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !367, file: !368, line: 88, baseType: !391, size: 128, offset: 256)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !368, line: 49, size: 128, elements: !392)
!392 = !{!393, !407}
!393 = !DIDerivedType(tag: DW_TAG_member, scope: !391, file: !368, line: 50, baseType: !394, size: 64)
!394 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !391, file: !368, line: 50, size: 64, elements: !395)
!395 = !{!396, !403}
!396 = !DIDerivedType(tag: DW_TAG_member, scope: !394, file: !368, line: 51, baseType: !397, size: 64)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !394, file: !368, line: 51, size: 64, elements: !398)
!398 = !{!399, !402}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !397, file: !368, line: 52, baseType: !400, size: 32)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !85, line: 21, baseType: !401)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !87, line: 27, baseType: !5)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !397, file: !368, line: 52, baseType: !400, size: 32, offset: 32)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !394, file: !368, line: 54, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !85, line: 23, baseType: !405)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !87, line: 31, baseType: !406)
!406 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !391, file: !368, line: 56, baseType: !408, size: 64, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !367, file: !368, line: 89, baseType: !331, size: 64, offset: 384)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !367, file: !368, line: 91, baseType: !412, size: 256, offset: 448)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 256, elements: !413)
!413 = !{!414}
!414 = !DISubrange(count: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !367, file: !368, line: 94, baseType: !416, size: 64, offset: 704)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !417, line: 25, size: 64, elements: !418)
!417 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!418 = !{!419}
!419 = !DIDerivedType(tag: DW_TAG_member, scope: !416, file: !417, line: 26, baseType: !420, size: 64)
!420 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !416, file: !417, line: 26, size: 64, elements: !421)
!421 = !{!422, !423}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !420, file: !417, line: 28, baseType: !405, size: 64, align: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, scope: !420, file: !417, line: 30, baseType: !424, size: 64)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !420, file: !417, line: 30, size: 64, elements: !425)
!425 = !{!426, !427}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !424, file: !417, line: 31, baseType: !60, size: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !424, file: !417, line: 32, baseType: !23, size: 32, offset: 32)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !367, file: !368, line: 95, baseType: !429, size: 64, offset: 768)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !431)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !368, line: 128, size: 1024, align: 512, elements: !432)
!432 = !{!433, !437, !438, !445, !451, !455, !459, !463, !464, !468, !473, !4894, !4898}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !431, file: !368, line: 129, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{!23, !366, !5}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !431, file: !368, line: 130, baseType: !434, size: 64, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !431, file: !368, line: 131, baseType: !439, size: 64, offset: 128)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!23, !442, !444}
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !367)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !431, file: !368, line: 132, baseType: !446, size: 64, offset: 192)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!23, !442, !5, !17, !449}
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !391)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !431, file: !368, line: 134, baseType: !452, size: 64, offset: 256)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!23, !442}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !431, file: !368, line: 135, baseType: !456, size: 64, offset: 320)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!23, !366}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !431, file: !368, line: 136, baseType: !460, size: 64, offset: 384)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !366}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !431, file: !368, line: 137, baseType: !460, size: 64, offset: 448)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !431, file: !368, line: 138, baseType: !465, size: 64, offset: 512)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{null, !366, !331}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !431, file: !368, line: 139, baseType: !469, size: 64, offset: 576)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{!472, !366, !472, !23}
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !431, file: !368, line: 140, baseType: !474, size: 64, offset: 640)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{!477, !4893}
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !479, line: 70, size: 256, elements: !480)
!479 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!480 = !{!481, !482, !4889, !4890}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !478, file: !479, line: 71, baseType: !366, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !478, file: !479, line: 72, baseType: !483, size: 64, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !216, line: 1190, size: 10752, elements: !485)
!485 = !{!486, !487, !490, !491, !492, !493, !2287, !2439, !2479, !2564, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2581, !2585, !2586, !3047, !3050, !3108, !3111, !3112, !3113, !3154, !4823, !4824, !4825, !4826, !4827, !4828, !4831, !4832, !4839, !4840, !4841, !4842, !4843, !4858, !4859, !4860, !4861, !4862, !4863, !4864, !4865, !4880, !4881, !4882, !4883, !4884, !4885, !4886, !4887, !4888}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !484, file: !216, line: 1191, baseType: !98, size: 128)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !484, file: !216, line: 1192, baseType: !488, size: 32, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !26, line: 21, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !26, line: 18, baseType: !400)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !484, file: !216, line: 1193, baseType: !88, size: 8, offset: 160)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !484, file: !216, line: 1194, baseType: !40, size: 64, offset: 192)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !484, file: !216, line: 1195, baseType: !42, size: 64, offset: 256)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !484, file: !216, line: 1196, baseType: !494, size: 64, offset: 320)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !216, line: 2366, size: 576, elements: !496)
!496 = !{!497, !498, !499, !505, !509, !513, !517, !2275, !2276, !2277, !2279, !2280, !2281, !2283, !2284, !2285, !2286}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !495, file: !216, line: 2367, baseType: !17, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !495, file: !216, line: 2368, baseType: !23, size: 32, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !495, file: !216, line: 2376, baseType: !500, size: 64, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!23, !503}
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !479, line: 21, flags: DIFlagFwdDecl)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !495, file: !216, line: 2377, baseType: !506, size: 64, offset: 192)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !508)
!508 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !216, line: 75, flags: DIFlagFwdDecl)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !495, file: !216, line: 2378, baseType: !510, size: 64, offset: 256)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!366, !494, !23, !17, !21}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !495, file: !216, line: 2380, baseType: !514, size: 64, offset: 320)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{null, !483}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !495, file: !216, line: 2381, baseType: !518, size: 64, offset: 384)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !109, line: 402, size: 9216, align: 512, elements: !520)
!520 = !{!521, !522, !523, !527, !1932, !1958, !1959, !1960, !1961, !1965, !1968, !1969, !1970, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2038, !2042, !2062, !2080, !2081, !2082, !2083, !2092, !2115, !2116, !2119, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2133, !2134, !2233, !2241, !2242, !2243, !2245, !2249, !2250, !2254, !2255, !2256, !2257, !2259, !2260, !2261, !2268, !2269, !2270, !2274}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !519, file: !109, line: 403, baseType: !108, size: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !519, file: !109, line: 406, baseType: !98, size: 128, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !519, file: !109, line: 409, baseType: !524, size: 448, offset: 192)
!524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 448, elements: !525)
!525 = !{!526}
!526 = !DISubrange(count: 56)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !519, file: !109, line: 417, baseType: !528, size: 768, offset: 640)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !109, line: 45, size: 768, elements: !529)
!529 = !{!530, !1926, !1927, !1928, !1931}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !528, file: !109, line: 46, baseType: !531, size: 512)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !532, line: 64, size: 512, elements: !533)
!532 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!533 = !{!534, !535, !536, !538, !584, !1824, !1916, !1921, !1922, !1923, !1924, !1925}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !531, file: !532, line: 65, baseType: !17, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !531, file: !532, line: 66, baseType: !98, size: 128, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !531, file: !532, line: 67, baseType: !537, size: 64, offset: 192)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !531, file: !532, line: 68, baseType: !539, size: 64, offset: 256)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !532, line: 168, size: 768, elements: !541)
!541 = !{!542, !543, !544, !545}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !540, file: !532, line: 169, baseType: !98, size: 128)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !540, file: !532, line: 170, baseType: !60, size: 32, offset: 128)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !540, file: !532, line: 171, baseType: !531, size: 512, offset: 192)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !540, file: !532, line: 172, baseType: !546, size: 64, offset: 704)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !548)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !532, line: 133, size: 192, elements: !549)
!549 = !{!550, !557, !562}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !548, file: !532, line: 134, baseType: !551, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !552)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{!23, !555}
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !531)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !548, file: !532, line: 135, baseType: !558, size: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !559)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{!17, !555}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !548, file: !532, line: 136, baseType: !563, size: 64, offset: 128)
!563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !564)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{!23, !555, !567}
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !532, line: 125, size: 20736, elements: !569)
!569 = !{!570, !574, !578, !579, !583}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !568, file: !532, line: 126, baseType: !571, size: 192)
!571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 192, elements: !572)
!572 = !{!573}
!573 = !DISubrange(count: 3)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !568, file: !532, line: 127, baseType: !575, size: 4096, offset: 192)
!575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 4096, elements: !576)
!576 = !{!577}
!577 = !DISubrange(count: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !568, file: !532, line: 128, baseType: !23, size: 32, offset: 4288)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !568, file: !532, line: 129, baseType: !580, size: 16384, offset: 4320)
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 16384, elements: !581)
!581 = !{!582}
!582 = !DISubrange(count: 2048)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !568, file: !532, line: 130, baseType: !23, size: 32, offset: 20704)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !531, file: !532, line: 69, baseType: !585, size: 64, offset: 320)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !587)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !532, line: 116, size: 384, elements: !588)
!588 = !{!589, !593, !616, !1785, !1816, !1820}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !587, file: !532, line: 117, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{null, !537}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !587, file: !532, line: 118, baseType: !594, size: 64, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !596)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !597, line: 254, size: 128, elements: !598)
!597 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!598 = !{!599, !612}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !596, file: !597, line: 255, baseType: !600, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{!603, !537, !607, !472}
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !26, line: 66, baseType: !604)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !38, line: 73, baseType: !605)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !38, line: 15, baseType: !606)
!606 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !597, line: 30, size: 128, elements: !609)
!609 = !{!610, !611}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !608, file: !597, line: 31, baseType: !17, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !608, file: !597, line: 32, baseType: !25, size: 16, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !596, file: !597, line: 256, baseType: !613, size: 64, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{!603, !537, !607, !17, !36}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !587, file: !532, line: 119, baseType: !617, size: 64, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !620)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !597, line: 84, size: 320, elements: !621)
!621 = !{!622, !623, !627, !1781, !1783}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !620, file: !597, line: 85, baseType: !17, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !620, file: !597, line: 86, baseType: !624, size: 64, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!25, !537, !607, !23}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !620, file: !597, line: 88, baseType: !628, size: 64, offset: 128)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!25, !537, !631, !23}
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !597, line: 175, size: 512, elements: !633)
!633 = !{!634, !635, !636, !637, !641, !1776, !1777}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !632, file: !597, line: 176, baseType: !608, size: 128)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !632, file: !597, line: 177, baseType: !36, size: 64, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !632, file: !597, line: 178, baseType: !21, size: 64, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !632, file: !597, line: 179, baseType: !638, size: 64, offset: 256)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{!327}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !632, file: !597, line: 180, baseType: !642, size: 64, offset: 320)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!603, !645, !537, !631, !472, !42, !36}
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !216, line: 994, size: 1856, align: 64, elements: !647)
!647 = !{!648, !667, !668, !670, !679, !692, !693, !694, !760, !1119, !1128, !1134, !1135, !1766, !1767, !1768, !1769, !1771, !1772, !1775}
!648 = !DIDerivedType(tag: DW_TAG_member, scope: !646, file: !216, line: 995, baseType: !649, size: 128)
!649 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !646, file: !216, line: 995, size: 128, elements: !650)
!650 = !{!651, !657, !666}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !649, file: !216, line: 996, baseType: !652, size: 64)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !653, line: 60, size: 64, elements: !654)
!653 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!654 = !{!655}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !652, file: !653, line: 61, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !649, file: !216, line: 997, baseType: !658, size: 128, align: 64)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !26, line: 232, size: 128, align: 64, elements: !659)
!659 = !{!660, !662}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !658, file: !26, line: 233, baseType: !661, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !658, file: !26, line: 234, baseType: !663, size: 64, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{null, !661}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !649, file: !216, line: 998, baseType: !5, size: 32)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !646, file: !216, line: 1005, baseType: !60, size: 32, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !646, file: !216, line: 1006, baseType: !669, size: 32, offset: 160)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !26, line: 156, baseType: !5)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !646, file: !216, line: 1007, baseType: !671, size: 64, offset: 192)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !672, line: 13, baseType: !673)
!672 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !26, line: 181, baseType: !674)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !26, line: 179, size: 64, elements: !675)
!675 = !{!676}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !674, file: !26, line: 180, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !85, line: 22, baseType: !678)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !87, line: 30, baseType: !44)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !646, file: !216, line: 1008, baseType: !680, size: 256, offset: 256)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !681, line: 66, size: 256, elements: !682)
!681 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!682 = !{!683, !684, !686, !691}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !680, file: !681, line: 67, baseType: !671, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !680, file: !681, line: 68, baseType: !685, size: 32, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !69, line: 23, baseType: !68)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !680, file: !681, line: 70, baseType: !687, size: 32, offset: 96)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !688, line: 15, size: 32, elements: !689)
!688 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!689 = !{!690}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !687, file: !688, line: 20, baseType: !50, size: 32)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !680, file: !681, line: 72, baseType: !98, size: 128, offset: 128)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !646, file: !216, line: 1009, baseType: !42, size: 64, offset: 512)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !646, file: !216, line: 1010, baseType: !5, size: 32, offset: 576)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !646, file: !216, line: 1011, baseType: !695, size: 256, offset: 640)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !216, line: 948, size: 256, elements: !696)
!696 = !{!697, !718, !756, !757, !758, !759}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !695, file: !216, line: 949, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !699, line: 34, baseType: !700)
!699 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !699, line: 25, size: 64, elements: !701)
!701 = !{!702}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !700, file: !699, line: 26, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !704, line: 27, baseType: !705)
!704 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !704, line: 13, size: 64, elements: !706)
!706 = !{!707, !717}
!707 = !DIDerivedType(tag: DW_TAG_member, scope: !705, file: !704, line: 14, baseType: !708, size: 32)
!708 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !705, file: !704, line: 14, size: 32, elements: !709)
!709 = !{!710, !711}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !708, file: !704, line: 15, baseType: !50, size: 32)
!711 = !DIDerivedType(tag: DW_TAG_member, scope: !708, file: !704, line: 16, baseType: !712, size: 32)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !708, file: !704, line: 16, size: 32, elements: !713)
!713 = !{!714, !715}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !712, file: !704, line: 18, baseType: !84, size: 8)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !712, file: !704, line: 19, baseType: !716, size: 24, offset: 8)
!716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 24, elements: !572)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !705, file: !704, line: 26, baseType: !72, size: 32, offset: 32)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !695, file: !216, line: 950, baseType: !719, size: 64, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !4, line: 59, size: 768, elements: !721)
!721 = !{!722, !728, !729, !730, !743, !744, !745, !746}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !720, file: !4, line: 61, baseType: !723, size: 32)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !724, line: 113, baseType: !725)
!724 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !724, line: 111, size: 32, elements: !726)
!726 = !{!727}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !725, file: !724, line: 112, baseType: !50, size: 32)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !720, file: !4, line: 62, baseType: !5, size: 32, offset: 32)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !720, file: !4, line: 63, baseType: !60, size: 32, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !720, file: !4, line: 65, baseType: !731, size: 256, offset: 128)
!731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !732, size: 256, elements: !741)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !26, line: 194, size: 64, elements: !733)
!733 = !{!734}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !732, file: !26, line: 195, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !26, line: 198, size: 128, elements: !737)
!737 = !{!738, !739}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !736, file: !26, line: 199, baseType: !735, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !736, file: !26, line: 199, baseType: !740, size: 64, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!741 = !{!742}
!742 = !DISubrange(count: 4)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !720, file: !4, line: 66, baseType: !732, size: 64, offset: 384)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !720, file: !4, line: 68, baseType: !55, size: 192, offset: 448)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !720, file: !4, line: 69, baseType: !658, size: 128, align: 64, offset: 640)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !720, file: !4, line: 70, baseType: !747, offset: 768)
!747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !748, elements: !754)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !4, line: 54, size: 128, elements: !749)
!749 = !{!750, !751}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !748, file: !4, line: 55, baseType: !23, size: 32)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !748, file: !4, line: 56, baseType: !752, size: 64, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !4, line: 56, flags: DIFlagFwdDecl)
!754 = !{!755}
!755 = !DISubrange(count: -1)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !695, file: !216, line: 951, baseType: !3, size: 32, offset: 128)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !695, file: !216, line: 952, baseType: !337, size: 32, offset: 160)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !695, file: !216, line: 952, baseType: !337, size: 32, offset: 192)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !695, file: !216, line: 953, baseType: !23, size: 32, offset: 224)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !646, file: !216, line: 1012, baseType: !761, size: 64, offset: 896)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !763)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !764, line: 110, size: 1472, elements: !765)
!764 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!765 = !{!766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !782, !783, !784, !785, !786, !787, !917, !918, !919, !920, !921, !952, !1105, !1106, !1114}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !763, file: !764, line: 111, baseType: !671, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !763, file: !764, line: 112, baseType: !337, size: 32, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !763, file: !764, line: 113, baseType: !346, size: 32, offset: 96)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !763, file: !764, line: 114, baseType: !337, size: 32, offset: 128)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !763, file: !764, line: 115, baseType: !346, size: 32, offset: 160)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !763, file: !764, line: 116, baseType: !337, size: 32, offset: 192)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !763, file: !764, line: 117, baseType: !346, size: 32, offset: 224)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !763, file: !764, line: 118, baseType: !337, size: 32, offset: 256)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !763, file: !764, line: 119, baseType: !346, size: 32, offset: 288)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !763, file: !764, line: 120, baseType: !5, size: 32, offset: 320)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !763, file: !764, line: 121, baseType: !777, size: 64, offset: 384)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !778, line: 24, baseType: !779)
!778 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !778, line: 24, size: 64, elements: !780)
!780 = !{!781}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !779, file: !778, line: 24, baseType: !404, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !763, file: !764, line: 122, baseType: !777, size: 64, offset: 448)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !763, file: !764, line: 123, baseType: !777, size: 64, offset: 512)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !763, file: !764, line: 124, baseType: !777, size: 64, offset: 576)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !763, file: !764, line: 125, baseType: !777, size: 64, offset: 640)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !763, file: !764, line: 127, baseType: !88, size: 8, offset: 704)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !763, file: !764, line: 129, baseType: !788, size: 64, offset: 768)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !790, line: 195, size: 1728, elements: !791)
!790 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!791 = !{!792, !793, !798, !810, !819, !822, !823, !830, !831, !832, !833, !836, !837, !838, !840, !841, !881, !902}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !789, file: !790, line: 196, baseType: !723, size: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !789, file: !790, line: 197, baseType: !794, size: 32, offset: 32)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !790, line: 28, baseType: !795)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !26, line: 104, baseType: !796)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !85, line: 20, baseType: !797)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !87, line: 26, baseType: !23)
!798 = !DIDerivedType(tag: DW_TAG_member, scope: !789, file: !790, line: 198, baseType: !799, size: 192, offset: 64)
!799 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !789, file: !790, line: 198, size: 192, elements: !800)
!800 = !{!801, !802}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !799, file: !790, line: 199, baseType: !98, size: 128)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !799, file: !790, line: 200, baseType: !803, size: 192, align: 64)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !804, line: 5, size: 192, align: 64, elements: !805)
!804 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!805 = !{!806, !807, !809}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !803, file: !804, line: 6, baseType: !40, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !803, file: !804, line: 7, baseType: !808, size: 64, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !803, file: !804, line: 8, baseType: !808, size: 64, offset: 128)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !789, file: !790, line: 205, baseType: !811, size: 320, offset: 256)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !812, line: 48, size: 320, elements: !813)
!812 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!813 = !{!814, !815, !816, !817, !818}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !811, file: !812, line: 49, baseType: !671, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !811, file: !812, line: 55, baseType: !671, size: 64, offset: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !811, file: !812, line: 57, baseType: !687, size: 32, offset: 128)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !811, file: !812, line: 59, baseType: !685, size: 32, offset: 160)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !811, file: !812, line: 60, baseType: !98, size: 128, offset: 192)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !789, file: !790, line: 206, baseType: !820, size: 64, offset: 576)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !790, line: 206, flags: DIFlagFwdDecl)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !789, file: !790, line: 207, baseType: !21, size: 64, offset: 640)
!823 = !DIDerivedType(tag: DW_TAG_member, scope: !789, file: !790, line: 208, baseType: !824, size: 64, offset: 704)
!824 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !789, file: !790, line: 208, size: 64, elements: !825)
!825 = !{!826, !829}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !824, file: !790, line: 209, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !828, line: 8, baseType: !678)
!828 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!829 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !824, file: !790, line: 210, baseType: !827, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !789, file: !790, line: 212, baseType: !827, size: 64, offset: 768)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !789, file: !790, line: 213, baseType: !337, size: 32, offset: 832)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !789, file: !790, line: 214, baseType: !346, size: 32, offset: 864)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !789, file: !790, line: 215, baseType: !834, size: 32, offset: 896)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !790, line: 31, baseType: !835)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !26, line: 110, baseType: !400)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !789, file: !790, line: 216, baseType: !27, size: 16, offset: 928)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !789, file: !790, line: 217, baseType: !27, size: 16, offset: 944)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !789, file: !790, line: 221, baseType: !839, size: 16, offset: 960)
!839 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !789, file: !790, line: 228, baseType: !40, size: 64, offset: 1024)
!841 = !DIDerivedType(tag: DW_TAG_member, scope: !789, file: !790, line: 245, baseType: !842, size: 320, offset: 1088)
!842 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !789, file: !790, line: 245, size: 320, elements: !843)
!843 = !{!844, !873}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !842, file: !790, line: 246, baseType: !845, size: 320)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !790, line: 114, size: 320, elements: !846)
!846 = !{!847, !848, !860, !863, !872}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !845, file: !790, line: 116, baseType: !40, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, scope: !845, file: !790, line: 117, baseType: !849, size: 64, offset: 64)
!849 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !845, file: !790, line: 117, size: 64, elements: !850)
!850 = !{!851, !859}
!851 = !DIDerivedType(tag: DW_TAG_member, scope: !849, file: !790, line: 118, baseType: !852, size: 64)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !849, file: !790, line: 118, size: 64, elements: !853)
!853 = !{!854, !855}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !852, file: !790, line: 120, baseType: !94, size: 16)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !852, file: !790, line: 121, baseType: !856, size: 48, offset: 16)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 48, elements: !857)
!857 = !{!858}
!858 = !DISubrange(count: 6)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !849, file: !790, line: 127, baseType: !40, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !845, file: !790, line: 129, baseType: !861, size: 64, offset: 128)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !790, line: 102, flags: DIFlagFwdDecl)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !845, file: !790, line: 130, baseType: !864, size: 64, offset: 192)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !790, line: 108, size: 192, elements: !866)
!866 = !{!867, !868, !869}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !865, file: !790, line: 109, baseType: !658, size: 128, align: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !865, file: !790, line: 110, baseType: !723, size: 32, offset: 128)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !865, file: !790, line: 111, baseType: !870, size: 8, offset: 160)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !26, line: 35, baseType: !871)
!871 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !845, file: !790, line: 131, baseType: !17, size: 64, offset: 256)
!873 = !DIDerivedType(tag: DW_TAG_member, scope: !842, file: !790, line: 247, baseType: !874, size: 320)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !842, file: !790, line: 247, size: 320, elements: !875)
!875 = !{!876, !877, !878, !879, !880}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !874, file: !790, line: 248, baseType: !40, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !874, file: !790, line: 249, baseType: !40, size: 64, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !874, file: !790, line: 250, baseType: !861, size: 64, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !874, file: !790, line: 251, baseType: !864, size: 64, offset: 192)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !874, file: !790, line: 252, baseType: !472, size: 64, offset: 256)
!881 = !DIDerivedType(tag: DW_TAG_member, scope: !789, file: !790, line: 260, baseType: !882, size: 256, offset: 1408)
!882 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !789, file: !790, line: 260, size: 256, elements: !883)
!883 = !{!884, !890}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !882, file: !790, line: 261, baseType: !885, size: 256)
!885 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !790, line: 134, size: 256, elements: !886)
!886 = !{!887, !888}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !885, file: !790, line: 135, baseType: !21, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !885, file: !790, line: 136, baseType: !889, size: 256)
!889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 256, elements: !741)
!890 = !DIDerivedType(tag: DW_TAG_member, scope: !882, file: !790, line: 262, baseType: !891, size: 256)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !882, file: !790, line: 262, size: 256, elements: !892)
!892 = !{!893, !894}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !891, file: !790, line: 264, baseType: !98, size: 128)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !891, file: !790, line: 265, baseType: !895, size: 128, offset: 128)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !896, line: 22, size: 128, elements: !897)
!896 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!897 = !{!898, !901}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !895, file: !896, line: 23, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !896, line: 23, flags: DIFlagFwdDecl)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !895, file: !896, line: 24, baseType: !40, size: 64, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !789, file: !790, line: 280, baseType: !903, size: 64, offset: 1664)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !790, line: 176, size: 192, elements: !905)
!905 = !{!906, !915, !916}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !904, file: !790, line: 177, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !790, line: 171, baseType: !908)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DISubroutineType(types: !910)
!910 = !{!23, !788, !911, !913, !788}
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !862)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !885)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !904, file: !790, line: 178, baseType: !788, size: 64, offset: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !904, file: !790, line: 179, baseType: !861, size: 64, offset: 128)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !763, file: !764, line: 130, baseType: !788, size: 64, offset: 832)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !763, file: !764, line: 131, baseType: !788, size: 64, offset: 896)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !763, file: !764, line: 132, baseType: !788, size: 64, offset: 960)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !763, file: !764, line: 135, baseType: !21, size: 64, offset: 1024)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !763, file: !764, line: 137, baseType: !922, size: 64, offset: 1088)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !924, line: 14, size: 1088, elements: !925)
!924 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!925 = !{!926, !927, !936, !937, !938, !939, !940, !941}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !923, file: !924, line: 15, baseType: !723, size: 32)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !923, file: !924, line: 17, baseType: !928, size: 320, offset: 64)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !929, line: 22, size: 320, elements: !930)
!929 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!930 = !{!931, !932, !933, !934}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !928, file: !929, line: 23, baseType: !685, size: 32)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !928, file: !929, line: 24, baseType: !677, size: 64, offset: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !928, file: !929, line: 26, baseType: !98, size: 128, offset: 128)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !928, file: !929, line: 28, baseType: !935, size: 64, offset: 256)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !923, file: !924, line: 19, baseType: !40, size: 64, offset: 384)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !923, file: !924, line: 20, baseType: !671, size: 64, offset: 448)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !923, file: !924, line: 23, baseType: !736, size: 128, offset: 512)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !923, file: !924, line: 24, baseType: !337, size: 32, offset: 640)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !923, file: !924, line: 29, baseType: !671, size: 64, offset: 704)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !923, file: !924, line: 36, baseType: !942, size: 320, offset: 768)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !943, line: 15, size: 320, elements: !944)
!943 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!944 = !{!945, !946, !947, !948, !949, !950, !951}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !942, file: !943, line: 16, baseType: !685, size: 32)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !942, file: !943, line: 18, baseType: !23, size: 32, offset: 32)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !942, file: !943, line: 19, baseType: !23, size: 32, offset: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !942, file: !943, line: 20, baseType: !23, size: 32, offset: 96)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !942, file: !943, line: 21, baseType: !23, size: 32, offset: 128)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !942, file: !943, line: 22, baseType: !40, size: 64, offset: 192)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !942, file: !943, line: 23, baseType: !40, size: 64, offset: 256)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !763, file: !764, line: 138, baseType: !953, size: 64, offset: 1152)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !955, line: 68, size: 4800, elements: !956)
!955 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!956 = !{!957, !979, !980, !981, !982, !983, !984, !985, !996, !997, !998, !999, !1000, !1001, !1013, !1086, !1087, !1101, !1103}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !954, file: !955, line: 69, baseType: !958, size: 576)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !955, line: 23, size: 576, elements: !959)
!959 = !{!960, !961}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !958, file: !955, line: 24, baseType: !400, size: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, scope: !958, file: !955, line: 25, baseType: !962, size: 512, offset: 64)
!962 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !958, file: !955, line: 25, size: 512, elements: !963)
!963 = !{!964, !973}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !962, file: !955, line: 26, baseType: !965, size: 480)
!965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !966, size: 480, elements: !971)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !955, line: 17, size: 96, elements: !967)
!967 = !{!968, !969, !970}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !966, file: !955, line: 18, baseType: !400, size: 32)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !966, file: !955, line: 19, baseType: !400, size: 32, offset: 32)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !966, file: !955, line: 20, baseType: !400, size: 32, offset: 64)
!971 = !{!972}
!972 = !DISubrange(count: 5)
!973 = !DIDerivedType(tag: DW_TAG_member, scope: !962, file: !955, line: 27, baseType: !974, size: 128)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !962, file: !955, line: 27, size: 128, elements: !975)
!975 = !{!976, !978}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !974, file: !955, line: 28, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !974, file: !955, line: 29, baseType: !977, size: 64, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !954, file: !955, line: 70, baseType: !958, size: 576, offset: 576)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !954, file: !955, line: 71, baseType: !958, size: 576, offset: 1152)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !954, file: !955, line: 72, baseType: !953, size: 64, offset: 1728)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !954, file: !955, line: 73, baseType: !23, size: 32, offset: 1792)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !954, file: !955, line: 74, baseType: !337, size: 32, offset: 1824)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !954, file: !955, line: 75, baseType: !346, size: 32, offset: 1856)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !954, file: !955, line: 76, baseType: !986, size: 192, offset: 1920)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !987, line: 9, size: 192, elements: !988)
!987 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!988 = !{!989, !990, !994, !995}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !986, file: !987, line: 10, baseType: !671, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !986, file: !987, line: 11, baseType: !991, size: 64, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !993)
!993 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !987, line: 7, flags: DIFlagFwdDecl)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !986, file: !987, line: 12, baseType: !5, size: 32, offset: 128)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !986, file: !987, line: 13, baseType: !723, size: 32, offset: 160)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !954, file: !955, line: 77, baseType: !40, size: 64, offset: 2112)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !954, file: !955, line: 80, baseType: !870, size: 8, offset: 2176)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !954, file: !955, line: 88, baseType: !98, size: 128, offset: 2240)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !954, file: !955, line: 89, baseType: !788, size: 64, offset: 2368)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !954, file: !955, line: 90, baseType: !811, size: 320, offset: 2432)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !954, file: !955, line: 97, baseType: !1002, size: 256, offset: 2752)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1003, line: 98, size: 256, elements: !1004)
!1003 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1004 = !{!1005, !1006, !1007}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1002, file: !1003, line: 99, baseType: !671, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1002, file: !1003, line: 100, baseType: !98, size: 128, offset: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1002, file: !1003, line: 101, baseType: !1008, size: 64, offset: 192)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1003, line: 21, baseType: !1009)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{null, !1012}
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !954, file: !955, line: 99, baseType: !1014, size: 768, offset: 3008)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !13, line: 199, size: 768, elements: !1015)
!1015 = !{!1016, !1021}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1014, file: !13, line: 200, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!23, !1020}
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1014, file: !13, line: 201, baseType: !1022, size: 704, offset: 64)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !13, line: 193, size: 704, elements: !1023)
!1023 = !{!1024, !1082}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1022, file: !13, line: 195, baseType: !1025, size: 640)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !13, line: 173, size: 640, elements: !1026)
!1026 = !{!1027, !1039, !1051, !1052, !1072, !1073, !1075, !1081}
!1027 = !DIDerivedType(tag: DW_TAG_member, scope: !1025, file: !13, line: 174, baseType: !1028, size: 192)
!1028 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1025, file: !13, line: 174, size: 192, elements: !1029)
!1029 = !{!1030, !1038}
!1030 = !DIDerivedType(tag: DW_TAG_member, scope: !1028, file: !13, line: 175, baseType: !1031, size: 192)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1028, file: !13, line: 175, size: 192, elements: !1032)
!1032 = !{!1033, !1034, !1035, !1036, !1037}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1031, file: !13, line: 176, baseType: !34, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1031, file: !13, line: 177, baseType: !23, size: 32, offset: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1031, file: !13, line: 178, baseType: !23, size: 32, offset: 96)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1031, file: !13, line: 179, baseType: !23, size: 32, offset: 128)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1031, file: !13, line: 180, baseType: !23, size: 32, offset: 160)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1028, file: !13, line: 182, baseType: !658, size: 128, align: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1025, file: !13, line: 184, baseType: !1040, size: 64, offset: 192)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1042, line: 26, size: 256, elements: !1043)
!1042 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1043 = !{!1044, !1045}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1041, file: !1042, line: 27, baseType: !5, size: 32)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1041, file: !1042, line: 28, baseType: !1046, size: 192, offset: 64)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1047, line: 43, size: 192, elements: !1048)
!1047 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1048 = !{!1049, !1050}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1046, file: !1047, line: 44, baseType: !685, size: 32)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1046, file: !1047, line: 45, baseType: !98, size: 128, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1025, file: !13, line: 185, baseType: !34, size: 64, offset: 256)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1025, file: !13, line: 186, baseType: !1053, size: 64, offset: 320)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !13, line: 204, size: 960, elements: !1055)
!1055 = !{!1056, !1057, !1061, !1068}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1054, file: !13, line: 205, baseType: !1014, size: 768)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1054, file: !13, line: 206, baseType: !1058, size: 64, offset: 768)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!1020, !1053}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1054, file: !13, line: 207, baseType: !1062, size: 64, offset: 832)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{null, !1065, !1066, !1067}
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1054, file: !13, line: 209, baseType: !1069, size: 64, offset: 896)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!23, !1065, !34}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1025, file: !13, line: 187, baseType: !1020, size: 64, offset: 384)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1025, file: !13, line: 188, baseType: !1074, size: 64, offset: 448)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1025, file: !13, line: 189, baseType: !1076, size: 64, offset: 512)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !13, line: 157, size: 256, elements: !1078)
!1078 = !{!1079, !1080}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1077, file: !13, line: 158, baseType: !803, size: 192, align: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1077, file: !13, line: 159, baseType: !1065, size: 64, offset: 192)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1025, file: !13, line: 190, baseType: !732, size: 64, offset: 576)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1022, file: !13, line: 196, baseType: !1083, size: 64, offset: 640)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !804, line: 12, size: 64, elements: !1084)
!1084 = !{!1085}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1083, file: !804, line: 13, baseType: !808, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !954, file: !955, line: 100, baseType: !1065, size: 64, offset: 3776)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !954, file: !955, line: 102, baseType: !1088, size: 64, offset: 3840)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !955, line: 107, size: 1152, elements: !1090)
!1090 = !{!1091, !1092, !1093, !1094, !1095, !1099}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1089, file: !955, line: 108, baseType: !736, size: 128)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1089, file: !955, line: 109, baseType: !953, size: 64, offset: 128)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1089, file: !955, line: 110, baseType: !337, size: 32, offset: 192)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1089, file: !955, line: 111, baseType: !50, size: 32, offset: 224)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1089, file: !955, line: 112, baseType: !1096, size: 640, offset: 256)
!1096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !671, size: 640, elements: !1097)
!1097 = !{!1098}
!1098 = !DISubrange(count: 10)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1089, file: !955, line: 113, baseType: !1100, size: 256, offset: 896)
!1100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !671, size: 256, elements: !741)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !954, file: !955, line: 103, baseType: !1102, size: 640, offset: 3904)
!1102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !606, size: 640, elements: !1097)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !954, file: !955, line: 104, baseType: !1104, size: 256, offset: 4544)
!1104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !606, size: 256, elements: !741)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !763, file: !764, line: 139, baseType: !1088, size: 64, offset: 1216)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !763, file: !764, line: 140, baseType: !1107, size: 64, offset: 1280)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !764, line: 25, size: 64, elements: !1109)
!1109 = !{!1110, !1111, !1112}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1108, file: !764, line: 26, baseType: !50, size: 32)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1108, file: !764, line: 27, baseType: !23, size: 32, offset: 32)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1108, file: !764, line: 28, baseType: !1113, offset: 64)
!1113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, elements: !754)
!1114 = !DIDerivedType(tag: DW_TAG_member, scope: !763, file: !764, line: 142, baseType: !1115, size: 128, offset: 1344)
!1115 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !763, file: !764, line: 142, size: 128, elements: !1116)
!1116 = !{!1117, !1118}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1115, file: !764, line: 143, baseType: !23, size: 32)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1115, file: !764, line: 144, baseType: !658, size: 128, align: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !646, file: !216, line: 1013, baseType: !1120, size: 256, offset: 960)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !216, line: 970, size: 256, elements: !1121)
!1121 = !{!1122, !1123, !1124, !1125, !1126, !1127}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1120, file: !216, line: 971, baseType: !40, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1120, file: !216, line: 972, baseType: !5, size: 32, offset: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1120, file: !216, line: 973, baseType: !5, size: 32, offset: 96)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1120, file: !216, line: 974, baseType: !5, size: 32, offset: 128)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1120, file: !216, line: 975, baseType: !5, size: 32, offset: 160)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1120, file: !216, line: 976, baseType: !42, size: 64, offset: 192)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !646, file: !216, line: 1014, baseType: !1129, size: 128, offset: 1216)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1130, line: 8, size: 128, elements: !1131)
!1130 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1131 = !{!1132, !1133}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1129, file: !1130, line: 9, baseType: !477, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1129, file: !1130, line: 10, baseType: !366, size: 64, offset: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !646, file: !216, line: 1015, baseType: !331, size: 64, offset: 1344)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !646, file: !216, line: 1016, baseType: !1136, size: 64, offset: 1408)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1138)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !216, line: 1914, size: 2112, elements: !1139)
!1139 = !{!1140, !1141, !1145, !1149, !1153, !1264, !1265, !1271, !1284, !1292, !1296, !1297, !1649, !1650, !1654, !1659, !1660, !1664, !1668, !1674, !1675, !1679, !1680, !1687, !1691, !1695, !1701, !1705, !1747, !1751, !1755, !1756, !1762}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1138, file: !216, line: 1915, baseType: !518, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1138, file: !216, line: 1916, baseType: !1142, size: 64, offset: 64)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!42, !645, !42, !23}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1138, file: !216, line: 1917, baseType: !1146, size: 64, offset: 128)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!603, !645, !472, !36, !41}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1138, file: !216, line: 1918, baseType: !1150, size: 64, offset: 192)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!603, !645, !17, !36, !41}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1138, file: !216, line: 1919, baseType: !1154, size: 64, offset: 256)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!603, !1157, !1262}
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !216, line: 373, size: 384, elements: !1159)
!1159 = !{!1160, !1161, !1162, !1166, !1167, !1168, !1169}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1158, file: !216, line: 374, baseType: !645, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1158, file: !216, line: 375, baseType: !42, size: 64, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1158, file: !216, line: 376, baseType: !1163, size: 64, offset: 128)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{null, !1157, !606}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1158, file: !216, line: 377, baseType: !21, size: 64, offset: 192)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1158, file: !216, line: 378, baseType: !23, size: 32, offset: 256)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1158, file: !216, line: 379, baseType: !94, size: 16, offset: 288)
!1169 = !DIDerivedType(tag: DW_TAG_member, scope: !1158, file: !216, line: 380, baseType: !1170, size: 64, offset: 320)
!1170 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1158, file: !216, line: 380, size: 64, elements: !1171)
!1171 = !{!1172, !1258}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1170, file: !216, line: 386, baseType: !1173, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1175, line: 998, size: 448, elements: !1176)
!1175 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1176 = !{!1177, !1244, !1245}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !1174, file: !1175, line: 999, baseType: !1178, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !124, line: 293, size: 1536, elements: !1180)
!1180 = !{!1181, !1211, !1225}
!1181 = !DIDerivedType(tag: DW_TAG_member, scope: !1179, file: !124, line: 295, baseType: !1182, size: 512)
!1182 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1179, file: !124, line: 295, size: 512, elements: !1183)
!1183 = !{!1184, !1210}
!1184 = !DIDerivedType(tag: DW_TAG_member, scope: !1182, file: !124, line: 296, baseType: !1185, size: 448)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1182, file: !124, line: 296, size: 448, elements: !1186)
!1186 = !{!1187, !1188, !1197, !1198, !1199, !1208, !1209}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1185, file: !124, line: 298, baseType: !40, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, scope: !1185, file: !124, line: 299, baseType: !1189, size: 128, offset: 64)
!1189 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1185, file: !124, line: 299, size: 128, elements: !1190)
!1190 = !{!1191, !1192}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1189, file: !124, line: 300, baseType: !98, size: 128)
!1192 = !DIDerivedType(tag: DW_TAG_member, scope: !1189, file: !124, line: 302, baseType: !1193, size: 128)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1189, file: !124, line: 302, size: 128, elements: !1194)
!1194 = !{!1195, !1196}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1193, file: !124, line: 303, baseType: !21, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1193, file: !124, line: 305, baseType: !5, size: 32, offset: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1185, file: !124, line: 310, baseType: !327, size: 64, offset: 192)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1185, file: !124, line: 311, baseType: !40, size: 64, offset: 256)
!1199 = !DIDerivedType(tag: DW_TAG_member, scope: !1185, file: !124, line: 312, baseType: !1200, size: 64, offset: 320)
!1200 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1185, file: !124, line: 312, size: 64, elements: !1201)
!1201 = !{!1202, !1203}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1200, file: !124, line: 313, baseType: !21, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1200, file: !124, line: 314, baseType: !1204, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !124, line: 257, baseType: !1205)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !124, line: 255, size: 64, elements: !1206)
!1206 = !{!1207}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1205, file: !124, line: 256, baseType: !40, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1185, file: !124, line: 316, baseType: !50, size: 32, offset: 384)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1185, file: !124, line: 317, baseType: !50, size: 32, offset: 416)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1182, file: !124, line: 323, baseType: !306, size: 512, align: 128)
!1211 = !DIDerivedType(tag: DW_TAG_member, scope: !1179, file: !124, line: 325, baseType: !1212, size: 512, offset: 512)
!1212 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1179, file: !124, line: 325, size: 512, elements: !1213)
!1213 = !{!1214, !1224}
!1214 = !DIDerivedType(tag: DW_TAG_member, scope: !1212, file: !124, line: 326, baseType: !1215, size: 320)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1212, file: !124, line: 326, size: 320, elements: !1216)
!1216 = !{!1217, !1218, !1219, !1220, !1221, !1222, !1223}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1215, file: !124, line: 327, baseType: !40, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1215, file: !124, line: 328, baseType: !40, size: 64, offset: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1215, file: !124, line: 329, baseType: !40, size: 64, offset: 128)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1215, file: !124, line: 331, baseType: !50, size: 32, offset: 192)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1215, file: !124, line: 332, baseType: !50, size: 32, offset: 224)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1215, file: !124, line: 333, baseType: !50, size: 32, offset: 256)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1215, file: !124, line: 335, baseType: !5, size: 32, offset: 288)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1212, file: !124, line: 339, baseType: !306, size: 512, align: 128)
!1225 = !DIDerivedType(tag: DW_TAG_member, scope: !1179, file: !124, line: 341, baseType: !1226, size: 512, offset: 1024)
!1226 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1179, file: !124, line: 341, size: 512, elements: !1227)
!1227 = !{!1228, !1237, !1243}
!1228 = !DIDerivedType(tag: DW_TAG_member, scope: !1226, file: !124, line: 342, baseType: !1229, size: 384)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1226, file: !124, line: 342, size: 384, elements: !1230)
!1230 = !{!1231, !1232, !1233, !1234, !1235, !1236}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1229, file: !124, line: 343, baseType: !40, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1229, file: !124, line: 344, baseType: !40, size: 64, offset: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1229, file: !124, line: 346, baseType: !21, size: 64, offset: 128)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1229, file: !124, line: 347, baseType: !21, size: 64, offset: 192)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1229, file: !124, line: 348, baseType: !21, size: 64, offset: 256)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1229, file: !124, line: 349, baseType: !21, size: 64, offset: 320)
!1237 = !DIDerivedType(tag: DW_TAG_member, scope: !1226, file: !124, line: 352, baseType: !1238, size: 256)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1226, file: !124, line: 352, size: 256, elements: !1239)
!1239 = !{!1240, !1241, !1242}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1238, file: !124, line: 353, baseType: !40, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1238, file: !124, line: 354, baseType: !40, size: 64, offset: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1238, file: !124, line: 356, baseType: !98, size: 128, offset: 128)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1226, file: !124, line: 359, baseType: !306, size: 512, align: 128)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1174, file: !1175, line: 1000, baseType: !23, size: 32, offset: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1174, file: !1175, line: 1001, baseType: !1246, size: 320, offset: 128)
!1246 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !56, line: 14, baseType: !1247)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !56, line: 30, size: 320, elements: !1248)
!1248 = !{!1249, !1250, !1251, !1257}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1247, file: !56, line: 31, baseType: !5, size: 32)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1247, file: !56, line: 32, baseType: !21, size: 64, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1247, file: !56, line: 33, baseType: !1252, size: 64, offset: 128)
!1252 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !56, line: 16, baseType: !1253)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!23, !1256, !5, !23, !21}
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1247, file: !56, line: 34, baseType: !98, size: 128, offset: 192)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1170, file: !216, line: 395, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!603, !21}
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !216, line: 69, flags: DIFlagFwdDecl)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1138, file: !216, line: 1920, baseType: !1154, size: 64, offset: 320)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1138, file: !216, line: 1921, baseType: !1266, size: 64, offset: 384)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!23, !1157, !1269, !5}
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !216, line: 53, flags: DIFlagFwdDecl)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1138, file: !216, line: 1923, baseType: !1272, size: 64, offset: 448)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!23, !645, !1275}
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !216, line: 1858, size: 128, elements: !1277)
!1277 = !{!1278, !1283}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1276, file: !216, line: 1859, baseType: !1279, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !216, line: 1855, baseType: !1280)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!870, !1275, !17, !23, !42, !404, !5}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1276, file: !216, line: 1860, baseType: !42, size: 64, offset: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1138, file: !216, line: 1924, baseType: !1285, size: 64, offset: 512)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!1288, !645, !1290}
!1288 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1289, line: 59, baseType: !5)
!1289 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !216, line: 61, flags: DIFlagFwdDecl)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1138, file: !216, line: 1925, baseType: !1293, size: 64, offset: 576)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!606, !645, !5, !40}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1138, file: !216, line: 1926, baseType: !1293, size: 64, offset: 640)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1138, file: !216, line: 1927, baseType: !1298, size: 64, offset: 704)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!23, !645, !1301}
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !124, line: 625, size: 1344, elements: !1303)
!1303 = !{!1304, !1313, !1471, !1477, !1484, !1485, !1490, !1491, !1496, !1497, !1513, !1642, !1643, !1644, !1645, !1646, !1647}
!1304 = !DIDerivedType(tag: DW_TAG_member, scope: !1302, file: !124, line: 628, baseType: !1305, size: 128)
!1305 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1302, file: !124, line: 628, size: 128, elements: !1306)
!1306 = !{!1307, !1312}
!1307 = !DIDerivedType(tag: DW_TAG_member, scope: !1305, file: !124, line: 629, baseType: !1308, size: 128)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1305, file: !124, line: 629, size: 128, elements: !1309)
!1309 = !{!1310, !1311}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1308, file: !124, line: 631, baseType: !40, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1308, file: !124, line: 632, baseType: !40, size: 64, offset: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1305, file: !124, line: 635, baseType: !658, size: 128, align: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1302, file: !124, line: 639, baseType: !1314, size: 64, offset: 128)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !124, line: 733, size: 10240, elements: !1316)
!1316 = !{!1317, !1469}
!1317 = !DIDerivedType(tag: DW_TAG_member, scope: !1315, file: !124, line: 734, baseType: !1318, size: 10240)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1315, file: !124, line: 734, size: 10240, elements: !1319)
!1319 = !{!1320, !1324, !1338, !1342, !1343, !1344, !1345, !1346, !1347, !1356, !1357, !1358, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1397, !1399, !1402, !1449, !1450, !1451, !1454, !1455, !1456, !1459, !1460, !1461, !1467, !1468}
!1320 = !DIDerivedType(tag: DW_TAG_member, scope: !1318, file: !124, line: 739, baseType: !1321, size: 512, align: 512)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1318, file: !124, line: 739, size: 512, align: 512, elements: !1322)
!1322 = !{!1323}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1321, file: !124, line: 747, baseType: !50, size: 32)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1318, file: !124, line: 750, baseType: !1325, size: 128, offset: 512)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1326, line: 218, size: 128, elements: !1327)
!1326 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1327 = !{!1328, !1336, !1337}
!1328 = !DIDerivedType(tag: DW_TAG_member, scope: !1325, file: !1326, line: 219, baseType: !1329, size: 32)
!1329 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1325, file: !1326, line: 219, size: 32, elements: !1330)
!1330 = !{!1331, !1332}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1329, file: !1326, line: 220, baseType: !60, size: 32)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1329, file: !1326, line: 221, baseType: !1333)
!1333 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1326, line: 197, baseType: !1334)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1326, line: 197, elements: !1335)
!1335 = !{}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1325, file: !1326, line: 223, baseType: !5, size: 32, offset: 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1325, file: !1326, line: 224, baseType: !21, size: 64, offset: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1318, file: !124, line: 752, baseType: !1339, size: 64, offset: 640)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!40, !645, !40, !40, !40, !40}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1318, file: !124, line: 756, baseType: !40, size: 64, offset: 704)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1318, file: !124, line: 757, baseType: !40, size: 64, offset: 768)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1318, file: !124, line: 760, baseType: !40, size: 64, offset: 832)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1318, file: !124, line: 761, baseType: !40, size: 64, offset: 896)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1318, file: !124, line: 763, baseType: !40, size: 64, offset: 960)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1318, file: !124, line: 764, baseType: !1348, size: 64, offset: 1024)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1350, line: 299, baseType: !1351)
!1350 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1350, line: 299, size: 64, elements: !1352)
!1352 = !{!1353}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1351, file: !1350, line: 299, baseType: !1354, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1355, line: 18, baseType: !40)
!1355 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1318, file: !124, line: 773, baseType: !50, size: 32, offset: 1088)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1318, file: !124, line: 785, baseType: !50, size: 32, offset: 1120)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1318, file: !124, line: 795, baseType: !1359, size: 64, offset: 1152)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !124, line: 726, size: 128, elements: !1361)
!1361 = !{!1362, !1363}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1360, file: !124, line: 727, baseType: !404, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1360, file: !124, line: 728, baseType: !23, size: 32, offset: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1318, file: !124, line: 801, baseType: !40, size: 64, offset: 1216)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1318, file: !124, line: 804, baseType: !671, size: 64, offset: 1280)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1318, file: !124, line: 806, baseType: !23, size: 32, offset: 1344)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1318, file: !124, line: 808, baseType: !60, size: 32, offset: 1376)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1318, file: !124, line: 823, baseType: !811, size: 320, offset: 1408)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1318, file: !124, line: 825, baseType: !98, size: 128, offset: 1728)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1318, file: !124, line: 845, baseType: !23, size: 32, offset: 1856)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1318, file: !124, line: 849, baseType: !40, size: 64, offset: 1920)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1318, file: !124, line: 850, baseType: !40, size: 64, offset: 1984)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1318, file: !124, line: 852, baseType: !40, size: 64, offset: 2048)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1318, file: !124, line: 853, baseType: !40, size: 64, offset: 2112)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1318, file: !124, line: 854, baseType: !673, size: 64, offset: 2176)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1318, file: !124, line: 855, baseType: !40, size: 64, offset: 2240)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1318, file: !124, line: 856, baseType: !40, size: 64, offset: 2304)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1318, file: !124, line: 857, baseType: !40, size: 64, offset: 2368)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1318, file: !124, line: 858, baseType: !40, size: 64, offset: 2432)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1318, file: !124, line: 865, baseType: !377, size: 32, offset: 2496)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1318, file: !124, line: 867, baseType: !60, size: 32, offset: 2528)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1318, file: !124, line: 869, baseType: !40, size: 64, offset: 2560)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1318, file: !124, line: 869, baseType: !40, size: 64, offset: 2624)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1318, file: !124, line: 869, baseType: !40, size: 64, offset: 2688)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1318, file: !124, line: 869, baseType: !40, size: 64, offset: 2752)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1318, file: !124, line: 870, baseType: !40, size: 64, offset: 2816)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1318, file: !124, line: 870, baseType: !40, size: 64, offset: 2880)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1318, file: !124, line: 870, baseType: !40, size: 64, offset: 2944)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1318, file: !124, line: 871, baseType: !40, size: 64, offset: 3008)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1318, file: !124, line: 871, baseType: !40, size: 64, offset: 3072)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1318, file: !124, line: 871, baseType: !40, size: 64, offset: 3136)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1318, file: !124, line: 871, baseType: !40, size: 64, offset: 3200)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1318, file: !124, line: 873, baseType: !1394, size: 3328, offset: 3264)
!1394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 3328, elements: !1395)
!1395 = !{!1396}
!1396 = !DISubrange(count: 52)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1318, file: !124, line: 875, baseType: !1398, size: 1280, offset: 6592)
!1398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !928, size: 1280, elements: !741)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1318, file: !124, line: 877, baseType: !1400, size: 64, offset: 7872)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !124, line: 877, flags: DIFlagFwdDecl)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1318, file: !124, line: 880, baseType: !1403, size: 1088, offset: 7936)
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1404, line: 72, baseType: !1405)
!1404 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1404, line: 23, size: 1088, elements: !1406)
!1406 = !{!1407, !1408, !1409, !1410, !1411, !1414, !1415, !1416, !1417, !1444, !1445, !1446}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1405, file: !1404, line: 28, baseType: !404, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1405, file: !1404, line: 38, baseType: !673, size: 64, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1405, file: !1404, line: 40, baseType: !40, size: 64, offset: 128)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1405, file: !1404, line: 43, baseType: !811, size: 320, offset: 192)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1405, file: !1404, line: 44, baseType: !1412, size: 64, offset: 512)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1404, line: 44, flags: DIFlagFwdDecl)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1405, file: !1404, line: 48, baseType: !40, size: 64, offset: 576)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1405, file: !1404, line: 59, baseType: !680, size: 256, offset: 640)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1405, file: !1404, line: 60, baseType: !21, size: 64, offset: 896)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1405, file: !1404, line: 61, baseType: !1418, size: 64, offset: 960)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1420)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1421, line: 13, size: 1216, elements: !1422)
!1421 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1422 = !{!1423, !1424, !1425, !1426, !1427, !1428, !1429, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1420, file: !1421, line: 14, baseType: !21, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1420, file: !1421, line: 15, baseType: !40, size: 64, offset: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1420, file: !1421, line: 17, baseType: !40, size: 64, offset: 128)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1420, file: !1421, line: 17, baseType: !40, size: 64, offset: 192)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1420, file: !1421, line: 18, baseType: !40, size: 64, offset: 256)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1420, file: !1421, line: 18, baseType: !40, size: 64, offset: 320)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1420, file: !1421, line: 19, baseType: !1430, size: 64, offset: 384)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1420, file: !1421, line: 21, baseType: !606, size: 64, offset: 448)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1420, file: !1421, line: 23, baseType: !606, size: 64, offset: 512)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1420, file: !1421, line: 24, baseType: !606, size: 64, offset: 576)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1420, file: !1421, line: 25, baseType: !606, size: 64, offset: 640)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1420, file: !1421, line: 26, baseType: !606, size: 64, offset: 704)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1420, file: !1421, line: 27, baseType: !606, size: 64, offset: 768)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1420, file: !1421, line: 28, baseType: !606, size: 64, offset: 832)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1420, file: !1421, line: 29, baseType: !606, size: 64, offset: 896)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1420, file: !1421, line: 30, baseType: !606, size: 64, offset: 960)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1420, file: !1421, line: 31, baseType: !606, size: 64, offset: 1024)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1420, file: !1421, line: 32, baseType: !606, size: 64, offset: 1088)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1420, file: !1421, line: 33, baseType: !606, size: 64, offset: 1152)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1405, file: !1404, line: 63, baseType: !50, size: 32, offset: 1024)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1405, file: !1404, line: 69, baseType: !94, size: 16, offset: 1056)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1405, file: !1404, line: 70, baseType: !1447, size: 16, offset: 1072)
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !85, line: 18, baseType: !1448)
!1448 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !87, line: 23, baseType: !839)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1318, file: !124, line: 882, baseType: !40, size: 64, offset: 9024)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1318, file: !124, line: 885, baseType: !60, size: 32, offset: 9088)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1318, file: !124, line: 886, baseType: !1452, size: 64, offset: 9152)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !124, line: 732, flags: DIFlagFwdDecl)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1318, file: !124, line: 901, baseType: !953, size: 64, offset: 9216)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1318, file: !124, line: 904, baseType: !645, size: 64, offset: 9280)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1318, file: !124, line: 906, baseType: !1457, size: 64, offset: 9344)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !124, line: 906, flags: DIFlagFwdDecl)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1318, file: !124, line: 930, baseType: !50, size: 32, offset: 9408)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1318, file: !124, line: 933, baseType: !50, size: 32, offset: 9440)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1318, file: !124, line: 935, baseType: !1462, size: 64, offset: 9472)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !253, line: 103, size: 64, elements: !1463)
!1463 = !{!1464}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1462, file: !253, line: 104, baseType: !1465, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !253, line: 101, flags: DIFlagFwdDecl)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1318, file: !124, line: 940, baseType: !671, size: 64, offset: 9536)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1318, file: !124, line: 942, baseType: !1002, size: 256, offset: 9600)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1315, file: !124, line: 986, baseType: !1470, offset: 10240)
!1470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, elements: !754)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1302, file: !124, line: 640, baseType: !1472, size: 64, offset: 192)
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1350, line: 297, baseType: !1473)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1350, line: 297, size: 64, elements: !1474)
!1474 = !{!1475}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1473, file: !1350, line: 297, baseType: !1476, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1355, line: 19, baseType: !40)
!1477 = !DIDerivedType(tag: DW_TAG_member, scope: !1302, file: !124, line: 646, baseType: !1478, size: 64, offset: 256)
!1478 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1302, file: !124, line: 646, size: 64, elements: !1479)
!1479 = !{!1480, !1483}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1478, file: !124, line: 647, baseType: !1481, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1482)
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !124, line: 542, baseType: !40)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1478, file: !124, line: 648, baseType: !1482, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1302, file: !124, line: 666, baseType: !23, size: 32, offset: 320)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1302, file: !124, line: 667, baseType: !1486, size: 64, offset: 384)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !124, line: 579, size: 320, elements: !1488)
!1488 = !{!1489}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1487, file: !124, line: 580, baseType: !811, size: 320)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1302, file: !124, line: 670, baseType: !870, size: 8, offset: 448)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1302, file: !124, line: 681, baseType: !1492, size: 256, offset: 512)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1302, file: !124, line: 678, size: 256, elements: !1493)
!1493 = !{!1494, !1495}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1492, file: !124, line: 679, baseType: !803, size: 192, align: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1492, file: !124, line: 680, baseType: !40, size: 64, offset: 192)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1302, file: !124, line: 689, baseType: !98, size: 128, offset: 768)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1302, file: !124, line: 691, baseType: !1498, size: 64, offset: 896)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1500, line: 31, size: 768, elements: !1501)
!1500 = !DIFile(filename: "./include/linux/rmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "424c17c81581cd4481af59c84df2437d")
!1501 = !{!1502, !1503, !1504, !1505, !1506, !1507, !1508}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1499, file: !1500, line: 32, baseType: !1498, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !1499, file: !1500, line: 33, baseType: !811, size: 320, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1499, file: !1500, line: 41, baseType: !50, size: 32, offset: 384)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "num_children", scope: !1499, file: !1500, line: 50, baseType: !40, size: 64, offset: 448)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "num_active_vmas", scope: !1499, file: !1500, line: 52, baseType: !40, size: 64, offset: 512)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1499, file: !1500, line: 54, baseType: !1498, size: 64, offset: 576)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1499, file: !1500, line: 66, baseType: !1509, size: 128, offset: 640)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !804, line: 26, size: 128, elements: !1510)
!1510 = !{!1511, !1512}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1509, file: !804, line: 27, baseType: !1083, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1509, file: !804, line: 28, baseType: !808, size: 64, offset: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1302, file: !124, line: 694, baseType: !1514, size: 64, offset: 960)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1516)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1517, line: 563, size: 1024, elements: !1518)
!1517 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1518 = !{!1519, !1523, !1524, !1528, !1532, !1536, !1586, !1590, !1594, !1598, !1599, !1600, !1604, !1608, !1634, !1638}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1516, file: !1517, line: 564, baseType: !1520, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{null, !1301}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1516, file: !1517, line: 569, baseType: !1520, size: 64, offset: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1516, file: !1517, line: 571, baseType: !1525, size: 64, offset: 128)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!23, !1301, !40}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1516, file: !1517, line: 572, baseType: !1529, size: 64, offset: 192)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!23, !1301}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1516, file: !1517, line: 578, baseType: !1533, size: 64, offset: 256)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!23, !1301, !40, !40, !40}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1516, file: !1517, line: 580, baseType: !1537, size: 64, offset: 320)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!1540, !1541}
!1540 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !124, line: 1184, baseType: !5)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1517, line: 512, size: 896, elements: !1543)
!1543 = !{!1544, !1553, !1554, !1561, !1568, !1578, !1579, !1580, !1582, !1584}
!1544 = !DIDerivedType(tag: DW_TAG_member, scope: !1542, file: !1517, line: 513, baseType: !1545, size: 320)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1542, file: !1517, line: 513, size: 320, elements: !1546)
!1546 = !{!1547, !1548, !1550, !1551, !1552}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1545, file: !1517, line: 514, baseType: !1301, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1545, file: !1517, line: 515, baseType: !1549, size: 32, offset: 64)
!1549 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !26, line: 154, baseType: !5)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1545, file: !1517, line: 516, baseType: !40, size: 64, offset: 128)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1545, file: !1517, line: 517, baseType: !40, size: 64, offset: 192)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1545, file: !1517, line: 518, baseType: !40, size: 64, offset: 256)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1542, file: !1517, line: 520, baseType: !123, size: 32, offset: 320)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1542, file: !1517, line: 522, baseType: !1555, size: 64, offset: 384)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1355, line: 22, baseType: !1557)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1355, line: 22, size: 64, elements: !1558)
!1558 = !{!1559}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1557, file: !1355, line: 22, baseType: !1560, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1355, line: 15, baseType: !40)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1542, file: !1517, line: 524, baseType: !1562, size: 64, offset: 448)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1350, line: 372, baseType: !1564)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1350, line: 372, size: 64, elements: !1565)
!1565 = !{!1566}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1564, file: !1350, line: 372, baseType: !1567, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1355, line: 16, baseType: !40)
!1568 = !DIDerivedType(tag: DW_TAG_member, scope: !1542, file: !1517, line: 527, baseType: !1569, size: 64, offset: 512)
!1569 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1542, file: !1517, line: 527, size: 64, elements: !1570)
!1570 = !{!1571, !1577}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1569, file: !1517, line: 528, baseType: !1572, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1355, line: 21, baseType: !1573)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1355, line: 21, size: 64, elements: !1574)
!1574 = !{!1575}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1573, file: !1355, line: 21, baseType: !1576, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1355, line: 14, baseType: !40)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1569, file: !1517, line: 529, baseType: !1556, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1542, file: !1517, line: 534, baseType: !305, size: 64, offset: 576)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1542, file: !1517, line: 535, baseType: !305, size: 64, offset: 640)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1542, file: !1517, line: 541, baseType: !1581, size: 64, offset: 704)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1542, file: !1517, line: 545, baseType: !1583, size: 64, offset: 768)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1542, file: !1517, line: 549, baseType: !1585, size: 64, offset: 832)
!1585 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1350, line: 520, baseType: !305)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1516, file: !1517, line: 581, baseType: !1587, size: 64, offset: 384)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{!1540, !1541, !5}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1516, file: !1517, line: 582, baseType: !1591, size: 64, offset: 448)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!1540, !1541, !40, !40}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1516, file: !1517, line: 584, baseType: !1595, size: 64, offset: 512)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!40, !1301}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1516, file: !1517, line: 588, baseType: !1537, size: 64, offset: 576)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1516, file: !1517, line: 591, baseType: !1537, size: 64, offset: 640)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1516, file: !1517, line: 597, baseType: !1601, size: 64, offset: 704)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!23, !1301, !40, !21, !23, !23}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1516, file: !1517, line: 603, baseType: !1605, size: 64, offset: 768)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{!17, !1301}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1516, file: !1517, line: 613, baseType: !1609, size: 64, offset: 832)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!23, !1301, !1612}
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1614, line: 44, size: 256, elements: !1615)
!1614 = !DIFile(filename: "./include/linux/mempolicy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bb371e8a578bad8ff65f30ddf87a2459")
!1615 = !{!1616, !1617, !1618, !1619, !1628, !1629}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1613, file: !1614, line: 45, baseType: !50, size: 32)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1613, file: !1614, line: 46, baseType: !27, size: 16, offset: 32)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1613, file: !1614, line: 47, baseType: !27, size: 16, offset: 48)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !1613, file: !1614, line: 48, baseType: !1620, size: 64, offset: 64)
!1620 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !1621, line: 99, baseType: !1622)
!1621 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1621, line: 99, size: 64, elements: !1623)
!1623 = !{!1624}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1622, file: !1621, line: 99, baseType: !1625, size: 64)
!1625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 64, elements: !1626)
!1626 = !{!1627}
!1627 = !DISubrange(count: 1)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "home_node", scope: !1613, file: !1614, line: 49, baseType: !23, size: 32, offset: 128)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !1613, file: !1614, line: 54, baseType: !1630, size: 64, offset: 192)
!1630 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1613, file: !1614, line: 51, size: 64, elements: !1631)
!1631 = !{!1632, !1633}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mems_allowed", scope: !1630, file: !1614, line: 52, baseType: !1620, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "user_nodemask", scope: !1630, file: !1614, line: 53, baseType: !1620, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1516, file: !1517, line: 625, baseType: !1635, size: 64, offset: 896)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!1612, !1301, !40}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1516, file: !1517, line: 633, baseType: !1639, size: 64, offset: 960)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!305, !1301, !40}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1302, file: !124, line: 697, baseType: !40, size: 64, offset: 1024)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1302, file: !124, line: 699, baseType: !645, size: 64, offset: 1088)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1302, file: !124, line: 700, baseType: !21, size: 64, offset: 1152)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1302, file: !124, line: 711, baseType: !671, size: 64, offset: 1216)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1302, file: !124, line: 717, baseType: !1612, size: 64, offset: 1280)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1302, file: !124, line: 722, baseType: !1648, offset: 1344)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !124, line: 570, elements: !1335)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1138, file: !216, line: 1928, baseType: !40, size: 64, offset: 768)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1138, file: !216, line: 1929, baseType: !1651, size: 64, offset: 832)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!23, !331, !645}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1138, file: !216, line: 1930, baseType: !1655, size: 64, offset: 896)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!23, !645, !1658}
!1658 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !216, line: 1061, baseType: !21)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1138, file: !216, line: 1931, baseType: !1651, size: 64, offset: 960)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1138, file: !216, line: 1932, baseType: !1661, size: 64, offset: 1024)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!23, !645, !42, !42, !23}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1138, file: !216, line: 1933, baseType: !1665, size: 64, offset: 1088)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{!23, !23, !645, !23}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1138, file: !216, line: 1934, baseType: !1669, size: 64, offset: 1152)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!23, !645, !23, !1672}
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !216, line: 1063, flags: DIFlagFwdDecl)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1138, file: !216, line: 1935, baseType: !1339, size: 64, offset: 1216)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1138, file: !216, line: 1936, baseType: !1676, size: 64, offset: 1280)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!23, !23}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1138, file: !216, line: 1937, baseType: !1669, size: 64, offset: 1344)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1138, file: !216, line: 1938, baseType: !1681, size: 64, offset: 1408)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!603, !1684, !645, !41, !36, !5}
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1686, line: 59, flags: DIFlagFwdDecl)
!1686 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1138, file: !216, line: 1939, baseType: !1688, size: 64, offset: 1472)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{!603, !645, !41, !1684, !36, !5}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1138, file: !216, line: 1940, baseType: !1692, size: 64, offset: 1536)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{null, !645}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1138, file: !216, line: 1941, baseType: !1696, size: 64, offset: 1600)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{!23, !645, !23, !1699, !1700}
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1138, file: !216, line: 1942, baseType: !1702, size: 64, offset: 1664)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!606, !645, !23, !42, !42}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1138, file: !216, line: 1944, baseType: !1706, size: 64, offset: 1728)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{null, !1709, !645}
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1711, line: 17, size: 960, elements: !1712)
!1711 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1712 = !{!1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1742, !1743, !1746}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1710, file: !1711, line: 18, baseType: !472, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1710, file: !1711, line: 19, baseType: !36, size: 64, offset: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1710, file: !1711, line: 20, baseType: !36, size: 64, offset: 128)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1710, file: !1711, line: 21, baseType: !36, size: 64, offset: 192)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1710, file: !1711, line: 22, baseType: !36, size: 64, offset: 256)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1710, file: !1711, line: 23, baseType: !42, size: 64, offset: 320)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1710, file: !1711, line: 24, baseType: !42, size: 64, offset: 384)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1710, file: !1711, line: 25, baseType: !680, size: 256, offset: 448)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1710, file: !1711, line: 26, baseType: !1722, size: 64, offset: 704)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1724)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1711, line: 32, size: 256, elements: !1725)
!1725 = !{!1726, !1730, !1734, !1738}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1724, file: !1711, line: 33, baseType: !1727, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!21, !1709, !41}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1724, file: !1711, line: 34, baseType: !1731, size: 64, offset: 64)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{null, !1709, !21}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1724, file: !1711, line: 35, baseType: !1735, size: 64, offset: 128)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!21, !1709, !21, !41}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1724, file: !1711, line: 36, baseType: !1739, size: 64, offset: 192)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!23, !1709, !21}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1710, file: !1711, line: 27, baseType: !23, size: 32, offset: 768)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1710, file: !1711, line: 28, baseType: !1744, size: 64, offset: 832)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !646)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1710, file: !1711, line: 29, baseType: !21, size: 64, offset: 896)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1138, file: !216, line: 1948, baseType: !1748, size: 64, offset: 1792)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{!603, !645, !42, !645, !42, !36, !5}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1138, file: !216, line: 1950, baseType: !1752, size: 64, offset: 1856)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!42, !645, !42, !645, !42, !42, !5}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1138, file: !216, line: 1953, baseType: !1661, size: 64, offset: 1920)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1138, file: !216, line: 1954, baseType: !1757, size: 64, offset: 1984)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!23, !1760, !5}
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !216, line: 1911, flags: DIFlagFwdDecl)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1138, file: !216, line: 1955, baseType: !1763, size: 64, offset: 2048)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!23, !1760, !1269, !5}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !646, file: !216, line: 1018, baseType: !404, size: 64, offset: 1472)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !646, file: !216, line: 1020, baseType: !21, size: 64, offset: 1536)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !646, file: !216, line: 1023, baseType: !21, size: 64, offset: 1600)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !646, file: !216, line: 1027, baseType: !1770, size: 64, offset: 1664)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !646, file: !216, line: 1029, baseType: !327, size: 64, offset: 1728)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !646, file: !216, line: 1030, baseType: !1773, size: 32, offset: 1792)
!1773 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1774, line: 8, baseType: !400)
!1774 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !646, file: !216, line: 1031, baseType: !1773, size: 32, offset: 1824)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !632, file: !597, line: 182, baseType: !642, size: 64, offset: 384)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !632, file: !597, line: 184, baseType: !1778, size: 64, offset: 448)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!23, !645, !537, !631, !1301}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !620, file: !597, line: 90, baseType: !1782, size: 64, offset: 192)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !620, file: !597, line: 91, baseType: !1784, size: 64, offset: 256)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !587, file: !532, line: 120, baseType: !1786, size: 64, offset: 192)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!1789, !555}
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1791)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !185, line: 39, size: 384, elements: !1792)
!1792 = !{!1793, !1794, !1798, !1802, !1808, !1812}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1791, file: !185, line: 40, baseType: !184, size: 32)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1791, file: !185, line: 41, baseType: !1795, size: 64, offset: 64)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{!870}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1791, file: !185, line: 42, baseType: !1799, size: 64, offset: 128)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{!21}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1791, file: !185, line: 43, baseType: !1803, size: 64, offset: 192)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{!1430, !1806}
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !185, line: 19, flags: DIFlagFwdDecl)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1791, file: !185, line: 44, baseType: !1809, size: 64, offset: 256)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!1430}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1791, file: !185, line: 45, baseType: !1813, size: 64, offset: 320)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{null, !21}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !587, file: !532, line: 121, baseType: !1817, size: 64, offset: 256)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{!1430, !555}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !587, file: !532, line: 122, baseType: !1821, size: 64, offset: 320)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{null, !555, !1066, !1067}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !531, file: !532, line: 70, baseType: !1825, size: 64, offset: 384)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1827, line: 190, size: 1152, elements: !1828)
!1827 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1828 = !{!1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1908, !1909, !1910, !1911, !1912, !1915}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1826, file: !1827, line: 191, baseType: !50, size: 32)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1826, file: !1827, line: 192, baseType: !50, size: 32, offset: 32)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1826, file: !1827, line: 202, baseType: !1825, size: 64, offset: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1826, file: !1827, line: 203, baseType: !17, size: 64, offset: 128)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1826, file: !1827, line: 205, baseType: !803, size: 192, align: 64, offset: 192)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1826, file: !1827, line: 207, baseType: !1430, size: 64, offset: 384)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1826, file: !1827, line: 208, baseType: !5, size: 32, offset: 448)
!1836 = !DIDerivedType(tag: DW_TAG_member, scope: !1826, file: !1827, line: 209, baseType: !1837, size: 256, offset: 512)
!1837 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1826, file: !1827, line: 209, size: 256, elements: !1838)
!1838 = !{!1839, !1848, !1852}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1837, file: !1827, line: 210, baseType: !1840, size: 256)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1827, line: 153, size: 256, elements: !1841)
!1841 = !{!1842, !1843, !1844, !1847}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1840, file: !1827, line: 154, baseType: !40, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1840, file: !1827, line: 156, baseType: !1083, size: 64, offset: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1840, file: !1827, line: 162, baseType: !1845, size: 64, offset: 128)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1827, line: 162, flags: DIFlagFwdDecl)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1840, file: !1827, line: 167, baseType: !40, size: 64, offset: 192)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1837, file: !1827, line: 211, baseType: !1849, size: 64)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1827, line: 170, size: 64, elements: !1850)
!1850 = !{!1851}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1849, file: !1827, line: 171, baseType: !1825, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1837, file: !1827, line: 212, baseType: !1853, size: 256)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1827, line: 174, size: 256, elements: !1854)
!1854 = !{!1855, !1903, !1906, !1907}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1853, file: !1827, line: 175, baseType: !1856, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1858)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1827, line: 271, size: 768, elements: !1859)
!1859 = !{!1860, !1880, !1884, !1885, !1886, !1887, !1888, !1892, !1893, !1894, !1895, !1899}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1858, file: !1827, line: 276, baseType: !1861, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{!23, !1864}
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1827, line: 251, size: 1216, elements: !1866)
!1866 = !{!1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1865, file: !1827, line: 253, baseType: !1825, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1865, file: !1827, line: 254, baseType: !645, size: 64, offset: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1865, file: !1827, line: 255, baseType: !1709, size: 64, offset: 128)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1865, file: !1827, line: 256, baseType: !21, size: 64, offset: 192)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1865, file: !1827, line: 259, baseType: !680, size: 256, offset: 256)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1865, file: !1827, line: 260, baseType: !680, size: 256, offset: 512)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1865, file: !1827, line: 261, baseType: !23, size: 32, offset: 768)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1865, file: !1827, line: 262, baseType: !98, size: 128, offset: 832)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1865, file: !1827, line: 263, baseType: !472, size: 64, offset: 960)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1865, file: !1827, line: 265, baseType: !36, size: 64, offset: 1024)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1865, file: !1827, line: 266, baseType: !870, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1865, file: !1827, line: 267, baseType: !870, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1865, file: !1827, line: 268, baseType: !1514, size: 64, offset: 1152)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1858, file: !1827, line: 277, baseType: !1881, size: 64, offset: 64)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{null, !1864}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1858, file: !1827, line: 290, baseType: !1739, size: 64, offset: 128)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1858, file: !1827, line: 292, baseType: !1727, size: 64, offset: 192)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1858, file: !1827, line: 293, baseType: !1735, size: 64, offset: 256)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1858, file: !1827, line: 294, baseType: !1731, size: 64, offset: 320)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1858, file: !1827, line: 296, baseType: !1889, size: 64, offset: 384)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{!603, !1864, !472, !36, !42}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1858, file: !1827, line: 306, baseType: !36, size: 64, offset: 448)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1858, file: !1827, line: 313, baseType: !870, size: 8, offset: 512)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1858, file: !1827, line: 314, baseType: !1889, size: 64, offset: 576)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1858, file: !1827, line: 317, baseType: !1896, size: 64, offset: 640)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{!1288, !1864, !1290}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1858, file: !1827, line: 320, baseType: !1900, size: 64, offset: 704)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{!23, !1864, !1301}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1853, file: !1827, line: 176, baseType: !1904, size: 64, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1827, line: 35, flags: DIFlagFwdDecl)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1853, file: !1827, line: 177, baseType: !42, size: 64, offset: 128)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1853, file: !1827, line: 178, baseType: !1825, size: 64, offset: 192)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1826, file: !1827, line: 215, baseType: !21, size: 64, offset: 768)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1826, file: !1827, line: 221, baseType: !404, size: 64, offset: 832)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1826, file: !1827, line: 223, baseType: !27, size: 16, offset: 896)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1826, file: !1827, line: 224, baseType: !25, size: 16, offset: 912)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1826, file: !1827, line: 225, baseType: !1913, size: 64, offset: 960)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1827, line: 36, flags: DIFlagFwdDecl)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1826, file: !1827, line: 227, baseType: !658, size: 128, align: 64, offset: 1024)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !531, file: !532, line: 71, baseType: !1917, size: 32, offset: 448)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1918, line: 19, size: 32, elements: !1919)
!1918 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1919 = !{!1920}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1917, file: !1918, line: 20, baseType: !723, size: 32)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !531, file: !532, line: 73, baseType: !5, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !531, file: !532, line: 74, baseType: !5, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !531, file: !532, line: 75, baseType: !5, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !531, file: !532, line: 76, baseType: !5, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !531, file: !532, line: 77, baseType: !5, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !528, file: !109, line: 47, baseType: !518, size: 64, offset: 512)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !528, file: !109, line: 48, baseType: !537, size: 64, offset: 576)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !528, file: !109, line: 49, baseType: !1929, size: 64, offset: 640)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !109, line: 49, flags: DIFlagFwdDecl)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !528, file: !109, line: 50, baseType: !1040, size: 64, offset: 704)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !519, file: !109, line: 418, baseType: !1933, size: 64, offset: 1408)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !109, line: 53, size: 448, elements: !1935)
!1935 = !{!1936, !1937, !1942, !1946, !1950, !1954}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1934, file: !109, line: 54, baseType: !608, size: 128)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1934, file: !109, line: 55, baseType: !1938, size: 64, offset: 128)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{!603, !1933, !1941, !472}
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1934, file: !109, line: 57, baseType: !1943, size: 64, offset: 192)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!603, !1933, !1941, !17, !36}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1934, file: !109, line: 59, baseType: !1947, size: 64, offset: 256)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{null, !518, !17}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1934, file: !109, line: 60, baseType: !1951, size: 64, offset: 320)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{!23, !518}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1934, file: !109, line: 61, baseType: !1955, size: 64, offset: 384)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{null, !518}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !519, file: !109, line: 419, baseType: !17, size: 64, offset: 1472)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !519, file: !109, line: 420, baseType: !17, size: 64, offset: 1536)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !519, file: !109, line: 421, baseType: !537, size: 64, offset: 1600)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !519, file: !109, line: 424, baseType: !1962, size: 64, offset: 1664)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1964)
!1964 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !109, line: 424, flags: DIFlagFwdDecl)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !519, file: !109, line: 425, baseType: !1966, size: 64, offset: 1728)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !796)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !519, file: !109, line: 426, baseType: !5, size: 32, offset: 1792)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !519, file: !109, line: 435, baseType: !680, size: 256, offset: 1856)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !519, file: !109, line: 437, baseType: !1971, size: 64, offset: 2112)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1973, line: 69, size: 320, elements: !1974)
!1973 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1974 = !{!1975, !1976, !1977, !1994, !1996, !2000, !2001}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1972, file: !1973, line: 70, baseType: !17, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1972, file: !1973, line: 71, baseType: !518, size: 64, offset: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1972, file: !1973, line: 72, baseType: !1978, size: 64, offset: 128)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1980)
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1973, line: 47, size: 256, elements: !1981)
!1981 = !{!1982, !1983, !1989, !1993}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1980, file: !1973, line: 49, baseType: !5, size: 32)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1980, file: !1973, line: 51, baseType: !1984, size: 64, offset: 64)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!23, !17, !1987}
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1972)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1980, file: !1973, line: 53, baseType: !1990, size: 64, offset: 128)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{!23, !472, !1987}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1980, file: !1973, line: 55, baseType: !1813, size: 64, offset: 192)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1972, file: !1973, line: 73, baseType: !1995, size: 16, offset: 192)
!1995 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1972, file: !1973, line: 74, baseType: !1997, size: 8, offset: 208)
!1997 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !85, line: 16, baseType: !1998)
!1998 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !87, line: 20, baseType: !1999)
!1999 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1972, file: !1973, line: 75, baseType: !84, size: 8, offset: 216)
!2001 = !DIDerivedType(tag: DW_TAG_member, scope: !1972, file: !1973, line: 76, baseType: !2002, size: 64, offset: 256)
!2002 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1972, file: !1973, line: 76, size: 64, elements: !2003)
!2003 = !{!2004, !2005, !2012}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2002, file: !1973, line: 77, baseType: !21, size: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2002, file: !1973, line: 78, baseType: !2006, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2008)
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1973, line: 86, size: 128, elements: !2009)
!2009 = !{!2010, !2011}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2008, file: !1973, line: 87, baseType: !5, size: 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2008, file: !1973, line: 88, baseType: !472, size: 64, offset: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2002, file: !1973, line: 79, baseType: !2013, size: 64)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2015)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1973, line: 92, size: 256, elements: !2016)
!2016 = !{!2017, !2018, !2019, !2021, !2022}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2015, file: !1973, line: 94, baseType: !5, size: 32)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2015, file: !1973, line: 95, baseType: !5, size: 32, offset: 32)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2015, file: !1973, line: 96, baseType: !2020, size: 64, offset: 64)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2015, file: !1973, line: 97, baseType: !1978, size: 64, offset: 128)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2015, file: !1973, line: 98, baseType: !21, size: 64, offset: 192)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !519, file: !109, line: 438, baseType: !5, size: 32, offset: 2176)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !519, file: !109, line: 441, baseType: !5, size: 32, offset: 2208)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !519, file: !109, line: 442, baseType: !1962, size: 64, offset: 2240)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !519, file: !109, line: 443, baseType: !1966, size: 64, offset: 2304)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !519, file: !109, line: 444, baseType: !870, size: 8, offset: 2368)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !519, file: !109, line: 451, baseType: !870, size: 8, offset: 2376)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !519, file: !109, line: 454, baseType: !5, size: 32, offset: 2400)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !519, file: !109, line: 455, baseType: !2031, size: 64, offset: 2432)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2033, line: 23, size: 96, elements: !2034)
!2033 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2034 = !{!2035, !2036, !2037}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2032, file: !2033, line: 24, baseType: !23, size: 32)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2032, file: !2033, line: 24, baseType: !23, size: 32, offset: 32)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2032, file: !2033, line: 24, baseType: !23, size: 32, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !519, file: !109, line: 458, baseType: !2039, size: 64, offset: 2496)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!23}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !519, file: !109, line: 460, baseType: !2043, size: 4032, align: 512, offset: 2560)
!2043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2044, size: 4032, elements: !2060)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !109, line: 362, size: 576, elements: !2045)
!2045 = !{!2046, !2047, !2048}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2044, file: !109, line: 363, baseType: !21, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2044, file: !109, line: 364, baseType: !5, size: 32, offset: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2044, file: !109, line: 367, baseType: !2049, size: 448, offset: 128)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !109, line: 319, size: 448, elements: !2050)
!2050 = !{!2051, !2052}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2049, file: !109, line: 320, baseType: !518, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2049, file: !109, line: 321, baseType: !2053, size: 384, offset: 64)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2054, line: 40, size: 384, elements: !2055)
!2054 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2055 = !{!2056}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2053, file: !2054, line: 41, baseType: !2057, size: 384, align: 64)
!2057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !803, size: 384, align: 64, elements: !2058)
!2058 = !{!2059}
!2059 = !DISubrange(count: 2)
!2060 = !{!2061}
!2061 = !DISubrange(count: 7)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !519, file: !109, line: 463, baseType: !2063, size: 192, offset: 6592)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2064, line: 8, size: 192, elements: !2065)
!2064 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2065 = !{!2066, !2067, !2069}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2063, file: !2064, line: 10, baseType: !5, size: 32)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2063, file: !2064, line: 11, baseType: !2068, size: 64, offset: 64)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2063, file: !2064, line: 12, baseType: !2070, size: 64, offset: 128)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2072, line: 59, size: 48, elements: !2073)
!2072 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2073 = !{!2074, !2075, !2076, !2077, !2078, !2079}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2071, file: !2072, line: 60, baseType: !1447, size: 16)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2071, file: !2072, line: 61, baseType: !1447, size: 16, offset: 16)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2071, file: !2072, line: 63, baseType: !5, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2071, file: !2072, line: 64, baseType: !5, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2071, file: !2072, line: 65, baseType: !5, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2071, file: !2072, line: 66, baseType: !5, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !519, file: !109, line: 465, baseType: !40, size: 64, offset: 6784)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !519, file: !109, line: 469, baseType: !5, size: 32, offset: 6848)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !519, file: !109, line: 470, baseType: !98, size: 128, offset: 6912)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !519, file: !109, line: 471, baseType: !2084, size: 64, offset: 7040)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2086, line: 33, size: 96, elements: !2087)
!2086 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2087 = !{!2088, !2089, !2090, !2091}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2085, file: !2086, line: 37, baseType: !23, size: 32)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2085, file: !2086, line: 43, baseType: !23, size: 32, offset: 32)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2085, file: !2086, line: 45, baseType: !27, size: 16, offset: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2085, file: !2086, line: 47, baseType: !27, size: 16, offset: 80)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !519, file: !109, line: 476, baseType: !2093, size: 64, offset: 7104)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !109, line: 378, size: 256, elements: !2095)
!2095 = !{!2096, !2112, !2113, !2114}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2094, file: !109, line: 379, baseType: !2097, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2099, line: 204, baseType: !2100)
!2099 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2099, line: 197, size: 192, elements: !2101)
!2101 = !{!2102, !2104, !2105, !2106, !2108, !2110}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2100, file: !2099, line: 198, baseType: !2103, size: 32)
!2103 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2099, line: 21, baseType: !401)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2100, file: !2099, line: 199, baseType: !88, size: 8, offset: 32)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2100, file: !2099, line: 200, baseType: !88, size: 8, offset: 40)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2100, file: !2099, line: 201, baseType: !2107, size: 16, offset: 48)
!2107 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2099, line: 17, baseType: !95)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2100, file: !2099, line: 202, baseType: !2109, size: 64, offset: 64)
!2109 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2099, line: 16, baseType: !405)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2100, file: !2099, line: 203, baseType: !2111, size: 64, offset: 128)
!2111 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2099, line: 22, baseType: !405)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2094, file: !109, line: 380, baseType: !5, size: 32, offset: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2094, file: !109, line: 381, baseType: !472, size: 64, offset: 128)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2094, file: !109, line: 382, baseType: !472, size: 64, offset: 192)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !519, file: !109, line: 477, baseType: !2094, size: 256, offset: 7168)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !519, file: !109, line: 480, baseType: !2117, size: 64, offset: 7424)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !109, line: 480, flags: DIFlagFwdDecl)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !519, file: !109, line: 483, baseType: !2120, size: 64, offset: 7488)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !109, line: 483, flags: DIFlagFwdDecl)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !519, file: !109, line: 488, baseType: !472, size: 64, offset: 7552)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !519, file: !109, line: 492, baseType: !21, size: 64, offset: 7616)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !519, file: !109, line: 493, baseType: !5, size: 32, offset: 7680)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !519, file: !109, line: 495, baseType: !21, size: 64, offset: 7744)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !519, file: !109, line: 496, baseType: !5, size: 32, offset: 7808)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !519, file: !109, line: 499, baseType: !5, size: 32, offset: 7840)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !519, file: !109, line: 500, baseType: !2129, size: 64, offset: 7872)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2131, line: 45, baseType: !2132)
!2131 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !519, file: !109, line: 503, baseType: !5, size: 32, offset: 7936)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !519, file: !109, line: 504, baseType: !2135, size: 64, offset: 8000)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2138, line: 96, size: 192, elements: !2139)
!2138 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2139 = !{!2140, !2141, !2194, !2197}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2137, file: !2138, line: 97, baseType: !5, size: 32)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2137, file: !2138, line: 98, baseType: !2142, size: 64, offset: 64)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2138, line: 24, size: 3072, elements: !2144)
!2144 = !{!2145, !2147, !2148, !2149, !2150, !2163, !2164, !2165, !2166, !2178, !2179, !2180, !2191, !2192, !2193}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2143, file: !2138, line: 26, baseType: !2146, size: 128)
!2146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !671, size: 128, elements: !2058)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2143, file: !2138, line: 27, baseType: !2146, size: 128, offset: 128)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2143, file: !2138, line: 28, baseType: !23, size: 32, offset: 256)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2143, file: !2138, line: 31, baseType: !60, size: 32, align: 512, offset: 512)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2143, file: !2138, line: 32, baseType: !2151, size: 960, offset: 576)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2152, line: 206, size: 960, elements: !2153)
!2152 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2153 = !{!2154, !2155, !2158, !2160, !2161, !2162}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2151, file: !2152, line: 207, baseType: !661, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2151, file: !2152, line: 208, baseType: !2156, size: 256, offset: 64)
!2156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2157, size: 256, elements: !741)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2151, file: !2152, line: 209, baseType: !2159, size: 256, offset: 320)
!2159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 256, elements: !741)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2151, file: !2152, line: 213, baseType: !606, size: 64, offset: 576)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2151, file: !2152, line: 215, baseType: !1104, size: 256, offset: 640)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2151, file: !2152, line: 216, baseType: !84, size: 8, offset: 896)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2143, file: !2138, line: 33, baseType: !40, size: 64, offset: 1536)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2143, file: !2138, line: 34, baseType: !40, size: 64, offset: 1600)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2143, file: !2138, line: 35, baseType: !870, size: 8, offset: 1664)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2143, file: !2138, line: 36, baseType: !2167, size: 320, offset: 1728)
!2167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2168, line: 11, size: 320, elements: !2169)
!2168 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2169 = !{!2170, !2171, !2172, !2177}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2167, file: !2168, line: 16, baseType: !736, size: 128)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2167, file: !2168, line: 17, baseType: !40, size: 64, offset: 128)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2167, file: !2168, line: 18, baseType: !2173, size: 64, offset: 192)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{null, !2176}
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2167, file: !2168, line: 19, baseType: !400, size: 32, offset: 256)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2143, file: !2138, line: 37, baseType: !1002, size: 256, offset: 2048)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2143, file: !2138, line: 38, baseType: !658, size: 128, align: 64, offset: 2304)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2143, file: !2138, line: 39, baseType: !2181, size: 64, offset: 2432)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2138, line: 49, size: 768, elements: !2183)
!2183 = !{!2184, !2185, !2186, !2187, !2188, !2189, !2190}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2182, file: !2138, line: 50, baseType: !60, size: 32)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2182, file: !2138, line: 51, baseType: !2159, size: 256, offset: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2182, file: !2138, line: 53, baseType: !2159, size: 256, offset: 320)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2182, file: !2138, line: 54, baseType: !40, size: 64, offset: 576)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2182, file: !2138, line: 55, baseType: !2181, size: 64, offset: 640)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2182, file: !2138, line: 56, baseType: !23, size: 32, offset: 704)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2182, file: !2138, line: 57, baseType: !23, size: 32, offset: 736)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2143, file: !2138, line: 40, baseType: !40, size: 64, offset: 2496)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2143, file: !2138, line: 42, baseType: !23, size: 32, offset: 2560)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2143, file: !2138, line: 43, baseType: !2136, size: 64, offset: 2624)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2137, file: !2138, line: 99, baseType: !2195, offset: 128)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2196, line: 211, elements: !1335)
!2196 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2137, file: !2138, line: 100, baseType: !2198, size: 64, offset: 128)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2138, line: 63, size: 3008, elements: !2200)
!2200 = !{!2201, !2202, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2232}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2199, file: !2138, line: 64, baseType: !2181, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2199, file: !2138, line: 65, baseType: !2203, size: 192, offset: 64)
!2203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2181, size: 192, elements: !572)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2199, file: !2138, line: 67, baseType: !23, size: 32, offset: 256)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2199, file: !2138, line: 68, baseType: !680, size: 256, offset: 320)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2199, file: !2138, line: 69, baseType: !60, size: 32, offset: 576)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2199, file: !2138, line: 70, baseType: !680, size: 256, offset: 640)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2199, file: !2138, line: 71, baseType: !40, size: 64, offset: 896)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2199, file: !2138, line: 72, baseType: !40, size: 64, offset: 960)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2199, file: !2138, line: 73, baseType: !40, size: 64, offset: 1024)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2199, file: !2138, line: 74, baseType: !40, size: 64, offset: 1088)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2199, file: !2138, line: 75, baseType: !40, size: 64, offset: 1152)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2199, file: !2138, line: 76, baseType: !40, size: 64, offset: 1216)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2199, file: !2138, line: 77, baseType: !40, size: 64, offset: 1280)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2199, file: !2138, line: 78, baseType: !40, size: 64, offset: 1344)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2199, file: !2138, line: 79, baseType: !870, size: 8, offset: 1408)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2199, file: !2138, line: 80, baseType: !40, size: 64, offset: 1472)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2199, file: !2138, line: 81, baseType: !680, size: 256, offset: 1536)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2199, file: !2138, line: 82, baseType: !1041, size: 256, offset: 1792)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2199, file: !2138, line: 84, baseType: !50, size: 32, offset: 2048)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2199, file: !2138, line: 87, baseType: !40, size: 64, offset: 2112)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2199, file: !2138, line: 88, baseType: !40, size: 64, offset: 2176)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2199, file: !2138, line: 89, baseType: !2224, size: 704, offset: 2240)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1003, line: 111, size: 704, elements: !2225)
!2225 = !{!2226, !2227, !2228, !2231}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2224, file: !1003, line: 112, baseType: !1002, size: 256)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2224, file: !1003, line: 113, baseType: !2167, size: 320, offset: 256)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2224, file: !1003, line: 116, baseType: !2229, size: 64, offset: 576)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1003, line: 18, flags: DIFlagFwdDecl)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2224, file: !1003, line: 117, baseType: !23, size: 32, offset: 640)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2199, file: !2138, line: 90, baseType: !2136, size: 64, offset: 2944)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !519, file: !109, line: 515, baseType: !2234, size: 64, offset: 8064)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2236, line: 117, size: 128, elements: !2237)
!2236 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2237 = !{!2238, !2239, !2240}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2235, file: !2236, line: 118, baseType: !796, size: 32)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2235, file: !2236, line: 119, baseType: !796, size: 32, offset: 32)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2235, file: !2236, line: 120, baseType: !606, size: 64, offset: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !519, file: !109, line: 516, baseType: !5, size: 32, offset: 8128)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !519, file: !109, line: 519, baseType: !5, size: 32, offset: 8160)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !519, file: !109, line: 520, baseType: !2244, size: 64, offset: 8192)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !519, file: !109, line: 523, baseType: !2246, size: 64, offset: 8256)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !109, line: 523, flags: DIFlagFwdDecl)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !519, file: !109, line: 524, baseType: !5, size: 32, offset: 8320)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !519, file: !109, line: 525, baseType: !2251, size: 64, offset: 8384)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !109, line: 525, flags: DIFlagFwdDecl)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !519, file: !109, line: 526, baseType: !5, size: 32, offset: 8448)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !519, file: !109, line: 533, baseType: !21, size: 64, offset: 8512)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !519, file: !109, line: 534, baseType: !5, size: 32, offset: 8576)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !519, file: !109, line: 535, baseType: !2258, size: 64, offset: 8640)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !519, file: !109, line: 536, baseType: !5, size: 32, offset: 8704)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !519, file: !109, line: 539, baseType: !23, size: 32, offset: 8736)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !519, file: !109, line: 540, baseType: !2262, size: 64, offset: 8768)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2264, line: 32, size: 64, elements: !2265)
!2264 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2265 = !{!2266, !2267}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2263, file: !2264, line: 33, baseType: !796, size: 32)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2263, file: !2264, line: 34, baseType: !796, size: 32, offset: 32)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !519, file: !109, line: 563, baseType: !98, size: 128, offset: 8832)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !519, file: !109, line: 565, baseType: !98, size: 128, offset: 8960)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !519, file: !109, line: 568, baseType: !2271, size: 64, offset: 9088)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{null}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !519, file: !109, line: 570, baseType: !50, size: 32, offset: 9152)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !495, file: !216, line: 2382, baseType: !494, size: 64, offset: 448)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !495, file: !216, line: 2383, baseType: !732, size: 64, offset: 512)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !495, file: !216, line: 2385, baseType: !2278, offset: 576)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2196, line: 206, elements: !1335)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !495, file: !216, line: 2386, baseType: !2278, offset: 576)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !495, file: !216, line: 2387, baseType: !2278, offset: 576)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !495, file: !216, line: 2388, baseType: !2282, offset: 576)
!2282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2278, elements: !572)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !495, file: !216, line: 2390, baseType: !2278, offset: 576)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !495, file: !216, line: 2391, baseType: !2278, offset: 576)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !495, file: !216, line: 2392, baseType: !2278, offset: 576)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !495, file: !216, line: 2393, baseType: !2278, offset: 576)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !484, file: !216, line: 1197, baseType: !2288, size: 64, offset: 384)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2290)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !216, line: 2057, size: 1664, elements: !2291)
!2291 = !{!2292, !2296, !2300, !2301, !2305, !2329, !2333, !2334, !2335, !2339, !2343, !2347, !2348, !2349, !2355, !2359, !2360, !2364, !2365, !2366, !2367, !2371, !2375, !2422, !2437, !2438}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2290, file: !216, line: 2058, baseType: !2293, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!331, !483}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2290, file: !216, line: 2059, baseType: !2297, size: 64, offset: 64)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{null, !331}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2290, file: !216, line: 2060, baseType: !2297, size: 64, offset: 128)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2290, file: !216, line: 2062, baseType: !2302, size: 64, offset: 192)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{null, !331, !23}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2290, file: !216, line: 2063, baseType: !2306, size: 64, offset: 256)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!23, !331, !2309}
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !140, line: 42, size: 384, elements: !2311)
!2311 = !{!2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !2310, file: !140, line: 43, baseType: !606, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !2310, file: !140, line: 45, baseType: !606, size: 64, offset: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !2310, file: !140, line: 52, baseType: !42, size: 64, offset: 128)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !2310, file: !140, line: 53, baseType: !42, size: 64, offset: 192)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !2310, file: !140, line: 55, baseType: !139, size: 32, offset: 256)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !2310, file: !140, line: 57, baseType: !5, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !2310, file: !140, line: 58, baseType: !5, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !2310, file: !140, line: 59, baseType: !5, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !2310, file: !140, line: 60, baseType: !5, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !2310, file: !140, line: 61, baseType: !5, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !2310, file: !140, line: 62, baseType: !5, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !2310, file: !140, line: 63, baseType: !5, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !2310, file: !140, line: 71, baseType: !5, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !2310, file: !140, line: 78, baseType: !2326, size: 64, offset: 320)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !140, line: 78, flags: DIFlagFwdDecl)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2290, file: !216, line: 2064, baseType: !2330, size: 64, offset: 320)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!23, !331}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2290, file: !216, line: 2065, baseType: !2297, size: 64, offset: 384)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2290, file: !216, line: 2066, baseType: !514, size: 64, offset: 448)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2290, file: !216, line: 2067, baseType: !2336, size: 64, offset: 512)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{!23, !483, !23}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2290, file: !216, line: 2068, baseType: !2340, size: 64, offset: 576)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{!23, !483, !215}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2290, file: !216, line: 2069, baseType: !2344, size: 64, offset: 640)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{!23, !483}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2290, file: !216, line: 2070, baseType: !2340, size: 64, offset: 704)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2290, file: !216, line: 2071, baseType: !2344, size: 64, offset: 768)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2290, file: !216, line: 2072, baseType: !2350, size: 64, offset: 832)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{!23, !366, !2353}
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !216, line: 62, flags: DIFlagFwdDecl)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2290, file: !216, line: 2073, baseType: !2356, size: 64, offset: 896)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!23, !483, !2068, !472}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2290, file: !216, line: 2074, baseType: !514, size: 64, offset: 960)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2290, file: !216, line: 2076, baseType: !2361, size: 64, offset: 1024)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!23, !1709, !366}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2290, file: !216, line: 2077, baseType: !2361, size: 64, offset: 1088)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2290, file: !216, line: 2078, baseType: !2361, size: 64, offset: 1152)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2290, file: !216, line: 2079, baseType: !2361, size: 64, offset: 1216)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2290, file: !216, line: 2081, baseType: !2368, size: 64, offset: 1280)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!603, !483, !23, !472, !36, !42}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2290, file: !216, line: 2082, baseType: !2372, size: 64, offset: 1344)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!603, !483, !23, !17, !36, !42}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2290, file: !216, line: 2083, baseType: !2376, size: 64, offset: 1408)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!2379, !331}
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !221, line: 296, size: 1664, elements: !2382)
!2382 = !{!2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2407, !2408, !2409}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2381, file: !221, line: 297, baseType: !736, size: 128)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2381, file: !221, line: 298, baseType: !98, size: 128, offset: 128)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2381, file: !221, line: 299, baseType: !98, size: 128, offset: 256)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2381, file: !221, line: 300, baseType: !98, size: 128, offset: 384)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2381, file: !221, line: 301, baseType: !680, size: 256, offset: 512)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2381, file: !221, line: 302, baseType: !60, size: 32, offset: 768)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2381, file: !221, line: 303, baseType: !50, size: 32, offset: 800)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2381, file: !221, line: 304, baseType: !483, size: 64, offset: 832)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2381, file: !221, line: 305, baseType: !2392, size: 64, offset: 896)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !221, line: 68, size: 64, elements: !2393)
!2393 = !{!2394, !2406}
!2394 = !DIDerivedType(tag: DW_TAG_member, scope: !2392, file: !221, line: 69, baseType: !2395, size: 32)
!2395 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2392, file: !221, line: 69, size: 32, elements: !2396)
!2396 = !{!2397, !2398, !2399}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2395, file: !221, line: 70, baseType: !337, size: 32)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2395, file: !221, line: 71, baseType: !346, size: 32)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2395, file: !221, line: 72, baseType: !2400, size: 32)
!2400 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2401, line: 24, baseType: !2402)
!2401 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2402 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2401, line: 22, size: 32, elements: !2403)
!2403 = !{!2404}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2402, file: !2401, line: 23, baseType: !2405, size: 32)
!2405 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2401, line: 20, baseType: !343)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2392, file: !221, line: 74, baseType: !220, size: 32, offset: 32)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2381, file: !221, line: 306, baseType: !42, size: 64, offset: 960)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2381, file: !221, line: 307, baseType: !40, size: 64, offset: 1024)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2381, file: !221, line: 308, baseType: !2410, size: 576, offset: 1088)
!2410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !221, line: 205, size: 576, elements: !2411)
!2411 = !{!2412, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2410, file: !221, line: 206, baseType: !2413, size: 64)
!2413 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !221, line: 66, baseType: !44)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2410, file: !221, line: 207, baseType: !2413, size: 64, offset: 64)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2410, file: !221, line: 208, baseType: !2413, size: 64, offset: 128)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2410, file: !221, line: 209, baseType: !2413, size: 64, offset: 192)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2410, file: !221, line: 210, baseType: !2413, size: 64, offset: 256)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2410, file: !221, line: 211, baseType: !2413, size: 64, offset: 320)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2410, file: !221, line: 212, baseType: !2413, size: 64, offset: 384)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2410, file: !221, line: 213, baseType: !827, size: 64, offset: 448)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2410, file: !221, line: 214, baseType: !827, size: 64, offset: 512)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2290, file: !216, line: 2085, baseType: !2423, size: 64, offset: 1472)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!606, !483, !2426}
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2428, line: 15, size: 256, elements: !2429)
!2428 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2429 = !{!2430, !2431, !2432, !2433, !2434}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2427, file: !2428, line: 16, baseType: !1549, size: 32)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2427, file: !2428, line: 19, baseType: !23, size: 32, offset: 32)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2427, file: !2428, line: 26, baseType: !40, size: 64, offset: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2427, file: !2428, line: 33, baseType: !40, size: 64, offset: 128)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2427, file: !2428, line: 36, baseType: !2435, size: 64, offset: 192)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !124, line: 33, flags: DIFlagFwdDecl)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2290, file: !216, line: 2087, baseType: !2423, size: 64, offset: 1536)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2290, file: !216, line: 2089, baseType: !514, size: 64, offset: 1600)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !484, file: !216, line: 1198, baseType: !2440, size: 64, offset: 448)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2442)
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !221, line: 324, size: 704, elements: !2443)
!2443 = !{!2444, !2448, !2452, !2456, !2457, !2458, !2459, !2460, !2465, !2470, !2474}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2442, file: !221, line: 325, baseType: !2445, size: 64)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!23, !2380}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2442, file: !221, line: 326, baseType: !2449, size: 64, offset: 64)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{!2380, !483, !23}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2442, file: !221, line: 327, baseType: !2453, size: 64, offset: 128)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{null, !2380}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2442, file: !221, line: 328, baseType: !2445, size: 64, offset: 192)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2442, file: !221, line: 329, baseType: !2445, size: 64, offset: 256)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2442, file: !221, line: 330, baseType: !2445, size: 64, offset: 320)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2442, file: !221, line: 331, baseType: !2336, size: 64, offset: 384)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2442, file: !221, line: 334, baseType: !2461, size: 64, offset: 448)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!2464, !331}
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2442, file: !221, line: 335, baseType: !2466, size: 64, offset: 512)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{!23, !331, !2469}
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2442, file: !221, line: 337, baseType: !2471, size: 64, offset: 576)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!23, !331, !2464}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2442, file: !221, line: 339, baseType: !2475, size: 64, offset: 640)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!23, !483, !2478}
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !484, file: !216, line: 1199, baseType: !2480, size: 64, offset: 512)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2482)
!2482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !221, line: 430, size: 704, elements: !2483)
!2483 = !{!2484, !2490, !2491, !2495, !2496, !2497, !2512, !2535, !2539, !2540, !2563}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2482, file: !221, line: 431, baseType: !2485, size: 64)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!23, !483, !23, !23, !2488}
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1129)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2482, file: !221, line: 432, baseType: !2336, size: 64, offset: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2482, file: !221, line: 433, baseType: !2492, size: 64, offset: 128)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!23, !483, !5}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2482, file: !221, line: 434, baseType: !2492, size: 64, offset: 192)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2482, file: !221, line: 435, baseType: !2336, size: 64, offset: 256)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2482, file: !221, line: 436, baseType: !2498, size: 64, offset: 320)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!23, !483, !23, !2501}
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !221, line: 417, size: 256, elements: !2503)
!2503 = !{!2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2502, file: !221, line: 418, baseType: !23, size: 32)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2502, file: !221, line: 419, baseType: !5, size: 32, offset: 32)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2502, file: !221, line: 420, baseType: !5, size: 32, offset: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2502, file: !221, line: 422, baseType: !5, size: 32, offset: 96)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2502, file: !221, line: 423, baseType: !5, size: 32, offset: 128)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2502, file: !221, line: 424, baseType: !5, size: 32, offset: 160)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2502, file: !221, line: 425, baseType: !5, size: 32, offset: 192)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2502, file: !221, line: 426, baseType: !5, size: 32, offset: 224)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2482, file: !221, line: 437, baseType: !2513, size: 64, offset: 384)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!23, !483, !2392, !2516}
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !221, line: 345, size: 960, elements: !2518)
!2518 = !{!2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2517, file: !221, line: 346, baseType: !23, size: 32)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2517, file: !221, line: 347, baseType: !404, size: 64, offset: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2517, file: !221, line: 348, baseType: !404, size: 64, offset: 128)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2517, file: !221, line: 349, baseType: !404, size: 64, offset: 192)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2517, file: !221, line: 350, baseType: !404, size: 64, offset: 256)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2517, file: !221, line: 351, baseType: !404, size: 64, offset: 320)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2517, file: !221, line: 352, baseType: !404, size: 64, offset: 384)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2517, file: !221, line: 353, baseType: !677, size: 64, offset: 448)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2517, file: !221, line: 355, baseType: !677, size: 64, offset: 512)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2517, file: !221, line: 356, baseType: !23, size: 32, offset: 576)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2517, file: !221, line: 357, baseType: !23, size: 32, offset: 608)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2517, file: !221, line: 358, baseType: !404, size: 64, offset: 640)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2517, file: !221, line: 359, baseType: !404, size: 64, offset: 704)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2517, file: !221, line: 360, baseType: !404, size: 64, offset: 768)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2517, file: !221, line: 361, baseType: !677, size: 64, offset: 832)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2517, file: !221, line: 362, baseType: !23, size: 32, offset: 896)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2482, file: !221, line: 438, baseType: !2536, size: 64, offset: 448)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!23, !483, !2478, !2516}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2482, file: !221, line: 440, baseType: !2513, size: 64, offset: 512)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2482, file: !221, line: 441, baseType: !2541, size: 64, offset: 576)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!23, !483, !2544}
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !221, line: 411, size: 1408, elements: !2546)
!2546 = !{!2547, !2548}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2545, file: !221, line: 412, baseType: !5, size: 32)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2545, file: !221, line: 413, baseType: !2549, size: 1344, offset: 64)
!2549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2550, size: 1344, elements: !572)
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !221, line: 397, size: 448, elements: !2551)
!2551 = !{!2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2562}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2550, file: !221, line: 398, baseType: !5, size: 32)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2550, file: !221, line: 399, baseType: !5, size: 32, offset: 32)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2550, file: !221, line: 401, baseType: !5, size: 32, offset: 64)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2550, file: !221, line: 402, baseType: !5, size: 32, offset: 96)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2550, file: !221, line: 403, baseType: !5, size: 32, offset: 128)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2550, file: !221, line: 404, baseType: !5, size: 32, offset: 160)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2550, file: !221, line: 405, baseType: !5, size: 32, offset: 192)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2550, file: !221, line: 406, baseType: !406, size: 64, offset: 256)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2550, file: !221, line: 407, baseType: !2561, size: 64, offset: 320)
!2561 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !26, line: 132, baseType: !404)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2550, file: !221, line: 408, baseType: !2561, size: 64, offset: 384)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2482, file: !221, line: 442, baseType: !2492, size: 64, offset: 640)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !484, file: !216, line: 1200, baseType: !2565, size: 64, offset: 576)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2567)
!2567 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !216, line: 54, flags: DIFlagFwdDecl)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !484, file: !216, line: 1201, baseType: !40, size: 64, offset: 640)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !484, file: !216, line: 1202, baseType: !40, size: 64, offset: 704)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !484, file: !216, line: 1203, baseType: !40, size: 64, offset: 768)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !484, file: !216, line: 1204, baseType: !366, size: 64, offset: 832)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !484, file: !216, line: 1205, baseType: !811, size: 320, offset: 896)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !484, file: !216, line: 1206, baseType: !23, size: 32, offset: 1216)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !484, file: !216, line: 1207, baseType: !50, size: 32, offset: 1248)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !484, file: !216, line: 1209, baseType: !21, size: 64, offset: 1280)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !484, file: !216, line: 1211, baseType: !2577, size: 64, offset: 1344)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2580)
!2580 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !216, line: 1211, flags: DIFlagFwdDecl)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !484, file: !216, line: 1223, baseType: !2582, size: 64, offset: 1408)
!2582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !383, line: 34, size: 64, elements: !2583)
!2583 = !{!2584}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2582, file: !383, line: 35, baseType: !386, size: 64)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !484, file: !216, line: 1224, baseType: !98, size: 128, offset: 1472)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !484, file: !216, line: 1225, baseType: !2587, size: 64, offset: 1600)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2589, line: 40, size: 7424, elements: !2590)
!2589 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2590 = !{!2591, !2593, !2594, !2597, !2601, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2628, !2629}
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2588, file: !2589, line: 41, baseType: !2592, size: 64)
!2592 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !26, line: 131, baseType: !404)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2588, file: !2589, line: 42, baseType: !2592, size: 64, offset: 64)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2588, file: !2589, line: 43, baseType: !2595, size: 64, offset: 128)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1686, line: 1453, flags: DIFlagFwdDecl)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2588, file: !2589, line: 44, baseType: !2598, size: 64, offset: 192)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2600, line: 74, flags: DIFlagFwdDecl)
!2600 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2588, file: !2589, line: 45, baseType: !2602, size: 64, offset: 256)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2589, line: 45, flags: DIFlagFwdDecl)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2588, file: !2589, line: 46, baseType: !40, size: 64, offset: 320)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2588, file: !2589, line: 47, baseType: !870, size: 8, offset: 384)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2588, file: !2589, line: 48, baseType: !84, size: 8, offset: 392)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2588, file: !2589, line: 49, baseType: !870, size: 8, offset: 400)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2588, file: !2589, line: 50, baseType: !870, size: 8, offset: 408)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2588, file: !2589, line: 51, baseType: !488, size: 32, offset: 416)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2588, file: !2589, line: 52, baseType: !50, size: 32, offset: 448)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2588, file: !2589, line: 53, baseType: !60, size: 32, offset: 480)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2588, file: !2589, line: 54, baseType: !331, size: 64, offset: 512)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2588, file: !2589, line: 55, baseType: !21, size: 64, offset: 576)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2588, file: !2589, line: 56, baseType: !21, size: 64, offset: 640)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2588, file: !2589, line: 57, baseType: !2616, size: 64, offset: 704)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2618)
!2618 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !2589, line: 57, flags: DIFlagFwdDecl)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2588, file: !2589, line: 58, baseType: !680, size: 256, offset: 768)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2588, file: !2589, line: 60, baseType: !23, size: 32, offset: 1024)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2588, file: !2589, line: 61, baseType: !23, size: 32, offset: 1056)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2588, file: !2589, line: 62, baseType: !537, size: 64, offset: 1088)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2588, file: !2589, line: 65, baseType: !680, size: 256, offset: 1152)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2588, file: !2589, line: 66, baseType: !483, size: 64, offset: 1408)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2588, file: !2589, line: 68, baseType: !2626, size: 64, offset: 1472)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !2589, line: 68, flags: DIFlagFwdDecl)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2588, file: !2589, line: 72, baseType: !870, size: 8, offset: 1536)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2588, file: !2589, line: 77, baseType: !2630, size: 5824, offset: 1600)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !158, line: 705, size: 5824, elements: !2631)
!2631 = !{!2632, !2633, !2635, !2638, !2639, !2692, !2762, !2763, !2764, !2765, !2766, !2773, !2933, !2946, !2956, !2960, !2962, !2963, !2964, !2968, !2975, !2976, !2979, !2982, !2986, !2989, !2990, !2991, !2992, !2993, !2994, !3024, !3025, !3026, !3029, !3032, !3041, !3042, !3043, !3044, !3045, !3046}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2630, file: !158, line: 706, baseType: !531, size: 512)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2630, file: !158, line: 707, baseType: !2634, size: 64, offset: 512)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2630, file: !158, line: 709, baseType: !2636, size: 64, offset: 576)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !158, line: 37, flags: DIFlagFwdDecl)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2630, file: !158, line: 711, baseType: !17, size: 64, offset: 640)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2630, file: !158, line: 712, baseType: !2640, size: 64, offset: 704)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2642)
!2642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !158, line: 89, size: 384, elements: !2643)
!2643 = !{!2644, !2645, !2646, !2652, !2657, !2661}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2642, file: !158, line: 90, baseType: !17, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2642, file: !158, line: 91, baseType: !617, size: 64, offset: 64)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2642, file: !158, line: 92, baseType: !2647, size: 64, offset: 128)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{!23, !2650, !567}
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2630)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2642, file: !158, line: 93, baseType: !2653, size: 64, offset: 192)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{!472, !2650, !2656, !1066, !1067}
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2642, file: !158, line: 95, baseType: !2658, size: 64, offset: 256)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DISubroutineType(types: !2660)
!2660 = !{null, !2634}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2642, file: !158, line: 97, baseType: !2662, size: 64, offset: 320)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2664)
!2664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !170, line: 286, size: 1472, elements: !2665)
!2665 = !{!2666, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691}
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2664, file: !170, line: 287, baseType: !2667, size: 64)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{!23, !2634}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2664, file: !170, line: 288, baseType: !2658, size: 64, offset: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2664, file: !170, line: 289, baseType: !2667, size: 64, offset: 128)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2664, file: !170, line: 290, baseType: !2667, size: 64, offset: 192)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2664, file: !170, line: 291, baseType: !2667, size: 64, offset: 256)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2664, file: !170, line: 292, baseType: !2667, size: 64, offset: 320)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2664, file: !170, line: 293, baseType: !2667, size: 64, offset: 384)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2664, file: !170, line: 294, baseType: !2667, size: 64, offset: 448)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2664, file: !170, line: 295, baseType: !2667, size: 64, offset: 512)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2664, file: !170, line: 296, baseType: !2667, size: 64, offset: 576)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2664, file: !170, line: 297, baseType: !2667, size: 64, offset: 640)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2664, file: !170, line: 298, baseType: !2667, size: 64, offset: 704)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2664, file: !170, line: 299, baseType: !2667, size: 64, offset: 768)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2664, file: !170, line: 300, baseType: !2667, size: 64, offset: 832)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2664, file: !170, line: 301, baseType: !2667, size: 64, offset: 896)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2664, file: !170, line: 302, baseType: !2667, size: 64, offset: 960)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2664, file: !170, line: 303, baseType: !2667, size: 64, offset: 1024)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2664, file: !170, line: 304, baseType: !2667, size: 64, offset: 1088)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2664, file: !170, line: 305, baseType: !2667, size: 64, offset: 1152)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2664, file: !170, line: 306, baseType: !2667, size: 64, offset: 1216)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2664, file: !170, line: 307, baseType: !2667, size: 64, offset: 1280)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2664, file: !170, line: 308, baseType: !2667, size: 64, offset: 1344)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2664, file: !170, line: 309, baseType: !2667, size: 64, offset: 1408)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2630, file: !158, line: 714, baseType: !2693, size: 64, offset: 768)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2695)
!2695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2696, line: 80, size: 1344, elements: !2697)
!2696 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2697 = !{!2698, !2699, !2700, !2701, !2702, !2703, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2761}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2695, file: !2696, line: 81, baseType: !17, size: 64)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2695, file: !2696, line: 82, baseType: !17, size: 64, offset: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2695, file: !2696, line: 83, baseType: !617, size: 64, offset: 128)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2695, file: !2696, line: 84, baseType: !617, size: 64, offset: 192)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2695, file: !2696, line: 85, baseType: !617, size: 64, offset: 256)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2695, file: !2696, line: 87, baseType: !2704, size: 64, offset: 320)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DISubroutineType(types: !2706)
!2706 = !{!23, !2634, !2707}
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !152, line: 96, size: 1152, elements: !2709)
!2709 = !{!2710, !2711, !2712, !2713, !2714, !2715, !2716, !2720, !2724, !2725, !2726, !2727, !2728, !2736, !2737, !2738, !2739, !2740, !2741}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2708, file: !152, line: 97, baseType: !17, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2708, file: !152, line: 98, baseType: !2693, size: 64, offset: 64)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2708, file: !152, line: 100, baseType: !518, size: 64, offset: 128)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2708, file: !152, line: 101, baseType: !17, size: 64, offset: 192)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2708, file: !152, line: 103, baseType: !870, size: 8, offset: 256)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2708, file: !152, line: 104, baseType: !151, size: 32, offset: 288)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2708, file: !152, line: 106, baseType: !2717, size: 64, offset: 320)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2719)
!2719 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !152, line: 106, flags: DIFlagFwdDecl)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2708, file: !152, line: 107, baseType: !2721, size: 64, offset: 384)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2723)
!2723 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !152, line: 107, flags: DIFlagFwdDecl)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2708, file: !152, line: 109, baseType: !2667, size: 64, offset: 448)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2708, file: !152, line: 110, baseType: !2658, size: 64, offset: 512)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2708, file: !152, line: 111, baseType: !2667, size: 64, offset: 576)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2708, file: !152, line: 112, baseType: !2658, size: 64, offset: 640)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2708, file: !152, line: 113, baseType: !2729, size: 64, offset: 704)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!23, !2634, !2732}
!2732 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !170, line: 60, baseType: !2733)
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !170, line: 58, size: 32, elements: !2734)
!2734 = !{!2735}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2733, file: !170, line: 59, baseType: !23, size: 32)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2708, file: !152, line: 114, baseType: !2667, size: 64, offset: 768)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2708, file: !152, line: 115, baseType: !617, size: 64, offset: 832)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2708, file: !152, line: 116, baseType: !617, size: 64, offset: 896)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2708, file: !152, line: 118, baseType: !2662, size: 64, offset: 960)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2708, file: !152, line: 119, baseType: !2658, size: 64, offset: 1024)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2708, file: !152, line: 121, baseType: !2742, size: 64, offset: 1088)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !152, line: 121, flags: DIFlagFwdDecl)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2695, file: !2696, line: 88, baseType: !2647, size: 64, offset: 384)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2695, file: !2696, line: 89, baseType: !2667, size: 64, offset: 448)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2695, file: !2696, line: 90, baseType: !2658, size: 64, offset: 512)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2695, file: !2696, line: 91, baseType: !2658, size: 64, offset: 576)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2695, file: !2696, line: 92, baseType: !2658, size: 64, offset: 640)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2695, file: !2696, line: 94, baseType: !2667, size: 64, offset: 704)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2695, file: !2696, line: 95, baseType: !2667, size: 64, offset: 768)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2695, file: !2696, line: 97, baseType: !2729, size: 64, offset: 832)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2695, file: !2696, line: 98, baseType: !2667, size: 64, offset: 896)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2695, file: !2696, line: 100, baseType: !2667, size: 64, offset: 960)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2695, file: !2696, line: 102, baseType: !2667, size: 64, offset: 1024)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2695, file: !2696, line: 103, baseType: !2658, size: 64, offset: 1088)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2695, file: !2696, line: 105, baseType: !2662, size: 64, offset: 1152)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2695, file: !2696, line: 107, baseType: !2758, size: 64, offset: 1216)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2760)
!2760 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2696, line: 107, flags: DIFlagFwdDecl)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2695, file: !2696, line: 109, baseType: !870, size: 8, offset: 1280)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2630, file: !158, line: 715, baseType: !2707, size: 64, offset: 832)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2630, file: !158, line: 717, baseType: !21, size: 64, offset: 896)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2630, file: !158, line: 719, baseType: !21, size: 64, offset: 960)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2630, file: !158, line: 721, baseType: !680, size: 256, offset: 1024)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2630, file: !158, line: 725, baseType: !2767, size: 448, offset: 1280)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !158, line: 517, size: 448, elements: !2768)
!2768 = !{!2769, !2770, !2771, !2772}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2767, file: !158, line: 518, baseType: !98, size: 128)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2767, file: !158, line: 519, baseType: !98, size: 128, offset: 128)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2767, file: !158, line: 520, baseType: !98, size: 128, offset: 256)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2767, file: !158, line: 521, baseType: !157, size: 32, offset: 384)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2630, file: !158, line: 726, baseType: !2774, size: 2496, offset: 1728)
!2774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !170, line: 663, size: 2496, elements: !2775)
!2775 = !{!2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2820, !2821, !2822, !2823, !2824, !2825, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2926, !2930}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2774, file: !170, line: 664, baseType: !2732, size: 32)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2774, file: !170, line: 665, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2774, file: !170, line: 666, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2774, file: !170, line: 667, baseType: !870, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2774, file: !170, line: 668, baseType: !870, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2774, file: !170, line: 669, baseType: !870, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2774, file: !170, line: 670, baseType: !870, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2774, file: !170, line: 671, baseType: !870, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2774, file: !170, line: 672, baseType: !870, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2774, file: !170, line: 673, baseType: !870, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2774, file: !170, line: 674, baseType: !870, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2774, file: !170, line: 675, baseType: !400, size: 32, offset: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2774, file: !170, line: 676, baseType: !60, size: 32, offset: 96)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2774, file: !170, line: 678, baseType: !98, size: 128, offset: 128)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2774, file: !170, line: 679, baseType: !1041, size: 256, offset: 256)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2774, file: !170, line: 680, baseType: !2792, size: 64, offset: 512)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2794, line: 43, size: 1536, elements: !2795)
!2794 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2795 = !{!2796, !2797, !2798, !2799, !2800, !2803, !2804, !2805, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2793, file: !2794, line: 44, baseType: !17, size: 64)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2793, file: !2794, line: 45, baseType: !23, size: 32, offset: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2793, file: !2794, line: 46, baseType: !98, size: 128, offset: 128)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2793, file: !2794, line: 47, baseType: !60, size: 32, offset: 256)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2793, file: !2794, line: 48, baseType: !2801, size: 64, offset: 320)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !170, line: 629, flags: DIFlagFwdDecl)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2793, file: !2794, line: 49, baseType: !2167, size: 320, offset: 384)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2793, file: !2794, line: 50, baseType: !40, size: 64, offset: 704)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2793, file: !2794, line: 51, baseType: !2806, size: 64, offset: 768)
!2806 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2807, line: 29, baseType: !677)
!2807 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2793, file: !2794, line: 52, baseType: !2806, size: 64, offset: 832)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2793, file: !2794, line: 53, baseType: !2806, size: 64, offset: 896)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2793, file: !2794, line: 54, baseType: !2806, size: 64, offset: 960)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2793, file: !2794, line: 55, baseType: !2806, size: 64, offset: 1024)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2793, file: !2794, line: 56, baseType: !40, size: 64, offset: 1088)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2793, file: !2794, line: 57, baseType: !40, size: 64, offset: 1152)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2793, file: !2794, line: 58, baseType: !40, size: 64, offset: 1216)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2793, file: !2794, line: 59, baseType: !40, size: 64, offset: 1280)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2793, file: !2794, line: 60, baseType: !40, size: 64, offset: 1344)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2793, file: !2794, line: 61, baseType: !2634, size: 64, offset: 1408)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2793, file: !2794, line: 62, baseType: !870, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2793, file: !2794, line: 63, baseType: !870, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2774, file: !170, line: 681, baseType: !870, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2774, file: !170, line: 682, baseType: !870, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2774, file: !170, line: 683, baseType: !870, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2774, file: !170, line: 684, baseType: !5, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2774, file: !170, line: 685, baseType: !5, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2774, file: !170, line: 690, baseType: !2826, size: 512, offset: 640)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !165, line: 118, size: 512, elements: !2827)
!2827 = !{!2828, !2834, !2835, !2840, !2888, !2889, !2890, !2891}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2826, file: !165, line: 119, baseType: !2829, size: 256)
!2829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2830, line: 9, size: 256, elements: !2831)
!2830 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2831 = !{!2832, !2833}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2829, file: !2830, line: 10, baseType: !803, size: 192, align: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2829, file: !2830, line: 11, baseType: !2806, size: 64, offset: 192)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2826, file: !165, line: 120, baseType: !2806, size: 64, offset: 256)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2826, file: !165, line: 121, baseType: !2836, size: 64, offset: 320)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!164, !2839}
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2826, file: !165, line: 122, baseType: !2841, size: 64, offset: 384)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !165, line: 159, size: 512, align: 512, elements: !2843)
!2843 = !{!2844, !2869, !2870, !2873, !2878, !2879, !2883, !2887}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2842, file: !165, line: 160, baseType: !2845, size: 64)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !165, line: 215, size: 4608, align: 512, elements: !2847)
!2847 = !{!2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2846, file: !165, line: 216, baseType: !685, size: 32)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2846, file: !165, line: 217, baseType: !5, size: 32, offset: 32)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2846, file: !165, line: 218, baseType: !5, size: 32, offset: 64)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2846, file: !165, line: 219, baseType: !5, size: 32, offset: 96)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2846, file: !165, line: 220, baseType: !5, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2846, file: !165, line: 221, baseType: !5, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2846, file: !165, line: 222, baseType: !5, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2846, file: !165, line: 223, baseType: !5, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2846, file: !165, line: 224, baseType: !5, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2846, file: !165, line: 226, baseType: !5, size: 32, offset: 160)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2846, file: !165, line: 227, baseType: !27, size: 16, offset: 192)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2846, file: !165, line: 228, baseType: !27, size: 16, offset: 208)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2846, file: !165, line: 229, baseType: !5, size: 32, offset: 224)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2846, file: !165, line: 235, baseType: !2806, size: 64, offset: 256)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2846, file: !165, line: 236, baseType: !2839, size: 64, offset: 320)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2846, file: !165, line: 237, baseType: !2806, size: 64, offset: 384)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2846, file: !165, line: 238, baseType: !2839, size: 64, offset: 448)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2846, file: !165, line: 239, baseType: !2866, size: 4096, align: 512, offset: 512)
!2866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2842, size: 4096, align: 512, elements: !2867)
!2867 = !{!2868}
!2868 = !DISubrange(count: 8)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2842, file: !165, line: 161, baseType: !5, size: 32, offset: 64)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2842, file: !165, line: 162, baseType: !2871, size: 32, offset: 96)
!2871 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !26, line: 32, baseType: !2872)
!2872 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !38, line: 96, baseType: !23)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2842, file: !165, line: 163, baseType: !2874, size: 32, offset: 128)
!2874 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !373, line: 274, baseType: !2875)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !373, line: 274, size: 32, elements: !2876)
!2876 = !{!2877}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2875, file: !373, line: 274, baseType: !377, size: 32)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2842, file: !165, line: 164, baseType: !2839, size: 64, offset: 192)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2842, file: !165, line: 165, baseType: !2880, size: 128, offset: 256)
!2880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2830, line: 14, size: 128, elements: !2881)
!2881 = !{!2882}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2880, file: !2830, line: 15, baseType: !1509, size: 128)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2842, file: !165, line: 166, baseType: !2884, size: 64, offset: 384)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DISubroutineType(types: !2886)
!2886 = !{!2806}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2842, file: !165, line: 167, baseType: !2806, size: 64, offset: 448)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2826, file: !165, line: 123, baseType: !84, size: 8, offset: 448)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2826, file: !165, line: 124, baseType: !84, size: 8, offset: 456)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2826, file: !165, line: 125, baseType: !84, size: 8, offset: 464)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2826, file: !165, line: 126, baseType: !84, size: 8, offset: 472)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2774, file: !170, line: 691, baseType: !404, size: 64, offset: 1152)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2774, file: !170, line: 692, baseType: !1002, size: 256, offset: 1216)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2774, file: !170, line: 693, baseType: !55, size: 192, offset: 1472)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2774, file: !170, line: 694, baseType: !2801, size: 64, offset: 1664)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2774, file: !170, line: 695, baseType: !50, size: 32, offset: 1728)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2774, file: !170, line: 696, baseType: !50, size: 32, offset: 1760)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2774, file: !170, line: 697, baseType: !5, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2774, file: !170, line: 698, baseType: !5, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2774, file: !170, line: 699, baseType: !5, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2774, file: !170, line: 700, baseType: !5, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2774, file: !170, line: 701, baseType: !5, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2774, file: !170, line: 702, baseType: !5, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2774, file: !170, line: 703, baseType: !870, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2774, file: !170, line: 704, baseType: !5, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2774, file: !170, line: 705, baseType: !5, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2774, file: !170, line: 706, baseType: !5, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2774, file: !170, line: 707, baseType: !5, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2774, file: !170, line: 708, baseType: !5, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2774, file: !170, line: 709, baseType: !5, size: 32, offset: 1824)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2774, file: !170, line: 710, baseType: !169, size: 32, offset: 1856)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2774, file: !170, line: 711, baseType: !177, size: 32, offset: 1888)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2774, file: !170, line: 712, baseType: !177, size: 32, offset: 1920)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2774, file: !170, line: 713, baseType: !23, size: 32, offset: 1952)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2774, file: !170, line: 714, baseType: !23, size: 32, offset: 1984)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2774, file: !170, line: 715, baseType: !404, size: 64, offset: 2048)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2774, file: !170, line: 716, baseType: !404, size: 64, offset: 2112)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2774, file: !170, line: 717, baseType: !404, size: 64, offset: 2176)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2774, file: !170, line: 718, baseType: !404, size: 64, offset: 2240)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2774, file: !170, line: 720, baseType: !2921, size: 64, offset: 2304)
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !170, line: 632, size: 64, elements: !2923)
!2923 = !{!2924, !2925}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2922, file: !170, line: 633, baseType: !60, size: 32)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2922, file: !170, line: 634, baseType: !5, size: 32, offset: 32)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2774, file: !170, line: 721, baseType: !2927, size: 64, offset: 2368)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{null, !2634, !796}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2774, file: !170, line: 722, baseType: !2931, size: 64, offset: 2432)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !170, line: 722, flags: DIFlagFwdDecl)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2630, file: !158, line: 727, baseType: !2934, size: 64, offset: 4224)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !170, line: 742, size: 1792, elements: !2936)
!2936 = !{!2937, !2938, !2939, !2943, !2944, !2945}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2935, file: !170, line: 743, baseType: !2664, size: 1472)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2935, file: !170, line: 744, baseType: !2667, size: 64, offset: 1472)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2935, file: !170, line: 745, baseType: !2940, size: 64, offset: 1536)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{null, !2634, !870}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2935, file: !170, line: 746, baseType: !2667, size: 64, offset: 1600)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2935, file: !170, line: 747, baseType: !2658, size: 64, offset: 1664)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2935, file: !170, line: 748, baseType: !2658, size: 64, offset: 1728)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2630, file: !158, line: 736, baseType: !2947, size: 128, offset: 4288)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !158, line: 529, size: 128, elements: !2948)
!2948 = !{!2949, !2953}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2947, file: !158, line: 531, baseType: !2950, size: 64)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !2952, line: 13, flags: DIFlagFwdDecl)
!2952 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2947, file: !158, line: 532, baseType: !2954, size: 64, offset: 64)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !158, line: 49, flags: DIFlagFwdDecl)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2630, file: !158, line: 738, baseType: !2957, size: 64, offset: 4416)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2959)
!2959 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !158, line: 738, flags: DIFlagFwdDecl)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2630, file: !158, line: 740, baseType: !2961, size: 64, offset: 4480)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2630, file: !158, line: 741, baseType: !404, size: 64, offset: 4544)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2630, file: !158, line: 746, baseType: !404, size: 64, offset: 4608)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2630, file: !158, line: 747, baseType: !2965, size: 64, offset: 4672)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2967)
!2967 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !158, line: 747, flags: DIFlagFwdDecl)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2630, file: !158, line: 749, baseType: !2969, size: 64, offset: 4736)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !158, line: 428, size: 128, elements: !2971)
!2971 = !{!2972, !2973, !2974}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2970, file: !158, line: 433, baseType: !5, size: 32)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !2970, file: !158, line: 434, baseType: !5, size: 32, offset: 32)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2970, file: !158, line: 435, baseType: !40, size: 64, offset: 64)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2630, file: !158, line: 751, baseType: !98, size: 128, offset: 4800)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2630, file: !158, line: 762, baseType: !2977, size: 64, offset: 4928)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !158, line: 762, flags: DIFlagFwdDecl)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2630, file: !158, line: 770, baseType: !2980, offset: 4992)
!2980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2981, line: 5, elements: !1335)
!2981 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2630, file: !158, line: 772, baseType: !2983, size: 64, offset: 4992)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2985, line: 18, flags: DIFlagFwdDecl)
!2985 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2630, file: !158, line: 773, baseType: !2987, size: 64, offset: 5056)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2696, line: 22, flags: DIFlagFwdDecl)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2630, file: !158, line: 776, baseType: !23, size: 32, offset: 5120)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2630, file: !158, line: 778, baseType: !488, size: 32, offset: 5152)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2630, file: !158, line: 779, baseType: !400, size: 32, offset: 5184)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2630, file: !158, line: 781, baseType: !60, size: 32, offset: 5216)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2630, file: !158, line: 782, baseType: !98, size: 128, offset: 5248)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2630, file: !158, line: 784, baseType: !2995, size: 64, offset: 5376)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2997)
!2997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2998, line: 52, size: 768, elements: !2999)
!2998 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!2999 = !{!3000, !3001, !3002, !3003, !3004, !3008, !3012, !3013, !3014, !3015, !3019, !3023}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2997, file: !2998, line: 53, baseType: !17, size: 64)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2997, file: !2998, line: 55, baseType: !617, size: 64, offset: 64)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2997, file: !2998, line: 56, baseType: !617, size: 64, offset: 128)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2997, file: !2998, line: 58, baseType: !2647, size: 64, offset: 192)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2997, file: !2998, line: 59, baseType: !3005, size: 64, offset: 256)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!472, !2650, !2656}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2997, file: !2998, line: 61, baseType: !3009, size: 64, offset: 320)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{null, !2995}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2997, file: !2998, line: 62, baseType: !2658, size: 64, offset: 384)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2997, file: !2998, line: 64, baseType: !2667, size: 64, offset: 448)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2997, file: !2998, line: 66, baseType: !1789, size: 64, offset: 512)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2997, file: !2998, line: 67, baseType: !3016, size: 64, offset: 576)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!1430, !2650}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2997, file: !2998, line: 69, baseType: !3020, size: 64, offset: 640)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{null, !2650, !1066, !1067}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2997, file: !2998, line: 71, baseType: !2662, size: 64, offset: 704)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2630, file: !158, line: 785, baseType: !617, size: 64, offset: 5440)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2630, file: !158, line: 787, baseType: !2658, size: 64, offset: 5504)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2630, file: !158, line: 788, baseType: !3027, size: 64, offset: 5568)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !158, line: 46, flags: DIFlagFwdDecl)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2630, file: !158, line: 789, baseType: !3030, size: 64, offset: 5632)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !158, line: 48, flags: DIFlagFwdDecl)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2630, file: !158, line: 791, baseType: !3033, size: 64, offset: 5696)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !158, line: 597, size: 128, elements: !3035)
!3035 = !{!3036, !3037, !3038, !3039, !3040}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3034, file: !158, line: 598, baseType: !190, size: 32)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3034, file: !158, line: 599, baseType: !199, size: 32, offset: 32)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3034, file: !158, line: 600, baseType: !204, size: 32, offset: 64)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3034, file: !158, line: 601, baseType: !870, size: 8, offset: 96)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3034, file: !158, line: 602, baseType: !870, size: 8, offset: 104)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2630, file: !158, line: 793, baseType: !209, size: 32, offset: 5760)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2630, file: !158, line: 795, baseType: !870, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2630, file: !158, line: 796, baseType: !870, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2630, file: !158, line: 797, baseType: !870, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2630, file: !158, line: 798, baseType: !870, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2630, file: !158, line: 799, baseType: !870, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !484, file: !216, line: 1226, baseType: !3048, size: 64, offset: 1664)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !216, line: 1226, flags: DIFlagFwdDecl)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !484, file: !216, line: 1227, baseType: !3051, size: 64, offset: 1728)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !227, line: 163, size: 6848, elements: !3053)
!3053 = !{!3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3100, !3101, !3102, !3103, !3105, !3106, !3107}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3052, file: !227, line: 164, baseType: !404, size: 64)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3052, file: !227, line: 165, baseType: !803, size: 192, align: 64, offset: 64)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !3052, file: !227, line: 166, baseType: !98, size: 128, offset: 256)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3052, file: !227, line: 167, baseType: !40, size: 64, offset: 384)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !3052, file: !227, line: 168, baseType: !40, size: 64, offset: 448)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3052, file: !227, line: 170, baseType: !1917, size: 32, offset: 512)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3052, file: !227, line: 171, baseType: !5, size: 32, offset: 544)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !3052, file: !227, line: 172, baseType: !5, size: 32, offset: 576)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !3052, file: !227, line: 173, baseType: !5, size: 32, offset: 608)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !3052, file: !227, line: 173, baseType: !5, size: 32, offset: 640)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !3052, file: !227, line: 179, baseType: !671, size: 64, offset: 704)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !3052, file: !227, line: 184, baseType: !40, size: 64, offset: 768)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !3052, file: !227, line: 186, baseType: !3067, size: 4672, offset: 832)
!3067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !227, line: 105, size: 4672, elements: !3068)
!3068 = !{!3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3093, !3094, !3095, !3096, !3097, !3098, !3099}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !3067, file: !227, line: 106, baseType: !3051, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3067, file: !227, line: 108, baseType: !40, size: 64, offset: 64)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !3067, file: !227, line: 109, baseType: !40, size: 64, offset: 128)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !3067, file: !227, line: 111, baseType: !98, size: 128, offset: 192)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !3067, file: !227, line: 112, baseType: !98, size: 128, offset: 320)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !3067, file: !227, line: 113, baseType: !98, size: 128, offset: 448)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !3067, file: !227, line: 114, baseType: !98, size: 128, offset: 576)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3067, file: !227, line: 115, baseType: !60, size: 32, offset: 704)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !3067, file: !227, line: 117, baseType: !50, size: 32, offset: 736)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !3067, file: !227, line: 118, baseType: !1398, size: 1280, offset: 768)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !3067, file: !227, line: 120, baseType: !40, size: 64, offset: 2048)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !3067, file: !227, line: 121, baseType: !40, size: 64, offset: 2112)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !3067, file: !227, line: 122, baseType: !40, size: 64, offset: 2176)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !3067, file: !227, line: 123, baseType: !40, size: 64, offset: 2240)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !3067, file: !227, line: 124, baseType: !40, size: 64, offset: 2304)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !3067, file: !227, line: 132, baseType: !40, size: 64, offset: 2368)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !3067, file: !227, line: 133, baseType: !40, size: 64, offset: 2432)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !3067, file: !227, line: 135, baseType: !3087, size: 384, offset: 2496)
!3087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !3088, line: 76, size: 384, elements: !3089)
!3088 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!3089 = !{!3090, !3091, !3092}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3087, file: !3088, line: 78, baseType: !928, size: 320)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3087, file: !3088, line: 80, baseType: !5, size: 32, offset: 320)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3087, file: !3088, line: 81, baseType: !685, size: 32, offset: 352)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !3067, file: !227, line: 136, baseType: !23, size: 32, offset: 2880)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !3067, file: !227, line: 137, baseType: !226, size: 32, offset: 2912)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !3067, file: !227, line: 139, baseType: !60, size: 32, offset: 2944)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !3067, file: !227, line: 140, baseType: !98, size: 128, offset: 3008)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !3067, file: !227, line: 141, baseType: !2224, size: 704, offset: 3136)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !3067, file: !227, line: 142, baseType: !2224, size: 704, offset: 3840)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !3067, file: !227, line: 144, baseType: !98, size: 128, offset: 4544)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !3052, file: !227, line: 187, baseType: !98, size: 128, offset: 5504)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !3052, file: !227, line: 193, baseType: !55, size: 192, offset: 5632)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3052, file: !227, line: 195, baseType: !2634, size: 64, offset: 5824)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3052, file: !227, line: 196, baseType: !3104, size: 512, offset: 5888)
!3104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 512, elements: !576)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3052, file: !227, line: 197, baseType: !2634, size: 64, offset: 6400)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !3052, file: !227, line: 199, baseType: !2167, size: 320, offset: 6464)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !3052, file: !227, line: 202, baseType: !366, size: 64, offset: 6784)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !484, file: !216, line: 1228, baseType: !3109, size: 64, offset: 1792)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !216, line: 1228, flags: DIFlagFwdDecl)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !484, file: !216, line: 1229, baseType: !736, size: 128, offset: 1856)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !484, file: !216, line: 1230, baseType: !5, size: 32, offset: 1984)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !484, file: !216, line: 1231, baseType: !3114, size: 2496, offset: 2048)
!3114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !221, line: 521, size: 2496, elements: !3115)
!3115 = !{!3116, !3117, !3118, !3120, !3152}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3114, file: !221, line: 522, baseType: !5, size: 32)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3114, file: !221, line: 523, baseType: !811, size: 320, offset: 64)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3114, file: !221, line: 524, baseType: !3119, size: 192, offset: 384)
!3119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 192, elements: !572)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3114, file: !221, line: 525, baseType: !3121, size: 1728, offset: 576)
!3121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3122, size: 1728, elements: !572)
!3122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !221, line: 222, size: 576, elements: !3123)
!3123 = !{!3124, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3122, file: !221, line: 223, baseType: !3125, size: 64)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !221, line: 445, size: 256, elements: !3127)
!3127 = !{!3128, !3129, !3142, !3143}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3126, file: !221, line: 446, baseType: !23, size: 32)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3126, file: !221, line: 447, baseType: !3130, size: 64, offset: 64)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3132)
!3132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !221, line: 312, size: 512, elements: !3133)
!3133 = !{!3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3132, file: !221, line: 313, baseType: !2336, size: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3132, file: !221, line: 314, baseType: !2336, size: 64, offset: 64)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3132, file: !221, line: 315, baseType: !2336, size: 64, offset: 128)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3132, file: !221, line: 316, baseType: !2336, size: 64, offset: 192)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3132, file: !221, line: 317, baseType: !2445, size: 64, offset: 256)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3132, file: !221, line: 318, baseType: !2445, size: 64, offset: 320)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3132, file: !221, line: 319, baseType: !2445, size: 64, offset: 384)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3132, file: !221, line: 320, baseType: !2475, size: 64, offset: 448)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3126, file: !221, line: 448, baseType: !518, size: 64, offset: 128)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3126, file: !221, line: 449, baseType: !3125, size: 64, offset: 192)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3122, file: !221, line: 224, baseType: !23, size: 32, offset: 64)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3122, file: !221, line: 226, baseType: !98, size: 128, offset: 128)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3122, file: !221, line: 227, baseType: !40, size: 64, offset: 256)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3122, file: !221, line: 228, baseType: !5, size: 32, offset: 320)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3122, file: !221, line: 229, baseType: !5, size: 32, offset: 352)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3122, file: !221, line: 230, baseType: !2413, size: 64, offset: 384)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3122, file: !221, line: 231, baseType: !2413, size: 64, offset: 448)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3122, file: !221, line: 232, baseType: !21, size: 64, offset: 512)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3114, file: !221, line: 526, baseType: !3153, size: 192, offset: 2304)
!3153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3130, size: 192, elements: !572)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !484, file: !216, line: 1233, baseType: !3155, size: 2368, offset: 4544)
!3155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !216, line: 1184, size: 2368, elements: !3156)
!3156 = !{!3157, !3158, !3159}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3155, file: !216, line: 1185, baseType: !27, size: 16)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3155, file: !216, line: 1186, baseType: !27, size: 16, offset: 16)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3155, file: !216, line: 1187, baseType: !3160, size: 2304, offset: 64)
!3160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3161, size: 2304, elements: !572)
!3161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3162, line: 12, size: 768, elements: !3163)
!3162 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3163 = !{!3164, !3172, !3173, !4821, !4822}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3161, file: !3162, line: 13, baseType: !3165, size: 384)
!3165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3166, line: 17, size: 384, elements: !3167)
!3166 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3167 = !{!3168, !3169, !3170, !3171}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3165, file: !3166, line: 18, baseType: !23, size: 32)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3165, file: !3166, line: 19, baseType: !23, size: 32, offset: 32)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3165, file: !3166, line: 20, baseType: !55, size: 192, offset: 64)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3165, file: !3166, line: 22, baseType: !658, size: 128, align: 64, offset: 256)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3161, file: !3162, line: 14, baseType: !2020, size: 64, offset: 384)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3161, file: !3162, line: 15, baseType: !3174, size: 64, offset: 448)
!3174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3175, line: 16, size: 64, elements: !3176)
!3175 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3176 = !{!3177}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3174, file: !3175, line: 17, baseType: !3178, size: 64)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1686, line: 746, size: 58368, elements: !3180)
!3180 = !{!3181, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3261, !3272, !3292, !3296, !3299, !3330, !3331, !3332, !3333, !3341, !3343, !3344, !3345, !3346, !3347, !3348, !3359, !3360, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3377, !3378, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3466, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3514, !3520, !3521, !3522, !3523, !3524, !3528, !3531, !3538, !3543, !3546, !3549, !3552, !3870, !4069, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4107, !4108, !4109, !4118, !4126, !4127, !4128, !4129, !4130, !4135, !4136, !4137, !4140, !4141, !4144, !4147, !4153, !4160, !4340, !4341, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4440, !4443, !4444, !4447, !4448, !4449, !4452, !4453, !4454, !4455, !4456, !4457, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4489, !4490, !4496, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4578, !4580, !4581, !4582, !4583, !4584, !4585, !4588, !4589, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4602, !4603, !4604}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !3179, file: !1686, line: 752, baseType: !3182, size: 192)
!3182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !3183, line: 56, size: 192, elements: !3184)
!3183 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!3184 = !{!3185, !3186, !3187, !3188}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3182, file: !3183, line: 57, baseType: !40, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !3182, file: !3183, line: 58, baseType: !40, size: 64, offset: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3182, file: !3183, line: 59, baseType: !400, size: 32, offset: 128)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3182, file: !3183, line: 61, baseType: !400, size: 32, offset: 160)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !3179, file: !1686, line: 754, baseType: !5, size: 32, offset: 192)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3179, file: !1686, line: 767, baseType: !21, size: 64, offset: 256)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3179, file: !1686, line: 768, baseType: !723, size: 32, offset: 320)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3179, file: !1686, line: 770, baseType: !5, size: 32, offset: 352)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !3179, file: !1686, line: 771, baseType: !5, size: 32, offset: 384)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !3179, file: !1686, line: 774, baseType: !23, size: 32, offset: 416)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !3179, file: !1686, line: 775, baseType: !3196, size: 128, offset: 448)
!3196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !3197, line: 58, size: 128, elements: !3198)
!3197 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!3198 = !{!3199, !3200, !3205, !3206}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !3196, file: !3197, line: 59, baseType: !652, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, scope: !3196, file: !3197, line: 60, baseType: !3201, size: 32, offset: 64)
!3201 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3196, file: !3197, line: 60, size: 32, elements: !3202)
!3202 = !{!3203, !3204}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !3201, file: !3197, line: 61, baseType: !5, size: 32)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !3201, file: !3197, line: 62, baseType: !50, size: 32)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !3196, file: !3197, line: 65, baseType: !94, size: 16, offset: 96)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !3196, file: !3197, line: 65, baseType: !94, size: 16, offset: 112)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !3179, file: !1686, line: 776, baseType: !5, size: 32, offset: 576)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !3179, file: !1686, line: 777, baseType: !40, size: 64, offset: 640)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !3179, file: !1686, line: 778, baseType: !3178, size: 64, offset: 704)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !3179, file: !1686, line: 787, baseType: !23, size: 32, offset: 768)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !3179, file: !1686, line: 788, baseType: !23, size: 32, offset: 800)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3179, file: !1686, line: 790, baseType: !23, size: 32, offset: 832)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3179, file: !1686, line: 792, baseType: !23, size: 32, offset: 864)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !3179, file: !1686, line: 793, baseType: !23, size: 32, offset: 896)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !3179, file: !1686, line: 794, baseType: !23, size: 32, offset: 928)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !3179, file: !1686, line: 795, baseType: !5, size: 32, offset: 960)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !3179, file: !1686, line: 797, baseType: !3218, size: 2048, offset: 1024)
!3218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1686, line: 551, size: 2048, elements: !3219)
!3219 = !{!3220, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3240, !3243, !3244, !3245}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !3218, file: !1686, line: 553, baseType: !3221, size: 128)
!3221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1686, line: 411, size: 128, elements: !3222)
!3222 = !{!3223, !3224}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3221, file: !1686, line: 412, baseType: !40, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !3221, file: !1686, line: 413, baseType: !400, size: 32, offset: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !3218, file: !1686, line: 554, baseType: !803, size: 192, align: 64, offset: 128)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3218, file: !1686, line: 555, baseType: !404, size: 64, offset: 320)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !3218, file: !1686, line: 556, baseType: !404, size: 64, offset: 384)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3218, file: !1686, line: 558, baseType: !98, size: 128, offset: 448)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3218, file: !1686, line: 559, baseType: !5, size: 32, offset: 576)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !3218, file: !1686, line: 561, baseType: !404, size: 64, offset: 640)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3218, file: !1686, line: 562, baseType: !404, size: 64, offset: 704)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !3218, file: !1686, line: 563, baseType: !404, size: 64, offset: 768)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !3218, file: !1686, line: 564, baseType: !404, size: 64, offset: 832)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !3218, file: !1686, line: 565, baseType: !677, size: 64, offset: 896)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3218, file: !1686, line: 566, baseType: !404, size: 64, offset: 960)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !3218, file: !1686, line: 568, baseType: !404, size: 64, offset: 1024)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3218, file: !1686, line: 571, baseType: !23, size: 32, offset: 1088)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3218, file: !1686, line: 572, baseType: !3239, size: 64, offset: 1152)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !3218, file: !1686, line: 574, baseType: !3241, size: 64, offset: 1216)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1686, line: 49, flags: DIFlagFwdDecl)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !3218, file: !1686, line: 576, baseType: !3241, size: 64, offset: 1280)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !3218, file: !1686, line: 578, baseType: !40, size: 64, offset: 1344)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !3218, file: !1686, line: 588, baseType: !3246, size: 512, align: 512, offset: 1536)
!3246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1686, line: 497, size: 512, align: 512, elements: !3247)
!3247 = !{!3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !3246, file: !1686, line: 498, baseType: !404, size: 64)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !3246, file: !1686, line: 499, baseType: !404, size: 64, offset: 64)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !3246, file: !1686, line: 500, baseType: !404, size: 64, offset: 128)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !3246, file: !1686, line: 501, baseType: !400, size: 32, offset: 192)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !3246, file: !1686, line: 502, baseType: !400, size: 32, offset: 224)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !3246, file: !1686, line: 503, baseType: !40, size: 64, offset: 256)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !3246, file: !1686, line: 504, baseType: !40, size: 64, offset: 320)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !3246, file: !1686, line: 505, baseType: !40, size: 64, offset: 384)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !3246, file: !1686, line: 506, baseType: !3257, size: 64, align: 64, offset: 448)
!3257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1686, line: 445, size: 64, align: 64, elements: !3258)
!3258 = !{!3259, !3260}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !3257, file: !1686, line: 446, baseType: !5, size: 32)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !3257, file: !1686, line: 447, baseType: !5, size: 32, offset: 32)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3179, file: !1686, line: 798, baseType: !3262, size: 384, offset: 3072)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1686, line: 592, size: 384, elements: !3263)
!3263 = !{!3264, !3265, !3266, !3267, !3268, !3269, !3270}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !3262, file: !1686, line: 593, baseType: !98, size: 128)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3262, file: !1686, line: 594, baseType: !40, size: 64, offset: 128)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !3262, file: !1686, line: 595, baseType: !40, size: 64, offset: 192)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !3262, file: !1686, line: 596, baseType: !5, size: 32, offset: 256)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3262, file: !1686, line: 597, baseType: !27, size: 16, offset: 288)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !3262, file: !1686, line: 598, baseType: !27, size: 16, offset: 304)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !3262, file: !1686, line: 600, baseType: !3271, size: 64, offset: 320)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !3179, file: !1686, line: 799, baseType: !3273, size: 1792, offset: 3456)
!3273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1686, line: 610, size: 1792, elements: !3274)
!3274 = !{!3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3273, file: !1686, line: 611, baseType: !803, size: 192, align: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !3273, file: !1686, line: 618, baseType: !404, size: 64, offset: 192)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !3273, file: !1686, line: 619, baseType: !404, size: 64, offset: 256)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !3273, file: !1686, line: 620, baseType: !404, size: 64, offset: 320)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !3273, file: !1686, line: 621, baseType: !404, size: 64, offset: 384)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !3273, file: !1686, line: 622, baseType: !404, size: 64, offset: 448)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !3273, file: !1686, line: 629, baseType: !677, size: 64, offset: 512)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3273, file: !1686, line: 630, baseType: !404, size: 64, offset: 576)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3273, file: !1686, line: 631, baseType: !5, size: 32, offset: 640)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !3273, file: !1686, line: 653, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !3273, file: !1686, line: 654, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !3273, file: !1686, line: 655, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !3273, file: !1686, line: 656, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !3273, file: !1686, line: 662, baseType: !2826, size: 512, offset: 704)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !3273, file: !1686, line: 671, baseType: !2826, size: 512, offset: 1216)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !3273, file: !1686, line: 679, baseType: !3291, size: 64, offset: 1728)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !3179, file: !1686, line: 800, baseType: !3293, size: 64, offset: 5248)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3295)
!3295 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1686, line: 800, flags: DIFlagFwdDecl)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !3179, file: !1686, line: 809, baseType: !3297, size: 64, offset: 5312)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1686, line: 70, flags: DIFlagFwdDecl)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3179, file: !1686, line: 825, baseType: !3300, size: 2048, align: 512, offset: 5632)
!3300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1686, line: 509, size: 2048, align: 512, elements: !3301)
!3301 = !{!3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3300, file: !1686, line: 511, baseType: !404, size: 64)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3300, file: !1686, line: 512, baseType: !404, size: 64, offset: 64)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3300, file: !1686, line: 513, baseType: !404, size: 64, offset: 128)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3300, file: !1686, line: 514, baseType: !404, size: 64, offset: 192)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3300, file: !1686, line: 515, baseType: !404, size: 64, offset: 256)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3300, file: !1686, line: 516, baseType: !404, size: 64, offset: 320)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3300, file: !1686, line: 518, baseType: !404, size: 64, offset: 384)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3300, file: !1686, line: 519, baseType: !404, size: 64, offset: 448)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3300, file: !1686, line: 520, baseType: !677, size: 64, offset: 512)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3300, file: !1686, line: 522, baseType: !404, size: 64, offset: 576)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3300, file: !1686, line: 523, baseType: !404, size: 64, offset: 640)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3300, file: !1686, line: 524, baseType: !677, size: 64, offset: 704)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3300, file: !1686, line: 526, baseType: !677, size: 64, offset: 768)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3300, file: !1686, line: 527, baseType: !404, size: 64, offset: 832)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3300, file: !1686, line: 529, baseType: !404, size: 64, offset: 896)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3300, file: !1686, line: 530, baseType: !404, size: 64, offset: 960)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3300, file: !1686, line: 531, baseType: !404, size: 64, offset: 1024)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3300, file: !1686, line: 532, baseType: !404, size: 64, offset: 1088)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3300, file: !1686, line: 533, baseType: !404, size: 64, offset: 1152)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3300, file: !1686, line: 535, baseType: !404, size: 64, offset: 1216)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3300, file: !1686, line: 536, baseType: !404, size: 64, offset: 1280)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3300, file: !1686, line: 537, baseType: !404, size: 64, offset: 1344)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3300, file: !1686, line: 538, baseType: !404, size: 64, offset: 1408)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3300, file: !1686, line: 539, baseType: !404, size: 64, offset: 1472)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3300, file: !1686, line: 540, baseType: !404, size: 64, offset: 1536)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3300, file: !1686, line: 541, baseType: !404, size: 64, offset: 1600)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3300, file: !1686, line: 542, baseType: !404, size: 64, offset: 1664)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3300, file: !1686, line: 543, baseType: !404, size: 64, offset: 1728)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !3179, file: !1686, line: 833, baseType: !5, size: 32, offset: 7680)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !3179, file: !1686, line: 836, baseType: !5, size: 32, offset: 7712)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !3179, file: !1686, line: 837, baseType: !23, size: 32, offset: 7744)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !3179, file: !1686, line: 838, baseType: !3334, size: 64, offset: 7808)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3336)
!3336 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !3337, line: 19, baseType: !3338)
!3337 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!3338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !3337, line: 19, size: 64, elements: !3339)
!3339 = !{!3340}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3338, file: !3337, line: 19, baseType: !1625, size: 64)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !3179, file: !1686, line: 839, baseType: !3342, size: 64, offset: 7872)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !3179, file: !1686, line: 840, baseType: !3336, size: 64, offset: 7936)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !3179, file: !1686, line: 841, baseType: !21, size: 64, offset: 8000)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !3179, file: !1686, line: 843, baseType: !27, size: 16, offset: 8064)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !3179, file: !1686, line: 845, baseType: !27, size: 16, offset: 8080)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !3179, file: !1686, line: 848, baseType: !23, size: 32, offset: 8096)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !3179, file: !1686, line: 849, baseType: !3349, size: 32, offset: 8128)
!3349 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1686, line: 718, size: 32, elements: !3350)
!3350 = !{!3351, !3358}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3349, file: !1686, line: 724, baseType: !3352, size: 32)
!3352 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3349, file: !1686, line: 719, size: 32, elements: !3353)
!3353 = !{!3354, !3355, !3356, !3357}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3352, file: !1686, line: 720, baseType: !84, size: 8)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3352, file: !1686, line: 721, baseType: !84, size: 8, offset: 8)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3352, file: !1686, line: 722, baseType: !84, size: 8, offset: 16)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3352, file: !1686, line: 723, baseType: !84, size: 8, offset: 24)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3349, file: !1686, line: 725, baseType: !400, size: 32)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !3179, file: !1686, line: 850, baseType: !98, size: 128, offset: 8192)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !3179, file: !1686, line: 851, baseType: !3361, size: 64, offset: 8320)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1686, line: 60, flags: DIFlagFwdDecl)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !3179, file: !1686, line: 855, baseType: !40, size: 64, offset: 8384)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !3179, file: !1686, line: 856, baseType: !84, size: 8, offset: 8448)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !3179, file: !1686, line: 857, baseType: !84, size: 8, offset: 8456)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !3179, file: !1686, line: 858, baseType: !23, size: 32, offset: 8480)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !3179, file: !1686, line: 859, baseType: !98, size: 128, offset: 8512)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !3179, file: !1686, line: 860, baseType: !23, size: 32, offset: 8640)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !3179, file: !1686, line: 861, baseType: !98, size: 128, offset: 8704)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !3179, file: !1686, line: 873, baseType: !3371, size: 256, offset: 8832)
!3371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1686, line: 376, size: 256, elements: !3372)
!3372 = !{!3373, !3374, !3375, !3376}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3371, file: !1686, line: 381, baseType: !40, size: 64)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3371, file: !1686, line: 384, baseType: !406, size: 64, offset: 64)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3371, file: !1686, line: 389, baseType: !406, size: 64, offset: 128)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3371, file: !1686, line: 392, baseType: !406, size: 64, offset: 192)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3179, file: !1686, line: 875, baseType: !98, size: 128, offset: 9088)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !3179, file: !1686, line: 877, baseType: !3379, size: 320, offset: 9216)
!3379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3380, line: 86, size: 320, elements: !3381)
!3380 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3381 = !{!3382, !3383, !3384}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3379, file: !3380, line: 87, baseType: !23, size: 32)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3379, file: !3380, line: 88, baseType: !98, size: 128, offset: 64)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3379, file: !3380, line: 89, baseType: !98, size: 128, offset: 192)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !3179, file: !1686, line: 878, baseType: !803, size: 192, align: 64, offset: 9536)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3179, file: !1686, line: 881, baseType: !1314, size: 64, offset: 9728)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !3179, file: !1686, line: 882, baseType: !1314, size: 64, offset: 9792)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !3179, file: !1686, line: 884, baseType: !23, size: 32, offset: 9856)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !3179, file: !1686, line: 885, baseType: !23, size: 32, offset: 9888)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !3179, file: !1686, line: 886, baseType: !23, size: 32, offset: 9920)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !3179, file: !1686, line: 888, baseType: !23, size: 32, offset: 9952)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !3179, file: !1686, line: 890, baseType: !40, size: 64, offset: 9984)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !3179, file: !1686, line: 893, baseType: !5, size: 32, offset: 10048)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !3179, file: !1686, line: 896, baseType: !5, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !3179, file: !1686, line: 897, baseType: !5, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !3179, file: !1686, line: 898, baseType: !5, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !3179, file: !1686, line: 899, baseType: !5, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !3179, file: !1686, line: 919, baseType: !5, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !3179, file: !1686, line: 922, baseType: !5, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !3179, file: !1686, line: 923, baseType: !5, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !3179, file: !1686, line: 925, baseType: !5, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !3179, file: !1686, line: 939, baseType: !5, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3179, file: !1686, line: 941, baseType: !5, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !3179, file: !1686, line: 944, baseType: !5, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !3179, file: !1686, line: 956, baseType: !5, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !3179, file: !1686, line: 962, baseType: !5, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !3179, file: !1686, line: 966, baseType: !5, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !3179, file: !1686, line: 969, baseType: !40, size: 64, offset: 10176)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !3179, file: !1686, line: 971, baseType: !3410, size: 448, offset: 10240)
!3410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !239, line: 25, size: 448, elements: !3411)
!3411 = !{!3412, !3413, !3418}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3410, file: !239, line: 26, baseType: !40, size: 64)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3410, file: !239, line: 27, baseType: !3414, size: 64, offset: 64)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{!606, !3417}
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, scope: !3410, file: !239, line: 28, baseType: !3419, size: 320, offset: 128)
!3419 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3410, file: !239, line: 28, size: 320, elements: !3420)
!3420 = !{!3421, !3431, !3456}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3419, file: !239, line: 37, baseType: !3422, size: 320)
!3422 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3419, file: !239, line: 30, size: 320, elements: !3423)
!3423 = !{!3424, !3426, !3427, !3428, !3429, !3430}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3422, file: !239, line: 31, baseType: !3425, size: 64)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3422, file: !239, line: 32, baseType: !400, size: 32, offset: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3422, file: !239, line: 33, baseType: !400, size: 32, offset: 96)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3422, file: !239, line: 34, baseType: !400, size: 32, offset: 128)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3422, file: !239, line: 35, baseType: !404, size: 64, offset: 192)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3422, file: !239, line: 36, baseType: !3425, size: 64, offset: 256)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3419, file: !239, line: 47, baseType: !3432, size: 192)
!3432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3419, file: !239, line: 39, size: 192, elements: !3433)
!3433 = !{!3434, !3435, !3436, !3455}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3432, file: !239, line: 40, baseType: !2871, size: 32)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3432, file: !239, line: 41, baseType: !238, size: 32, offset: 32)
!3436 = !DIDerivedType(tag: DW_TAG_member, scope: !3432, file: !239, line: 42, baseType: !3437, size: 64, offset: 64)
!3437 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3432, file: !239, line: 42, size: 64, elements: !3438)
!3438 = !{!3439, !3447}
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3437, file: !239, line: 43, baseType: !3440, size: 64)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3442, line: 7, size: 128, elements: !3443)
!3442 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3443 = !{!3444, !3446}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3441, file: !3442, line: 8, baseType: !3445, size: 64)
!3445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !38, line: 93, baseType: !44)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3441, file: !3442, line: 9, baseType: !44, size: 64, offset: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3437, file: !239, line: 44, baseType: !3448, size: 64)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3450, line: 7, size: 64, elements: !3451)
!3450 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3451 = !{!3452, !3454}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3449, file: !3450, line: 8, baseType: !3453, size: 32)
!3453 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3450, line: 5, baseType: !796)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3449, file: !3450, line: 9, baseType: !796, size: 32, offset: 32)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3432, file: !239, line: 46, baseType: !404, size: 64, offset: 128)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3419, file: !239, line: 55, baseType: !3457, size: 256)
!3457 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3419, file: !239, line: 49, size: 256, elements: !3458)
!3458 = !{!3459, !3462, !3463, !3464, !3465}
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3457, file: !239, line: 50, baseType: !3460, size: 64)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !239, line: 14, flags: DIFlagFwdDecl)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3457, file: !239, line: 51, baseType: !23, size: 32, offset: 64)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3457, file: !239, line: 52, baseType: !23, size: 32, offset: 96)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3457, file: !239, line: 53, baseType: !40, size: 64, offset: 128)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3457, file: !239, line: 54, baseType: !40, size: 64, offset: 192)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3179, file: !1686, line: 973, baseType: !3467, size: 32, offset: 10688)
!3467 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !26, line: 27, baseType: !3468)
!3468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !38, line: 28, baseType: !23)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !3179, file: !1686, line: 974, baseType: !3467, size: 32, offset: 10720)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !3179, file: !1686, line: 978, baseType: !40, size: 64, offset: 10752)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !3179, file: !1686, line: 987, baseType: !3178, size: 64, offset: 10816)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3179, file: !1686, line: 990, baseType: !3178, size: 64, offset: 10880)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3179, file: !1686, line: 995, baseType: !98, size: 128, offset: 10944)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3179, file: !1686, line: 996, baseType: !98, size: 128, offset: 11072)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3179, file: !1686, line: 997, baseType: !3178, size: 64, offset: 11200)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !3179, file: !1686, line: 1005, baseType: !98, size: 128, offset: 11264)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !3179, file: !1686, line: 1006, baseType: !98, size: 128, offset: 11392)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !3179, file: !1686, line: 1009, baseType: !719, size: 64, offset: 11520)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !3179, file: !1686, line: 1010, baseType: !3480, size: 512, offset: 11584)
!3480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !736, size: 512, elements: !741)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !3179, file: !1686, line: 1011, baseType: !98, size: 128, offset: 12096)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !3179, file: !1686, line: 1012, baseType: !98, size: 128, offset: 12224)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !3179, file: !1686, line: 1014, baseType: !1040, size: 64, offset: 12352)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !3179, file: !1686, line: 1017, baseType: !2068, size: 64, offset: 12416)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !3179, file: !1686, line: 1020, baseType: !2068, size: 64, offset: 12480)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !3179, file: !1686, line: 1023, baseType: !21, size: 64, offset: 12544)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3179, file: !1686, line: 1025, baseType: !404, size: 64, offset: 12608)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3179, file: !1686, line: 1026, baseType: !404, size: 64, offset: 12672)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3179, file: !1686, line: 1031, baseType: !404, size: 64, offset: 12736)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3179, file: !1686, line: 1032, baseType: !3491, size: 192, offset: 12800)
!3491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1686, line: 324, size: 192, elements: !3492)
!3492 = !{!3493, !3494, !3495}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3491, file: !1686, line: 326, baseType: !404, size: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3491, file: !1686, line: 327, baseType: !404, size: 64, offset: 64)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3491, file: !1686, line: 328, baseType: !685, size: 32, offset: 128)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3179, file: !1686, line: 1041, baseType: !40, size: 64, offset: 12992)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3179, file: !1686, line: 1042, baseType: !40, size: 64, offset: 13056)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !3179, file: !1686, line: 1045, baseType: !404, size: 64, offset: 13120)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !3179, file: !1686, line: 1048, baseType: !404, size: 64, offset: 13184)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3179, file: !1686, line: 1051, baseType: !40, size: 64, offset: 13248)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3179, file: !1686, line: 1052, baseType: !40, size: 64, offset: 13312)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3179, file: !1686, line: 1055, baseType: !3503, size: 640, offset: 13376)
!3503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3504, line: 132, size: 640, elements: !3505)
!3504 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3505 = !{!3506, !3512, !3513}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3503, file: !3504, line: 133, baseType: !3507, size: 576)
!3507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3508, size: 576, elements: !572)
!3508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3504, line: 117, size: 192, elements: !3509)
!3509 = !{!3510, !3511}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3508, file: !3504, line: 118, baseType: !404, size: 64)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3508, file: !3504, line: 119, baseType: !2880, size: 128, offset: 64)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3503, file: !3504, line: 134, baseType: !5, size: 32, offset: 576)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3503, file: !3504, line: 135, baseType: !5, size: 32, offset: 608)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !3179, file: !1686, line: 1058, baseType: !3515, size: 448, offset: 14016)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3504, line: 144, size: 448, elements: !3516)
!3516 = !{!3517, !3518, !3519}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3515, file: !3504, line: 145, baseType: !658, size: 128, align: 64)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3515, file: !3504, line: 146, baseType: !680, size: 256, offset: 128)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3515, file: !3504, line: 147, baseType: !5, size: 32, offset: 384)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !3179, file: !1686, line: 1064, baseType: !761, size: 64, offset: 14464)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !3179, file: !1686, line: 1067, baseType: !761, size: 64, offset: 14528)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3179, file: !1686, line: 1070, baseType: !761, size: 64, offset: 14592)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !3179, file: !1686, line: 1074, baseType: !788, size: 64, offset: 14656)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3179, file: !1686, line: 1084, baseType: !3525, size: 128, offset: 14720)
!3525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 128, elements: !3526)
!3526 = !{!3527}
!3527 = !DISubrange(count: 16)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !3179, file: !1686, line: 1086, baseType: !3529, size: 64, offset: 14848)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1686, line: 55, flags: DIFlagFwdDecl)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !3179, file: !1686, line: 1089, baseType: !3532, size: 64, offset: 14912)
!3532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3533, line: 12, size: 64, elements: !3534)
!3533 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3534 = !{!3535}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3532, file: !3533, line: 13, baseType: !3536, size: 64)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3533, line: 8, flags: DIFlagFwdDecl)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !3179, file: !1686, line: 1090, baseType: !3539, size: 128, offset: 14976)
!3539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3540, line: 13, size: 128, elements: !3541)
!3540 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3541 = !{!3542}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3539, file: !3540, line: 14, baseType: !98, size: 128)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3179, file: !1686, line: 1097, baseType: !3544, size: 64, offset: 15104)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1686, line: 50, flags: DIFlagFwdDecl)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3179, file: !1686, line: 1100, baseType: !3547, size: 64, offset: 15168)
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1686, line: 1100, flags: DIFlagFwdDecl)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !3179, file: !1686, line: 1103, baseType: !3550, size: 64, offset: 15232)
!3550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3551 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1686, line: 53, flags: DIFlagFwdDecl)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3179, file: !1686, line: 1107, baseType: !3553, size: 64, offset: 15296)
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3555, line: 31, size: 576, elements: !3556)
!3555 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!3556 = !{!3557, !3558, !3561, !3564, !3567, !3568, !3571, !3574, !3575}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3554, file: !3555, line: 32, baseType: !723, size: 32)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !3554, file: !3555, line: 33, baseType: !3559, size: 64, offset: 64)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !3555, line: 9, flags: DIFlagFwdDecl)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !3554, file: !3555, line: 34, baseType: !3562, size: 64, offset: 128)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !3555, line: 10, flags: DIFlagFwdDecl)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3554, file: !3555, line: 35, baseType: !3565, size: 64, offset: 192)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !3555, line: 8, flags: DIFlagFwdDecl)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !3554, file: !3555, line: 36, baseType: !752, size: 64, offset: 256)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !3554, file: !3555, line: 37, baseType: !3569, size: 64, offset: 320)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !790, line: 34, flags: DIFlagFwdDecl)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !3554, file: !3555, line: 38, baseType: !3572, size: 64, offset: 384)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !3555, line: 38, flags: DIFlagFwdDecl)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !3554, file: !3555, line: 39, baseType: !3572, size: 64, offset: 448)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !3554, file: !3555, line: 40, baseType: !3576, size: 64, offset: 512)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3578, line: 771, size: 384, elements: !3579)
!3578 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!3579 = !{!3580, !3581, !3582, !3583}
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3577, file: !3578, line: 772, baseType: !986, size: 192)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !3577, file: !3578, line: 773, baseType: !953, size: 64, offset: 192)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !3577, file: !3578, line: 774, baseType: !1088, size: 64, offset: 256)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !3577, file: !3578, line: 775, baseType: !3584, size: 64, offset: 320)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !3586, line: 209, size: 4736, elements: !3587)
!3586 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!3587 = !{!3588, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3585, file: !3586, line: 215, baseType: !3589, size: 896)
!3589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3590, size: 896, elements: !3647)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !3586, line: 152, size: 1600, elements: !3592)
!3592 = !{!3593, !3698, !3813, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3848}
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3591, file: !3586, line: 154, baseType: !3594, size: 64)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !3586, line: 389, size: 7872, elements: !3596)
!3596 = !{!3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3616, !3617, !3621, !3622, !3623, !3624, !3625, !3626, !3644, !3645, !3649, !3650, !3651, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3685, !3688, !3689, !3696}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3595, file: !3586, line: 391, baseType: !3591, size: 1600)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3595, file: !3586, line: 393, baseType: !40, size: 64, offset: 1600)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3595, file: !3586, line: 401, baseType: !23, size: 32, offset: 1664)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !3595, file: !3586, line: 404, baseType: !23, size: 32, offset: 1696)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !3595, file: !3586, line: 417, baseType: !23, size: 32, offset: 1728)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !3595, file: !3586, line: 418, baseType: !23, size: 32, offset: 1760)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !3595, file: !3586, line: 419, baseType: !23, size: 32, offset: 1792)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !3595, file: !3586, line: 432, baseType: !23, size: 32, offset: 1824)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !3595, file: !3586, line: 433, baseType: !23, size: 32, offset: 1856)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !3595, file: !3586, line: 434, baseType: !23, size: 32, offset: 1888)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !3595, file: !3586, line: 436, baseType: !23, size: 32, offset: 1920)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !3595, file: !3586, line: 439, baseType: !5, size: 32, offset: 1952)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3595, file: !3586, line: 441, baseType: !1825, size: 64, offset: 1984)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !3595, file: !3586, line: 442, baseType: !3611, size: 448, offset: 2048)
!3611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !3586, line: 138, size: 448, elements: !3612)
!3612 = !{!3613, !3614, !3615}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3611, file: !3586, line: 140, baseType: !1825, size: 64)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !3611, file: !3586, line: 141, baseType: !40, size: 64, offset: 64)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !3611, file: !3586, line: 142, baseType: !2167, size: 320, offset: 128)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !3595, file: !3586, line: 443, baseType: !3611, size: 448, offset: 2496)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !3595, file: !3586, line: 446, baseType: !3618, offset: 2944)
!3618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3611, elements: !3619)
!3619 = !{!3620}
!3620 = !DISubrange(count: 0)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !3595, file: !3586, line: 455, baseType: !94, size: 16, offset: 2944)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !3595, file: !3586, line: 456, baseType: !94, size: 16, offset: 2960)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !3595, file: !3586, line: 457, baseType: !94, size: 16, offset: 2976)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !3595, file: !3586, line: 458, baseType: !94, size: 16, offset: 2992)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3595, file: !3586, line: 461, baseType: !3589, size: 896, offset: 3008)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3595, file: !3586, line: 463, baseType: !3627, size: 64, offset: 3904)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !3586, line: 537, size: 41664, elements: !3629)
!3629 = !{!3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3643}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !3628, file: !3586, line: 538, baseType: !1845, size: 64)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !3628, file: !3586, line: 541, baseType: !5, size: 32, offset: 64)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !3628, file: !3586, line: 544, baseType: !23, size: 32, offset: 96)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !3628, file: !3586, line: 547, baseType: !98, size: 128, offset: 128)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3628, file: !3586, line: 548, baseType: !658, size: 128, align: 64, offset: 256)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3628, file: !3586, line: 555, baseType: !3595, size: 7872, offset: 384)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !3628, file: !3586, line: 558, baseType: !3594, size: 64, offset: 8256)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !3628, file: !3586, line: 561, baseType: !50, size: 32, offset: 8320)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3628, file: !3586, line: 564, baseType: !5, size: 32, offset: 8352)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !3628, file: !3586, line: 567, baseType: !3640, size: 32768, offset: 8384)
!3640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 32768, elements: !3641)
!3641 = !{!3642}
!3642 = !DISubrange(count: 4096)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3628, file: !3586, line: 570, baseType: !3104, size: 512, offset: 41152)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !3595, file: !3586, line: 469, baseType: !98, size: 128, offset: 3968)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !3595, file: !3586, line: 478, baseType: !3646, size: 1792, offset: 4096)
!3646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 1792, elements: !3647)
!3647 = !{!3648}
!3648 = !DISubrange(count: 14)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !3595, file: !3586, line: 487, baseType: !3594, size: 64, offset: 5888)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !3595, file: !3586, line: 488, baseType: !3594, size: 64, offset: 5952)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !3595, file: !3586, line: 491, baseType: !3652, size: 64, offset: 6016)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !3586, line: 327, size: 896, elements: !3654)
!3654 = !{!3655, !3658, !3668, !3669, !3670, !3671, !3672}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !3653, file: !3586, line: 332, baseType: !3656)
!3656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !3657, line: 64, elements: !1335)
!3657 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3653, file: !3586, line: 333, baseType: !3659, size: 192)
!3659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !3586, line: 299, size: 192, elements: !3660)
!3660 = !{!3661}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !3659, file: !3586, line: 300, baseType: !3662, size: 192)
!3662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !3663, line: 17, size: 192, elements: !3664)
!3663 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!3664 = !{!3665, !3666, !3667}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3662, file: !3663, line: 18, baseType: !404, size: 64)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3662, file: !3663, line: 19, baseType: !404, size: 64, offset: 64)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3662, file: !3663, line: 20, baseType: !406, size: 64, offset: 128)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3653, file: !3586, line: 339, baseType: !3659, size: 192, offset: 192)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !3653, file: !3586, line: 347, baseType: !3659, size: 192, offset: 384)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !3653, file: !3586, line: 353, baseType: !3659, size: 192, offset: 576)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !3653, file: !3586, line: 366, baseType: !3594, size: 64, offset: 768)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !3653, file: !3586, line: 367, baseType: !3594, size: 64, offset: 832)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !3595, file: !3586, line: 492, baseType: !98, size: 128, offset: 6080)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3595, file: !3586, line: 495, baseType: !3659, size: 192, offset: 6208)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3595, file: !3586, line: 496, baseType: !3659, size: 192, offset: 6400)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3595, file: !3586, line: 497, baseType: !3491, size: 192, offset: 6592)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !3595, file: !3586, line: 503, baseType: !98, size: 128, offset: 6784)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !3595, file: !3586, line: 504, baseType: !680, size: 256, offset: 6912)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !3595, file: !3586, line: 507, baseType: !55, size: 192, offset: 7168)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !3595, file: !3586, line: 510, baseType: !1002, size: 256, offset: 7360)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !3595, file: !3586, line: 513, baseType: !3682, size: 64, offset: 7616)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !3684, line: 214, elements: !1335)
!3684 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !3595, file: !3586, line: 516, baseType: !3686, offset: 7680)
!3686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !3687, line: 76, elements: !1335)
!3687 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !3595, file: !3586, line: 519, baseType: !50, size: 32, offset: 7680)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !3595, file: !3586, line: 522, baseType: !3690, size: 128, offset: 7712)
!3690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !3586, line: 370, size: 128, elements: !3691)
!3691 = !{!3692, !3693, !3694, !3695}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3690, file: !3586, line: 372, baseType: !870, size: 8)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !3690, file: !3586, line: 375, baseType: !23, size: 32, offset: 32)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !3690, file: !3586, line: 380, baseType: !23, size: 32, offset: 64)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !3690, file: !3586, line: 386, baseType: !23, size: 32, offset: 96)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !3595, file: !3586, line: 529, baseType: !3697, offset: 7872)
!3697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3594, elements: !754)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3591, file: !3586, line: 157, baseType: !3699, size: 64, offset: 64)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !3586, line: 669, size: 1984, elements: !3701)
!3701 = !{!3702, !3706, !3710, !3714, !3715, !3716, !3717, !3721, !3725, !3726, !3732, !3736, !3737, !3738, !3742, !3746, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3773, !3774, !3811, !3812}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !3700, file: !3586, line: 670, baseType: !3703, size: 64)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!3590, !3590}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !3700, file: !3586, line: 671, baseType: !3707, size: 64, offset: 64)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{!23, !3590}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !3700, file: !3586, line: 672, baseType: !3711, size: 64, offset: 128)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{null, !3590}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !3700, file: !3586, line: 673, baseType: !3711, size: 64, offset: 192)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !3700, file: !3586, line: 674, baseType: !3711, size: 64, offset: 256)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !3700, file: !3586, line: 675, baseType: !3711, size: 64, offset: 320)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !3700, file: !3586, line: 676, baseType: !3718, size: 64, offset: 384)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{null, !3590, !23}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !3700, file: !3586, line: 677, baseType: !3722, size: 64, offset: 448)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!23, !1709, !3590}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !3700, file: !3586, line: 679, baseType: !3722, size: 64, offset: 512)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !3700, file: !3586, line: 682, baseType: !3727, size: 64, offset: 576)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!23, !3730}
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !3586, line: 30, flags: DIFlagFwdDecl)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !3700, file: !3586, line: 683, baseType: !3733, size: 64, offset: 640)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{null, !3730}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !3700, file: !3586, line: 684, baseType: !3733, size: 64, offset: 704)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !3700, file: !3586, line: 685, baseType: !2271, size: 64, offset: 768)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !3700, file: !3586, line: 686, baseType: !3739, size: 64, offset: 832)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!23, !3178, !3584}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !3700, file: !3586, line: 688, baseType: !3743, size: 64, offset: 896)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{null, !3178, !3584}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !3700, file: !3586, line: 689, baseType: !3747, size: 64, offset: 960)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{null, !3178}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !3700, file: !3586, line: 690, baseType: !3747, size: 64, offset: 1024)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3700, file: !3586, line: 691, baseType: !3747, size: 64, offset: 1088)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !3700, file: !3586, line: 692, baseType: !3711, size: 64, offset: 1152)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3700, file: !3586, line: 694, baseType: !870, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !3700, file: !3586, line: 707, baseType: !870, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !3700, file: !3586, line: 719, baseType: !870, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3700, file: !3586, line: 722, baseType: !23, size: 32, offset: 1248)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3700, file: !3586, line: 723, baseType: !17, size: 64, offset: 1280)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !3700, file: !3586, line: 726, baseType: !17, size: 64, offset: 1344)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3700, file: !3586, line: 729, baseType: !3627, size: 64, offset: 1408)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !3700, file: !3586, line: 732, baseType: !3761, size: 192, offset: 1472)
!3761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3762, line: 19, size: 192, elements: !3763)
!3762 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!3763 = !{!3764, !3771, !3772}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3761, file: !3762, line: 20, baseType: !3765, size: 128)
!3765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3766, line: 296, size: 128, elements: !3767)
!3766 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3767 = !{!3768, !3769, !3770}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3765, file: !3766, line: 297, baseType: !60, size: 32)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3765, file: !3766, line: 299, baseType: !1549, size: 32, offset: 32)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3765, file: !3766, line: 300, baseType: !21, size: 64, offset: 64)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3761, file: !3762, line: 21, baseType: !5, size: 32, offset: 128)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3761, file: !3762, line: 22, baseType: !5, size: 32, offset: 160)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !3700, file: !3586, line: 738, baseType: !98, size: 128, offset: 1664)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !3700, file: !3586, line: 744, baseType: !3775, size: 64, offset: 1792)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !3586, line: 580, size: 1728, elements: !3777)
!3777 = !{!3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3787, !3788, !3789, !3793, !3797, !3798, !3799, !3800, !3801, !3805, !3809, !3810}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3776, file: !3586, line: 586, baseType: !3104, size: 512)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3776, file: !3586, line: 587, baseType: !40, size: 64, offset: 512)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !3776, file: !3586, line: 593, baseType: !36, size: 64, offset: 576)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3776, file: !3586, line: 596, baseType: !5, size: 32, offset: 640)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !3776, file: !3586, line: 604, baseType: !5, size: 32, offset: 672)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3776, file: !3586, line: 610, baseType: !3699, size: 64, offset: 704)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3776, file: !3586, line: 611, baseType: !98, size: 128, offset: 768)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !3776, file: !3586, line: 612, baseType: !3786, size: 64, offset: 896)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3776, file: !3586, line: 614, baseType: !1861, size: 64, offset: 960)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3776, file: !3586, line: 615, baseType: !1881, size: 64, offset: 1024)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !3776, file: !3586, line: 621, baseType: !3790, size: 64, offset: 1088)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{!404, !3590, !3775}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !3776, file: !3586, line: 625, baseType: !3794, size: 64, offset: 1152)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!677, !3590, !3775}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3776, file: !3586, line: 628, baseType: !1739, size: 64, offset: 1216)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3776, file: !3586, line: 631, baseType: !1727, size: 64, offset: 1280)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3776, file: !3586, line: 632, baseType: !1735, size: 64, offset: 1344)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3776, file: !3586, line: 633, baseType: !1731, size: 64, offset: 1408)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !3776, file: !3586, line: 640, baseType: !3802, size: 64, offset: 1472)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{!23, !3590, !3775, !404}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !3776, file: !3586, line: 645, baseType: !3806, size: 64, offset: 1536)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!23, !3590, !3775, !677}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3776, file: !3586, line: 654, baseType: !1889, size: 64, offset: 1600)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3776, file: !3586, line: 657, baseType: !1896, size: 64, offset: 1664)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !3700, file: !3586, line: 745, baseType: !3775, size: 64, offset: 1856)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !3700, file: !3586, line: 754, baseType: !5, size: 32, offset: 1920)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3591, file: !3586, line: 160, baseType: !3814, size: 128, offset: 128)
!3814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !3815, line: 105, size: 128, elements: !3816)
!3815 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!3816 = !{!3817, !3818}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !3814, file: !3815, line: 110, baseType: !40, size: 64)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3814, file: !3815, line: 118, baseType: !3819, size: 64, offset: 64)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !3815, line: 95, size: 448, elements: !3821)
!3821 = !{!3822, !3823, !3829, !3830, !3831, !3832, !3833}
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3820, file: !3815, line: 96, baseType: !671, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3820, file: !3815, line: 97, baseType: !3824, size: 64, offset: 64)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !3815, line: 60, baseType: !3826)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{null, !3828}
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !3820, file: !3815, line: 98, baseType: !3824, size: 64, offset: 128)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !3820, file: !3815, line: 99, baseType: !870, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !3820, file: !3815, line: 100, baseType: !870, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3820, file: !3815, line: 101, baseType: !658, size: 128, align: 64, offset: 256)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3820, file: !3815, line: 102, baseType: !3828, size: 64, offset: 384)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3591, file: !3586, line: 163, baseType: !98, size: 128, offset: 256)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3591, file: !3586, line: 164, baseType: !98, size: 128, offset: 384)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !3591, file: !3586, line: 167, baseType: !98, size: 128, offset: 512)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3591, file: !3586, line: 173, baseType: !23, size: 32, offset: 640)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3591, file: !3586, line: 175, baseType: !5, size: 32, offset: 672)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !3591, file: !3586, line: 183, baseType: !404, size: 64, offset: 704)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !3591, file: !3586, line: 189, baseType: !50, size: 32, offset: 768)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !3591, file: !3586, line: 192, baseType: !1002, size: 256, offset: 832)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !3591, file: !3586, line: 193, baseType: !3843, size: 448, offset: 1088)
!3843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1003, line: 120, size: 448, elements: !3844)
!3844 = !{!3845, !3846, !3847}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3843, file: !1003, line: 121, baseType: !1002, size: 256)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3843, file: !1003, line: 122, baseType: !658, size: 128, align: 64, offset: 256)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3843, file: !1003, line: 125, baseType: !2229, size: 64, offset: 384)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3591, file: !3586, line: 199, baseType: !3590, size: 64, offset: 1536)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3585, file: !3586, line: 218, baseType: !723, size: 32, offset: 896)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !3585, file: !3586, line: 226, baseType: !3584, size: 64, offset: 960)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !3585, file: !3586, line: 229, baseType: !3594, size: 64, offset: 1024)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3585, file: !3586, line: 232, baseType: !23, size: 32, offset: 1088)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3585, file: !3586, line: 241, baseType: !98, size: 128, offset: 1152)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !3585, file: !3586, line: 242, baseType: !98, size: 128, offset: 1280)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !3585, file: !3586, line: 243, baseType: !98, size: 128, offset: 1408)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !3585, file: !3586, line: 246, baseType: !98, size: 128, offset: 1536)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !3585, file: !3586, line: 255, baseType: !3646, size: 1792, offset: 1664)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !3585, file: !3586, line: 258, baseType: !98, size: 128, offset: 3456)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !3585, file: !3586, line: 259, baseType: !98, size: 128, offset: 3584)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !3585, file: !3586, line: 265, baseType: !736, size: 128, offset: 3712)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !3585, file: !3586, line: 271, baseType: !98, size: 128, offset: 3840)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !3585, file: !3586, line: 277, baseType: !98, size: 128, offset: 3968)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !3585, file: !3586, line: 278, baseType: !98, size: 128, offset: 4096)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !3585, file: !3586, line: 279, baseType: !98, size: 128, offset: 4224)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !3585, file: !3586, line: 288, baseType: !3594, size: 64, offset: 4352)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !3585, file: !3586, line: 289, baseType: !3594, size: 64, offset: 4416)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !3585, file: !3586, line: 290, baseType: !3584, size: 64, offset: 4480)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !3585, file: !3586, line: 293, baseType: !870, size: 8, offset: 4544)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3585, file: !3586, line: 296, baseType: !658, size: 128, align: 64, offset: 4608)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3179, file: !1686, line: 1110, baseType: !3871, size: 64, offset: 15360)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3873, line: 93, size: 8768, elements: !3874)
!3873 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3874 = !{!3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3923, !3932, !3933, !3935, !3936, !3937, !3940, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3978, !3979, !3986, !3996, !4059, !4060, !4063, !4064, !4065, !4066, !4067, !4068}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3872, file: !3873, line: 94, baseType: !723, size: 32)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3872, file: !3873, line: 95, baseType: !50, size: 32, offset: 32)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3872, file: !3873, line: 96, baseType: !23, size: 32, offset: 64)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3872, file: !3873, line: 97, baseType: !23, size: 32, offset: 96)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3872, file: !3873, line: 98, baseType: !98, size: 128, offset: 128)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3872, file: !3873, line: 100, baseType: !55, size: 192, offset: 256)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3872, file: !3873, line: 103, baseType: !3178, size: 64, offset: 448)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3872, file: !3873, line: 106, baseType: !3883, size: 192, offset: 512)
!3883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !3884, line: 32, size: 192, elements: !3885)
!3884 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!3885 = !{!3886, !3887}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3883, file: !3884, line: 33, baseType: !98, size: 128)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3883, file: !3884, line: 34, baseType: !3888, size: 64, offset: 128)
!3888 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3889, line: 25, baseType: !3890)
!3889 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3890 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3889, line: 23, size: 64, elements: !3891)
!3891 = !{!3892}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3890, file: !3889, line: 24, baseType: !1625, size: 64)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3872, file: !3873, line: 109, baseType: !732, size: 64, offset: 704)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3872, file: !3873, line: 112, baseType: !23, size: 32, offset: 768)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3872, file: !3873, line: 114, baseType: !23, size: 32, offset: 800)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3872, file: !3873, line: 115, baseType: !3178, size: 64, offset: 832)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3872, file: !3873, line: 118, baseType: !23, size: 32, offset: 896)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3872, file: !3873, line: 119, baseType: !5, size: 32, offset: 928)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3872, file: !3873, line: 121, baseType: !3900, size: 64, offset: 960)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3873, line: 80, size: 448, elements: !3902)
!3902 = !{!3903, !3904, !3910}
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3901, file: !3873, line: 81, baseType: !50, size: 32)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3901, file: !3873, line: 82, baseType: !3905, size: 128, offset: 64)
!3905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3873, line: 75, size: 128, elements: !3906)
!3906 = !{!3907, !3908}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3905, file: !3873, line: 76, baseType: !3178, size: 64)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3905, file: !3873, line: 77, baseType: !3909, size: 64, offset: 64)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3901, file: !3873, line: 83, baseType: !1041, size: 256, offset: 192)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3872, file: !3873, line: 132, baseType: !5, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3872, file: !3873, line: 133, baseType: !5, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3872, file: !3873, line: 138, baseType: !5, size: 32, offset: 1056)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3872, file: !3873, line: 139, baseType: !98, size: 128, offset: 1088)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3872, file: !3873, line: 142, baseType: !2826, size: 512, offset: 1216)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3872, file: !3873, line: 143, baseType: !2806, size: 64, offset: 1728)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3872, file: !3873, line: 150, baseType: !3918, size: 256, offset: 1792)
!3918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3919, size: 256, elements: !2058)
!3919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3873, line: 38, size: 128, elements: !3920)
!3920 = !{!3921, !3922}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3919, file: !3873, line: 39, baseType: !404, size: 64)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3919, file: !3873, line: 40, baseType: !404, size: 64, offset: 64)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3872, file: !3873, line: 156, baseType: !3924, size: 192, offset: 2048)
!3924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3873, line: 66, size: 192, elements: !3925)
!3925 = !{!3926}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3924, file: !3873, line: 67, baseType: !3927, size: 192)
!3927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3873, line: 47, size: 192, elements: !3928)
!3928 = !{!3929, !3930, !3931}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3927, file: !3873, line: 48, baseType: !673, size: 64)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3927, file: !3873, line: 49, baseType: !673, size: 64, offset: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3927, file: !3873, line: 50, baseType: !673, size: 64, offset: 128)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3872, file: !3873, line: 160, baseType: !3503, size: 640, offset: 2240)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3872, file: !3873, line: 163, baseType: !3934, size: 256, offset: 2880)
!3934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !719, size: 256, elements: !741)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3872, file: !3873, line: 169, baseType: !719, size: 64, offset: 3136)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3872, file: !3873, line: 172, baseType: !23, size: 32, offset: 3200)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3872, file: !3873, line: 174, baseType: !3938, size: 64, offset: 3264)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3873, line: 174, flags: DIFlagFwdDecl)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3872, file: !3873, line: 185, baseType: !3941, size: 64, offset: 3328)
!3941 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !373, line: 860, baseType: !3942)
!3942 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !373, line: 853, size: 64, elements: !3943)
!3943 = !{!3944, !3945}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3942, file: !373, line: 858, baseType: !372, size: 32)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3942, file: !373, line: 859, baseType: !60, size: 32, offset: 32)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3872, file: !3873, line: 186, baseType: !404, size: 64, offset: 3392)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3872, file: !3873, line: 186, baseType: !404, size: 64, offset: 3456)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3872, file: !3873, line: 186, baseType: !404, size: 64, offset: 3520)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3872, file: !3873, line: 186, baseType: !404, size: 64, offset: 3584)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3872, file: !3873, line: 187, baseType: !404, size: 64, offset: 3648)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3872, file: !3873, line: 188, baseType: !404, size: 64, offset: 3712)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3872, file: !3873, line: 189, baseType: !3491, size: 192, offset: 3776)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3872, file: !3873, line: 190, baseType: !40, size: 64, offset: 3968)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3872, file: !3873, line: 190, baseType: !40, size: 64, offset: 4032)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3872, file: !3873, line: 190, baseType: !40, size: 64, offset: 4096)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3872, file: !3873, line: 190, baseType: !40, size: 64, offset: 4160)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3872, file: !3873, line: 191, baseType: !40, size: 64, offset: 4224)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3872, file: !3873, line: 191, baseType: !40, size: 64, offset: 4288)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3872, file: !3873, line: 191, baseType: !40, size: 64, offset: 4352)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3872, file: !3873, line: 191, baseType: !40, size: 64, offset: 4416)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3872, file: !3873, line: 192, baseType: !40, size: 64, offset: 4480)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3872, file: !3873, line: 192, baseType: !40, size: 64, offset: 4544)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3872, file: !3873, line: 192, baseType: !40, size: 64, offset: 4608)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3872, file: !3873, line: 192, baseType: !40, size: 64, offset: 4672)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3872, file: !3873, line: 193, baseType: !40, size: 64, offset: 4736)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3872, file: !3873, line: 193, baseType: !40, size: 64, offset: 4800)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3872, file: !3873, line: 194, baseType: !3968, size: 448, offset: 4864)
!3968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3969, line: 12, size: 448, elements: !3970)
!3969 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3970 = !{!3971, !3972, !3973, !3974, !3975, !3976, !3977}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3968, file: !3969, line: 15, baseType: !404, size: 64)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3968, file: !3969, line: 17, baseType: !404, size: 64, offset: 64)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3968, file: !3969, line: 19, baseType: !404, size: 64, offset: 128)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3968, file: !3969, line: 21, baseType: !404, size: 64, offset: 192)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3968, file: !3969, line: 29, baseType: !404, size: 64, offset: 256)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3968, file: !3969, line: 35, baseType: !404, size: 64, offset: 320)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3968, file: !3969, line: 44, baseType: !404, size: 64, offset: 384)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3872, file: !3873, line: 202, baseType: !406, size: 64, offset: 5312)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3872, file: !3873, line: 213, baseType: !3980, size: 2048, offset: 5376)
!3980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3981, size: 2048, elements: !3526)
!3981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3982, line: 43, size: 128, elements: !3983)
!3982 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3983 = !{!3984, !3985}
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3981, file: !3982, line: 44, baseType: !39, size: 64)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3981, file: !3982, line: 45, baseType: !39, size: 64, offset: 64)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3872, file: !3873, line: 216, baseType: !3987, size: 448, offset: 7424)
!3987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3873, line: 30, size: 448, elements: !3988)
!3988 = !{!3989, !3990, !3991, !3992, !3993, !3994, !3995}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3987, file: !3873, line: 31, baseType: !23, size: 32)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3987, file: !3873, line: 32, baseType: !606, size: 64, offset: 64)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3987, file: !3873, line: 33, baseType: !40, size: 64, offset: 128)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3987, file: !3873, line: 34, baseType: !404, size: 64, offset: 192)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3987, file: !3873, line: 34, baseType: !404, size: 64, offset: 256)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3987, file: !3873, line: 35, baseType: !40, size: 64, offset: 320)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3987, file: !3873, line: 35, baseType: !40, size: 64, offset: 384)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3872, file: !3873, line: 219, baseType: !3997, size: 64, offset: 7872)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3999, line: 41, size: 3456, elements: !4000)
!3999 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!4000 = !{!4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4015, !4016, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3998, file: !3999, line: 47, baseType: !95, size: 16)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3998, file: !3999, line: 48, baseType: !401, size: 32, offset: 32)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3998, file: !3999, line: 54, baseType: !86, size: 8, offset: 64)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !3998, file: !3999, line: 55, baseType: !86, size: 8, offset: 72)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !3998, file: !3999, line: 73, baseType: !405, size: 64, align: 64, offset: 128)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !3998, file: !3999, line: 74, baseType: !405, size: 64, offset: 192)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !3998, file: !3999, line: 81, baseType: !405, size: 64, offset: 256)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !3998, file: !3999, line: 82, baseType: !405, size: 64, offset: 320)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !3998, file: !3999, line: 85, baseType: !405, size: 64, offset: 384)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !3998, file: !3999, line: 86, baseType: !405, size: 64, offset: 448)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !3998, file: !3999, line: 94, baseType: !405, size: 64, offset: 512)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !3998, file: !3999, line: 102, baseType: !405, size: 64, offset: 576)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !3998, file: !3999, line: 107, baseType: !4014, size: 256, offset: 640)
!4014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 256, elements: !413)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !3998, file: !3999, line: 108, baseType: !86, size: 8, align: 64, offset: 896)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !3998, file: !3999, line: 110, baseType: !4017, size: 24, offset: 904)
!4017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 24, elements: !572)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !3998, file: !3999, line: 111, baseType: !401, size: 32, align: 64, offset: 960)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !3998, file: !3999, line: 113, baseType: !401, size: 32, offset: 992)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !3998, file: !3999, line: 114, baseType: !401, size: 32, offset: 1024)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !3998, file: !3999, line: 115, baseType: !401, size: 32, offset: 1056)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !3998, file: !3999, line: 117, baseType: !401, size: 32, offset: 1088)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !3998, file: !3999, line: 118, baseType: !405, size: 64, align: 64, offset: 1152)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3998, file: !3999, line: 120, baseType: !405, size: 64, offset: 1216)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3998, file: !3999, line: 121, baseType: !405, size: 64, offset: 1280)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3998, file: !3999, line: 122, baseType: !405, size: 64, offset: 1344)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3998, file: !3999, line: 123, baseType: !405, size: 64, offset: 1408)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !3998, file: !3999, line: 133, baseType: !405, size: 64, offset: 1472)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !3998, file: !3999, line: 137, baseType: !405, size: 64, offset: 1536)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !3998, file: !3999, line: 142, baseType: !405, size: 64, offset: 1600)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !3998, file: !3999, line: 143, baseType: !405, size: 64, offset: 1664)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !3998, file: !3999, line: 146, baseType: !405, size: 64, offset: 1728)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !3998, file: !3999, line: 147, baseType: !405, size: 64, offset: 1792)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !3998, file: !3999, line: 148, baseType: !405, size: 64, offset: 1856)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !3998, file: !3999, line: 149, baseType: !405, size: 64, offset: 1920)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3998, file: !3999, line: 154, baseType: !405, size: 64, offset: 1984)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3998, file: !3999, line: 155, baseType: !405, size: 64, offset: 2048)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3998, file: !3999, line: 156, baseType: !405, size: 64, offset: 2112)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3998, file: !3999, line: 158, baseType: !405, size: 64, offset: 2176)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3998, file: !3999, line: 159, baseType: !405, size: 64, offset: 2240)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !3998, file: !3999, line: 162, baseType: !405, size: 64, offset: 2304)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !3998, file: !3999, line: 163, baseType: !405, size: 64, offset: 2368)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !3998, file: !3999, line: 164, baseType: !405, size: 64, offset: 2432)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !3998, file: !3999, line: 167, baseType: !405, size: 64, offset: 2496)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !3998, file: !3999, line: 168, baseType: !405, size: 64, offset: 2560)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !3998, file: !3999, line: 171, baseType: !405, size: 64, offset: 2624)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !3998, file: !3999, line: 172, baseType: !405, size: 64, offset: 2688)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !3998, file: !3999, line: 175, baseType: !405, size: 64, offset: 2752)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !3998, file: !3999, line: 178, baseType: !405, size: 64, offset: 2816)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !3998, file: !3999, line: 179, baseType: !405, size: 64, offset: 2880)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !3998, file: !3999, line: 182, baseType: !401, size: 32, offset: 2944)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !3998, file: !3999, line: 186, baseType: !405, size: 64, align: 64, offset: 3008)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !3998, file: !3999, line: 194, baseType: !405, size: 64, offset: 3072)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !3998, file: !3999, line: 195, baseType: !405, size: 64, offset: 3136)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !3998, file: !3999, line: 199, baseType: !405, size: 64, offset: 3200)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !3998, file: !3999, line: 200, baseType: !405, size: 64, offset: 3264)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !3998, file: !3999, line: 203, baseType: !405, size: 64, offset: 3328)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !3998, file: !3999, line: 204, baseType: !405, size: 64, offset: 3392)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3872, file: !3873, line: 222, baseType: !5, size: 32, offset: 7936)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3872, file: !3873, line: 223, baseType: !4061, size: 64, offset: 8000)
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4062 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3873, line: 223, flags: DIFlagFwdDecl)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3872, file: !3873, line: 230, baseType: !870, size: 8, offset: 8064)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3872, file: !3873, line: 231, baseType: !839, size: 16, offset: 8080)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3872, file: !3873, line: 232, baseType: !839, size: 16, offset: 8096)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3872, file: !3873, line: 234, baseType: !1314, size: 64, offset: 8128)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3872, file: !3873, line: 237, baseType: !680, size: 256, offset: 8192)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3872, file: !3873, line: 243, baseType: !811, size: 320, offset: 8448)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !3179, file: !1686, line: 1111, baseType: !4070, size: 64, offset: 15424)
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3873, line: 20, size: 16640, elements: !4072)
!4072 = !{!4073, !4074, !4075, !4076}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !4071, file: !3873, line: 21, baseType: !60, size: 32)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4071, file: !3873, line: 22, baseType: !723, size: 32, offset: 32)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !4071, file: !3873, line: 23, baseType: !55, size: 192, offset: 64)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4071, file: !3873, line: 24, baseType: !4077, size: 16384, offset: 256)
!4077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4078, size: 16384, elements: !576)
!4078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !3884, line: 51, size: 256, elements: !4079)
!4079 = !{!4080}
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !4078, file: !3884, line: 52, baseType: !4081, size: 256)
!4081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !3884, line: 37, size: 256, elements: !4082)
!4082 = !{!4083, !4090, !4091, !4095}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !4081, file: !3884, line: 39, baseType: !4084, size: 64)
!4084 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !4085, line: 83, baseType: !4086)
!4085 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !4085, line: 82, baseType: !4088)
!4088 = !DISubroutineType(types: !4089)
!4089 = !{null, !23}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !4081, file: !3884, line: 40, baseType: !40, size: 64, offset: 64)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !4081, file: !3884, line: 46, baseType: !4092, size: 64, offset: 128)
!4092 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !4085, line: 86, baseType: !4093)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !4085, line: 85, baseType: !2272)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !4081, file: !3884, line: 48, baseType: !3888, size: 64, offset: 192)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3179, file: !1686, line: 1112, baseType: !3888, size: 64, offset: 15488)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !3179, file: !1686, line: 1113, baseType: !3888, size: 64, offset: 15552)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !3179, file: !1686, line: 1115, baseType: !3888, size: 64, offset: 15616)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !3179, file: !1686, line: 1116, baseType: !3883, size: 192, offset: 15680)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !3179, file: !1686, line: 1117, baseType: !40, size: 64, offset: 15872)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !3179, file: !1686, line: 1118, baseType: !36, size: 64, offset: 15936)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !3179, file: !1686, line: 1119, baseType: !5, size: 32, offset: 16000)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !3179, file: !1686, line: 1121, baseType: !661, size: 64, offset: 16064)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !3179, file: !1686, line: 1125, baseType: !4105, size: 64, offset: 16128)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1686, line: 43, flags: DIFlagFwdDecl)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !3179, file: !1686, line: 1127, baseType: !337, size: 32, offset: 16192)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !3179, file: !1686, line: 1128, baseType: !5, size: 32, offset: 16224)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !3179, file: !1686, line: 1130, baseType: !4110, size: 128, offset: 16256)
!4110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4111, line: 37, size: 128, elements: !4112)
!4111 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!4112 = !{!4113, !4114, !4115}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4110, file: !4111, line: 38, baseType: !23, size: 32)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4110, file: !4111, line: 39, baseType: !50, size: 32, offset: 32)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4110, file: !4111, line: 40, baseType: !4116, size: 64, offset: 64)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4111, line: 24, flags: DIFlagFwdDecl)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !3179, file: !1686, line: 1131, baseType: !4119, size: 256, offset: 16384)
!4119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !4120, line: 12, size: 256, elements: !4121)
!4120 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!4121 = !{!4122, !4123, !4124, !4125}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !4119, file: !4120, line: 13, baseType: !472, size: 64)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4119, file: !4120, line: 14, baseType: !40, size: 64, offset: 64)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4119, file: !4120, line: 15, baseType: !40, size: 64, offset: 128)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !4119, file: !4120, line: 16, baseType: !870, size: 8, offset: 192)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !3179, file: !1686, line: 1134, baseType: !404, size: 64, offset: 16640)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !3179, file: !1686, line: 1135, baseType: !404, size: 64, offset: 16704)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !3179, file: !1686, line: 1138, baseType: !60, size: 32, offset: 16768)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !3179, file: !1686, line: 1141, baseType: !685, size: 32, offset: 16800)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !3179, file: !1686, line: 1143, baseType: !4131, size: 64, offset: 16832)
!4131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1686, line: 735, size: 64, elements: !4132)
!4132 = !{!4133}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4131, file: !1686, line: 736, baseType: !4134, size: 64)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !3179, file: !1686, line: 1147, baseType: !1509, size: 128, offset: 16896)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !3179, file: !1686, line: 1149, baseType: !3178, size: 64, offset: 17024)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !3179, file: !1686, line: 1151, baseType: !4138, size: 64, offset: 17088)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1686, line: 1151, flags: DIFlagFwdDecl)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !3179, file: !1686, line: 1188, baseType: !21, size: 64, offset: 17152)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !3179, file: !1686, line: 1191, baseType: !4142, size: 64, offset: 17216)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1686, line: 44, flags: DIFlagFwdDecl)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !3179, file: !1686, line: 1194, baseType: !4145, size: 64, offset: 17280)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1686, line: 45, flags: DIFlagFwdDecl)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !3179, file: !1686, line: 1197, baseType: !4148, size: 64, offset: 17344)
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !4150, line: 155, size: 64, elements: !4151)
!4150 = !DIFile(filename: "./include/linux/swap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b48f968c4d3c1313a5ba7451c8be5b79")
!4151 = !{!4152}
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed", scope: !4149, file: !4150, line: 157, baseType: !40, size: 64)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !3179, file: !1686, line: 1199, baseType: !4154, size: 64, offset: 17408)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2600, line: 99, size: 128, elements: !4156)
!4156 = !{!4157, !4158, !4159}
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4155, file: !2600, line: 100, baseType: !671, size: 64)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !4155, file: !2600, line: 101, baseType: !50, size: 32, offset: 64)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !4155, file: !2600, line: 103, baseType: !27, size: 16, offset: 96)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !3179, file: !1686, line: 1202, baseType: !4161, size: 64, offset: 17472)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !4163, line: 588, size: 128, elements: !4164)
!4163 = !DIFile(filename: "mm/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "59e6069cd469a2e9f5955693d212ff63")
!4164 = !{!4165, !4339}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "cc", scope: !4162, file: !4163, line: 589, baseType: !4166, size: 64)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compact_control", file: !4163, line: 544, size: 1024, elements: !4168)
!4168 = !{!4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4318, !4319, !4320, !4321, !4322, !4324, !4325, !4326, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338}
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "freepages", scope: !4167, file: !4163, line: 545, baseType: !98, size: 128)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "migratepages", scope: !4167, file: !4163, line: 546, baseType: !98, size: 128, offset: 128)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freepages", scope: !4167, file: !4163, line: 547, baseType: !5, size: 32, offset: 256)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migratepages", scope: !4167, file: !4163, line: 548, baseType: !5, size: 32, offset: 288)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "free_pfn", scope: !4167, file: !4163, line: 549, baseType: !40, size: 64, offset: 320)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_pfn", scope: !4167, file: !4163, line: 556, baseType: !40, size: 64, offset: 384)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "fast_start_pfn", scope: !4167, file: !4163, line: 557, baseType: !40, size: 64, offset: 448)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "zone", scope: !4167, file: !4163, line: 558, baseType: !4177, size: 64, offset: 512)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zone", file: !245, line: 815, size: 9728, align: 512, elements: !4179)
!4179 = !{!4180, !4181, !4182, !4183, !4184, !4185, !4260, !4274, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316}
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "_watermark", scope: !4178, file: !245, line: 819, baseType: !2159, size: 256)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "watermark_boost", scope: !4178, file: !245, line: 820, baseType: !40, size: 64, offset: 256)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "nr_reserved_highatomic", scope: !4178, file: !245, line: 822, baseType: !40, size: 64, offset: 320)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "lowmem_reserve", scope: !4178, file: !245, line: 833, baseType: !1104, size: 256, offset: 384)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4178, file: !245, line: 836, baseType: !23, size: 32, offset: 640)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "zone_pgdat", scope: !4178, file: !245, line: 838, baseType: !4186, size: 64, offset: 704)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pglist_data", file: !245, line: 1266, size: 112128, elements: !4188)
!4188 = !{!4189, !4191, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4232, !4244, !4245, !4246, !4255, !4257}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "node_zones", scope: !4187, file: !245, line: 1272, baseType: !4190, size: 38912, align: 512)
!4190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4178, size: 38912, align: 512, elements: !741)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "node_zonelists", scope: !4187, file: !245, line: 1279, baseType: !4192, size: 65792, offset: 38912)
!4192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4193, size: 65792, elements: !2058)
!4193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zonelist", file: !245, line: 1214, size: 32896, elements: !4194)
!4194 = !{!4195}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "_zonerefs", scope: !4193, file: !245, line: 1215, baseType: !4196, size: 32896)
!4196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4197, size: 32896, elements: !4201)
!4197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zoneref", file: !245, line: 1195, size: 128, elements: !4198)
!4198 = !{!4199, !4200}
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "zone", scope: !4197, file: !245, line: 1196, baseType: !4177, size: 64)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "zone_idx", scope: !4197, file: !245, line: 1197, baseType: !23, size: 32, offset: 64)
!4201 = !{!4202}
!4202 = !DISubrange(count: 257)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "nr_zones", scope: !4187, file: !245, line: 1281, baseType: !23, size: 32, offset: 104704)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "node_start_pfn", scope: !4187, file: !245, line: 1303, baseType: !40, size: 64, offset: 104768)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "node_present_pages", scope: !4187, file: !245, line: 1304, baseType: !40, size: 64, offset: 104832)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "node_spanned_pages", scope: !4187, file: !245, line: 1305, baseType: !40, size: 64, offset: 104896)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4187, file: !245, line: 1307, baseType: !23, size: 32, offset: 104960)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "kswapd_wait", scope: !4187, file: !245, line: 1308, baseType: !55, size: 192, offset: 105024)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "pfmemalloc_wait", scope: !4187, file: !245, line: 1309, baseType: !55, size: 192, offset: 105216)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_wait", scope: !4187, file: !245, line: 1312, baseType: !4211, size: 768, offset: 105408)
!4211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 768, elements: !741)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "nr_writeback_throttled", scope: !4187, file: !245, line: 1314, baseType: !50, size: 32, offset: 106176)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "nr_reclaim_start", scope: !4187, file: !245, line: 1315, baseType: !40, size: 64, offset: 106240)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "kswapd", scope: !4187, file: !245, line: 1320, baseType: !3178, size: 64, offset: 106304)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "kswapd_order", scope: !4187, file: !245, line: 1321, baseType: !23, size: 32, offset: 106368)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "kswapd_highest_zoneidx", scope: !4187, file: !245, line: 1322, baseType: !244, size: 32, offset: 106400)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "kswapd_failures", scope: !4187, file: !245, line: 1324, baseType: !23, size: 32, offset: 106432)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "kcompactd_max_order", scope: !4187, file: !245, line: 1327, baseType: !23, size: 32, offset: 106464)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "kcompactd_highest_zoneidx", scope: !4187, file: !245, line: 1328, baseType: !244, size: 32, offset: 106496)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "kcompactd_wait", scope: !4187, file: !245, line: 1329, baseType: !55, size: 192, offset: 106560)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "kcompactd", scope: !4187, file: !245, line: 1330, baseType: !3178, size: 64, offset: 106752)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "proactive_compact_trigger", scope: !4187, file: !245, line: 1331, baseType: !870, size: 8, offset: 106816)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "totalreserve_pages", scope: !4187, file: !245, line: 1337, baseType: !40, size: 64, offset: 106880)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "min_unmapped_pages", scope: !4187, file: !245, line: 1343, baseType: !40, size: 64, offset: 106944)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "min_slab_pages", scope: !4187, file: !245, line: 1344, baseType: !40, size: 64, offset: 107008)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "_pad1_", scope: !4187, file: !245, line: 1348, baseType: !4227, align: 512, offset: 107520)
!4227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cacheline_padding", file: !4228, line: 93, align: 512, elements: !4229)
!4228 = !DIFile(filename: "./include/linux/cache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "599edcbe9a1f0cbc1eddd4ed9f4096ef")
!4229 = !{!4230}
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !4227, file: !4228, line: 94, baseType: !4231)
!4231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, elements: !3619)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "__lruvec", scope: !4187, file: !245, line: 1384, baseType: !4233, size: 1088, offset: 107520)
!4233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lruvec", file: !245, line: 620, size: 1088, elements: !4234)
!4234 = !{!4235, !4237, !4238, !4239, !4240, !4241, !4243}
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "lists", scope: !4233, file: !245, line: 621, baseType: !4236, size: 640)
!4236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 640, elements: !971)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "lru_lock", scope: !4233, file: !245, line: 623, baseType: !60, size: 32, offset: 640)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "anon_cost", scope: !4233, file: !245, line: 629, baseType: !40, size: 64, offset: 704)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "file_cost", scope: !4233, file: !245, line: 630, baseType: !40, size: 64, offset: 768)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "nonresident_age", scope: !4233, file: !245, line: 632, baseType: !671, size: 64, offset: 832)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "refaults", scope: !4233, file: !245, line: 634, baseType: !4242, size: 128, offset: 896)
!4242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 128, elements: !2058)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4233, file: !245, line: 636, baseType: !40, size: 64, offset: 1024)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4187, file: !245, line: 1386, baseType: !40, size: 64, offset: 108608)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "_pad2_", scope: !4187, file: !245, line: 1395, baseType: !4227, align: 512, offset: 109056)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "per_cpu_nodestats", scope: !4187, file: !245, line: 1398, baseType: !4247, size: 64, offset: 109056)
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "per_cpu_nodestat", file: !245, line: 713, size: 336, elements: !4249)
!4249 = !{!4250, !4251}
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "stat_threshold", scope: !4248, file: !245, line: 714, baseType: !1997, size: 8)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "vm_node_stat_diff", scope: !4248, file: !245, line: 715, baseType: !4252, size: 328, offset: 8)
!4252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1997, size: 328, elements: !4253)
!4253 = !{!4254}
!4254 = !DISubrange(count: 41)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "vm_stat", scope: !4187, file: !245, line: 1399, baseType: !4256, size: 2624, offset: 109120)
!4256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !671, size: 2624, elements: !4253)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "memtier", scope: !4187, file: !245, line: 1401, baseType: !4258, size: 64, offset: 111744)
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = !DICompositeType(tag: DW_TAG_structure_type, name: "memory_tier", file: !245, line: 1401, flags: DIFlagFwdDecl)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "per_cpu_pageset", scope: !4178, file: !245, line: 839, baseType: !4261, size: 64, offset: 768)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "per_cpu_pages", file: !245, line: 684, size: 2048, align: 512, elements: !4263)
!4263 = !{!4264, !4265, !4266, !4267, !4268, !4269, !4270}
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4262, file: !245, line: 685, baseType: !60, size: 32)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4262, file: !245, line: 686, baseType: !23, size: 32, offset: 32)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !4262, file: !245, line: 687, baseType: !23, size: 32, offset: 64)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4262, file: !245, line: 688, baseType: !23, size: 32, offset: 96)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "free_factor", scope: !4262, file: !245, line: 689, baseType: !839, size: 16, offset: 128)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "expire", scope: !4262, file: !245, line: 691, baseType: !839, size: 16, offset: 144)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "lists", scope: !4262, file: !245, line: 695, baseType: !4271, size: 1536, offset: 192)
!4271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 1536, elements: !4272)
!4272 = !{!4273}
!4273 = !DISubrange(count: 12)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "per_cpu_zonestats", scope: !4178, file: !245, line: 840, baseType: !4275, size: 64, offset: 832)
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4276, size: 64)
!4276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "per_cpu_zonestat", file: !245, line: 698, size: 512, elements: !4277)
!4277 = !{!4278, !4280, !4281}
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "vm_stat_diff", scope: !4276, file: !245, line: 700, baseType: !4279, size: 80)
!4279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1997, size: 80, elements: !1097)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "stat_threshold", scope: !4276, file: !245, line: 701, baseType: !1997, size: 8, offset: 80)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "vm_numa_event", scope: !4276, file: !245, line: 709, baseType: !4282, size: 384, offset: 128)
!4282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 384, elements: !857)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "pageset_high", scope: !4178, file: !245, line: 845, baseType: !23, size: 32, offset: 896)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "pageset_batch", scope: !4178, file: !245, line: 846, baseType: !23, size: 32, offset: 928)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "zone_start_pfn", scope: !4178, file: !245, line: 857, baseType: !40, size: 64, offset: 960)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "managed_pages", scope: !4178, file: !245, line: 901, baseType: !671, size: 64, offset: 1024)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "spanned_pages", scope: !4178, file: !245, line: 902, baseType: !40, size: 64, offset: 1088)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "present_pages", scope: !4178, file: !245, line: 903, baseType: !40, size: 64, offset: 1152)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4178, file: !245, line: 911, baseType: !17, size: 64, offset: 1216)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !4178, file: !245, line: 927, baseType: !23, size: 32, offset: 1280)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "_pad1_", scope: !4178, file: !245, line: 930, baseType: !4227, align: 512, offset: 1536)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "free_area", scope: !4178, file: !245, line: 933, baseType: !4293, size: 6336, offset: 1536)
!4293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4294, size: 6336, elements: !4299)
!4294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "free_area", file: !245, line: 113, size: 576, elements: !4295)
!4295 = !{!4296, !4298}
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "free_list", scope: !4294, file: !245, line: 114, baseType: !4297, size: 512)
!4297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 512, elements: !741)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "nr_free", scope: !4294, file: !245, line: 115, baseType: !40, size: 64, offset: 512)
!4299 = !{!4300}
!4300 = !DISubrange(count: 11)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4178, file: !245, line: 941, baseType: !40, size: 64, offset: 7872)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4178, file: !245, line: 944, baseType: !60, size: 32, offset: 7936)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "_pad2_", scope: !4178, file: !245, line: 947, baseType: !4227, align: 512, offset: 8192)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_drift_mark", scope: !4178, file: !245, line: 954, baseType: !40, size: 64, offset: 8192)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "compact_cached_free_pfn", scope: !4178, file: !245, line: 958, baseType: !40, size: 64, offset: 8256)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "compact_cached_migrate_pfn", scope: !4178, file: !245, line: 960, baseType: !4242, size: 128, offset: 8320)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "compact_init_migrate_pfn", scope: !4178, file: !245, line: 961, baseType: !40, size: 64, offset: 8448)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "compact_init_free_pfn", scope: !4178, file: !245, line: 962, baseType: !40, size: 64, offset: 8512)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "compact_considered", scope: !4178, file: !245, line: 972, baseType: !5, size: 32, offset: 8576)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "compact_defer_shift", scope: !4178, file: !245, line: 973, baseType: !5, size: 32, offset: 8608)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "compact_order_failed", scope: !4178, file: !245, line: 974, baseType: !23, size: 32, offset: 8640)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "compact_blockskip_flush", scope: !4178, file: !245, line: 979, baseType: !870, size: 8, offset: 8672)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "contiguous", scope: !4178, file: !245, line: 982, baseType: !870, size: 8, offset: 8680)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "_pad3_", scope: !4178, file: !245, line: 984, baseType: !4227, align: 512, offset: 8704)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "vm_stat", scope: !4178, file: !245, line: 986, baseType: !1096, size: 640, offset: 8704)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "vm_numa_event", scope: !4178, file: !245, line: 987, baseType: !4317, size: 384, offset: 9344)
!4317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !671, size: 384, elements: !857)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "total_migrate_scanned", scope: !4167, file: !4163, line: 559, baseType: !40, size: 64, offset: 576)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "total_free_scanned", scope: !4167, file: !4163, line: 560, baseType: !40, size: 64, offset: 640)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "fast_search_fail", scope: !4167, file: !4163, line: 561, baseType: !27, size: 16, offset: 704)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "search_order", scope: !4167, file: !4163, line: 562, baseType: !839, size: 16, offset: 720)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !4167, file: !4163, line: 563, baseType: !4323, size: 32, offset: 736)
!4323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1549)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !4167, file: !4163, line: 564, baseType: !23, size: 32, offset: 768)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "migratetype", scope: !4167, file: !4163, line: 565, baseType: !23, size: 32, offset: 800)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_flags", scope: !4167, file: !4163, line: 566, baseType: !4327, size: 32, offset: 832)
!4327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "highest_zoneidx", scope: !4167, file: !4163, line: 567, baseType: !2132, size: 32, offset: 864)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4167, file: !4163, line: 568, baseType: !144, size: 32, offset: 896)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_skip_hint", scope: !4167, file: !4163, line: 569, baseType: !870, size: 8, offset: 928)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "no_set_skip_hint", scope: !4167, file: !4163, line: 570, baseType: !870, size: 8, offset: 936)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_block_suitable", scope: !4167, file: !4163, line: 571, baseType: !870, size: 8, offset: 944)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "direct_compaction", scope: !4167, file: !4163, line: 572, baseType: !870, size: 8, offset: 952)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "proactive_compaction", scope: !4167, file: !4163, line: 573, baseType: !870, size: 8, offset: 960)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "whole_zone", scope: !4167, file: !4163, line: 574, baseType: !870, size: 8, offset: 968)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "contended", scope: !4167, file: !4163, line: 575, baseType: !870, size: 8, offset: 976)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pageblock", scope: !4167, file: !4163, line: 576, baseType: !870, size: 8, offset: 984)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_contig", scope: !4167, file: !4163, line: 581, baseType: !870, size: 8, offset: 992)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4162, file: !4163, line: 590, baseType: !305, size: 64, offset: 64)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !3179, file: !1686, line: 1205, baseType: !40, size: 64, offset: 17536)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !3179, file: !1686, line: 1206, baseType: !4342, size: 64, offset: 17600)
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4343 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !3884, line: 14, baseType: !4344)
!4344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !3884, line: 12, size: 384, elements: !4345)
!4345 = !{!4346}
!4346 = !DIDerivedType(tag: DW_TAG_member, scope: !4344, file: !3884, line: 13, baseType: !4347, size: 384)
!4347 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4344, file: !3884, line: 13, size: 384, elements: !4348)
!4348 = !{!4349, !4350, !4351, !4352}
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4347, file: !3884, line: 13, baseType: !23, size: 32)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4347, file: !3884, line: 13, baseType: !23, size: 32, offset: 32)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4347, file: !3884, line: 13, baseType: !23, size: 32, offset: 64)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4347, file: !3884, line: 13, baseType: !4353, size: 256, offset: 128)
!4353 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4354, line: 37, size: 256, elements: !4355)
!4354 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4355 = !{!4356, !4361, !4374, !4380, !4389, !4416, !4421}
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4353, file: !4354, line: 42, baseType: !4357, size: 64)
!4357 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4353, file: !4354, line: 39, size: 64, elements: !4358)
!4358 = !{!4359, !4360}
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4357, file: !4354, line: 40, baseType: !3468, size: 32)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4357, file: !4354, line: 41, baseType: !343, size: 32, offset: 32)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4353, file: !4354, line: 50, baseType: !4362, size: 192)
!4362 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4353, file: !4354, line: 45, size: 192, elements: !4363)
!4363 = !{!4364, !4366, !4367, !4373}
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4362, file: !4354, line: 46, baseType: !4365, size: 32)
!4365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !38, line: 95, baseType: !23)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4362, file: !4354, line: 47, baseType: !23, size: 32, offset: 32)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4362, file: !4354, line: 48, baseType: !4368, size: 64, offset: 64)
!4368 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4354, line: 11, baseType: !4369)
!4369 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4354, line: 8, size: 64, elements: !4370)
!4370 = !{!4371, !4372}
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4369, file: !4354, line: 9, baseType: !23, size: 32)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4369, file: !4354, line: 10, baseType: !21, size: 64)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4362, file: !4354, line: 49, baseType: !23, size: 32, offset: 128)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4353, file: !4354, line: 57, baseType: !4375, size: 128)
!4375 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4353, file: !4354, line: 53, size: 128, elements: !4376)
!4376 = !{!4377, !4378, !4379}
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4375, file: !4354, line: 54, baseType: !3468, size: 32)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4375, file: !4354, line: 55, baseType: !343, size: 32, offset: 32)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4375, file: !4354, line: 56, baseType: !4368, size: 64, offset: 64)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4353, file: !4354, line: 66, baseType: !4381, size: 256)
!4381 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4353, file: !4354, line: 60, size: 256, elements: !4382)
!4382 = !{!4383, !4384, !4385, !4386, !4388}
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4381, file: !4354, line: 61, baseType: !3468, size: 32)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4381, file: !4354, line: 62, baseType: !343, size: 32, offset: 32)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4381, file: !4354, line: 63, baseType: !23, size: 32, offset: 64)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4381, file: !4354, line: 64, baseType: !4387, size: 64, offset: 128)
!4387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !38, line: 94, baseType: !605)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4381, file: !4354, line: 65, baseType: !4387, size: 64, offset: 192)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4353, file: !4354, line: 105, baseType: !4390, size: 256)
!4390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4353, file: !4354, line: 69, size: 256, elements: !4391)
!4391 = !{!4392, !4393}
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4390, file: !4354, line: 70, baseType: !21, size: 64)
!4393 = !DIDerivedType(tag: DW_TAG_member, scope: !4390, file: !4354, line: 79, baseType: !4394, size: 192, offset: 64)
!4394 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4390, file: !4354, line: 79, size: 192, elements: !4395)
!4395 = !{!4396, !4397, !4398, !4405, !4410}
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4394, file: !4354, line: 81, baseType: !23, size: 32)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4394, file: !4354, line: 86, baseType: !839, size: 16)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4394, file: !4354, line: 92, baseType: !4399, size: 192)
!4399 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4394, file: !4354, line: 88, size: 192, elements: !4400)
!4400 = !{!4401, !4403, !4404}
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4399, file: !4354, line: 89, baseType: !4402, size: 64)
!4402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 64, elements: !2867)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4399, file: !4354, line: 90, baseType: !21, size: 64, offset: 64)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4399, file: !4354, line: 91, baseType: !21, size: 64, offset: 128)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4394, file: !4354, line: 97, baseType: !4406, size: 96)
!4406 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4394, file: !4354, line: 94, size: 96, elements: !4407)
!4407 = !{!4408, !4409}
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4406, file: !4354, line: 95, baseType: !4402, size: 64)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4406, file: !4354, line: 96, baseType: !401, size: 32, offset: 64)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4394, file: !4354, line: 103, baseType: !4411, size: 128)
!4411 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4394, file: !4354, line: 99, size: 128, elements: !4412)
!4412 = !{!4413, !4414, !4415}
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4411, file: !4354, line: 100, baseType: !40, size: 64)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4411, file: !4354, line: 101, baseType: !401, size: 32, offset: 64)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4411, file: !4354, line: 102, baseType: !401, size: 32, offset: 96)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4353, file: !4354, line: 111, baseType: !4417, size: 128)
!4417 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4353, file: !4354, line: 108, size: 128, elements: !4418)
!4418 = !{!4419, !4420}
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4417, file: !4354, line: 109, baseType: !606, size: 64)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4417, file: !4354, line: 110, baseType: !23, size: 32, offset: 64)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4353, file: !4354, line: 118, baseType: !4422, size: 128)
!4422 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4353, file: !4354, line: 114, size: 128, elements: !4423)
!4423 = !{!4424, !4425, !4426}
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4422, file: !4354, line: 115, baseType: !21, size: 64)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4422, file: !4354, line: 116, baseType: !23, size: 32, offset: 64)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4422, file: !4354, line: 117, baseType: !5, size: 32, offset: 96)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3179, file: !1686, line: 1208, baseType: !3968, size: 448, offset: 17664)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !3179, file: !1686, line: 1215, baseType: !404, size: 64, offset: 18112)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !3179, file: !1686, line: 1217, baseType: !404, size: 64, offset: 18176)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !3179, file: !1686, line: 1219, baseType: !404, size: 64, offset: 18240)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !3179, file: !1686, line: 1223, baseType: !1620, size: 64, offset: 18304)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !3179, file: !1686, line: 1225, baseType: !372, size: 32, offset: 18368)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !3179, file: !1686, line: 1226, baseType: !23, size: 32, offset: 18400)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !3179, file: !1686, line: 1227, baseType: !23, size: 32, offset: 18432)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !3179, file: !1686, line: 1231, baseType: !3584, size: 64, offset: 18496)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !3179, file: !1686, line: 1233, baseType: !98, size: 128, offset: 18560)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !3179, file: !1686, line: 1240, baseType: !4438, size: 64, offset: 18688)
!4438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4439, size: 64)
!4439 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1686, line: 62, flags: DIFlagFwdDecl)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !3179, file: !1686, line: 1242, baseType: !4441, size: 64, offset: 18752)
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!4442 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1686, line: 1242, flags: DIFlagFwdDecl)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !3179, file: !1686, line: 1244, baseType: !98, size: 128, offset: 18816)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !3179, file: !1686, line: 1245, baseType: !4445, size: 64, offset: 18944)
!4445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4446, size: 64)
!4446 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1686, line: 51, flags: DIFlagFwdDecl)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !3179, file: !1686, line: 1246, baseType: !680, size: 256, offset: 19008)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !3179, file: !1686, line: 1247, baseType: !5, size: 32, offset: 19264)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !3179, file: !1686, line: 1250, baseType: !4450, size: 64, offset: 19328)
!4450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4451, size: 64)
!4451 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1686, line: 57, flags: DIFlagFwdDecl)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !3179, file: !1686, line: 1251, baseType: !680, size: 256, offset: 19392)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !3179, file: !1686, line: 1252, baseType: !98, size: 128, offset: 19648)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !3179, file: !1686, line: 1259, baseType: !1612, size: 64, offset: 19776)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !3179, file: !1686, line: 1260, baseType: !839, size: 16, offset: 19840)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !3179, file: !1686, line: 1261, baseType: !839, size: 16, offset: 19856)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !3179, file: !1686, line: 1314, baseType: !4458, size: 64, offset: 19904)
!4458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4459, size: 64)
!4459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4460, line: 62, size: 256, align: 256, elements: !4461)
!4460 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4461 = !{!4462, !4463, !4464, !4465, !4466, !4467, !4468}
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4459, file: !4460, line: 75, baseType: !401, size: 32)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4459, file: !4460, line: 90, baseType: !401, size: 32, offset: 32)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4459, file: !4460, line: 112, baseType: !405, size: 64, offset: 64)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4459, file: !4460, line: 132, baseType: !401, size: 32, offset: 128)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4459, file: !4460, line: 140, baseType: !401, size: 32, offset: 160)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4459, file: !4460, line: 149, baseType: !401, size: 32, offset: 192)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4459, file: !4460, line: 154, baseType: !4469, offset: 224)
!4469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, elements: !754)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !3179, file: !1686, line: 1315, baseType: !400, size: 32, offset: 19968)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !3179, file: !1686, line: 1316, baseType: !400, size: 32, offset: 20000)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !3179, file: !1686, line: 1321, baseType: !40, size: 64, offset: 20032)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3179, file: !1686, line: 1325, baseType: !23, size: 32, offset: 20096)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !3179, file: !1686, line: 1326, baseType: !23, size: 32, offset: 20128)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !3179, file: !1686, line: 1327, baseType: !23, size: 32, offset: 20160)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !3179, file: !1686, line: 1328, baseType: !23, size: 32, offset: 20192)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !3179, file: !1686, line: 1329, baseType: !658, size: 128, align: 64, offset: 20224)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !3179, file: !1686, line: 1332, baseType: !4479, size: 128, offset: 20352)
!4479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4480, line: 51, size: 128, elements: !4481)
!4480 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4481 = !{!4482, !4487, !4488}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4479, file: !4480, line: 60, baseType: !4483, size: 64)
!4483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4484, line: 7, size: 64, elements: !4485)
!4484 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4485 = !{!4486}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4483, file: !4484, line: 12, baseType: !3338, size: 64)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4479, file: !4480, line: 63, baseType: !870, size: 8, offset: 64)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4479, file: !4480, line: 70, baseType: !870, size: 8, offset: 72)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !3179, file: !1686, line: 1335, baseType: !1684, size: 64, offset: 20480)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !3179, file: !1686, line: 1337, baseType: !4491, size: 128, offset: 20544)
!4491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4480, line: 39, size: 128, elements: !4492)
!4492 = !{!4493, !4494, !4495}
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4491, file: !4480, line: 40, baseType: !305, size: 64)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4491, file: !4480, line: 42, baseType: !401, size: 32, offset: 64)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4491, file: !4480, line: 43, baseType: !401, size: 32, offset: 96)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !3179, file: !1686, line: 1340, baseType: !4497, size: 64, offset: 20672)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1686, line: 69, flags: DIFlagFwdDecl)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !3179, file: !1686, line: 1351, baseType: !23, size: 32, offset: 20736)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !3179, file: !1686, line: 1352, baseType: !23, size: 32, offset: 20768)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !3179, file: !1686, line: 1354, baseType: !40, size: 64, offset: 20800)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !3179, file: !1686, line: 1364, baseType: !404, size: 64, offset: 20864)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !3179, file: !1686, line: 1365, baseType: !404, size: 64, offset: 20928)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !3179, file: !1686, line: 1412, baseType: !40, size: 64, offset: 20992)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !3179, file: !1686, line: 1453, baseType: !2595, size: 64, offset: 21056)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !3179, file: !1686, line: 1457, baseType: !4507, size: 64, offset: 21120)
!4507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4508, size: 64)
!4508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !253, line: 61, size: 576, elements: !4509)
!4509 = !{!4510, !4511, !4530, !4533, !4534, !4567, !4577}
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4508, file: !253, line: 62, baseType: !252, size: 32)
!4511 = !DIDerivedType(tag: DW_TAG_member, scope: !4508, file: !253, line: 64, baseType: !4512, size: 192, offset: 64)
!4512 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4508, file: !253, line: 64, size: 192, elements: !4513)
!4513 = !{!4514, !4525}
!4514 = !DIDerivedType(tag: DW_TAG_member, scope: !4512, file: !253, line: 65, baseType: !4515, size: 192)
!4515 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4512, file: !253, line: 65, size: 192, elements: !4516)
!4516 = !{!4517, !4524}
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4515, file: !253, line: 66, baseType: !4518, size: 128)
!4518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4519, line: 50, size: 128, elements: !4520)
!4519 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4520 = !{!4521, !4522, !4523}
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4518, file: !4519, line: 52, baseType: !40, size: 64)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4518, file: !4519, line: 54, baseType: !5, size: 32, offset: 64)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4518, file: !4519, line: 55, baseType: !5, size: 32, offset: 96)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4515, file: !253, line: 67, baseType: !40, size: 64, offset: 128)
!4525 = !DIDerivedType(tag: DW_TAG_member, scope: !4512, file: !253, line: 70, baseType: !4526, size: 192)
!4526 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4512, file: !253, line: 70, size: 192, elements: !4527)
!4527 = !{!4528, !4529}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4526, file: !253, line: 71, baseType: !658, size: 128, align: 64)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4526, file: !253, line: 72, baseType: !40, size: 64, offset: 128)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4508, file: !253, line: 76, baseType: !4531, size: 64, offset: 256)
!4531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4532, size: 64)
!4532 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !253, line: 76, flags: DIFlagFwdDecl)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4508, file: !253, line: 77, baseType: !40, size: 64, offset: 320)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4508, file: !253, line: 79, baseType: !4535, size: 64, offset: 384)
!4535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4536, size: 64)
!4536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4519, line: 25, size: 256, elements: !4537)
!4537 = !{!4538, !4544, !4548}
!4538 = !DIDerivedType(tag: DW_TAG_member, scope: !4536, file: !4519, line: 26, baseType: !4539, size: 128)
!4539 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4536, file: !4519, line: 26, size: 128, elements: !4540)
!4540 = !{!4541, !4543}
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4539, file: !4519, line: 27, baseType: !4542, size: 128)
!4542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 128, elements: !3526)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4539, file: !4519, line: 28, baseType: !4542, size: 128)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4536, file: !4519, line: 31, baseType: !4545, size: 64, offset: 128)
!4545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4546, size: 64)
!4546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4547)
!4547 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4519, line: 23, flags: DIFlagFwdDecl)
!4548 = !DIDerivedType(tag: DW_TAG_member, scope: !4536, file: !4519, line: 33, baseType: !4549, size: 64, offset: 192)
!4549 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4536, file: !4519, line: 33, size: 64, elements: !4550)
!4550 = !{!4551, !4557, !4562}
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4549, file: !4519, line: 38, baseType: !4552, size: 64)
!4552 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4549, file: !4519, line: 34, size: 64, elements: !4553)
!4553 = !{!4554, !4555, !4556}
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4552, file: !4519, line: 35, baseType: !796, size: 32)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4552, file: !4519, line: 36, baseType: !84, size: 8, offset: 32)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4552, file: !4519, line: 37, baseType: !84, size: 8, offset: 40)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4549, file: !4519, line: 42, baseType: !4558, size: 16)
!4558 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4549, file: !4519, line: 39, size: 16, elements: !4559)
!4559 = !{!4560, !4561}
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4558, file: !4519, line: 40, baseType: !84, size: 8)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4558, file: !4519, line: 41, baseType: !84, size: 8, offset: 8)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4549, file: !4519, line: 46, baseType: !4563, size: 16)
!4563 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4549, file: !4519, line: 43, size: 16, elements: !4564)
!4564 = !{!4565, !4566}
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4563, file: !4519, line: 44, baseType: !84, size: 8)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4563, file: !4519, line: 45, baseType: !84, size: 8, offset: 8)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4508, file: !253, line: 81, baseType: !4568, size: 64, offset: 448)
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4569, size: 64)
!4569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !253, line: 85, size: 384, elements: !4570)
!4570 = !{!4571, !4572, !4573, !4574, !4575, !4576}
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4569, file: !253, line: 86, baseType: !4531, size: 64)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4569, file: !253, line: 87, baseType: !40, size: 64, offset: 64)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4569, file: !253, line: 88, baseType: !40, size: 64, offset: 128)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4569, file: !253, line: 89, baseType: !40, size: 64, offset: 192)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4569, file: !253, line: 90, baseType: !870, size: 8, offset: 256)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4569, file: !253, line: 92, baseType: !4568, size: 64, offset: 320)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4508, file: !253, line: 82, baseType: !5, size: 32, offset: 512)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !3179, file: !1686, line: 1463, baseType: !4579, offset: 21184)
!4579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1686, line: 739, elements: !1335)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3179, file: !1686, line: 1470, baseType: !658, size: 128, align: 64, offset: 21184)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3179, file: !1686, line: 1471, baseType: !723, size: 32, offset: 21312)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !3179, file: !1686, line: 1472, baseType: !23, size: 32, offset: 21344)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !3179, file: !1686, line: 1474, baseType: !3178, size: 64, offset: 21376)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !3179, file: !1686, line: 1475, baseType: !2167, size: 320, offset: 21440)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !3179, file: !1686, line: 1478, baseType: !4586, size: 64, offset: 21760)
!4586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4587, size: 64)
!4587 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1686, line: 1478, flags: DIFlagFwdDecl)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !3179, file: !1686, line: 1482, baseType: !723, size: 32, offset: 21824)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3179, file: !1686, line: 1489, baseType: !21, size: 64, offset: 21888)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !3179, file: !1686, line: 1504, baseType: !21, size: 64, offset: 21952)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !3179, file: !1686, line: 1505, baseType: !405, size: 64, offset: 22016)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !3179, file: !1686, line: 1506, baseType: !404, size: 64, offset: 22080)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !3179, file: !1686, line: 1507, baseType: !405, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !3179, file: !1686, line: 1508, baseType: !405, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !3179, file: !1686, line: 1509, baseType: !405, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !3179, file: !1686, line: 1510, baseType: !658, size: 128, align: 64, offset: 22208)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !3179, file: !1686, line: 1511, baseType: !23, size: 32, offset: 22336)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !3179, file: !1686, line: 1515, baseType: !4599, size: 64, offset: 22400)
!4599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !653, line: 56, size: 64, elements: !4600)
!4600 = !{!4601}
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4599, file: !653, line: 57, baseType: !656, size: 64)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !3179, file: !1686, line: 1518, baseType: !4599, size: 64, offset: 22464)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !3179, file: !1686, line: 1528, baseType: !658, size: 128, align: 64, offset: 22528)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3179, file: !1686, line: 1552, baseType: !4605, size: 35328, offset: 23040)
!4605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4606, line: 430, size: 35328, elements: !4607)
!4606 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4607 = !{!4608, !4626, !4627, !4628, !4629, !4630, !4631, !4632, !4633, !4637, !4638, !4639, !4640, !4641, !4642, !4645, !4646, !4647, !4648}
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4605, file: !4606, line: 432, baseType: !4609, size: 192)
!4609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4610, size: 192, elements: !572)
!4610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4611, line: 16, size: 64, elements: !4612)
!4611 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4612 = !{!4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4625}
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4610, file: !4611, line: 17, baseType: !94, size: 16)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4610, file: !4611, line: 18, baseType: !94, size: 16, offset: 16)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4610, file: !4611, line: 19, baseType: !94, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4610, file: !4611, line: 19, baseType: !94, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4610, file: !4611, line: 19, baseType: !94, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4610, file: !4611, line: 19, baseType: !94, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4610, file: !4611, line: 19, baseType: !94, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4610, file: !4611, line: 20, baseType: !94, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4610, file: !4611, line: 20, baseType: !94, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4610, file: !4611, line: 20, baseType: !94, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4610, file: !4611, line: 20, baseType: !94, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4610, file: !4611, line: 20, baseType: !94, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4610, file: !4611, line: 20, baseType: !94, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4605, file: !4606, line: 436, baseType: !40, size: 64, offset: 192)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4605, file: !4606, line: 440, baseType: !27, size: 16, offset: 256)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4605, file: !4606, line: 441, baseType: !27, size: 16, offset: 272)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4605, file: !4606, line: 442, baseType: !27, size: 16, offset: 288)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4605, file: !4606, line: 443, baseType: !27, size: 16, offset: 304)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4605, file: !4606, line: 447, baseType: !40, size: 64, offset: 320)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4605, file: !4606, line: 448, baseType: !40, size: 64, offset: 384)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4605, file: !4606, line: 459, baseType: !4634, size: 256, offset: 448)
!4634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4635, size: 256, elements: !741)
!4635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4636, size: 64)
!4636 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4606, line: 428, flags: DIFlagFwdDecl)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4605, file: !4606, line: 461, baseType: !40, size: 64, offset: 704)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4605, file: !4606, line: 463, baseType: !40, size: 64, offset: 768)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4605, file: !4606, line: 465, baseType: !40, size: 64, offset: 832)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4605, file: !4606, line: 466, baseType: !40, size: 64, offset: 896)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4605, file: !4606, line: 467, baseType: !40, size: 64, offset: 960)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4605, file: !4606, line: 473, baseType: !4643, size: 64, offset: 1024)
!4643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4644, size: 64)
!4644 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4606, line: 10, flags: DIFlagFwdDecl)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4605, file: !4606, line: 480, baseType: !40, size: 64, offset: 1088)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4605, file: !4606, line: 482, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4605, file: !4606, line: 491, baseType: !400, size: 32, offset: 1184)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4605, file: !4606, line: 501, baseType: !4649, size: 33792, offset: 1536)
!4649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4650, line: 448, size: 33792, elements: !4651)
!4650 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4651 = !{!4652, !4653, !4654, !4812, !4813, !4819, !4820}
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4649, file: !4650, line: 461, baseType: !5, size: 32)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4649, file: !4650, line: 468, baseType: !40, size: 64, offset: 64)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4649, file: !4650, line: 476, baseType: !4655, size: 64, offset: 128)
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4656, size: 64)
!4656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4650, line: 356, size: 33280, align: 512, elements: !4657)
!4657 = !{!4658, !4659, !4660, !4661, !4662, !4663, !4664, !4665, !4666, !4667}
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4656, file: !4650, line: 358, baseType: !5, size: 32)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4656, file: !4650, line: 361, baseType: !5, size: 32, offset: 32)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4656, file: !4650, line: 364, baseType: !404, size: 64, offset: 64)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4656, file: !4650, line: 367, baseType: !404, size: 64, offset: 128)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4656, file: !4650, line: 370, baseType: !404, size: 64, offset: 192)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4656, file: !4650, line: 373, baseType: !5, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4656, file: !4650, line: 376, baseType: !5, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4656, file: !4650, line: 391, baseType: !5, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4656, file: !4650, line: 394, baseType: !5, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4656, file: !4650, line: 397, baseType: !4668, size: 32768, offset: 512)
!4668 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4650, line: 348, size: 32768, elements: !4669)
!4669 = !{!4670, !4685, !4720, !4797, !4810}
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4668, file: !4650, line: 349, baseType: !4671, size: 896)
!4671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4650, line: 12, size: 896, elements: !4672)
!4672 = !{!4673, !4674, !4675, !4676, !4677, !4678, !4679, !4680, !4684}
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4671, file: !4650, line: 13, baseType: !400, size: 32)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4671, file: !4650, line: 14, baseType: !400, size: 32, offset: 32)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4671, file: !4650, line: 15, baseType: !400, size: 32, offset: 64)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4671, file: !4650, line: 16, baseType: !400, size: 32, offset: 96)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4671, file: !4650, line: 17, baseType: !400, size: 32, offset: 128)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4671, file: !4650, line: 18, baseType: !400, size: 32, offset: 160)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4671, file: !4650, line: 19, baseType: !400, size: 32, offset: 192)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4671, file: !4650, line: 22, baseType: !4681, size: 640, offset: 224)
!4681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, size: 640, elements: !4682)
!4682 = !{!4683}
!4683 = !DISubrange(count: 20)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4671, file: !4650, line: 25, baseType: !400, size: 32, offset: 864)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4668, file: !4650, line: 350, baseType: !4686, size: 4096, align: 128)
!4686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4650, line: 34, size: 4096, align: 128, elements: !4687)
!4687 = !{!4688, !4689, !4690, !4691, !4692, !4707, !4708, !4709, !4711, !4713, !4715}
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4686, file: !4650, line: 35, baseType: !94, size: 16)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4686, file: !4650, line: 36, baseType: !94, size: 16, offset: 16)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4686, file: !4650, line: 37, baseType: !94, size: 16, offset: 32)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4686, file: !4650, line: 38, baseType: !94, size: 16, offset: 48)
!4692 = !DIDerivedType(tag: DW_TAG_member, scope: !4686, file: !4650, line: 39, baseType: !4693, size: 128, offset: 64)
!4693 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4686, file: !4650, line: 39, size: 128, elements: !4694)
!4694 = !{!4695, !4700}
!4695 = !DIDerivedType(tag: DW_TAG_member, scope: !4693, file: !4650, line: 40, baseType: !4696, size: 128)
!4696 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4693, file: !4650, line: 40, size: 128, elements: !4697)
!4697 = !{!4698, !4699}
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4696, file: !4650, line: 41, baseType: !404, size: 64)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4696, file: !4650, line: 42, baseType: !404, size: 64, offset: 64)
!4700 = !DIDerivedType(tag: DW_TAG_member, scope: !4693, file: !4650, line: 44, baseType: !4701, size: 128)
!4701 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4693, file: !4650, line: 44, size: 128, elements: !4702)
!4702 = !{!4703, !4704, !4705, !4706}
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4701, file: !4650, line: 45, baseType: !400, size: 32)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4701, file: !4650, line: 46, baseType: !400, size: 32, offset: 32)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4701, file: !4650, line: 47, baseType: !400, size: 32, offset: 64)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4701, file: !4650, line: 48, baseType: !400, size: 32, offset: 96)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4686, file: !4650, line: 51, baseType: !400, size: 32, offset: 192)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4686, file: !4650, line: 52, baseType: !400, size: 32, offset: 224)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4686, file: !4650, line: 55, baseType: !4710, size: 1024, offset: 256)
!4710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, size: 1024, elements: !413)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4686, file: !4650, line: 58, baseType: !4712, size: 2048, offset: 1280)
!4712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, size: 2048, elements: !576)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4686, file: !4650, line: 60, baseType: !4714, size: 384, offset: 3328)
!4714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, size: 384, elements: !4272)
!4715 = !DIDerivedType(tag: DW_TAG_member, scope: !4686, file: !4650, line: 62, baseType: !4716, size: 384, offset: 3712)
!4716 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4686, file: !4650, line: 62, size: 384, elements: !4717)
!4717 = !{!4718, !4719}
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4716, file: !4650, line: 63, baseType: !4714, size: 384)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4716, file: !4650, line: 64, baseType: !4714, size: 384)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4668, file: !4650, line: 351, baseType: !4721, size: 1088)
!4721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4650, line: 79, size: 1088, elements: !4722)
!4722 = !{!4723, !4724, !4725, !4726, !4727, !4728, !4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4737, !4796}
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4721, file: !4650, line: 80, baseType: !400, size: 32)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4721, file: !4650, line: 81, baseType: !400, size: 32, offset: 32)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4721, file: !4650, line: 82, baseType: !400, size: 32, offset: 64)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4721, file: !4650, line: 83, baseType: !400, size: 32, offset: 96)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4721, file: !4650, line: 84, baseType: !400, size: 32, offset: 128)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4721, file: !4650, line: 85, baseType: !400, size: 32, offset: 160)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4721, file: !4650, line: 86, baseType: !400, size: 32, offset: 192)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4721, file: !4650, line: 88, baseType: !4681, size: 640, offset: 224)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4721, file: !4650, line: 89, baseType: !84, size: 8, offset: 864)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4721, file: !4650, line: 90, baseType: !84, size: 8, offset: 872)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4721, file: !4650, line: 91, baseType: !84, size: 8, offset: 880)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4721, file: !4650, line: 92, baseType: !84, size: 8, offset: 888)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4721, file: !4650, line: 93, baseType: !84, size: 8, offset: 896)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4721, file: !4650, line: 94, baseType: !84, size: 8, offset: 904)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4721, file: !4650, line: 95, baseType: !4738, size: 64, offset: 960)
!4738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4739, size: 64)
!4739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4740, line: 11, size: 128, elements: !4741)
!4740 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4741 = !{!4742, !4743}
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4739, file: !4740, line: 12, baseType: !606, size: 64)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4739, file: !4740, line: 13, baseType: !4744, size: 64, offset: 64)
!4744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4745, size: 64)
!4745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4746, line: 103, size: 1344, elements: !4747)
!4746 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4747 = !{!4748, !4749, !4750, !4751, !4752, !4753, !4754, !4755, !4756, !4757, !4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4776, !4777, !4778}
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4745, file: !4746, line: 109, baseType: !40, size: 64)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4745, file: !4746, line: 110, baseType: !40, size: 64, offset: 64)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4745, file: !4746, line: 111, baseType: !40, size: 64, offset: 128)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4745, file: !4746, line: 112, baseType: !40, size: 64, offset: 192)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4745, file: !4746, line: 113, baseType: !40, size: 64, offset: 256)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4745, file: !4746, line: 114, baseType: !40, size: 64, offset: 320)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4745, file: !4746, line: 117, baseType: !40, size: 64, offset: 384)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4745, file: !4746, line: 118, baseType: !40, size: 64, offset: 448)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4745, file: !4746, line: 119, baseType: !40, size: 64, offset: 512)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4745, file: !4746, line: 120, baseType: !40, size: 64, offset: 576)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4745, file: !4746, line: 121, baseType: !40, size: 64, offset: 640)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4745, file: !4746, line: 122, baseType: !40, size: 64, offset: 704)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4745, file: !4746, line: 123, baseType: !40, size: 64, offset: 768)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4745, file: !4746, line: 124, baseType: !40, size: 64, offset: 832)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4745, file: !4746, line: 125, baseType: !40, size: 64, offset: 896)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4745, file: !4746, line: 139, baseType: !40, size: 64, offset: 960)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4745, file: !4746, line: 142, baseType: !40, size: 64, offset: 1024)
!4765 = !DIDerivedType(tag: DW_TAG_member, scope: !4745, file: !4746, line: 144, baseType: !4766, size: 64, offset: 1088)
!4766 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4745, file: !4746, line: 144, size: 64, elements: !4767)
!4767 = !{!4768, !4769, !4770}
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4766, file: !4746, line: 146, baseType: !94, size: 16)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4766, file: !4746, line: 148, baseType: !404, size: 64)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4766, file: !4746, line: 150, baseType: !4771, size: 64)
!4771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4746, line: 59, size: 64, elements: !4772)
!4772 = !{!4773, !4774, !4775}
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4771, file: !4746, line: 61, baseType: !404, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4771, file: !4746, line: 63, baseType: !404, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4771, file: !4746, line: 65, baseType: !404, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4745, file: !4746, line: 153, baseType: !40, size: 64, offset: 1152)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4745, file: !4746, line: 154, baseType: !40, size: 64, offset: 1216)
!4778 = !DIDerivedType(tag: DW_TAG_member, scope: !4745, file: !4746, line: 156, baseType: !4779, size: 64, offset: 1280)
!4779 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4745, file: !4746, line: 156, size: 64, elements: !4780)
!4780 = !{!4781, !4782, !4783}
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4779, file: !4746, line: 158, baseType: !94, size: 16)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4779, file: !4746, line: 160, baseType: !404, size: 64)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4779, file: !4746, line: 162, baseType: !4784, size: 64)
!4784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4746, line: 69, size: 64, elements: !4785)
!4785 = !{!4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793, !4794, !4795}
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4784, file: !4746, line: 71, baseType: !404, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4784, file: !4746, line: 73, baseType: !404, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4784, file: !4746, line: 75, baseType: !404, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4784, file: !4746, line: 77, baseType: !404, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4784, file: !4746, line: 80, baseType: !404, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4784, file: !4746, line: 83, baseType: !404, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4784, file: !4746, line: 86, baseType: !404, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4784, file: !4746, line: 88, baseType: !404, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4784, file: !4746, line: 93, baseType: !404, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4784, file: !4746, line: 100, baseType: !404, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4721, file: !4650, line: 96, baseType: !400, size: 32, offset: 1024)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4668, file: !4650, line: 352, baseType: !4798, size: 4608, align: 512)
!4798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4650, line: 333, size: 4608, align: 512, elements: !4799)
!4799 = !{!4800, !4801, !4808}
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4798, file: !4650, line: 334, baseType: !4686, size: 4096, align: 128)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4798, file: !4650, line: 335, baseType: !4802, size: 512, offset: 4096)
!4802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4650, line: 312, size: 512, elements: !4803)
!4803 = !{!4804, !4805, !4806}
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4802, file: !4650, line: 313, baseType: !404, size: 64)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4802, file: !4650, line: 314, baseType: !404, size: 64, offset: 64)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4802, file: !4650, line: 315, baseType: !4807, size: 384, offset: 128)
!4807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 384, elements: !857)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4798, file: !4650, line: 336, baseType: !4809, offset: 4608)
!4809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, elements: !754)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4668, file: !4650, line: 353, baseType: !4811, size: 32768)
!4811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 32768, elements: !3641)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4649, file: !4650, line: 484, baseType: !4655, size: 64, offset: 192)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4649, file: !4650, line: 491, baseType: !4814, size: 128, offset: 256)
!4814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4650, line: 404, size: 128, elements: !4815)
!4815 = !{!4816, !4817, !4818}
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4814, file: !4650, line: 424, baseType: !404, size: 64)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4814, file: !4650, line: 432, baseType: !5, size: 32, offset: 64)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4814, file: !4650, line: 440, baseType: !5, size: 32, offset: 96)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4649, file: !4650, line: 498, baseType: !4814, size: 128, offset: 384)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4649, file: !4650, line: 508, baseType: !4656, size: 33280, align: 512, offset: 512)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3161, file: !3162, line: 16, baseType: !55, size: 192, offset: 512)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3161, file: !3162, line: 17, baseType: !50, size: 32, offset: 704)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !484, file: !216, line: 1240, baseType: !21, size: 64, offset: 6912)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !484, file: !216, line: 1243, baseType: !400, size: 32, offset: 6976)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !484, file: !216, line: 1245, baseType: !827, size: 64, offset: 7040)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !484, file: !216, line: 1246, baseType: !827, size: 64, offset: 7104)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !484, file: !216, line: 1248, baseType: !401, size: 32, offset: 7168)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !484, file: !216, line: 1249, baseType: !4829, size: 64, offset: 7232)
!4829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4830, size: 64)
!4830 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !216, line: 634, flags: DIFlagFwdDecl)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !484, file: !216, line: 1252, baseType: !4014, size: 256, offset: 7296)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !484, file: !216, line: 1253, baseType: !4833, size: 128, offset: 7552)
!4833 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4834, line: 21, baseType: !4835)
!4834 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4835 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4834, line: 19, size: 128, elements: !4836)
!4836 = !{!4837}
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4835, file: !4834, line: 20, baseType: !4838, size: 128)
!4838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 128, elements: !3526)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !484, file: !216, line: 1255, baseType: !5, size: 32, offset: 7680)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !484, file: !216, line: 1261, baseType: !680, size: 256, offset: 7744)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !484, file: !216, line: 1267, baseType: !17, size: 64, offset: 8000)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !484, file: !216, line: 1269, baseType: !429, size: 64, offset: 8064)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !484, file: !216, line: 1271, baseType: !4844, size: 448, offset: 8128)
!4844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2428, line: 63, size: 448, elements: !4845)
!4845 = !{!4846, !4851, !4852, !4853, !4854, !4855, !4856}
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4844, file: !2428, line: 64, baseType: !4847, size: 64)
!4847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4848, size: 64)
!4848 = !DISubroutineType(types: !4849)
!4849 = !{!40, !4850, !2426}
!4850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4844, size: 64)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4844, file: !2428, line: 66, baseType: !4847, size: 64, offset: 64)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4844, file: !2428, line: 69, baseType: !606, size: 64, offset: 128)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4844, file: !2428, line: 70, baseType: !23, size: 32, offset: 192)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4844, file: !2428, line: 71, baseType: !5, size: 32, offset: 224)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4844, file: !2428, line: 74, baseType: !98, size: 128, offset: 256)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4844, file: !2428, line: 85, baseType: !4857, size: 64, offset: 384)
!4857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !484, file: !216, line: 1274, baseType: !671, size: 64, offset: 8576)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !484, file: !216, line: 1280, baseType: !671, size: 64, offset: 8640)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !484, file: !216, line: 1283, baseType: !23, size: 32, offset: 8704)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !484, file: !216, line: 1286, baseType: !1773, size: 32, offset: 8736)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !484, file: !216, line: 1289, baseType: !2229, size: 64, offset: 8768)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !484, file: !216, line: 1290, baseType: !732, size: 64, offset: 8832)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !484, file: !216, line: 1297, baseType: !953, size: 64, offset: 8896)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !484, file: !216, line: 1304, baseType: !4866, size: 64, offset: 8960)
!4866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4867, line: 49, size: 64, elements: !4868)
!4867 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4868 = !{!4869}
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4866, file: !4867, line: 50, baseType: !4870, size: 64)
!4870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4871, size: 64)
!4871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4867, line: 41, size: 512, align: 512, elements: !4872)
!4872 = !{!4873, !4874, !4879}
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4871, file: !4867, line: 43, baseType: !60, size: 32)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4871, file: !4867, line: 45, baseType: !4875, size: 192, offset: 64)
!4875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4867, line: 29, size: 192, elements: !4876)
!4876 = !{!4877, !4878}
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4875, file: !4867, line: 30, baseType: !98, size: 128)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4875, file: !4867, line: 32, baseType: !606, size: 64, offset: 128)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4871, file: !4867, line: 46, baseType: !606, size: 64, offset: 256)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !484, file: !216, line: 1305, baseType: !4866, size: 64, offset: 9024)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !484, file: !216, line: 1306, baseType: !658, size: 128, align: 64, offset: 9088)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !484, file: !216, line: 1307, baseType: !1002, size: 256, offset: 9216)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !484, file: !216, line: 1309, baseType: !680, size: 256, offset: 9472)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !484, file: !216, line: 1314, baseType: !23, size: 32, offset: 9728)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !484, file: !216, line: 1317, baseType: !60, size: 32, align: 512, offset: 10240)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !484, file: !216, line: 1318, baseType: !98, size: 128, offset: 10304)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !484, file: !216, line: 1320, baseType: !60, size: 32, offset: 10432)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !484, file: !216, line: 1321, baseType: !98, size: 128, offset: 10496)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !478, file: !479, line: 73, baseType: !23, size: 32, offset: 128)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !478, file: !479, line: 74, baseType: !4891, size: 64, offset: 192)
!4891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4892, size: 64)
!4892 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !778, line: 42, flags: DIFlagFwdDecl)
!4893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !431, file: !368, line: 141, baseType: !4895, size: 64, offset: 704)
!4895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4896, size: 64)
!4896 = !DISubroutineType(types: !4897)
!4897 = !{!23, !2488, !870}
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !431, file: !368, line: 142, baseType: !4899, size: 64, offset: 768)
!4899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4900, size: 64)
!4900 = !DISubroutineType(types: !4901)
!4901 = !{!366, !366, !4902}
!4902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4903, size: 64)
!4903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !332)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !367, file: !368, line: 96, baseType: !483, size: 64, offset: 832)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !367, file: !368, line: 97, baseType: !40, size: 64, offset: 896)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !367, file: !368, line: 98, baseType: !21, size: 64, offset: 960)
!4907 = !DIDerivedType(tag: DW_TAG_member, scope: !367, file: !368, line: 100, baseType: !4908, size: 128, offset: 1024)
!4908 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !367, file: !368, line: 100, size: 128, elements: !4909)
!4909 = !{!4910, !4911}
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4908, file: !368, line: 101, baseType: !98, size: 128)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4908, file: !368, line: 102, baseType: !4912, size: 64)
!4912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !367, file: !368, line: 104, baseType: !98, size: 128, offset: 1152)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !367, file: !368, line: 105, baseType: !98, size: 128, offset: 1280)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !367, file: !368, line: 113, baseType: !4916, size: 128, offset: 1408)
!4916 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !367, file: !368, line: 109, size: 128, elements: !4917)
!4917 = !{!4918, !4919, !4920}
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4916, file: !368, line: 110, baseType: !736, size: 128)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4916, file: !368, line: 111, baseType: !382, size: 128)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4916, file: !368, line: 112, baseType: !658, size: 128, align: 64)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !360, file: !216, line: 1968, baseType: !4922, size: 64, offset: 64)
!4922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4923, size: 64)
!4923 = !DISubroutineType(types: !4924)
!4924 = !{!17, !366, !331, !4925}
!4925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4926, size: 64)
!4926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4927, line: 10, size: 128, elements: !4928)
!4927 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4928 = !{!4929, !4930}
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4926, file: !4927, line: 11, baseType: !1813, size: 64)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4926, file: !4927, line: 12, baseType: !21, size: 64, offset: 64)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !360, file: !216, line: 1969, baseType: !4932, size: 64, offset: 128)
!4932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4933, size: 64)
!4933 = !DISubroutineType(types: !4934)
!4934 = !{!23, !4891, !331, !23}
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !360, file: !216, line: 1970, baseType: !4936, size: 64, offset: 192)
!4936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4937, size: 64)
!4937 = !DISubroutineType(types: !4938)
!4938 = !{!354, !331, !23, !870}
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !360, file: !216, line: 1972, baseType: !4940, size: 64, offset: 256)
!4940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4941, size: 64)
!4941 = !DISubroutineType(types: !4942)
!4942 = !{!23, !366, !472, !23}
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !360, file: !216, line: 1974, baseType: !4944, size: 64, offset: 320)
!4944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4945, size: 64)
!4945 = !DISubroutineType(types: !4946)
!4946 = !{!23, !4891, !331, !366, !25, !870}
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !360, file: !216, line: 1976, baseType: !4948, size: 64, offset: 384)
!4948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4949, size: 64)
!4949 = !DISubroutineType(types: !4950)
!4950 = !{!23, !366, !331, !366}
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !360, file: !216, line: 1977, baseType: !4952, size: 64, offset: 448)
!4952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4953, size: 64)
!4953 = !DISubroutineType(types: !4954)
!4954 = !{!23, !331, !366}
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !360, file: !216, line: 1978, baseType: !4956, size: 64, offset: 512)
!4956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4957, size: 64)
!4957 = !DISubroutineType(types: !4958)
!4958 = !{!23, !4891, !331, !366, !17}
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !360, file: !216, line: 1980, baseType: !4960, size: 64, offset: 576)
!4960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4961, size: 64)
!4961 = !DISubroutineType(types: !4962)
!4962 = !{!23, !4891, !331, !366, !25}
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !360, file: !216, line: 1982, baseType: !4952, size: 64, offset: 640)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !360, file: !216, line: 1983, baseType: !4965, size: 64, offset: 704)
!4965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4966, size: 64)
!4966 = !DISubroutineType(types: !4967)
!4967 = !{!23, !4891, !331, !366, !25, !488}
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !360, file: !216, line: 1985, baseType: !4969, size: 64, offset: 768)
!4969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4970, size: 64)
!4970 = !DISubroutineType(types: !4971)
!4971 = !{!23, !4891, !331, !366, !331, !366, !5}
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !360, file: !216, line: 1987, baseType: !4973, size: 64, offset: 832)
!4973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4974, size: 64)
!4974 = !DISubroutineType(types: !4975)
!4975 = !{!23, !4891, !366, !4976}
!4976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4977, size: 64)
!4977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !216, line: 226, size: 640, elements: !4978)
!4978 = !{!4979, !4980, !4981, !4991, !5000, !5001, !5006, !5007, !5008}
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4977, file: !216, line: 227, baseType: !5, size: 32)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4977, file: !216, line: 228, baseType: !25, size: 16, offset: 32)
!4981 = !DIDerivedType(tag: DW_TAG_member, scope: !4977, file: !216, line: 241, baseType: !4982, size: 32, offset: 64)
!4982 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4977, file: !216, line: 241, size: 32, elements: !4983)
!4983 = !{!4984, !4985}
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4982, file: !216, line: 242, baseType: !337, size: 32)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4982, file: !216, line: 243, baseType: !4986, size: 32)
!4986 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4987, line: 16, baseType: !4988)
!4987 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4988 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4987, line: 14, size: 32, elements: !4989)
!4989 = !{!4990}
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4988, file: !4987, line: 15, baseType: !342, size: 32)
!4991 = !DIDerivedType(tag: DW_TAG_member, scope: !4977, file: !216, line: 245, baseType: !4992, size: 32, offset: 96)
!4992 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4977, file: !216, line: 245, size: 32, elements: !4993)
!4993 = !{!4994, !4995}
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4992, file: !216, line: 246, baseType: !346, size: 32)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4992, file: !216, line: 247, baseType: !4996, size: 32)
!4996 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4987, line: 20, baseType: !4997)
!4997 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4987, line: 18, size: 32, elements: !4998)
!4998 = !{!4999}
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4997, file: !4987, line: 19, baseType: !350, size: 32)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4977, file: !216, line: 249, baseType: !42, size: 64, offset: 128)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4977, file: !216, line: 250, baseType: !5002, size: 128, offset: 192)
!5002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !828, line: 13, size: 128, elements: !5003)
!5003 = !{!5004, !5005}
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5002, file: !828, line: 14, baseType: !827, size: 64)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5002, file: !828, line: 15, baseType: !606, size: 64, offset: 64)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4977, file: !216, line: 251, baseType: !5002, size: 128, offset: 320)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4977, file: !216, line: 252, baseType: !5002, size: 128, offset: 448)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4977, file: !216, line: 259, baseType: !645, size: 64, offset: 576)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !360, file: !216, line: 1988, baseType: !5010, size: 64, offset: 896)
!5010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5011, size: 64)
!5011 = !DISubroutineType(types: !5012)
!5012 = !{!23, !4891, !2488, !5013, !400, !5}
!5013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5014, size: 64)
!5014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !5015, line: 22, size: 1280, elements: !5016)
!5015 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!5016 = !{!5017, !5018, !5019, !5020, !5021, !5022, !5023, !5024, !5025, !5026, !5027, !5028, !5029, !5030, !5031, !5032, !5033, !5034, !5035, !5036, !5037}
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !5014, file: !5015, line: 23, baseType: !400, size: 32)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5014, file: !5015, line: 24, baseType: !25, size: 16, offset: 32)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !5014, file: !5015, line: 25, baseType: !5, size: 32, offset: 64)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !5014, file: !5015, line: 26, baseType: !835, size: 32, offset: 96)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !5014, file: !5015, line: 27, baseType: !404, size: 64, offset: 128)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !5014, file: !5015, line: 28, baseType: !404, size: 64, offset: 192)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !5014, file: !5015, line: 41, baseType: !404, size: 64, offset: 256)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5014, file: !5015, line: 42, baseType: !488, size: 32, offset: 320)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !5014, file: !5015, line: 43, baseType: !488, size: 32, offset: 352)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !5014, file: !5015, line: 44, baseType: !337, size: 32, offset: 384)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !5014, file: !5015, line: 45, baseType: !346, size: 32, offset: 416)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5014, file: !5015, line: 46, baseType: !42, size: 64, offset: 448)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !5014, file: !5015, line: 47, baseType: !5002, size: 128, offset: 512)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !5014, file: !5015, line: 48, baseType: !5002, size: 128, offset: 640)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !5014, file: !5015, line: 49, baseType: !5002, size: 128, offset: 768)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !5014, file: !5015, line: 50, baseType: !5002, size: 128, offset: 896)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !5014, file: !5015, line: 51, baseType: !404, size: 64, offset: 1024)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !5014, file: !5015, line: 52, baseType: !404, size: 64, offset: 1088)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !5014, file: !5015, line: 53, baseType: !400, size: 32, offset: 1152)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !5014, file: !5015, line: 54, baseType: !400, size: 32, offset: 1184)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !5014, file: !5015, line: 55, baseType: !404, size: 64, offset: 1216)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !360, file: !216, line: 1990, baseType: !5039, size: 64, offset: 960)
!5039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5040, size: 64)
!5040 = !DISubroutineType(types: !5041)
!5041 = !{!603, !366, !472, !36}
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !360, file: !216, line: 1991, baseType: !5043, size: 64, offset: 1024)
!5043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5044, size: 64)
!5044 = !DISubroutineType(types: !5045)
!5045 = !{!23, !331, !5046, !404, !404}
!5046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5047, size: 64)
!5047 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !216, line: 55, flags: DIFlagFwdDecl)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !360, file: !216, line: 1993, baseType: !5049, size: 64, offset: 1088)
!5049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5050, size: 64)
!5050 = !DISubroutineType(types: !5051)
!5051 = !{!23, !331, !23}
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !360, file: !216, line: 1994, baseType: !5053, size: 64, offset: 1152)
!5053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5054, size: 64)
!5054 = !DISubroutineType(types: !5055)
!5055 = !{!23, !331, !366, !645, !5, !25}
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !360, file: !216, line: 1997, baseType: !5057, size: 64, offset: 1216)
!5057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5058, size: 64)
!5058 = !DISubroutineType(types: !5059)
!5059 = !{!23, !4891, !331, !645, !25}
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !360, file: !216, line: 1999, baseType: !5061, size: 64, offset: 1280)
!5061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5062, size: 64)
!5062 = !DISubroutineType(types: !5063)
!5063 = !{!354, !4891, !366, !23}
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !360, file: !216, line: 2001, baseType: !5065, size: 64, offset: 1344)
!5065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5066, size: 64)
!5066 = !DISubroutineType(types: !5067)
!5067 = !{!23, !4891, !366, !354, !23}
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !360, file: !216, line: 2003, baseType: !5069, size: 64, offset: 1408)
!5069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5070, size: 64)
!5070 = !DISubroutineType(types: !5071)
!5071 = !{!23, !4891, !366, !5072}
!5072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5073, size: 64)
!5073 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !216, line: 76, flags: DIFlagFwdDecl)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !360, file: !216, line: 2005, baseType: !5075, size: 64, offset: 1472)
!5075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5076, size: 64)
!5076 = !DISubroutineType(types: !5077)
!5077 = !{!23, !366, !5072}
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !360, file: !216, line: 2006, baseType: !5079, size: 64, offset: 1536)
!5079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5080, size: 64)
!5080 = !DISubroutineType(types: !5081)
!5081 = !{!5082, !331}
!5082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5083, size: 64)
!5083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !216, line: 3192, size: 192, elements: !5084)
!5084 = !{!5085, !5086}
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !5083, file: !216, line: 3193, baseType: !3765, size: 128)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !5083, file: !216, line: 3194, baseType: !400, size: 32, offset: 128)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !332, file: !216, line: 655, baseType: !483, size: 64, offset: 448)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !332, file: !216, line: 656, baseType: !327, size: 64, offset: 512)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !332, file: !216, line: 659, baseType: !21, size: 64, offset: 576)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !332, file: !216, line: 663, baseType: !40, size: 64, offset: 640)
!5091 = !DIDerivedType(tag: DW_TAG_member, scope: !332, file: !216, line: 671, baseType: !5092, size: 32, offset: 704)
!5092 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !332, file: !216, line: 671, size: 32, elements: !5093)
!5093 = !{!5094, !5095}
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !5092, file: !216, line: 672, baseType: !4327, size: 32)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !5092, file: !216, line: 673, baseType: !5, size: 32)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !332, file: !216, line: 675, baseType: !488, size: 32, offset: 736)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !332, file: !216, line: 676, baseType: !42, size: 64, offset: 768)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !332, file: !216, line: 677, baseType: !5002, size: 128, offset: 832)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !332, file: !216, line: 678, baseType: !5002, size: 128, offset: 960)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !332, file: !216, line: 679, baseType: !5002, size: 128, offset: 1088)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !332, file: !216, line: 680, baseType: !60, size: 32, offset: 1216)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !332, file: !216, line: 681, baseType: !27, size: 16, offset: 1248)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !332, file: !216, line: 682, baseType: !84, size: 8, offset: 1264)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !332, file: !216, line: 683, baseType: !84, size: 8, offset: 1272)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !332, file: !216, line: 684, baseType: !2561, size: 64, offset: 1280)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !332, file: !216, line: 691, baseType: !40, size: 64, offset: 1344)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !332, file: !216, line: 692, baseType: !811, size: 320, offset: 1408)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !332, file: !216, line: 694, baseType: !40, size: 64, offset: 1728)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !332, file: !216, line: 695, baseType: !40, size: 64, offset: 1792)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !332, file: !216, line: 697, baseType: !736, size: 128, offset: 1856)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !332, file: !216, line: 698, baseType: !98, size: 128, offset: 1984)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !332, file: !216, line: 707, baseType: !98, size: 128, offset: 2112)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !332, file: !216, line: 708, baseType: !98, size: 128, offset: 2240)
!5114 = !DIDerivedType(tag: DW_TAG_member, scope: !332, file: !216, line: 709, baseType: !5115, size: 128, offset: 2368)
!5115 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !332, file: !216, line: 709, size: 128, elements: !5116)
!5116 = !{!5117, !5118}
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !5115, file: !216, line: 710, baseType: !732, size: 64)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !5115, file: !216, line: 711, baseType: !658, size: 128, align: 64)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !332, file: !216, line: 713, baseType: !673, size: 64, offset: 2496)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !332, file: !216, line: 714, baseType: !673, size: 64, offset: 2560)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !332, file: !216, line: 715, baseType: !50, size: 32, offset: 2624)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !332, file: !216, line: 716, baseType: !50, size: 32, offset: 2656)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !332, file: !216, line: 717, baseType: !50, size: 32, offset: 2688)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !332, file: !216, line: 719, baseType: !50, size: 32, offset: 2720)
!5125 = !DIDerivedType(tag: DW_TAG_member, scope: !332, file: !216, line: 721, baseType: !5126, size: 64, offset: 2752)
!5126 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !332, file: !216, line: 721, size: 64, elements: !5127)
!5127 = !{!5128, !5129}
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !5126, file: !216, line: 722, baseType: !1136, size: 64)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !5126, file: !216, line: 723, baseType: !2297, size: 64)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !332, file: !216, line: 725, baseType: !5131, size: 64, offset: 2816)
!5131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5132, size: 64)
!5132 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !216, line: 725, flags: DIFlagFwdDecl)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !332, file: !216, line: 726, baseType: !328, size: 1536, align: 64, offset: 2880)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !332, file: !216, line: 727, baseType: !98, size: 128, offset: 4416)
!5135 = !DIDerivedType(tag: DW_TAG_member, scope: !332, file: !216, line: 728, baseType: !5136, size: 64, offset: 4544)
!5136 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !332, file: !216, line: 728, size: 64, elements: !5137)
!5137 = !{!5138, !5139, !5142, !5143}
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !5136, file: !216, line: 729, baseType: !1684, size: 64)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !5136, file: !216, line: 730, baseType: !5140, size: 64)
!5140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5141, size: 64)
!5141 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !216, line: 730, flags: DIFlagFwdDecl)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !5136, file: !216, line: 731, baseType: !472, size: 64)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !5136, file: !216, line: 732, baseType: !5, size: 32)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !332, file: !216, line: 735, baseType: !401, size: 32, offset: 4608)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !332, file: !216, line: 738, baseType: !401, size: 32, offset: 4640)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !332, file: !216, line: 739, baseType: !4829, size: 64, offset: 4672)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !332, file: !216, line: 750, baseType: !21, size: 64, offset: 4736)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !328, file: !216, line: 474, baseType: !3765, size: 128, offset: 64)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !328, file: !216, line: 475, baseType: !811, size: 320, offset: 192)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !328, file: !216, line: 476, baseType: !1549, size: 32, offset: 512)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !328, file: !216, line: 477, baseType: !50, size: 32, offset: 544)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !328, file: !216, line: 482, baseType: !1509, size: 128, offset: 576)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !328, file: !216, line: 483, baseType: !40, size: 64, offset: 704)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !328, file: !216, line: 484, baseType: !40, size: 64, offset: 768)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !328, file: !216, line: 485, baseType: !5156, size: 64, offset: 832)
!5156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5157, size: 64)
!5157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5158)
!5158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !216, line: 404, size: 1280, elements: !5159)
!5159 = !{!5160, !5164, !5168, !5172, !5176, !5192, !5197, !5201, !5205, !5209, !5213, !5217, !5218, !5222, !5226, !5230, !5235, !5239, !5291, !5292}
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !5158, file: !216, line: 405, baseType: !5161, size: 64)
!5161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5162, size: 64)
!5162 = !DISubroutineType(types: !5163)
!5163 = !{!23, !305, !2309}
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !5158, file: !216, line: 406, baseType: !5165, size: 64, offset: 64)
!5165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5166, size: 64)
!5166 = !DISubroutineType(types: !5167)
!5167 = !{!23, !645, !1178}
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !5158, file: !216, line: 409, baseType: !5169, size: 64, offset: 128)
!5169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5170, size: 64)
!5170 = !DISubroutineType(types: !5171)
!5171 = !{!23, !327, !2309}
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !5158, file: !216, line: 412, baseType: !5173, size: 64, offset: 192)
!5173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5174, size: 64)
!5174 = !DISubroutineType(types: !5175)
!5175 = !{!870, !327, !1178}
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !5158, file: !216, line: 414, baseType: !5177, size: 64, offset: 256)
!5177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5178, size: 64)
!5178 = !DISubroutineType(types: !5179)
!5179 = !{null, !5180}
!5180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5181, size: 64)
!5181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1175, line: 1276, size: 448, elements: !5182)
!5182 = !{!5183, !5184, !5185, !5187, !5188, !5189, !5190, !5191}
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !5181, file: !1175, line: 1277, baseType: !645, size: 64)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !5181, file: !1175, line: 1278, baseType: !327, size: 64, offset: 64)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !5181, file: !1175, line: 1279, baseType: !5186, size: 64, offset: 128)
!5186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !5181, file: !1175, line: 1281, baseType: !40, size: 64, offset: 192)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !5181, file: !1175, line: 1282, baseType: !5, size: 32, offset: 256)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !5181, file: !1175, line: 1283, baseType: !5, size: 32, offset: 288)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !5181, file: !1175, line: 1284, baseType: !870, size: 8, offset: 320)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !5181, file: !1175, line: 1285, baseType: !40, size: 64, offset: 384)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !5158, file: !216, line: 416, baseType: !5193, size: 64, offset: 320)
!5193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5194, size: 64)
!5194 = !DISubroutineType(types: !5195)
!5195 = !{!23, !645, !327, !42, !5, !5196, !1700}
!5196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !5158, file: !216, line: 419, baseType: !5198, size: 64, offset: 384)
!5198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5199, size: 64)
!5199 = !DISubroutineType(types: !5200)
!5200 = !{!23, !645, !327, !42, !5, !5, !305, !21}
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !5158, file: !216, line: 424, baseType: !5202, size: 64, offset: 448)
!5202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5203, size: 64)
!5203 = !DISubroutineType(types: !5204)
!5204 = !{!2592, !327, !2592}
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !5158, file: !216, line: 425, baseType: !5206, size: 64, offset: 512)
!5206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5207, size: 64)
!5207 = !DISubroutineType(types: !5208)
!5208 = !{null, !1178, !36, !36}
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !5158, file: !216, line: 426, baseType: !5210, size: 64, offset: 576)
!5210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5211, size: 64)
!5211 = !DISubroutineType(types: !5212)
!5212 = !{!870, !1178, !1549}
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !5158, file: !216, line: 427, baseType: !5214, size: 64, offset: 640)
!5214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5215, size: 64)
!5215 = !DISubroutineType(types: !5216)
!5216 = !{null, !1178}
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !5158, file: !216, line: 428, baseType: !1154, size: 64, offset: 704)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !5158, file: !216, line: 433, baseType: !5219, size: 64, offset: 768)
!5219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5220, size: 64)
!5220 = !DISubroutineType(types: !5221)
!5221 = !{!23, !327, !1178, !1178, !144}
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !5158, file: !216, line: 435, baseType: !5223, size: 64, offset: 832)
!5223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5224, size: 64)
!5224 = !DISubroutineType(types: !5225)
!5225 = !{!23, !1178}
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !5158, file: !216, line: 436, baseType: !5227, size: 64, offset: 896)
!5227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5228, size: 64)
!5228 = !DISubroutineType(types: !5229)
!5229 = !{!870, !1178, !36, !36}
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !5158, file: !216, line: 438, baseType: !5231, size: 64, offset: 960)
!5231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5232, size: 64)
!5232 = !DISubroutineType(types: !5233)
!5233 = !{null, !1178, !5234, !5234}
!5234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !5158, file: !216, line: 439, baseType: !5236, size: 64, offset: 1024)
!5236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5237, size: 64)
!5237 = !DISubroutineType(types: !5238)
!5238 = !{!23, !327, !305}
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !5158, file: !216, line: 442, baseType: !5240, size: 64, offset: 1088)
!5240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5241, size: 64)
!5241 = !DISubroutineType(types: !5242)
!5242 = !{!23, !5243, !645, !5290}
!5243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5244, size: 64)
!5244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !4150, line: 282, size: 2176, elements: !5245)
!5245 = !{!5246, !5247, !5248, !5249, !5250, !5251, !5252, !5254, !5261, !5266, !5267, !5268, !5269, !5270, !5271, !5272, !5273, !5279, !5280, !5281, !5282, !5283, !5284, !5285, !5286, !5287, !5288}
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !5244, file: !4150, line: 283, baseType: !3814, size: 128)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5244, file: !4150, line: 284, baseType: !40, size: 64, offset: 128)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !5244, file: !4150, line: 285, baseType: !839, size: 16, offset: 192)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5244, file: !4150, line: 286, baseType: !3379, size: 320, offset: 256)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5244, file: !4150, line: 287, baseType: !1999, size: 8, offset: 576)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !5244, file: !4150, line: 288, baseType: !5, size: 32, offset: 608)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "swap_map", scope: !5244, file: !4150, line: 289, baseType: !5253, size: 64, offset: 640)
!5253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_info", scope: !5244, file: !4150, line: 290, baseType: !5255, size: 64, offset: 704)
!5255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5256, size: 64)
!5256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_info", file: !4150, line: 250, size: 64, elements: !5257)
!5257 = !{!5258, !5259, !5260}
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5256, file: !4150, line: 251, baseType: !60, size: 32)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5256, file: !4150, line: 257, baseType: !5, size: 24, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5256, file: !4150, line: 258, baseType: !5, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !5244, file: !4150, line: 291, baseType: !5262, size: 128, offset: 768)
!5262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_list", file: !4150, line: 274, size: 128, elements: !5263)
!5263 = !{!5264, !5265}
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5262, file: !4150, line: 275, baseType: !5256, size: 64)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !5262, file: !4150, line: 276, baseType: !5256, size: 64, offset: 64)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_bit", scope: !5244, file: !4150, line: 292, baseType: !5, size: 32, offset: 896)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "highest_bit", scope: !5244, file: !4150, line: 293, baseType: !5, size: 32, offset: 928)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !5244, file: !4150, line: 294, baseType: !5, size: 32, offset: 960)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "inuse_pages", scope: !5244, file: !4150, line: 295, baseType: !5, size: 32, offset: 992)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next", scope: !5244, file: !4150, line: 296, baseType: !5, size: 32, offset: 1024)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_nr", scope: !5244, file: !4150, line: 297, baseType: !5, size: 32, offset: 1056)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next_cpu", scope: !5244, file: !4150, line: 298, baseType: !2020, size: 64, offset: 1088)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_cluster", scope: !5244, file: !4150, line: 299, baseType: !5274, size: 64, offset: 1152)
!5274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5275, size: 64)
!5275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_cluster", file: !4150, line: 269, size: 96, elements: !5276)
!5276 = !{!5277, !5278}
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5275, file: !4150, line: 270, baseType: !5256, size: 64)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5275, file: !4150, line: 271, baseType: !5, size: 32, offset: 64)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "swap_extent_root", scope: !5244, file: !4150, line: 300, baseType: !1083, size: 64, offset: 1216)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !5244, file: !4150, line: 301, baseType: !2587, size: 64, offset: 1280)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "swap_file", scope: !5244, file: !4150, line: 302, baseType: !645, size: 64, offset: 1344)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "old_block_size", scope: !5244, file: !4150, line: 303, baseType: !5, size: 32, offset: 1408)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !5244, file: !4150, line: 304, baseType: !1041, size: 256, offset: 1472)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5244, file: !4150, line: 305, baseType: !60, size: 32, offset: 1728)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "cont_lock", scope: !5244, file: !4150, line: 318, baseType: !60, size: 32, offset: 1760)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "discard_work", scope: !5244, file: !4150, line: 322, baseType: !1002, size: 256, offset: 1792)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "discard_clusters", scope: !5244, file: !4150, line: 323, baseType: !5262, size: 128, offset: 2048)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "avail_lists", scope: !5244, file: !4150, line: 324, baseType: !5289, offset: 2176)
!5289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3379, elements: !754)
!5290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !5158, file: !216, line: 444, baseType: !1692, size: 64, offset: 1152)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !5158, file: !216, line: 445, baseType: !5293, size: 64, offset: 1216)
!5293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5294, size: 64)
!5294 = !DISubroutineType(types: !5295)
!5295 = !{!23, !1157, !1262}
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !328, file: !216, line: 486, baseType: !40, size: 64, offset: 896)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !328, file: !216, line: 487, baseType: !811, size: 320, offset: 960)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !328, file: !216, line: 488, baseType: !1773, size: 32, offset: 1280)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !328, file: !216, line: 489, baseType: !60, size: 32, offset: 1312)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !328, file: !216, line: 490, baseType: !98, size: 128, offset: 1344)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !328, file: !216, line: 491, baseType: !21, size: 64, offset: 1472)
!5302 = !DIDerivedType(tag: DW_TAG_member, scope: !313, file: !124, line: 107, baseType: !5303, size: 64, offset: 192)
!5303 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !313, file: !124, line: 107, size: 64, elements: !5304)
!5304 = !{!5305, !5306}
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5303, file: !124, line: 108, baseType: !40, size: 64)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !5303, file: !124, line: 109, baseType: !40, size: 64)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !313, file: !124, line: 117, baseType: !40, size: 64, offset: 256)
!5308 = !DIDerivedType(tag: DW_TAG_member, scope: !310, file: !124, line: 119, baseType: !5309, size: 320)
!5309 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !310, file: !124, line: 119, size: 320, elements: !5310)
!5310 = !{!5311, !5312, !5315, !5316, !5317}
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !5309, file: !124, line: 124, baseType: !40, size: 64)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !5309, file: !124, line: 125, baseType: !5313, size: 64, offset: 64)
!5313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5314, size: 64)
!5314 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !124, line: 125, flags: DIFlagFwdDecl)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !5309, file: !124, line: 126, baseType: !40, size: 64, offset: 128)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !5309, file: !124, line: 127, baseType: !40, size: 64, offset: 192)
!5317 = !DIDerivedType(tag: DW_TAG_member, scope: !5309, file: !124, line: 128, baseType: !5318, size: 64, offset: 256)
!5318 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5309, file: !124, line: 128, size: 64, elements: !5319)
!5319 = !{!5320, !5321}
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !5318, file: !124, line: 133, baseType: !40, size: 64)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !5318, file: !124, line: 138, baseType: !671, size: 64)
!5322 = !DIDerivedType(tag: DW_TAG_member, scope: !310, file: !124, line: 141, baseType: !5323, size: 64)
!5323 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !310, file: !124, line: 141, size: 64, elements: !5324)
!5324 = !{!5325}
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !5323, file: !124, line: 142, baseType: !40, size: 64)
!5326 = !DIDerivedType(tag: DW_TAG_member, scope: !310, file: !124, line: 144, baseType: !5327, size: 128)
!5327 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !310, file: !124, line: 144, size: 128, elements: !5328)
!5328 = !{!5329, !5380}
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !5327, file: !124, line: 146, baseType: !5330, size: 64)
!5330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5331, size: 64)
!5331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !116, line: 126, size: 1216, elements: !5332)
!5332 = !{!5333, !5343, !5344, !5345, !5346, !5347, !5348, !5362, !5363, !5364}
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !5331, file: !116, line: 127, baseType: !5334, size: 384)
!5334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !116, line: 21, size: 384, elements: !5335)
!5335 = !{!5336, !5337, !5339, !5340, !5341, !5342}
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !5334, file: !116, line: 22, baseType: !40, size: 64)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !5334, file: !116, line: 23, baseType: !5338, size: 64, offset: 64)
!5338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !5334, file: !116, line: 24, baseType: !5338, size: 64, offset: 128)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5334, file: !116, line: 25, baseType: !40, size: 64, offset: 192)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !5334, file: !116, line: 26, baseType: !40, size: 64, offset: 256)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !5334, file: !116, line: 27, baseType: !40, size: 64, offset: 320)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5331, file: !116, line: 128, baseType: !3814, size: 128, offset: 384)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !5331, file: !116, line: 129, baseType: !1041, size: 256, offset: 512)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5331, file: !116, line: 130, baseType: !115, size: 32, offset: 768)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5331, file: !116, line: 131, baseType: !5, size: 32, offset: 800)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !5331, file: !116, line: 132, baseType: !40, size: 64, offset: 832)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5331, file: !116, line: 133, baseType: !5349, size: 64, offset: 896)
!5349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5350, size: 64)
!5350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5351)
!5351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !116, line: 77, size: 192, elements: !5352)
!5352 = !{!5353, !5357, !5358}
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !5351, file: !116, line: 83, baseType: !5354, size: 64)
!5354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5355, size: 64)
!5355 = !DISubroutineType(types: !5356)
!5356 = !{null, !305}
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !5351, file: !116, line: 89, baseType: !1537, size: 64, offset: 64)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !5351, file: !116, line: 100, baseType: !5359, size: 64, offset: 128)
!5359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5360, size: 64)
!5360 = !DISubroutineType(types: !5361)
!5361 = !{!23, !5330, !40, !40, !23}
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5331, file: !116, line: 134, baseType: !21, size: 64, offset: 960)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !5331, file: !116, line: 135, baseType: !23, size: 32, offset: 1024)
!5364 = !DIDerivedType(tag: DW_TAG_member, scope: !5331, file: !116, line: 136, baseType: !5365, size: 128, offset: 1088)
!5365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5331, file: !116, line: 136, size: 128, elements: !5366)
!5366 = !{!5367, !5373}
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !5365, file: !116, line: 137, baseType: !5368, size: 128)
!5368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !5369, line: 6, size: 128, elements: !5370)
!5369 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!5370 = !{!5371, !5372}
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5368, file: !5369, line: 7, baseType: !404, size: 64)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5368, file: !5369, line: 8, baseType: !404, size: 64, offset: 64)
!5373 = !DIDerivedType(tag: DW_TAG_member, scope: !5365, file: !116, line: 138, baseType: !5374)
!5374 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5365, file: !116, line: 138, elements: !5375)
!5375 = !{!5376, !5378}
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !5374, file: !116, line: 138, baseType: !5377)
!5377 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5374, file: !116, line: 138, elements: !1335)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !5374, file: !116, line: 138, baseType: !5379)
!5379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5368, elements: !754)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !5327, file: !124, line: 147, baseType: !21, size: 64, offset: 64)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !310, file: !124, line: 161, baseType: !658, size: 128, align: 64)
!5382 = !DIDerivedType(tag: DW_TAG_member, scope: !306, file: !124, line: 164, baseType: !5383, size: 32, offset: 384)
!5383 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !306, file: !124, line: 164, size: 32, elements: !5384)
!5384 = !{!5385, !5386}
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !5383, file: !124, line: 169, baseType: !50, size: 32)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !5383, file: !124, line: 177, baseType: !5, size: 32)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !306, file: !124, line: 181, baseType: !50, size: 32, offset: 416)
!5388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5389, size: 64)
!5389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptdesc", file: !124, line: 412, size: 448, elements: !5390)
!5390 = !{!5391, !5392, !5402, !5403, !5408, !5413, !5414}
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "__page_flags", scope: !5389, file: !124, line: 413, baseType: !40, size: 64)
!5392 = !DIDerivedType(tag: DW_TAG_member, scope: !5389, file: !124, line: 415, baseType: !5393, size: 128, offset: 64)
!5393 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5389, file: !124, line: 415, size: 128, elements: !5394)
!5394 = !{!5395, !5396, !5397}
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "pt_rcu_head", scope: !5393, file: !124, line: 416, baseType: !658, size: 128, align: 64)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "pt_list", scope: !5393, file: !124, line: 417, baseType: !98, size: 128)
!5397 = !DIDerivedType(tag: DW_TAG_member, scope: !5393, file: !124, line: 418, baseType: !5398, size: 128)
!5398 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5393, file: !124, line: 418, size: 128, elements: !5399)
!5399 = !{!5400, !5401}
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !5398, file: !124, line: 419, baseType: !40, size: 64)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !5398, file: !124, line: 420, baseType: !1585, size: 64, offset: 64)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "__page_mapping", scope: !5389, file: !124, line: 423, baseType: !40, size: 64, offset: 192)
!5403 = !DIDerivedType(tag: DW_TAG_member, scope: !5389, file: !124, line: 425, baseType: !5404, size: 64, offset: 256)
!5404 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5389, file: !124, line: 425, size: 64, elements: !5405)
!5405 = !{!5406, !5407}
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !5404, file: !124, line: 426, baseType: !1314, size: 64)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !5404, file: !124, line: 427, baseType: !50, size: 32)
!5408 = !DIDerivedType(tag: DW_TAG_member, scope: !5389, file: !124, line: 433, baseType: !5409, size: 64, offset: 320)
!5409 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5389, file: !124, line: 433, size: 64, elements: !5410)
!5410 = !{!5411, !5412}
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !5409, file: !124, line: 434, baseType: !40, size: 64)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !5409, file: !124, line: 438, baseType: !60, size: 32)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "__page_type", scope: !5389, file: !124, line: 441, baseType: !5, size: 32, offset: 384)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !5389, file: !124, line: 442, baseType: !50, size: 32, offset: 416)
!5415 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !26, line: 159, baseType: !404)
!5416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5417, size: 64)
!5417 = !DIDerivedType(tag: DW_TAG_typedef, name: "p4d_t", file: !1350, line: 346, baseType: !5418)
!5418 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1350, line: 346, size: 64, elements: !5419)
!5419 = !{!5420}
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "p4d", scope: !5418, file: !1350, line: 346, baseType: !5421, size: 64)
!5421 = !DIDerivedType(tag: DW_TAG_typedef, name: "p4dval_t", file: !1355, line: 17, baseType: !40)
!5422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5423, size: 64)
!5423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5424)
!5424 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1556)
!5425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5426, size: 64)
!5426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5427)
!5427 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1572)
!5428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5429, size: 64)
!5429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1179)
!5430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5431, size: 64)
!5431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5432)
!5432 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !40)
!5433 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !26, line: 42, baseType: !40)
!5434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5338, size: 64)
!5435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5436, size: 64)
!5436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !306)
!5437 = !{i32 7, !"Dwarf Version", i32 5}
!5438 = !{i32 2, !"Debug Info Version", i32 3}
!5439 = !{i32 1, !"wchar_size", i32 2}
!5440 = !{i32 8, !"cf-protection-branch", i32 1}
!5441 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5442 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5443 = !{i32 1, !"Code Model", i32 2}
!5444 = !{i32 1, !"override-stack-alignment", i32 8}
!5445 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5446 = distinct !DISubprogram(name: "page_vma_mapped_walk", scope: !1, file: !1, line: 173, type: !5447, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5461)
!5447 = !DISubroutineType(types: !5448)
!5448 = !{!870, !5449}
!5449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5450, size: 64)
!5450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_vma_mapped_walk", file: !1500, line: 383, size: 576, elements: !5451)
!5451 = !{!5452, !5453, !5454, !5455, !5456, !5457, !5458, !5459, !5460}
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "pfn", scope: !5450, file: !1500, line: 384, baseType: !40, size: 64)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !5450, file: !1500, line: 385, baseType: !40, size: 64, offset: 64)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !5450, file: !1500, line: 386, baseType: !40, size: 64, offset: 128)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !5450, file: !1500, line: 387, baseType: !1301, size: 64, offset: 192)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5450, file: !1500, line: 388, baseType: !40, size: 64, offset: 256)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !5450, file: !1500, line: 389, baseType: !1555, size: 64, offset: 320)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !5450, file: !1500, line: 390, baseType: !1581, size: 64, offset: 384)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !5450, file: !1500, line: 391, baseType: !1583, size: 64, offset: 448)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5450, file: !1500, line: 392, baseType: !5, size: 32, offset: 512)
!5461 = !{!5462, !5463, !5464, !5465, !5466, !5467, !5468, !5469, !5470, !5471, !5504, !5505, !5506, !5512, !5517, !5518}
!5462 = !DILocalVariable(name: "pvmw", arg: 1, scope: !5446, file: !1, line: 173, type: !5449)
!5463 = !DILocalVariable(name: "vma", scope: !5446, file: !1, line: 175, type: !1301)
!5464 = !DILocalVariable(name: "mm", scope: !5446, file: !1, line: 176, type: !1314)
!5465 = !DILocalVariable(name: "end", scope: !5446, file: !1, line: 177, type: !40)
!5466 = !DILocalVariable(name: "ptl", scope: !5446, file: !1, line: 178, type: !1583)
!5467 = !DILocalVariable(name: "pgd", scope: !5446, file: !1, line: 179, type: !1348)
!5468 = !DILocalVariable(name: "p4d", scope: !5446, file: !1, line: 180, type: !5416)
!5469 = !DILocalVariable(name: "pud", scope: !5446, file: !1, line: 181, type: !1562)
!5470 = !DILocalVariable(name: "pmde", scope: !5446, file: !1, line: 182, type: !1556)
!5471 = !DILocalVariable(name: "hstate", scope: !5472, file: !1, line: 189, type: !5474)
!5472 = distinct !DILexicalBlock(scope: !5473, file: !1, line: 188, column: 41)
!5473 = distinct !DILexicalBlock(scope: !5446, file: !1, line: 188, column: 6)
!5474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5475, size: 64)
!5475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hstate", file: !5476, line: 714, size: 48704, elements: !5477)
!5476 = !DIFile(filename: "./include/linux/hugetlb.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb3875c3ba49a7a26cb8998ef59b94dc")
!5477 = !{!5478, !5479, !5480, !5481, !5482, !5483, !5484, !5485, !5486, !5487, !5488, !5489, !5490, !5491, !5492, !5494, !5496, !5497, !5498, !5499, !5501, !5503}
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "resize_lock", scope: !5475, file: !5476, line: 715, baseType: !680, size: 256)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "resize_key", scope: !5475, file: !5476, line: 716, baseType: !2278, offset: 256)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "next_nid_to_alloc", scope: !5475, file: !5476, line: 717, baseType: !23, size: 32, offset: 256)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "next_nid_to_free", scope: !5475, file: !5476, line: 718, baseType: !23, size: 32, offset: 288)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !5475, file: !5476, line: 719, baseType: !5, size: 32, offset: 320)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "demote_order", scope: !5475, file: !5476, line: 720, baseType: !5, size: 32, offset: 352)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !5475, file: !5476, line: 721, baseType: !40, size: 64, offset: 384)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "max_huge_pages", scope: !5475, file: !5476, line: 722, baseType: !40, size: 64, offset: 448)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "nr_huge_pages", scope: !5475, file: !5476, line: 723, baseType: !40, size: 64, offset: 512)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "free_huge_pages", scope: !5475, file: !5476, line: 724, baseType: !40, size: 64, offset: 576)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "resv_huge_pages", scope: !5475, file: !5476, line: 725, baseType: !40, size: 64, offset: 640)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "surplus_huge_pages", scope: !5475, file: !5476, line: 726, baseType: !40, size: 64, offset: 704)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "nr_overcommit_huge_pages", scope: !5475, file: !5476, line: 727, baseType: !40, size: 64, offset: 768)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "hugepage_activelist", scope: !5475, file: !5476, line: 728, baseType: !98, size: 128, offset: 832)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "hugepage_freelists", scope: !5475, file: !5476, line: 729, baseType: !5493, size: 8192, offset: 960)
!5493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 8192, elements: !576)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "max_huge_pages_node", scope: !5475, file: !5476, line: 730, baseType: !5495, size: 2048, offset: 9152)
!5495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 2048, elements: !576)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "nr_huge_pages_node", scope: !5475, file: !5476, line: 731, baseType: !5495, size: 2048, offset: 11200)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "free_huge_pages_node", scope: !5475, file: !5476, line: 732, baseType: !5495, size: 2048, offset: 13248)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "surplus_huge_pages_node", scope: !5475, file: !5476, line: 733, baseType: !5495, size: 2048, offset: 15296)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_files_dfl", scope: !5475, file: !5476, line: 736, baseType: !5500, size: 13824, offset: 17344)
!5500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3776, size: 13824, elements: !2867)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_files_legacy", scope: !5475, file: !5476, line: 737, baseType: !5502, size: 17280, offset: 31168)
!5502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3776, size: 17280, elements: !1097)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5475, file: !5476, line: 739, baseType: !4014, size: 256, offset: 48448)
!5504 = !DILocalVariable(name: "size", scope: !5472, file: !1, line: 190, type: !40)
!5505 = !DILabel(scope: !5446, name: "restart", file: !1, line: 212)
!5506 = !DILocalVariable(name: "entry", scope: !5507, file: !1, line: 243, type: !1204)
!5507 = distinct !DILexicalBlock(scope: !5508, file: !1, line: 242, column: 28)
!5508 = distinct !DILexicalBlock(scope: !5509, file: !1, line: 242, column: 8)
!5509 = distinct !DILexicalBlock(scope: !5510, file: !1, line: 239, column: 48)
!5510 = distinct !DILexicalBlock(scope: !5511, file: !1, line: 238, column: 7)
!5511 = distinct !DILexicalBlock(scope: !5446, file: !1, line: 213, column: 5)
!5512 = !DILocalVariable(name: "ptl", scope: !5513, file: !1, line: 273, type: !1583)
!5513 = distinct !DILexicalBlock(scope: !5514, file: !1, line: 272, column: 42)
!5514 = distinct !DILexicalBlock(scope: !5515, file: !1, line: 270, column: 8)
!5515 = distinct !DILexicalBlock(scope: !5516, file: !1, line: 264, column: 34)
!5516 = distinct !DILexicalBlock(scope: !5510, file: !1, line: 264, column: 14)
!5517 = !DILabel(scope: !5511, name: "this_pte", file: !1, line: 285)
!5518 = !DILabel(scope: !5511, name: "next_pte", file: !1, line: 288)
!5519 = !DILocation(line: 173, column: 56, scope: !5446)
!5520 = !DILocation(line: 175, column: 2, scope: !5446)
!5521 = !DILocation(line: 175, column: 25, scope: !5446)
!5522 = !DILocation(line: 175, column: 31, scope: !5446)
!5523 = !DILocation(line: 175, column: 37, scope: !5446)
!5524 = !DILocation(line: 176, column: 2, scope: !5446)
!5525 = !DILocation(line: 176, column: 20, scope: !5446)
!5526 = !DILocation(line: 176, column: 25, scope: !5446)
!5527 = !DILocation(line: 176, column: 30, scope: !5446)
!5528 = !DILocation(line: 177, column: 2, scope: !5446)
!5529 = !DILocation(line: 177, column: 16, scope: !5446)
!5530 = !DILocation(line: 178, column: 2, scope: !5446)
!5531 = !DILocation(line: 178, column: 14, scope: !5446)
!5532 = !DILocation(line: 179, column: 2, scope: !5446)
!5533 = !DILocation(line: 179, column: 9, scope: !5446)
!5534 = !DILocation(line: 180, column: 2, scope: !5446)
!5535 = !DILocation(line: 180, column: 9, scope: !5446)
!5536 = !DILocation(line: 181, column: 2, scope: !5446)
!5537 = !DILocation(line: 181, column: 9, scope: !5446)
!5538 = !DILocation(line: 182, column: 2, scope: !5446)
!5539 = !DILocation(line: 182, column: 8, scope: !5446)
!5540 = !DILocation(line: 185, column: 6, scope: !5541)
!5541 = distinct !DILexicalBlock(scope: !5446, file: !1, line: 185, column: 6)
!5542 = !DILocation(line: 185, column: 12, scope: !5541)
!5543 = !DILocation(line: 185, column: 16, scope: !5541)
!5544 = !DILocation(line: 185, column: 20, scope: !5541)
!5545 = !DILocation(line: 185, column: 26, scope: !5541)
!5546 = !DILocation(line: 185, column: 6, scope: !5446)
!5547 = !DILocation(line: 186, column: 20, scope: !5541)
!5548 = !DILocation(line: 186, column: 10, scope: !5541)
!5549 = !DILocation(line: 186, column: 3, scope: !5541)
!5550 = !DILocation(line: 188, column: 6, scope: !5473)
!5551 = !DILocation(line: 188, column: 6, scope: !5446)
!5552 = !DILocation(line: 189, column: 3, scope: !5472)
!5553 = !DILocation(line: 189, column: 18, scope: !5472)
!5554 = !DILocation(line: 189, column: 38, scope: !5472)
!5555 = !DILocation(line: 189, column: 27, scope: !5472)
!5556 = !DILocation(line: 190, column: 3, scope: !5472)
!5557 = !DILocation(line: 190, column: 17, scope: !5472)
!5558 = !DILocation(line: 190, column: 39, scope: !5472)
!5559 = !DILocation(line: 190, column: 24, scope: !5472)
!5560 = !DILocation(line: 192, column: 7, scope: !5561)
!5561 = distinct !DILexicalBlock(scope: !5472, file: !1, line: 192, column: 7)
!5562 = !DILocation(line: 192, column: 13, scope: !5561)
!5563 = !DILocation(line: 192, column: 7, scope: !5472)
!5564 = !DILocation(line: 193, column: 21, scope: !5561)
!5565 = !DILocation(line: 193, column: 11, scope: !5561)
!5566 = !DILocation(line: 193, column: 4, scope: !5561)
!5567 = !DILocation(line: 199, column: 28, scope: !5472)
!5568 = !DILocation(line: 199, column: 33, scope: !5472)
!5569 = !DILocation(line: 199, column: 39, scope: !5472)
!5570 = !DILocation(line: 199, column: 48, scope: !5472)
!5571 = !DILocation(line: 199, column: 15, scope: !5472)
!5572 = !DILocation(line: 199, column: 3, scope: !5472)
!5573 = !DILocation(line: 199, column: 9, scope: !5472)
!5574 = !DILocation(line: 199, column: 13, scope: !5472)
!5575 = !DILocation(line: 200, column: 8, scope: !5576)
!5576 = distinct !DILexicalBlock(scope: !5472, file: !1, line: 200, column: 7)
!5577 = !DILocation(line: 200, column: 14, scope: !5576)
!5578 = !DILocation(line: 200, column: 7, scope: !5472)
!5579 = !DILocation(line: 201, column: 4, scope: !5576)
!5580 = !DILocation(line: 203, column: 29, scope: !5472)
!5581 = !DILocation(line: 203, column: 37, scope: !5472)
!5582 = !DILocation(line: 203, column: 41, scope: !5472)
!5583 = !DILocation(line: 203, column: 47, scope: !5472)
!5584 = !DILocation(line: 203, column: 15, scope: !5472)
!5585 = !DILocation(line: 203, column: 3, scope: !5472)
!5586 = !DILocation(line: 203, column: 9, scope: !5472)
!5587 = !DILocation(line: 203, column: 13, scope: !5472)
!5588 = !DILocation(line: 204, column: 18, scope: !5589)
!5589 = distinct !DILexicalBlock(scope: !5472, file: !1, line: 204, column: 7)
!5590 = !DILocation(line: 204, column: 8, scope: !5589)
!5591 = !DILocation(line: 204, column: 7, scope: !5472)
!5592 = !DILocation(line: 205, column: 21, scope: !5589)
!5593 = !DILocation(line: 205, column: 11, scope: !5589)
!5594 = !DILocation(line: 205, column: 4, scope: !5589)
!5595 = !DILocation(line: 206, column: 3, scope: !5472)
!5596 = !DILocation(line: 207, column: 2, scope: !5473)
!5597 = !DILocation(line: 209, column: 24, scope: !5446)
!5598 = !DILocation(line: 209, column: 8, scope: !5446)
!5599 = !DILocation(line: 209, column: 6, scope: !5446)
!5600 = !DILocation(line: 210, column: 6, scope: !5601)
!5601 = distinct !DILexicalBlock(scope: !5446, file: !1, line: 210, column: 6)
!5602 = !DILocation(line: 210, column: 12, scope: !5601)
!5603 = !DILocation(line: 210, column: 6, scope: !5446)
!5604 = !DILocation(line: 211, column: 3, scope: !5601)
!5605 = !DILocation(line: 212, column: 1, scope: !5446)
!5606 = !DILocation(line: 213, column: 2, scope: !5446)
!5607 = !DILocation(line: 214, column: 9, scope: !5511)
!5608 = !DILocation(line: 214, column: 7, scope: !5511)
!5609 = !DILocation(line: 215, column: 21, scope: !5610)
!5610 = distinct !DILexicalBlock(scope: !5511, file: !1, line: 215, column: 7)
!5611 = !DILocation(line: 215, column: 8, scope: !5610)
!5612 = !DILocation(line: 215, column: 7, scope: !5511)
!5613 = !DILocation(line: 216, column: 17, scope: !5614)
!5614 = distinct !DILexicalBlock(scope: !5610, file: !1, line: 215, column: 27)
!5615 = !DILocation(line: 216, column: 23, scope: !5614)
!5616 = !DILocation(line: 216, column: 4, scope: !5614)
!5617 = !DILocation(line: 217, column: 4, scope: !5614)
!5618 = !DILocation(line: 219, column: 20, scope: !5511)
!5619 = !DILocation(line: 219, column: 25, scope: !5511)
!5620 = !DILocation(line: 219, column: 31, scope: !5511)
!5621 = !DILocation(line: 219, column: 9, scope: !5511)
!5622 = !DILocation(line: 219, column: 7, scope: !5511)
!5623 = !DILocation(line: 220, column: 21, scope: !5624)
!5624 = distinct !DILexicalBlock(scope: !5511, file: !1, line: 220, column: 7)
!5625 = !DILocation(line: 220, column: 8, scope: !5624)
!5626 = !DILocation(line: 220, column: 7, scope: !5511)
!5627 = !DILocation(line: 221, column: 17, scope: !5628)
!5628 = distinct !DILexicalBlock(scope: !5624, file: !1, line: 220, column: 27)
!5629 = !DILocation(line: 221, column: 4, scope: !5628)
!5630 = !DILocation(line: 222, column: 4, scope: !5628)
!5631 = !DILocation(line: 224, column: 20, scope: !5511)
!5632 = !DILocation(line: 224, column: 25, scope: !5511)
!5633 = !DILocation(line: 224, column: 31, scope: !5511)
!5634 = !DILocation(line: 224, column: 9, scope: !5511)
!5635 = !DILocation(line: 224, column: 7, scope: !5511)
!5636 = !DILocation(line: 225, column: 21, scope: !5637)
!5637 = distinct !DILexicalBlock(scope: !5511, file: !1, line: 225, column: 7)
!5638 = !DILocation(line: 225, column: 8, scope: !5637)
!5639 = !DILocation(line: 225, column: 7, scope: !5511)
!5640 = !DILocation(line: 226, column: 17, scope: !5641)
!5641 = distinct !DILexicalBlock(scope: !5637, file: !1, line: 225, column: 27)
!5642 = !DILocation(line: 226, column: 4, scope: !5641)
!5643 = !DILocation(line: 227, column: 4, scope: !5641)
!5644 = !DILocation(line: 230, column: 26, scope: !5511)
!5645 = !DILocation(line: 230, column: 31, scope: !5511)
!5646 = !DILocation(line: 230, column: 37, scope: !5511)
!5647 = !DILocation(line: 230, column: 15, scope: !5511)
!5648 = !DILocation(line: 230, column: 3, scope: !5511)
!5649 = !DILocation(line: 230, column: 9, scope: !5511)
!5650 = !DILocation(line: 230, column: 13, scope: !5511)
!5651 = !DILocation(line: 236, column: 10, scope: !5511)
!5652 = !DILocation(line: 236, column: 28, scope: !5511)
!5653 = !DILocation(line: 236, column: 34, scope: !5511)
!5654 = !DILocation(line: 238, column: 7, scope: !5510)
!5655 = !DILocation(line: 238, column: 28, scope: !5510)
!5656 = !DILocation(line: 238, column: 31, scope: !5510)
!5657 = !DILocation(line: 238, column: 60, scope: !5510)
!5658 = !DILocation(line: 239, column: 8, scope: !5510)
!5659 = !DILocation(line: 239, column: 26, scope: !5510)
!5660 = !DILocation(line: 239, column: 29, scope: !5510)
!5661 = !DILocation(line: 238, column: 7, scope: !5511)
!5662 = !DILocation(line: 240, column: 25, scope: !5509)
!5663 = !DILocation(line: 240, column: 29, scope: !5509)
!5664 = !DILocation(line: 240, column: 35, scope: !5509)
!5665 = !DILocation(line: 240, column: 16, scope: !5509)
!5666 = !DILocation(line: 240, column: 4, scope: !5509)
!5667 = !DILocation(line: 240, column: 10, scope: !5509)
!5668 = !DILocation(line: 240, column: 14, scope: !5509)
!5669 = !DILocation(line: 241, column: 12, scope: !5509)
!5670 = !DILocation(line: 241, column: 18, scope: !5509)
!5671 = !DILocation(line: 241, column: 11, scope: !5509)
!5672 = !DILocation(line: 242, column: 9, scope: !5508)
!5673 = !DILocation(line: 242, column: 8, scope: !5509)
!5674 = !DILocation(line: 243, column: 5, scope: !5507)
!5675 = !DILocation(line: 243, column: 17, scope: !5507)
!5676 = !DILocation(line: 245, column: 10, scope: !5677)
!5677 = distinct !DILexicalBlock(scope: !5507, file: !1, line: 245, column: 9)
!5678 = !DILocation(line: 245, column: 36, scope: !5677)
!5679 = !DILocation(line: 246, column: 11, scope: !5677)
!5680 = !DILocation(line: 246, column: 17, scope: !5677)
!5681 = !DILocation(line: 246, column: 23, scope: !5677)
!5682 = !DILocation(line: 245, column: 9, scope: !5507)
!5683 = !DILocation(line: 247, column: 23, scope: !5677)
!5684 = !DILocation(line: 247, column: 13, scope: !5677)
!5685 = !DILocation(line: 247, column: 6, scope: !5677)
!5686 = !DILocation(line: 248, column: 13, scope: !5507)
!5687 = !DILocation(line: 249, column: 10, scope: !5688)
!5688 = distinct !DILexicalBlock(scope: !5507, file: !1, line: 249, column: 9)
!5689 = !DILocation(line: 249, column: 36, scope: !5688)
!5690 = !DILocation(line: 250, column: 20, scope: !5688)
!5691 = !DILocation(line: 250, column: 43, scope: !5688)
!5692 = !DILocation(line: 250, column: 10, scope: !5688)
!5693 = !DILocation(line: 249, column: 9, scope: !5507)
!5694 = !DILocation(line: 251, column: 23, scope: !5688)
!5695 = !DILocation(line: 251, column: 13, scope: !5688)
!5696 = !DILocation(line: 251, column: 6, scope: !5688)
!5697 = !DILocation(line: 252, column: 5, scope: !5507)
!5698 = !DILocation(line: 253, column: 4, scope: !5508)
!5699 = !DILocation(line: 254, column: 8, scope: !5700)
!5700 = distinct !DILexicalBlock(scope: !5509, file: !1, line: 254, column: 8)
!5701 = !DILocation(line: 254, column: 8, scope: !5509)
!5702 = !DILocation(line: 255, column: 9, scope: !5703)
!5703 = distinct !DILexicalBlock(scope: !5704, file: !1, line: 255, column: 9)
!5704 = distinct !DILexicalBlock(scope: !5700, file: !1, line: 254, column: 58)
!5705 = !DILocation(line: 255, column: 15, scope: !5703)
!5706 = !DILocation(line: 255, column: 21, scope: !5703)
!5707 = !DILocation(line: 255, column: 9, scope: !5704)
!5708 = !DILocation(line: 256, column: 23, scope: !5703)
!5709 = !DILocation(line: 256, column: 13, scope: !5703)
!5710 = !DILocation(line: 256, column: 6, scope: !5703)
!5711 = !DILocation(line: 257, column: 20, scope: !5712)
!5712 = distinct !DILexicalBlock(scope: !5704, file: !1, line: 257, column: 9)
!5713 = !DILocation(line: 257, column: 35, scope: !5712)
!5714 = !DILocation(line: 257, column: 10, scope: !5712)
!5715 = !DILocation(line: 257, column: 9, scope: !5704)
!5716 = !DILocation(line: 258, column: 23, scope: !5712)
!5717 = !DILocation(line: 258, column: 13, scope: !5712)
!5718 = !DILocation(line: 258, column: 6, scope: !5712)
!5719 = !DILocation(line: 259, column: 5, scope: !5704)
!5720 = !DILocation(line: 262, column: 16, scope: !5509)
!5721 = !DILocation(line: 262, column: 22, scope: !5509)
!5722 = !DILocation(line: 262, column: 4, scope: !5509)
!5723 = !DILocation(line: 263, column: 4, scope: !5509)
!5724 = !DILocation(line: 263, column: 10, scope: !5509)
!5725 = !DILocation(line: 263, column: 14, scope: !5509)
!5726 = !DILocation(line: 264, column: 3, scope: !5509)
!5727 = !DILocation(line: 264, column: 15, scope: !5516)
!5728 = !DILocation(line: 264, column: 14, scope: !5510)
!5729 = !DILocation(line: 270, column: 9, scope: !5514)
!5730 = !DILocation(line: 270, column: 15, scope: !5514)
!5731 = !DILocation(line: 270, column: 21, scope: !5514)
!5732 = !DILocation(line: 270, column: 34, scope: !5514)
!5733 = !DILocation(line: 271, column: 31, scope: !5514)
!5734 = !DILocation(line: 271, column: 36, scope: !5514)
!5735 = !DILocation(line: 271, column: 42, scope: !5514)
!5736 = !DILocation(line: 271, column: 8, scope: !5514)
!5737 = !DILocation(line: 271, column: 51, scope: !5514)
!5738 = !DILocation(line: 272, column: 9, scope: !5514)
!5739 = !DILocation(line: 272, column: 15, scope: !5514)
!5740 = !DILocation(line: 272, column: 27, scope: !5741)
!5741 = distinct !DILexicalBlock(scope: !5514, file: !1, line: 272, column: 27)
!5742 = !DILocation(line: 272, column: 27, scope: !5743)
!5743 = distinct !DILexicalBlock(scope: !5744, file: !1, line: 272, column: 27)
!5744 = distinct !DILexicalBlock(scope: !5741, file: !1, line: 272, column: 27)
!5745 = !{i32 -2139494910}
!5746 = !DILocation(line: 272, column: 27, scope: !5744)
!5747 = !DILocation(line: 272, column: 27, scope: !5514)
!5748 = !DILocation(line: 272, column: 24, scope: !5514)
!5749 = !DILocation(line: 270, column: 8, scope: !5515)
!5750 = !DILocation(line: 273, column: 5, scope: !5513)
!5751 = !DILocation(line: 273, column: 17, scope: !5513)
!5752 = !DILocation(line: 273, column: 32, scope: !5513)
!5753 = !DILocation(line: 273, column: 36, scope: !5513)
!5754 = !DILocation(line: 273, column: 42, scope: !5513)
!5755 = !DILocation(line: 273, column: 23, scope: !5513)
!5756 = !DILocation(line: 275, column: 17, scope: !5513)
!5757 = !DILocation(line: 275, column: 5, scope: !5513)
!5758 = !DILocation(line: 276, column: 4, scope: !5514)
!5759 = !DILocation(line: 276, column: 4, scope: !5513)
!5760 = !DILocation(line: 277, column: 17, scope: !5515)
!5761 = !DILocation(line: 277, column: 4, scope: !5515)
!5762 = !DILocation(line: 278, column: 4, scope: !5515)
!5763 = !DILocation(line: 280, column: 16, scope: !5764)
!5764 = distinct !DILexicalBlock(scope: !5511, file: !1, line: 280, column: 7)
!5765 = !DILocation(line: 280, column: 8, scope: !5764)
!5766 = !DILocation(line: 280, column: 7, scope: !5511)
!5767 = !DILocation(line: 281, column: 9, scope: !5768)
!5768 = distinct !DILexicalBlock(scope: !5769, file: !1, line: 281, column: 8)
!5769 = distinct !DILexicalBlock(scope: !5764, file: !1, line: 280, column: 29)
!5770 = !DILocation(line: 281, column: 15, scope: !5768)
!5771 = !DILocation(line: 281, column: 8, scope: !5769)
!5772 = !DILocation(line: 282, column: 5, scope: !5768)
!5773 = !DILocation(line: 283, column: 4, scope: !5769)
!5774 = !DILocation(line: 280, column: 26, scope: !5764)
!5775 = !DILocation(line: 285, column: 1, scope: !5511)
!5776 = !DILocation(line: 286, column: 17, scope: !5777)
!5777 = distinct !DILexicalBlock(scope: !5511, file: !1, line: 286, column: 7)
!5778 = !DILocation(line: 286, column: 7, scope: !5777)
!5779 = !DILocation(line: 286, column: 7, scope: !5511)
!5780 = !DILocation(line: 287, column: 4, scope: !5777)
!5781 = !DILocation(line: 286, column: 21, scope: !5777)
!5782 = !DILocation(line: 288, column: 1, scope: !5511)
!5783 = !DILocation(line: 289, column: 3, scope: !5511)
!5784 = !DILocation(line: 290, column: 4, scope: !5785)
!5785 = distinct !DILexicalBlock(scope: !5511, file: !1, line: 289, column: 6)
!5786 = !DILocation(line: 290, column: 10, scope: !5785)
!5787 = !DILocation(line: 290, column: 18, scope: !5785)
!5788 = !DILocation(line: 291, column: 8, scope: !5789)
!5789 = distinct !DILexicalBlock(scope: !5785, file: !1, line: 291, column: 8)
!5790 = !DILocation(line: 291, column: 14, scope: !5789)
!5791 = !DILocation(line: 291, column: 25, scope: !5789)
!5792 = !DILocation(line: 291, column: 22, scope: !5789)
!5793 = !DILocation(line: 291, column: 8, scope: !5785)
!5794 = !DILocation(line: 292, column: 22, scope: !5789)
!5795 = !DILocation(line: 292, column: 12, scope: !5789)
!5796 = !DILocation(line: 292, column: 5, scope: !5789)
!5797 = !DILocation(line: 294, column: 9, scope: !5798)
!5798 = distinct !DILexicalBlock(scope: !5785, file: !1, line: 294, column: 8)
!5799 = !DILocation(line: 294, column: 15, scope: !5798)
!5800 = !DILocation(line: 294, column: 23, scope: !5798)
!5801 = !DILocation(line: 294, column: 49, scope: !5798)
!5802 = !DILocation(line: 294, column: 8, scope: !5785)
!5803 = !DILocation(line: 295, column: 9, scope: !5804)
!5804 = distinct !DILexicalBlock(scope: !5805, file: !1, line: 295, column: 9)
!5805 = distinct !DILexicalBlock(scope: !5798, file: !1, line: 294, column: 55)
!5806 = !DILocation(line: 295, column: 15, scope: !5804)
!5807 = !DILocation(line: 295, column: 9, scope: !5805)
!5808 = !DILocation(line: 296, column: 18, scope: !5809)
!5809 = distinct !DILexicalBlock(scope: !5804, file: !1, line: 295, column: 20)
!5810 = !DILocation(line: 296, column: 24, scope: !5809)
!5811 = !DILocation(line: 296, column: 6, scope: !5809)
!5812 = !DILocation(line: 297, column: 6, scope: !5809)
!5813 = !DILocation(line: 297, column: 12, scope: !5809)
!5814 = !DILocation(line: 297, column: 16, scope: !5809)
!5815 = !DILocation(line: 298, column: 5, scope: !5809)
!5816 = !DILocation(line: 299, column: 15, scope: !5805)
!5817 = !DILocation(line: 299, column: 21, scope: !5805)
!5818 = !DILocation(line: 299, column: 5, scope: !5805)
!5819 = !DILocation(line: 300, column: 5, scope: !5805)
!5820 = !DILocation(line: 300, column: 11, scope: !5805)
!5821 = !DILocation(line: 300, column: 15, scope: !5805)
!5822 = !DILocation(line: 301, column: 5, scope: !5805)
!5823 = !DILocation(line: 303, column: 4, scope: !5785)
!5824 = !DILocation(line: 303, column: 10, scope: !5785)
!5825 = !DILocation(line: 303, column: 13, scope: !5785)
!5826 = !DILocation(line: 304, column: 3, scope: !5785)
!5827 = !DILocation(line: 304, column: 30, scope: !5511)
!5828 = !DILocation(line: 304, column: 36, scope: !5511)
!5829 = !DILocation(line: 304, column: 21, scope: !5511)
!5830 = !DILocation(line: 304, column: 12, scope: !5511)
!5831 = distinct !{!5831, !5783, !5832, !5833, !5834}
!5832 = !DILocation(line: 304, column: 41, scope: !5511)
!5833 = !{!"llvm.loop.mustprogress"}
!5834 = !{!"llvm.loop.unroll.disable"}
!5835 = !DILocation(line: 306, column: 8, scope: !5836)
!5836 = distinct !DILexicalBlock(scope: !5511, file: !1, line: 306, column: 7)
!5837 = !DILocation(line: 306, column: 14, scope: !5836)
!5838 = !DILocation(line: 306, column: 7, scope: !5511)
!5839 = !DILocation(line: 307, column: 16, scope: !5840)
!5840 = distinct !DILexicalBlock(scope: !5836, file: !1, line: 306, column: 19)
!5841 = !DILocation(line: 307, column: 4, scope: !5840)
!5842 = !DILocation(line: 307, column: 10, scope: !5840)
!5843 = !DILocation(line: 307, column: 14, scope: !5840)
!5844 = !DILocation(line: 308, column: 14, scope: !5840)
!5845 = !DILocation(line: 308, column: 20, scope: !5840)
!5846 = !DILocation(line: 308, column: 4, scope: !5840)
!5847 = !DILocation(line: 309, column: 3, scope: !5840)
!5848 = !DILocation(line: 310, column: 3, scope: !5511)
!5849 = !DILocation(line: 311, column: 11, scope: !5446)
!5850 = !DILocation(line: 311, column: 17, scope: !5446)
!5851 = !DILocation(line: 311, column: 27, scope: !5446)
!5852 = !DILocation(line: 311, column: 25, scope: !5446)
!5853 = !DILocation(line: 311, column: 2, scope: !5511)
!5854 = distinct !{!5854, !5606, !5855, !5833, !5834}
!5855 = !DILocation(line: 311, column: 30, scope: !5446)
!5856 = !DILocation(line: 313, column: 2, scope: !5446)
!5857 = !DILocation(line: 314, column: 1, scope: !5446)
!5858 = distinct !DISubprogram(name: "not_found", scope: !1, file: !1, line: 10, type: !5447, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5859)
!5859 = !{!5860}
!5860 = !DILocalVariable(name: "pvmw", arg: 1, scope: !5858, file: !1, line: 10, type: !5449)
!5861 = !DILocation(line: 10, column: 59, scope: !5858)
!5862 = !DILocation(line: 12, column: 28, scope: !5858)
!5863 = !DILocation(line: 12, column: 2, scope: !5858)
!5864 = !DILocation(line: 13, column: 2, scope: !5858)
!5865 = distinct !DISubprogram(name: "is_vm_hugetlb_page", scope: !5866, file: !5866, line: 9, type: !5867, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5869)
!5866 = !DIFile(filename: "./include/linux/hugetlb_inline.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a0f0e65915fb82cb2c0852c7ba29cf8a")
!5867 = !DISubroutineType(types: !5868)
!5868 = !{!870, !1301}
!5869 = !{!5870}
!5870 = !DILocalVariable(name: "vma", arg: 1, scope: !5865, file: !5866, line: 9, type: !1301)
!5871 = !DILocation(line: 9, column: 62, scope: !5865)
!5872 = !DILocation(line: 11, column: 12, scope: !5865)
!5873 = !DILocation(line: 11, column: 17, scope: !5865)
!5874 = !DILocation(line: 11, column: 26, scope: !5865)
!5875 = !DILocation(line: 11, column: 10, scope: !5865)
!5876 = !DILocation(line: 11, column: 9, scope: !5865)
!5877 = !DILocation(line: 11, column: 2, scope: !5865)
!5878 = distinct !DISubprogram(name: "hstate_vma", scope: !5476, file: !5476, line: 804, type: !5879, scopeLine: 805, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5881)
!5879 = !DISubroutineType(types: !5880)
!5880 = !{!5474, !1301}
!5881 = !{!5882}
!5882 = !DILocalVariable(name: "vma", arg: 1, scope: !5878, file: !5476, line: 804, type: !1301)
!5883 = !DILocation(line: 804, column: 64, scope: !5878)
!5884 = !DILocation(line: 806, column: 21, scope: !5878)
!5885 = !DILocation(line: 806, column: 26, scope: !5878)
!5886 = !DILocation(line: 806, column: 9, scope: !5878)
!5887 = !DILocation(line: 806, column: 2, scope: !5878)
!5888 = distinct !DISubprogram(name: "huge_page_size", scope: !5476, file: !5476, line: 809, type: !5889, scopeLine: 810, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5893)
!5889 = !DISubroutineType(types: !5890)
!5890 = !{!40, !5891}
!5891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5892, size: 64)
!5892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5475)
!5893 = !{!5894}
!5894 = !DILocalVariable(name: "h", arg: 1, scope: !5888, file: !5476, line: 809, type: !5891)
!5895 = !DILocation(line: 809, column: 65, scope: !5888)
!5896 = !DILocation(line: 811, column: 37, scope: !5888)
!5897 = !DILocation(line: 811, column: 40, scope: !5888)
!5898 = !DILocation(line: 811, column: 34, scope: !5888)
!5899 = !DILocation(line: 811, column: 2, scope: !5888)
!5900 = distinct !DISubprogram(name: "hugetlb_walk", scope: !5476, file: !5476, line: 1278, type: !5901, scopeLine: 1279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5903)
!5901 = !DISubroutineType(types: !5902)
!5902 = !{!1581, !1301, !40, !40}
!5903 = !{!5904, !5905, !5906}
!5904 = !DILocalVariable(name: "vma", arg: 1, scope: !5900, file: !5476, line: 1278, type: !1301)
!5905 = !DILocalVariable(name: "addr", arg: 2, scope: !5900, file: !5476, line: 1278, type: !40)
!5906 = !DILocalVariable(name: "sz", arg: 3, scope: !5900, file: !5476, line: 1278, type: !40)
!5907 = !DILocation(line: 1278, column: 37, scope: !5900)
!5908 = !DILocation(line: 1278, column: 56, scope: !5900)
!5909 = !DILocation(line: 1278, column: 76, scope: !5900)
!5910 = !DILocation(line: 1295, column: 25, scope: !5900)
!5911 = !DILocation(line: 1295, column: 30, scope: !5900)
!5912 = !DILocation(line: 1295, column: 37, scope: !5900)
!5913 = !DILocation(line: 1295, column: 43, scope: !5900)
!5914 = !DILocation(line: 1295, column: 9, scope: !5900)
!5915 = !DILocation(line: 1295, column: 2, scope: !5900)
!5916 = distinct !DISubprogram(name: "huge_pte_lock", scope: !5476, file: !5476, line: 1226, type: !5917, scopeLine: 1228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5919)
!5917 = !DISubroutineType(types: !5918)
!5918 = !{!1583, !5474, !1314, !1581}
!5919 = !{!5920, !5921, !5922, !5923}
!5920 = !DILocalVariable(name: "h", arg: 1, scope: !5916, file: !5476, line: 1226, type: !5474)
!5921 = !DILocalVariable(name: "mm", arg: 2, scope: !5916, file: !5476, line: 1227, type: !1314)
!5922 = !DILocalVariable(name: "pte", arg: 3, scope: !5916, file: !5476, line: 1227, type: !1581)
!5923 = !DILocalVariable(name: "ptl", scope: !5916, file: !5476, line: 1229, type: !1583)
!5924 = !DILocation(line: 1226, column: 56, scope: !5916)
!5925 = !DILocation(line: 1227, column: 24, scope: !5916)
!5926 = !DILocation(line: 1227, column: 35, scope: !5916)
!5927 = !DILocation(line: 1229, column: 2, scope: !5916)
!5928 = !DILocation(line: 1229, column: 14, scope: !5916)
!5929 = !DILocation(line: 1231, column: 25, scope: !5916)
!5930 = !DILocation(line: 1231, column: 28, scope: !5916)
!5931 = !DILocation(line: 1231, column: 32, scope: !5916)
!5932 = !DILocation(line: 1231, column: 8, scope: !5916)
!5933 = !DILocation(line: 1231, column: 6, scope: !5916)
!5934 = !DILocation(line: 1232, column: 12, scope: !5916)
!5935 = !DILocation(line: 1232, column: 2, scope: !5916)
!5936 = !DILocation(line: 1233, column: 9, scope: !5916)
!5937 = !DILocation(line: 1234, column: 1, scope: !5916)
!5938 = !DILocation(line: 1233, column: 2, scope: !5916)
!5939 = distinct !DISubprogram(name: "check_pte", scope: !1, file: !1, line: 96, type: !5447, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5940)
!5940 = !{!5941, !5942, !5943, !5944, !5947}
!5941 = !DILocalVariable(name: "pvmw", arg: 1, scope: !5939, file: !1, line: 96, type: !5449)
!5942 = !DILocalVariable(name: "pfn", scope: !5939, file: !1, line: 98, type: !40)
!5943 = !DILocalVariable(name: "ptent", scope: !5939, file: !1, line: 99, type: !1572)
!5944 = !DILocalVariable(name: "entry", scope: !5945, file: !1, line: 102, type: !1204)
!5945 = distinct !DILexicalBlock(scope: !5946, file: !1, line: 101, column: 36)
!5946 = distinct !DILexicalBlock(scope: !5939, file: !1, line: 101, column: 6)
!5947 = !DILocalVariable(name: "entry", scope: !5948, file: !1, line: 113, type: !1204)
!5948 = distinct !DILexicalBlock(scope: !5949, file: !1, line: 112, column: 33)
!5949 = distinct !DILexicalBlock(scope: !5946, file: !1, line: 112, column: 13)
!5950 = !DILocation(line: 96, column: 52, scope: !5939)
!5951 = !DILocation(line: 98, column: 2, scope: !5939)
!5952 = !DILocation(line: 98, column: 16, scope: !5939)
!5953 = !DILocation(line: 99, column: 2, scope: !5939)
!5954 = !DILocation(line: 99, column: 8, scope: !5939)
!5955 = !DILocation(line: 99, column: 25, scope: !5939)
!5956 = !DILocation(line: 99, column: 31, scope: !5939)
!5957 = !DILocation(line: 99, column: 16, scope: !5939)
!5958 = !DILocation(line: 101, column: 6, scope: !5946)
!5959 = !DILocation(line: 101, column: 12, scope: !5946)
!5960 = !DILocation(line: 101, column: 18, scope: !5946)
!5961 = !DILocation(line: 101, column: 6, scope: !5939)
!5962 = !DILocation(line: 102, column: 3, scope: !5945)
!5963 = !DILocation(line: 102, column: 15, scope: !5945)
!5964 = !DILocation(line: 103, column: 8, scope: !5965)
!5965 = distinct !DILexicalBlock(scope: !5945, file: !1, line: 103, column: 7)
!5966 = !DILocation(line: 103, column: 7, scope: !5945)
!5967 = !DILocation(line: 104, column: 4, scope: !5965)
!5968 = !DILocation(line: 105, column: 11, scope: !5945)
!5969 = !DILocation(line: 107, column: 8, scope: !5970)
!5970 = distinct !DILexicalBlock(scope: !5945, file: !1, line: 107, column: 7)
!5971 = !DILocation(line: 107, column: 34, scope: !5970)
!5972 = !DILocation(line: 108, column: 8, scope: !5970)
!5973 = !DILocation(line: 107, column: 7, scope: !5945)
!5974 = !DILocation(line: 109, column: 4, scope: !5970)
!5975 = !DILocation(line: 111, column: 9, scope: !5945)
!5976 = !DILocation(line: 111, column: 7, scope: !5945)
!5977 = !DILocation(line: 112, column: 2, scope: !5946)
!5978 = !DILocation(line: 112, column: 2, scope: !5945)
!5979 = !DILocation(line: 112, column: 13, scope: !5949)
!5980 = !DILocation(line: 112, column: 13, scope: !5946)
!5981 = !DILocation(line: 113, column: 3, scope: !5948)
!5982 = !DILocation(line: 113, column: 15, scope: !5948)
!5983 = !DILocation(line: 116, column: 11, scope: !5948)
!5984 = !DILocation(line: 117, column: 8, scope: !5985)
!5985 = distinct !DILexicalBlock(scope: !5948, file: !1, line: 117, column: 7)
!5986 = !DILocation(line: 117, column: 39, scope: !5985)
!5987 = !DILocation(line: 118, column: 8, scope: !5985)
!5988 = !DILocation(line: 117, column: 7, scope: !5948)
!5989 = !DILocation(line: 119, column: 4, scope: !5985)
!5990 = !DILocation(line: 121, column: 9, scope: !5948)
!5991 = !DILocation(line: 121, column: 7, scope: !5948)
!5992 = !DILocation(line: 122, column: 2, scope: !5949)
!5993 = !DILocation(line: 122, column: 2, scope: !5948)
!5994 = !DILocation(line: 123, column: 8, scope: !5995)
!5995 = distinct !DILexicalBlock(scope: !5996, file: !1, line: 123, column: 7)
!5996 = distinct !DILexicalBlock(scope: !5949, file: !1, line: 122, column: 9)
!5997 = !DILocation(line: 123, column: 7, scope: !5996)
!5998 = !DILocation(line: 124, column: 4, scope: !5995)
!5999 = !DILocation(line: 126, column: 9, scope: !5996)
!6000 = !DILocation(line: 126, column: 7, scope: !5996)
!6001 = !DILocation(line: 129, column: 10, scope: !5939)
!6002 = !DILocation(line: 129, column: 16, scope: !5939)
!6003 = !DILocation(line: 129, column: 22, scope: !5939)
!6004 = !DILocation(line: 129, column: 14, scope: !5939)
!6005 = !DILocation(line: 129, column: 29, scope: !5939)
!6006 = !DILocation(line: 129, column: 35, scope: !5939)
!6007 = !DILocation(line: 129, column: 27, scope: !5939)
!6008 = !DILocation(line: 129, column: 2, scope: !5939)
!6009 = !DILocation(line: 130, column: 1, scope: !5939)
!6010 = distinct !DISubprogram(name: "vma_address_end", scope: !4163, file: !4163, line: 745, type: !6011, scopeLine: 746, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6013)
!6011 = !DISubroutineType(types: !6012)
!6012 = !{!40, !5449}
!6013 = !{!6014, !6015, !6016, !6017}
!6014 = !DILocalVariable(name: "pvmw", arg: 1, scope: !6010, file: !4163, line: 745, type: !5449)
!6015 = !DILocalVariable(name: "vma", scope: !6010, file: !4163, line: 747, type: !1301)
!6016 = !DILocalVariable(name: "pgoff", scope: !6010, file: !4163, line: 748, type: !40)
!6017 = !DILocalVariable(name: "address", scope: !6010, file: !4163, line: 749, type: !40)
!6018 = !DILocation(line: 745, column: 74, scope: !6010)
!6019 = !DILocation(line: 747, column: 2, scope: !6010)
!6020 = !DILocation(line: 747, column: 25, scope: !6010)
!6021 = !DILocation(line: 747, column: 31, scope: !6010)
!6022 = !DILocation(line: 747, column: 37, scope: !6010)
!6023 = !DILocation(line: 748, column: 2, scope: !6010)
!6024 = !DILocation(line: 748, column: 10, scope: !6010)
!6025 = !DILocation(line: 749, column: 2, scope: !6010)
!6026 = !DILocation(line: 749, column: 16, scope: !6010)
!6027 = !DILocation(line: 752, column: 6, scope: !6028)
!6028 = distinct !DILexicalBlock(scope: !6010, file: !4163, line: 752, column: 6)
!6029 = !DILocation(line: 752, column: 12, scope: !6028)
!6030 = !DILocation(line: 752, column: 21, scope: !6028)
!6031 = !DILocation(line: 752, column: 6, scope: !6010)
!6032 = !DILocation(line: 753, column: 10, scope: !6028)
!6033 = !DILocation(line: 753, column: 16, scope: !6028)
!6034 = !DILocation(line: 753, column: 24, scope: !6028)
!6035 = !DILocation(line: 753, column: 3, scope: !6028)
!6036 = !DILocation(line: 755, column: 10, scope: !6010)
!6037 = !DILocation(line: 755, column: 16, scope: !6010)
!6038 = !DILocation(line: 755, column: 24, scope: !6010)
!6039 = !DILocation(line: 755, column: 30, scope: !6010)
!6040 = !DILocation(line: 755, column: 22, scope: !6010)
!6041 = !DILocation(line: 755, column: 8, scope: !6010)
!6042 = !DILocation(line: 756, column: 12, scope: !6010)
!6043 = !DILocation(line: 756, column: 17, scope: !6010)
!6044 = !DILocation(line: 756, column: 30, scope: !6010)
!6045 = !DILocation(line: 756, column: 38, scope: !6010)
!6046 = !DILocation(line: 756, column: 43, scope: !6010)
!6047 = !DILocation(line: 756, column: 36, scope: !6010)
!6048 = !DILocation(line: 756, column: 53, scope: !6010)
!6049 = !DILocation(line: 756, column: 26, scope: !6010)
!6050 = !DILocation(line: 756, column: 10, scope: !6010)
!6051 = !DILocation(line: 758, column: 6, scope: !6052)
!6052 = distinct !DILexicalBlock(scope: !6010, file: !4163, line: 758, column: 6)
!6053 = !DILocation(line: 758, column: 16, scope: !6052)
!6054 = !DILocation(line: 758, column: 21, scope: !6052)
!6055 = !DILocation(line: 758, column: 14, scope: !6052)
!6056 = !DILocation(line: 758, column: 30, scope: !6052)
!6057 = !DILocation(line: 758, column: 33, scope: !6052)
!6058 = !DILocation(line: 758, column: 43, scope: !6052)
!6059 = !DILocation(line: 758, column: 48, scope: !6052)
!6060 = !DILocation(line: 758, column: 41, scope: !6052)
!6061 = !DILocation(line: 758, column: 6, scope: !6010)
!6062 = !DILocation(line: 759, column: 13, scope: !6052)
!6063 = !DILocation(line: 759, column: 18, scope: !6052)
!6064 = !DILocation(line: 759, column: 11, scope: !6052)
!6065 = !DILocation(line: 759, column: 3, scope: !6052)
!6066 = !DILocation(line: 760, column: 9, scope: !6010)
!6067 = !DILocation(line: 760, column: 2, scope: !6010)
!6068 = !DILocation(line: 761, column: 1, scope: !6010)
!6069 = distinct !DISubprogram(name: "pgd_offset_pgd", scope: !6070, file: !6070, line: 136, type: !6071, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6073)
!6070 = !DIFile(filename: "./include/linux/pgtable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "42556a9f65ab908dd6bd67424d19f5be")
!6071 = !DISubroutineType(types: !6072)
!6072 = !{!1348, !1348, !40}
!6073 = !{!6074, !6075}
!6074 = !DILocalVariable(name: "pgd", arg: 1, scope: !6069, file: !6070, line: 136, type: !1348)
!6075 = !DILocalVariable(name: "address", arg: 2, scope: !6069, file: !6070, line: 136, type: !40)
!6076 = !DILocation(line: 136, column: 44, scope: !6069)
!6077 = !DILocation(line: 136, column: 63, scope: !6069)
!6078 = !DILocation(line: 138, column: 10, scope: !6069)
!6079 = !DILocation(line: 138, column: 16, scope: !6069)
!6080 = !DILocation(line: 138, column: 14, scope: !6069)
!6081 = !DILocation(line: 138, column: 2, scope: !6069)
!6082 = distinct !DISubprogram(name: "pgd_present", scope: !6083, file: !6083, line: 1130, type: !6084, scopeLine: 1131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6086)
!6083 = !DIFile(filename: "./arch/x86/include/asm/pgtable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "40a9f4cb2b1b2fff495e3ab16a522abc")
!6084 = !DISubroutineType(types: !6085)
!6085 = !{!23, !1349}
!6086 = !{!6087}
!6087 = !DILocalVariable(name: "pgd", arg: 1, scope: !6082, file: !6083, line: 1130, type: !1349)
!6088 = !DILocation(line: 1130, column: 37, scope: !6082)
!6089 = !DILocation(line: 1132, column: 6, scope: !6082)
!6090 = !DILocation(line: 1132, column: 7, scope: !6091)
!6091 = distinct !DILexicalBlock(scope: !6082, file: !6083, line: 1132, column: 6)
!6092 = !DILocation(line: 1133, column: 3, scope: !6091)
!6093 = !DILocation(line: 1134, column: 9, scope: !6082)
!6094 = !DILocation(line: 1134, column: 24, scope: !6082)
!6095 = !DILocation(line: 1134, column: 2, scope: !6082)
!6096 = !DILocation(line: 1135, column: 1, scope: !6082)
!6097 = distinct !DISubprogram(name: "step_forward", scope: !1, file: !1, line: 142, type: !6098, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6100)
!6098 = !DISubroutineType(types: !6099)
!6099 = !{null, !5449, !40}
!6100 = !{!6101, !6102}
!6101 = !DILocalVariable(name: "pvmw", arg: 1, scope: !6097, file: !1, line: 142, type: !5449)
!6102 = !DILocalVariable(name: "size", arg: 2, scope: !6097, file: !1, line: 142, type: !40)
!6103 = !DILocation(line: 142, column: 55, scope: !6097)
!6104 = !DILocation(line: 142, column: 75, scope: !6097)
!6105 = !DILocation(line: 144, column: 19, scope: !6097)
!6106 = !DILocation(line: 144, column: 25, scope: !6097)
!6107 = !DILocation(line: 144, column: 35, scope: !6097)
!6108 = !DILocation(line: 144, column: 33, scope: !6097)
!6109 = !DILocation(line: 144, column: 45, scope: !6097)
!6110 = !DILocation(line: 144, column: 50, scope: !6097)
!6111 = !DILocation(line: 144, column: 43, scope: !6097)
!6112 = !DILocation(line: 144, column: 41, scope: !6097)
!6113 = !DILocation(line: 144, column: 2, scope: !6097)
!6114 = !DILocation(line: 144, column: 8, scope: !6097)
!6115 = !DILocation(line: 144, column: 16, scope: !6097)
!6116 = !DILocation(line: 145, column: 7, scope: !6117)
!6117 = distinct !DILexicalBlock(scope: !6097, file: !1, line: 145, column: 6)
!6118 = !DILocation(line: 145, column: 13, scope: !6117)
!6119 = !DILocation(line: 145, column: 6, scope: !6097)
!6120 = !DILocation(line: 146, column: 3, scope: !6117)
!6121 = !DILocation(line: 146, column: 9, scope: !6117)
!6122 = !DILocation(line: 146, column: 17, scope: !6117)
!6123 = !DILocation(line: 147, column: 1, scope: !6097)
!6124 = distinct !DISubprogram(name: "p4d_offset", scope: !6083, file: !6083, line: 1149, type: !6125, scopeLine: 1150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6127)
!6125 = !DISubroutineType(types: !6126)
!6126 = !{!5416, !1348, !40}
!6127 = !{!6128, !6129}
!6128 = !DILocalVariable(name: "pgd", arg: 1, scope: !6124, file: !6083, line: 1149, type: !1348)
!6129 = !DILocalVariable(name: "address", arg: 2, scope: !6124, file: !6083, line: 1149, type: !40)
!6130 = !DILocation(line: 1149, column: 40, scope: !6124)
!6131 = !DILocation(line: 1149, column: 59, scope: !6124)
!6132 = !DILocation(line: 1151, column: 6, scope: !6124)
!6133 = !DILocation(line: 1151, column: 7, scope: !6134)
!6134 = distinct !DILexicalBlock(scope: !6124, file: !6083, line: 1151, column: 6)
!6135 = !DILocation(line: 1152, column: 19, scope: !6134)
!6136 = !DILocation(line: 1152, column: 3, scope: !6134)
!6137 = !DILocation(line: 1153, column: 34, scope: !6124)
!6138 = !DILocation(line: 1153, column: 18, scope: !6124)
!6139 = !DILocation(line: 1153, column: 9, scope: !6124)
!6140 = !DILocation(line: 1153, column: 51, scope: !6124)
!6141 = !DILocation(line: 1153, column: 41, scope: !6124)
!6142 = !DILocation(line: 1153, column: 39, scope: !6124)
!6143 = !DILocation(line: 1153, column: 2, scope: !6124)
!6144 = !DILocation(line: 1154, column: 1, scope: !6124)
!6145 = distinct !DISubprogram(name: "p4d_present", scope: !6083, file: !6083, line: 1097, type: !6146, scopeLine: 1098, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6148)
!6146 = !DISubroutineType(types: !6147)
!6147 = !{!23, !5417}
!6148 = !{!6149}
!6149 = !DILocalVariable(name: "p4d", arg: 1, scope: !6145, file: !6083, line: 1097, type: !5417)
!6150 = !DILocation(line: 1097, column: 37, scope: !6145)
!6151 = !DILocation(line: 1099, column: 9, scope: !6145)
!6152 = !DILocation(line: 1099, column: 24, scope: !6145)
!6153 = !DILocation(line: 1099, column: 2, scope: !6145)
!6154 = distinct !DISubprogram(name: "pud_offset", scope: !6070, file: !6070, line: 129, type: !6155, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6157)
!6155 = !DISubroutineType(types: !6156)
!6156 = !{!1562, !5416, !40}
!6157 = !{!6158, !6159}
!6158 = !DILocalVariable(name: "p4d", arg: 1, scope: !6154, file: !6070, line: 129, type: !5416)
!6159 = !DILocalVariable(name: "address", arg: 2, scope: !6154, file: !6070, line: 129, type: !40)
!6160 = !DILocation(line: 129, column: 40, scope: !6154)
!6161 = !DILocation(line: 129, column: 59, scope: !6154)
!6162 = !DILocation(line: 131, column: 22, scope: !6154)
!6163 = !DILocation(line: 131, column: 9, scope: !6154)
!6164 = !DILocation(line: 131, column: 39, scope: !6154)
!6165 = !DILocation(line: 131, column: 29, scope: !6154)
!6166 = !DILocation(line: 131, column: 27, scope: !6154)
!6167 = !DILocation(line: 131, column: 2, scope: !6154)
!6168 = distinct !DISubprogram(name: "pud_present", scope: !6083, file: !6083, line: 1056, type: !6169, scopeLine: 1057, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6171)
!6169 = !DISubroutineType(types: !6170)
!6170 = !{!23, !1563}
!6171 = !{!6172}
!6172 = !DILocalVariable(name: "pud", arg: 1, scope: !6168, file: !6083, line: 1056, type: !1563)
!6173 = !DILocation(line: 1056, column: 37, scope: !6168)
!6174 = !DILocation(line: 1058, column: 9, scope: !6168)
!6175 = !DILocation(line: 1058, column: 24, scope: !6168)
!6176 = !DILocation(line: 1058, column: 2, scope: !6168)
!6177 = distinct !DISubprogram(name: "pmd_offset", scope: !6070, file: !6070, line: 121, type: !6178, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6180)
!6178 = !DISubroutineType(types: !6179)
!6179 = !{!1555, !1562, !40}
!6180 = !{!6181, !6182}
!6181 = !DILocalVariable(name: "pud", arg: 1, scope: !6177, file: !6070, line: 121, type: !1562)
!6182 = !DILocalVariable(name: "address", arg: 2, scope: !6177, file: !6070, line: 121, type: !40)
!6183 = !DILocation(line: 121, column: 40, scope: !6177)
!6184 = !DILocation(line: 121, column: 59, scope: !6177)
!6185 = !DILocation(line: 123, column: 22, scope: !6177)
!6186 = !DILocation(line: 123, column: 9, scope: !6177)
!6187 = !DILocation(line: 123, column: 39, scope: !6177)
!6188 = !DILocation(line: 123, column: 29, scope: !6177)
!6189 = !DILocation(line: 123, column: 27, scope: !6177)
!6190 = !DILocation(line: 123, column: 2, scope: !6177)
!6191 = distinct !DISubprogram(name: "pmdp_get_lockless", scope: !6070, file: !6070, line: 509, type: !6192, scopeLine: 510, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6194)
!6192 = !DISubroutineType(types: !6193)
!6193 = !{!1556, !1555}
!6194 = !{!6195}
!6195 = !DILocalVariable(name: "pmdp", arg: 1, scope: !6191, file: !6070, line: 509, type: !1555)
!6196 = !DILocation(line: 509, column: 46, scope: !6191)
!6197 = !DILocation(line: 511, column: 18, scope: !6191)
!6198 = !DILocation(line: 511, column: 9, scope: !6191)
!6199 = !DILocation(line: 511, column: 2, scope: !6191)
!6200 = distinct !DISubprogram(name: "pmd_trans_huge", scope: !6070, file: !6070, line: 1366, type: !6201, scopeLine: 1367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6203)
!6201 = !DISubroutineType(types: !6202)
!6202 = !{!23, !1556}
!6203 = !{!6204}
!6204 = !DILocalVariable(name: "pmd", arg: 1, scope: !6200, file: !6070, line: 1366, type: !1556)
!6205 = !DILocation(line: 1366, column: 40, scope: !6200)
!6206 = !DILocation(line: 1368, column: 2, scope: !6200)
!6207 = distinct !DISubprogram(name: "is_pmd_migration_entry", scope: !6208, file: !6208, line: 575, type: !6201, scopeLine: 576, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6209)
!6208 = !DIFile(filename: "./include/linux/swapops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "419a3b3a4a5151a11499b62fe534498e")
!6209 = !{!6210}
!6210 = !DILocalVariable(name: "pmd", arg: 1, scope: !6207, file: !6208, line: 575, type: !1556)
!6211 = !DILocation(line: 575, column: 48, scope: !6207)
!6212 = !DILocation(line: 577, column: 2, scope: !6207)
!6213 = distinct !DISubprogram(name: "pmd_present", scope: !6083, file: !6083, line: 975, type: !6201, scopeLine: 976, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6214)
!6214 = !{!6215}
!6215 = !DILocalVariable(name: "pmd", arg: 1, scope: !6213, file: !6083, line: 975, type: !1556)
!6216 = !DILocation(line: 975, column: 37, scope: !6213)
!6217 = !DILocation(line: 983, column: 9, scope: !6213)
!6218 = !DILocation(line: 983, column: 24, scope: !6213)
!6219 = !DILocation(line: 983, column: 2, scope: !6213)
!6220 = distinct !DISubprogram(name: "pmd_devmap", scope: !6070, file: !6070, line: 1388, type: !6201, scopeLine: 1389, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6221)
!6221 = !{!6222}
!6222 = !DILocalVariable(name: "pmd", arg: 1, scope: !6220, file: !6070, line: 1388, type: !1556)
!6223 = !DILocation(line: 1388, column: 36, scope: !6220)
!6224 = !DILocation(line: 1390, column: 2, scope: !6220)
!6225 = distinct !DISubprogram(name: "pmd_lock", scope: !1517, file: !1517, line: 3020, type: !6226, scopeLine: 3021, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6228)
!6226 = !DISubroutineType(types: !6227)
!6227 = !{!1583, !1314, !1555}
!6228 = !{!6229, !6230, !6231}
!6229 = !DILocalVariable(name: "mm", arg: 1, scope: !6225, file: !1517, line: 3020, type: !1314)
!6230 = !DILocalVariable(name: "pmd", arg: 2, scope: !6225, file: !1517, line: 3020, type: !1555)
!6231 = !DILocalVariable(name: "ptl", scope: !6225, file: !1517, line: 3022, type: !1583)
!6232 = !DILocation(line: 3020, column: 54, scope: !6225)
!6233 = !DILocation(line: 3020, column: 65, scope: !6225)
!6234 = !DILocation(line: 3022, column: 2, scope: !6225)
!6235 = !DILocation(line: 3022, column: 14, scope: !6225)
!6236 = !DILocation(line: 3022, column: 32, scope: !6225)
!6237 = !DILocation(line: 3022, column: 36, scope: !6225)
!6238 = !DILocation(line: 3022, column: 20, scope: !6225)
!6239 = !DILocation(line: 3023, column: 12, scope: !6225)
!6240 = !DILocation(line: 3023, column: 2, scope: !6225)
!6241 = !DILocation(line: 3024, column: 9, scope: !6225)
!6242 = !DILocation(line: 3025, column: 1, scope: !6225)
!6243 = !DILocation(line: 3024, column: 2, scope: !6225)
!6244 = distinct !DISubprogram(name: "thp_migration_supported", scope: !6245, file: !6245, line: 404, type: !1796, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!6245 = !DIFile(filename: "./include/linux/huge_mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0b6833a58b709ea55ac9e4c63c9931c7")
!6246 = !DILocation(line: 406, column: 2, scope: !6244)
!6247 = distinct !DISubprogram(name: "pmd_to_swp_entry", scope: !6208, file: !6208, line: 565, type: !6248, scopeLine: 566, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6250)
!6248 = !DISubroutineType(types: !6249)
!6249 = !{!1204, !1556}
!6250 = !{!6251}
!6251 = !DILocalVariable(name: "pmd", arg: 1, scope: !6247, file: !6208, line: 565, type: !1556)
!6252 = !DILocation(line: 565, column: 50, scope: !6247)
!6253 = !DILocation(line: 567, column: 9, scope: !6247)
!6254 = !DILocation(line: 567, column: 2, scope: !6247)
!6255 = distinct !DISubprogram(name: "is_migration_entry", scope: !6208, file: !6208, line: 252, type: !6256, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6258)
!6256 = !DISubroutineType(types: !6257)
!6257 = !{!23, !1204}
!6258 = !{!6259}
!6259 = !DILocalVariable(name: "entry", arg: 1, scope: !6255, file: !6208, line: 252, type: !1204)
!6260 = !DILocation(line: 252, column: 50, scope: !6255)
!6261 = !DILocation(line: 254, column: 9, scope: !6255)
!6262 = !DILocation(line: 254, column: 2, scope: !6255)
!6263 = distinct !DISubprogram(name: "check_pmd", scope: !1, file: !1, line: 133, type: !6264, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6266)
!6264 = !DISubroutineType(types: !6265)
!6265 = !{!870, !40, !5449}
!6266 = !{!6267, !6268}
!6267 = !DILocalVariable(name: "pfn", arg: 1, scope: !6263, file: !1, line: 133, type: !40)
!6268 = !DILocalVariable(name: "pvmw", arg: 2, scope: !6263, file: !1, line: 133, type: !5449)
!6269 = !DILocation(line: 133, column: 37, scope: !6263)
!6270 = !DILocation(line: 133, column: 71, scope: !6263)
!6271 = !DILocation(line: 135, column: 7, scope: !6272)
!6272 = distinct !DILexicalBlock(scope: !6263, file: !1, line: 135, column: 6)
!6273 = !DILocation(line: 135, column: 13, scope: !6274)
!6274 = distinct !DILexicalBlock(scope: !6272, file: !1, line: 135, column: 13)
!6275 = !DILocation(line: 135, column: 13, scope: !6276)
!6276 = distinct !DILexicalBlock(scope: !6277, file: !1, line: 135, column: 13)
!6277 = distinct !DILexicalBlock(scope: !6274, file: !1, line: 135, column: 13)
!6278 = !{i32 -2139496286}
!6279 = !DILocation(line: 135, column: 13, scope: !6277)
!6280 = !DILocation(line: 135, column: 13, scope: !6272)
!6281 = !DILocation(line: 135, column: 11, scope: !6272)
!6282 = !DILocation(line: 135, column: 26, scope: !6272)
!6283 = !DILocation(line: 135, column: 33, scope: !6272)
!6284 = !DILocation(line: 135, column: 39, scope: !6272)
!6285 = !DILocation(line: 135, column: 31, scope: !6272)
!6286 = !DILocation(line: 135, column: 6, scope: !6263)
!6287 = !DILocation(line: 136, column: 3, scope: !6272)
!6288 = !DILocation(line: 137, column: 6, scope: !6289)
!6289 = distinct !DILexicalBlock(scope: !6263, file: !1, line: 137, column: 6)
!6290 = !DILocation(line: 137, column: 12, scope: !6289)
!6291 = !DILocation(line: 137, column: 18, scope: !6289)
!6292 = !DILocation(line: 137, column: 24, scope: !6289)
!6293 = !DILocation(line: 137, column: 30, scope: !6289)
!6294 = !DILocation(line: 137, column: 22, scope: !6289)
!6295 = !DILocation(line: 137, column: 39, scope: !6289)
!6296 = !DILocation(line: 137, column: 10, scope: !6289)
!6297 = !DILocation(line: 137, column: 6, scope: !6263)
!6298 = !DILocation(line: 138, column: 3, scope: !6289)
!6299 = !DILocation(line: 139, column: 2, scope: !6263)
!6300 = !DILocation(line: 140, column: 1, scope: !6263)
!6301 = distinct !DISubprogram(name: "swp_offset_pfn", scope: !6208, file: !6208, line: 117, type: !6302, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6304)
!6302 = !DISubroutineType(types: !6303)
!6303 = !{!40, !1204}
!6304 = !{!6305}
!6305 = !DILocalVariable(name: "entry", arg: 1, scope: !6301, file: !6208, line: 117, type: !1204)
!6306 = !DILocation(line: 117, column: 56, scope: !6301)
!6307 = !DILocation(line: 120, column: 9, scope: !6301)
!6308 = !DILocation(line: 120, column: 29, scope: !6301)
!6309 = !DILocation(line: 120, column: 27, scope: !6301)
!6310 = !DILocation(line: 120, column: 2, scope: !6301)
!6311 = distinct !DISubprogram(name: "pmd_pfn", scope: !6083, file: !6083, line: 230, type: !6312, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6314)
!6312 = !DISubroutineType(types: !6313)
!6313 = !{!40, !1556}
!6314 = !{!6315, !6316}
!6315 = !DILocalVariable(name: "pmd", arg: 1, scope: !6311, file: !6083, line: 230, type: !1556)
!6316 = !DILocalVariable(name: "pfn", scope: !6311, file: !6083, line: 232, type: !5415)
!6317 = !DILocation(line: 230, column: 43, scope: !6311)
!6318 = !DILocation(line: 232, column: 2, scope: !6311)
!6319 = !DILocation(line: 232, column: 14, scope: !6311)
!6320 = !DILocation(line: 232, column: 20, scope: !6311)
!6321 = !DILocation(line: 233, column: 23, scope: !6311)
!6322 = !DILocation(line: 233, column: 9, scope: !6311)
!6323 = !DILocation(line: 233, column: 6, scope: !6311)
!6324 = !DILocation(line: 234, column: 10, scope: !6311)
!6325 = !DILocation(line: 234, column: 16, scope: !6311)
!6326 = !DILocation(line: 234, column: 14, scope: !6311)
!6327 = !DILocation(line: 234, column: 35, scope: !6311)
!6328 = !DILocation(line: 235, column: 1, scope: !6311)
!6329 = !DILocation(line: 234, column: 2, scope: !6311)
!6330 = distinct !DISubprogram(name: "spin_unlock", scope: !6331, file: !6331, line: 389, type: !6332, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6334)
!6331 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!6332 = !DISubroutineType(types: !6333)
!6333 = !{null, !1583}
!6334 = !{!6335}
!6335 = !DILocalVariable(name: "lock", arg: 1, scope: !6330, file: !6331, line: 389, type: !1583)
!6336 = !DILocation(line: 389, column: 53, scope: !6330)
!6337 = !DILocation(line: 391, column: 2, scope: !6330)
!6338 = !DILocation(line: 392, column: 1, scope: !6330)
!6339 = distinct !DISubprogram(name: "transhuge_vma_suitable", scope: !6245, file: !6245, line: 288, type: !6340, scopeLine: 290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6342)
!6340 = !DISubroutineType(types: !6341)
!6341 = !{!870, !1301, !40}
!6342 = !{!6343, !6344}
!6343 = !DILocalVariable(name: "vma", arg: 1, scope: !6339, file: !6245, line: 288, type: !1301)
!6344 = !DILocalVariable(name: "addr", arg: 2, scope: !6339, file: !6245, line: 289, type: !40)
!6345 = !DILocation(line: 288, column: 66, scope: !6339)
!6346 = !DILocation(line: 289, column: 17, scope: !6339)
!6347 = !DILocation(line: 291, column: 2, scope: !6339)
!6348 = !DISubprogram(name: "__compiletime_assert_337", scope: !1, file: !1, line: 272, type: !2272, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6349 = distinct !DISubprogram(name: "map_pte", scope: !1, file: !1, line: 16, type: !6350, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6353)
!6350 = !DISubroutineType(types: !6351)
!6351 = !{!870, !5449, !6352}
!6352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!6353 = !{!6354, !6355, !6356, !6357}
!6354 = !DILocalVariable(name: "pvmw", arg: 1, scope: !6349, file: !1, line: 16, type: !5449)
!6355 = !DILocalVariable(name: "ptlp", arg: 2, scope: !6349, file: !1, line: 16, type: !6352)
!6356 = !DILocalVariable(name: "ptent", scope: !6349, file: !1, line: 18, type: !1572)
!6357 = !DILocalVariable(name: "entry", scope: !6358, file: !1, line: 46, type: !1204)
!6358 = distinct !DILexicalBlock(scope: !6359, file: !1, line: 45, column: 33)
!6359 = distinct !DILexicalBlock(scope: !6360, file: !1, line: 45, column: 13)
!6360 = distinct !DILexicalBlock(scope: !6349, file: !1, line: 42, column: 6)
!6361 = !DILocation(line: 16, column: 50, scope: !6349)
!6362 = !DILocation(line: 16, column: 69, scope: !6349)
!6363 = !DILocation(line: 18, column: 2, scope: !6349)
!6364 = !DILocation(line: 18, column: 8, scope: !6349)
!6365 = !DILocation(line: 20, column: 6, scope: !6366)
!6366 = distinct !DILexicalBlock(scope: !6349, file: !1, line: 20, column: 6)
!6367 = !DILocation(line: 20, column: 12, scope: !6366)
!6368 = !DILocation(line: 20, column: 18, scope: !6366)
!6369 = !DILocation(line: 20, column: 6, scope: !6349)
!6370 = !DILocation(line: 22, column: 35, scope: !6371)
!6371 = distinct !DILexicalBlock(scope: !6366, file: !1, line: 20, column: 31)
!6372 = !DILocation(line: 22, column: 41, scope: !6371)
!6373 = !DILocation(line: 22, column: 46, scope: !6371)
!6374 = !DILocation(line: 22, column: 53, scope: !6371)
!6375 = !DILocation(line: 22, column: 59, scope: !6371)
!6376 = !DILocation(line: 23, column: 7, scope: !6371)
!6377 = !DILocation(line: 23, column: 13, scope: !6371)
!6378 = !DILocation(line: 23, column: 23, scope: !6371)
!6379 = !DILocation(line: 23, column: 29, scope: !6371)
!6380 = !DILocation(line: 22, column: 15, scope: !6371)
!6381 = !DILocation(line: 22, column: 3, scope: !6371)
!6382 = !DILocation(line: 22, column: 9, scope: !6371)
!6383 = !DILocation(line: 22, column: 13, scope: !6371)
!6384 = !DILocation(line: 24, column: 11, scope: !6371)
!6385 = !DILocation(line: 24, column: 17, scope: !6371)
!6386 = !DILocation(line: 24, column: 4, scope: !6371)
!6387 = !DILocation(line: 24, column: 9, scope: !6371)
!6388 = !DILocation(line: 25, column: 12, scope: !6371)
!6389 = !DILocation(line: 25, column: 18, scope: !6371)
!6390 = !DILocation(line: 25, column: 11, scope: !6371)
!6391 = !DILocation(line: 25, column: 10, scope: !6371)
!6392 = !DILocation(line: 25, column: 3, scope: !6371)
!6393 = !DILocation(line: 35, column: 36, scope: !6349)
!6394 = !DILocation(line: 35, column: 42, scope: !6349)
!6395 = !DILocation(line: 35, column: 47, scope: !6349)
!6396 = !DILocation(line: 35, column: 54, scope: !6349)
!6397 = !DILocation(line: 35, column: 60, scope: !6349)
!6398 = !DILocation(line: 36, column: 8, scope: !6349)
!6399 = !DILocation(line: 36, column: 14, scope: !6349)
!6400 = !DILocation(line: 36, column: 23, scope: !6349)
!6401 = !DILocation(line: 35, column: 14, scope: !6349)
!6402 = !DILocation(line: 35, column: 2, scope: !6349)
!6403 = !DILocation(line: 35, column: 8, scope: !6349)
!6404 = !DILocation(line: 35, column: 12, scope: !6349)
!6405 = !DILocation(line: 37, column: 7, scope: !6406)
!6406 = distinct !DILexicalBlock(scope: !6349, file: !1, line: 37, column: 6)
!6407 = !DILocation(line: 37, column: 13, scope: !6406)
!6408 = !DILocation(line: 37, column: 6, scope: !6349)
!6409 = !DILocation(line: 38, column: 3, scope: !6406)
!6410 = !DILocation(line: 40, column: 10, scope: !6349)
!6411 = !DILocation(line: 40, column: 19, scope: !6349)
!6412 = !DILocation(line: 40, column: 25, scope: !6349)
!6413 = !DILocation(line: 42, column: 6, scope: !6360)
!6414 = !DILocation(line: 42, column: 12, scope: !6360)
!6415 = !DILocation(line: 42, column: 18, scope: !6360)
!6416 = !DILocation(line: 42, column: 6, scope: !6349)
!6417 = !DILocation(line: 43, column: 8, scope: !6418)
!6418 = distinct !DILexicalBlock(scope: !6419, file: !1, line: 43, column: 7)
!6419 = distinct !DILexicalBlock(scope: !6360, file: !1, line: 42, column: 36)
!6420 = !DILocation(line: 43, column: 7, scope: !6419)
!6421 = !DILocation(line: 44, column: 4, scope: !6418)
!6422 = !DILocation(line: 45, column: 2, scope: !6419)
!6423 = !DILocation(line: 45, column: 13, scope: !6359)
!6424 = !DILocation(line: 45, column: 13, scope: !6360)
!6425 = !DILocation(line: 46, column: 3, scope: !6358)
!6426 = !DILocation(line: 46, column: 15, scope: !6358)
!6427 = !DILocation(line: 63, column: 11, scope: !6358)
!6428 = !DILocation(line: 64, column: 8, scope: !6429)
!6429 = distinct !DILexicalBlock(scope: !6358, file: !1, line: 64, column: 7)
!6430 = !DILocation(line: 64, column: 39, scope: !6429)
!6431 = !DILocation(line: 65, column: 8, scope: !6429)
!6432 = !DILocation(line: 64, column: 7, scope: !6358)
!6433 = !DILocation(line: 66, column: 4, scope: !6429)
!6434 = !DILocation(line: 67, column: 2, scope: !6359)
!6435 = !DILocation(line: 67, column: 2, scope: !6358)
!6436 = !DILocation(line: 67, column: 14, scope: !6437)
!6437 = distinct !DILexicalBlock(scope: !6359, file: !1, line: 67, column: 13)
!6438 = !DILocation(line: 67, column: 13, scope: !6359)
!6439 = !DILocation(line: 68, column: 3, scope: !6440)
!6440 = distinct !DILexicalBlock(scope: !6437, file: !1, line: 67, column: 34)
!6441 = !DILocation(line: 70, column: 15, scope: !6349)
!6442 = !DILocation(line: 70, column: 14, scope: !6349)
!6443 = !DILocation(line: 70, column: 2, scope: !6349)
!6444 = !DILocation(line: 70, column: 8, scope: !6349)
!6445 = !DILocation(line: 70, column: 12, scope: !6349)
!6446 = !DILocation(line: 71, column: 12, scope: !6349)
!6447 = !DILocation(line: 71, column: 18, scope: !6349)
!6448 = !DILocation(line: 71, column: 2, scope: !6349)
!6449 = !DILocation(line: 72, column: 2, scope: !6349)
!6450 = !DILocation(line: 73, column: 1, scope: !6349)
!6451 = distinct !DISubprogram(name: "pte_unmap", scope: !6070, file: !6070, line: 111, type: !6452, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6454)
!6452 = !DISubroutineType(types: !6453)
!6453 = !{null, !1581}
!6454 = !{!6455}
!6455 = !DILocalVariable(name: "pte", arg: 1, scope: !6451, file: !6070, line: 111, type: !1581)
!6456 = !DILocation(line: 111, column: 37, scope: !6451)
!6457 = !DILocation(line: 113, column: 2, scope: !6451)
!6458 = !DILocation(line: 114, column: 1, scope: !6451)
!6459 = distinct !DISubprogram(name: "pte_none", scope: !6083, file: !6083, line: 931, type: !6460, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6462)
!6460 = !DISubroutineType(types: !6461)
!6461 = !{!23, !1572}
!6462 = !{!6463}
!6463 = !DILocalVariable(name: "pte", arg: 1, scope: !6459, file: !6083, line: 931, type: !1572)
!6464 = !DILocation(line: 931, column: 34, scope: !6459)
!6465 = !DILocation(line: 933, column: 15, scope: !6459)
!6466 = !DILocation(line: 933, column: 19, scope: !6459)
!6467 = !DILocation(line: 933, column: 9, scope: !6459)
!6468 = !DILocation(line: 933, column: 2, scope: !6459)
!6469 = distinct !DISubprogram(name: "ptep_get", scope: !6070, file: !6070, line: 282, type: !6470, scopeLine: 283, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6472)
!6470 = !DISubroutineType(types: !6471)
!6471 = !{!1572, !1581}
!6472 = !{!6473}
!6473 = !DILocalVariable(name: "ptep", arg: 1, scope: !6469, file: !6070, line: 282, type: !1581)
!6474 = !DILocation(line: 282, column: 37, scope: !6469)
!6475 = !DILocation(line: 284, column: 9, scope: !6476)
!6476 = distinct !DILexicalBlock(scope: !6469, file: !6070, line: 284, column: 9)
!6477 = !DILocation(line: 284, column: 9, scope: !6478)
!6478 = distinct !DILexicalBlock(scope: !6476, file: !6070, line: 284, column: 9)
!6479 = !DILocation(line: 284, column: 2, scope: !6469)
!6480 = distinct !DISubprogram(name: "spin_lock", scope: !6331, file: !6331, line: 349, type: !6332, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6481)
!6481 = !{!6482}
!6482 = !DILocalVariable(name: "lock", arg: 1, scope: !6480, file: !6331, line: 349, type: !1583)
!6483 = !DILocation(line: 349, column: 51, scope: !6480)
!6484 = !DILocation(line: 351, column: 2, scope: !6480)
!6485 = !DILocation(line: 352, column: 1, scope: !6480)
!6486 = distinct !DISubprogram(name: "page_mapped_in_vma", scope: !1, file: !1, line: 325, type: !6487, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6489)
!6487 = !DISubroutineType(types: !6488)
!6488 = !{!23, !305, !1301}
!6489 = !{!6490, !6491, !6492}
!6490 = !DILocalVariable(name: "page", arg: 1, scope: !6486, file: !1, line: 325, type: !305)
!6491 = !DILocalVariable(name: "vma", arg: 2, scope: !6486, file: !1, line: 325, type: !1301)
!6492 = !DILocalVariable(name: "pvmw", scope: !6486, file: !1, line: 327, type: !5450)
!6493 = !DILocation(line: 325, column: 37, scope: !6486)
!6494 = !DILocation(line: 325, column: 66, scope: !6486)
!6495 = !DILocation(line: 327, column: 2, scope: !6486)
!6496 = !DILocation(line: 327, column: 30, scope: !6486)
!6497 = !DILocation(line: 327, column: 37, scope: !6486)
!6498 = !DILocation(line: 328, column: 10, scope: !6486)
!6499 = !DILocation(line: 330, column: 10, scope: !6486)
!6500 = !DILocation(line: 334, column: 29, scope: !6486)
!6501 = !DILocation(line: 334, column: 35, scope: !6486)
!6502 = !DILocation(line: 334, column: 17, scope: !6486)
!6503 = !DILocation(line: 334, column: 7, scope: !6486)
!6504 = !DILocation(line: 334, column: 15, scope: !6486)
!6505 = !DILocation(line: 335, column: 11, scope: !6506)
!6506 = distinct !DILexicalBlock(scope: !6486, file: !1, line: 335, column: 6)
!6507 = !DILocation(line: 335, column: 19, scope: !6506)
!6508 = !DILocation(line: 335, column: 6, scope: !6486)
!6509 = !DILocation(line: 336, column: 3, scope: !6506)
!6510 = !DILocation(line: 337, column: 7, scope: !6511)
!6511 = distinct !DILexicalBlock(scope: !6486, file: !1, line: 337, column: 6)
!6512 = !DILocation(line: 337, column: 6, scope: !6486)
!6513 = !DILocation(line: 338, column: 3, scope: !6511)
!6514 = !DILocation(line: 339, column: 2, scope: !6486)
!6515 = !DILocation(line: 340, column: 2, scope: !6486)
!6516 = !DILocation(line: 341, column: 1, scope: !6486)
!6517 = distinct !DISubprogram(name: "vma_address", scope: !4163, file: !4163, line: 735, type: !6518, scopeLine: 736, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6520)
!6518 = !DISubroutineType(types: !6519)
!6519 = !{!40, !305, !1301}
!6520 = !{!6521, !6522}
!6521 = !DILocalVariable(name: "page", arg: 1, scope: !6517, file: !4163, line: 735, type: !305)
!6522 = !DILocalVariable(name: "vma", arg: 2, scope: !6517, file: !4163, line: 735, type: !1301)
!6523 = !DILocation(line: 735, column: 26, scope: !6517)
!6524 = !DILocation(line: 735, column: 55, scope: !6517)
!6525 = !DILocation(line: 738, column: 41, scope: !6517)
!6526 = !DILocation(line: 738, column: 27, scope: !6517)
!6527 = !DILocation(line: 738, column: 60, scope: !6517)
!6528 = !DILocation(line: 738, column: 48, scope: !6517)
!6529 = !DILocation(line: 738, column: 67, scope: !6517)
!6530 = !DILocation(line: 738, column: 9, scope: !6517)
!6531 = !DILocation(line: 738, column: 2, scope: !6517)
!6532 = distinct !DISubprogram(name: "page_vma_mapped_walk_done", scope: !1500, file: !1500, line: 415, type: !6533, scopeLine: 416, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6535)
!6533 = !DISubroutineType(types: !6534)
!6534 = !{null, !5449}
!6535 = !{!6536}
!6536 = !DILocalVariable(name: "pvmw", arg: 1, scope: !6532, file: !1500, line: 415, type: !5449)
!6537 = !DILocation(line: 415, column: 75, scope: !6532)
!6538 = !DILocation(line: 418, column: 6, scope: !6539)
!6539 = distinct !DILexicalBlock(scope: !6532, file: !1500, line: 418, column: 6)
!6540 = !DILocation(line: 418, column: 12, scope: !6539)
!6541 = !DILocation(line: 418, column: 16, scope: !6539)
!6542 = !DILocation(line: 418, column: 39, scope: !6539)
!6543 = !DILocation(line: 418, column: 45, scope: !6539)
!6544 = !DILocation(line: 418, column: 20, scope: !6539)
!6545 = !DILocation(line: 418, column: 6, scope: !6532)
!6546 = !DILocation(line: 419, column: 13, scope: !6539)
!6547 = !DILocation(line: 419, column: 19, scope: !6539)
!6548 = !DILocation(line: 419, column: 3, scope: !6539)
!6549 = !DILocation(line: 420, column: 6, scope: !6550)
!6550 = distinct !DILexicalBlock(scope: !6532, file: !1500, line: 420, column: 6)
!6551 = !DILocation(line: 420, column: 12, scope: !6550)
!6552 = !DILocation(line: 420, column: 6, scope: !6532)
!6553 = !DILocation(line: 421, column: 15, scope: !6550)
!6554 = !DILocation(line: 421, column: 21, scope: !6550)
!6555 = !DILocation(line: 421, column: 3, scope: !6550)
!6556 = !DILocation(line: 422, column: 1, scope: !6532)
!6557 = distinct !DISubprogram(name: "hstate_file", scope: !5476, file: !5476, line: 788, type: !6558, scopeLine: 789, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6560)
!6558 = !DISubroutineType(types: !6559)
!6559 = !{!5474, !645}
!6560 = !{!6561}
!6561 = !DILocalVariable(name: "f", arg: 1, scope: !6557, file: !5476, line: 788, type: !645)
!6562 = !DILocation(line: 788, column: 55, scope: !6557)
!6563 = !DILocation(line: 790, column: 33, scope: !6557)
!6564 = !DILocation(line: 790, column: 22, scope: !6557)
!6565 = !DILocation(line: 790, column: 9, scope: !6557)
!6566 = !DILocation(line: 790, column: 2, scope: !6557)
!6567 = distinct !DISubprogram(name: "hstate_inode", scope: !5476, file: !5476, line: 570, type: !6568, scopeLine: 571, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6570)
!6568 = !DISubroutineType(types: !6569)
!6569 = !{!5474, !331}
!6570 = !{!6571}
!6571 = !DILocalVariable(name: "i", arg: 1, scope: !6567, file: !5476, line: 570, type: !331)
!6572 = !DILocation(line: 570, column: 57, scope: !6567)
!6573 = !DILocation(line: 572, column: 22, scope: !6567)
!6574 = !DILocation(line: 572, column: 25, scope: !6567)
!6575 = !DILocation(line: 572, column: 9, scope: !6567)
!6576 = !DILocation(line: 572, column: 32, scope: !6567)
!6577 = !DILocation(line: 572, column: 2, scope: !6567)
!6578 = distinct !DISubprogram(name: "file_inode", scope: !216, file: !216, line: 1073, type: !6579, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6581)
!6579 = !DISubroutineType(types: !6580)
!6580 = !{!331, !1744}
!6581 = !{!6582}
!6582 = !DILocalVariable(name: "f", arg: 1, scope: !6578, file: !216, line: 1073, type: !1744)
!6583 = !DILocation(line: 1073, column: 59, scope: !6578)
!6584 = !DILocation(line: 1075, column: 9, scope: !6578)
!6585 = !DILocation(line: 1075, column: 12, scope: !6578)
!6586 = !DILocation(line: 1075, column: 2, scope: !6578)
!6587 = distinct !DISubprogram(name: "HUGETLBFS_SB", scope: !5476, file: !5476, line: 541, type: !6588, scopeLine: 542, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6611)
!6588 = !DISubroutineType(types: !6589)
!6589 = !{!6590, !483}
!6590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6591, size: 64)
!6591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hugetlbfs_sb_info", file: !5476, line: 530, size: 448, elements: !6592)
!6592 = !{!6593, !6594, !6595, !6596, !6597, !6608, !6609, !6610}
!6593 = !DIDerivedType(tag: DW_TAG_member, name: "max_inodes", scope: !6591, file: !5476, line: 531, baseType: !606, size: 64)
!6594 = !DIDerivedType(tag: DW_TAG_member, name: "free_inodes", scope: !6591, file: !5476, line: 532, baseType: !606, size: 64, offset: 64)
!6595 = !DIDerivedType(tag: DW_TAG_member, name: "stat_lock", scope: !6591, file: !5476, line: 533, baseType: !60, size: 32, offset: 128)
!6596 = !DIDerivedType(tag: DW_TAG_member, name: "hstate", scope: !6591, file: !5476, line: 534, baseType: !5474, size: 64, offset: 192)
!6597 = !DIDerivedType(tag: DW_TAG_member, name: "spool", scope: !6591, file: !5476, line: 535, baseType: !6598, size: 64, offset: 256)
!6598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6599, size: 64)
!6599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hugepage_subpool", file: !5476, line: 44, size: 448, elements: !6600)
!6600 = !{!6601, !6602, !6603, !6604, !6605, !6606, !6607}
!6601 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !6599, file: !5476, line: 45, baseType: !60, size: 32)
!6602 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !6599, file: !5476, line: 46, baseType: !606, size: 64, offset: 64)
!6603 = !DIDerivedType(tag: DW_TAG_member, name: "max_hpages", scope: !6599, file: !5476, line: 47, baseType: !606, size: 64, offset: 128)
!6604 = !DIDerivedType(tag: DW_TAG_member, name: "used_hpages", scope: !6599, file: !5476, line: 48, baseType: !606, size: 64, offset: 192)
!6605 = !DIDerivedType(tag: DW_TAG_member, name: "hstate", scope: !6599, file: !5476, line: 50, baseType: !5474, size: 64, offset: 256)
!6606 = !DIDerivedType(tag: DW_TAG_member, name: "min_hpages", scope: !6599, file: !5476, line: 51, baseType: !606, size: 64, offset: 320)
!6607 = !DIDerivedType(tag: DW_TAG_member, name: "rsv_hpages", scope: !6599, file: !5476, line: 52, baseType: !606, size: 64, offset: 384)
!6608 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !6591, file: !5476, line: 536, baseType: !337, size: 32, offset: 320)
!6609 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !6591, file: !5476, line: 537, baseType: !346, size: 32, offset: 352)
!6610 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !6591, file: !5476, line: 538, baseType: !25, size: 16, offset: 384)
!6611 = !{!6612}
!6612 = !DILocalVariable(name: "sb", arg: 1, scope: !6587, file: !5476, line: 541, type: !483)
!6613 = !DILocation(line: 541, column: 74, scope: !6587)
!6614 = !DILocation(line: 543, column: 9, scope: !6587)
!6615 = !DILocation(line: 543, column: 13, scope: !6587)
!6616 = !DILocation(line: 543, column: 2, scope: !6587)
!6617 = !DISubprogram(name: "huge_pte_offset", scope: !5476, file: !5476, line: 241, type: !6618, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6618 = !DISubroutineType(types: !6619)
!6619 = !{!1581, !1314, !40, !40}
!6620 = distinct !DISubprogram(name: "huge_pte_lockptr", scope: !5476, file: !5476, line: 970, type: !5917, scopeLine: 972, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6621)
!6621 = !{!6622, !6623, !6624}
!6622 = !DILocalVariable(name: "h", arg: 1, scope: !6620, file: !5476, line: 970, type: !5474)
!6623 = !DILocalVariable(name: "mm", arg: 2, scope: !6620, file: !5476, line: 971, type: !1314)
!6624 = !DILocalVariable(name: "pte", arg: 3, scope: !6620, file: !5476, line: 971, type: !1581)
!6625 = !DILocation(line: 970, column: 59, scope: !6620)
!6626 = !DILocation(line: 971, column: 27, scope: !6620)
!6627 = !DILocation(line: 971, column: 38, scope: !6620)
!6628 = !DILocation(line: 973, column: 21, scope: !6629)
!6629 = distinct !DILexicalBlock(scope: !6620, file: !5476, line: 973, column: 6)
!6630 = !DILocation(line: 973, column: 6, scope: !6629)
!6631 = !DILocation(line: 973, column: 24, scope: !6629)
!6632 = !DILocation(line: 973, column: 6, scope: !6620)
!6633 = !DILocation(line: 974, column: 22, scope: !6629)
!6634 = !DILocation(line: 974, column: 36, scope: !6629)
!6635 = !DILocation(line: 974, column: 10, scope: !6629)
!6636 = !DILocation(line: 974, column: 3, scope: !6629)
!6637 = !DILocation(line: 976, column: 10, scope: !6620)
!6638 = !DILocation(line: 976, column: 14, scope: !6620)
!6639 = !DILocation(line: 976, column: 2, scope: !6620)
!6640 = !DILocation(line: 977, column: 1, scope: !6620)
!6641 = distinct !DISubprogram(name: "pmd_lockptr", scope: !1517, file: !1517, line: 2983, type: !6226, scopeLine: 2984, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6642)
!6642 = !{!6643, !6644}
!6643 = !DILocalVariable(name: "mm", arg: 1, scope: !6641, file: !1517, line: 2983, type: !1314)
!6644 = !DILocalVariable(name: "pmd", arg: 2, scope: !6641, file: !1517, line: 2983, type: !1555)
!6645 = !DILocation(line: 2983, column: 57, scope: !6641)
!6646 = !DILocation(line: 2983, column: 68, scope: !6641)
!6647 = !DILocation(line: 2985, column: 31, scope: !6641)
!6648 = !DILocation(line: 2985, column: 20, scope: !6641)
!6649 = !DILocation(line: 2985, column: 9, scope: !6641)
!6650 = !DILocation(line: 2985, column: 2, scope: !6641)
!6651 = distinct !DISubprogram(name: "ptlock_ptr", scope: !1517, file: !1517, line: 2872, type: !6652, scopeLine: 2873, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6654)
!6652 = !DISubroutineType(types: !6653)
!6653 = !{!1583, !5388}
!6654 = !{!6655}
!6655 = !DILocalVariable(name: "ptdesc", arg: 1, scope: !6651, file: !1517, line: 2872, type: !5388)
!6656 = !DILocation(line: 2872, column: 53, scope: !6651)
!6657 = !DILocation(line: 2874, column: 10, scope: !6651)
!6658 = !DILocation(line: 2874, column: 18, scope: !6651)
!6659 = !DILocation(line: 2874, column: 2, scope: !6651)
!6660 = distinct !DISubprogram(name: "pmd_ptdesc", scope: !1517, file: !1517, line: 2978, type: !6661, scopeLine: 2979, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6663)
!6661 = !DISubroutineType(types: !6662)
!6662 = !{!5388, !1555}
!6663 = !{!6664}
!6664 = !DILocalVariable(name: "pmd", arg: 1, scope: !6660, file: !1517, line: 2978, type: !1555)
!6665 = !DILocation(line: 2978, column: 48, scope: !6660)
!6666 = !DILocation(line: 2980, column: 9, scope: !6660)
!6667 = !DILocation(line: 2980, column: 2, scope: !6660)
!6668 = distinct !DISubprogram(name: "pmd_pgtable_page", scope: !1517, file: !1517, line: 2972, type: !6669, scopeLine: 2973, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6671)
!6669 = !DISubroutineType(types: !6670)
!6670 = !{!305, !1555}
!6671 = !{!6672, !6673}
!6672 = !DILocalVariable(name: "pmd", arg: 1, scope: !6668, file: !1517, line: 2972, type: !1555)
!6673 = !DILocalVariable(name: "mask", scope: !6668, file: !1517, line: 2974, type: !40)
!6674 = !DILocation(line: 2972, column: 52, scope: !6668)
!6675 = !DILocation(line: 2974, column: 2, scope: !6668)
!6676 = !DILocation(line: 2974, column: 16, scope: !6668)
!6677 = !DILocation(line: 2975, column: 9, scope: !6668)
!6678 = !DILocation(line: 2976, column: 1, scope: !6668)
!6679 = !DILocation(line: 2975, column: 2, scope: !6668)
!6680 = distinct !DISubprogram(name: "__phys_addr_nodebug", scope: !6681, file: !6681, line: 22, type: !6682, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6684)
!6681 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e8642b887a42f979954681cc5f73dc7c")
!6682 = !DISubroutineType(types: !6683)
!6683 = !{!40, !40}
!6684 = !{!6685, !6686}
!6685 = !DILocalVariable(name: "x", arg: 1, scope: !6680, file: !6681, line: 22, type: !40)
!6686 = !DILocalVariable(name: "y", scope: !6680, file: !6681, line: 24, type: !40)
!6687 = !DILocation(line: 22, column: 72, scope: !6680)
!6688 = !DILocation(line: 24, column: 2, scope: !6680)
!6689 = !DILocation(line: 24, column: 16, scope: !6680)
!6690 = !DILocation(line: 24, column: 20, scope: !6680)
!6691 = !DILocation(line: 24, column: 22, scope: !6680)
!6692 = !DILocation(line: 27, column: 6, scope: !6680)
!6693 = !DILocation(line: 27, column: 12, scope: !6680)
!6694 = !DILocation(line: 27, column: 16, scope: !6680)
!6695 = !DILocation(line: 27, column: 14, scope: !6680)
!6696 = !DILocation(line: 27, column: 11, scope: !6680)
!6697 = !DILocation(line: 27, column: 21, scope: !6680)
!6698 = !DILocation(line: 27, column: 55, scope: !6680)
!6699 = !DILocation(line: 27, column: 53, scope: !6680)
!6700 = !DILocation(line: 27, column: 8, scope: !6680)
!6701 = !DILocation(line: 27, column: 4, scope: !6680)
!6702 = !DILocation(line: 29, column: 9, scope: !6680)
!6703 = !DILocation(line: 30, column: 1, scope: !6680)
!6704 = !DILocation(line: 29, column: 2, scope: !6680)
!6705 = distinct !DISubprogram(name: "is_swap_pte", scope: !6208, file: !6208, line: 124, type: !6460, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6706)
!6706 = !{!6707}
!6707 = !DILocalVariable(name: "pte", arg: 1, scope: !6705, file: !6208, line: 124, type: !1572)
!6708 = !DILocation(line: 124, column: 37, scope: !6705)
!6709 = !DILocation(line: 126, column: 10, scope: !6705)
!6710 = !DILocation(line: 126, column: 24, scope: !6705)
!6711 = !DILocation(line: 126, column: 28, scope: !6705)
!6712 = !DILocation(line: 126, column: 27, scope: !6705)
!6713 = !DILocation(line: 0, scope: !6705)
!6714 = !DILocation(line: 126, column: 2, scope: !6705)
!6715 = distinct !DISubprogram(name: "pte_to_swp_entry", scope: !6208, file: !6208, line: 133, type: !6716, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6718)
!6716 = !DISubroutineType(types: !6717)
!6717 = !{!1204, !1572}
!6718 = !{!6719, !6720}
!6719 = !DILocalVariable(name: "pte", arg: 1, scope: !6715, file: !6208, line: 133, type: !1572)
!6720 = !DILocalVariable(name: "arch_entry", scope: !6715, file: !6208, line: 135, type: !1204)
!6721 = !DILocation(line: 133, column: 50, scope: !6715)
!6722 = !DILocation(line: 135, column: 2, scope: !6715)
!6723 = !DILocation(line: 135, column: 14, scope: !6715)
!6724 = !DILocation(line: 137, column: 8, scope: !6715)
!6725 = !DILocation(line: 138, column: 15, scope: !6715)
!6726 = !DILocation(line: 139, column: 19, scope: !6715)
!6727 = !DILocation(line: 139, column: 43, scope: !6715)
!6728 = !DILocation(line: 139, column: 9, scope: !6715)
!6729 = !DILocation(line: 140, column: 1, scope: !6715)
!6730 = distinct !DISubprogram(name: "is_device_exclusive_entry", scope: !6208, file: !6208, line: 240, type: !6731, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6733)
!6731 = !DISubroutineType(types: !6732)
!6732 = !{!870, !1204}
!6733 = !{!6734}
!6734 = !DILocalVariable(name: "entry", arg: 1, scope: !6730, file: !6208, line: 240, type: !1204)
!6735 = !DILocation(line: 240, column: 58, scope: !6730)
!6736 = !DILocation(line: 242, column: 2, scope: !6730)
!6737 = distinct !DISubprogram(name: "is_device_private_entry", scope: !6208, file: !6208, line: 220, type: !6731, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6738)
!6738 = !{!6739}
!6739 = !DILocalVariable(name: "entry", arg: 1, scope: !6737, file: !6208, line: 220, type: !1204)
!6740 = !DILocation(line: 220, column: 56, scope: !6737)
!6741 = !DILocation(line: 222, column: 2, scope: !6737)
!6742 = distinct !DISubprogram(name: "pte_present", scope: !6083, file: !6083, line: 950, type: !6460, scopeLine: 951, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6743)
!6743 = !{!6744}
!6744 = !DILocalVariable(name: "a", arg: 1, scope: !6742, file: !6083, line: 950, type: !1572)
!6745 = !DILocation(line: 950, column: 37, scope: !6742)
!6746 = !DILocation(line: 952, column: 9, scope: !6742)
!6747 = !DILocation(line: 952, column: 22, scope: !6742)
!6748 = !DILocation(line: 952, column: 2, scope: !6742)
!6749 = distinct !DISubprogram(name: "pte_pfn", scope: !6083, file: !6083, line: 223, type: !6750, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6752)
!6750 = !DISubroutineType(types: !6751)
!6751 = !{!40, !1572}
!6752 = !{!6753, !6754}
!6753 = !DILocalVariable(name: "pte", arg: 1, scope: !6749, file: !6083, line: 223, type: !1572)
!6754 = !DILocalVariable(name: "pfn", scope: !6749, file: !6083, line: 225, type: !5415)
!6755 = !DILocation(line: 223, column: 43, scope: !6749)
!6756 = !DILocation(line: 225, column: 2, scope: !6749)
!6757 = !DILocation(line: 225, column: 14, scope: !6749)
!6758 = !DILocation(line: 225, column: 20, scope: !6749)
!6759 = !DILocation(line: 226, column: 23, scope: !6749)
!6760 = !DILocation(line: 226, column: 9, scope: !6749)
!6761 = !DILocation(line: 226, column: 6, scope: !6749)
!6762 = !DILocation(line: 227, column: 10, scope: !6749)
!6763 = !DILocation(line: 227, column: 14, scope: !6749)
!6764 = !DILocation(line: 227, column: 30, scope: !6749)
!6765 = !DILocation(line: 228, column: 1, scope: !6749)
!6766 = !DILocation(line: 227, column: 2, scope: !6749)
!6767 = distinct !DISubprogram(name: "pte_swp_clear_flags", scope: !6208, file: !6208, line: 72, type: !6768, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6770)
!6768 = !DISubroutineType(types: !6769)
!6769 = !{!1572, !1572}
!6770 = !{!6771}
!6771 = !DILocalVariable(name: "pte", arg: 1, scope: !6767, file: !6208, line: 72, type: !1572)
!6772 = !DILocation(line: 72, column: 47, scope: !6767)
!6773 = !DILocation(line: 74, column: 6, scope: !6774)
!6774 = distinct !DILexicalBlock(scope: !6767, file: !6208, line: 74, column: 6)
!6775 = !DILocation(line: 74, column: 6, scope: !6767)
!6776 = !DILocation(line: 75, column: 9, scope: !6774)
!6777 = !DILocation(line: 75, column: 3, scope: !6774)
!6778 = !DILocation(line: 76, column: 6, scope: !6779)
!6779 = distinct !DILexicalBlock(scope: !6767, file: !6208, line: 76, column: 6)
!6780 = !DILocation(line: 76, column: 6, scope: !6767)
!6781 = !DILocation(line: 77, column: 9, scope: !6779)
!6782 = !DILocation(line: 77, column: 3, scope: !6779)
!6783 = !DILocation(line: 78, column: 6, scope: !6784)
!6784 = distinct !DILexicalBlock(scope: !6767, file: !6208, line: 78, column: 6)
!6785 = !DILocation(line: 78, column: 6, scope: !6767)
!6786 = !DILocation(line: 79, column: 9, scope: !6784)
!6787 = !DILocation(line: 79, column: 3, scope: !6784)
!6788 = !DILocation(line: 80, column: 9, scope: !6767)
!6789 = !DILocation(line: 80, column: 2, scope: !6767)
!6790 = distinct !DISubprogram(name: "native_pte_val", scope: !1350, file: !1350, line: 478, type: !6791, scopeLine: 479, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6793)
!6791 = !DISubroutineType(types: !6792)
!6792 = !{!1576, !1572}
!6793 = !{!6794}
!6794 = !DILocalVariable(name: "pte", arg: 1, scope: !6790, file: !1350, line: 478, type: !1572)
!6795 = !DILocation(line: 478, column: 45, scope: !6790)
!6796 = !DILocation(line: 480, column: 13, scope: !6790)
!6797 = !DILocation(line: 480, column: 2, scope: !6790)
!6798 = distinct !DISubprogram(name: "swp_entry", scope: !6208, file: !6208, line: 86, type: !6799, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6801)
!6799 = !DISubroutineType(types: !6800)
!6800 = !{!1204, !40, !40}
!6801 = !{!6802, !6803, !6804}
!6802 = !DILocalVariable(name: "type", arg: 1, scope: !6798, file: !6208, line: 86, type: !40)
!6803 = !DILocalVariable(name: "offset", arg: 2, scope: !6798, file: !6208, line: 86, type: !40)
!6804 = !DILocalVariable(name: "ret", scope: !6798, file: !6208, line: 88, type: !1204)
!6805 = !DILocation(line: 86, column: 51, scope: !6798)
!6806 = !DILocation(line: 86, column: 65, scope: !6798)
!6807 = !DILocation(line: 88, column: 14, scope: !6798)
!6808 = !DILocation(line: 90, column: 13, scope: !6798)
!6809 = !DILocation(line: 90, column: 18, scope: !6798)
!6810 = !DILocation(line: 90, column: 40, scope: !6798)
!6811 = !DILocation(line: 90, column: 47, scope: !6798)
!6812 = !DILocation(line: 90, column: 37, scope: !6798)
!6813 = !DILocation(line: 90, column: 6, scope: !6798)
!6814 = !DILocation(line: 90, column: 10, scope: !6798)
!6815 = !DILocation(line: 91, column: 2, scope: !6798)
!6816 = distinct !DISubprogram(name: "pte_swp_exclusive", scope: !6083, file: !6083, line: 1519, type: !6460, scopeLine: 1520, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6817)
!6817 = !{!6818}
!6818 = !DILocalVariable(name: "pte", arg: 1, scope: !6816, file: !6083, line: 1519, type: !1572)
!6819 = !DILocation(line: 1519, column: 43, scope: !6816)
!6820 = !DILocation(line: 1521, column: 9, scope: !6816)
!6821 = !DILocation(line: 1521, column: 24, scope: !6816)
!6822 = !DILocation(line: 1521, column: 2, scope: !6816)
!6823 = distinct !DISubprogram(name: "pte_swp_clear_exclusive", scope: !6083, file: !6083, line: 1524, type: !6768, scopeLine: 1525, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6824)
!6824 = !{!6825}
!6825 = !DILocalVariable(name: "pte", arg: 1, scope: !6823, file: !6083, line: 1524, type: !1572)
!6826 = !DILocation(line: 1524, column: 51, scope: !6823)
!6827 = !DILocation(line: 1526, column: 9, scope: !6823)
!6828 = !DILocation(line: 1526, column: 2, scope: !6823)
!6829 = distinct !DISubprogram(name: "pte_swp_soft_dirty", scope: !6083, file: !6083, line: 1535, type: !6460, scopeLine: 1536, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6830)
!6830 = !{!6831}
!6831 = !DILocalVariable(name: "pte", arg: 1, scope: !6829, file: !6083, line: 1535, type: !1572)
!6832 = !DILocation(line: 1535, column: 44, scope: !6829)
!6833 = !DILocation(line: 1537, column: 9, scope: !6829)
!6834 = !DILocation(line: 1537, column: 24, scope: !6829)
!6835 = !DILocation(line: 1537, column: 2, scope: !6829)
!6836 = distinct !DISubprogram(name: "pte_swp_clear_soft_dirty", scope: !6083, file: !6083, line: 1540, type: !6768, scopeLine: 1541, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6837)
!6837 = !{!6838}
!6838 = !DILocalVariable(name: "pte", arg: 1, scope: !6836, file: !6083, line: 1540, type: !1572)
!6839 = !DILocation(line: 1540, column: 52, scope: !6836)
!6840 = !DILocation(line: 1542, column: 9, scope: !6836)
!6841 = !DILocation(line: 1542, column: 2, scope: !6836)
!6842 = distinct !DISubprogram(name: "pte_swp_uffd_wp", scope: !6843, file: !6843, line: 40, type: !6460, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6844)
!6843 = !DIFile(filename: "./include/asm-generic/pgtable_uffd.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aed85830f0b2091f635e1024dc611fae")
!6844 = !{!6845}
!6845 = !DILocalVariable(name: "pte", arg: 1, scope: !6842, file: !6843, line: 40, type: !1572)
!6846 = !DILocation(line: 40, column: 50, scope: !6842)
!6847 = !DILocation(line: 42, column: 2, scope: !6842)
!6848 = distinct !DISubprogram(name: "pte_swp_clear_uffd_wp", scope: !6843, file: !6843, line: 45, type: !6768, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6849)
!6849 = !{!6850}
!6850 = !DILocalVariable(name: "pte", arg: 1, scope: !6848, file: !6843, line: 45, type: !1572)
!6851 = !DILocation(line: 45, column: 58, scope: !6848)
!6852 = !DILocation(line: 47, column: 9, scope: !6848)
!6853 = !DILocation(line: 47, column: 2, scope: !6848)
!6854 = distinct !DISubprogram(name: "pte_flags", scope: !1350, file: !1350, line: 483, type: !6791, scopeLine: 484, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6855)
!6855 = !{!6856}
!6856 = !DILocalVariable(name: "pte", arg: 1, scope: !6854, file: !1350, line: 483, type: !1572)
!6857 = !DILocation(line: 483, column: 40, scope: !6854)
!6858 = !DILocation(line: 485, column: 9, scope: !6854)
!6859 = !DILocation(line: 485, column: 29, scope: !6854)
!6860 = !DILocation(line: 485, column: 2, scope: !6854)
!6861 = distinct !DISubprogram(name: "pte_clear_flags", scope: !6083, file: !6083, line: 321, type: !6862, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6864)
!6862 = !DISubroutineType(types: !6863)
!6863 = !{!1572, !1572, !1576}
!6864 = !{!6865, !6866, !6867}
!6865 = !DILocalVariable(name: "pte", arg: 1, scope: !6861, file: !6083, line: 321, type: !1572)
!6866 = !DILocalVariable(name: "clear", arg: 2, scope: !6861, file: !6083, line: 321, type: !1576)
!6867 = !DILocalVariable(name: "v", scope: !6861, file: !6083, line: 323, type: !1576)
!6868 = !DILocation(line: 321, column: 43, scope: !6861)
!6869 = !DILocation(line: 321, column: 57, scope: !6861)
!6870 = !DILocation(line: 323, column: 2, scope: !6861)
!6871 = !DILocation(line: 323, column: 11, scope: !6861)
!6872 = !DILocation(line: 323, column: 15, scope: !6861)
!6873 = !DILocation(line: 325, column: 25, scope: !6861)
!6874 = !DILocation(line: 325, column: 30, scope: !6861)
!6875 = !DILocation(line: 325, column: 29, scope: !6861)
!6876 = !DILocation(line: 325, column: 27, scope: !6861)
!6877 = !DILocation(line: 325, column: 9, scope: !6861)
!6878 = !DILocation(line: 326, column: 1, scope: !6861)
!6879 = distinct !DISubprogram(name: "native_make_pte", scope: !1350, file: !1350, line: 473, type: !6880, scopeLine: 474, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6882)
!6880 = !DISubroutineType(types: !6881)
!6881 = !{!1572, !1576}
!6882 = !{!6883}
!6883 = !DILocalVariable(name: "val", arg: 1, scope: !6879, file: !1350, line: 473, type: !1576)
!6884 = !DILocation(line: 473, column: 46, scope: !6879)
!6885 = !DILocation(line: 475, column: 17, scope: !6879)
!6886 = !DILocation(line: 475, column: 26, scope: !6879)
!6887 = !DILocation(line: 475, column: 2, scope: !6879)
!6888 = distinct !DISubprogram(name: "protnone_mask", scope: !6889, file: !6889, line: 22, type: !6890, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6892)
!6889 = !DIFile(filename: "./arch/x86/include/asm/pgtable-invert.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ef882e7cb6c7c8e916706b4e150780ec")
!6890 = !DISubroutineType(types: !6891)
!6891 = !{!404, !404}
!6892 = !{!6893}
!6893 = !DILocalVariable(name: "val", arg: 1, scope: !6888, file: !6889, line: 22, type: !404)
!6894 = !DILocation(line: 22, column: 37, scope: !6888)
!6895 = !DILocation(line: 24, column: 28, scope: !6888)
!6896 = !DILocation(line: 24, column: 9, scope: !6888)
!6897 = !DILocation(line: 24, column: 2, scope: !6888)
!6898 = distinct !DISubprogram(name: "__pte_needs_invert", scope: !6889, file: !6889, line: 16, type: !6899, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6901)
!6899 = !DISubroutineType(types: !6900)
!6900 = !{!870, !404}
!6901 = !{!6902}
!6902 = !DILocalVariable(name: "val", arg: 1, scope: !6898, file: !6889, line: 16, type: !404)
!6903 = !DILocation(line: 16, column: 43, scope: !6898)
!6904 = !DILocation(line: 18, column: 9, scope: !6898)
!6905 = !DILocation(line: 18, column: 13, scope: !6898)
!6906 = !DILocation(line: 18, column: 18, scope: !6898)
!6907 = !DILocation(line: 18, column: 22, scope: !6898)
!6908 = !DILocation(line: 18, column: 16, scope: !6898)
!6909 = !DILocation(line: 0, scope: !6898)
!6910 = !DILocation(line: 18, column: 2, scope: !6898)
!6911 = distinct !DISubprogram(name: "arch_test_bit", scope: !6912, file: !6912, line: 237, type: !6913, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6915)
!6912 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6913 = !DISubroutineType(types: !6914)
!6914 = !{!870, !40, !5430}
!6915 = !{!6916, !6917}
!6916 = !DILocalVariable(name: "nr", arg: 1, scope: !6911, file: !6912, line: 237, type: !40)
!6917 = !DILocalVariable(name: "addr", arg: 2, scope: !6911, file: !6912, line: 237, type: !5430)
!6918 = !DILocation(line: 237, column: 29, scope: !6911)
!6919 = !DILocation(line: 237, column: 63, scope: !6911)
!6920 = !DILocation(line: 239, column: 30, scope: !6911)
!6921 = !DILocation(line: 239, column: 9, scope: !6911)
!6922 = !DILocation(line: 239, column: 54, scope: !6911)
!6923 = !DILocation(line: 239, column: 58, scope: !6911)
!6924 = !DILocation(line: 239, column: 36, scope: !6911)
!6925 = !DILocation(line: 240, column: 26, scope: !6911)
!6926 = !DILocation(line: 240, column: 30, scope: !6911)
!6927 = !DILocation(line: 240, column: 8, scope: !6911)
!6928 = !DILocation(line: 239, column: 2, scope: !6911)
!6929 = distinct !DISubprogram(name: "_static_cpu_has", scope: !6930, file: !6930, line: 173, type: !6931, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6933)
!6930 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!6931 = !DISubroutineType(types: !6932)
!6932 = !{!870, !94}
!6933 = !{!6934, !6935, !6936}
!6934 = !DILocalVariable(name: "bit", arg: 1, scope: !6929, file: !6930, line: 173, type: !94)
!6935 = !DILabel(scope: !6929, name: "t_yes", file: !6930, line: 187)
!6936 = !DILabel(scope: !6929, name: "t_no", file: !6930, line: 189)
!6937 = !DILocation(line: 173, column: 49, scope: !6929)
!6938 = !DILocation(line: 183, column: 24, scope: !6929)
!6939 = !DILocation(line: 184, column: 30, scope: !6929)
!6940 = !DILocation(line: 184, column: 34, scope: !6929)
!6941 = !DILocation(line: 184, column: 26, scope: !6929)
!6942 = !DILocation(line: 185, column: 70, scope: !6929)
!6943 = !DILocation(line: 185, column: 74, scope: !6929)
!6944 = !DILocation(line: 185, column: 25, scope: !6929)
!6945 = !DILocation(line: 175, column: 2, scope: !6929)
!6946 = !{i64 2149643340, i64 2149643373, i64 2149643379, i64 2149643395, i64 2149643414, i64 2149643445, i64 2149644398, i64 2149642987, i64 2149644404, i64 2149644452, i64 2149644516, i64 2149644580, i64 2149644637, i64 2149644844, i64 2149644892, i64 2149644956, i64 2149645020, i64 2149645077, i64 2149643105, i64 2149643130, i64 2149645287, i64 2149645415, i64 2149645348, i64 2149645429, i64 2149645443, i64 2149645559, i64 2149645504, i64 2149645573, i64 2149643264, i64 1122177, i64 1122217, i64 1122226, i64 1122276, i64 1122297, i64 1122317}
!6947 = !DILocation(line: 187, column: 1, scope: !6929)
!6948 = !DILocation(line: 188, column: 2, scope: !6929)
!6949 = !DILocation(line: 189, column: 1, scope: !6929)
!6950 = !DILocation(line: 190, column: 2, scope: !6929)
!6951 = !DILocation(line: 191, column: 1, scope: !6929)
!6952 = distinct !DISubprogram(name: "pgd_flags", scope: !1350, file: !1350, line: 340, type: !6953, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6955)
!6953 = !DISubroutineType(types: !6954)
!6954 = !{!1354, !1349}
!6955 = !{!6956}
!6956 = !DILocalVariable(name: "pgd", arg: 1, scope: !6952, file: !1350, line: 340, type: !1349)
!6957 = !DILocation(line: 340, column: 40, scope: !6952)
!6958 = !DILocation(line: 342, column: 9, scope: !6952)
!6959 = !DILocation(line: 342, column: 29, scope: !6952)
!6960 = !DILocation(line: 342, column: 2, scope: !6952)
!6961 = distinct !DISubprogram(name: "constant_test_bit", scope: !6912, file: !6912, line: 204, type: !6962, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6964)
!6962 = !DISubroutineType(types: !6963)
!6963 = !{!870, !606, !5430}
!6964 = !{!6965, !6966}
!6965 = !DILocalVariable(name: "nr", arg: 1, scope: !6961, file: !6912, line: 204, type: !606)
!6966 = !DILocalVariable(name: "addr", arg: 2, scope: !6961, file: !6912, line: 204, type: !5430)
!6967 = !DILocation(line: 204, column: 52, scope: !6961)
!6968 = !DILocation(line: 204, column: 86, scope: !6961)
!6969 = !DILocation(line: 206, column: 19, scope: !6961)
!6970 = !DILocation(line: 206, column: 22, scope: !6961)
!6971 = !DILocation(line: 206, column: 15, scope: !6961)
!6972 = !DILocation(line: 207, column: 4, scope: !6961)
!6973 = !DILocation(line: 207, column: 9, scope: !6961)
!6974 = !DILocation(line: 207, column: 12, scope: !6961)
!6975 = !DILocation(line: 206, column: 44, scope: !6961)
!6976 = !DILocation(line: 207, column: 37, scope: !6961)
!6977 = !DILocation(line: 206, column: 2, scope: !6961)
!6978 = distinct !DISubprogram(name: "variable_test_bit", scope: !6912, file: !6912, line: 224, type: !6962, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6979)
!6979 = !{!6980, !6981, !6982}
!6980 = !DILocalVariable(name: "nr", arg: 1, scope: !6978, file: !6912, line: 224, type: !606)
!6981 = !DILocalVariable(name: "addr", arg: 2, scope: !6978, file: !6912, line: 224, type: !5430)
!6982 = !DILocalVariable(name: "oldbit", scope: !6978, file: !6912, line: 226, type: !870)
!6983 = !DILocation(line: 224, column: 52, scope: !6978)
!6984 = !DILocation(line: 224, column: 86, scope: !6978)
!6985 = !DILocation(line: 226, column: 2, scope: !6978)
!6986 = !DILocation(line: 226, column: 7, scope: !6978)
!6987 = !DILocation(line: 231, column: 33, scope: !6978)
!6988 = !DILocation(line: 231, column: 46, scope: !6978)
!6989 = !DILocation(line: 228, column: 2, scope: !6978)
!6990 = !{i64 2148311024, i64 2148311098}
!6991 = !DILocation(line: 233, column: 9, scope: !6978)
!6992 = !{i8 0, i8 2}
!6993 = !DILocation(line: 234, column: 1, scope: !6978)
!6994 = !DILocation(line: 233, column: 2, scope: !6978)
!6995 = distinct !DISubprogram(name: "native_pgd_val", scope: !1350, file: !1350, line: 335, type: !6953, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6996)
!6996 = !{!6997}
!6997 = !DILocalVariable(name: "pgd", arg: 1, scope: !6995, file: !1350, line: 335, type: !1349)
!6998 = !DILocation(line: 335, column: 45, scope: !6995)
!6999 = !DILocation(line: 337, column: 13, scope: !6995)
!7000 = !DILocation(line: 337, column: 17, scope: !6995)
!7001 = !DILocation(line: 337, column: 2, scope: !6995)
!7002 = distinct !DISubprogram(name: "pgd_page_vaddr", scope: !6083, file: !6083, line: 1137, type: !7003, scopeLine: 1138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7005)
!7003 = !DISubroutineType(types: !7004)
!7004 = !{!40, !1349}
!7005 = !{!7006}
!7006 = !DILocalVariable(name: "pgd", arg: 1, scope: !7002, file: !6083, line: 1137, type: !1349)
!7007 = !DILocation(line: 1137, column: 50, scope: !7002)
!7008 = !DILocation(line: 1139, column: 24, scope: !7002)
!7009 = !DILocation(line: 1139, column: 9, scope: !7002)
!7010 = !DILocation(line: 1139, column: 2, scope: !7002)
!7011 = distinct !DISubprogram(name: "p4d_index", scope: !6083, file: !6083, line: 1124, type: !6682, scopeLine: 1125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7012)
!7012 = !{!7013}
!7013 = !DILocalVariable(name: "address", arg: 1, scope: !7011, file: !6083, line: 1124, type: !40)
!7014 = !DILocation(line: 1124, column: 53, scope: !7011)
!7015 = !DILocation(line: 1126, column: 10, scope: !7011)
!7016 = !DILocation(line: 1126, column: 18, scope: !7011)
!7017 = !DILocation(line: 1126, column: 35, scope: !7011)
!7018 = !DILocation(line: 1126, column: 48, scope: !7011)
!7019 = !DILocation(line: 1126, column: 34, scope: !7011)
!7020 = !DILocation(line: 1126, column: 32, scope: !7011)
!7021 = !DILocation(line: 1126, column: 2, scope: !7011)
!7022 = distinct !DISubprogram(name: "p4d_flags", scope: !1350, file: !1350, line: 432, type: !7023, scopeLine: 433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7025)
!7023 = !DISubroutineType(types: !7024)
!7024 = !{!5421, !5417}
!7025 = !{!7026}
!7026 = !DILocalVariable(name: "p4d", arg: 1, scope: !7022, file: !1350, line: 432, type: !5417)
!7027 = !DILocation(line: 432, column: 40, scope: !7022)
!7028 = !DILocation(line: 434, column: 9, scope: !7022)
!7029 = !DILocation(line: 434, column: 31, scope: !7022)
!7030 = !DILocation(line: 434, column: 29, scope: !7022)
!7031 = !DILocation(line: 434, column: 2, scope: !7022)
!7032 = distinct !DISubprogram(name: "native_p4d_val", scope: !1350, file: !1350, line: 353, type: !7023, scopeLine: 354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7033)
!7033 = !{!7034}
!7034 = !DILocalVariable(name: "p4d", arg: 1, scope: !7032, file: !1350, line: 353, type: !5417)
!7035 = !DILocation(line: 353, column: 45, scope: !7032)
!7036 = !DILocation(line: 355, column: 13, scope: !7032)
!7037 = !DILocation(line: 355, column: 2, scope: !7032)
!7038 = distinct !DISubprogram(name: "p4d_flags_mask", scope: !1350, file: !1350, line: 427, type: !7023, scopeLine: 428, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7039)
!7039 = !{!7040}
!7040 = !DILocalVariable(name: "p4d", arg: 1, scope: !7038, file: !1350, line: 427, type: !5417)
!7041 = !DILocation(line: 427, column: 45, scope: !7038)
!7042 = !DILocation(line: 429, column: 10, scope: !7038)
!7043 = !DILocation(line: 429, column: 9, scope: !7038)
!7044 = !DILocation(line: 429, column: 2, scope: !7038)
!7045 = distinct !DISubprogram(name: "p4d_pfn_mask", scope: !1350, file: !1350, line: 421, type: !7023, scopeLine: 422, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7046)
!7046 = !{!7047}
!7047 = !DILocalVariable(name: "p4d", arg: 1, scope: !7045, file: !1350, line: 421, type: !5417)
!7048 = !DILocation(line: 421, column: 43, scope: !7045)
!7049 = !DILocation(line: 424, column: 2, scope: !7045)
!7050 = distinct !DISubprogram(name: "p4d_pgtable", scope: !6083, file: !6083, line: 1102, type: !7051, scopeLine: 1103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7053)
!7051 = !DISubroutineType(types: !7052)
!7052 = !{!1562, !5417}
!7053 = !{!7054}
!7054 = !DILocalVariable(name: "p4d", arg: 1, scope: !7050, file: !6083, line: 1102, type: !5417)
!7055 = !DILocation(line: 1102, column: 40, scope: !7050)
!7056 = !DILocation(line: 1104, column: 18, scope: !7050)
!7057 = !DILocation(line: 1104, column: 2, scope: !7050)
!7058 = distinct !DISubprogram(name: "pud_index", scope: !6070, file: !6070, line: 79, type: !6682, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7059)
!7059 = !{!7060}
!7060 = !DILocalVariable(name: "address", arg: 1, scope: !7058, file: !6070, line: 79, type: !40)
!7061 = !DILocation(line: 79, column: 53, scope: !7058)
!7062 = !DILocation(line: 81, column: 10, scope: !7058)
!7063 = !DILocation(line: 81, column: 18, scope: !7058)
!7064 = !DILocation(line: 81, column: 32, scope: !7058)
!7065 = !DILocation(line: 81, column: 2, scope: !7058)
!7066 = distinct !DISubprogram(name: "pud_flags", scope: !1350, file: !1350, line: 450, type: !7067, scopeLine: 451, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7069)
!7067 = !DISubroutineType(types: !7068)
!7068 = !{!1567, !1563}
!7069 = !{!7070}
!7070 = !DILocalVariable(name: "pud", arg: 1, scope: !7066, file: !1350, line: 450, type: !1563)
!7071 = !DILocation(line: 450, column: 40, scope: !7066)
!7072 = !DILocation(line: 452, column: 9, scope: !7066)
!7073 = !DILocation(line: 452, column: 31, scope: !7066)
!7074 = !DILocation(line: 452, column: 29, scope: !7066)
!7075 = !DILocation(line: 452, column: 2, scope: !7066)
!7076 = distinct !DISubprogram(name: "native_pud_val", scope: !1350, file: !1350, line: 379, type: !7067, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7077)
!7077 = !{!7078}
!7078 = !DILocalVariable(name: "pud", arg: 1, scope: !7076, file: !1350, line: 379, type: !1563)
!7079 = !DILocation(line: 379, column: 45, scope: !7076)
!7080 = !DILocation(line: 381, column: 13, scope: !7076)
!7081 = !DILocation(line: 381, column: 2, scope: !7076)
!7082 = distinct !DISubprogram(name: "pud_flags_mask", scope: !1350, file: !1350, line: 445, type: !7067, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7083)
!7083 = !{!7084}
!7084 = !DILocalVariable(name: "pud", arg: 1, scope: !7082, file: !1350, line: 445, type: !1563)
!7085 = !DILocation(line: 445, column: 45, scope: !7082)
!7086 = !DILocation(line: 447, column: 10, scope: !7082)
!7087 = !DILocation(line: 447, column: 9, scope: !7082)
!7088 = !DILocation(line: 447, column: 2, scope: !7082)
!7089 = distinct !DISubprogram(name: "pud_pfn_mask", scope: !1350, file: !1350, line: 437, type: !7067, scopeLine: 438, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7090)
!7090 = !{!7091}
!7091 = !DILocalVariable(name: "pud", arg: 1, scope: !7089, file: !1350, line: 437, type: !1563)
!7092 = !DILocation(line: 437, column: 43, scope: !7089)
!7093 = !DILocation(line: 439, column: 6, scope: !7094)
!7094 = distinct !DILexicalBlock(scope: !7089, file: !1350, line: 439, column: 6)
!7095 = !DILocation(line: 439, column: 26, scope: !7094)
!7096 = !DILocation(line: 439, column: 6, scope: !7089)
!7097 = !DILocation(line: 440, column: 3, scope: !7094)
!7098 = !DILocation(line: 442, column: 3, scope: !7094)
!7099 = !DILocation(line: 443, column: 1, scope: !7089)
!7100 = distinct !DISubprogram(name: "pud_pgtable", scope: !6083, file: !6083, line: 1061, type: !7101, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7103)
!7101 = !DISubroutineType(types: !7102)
!7102 = !{!1555, !1563}
!7103 = !{!7104}
!7104 = !DILocalVariable(name: "pud", arg: 1, scope: !7100, file: !6083, line: 1061, type: !1563)
!7105 = !DILocation(line: 1061, column: 40, scope: !7100)
!7106 = !DILocation(line: 1063, column: 18, scope: !7100)
!7107 = !DILocation(line: 1063, column: 2, scope: !7100)
!7108 = distinct !DISubprogram(name: "pmd_index", scope: !6070, file: !6070, line: 71, type: !6682, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7109)
!7109 = !{!7110}
!7110 = !DILocalVariable(name: "address", arg: 1, scope: !7108, file: !6070, line: 71, type: !40)
!7111 = !DILocation(line: 71, column: 53, scope: !7108)
!7112 = !DILocation(line: 73, column: 10, scope: !7108)
!7113 = !DILocation(line: 73, column: 18, scope: !7108)
!7114 = !DILocation(line: 73, column: 32, scope: !7108)
!7115 = !DILocation(line: 73, column: 2, scope: !7108)
!7116 = distinct !DISubprogram(name: "pmdp_get", scope: !6070, file: !6070, line: 289, type: !6192, scopeLine: 290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7117)
!7117 = !{!7118}
!7118 = !DILocalVariable(name: "pmdp", arg: 1, scope: !7116, file: !6070, line: 289, type: !1555)
!7119 = !DILocation(line: 289, column: 37, scope: !7116)
!7120 = !DILocation(line: 291, column: 9, scope: !7121)
!7121 = distinct !DILexicalBlock(scope: !7116, file: !6070, line: 291, column: 9)
!7122 = !DILocation(line: 291, column: 9, scope: !7123)
!7123 = distinct !DILexicalBlock(scope: !7121, file: !6070, line: 291, column: 9)
!7124 = !DILocation(line: 291, column: 2, scope: !7116)
!7125 = distinct !DISubprogram(name: "pmd_flags", scope: !1350, file: !1350, line: 468, type: !7126, scopeLine: 469, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7128)
!7126 = !DISubroutineType(types: !7127)
!7127 = !{!1560, !1556}
!7128 = !{!7129}
!7129 = !DILocalVariable(name: "pmd", arg: 1, scope: !7125, file: !1350, line: 468, type: !1556)
!7130 = !DILocation(line: 468, column: 40, scope: !7125)
!7131 = !DILocation(line: 470, column: 9, scope: !7125)
!7132 = !DILocation(line: 470, column: 31, scope: !7125)
!7133 = !DILocation(line: 470, column: 29, scope: !7125)
!7134 = !DILocation(line: 470, column: 2, scope: !7125)
!7135 = distinct !DISubprogram(name: "native_pmd_val", scope: !1350, file: !1350, line: 403, type: !7126, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7136)
!7136 = !{!7137}
!7137 = !DILocalVariable(name: "pmd", arg: 1, scope: !7135, file: !1350, line: 403, type: !1556)
!7138 = !DILocation(line: 403, column: 45, scope: !7135)
!7139 = !DILocation(line: 405, column: 13, scope: !7135)
!7140 = !DILocation(line: 405, column: 2, scope: !7135)
!7141 = distinct !DISubprogram(name: "pmd_flags_mask", scope: !1350, file: !1350, line: 463, type: !7126, scopeLine: 464, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7142)
!7142 = !{!7143}
!7143 = !DILocalVariable(name: "pmd", arg: 1, scope: !7141, file: !1350, line: 463, type: !1556)
!7144 = !DILocation(line: 463, column: 45, scope: !7141)
!7145 = !DILocation(line: 465, column: 10, scope: !7141)
!7146 = !DILocation(line: 465, column: 9, scope: !7141)
!7147 = !DILocation(line: 465, column: 2, scope: !7141)
!7148 = distinct !DISubprogram(name: "pmd_pfn_mask", scope: !1350, file: !1350, line: 455, type: !7126, scopeLine: 456, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7149)
!7149 = !{!7150}
!7150 = !DILocalVariable(name: "pmd", arg: 1, scope: !7148, file: !1350, line: 455, type: !1556)
!7151 = !DILocation(line: 455, column: 43, scope: !7148)
!7152 = !DILocation(line: 457, column: 6, scope: !7153)
!7153 = distinct !DILexicalBlock(scope: !7148, file: !1350, line: 457, column: 6)
!7154 = !DILocation(line: 457, column: 26, scope: !7153)
!7155 = !DILocation(line: 457, column: 6, scope: !7148)
!7156 = !DILocation(line: 458, column: 3, scope: !7153)
!7157 = !DILocation(line: 460, column: 3, scope: !7153)
!7158 = !DILocation(line: 461, column: 1, scope: !7148)
!7159 = distinct !DISubprogram(name: "swp_type", scope: !6208, file: !6208, line: 98, type: !7160, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7162)
!7160 = !DISubroutineType(types: !7161)
!7161 = !{!5, !1204}
!7162 = !{!7163}
!7163 = !DILocalVariable(name: "entry", arg: 1, scope: !7159, file: !6208, line: 98, type: !1204)
!7164 = !DILocation(line: 98, column: 45, scope: !7159)
!7165 = !DILocation(line: 100, column: 16, scope: !7159)
!7166 = !DILocation(line: 100, column: 20, scope: !7159)
!7167 = !DILocation(line: 100, column: 9, scope: !7159)
!7168 = !DILocation(line: 100, column: 2, scope: !7159)
!7169 = !DISubprogram(name: "__compiletime_assert_336", scope: !1, file: !1, line: 135, type: !2272, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!7170 = distinct !DISubprogram(name: "swp_offset", scope: !6208, file: !6208, line: 107, type: !6302, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7171)
!7171 = !{!7172}
!7172 = !DILocalVariable(name: "entry", arg: 1, scope: !7170, file: !6208, line: 107, type: !1204)
!7173 = !DILocation(line: 107, column: 46, scope: !7170)
!7174 = !DILocation(line: 109, column: 15, scope: !7170)
!7175 = !DILocation(line: 109, column: 19, scope: !7170)
!7176 = !DILocation(line: 109, column: 2, scope: !7170)
!7177 = !DISubprogram(name: "_raw_spin_unlock", scope: !7178, file: !7178, line: 39, type: !7179, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7178 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!7179 = !DISubroutineType(types: !7180)
!7180 = !{null, !7181}
!7181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!7182 = distinct !DISubprogram(name: "pte_offset_map_lock", scope: !1517, file: !1517, line: 2940, type: !7183, scopeLine: 2942, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7185)
!7183 = !DISubroutineType(types: !7184)
!7184 = !{!1581, !1314, !1555, !40, !6352}
!7185 = !{!7186, !7187, !7188, !7189, !7190}
!7186 = !DILocalVariable(name: "mm", arg: 1, scope: !7182, file: !1517, line: 2940, type: !1314)
!7187 = !DILocalVariable(name: "pmd", arg: 2, scope: !7182, file: !1517, line: 2940, type: !1555)
!7188 = !DILocalVariable(name: "addr", arg: 3, scope: !7182, file: !1517, line: 2941, type: !40)
!7189 = !DILocalVariable(name: "ptlp", arg: 4, scope: !7182, file: !1517, line: 2941, type: !6352)
!7190 = !DILocalVariable(name: "pte", scope: !7182, file: !1517, line: 2943, type: !1581)
!7191 = !DILocation(line: 2940, column: 60, scope: !7182)
!7192 = !DILocation(line: 2940, column: 71, scope: !7182)
!7193 = !DILocation(line: 2941, column: 18, scope: !7182)
!7194 = !DILocation(line: 2941, column: 37, scope: !7182)
!7195 = !DILocation(line: 2943, column: 2, scope: !7182)
!7196 = !DILocation(line: 2943, column: 9, scope: !7182)
!7197 = !DILocation(line: 2945, column: 2, scope: !7182)
!7198 = !DILocation(line: 2946, column: 9, scope: !7182)
!7199 = !DILocation(line: 2947, column: 1, scope: !7182)
!7200 = !DILocation(line: 2946, column: 2, scope: !7182)
!7201 = !DISubprogram(name: "pte_offset_map_nolock", scope: !1517, file: !1517, line: 2949, type: !7183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7202 = !DISubprogram(name: "__pte_offset_map_lock", scope: !1517, file: !1517, line: 2938, type: !7183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7203 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !7204, file: !7204, line: 813, type: !2272, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!7204 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!7205 = !DILocation(line: 815, column: 2, scope: !7203)
!7206 = !DILocation(line: 815, column: 2, scope: !7207)
!7207 = distinct !DILexicalBlock(scope: !7203, file: !7204, line: 815, column: 2)
!7208 = !DILocation(line: 818, column: 2, scope: !7203)
!7209 = !DILocation(line: 819, column: 2, scope: !7203)
!7210 = !DILocation(line: 819, column: 2, scope: !7211)
!7211 = distinct !DILexicalBlock(scope: !7203, file: !7204, line: 819, column: 2)
!7212 = !DILocation(line: 820, column: 1, scope: !7203)
!7213 = !DISubprogram(name: "__rcu_read_unlock", scope: !7204, file: !7204, line: 75, type: !2272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7214 = !DISubprogram(name: "_raw_spin_lock", scope: !7178, file: !7178, line: 22, type: !7179, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7215 = distinct !DISubprogram(name: "vma_pgoff_address", scope: !4163, file: !4163, line: 709, type: !7216, scopeLine: 711, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7218)
!7216 = !DISubroutineType(types: !7217)
!7217 = !{!40, !40, !40, !1301}
!7218 = !{!7219, !7220, !7221, !7222}
!7219 = !DILocalVariable(name: "pgoff", arg: 1, scope: !7215, file: !4163, line: 709, type: !40)
!7220 = !DILocalVariable(name: "nr_pages", arg: 2, scope: !7215, file: !4163, line: 709, type: !40)
!7221 = !DILocalVariable(name: "vma", arg: 3, scope: !7215, file: !4163, line: 710, type: !1301)
!7222 = !DILocalVariable(name: "address", scope: !7215, file: !4163, line: 712, type: !40)
!7223 = !DILocation(line: 709, column: 27, scope: !7215)
!7224 = !DILocation(line: 709, column: 48, scope: !7215)
!7225 = !DILocation(line: 710, column: 28, scope: !7215)
!7226 = !DILocation(line: 712, column: 2, scope: !7215)
!7227 = !DILocation(line: 712, column: 16, scope: !7215)
!7228 = !DILocation(line: 714, column: 6, scope: !7229)
!7229 = distinct !DILexicalBlock(scope: !7215, file: !4163, line: 714, column: 6)
!7230 = !DILocation(line: 714, column: 15, scope: !7229)
!7231 = !DILocation(line: 714, column: 20, scope: !7229)
!7232 = !DILocation(line: 714, column: 12, scope: !7229)
!7233 = !DILocation(line: 714, column: 6, scope: !7215)
!7234 = !DILocation(line: 715, column: 13, scope: !7235)
!7235 = distinct !DILexicalBlock(scope: !7229, file: !4163, line: 714, column: 30)
!7236 = !DILocation(line: 715, column: 18, scope: !7235)
!7237 = !DILocation(line: 716, column: 6, scope: !7235)
!7238 = !DILocation(line: 716, column: 14, scope: !7235)
!7239 = !DILocation(line: 716, column: 19, scope: !7235)
!7240 = !DILocation(line: 716, column: 12, scope: !7235)
!7241 = !DILocation(line: 716, column: 29, scope: !7235)
!7242 = !DILocation(line: 715, column: 27, scope: !7235)
!7243 = !DILocation(line: 715, column: 11, scope: !7235)
!7244 = !DILocation(line: 718, column: 7, scope: !7245)
!7245 = distinct !DILexicalBlock(scope: !7235, file: !4163, line: 718, column: 7)
!7246 = !DILocation(line: 718, column: 17, scope: !7245)
!7247 = !DILocation(line: 718, column: 22, scope: !7245)
!7248 = !DILocation(line: 718, column: 15, scope: !7245)
!7249 = !DILocation(line: 718, column: 31, scope: !7245)
!7250 = !DILocation(line: 718, column: 34, scope: !7245)
!7251 = !DILocation(line: 718, column: 45, scope: !7245)
!7252 = !DILocation(line: 718, column: 50, scope: !7245)
!7253 = !DILocation(line: 718, column: 42, scope: !7245)
!7254 = !DILocation(line: 718, column: 7, scope: !7235)
!7255 = !DILocation(line: 719, column: 12, scope: !7245)
!7256 = !DILocation(line: 719, column: 4, scope: !7245)
!7257 = !DILocation(line: 720, column: 2, scope: !7235)
!7258 = !DILocation(line: 720, column: 13, scope: !7259)
!7259 = distinct !DILexicalBlock(scope: !7229, file: !4163, line: 720, column: 13)
!7260 = !DILocation(line: 720, column: 21, scope: !7259)
!7261 = !DILocation(line: 720, column: 19, scope: !7259)
!7262 = !DILocation(line: 720, column: 30, scope: !7259)
!7263 = !DILocation(line: 720, column: 37, scope: !7259)
!7264 = !DILocation(line: 720, column: 42, scope: !7259)
!7265 = !DILocation(line: 720, column: 34, scope: !7259)
!7266 = !DILocation(line: 720, column: 13, scope: !7229)
!7267 = !DILocation(line: 722, column: 13, scope: !7268)
!7268 = distinct !DILexicalBlock(scope: !7259, file: !4163, line: 720, column: 52)
!7269 = !DILocation(line: 722, column: 18, scope: !7268)
!7270 = !DILocation(line: 722, column: 11, scope: !7268)
!7271 = !DILocation(line: 723, column: 2, scope: !7268)
!7272 = !DILocation(line: 724, column: 11, scope: !7273)
!7273 = distinct !DILexicalBlock(scope: !7259, file: !4163, line: 723, column: 9)
!7274 = !DILocation(line: 726, column: 9, scope: !7215)
!7275 = !DILocation(line: 727, column: 1, scope: !7215)
!7276 = !DILocation(line: 726, column: 2, scope: !7215)
!7277 = distinct !DISubprogram(name: "page_to_pgoff", scope: !1175, file: !1175, line: 926, type: !7278, scopeLine: 927, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7280)
!7278 = !DISubroutineType(types: !7279)
!7279 = !{!40, !305}
!7280 = !{!7281}
!7281 = !DILocalVariable(name: "page", arg: 1, scope: !7277, file: !1175, line: 926, type: !305)
!7282 = !DILocation(line: 926, column: 50, scope: !7277)
!7283 = !DILocation(line: 928, column: 6, scope: !7284)
!7284 = distinct !DILexicalBlock(scope: !7277, file: !1175, line: 928, column: 6)
!7285 = !DILocation(line: 928, column: 6, scope: !7277)
!7286 = !DILocation(line: 929, column: 33, scope: !7284)
!7287 = !DILocation(line: 929, column: 10, scope: !7284)
!7288 = !DILocation(line: 929, column: 3, scope: !7284)
!7289 = !DILocation(line: 930, column: 23, scope: !7277)
!7290 = !DILocation(line: 930, column: 9, scope: !7277)
!7291 = !DILocation(line: 930, column: 2, scope: !7277)
!7292 = !DILocation(line: 931, column: 1, scope: !7277)
!7293 = distinct !DISubprogram(name: "compound_nr", scope: !1517, file: !1517, line: 2059, type: !7278, scopeLine: 2060, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7294)
!7294 = !{!7295, !7296}
!7295 = !DILocalVariable(name: "page", arg: 1, scope: !7293, file: !1517, line: 2059, type: !305)
!7296 = !DILocalVariable(name: "folio", scope: !7293, file: !1517, line: 2061, type: !1178)
!7297 = !DILocation(line: 2059, column: 54, scope: !7293)
!7298 = !DILocation(line: 2061, column: 2, scope: !7293)
!7299 = !DILocation(line: 2061, column: 16, scope: !7293)
!7300 = !DILocation(line: 2061, column: 40, scope: !7293)
!7301 = !DILocation(line: 2063, column: 7, scope: !7302)
!7302 = distinct !DILexicalBlock(scope: !7293, file: !1517, line: 2063, column: 6)
!7303 = !DILocation(line: 2063, column: 6, scope: !7293)
!7304 = !DILocation(line: 2064, column: 3, scope: !7302)
!7305 = !DILocation(line: 2066, column: 9, scope: !7293)
!7306 = !DILocation(line: 2066, column: 16, scope: !7293)
!7307 = !DILocation(line: 2066, column: 2, scope: !7293)
!7308 = !DILocation(line: 2070, column: 1, scope: !7293)
!7309 = distinct !DISubprogram(name: "PageHuge", scope: !265, file: !265, line: 1018, type: !7310, scopeLine: 1019, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7312)
!7310 = !DISubroutineType(types: !7311)
!7311 = !{!870, !5435}
!7312 = !{!7313}
!7313 = !DILocalVariable(name: "page", arg: 1, scope: !7309, file: !265, line: 1018, type: !5435)
!7314 = !DILocation(line: 1018, column: 48, scope: !7309)
!7315 = !DILocation(line: 1020, column: 28, scope: !7309)
!7316 = !DILocation(line: 1020, column: 9, scope: !7309)
!7317 = !DILocation(line: 1020, column: 2, scope: !7309)
!7318 = !DISubprogram(name: "hugetlb_basepage_index", scope: !1175, file: !1175, line: 920, type: !7278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7319 = distinct !DISubprogram(name: "page_to_index", scope: !1175, file: !1175, line: 905, type: !7278, scopeLine: 906, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7320)
!7320 = !{!7321, !7322}
!7321 = !DILocalVariable(name: "page", arg: 1, scope: !7319, file: !1175, line: 905, type: !305)
!7322 = !DILocalVariable(name: "head", scope: !7319, file: !1175, line: 907, type: !305)
!7323 = !DILocation(line: 905, column: 50, scope: !7319)
!7324 = !DILocation(line: 907, column: 2, scope: !7319)
!7325 = !DILocation(line: 907, column: 15, scope: !7319)
!7326 = !DILocation(line: 909, column: 6, scope: !7327)
!7327 = distinct !DILexicalBlock(scope: !7319, file: !1175, line: 909, column: 6)
!7328 = !DILocation(line: 909, column: 6, scope: !7319)
!7329 = !DILocation(line: 910, column: 10, scope: !7327)
!7330 = !DILocation(line: 910, column: 16, scope: !7327)
!7331 = !DILocation(line: 910, column: 3, scope: !7327)
!7332 = !DILocation(line: 912, column: 9, scope: !7319)
!7333 = !DILocation(line: 912, column: 7, scope: !7319)
!7334 = !DILocation(line: 917, column: 9, scope: !7319)
!7335 = !DILocation(line: 917, column: 15, scope: !7319)
!7336 = !DILocation(line: 917, column: 23, scope: !7319)
!7337 = !DILocation(line: 917, column: 21, scope: !7319)
!7338 = !DILocation(line: 917, column: 30, scope: !7319)
!7339 = !DILocation(line: 917, column: 28, scope: !7319)
!7340 = !DILocation(line: 917, column: 2, scope: !7319)
!7341 = !DILocation(line: 918, column: 1, scope: !7319)
!7342 = distinct !DISubprogram(name: "folio_test_hugetlb", scope: !265, file: !265, line: 1005, type: !7343, scopeLine: 1005, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7345)
!7343 = !DISubroutineType(types: !7344)
!7344 = !{!870, !5428}
!7345 = !{!7346}
!7346 = !DILocalVariable(name: "folio", arg: 1, scope: !7342, file: !265, line: 1005, type: !5428)
!7347 = !DILocation(line: 1005, column: 1, scope: !7342)
!7348 = distinct !DISubprogram(name: "_compound_head", scope: !265, file: !265, line: 244, type: !7349, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7351)
!7349 = !DISubroutineType(types: !7350)
!7350 = !{!40, !5435}
!7351 = !{!7352, !7353}
!7352 = !DILocalVariable(name: "page", arg: 1, scope: !7348, file: !265, line: 244, type: !5435)
!7353 = !DILocalVariable(name: "head", scope: !7348, file: !265, line: 246, type: !40)
!7354 = !DILocation(line: 244, column: 63, scope: !7348)
!7355 = !DILocation(line: 246, column: 2, scope: !7348)
!7356 = !DILocation(line: 246, column: 16, scope: !7348)
!7357 = !DILocation(line: 246, column: 23, scope: !7358)
!7358 = distinct !DILexicalBlock(scope: !7348, file: !265, line: 246, column: 23)
!7359 = !DILocation(line: 246, column: 23, scope: !7360)
!7360 = distinct !DILexicalBlock(scope: !7358, file: !265, line: 246, column: 23)
!7361 = !DILocation(line: 248, column: 6, scope: !7362)
!7362 = distinct !DILexicalBlock(scope: !7348, file: !265, line: 248, column: 6)
!7363 = !DILocation(line: 248, column: 6, scope: !7348)
!7364 = !DILocation(line: 249, column: 10, scope: !7362)
!7365 = !DILocation(line: 249, column: 15, scope: !7362)
!7366 = !DILocation(line: 249, column: 3, scope: !7362)
!7367 = !DILocation(line: 250, column: 45, scope: !7348)
!7368 = !DILocation(line: 250, column: 24, scope: !7348)
!7369 = !DILocation(line: 250, column: 9, scope: !7348)
!7370 = !DILocation(line: 250, column: 2, scope: !7348)
!7371 = !DILocation(line: 251, column: 1, scope: !7348)
!7372 = distinct !DISubprogram(name: "page_fixed_fake_head", scope: !265, file: !265, line: 207, type: !7373, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7375)
!7373 = !DISubroutineType(types: !7374)
!7374 = !{!5435, !5435}
!7375 = !{!7376, !7377, !7380}
!7376 = !DILocalVariable(name: "page", arg: 1, scope: !7372, file: !265, line: 207, type: !5435)
!7377 = !DILocalVariable(name: "branch", scope: !7378, file: !265, line: 209, type: !870)
!7378 = distinct !DILexicalBlock(scope: !7379, file: !265, line: 209, column: 7)
!7379 = distinct !DILexicalBlock(scope: !7372, file: !265, line: 209, column: 6)
!7380 = !DILocalVariable(name: "head", scope: !7381, file: !265, line: 225, type: !40)
!7381 = distinct !DILexicalBlock(scope: !7382, file: !265, line: 219, column: 39)
!7382 = distinct !DILexicalBlock(scope: !7372, file: !265, line: 218, column: 6)
!7383 = !DILocation(line: 207, column: 83, scope: !7372)
!7384 = !DILocation(line: 209, column: 7, scope: !7378)
!7385 = !DILocation(line: 209, column: 7, scope: !7386)
!7386 = distinct !DILexicalBlock(scope: !7387, file: !265, line: 209, column: 7)
!7387 = distinct !DILexicalBlock(scope: !7378, file: !265, line: 209, column: 7)
!7388 = !DILocation(line: 209, column: 7, scope: !7387)
!7389 = !DILocation(line: 209, column: 7, scope: !7379)
!7390 = !DILocation(line: 209, column: 6, scope: !7372)
!7391 = !DILocation(line: 210, column: 10, scope: !7379)
!7392 = !DILocation(line: 210, column: 3, scope: !7379)
!7393 = !DILocation(line: 218, column: 6, scope: !7382)
!7394 = !DILocation(line: 218, column: 49, scope: !7382)
!7395 = !DILocation(line: 219, column: 6, scope: !7382)
!7396 = !DILocation(line: 218, column: 6, scope: !7372)
!7397 = !DILocation(line: 225, column: 3, scope: !7381)
!7398 = !DILocation(line: 225, column: 17, scope: !7381)
!7399 = !DILocation(line: 225, column: 24, scope: !7400)
!7400 = distinct !DILexicalBlock(scope: !7381, file: !265, line: 225, column: 24)
!7401 = !DILocation(line: 225, column: 24, scope: !7402)
!7402 = distinct !DILexicalBlock(scope: !7400, file: !265, line: 225, column: 24)
!7403 = !DILocation(line: 227, column: 7, scope: !7404)
!7404 = distinct !DILexicalBlock(scope: !7381, file: !265, line: 227, column: 7)
!7405 = !DILocation(line: 227, column: 7, scope: !7381)
!7406 = !DILocation(line: 228, column: 33, scope: !7404)
!7407 = !DILocation(line: 228, column: 38, scope: !7404)
!7408 = !DILocation(line: 228, column: 11, scope: !7404)
!7409 = !DILocation(line: 228, column: 4, scope: !7404)
!7410 = !DILocation(line: 229, column: 2, scope: !7382)
!7411 = !DILocation(line: 229, column: 2, scope: !7381)
!7412 = !DILocation(line: 230, column: 9, scope: !7372)
!7413 = !DILocation(line: 230, column: 2, scope: !7372)
!7414 = !DILocation(line: 231, column: 1, scope: !7372)
!7415 = distinct !DISubprogram(name: "arch_static_branch", scope: !7416, file: !7416, line: 25, type: !7417, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7431)
!7416 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!7417 = !DISubroutineType(types: !7418)
!7418 = !{!870, !7419, !870}
!7419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7420, size: 64)
!7420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2236, line: 85, size: 128, elements: !7421)
!7421 = !{!7422, !7423}
!7422 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !7420, file: !2236, line: 86, baseType: !50, size: 32)
!7423 = !DIDerivedType(tag: DW_TAG_member, scope: !7420, file: !2236, line: 101, baseType: !7424, size: 64, offset: 64)
!7424 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !7420, file: !2236, line: 101, size: 64, elements: !7425)
!7425 = !{!7426, !7427, !7428}
!7426 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !7424, file: !2236, line: 102, baseType: !40, size: 64)
!7427 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !7424, file: !2236, line: 103, baseType: !2234, size: 64)
!7428 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !7424, file: !2236, line: 104, baseType: !7429, size: 64)
!7429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7430, size: 64)
!7430 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2236, line: 104, flags: DIFlagFwdDecl)
!7431 = !{!7432, !7433, !7434}
!7432 = !DILocalVariable(name: "key", arg: 1, scope: !7415, file: !7416, line: 25, type: !7419)
!7433 = !DILocalVariable(name: "branch", arg: 2, scope: !7415, file: !7416, line: 25, type: !870)
!7434 = !DILabel(scope: !7415, name: "l_yes", file: !7416, line: 33)
!7435 = !DILocation(line: 25, column: 67, scope: !7415)
!7436 = !DILocation(line: 25, column: 77, scope: !7415)
!7437 = !DILocation(line: 30, column: 13, scope: !7415)
!7438 = !DILocation(line: 30, column: 28, scope: !7415)
!7439 = !DILocation(line: 30, column: 26, scope: !7415)
!7440 = !DILocation(line: 27, column: 2, scope: !7415)
!7441 = !{i64 1271736, i64 1271780, i64 2148756463, i64 2148756484, i64 2148756510, i64 2148756543, i64 2148756577, i64 2148756601}
!7442 = !DILocation(line: 32, column: 2, scope: !7415)
!7443 = !DILocation(line: 33, column: 1, scope: !7415)
!7444 = !DILocation(line: 34, column: 2, scope: !7415)
!7445 = !DILocation(line: 35, column: 1, scope: !7415)
!7446 = distinct !DISubprogram(name: "const_test_bit", scope: !7447, file: !7447, line: 166, type: !6913, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7448)
!7447 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!7448 = !{!7449, !7450, !7451, !7452, !7453}
!7449 = !DILocalVariable(name: "nr", arg: 1, scope: !7446, file: !7447, line: 166, type: !40)
!7450 = !DILocalVariable(name: "addr", arg: 2, scope: !7446, file: !7447, line: 166, type: !5430)
!7451 = !DILocalVariable(name: "p", scope: !7446, file: !7447, line: 168, type: !5434)
!7452 = !DILocalVariable(name: "mask", scope: !7446, file: !7447, line: 169, type: !40)
!7453 = !DILocalVariable(name: "val", scope: !7446, file: !7447, line: 170, type: !40)
!7454 = !DILocation(line: 166, column: 30, scope: !7446)
!7455 = !DILocation(line: 166, column: 64, scope: !7446)
!7456 = !DILocation(line: 168, column: 2, scope: !7446)
!7457 = !DILocation(line: 168, column: 23, scope: !7446)
!7458 = !DILocation(line: 168, column: 50, scope: !7446)
!7459 = !DILocation(line: 168, column: 57, scope: !7446)
!7460 = !DILocation(line: 168, column: 55, scope: !7446)
!7461 = !DILocation(line: 169, column: 2, scope: !7446)
!7462 = !DILocation(line: 169, column: 16, scope: !7446)
!7463 = !DILocation(line: 169, column: 23, scope: !7446)
!7464 = !DILocation(line: 170, column: 2, scope: !7446)
!7465 = !DILocation(line: 170, column: 16, scope: !7446)
!7466 = !DILocation(line: 170, column: 23, scope: !7446)
!7467 = !DILocation(line: 170, column: 22, scope: !7446)
!7468 = !DILocation(line: 172, column: 12, scope: !7446)
!7469 = !DILocation(line: 172, column: 18, scope: !7446)
!7470 = !DILocation(line: 172, column: 16, scope: !7446)
!7471 = !DILocation(line: 172, column: 10, scope: !7446)
!7472 = !DILocation(line: 172, column: 9, scope: !7446)
!7473 = !DILocation(line: 173, column: 1, scope: !7446)
!7474 = !DILocation(line: 172, column: 2, scope: !7446)
!7475 = distinct !DISubprogram(name: "_test_bit", scope: !7476, file: !7476, line: 139, type: !6913, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7477)
!7476 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!7477 = !{!7478, !7479}
!7478 = !DILocalVariable(name: "nr", arg: 1, scope: !7475, file: !7476, line: 139, type: !40)
!7479 = !DILocalVariable(name: "addr", arg: 2, scope: !7475, file: !7476, line: 139, type: !5430)
!7480 = !DILocation(line: 139, column: 25, scope: !7475)
!7481 = !DILocation(line: 139, column: 59, scope: !7475)
!7482 = !DILocation(line: 141, column: 25, scope: !7475)
!7483 = !DILocation(line: 141, column: 32, scope: !7475)
!7484 = !DILocation(line: 141, column: 30, scope: !7475)
!7485 = !DILocation(line: 141, column: 2, scope: !7475)
!7486 = !DILocation(line: 142, column: 23, scope: !7475)
!7487 = !DILocation(line: 142, column: 27, scope: !7475)
!7488 = !DILocation(line: 142, column: 9, scope: !7475)
!7489 = !DILocation(line: 142, column: 2, scope: !7475)
!7490 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !7491, file: !7491, line: 66, type: !7492, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7497)
!7491 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!7492 = !DISubroutineType(types: !7493)
!7493 = !{null, !7494, !36}
!7494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7495, size: 64)
!7495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7496)
!7496 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!7497 = !{!7498, !7499}
!7498 = !DILocalVariable(name: "v", arg: 1, scope: !7490, file: !7491, line: 66, type: !7494)
!7499 = !DILocalVariable(name: "size", arg: 2, scope: !7490, file: !7491, line: 66, type: !36)
!7500 = !DILocation(line: 66, column: 73, scope: !7490)
!7501 = !DILocation(line: 66, column: 83, scope: !7490)
!7502 = !DILocation(line: 68, column: 19, scope: !7490)
!7503 = !DILocation(line: 68, column: 22, scope: !7490)
!7504 = !DILocation(line: 68, column: 2, scope: !7490)
!7505 = !DILocation(line: 69, column: 2, scope: !7490)
!7506 = !DILocation(line: 70, column: 1, scope: !7490)
!7507 = distinct !DISubprogram(name: "kasan_check_read", scope: !7508, file: !7508, line: 40, type: !7509, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7511)
!7508 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!7509 = !DISubroutineType(types: !7510)
!7510 = !{!870, !7494, !5}
!7511 = !{!7512, !7513}
!7512 = !DILocalVariable(name: "p", arg: 1, scope: !7507, file: !7508, line: 40, type: !7494)
!7513 = !DILocalVariable(name: "size", arg: 2, scope: !7507, file: !7508, line: 40, type: !5)
!7514 = !DILocation(line: 40, column: 58, scope: !7507)
!7515 = !DILocation(line: 40, column: 74, scope: !7507)
!7516 = !DILocation(line: 42, column: 2, scope: !7507)
!7517 = distinct !DISubprogram(name: "kcsan_check_access", scope: !7518, file: !7518, line: 229, type: !7519, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7521)
!7518 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!7519 = !DISubroutineType(types: !7520)
!7520 = !{null, !7494, !36, !23}
!7521 = !{!7522, !7523, !7524}
!7522 = !DILocalVariable(name: "ptr", arg: 1, scope: !7517, file: !7518, line: 229, type: !7494)
!7523 = !DILocalVariable(name: "size", arg: 2, scope: !7517, file: !7518, line: 229, type: !36)
!7524 = !DILocalVariable(name: "type", arg: 3, scope: !7517, file: !7518, line: 230, type: !23)
!7525 = !DILocation(line: 229, column: 60, scope: !7517)
!7526 = !DILocation(line: 229, column: 72, scope: !7517)
!7527 = !DILocation(line: 230, column: 15, scope: !7517)
!7528 = !DILocation(line: 230, column: 23, scope: !7517)
!7529 = distinct !DISubprogram(name: "PageTransTail", scope: !265, file: !265, line: 876, type: !7530, scopeLine: 876, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7532)
!7530 = !DISubroutineType(types: !7531)
!7531 = !{!23, !5435}
!7532 = !{!7533}
!7533 = !DILocalVariable(name: "page", arg: 1, scope: !7529, file: !265, line: 876, type: !5435)
!7534 = !DILocation(line: 876, column: 1, scope: !7529)
